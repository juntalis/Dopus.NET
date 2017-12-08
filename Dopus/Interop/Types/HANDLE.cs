#region Imports

using System;
using System.Runtime.InteropServices;
using System.Security;

using JetBrains.Annotations;

#endregion

namespace Dopus.Interop.Types
{
	/// <summary>Win32 HANDLE</summary>
	[StructLayout(LayoutKind.Sequential)]
	public struct HANDLE
	{
		/// <summary>The real underlying handle.</summary>
		private IntPtr hBase;
		private HANDLE(IntPtr handle) { hBase = handle; }

		/// <summary>
		/// Cast a pointer to a handle... Not really.
		/// </summary>
		/// <param name="handle"></param>
		/// <returns></returns>
		public static implicit operator HANDLE(IntPtr handle)
		{
			HANDLE hResult = NULL;
			if (handle == INVALID_HANDLE_VALUE.hBase) {
				hResult = INVALID_HANDLE_VALUE;
			} else if (handle != IntPtr.Zero) {
				hResult = new HANDLE(handle);
			}
			return hResult;
		}

		#region Conversion Operators

		/// <summary>
		/// Get the real handle that this object refers to.
		/// </summary>
		/// <param name="handle">this</param>
		/// <returns></returns>
		public static implicit operator IntPtr(HANDLE handle)
		{
			return handle.hBase;
		}

		/// <summary>
		/// Pass-thru to <see cref="IsValid"/>
		/// </summary>
		/// <param name="handle"></param>
		/// <returns></returns>
		public static implicit operator bool(HANDLE handle)
		{
			return IsValid(handle);
		}

		#endregion

		#region Overloaded Operators

		/// <summary>Pretty self-explanatory.</summary>
		/// <param name="lhs"></param>
		/// <param name="rhs"></param>
		/// <returns></returns>
		[SecurityCritical]
		public static bool operator ==(HANDLE lhs, HANDLE rhs)
		{
			return lhs.hBase == rhs.hBase;
		}

		/// <summary>
		/// Ditto.
		/// </summary>
		/// <param name="lhs"></param>
		/// <param name="rhs"></param>
		/// <returns></returns>
		[SecurityCritical]
		public static bool operator !=(HANDLE lhs, HANDLE rhs)
		{
			return lhs.hBase != rhs.hBase;
		}

		#endregion

		#region Overrides of ValueType

		/// <summary>
		/// Ditto.
		/// </summary>
		/// <param name="oCompare"></param>
		/// <returns></returns>
		[SecurityCritical]
		public override bool Equals([CanBeNull] object oCompare)
		{
			return oCompare != null && (
				oCompare is HANDLE ?
					((HANDLE)oCompare).hBase == hBase :
					((IntPtr)oCompare) == hBase
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
			return (int)hBase;
		}

		/// <summary>
		/// Returns the fully qualified type name of this instance.
		/// </summary>
		/// <returns>
		/// A <see cref="T:System.String" /> containing a fully qualified type name.
		/// </returns>
		public override string ToString()
		{
			return hBase.ToString("X");
		}

		#endregion

		/// <summary>
		/// Whether or not this contains the value of INVALID_HANDLE_VALUE
		/// </summary>
		/// <param name="handle">Handle to check</param>
		/// <returns></returns>
		public static bool IsInvalid(HANDLE handle)
		{
			return handle.hBase == INVALID_HANDLE_VALUE.hBase;
		}

		/// <summary>
		/// Whether or not the underlying handle is NULL.
		/// </summary>
		/// <param name="handle">Handle to check</param>
		/// <returns></returns>
		public static bool IsNULL(HANDLE handle)
		{
			return handle.hBase == IntPtr.Zero;
		}

		/// <summary>
		/// Whether or not this struct contains a valid HANDLE.
		/// </summary>
		/// <param name="handle">Handle to check</param>
		/// <returns></returns>
		public static bool IsValid(HANDLE handle)
		{
			return !IsInvalid(handle) && !IsNULL(handle);
		}

		private static readonly HANDLE NULL = new HANDLE(IntPtr.Zero);
		private static readonly HANDLE INVALID_HANDLE_VALUE = new HANDLE(IntPtr.Subtract(IntPtr.Zero, 1));
	}
}
