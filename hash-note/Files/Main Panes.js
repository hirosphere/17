//  //

var MainPane = class_def
(
	null,
	function()
	{
		var Classes =
		{
			"TN1" : HNC.TN1,
			"Frq1" : HNC.Frq1
		};
		
		console.log( "MainPane", Classes.TN1, HNC, HNC.TN1 );
		
		var ContentPanes = {};
		
		this.Initiate = function( com )
		{
			var self = this;
			
			var e = $.Create( "div", com, null );
			
			var h = $.Create_t( "h1", e, "モニター", null, { display: "none" } );
			
			//  Content  //
			
			this.CurrentContent = null;
			
			this.ContentFrame = $.Create_c( "div", e, "ContentFrame" );
			
			this.MenuPane = MenuPane.Create( this.ContentFrame );
			
			// Link  //
			
			var linkdiv = $.Create_c( "div", e, "MainLinks" );
			this.Link = $.Create
			(
				"a",  linkdiv,  { title:"現在の内容へのリンク" },  {  }, "リンク", "MenuItem"
			);
			
			this.Tweet = $.Create
			(
				"a",  linkdiv,  { target: "_blank", title: "現在の内容のURL" },  {  }, "ツイート", "MenuItem"
			);
			
			//  Doc event  //
			
			HashNote.OnHashChange = function( classid )
			{
				$.Text( h, classid );
				
				
				var pane = self.MakeContentPane( classid );
				
					console.log( "OnHashChange  CurrentContent", self.CurrentContent );
				if( pane != self.CurrentContent )
				{
					if( self.CurrentContent )
					{
						self.CurrentContent.SetActive( false );
					}
					
					
					self.CurrentContent = pane;
					
					self.CurrentContent.SetActive( true );
				}
				
				self.UpdateLink();
			};
			
			//
			
			HashNote.Update();
		};
		
		this.MakeContentPane = function( classid )
		{
			var pane = ContentPanes[ classid ];
				console.log( "MakeContentPane", classid, pane, Classes[ classid ] );
			if( ! pane && Classes[ classid ] )
			{
				pane = ContentPanes[ classid ] = Classes[ classid ].Pane.Create( this.ContentFrame );
			}
			return pane || this.MenuPane;
		};
		
		this.UpdateLink = function()
		{
			this.Link.href = location;
			
			var twtext = ( this.CurrentContent ? this.CurrentContent.GetTweetText() : "" );
			
			this.Tweet.href = "http://twitter.com/intent/tweet?" +
				// "original_referer=" + twlink +
				"&url=" +  encodeURIComponent( location ) +
				"&text=" + encodeURIComponent( twtext )
			;
			
		};
	}
);


var MenuPane = class_def
(
	ContentPane,
	function( base )
	{
		this.Initiate = function( com )
		{
			var self = this;
			
			base.Initiate.call( this, com, "Menu" );
			
			var e = this.E;
			
			$.Create_t( "h1", e, "Hash Note - メニュー" );
			
			//  Content  //
			
			var condiv = $.Create( "div", e, null, { padding: "40px" } );
				
				var d1 = $.Create( "div", condiv );
					
					makeitem( "Text Note 1", "TN1/", d1 );
					makeitem( "Freq Note 1", "Frq1/", d1 );
			
					makeitem( "Shape 1", "Sh1/", d1 );
					makeitem( "Color 1", "Co1/", d1 );
			
			// Link  //
			
			var linkdiv = $.Create( "div", null, null, { padding: "40px" } );
			this.Link = $.Create
			(
				"a",  linkdiv,  {  },  {  }, "Link"
			);
			
			this.Tweet = $.Create
			(
				"a",  linkdiv,  { target: "_blank" },  {  }, "Tweet"
			);
			
			//  Doc event  //
			
			HashNote.OnHashChange = function( classid )
			{
				var conpane = MakeContentPane( classid );
			};
			
		};
		
		function makeitem( title, hash, com )
		{
			$.Create( "a", com, { href: "#" + hash }, null, title, "MenuItem" ); 
		}
	}
);
