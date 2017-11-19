using System;
using System.Collections.Generic;
using System.Windows.Forms;

namespace Lay
{
	public class Node
	{
		public int Width = 0;
		public int Height = 0;
		public int Rel = 0;
		public bool Just = false;
		
		public Border Padding = new Border();
		
		public Control Ambient = null;
		public Container Container = null;
		
		public virtual void SetContainer( Container container )
		{
			this.Container = container;
			this.Ambient = ( container != null ) ? container.Ambient : null;
		}
		
		public virtual void SetPhysicalArea( int left, int top, int width, int height ) {}
		
		public void ToClientArea( ref int left, ref int top, ref int width, ref int height )
		{
			left += this.Padding.Left;
			top += this.Padding.Top;
			width -= this.Padding.Horiz;
			height -= this.Padding.Vert;
		}
	}
	
	public class Leaf : Node
	{
		public Leaf( Container container, Control client )
		{
			this.Client = client;
			container.Add( this );
		}
		protected Control Client;
		
		public override void SetContainer( Container container )
		{
			base.SetContainer( container );
			if ( this.Ambient != null && this.Client != null )
			{
				this.Ambient.Controls.Add( this.Client );
			}
		}
		
		public override void SetPhysicalArea( int left, int top, int width, int height )
		{
			if( this.Client != null )
			{
				this.ToClientArea( ref left, ref top, ref width, ref height );
				this.Client.Left = left;
				this.Client.Top = top;
				this.Client.Width = width;
				this.Client.Height = height;
			}
		}
	}
	
	public class Root
	{
		public Root( Control ambient, Control client )
		{
			client.Parent = ambient;
			ambient.Resize += delegate
			{
				client.Size = ambient.ClientSize;
			};
			client.Size = ambient.ClientSize;
		}
	}
	
	public abstract class Container : Node
	{
		public int Sep = 0;
		
		public Container() {}
		
		public Container( Control ambient )
		{
			this.Ambient = ambient;
			if( this.Ambient != null )
			{
				this.Ambient.Resize += delegate
				{
					SetPhysicalArea( 0, 0, this.Ambient.Width, this.Ambient.Height );
				};
			}
		}
		
		protected List< Node > Items = new List< Node >();
		
		public static Container operator + ( Container self, Node item )
		{
			self.Add( item );
			return self;
		}
		
		public void Add( Node item )
		{
			if( item != null )
			{
				item.SetContainer( this );
				this.Items.Add( item );
			}
		}
		
		public int[] GetRelSpans( int containerSpan )
		{
			int[] rt = new int[ this.Items.Count ];
			if( this.Items.Count > 1 )
			{
				containerSpan -= this.Sep * this.Items.Count;
			}
			containerSpan = Math.Abs( containerSpan );
			
			int totalfix = 0;
			int totalrel = 0;
			foreach( Node item in this.Items )
			{
				totalrel += item.Rel;
				totalfix += GetItemFix( item );
			}
			int remainder = Math.Max( containerSpan - totalfix, 0 );
			int relpos = 0;
			int itembeg = 0;
			int itemend = 0;
			for( int i = 0; i < this.Items.Count; i ++ )
			{
				Node item = this.Items[ i ];
				
				relpos += item.Rel;
				itemend = totalrel > 0 ? remainder * relpos / totalrel : 0;
				rt[ i ] = itemend - itembeg;
				itembeg = itemend;
			}
			return rt;
		}
		
		protected abstract int GetItemFix( Node item );
	}
	
	public class Vert : Container
	{
		public Vert( Control ambient ) : base( ambient ) {}
		
		public Vert( Container container ) { container.Add( this ); }
		
		public override void SetPhysicalArea( int left, int top, int width, int height )
		{
			this.ToClientArea( ref left, ref top, ref width, ref height );
			
			int[] itemspans = GetRelSpans( height );
			for( int i = 0; i < this.Items.Count; i ++ )
			{
				Node item = this.Items[ i ];
				
				int itemHeight = item.Height + itemspans[ i ];
				int itemWidth = item.Just ? width : item.Width;
				item.SetPhysicalArea( left, top, itemWidth, itemHeight );
				top += itemHeight + this.Sep;
			}
		}
		
		protected override int GetItemFix( Node item ) { return item.Height; }
	}
	
	public class Horiz : Container
	{
		public Horiz( Control ambient ) : base( ambient ) {}
		
		public Horiz( Container container ) { container.Add( this ); }
		
		public override void SetPhysicalArea( int left, int top, int width, int height )
		{
			this.ToClientArea( ref left, ref top, ref width, ref height );
			
			int[] itemspans = GetRelSpans( width );
			for( int i = 0; i < this.Items.Count; i ++ )
			{
				Node item = this.Items[ i ];
				
				int itemWidth = item.Width + itemspans[ i ];
				int itemHeight = item.Just ? height : item.Height;
				item.SetPhysicalArea( left, top, itemWidth, itemHeight );
				left += itemWidth + this.Sep;
			}
		}
		
		protected override int GetItemFix( Node item ) { return item.Width; }
	}
	
	// Border //
	
	public class Border
	{
		public int Left = 0;
		public int Right = 0;
		public int Top = 0;
		public int Bottom = 0;
		
		public Border() {}
		public Border( int value ) { this.Value = value; }
		public Border( int horiz, int vert ) { this.Horiz = horiz; this.Vert = vert; }
		
		public int Value { set { Left = Right = Top = Bottom = value; } }
		public int Horiz { get { return Left + Right; } set { Left = Right = value; } }
		public int Vert { get { return Top + Bottom; } set { Top = Bottom = value; } }
	}
	
	// Control //
	
	public class Tabs : TabControl
	{
		public Tabs()
		{
			//this.SetStyle( ControlStyles.Opaque, true );
		}
	}
	
	public class Tab : TabPage
	{
		public Tab( TabControl tabs, string title, Control client )
		{
			this.Text = title;
			this.Client = client;
			tabs.TabPages.Add( this );
			new Root( this, client );
			//this.SetStyle( ControlStyles.Opaque, true );
		}
		public Control Client;
	}
}

//  //
