HNC.TN1 = {};


HNC.TN1.Pane = class_def
(
	ContentPane,
	function( base )
	{
		this.Initiate = function( com )
		{
			var self = this;
			this.Doc = HNC.TN1.Doc.Create();
			
			base.Initiate.call( this, com, "HNC_TN1" );
			
			var e = this.E;
			
			
			//  Content  //
			
			var condiv = $.Create( "div", e, null, {} );
			this.Title = $.Create( "h1", condiv );
			this.Text = $.Create( "div", condiv );
			var toggleedit = $.Create
			(
				"div", condiv,
				{ onclick: function() { editdiv.style.display = ( edvis = ! edvis ) ? "block" : "none"  } },
				{ height: "120px" }
			);
			
			
			//  Editor div //
			
			var editdiv = $.Create( "div", e, null, { display: "none" } );
			var edvis = false;
			$.Create_t( "h3", editdiv, "<Text Note> 編集" );
			
			var d2 = $.Create( "div", editdiv, null );
			$.Create_t( "h4", d2, "タイトル入力" );
			this.Text_Edit = $.Create
			(
				"textarea",
				d2, { },
				{ width: "50em", height: "8em", margin: "0 10px 10px" }
			);
			
			var upd_bu = $.Create_t
			(
				"button", d2, "反映",
				{  onclick: function() { self.Cure(); }  },
				{ width: "", height: "" }
			);
			

			var d2 = $.Create( "div", editdiv, null );
			$.Create_t( "h4", d2, "JSON" );
			this.JSON_Edit = $.Create
			(
				"textarea",
				d2, { },
				{ width: "50em", height: "8em", margin: "0 10px 10px" }
			);
			
			var upd_bu = $.Create_t( "button", d2, "反映" );
			
			
			var d3 = $.Create( "div", editdiv );
			$.Create_t( "h4", d3, "確認" );
			this.Hash_Edit = $.Create
			(
				"textarea",
				d3,  null,
				{ width: "50em", height: "5em", margin: "0 10px 10px" }
			);
			
			var linkdiv = $.Create( "div", null );
			this.Link = $.Create
			(
				"a",  linkdiv,  {  },  {  }, "Link"
			);
			
			this.Tweet = $.Create
			(
				"a",  linkdiv,  { target: "_blank" },  {  }, "Tweet"
			);
			
			upd_bu.onclick = function()
			{
				self.Update_Link();
			};
			
			
			var eh =
			{
				ValueChange: function()  { self.Update() }
			};
			//this.Doc.AddView( eh );
			
			this.Update();
		};
		
		
		this.Update = function()
		{
			document.title = this.Doc.Value.Title + " -- Hashdoc";
			$.Text( this.Title, this.Doc.Value.Title );
			this.Text_Edit.value = this.Doc.Value.Title;
			this.Title.style.font = this.Doc.Value.Font;
			
			this.JSON_Edit.value = this.Doc.JSON;
			this.Update_Link();
		};
		
		
		this.Update_Link = function()
		{
			var pageurl = location.href.replace( /#.*$/, "" );
			var hash = "#" + this.Doc.Hash;
			var link =
				this.Link.href =
				this.Hash_Edit.value =
				pageurl + hash
			;
			
			var twlink = encodeURIComponent( link );
			var twtext = encodeURIComponent( this.Doc.Value.Title + "" );
			
			this.Tweet.href = "http://twitter.com/intent/tweet?" +
				"original_referer=" + twlink +
				"&url=" +  twlink +
				"&text=" + twtext
			;
			
			this.Hash_Edit.value += "\r\n" + this.Tweet.href;
			
		};
		
		this.Cure = function()
		{
			this.Doc.Value.Title = this.Text_Edit.value;
			this.Doc.GoNext();
		};
	}
);



HNC.TN1.Doc = class_def
(
	null,
	function( base )
	{
		this.Initiate = function()
		{
			//base.Initiate.call( this );
			this.InitiateValue();
		};
		
		this.InitiateValue = function( value )
		{
			this.Value =
			{
				Title: value && value[ 1 ] || "Text Note",
				Text: value && value[ 2 ] || "",
				Font: value && value[ 3 ] || ""
			};
		};
		
		this.GoNext = function()
		{
			var ar =
			[
				91001,
				this.Value.Title,
				this.Value.Text,
				this.Value.Font,
			];
			var json = $.ToJSON( ar );
			var base64 = btoa( unescape( encodeURIComponent( json ) ) );
			location.hash = "#" + base64;
		};
		
		
	}
);

