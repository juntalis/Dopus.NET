#region Imports

using System;

#endregion

namespace Dopus.Internals.Disposables
{
	public abstract class BaseDisposables : IDisposable
	{
		internal bool _disposed = false;

		#region Implementation of IDisposable

		/// <summary>
		/// Performs application-defined tasks associated with freeing, releasing, or resetting unmanaged resources.
		/// </summary>
		public virtual void Dispose()
		{
			ReleaseDisposables();
			GC.SuppressFinalize(this);
		}

		#endregion

		/// <summary>
		///     <see cref="IDisposable.Dispose" />
		/// </summary>
		internal abstract void ReleaseDisposables();

		~BaseDisposables()
		{
			ReleaseDisposables();
		}
	}
}
