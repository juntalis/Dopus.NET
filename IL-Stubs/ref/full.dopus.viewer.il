



.assembly extern mscorlib
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 4:0:0:0
}
.assembly extern Dopus.NET
{
  .ver 1:0:0:0
}
.assembly extern System.Drawing
{
  .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A )                         // .?_....:
  .ver 4:0:0:0
}
.assembly extern System
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 4:0:0:0
}
.assembly dopviewer.net
{
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilationRelaxationsAttribute::.ctor(int32) = ( 01 00 08 00 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.CompilerServices.RuntimeCompatibilityAttribute::.ctor() = ( 01 00 01 00 54 02 16 57 72 61 70 4E 6F 6E 45 78   // ....T..WrapNonEx
                                                                                                             63 65 70 74 69 6F 6E 54 68 72 6F 77 73 01 )       // ceptionThrows.
  .custom instance void [mscorlib]System.Runtime.Versioning.TargetFrameworkAttribute::.ctor(string) = ( 01 00 1A 2E 4E 45 54 46 72 61 6D 65 77 6F 72 6B   // ....NETFramework
                                                                                                        2C 56 65 72 73 69 6F 6E 3D 76 34 2E 30 01 00 54   // ,Version=v4.0..T
                                                                                                        0E 14 46 72 61 6D 65 77 6F 72 6B 44 69 73 70 6C   // ..FrameworkDispl
                                                                                                        61 79 4E 61 6D 65 10 2E 4E 45 54 20 46 72 61 6D   // ayName..NET Fram
                                                                                                        65 77 6F 72 6B 20 34 )                            // ework 4
  .custom instance void [mscorlib]System.Reflection.AssemblyTitleAttribute::.ctor(string) = ( 01 00 0F 44 6F 70 75 73 56 69 65 77 65 72 2E 4E   // ...DopusViewer.N
                                                                                              45 54 00 00 )                                     // ET..
  .custom instance void [mscorlib]System.Reflection.AssemblyDescriptionAttribute::.ctor(string) = ( 01 00 1C 44 6F 70 75 73 2E 4E 45 54 20 54 65 73   // ...Dopus.NET Tes
                                                                                                    74 20 56 69 65 77 65 72 20 50 6C 75 67 69 6E 00   // t Viewer Plugin.
                                                                                                    00 ) 
  .custom instance void [mscorlib]System.Reflection.AssemblyConfigurationAttribute::.ctor(string) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Reflection.AssemblyCompanyAttribute::.ctor(string) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Reflection.AssemblyProductAttribute::.ctor(string) = ( 01 00 0F 44 6F 70 75 73 56 69 65 77 65 72 2E 4E   // ...DopusViewer.N
                                                                                                45 54 00 00 )                                     // ET..
  .custom instance void [mscorlib]System.Reflection.AssemblyCopyrightAttribute::.ctor(string) = ( 01 00 12 43 6F 70 79 72 69 67 68 74 20 C2 A9 20   // ...Copyright .. 
                                                                                                  20 32 30 31 33 00 00 )                            //  2013..
  .custom instance void [mscorlib]System.Reflection.AssemblyTrademarkAttribute::.ctor(string) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.InteropServices.ComVisibleAttribute::.ctor(bool) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 38 61 63 63 39 64 66 30 2D 63 39 64 34   // ..$8acc9df0-c9d4
                                                                                                  2D 34 64 30 38 2D 61 34 65 66 2D 61 33 39 31 64   // -4d08-a4ef-a391d
                                                                                                  35 30 62 62 63 66 64 00 00 )                      // 50bbcfd..
  .custom instance void [mscorlib]System.Reflection.AssemblyFileVersionAttribute::.ctor(string) = ( 01 00 07 31 2E 30 2E 30 2E 30 00 00 )             // ...1.0.0.0..
  .hash algorithm 0x00008004
  .ver 1:0:0:0
}
.mresource public Dopus.Viewer.Properties.Resources.resources
{
  // Offset: 0x00000000 Length: 0x00002D98
  // WARNING: managed resource file Dopus.Viewer.Properties.Resources.resources created
}
.module dopviewer.net.dll
.imagebase 0x10000000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000003    //  ILONLY 32BITREQUIRED



.class private abstract auto ansi sealed beforefieldinit Dopus.Viewer.Config.Build.Props
       extends [mscorlib]System.Object
{
  .field private static class [mscorlib]System.Reflection.Assembly thisAssembly
  .method private hidebysig specialname static 
          class [mscorlib]System.Reflection.Assembly 
          get_Me() cil managed
  {
    // Code size       21 (0x15)
    .maxstack  8
    IL_0000:  ldsfld     class [mscorlib]System.Reflection.Assembly Dopus.Viewer.Config.Build.Props::thisAssembly
    IL_0005:  dup
    IL_0006:  brtrue.s   IL_000e

    IL_0008:  pop
    IL_0009:  call       class [mscorlib]System.Reflection.Assembly [mscorlib]System.Reflection.Assembly::GetExecutingAssembly()
    IL_000e:  dup
    IL_000f:  stsfld     class [mscorlib]System.Reflection.Assembly Dopus.Viewer.Config.Build.Props::thisAssembly
    IL_0014:  ret
  } // end of method Props::get_Me

  .method private hidebysig static !!T  Get<([mscorlib]System.Attribute) T>() cil managed
  {
    .custom instance void [Dopus.NET]JetBrains.Annotations.NotNullAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       27 (0x1b)
    .maxstack  8
    IL_0000:  call       class [mscorlib]System.Reflection.Assembly Dopus.Viewer.Config.Build.Props::get_Me()
    IL_0005:  ldtoken    !!T
    IL_000a:  call       class [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
    IL_000f:  ldc.i4.0
    IL_0010:  call       class [mscorlib]System.Attribute [mscorlib]System.Attribute::GetCustomAttribute(class [mscorlib]System.Reflection.Assembly,
                                                                                                         class [mscorlib]System.Type,
                                                                                                         bool)
    IL_0015:  unbox.any  !!T
    IL_001a:  ret
  } // end of method Props::Get

  .method private hidebysig static uint32 
          VersionPart([opt] int32 index) cil managed
  {
    .param [1] = int32(0x00000000)
    // Code size       46 (0x2e)
    .maxstack  4
    .locals init (string[] V_0,
             char[] V_1)
    IL_0000:  call       !!0 Dopus.Viewer.Config.Build.Props::Get<class [mscorlib]System.Reflection.AssemblyVersionAttribute>()
    IL_0005:  callvirt   instance string [mscorlib]System.Reflection.AssemblyVersionAttribute::get_Version()
    IL_000a:  ldc.i4.1
    IL_000b:  newarr     [mscorlib]System.Char
    IL_0010:  stloc.1
    IL_0011:  ldloc.1
    IL_0012:  ldc.i4.0
    IL_0013:  ldc.i4.s   46
    IL_0015:  stelem.i2
    IL_0016:  ldloc.1
    IL_0017:  callvirt   instance string[] [mscorlib]System.String::Split(char[])
    IL_001c:  stloc.0
    IL_001d:  ldarg.0
    IL_001e:  ldloc.0
    IL_001f:  ldlen
    IL_0020:  conv.i4
    IL_0021:  blt.s      IL_0025

    IL_0023:  ldc.i4.0
    IL_0024:  ret

    IL_0025:  ldloc.0
    IL_0026:  ldarg.0
    IL_0027:  ldelem.ref
    IL_0028:  call       uint32 [mscorlib]System.UInt32::Parse(string)
    IL_002d:  ret
  } // end of method Props::VersionPart

  .method public hidebysig specialname static 
          string  get_Filename() cil managed
  {
    // Code size       16 (0x10)
    .maxstack  8
    IL_0000:  call       class [mscorlib]System.Reflection.Assembly Dopus.Viewer.Config.Build.Props::get_Me()
    IL_0005:  callvirt   instance string [mscorlib]System.Reflection.Assembly::get_CodeBase()
    IL_000a:  call       string [mscorlib]System.IO.Path::GetFileName(string)
    IL_000f:  ret
  } // end of method Props::get_Filename

  .method public hidebysig specialname static 
          string  get_Title() cil managed
  {
    // Code size       11 (0xb)
    .maxstack  8
    IL_0000:  call       !!0 Dopus.Viewer.Config.Build.Props::Get<class [mscorlib]System.Reflection.AssemblyTitleAttribute>()
    IL_0005:  callvirt   instance string [mscorlib]System.Reflection.AssemblyTitleAttribute::get_Title()
    IL_000a:  ret
  } // end of method Props::get_Title

  .method public hidebysig specialname static 
          string  get_Description() cil managed
  {
    // Code size       11 (0xb)
    .maxstack  8
    IL_0000:  call       !!0 Dopus.Viewer.Config.Build.Props::Get<class [mscorlib]System.Reflection.AssemblyDescriptionAttribute>()
    IL_0005:  callvirt   instance string [mscorlib]System.Reflection.AssemblyDescriptionAttribute::get_Description()
    IL_000a:  ret
  } // end of method Props::get_Description

  .method public hidebysig specialname static 
          string  get_Copyright() cil managed
  {
    // Code size       11 (0xb)
    .maxstack  8
    IL_0000:  call       !!0 Dopus.Viewer.Config.Build.Props::Get<class [mscorlib]System.Reflection.AssemblyCopyrightAttribute>()
    IL_0005:  callvirt   instance string [mscorlib]System.Reflection.AssemblyCopyrightAttribute::get_Copyright()
    IL_000a:  ret
  } // end of method Props::get_Copyright

  .method public hidebysig specialname static 
          valuetype [mscorlib]System.Guid 
          get_Guid() cil managed
  {
    // Code size       16 (0x10)
    .maxstack  8
    IL_0000:  call       !!0 Dopus.Viewer.Config.Build.Props::Get<class [mscorlib]System.Runtime.InteropServices.GuidAttribute>()
    IL_0005:  callvirt   instance string [mscorlib]System.Runtime.InteropServices.GuidAttribute::get_Value()
    IL_000a:  newobj     instance void [mscorlib]System.Guid::.ctor(string)
    IL_000f:  ret
  } // end of method Props::get_Guid

  .method public hidebysig specialname static 
          uint32  get_VersionHigh() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  call       uint32 Dopus.Viewer.Config.Build.Props::VersionPart(int32)
    IL_0006:  ret
  } // end of method Props::get_VersionHigh

  .method public hidebysig specialname static 
          uint32  get_VersionLow() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldc.i4.1
    IL_0001:  call       uint32 Dopus.Viewer.Config.Build.Props::VersionPart(int32)
    IL_0006:  ret
  } // end of method Props::get_VersionLow

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // Code size       1 (0x1)
    .maxstack  8
    IL_0000:  ret
  } // end of method Props::.cctor

  .property class [mscorlib]System.Reflection.Assembly
          Me()
  {
    .get class [mscorlib]System.Reflection.Assembly Dopus.Viewer.Config.Build.Props::get_Me()
  } // end of property Props::Me
  .property string Filename()
  {
    .custom instance void [Dopus.NET]JetBrains.Annotations.NotNullAttribute::.ctor() = ( 01 00 00 00 ) 
    .get string Dopus.Viewer.Config.Build.Props::get_Filename()
  } // end of property Props::Filename
  .property string Title()
  {
    .custom instance void [Dopus.NET]JetBrains.Annotations.NotNullAttribute::.ctor() = ( 01 00 00 00 ) 
    .get string Dopus.Viewer.Config.Build.Props::get_Title()
  } // end of property Props::Title
  .property string Description()
  {
    .custom instance void [Dopus.NET]JetBrains.Annotations.NotNullAttribute::.ctor() = ( 01 00 00 00 ) 
    .get string Dopus.Viewer.Config.Build.Props::get_Description()
  } // end of property Props::Description
  .property string Copyright()
  {
    .custom instance void [Dopus.NET]JetBrains.Annotations.NotNullAttribute::.ctor() = ( 01 00 00 00 ) 
    .get string Dopus.Viewer.Config.Build.Props::get_Copyright()
  } // end of property Props::Copyright
  .property valuetype [mscorlib]System.Guid
          Guid()
  {
    .get valuetype [mscorlib]System.Guid Dopus.Viewer.Config.Build.Props::get_Guid()
  } // end of property Props::Guid
  .property uint32 VersionHigh()
  {
    .get uint32 Dopus.Viewer.Config.Build.Props::get_VersionHigh()
  } // end of property Props::VersionHigh
  .property uint32 VersionLow()
  {
    .get uint32 Dopus.Viewer.Config.Build.Props::get_VersionLow()
  } // end of property Props::VersionLow
} // end of class Dopus.Viewer.Config.Build.Props

.class private abstract auto ansi sealed beforefieldinit Dopus.Viewer.Config.Build.Exports
       extends [mscorlib]System.Object
{
  .field public static literal valuetype [mscorlib]System.Runtime.InteropServices.CallingConvention CallConv = int32(0x00000005)
  .field public static literal string DVP_Init = "DVP_Init"
  .field public static literal string DVP_InitEx = "DVP_InitEx"
  .field public static literal string DVP_USBSafe = "DVP_USBSafe"
  .field public static literal string DVP_Uninit = "DVP_Uninit"
  .field public static literal string DVP_CreateViewer = "DVP_CreateViewer"
  .field public static literal string DVP_Configure = "DVP_Configure"
  .field public static literal string DVP_About = "DVP_About"
  .field public static literal string DVP_Identify = "DVP_IdentifyW"
  .field public static literal string DVP_IdentifyFile = "DVP_IdentifyFileW"
  .field public static literal string DVP_IdentifyFileStream = "DVP_IdentifyFileStreamW"
  .field public static literal string DVP_IdentifyFileBytes = "DVP_IdentifyFileBytesW"
  .field public static literal string DVP_LoadBitmap = "DVP_LoadBitmapW"
  .field public static literal string DVP_LoadBitmapStream = "DVP_LoadBitmapStreamW"
  .field public static literal string DVP_LoadText = "DVP_LoadTextW"
  .field public static literal string DVP_ShowProperties = "DVP_ShowPropertiesW"
  .field public static literal string DVP_ShowPropertiesStream = "DVP_ShowPropertiesStreamW"
  .field public static literal string DVP_GetFileInfoFile = "DVP_GetFileInfoFileW"
  .field public static literal string DVP_GetFileInfoFileStream = "DVP_GetFileInfoFileStreamW"
  .field public static literal string DVP_SetMetaData = "DVP_SetMetaData"
} // end of class Dopus.Viewer.Config.Build.Exports

