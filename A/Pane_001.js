
var Pane_001 = class_def
(
	null,
	function()
	{
		this.Initiate = function( com )
		{
			var e = this.E = $.Create( "div", com, null, "Pane_001" );
			var bu = $.Create( "button", e, null, "Push" );
			var synth = new Syn_001.Synth();
			
			bu.onclick = function()
			{
				synth.SetChord( -30, -18, -13, -11 );
			};
			
			bu.onkeyup
			bu.onmouseup =
			bu.onmouseleave = function()
			{
				synth.OffChord();
			};
		};
	}
);
