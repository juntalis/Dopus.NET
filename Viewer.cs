
[StructLayout(LayoutKind.Sequential, CharSet = CharSet.Auto)]
public struct DOpusViewerPluginInfo
{
	public UINT cbSize;
	public DWORD dwFlags;
	public DWORD dwVersionHigh;
	public DWORD dwVersionLow;
	[MarshalAs(UnmanagedType.LPTStr)]
	public string lpszHandleExts;
	[MarshalAs(UnmanagedType.LPTStr)]
	public string lpszName;
	[MarshalAs(UnmanagedType.LPTStr)]
	public string lpszDescription;
	[MarshalAs(UnmanagedType.LPTStr)]
	public string lpszCopyright;
	[MarshalAs(UnmanagedType.LPTStr)]
	public string lpszURL;
	public UINT cchHandleExtsMax;
	public UINT cchNameMax;
	public UINT cchDescriptionMax;
	public UINT cchCopyrightMax;
	public UINT cchURLMax;
	public DWORDLONG dwlMinFileSize;
	public DWORDLONG dwlMaxFileSize;
	public DWORDLONG dwlMinPreviewFileSize;
	public DWORDLONG dwlMaxPreviewFileSize;
	public UINT uiMajorFileType;
	public Guid idPlugin;
	public DWORD dwOpusVerMajor;
	public DWORD dwOpusVerMinor;
	public DWORD dwInitFlags;
	public HICON hIconSmall;
	public HICON hIconLarge;
}

[StructLayout(LayoutKind.Sequential, CharSet = CharSet.Auto)]
public struct DOpusViewerPluginFileInfo
{
	public UINT cbSize;
	public DWORD dwFlags;
	public WORD wMajorType;
	public WORD wMinorType;
	public SIZE szImageSize;
	public int iNumBits;
	[MarshalAs(UnmanagedType.LPTStr)]
	public string lpszInfo;
	public UINT cchInfoMax;
	[MarshalAs(UnmanagedType.ByValArray, SizeConst = 8, ArraySubType = UnmanagedType.U4)]
	public DWORD[] dwPrivateData;
	public SIZE szResolution;
	public int iTypeHint;
	public COLORREF crTransparentColor;
	public WORD wThumbnailQuality;
	public DWORDLONG dwlFileSize;
	public int iColorSpace;
}

[StructLayout(LayoutKind.Sequential)]
public struct DVPNMSIZECHANGE
{
	public NMHDR hdr;
	public SIZE szSize;
}

[StructLayout(LayoutKind.Sequential)]
public struct DVPNMCLICK
{
	public NMHDR hdr;
	public POINT pt;
	[MarshalAs(UnmanagedType.Bool)]
	public bool fMenu;
}

[StructLayout(LayoutKind.Sequential)]
public struct DVPNMRESETZOOM
{
	public NMHDR hdr;
	public int iZoom;
}

[StructLayout(LayoutKind.Sequential)]
public struct DVPNMFOCUSCHANGE
{
	public NMHDR hdr;
	[MarshalAs(UnmanagedType.Bool)]
	public bool fGotFocus;
}

[StructLayout(LayoutKind.Sequential)]
public struct DVPNMCAPABILITIES
{
	public NMHDR hdr;
	public DWORD dwCapabilities;
}

[StructLayout(LayoutKind.Sequential, CharSet = CharSet.Auto)]
public struct DVPNMSTATUSTEXT
{
	public NMHDR hdr;
	[MarshalAs(UnmanagedType.LPTStr)]
	public string lpszStatusText;
	[MarshalAs(UnmanagedType.Bool)]
	public bool fUnicode;
}

[StructLayout(LayoutKind.Sequential, CharSet = CharSet.Auto)]
public struct DVPNMLOADNEWFILE
{
	public NMHDR hdr;
	[MarshalAs(UnmanagedType.LPTStr)]
	public string lpszFilename;
	[MarshalAs(UnmanagedType.Bool)]
	public bool fUnicode;
	public LPSTREAM lpStream;
}

[StructLayout(LayoutKind.Sequential)]
public struct DVPNMSETCURSOR
{
	public NMHDR hdr;
	public POINT pt;
	[MarshalAs(UnmanagedType.Bool)]
	public bool fMenu;
	[MarshalAs(UnmanagedType.Bool)]
	public bool fCanScroll;
	public int iCursor;
}

