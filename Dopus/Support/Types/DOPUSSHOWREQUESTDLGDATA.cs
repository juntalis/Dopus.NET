using System;
using System.Runtime.InteropServices;

using Dopus.Interop.Types;
using Dopus.Support.Dialogs;

namespace Dopus.Support.Types
{
	[StructLayout(LayoutKind.Sequential, CharSet = CharSet.Auto)]
	public struct DOPUSSHOWREQUESTDLGDATA
	{
		public UInt32 cbSize;
		public HWND hwndParent;
		public string pszTitle;
		public IntPtr hIcon;
		public string pszMessage;
		public IntPtr lpButtons;
		public string pszStringBuf;
		public int cchStringBufMax;
		public RequestFlags dwFlags;
		public IntPtr pfnCheckInputString;
		public IntPtr lParamCheckInput;
		public string pszBoolOption;
		[MarshalAs(UnmanagedType.Bool)]
		public bool fBoolOption;
	}
}