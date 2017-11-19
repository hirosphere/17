using System;
using System.Text;
using System.Collections.Generic;
using System.Text.RegularExpressions;

// WDL Parser //

public partial class WDL
{
	// class Parser //
	
	public static Parser.Tokens Parse( string wdl )    { return Parser.Parse( wdl ); }
	
	public class Parser
	{
		// public //
		
		public static Parser.Tokens Parse( string wdl )
		{
			Parser.Tokens rt = new Parser.Tokens();
			int pos = 0;
			while( true )
			{
				Parser.Token tk = GetNextToken( wdl, ref pos );
				if( tk == null ) break;
				rt.Add( tk );
			}
			
			return rt;
		}
		
		// Privates //
		
		private static Dictionary< char, TokenType > CharToToken = new Dictionary< char, TokenType >
		{
			{ '[', TokenType.ArrayBegin },
			{ ']', TokenType.ArrayEnd },
			{ '{', TokenType.ObjectBegin },
			{ '}', TokenType.ObjectEnd },
			{ '<', TokenType.ElementBegin },
			{ '>', TokenType.ElementEnd },
			{ ':', TokenType.Colon },
		};
		
		private static Token GetNextToken( string wdl, ref int pos )
		{
			char ch = SkipBlank( wdl, ref pos );
			int beg = pos;
			
			if( pos >= wdl.Length ) return null;
			
			if( CharToToken.ContainsKey( ch ) )
			{
				return new Token { Type = CharToToken[ ch ], Pos = pos ++ };
			}
			
			if( ch == '"' )
			{
				string value = ScanQuated( wdl, ref pos );
				
				return new Token { Type = TokenType.String, Value = value, Pos = beg };
			}
			
			else
			{
				bool conEsc;
				string value = ScanChunk( wdl, ref pos, out conEsc );
				
				if( ! conEsc )
				{
					double num;
					if( double.TryParse( value, out num ) )
					{
						return new Token { Type = TokenType.Number, Value = value, Pos = beg };
					}
					if( value == "true" )
					{
						return new Token { Type = TokenType.True, Value = value, Pos = beg };
					}
					if( value == "false" )
					{
						return new Token { Type = TokenType.False, Value = value, Pos = beg };
					}
					if( value == "null" )
					{
						return new Token { Type = TokenType.Null, Value = value, Pos = beg };
					}
				}
				
				value = Unescape( value );
				return new Token { Type = TokenType.String, Value = value, Pos = beg };
			}
		}
		
		private static char SkipBlank( string wdl, ref int pos )
		{
			while( pos < wdl.Length )
			{
				char ch = wdl[ pos ];
				
				if( ! IsBlankChar( ch ) ) return ch;
				pos ++;
			}
			return '\0';
		}
		
		private static string ScanQuated( string wdl, ref int pos )
		{
			int beg = ++ pos;
			bool esc = false, conEsc = false;
			while( pos < wdl.Length )
			{
				char ch = wdl[ pos ++ ];
				if( esc == false && ch == '"' ) break;
				conEsc |= esc = ( esc == false && ch == '`' );
			}
			string rt = wdl.Substring( beg, pos - beg - 1 );
			return conEsc ? Unescape( rt ) : rt;
		}
		
		private static string ScanChunk( string wdl, ref int pos, out bool conEsc )
		{
			int beg = pos;
			bool esc = false;
			conEsc = false;
			while( pos < wdl.Length )
			{
				char ch = wdl[ pos ];
				if( esc == false && ( IsBlankChar( ch ) || CharToToken.ContainsKey( ch ) ) ) break;
				conEsc |= esc = ( esc == false && ch == '`' );
				pos ++;
			}
			return wdl.Substring( beg, pos - beg );
		}
		
		private static bool IsBlankChar( char ch )
		{
			return ( ch == '\t' || ch == '\r' || ch == '\n' || ch == ' ' || ch == ',' || ch == ';' );
		}
		
		private static bool IsNumChar( char ch )
		{
			return ( ( ch >= '0' && ch <= '9' ) || ch == '+' || ch == '-' );
		}
		
		private static Regex UnescRegex = new Regex( "`(.)" );
		private static string Unescape( string value )
		{
			return UnescRegex.Replace( value, "$1" );
		}
		
		// Token //
		
		public class Tokens : List< Token >
		{
			private int pos = 0;
			public Token Next()
			{
				return pos < this.Count ? this[ pos ++ ] : null;
			}
			
