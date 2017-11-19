using System.Windows.Forms;
using System.Windows.Input;
//using System.Windows.Media;
using System.Drawing;

namespace FlatUI
{
	//*    *//
	
	public class Slider : Control
	{
		//*    *//
		
		public int YPos = 0;
		
		
		//*    *//
		
		public Slider()
		{
		//	System.Windows.Input.Touch.FrameReported += delegate {};
		}
		
		//*    *//
		
		protected override void OnMouseDown( MouseEventArgs ev )
		{
			YPos = ev.Y;
			Invalidate();
		}
		
		protected override void OnMouseMove( MouseEventArgs ev )
		{
			if( ev.Button != ( MouseButtons.Left ) )  return;
			
			YPos = ev.Y;
			Invalidate();
		}
		
		//*    *//
			
		protected override void OnPaint( PaintEventArgs args )
		{
			int y = YPos;
			
			Graphics gr = args.Graphics;
			
			Color bcol = Color.FromArgb( 0x80, 0xA0, 0xF0 );
			Color fcol = Color.FromArgb( 0xC0, 0xD0, 0xFF );
			
			
			using ( Brush br = new SolidBrush( fcol ) )
			{
				args.Graphics.FillRectangle( br, 0, 0, Width, y );
			}
			
			using ( Brush br = new SolidBrush( bcol ) )
			{
				args.Graphics.FillRectangle( br, 0, y, Width, Height - y );
			}
			
			using( Font font = new Font( "游ゴシック", 14 ) )
			{
				gr.DrawString( y.ToString(), font, Brushes.White, 1, 20 );
			}
		}
			
		//*    *//
		
		
	}
	
	
	//*  Env  *//
	
	public class Env
	{
		//*    *//
		
		
		//*    *//
		
		
		//*  Leaf  *//
		
		
		
	}
	
	//*    *//
	
}













//		RadComboBox Control - Progress Telerik UI for ASP.NET AJAX - Telerik http://www.telerik.com/products/aspnet-ajax/combobox.aspx		//

