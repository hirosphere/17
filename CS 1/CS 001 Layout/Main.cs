using System;
using System.Windows.Forms;

class Program
{
	[STAThread]
	public static void Main()
	{
		SetProcessDPIAware();
		Application.EnableVisualStyles();
		Application.SetCompatibleTextRenderingDefault( false );
		Application.Run( new Form1() );
	}
	
	// *  * //
	
	[System.Runtime.InteropServices.DllImport( "user32.dll" )]
	private static extern bool SetProcessDPIAware();
}