[StructLayout(LayoutKind.Sequential)]
public struct DVPNMGAMMA
{
	public NMHDR hdr;
	[MarshalAs(UnmanagedType.Bool)]
	public int fEnable;
	public double dbGamma;
}

[StructLayout(LayoutKind.Sequential)]
public struct DVPNMBUTTONOPTS
{
	public NMHDR hdr;
	public int iLeft;
	public int iRight;
	public int iMiddle;
}

[StructLayout(LayoutKind.Sequential)]
public struct DVPNMGETCURSORS
{
	public NMHDR hdr;
	public HCURSOR hCurHandOpen;
	public HCURSOR hCurHandClosed;
	public HCURSOR hCurCrosshair;
}

[StructLayout(LayoutKind.Sequential)]
public struct DVPNMMOUSEWHEEL
{
	public NMHDR hdr;
	public WPARAM wParam;
	public LPARAM lParam;
}

[StructLayout(LayoutKind.Sequential)]
public struct DVPNMHEXSTATE
{
	public NMHDR hdr;
	[MarshalAs(UnmanagedType.Bool)]
	public bool fState;
}

[StructLayout(LayoutKind.Sequential, CharSet = CharSet.Auto)]
public struct DVPContextMenuItem
{
	[MarshalAs(UnmanagedType.LPTStr)]
	public string lpszLabel;
	public DWORD dwFlags;
	public UINT uID;
}

[StructLayout(LayoutKind.Sequential)]
public struct OpusUSBSafeData
{
	public UINT cbSize;
	[MarshalAs(UnmanagedType.LPWStr)]
	public string pszOtherExports;
	public UINT cchOtherExports;
}

[StructLayout(LayoutKind.Sequential, CharSet = CharSet.Auto)]
public struct DVPLoadTextData
{
	public UINT cbSize;
	public DWORD dwFlags;
	public HWND hWndParent;
	[MarshalAs(UnmanagedType.LPTStr)]
	public string lpszFile;
	public LPSTREAM lpInStream;
	public DWORD dwStreamFlags;
	public LPSTREAM lpOutStream;
	public int iOutTextType;
	[MarshalAs(UnmanagedType.ByValTStr, SizeConst = 40)]
	public string tchPreferredViewer;
	public IntPtr hAbortEvent;
}

[StructLayout(LayoutKind.Sequential)]
public struct DVPFileInfoHeader
{
	public UINT cbSize;
	public UINT uiMajorType;
	public DWORD dwFlags;
}

[StructLayout(LayoutKind.Sequential, CharSet = CharSet.Auto)]
public struct DVPFileInfoMusic
{
	public DVPFileInfoHeader hdr;
	[MarshalAs(UnmanagedType.LPTStr)]
	public string lpszAlbum;
	public UINT cchAlbumMax;
	[MarshalAs(UnmanagedType.LPTStr)]
	public string lpszArtist;
	public UINT cchArtistMax;
	[MarshalAs(UnmanagedType.LPTStr)]
	public string lpszTitle;
	public UINT cchTitleMax;
	[MarshalAs(UnmanagedType.LPTStr)]
	public string lpszGenre;
	public UINT cchGenreMax;
	[MarshalAs(UnmanagedType.LPTStr)]
	public string lpszComment;
	public UINT cchCommentMax;
	[MarshalAs(UnmanagedType.LPTStr)]
	public string lpszFormat;
	public UINT cchFormatMax;
	[MarshalAs(UnmanagedType.LPTStr)]
	public string lpszEncoder;
	public UINT cchEncoderMax;
	public DWORD dwBitRate;
	public DWORD dwSampleRate;
	public DWORD dwDuration;
	public int iTrackNum;
	public int iYear;
	public int iNumChannels;
	public DWORD dwMusicFlags;
	[MarshalAs(UnmanagedType.LPTStr)]
	public string lpszCodec;
	public UINT cchCodecMax;
}

[StructLayout(LayoutKind.Sequential, CharSet = CharSet.Auto)]
public struct DVPFileInfoMovie
{
	public DVPFileInfoHeader hdr;
	public SIZE szVideoSize;
	public int iNumBits;
	public DWORD dwDuration;
	public DWORD dwFrames;
	public double flFrameRate;
	public DWORD dwDataRate;
	public POINT ptAspectRatio;
	public DWORD dwAudioBitRate;
	public DWORD dwAudioSampleRate;
	public int iNumChannels;
	[MarshalAs(UnmanagedType.LPTStr)]
	public string lpszVideoCodec;
	public UINT cchVideoCodecMax;
	[MarshalAs(UnmanagedType.LPTStr)]
	public string lpszAudioCodec;
	public UINT cchAudioCodecMax;
}

