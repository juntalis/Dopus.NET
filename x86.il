.class public auto ansi abstract sealed beforefieldinit DopViewer.Viewer
	extends [mscorlib]System.Object
{
	.field private static valuetype DopViewer.Interop.HWND hwndDopusOutputWindow

	.method public hidebysig static native int modopt([mscorlib]System.Runtime.CompilerServices.CallConvCdecl)  DVP_About (
			valuetype DopViewer.Interop.HWND hWndParent
		) cil managed 
	{
		IL_0000: ldsfld native int [mscorlib]System.IntPtr::Zero
		IL_0005: ret
	}

	.method public hidebysig static native int modopt([mscorlib]System.Runtime.CompilerServices.CallConvCdecl)  DVP_Configure (
			valuetype DopViewer.Interop.HWND hWndParent,
			valuetype DopViewer.Interop.HWND hWndNotify,
			uint32 dwNotifyData
		) cil managed 
	{
		IL_0000: ldsfld native int [mscorlib]System.IntPtr::Zero
		IL_0005: ret
	}

	.method public hidebysig static native int modopt([mscorlib]System.Runtime.CompilerServices.CallConvCdecl)  DVP_CreateViewer (
			valuetype DopViewer.Interop.HWND hWndParent,
			valuetype DopViewer.Interop.RECT& lpRc,
			uint32 dwFlags
		) cil managed 
	{
		IL_0000: ldsfld native int [mscorlib]System.IntPtr::Zero
		IL_0005: ret
	}

	.method public hidebysig static bool modopt([mscorlib]System.Runtime.CompilerServices.CallConvCdecl)  marshal(bool( DVP_GetFileInfoFile (
			valuetype DopViewer.Interop.HWND hWnd,
			class [mscorlib]System.Text.StringBuilder marshal(lpwstr( lpszName,
			valuetype DOpusViewerPluginFileInfo& lpVPFileInfo,
			valuetype DVPFileInfoHeader& lpFIH,
			class DopViewer.Interop.ValidHandle hAbortEvent
		) cil managed 
	{
		IL_0000: ldc.i4.0
		IL_0001: ret
	}

	.method public hidebysig static bool modopt([mscorlib]System.Runtime.CompilerServices.CallConvCdecl)  marshal(bool( DVP_GetFileInfoFileStream (
			valuetype DopViewer.Interop.HWND hWnd,
			class [mscorlib]System.Text.StringBuilder marshal(lpwstr( lpStream,
			class [mscorlib]System.Text.StringBuilder marshal(lpwstr( lpszName,
			valuetype DOpusViewerPluginFileInfo& lpVPFileInfo,
			valuetype DVPFileInfoHeader& lpFIH,
			uint32 dwStreamFlags
		) cil managed 
	{
		IL_0000: ldc.i4.0
		IL_0001: ret
	}

	.method public hidebysig static bool modopt([mscorlib]System.Runtime.CompilerServices.CallConvCdecl)  marshal(bool( DVP_Identify (
			valuetype DOpusViewerPluginInfo& lpVPInfo
		) cil managed 
	{
		IL_0000: ldc.i4.0
		IL_0001: ret
	}

	.method public hidebysig static bool modopt([mscorlib]System.Runtime.CompilerServices.CallConvCdecl)  marshal(bool( DVP_IdentifyFile (
			valuetype DopViewer.Interop.HWND hWnd,
			class [mscorlib]System.Text.StringBuilder marshal(lpwstr( lpszName,
			valuetype DOpusViewerPluginFileInfo& lpVPFileInfo,
			class DopViewer.Interop.ValidHandle hAbortEvent
		) cil managed 
	{
		IL_0000: ldc.i4.0
		IL_0001: ret
	}

	.method public hidebysig static bool modopt([mscorlib]System.Runtime.CompilerServices.CallConvCdecl)  marshal(bool( DVP_IdentifyFileStream (
			valuetype DopViewer.Interop.HWND hWnd,
			class [mscorlib]System.Runtime.InteropServices.ComTypes.IStream& lpStream,
			class [mscorlib]System.Text.StringBuilder marshal(lpwstr( lpszName,
			valuetype DOpusViewerPluginFileInfo& lpVPFileInfo,
			uint32 dwStreamFlags
		) cil managed 
	{
		IL_0000: ldc.i4.0
		IL_0001: ret
	}

	.method public hidebysig static bool modopt([mscorlib]System.Runtime.CompilerServices.CallConvCdecl)  marshal(bool( DVP_InitEx (
			valuetype DVPInitExData& pInitExData
		) cil managed 
	{
		IL_0000: ldarg.0
		IL_0001: ldfld valuetype DopViewer.Interop.HWND DVPInitExData::hwndDOpusMsgWindow
		IL_0006: stsfld valuetype DopViewer.Interop.HWND DopViewer.Viewer::hwndDopusOutputWindow
		IL_000b: ldc.i4.1
		IL_000c: ret
	}

	.method public hidebysig static native int modopt([mscorlib]System.Runtime.CompilerServices.CallConvCdecl)  DVP_LoadBitmap (
			valuetype DopViewer.Interop.HWND hWnd,
			class [mscorlib]System.Text.StringBuilder marshal(lpwstr( lpszName,
			valuetype DOpusViewerPluginFileInfo& lpVPFileInfo,
			valuetype DopViewer.Interop.SIZE& lpszSize,
			class DopViewer.Interop.ValidHandle hAbortEvent
		) cil managed 
	{
		IL_0000: ldsfld native int [mscorlib]System.IntPtr::Zero
		IL_0005: ret
	}

	.method public hidebysig static native int modopt([mscorlib]System.Runtime.CompilerServices.CallConvCdecl)
		DVP_LoadBitmapStream(
			valuetype DopViewer.Interop.HWND hWnd,
			class [mscorlib]System.Runtime.InteropServices.ComTypes.IStream& lpStream,
			class [mscorlib]System.Text.StringBuilder marshal(lpwstr( lpszName,
			valuetype DOpusViewerPluginFileInfo& lpVPFileInfo,
			valuetype DopViewer.Interop.SIZE& lpszSize,
			uint32 dwStreamFlags
		) cil managed 
	{
		IL_0000: ldsfld native int [mscorlib]System.IntPtr::Zero
		IL_0005: ret
	}

	.method public hidebysig static bool modopt([mscorlib]System.Runtime.CompilerServices.CallConvCdecl)  marshal(bool( DVP_LoadText (
			valuetype DVPLoadTextData& lpLoadTextData
		) cil managed 
	{
		IL_0000: ldc.i4.0
		IL_0001: ret
	}

	.method public hidebysig static bool modopt([mscorlib]System.Runtime.CompilerServices.CallConvCdecl)  marshal(bool( DVP_SetMetaData (
			[in] string marshal(lpwstr( lpString,
			native int param1
		) cil managed 
	{
		IL_0000: ldc.i4.0
		IL_0001: ret
	}

	.method public hidebysig static native int modopt([mscorlib]System.Runtime.CompilerServices.CallConvCdecl)  DVP_ShowProperties (
			valuetype DopViewer.Interop.HWND hWndParent,
			class [mscorlib]System.Text.StringBuilder marshal(lpwstr( lpszName,
			valuetype DOpusViewerPluginFileInfo& lpVPFileInfo
		) cil managed 
	{
		IL_0000: ldsfld native int [mscorlib]System.IntPtr::Zero
		IL_0005: ret
	}

	.method public hidebysig static native int modopt([mscorlib]System.Runtime.CompilerServices.CallConvCdecl)  DVP_ShowPropertiesStream (
			valuetype DopViewer.Interop.HWND hWndParent,
			class [mscorlib]System.Runtime.InteropServices.ComTypes.IStream& lpStream,
			class [mscorlib]System.Text.StringBuilder marshal(lpwstr( lpszName,
			valuetype DOpusViewerPluginFileInfo& lpVPFileInfo,
			uint32 dwStreamFlags
		) cil managed 
	{
		IL_0000: ldsfld native int [mscorlib]System.IntPtr::Zero
		IL_0005: ret
	}

	.method public hidebysig static void modopt([mscorlib]System.Runtime.CompilerServices.CallConvCdecl)  DVP_Uninit () cil managed 
	{
		IL_0000: ret
	}

	.method public hidebysig static bool modopt([mscorlib]System.Runtime.CompilerServices.CallConvCdecl)  marshal(bool( DVP_USBSafe (
			valuetype OpusUSBSafeData& pUSBSafeData
		) cil managed 
	{
		IL_0000: ldc.i4.1
		IL_0001: ret
	}
}
