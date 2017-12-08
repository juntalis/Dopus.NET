using System;
using System.Runtime.InteropServices;

namespace Dopus.Interop.Types
{
	[StructLayout(LayoutKind.Sequential)]
	public struct HWND
	{
		private IntPtr _value;

		public static HWND Cast(IntPtr hwnd)
		{
			HWND temp = new HWND { _value = hwnd };
			return temp;
		}

		public static implicit operator IntPtr(HWND hwnd)
		{
			return hwnd._value;
		}

		public static readonly HWND NULL = new HWND { _value = IntPtr.Zero };

		public static bool operator ==(HWND lhs, HWND rhs)
		{
			return lhs._value == rhs._value;
		}

		public static bool operator !=(HWND lhs, HWND rhs)
		{
			return lhs._value != rhs._value;
		}

		public override bool Equals(object oCompare)
		{
			HWND temp = Cast((HWND)oCompare);
			return _value == temp._value;
		}

		public override int GetHashCode()
		{
			return (int)_value;
		}
	}
}
