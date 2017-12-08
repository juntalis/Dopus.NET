using System;
using System.Runtime.InteropServices;

namespace Dopus.Interop.Types
{
	[StructLayout(LayoutKind.Sequential)]
	public struct NMHDR
	{
		public NMHDR(HWND hwndFrom, UIntPtr idFrom, UInt32 code)
		{
			this.hwndFrom = hwndFrom;
			this.idFrom = idFrom;
			this.code = code;
		}

		public HWND hwndFrom;
		public UIntPtr idFrom;
		public UInt32 code;
	}
}