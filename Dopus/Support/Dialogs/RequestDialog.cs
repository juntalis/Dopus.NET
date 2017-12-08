using System;
using System.Runtime.InteropServices;
using System.Security;
using System.Text;

using Dopus.Interop.Types;
using Dopus.Support.Types;

namespace Dopus.Support.Dialogs
{
	/// <summary>
	/// TODO: Finish reimplementation
	/// </summary>
	public class RequestDialog
	{
		/// <summary>
		/// Title of the dialog
		/// </summary>
		public string Title { get; set; }

		/// <summary>
		/// Parent window.
		/// </summary>
		public HWND Parent { get; set; }

		/// <summary>
		/// Icon to show for the dialog
		/// </summary>
		public HICON Icon { get; set; }
		
		/// <summary>
		/// Message to show.
		/// </summary>
		public string Message { get; set; }

		/// <summary>
		/// Used to check user input. Only called if <see cref="MaxLength"/> exceeds zero.
		/// </summary>
		public event EventHandler<CheckInputEventArgs> CheckInput;

		public RequestFlags Flags { get; set; }

		[SuppressUnmanagedCodeSecurity]
		protected virtual int OnCheckInput(HWND hwnd, IntPtr lparam, string sOrigString, string sString,
		                                   StringBuilder pszErrorBuffer, int cchErrorMax)
		{
			CheckInputEventArgs args = new CheckInputEventArgs(hwnd, lparam, sOrigString, sString, pszErrorBuffer, cchErrorMax);
			if(CheckInput != null) {
				CheckInput(this, args);
			}
			return (int)args.Result;
		}
		
		/// <summary>
		/// Internally used for dispatching our CheckInput events.
		/// </summary>
		/// <param name="hWnd"></param>
		/// <param name="lParamCheckInput"></param>
		/// <param name="lpszOrigString"></param>
		/// <param name="lpszString"></param>
		/// <param name="pszErrorBuf"></param>
		/// <param name="cchErrorMax"></param>
		/// <returns></returns>
		[SuppressUnmanagedCodeSecurity]
		[UnmanagedFunctionPointer(CallingConvention.StdCall, CharSet = CharSet.Auto)]
		protected delegate int PFNCHECKINPUT(
			HWND hWnd, // HWND
			IntPtr lParamCheckInput, // LPARAM
			[In] string lpszOrigString,
			[In] string lpszString,
			StringBuilder pszErrorBuf,
			int cchErrorMax
		);

		[SuppressUnmanagedCodeSecurity]
		[DllImport(Consts.DopusExe, EntryPoint = "ShowRequestDlg", CharSet = CharSet.Auto, BestFitMapping = true, ExactSpelling = false)]
		protected static extern int InternalShowRequestDlg(ref DOPUSSHOWREQUESTDLGDATA lpDlgData);

		protected int ShowRequestDlg()
		{
			
		}
	}
}
