#region Imports

using System;

#endregion

namespace DllExporter
{
	/// <summary>
	/// Indicates that the attributed method will be exposed to unmanaged code as a static entry point.
	/// </summary>
	[AttributeUsage(AttributeTargets.Method, Inherited = true, AllowMultiple = false)]
	public sealed class DllExportAttribute : Attribute
	{
		/// <summary>
		/// Gets or sets the name of the DLL entry point. If not set, attributed method name will be used as entry point name.
		/// </summary>
		public string EntryPoint { get; set; }
	}
}
