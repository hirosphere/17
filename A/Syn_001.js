var Syn_001 = new function()
{
	function au_new( delay, min_db )
	{
		var Context = AudioContext || webkitAudioContext;
		
		if( Context )
		{
			var context = new Context();
			
			context.bt = function()
			{
				return this.currentTime + delay;
			}
			
			var osc_0_hz = context.createOscillator();
			osc_0_hz.type = "square";
			osc_0_hz.frequency.value = 0.1;
			osc_0_hz.frequency.setValueAtTime( 0, context.bt() + 1 );
			osc_0_hz.start();
			
			var dc_src = context.createGain();
			dc_src.gain.value = 7 / 6;
			osc_0_hz.connect( dc_src );
			
			
			context.create_const_gain = function()
			{
				var gain = context.createGain();
				dc_src.connect( gain );
				return gain;
			}
			
			
			var exp_min = Math.pow( 10, min_db / 20 );
			var exp_ramp_rate = min_db / -60;
			
			AudioParam.prototype.attack = function( time )
			{
				var t = context.bt();
				
				this.cancelScheduledValues( t );
				this.setValueAtTime( 0, t );
				this.linearRampToValueAtTime( 1, t + time );
				//slog( [ "attack", t, time ] );
			}
			
			AudioParam.prototype.release = function( time )
			{
				var t = context.bt();
				
				var curv = this.value;
				//this.cancelScheduledValues( t );
				//this.setValueAtTime( curv, t );
				
				var tend = t + time * exp_ramp_rate;
				( [ "release", t, tend ] );
				this.exponentialRampToValueAtTime( exp_min, tend );
			}
			
			// slog( "au_new()" );
			
			return context;
		}
		
		return null;
	}
	
	
	var context = au_new( 0, -60 );
	
	//    //
	
	
	var Leaf = class_def
	(
		null,
		function()
		{
			this.Initiate = function( init, primeview )
			{
				this.Value = init;
				this.Views = [];
				if( primeview ) this.Views.push( primeview );
			}
			
			this.AddView = function( view )
			{
				this.Views.push( view );
				view( this.Value );
			}
			
			this.SetValue = function( value )
			{
				if( value != this.Value )
				{
					this.Value = value;
					for( var i in this.Views )
					{
						this.Views[ i ]( this.Value );
					}
				}
			}
			
			this.GetValue = function()
			{
				return this.Value;
			}
		}
	);
	
	
	function Synth()
	{
		this.Volume = Leaf.Create( 50 );
		this.Mod_Depth = Leaf.Create( 0.5 );
		
		
		this.WaveType = Leaf.Create( 0 );
		
		var volume = context.createGain();
		volume.connect( context.destination );
		volume.gain.value = 0.07;
		
		var base_vo = new Voice( volume, -25, this );
		var ch_vo_1 = new Voice( volume, -22, this );
		var ch_vo_2 = new Voice( volume, -20, this );
		var ch_vo_3 = new Voice( volume, -17, this );
		
		this.SetChord = function( ba, c1, c2, c3 )
		{
			base_vo.NoteOn( ba );
			ch_vo_1.NoteOn( c1 );
			ch_vo_2.NoteOn( c2 );
			ch_vo_3.NoteOn( c3 );
		}
		
		this.OffChord = function()
		{
			base_vo.NoteOff();
			ch_vo_1.NoteOff();
			ch_vo_2.NoteOff();
			ch_vo_3.NoteOff();
		}
		
		this.Volume.AddView
		(
			function( meas )
			{
				var value = ( meas == 0 ? 0 : Math.pow( 2, meas / 10 - 10 ) );
				volume.gain.linearRampToValueAtTime( value, context.currentTime + 0.1 );
			}
		);
	}
	
	this.Synth = Synth;
	
	function Voice( dest, mod_pitch, synth )
	{
		var vosc = context.createOscillator();
		
		var mod  = context.createOscillator();
		var mod_amp =  context.createGain();
		
		var env = context.create_const_gain();
		
		var amp =  context.createGain();
		var amp_in1 =  context.createGain();
		
		
		vosc.connect( amp );
		
		env.connect( amp_in1 );
		
		mod.connect( mod_amp );
		mod_amp.connect( amp_in1.gain );
		
		amp_in1.connect( amp.gain );
		amp.connect( dest );
		
		
		vosc.frequency.value = 440;
		vosc.type = "sawtooth";
		env.gain.value = 0;
		amp.gain.value = 0;
		amp.gain.setTargetAtTime( 0, context.bt(), 0.1 );
		
		mod.frequency.value = 1;
		mod.detune.value = mod_pitch * 100;
		//mod_amp.gain.value = 0.7;
		
		vosc.start();
		mod.start();
		
		
		var w_types = [ "sine", "triangle", "square", "sawtooth" ];
		
		synth.WaveType.AddView( function( mea ) { vosc.type = w_types[ mea ]; } );
		
		synth.Mod_Depth.AddView
		(
			function( value )
			{
				mod_amp.gain.value = value;
			}
		);
		
		var note_on = false;
		
		this.NoteOn = function( key )
		{
			vosc.detune.setValueAtTime( key * 100, context.bt() );
			
			if( ! note_on )
			{
				note_on = true;
				env.gain.attack( 0.1 );
			}
		}
		
		this.NoteOff = function()
		{
			if( note_on )
			{
				note_on = false;
				env.gain.release( 1.0 );
			}
		}
		
		//  slog( "\tVoice " + [ vosc, amp ] );
	}
};
