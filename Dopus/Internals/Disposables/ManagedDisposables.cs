#region Imports

using System;
using System.Collections.Generic;
using System.Security;

using JetBrains.Annotations;

#endregion

namespace Dopus.Internals.Disposables
{
	public abstract class ManagedDisposables : BaseDisposables
	{
		[NotNull]
		internal abstract IEnumerable<IDisposable> DisposableObjects { get; }

		#region Overrides of BaseDisposables

		/// <summary>
		///     <see cref="IDisposable.Dispose" />
		/// </summary>
		[SecurityCritical]
		internal override void ReleaseDisposables()
		{
			if(_disposed) return;
			foreach(IDisposable disposable in DisposableObjects) {
				if(disposable == null) continue;
				disposable.Dispose();
			}
			_disposed = true;
		}

		#endregion
	}
}
