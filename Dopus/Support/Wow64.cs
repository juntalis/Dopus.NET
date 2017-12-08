#region Imports

using System;
using System.Runtime.InteropServices;
using System.Security;

using Dopus.Internals.Disposables;

using JetBrains.Annotations;

#endregion

namespace Dopus.Support
{
	public sealed class Wow64 : UnmanagedDisposables
	{
		/// <summary>
		/// We're doing this as a singleton.
		/// </summary>
		internal static WeakReference refInstance = null;

		/// <summary>
		/// Acquired in the constructor.
		/// </summary>
		internal IntPtr hRedirectHandle = IntPtr.Zero;

		internal Wow64()
		{
			hRedirectHandle = InternalDisable();
		}

		#region Overrides of UnmanagedDisposables

		/// <summary>
		/// Release the handle acquired in our constructor.
		/// </summary>
		[SecurityCritical]
		internal override void Release()
		{
			InternalRevert(hRedirectHandle);
			hRedirectHandle = IntPtr.Zero;
		}

		#endregion

		/// <summary>
		/// Whether or not redirection is currently disabled.
		/// </summary>
		public static bool RedirectionDisabled
		{
			get
			{
				return refInstance.IsAlive &&
						((Wow64)refInstance.Target)
							.hRedirectHandle != IntPtr.Zero;
			}
		}

		[NotNull]
		public static Wow64 DisableRedirection()
		{
			Wow64 instance = null;
			lock(refInstance) {
				if(RedirectionDisabled) {
					instance = (Wow64)refInstance.Target;
				} else {
					instance = new Wow64();
					refInstance = new WeakReference(instance);
				}
			}
			return instance;
		}

		[SuppressUnmanagedCodeSecurity]
		[DllImport(Consts.DopusExe, EntryPoint = "DisableWow64Redirection", ExactSpelling = true)]
		internal static extern IntPtr InternalDisable();

		[SuppressUnmanagedCodeSecurity]
		[DllImport(Consts.DopusExe, EntryPoint = "RevertWow64Redirection", ExactSpelling = true)]
		internal static extern void InternalRevert(IntPtr hHandle);
	}
}
