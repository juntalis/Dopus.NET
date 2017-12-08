using System;
using System.Drawing;
using System.Runtime.InteropServices;

namespace Dopus.Interop.Types
{
	/// <summary>
	/// Wrapper around the Winapi POINT type.
	/// </summary>
	[StructLayout(LayoutKind.Sequential)]
	public struct POINT
	{
		/// <summary>The X Coordinate.</summary>
		public int X;

		/// <summary>The Y Coordinate.</summary>
		public int Y;

		/// <summary>Creates a new POINT.</summary>
		/// <param name="x"></param>
		/// <param name="y"></param>
		public POINT(int x, int y)
		{
			X = x;
			Y = y;
		}

		/// <summary>Implicit cast.</summary>
		/// <returns></returns>
		public static implicit operator Point(POINT p)
		{
			return new Point(p.X, p.Y);
		}

		/// <summary>Implicit cast.</summary>
		/// <returns></returns>
		public static implicit operator POINT(Point p)
		{
			return new POINT(p.X, p.Y);
		}
	}
}