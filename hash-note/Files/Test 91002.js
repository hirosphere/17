HNC.Frq1 = {};


HNC.Frq1.Pane = class_def
(
	ContentPane,
	function( base )
	{
		this.Initiate = function( com )
		{
			var self = this;
			this.Doc = HNC.TN1.Doc.Create();
			
			base.Initiate.call( this, com, "HNC_Frq1" );
			
			var e = this.E;
			
			
			//  Content  //
			
			var condiv = $.Create( "div", e, null, {} );
			this.Title = $.Create_t( "h1", condiv, "Freq 1" );
		};
		
		this.GetTweetText = function()
		{
			return "<Freq 1> 「あの周波数」をURLで伝えたい。";
		};
	}
);
