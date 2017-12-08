using System.Drawing;
using System.Security;

using JetBrains.Annotations;

#region Imports

using System;
using System.Runtime.InteropServices;
using Dopus.Interop.Types;

#endregion

#region Namespace Aliases

using BYTE = System.Byte;
using DWORD = System.UInt32;

#endregion
namespace Dopus.Interop.Types
{
	/// <summary>
	/// <a href="http://msdn.microsoft.com/en-us/library/windows/desktop/dd183449%28v=vs.85%29.aspx" target="_blank">MSDN Article</a>
	/// </summary>
	[StructLayout(LayoutKind.Sequential)]
	public struct COLORREF
	{
		public BYTE Red;
		public BYTE Green;
		public BYTE Blue;
		private BYTE padding;
		
		public COLORREF(byte red, byte green, byte blue)
		{
			Red = red;
			Green = green;
			Blue = blue;
			padding = 0;
		}

		public COLORREF(COLORREF other)
			: this(other.Red, other.Green, other.Blue) {}

		#region Conversion Operators

		/// <summary><see cref="COLORREF"/> from <see cref="Color"/></summary>
		/// <param name="icon"></param>
		/// <returns></returns>
		public static implicit operator COLORREF(Color icon)
		{
			return new COLORREF(icon.R, icon.G, icon.B);
		}

		/// <summary><see cref="Color"/> from <see cref="COLORREF"/></summary>
		/// <param name="colorref"></param>
		/// <returns></returns>
		public static implicit operator Color(COLORREF colorref)
		{
			return Color.FromArgb(colorref.Red, colorref.Green, colorref.Blue);
		}

		#endregion

		#region Overloaded Operators

		/// <summary>
		/// Pretty self-explanatory.
		/// </summary>
		/// <param name="lhs"></param>
		/// <param name="rhs"></param>
		/// <returns></returns>
		[SecurityCritical]
		public static bool operator ==(COLORREF lhs, COLORREF rhs)
		{
			return lhs.GetHashCode() == rhs.GetHashCode();
		}

		/// <summary>
		/// Ditto.
		/// </summary>
		/// <param name="lhs"></param>
		/// <param name="rhs"></param>
		/// <returns></returns>
		[SecurityCritical]
		public static bool operator !=(COLORREF lhs, COLORREF rhs)
		{
			return lhs.GetHashCode() != rhs.GetHashCode();
		}

		#endregion

		#region Overrides of ValueType

		/// <summary></summary>
		/// <param name="oCompare"></param>
		/// <returns></returns>
		[SecurityCritical]
		public override bool Equals([CanBeNull] object oCompare)
		{
			return oCompare != null && (
				oCompare is COLORREF && GetHashCode() == oCompare.GetHashCode()
			) || (
				oCompare is DWORD &&
				(DWORD)((Red << 24) | (Green << 16) | (Blue << 0) | (padding)) == (DWORD)oCompare
			) || (
				oCompare is Color &&
				((Color)oCompare).R == Red &&
				((Color)oCompare).G == Green &&
				((Color)oCompare).B == Blue
			);
		}

		/// <summary>
		/// Returns the hash code for this instance.
		/// </summary>
		/// <returns>
		/// A 32-bit signed integer that is the hash code for this instance.
		/// </returns>
		public override int GetHashCode()
		{
			return (Int32)((Red << 24) | (Green << 16) | (Blue << 0) | (padding));
		}

		/// <summary>
		/// Returns the fully qualified type name of this instance.
		/// </summary>
		/// <returns>
		/// A <see cref="T:System.String" /> containing a fully qualified type name.
		/// </returns>
		public override string ToString()
		{
			return String.Format("COLORREF<Red={0}, Green={1}, Blue={2}> [#{0:X2}{1:X2}{2:X2}]", Red, Green, Blue);
		}

		#endregion
	}
}