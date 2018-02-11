
// * Prime * //


function class_def( Base, definition )
{
	var This = function() {};
	
	if( Base )
	{
		This.prototype = new Base;
	}
	
	definition.call( This.prototype, Base && Base.prototype || null );
	
	if( This.prototype.Initiate == null )
	{
		This.prototype.Initiate = function() {};
	}
	
	This.New =
	This.Create = function()
	{
		var instance = new This;
		instance.Initiate.apply( instance, arguments );
		return instance;
	};
	
	return This;
};


// *  * //


// * $BENRI * //

var $ = new function()
{
	// * DOM * //
	
	this.Create_t = function( type, com, text, attrs, style, class_name )
	{
		return  this.Create( type, com, attrs, style, text, class_name );
	};
	
	this.Create = function( type, com, attrs, style, text, class_name )
	{
		var e = document.createElement( type );
		if( attrs )  for( var fn in attrs )  e[ fn ] = attrs[ fn ];
		if( style )  for( var fn in style )  e.style[ fn ] = style[ fn ];
		if( text != null ) $.Text( e, text );
		if( com )  com.appendChild( e );
		return e;
	};
	
	this.Id = function( id )
	{
		return document.getElementById( id );
	};
	
	this.Text = function( e, text )
	{
		if( e )  e.innerHTML = $.hp( text );
	};
	
	//*  *//
	
	var util = {};
	
	util.sser = 0;
	
	this.s = function( msg )
	{
		console.log( msg || this.df( "{YMD} {hms}" ) );
	};
	
	//* HTML *//
	
	this.hp = function( plain )
	{
		return ( "" + plain ).replace( /<|>|&|  | |\t|\r\n|\r|\n/g, hp_rep );
	};
	
	var ht_rep_table =
	{
		"<": "&lt;",
		">": "&gt;",
		"&": "&amp;", 
		"  ": " &nbsp;",
		" ": "&nbsp;", 
		"\t": "&nbsp&nbsp&nbsp&nbsp;", 
		"\r\n": "<br/>\r\n",
		"\r": "<br/>\r\n",
		"\n": "<br/>\r\n" 
	};
	
	function hp_rep( ch )  {  return ht_rep_table[ ch ];  }
	
	
	//*  *//
	
	
	//* String *//
	
	this.f =
	this.sf =
	this.format = function format( format )
	{
		var args = arguments;
		return ( "" + format ).replace( /{((`}|[^}])*)}+/g, fn );

		function fn( all, name )
		{
			return fsrch( name, args, 1, args.length, "" );
		}
	};
	
	function fsrch( name, args, beg, end, defv )
	{
		for( var i = beg; i < end; i ++ )
		{
			var v = args[ i ];
			if( v != null && v.constructor != Number && v.constructor != String && v.constructor != Boolean && name in v )
			{
				return v[ name ];
			}
		}
		return defv;
	}

	//* Date *//
	
	var df =
	this.df =
	this.date_format =
	function df( format, date )
	{
		date = date || new Date();
		var args = arguments;
		return ( "" + format ).replace( /{((`}|[^}])*)}+/g, fn );
		
		function fn( all, name )
		{
			var fn = df_fns[ name ];
			return fn ? fn( date ) : fsrch( name, args, 2, args.length, "" );
		}
	};
	
	var df_youbi = [ "日", "月", "火", "水", "木", "金", "土" ];
	
	var df_fns = 
	{
		YMD: function( date ) {  return df( "{YYYY}/{MM}/{DD}", date );  },
		YMDB: function( date ) {  return df( "{YYYY}/{MM}/{DD} ({B})", date );  },
		
		YYYY:  function( date )  {  return  "" + date.getFullYear();  },
		YY:  function( date )  {  return  ( "000" + date.getFullYear() ).substr( -2 );  },
		MM:  function( date )  {  return  ( "0" + ( date.getMonth() + 1 ) ).substr( -2 );  },
		DD:  function( date )  {  return  ( "0" + date.getDate() ).substr( -2 );  },
		B: function( date )  {  return  df_youbi[  date.getDay()  ];  },
		
		hms: function( date )  {  return df( "{hh}:{mm}:{ss}", date );  },
		
		hh:  function( date )  {  return  ( "0" + date.getHours() ).substr( -2 );  },
		h:  function( date )  {  return  "" + date.getHours();  },
		mm:  function( date )  {  return  ( "0" + date.getMinutes() ).substr( -2 );  },
		m:  function( date )  {  return  "" + date.getMinutes();  },
		ss:  function( date )  {  return  ( "0" + date.getSeconds() ).substr( -2 );  },
		s:  function( date )  {  return  "" + date.getSeconds();  },
		
		uYMD: function( date ) {  return df( "{uYYYY}/{uMM}/{uDD}", date );  },
		
		uYYYY:  function( date )  {  return  "" + date.getUTCFullYear();  },
		uYY:  function( date )  {  return  ( "000" + date.getUTCFullYear() ).substr( -2 );  },
		uMM:  function( date )  {  return  ( "0" + ( date.getUTCMonth() + 1 ) ).substr( -2 );  },
		uDD:  function( date )  {  return  ( "0" + date.getUTCDate() ).substr( -2 );  },
	};
	
	// *  Model - View  * //
	
	this.Model = class_def
	(
		null,
		function()
		{
			this.Initiate = function()
			{
				this.Views = {};
			};
			
			this.AddView = function( view )
			{
				if( view && view.RTId == null )
				{
					view.RTId = next_id ++;
				}
				
				if( this.Views[ view.RTId ] == null )
				{
					this.Views[ view.RTId ] = view;
				}
			};
			
			this.Notify = function( message, args )
			{
				for( var rtid in this.Views )
				{
					var view = this.Views[ rtid ];
					var fn = view[ message ];
					if( fn )  fn.apply( view, args );
				}
			};
			
			// *    * //
			
			var next_id = 1;
		}
	);
	
	// *  JSON  * //
	
	this.FromJSON = function( json, failv )
	{
		try 
		{
			return eval (  "(\r\n" + json + "\r\n)"  );
		}
		catch( exc )
		{
			return failv;
		}
	};
	
	this.ToJSON = json_value;
	
	function json_value( value )
	{
		if( value === undefined )  return "undefined";
		if( value === null )  return "null";
		if( value.constructor == Number )  return value.toString();
		if( value.constructor == String )  return json_str( value );
		if( value === true )  return "true";
		if( value === false )  return "false";
		if( value.constructor == Array )  return json_array( value );
		if( value.constructor == Object )  return json_obj( value );
		
		return "";
	}
	
	function json_str( value )
	{
		return "\"" + value.replace( /\r|\n|"/g, json_str_rep ) + "\"";
	}
		
		var json_str_tbl = { "\"": "\"\"", "\r": "\\r", "\n": "\\n" };
		
		function json_str_rep( m )
		{
			return json_str_tbl[ m ];
		}
	
	function json_array( value )
	{
		var rt = [];
		for( var i = 0; i < value.length; i ++ )
		{
			rt.push( json_value( value[ i ] ) );
		}
		return "[" + rt.join( "," ) + "]";
	}
	
	function json_obj( value )
	{
		return "{}";
	}
	
	//  Audio  //
	
	var audio_context = null;
	
	this.AudioContext = function()
	{
		if( audio_context )  return audio_context;
		
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
			
			audio_context = context;
		}
		
		return audio_context;
	}
};