.class public auto ansi sealed Dopus.Viewer.Config.Build.Str2PtrFunc
       extends [mscorlib]System.MulticastDelegate
{
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(object 'object',
                               native int 'method') runtime managed
  {
  } // end of method Str2PtrFunc::.ctor

  .method public hidebysig newslot virtual 
          instance native int  Invoke(string sBuf) runtime managed
  {
  } // end of method Str2PtrFunc::Invoke

  .method public hidebysig newslot virtual 
          instance class [mscorlib]System.IAsyncResult 
          BeginInvoke(string sBuf,
                      class [mscorlib]System.AsyncCallback callback,
                      object 'object') runtime managed
  {
  } // end of method Str2PtrFunc::BeginInvoke

  .method public hidebysig newslot virtual 
          instance native int  EndInvoke(class [mscorlib]System.IAsyncResult result) runtime managed
  {
  } // end of method Str2PtrFunc::EndInvoke

} // end of class Dopus.Viewer.Config.Build.Str2PtrFunc

.class public auto ansi sealed Dopus.Viewer.Config.Build.Ptr2StrFunc
       extends [mscorlib]System.MulticastDelegate
{
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(object 'object',
                               native int 'method') runtime managed
  {
  } // end of method Ptr2StrFunc::.ctor

  .method public hidebysig newslot virtual 
          instance string  Invoke(native int lpBuf) runtime managed
  {
  } // end of method Ptr2StrFunc::Invoke

  .method public hidebysig newslot virtual 
          instance class [mscorlib]System.IAsyncResult 
          BeginInvoke(native int lpBuf,
                      class [mscorlib]System.AsyncCallback callback,
                      object 'object') runtime managed
  {
  } // end of method Ptr2StrFunc::BeginInvoke

  .method public hidebysig newslot virtual 
          instance string  EndInvoke(class [mscorlib]System.IAsyncResult result) runtime managed
  {
  } // end of method Ptr2StrFunc::EndInvoke

} // end of class Dopus.Viewer.Config.Build.Ptr2StrFunc

.class private abstract auto ansi sealed beforefieldinit Dopus.Viewer.Config.Build.TStr
       extends [mscorlib]System.Object
{
  .field public static literal string T = "W"
  .field public static literal valuetype [mscorlib]System.Runtime.InteropServices.UnmanagedType S = int32(0x00000015)
  .field public static literal valuetype [mscorlib]System.Runtime.InteropServices.CharSet CS = int32(0x00000003)
  .field public static class Dopus.Viewer.Config.Build.Str2PtrFunc ToPtr
  .field public static class Dopus.Viewer.Config.Build.Ptr2StrFunc FromPtr
  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // Code size       35 (0x23)
    .maxstack  8
    IL_0000:  ldnull
    IL_0001:  ldftn      native int [mscorlib]System.Runtime.InteropServices.Marshal::StringToHGlobalUni(string)
    IL_0007:  newobj     instance void Dopus.Viewer.Config.Build.Str2PtrFunc::.ctor(object,
                                                                                    native int)
    IL_000c:  stsfld     class Dopus.Viewer.Config.Build.Str2PtrFunc Dopus.Viewer.Config.Build.TStr::ToPtr
    IL_0011:  ldnull
    IL_0012:  ldftn      string [mscorlib]System.Runtime.InteropServices.Marshal::PtrToStringUni(native int)
    IL_0018:  newobj     instance void Dopus.Viewer.Config.Build.Ptr2StrFunc::.ctor(object,
                                                                                    native int)
    IL_001d:  stsfld     class Dopus.Viewer.Config.Build.Ptr2StrFunc Dopus.Viewer.Config.Build.TStr::FromPtr
    IL_0022:  ret
  } // end of method TStr::.cctor

} // end of class Dopus.Viewer.Config.Build.TStr

.class public auto ansi sealed Dopus.Viewer.Interop.Enums.BUTTONOPT
       extends [mscorlib]System.Enum
{
  .field public specialname rtspecialname int32 value__
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.BUTTONOPT BUTTONOPT_NONE = int32(0x00000000)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.BUTTONOPT BUTTONOPT_SELECT = int32(0x00000001)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.BUTTONOPT BUTTONOPT_ADVANCE = int32(0x00000002)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.BUTTONOPT BUTTONOPT_SCROLL = int32(0x00000003)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.BUTTONOPT BUTTONOPT_FULLSCREEN = int32(0x00000004)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.BUTTONOPT BUTTONOPT_CLOSE = int32(0x00000005)
} // end of class Dopus.Viewer.Interop.Enums.BUTTONOPT

.class public auto ansi sealed Dopus.Viewer.Interop.Enums.ContextMenuFlags
       extends [mscorlib]System.Enum
{
  .custom instance void [mscorlib]System.FlagsAttribute::.ctor() = ( 01 00 00 00 ) 
  .field public specialname rtspecialname uint32 value__
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.ContextMenuFlags Checked = uint32(0x00000001)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.ContextMenuFlags RadioCheck = uint32(0x00000002)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.ContextMenuFlags Disabled = uint32(0x00000004)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.ContextMenuFlags Separator = uint32(0x00000008)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.ContextMenuFlags BeginSubmenu = uint32(0x00000010)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.ContextMenuFlags EndSubmenu = uint32(0x00000020)
} // end of class Dopus.Viewer.Interop.Enums.ContextMenuFlags

.class public auto ansi sealed Dopus.Viewer.Interop.Enums.PluginCapabilities
       extends [mscorlib]System.Enum
{
  .field public specialname rtspecialname int32 value__
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginCapabilities RESIZE_FIT = int32(0x00000001)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginCapabilities RESIZE_ANY = int32(0x00000002)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginCapabilities ROTATE_RIGHTANGLE = int32(0x00000004)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginCapabilities ROTATE_ANY = int32(0x00000008)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginCapabilities SELECTALL = int32(0x00000010)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginCapabilities COPYALL = int32(0x00000020)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginCapabilities COPYSELECTION = int32(0x00000040)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginCapabilities PRINT = int32(0x00000080)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginCapabilities WANTFOCUS = int32(0x00000100)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginCapabilities SHOWPROPERTIES = int32(0x00000200)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginCapabilities WANTMOUSEWHEEL = int32(0x00000400)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginCapabilities ADDCONTEXTMENU = int32(0x00000800)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginCapabilities HASDIALOGS = int32(0x00001000)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginCapabilities HASACCELERATORS = int32(0x00002000)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginCapabilities CANSETWALLPAPER = int32(0x00004000)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginCapabilities CANTRACKFOCUS = int32(0x00008000)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginCapabilities SUPPLYBITMAP = int32(0x00010000)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginCapabilities GAMMA = int32(0x00020000)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginCapabilities FILEINFO = int32(0x00040000)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginCapabilities RESIZE_TILE = int32(0x00080000)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginCapabilities HIDEALPHA = int32(0x00100000)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginCapabilities NOFULLSCREEN = int32(0x00200000)
} // end of class Dopus.Viewer.Interop.Enums.PluginCapabilities

.class public auto ansi sealed Dopus.Viewer.Interop.Enums.PluginFileInfoFlags
       extends [mscorlib]System.Enum
{
  .custom instance void [mscorlib]System.FlagsAttribute::.ctor() = ( 01 00 00 00 ) 
  .field public specialname rtspecialname uint32 value__
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginFileInfoFlags CanReturnBitmap = uint32(0x00000001)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginFileInfoFlags CanReturnViewer = uint32(0x00000002)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginFileInfoFlags CanReturnThumbnail = uint32(0x00000004)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginFileInfoFlags CanShowProperties = uint32(0x00000008)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginFileInfoFlags ResolutionInch = uint32(0x00000010)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginFileInfoFlags ResolutionCM = uint32(0x00000020)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginFileInfoFlags WantFileInfo = uint32(0x00000040)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginFileInfoFlags ReturnsText = uint32(0x00000080)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginFileInfoFlags HasAlphaChannel = uint32(0x00000100)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginFileInfoFlags HasTransparentColor = uint32(0x00000200)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginFileInfoFlags HasTransparentPen = uint32(0x00000400)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginFileInfoFlags CanReturnFileInfo = uint32(0x00000800)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginFileInfoFlags NoThumbnailBorder = uint32(0x00001000)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginFileInfoFlags NoShowThumbnailIcon = uint32(0x00002000)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginFileInfoFlags ShowThumbnailIcon = uint32(0x00004000)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginFileInfoFlags FolderThumbnail = uint32(0x00008000)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginFileInfoFlags RegenerateOnResize = uint32(0x00010000)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginFileInfoFlags JPEGStream = uint32(0x00020000)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginFileInfoFlags PNGStream = uint32(0x00040000)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginFileInfoFlags InFolderThumbnail = uint32(0x00080000)
} // end of class Dopus.Viewer.Interop.Enums.PluginFileInfoFlags

.class public auto ansi sealed Dopus.Viewer.Interop.Enums.MajorFileType
       extends [mscorlib]System.Enum
{
  .field public specialname rtspecialname uint32 value__
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.MajorFileType Image = uint32(0x00000000)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.MajorFileType Sound = uint32(0x00000001)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.MajorFileType Text = uint32(0x00000002)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.MajorFileType Other = uint32(0x00000003)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.MajorFileType Movie = uint32(0x00000004)
} // end of class Dopus.Viewer.Interop.Enums.MajorFileType

.class public auto ansi sealed Dopus.Viewer.Interop.Enums.PluginWinMsg
       extends [mscorlib]System.Enum
{
  .field public specialname rtspecialname int32 value__
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginWinMsg DVPLUGINMSG_BASE = int32(0x00008F00)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginWinMsg DVPLUGINMSG_LOADA = int32(0x00008F01)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginWinMsg DVPLUGINMSG_LOADW = int32(0x00008F02)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginWinMsg DVPLUGINMSG_LOADSTREAMA = int32(0x00008F03)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginWinMsg DVPLUGINMSG_LOADSTREAMW = int32(0x00008F04)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginWinMsg DVPLUGINMSG_GETIMAGEINFOA = int32(0x00008F05)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginWinMsg DVPLUGINMSG_GETIMAGEINFOW = int32(0x00008F06)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginWinMsg DVPLUGINMSG_GETCAPABILITIES = int32(0x00008F07)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginWinMsg DVPLUGINMSG_RESIZE = int32(0x00008F08)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginWinMsg DVPLUGINMSG_SETROTATION = int32(0x00008F09)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginWinMsg DVPLUGINMSG_ROTATE = int32(0x00008F0A)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginWinMsg DVPLUGINMSG_SETZOOM = int32(0x00008F0B)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginWinMsg DVPLUGINMSG_ZOOM = int32(0x00008F0C)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginWinMsg DVPLUGINMSG_GETZOOMFACTOR = int32(0x00008F0D)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginWinMsg DVPLUGINMSG_SELECTALL = int32(0x00008F0E)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginWinMsg DVPLUGINMSG_TESTSELECTION = int32(0x00008F0F)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginWinMsg DVPLUGINMSG_COPYSELECTION = int32(0x00008F10)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginWinMsg DVPLUGINMSG_PRINT = int32(0x00008F11)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginWinMsg DVPLUGINMSG_PROPERTIES = int32(0x00008F12)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginWinMsg DVPLUGINMSG_REDRAW = int32(0x00008F13)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginWinMsg DVPLUGINMSG_GETPICSIZE = int32(0x00008F14)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginWinMsg DVPLUGINMSG_GETAUTOBGCOL = int32(0x00008F15)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginWinMsg DVPLUGINMSG_MOUSEWHEEL = int32(0x00008F16)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginWinMsg DVPLUGINMSG_ADDCONTEXTMENUA = int32(0x00008F17)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginWinMsg DVPLUGINMSG_ADDCONTEXTMENUW = int32(0x00008F18)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginWinMsg DVPLUGINMSG_SETABORTEVENT = int32(0x00008F19)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginWinMsg DVPLUGINMSG_GETORIGINALPICSIZE = int32(0x00008F1A)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginWinMsg DVPLUGINMSG_CLEAR = int32(0x00008F1B)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginWinMsg DVPLUGINMSG_NOTIFY_LOADPROGRESS = int32(0x00008F1C)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginWinMsg DVPLUGINMSG_ISDLGMESSAGE = int32(0x00008F1D)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginWinMsg DVPLUGINMSG_TRANSLATEACCEL = int32(0x00008F1E)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginWinMsg DVPLUGINMSG_REINITIALIZE = int32(0x00008F1F)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginWinMsg DVPLUGINMSG_SHOWHIDESCROLLBARS = int32(0x00008F20)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginWinMsg DVPLUGINMSG_INLOADLOOP = int32(0x00008F21)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginWinMsg DVPLUGINMSG_SETIMAGEFRAME = int32(0x00008F22)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginWinMsg DVPLUGINMSG_SETDESKWALLPAPERA = int32(0x00008F23)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginWinMsg DVPLUGINMSG_GETZOOMLIMITS = int32(0x00008F24)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginWinMsg DVPLUGINMSG_THUMBSCHANGED = int32(0x00008F25)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginWinMsg DVPLUGINMSG_GETBITMAP = int32(0x00008F26)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginWinMsg DVPLUGINMSG_GAMMACHANGE = int32(0x00008F27)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginWinMsg DVPLUGINMSG_APPCOMMAND = int32(0x00008F28)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginWinMsg DVPLUGINMSG_PREVENTFRAME = int32(0x00008F29)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginWinMsg DVPLUGINMSG_FULLSCREEN = int32(0x00008F2A)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginWinMsg DVPLUGINMSG_SHOWFILEINFO = int32(0x00008F2B)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginWinMsg DVPLUGINMSG_ISFILEINFOSHOWN = int32(0x00008F2C)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginWinMsg DVPLUGINMSG_SETDESKWALLPAPERW = int32(0x00008F2D)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginWinMsg DVPLUGINMSG_PREVENTAUTOSIZE = int32(0x00008F2E)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginWinMsg DVPLUGINMSG_SHOWHEX = int32(0x00008F2F)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginWinMsg DVPLUGINMSG_ISALPHAHIDDEN = int32(0x00008F30)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginWinMsg DVPLUGINMSG_HIDEALPHA = int32(0x00008F31)
} // end of class Dopus.Viewer.Interop.Enums.PluginWinMsg

