/** Plugin Initialization */
BOOL DVP_Init(void);

/** Plugin Initialization with added info */
BOOL DVP_InitEx(LPDVPINITEXDATA pInitExData);

/** Plugin Cleanup */
void DVP_Uninit(void);

/** Exported if this plugin is USB-safe */
BOOL DVP_USBSafe (LPOPUSUSBSAFEDATA pUSBSafeData);

/** Identify the viewer plugin to DOpus */
BOOL DVP_Identify(LPVIEWERPLUGININFO lpVPInfo);

/** Identify a local disk-based file */
BOOL DVP_IdentifyFile(HWND hWnd, LPTSTR lpszName, LPVIEWERPLUGINFILEINFO lpVPFileInfo, HANDLE hAbortEvent);

/** Identify a stream-based file */
BOOL DVP_IdentifyFileStream(HWND hWnd, LPTSTREAM lpStream, LPTSTR lpszName, LPVIEWERPLUGINFILEINFO lpVPFileInfo, DWORD dwStreamFlags);

/** Create a bitmap from a disk-based file */
HBITMAP DVP_LoadBitmap(HWND hWnd, LPTSTR lpszName, LPVIEWERPLUGINFILEINFO lpVPFileInfo, LPSIZE lpszSize, HANDLE hAbortEvent);

/** Create a bitmap from a stream-based file */
HBITMAP DVP_LoadBitmapStream(HWND hWnd, LPTSTREAM lpStream, LPTSTR lpszName, LPVIEWERPLUGINFILEINFO lpVPFileInfo, LPSIZE lpszSize, DWORD dwStreamFlags);

/** Load a file as plaintext */
BOOL DVP_LoadText(LPDVPLOADTEXTDATA lpLoadTextData);

/** Create a custom window to totally handle the viewing of a particular file. */
HWND DVP_CreateViewer(HWND hWndParent, LPRECT lpRc, DWORD dwFlags);

/** A viewer plugin is able to return file information to Directory Opus for display in the Lister information fields and tooltips. */
BOOL DVP_GetFileInfoFile(HWND hWnd, LPTSTR lpszName, LPVIEWERPLUGINFILEINFO lpVPFileInfo, LPDVPFILEINFOHEADER lpFIH, HANDLE hAbortEvent);

/** Same, but with filestream. */
BOOL DVP_GetFileInfoFileStream(HWND hWnd, LPTSTR lpStream, LPTSTR lpszName, LPVIEWERPLUGINFILEINFO lpVPFileInfo, LPDVPFILEINFOHEADER lpFIH, DWORD dwStreamFlags);

/** The Properties functions (DVP_ShowProperties for disk-based files and DVP_ShowPropertiesStream for virtual files) are called by Directory Opus if you have  specified the DVPFIF_CanShowProperties flag for a file and the user selects the Properties function from the viewer context menu. */
HWND DVP_ShowProperties(HWND hWndParent, LPTSTR lpszName, LPVIEWERPLUGINFILEINFO lpVPFileInfo);

/** Same, but with stream. */
HWND DVP_ShowPropertiesStream(HWND hWndParent, LPTSTREAM lpStream, LPTSTR lpszName, LPVIEWERPLUGINFILEINFO lpVPFileInfo, DWORD dwStreamFlags);

/** Configuration Dialog */
HWND DVP_Configure(HWND hWndParent, HWND hWndNotify, DWORD dwNotifyData);

/** About Dialog */
HWND DVP_About(HWND hWndParent);

BOOL DVP_SetMetaData(LPCWSTR lpString, void*);

