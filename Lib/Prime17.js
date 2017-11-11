
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
		return ( "" + plain ).replace( /<|>|&|  | |\t|\r\n|\r|\n/, hp_rep );
	};
	
	var ht_rep_tab =
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
	
	function hp_rep( ch )  {  return ht_rep_tab[ ch ];  }
	
	
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
	
	//* Hash Doc *//
	
	this.HashDoc = class_def
	(
		null,
		function()
		{
			this.Initiate = function()
			{
				this.Value = {};
			};
			
			this.Get = function()
			{
				return {};
			};
			
			this.Set = function( value )
			{
				
			};
		}
	);
	
	
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
	
	this.ToJSON = function( value )
	{
	
	};
};