.class public auto ansi sealed Dopus.Viewer.Interop.Enums.ColorSpace
       extends [mscorlib]System.Enum
{
  .field public specialname rtspecialname int32 value__
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.ColorSpace Unknown = int32(0x00000000)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.ColorSpace Grayscale = int32(0x00000001)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.ColorSpace RGB = int32(0x00000002)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.ColorSpace YCBCR = int32(0x00000003)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.ColorSpace CMYK = int32(0x00000004)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.ColorSpace YCCK = int32(0x00000005)
} // end of class Dopus.Viewer.Interop.Enums.ColorSpace

.class public auto ansi sealed Dopus.Viewer.Interop.Enums.DVPFITypeHint
       extends [mscorlib]System.Enum
{
  .field public specialname rtspecialname int32 value__
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.DVPFITypeHint DVPFITypeHint_None = int32(0x00000000)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.DVPFITypeHint DVPFITypeHint_PlainText = int32(0x00000001)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.DVPFITypeHint DVPFITypeHint_RichText = int32(0x00000002)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.DVPFITypeHint DVPFITypeHint_HTML = int32(0x00000003)
} // end of class Dopus.Viewer.Interop.Enums.DVPFITypeHint

.class public auto ansi sealed Dopus.Viewer.Interop.Enums.DVPText
       extends [mscorlib]System.Enum
{
  .field public specialname rtspecialname int32 value__
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.DVPText DVPText_Plain = int32(0x00000000)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.DVPText DVPText_Rich = int32(0x00000001)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.DVPText DVPText_HTML = int32(0x00000002)
} // end of class Dopus.Viewer.Interop.Enums.DVPText

.class public auto ansi sealed Dopus.Viewer.Interop.Enums.PluginInfoFlags
       extends [mscorlib]System.Enum
{
  .custom instance void [mscorlib]System.FlagsAttribute::.ctor() = ( 01 00 00 00 ) 
  .field public specialname rtspecialname uint32 value__
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginInfoFlags CanHandleStreams = uint32(0x00000001)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginInfoFlags CanHandleBytes = uint32(0x00000002)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginInfoFlags CatchAll = uint32(0x00000004)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginInfoFlags DefaultCatchAll = uint32(0x00000008)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginInfoFlags ExtensionsOnly = uint32(0x00000010)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginInfoFlags ExtensionsOnlyIfSlow = uint32(0x00000020)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginInfoFlags ExtensionsOnlyIfNoRndSeek = uint32(0x00000040)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginInfoFlags ExtensionsOnlyForThumbnails = uint32(0x00000080)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginInfoFlags NoSlowFiles = uint32(0x00000100)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginInfoFlags NeedRandomSeek = uint32(0x00000200)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginInfoFlags CanConfigure = uint32(0x00000400)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginInfoFlags CanShowAbout = uint32(0x00000800)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginInfoFlags NoThumbnails = uint32(0x00001000)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginInfoFlags NoProperties = uint32(0x00002000)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginInfoFlags ZeroBytesOk = uint32(0x00004000)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginInfoFlags OverrideInternal = uint32(0x00008000)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginInfoFlags InitialDisable = uint32(0x00010000)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginInfoFlags NoFileInformation = uint32(0x00020000)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginInfoFlags ProvideFileInfo = uint32(0x00040000)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginInfoFlags NoMultithreadThumbnails = uint32(0x00080000)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginInfoFlags FolderThumbnails = uint32(0x00100000)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginInfoFlags TrueThumbnailSize = uint32(0x00200000)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginInfoFlags UseVersionResource = uint32(0x00400000)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginInfoFlags CanShowHex = uint32(0x00800000)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginInfoFlags OnlyThumbnails = uint32(0x01000000)
} // end of class Dopus.Viewer.Interop.Enums.PluginInfoFlags

.class public auto ansi sealed Dopus.Viewer.Interop.Enums.PluginInfoInitFlags
       extends [mscorlib]System.Enum
{
  .custom instance void [mscorlib]System.FlagsAttribute::.ctor() = ( 01 00 00 00 ) 
  .field public specialname rtspecialname uint32 value__
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginInfoInitFlags VPINITF_FIRSTTIME = uint32(0x00000001)
  .field public static literal valuetype Dopus.Viewer.Interop.Enums.PluginInfoInitFlags VPINITF_USB = uint32(0x00000002)
} // end of class Dopus.Viewer.Interop.Enums.PluginInfoInitFlags

.class public sequential autochar sealed beforefieldinit Dopus.Viewer.Interop.Types.PluginFileInfo
       extends [mscorlib]System.ValueType
{
  .field public uint32 cbSize
  .field public valuetype Dopus.Viewer.Interop.Enums.PluginFileInfoFlags dwFlags
  .field public uint16 wMajorType
  .field public uint16 wMinorType
  .field public valuetype [Dopus.NET]Dopus.Interop.Types.SIZE szImageSize
  .field public int32 iNumBits
  .field public  marshal( lptstr) string lpszInfo
  .field public uint32 cchInfoMax
  .field public  marshal( fixed array [8] unsigned int32) uint32[] dwPrivateData
  .field public valuetype [Dopus.NET]Dopus.Interop.Types.SIZE szResolution
  .field public int32 iTypeHint
  .field public valuetype [Dopus.NET]Dopus.Interop.Types.COLORREF crTransparentColor
  .field public uint16 wThumbnailQuality
  .field public uint64 dwlFileSize
  .field public valuetype Dopus.Viewer.Interop.Enums.ColorSpace iColorSpace
} // end of class Dopus.Viewer.Interop.Types.PluginFileInfo

.class public sequential autochar sealed beforefieldinit Dopus.Viewer.Interop.Types.ContextMenuItem
       extends [mscorlib]System.ValueType
{
  .field public  marshal( lptstr) string lpszLabel
  .field public valuetype Dopus.Viewer.Interop.Enums.ContextMenuFlags dwFlags
  .field public uint32 uID
} // end of class Dopus.Viewer.Interop.Types.ContextMenuItem

.class public sequential ansi sealed beforefieldinit Dopus.Viewer.Interop.Types.FileInfoHeader
       extends [mscorlib]System.ValueType
{
  .field public uint32 cbSize
  .field public uint32 uiMajorType
  .field public uint32 dwFlags
} // end of class Dopus.Viewer.Interop.Types.FileInfoHeader

.class public sequential autochar sealed beforefieldinit Dopus.Viewer.Interop.Types.DVPFileInfoMovie
       extends [mscorlib]System.ValueType
{
  .field public valuetype Dopus.Viewer.Interop.Types.FileInfoHeader hdr
  .field public valuetype [Dopus.NET]Dopus.Interop.Types.SIZE szVideoSize
  .field public int32 iNumBits
  .field public uint32 dwDuration
  .field public uint32 dwFrames
  .field public float64 flFrameRate
  .field public uint32 dwDataRate
  .field public valuetype [Dopus.NET]Dopus.Interop.Types.POINT ptAspectRatio
  .field public uint32 dwAudioBitRate
  .field public uint32 dwAudioSampleRate
  .field public int32 iNumChannels
  .field public  marshal( lptstr) string lpszVideoCodec
  .field public uint32 cchVideoCodecMax
  .field public  marshal( lptstr) string lpszAudioCodec
  .field public uint32 cchAudioCodecMax
} // end of class Dopus.Viewer.Interop.Types.DVPFileInfoMovie

.class public sequential autochar sealed beforefieldinit Dopus.Viewer.Interop.Types.DVPFileInfoMusic
       extends [mscorlib]System.ValueType
{
  .field public valuetype Dopus.Viewer.Interop.Types.FileInfoHeader hdr
  .field public  marshal( lptstr) string lpszAlbum
  .field public uint32 cchAlbumMax
  .field public  marshal( lptstr) string lpszArtist
  .field public uint32 cchArtistMax
  .field public  marshal( lptstr) string lpszTitle
  .field public uint32 cchTitleMax
  .field public  marshal( lptstr) string lpszGenre
  .field public uint32 cchGenreMax
  .field public  marshal( lptstr) string lpszComment
  .field public uint32 cchCommentMax
  .field public  marshal( lptstr) string lpszFormat
  .field public uint32 cchFormatMax
  .field public  marshal( lptstr) string lpszEncoder
  .field public uint32 cchEncoderMax
  .field public uint32 dwBitRate
  .field public uint32 dwSampleRate
  .field public uint32 dwDuration
  .field public int32 iTrackNum
  .field public int32 iYear
  .field public int32 iNumChannels
  .field public uint32 dwMusicFlags
  .field public  marshal( lptstr) string lpszCodec
  .field public uint32 cchCodecMax
} // end of class Dopus.Viewer.Interop.Types.DVPFileInfoMusic

.class public sequential ansi sealed beforefieldinit Dopus.Viewer.Interop.Types.DVPInitExData
       extends [mscorlib]System.ValueType
{
  .field public uint32 cbSize
  .field public valuetype [Dopus.NET]Dopus.Interop.Types.HWND hwndDOpusMsgWindow
  .field public uint32 dwOpusVerMajor
  .field public uint32 dwOpusVerMinor
  .field public  marshal( lpwstr) string pszLanguageName
} // end of class Dopus.Viewer.Interop.Types.DVPInitExData

.class public sequential autochar sealed beforefieldinit Dopus.Viewer.Interop.Types.DVPLoadTextData
       extends [mscorlib]System.ValueType
{
  .field public uint32 cbSize
  .field public uint32 dwFlags
  .field public valuetype [Dopus.NET]Dopus.Interop.Types.HWND hWndParent
  .field public  marshal( lptstr) string lpszFile
  .field public native int lpInStream
  .field public uint32 dwStreamFlags
  .field public native int lpOutStream
  .field public int32 iOutTextType
  .field public  marshal( fixed sysstring [40]) string tchPreferredViewer
  .field public native int hAbortEvent
} // end of class Dopus.Viewer.Interop.Types.DVPLoadTextData

.class public sequential ansi sealed beforefieldinit Dopus.Viewer.Interop.Types.DVPNMBUTTONOPTS
       extends [mscorlib]System.ValueType
{
  .field public valuetype [Dopus.NET]Dopus.Interop.Types.NMHDR hdr
  .field public int32 iLeft
  .field public int32 iRight
  .field public int32 iMiddle
} // end of class Dopus.Viewer.Interop.Types.DVPNMBUTTONOPTS

.class public sequential ansi sealed beforefieldinit Dopus.Viewer.Interop.Types.DVPNMCAPABILITIES
       extends [mscorlib]System.ValueType
{
  .field public valuetype [Dopus.NET]Dopus.Interop.Types.NMHDR hdr
  .field public uint32 dwCapabilities
} // end of class Dopus.Viewer.Interop.Types.DVPNMCAPABILITIES

.class public sequential ansi sealed beforefieldinit Dopus.Viewer.Interop.Types.DVPNMCLICK
       extends [mscorlib]System.ValueType
{
  .field public valuetype [Dopus.NET]Dopus.Interop.Types.NMHDR hdr
  .field public valuetype [Dopus.NET]Dopus.Interop.Types.POINT pt
  .field public  marshal( bool) bool fMenu
} // end of class Dopus.Viewer.Interop.Types.DVPNMCLICK

.class public sequential ansi sealed beforefieldinit Dopus.Viewer.Interop.Types.DVPNMFOCUSCHANGE
       extends [mscorlib]System.ValueType
{
  .field public valuetype [Dopus.NET]Dopus.Interop.Types.NMHDR hdr
  .field public  marshal( bool) bool fGotFocus
} // end of class Dopus.Viewer.Interop.Types.DVPNMFOCUSCHANGE

.class public sequential ansi sealed beforefieldinit Dopus.Viewer.Interop.Types.DVPNMGAMMA
       extends [mscorlib]System.ValueType
{
  .field public valuetype [Dopus.NET]Dopus.Interop.Types.NMHDR hdr
  .field public  marshal( bool) int32 fEnable
  .field public float64 dbGamma
} // end of class Dopus.Viewer.Interop.Types.DVPNMGAMMA

.class public sequential ansi sealed beforefieldinit Dopus.Viewer.Interop.Types.DVPNMGETCURSORS
       extends [mscorlib]System.ValueType
{
  .field public valuetype [Dopus.NET]Dopus.Interop.Types.NMHDR hdr
  .field public native int hCurHandOpen
  .field public native int hCurHandClosed
  .field public native int hCurCrosshair
} // end of class Dopus.Viewer.Interop.Types.DVPNMGETCURSORS

.class public sequential ansi sealed beforefieldinit Dopus.Viewer.Interop.Types.DVPNMHEXSTATE
       extends [mscorlib]System.ValueType
{
  .field public valuetype [Dopus.NET]Dopus.Interop.Types.NMHDR hdr
  .field public  marshal( bool) bool fState
} // end of class Dopus.Viewer.Interop.Types.DVPNMHEXSTATE

.class public sequential autochar sealed beforefieldinit Dopus.Viewer.Interop.Types.DVPNMLOADNEWFILE
       extends [mscorlib]System.ValueType
{
  .field public valuetype [Dopus.NET]Dopus.Interop.Types.NMHDR hdr
  .field public  marshal( lptstr) string lpszFilename
  .field public  marshal( bool) bool fUnicode
  .field public native int lpStream
} // end of class Dopus.Viewer.Interop.Types.DVPNMLOADNEWFILE

.class public sequential ansi sealed beforefieldinit Dopus.Viewer.Interop.Types.DVPNMMOUSEWHEEL
       extends [mscorlib]System.ValueType
{
  .field public valuetype [Dopus.NET]Dopus.Interop.Types.NMHDR hdr
  .field public native uint wParam
  .field public native int lParam
} // end of class Dopus.Viewer.Interop.Types.DVPNMMOUSEWHEEL

.class public sequential ansi sealed beforefieldinit Dopus.Viewer.Interop.Types.DVPNMRESETZOOM
       extends [mscorlib]System.ValueType
{
  .field public valuetype [Dopus.NET]Dopus.Interop.Types.NMHDR hdr
  .field public int32 iZoom
} // end of class Dopus.Viewer.Interop.Types.DVPNMRESETZOOM

.class public sequential ansi sealed beforefieldinit Dopus.Viewer.Interop.Types.DVPNMSETCURSOR
       extends [mscorlib]System.ValueType
{
  .field public valuetype [Dopus.NET]Dopus.Interop.Types.NMHDR hdr
  .field public valuetype [Dopus.NET]Dopus.Interop.Types.POINT pt
  .field public  marshal( bool) bool fMenu
  .field public  marshal( bool) bool fCanScroll
  .field public int32 iCursor
} // end of class Dopus.Viewer.Interop.Types.DVPNMSETCURSOR

