using System;
using System.Security.Permissions;
using System.Text;

using Dopus.Interop.Types;

namespace Dopus.Support.Dialogs
{
	/// <summary>
	/// Data used to check the user input in <see cref="RequestDialog"/> instances.
	/// </summary>
	[HostProtectionAttribute(SecurityAction.LinkDemand, SharedState = true)]
	public class CheckInputEventArgs : EventArgs
	{
		public CheckInputEventArgs(HWND hwnd, IntPtr lparam, string sOrigString, string sString, StringBuilder sErrorBuffer, int iErrBufMax)
		{
			Hwnd = hwnd;
			LParam = lparam;
			OriginalInput = sOrigString;
			Input = sString;
			ErrorBuffer = sErrorBuffer;
			ErrorBufferCapacity = iErrBufMax;
			Result = CheckInputResult.Accept;
		}

		public void WriteError(string message, params object[] args)
		{
			string formatted = String.Format(message, args);
			int currentCount = formatted.Length + ErrorBuffer.ToString().Length;
			if(ErrorBufferCapacity < currentCount) {
				string errMsg = String.Format(
					"Call to CheckInputEventArgs.WriteError resulted in the error buffer exceeding it's maximum length. ({0})",
					ErrorBufferCapacity
				);
				throw new IndexOutOfRangeException(errMsg);
			}
			ErrorBuffer.Append(formatted);
		}

		public CheckInputResult Result { get; set; }
		public HWND Hwnd { get; protected set; }
		public IntPtr LParam { get; protected set; }
		public string OriginalInput { get; protected set; }
		public string Input { get; protected set; }
		public int ErrorBufferCapacity { get; protected set; }
		protected StringBuilder ErrorBuffer { get; set; }
	}
}
