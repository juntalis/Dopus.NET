using System;
using System.Runtime.InteropServices;
using System.Security;
using System.Text;

using Dopus.Interop;
using Dopus.Interop.Types;

namespace Dopus.Support
{
	public static class Config
	{
		/// <summary>
		/// Used in <see cref="Support.Config.LoadOrSaveConfig"/>
		/// </summary>
		public enum Operation : int
		{
			/// <summary>Load configuration data</summary>
			Load = 0,

			/// <summary>Save configuration data</summary>
			Save = 1
		}

		/// <summary>
		/// Used in <see cref="Support.Config.GetConfigPath"/>
		/// </summary>
		public enum PathType : int
		{
			/// <summary>
			/// Folder where plugin configuration data is stored
			/// </summary>
			Config = 0,

			/// <summary>
			/// Folder where plugin state date is stored
			/// </summary>
			StateData = 1
		}

		[StructLayout(LayoutKind.Sequential)]
		public struct DOpusPluginConfigItem
		{
			[MarshalAs(UnmanagedType.LPTStr)]
			public string pszName;
			public int iType;
			public IntPtr pData;
			public UInt32 dwDataSize;
		}

		[StructLayout(LayoutKind.Sequential)]
		public struct DOpusPluginConfigData
		{
			public UInt32 cbSize;
			[MarshalAs(UnmanagedType.LPTStr)]
			public string pszName;
			[MarshalAs(UnmanagedType.Bool)]
			public bool fStateData;
			public int iNumCfgItems;
			// ConfigItem*
			public IntPtr pCfgItemArray;
		}

		[StructLayout(LayoutKind.Sequential)]
		public struct DOpusThumbnailPrefsData
		{
			public UInt32 cbSize;
			public UInt32 dwFlags;
			public UInt32 crFillColor; // COLORREF
			public SIZE szThumbSize;
			public SIZE szMinThumbSize;
			public SIZE szMaxThumbSize;
		}

		/// <summary>
		/// The LoadOrSaveConfig function lets you load or save simple configuration data in XML format
		/// without needing to perform the XML parsing yourself.
		/// </summary>
		/// <param name="iOperation">Operation to perform</param>
		/// <param name="lpCfgData">Configuration data to load or save.</param>
		/// <returns></returns>
		[DllImport(Consts.DopusExe, EntryPoint = "LoadOrSaveConfig", BestFitMapping = true, ExactSpelling = false, CharSet = CharSet.Auto)]
		[return: MarshalAs(UnmanagedType.Bool)]
		public static extern bool LoadOrSaveConfig(
			[In] Operation iOperation,
			[In,Out] ref DOpusPluginConfigData lpCfgData
		);

		/// <summary>
		/// The GetThumbnailPrefs function lets you retrieve information about the user's current
		/// thumbnail Preferences settings.
		/// </summary>
		/// <param name="lpThumbData">Pointer to a DOPUSTHUMBNAILPREFSDATA structure</param>
		/// <returns>Returns TRUE if the thumbnail preferences were successfully retrieved, or FALSE on failure.</returns>
		[DllImport(Consts.DopusExe, EntryPoint = "GetThumbnailPrefs", ExactSpelling = true)]
		[return: MarshalAs(UnmanagedType.Bool)]
		public static extern bool GetThumbnailPrefs(ref DOpusThumbnailPrefsData lpThumbData);

		/// <summary>
		/// The IsUSBInstall function lets you discover if Opus is currently running from a USB device.
		/// </summary>
		/// <returns>Returns TRUE if the Opus is currently running from a USB export, or FALSE if this
		/// is a normal installation of Directory Opus.</returns>
		[DllImport(Consts.DopusExe, EntryPoint = "IsUSBInstall", ExactSpelling = true)]
		[return: MarshalAs(UnmanagedType.Bool)]
		public static extern bool IsUSBInstall();

		/// <summary>
		/// The GetConfigPath function lets you retrieve the path used for storage of plugin configuration
		/// data (user-configured, will be backed-up and exported to USB) and state data (non-user
		/// configured, eg window positions, not necessarily backed-up or exported.)
		/// </summary>
		/// <param name="pathType">The type of path to retrieve</param>
		/// <returns>A string containing the desired folder, or null on failure.</returns>
		public static string GetConfigPath(PathType pathType)
		{
			StringBuilder sBuffer = MaxPath;
			return _GetConfigPath(pathType, sBuffer, Consts.MAX_PATH) ? sBuffer.ToString() : null;
		}

		/// <summary>
		/// The GetProgramDir function lets you retrieve the folder Opus is installed in.
		/// </summary>
		/// <returns>A string containing Opus's folder, or null on failure.</returns>
		public static string GetProgramDir()
		{
			StringBuilder sBuffer = MaxPath;
			return _GetProgramDir(sBuffer, Consts.MAX_PATH) ? sBuffer.ToString() : null;
		}

		private static StringBuilder MaxPath
		{
			get { return new StringBuilder(Consts.MAX_PATH); }
		}

		[SuppressUnmanagedCodeSecurity]
		[DllImport(Consts.DopusExe, EntryPoint = "GetProgramDir", BestFitMapping = true, ExactSpelling = false, CharSet = CharSet.Auto)]
		[return: MarshalAs(UnmanagedType.Bool)]
		private static extern bool _GetProgramDir(StringBuilder pszBuf, int cchBufSize);

		[SuppressUnmanagedCodeSecurity]
		[DllImport(Consts.DopusExe, EntryPoint = "GetConfigPath", BestFitMapping = true, ExactSpelling = false, CharSet = CharSet.Auto)]
		[return: MarshalAs(UnmanagedType.Bool)]
		private static extern bool _GetConfigPath(PathType iPathType, StringBuilder pszBuf, int cchMax);

	}
}