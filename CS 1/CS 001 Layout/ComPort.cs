using System.IO.Ports;
using System.Management;

public class ComPort
{
	public static string GetList()
	{
		string rt = "";
		
		foreach( string port in SerialPort.GetPortNames() )
		{
			rt += port + "\r\n";
		}
		
		ManagementClass mng = new ManagementClass( "Win32_SerialPort" );
		//ManagementClass mng = new ManagementClass( "Win32_PnPEntity" );
		foreach( ManagementObject port in mng.GetInstances() )
		{
			rt +=
				port.GetPropertyValue( "Caption" ) + " " +
				port.GetPropertyValue( "DeviceID" ) + "\r\n"
			;
		}
		
		return rt;
	}
}