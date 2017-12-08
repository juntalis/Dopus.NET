using System;
using System.Runtime.InteropServices;
using Dopus.Interop.Types;

namespace Dopus.Support
{
	/// <summary>
	/// Given that it'd probably be easier to handle this functionality with built-in .NET API, this class is
	/// currently being excluded.
	/// </summary>
	public static class Registry
	{
		[DllImport(Consts.DopusExe, EntryPoint = "OpusRegOpenKeyW")]
		public static extern int OpusRegOpenKeyW(HANDLE hKey, [In] [MarshalAs(UnmanagedType.LPWStr)] string lpSubKey, uint samDesired, ref IntPtr phkResult);

		[DllImport(Consts.DopusExe, EntryPoint = "OpusRegCreateKeyW")]
		public static extern int OpusRegCreateKeyW(HANDLE hKey, [In] [MarshalAs(UnmanagedType.LPWStr)] string lpSubKey, uint samDesired, ref IntPtr phkResult);

		[DllImport(Consts.DopusExe, EntryPoint = "OpusRegQueryValueW")]
		public static extern int OpusRegQueryValueW(HANDLE hKey, [In] [MarshalAs(UnmanagedType.LPWStr)] string lpValueName, ref uint lpType, ref byte lpData, ref uint lpcbData);

		[DllImport(Consts.DopusExe, EntryPoint = "OpusRegCloseKey")]
		public static extern int OpusRegCloseKey(HANDLE hKey);

		[DllImport(Consts.DopusExe, EntryPoint = "OpusRegDeleteKeyW")]
		public static extern int OpusRegDeleteKeyW(HANDLE hKey, [In] [MarshalAs(UnmanagedType.LPWStr)] string lpSubKey);

		[DllImport(Consts.DopusExe, EntryPoint = "OpusRegDeleteValueW")]
		public static extern int OpusRegDeleteValueW(HANDLE hKey, [In] [MarshalAs(UnmanagedType.LPWStr)] string lpValueName);

		[DllImport(Consts.DopusExe, EntryPoint = "OpusRegSetValueW")]
		public static extern int OpusRegSetValueW(HANDLE hKey, [In] [MarshalAs(UnmanagedType.LPWStr)] string lpValueName, uint dwType, ref byte lpData, uint cbData);

		[DllImport(Consts.DopusExe, EntryPoint = "OpusRegCheckElevation")]
		public static extern int OpusRegCheckElevation(HANDLE hKey, IntPtr hWnd);

	}
}
