using System;

namespace Dopus.Support
{
	public class SupportConstants
	{
		public enum DPCITYPE : uint
		{
			DPCITYPE_Bool,
			DPCITYPE_Int,
			DPCITYPE_DWORD,
			DPCITYPE_LPSTR,
			DPCITYPE_LPWSTR,
			DPCITYPE_Binary,
			DPCITYPE_LOGFONT,
			DPCITYPE_Child,
		}

		public const int DTHUMBF_GRAYSCALE = (1 << 0);
		public const int DTHUMBF_SHOWICON = (1 << 1);
		public const int DTHUMBF_HIDEICON = (1) << (2);
		public const int DTHUMBF_USESHELL = (1) << (3);
		public const int DTHUMBF_HIGHQUALITY = (1) << (4);
		public const int DTHUMBF_FOLDERS = (1) << (5);
		public const int DTHUMBF_FOLDERCONTENTS = (1) << (6);
		public const int DTHUMBF_AUTOROTATE = (1) << (7);

		public const int ERRORACTION_COPY = 1;
		public const int ERRORACTION_MOVE = 2;
		public const int ERRORACTION_DELETE = 3;

		public const int ERRORTYPE_RETRY_SKIP_CANCEL = 1;
		public const int ERRORTYPE_RETRY_CANCEL = 2;
		public const int ERRORTYPE_SKIP_CANCEL = 3;
		public const int ERRORTYPE_OK = 4;
		public const int ERRORTYPE_OK_SKIP_CANCEL = 5;
		public const int ERRORTYPE_SCHEDULE_RETRY_SKIP_CANCEL = 6;

		public const int ERRORRESULT_ABORT = 0;
		public const int ERRORRESULT_RETRY = 1;
		public const int ERRORRESULT_SKIP = 2;
		public const int ERRORRESULT_SKIP_ALL = 3;
		public const int ERRORRESULT_SCHEDULE = 4;
		public const int ERRORRESULT_SCHEDULE_ALL = 5;
		public const int ERRORRESULT_OK = 6;

		public const int CHECKINPUT_REJECT = 0;
		public const int CHECKINPUT_ACCEPT = 1;
		public const int CHECKINPUT_ASK = 2;

		public static IntPtr HICON_WARNING = new IntPtr(-1);
		public static IntPtr HICON_ERROR = new IntPtr(-2);
		public static IntPtr HICON_INFO = new IntPtr(-3);

		public const int NEWNAME_ABORT = 0;
		public const int NEWNAME_SKIP = 1;
		public const int NEWNAME_SIMPLE = 2;
		public const int NEWNAME_WILD = 3;

		public const int REPLACEDLGF_RESUME = (1) << (0);
		public const int REPLACEDLGF_NODESTINFO = (1) << (1);
		public const int REPLACEDLGF_READONLY = (1) << (2);
		public const int REPLACEDLGF_NOTHUMBS = (1) << (3);
		public const int REPLACEDLGF_NOIDENTICAL = (1) << (4);
		public const int REPLACERES_ABORT = 0;
		public const int REPLACERES_REPLACE = 1;
		public const int REPLACERES_REPLACEALL = 2;
		public const int REPLACERES_SKIP = 3;
		public const int REPLACERES_SKIPALL = 4;
		public const int REPLACERES_SKIPIDENTICAL = 5;
		public const int REPLACERES_RESUME = 6;
		public const int REPLACERES_RESUMEALL = 7;
		public const int REPLACERES_RENAME = 8;

		public const int DELETERES_ABORT = 0;
		public const int DELETERES_DELETE = 1;
		public const int DELETERES_DELETEALL = 2;
		public const int DELETERES_SKIP = 3;

		public const int OPUSFILECHANGE_CREATE = 1;
		public const int OPUSFILECHANGE_DELETE = 2;
		public const int OPUSFILECHANGE_CHANGE = 3;
		public const int OPUSFILECHANGE_MAKEDIR = 4;
		public const int OPUSFILECHANGE_REMDIR = 5;
		public const int OPUSFILECHANGE_REFRESH = 6;

		public const int PROGRESSACTION_STATUSTEXTA = 1;
		public const int PROGRESSACTION_STATUSTEXTW = 2;
		public const int PROGRESSACTION_NEXTFILEA = 3;
		public const int PROGRESSACTION_NEXTFILEW = 4;
		public const int PROGRESSACTION_SETFILENAMEA = 5;
		public const int PROGRESSACTION_SETFILENAMEW = 6;
		public const int PROGRESSACTION_SETFILESIZE = 7;
		public const int PROGRESSACTION_SETFILESIZE64 = 8;
		public const int PROGRESSACTION_STEPBYTES = 9;
		public const int PROGRESSACTION_SETBYTES = 10;
		public const int PROGRESSACTION_SETBYTES64 = 11;
		public const int PROGRESSACTION_SKIPFILE = 12;
		public const int PROGRESSACTION_PERCENTMODE = 13;
		public const int PROGRESSACTION_SETPERCENT = 14;
		public const int PROGRESSACTION_NOPROGRESS = 15;

		public const int NOPROGRESSF_BATCHCOPY = (1) << (0);
		public const int NOPROGRESSF_BATCHDELETE = (1) << (1);
		public const int NOPROGRESSF_NOABORT = (1) << (2);

		public const int OPUSREG_ELEVATIONCANCELLED = 0;
		public const int OPUSREG_ELEVATED = 1;
		public const int OPUSREG_ELEVATIONNOTNEEDED = 2;

	}

}