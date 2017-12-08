using System;
using System.Runtime.InteropServices;

using Dopus.Interop.Types;

namespace Dopus.Support
{
	public static class UtilB
	{
		[DllImport(Consts.DopusExe, EntryPoint="DrawPictureFrameInDIB")]
		[return: MarshalAs(UnmanagedType.Bool)]
		internal static extern bool DrawPictureFrameInDIB(
			ref IntPtr pBMI,
			IntPtr pBits,
			ref RECT prc,
			int iFrameSize,
			int iShadowSize
		);

		[DllImport(Consts.DopusExe, EntryPoint = "CalcCRC32")]
		internal static extern UInt32 CalcCRC32(
			UInt32 dwCRCIn,
			[In][MarshalAs(UnmanagedType.LPArray)] byte[] pData,
			UInt32 dwSize
		);

	}
}