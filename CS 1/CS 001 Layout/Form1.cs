using System.Windows.Forms;
using System.Drawing;
//using System.Drawing.Drawing2D;


class Form1 : Form
{
	public Form1()
	{
		WindowState = FormWindowState.Maximized;
		Text = "HID Form / 17-07-19 / C";
		
		Button bu_1 = new Button
		{
			Text = "デバイスをチェック",
			Left = 100,
			Top = 40,
			Width = 300,
			Height = 120,
			Parent = this
		};
		
		TextBox textbox1 = new TextBox
		{
			Multiline = true,
		};
		
		bu_1.Click += delegate
		{
			textbox1.Text = ComPort.GetList();
		};
		
		FlatUI.Slider sl_1 = new FlatUI.Slider();
		FlatUI.Slider sl_2 = new FlatUI.Slider();
		FlatUI.Slider sl_3 = new FlatUI.Slider();
		FlatUI.Slider sl_4 = new FlatUI.Slider();
		
		//  Layout  //
		{
			Lay.Container root = new Lay.Vert( this )
			{
				Padding = new Lay.Border( 40, 40 ),
				Sep = 30
			};
			
			{
				Lay.Horiz h = new Lay.Horiz( root )
				{
					Height = 90,
					Just = true,
					Sep = 4
				};
				
				new Lay.Leaf( h, bu_1 )
				{
					Width = 400,
					Just = true
				};
			}
			
			{
				Lay.Horiz h = new Lay.Horiz( root )
				{
					Height = 400,
					Just = true,
					Sep = 20
				};
				
				new Lay.Leaf( h, sl_1 )
				{
					Width = 100,
					Just = true
				};
				
				new Lay.Leaf( h, sl_2 )
				{
					Width = 100,
					Just = true
				};
				
				new Lay.Leaf( h, sl_3 )
				{
					Width = 100,
					Just = true
				};
				
				new Lay.Leaf( h, sl_4 )
				{
					Width = 100,
					Just = true
				};
				
				new Lay.Leaf( h, textbox1 )
				{
					Width = 600,
					Just = true
				};
			}
		}
	}
	
	
	
	
	
	
	
	
	
	
	
	
}