			public bool CurIsColon()
			{
				return pos < this.Count && this[ pos ].Type == TokenType.Colon;
			}
		}
		
		public class Token
		{
			public TokenType Type = TokenType.Nothing;
			public string Value = "";
			public int Pos = 0;
			
			public double GetDouble( double defvalue )
			{
				double value;
				return double.TryParse( this.Value, out value ) ? value : defvalue;
			}
		}
		
		public enum TokenType
		{
			String,
			Number,
			True,
			False,
			Null,
			ArrayBegin,
			ArrayEnd,
			ObjectBegin,
			ObjectEnd,
			ElementBegin,
			ElementEnd,
			Colon,
			Nothing
		}
	}
}

// WDL Value Build //

public partial class WDL
{
	// Publics //
	
	public static Value ToValue( string wdl )
	{
		Parser.Tokens tokens = Parse( wdl );
		return BuildValue( tokens, tokens.Next() );
	}
	
	// static method BuildValue //
	
	private static Value BuildValue( Parser.Tokens tokens, Parser.Token token )
	{
		if( token != null )
		{
			switch( token.Type )
			{
				// リーフ値 //
				
				case Parser.TokenType.Number:
					return new Number( token.GetDouble( 0 ) );
				
				case Parser.TokenType.String:
					return new String( token.Value );
				
				case Parser.TokenType.True:
					return new Bool( true );
				
				case Parser.TokenType.False:
					return new Bool( false );
				
				case Parser.TokenType.Null:
					return null;
					
				// コレクション //
					
				case Parser.TokenType.ArrayBegin: // Array 組み立て //
					Array ar = new Array();
					while( ( token = tokens.Next() ) != null )
					{
						if(  token.Type == Parser.TokenType.ArrayEnd  ) break;
						ar.Add( BuildValue( tokens, token ) );
					}
					return ar;
				
				case Parser.TokenType.ObjectBegin: // Object 組み立て //
					Object obj = new Object();
					bool colon = false;
					string field_name = "";
					
					while( ( token = tokens.Next() ) != null )
					{
						if( token.Type == Parser.TokenType.ObjectEnd  ) break;
						
						if( colon )
						{
								obj[ field_name ] = BuildValue( tokens, token );
								colon = false;
						}
						else if( token.Type == Parser.TokenType.Colon )
						{
							colon = true;
						}
						else
						{
							field_name = token.Value;
						}
					}
					return obj;
				
				case Parser.TokenType.ElementBegin: // Element 組み立て //
					return BuildElement( tokens );
			}
		}
		return null;
	}
	
	private static Value BuildElement( Parser.Tokens tokens )
	{
		Element element = new Element();
		Parser.Token token;
		
		token = tokens.Next();
		if( token != null )
		{
			element.Type = token.Value;
			
			while( ( token = tokens.Next() ) != null )
			{
				if( token.Type == Parser.TokenType.ElementEnd )
				{
					break;
				}
				// Attr //
				if( tokens.CurIsColon() ) 
				{
					tokens.Next();
					element.Attrs[ token.Value ] = BuildValue( tokens, tokens.Next() );
				}
				// Part //
				else
				{
					element.Part.Add( BuildValue( tokens, token ) );
				}
			}
		}
		
		return element;
	}
}

// WDL Value Accessor //

public partial class WDL
{
	// Array[ int ] //
	
	public static string IV( Value value, int index, string defvalue )
	{
		String item = IV( value, index ) as String;
		return item == null ? defvalue : item.Value;
	}
	
	public static double IV( Value value, int index, double defvalue )
	{
		Number item = IV( value, index ) as Number;
		return item == null ? defvalue : item.Value;
	}
	
	public static float IV( Value value, int index, float defvalue )
	{
		Number item = IV( value, index ) as Number;
		return item == null ? defvalue : ( float ) item.Value;
	}
	
	public static int IV( Value value, int index, int defvalue )
	{
		Number item = IV( value, index ) as Number;
		return item == null ? defvalue : ( int ) item.Value;
	}
	
	public static bool IV( Value value, int index, bool defvalue )
	{
		Bool item = IV( value, index ) as Bool;
		return item == null ? defvalue : item.Value;
	}
	
	public static Value IV( Value value, int index )
	{
		Array ar = value as Array;
		return ar == null ? null : ar[ index ];
	}
	
	// Oblect[ string ] //
	
	public static string IV( Value value, string fieldname, string defvalue )
	{
		String item = IV( value, fieldname ) as String;
		return item == null ? defvalue : item.Value;
	}
	
