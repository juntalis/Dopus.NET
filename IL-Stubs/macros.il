#ifdef X64
#defeval arch_int int64
#else
#defeval arch_int int32
#endif

#define __COUNTER__ 0
#define _asis(X) X
#define _doinc(VAR) #eval VAR+1
#define _paste #1#2
#define autoinc() #defeval __COUNTER__ _doinc(__COUNTER__)
#define reset() #defeval __COUNTER__ 0

#define _dllexp_vtbl(INDEX) .vtfixup [1] arch_int fromunmanaged at _paste(EXPORT_,INDEX)
#define _dllexp_data(INDEX) .data _paste(EXPORT_,INDEX) = arch_int(0)

#define dllexp_vtbl_i 0
#define dllexp_data_i 0

#mode push
#mode string QQQ "$" "$"

#define dllexp_vtbl(END) $#defeval dllexp_vtbl_i _doinc(dllexp_vtbl_i)$$_dllexp_vtbl(dllexp_vtbl_i)$ \
$#if dllexp_vtbl_i<END$$#define ITER dllexp_vtbl$$#else$ \
$#define ITER reset$$#endif
$ITER(END)

#define dllexp_data(END) $#defeval dllexp_data_i _doinc(dllexp_data_i)$$_dllexp_data(dllexp_data_i)$ \
$#if dllexp_data_i<END$$#define ITER dllexp_data$$#else$ \
$#define ITER reset$$#endif
$ITER(END)

#define export_as(FUNC) $autoinc()$$vtentry __COUNTER__:1$ \
$		.export [__COUNTER__] as FUNC$

#mode pop

#define exports_table(COUNT) dllexp_vtbl(COUNT)dllexp_data(COUNT)

#defeval __cdecl modopt([mscorlib]System.Runtime.CompilerServices.CallConvCdecl)
#defeval intptr native int
#defeval BOOL bool __cdecl marshal( bool) 

#ifdef UNICODE
#defval lptstr lpwstr
#defval DVP_Identify DVP_IdentifyW
#defval DVP_IdentifyFile DVP_IdentifyFileW
#defval DVP_IdentifyFileStream DVP_IdentifyFileStreamW
#defval DVP_IdentifyFileBytes DVP_IdentifyFileBytesW
#defval DVP_LoadBitmap DVP_LoadBitmapW
#defval DVP_LoadBitmapStream DVP_LoadBitmapStreamW
#defval DVP_LoadText DVP_LoadTextW
#defval DVP_ShowProperties DVP_ShowPropertiesW
#defval DVP_ShowPropertiesStream DVP_ShowPropertiesStreamW
#defval DVP_GetFileInfoFile DVP_GetFileInfoFileW
#defval DVP_GetFileInfoFileStream DVP_GetFileInfoFileStreamW
#else
#defval lptstr lpstr
#defval DVP_Identify DVP_IdentifyA
#defval DVP_IdentifyFile DVP_IdentifyFileA
#defval DVP_IdentifyFileStream DVP_IdentifyFileStreamA
#defval DVP_IdentifyFileBytes DVP_IdentifyFileBytesA
#defval DVP_LoadBitmap DVP_LoadBitmapA
#defval DVP_LoadBitmapStream DVP_LoadBitmapStreamA
#defval DVP_LoadText DVP_LoadTextA
#defval DVP_ShowProperties DVP_ShowPropertiesA
#defval DVP_ShowPropertiesStream DVP_ShowPropertiesStreamA
#defval DVP_GetFileInfoFile DVP_GetFileInfoFileA
#defval DVP_GetFileInfoFileStream DVP_GetFileInfoFileStreamA
#endif
