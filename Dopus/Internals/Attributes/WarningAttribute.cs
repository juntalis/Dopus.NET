using System;
using System.Diagnostics;

namespace Dopus.Internals.Attributes
{
	[AttributeUsage(AttributeTargets.All, AllowMultiple = false, Inherited = true)]
	[DebuggerNonUserCode]
	public class WarningAttribute : Attribute
	{
		protected bool Ignored { get; set; }

		protected WarningAttribute()
		{
		}

		public WarningAttribute(string message)
		{
			Message = message;
			Initialize(message);
		}

		protected void Initialize(string message)
		{
			if(!Ignored) {
				Trace.TraceWarning(message);
			}
		}

		public string Message { get; private set; }
	}
}