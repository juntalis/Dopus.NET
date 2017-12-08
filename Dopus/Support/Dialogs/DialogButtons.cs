using System;

namespace Dopus.Support.Dialogs
{
	public enum DialogButtons : int
	{
		/// <summary>Ok</summary>
		OK = 1,
		/// <summary>Ok|Cancel</summary>
		OKCANCEL,
		/// <summary>Retry|Skip</summary>
		RETRYSKIP,
		/// <summary>Ignore|Cancel</summary>
		IGNORECANCEL,
		/// <summary>Retry|Skip|Skip All|Abort	</summary>
		RETRYSKIPABORT,
		/// <summary>Schedule|Schedule All|Retry|Skip|Skip All|Abort</summary>
		SCHEDULERETRYSKIPABORT,
		/// <summary>Replace|Replace All|Skip|Skip All|Abort</summary>
		REPLACESKIPABORT,
		/// <summary>Unprotect|Unprotect All|Skip|Skip All|Abort</summary>
		UNPROTECTSKIPABORT,
		/// <summary>Delete|Delete All|Skip|Abort</summary>
		DELETESKIPABORT,
		/// <summary>Retry|Abort</summary>
		RETRYABORT,
		/// <summary>Replace|Replace All|Skip|Skip All|Rename|Abort</summary>
		REPLACESKIPRENAMEABORT,
		/// <summary>Delete|Cancel</summary>
		DELETECANCEL,
		/// <summary>Skip|Skip All|Abort</summary>
		SKIPABORT,
		/// <summary>Yes|No</summary>
		YESNO,
		/// <summary>Replace|Cancel</summary>
		REPLACECANCEL,
		/// <summary>OK|Skip|Abort</summary>
		OKSKIPABORT,

		/// <summary>Yes|Yes To All|Skip|Cancel</summary>
		YESSKIPCANCEL,

		/// <summary>Retry|Cancel</summary>
		RETRYCANCEL,

		/// <summary>Yes|No|Cancel</summary>
		YESNOCANCEL,

		/// <summary>Rename|Replace|Skip|Abort</summary>
		RENAMEREPLACESKIPABORT,

		/// <summary>Replace|Rename|Cancel</summary>
		REPLACERENAMECANCEL,
	}
}