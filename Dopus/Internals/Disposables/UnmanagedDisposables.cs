#region Imports

using System;
using System.Security;

#endregion

namespace Dopus.Internals.Disposables
{
	public abstract class UnmanagedDisposables : BaseDisposables
	{
		[SecurityCritical]
		internal abstract void Release();

		#region Overrides of BaseDisposables

		/// <summary>
		/// Performs application-defined tasks associated with freeing, releasing, or resetting unmanaged resources.
		/// </summary>
		internal override void ReleaseDisposables()
		{
			if(_disposed) return;
			Release();
			_disposed = true;
		}

		#endregion
	}
}
