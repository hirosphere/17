
var Pane_001 = class_def
(
	null,
	function()
	{
		this.Initiate = function( com )
		{
			var synth = new Syn_001.Synth();
			
			var e = this.E = $.Create( "div", com, null, "Pane_001" );
			
			chord_button( e, synth, -30, -18, -13, -11 );
			chord_button( e, synth, -27, -15, -10, -8 );
			chord_button( e, synth, -24, -12, -7, -5 );
			chord_button( e, synth, -25, -13, -8, -6 );
		};
		
		function chord_button( com, synth, b, c1, c2, c3 )
		{
			var bu = $.Create( "button", com, null, "Push" );
			bu.style.padding = "1em";
			
			bu.onclick = function()
			{
				synth.SetChord( b, c1, c2, c3 );
			};
			
			bu.onkeyup
			bu.onmouseup =
			bu.onmouseleave = function()
			{
				synth.OffChord();
			};
		}
	}
);
