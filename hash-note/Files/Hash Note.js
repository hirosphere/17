
var HNC = {};

var HashNote = new function()
{
	this.TweetLink = "";
	this.Link = "";
	
	var self = this;
	var Clients = {};
	
	function initiate()
	{
		window.addEventListener( "hashchange", function() { self.Update(); } ,  false );
	}
	
	this.OnHashChange;
	
	this.Update = function()
	{
		var hash = location.hash.substr( 1 );
		var spos = hash.search( "/" );
		
		var classid = ( spos > 0 ? hash.substring( 0, spos ) : "" );
		var content = hash.substring( spos );
		
		this.Link = location;
		
		
		if( self.OnHashChange )  self.OnHashChange( classid );
	}
	
	this.GoNext = function( classid, content )
	{
		
	};
	
	initiate();
};



var HashNoteClient = class_def
(
	$.Model,
	function( base )
	{
		this.Initiate = function()
		{
			base.Initiate.call( this );
			
			this.Hash = "";
			this.JSON = "";
			
			var self = this;
			window.addEventListener( "hashchange", function() { self.Update(); } ,  false );
			
			this.Update();
		};
		
		this.Update = function()
		{
			var hash = location.hash.substr( 1 );
			var spos = hash.search( "/" );
			
			
			this.Hash = hash.match( /[A-Za-z0-9\/+]+/ ) ? hash : "";
			this.ContentText = decodeURIComponent( escape( atob( this.Hash ) ) );
			var value = $.FromJSON( this.JSON );
			
			this.InitiateValue( this.ContentText );
			
			this.Notify( "ValueChange" );
		};
		
		this.InitiateValue = function() {};
		
	}
);


//    //

var ContentPane = class_def
(
	null,
	function()
	{
		this.Initiate = function( com, classname )
		{
			this.E = $.Create_c( "div", com, classname, null, { display: "none" } );
		};
		
		this.SetActive = function( value )
		{
			this.E.style.display = ( value ? "block" : "none" );
		};
		
		this.GetTweetText = function()
		{
			return "<Hash Note> URL#ハッシュ値に内容を託し、和声・図形・配線図など簡素な内容をツイート..";
		};
	}
);

