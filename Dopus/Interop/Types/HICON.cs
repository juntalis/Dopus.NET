using System;
using System.Drawing;
using System.Runtime.InteropServices;
using System.Security;

using Dopus.Internals.Extensions;
using Dopus.Internals.Instances;

using JetBrains.Annotations;

namespace Dopus.Interop.Types
{
	/// <summary>Just a wrapper around <see cref="HANDLE"/> with some convenience functions</summary>
	[StructLayout(LayoutKind.Sequential)]
	public struct HICON
	{
		public HANDLE Handle;

		public HICON(HANDLE handle)
		{
			if(!handle) throw new ArgumentException("handle");
			Handle = handle;
		}

		public HICON(IntPtr handle)
			: this((HANDLE)handle) {}

		public HICON([CanBeNull] Icon icon)
		{
			icon.ThrowIfNullArg("icon");
			Handle = (IconTracker[icon.Handle] = icon).Handle;
		}

		#region Conversion Operators

		/// <summary><see cref="HICON"/> from <see cref="Icon"/></summary>
		/// <param name="icon"></param>
		/// <returns></returns>
		public static implicit operator HICON(Icon icon)
		{
			return new HICON(icon);
		}

		/// <summary><see cref="Icon"/> from <see cref="HICON"/></summary>
		/// <param name="hIcon">this</param>
		/// <returns></returns>
		public static implicit operator Icon(HICON hIcon)
		{
			return IconTracker[hIcon];
		}

		/// <summary>Get the underlying handle.</summary>
		/// <param name="hIcon">this</param>
		/// <returns></returns>
		public static implicit operator IntPtr(HICON hIcon)
		{
			return hIcon.Handle;
		}

		/// <summary>Get the underlying handle.</summary>
		/// <param name="hIcon">this</param>
		/// <returns></returns>
		public static explicit operator HANDLE(HICON hIcon)
		{
			return hIcon.Handle;
		}

		/// <summary>Pass-thru to <see cref="HANDLE.IsValid"/></summary>
		/// <param name="hIcon"></param>
		/// <returns></returns>
		public static implicit operator bool(HICON hIcon)
		{
			return hIcon.Handle;
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
		public static bool operator ==(HICON lhs, HICON rhs)
		{
			return lhs.Handle == rhs.Handle;
		}

		/// <summary>
		/// Ditto.
		/// </summary>
		/// <param name="lhs"></param>
		/// <param name="rhs"></param>
		/// <returns></returns>
		[SecurityCritical]
		public static bool operator !=(HICON lhs, HICON rhs)
		{
			return lhs.Handle != rhs.Handle;
		}

		#endregion

		#region Overrides of ValueType

		/// <summary></summary>
		/// <param name="oCompare"></param>
		/// <returns></returns>
		[SecurityCritical]
		public override bool Equals([CanBeNull] object oCompare)
		{
			return Handle.Equals(oCompare) || 
				oCompare != null && ((
					oCompare is HICON && Handle == ((HICON)oCompare).Handle
				) || (
					oCompare is Icon && (IntPtr)Handle == ((Icon)oCompare).Handle
				));
		}

		/// <summary>
		/// Returns the hash code for this instance.
		/// </summary>
		/// <returns>
		/// A 32-bit signed integer that is the hash code for this instance.
		/// </returns>
		public override int GetHashCode()
		{
			return Handle.GetHashCode();
		}

		/// <summary>
		/// Returns the fully qualified type name of this instance.
		/// </summary>
		/// <returns>
		/// A <see cref="T:System.String" /> containing a fully qualified type name.
		/// </returns>
		public override string ToString()
		{
			return Handle.ToString();
		}

		#endregion

		#region Instance Tracker

		private static ManagedHandlesTracker<Icon> iconTracker = null;

		[NotNull]
		internal static ManagedHandlesTracker<Icon> IconTracker
		{ get { return (iconTracker = iconTracker ?? new ManagedHandlesTracker<Icon>(Icon.FromHandle)); } }

		#endregion
	}
}