[StructLayout(LayoutKind.Sequential)]
public struct DVPInitExData
{
	public UINT cbSize;
	public HWND hwndDOpusMsgWindow;
	public DWORD dwOpusVerMajor;
	public DWORD dwOpusVerMinor;
	[MarshalAs(UnmanagedType.LPWStr)]
	public string pszLanguageName;
}

public delegate int PFNDVPINIT();
public delegate int PFNDVPINITEX(ref DVPInitExData pInitExData);
public delegate int PFNDVPUSBSAFE(ref OpusUSBSafeData pUSBSafeData);
public delegate void PFNDVPUNINIT();
internal delegate int PFNDVPIDENTIFY(ref DOpusViewerPluginInfo lpVPInfo);
public delegate int PFNDVPIDENTIFYFILEA(IntPtr hWnd, [MarshalAs(UnmanagedType.LPWStr)] System.Text.StringBuilder lpszName, ref DOpusViewerPluginFileInfo lpVPFileInfo, IntPtr hAbortEvent);
public delegate int PFNDVPIDENTIFYFILESTREAM(IntPtr hWnd, ref IStream lpStream, [MarshalAs(UnmanagedType.LPWStr)] System.Text.StringBuilder lpszName, ref DOpusViewerPluginFileInfo lpVPFileInfo, uint dwStreamFlags);
public delegate int PFNDVPIDENTIFYFILEBYTES(IntPtr hWnd, [MarshalAs(UnmanagedType.LPWStr)] System.Text.StringBuilder lpszName, ref byte lpData, uint uiDataSize, ref DOpusViewerPluginFileInfo lpVPFileInfo, uint dwStreamFlags);
public delegate IntPtr PFNDVPLOADBITMAP(IntPtr hWnd, [MarshalAs(UnmanagedType.LPWStr)] System.Text.StringBuilder lpszName, ref DOpusViewerPluginFileInfo lpVPFileInfo, ref SIZE lpszDesiredSize, IntPtr hAbortEvent);
public delegate IntPtr PFNDVPLOADBITMAPSTREAM(IntPtr hWnd, ref IStream lpStream, [MarshalAs(UnmanagedType.LPWStr)] System.Text.StringBuilder lpszName, ref DOpusViewerPluginFileInfo lpVPFileInfo, ref SIZE lpszDesiredSize, uint dwStreamFlags);
public delegate int PFNDVPLOADTEXT(ref DVPLoadTextData lpLoadTextData);
public delegate IntPtr PFNDVPSHOWPROPERTIES(IntPtr hWndParent, [MarshalAs(UnmanagedType.LPWStr)] System.Text.StringBuilder lpszName, ref DOpusViewerPluginFileInfo lpVPFileInfo);
public delegate IntPtr PFNDVPSHOWPROPERTIESSTREAM(IntPtr hWndParent, ref IStream lpStream, [MarshalAs(UnmanagedType.LPWStr)] System.Text.StringBuilder lpszName, ref DOpusViewerPluginFileInfo lpVPFileInfo, uint dwStreamFlags);
public delegate IntPtr PFNDVPCREATEVIEWER(IntPtr hWndParent, ref RECT lpRc, uint dwFlags);
public delegate IntPtr PFNDVPCONFIGURE(IntPtr hWndParent, IntPtr hWndNotify, uint dwNotifyData);
public delegate IntPtr PFNDVPABOUT(IntPtr hWndParent);
public delegate int PFNDVPGETFILEINFOFILE(IntPtr hWnd, [MarshalAs(UnmanagedType.LPWStr)] System.Text.StringBuilder lpszName, ref DOpusViewerPluginFileInfo lpVPFileInfo, ref DVPFileInfoHeader lpFIH, IntPtr hAbortEvent);
public delegate int PFNDVPGETFILEINFOFILESTREAM(IntPtr hWnd, ref IStream lpStream, [MarshalAs(UnmanagedType.LPWStr)] System.Text.StringBuilder lpszName, ref DOpusViewerPluginFileInfo lpVPFileInfo, ref DVPFileInfoHeader lpFIH, uint dwStreamFlags);