	public static double IV( Value value, string fieldname, double defvalue )
	{
		Number item = IV( value, fieldname ) as Number;
		return item == null ? defvalue : item.Value;
	}
	
	public static float IV( Value value, string fieldname, float defvalue )
	{
		Number item = IV( value, fieldname ) as Number;
		return item == null ? defvalue : ( float ) item.Value;
	}
	
	public static int IV( Value value, string fieldname, int defvalue )
	{
		Number item = IV( value, fieldname ) as Number;
		return item == null ? defvalue : ( int ) item.Value;
	}
	
	public static bool IV( Value value, string fieldname, bool defvalue )
	{
		Bool item = IV( value, fieldname ) as Bool;
		return item == null ? defvalue : item.Value;
	}
	
	public static Value IV( Value value, string fieldname )
	{
		Object obj = value as Object;
		return obj == null ? null : obj[ fieldname ];
	}
	
}

// WDL Value //

public partial class WDL
{
	
	public interface Value
	{
	}
	
	public class Number : Value
	{
		public Number( double value )
		{
			this.Value = value;
		}
		
		public double Value
		{
			set { this.value = value; }
			get { return this.value; }
		}
		private double value;
		
		public override string ToString()
		{
			return "Number " + this.Value.ToString();
		}
	}
	
	public class String : Value
	{
		public String( string value )
		{
			this.Value = value;
		}
		
		public string Value
		{
			set { this.value = value; }
			get { return this.value; }
		}
		private string value;
		
		public override string ToString()
		{
			return "String " + this.Value;
		}
	}
	
	public class Bool : Value
	{
		public Bool( bool value )
		{
			this.Value = value;
		}
		
		public bool Value
		{
			set { this.value = value; }
			get { return this.value; }
		}
		private bool value;
		
		public override string ToString()
		{
			return "Bool " + ( this.Value ? "true" : "false" );
		}
	}
	
	public class Array : List< Value >, Value
	{
		public static string IV( Value value, int index, string defvalue )
		{
			String item = IV( value, index ) as String;
			return item == null ? defvalue : item.Value;
		}
		
		public static float IV( Value value, int index, float defvalue )
		{
			Number item = IV( value, index ) as Number;
			return item == null ? defvalue : ( float ) item.Value;
		}
		
		public static bool IV( Value value, int index, bool defvalue )
		{
			Bool item = IV( value, index ) as Bool;
			return item == null ? defvalue : item.Value;
		}
		
		public static Value IV( Value value, int index )
		{
			Array ar = value as Array;
			return ar == null ? null : ar[ index ];
		}
		
		public new Value this[ int index ]
		{
			set
			{
				if( index < 0  )
				{
					this.Insert( 0, value );
				}
				else if( index >= this.Count )
				{
					this.Add( value );
				}
				else
				{
					base[ index ] = value;
				}
			}
			get
			{
				return ( index >= 0 && index < this.Count ) ? base[ index ] : null;
			}
		}
		
		//  //
		
		public override string ToString() { return "Array"; }
	}
	
	public class Object : Dictionary< string, Value >, Value
	{
		public static string IV( Value value, string fieldname, string defvalue )
		{
			String item = IV( value, fieldname ) as String;
			return item == null ? defvalue : item.Value;
		}
		
		public static float IV( Value value, string fieldname, float defvalue )
		{
			Number item = IV( value, fieldname ) as Number;
			return item == null ? defvalue : ( float ) item.Value;
		}
		
		public static bool IV( Value value, string fieldname, bool defvalue )
		{
			Bool item = IV( value, fieldname ) as Bool;
			return item == null ? defvalue : item.Value;
		}
		
		public static Value IV( Value value, string fieldname )
		{
			Object obj = value as Object;
			return obj == null ? null : obj[ fieldname ];
		}
		
		public new Value this[ string fieldname ]
		{
			set
			{
				base[ fieldname ] = value;
			}
			get
			{
				return this.ContainsKey( fieldname ) ? base[ fieldname ] : null;
			}
		}
		
		//  //
		
		public override string ToString() { return "Object"; }
	}
	
	public class Element : Value
	{
		
		// Private Fields //
		
		private Object _attrs = new Object();
		private Array _part = new Array();
		
		// Public Fields //
		
		public string Type = "";
		public Object Attrs { get { return this._attrs; } }
		public Array Part { get { return _part; } }
		
		//  //
		
		public override string ToString()
		{
			return "Element < " + this.Type + " >";
		}
	}
}
