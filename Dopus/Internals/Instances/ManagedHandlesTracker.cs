using System;
using System.Collections.Generic;

using Dopus.Interop.Types;

using JetBrains.Annotations;

namespace Dopus.Internals.Instances
{
	/// <summary>
	/// Used to track managed instances derived from native handles. To avoid creating
	/// a new instance every time we look to cast a handle to a managed class, the
	/// tracker maintains a collection of weak references to any new instance created.
	/// 
	/// TODO: Performance test this shit on a per class basis to see what classes have a heavy enough conversion method to warrant it.
	/// </summary>
	/// <typeparam name="T">Class type that we'll be tracking instances of.</typeparam>
	public sealed class ManagedHandlesTracker<T> where T : class
	{
		private readonly Dictionary<IntPtr, WeakReference> instances;
		private readonly HandleToInstFunction handleToInst;

		/// <summary>The function used to convert a native handle into an instance of <see cref="T"/></summary>
		/// <param name="handle">Handle to convert</param>
		/// <returns>Valid instance</returns>
		[NotNull]
		public delegate T HandleToInstFunction(IntPtr handle);

		public ManagedHandlesTracker([NotNull] HandleToInstFunction function)
		{
			handleToInst = function;
			instances = new Dictionary<IntPtr, WeakReference>();
		}

		[NotNull]
		private T Set(IntPtr handle, [NotNull] T instance, bool checkHandle)
		{
			if (checkHandle && !HANDLE.IsValid(handle)) throw new ArgumentException("handle");
			instances[handle] = new WeakReference(instance);
			return instance;
		}

		[NotNull]
		public T Set(IntPtr handle, [CanBeNull] T instance)
		{
			return Set(handle, instance ?? handleToInst(handle), true);
		}

		[NotNull]
		public T Set(IntPtr handle)
		{
			return Set(handle, null);
		}

		[NotNull]
		public T Get(IntPtr handle)
		{
			T instance = null;
			if(!HANDLE.IsValid(handle)) throw new ArgumentException("handle");
			lock(instances) {
				return instances.ContainsKey(handle) && instances[handle].IsAlive ?
					(T)instances[handle].Target : Set(handle, handleToInst(handle), false);
			}
		}

		[NotNull]
		public T this[IntPtr handle]
		{
			get { return Get(handle); }
			set { Set(handle, value, true); }
		}
	}
}
