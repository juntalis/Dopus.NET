using System;

namespace Dopus.Support.Dialogs
{
	[Flags]
	public enum RequestFlags : uint
	{
		/// <summary>Specify no additional flags.</summary>
		None = 0,

		/// <summary>Filter input string for valid filename characters.</summary>
		NameFilter = (1 << 0),

		/// <summary>Select entire string contents on initialization</summary>
		SelectAll = (1 << 1),
			
		/// <summary>Password input</summary>
		Password = (1 << 2),

		/// <summary>Set cancel (right-most) button as the default </summary>
		DefaultCancel = (1 << 3)
	}
}