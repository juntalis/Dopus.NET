using System;
using System.Runtime.InteropServices;
using System.Security;

using Dopus.Internals.Extensions;
using Dopus.Interop.Types;

using JetBrains.Annotations;

namespace Dopus.Support.Dialogs
{
	public class ChooseFont
	{
		/// <summary>
		/// Title to show for your dialog.
		/// </summary>
		[CanBeNull]
		public string Title { get; set; }

		/// <summary>
		/// Whether or not to only show fixed-width fonts.
		/// </summary>
		public bool FixedOnly { get; set; }

		public ChooseFont() : this(null) {}

		public ChooseFont([CanBeNull] string title)
		{
			Title = title;
			FixedOnly = false;
		}

		/// <summary>
		/// Parameterless pass-thru to <see cref="Show(Dopus.Interop.Types.HWND)"/>
		/// </summary>
		/// <returns></returns>
		public virtual LOGFONT Show()
		{
			return Show(HWND.NULL);
		}

		/// <summary>
		/// Show the dialog with the current options.
		/// TODO: Implement some functionality for presetting the selected font, and remembering fonts in between calls to this function.
		/// </summary>
		/// <returns>A valid <see cref="LOGFONT"/> instance or null on failure.</returns>
		[CanBeNull]
		public virtual LOGFONT Show(HWND hwnd)
		{
			// Wanted to stick chooseFont in a using statement, but apparently you can't
			// do that since it needs to be referenced when used.
			LOGFONT result = null;
			DOPUSCHOOSEFONT chooseFont = new DOPUSCHOOSEFONT(FixedOnly, Title);
			if(DOpusChooseFont(hwnd, ref chooseFont)) {
				result = chooseFont.Font.Clone();
			}
			chooseFont.Dispose();
			return result;
		}

		protected const UInt32 DCHOOSEFONTF_FIXEDONLY = (1<<0);
		
		[StructLayout(LayoutKind.Sequential)]
		protected class DOPUSCHOOSEFONT : IDisposable
		{
			public DOPUSCHOOSEFONT(bool fixedWidth, string title)
			{
				cbSize = Convert.ToUInt32(Marshal.SizeOf(typeof(DOPUSCHOOSEFONT)));
				lpFont = Marshal.AllocHGlobal(Marshal.SizeOf(typeof(LOGFONT)));
				lpszTitle = title;
				dwFlags = fixedWidth ? DCHOOSEFONTF_FIXEDONLY : 0;
			}

			~DOPUSCHOOSEFONT()
			{
				Release();
			}

			public UInt32 cbSize;
			
			public IntPtr lpFont;

			public UInt32 dwFlags;

			[MarshalAs(UnmanagedType.LPTStr)]
			public string lpszTitle;

			public LOGFONT Font
			{
				get
				{
					return (LOGFONT)(lpFont.Equals(IntPtr.Zero) ? null : Marshal.PtrToStructure(lpFont, typeof(LOGFONT)));
				}
			}

			#region Implementation of IDisposable

			/// <summary>
			/// Performs application-defined tasks associated with freeing, releasing, or resetting unmanaged resources.
			/// </summary>
			public void Dispose()
			{
				Release();
				GC.SuppressFinalize(this);
			}

			#endregion

			private void Release()
			{
				if(lpFont == IntPtr.Zero) return;
				Marshal.FreeHGlobal(lpFont);
				lpFont = IntPtr.Zero;
			}
		}

		[SuppressUnmanagedCodeSecurity]
		[DllImport(Consts.DopusExe, EntryPoint = "DOpusChooseFont", CharSet = CharSet.Auto, BestFitMapping = true, ExactSpelling = false)]
		[return: MarshalAs(UnmanagedType.Bool)]
		protected static extern bool DOpusChooseFont(HWND hWnd, [In, Out] ref DOPUSCHOOSEFONT lpChoose);
	}
}