.class public sequential ansi sealed beforefieldinit Dopus.Viewer.Interop.Types.DVPNMSIZECHANGE
       extends [mscorlib]System.ValueType
{
  .field public valuetype [Dopus.NET]Dopus.Interop.Types.NMHDR hdr
  .field public valuetype [Dopus.NET]Dopus.Interop.Types.SIZE szSize
} // end of class Dopus.Viewer.Interop.Types.DVPNMSIZECHANGE

.class public sequential autochar sealed beforefieldinit Dopus.Viewer.Interop.Types.DVPNMSTATUSTEXT
       extends [mscorlib]System.ValueType
{
  .field public valuetype [Dopus.NET]Dopus.Interop.Types.NMHDR hdr
  .field public  marshal( lptstr) string lpszStatusText
  .field public  marshal( bool) bool fUnicode
} // end of class Dopus.Viewer.Interop.Types.DVPNMSTATUSTEXT

.class public sequential ansi sealed beforefieldinit Dopus.Viewer.Interop.Types.OpusUSBSafeData
       extends [mscorlib]System.ValueType
{
  .field public uint32 cbSize
  .field public  marshal( lpwstr) string pszOtherExports
  .field public uint32 cchOtherExports
} // end of class Dopus.Viewer.Interop.Types.OpusUSBSafeData

.class public auto ansi sealed Dopus.Viewer.Interop.Types.PFNDVPABOUT
       extends [mscorlib]System.MulticastDelegate
{
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(object 'object',
                               native int 'method') runtime managed
  {
  } // end of method PFNDVPABOUT::.ctor

  .method public hidebysig newslot virtual 
          instance native int  Invoke(native int hWndParent) runtime managed
  {
  } // end of method PFNDVPABOUT::Invoke

  .method public hidebysig newslot virtual 
          instance class [mscorlib]System.IAsyncResult 
          BeginInvoke(native int hWndParent,
                      class [mscorlib]System.AsyncCallback callback,
                      object 'object') runtime managed
  {
  } // end of method PFNDVPABOUT::BeginInvoke

  .method public hidebysig newslot virtual 
          instance native int  EndInvoke(class [mscorlib]System.IAsyncResult result) runtime managed
  {
  } // end of method PFNDVPABOUT::EndInvoke

} // end of class Dopus.Viewer.Interop.Types.PFNDVPABOUT

.class public auto ansi sealed Dopus.Viewer.Interop.Types.PFNDVPCONFIGURE
       extends [mscorlib]System.MulticastDelegate
{
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(object 'object',
                               native int 'method') runtime managed
  {
  } // end of method PFNDVPCONFIGURE::.ctor

  .method public hidebysig newslot virtual 
          instance native int  Invoke(native int hWndParent,
                                      native int hWndNotify,
                                      uint32 dwNotifyData) runtime managed
  {
  } // end of method PFNDVPCONFIGURE::Invoke

  .method public hidebysig newslot virtual 
          instance class [mscorlib]System.IAsyncResult 
          BeginInvoke(native int hWndParent,
                      native int hWndNotify,
                      uint32 dwNotifyData,
                      class [mscorlib]System.AsyncCallback callback,
                      object 'object') runtime managed
  {
  } // end of method PFNDVPCONFIGURE::BeginInvoke

  .method public hidebysig newslot virtual 
          instance native int  EndInvoke(class [mscorlib]System.IAsyncResult result) runtime managed
  {
  } // end of method PFNDVPCONFIGURE::EndInvoke

} // end of class Dopus.Viewer.Interop.Types.PFNDVPCONFIGURE

.class public auto ansi sealed Dopus.Viewer.Interop.Types.PFNDVPCREATEVIEWER
       extends [mscorlib]System.MulticastDelegate
{
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(object 'object',
                               native int 'method') runtime managed
  {
  } // end of method PFNDVPCREATEVIEWER::.ctor

  .method public hidebysig newslot virtual 
          instance native int  Invoke(native int hWndParent,
                                      valuetype [Dopus.NET]Dopus.Interop.Types.RECT& lpRc,
                                      uint32 dwFlags) runtime managed
  {
  } // end of method PFNDVPCREATEVIEWER::Invoke

  .method public hidebysig newslot virtual 
          instance class [mscorlib]System.IAsyncResult 
          BeginInvoke(native int hWndParent,
                      valuetype [Dopus.NET]Dopus.Interop.Types.RECT& lpRc,
                      uint32 dwFlags,
                      class [mscorlib]System.AsyncCallback callback,
                      object 'object') runtime managed
  {
  } // end of method PFNDVPCREATEVIEWER::BeginInvoke

  .method public hidebysig newslot virtual 
          instance native int  EndInvoke(valuetype [Dopus.NET]Dopus.Interop.Types.RECT& lpRc,
                                         class [mscorlib]System.IAsyncResult result) runtime managed
  {
  } // end of method PFNDVPCREATEVIEWER::EndInvoke

} // end of class Dopus.Viewer.Interop.Types.PFNDVPCREATEVIEWER

.class public auto ansi sealed Dopus.Viewer.Interop.Types.PFNDVPGETFILEINFOFILE
       extends [mscorlib]System.MulticastDelegate
{
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(object 'object',
                               native int 'method') runtime managed
  {
  } // end of method PFNDVPGETFILEINFOFILE::.ctor

  .method public hidebysig newslot virtual 
          instance int32  Invoke(native int hWnd,
                                 class [mscorlib]System.Text.StringBuilder  marshal( lpwstr) lpszName,
                                 valuetype Dopus.Viewer.Interop.Types.PluginFileInfo& lpVPFileInfo,
                                 valuetype Dopus.Viewer.Interop.Types.FileInfoHeader& lpFIH,
                                 native int hAbortEvent) runtime managed
  {
  } // end of method PFNDVPGETFILEINFOFILE::Invoke

  .method public hidebysig newslot virtual 
          instance class [mscorlib]System.IAsyncResult 
          BeginInvoke(native int hWnd,
                      class [mscorlib]System.Text.StringBuilder  marshal( lpwstr) lpszName,
                      valuetype Dopus.Viewer.Interop.Types.PluginFileInfo& lpVPFileInfo,
                      valuetype Dopus.Viewer.Interop.Types.FileInfoHeader& lpFIH,
                      native int hAbortEvent,
                      class [mscorlib]System.AsyncCallback callback,
                      object 'object') runtime managed
  {
  } // end of method PFNDVPGETFILEINFOFILE::BeginInvoke

  .method public hidebysig newslot virtual 
          instance int32  EndInvoke(valuetype Dopus.Viewer.Interop.Types.PluginFileInfo& lpVPFileInfo,
                                    valuetype Dopus.Viewer.Interop.Types.FileInfoHeader& lpFIH,
                                    class [mscorlib]System.IAsyncResult result) runtime managed
  {
  } // end of method PFNDVPGETFILEINFOFILE::EndInvoke

} // end of class Dopus.Viewer.Interop.Types.PFNDVPGETFILEINFOFILE

.class public auto ansi sealed Dopus.Viewer.Interop.Types.PFNDVPGETFILEINFOFILESTREAM
       extends [mscorlib]System.MulticastDelegate
{
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(object 'object',
                               native int 'method') runtime managed
  {
  } // end of method PFNDVPGETFILEINFOFILESTREAM::.ctor

  .method public hidebysig newslot virtual 
          instance int32  Invoke(native int hWnd,
                                 class [mscorlib]System.Runtime.InteropServices.ComTypes.IStream& lpStream,
                                 class [mscorlib]System.Text.StringBuilder  marshal( lpwstr) lpszName,
                                 valuetype Dopus.Viewer.Interop.Types.PluginFileInfo& lpVPFileInfo,
                                 valuetype Dopus.Viewer.Interop.Types.FileInfoHeader& lpFIH,
                                 uint32 dwStreamFlags) runtime managed
  {
  } // end of method PFNDVPGETFILEINFOFILESTREAM::Invoke

  .method public hidebysig newslot virtual 
          instance class [mscorlib]System.IAsyncResult 
          BeginInvoke(native int hWnd,
                      class [mscorlib]System.Runtime.InteropServices.ComTypes.IStream& lpStream,
                      class [mscorlib]System.Text.StringBuilder  marshal( lpwstr) lpszName,
                      valuetype Dopus.Viewer.Interop.Types.PluginFileInfo& lpVPFileInfo,
                      valuetype Dopus.Viewer.Interop.Types.FileInfoHeader& lpFIH,
                      uint32 dwStreamFlags,
                      class [mscorlib]System.AsyncCallback callback,
                      object 'object') runtime managed
  {
  } // end of method PFNDVPGETFILEINFOFILESTREAM::BeginInvoke

  .method public hidebysig newslot virtual 
          instance int32  EndInvoke(class [mscorlib]System.Runtime.InteropServices.ComTypes.IStream& lpStream,
                                    valuetype Dopus.Viewer.Interop.Types.PluginFileInfo& lpVPFileInfo,
                                    valuetype Dopus.Viewer.Interop.Types.FileInfoHeader& lpFIH,
                                    class [mscorlib]System.IAsyncResult result) runtime managed
  {
  } // end of method PFNDVPGETFILEINFOFILESTREAM::EndInvoke

} // end of class Dopus.Viewer.Interop.Types.PFNDVPGETFILEINFOFILESTREAM

.class private auto ansi sealed Dopus.Viewer.Interop.Types.PFNDVPIDENTIFY
       extends [mscorlib]System.MulticastDelegate
{
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(object 'object',
                               native int 'method') runtime managed
  {
  } // end of method PFNDVPIDENTIFY::.ctor

  .method public hidebysig newslot virtual 
          instance int32  Invoke(valuetype Dopus.Viewer.Interop.Types.PluginInfo& lpVPInfo) runtime managed
  {
  } // end of method PFNDVPIDENTIFY::Invoke

  .method public hidebysig newslot virtual 
          instance class [mscorlib]System.IAsyncResult 
          BeginInvoke(valuetype Dopus.Viewer.Interop.Types.PluginInfo& lpVPInfo,
                      class [mscorlib]System.AsyncCallback callback,
                      object 'object') runtime managed
  {
  } // end of method PFNDVPIDENTIFY::BeginInvoke

  .method public hidebysig newslot virtual 
          instance int32  EndInvoke(valuetype Dopus.Viewer.Interop.Types.PluginInfo& lpVPInfo,
                                    class [mscorlib]System.IAsyncResult result) runtime managed
  {
  } // end of method PFNDVPIDENTIFY::EndInvoke

} // end of class Dopus.Viewer.Interop.Types.PFNDVPIDENTIFY

.class public auto ansi sealed Dopus.Viewer.Interop.Types.PFNDVPIDENTIFYFILEA
       extends [mscorlib]System.MulticastDelegate
{
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(object 'object',
                               native int 'method') runtime managed
  {
  } // end of method PFNDVPIDENTIFYFILEA::.ctor

  .method public hidebysig newslot virtual 
          instance int32  Invoke(native int hWnd,
                                 class [mscorlib]System.Text.StringBuilder  marshal( lpwstr) lpszName,
                                 valuetype Dopus.Viewer.Interop.Types.PluginFileInfo& lpVPFileInfo,
                                 native int hAbortEvent) runtime managed
  {
  } // end of method PFNDVPIDENTIFYFILEA::Invoke

  .method public hidebysig newslot virtual 
          instance class [mscorlib]System.IAsyncResult 
          BeginInvoke(native int hWnd,
                      class [mscorlib]System.Text.StringBuilder  marshal( lpwstr) lpszName,
                      valuetype Dopus.Viewer.Interop.Types.PluginFileInfo& lpVPFileInfo,
                      native int hAbortEvent,
                      class [mscorlib]System.AsyncCallback callback,
                      object 'object') runtime managed
  {
  } // end of method PFNDVPIDENTIFYFILEA::BeginInvoke

  .method public hidebysig newslot virtual 
          instance int32  EndInvoke(valuetype Dopus.Viewer.Interop.Types.PluginFileInfo& lpVPFileInfo,
                                    class [mscorlib]System.IAsyncResult result) runtime managed
  {
  } // end of method PFNDVPIDENTIFYFILEA::EndInvoke

} // end of class Dopus.Viewer.Interop.Types.PFNDVPIDENTIFYFILEA

.class public auto ansi sealed Dopus.Viewer.Interop.Types.PFNDVPIDENTIFYFILEBYTES
       extends [mscorlib]System.MulticastDelegate
{
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(object 'object',
                               native int 'method') runtime managed
  {
  } // end of method PFNDVPIDENTIFYFILEBYTES::.ctor

  .method public hidebysig newslot virtual 
          instance int32  Invoke(native int hWnd,
                                 class [mscorlib]System.Text.StringBuilder  marshal( lpwstr) lpszName,
                                 uint8& lpData,
                                 uint32 uiDataSize,
                                 valuetype Dopus.Viewer.Interop.Types.PluginFileInfo& lpVPFileInfo,
                                 uint32 dwStreamFlags) runtime managed
  {
  } // end of method PFNDVPIDENTIFYFILEBYTES::Invoke

  .method public hidebysig newslot virtual 
          instance class [mscorlib]System.IAsyncResult 
          BeginInvoke(native int hWnd,
                      class [mscorlib]System.Text.StringBuilder  marshal( lpwstr) lpszName,
                      uint8& lpData,
                      uint32 uiDataSize,
                      valuetype Dopus.Viewer.Interop.Types.PluginFileInfo& lpVPFileInfo,
                      uint32 dwStreamFlags,
                      class [mscorlib]System.AsyncCallback callback,
                      object 'object') runtime managed
  {
  } // end of method PFNDVPIDENTIFYFILEBYTES::BeginInvoke

  .method public hidebysig newslot virtual 
          instance int32  EndInvoke(uint8& lpData,
                                    valuetype Dopus.Viewer.Interop.Types.PluginFileInfo& lpVPFileInfo,
                                    class [mscorlib]System.IAsyncResult result) runtime managed
  {
  } // end of method PFNDVPIDENTIFYFILEBYTES::EndInvoke

} // end of class Dopus.Viewer.Interop.Types.PFNDVPIDENTIFYFILEBYTES

