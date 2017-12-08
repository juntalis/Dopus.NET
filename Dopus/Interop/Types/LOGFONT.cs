using System;
using System.Runtime.InteropServices;

using Dopus.Interop.Enums;

using InteropCharset = System.Runtime.InteropServices.CharSet;

namespace Dopus.Interop.Types
{
	/// <summary>
	/// Defines a struct for holding info about a logical font. See
	/// <a href="http://msdn.microsoft.com/en-us/library/windows/desktop/dd145037%28v=vs.85%29.aspx">the MSDN
	/// documentation for more details.</a>
	/// </summary>
	[Serializable]
	[StructLayout(LayoutKind.Sequential, CharSet = InteropCharset.Auto)]
	public class LOGFONT
	{
		/// <summary>lfHeight</summary>
		public int Height;

		/// <summary>lfWidth</summary>
		public int Width;

		/// <summary>lfEscapement</summary>
		public int Escapement;

		/// <summary>lfOrientation</summary>
		public int Orientation;

		/// <summary>lfWeight</summary>
		public FontWeight Weight;

		/// <summary>lfItalic</summary>
		[MarshalAs(UnmanagedType.U1)]
		public bool Italic;

		/// <summary>lfUnderline</summary>
		[MarshalAs(UnmanagedType.U1)]
		public bool Underline;

		/// <summary>lfStrikeOut</summary>
		[MarshalAs(UnmanagedType.U1)]
		public bool StrikeOut;

		/// <summary>lfCharSet</summary>
		public FontCharSet CharSet;
		
		/// <summary>lfOutPrecision</summary>
		public FontPrecision OutPrecision;
		
		/// <summary>lfClipPrecision</summary>
		public FontClipPrecision ClipPrecision;
		
		/// <summary>lfQuality</summary>
		public FontQuality Quality;

		/// <summary>lfPitchAndFamily</summary>
		public FontPitchAndFamily PitchAndFamily;

		/// <summary>lfFaceName</summary>
		[MarshalAs(UnmanagedType.ByValTStr, SizeConst = 32)]
		public string FaceName;
	}
}