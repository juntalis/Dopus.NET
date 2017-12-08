#include "macros.il"

.assembly extern mscorlib
{
	.publickeytoken = (B7 7A 5C 56 19 34 E0 89 )
	.ver 4:0:0:0
}

.assembly dopus.viewer
{
	.hash algorithm 0x00008004
	.ver 4:0:0:1
}

.module dopus.viewer.dll
.imagebase 0x00400000
.subsystem 0x00000003
.file alignment 512

exports_table(20)

.class public auto ansi beforefieldinit Dopus.Viewer extends [mscorlib]System.Object
{
	.method public hidebysig specialname rtspecialname instance void
		.ctor() cil managed
	{
		.maxstack 1
		ldarg.0
		call		instance void [mscorlib]System.Object::.ctor()
		ret
	}

	.method public hidebysig static BOOL
		DVP_Init() cil managed
	{
		.export_as(DVP_Init)
		.maxstack 2
		ldstr "DVP_Init"
		call void [mscorlib]System.Console::WriteLine(string)
		ldc.i4.0
		ret
	}

	.method public hidebysig static BOOL
		DVP_InitEx(intptr pInitExData) cil managed
	{
		.export_as(DVP_InitEx)
		.maxstack 2
		ldstr "DVP_InitEx"
		call void [mscorlib]System.Console::WriteLine(string)
		ldc.i4.0
		ret
	}

	.method public hidebysig static BOOL
		DVP_USBSafe(intptr pUSBSafeData) cil managed
	{
		.export_as(DVP_USBSafe)
		.maxstack 2
		ldstr "DVP_USBSafe"
		call void [mscorlib]System.Console::WriteLine(string)
		ldc.i4.0
		ret
	}

	.method public hidebysig static void __cdecl
		DVP_Uninit() cil managed
	{
		.export_as(DVP_Uninit)
		.maxstack 2
		ldstr "DVP_Uninit"
		call void [mscorlib]System.Console::WriteLine(string)
		ret
	}

	.method public hidebysig static BOOL
		DVP_Identify (intptr lpVPInfo) cil managed
	{
		.export_as(DVP_Identify)
		.maxstack 2
		ldstr "DVP_Identify"
		call void [mscorlib]System.Console::WriteLine(string)
		ldc.i4.0
		ret
	}

	.method public hidebysig static BOOL
		DVP_IdentifyFile (
			intptr hWnd,
			class [mscorlib]System.Text.StringBuilder marshal(lptstr) lpszName,
			intptr lpVPFileInfo,
			intptr hAbortEvent
		) cil managed
	{
		.export_as(DVP_IdentifyFile)
		.maxstack 2
		ldstr "DVP_IdentifyFile"
		call void [mscorlib]System.Console::WriteLine(string)
		ldc.i4.0
		ret
	}

	.method public hidebysig static BOOL
		DVP_IdentifyFileStream (
			intptr hWnd,
			class [mscorlib]System.Runtime.InteropServices.ComTypes.IStream& lpStream,
			class [mscorlib]System.Text.StringBuilder marshal(lptstr) lpszName,
			intptr lpVPFileInfo,
			uint32 dwStreamFlags
		) cil managed
	{
		.export_as(DVP_IdentifyFileStream)
		.maxstack 2
		ldstr "DVP_IdentifyFileStream"
		call void [mscorlib]System.Console::WriteLine(string)
		ldc.i4.0
		ret
	}

	.method public hidebysig static intptr __cdecl
		DVP_LoadBitmap (
			intptr hWnd,
			class [mscorlib]System.Text.StringBuilder marshal(lptstr) lpszName,
			intptr lpVPFileInfo,
			intptr lpszSize,
			intptr hAbortEvent
		) cil managed
	{
		.export_as(DVP_LoadBitmap)
		.maxstack 2
		ldstr "DVP_LoadBitmap"
		call void [mscorlib]System.Console::WriteLine(string)
		ldsfld native int [mscorlib]System.IntPtr::Zero
		ret
	}

	.method public hidebysig static intptr __cdecl
		DVP_LoadBitmapStream (
			intptr hWnd,
			class [mscorlib]System.Runtime.InteropServices.ComTypes.IStream& lpStream,
			class [mscorlib]System.Text.StringBuilder marshal(lptstr) lpszName,
			intptr lpVPFileInfo,
			intptr lpszSize,
			uint32 dwStreamFlags
		) cil managed
	{
		.export_as(DVP_LoadBitmapStream)
		.maxstack 2
		ldstr "DVP_LoadBitmapStream"
		call void [mscorlib]System.Console::WriteLine(string)
		ldsfld native int [mscorlib]System.IntPtr::Zero
		ret
	}

	.method public hidebysig static BOOL
		DVP_LoadText (
			intptr lpLoadTextData
		) cil managed
	{
		.export_as(DVP_LoadText)
		.maxstack 2
		ldstr "DVP_LoadText"
		call void [mscorlib]System.Console::WriteLine(string)
		ldc.i4.0
		ret
	}

	.method public hidebysig static intptr __cdecl
		DVP_CreateViewer(
			intptr hWndParent,
			intptr lpRc,
			uint32 dwFlags
		) cil managed
	{
		.export_as(DVP_CreateViewer)
		.maxstack 2
		ldstr "DVP_CreateViewer"
		call void [mscorlib]System.Console::WriteLine(string)
		ldsfld native int [mscorlib]System.IntPtr::Zero
		ret
	}

	.method public hidebysig static BOOL
		DVP_GetFileInfoFile (
			intptr hWnd,
			class [mscorlib]System.Text.StringBuilder marshal(lptstr) lpszName,
			intptr lpVPFileInfo,
			intptr lpFIH,
			intptr hAbortEvent
		) cil managed
	{
		.export_as(DVP_GetFileInfoFile)
		.maxstack 2
		ldstr "DVP_GetFileInfoFile"
		call void [mscorlib]System.Console::WriteLine(string)
		ldc.i4.0
		ret
	}

	.method public hidebysig static BOOL
		DVP_GetFileInfoFileStream (
			intptr hWnd,
			class [mscorlib]System.Runtime.InteropServices.ComTypes.IStream& lpStream,
			class [mscorlib]System.Text.StringBuilder marshal(lptstr) lpszName,
			intptr lpVPFileInfo,
			intptr lpFIH,
			uint32 dwStreamFlags
		) cil managed
	{
		.export_as(DVP_GetFileInfoFileStream)
		.maxstack 2
		ldstr "DVP_GetFileInfoFileStream"
		call void [mscorlib]System.Console::WriteLine(string)
		ldc.i4.0
		ret
	}

	.method public hidebysig static intptr __cdecl
		DVP_About(intptr hwndMain) cil managed
	{
		.export_as(DVP_About)
		.maxstack 2
		ldstr "DVP_About"
		call void [mscorlib]System.Console::WriteLine(string)
		ldsfld native int [mscorlib]System.IntPtr::Zero
		ret
	}


}