.class public auto ansi sealed Dopus.Viewer.Interop.Types.PFNDVPIDENTIFYFILESTREAM
       extends [mscorlib]System.MulticastDelegate
{
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(object 'object',
                               native int 'method') runtime managed
  {
  } // end of method PFNDVPIDENTIFYFILESTREAM::.ctor

  .method public hidebysig newslot virtual 
          instance int32  Invoke(native int hWnd,
                                 class [mscorlib]System.Runtime.InteropServices.ComTypes.IStream& lpStream,
                                 class [mscorlib]System.Text.StringBuilder  marshal( lpwstr) lpszName,
                                 valuetype Dopus.Viewer.Interop.Types.PluginFileInfo& lpVPFileInfo,
                                 uint32 dwStreamFlags) runtime managed
  {
  } // end of method PFNDVPIDENTIFYFILESTREAM::Invoke

  .method public hidebysig newslot virtual 
          instance class [mscorlib]System.IAsyncResult 
          BeginInvoke(native int hWnd,
                      class [mscorlib]System.Runtime.InteropServices.ComTypes.IStream& lpStream,
                      class [mscorlib]System.Text.StringBuilder  marshal( lpwstr) lpszName,
                      valuetype Dopus.Viewer.Interop.Types.PluginFileInfo& lpVPFileInfo,
                      uint32 dwStreamFlags,
                      class [mscorlib]System.AsyncCallback callback,
                      object 'object') runtime managed
  {
  } // end of method PFNDVPIDENTIFYFILESTREAM::BeginInvoke

  .method public hidebysig newslot virtual 
          instance int32  EndInvoke(class [mscorlib]System.Runtime.InteropServices.ComTypes.IStream& lpStream,
                                    valuetype Dopus.Viewer.Interop.Types.PluginFileInfo& lpVPFileInfo,
                                    class [mscorlib]System.IAsyncResult result) runtime managed
  {
  } // end of method PFNDVPIDENTIFYFILESTREAM::EndInvoke

} // end of class Dopus.Viewer.Interop.Types.PFNDVPIDENTIFYFILESTREAM

.class public auto ansi sealed Dopus.Viewer.Interop.Types.PFNDVPINIT
       extends [mscorlib]System.MulticastDelegate
{
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(object 'object',
                               native int 'method') runtime managed
  {
  } // end of method PFNDVPINIT::.ctor

  .method public hidebysig newslot virtual 
          instance int32  Invoke() runtime managed
  {
  } // end of method PFNDVPINIT::Invoke

  .method public hidebysig newslot virtual 
          instance class [mscorlib]System.IAsyncResult 
          BeginInvoke(class [mscorlib]System.AsyncCallback callback,
                      object 'object') runtime managed
  {
  } // end of method PFNDVPINIT::BeginInvoke

  .method public hidebysig newslot virtual 
          instance int32  EndInvoke(class [mscorlib]System.IAsyncResult result) runtime managed
  {
  } // end of method PFNDVPINIT::EndInvoke

} // end of class Dopus.Viewer.Interop.Types.PFNDVPINIT

.class public auto ansi sealed Dopus.Viewer.Interop.Types.PFNDVPINITEX
       extends [mscorlib]System.MulticastDelegate
{
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(object 'object',
                               native int 'method') runtime managed
  {
  } // end of method PFNDVPINITEX::.ctor

  .method public hidebysig newslot virtual 
          instance int32  Invoke(valuetype Dopus.Viewer.Interop.Types.DVPInitExData& pInitExData) runtime managed
  {
  } // end of method PFNDVPINITEX::Invoke

  .method public hidebysig newslot virtual 
          instance class [mscorlib]System.IAsyncResult 
          BeginInvoke(valuetype Dopus.Viewer.Interop.Types.DVPInitExData& pInitExData,
                      class [mscorlib]System.AsyncCallback callback,
                      object 'object') runtime managed
  {
  } // end of method PFNDVPINITEX::BeginInvoke

  .method public hidebysig newslot virtual 
          instance int32  EndInvoke(valuetype Dopus.Viewer.Interop.Types.DVPInitExData& pInitExData,
                                    class [mscorlib]System.IAsyncResult result) runtime managed
  {
  } // end of method PFNDVPINITEX::EndInvoke

} // end of class Dopus.Viewer.Interop.Types.PFNDVPINITEX

.class public auto ansi sealed Dopus.Viewer.Interop.Types.PFNDVPLOADBITMAP
       extends [mscorlib]System.MulticastDelegate
{
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(object 'object',
                               native int 'method') runtime managed
  {
  } // end of method PFNDVPLOADBITMAP::.ctor

  .method public hidebysig newslot virtual 
          instance native int  Invoke(native int hWnd,
                                      class [mscorlib]System.Text.StringBuilder  marshal( lpwstr) lpszName,
                                      valuetype Dopus.Viewer.Interop.Types.PluginFileInfo& lpVPFileInfo,
                                      valuetype [Dopus.NET]Dopus.Interop.Types.SIZE& lpszDesiredSize,
                                      native int hAbortEvent) runtime managed
  {
  } // end of method PFNDVPLOADBITMAP::Invoke

  .method public hidebysig newslot virtual 
          instance class [mscorlib]System.IAsyncResult 
          BeginInvoke(native int hWnd,
                      class [mscorlib]System.Text.StringBuilder  marshal( lpwstr) lpszName,
                      valuetype Dopus.Viewer.Interop.Types.PluginFileInfo& lpVPFileInfo,
                      valuetype [Dopus.NET]Dopus.Interop.Types.SIZE& lpszDesiredSize,
                      native int hAbortEvent,
                      class [mscorlib]System.AsyncCallback callback,
                      object 'object') runtime managed
  {
  } // end of method PFNDVPLOADBITMAP::BeginInvoke

  .method public hidebysig newslot virtual 
          instance native int  EndInvoke(valuetype Dopus.Viewer.Interop.Types.PluginFileInfo& lpVPFileInfo,
                                         valuetype [Dopus.NET]Dopus.Interop.Types.SIZE& lpszDesiredSize,
                                         class [mscorlib]System.IAsyncResult result) runtime managed
  {
  } // end of method PFNDVPLOADBITMAP::EndInvoke

} // end of class Dopus.Viewer.Interop.Types.PFNDVPLOADBITMAP

.class public auto ansi sealed Dopus.Viewer.Interop.Types.PFNDVPLOADBITMAPSTREAM
       extends [mscorlib]System.MulticastDelegate
{
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(object 'object',
                               native int 'method') runtime managed
  {
  } // end of method PFNDVPLOADBITMAPSTREAM::.ctor

  .method public hidebysig newslot virtual 
          instance native int  Invoke(native int hWnd,
                                      class [mscorlib]System.Runtime.InteropServices.ComTypes.IStream& lpStream,
                                      class [mscorlib]System.Text.StringBuilder  marshal( lpwstr) lpszName,
                                      valuetype Dopus.Viewer.Interop.Types.PluginFileInfo& lpVPFileInfo,
                                      valuetype [Dopus.NET]Dopus.Interop.Types.SIZE& lpszDesiredSize,
                                      uint32 dwStreamFlags) runtime managed
  {
  } // end of method PFNDVPLOADBITMAPSTREAM::Invoke

  .method public hidebysig newslot virtual 
          instance class [mscorlib]System.IAsyncResult 
          BeginInvoke(native int hWnd,
                      class [mscorlib]System.Runtime.InteropServices.ComTypes.IStream& lpStream,
                      class [mscorlib]System.Text.StringBuilder  marshal( lpwstr) lpszName,
                      valuetype Dopus.Viewer.Interop.Types.PluginFileInfo& lpVPFileInfo,
                      valuetype [Dopus.NET]Dopus.Interop.Types.SIZE& lpszDesiredSize,
                      uint32 dwStreamFlags,
                      class [mscorlib]System.AsyncCallback callback,
                      object 'object') runtime managed
  {
  } // end of method PFNDVPLOADBITMAPSTREAM::BeginInvoke

  .method public hidebysig newslot virtual 
          instance native int  EndInvoke(class [mscorlib]System.Runtime.InteropServices.ComTypes.IStream& lpStream,
                                         valuetype Dopus.Viewer.Interop.Types.PluginFileInfo& lpVPFileInfo,
                                         valuetype [Dopus.NET]Dopus.Interop.Types.SIZE& lpszDesiredSize,
                                         class [mscorlib]System.IAsyncResult result) runtime managed
  {
  } // end of method PFNDVPLOADBITMAPSTREAM::EndInvoke

} // end of class Dopus.Viewer.Interop.Types.PFNDVPLOADBITMAPSTREAM

.class public auto ansi sealed Dopus.Viewer.Interop.Types.PFNDVPLOADTEXT
       extends [mscorlib]System.MulticastDelegate
{
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(object 'object',
                               native int 'method') runtime managed
  {
  } // end of method PFNDVPLOADTEXT::.ctor

  .method public hidebysig newslot virtual 
          instance int32  Invoke(valuetype Dopus.Viewer.Interop.Types.DVPLoadTextData& lpLoadTextData) runtime managed
  {
  } // end of method PFNDVPLOADTEXT::Invoke

  .method public hidebysig newslot virtual 
          instance class [mscorlib]System.IAsyncResult 
          BeginInvoke(valuetype Dopus.Viewer.Interop.Types.DVPLoadTextData& lpLoadTextData,
                      class [mscorlib]System.AsyncCallback callback,
                      object 'object') runtime managed
  {
  } // end of method PFNDVPLOADTEXT::BeginInvoke

  .method public hidebysig newslot virtual 
          instance int32  EndInvoke(valuetype Dopus.Viewer.Interop.Types.DVPLoadTextData& lpLoadTextData,
                                    class [mscorlib]System.IAsyncResult result) runtime managed
  {
  } // end of method PFNDVPLOADTEXT::EndInvoke

} // end of class Dopus.Viewer.Interop.Types.PFNDVPLOADTEXT

.class public auto ansi sealed Dopus.Viewer.Interop.Types.PFNDVPSHOWPROPERTIES
       extends [mscorlib]System.MulticastDelegate
{
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(object 'object',
                               native int 'method') runtime managed
  {
  } // end of method PFNDVPSHOWPROPERTIES::.ctor

  .method public hidebysig newslot virtual 
          instance native int  Invoke(native int hWndParent,
                                      class [mscorlib]System.Text.StringBuilder  marshal( lpwstr) lpszName,
                                      valuetype Dopus.Viewer.Interop.Types.PluginFileInfo& lpVPFileInfo) runtime managed
  {
  } // end of method PFNDVPSHOWPROPERTIES::Invoke

  .method public hidebysig newslot virtual 
          instance class [mscorlib]System.IAsyncResult 
          BeginInvoke(native int hWndParent,
                      class [mscorlib]System.Text.StringBuilder  marshal( lpwstr) lpszName,
                      valuetype Dopus.Viewer.Interop.Types.PluginFileInfo& lpVPFileInfo,
                      class [mscorlib]System.AsyncCallback callback,
                      object 'object') runtime managed
  {
  } // end of method PFNDVPSHOWPROPERTIES::BeginInvoke

  .method public hidebysig newslot virtual 
          instance native int  EndInvoke(valuetype Dopus.Viewer.Interop.Types.PluginFileInfo& lpVPFileInfo,
                                         class [mscorlib]System.IAsyncResult result) runtime managed
  {
  } // end of method PFNDVPSHOWPROPERTIES::EndInvoke

} // end of class Dopus.Viewer.Interop.Types.PFNDVPSHOWPROPERTIES

.class public auto ansi sealed Dopus.Viewer.Interop.Types.PFNDVPSHOWPROPERTIESSTREAM
       extends [mscorlib]System.MulticastDelegate
{
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(object 'object',
                               native int 'method') runtime managed
  {
  } // end of method PFNDVPSHOWPROPERTIESSTREAM::.ctor

  .method public hidebysig newslot virtual 
          instance native int  Invoke(native int hWndParent,
                                      class [mscorlib]System.Runtime.InteropServices.ComTypes.IStream& lpStream,
                                      class [mscorlib]System.Text.StringBuilder  marshal( lpwstr) lpszName,
                                      valuetype Dopus.Viewer.Interop.Types.PluginFileInfo& lpVPFileInfo,
                                      uint32 dwStreamFlags) runtime managed
  {
  } // end of method PFNDVPSHOWPROPERTIESSTREAM::Invoke

  .method public hidebysig newslot virtual 
          instance class [mscorlib]System.IAsyncResult 
          BeginInvoke(native int hWndParent,
                      class [mscorlib]System.Runtime.InteropServices.ComTypes.IStream& lpStream,
                      class [mscorlib]System.Text.StringBuilder  marshal( lpwstr) lpszName,
                      valuetype Dopus.Viewer.Interop.Types.PluginFileInfo& lpVPFileInfo,
                      uint32 dwStreamFlags,
                      class [mscorlib]System.AsyncCallback callback,
                      object 'object') runtime managed
  {
  } // end of method PFNDVPSHOWPROPERTIESSTREAM::BeginInvoke

  .method public hidebysig newslot virtual 
          instance native int  EndInvoke(class [mscorlib]System.Runtime.InteropServices.ComTypes.IStream& lpStream,
                                         valuetype Dopus.Viewer.Interop.Types.PluginFileInfo& lpVPFileInfo,
                                         class [mscorlib]System.IAsyncResult result) runtime managed
  {
  } // end of method PFNDVPSHOWPROPERTIESSTREAM::EndInvoke

} // end of class Dopus.Viewer.Interop.Types.PFNDVPSHOWPROPERTIESSTREAM

.class public auto ansi sealed Dopus.Viewer.Interop.Types.PFNDVPUNINIT
       extends [mscorlib]System.MulticastDelegate
{
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(object 'object',
                               native int 'method') runtime managed
  {
  } // end of method PFNDVPUNINIT::.ctor

  .method public hidebysig newslot virtual 
          instance void  Invoke() runtime managed
  {
  } // end of method PFNDVPUNINIT::Invoke

  .method public hidebysig newslot virtual 
          instance class [mscorlib]System.IAsyncResult 
          BeginInvoke(class [mscorlib]System.AsyncCallback callback,
                      object 'object') runtime managed
  {
  } // end of method PFNDVPUNINIT::BeginInvoke

  .method public hidebysig newslot virtual 
          instance void  EndInvoke(class [mscorlib]System.IAsyncResult result) runtime managed
  {
  } // end of method PFNDVPUNINIT::EndInvoke

} // end of class Dopus.Viewer.Interop.Types.PFNDVPUNINIT

