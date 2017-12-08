#region Imports

using System;

#endregion

namespace Dopus.Internals.Util
{
	/// <summary>Helps with events</summary>
	public static class EventUtil
	{
		/// <summary>Raises an event</summary>
		/// <typeparam name="TEventArgs">The type of the event args</typeparam>
		/// <param name="Delegate">The delegate</param>
		/// <param name="Sender">The sender</param>
		/// <param name="EventArg">The event args</param>
		public static void Raise<TEventArgs>(EventHandler<TEventArgs> Delegate, object Sender, TEventArgs EventArg) where TEventArgs : EventArgs
		{
			if(Delegate != null) Delegate(Sender, EventArg);
		}
	}
}
