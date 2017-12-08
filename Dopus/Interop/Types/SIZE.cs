using System;
using System.Drawing;
using System.Runtime.InteropServices;

namespace Dopus.Interop.Types
{
	[StructLayout(LayoutKind.Sequential)]
	public struct SIZE
	{
		public int cx;
		public int cy;

		public SIZE(int cx, int cy)
		{
			this.cx = cx;
			this.cy = cy;
		}

		/// <summary>Implicit Cast</summary>
		public static implicit operator Size(SIZE size)
		{
			return new Size(size.cx, size.cy);
		}

		/// <summary>Implicit Cast</summary>
		public static implicit operator SIZE(Size size)
		{
			return new SIZE(size.Width, size.Height);
		}
	}
}