.class public auto ansi sealed Dopus.Viewer.Interop.Types.PFNDVPUSBSAFE
       extends [mscorlib]System.MulticastDelegate
{
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(object 'object',
                               native int 'method') runtime managed
  {
  } // end of method PFNDVPUSBSAFE::.ctor

  .method public hidebysig newslot virtual 
          instance int32  Invoke(valuetype Dopus.Viewer.Interop.Types.OpusUSBSafeData& pUSBSafeData) runtime managed
  {
  } // end of method PFNDVPUSBSAFE::Invoke

  .method public hidebysig newslot virtual 
          instance class [mscorlib]System.IAsyncResult 
          BeginInvoke(valuetype Dopus.Viewer.Interop.Types.OpusUSBSafeData& pUSBSafeData,
                      class [mscorlib]System.AsyncCallback callback,
                      object 'object') runtime managed
  {
  } // end of method PFNDVPUSBSAFE::BeginInvoke

  .method public hidebysig newslot virtual 
          instance int32  EndInvoke(valuetype Dopus.Viewer.Interop.Types.OpusUSBSafeData& pUSBSafeData,
                                    class [mscorlib]System.IAsyncResult result) runtime managed
  {
  } // end of method PFNDVPUSBSAFE::EndInvoke

} // end of class Dopus.Viewer.Interop.Types.PFNDVPUSBSAFE

.class public sequential autochar sealed beforefieldinit Dopus.Viewer.Interop.Types.PluginInfo
       extends [mscorlib]System.ValueType
{
  .field public uint32 cbSize
  .field public valuetype Dopus.Viewer.Interop.Enums.PluginInfoFlags Flags
  .field public uint32 VersionHigh
  .field public uint32 VersionLow
  .field public  marshal( lptstr) string HandleExts
  .field public  marshal( lptstr) string Name
  .field public  marshal( lptstr) string Description
  .field public  marshal( lptstr) string Copyright
  .field public  marshal( lptstr) string URL
  .field public uint32 cchHandleExtsMax
  .field public uint32 cchNameMax
  .field public uint32 cchDescriptionMax
  .field public uint32 cchCopyrightMax
  .field public uint32 cchURLMax
  .field public uint64 dwlMinFileSize
  .field public uint64 dwlMaxFileSize
  .field public uint64 dwlMinPreviewFileSize
  .field public uint64 dwlMaxPreviewFileSize
  .field public valuetype Dopus.Viewer.Interop.Enums.MajorFileType MajorFileType
  .field public valuetype [mscorlib]System.Guid ID
  .field public uint32 dwOpusVerMajor
  .field public uint32 dwOpusVerMinor
  .field public valuetype Dopus.Viewer.Interop.Enums.PluginInfoInitFlags dwInitFlags
  .field public valuetype [Dopus.NET]Dopus.Interop.Types.HICON SmallIcon
  .field public valuetype [Dopus.NET]Dopus.Interop.Types.HICON LargeIcon
} // end of class Dopus.Viewer.Interop.Types.PluginInfo

.class private auto ansi beforefieldinit Dopus.Viewer.Properties.Resources
       extends [mscorlib]System.Object
{
  .custom instance void [mscorlib]System.Diagnostics.DebuggerNonUserCodeAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System]System.CodeDom.Compiler.GeneratedCodeAttribute::.ctor(string,
                                                                                      string) = ( 01 00 33 53 79 73 74 65 6D 2E 52 65 73 6F 75 72   // ..3System.Resour
                                                                                                  63 65 73 2E 54 6F 6F 6C 73 2E 53 74 72 6F 6E 67   // ces.Tools.Strong
                                                                                                  6C 79 54 79 70 65 64 52 65 73 6F 75 72 63 65 42   // lyTypedResourceB
                                                                                                  75 69 6C 64 65 72 07 34 2E 30 2E 30 2E 30 00 00 ) // uilder.4.0.0.0..
  .field private static class [mscorlib]System.Resources.ResourceManager resourceMan
  .field private static class [mscorlib]System.Globalization.CultureInfo resourceCulture
  .method assembly hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  ret
  } // end of method Resources::.ctor

  .method assembly hidebysig specialname static 
          class [mscorlib]System.Resources.ResourceManager 
          get_ResourceManager() cil managed
  {
    // Code size       51 (0x33)
    .maxstack  2
    .locals init (class [mscorlib]System.Resources.ResourceManager V_0)
    IL_0000:  ldsfld     class [mscorlib]System.Resources.ResourceManager Dopus.Viewer.Properties.Resources::resourceMan
    IL_0005:  ldnull
    IL_0006:  call       bool [mscorlib]System.Object::ReferenceEquals(object,
                                                                       object)
    IL_000b:  brfalse.s  IL_002d

    IL_000d:  ldstr      "Dopus.Viewer.Properties.Resources"
    IL_0012:  ldtoken    Dopus.Viewer.Properties.Resources
    IL_0017:  call       class [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
    IL_001c:  callvirt   instance class [mscorlib]System.Reflection.Assembly [mscorlib]System.Type::get_Assembly()
    IL_0021:  newobj     instance void [mscorlib]System.Resources.ResourceManager::.ctor(string,
                                                                                         class [mscorlib]System.Reflection.Assembly)
    IL_0026:  stloc.0
    IL_0027:  ldloc.0
    IL_0028:  stsfld     class [mscorlib]System.Resources.ResourceManager Dopus.Viewer.Properties.Resources::resourceMan
    IL_002d:  ldsfld     class [mscorlib]System.Resources.ResourceManager Dopus.Viewer.Properties.Resources::resourceMan
    IL_0032:  ret
  } // end of method Resources::get_ResourceManager

  .method assembly hidebysig specialname static 
          class [mscorlib]System.Globalization.CultureInfo 
          get_Culture() cil managed
  {
    // Code size       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     class [mscorlib]System.Globalization.CultureInfo Dopus.Viewer.Properties.Resources::resourceCulture
    IL_0005:  ret
  } // end of method Resources::get_Culture

  .method assembly hidebysig specialname static 
          void  set_Culture(class [mscorlib]System.Globalization.CultureInfo 'value') cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  stsfld     class [mscorlib]System.Globalization.CultureInfo Dopus.Viewer.Properties.Resources::resourceCulture
    IL_0006:  ret
  } // end of method Resources::set_Culture

  .method assembly hidebysig specialname static 
          class [System.Drawing]System.Drawing.Icon 
          get_PluginLarge() cil managed
  {
    // Code size       28 (0x1c)
    .maxstack  3
    .locals init (object V_0)
    IL_0000:  call       class [mscorlib]System.Resources.ResourceManager Dopus.Viewer.Properties.Resources::get_ResourceManager()
    IL_0005:  ldstr      "PluginLarge"
    IL_000a:  ldsfld     class [mscorlib]System.Globalization.CultureInfo Dopus.Viewer.Properties.Resources::resourceCulture
    IL_000f:  callvirt   instance object [mscorlib]System.Resources.ResourceManager::GetObject(string,
                                                                                               class [mscorlib]System.Globalization.CultureInfo)
    IL_0014:  stloc.0
    IL_0015:  ldloc.0
    IL_0016:  castclass  [System.Drawing]System.Drawing.Icon
    IL_001b:  ret
  } // end of method Resources::get_PluginLarge

  .method assembly hidebysig specialname static 
          class [System.Drawing]System.Drawing.Icon 
          get_PluginSmall() cil managed
  {
    // Code size       28 (0x1c)
    .maxstack  3
    .locals init (object V_0)
    IL_0000:  call       class [mscorlib]System.Resources.ResourceManager Dopus.Viewer.Properties.Resources::get_ResourceManager()
    IL_0005:  ldstr      "PluginSmall"
    IL_000a:  ldsfld     class [mscorlib]System.Globalization.CultureInfo Dopus.Viewer.Properties.Resources::resourceCulture
    IL_000f:  callvirt   instance object [mscorlib]System.Resources.ResourceManager::GetObject(string,
                                                                                               class [mscorlib]System.Globalization.CultureInfo)
    IL_0014:  stloc.0
    IL_0015:  ldloc.0
    IL_0016:  castclass  [System.Drawing]System.Drawing.Icon
    IL_001b:  ret
  } // end of method Resources::get_PluginSmall

  .property class [mscorlib]System.Resources.ResourceManager
          ResourceManager()
  {
    .custom instance void [System]System.ComponentModel.EditorBrowsableAttribute::.ctor(valuetype [System]System.ComponentModel.EditorBrowsableState) = ( 01 00 02 00 00 00 00 00 ) 
    .get class [mscorlib]System.Resources.ResourceManager Dopus.Viewer.Properties.Resources::get_ResourceManager()
  } // end of property Resources::ResourceManager
  .property class [mscorlib]System.Globalization.CultureInfo
          Culture()
  {
    .custom instance void [System]System.ComponentModel.EditorBrowsableAttribute::.ctor(valuetype [System]System.ComponentModel.EditorBrowsableState) = ( 01 00 02 00 00 00 00 00 ) 
    .get class [mscorlib]System.Globalization.CultureInfo Dopus.Viewer.Properties.Resources::get_Culture()
    .set void Dopus.Viewer.Properties.Resources::set_Culture(class [mscorlib]System.Globalization.CultureInfo)
  } // end of property Resources::Culture
  .property class [System.Drawing]System.Drawing.Icon
          PluginLarge()
  {
    .get class [System.Drawing]System.Drawing.Icon Dopus.Viewer.Properties.Resources::get_PluginLarge()
  } // end of property Resources::PluginLarge
  .property class [System.Drawing]System.Drawing.Icon
          PluginSmall()
  {
    .get class [System.Drawing]System.Drawing.Icon Dopus.Viewer.Properties.Resources::get_PluginSmall()
  } // end of property Resources::PluginSmall
} // end of class Dopus.Viewer.Properties.Resources

.class private auto ansi serializable beforefieldinit Dopus.Viewer.DllExportAttribute
       extends [mscorlib]System.Attribute
{
  .custom instance void [mscorlib]System.AttributeUsageAttribute::.ctor(valuetype [mscorlib]System.AttributeTargets) = ( 01 00 40 00 00 00 01 00 54 02 0D 41 6C 6C 6F 77   // ..@.....T..Allow
                                                                                                                         4D 75 6C 74 69 70 6C 65 00 )                      // Multiple.
  .field private valuetype [mscorlib]System.Runtime.InteropServices.CallingConvention '<CallingConvention>k__BackingField'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private string '<ExportName>k__BackingField'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname instance valuetype [mscorlib]System.Runtime.InteropServices.CallingConvention 
          get_CallingConvention() cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [mscorlib]System.Runtime.InteropServices.CallingConvention Dopus.Viewer.DllExportAttribute::'<CallingConvention>k__BackingField'
    IL_0006:  ret
  } // end of method DllExportAttribute::get_CallingConvention

  .method public hidebysig specialname instance void 
          set_CallingConvention(valuetype [mscorlib]System.Runtime.InteropServices.CallingConvention 'value') cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [mscorlib]System.Runtime.InteropServices.CallingConvention Dopus.Viewer.DllExportAttribute::'<CallingConvention>k__BackingField'
    IL_0007:  ret
  } // end of method DllExportAttribute::set_CallingConvention

  .method public hidebysig specialname instance string 
          get_ExportName() cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string Dopus.Viewer.DllExportAttribute::'<ExportName>k__BackingField'
    IL_0006:  ret
  } // end of method DllExportAttribute::get_ExportName

  .method public hidebysig specialname instance void 
          set_ExportName(string 'value') cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string Dopus.Viewer.DllExportAttribute::'<ExportName>k__BackingField'
    IL_0007:  ret
  } // end of method DllExportAttribute::set_ExportName

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Attribute::.ctor()
    IL_0006:  ret
  } // end of method DllExportAttribute::.ctor

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(string exportName) cil managed
  {
    // Code size       9 (0x9)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldc.i4.3
    IL_0003:  call       instance void Dopus.Viewer.DllExportAttribute::.ctor(string,
                                                                              valuetype [mscorlib]System.Runtime.InteropServices.CallingConvention)
    IL_0008:  ret
  } // end of method DllExportAttribute::.ctor

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(string exportName,
                               valuetype [mscorlib]System.Runtime.InteropServices.CallingConvention callingConvention) cil managed
  {
    // Code size       21 (0x15)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Attribute::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  ldarg.1
    IL_0008:  call       instance void Dopus.Viewer.DllExportAttribute::set_ExportName(string)
    IL_000d:  ldarg.0
    IL_000e:  ldarg.2
    IL_000f:  call       instance void Dopus.Viewer.DllExportAttribute::set_CallingConvention(valuetype [mscorlib]System.Runtime.InteropServices.CallingConvention)
    IL_0014:  ret
  } // end of method DllExportAttribute::.ctor

  .property instance valuetype [mscorlib]System.Runtime.InteropServices.CallingConvention
          CallingConvention()
  {
    .get instance valuetype [mscorlib]System.Runtime.InteropServices.CallingConvention Dopus.Viewer.DllExportAttribute::get_CallingConvention()
    .set instance void Dopus.Viewer.DllExportAttribute::set_CallingConvention(valuetype [mscorlib]System.Runtime.InteropServices.CallingConvention)
  } // end of property DllExportAttribute::CallingConvention
  .property instance string ExportName()
  {
    .get instance string Dopus.Viewer.DllExportAttribute::get_ExportName()
    .set instance void Dopus.Viewer.DllExportAttribute::set_ExportName(string)
  } // end of property DllExportAttribute::ExportName
} // end of class Dopus.Viewer.DllExportAttribute

