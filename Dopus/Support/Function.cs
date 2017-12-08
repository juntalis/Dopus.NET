using System;
using System.Runtime.InteropServices;
using System.Text;

using Dopus.Interop.Types;

namespace Dopus.Support
{
	/// <summary>
	/// TODO: Make this not suck.
	/// </summary>
	public static class Function
	{
		[DllImport(Consts.DopusExe, EntryPoint = "ShowFunctionNewNameDlg")]
		public static extern int ShowFunctionNewNameDlg(
			IntPtr lpFuncData, [MarshalAs(UnmanagedType.LPWStr)] StringBuilder lpszOldName, int cchOldNameMax, [MarshalAs(UnmanagedType.LPWStr)] System.Text.StringBuilder lpszNewName, int cchNewNameMax, [MarshalAs(UnmanagedType.Bool)] bool fMove);

		[DllImport(Consts.DopusExe, EntryPoint = "GetWildNewName")]
		[return: MarshalAs(UnmanagedType.Bool)]
		public static extern bool GetWildNewName([MarshalAs(UnmanagedType.LPWStr)] StringBuilder lpszOldPattern, [In] [MarshalAs(UnmanagedType.LPTStr)] string lpszNewPattern, [In] [MarshalAs(UnmanagedType.LPTStr)] string lpszFileName, [MarshalAs(UnmanagedType.LPWStr)] System.Text.StringBuilder lpszNewName, int cchNewNameMax);

		[DllImport(Consts.DopusExe, EntryPoint = "ShowFunctionErrorDlg")]
		public static extern int ShowFunctionErrorDlg(IntPtr lpFuncData, uint uiType, int iErrorCode, uint uiAction, [In] [MarshalAs(UnmanagedType.LPTStr)] string lpszName, [In] [MarshalAs(UnmanagedType.LPTStr)] string lpszErrMsg);

		[DllImport(Consts.DopusExe, EntryPoint = "ShowFunctionReplaceDlg")]
		public static extern int ShowFunctionReplaceDlg(IntPtr lpFuncData, [In] [MarshalAs(UnmanagedType.LPTStr)] string pszSource, ref System.Runtime.InteropServices.ComTypes. pwfdSource, [In] [MarshalAs(UnmanagedType.LPTStr)] string pszDest, ref WIN32_FIND_DATA pwfdDest, [MarshalAs(UnmanagedType.LPWStr)] System.Text.StringBuilder pszNewName, int cchNewNameMax, uint dwFlags);

		[DllImport(Consts.DopusExe, EntryPoint = "ShowFunctionInitialDeleteDlg")]
		public static extern int ShowFunctionInitialDeleteDlg(IntPtr lpFuncData, [In] [MarshalAs(UnmanagedType.LPTStr)] string pszFileName);

		[DllImport(Consts.DopusExe, EntryPoint = "ShowFunctionDeleteDlg")]
		public static extern int ShowFunctionDeleteDlg(IntPtr lpFuncData, [In] [MarshalAs(UnmanagedType.LPTStr)] string pszFileName, [MarshalAs(UnmanagedType.Bool)] bool fFolder, uint dwFileCount, uint dwFileSizeHigh, uint dwFileSizeLow);

		[DllImport(Consts.DopusExe, EntryPoint = "FilterFunctionFile")]
		[return: MarshalAs(UnmanagedType.Bool)]
		public static extern bool FilterFunctionFile(IntPtr lpFuncData, [In] [MarshalAs(UnmanagedType.LPTStr)] string lpszFile, ref WIN32_FIND_DATA lpWFD, [MarshalAs(UnmanagedType.Bool)] bool fSubFolderFilter);

		[DllImport(Consts.DopusExe, EntryPoint = "AddFunctionFileChange")]
		public static extern void AddFunctionFileChange(IntPtr lpFuncData, [MarshalAs(UnmanagedType.Bool)] bool fIsDest, int iType, [In] [MarshalAs(UnmanagedType.LPTStr)] string lpszFile);

		[DllImport(Consts.DopusExe, EntryPoint = "UpdateFunctionProgressBar")]
		public static extern void UpdateFunctionProgressBar(IntPtr lpFuncData, uint uiAction, uint dwData);

		[DllImport(Consts.DopusExe, EntryPoint = "GetFunctionWindow")]
		public static extern IntPtr GetFunctionWindow(IntPtr lpFuncData);
 
	}
}