using System;
using System.Diagnostics;

namespace Dopus.Internals.Attributes
{
	[DebuggerNonUserCode]
	[AttributeUsage(AttributeTargets.Class | AttributeTargets.Interface | AttributeTargets.Struct | AttributeTargets.Enum | AttributeTargets.Delegate | AttributeTargets.Method | AttributeTargets.Field)]
	public class UndocumentedAttribute : WarningAttribute
	{
		private const string UndocumentedFeature = "Undocumented functionality";

		public UndocumentedAttribute()
		{
			Check();
			Initialize(UndocumentedFeature);
		}

		[Conditional("UNDOCUMENTED")]
		private void Check()
		{
			Ignored = true;
		}
	}
}