.class public abstract auto ansi sealed beforefieldinit Dopus.Viewer.Viewer
       extends [mscorlib]System.Object
{
  .field private static valuetype [Dopus.NET]Dopus.Interop.Types.HWND hwndDopusOutputWindow
  .method public hidebysig static bool 
          marshal( bool) 
          DVP_Init() cil managed
  {
    .custom instance void Dopus.Viewer.DllExportAttribute::.ctor(string,
                                                                 valuetype [mscorlib]System.Runtime.InteropServices.CallingConvention) = ( 01 00 08 44 56 50 5F 49 6E 69 74 03 00 00 00 00   // ...DVP_Init.....
                                                                                                                                           00 ) 
    // Code size       36 (0x24)
    .maxstack  4
    .locals init (object[] V_0)
    IL_0000:  ldstr      "{0}.{1}"
    IL_0005:  ldc.i4.2
    IL_0006:  newarr     [mscorlib]System.Object
    IL_000b:  stloc.0
    IL_000c:  ldloc.0
    IL_000d:  ldc.i4.0
    IL_000e:  call       string Dopus.Viewer.Config.Build.Props::get_Filename()
    IL_0013:  stelem.ref
    IL_0014:  ldloc.0
    IL_0015:  ldc.i4.1
    IL_0016:  ldstr      "DVP_Init"
    IL_001b:  stelem.ref
    IL_001c:  ldloc.0
    IL_001d:  call       void [Dopus.NET]Dopus.Interop.Debug::Log(string,
                                                                  object[])
    IL_0022:  ldc.i4.1
    IL_0023:  ret
  } // end of method Viewer::DVP_Init

  .method public hidebysig static bool 
          marshal( bool) 
          DVP_InitEx(valuetype Dopus.Viewer.Interop.Types.DVPInitExData& pInitExData) cil managed
  {
    .custom instance void Dopus.Viewer.DllExportAttribute::.ctor(string,
                                                                 valuetype [mscorlib]System.Runtime.InteropServices.CallingConvention) = ( 01 00 0A 44 56 50 5F 49 6E 69 74 45 78 03 00 00   // ...DVP_InitEx...
                                                                                                                                           00 00 00 ) 
    // Code size       47 (0x2f)
    .maxstack  4
    .locals init (object[] V_0)
    IL_0000:  ldstr      "{0}.{1}"
    IL_0005:  ldc.i4.2
    IL_0006:  newarr     [mscorlib]System.Object
    IL_000b:  stloc.0
    IL_000c:  ldloc.0
    IL_000d:  ldc.i4.0
    IL_000e:  call       string Dopus.Viewer.Config.Build.Props::get_Filename()
    IL_0013:  stelem.ref
    IL_0014:  ldloc.0
    IL_0015:  ldc.i4.1
    IL_0016:  ldstr      "DVP_InitEx"
    IL_001b:  stelem.ref
    IL_001c:  ldloc.0
    IL_001d:  call       void [Dopus.NET]Dopus.Interop.Debug::Log(string,
                                                                  object[])
    IL_0022:  ldarg.0
    IL_0023:  ldfld      valuetype [Dopus.NET]Dopus.Interop.Types.HWND Dopus.Viewer.Interop.Types.DVPInitExData::hwndDOpusMsgWindow
    IL_0028:  stsfld     valuetype [Dopus.NET]Dopus.Interop.Types.HWND Dopus.Viewer.Viewer::hwndDopusOutputWindow
    IL_002d:  ldc.i4.1
    IL_002e:  ret
  } // end of method Viewer::DVP_InitEx

  .method public hidebysig static bool 
          marshal( bool) 
          DVP_USBSafe(valuetype Dopus.Viewer.Interop.Types.OpusUSBSafeData& pUSBSafeData) cil managed
  {
    .custom instance void Dopus.Viewer.DllExportAttribute::.ctor(string,
                                                                 valuetype [mscorlib]System.Runtime.InteropServices.CallingConvention) = ( 01 00 0B 44 56 50 5F 55 53 42 53 61 66 65 03 00   // ...DVP_USBSafe..
                                                                                                                                           00 00 00 00 ) 
    // Code size       36 (0x24)
    .maxstack  4
    .locals init (object[] V_0)
    IL_0000:  ldstr      "{0}.{1}"
    IL_0005:  ldc.i4.2
    IL_0006:  newarr     [mscorlib]System.Object
    IL_000b:  stloc.0
    IL_000c:  ldloc.0
    IL_000d:  ldc.i4.0
    IL_000e:  call       string Dopus.Viewer.Config.Build.Props::get_Filename()
    IL_0013:  stelem.ref
    IL_0014:  ldloc.0
    IL_0015:  ldc.i4.1
    IL_0016:  ldstr      "DVP_USBSafe"
    IL_001b:  stelem.ref
    IL_001c:  ldloc.0
    IL_001d:  call       void [Dopus.NET]Dopus.Interop.Debug::Log(string,
                                                                  object[])
    IL_0022:  ldc.i4.1
    IL_0023:  ret
  } // end of method Viewer::DVP_USBSafe

  .method public hidebysig static void  DVP_Uninit() cil managed
  {
    .custom instance void Dopus.Viewer.DllExportAttribute::.ctor(string,
                                                                 valuetype [mscorlib]System.Runtime.InteropServices.CallingConvention) = ( 01 00 0A 44 56 50 5F 55 6E 69 6E 69 74 03 00 00   // ...DVP_Uninit...
                                                                                                                                           00 00 00 ) 
    // Code size       35 (0x23)
    .maxstack  4
    .locals init (object[] V_0)
    IL_0000:  ldstr      "{0}.{1}"
    IL_0005:  ldc.i4.2
    IL_0006:  newarr     [mscorlib]System.Object
    IL_000b:  stloc.0
    IL_000c:  ldloc.0
    IL_000d:  ldc.i4.0
    IL_000e:  call       string Dopus.Viewer.Config.Build.Props::get_Filename()
    IL_0013:  stelem.ref
    IL_0014:  ldloc.0
    IL_0015:  ldc.i4.1
    IL_0016:  ldstr      "DVP_Uninit"
    IL_001b:  stelem.ref
    IL_001c:  ldloc.0
    IL_001d:  call       void [Dopus.NET]Dopus.Interop.Debug::Log(string,
                                                                  object[])
    IL_0022:  ret
  } // end of method Viewer::DVP_Uninit

  .method public hidebysig static bool 
          marshal( bool) 
          DVP_Identify(valuetype Dopus.Viewer.Interop.Types.PluginInfo& VPInfo) cil managed
  {
    .custom instance void Dopus.Viewer.DllExportAttribute::.ctor(string,
                                                                 valuetype [mscorlib]System.Runtime.InteropServices.CallingConvention) = ( 01 00 0C 44 56 50 5F 49 64 65 6E 74 69 66 79 03   // ...DVP_Identify.
                                                                                                                                           00 00 00 00 00 ) 
    // Code size       163 (0xa3)
    .maxstack  4
    .locals init (object[] V_0)
    IL_0000:  ldstr      "{0}.{1}"
    IL_0005:  ldc.i4.2
    IL_0006:  newarr     [mscorlib]System.Object
    IL_000b:  stloc.0
    IL_000c:  ldloc.0
    IL_000d:  ldc.i4.0
    IL_000e:  call       string Dopus.Viewer.Config.Build.Props::get_Filename()
    IL_0013:  stelem.ref
    IL_0014:  ldloc.0
    IL_0015:  ldc.i4.1
    IL_0016:  ldstr      "DVP_IdentifyW"
    IL_001b:  stelem.ref
    IL_001c:  ldloc.0
    IL_001d:  call       void [Dopus.NET]Dopus.Interop.Debug::Log(string,
                                                                  object[])
    IL_0022:  ldarg.0
    IL_0023:  call       valuetype [mscorlib]System.Guid Dopus.Viewer.Config.Build.Props::get_Guid()
    IL_0028:  stfld      valuetype [mscorlib]System.Guid Dopus.Viewer.Interop.Types.PluginInfo::ID
    IL_002d:  ldarg.0
    IL_002e:  call       string Dopus.Viewer.Config.Build.Props::get_Title()
    IL_0033:  stfld      string Dopus.Viewer.Interop.Types.PluginInfo::Name
    IL_0038:  ldarg.0
    IL_0039:  call       string Dopus.Viewer.Config.Build.Props::get_Description()
    IL_003e:  stfld      string Dopus.Viewer.Interop.Types.PluginInfo::Description
    IL_0043:  ldarg.0
    IL_0044:  call       string Dopus.Viewer.Config.Build.Props::get_Copyright()
    IL_0049:  stfld      string Dopus.Viewer.Interop.Types.PluginInfo::Copyright
    IL_004e:  ldarg.0
    IL_004f:  ldc.i4.3
    IL_0050:  stfld      valuetype Dopus.Viewer.Interop.Enums.MajorFileType Dopus.Viewer.Interop.Types.PluginInfo::MajorFileType
    IL_0055:  ldarg.0
    IL_0056:  ldc.i4.s   16
    IL_0058:  stfld      valuetype Dopus.Viewer.Interop.Enums.PluginInfoFlags Dopus.Viewer.Interop.Types.PluginInfo::Flags
    IL_005d:  ldarg.0
    IL_005e:  ldc.i4.1
    IL_005f:  stfld      uint32 Dopus.Viewer.Interop.Types.PluginInfo::VersionHigh
    IL_0064:  ldarg.0
    IL_0065:  ldc.i4.0
    IL_0066:  stfld      uint32 Dopus.Viewer.Interop.Types.PluginInfo::VersionLow
    IL_006b:  ldarg.0
    IL_006c:  ldstr      ".viewtest"
    IL_0071:  stfld      string Dopus.Viewer.Interop.Types.PluginInfo::HandleExts
    IL_0076:  ldarg.0
    IL_0077:  ldstr      "http://resource.dopus.com/"
    IL_007c:  stfld      string Dopus.Viewer.Interop.Types.PluginInfo::URL
    IL_0081:  ldarg.0
    IL_0082:  call       class [System.Drawing]System.Drawing.Icon Dopus.Viewer.Properties.Resources::get_PluginSmall()
    IL_0087:  call       valuetype [Dopus.NET]Dopus.Interop.Types.HICON [Dopus.NET]Dopus.Interop.Types.HICON::op_Implicit(class [System.Drawing]System.Drawing.Icon)
    IL_008c:  stfld      valuetype [Dopus.NET]Dopus.Interop.Types.HICON Dopus.Viewer.Interop.Types.PluginInfo::SmallIcon
    IL_0091:  ldarg.0
    IL_0092:  call       class [System.Drawing]System.Drawing.Icon Dopus.Viewer.Properties.Resources::get_PluginLarge()
    IL_0097:  call       valuetype [Dopus.NET]Dopus.Interop.Types.HICON [Dopus.NET]Dopus.Interop.Types.HICON::op_Implicit(class [System.Drawing]System.Drawing.Icon)
    IL_009c:  stfld      valuetype [Dopus.NET]Dopus.Interop.Types.HICON Dopus.Viewer.Interop.Types.PluginInfo::LargeIcon
    IL_00a1:  ldc.i4.0
    IL_00a2:  ret
  } // end of method Viewer::DVP_Identify

  .method public hidebysig static bool 
          marshal( bool) 
          DVP_IdentifyFile(valuetype [Dopus.NET]Dopus.Interop.Types.HWND hWnd,
                           class [mscorlib]System.Text.StringBuilder  marshal( lptstr) lpszName,
                           valuetype Dopus.Viewer.Interop.Types.PluginFileInfo& lpVPFileInfo,
                           valuetype [Dopus.NET]Dopus.Interop.Types.HANDLE hAbortEvent) cil managed
  {
    .custom instance void Dopus.Viewer.DllExportAttribute::.ctor(string,
                                                                 valuetype [mscorlib]System.Runtime.InteropServices.CallingConvention) = ( 01 00 10 44 56 50 5F 49 64 65 6E 74 69 66 79 46   // ...DVP_IdentifyF
                                                                                                                                           69 6C 65 03 00 00 00 00 00 )                      // ile......
    // Code size       36 (0x24)
    .maxstack  4
    .locals init (object[] V_0)
    IL_0000:  ldstr      "{0}.{1}"
    IL_0005:  ldc.i4.2
    IL_0006:  newarr     [mscorlib]System.Object
    IL_000b:  stloc.0
    IL_000c:  ldloc.0
    IL_000d:  ldc.i4.0
    IL_000e:  call       string Dopus.Viewer.Config.Build.Props::get_Filename()
    IL_0013:  stelem.ref
    IL_0014:  ldloc.0
    IL_0015:  ldc.i4.1
    IL_0016:  ldstr      "DVP_IdentifyFileW"
    IL_001b:  stelem.ref
    IL_001c:  ldloc.0
    IL_001d:  call       void [Dopus.NET]Dopus.Interop.Debug::Log(string,
                                                                  object[])
    IL_0022:  ldc.i4.0
    IL_0023:  ret
  } // end of method Viewer::DVP_IdentifyFile

  .method public hidebysig static bool 
          marshal( bool) 
          DVP_IdentifyFileStream(valuetype [Dopus.NET]Dopus.Interop.Types.HWND hWnd,
                                 class [mscorlib]System.Runtime.InteropServices.ComTypes.IStream& lpStream,
                                 class [mscorlib]System.Text.StringBuilder  marshal( lptstr) lpszName,
                                 valuetype Dopus.Viewer.Interop.Types.PluginFileInfo& lpVPFileInfo,
                                 uint32 dwStreamFlags) cil managed
  {
    .custom instance void Dopus.Viewer.DllExportAttribute::.ctor(string,
                                                                 valuetype [mscorlib]System.Runtime.InteropServices.CallingConvention) = ( 01 00 16 44 56 50 5F 49 64 65 6E 74 69 66 79 46   // ...DVP_IdentifyF
                                                                                                                                           69 6C 65 53 74 72 65 61 6D 03 00 00 00 00 00 )    // ileStream......
    // Code size       36 (0x24)
    .maxstack  4
    .locals init (object[] V_0)
    IL_0000:  ldstr      "{0}.{1}"
    IL_0005:  ldc.i4.2
    IL_0006:  newarr     [mscorlib]System.Object
    IL_000b:  stloc.0
    IL_000c:  ldloc.0
    IL_000d:  ldc.i4.0
    IL_000e:  call       string Dopus.Viewer.Config.Build.Props::get_Filename()
    IL_0013:  stelem.ref
    IL_0014:  ldloc.0
    IL_0015:  ldc.i4.1
    IL_0016:  ldstr      "DVP_IdentifyFileStreamW"
    IL_001b:  stelem.ref
    IL_001c:  ldloc.0
    IL_001d:  call       void [Dopus.NET]Dopus.Interop.Debug::Log(string,
                                                                  object[])
    IL_0022:  ldc.i4.0
    IL_0023:  ret
  } // end of method Viewer::DVP_IdentifyFileStream

  .method public hidebysig static native int 
          DVP_LoadBitmap(valuetype [Dopus.NET]Dopus.Interop.Types.HWND hWnd,
                         class [mscorlib]System.Text.StringBuilder  marshal( lptstr) lpszName,
                         valuetype Dopus.Viewer.Interop.Types.PluginFileInfo& lpVPFileInfo,
                         valuetype [Dopus.NET]Dopus.Interop.Types.SIZE& lpszSize,
                         valuetype [Dopus.NET]Dopus.Interop.Types.HANDLE hAbortEvent) cil managed
  {
    // Code size       40 (0x28)
    .maxstack  4
    .locals init (object[] V_0)
    IL_0000:  ldstr      "{0}.{1}"
    IL_0005:  ldc.i4.2
    IL_0006:  newarr     [mscorlib]System.Object
    IL_000b:  stloc.0
    IL_000c:  ldloc.0
    IL_000d:  ldc.i4.0
    IL_000e:  call       string Dopus.Viewer.Config.Build.Props::get_Filename()
    IL_0013:  stelem.ref
    IL_0014:  ldloc.0
    IL_0015:  ldc.i4.1
    IL_0016:  ldstr      "DVP_LoadBitmapW"
    IL_001b:  stelem.ref
    IL_001c:  ldloc.0
    IL_001d:  call       void [Dopus.NET]Dopus.Interop.Debug::Log(string,
                                                                  object[])
    IL_0022:  ldsfld     native int [mscorlib]System.IntPtr::Zero
    IL_0027:  ret
  } // end of method Viewer::DVP_LoadBitmap

  .method public hidebysig static native int 
          DVP_LoadBitmapStream(valuetype [Dopus.NET]Dopus.Interop.Types.HWND hWnd,
                               class [mscorlib]System.Runtime.InteropServices.ComTypes.IStream& lpStream,
                               class [mscorlib]System.Text.StringBuilder  marshal( lptstr) lpszName,
                               valuetype Dopus.Viewer.Interop.Types.PluginFileInfo& lpVPFileInfo,
                               valuetype [Dopus.NET]Dopus.Interop.Types.SIZE& lpszSize,
                               uint32 dwStreamFlags) cil managed
  {
    // Code size       40 (0x28)
    .maxstack  4
    .locals init (object[] V_0)
    IL_0000:  ldstr      "{0}.{1}"
    IL_0005:  ldc.i4.2
    IL_0006:  newarr     [mscorlib]System.Object
    IL_000b:  stloc.0
    IL_000c:  ldloc.0
    IL_000d:  ldc.i4.0
    IL_000e:  call       string Dopus.Viewer.Config.Build.Props::get_Filename()
    IL_0013:  stelem.ref
    IL_0014:  ldloc.0
    IL_0015:  ldc.i4.1
    IL_0016:  ldstr      "DVP_LoadBitmapStreamW"
    IL_001b:  stelem.ref
    IL_001c:  ldloc.0
    IL_001d:  call       void [Dopus.NET]Dopus.Interop.Debug::Log(string,
                                                                  object[])
    IL_0022:  ldsfld     native int [mscorlib]System.IntPtr::Zero
    IL_0027:  ret
  } // end of method Viewer::DVP_LoadBitmapStream

  .method public hidebysig static bool 
          marshal( bool) 
          DVP_LoadText(valuetype Dopus.Viewer.Interop.Types.DVPLoadTextData& lpLoadTextData) cil managed
  {
    // Code size       36 (0x24)
    .maxstack  4
    .locals init (object[] V_0)
    IL_0000:  ldstr      "{0}.{1}"
    IL_0005:  ldc.i4.2
    IL_0006:  newarr     [mscorlib]System.Object
    IL_000b:  stloc.0
    IL_000c:  ldloc.0
    IL_000d:  ldc.i4.0
    IL_000e:  call       string Dopus.Viewer.Config.Build.Props::get_Filename()
    IL_0013:  stelem.ref
    IL_0014:  ldloc.0
    IL_0015:  ldc.i4.1
    IL_0016:  ldstr      "DVP_LoadTextW"
    IL_001b:  stelem.ref
    IL_001c:  ldloc.0
    IL_001d:  call       void [Dopus.NET]Dopus.Interop.Debug::Log(string,
                                                                  object[])
    IL_0022:  ldc.i4.0
    IL_0023:  ret
  } // end of method Viewer::DVP_LoadText

  .method public hidebysig static native int 
          DVP_CreateViewer(valuetype [Dopus.NET]Dopus.Interop.Types.HWND hWndParent,
                           valuetype [Dopus.NET]Dopus.Interop.Types.RECT& lpRc,
                           uint32 dwFlags) cil managed
  {
    // Code size       40 (0x28)
    .maxstack  4
    .locals init (object[] V_0)
    IL_0000:  ldstr      "{0}.{1}"
    IL_0005:  ldc.i4.2
    IL_0006:  newarr     [mscorlib]System.Object
    IL_000b:  stloc.0
    IL_000c:  ldloc.0
    IL_000d:  ldc.i4.0
    IL_000e:  call       string Dopus.Viewer.Config.Build.Props::get_Filename()
    IL_0013:  stelem.ref
    IL_0014:  ldloc.0
    IL_0015:  ldc.i4.1
    IL_0016:  ldstr      "DVP_CreateViewer"
    IL_001b:  stelem.ref
    IL_001c:  ldloc.0
    IL_001d:  call       void [Dopus.NET]Dopus.Interop.Debug::Log(string,
                                                                  object[])
    IL_0022:  ldsfld     native int [mscorlib]System.IntPtr::Zero
    IL_0027:  ret
  } // end of method Viewer::DVP_CreateViewer

  .method public hidebysig static bool 
          marshal( bool) 
          DVP_GetFileInfoFile(valuetype [Dopus.NET]Dopus.Interop.Types.HWND hWnd,
                              class [mscorlib]System.Text.StringBuilder  marshal( lptstr) lpszName,
                              valuetype Dopus.Viewer.Interop.Types.PluginFileInfo& lpVPFileInfo,
                              valuetype Dopus.Viewer.Interop.Types.FileInfoHeader& lpFIH,
                              valuetype [Dopus.NET]Dopus.Interop.Types.HANDLE hAbortEvent) cil managed
  {
    // Code size       36 (0x24)
    .maxstack  4
    .locals init (object[] V_0)
    IL_0000:  ldstr      "{0}.{1}"
    IL_0005:  ldc.i4.2
    IL_0006:  newarr     [mscorlib]System.Object
    IL_000b:  stloc.0
    IL_000c:  ldloc.0
    IL_000d:  ldc.i4.0
    IL_000e:  call       string Dopus.Viewer.Config.Build.Props::get_Filename()
    IL_0013:  stelem.ref
    IL_0014:  ldloc.0
    IL_0015:  ldc.i4.1
    IL_0016:  ldstr      "DVP_GetFileInfoFileW"
    IL_001b:  stelem.ref
    IL_001c:  ldloc.0
    IL_001d:  call       void [Dopus.NET]Dopus.Interop.Debug::Log(string,
                                                                  object[])
    IL_0022:  ldc.i4.0
    IL_0023:  ret
  } // end of method Viewer::DVP_GetFileInfoFile

  .method public hidebysig static bool 
          marshal( bool) 
          DVP_GetFileInfoFileStream(valuetype [Dopus.NET]Dopus.Interop.Types.HWND hWnd,
                                    class [mscorlib]System.Text.StringBuilder  marshal( lptstr) lpStream,
                                    class [mscorlib]System.Text.StringBuilder  marshal( lptstr) lpszName,
                                    valuetype Dopus.Viewer.Interop.Types.PluginFileInfo& lpVPFileInfo,
                                    valuetype Dopus.Viewer.Interop.Types.FileInfoHeader& lpFIH,
                                    uint32 dwStreamFlags) cil managed
  {
    // Code size       36 (0x24)
    .maxstack  4
    .locals init (object[] V_0)
    IL_0000:  ldstr      "{0}.{1}"
    IL_0005:  ldc.i4.2
    IL_0006:  newarr     [mscorlib]System.Object
    IL_000b:  stloc.0
    IL_000c:  ldloc.0
    IL_000d:  ldc.i4.0
    IL_000e:  call       string Dopus.Viewer.Config.Build.Props::get_Filename()
    IL_0013:  stelem.ref
    IL_0014:  ldloc.0
    IL_0015:  ldc.i4.1
    IL_0016:  ldstr      "DVP_GetFileInfoFileStreamW"
    IL_001b:  stelem.ref
    IL_001c:  ldloc.0
    IL_001d:  call       void [Dopus.NET]Dopus.Interop.Debug::Log(string,
                                                                  object[])
    IL_0022:  ldc.i4.0
    IL_0023:  ret
  } // end of method Viewer::DVP_GetFileInfoFileStream

  .method public hidebysig static native int 
          DVP_ShowProperties(valuetype [Dopus.NET]Dopus.Interop.Types.HWND hWndParent,
                             class [mscorlib]System.Text.StringBuilder  marshal( lptstr) lpszName,
                             valuetype Dopus.Viewer.Interop.Types.PluginFileInfo& lpVPFileInfo) cil managed
  {
    // Code size       40 (0x28)
    .maxstack  4
    .locals init (object[] V_0)
    IL_0000:  ldstr      "{0}.{1}"
    IL_0005:  ldc.i4.2
    IL_0006:  newarr     [mscorlib]System.Object
    IL_000b:  stloc.0
    IL_000c:  ldloc.0
    IL_000d:  ldc.i4.0
    IL_000e:  call       string Dopus.Viewer.Config.Build.Props::get_Filename()
    IL_0013:  stelem.ref
    IL_0014:  ldloc.0
    IL_0015:  ldc.i4.1
    IL_0016:  ldstr      "DVP_ShowPropertiesW"
    IL_001b:  stelem.ref
    IL_001c:  ldloc.0
    IL_001d:  call       void [Dopus.NET]Dopus.Interop.Debug::Log(string,
                                                                  object[])
    IL_0022:  ldsfld     native int [mscorlib]System.IntPtr::Zero
    IL_0027:  ret
  } // end of method Viewer::DVP_ShowProperties

  .method public hidebysig static native int 
          DVP_ShowPropertiesStream(valuetype [Dopus.NET]Dopus.Interop.Types.HWND hWndParent,
                                   class [mscorlib]System.Runtime.InteropServices.ComTypes.IStream& lpStream,
                                   class [mscorlib]System.Text.StringBuilder  marshal( lptstr) lpszName,
                                   valuetype Dopus.Viewer.Interop.Types.PluginFileInfo& lpVPFileInfo,
                                   uint32 dwStreamFlags) cil managed
  {
    // Code size       40 (0x28)
    .maxstack  4
    .locals init (object[] V_0)
    IL_0000:  ldstr      "{0}.{1}"
    IL_0005:  ldc.i4.2
    IL_0006:  newarr     [mscorlib]System.Object
    IL_000b:  stloc.0
    IL_000c:  ldloc.0
    IL_000d:  ldc.i4.0
    IL_000e:  call       string Dopus.Viewer.Config.Build.Props::get_Filename()
    IL_0013:  stelem.ref
    IL_0014:  ldloc.0
    IL_0015:  ldc.i4.1
    IL_0016:  ldstr      "DVP_ShowPropertiesStreamW"
    IL_001b:  stelem.ref
    IL_001c:  ldloc.0
    IL_001d:  call       void [Dopus.NET]Dopus.Interop.Debug::Log(string,
                                                                  object[])
    IL_0022:  ldsfld     native int [mscorlib]System.IntPtr::Zero
    IL_0027:  ret
  } // end of method Viewer::DVP_ShowPropertiesStream

  .method public hidebysig static native int 
          DVP_Configure(valuetype [Dopus.NET]Dopus.Interop.Types.HWND hWndParent,
                        valuetype [Dopus.NET]Dopus.Interop.Types.HWND hWndNotify,
                        uint32 dwNotifyData) cil managed
  {
    // Code size       40 (0x28)
    .maxstack  4
    .locals init (object[] V_0)
    IL_0000:  ldstr      "{0}.{1}"
    IL_0005:  ldc.i4.2
    IL_0006:  newarr     [mscorlib]System.Object
    IL_000b:  stloc.0
    IL_000c:  ldloc.0
    IL_000d:  ldc.i4.0
    IL_000e:  call       string Dopus.Viewer.Config.Build.Props::get_Filename()
    IL_0013:  stelem.ref
    IL_0014:  ldloc.0
    IL_0015:  ldc.i4.1
    IL_0016:  ldstr      "DVP_Configure"
    IL_001b:  stelem.ref
    IL_001c:  ldloc.0
    IL_001d:  call       void [Dopus.NET]Dopus.Interop.Debug::Log(string,
                                                                  object[])
    IL_0022:  ldsfld     native int [mscorlib]System.IntPtr::Zero
    IL_0027:  ret
  } // end of method Viewer::DVP_Configure

  .method public hidebysig static native int 
          DVP_About(valuetype [Dopus.NET]Dopus.Interop.Types.HWND hWndParent) cil managed
  {
    .custom instance void Dopus.Viewer.DllExportAttribute::.ctor(string,
                                                                 valuetype [mscorlib]System.Runtime.InteropServices.CallingConvention) = ( 01 00 09 44 56 50 5F 41 62 6F 75 74 03 00 00 00   // ...DVP_About....
                                                                                                                                           00 00 ) 
    // Code size       40 (0x28)
    .maxstack  4
    .locals init (object[] V_0)
    IL_0000:  ldstr      "{0}.{1}"
    IL_0005:  ldc.i4.2
    IL_0006:  newarr     [mscorlib]System.Object
    IL_000b:  stloc.0
    IL_000c:  ldloc.0
    IL_000d:  ldc.i4.0
    IL_000e:  call       string Dopus.Viewer.Config.Build.Props::get_Filename()
    IL_0013:  stelem.ref
    IL_0014:  ldloc.0
    IL_0015:  ldc.i4.1
    IL_0016:  ldstr      "DVP_About"
    IL_001b:  stelem.ref
    IL_001c:  ldloc.0
    IL_001d:  call       void [Dopus.NET]Dopus.Interop.Debug::Log(string,
                                                                  object[])
    IL_0022:  ldsfld     native int [mscorlib]System.IntPtr::Zero
    IL_0027:  ret
  } // end of method Viewer::DVP_About

  .method public hidebysig static bool 
          marshal( bool) 
          DVP_SetMetaData([in] string  marshal( lptstr) lpString,
                          native int param1) cil managed
  {
    // Code size       36 (0x24)
    .maxstack  4
    .locals init (object[] V_0)
    IL_0000:  ldstr      "{0}.{1}"
    IL_0005:  ldc.i4.2
    IL_0006:  newarr     [mscorlib]System.Object
    IL_000b:  stloc.0
    IL_000c:  ldloc.0
    IL_000d:  ldc.i4.0
    IL_000e:  call       string Dopus.Viewer.Config.Build.Props::get_Filename()
    IL_0013:  stelem.ref
    IL_0014:  ldloc.0
    IL_0015:  ldc.i4.1
    IL_0016:  ldstr      "DVP_SetMetaData"
    IL_001b:  stelem.ref
    IL_001c:  ldloc.0
    IL_001d:  call       void [Dopus.NET]Dopus.Interop.Debug::Log(string,
                                                                  object[])
    IL_0022:  ldc.i4.0
    IL_0023:  ret
  } // end of method Viewer::DVP_SetMetaData

} // end of class Dopus.Viewer.Viewer



