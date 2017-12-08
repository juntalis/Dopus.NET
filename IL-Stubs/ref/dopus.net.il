



.module extern kernel32.dll
.module extern shell32
.module extern dopus.exe
.assembly extern mscorlib
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 4:0:0:0
}
.assembly extern System.Drawing
{
  .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A )                         // .?_....:
  .ver 4:0:0:0
}
.assembly Dopus.NET
{
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilationRelaxationsAttribute::.ctor(int32) = ( 01 00 08 00 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 65 30 33 63 30 62 36 64 2D 66 37 39 32   // ..$e03c0b6d-f792
                                                                                                  2D 34 39 36 61 2D 38 62 33 61 2D 36 35 34 65 39   // -496a-8b3a-654e9
                                                                                                  39 37 37 34 34 30 33 00 00 )                      // 9774403..
  .custom instance void [mscorlib]System.Reflection.AssemblyFileVersionAttribute::.ctor(string) = ( 01 00 07 31 2E 30 2E 30 2E 30 00 00 )             // ...1.0.0.0..

  // --- The following custom attribute is added automatically, do not uncomment -------
  //  .custom instance void [mscorlib]System.Diagnostics.DebuggableAttribute::.ctor(valuetype [mscorlib]System.Diagnostics.DebuggableAttribute/DebuggingModes) = ( 01 00 02 00 00 00 00 00 ) 

  .custom instance void [mscorlib]System.Reflection.AssemblyTrademarkAttribute::.ctor(string) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.CompilerServices.RuntimeCompatibilityAttribute::.ctor() = ( 01 00 01 00 54 02 16 57 72 61 70 4E 6F 6E 45 78   // ....T..WrapNonEx
                                                                                                             63 65 70 74 69 6F 6E 54 68 72 6F 77 73 01 )       // ceptionThrows.
  .custom instance void [mscorlib]System.Runtime.InteropServices.ComVisibleAttribute::.ctor(bool) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Reflection.AssemblyCopyrightAttribute::.ctor(string) = ( 01 00 12 43 6F 70 79 72 69 67 68 74 20 C2 A9 20   // ...Copyright .. 
                                                                                                  20 32 30 31 33 00 00 )                            //  2013..
  .custom instance void [mscorlib]System.Reflection.AssemblyDescriptionAttribute::.ctor(string) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Reflection.AssemblyProductAttribute::.ctor(string) = ( 01 00 09 44 6F 70 75 73 2E 4E 45 54 00 00 )       // ...Dopus.NET..
  .custom instance void [mscorlib]System.Reflection.AssemblyTitleAttribute::.ctor(string) = ( 01 00 09 44 6F 70 75 73 2E 4E 45 54 00 00 )       // ...Dopus.NET..
  .custom instance void [mscorlib]System.Runtime.Versioning.TargetFrameworkAttribute::.ctor(string) = ( 01 00 1A 2E 4E 45 54 46 72 61 6D 65 77 6F 72 6B   // ....NETFramework
                                                                                                        2C 56 65 72 73 69 6F 6E 3D 76 34 2E 30 01 00 54   // ,Version=v4.0..T
                                                                                                        0E 14 46 72 61 6D 65 77 6F 72 6B 44 69 73 70 6C   // ..FrameworkDispl
                                                                                                        61 79 4E 61 6D 65 10 2E 4E 45 54 20 46 72 61 6D   // ayName..NET Fram
                                                                                                        65 77 6F 72 6B 20 34 )                            // ework 4
  .custom instance void [mscorlib]System.Reflection.AssemblyConfigurationAttribute::.ctor(string) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Reflection.AssemblyCompanyAttribute::.ctor(string) = ( 01 00 00 00 00 ) 
  .hash algorithm 0x00008004
  .ver 1:0:0:0
}
.module Dopus.NET.dll
.imagebase 0x10000000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000003    //  ILONLY 32BITREQUIRED



.class private abstract auto ansi sealed beforefieldinit Dopus.Build.ExtDlls
       extends [mscorlib]System.Object
{
  .field public static literal string DopusExe = "dopus.exe"
} // end of class Dopus.Build.ExtDlls

.class public abstract auto ansi beforefieldinit Dopus.Internals.Disposables.BaseDisposables
       extends [mscorlib]System.Object
       implements [mscorlib]System.IDisposable
{
  .field assembly bool _disposed
  .method public hidebysig newslot virtual 
          instance void  Dispose() cil managed
  {
    // Code size       13 (0xd)
    .maxstack  8
    .language '{3F5162F8-07C6-11D3-9053-00C04FA302A1}', '{994B45C4-E6E9-11D2-903F-00C04FA302A1}', '{5A869D0B-6611-11D3-BD2A-0000F80849BD}'
    .line 20,20 : 4,25 'c:\\Development\\cpp.workspace\\dopus\\Dopus.NET\\backup\\Dopus\\Internals\\Disposables\\BaseDisposables.cs'
    IL_0000:  ldarg.0
    IL_0001:  callvirt   instance void Dopus.Internals.Disposables.BaseDisposables::ReleaseDisposables()
    .line 21,21 : 4,30 ''
    IL_0006:  ldarg.0
    IL_0007:  call       void [mscorlib]System.GC::SuppressFinalize(object)
    .line 22,22 : 3,4 ''
    IL_000c:  ret
  } // end of method BaseDisposables::Dispose

  .method assembly hidebysig newslot abstract strict virtual 
          instance void  ReleaseDisposables() cil managed
  {
  } // end of method BaseDisposables::ReleaseDisposables

  .method family hidebysig virtual instance void 
          Finalize() cil managed
  {
    // Code size       16 (0x10)
    .maxstack  1
    .line 33,33 : 4,25 ''
    .try
    {
      IL_0000:  ldarg.0
      IL_0001:  callvirt   instance void Dopus.Internals.Disposables.BaseDisposables::ReleaseDisposables()
      IL_0006:  leave.s    IL_000f

      .line 34,34 : 3,4 ''
    }  // end .try
    finally
    {
      IL_0008:  ldarg.0
      IL_0009:  call       instance void [mscorlib]System.Object::Finalize()
      IL_000e:  endfinally
      .line 34,34 : 3,4 ''
    }  // end handler
    IL_000f:  ret
  } // end of method BaseDisposables::Finalize

  .method family hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  ret
  } // end of method BaseDisposables::.ctor

} // end of class Dopus.Internals.Disposables.BaseDisposables

.class public abstract auto ansi beforefieldinit Dopus.Internals.Disposables.ManagedDisposables
       extends Dopus.Internals.Disposables.BaseDisposables
{
  .method assembly hidebysig newslot specialname abstract strict virtual 
          instance class [mscorlib]System.Collections.Generic.IEnumerable`1<class [mscorlib]System.IDisposable> 
          get_DisposableObjects() cil managed
  {
  } // end of method ManagedDisposables::get_DisposableObjects

  .method assembly hidebysig strict virtual 
          instance void  ReleaseDisposables() cil managed
  {
    .custom instance void [mscorlib]System.Security.SecurityCriticalAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       67 (0x43)
    .maxstack  2
    .locals init ([0] class [mscorlib]System.IDisposable disposable,
             [1] class [mscorlib]System.Collections.Generic.IEnumerator`1<class [mscorlib]System.IDisposable> CS$5$0000)
    .line 26,26 : 4,17 'c:\\Development\\cpp.workspace\\dopus\\Dopus.NET\\backup\\Dopus\\Internals\\Disposables\\ManagedDisposables.cs'
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Dopus.Internals.Disposables.BaseDisposables::_disposed
    IL_0006:  brfalse.s  IL_0009

    .line 26,26 : 18,25 ''
    IL_0008:  ret

    .line 27,27 : 38,55 ''
    IL_0009:  ldarg.0
    IL_000a:  callvirt   instance class [mscorlib]System.Collections.Generic.IEnumerable`1<class [mscorlib]System.IDisposable> Dopus.Internals.Disposables.ManagedDisposables::get_DisposableObjects()
    IL_000f:  callvirt   instance class [mscorlib]System.Collections.Generic.IEnumerator`1<!0> class [mscorlib]System.Collections.Generic.IEnumerable`1<class [mscorlib]System.IDisposable>::GetEnumerator()
    IL_0014:  stloc.1
    .try
    {
      IL_0015:  br.s       IL_0027

      .line 27,27 : 12,34 ''
      IL_0017:  ldloc.1
      IL_0018:  callvirt   instance !0 class [mscorlib]System.Collections.Generic.IEnumerator`1<class [mscorlib]System.IDisposable>::get_Current()
      IL_001d:  stloc.0
      .line 28,28 : 5,27 ''
      IL_001e:  ldloc.0
      IL_001f:  brfalse.s  IL_0027

      .line 29,29 : 5,26 ''
      IL_0021:  ldloc.0
      IL_0022:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      .line 27,27 : 35,37 ''
      IL_0027:  ldloc.1
      IL_0028:  callvirt   instance bool [mscorlib]System.Collections.IEnumerator::MoveNext()
      IL_002d:  brtrue.s   IL_0017

      IL_002f:  leave.s    IL_003b

    }  // end .try
    finally
    {
      IL_0031:  ldloc.1
      IL_0032:  brfalse.s  IL_003a

      IL_0034:  ldloc.1
      IL_0035:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_003a:  endfinally
      .line 31,31 : 4,21 ''
    }  // end handler
    IL_003b:  ldarg.0
    IL_003c:  ldc.i4.1
    IL_003d:  stfld      bool Dopus.Internals.Disposables.BaseDisposables::_disposed
    .line 32,32 : 3,4 ''
    IL_0042:  ret
  } // end of method ManagedDisposables::ReleaseDisposables

  .method family hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Dopus.Internals.Disposables.BaseDisposables::.ctor()
    IL_0006:  ret
  } // end of method ManagedDisposables::.ctor

  .property instance class [mscorlib]System.Collections.Generic.IEnumerable`1<class [mscorlib]System.IDisposable>
          DisposableObjects()
  {
    .custom instance void JetBrains.Annotations.NotNullAttribute::.ctor() = ( 01 00 00 00 ) 
    .get instance class [mscorlib]System.Collections.Generic.IEnumerable`1<class [mscorlib]System.IDisposable> Dopus.Internals.Disposables.ManagedDisposables::get_DisposableObjects()
  } // end of property ManagedDisposables::DisposableObjects
} // end of class Dopus.Internals.Disposables.ManagedDisposables

.class public abstract auto ansi beforefieldinit Dopus.Internals.Disposables.UnmanagedDisposables
       extends Dopus.Internals.Disposables.BaseDisposables
{
  .method assembly hidebysig newslot abstract strict virtual 
          instance void  Release() cil managed
  {
    .custom instance void [mscorlib]System.Security.SecurityCriticalAttribute::.ctor() = ( 01 00 00 00 ) 
  } // end of method UnmanagedDisposables::Release

  .method assembly hidebysig strict virtual 
          instance void  ReleaseDisposables() cil managed
  {
    // Code size       23 (0x17)
    .maxstack  8
    .line 22,22 : 4,17 'c:\\Development\\cpp.workspace\\dopus\\Dopus.NET\\backup\\Dopus\\Internals\\Disposables\\UnmanagedDisposables.cs'
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Dopus.Internals.Disposables.BaseDisposables::_disposed
    IL_0006:  brfalse.s  IL_0009

    .line 22,22 : 18,25 ''
    IL_0008:  ret

    .line 23,23 : 4,14 ''
    IL_0009:  ldarg.0
    IL_000a:  callvirt   instance void Dopus.Internals.Disposables.UnmanagedDisposables::Release()
    .line 24,24 : 4,21 ''
    IL_000f:  ldarg.0
    IL_0010:  ldc.i4.1
    IL_0011:  stfld      bool Dopus.Internals.Disposables.BaseDisposables::_disposed
    .line 25,25 : 3,4 ''
    IL_0016:  ret
  } // end of method UnmanagedDisposables::ReleaseDisposables

  .method family hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Dopus.Internals.Disposables.BaseDisposables::.ctor()
    IL_0006:  ret
  } // end of method UnmanagedDisposables::.ctor

} // end of class Dopus.Internals.Disposables.UnmanagedDisposables

.class public auto ansi sealed beforefieldinit Dopus.Internals.Instances.ManagedHandlesTracker`1<class T>
       extends [mscorlib]System.Object
{
  .custom instance void [mscorlib]System.Reflection.DefaultMemberAttribute::.ctor(string) = ( 01 00 04 49 74 65 6D 00 00 )                      // ...Item..
  .class auto ansi sealed nested public HandleToInstFunction<class T>
         extends [mscorlib]System.MulticastDelegate
  {
    .custom instance void JetBrains.Annotations.NotNullAttribute::.ctor() = ( 01 00 00 00 ) 
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor(object 'object',
                                 native int 'method') runtime managed
    {
    } // end of method HandleToInstFunction::.ctor

    .method public hidebysig newslot virtual 
            instance !T  Invoke(native int handle) runtime managed
    {
    } // end of method HandleToInstFunction::Invoke

    .method public hidebysig newslot virtual 
            instance class [mscorlib]System.IAsyncResult 
            BeginInvoke(native int handle,
                        class [mscorlib]System.AsyncCallback callback,
                        object 'object') runtime managed
    {
    } // end of method HandleToInstFunction::BeginInvoke

    .method public hidebysig newslot virtual 
            instance !T  EndInvoke(class [mscorlib]System.IAsyncResult result) runtime managed
    {
    } // end of method HandleToInstFunction::EndInvoke

  } // end of class HandleToInstFunction

  .field private initonly class [mscorlib]System.Collections.Generic.Dictionary`2<native int,class [mscorlib]System.WeakReference> instances
  .field private initonly class Dopus.Internals.Instances.ManagedHandlesTracker`1/HandleToInstFunction<!T> handleToInst
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class Dopus.Internals.Instances.ManagedHandlesTracker`1/HandleToInstFunction<!T> function) cil managed
  {
    .param [1]
    .custom instance void JetBrains.Annotations.NotNullAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       25 (0x19)
    .maxstack  8
    .line 29,29 : 3,72 'c:\\Development\\cpp.workspace\\dopus\\Dopus.NET\\backup\\Dopus\\Internals\\Instances\\ManagedHandlesTracker.cs'
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    .line 31,31 : 4,28 ''
    IL_0006:  ldarg.0
    IL_0007:  ldarg.1
    IL_0008:  stfld      class Dopus.Internals.Instances.ManagedHandlesTracker`1/HandleToInstFunction<!0> class Dopus.Internals.Instances.ManagedHandlesTracker`1<!T>::handleToInst
    .line 32,32 : 4,56 ''
    IL_000d:  ldarg.0
    IL_000e:  newobj     instance void class [mscorlib]System.Collections.Generic.Dictionary`2<native int,class [mscorlib]System.WeakReference>::.ctor()
    IL_0013:  stfld      class [mscorlib]System.Collections.Generic.Dictionary`2<native int,class [mscorlib]System.WeakReference> class Dopus.Internals.Instances.ManagedHandlesTracker`1<!T>::instances
    .line 33,33 : 3,4 ''
    IL_0018:  ret
  } // end of method ManagedHandlesTracker`1::.ctor

  .method private hidebysig instance !T  Set(native int handle,
                                             !T 'instance',
                                             bool checkHandle) cil managed
  {
    .custom instance void JetBrains.Annotations.NotNullAttribute::.ctor() = ( 01 00 00 00 ) 
    .param [2]
    .custom instance void JetBrains.Annotations.NotNullAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       52 (0x34)
    .maxstack  8
    .line 38,38 : 4,47 ''
    IL_0000:  ldarg.3
    IL_0001:  brfalse.s  IL_001b

    IL_0003:  ldarg.1
    IL_0004:  call       valuetype Dopus.Interop.Types.HANDLE Dopus.Interop.Types.HANDLE::op_Implicit(native int)
    IL_0009:  call       bool Dopus.Interop.Types.HANDLE::IsValid(valuetype Dopus.Interop.Types.HANDLE)
    IL_000e:  brtrue.s   IL_001b

    .line 38,38 : 48,86 ''
    IL_0010:  ldstr      "handle"
    IL_0015:  newobj     instance void [mscorlib]System.ArgumentException::.ctor(string)
    IL_001a:  throw

    .line 39,39 : 4,52 ''
    IL_001b:  ldarg.0
    IL_001c:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<native int,class [mscorlib]System.WeakReference> class Dopus.Internals.Instances.ManagedHandlesTracker`1<!T>::instances
    IL_0021:  ldarg.1
    IL_0022:  ldarg.2
    IL_0023:  box        !T
    IL_0028:  newobj     instance void [mscorlib]System.WeakReference::.ctor(object)
    IL_002d:  callvirt   instance void class [mscorlib]System.Collections.Generic.Dictionary`2<native int,class [mscorlib]System.WeakReference>::set_Item(!0,
                                                                                                                                                          !1)
    .line 40,40 : 4,20 ''
    IL_0032:  ldarg.2
    IL_0033:  ret
  } // end of method ManagedHandlesTracker`1::Set

  .method public hidebysig instance !T  Set(native int handle,
                                            !T 'instance') cil managed
  {
    .custom instance void JetBrains.Annotations.NotNullAttribute::.ctor() = ( 01 00 00 00 ) 
    .param [2]
    .custom instance void JetBrains.Annotations.CanBeNullAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       31 (0x1f)
    .maxstack  8
    .line 46,46 : 4,63 ''
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  dup
    IL_0004:  box        !T
    IL_0009:  brtrue.s   IL_0018

    IL_000b:  pop
    IL_000c:  ldarg.0
    IL_000d:  ldfld      class Dopus.Internals.Instances.ManagedHandlesTracker`1/HandleToInstFunction<!0> class Dopus.Internals.Instances.ManagedHandlesTracker`1<!T>::handleToInst
    IL_0012:  ldarg.1
    IL_0013:  callvirt   instance !0 class Dopus.Internals.Instances.ManagedHandlesTracker`1/HandleToInstFunction<!T>::Invoke(native int)
    IL_0018:  ldc.i4.1
    IL_0019:  call       instance !0 class Dopus.Internals.Instances.ManagedHandlesTracker`1<!T>::Set(native int,
                                                                                                      !0,
                                                                                                      bool)
    IL_001e:  ret
  } // end of method ManagedHandlesTracker`1::Set

  .method public hidebysig instance !T  Set(native int handle) cil managed
  {
    .custom instance void JetBrains.Annotations.NotNullAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       17 (0x11)
    .maxstack  3
    .locals init ([0] !T CS$0$0000)
    .line 52,52 : 4,29 ''
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldloca.s   CS$0$0000
    IL_0004:  initobj    !T
    IL_000a:  ldloc.0
    IL_000b:  call       instance !0 class Dopus.Internals.Instances.ManagedHandlesTracker`1<!T>::Set(native int,
                                                                                                      !0)
    IL_0010:  ret
  } // end of method ManagedHandlesTracker`1::Set

  .method public hidebysig instance !T  Get(native int handle) cil managed
  {
    .custom instance void JetBrains.Annotations.NotNullAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       133 (0x85)
    .maxstack  4
    .locals init ([0] bool '<>s__LockTaken0',
             [1] !T CS$1$0000,
             [2] class [mscorlib]System.Collections.Generic.Dictionary`2<native int,class [mscorlib]System.WeakReference> CS$2$0001)
    .line 59,59 : 4,31 ''
    IL_0000:  ldarg.1
    IL_0001:  call       valuetype Dopus.Interop.Types.HANDLE Dopus.Interop.Types.HANDLE::op_Implicit(native int)
    IL_0006:  call       bool Dopus.Interop.Types.HANDLE::IsValid(valuetype Dopus.Interop.Types.HANDLE)
    IL_000b:  brtrue.s   IL_0018

    .line 59,59 : 32,70 ''
    IL_000d:  ldstr      "handle"
    IL_0012:  newobj     instance void [mscorlib]System.ArgumentException::.ctor(string)
    IL_0017:  throw

    IL_0018:  ldc.i4.0
    IL_0019:  stloc.0
    .line 60,60 : 4,19 ''
    .try
    {
      IL_001a:  ldarg.0
      IL_001b:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<native int,class [mscorlib]System.WeakReference> class Dopus.Internals.Instances.ManagedHandlesTracker`1<!T>::instances
      IL_0020:  dup
      IL_0021:  stloc.2
      IL_0022:  ldloca.s   '<>s__LockTaken0'
      IL_0024:  call       void [mscorlib]System.Threading.Monitor::Enter(object,
                                                                          bool&)
      .line 61,62 : 5,77 ''
      IL_0029:  ldarg.0
      IL_002a:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<native int,class [mscorlib]System.WeakReference> class Dopus.Internals.Instances.ManagedHandlesTracker`1<!T>::instances
      IL_002f:  ldarg.1
      IL_0030:  callvirt   instance bool class [mscorlib]System.Collections.Generic.Dictionary`2<native int,class [mscorlib]System.WeakReference>::ContainsKey(!0)
      IL_0035:  brfalse.s  IL_004a

      IL_0037:  ldarg.0
      IL_0038:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<native int,class [mscorlib]System.WeakReference> class Dopus.Internals.Instances.ManagedHandlesTracker`1<!T>::instances
      IL_003d:  ldarg.1
      IL_003e:  callvirt   instance !1 class [mscorlib]System.Collections.Generic.Dictionary`2<native int,class [mscorlib]System.WeakReference>::get_Item(!0)
      IL_0043:  callvirt   instance bool [mscorlib]System.WeakReference::get_IsAlive()
      IL_0048:  brtrue.s   IL_0060

      IL_004a:  ldarg.0
      IL_004b:  ldarg.1
      IL_004c:  ldarg.0
      IL_004d:  ldfld      class Dopus.Internals.Instances.ManagedHandlesTracker`1/HandleToInstFunction<!0> class Dopus.Internals.Instances.ManagedHandlesTracker`1<!T>::handleToInst
      IL_0052:  ldarg.1
      IL_0053:  callvirt   instance !0 class Dopus.Internals.Instances.ManagedHandlesTracker`1/HandleToInstFunction<!T>::Invoke(native int)
      IL_0058:  ldc.i4.0
      IL_0059:  call       instance !0 class Dopus.Internals.Instances.ManagedHandlesTracker`1<!T>::Set(native int,
                                                                                                        !0,
                                                                                                        bool)
      IL_005e:  br.s       IL_0076

      IL_0060:  ldarg.0
      IL_0061:  ldfld      class [mscorlib]System.Collections.Generic.Dictionary`2<native int,class [mscorlib]System.WeakReference> class Dopus.Internals.Instances.ManagedHandlesTracker`1<!T>::instances
      IL_0066:  ldarg.1
      IL_0067:  callvirt   instance !1 class [mscorlib]System.Collections.Generic.Dictionary`2<native int,class [mscorlib]System.WeakReference>::get_Item(!0)
      IL_006c:  callvirt   instance object [mscorlib]System.WeakReference::get_Target()
      IL_0071:  unbox.any  !T
      IL_0076:  stloc.1
      IL_0077:  leave.s    IL_0083

    }  // end .try
    finally
    {
      IL_0079:  ldloc.0
      IL_007a:  brfalse.s  IL_0082

      IL_007c:  ldloc.2
      IL_007d:  call       void [mscorlib]System.Threading.Monitor::Exit(object)
      IL_0082:  endfinally
      .line 64,64 : 3,4 ''
    }  // end handler
    IL_0083:  ldloc.1
    IL_0084:  ret
  } // end of method ManagedHandlesTracker`1::Get

  .method public hidebysig specialname instance !T 
          get_Item(native int handle) cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    .line 69,69 : 10,29 ''
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance !0 class Dopus.Internals.Instances.ManagedHandlesTracker`1<!T>::Get(native int)
    IL_0007:  ret
  } // end of method ManagedHandlesTracker`1::get_Item

  .method public hidebysig specialname instance void 
          set_Item(native int handle,
                   !T 'value') cil managed
  {
    // Code size       11 (0xb)
    .maxstack  8
    .line 70,70 : 10,35 ''
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  ldc.i4.1
    IL_0004:  call       instance !0 class Dopus.Internals.Instances.ManagedHandlesTracker`1<!T>::Set(native int,
                                                                                                      !0,
                                                                                                      bool)
    IL_0009:  pop
    .line 70,70 : 36,37 ''
    IL_000a:  ret
  } // end of method ManagedHandlesTracker`1::set_Item

  .property instance !T Item(native int)
  {
    .custom instance void JetBrains.Annotations.NotNullAttribute::.ctor() = ( 01 00 00 00 ) 
    .get instance !T Dopus.Internals.Instances.ManagedHandlesTracker`1::get_Item(native int)
    .set instance void Dopus.Internals.Instances.ManagedHandlesTracker`1::set_Item(native int,
                                                                                   !T)
  } // end of property ManagedHandlesTracker`1::Item
} // end of class Dopus.Internals.Instances.ManagedHandlesTracker`1

.class public auto ansi beforefieldinit Dopus.Interop.Common
       extends [mscorlib]System.Object
{
  .field public static literal int32 MAX_PATH = int32(0x00000104)
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  ret
  } // end of method Common::.ctor

} // end of class Dopus.Interop.Common

.class public abstract auto ansi sealed beforefieldinit Dopus.Interop.Debug
       extends [mscorlib]System.Object
{
  .method private hidebysig static pinvokeimpl("kernel32.dll" autochar winapi) 
          void  OutputDebugString([in] string  marshal( lptstr) message) cil managed preservesig
  {
  }
  .method public hidebysig static void  Log(string message,
                                            object[] args) cil managed
  {
    .custom instance void JetBrains.Annotations.StringFormatMethodAttribute::.ctor(string) = ( 01 00 07 6D 65 73 73 61 67 65 00 00 )             // ...message..
    .param [1]
    .custom instance void JetBrains.Annotations.NotNullAttribute::.ctor() = ( 01 00 00 00 ) 
    .param [2]
    .custom instance void [mscorlib]System.ParamArrayAttribute::.ctor() = ( 01 00 00 00 ) 
    .custom instance void JetBrains.Annotations.NotNullAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       13 (0xd)
    .maxstack  8
    .line 21,21 : 4,52 'c:\\Development\\cpp.workspace\\dopus\\Dopus.NET\\backup\\Dopus\\Interop\\Debug.cs'
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       string [mscorlib]System.String::Format(string,
                                                                object[])
    IL_0007:  call       void Dopus.Interop.Debug::OutputDebugString(string)
    .line 22,22 : 3,4 ''
    IL_000c:  ret
  } // end of method Debug::Log

} // end of class Dopus.Interop.Debug

.class public auto ansi beforefieldinit Dopus.Interop.ShellIcon
       extends [mscorlib]System.Object
{
  .class abstract auto ansi sealed nested assembly beforefieldinit shell32
         extends [mscorlib]System.Object
  {
    .class auto ansi sealed nested public SHFILEINFO_ATTRS
           extends [mscorlib]System.Enum
    {
      .custom instance void [mscorlib]System.FlagsAttribute::.ctor() = ( 01 00 00 00 ) 
      .field public specialname rtspecialname uint32 value__
      .field public static literal valuetype Dopus.Interop.ShellIcon/shell32/SHFILEINFO_ATTRS BROWSABLE = uint32(0x08000000)
      .field public static literal valuetype Dopus.Interop.ShellIcon/shell32/SHFILEINFO_ATTRS CAN_COPY = uint32(0x00000001)
      .field public static literal valuetype Dopus.Interop.ShellIcon/shell32/SHFILEINFO_ATTRS CAN_DELETE = uint32(0x00000020)
      .field public static literal valuetype Dopus.Interop.ShellIcon/shell32/SHFILEINFO_ATTRS CAN_LINK = uint32(0x00000004)
      .field public static literal valuetype Dopus.Interop.ShellIcon/shell32/SHFILEINFO_ATTRS CAN_MONIKER = uint32(0x00400000)
      .field public static literal valuetype Dopus.Interop.ShellIcon/shell32/SHFILEINFO_ATTRS CAN_MOVE = uint32(0x00000002)
      .field public static literal valuetype Dopus.Interop.ShellIcon/shell32/SHFILEINFO_ATTRS CAN_RENAME = uint32(0x00000010)
      .field public static literal valuetype Dopus.Interop.ShellIcon/shell32/SHFILEINFO_ATTRS CAPABILITY_MASK = uint32(0x00000177)
      .field public static literal valuetype Dopus.Interop.ShellIcon/shell32/SHFILEINFO_ATTRS COMPRESSED = uint32(0x04000000)
      .field public static literal valuetype Dopus.Interop.ShellIcon/shell32/SHFILEINFO_ATTRS CONTENTS_MASK = uint32(0x80000000)
      .field public static literal valuetype Dopus.Interop.ShellIcon/shell32/SHFILEINFO_ATTRS DISPLAYATTR_MASK = uint32(0x000FC000)
      .field public static literal valuetype Dopus.Interop.ShellIcon/shell32/SHFILEINFO_ATTRS DROP_TARGET = uint32(0x00000100)
      .field public static literal valuetype Dopus.Interop.ShellIcon/shell32/SHFILEINFO_ATTRS ENCRYPTED = uint32(0x00002000)
      .field public static literal valuetype Dopus.Interop.ShellIcon/shell32/SHFILEINFO_ATTRS FILESYS_ANCESTOR = uint32(0x10000000)
      .field public static literal valuetype Dopus.Interop.ShellIcon/shell32/SHFILEINFO_ATTRS FILESYSTEM = uint32(0x40000000)
      .field public static literal valuetype Dopus.Interop.ShellIcon/shell32/SHFILEINFO_ATTRS FOLDER = uint32(0x20000000)
      .field public static literal valuetype Dopus.Interop.ShellIcon/shell32/SHFILEINFO_ATTRS GHOSTED = uint32(0x00008000)
      .field public static literal valuetype Dopus.Interop.ShellIcon/shell32/SHFILEINFO_ATTRS HAS_PROPSHEET = uint32(0x00000040)
      .field public static literal valuetype Dopus.Interop.ShellIcon/shell32/SHFILEINFO_ATTRS HAS_STORAGE = uint32(0x00400000)
      .field public static literal valuetype Dopus.Interop.ShellIcon/shell32/SHFILEINFO_ATTRS HAS_SUBFOLDER = uint32(0x80000000)
      .field public static literal valuetype Dopus.Interop.ShellIcon/shell32/SHFILEINFO_ATTRS HIDDEN = uint32(0x00080000)
      .field public static literal valuetype Dopus.Interop.ShellIcon/shell32/SHFILEINFO_ATTRS IS_SLOW = uint32(0x00004000)
      .field public static literal valuetype Dopus.Interop.ShellIcon/shell32/SHFILEINFO_ATTRS LINK = uint32(0x00010000)
      .field public static literal valuetype Dopus.Interop.ShellIcon/shell32/SHFILEINFO_ATTRS NEW_CONTENT = uint32(0x00200000)
      .field public static literal valuetype Dopus.Interop.ShellIcon/shell32/SHFILEINFO_ATTRS NONE_ENUMERATED = uint32(0x00100000)
      .field public static literal valuetype Dopus.Interop.ShellIcon/shell32/SHFILEINFO_ATTRS READONLY = uint32(0x00040000)
      .field public static literal valuetype Dopus.Interop.ShellIcon/shell32/SHFILEINFO_ATTRS REMOVABLE = uint32(0x02000000)
      .field public static literal valuetype Dopus.Interop.ShellIcon/shell32/SHFILEINFO_ATTRS SHARE = uint32(0x00020000)
      .field public static literal valuetype Dopus.Interop.ShellIcon/shell32/SHFILEINFO_ATTRS STORAGE = uint32(0x00000008)
      .field public static literal valuetype Dopus.Interop.ShellIcon/shell32/SHFILEINFO_ATTRS STORAGE_ANCESTOR = uint32(0x00800000)
      .field public static literal valuetype Dopus.Interop.ShellIcon/shell32/SHFILEINFO_ATTRS STORAGE_CAPMASK = uint32(0x70C50008)
      .field public static literal valuetype Dopus.Interop.ShellIcon/shell32/SHFILEINFO_ATTRS STREAM = uint32(0x00400000)
      .field public static literal valuetype Dopus.Interop.ShellIcon/shell32/SHFILEINFO_ATTRS VALIDATE = uint32(0x01000000)
    } // end of class SHFILEINFO_ATTRS

    .class sequential ansi sealed nested public beforefieldinit SHFILEINFO
           extends [mscorlib]System.ValueType
    {
      .field public native int hIcon
      .field public int32 iIcon
      .field public valuetype Dopus.Interop.ShellIcon/shell32/SHFILEINFO_ATTRS dwAttributes
      .field public  marshal( fixed sysstring [260]) string szDisplayName
      .field public  marshal( fixed sysstring [80]) string szTypeName
    } // end of class SHFILEINFO

    .field private static literal uint32 SHGFI_ICON = uint32(0x00000100)
    .method public hidebysig static pinvokeimpl("shell32" winapi) 
            native int  SHGetFileInfo([in] string  marshal( lptstr) pszPath,
                                      uint32 dwFileAttributes,
                                      [in][out] valuetype Dopus.Interop.ShellIcon/shell32/SHFILEINFO& psfi,
                                      uint32 cbSizeFileInfo,
                                      uint32 uFlags) cil managed preservesig
    {
    }
    .method public hidebysig static class [System.Drawing]System.Drawing.Icon 
            GetSizedIcon(string fileName,
                         uint32 SHGFI_ICONSIZE) cil managed
    {
      .custom instance void JetBrains.Annotations.CanBeNullAttribute::.ctor() = ( 01 00 00 00 ) 
      .param [1]
      .custom instance void JetBrains.Annotations.NotNullAttribute::.ctor() = ( 01 00 00 00 ) 
      // Code size       49 (0x31)
      .maxstack  6
      .locals init ([0] valuetype Dopus.Interop.ShellIcon/shell32/SHFILEINFO shinfo)
      .line 113,113 : 5,42 'c:\\Development\\cpp.workspace\\dopus\\Dopus.NET\\backup\\Dopus\\Interop\\ShellIcon.cs'
      IL_0000:  ldloca.s   shinfo
      IL_0002:  initobj    Dopus.Interop.ShellIcon/shell32/SHFILEINFO
      .line 114,114 : 5,103 ''
      IL_0008:  ldarg.0
      IL_0009:  ldc.i4.0
      IL_000a:  ldloca.s   shinfo
      IL_000c:  ldloc.0
      IL_000d:  box        Dopus.Interop.ShellIcon/shell32/SHFILEINFO
      IL_0012:  call       int32 [mscorlib]System.Runtime.InteropServices.Marshal::SizeOf(object)
      IL_0017:  ldc.i4     0x100
      IL_001c:  ldarg.1
      IL_001d:  or
      IL_001e:  call       native int Dopus.Interop.ShellIcon/shell32::SHGetFileInfo(string,
                                                                                     uint32,
                                                                                     valuetype Dopus.Interop.ShellIcon/shell32/SHFILEINFO&,
                                                                                     uint32,
                                                                                     uint32)
      IL_0023:  pop
      .line 115,115 : 5,42 ''
      IL_0024:  ldloca.s   shinfo
      IL_0026:  ldfld      native int Dopus.Interop.ShellIcon/shell32/SHFILEINFO::hIcon
      IL_002b:  call       class [System.Drawing]System.Drawing.Icon [System.Drawing]System.Drawing.Icon::FromHandle(native int)
      IL_0030:  ret
    } // end of method shell32::GetSizedIcon

  } // end of class shell32

  .field static assembly literal uint32 SHGFI_LARGEICON = uint32(0x00000000)
  .field static assembly literal uint32 SHGFI_SMALLICON = uint32(0x00000001)
  .method public hidebysig static class [System.Drawing]System.Drawing.Icon 
          GetSmallIcon(string fileName) cil managed
  {
    .custom instance void JetBrains.Annotations.CanBeNullAttribute::.ctor() = ( 01 00 00 00 ) 
    .param [1]
    .custom instance void JetBrains.Annotations.NotNullAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    .line 31,31 : 4,59 ''
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.1
    IL_0002:  call       class [System.Drawing]System.Drawing.Icon Dopus.Interop.ShellIcon/shell32::GetSizedIcon(string,
                                                                                                                 uint32)
    IL_0007:  ret
  } // end of method ShellIcon::GetSmallIcon

  .method public hidebysig static class [System.Drawing]System.Drawing.Icon 
          GetLargeIcon(string fileName) cil managed
  {
    .custom instance void JetBrains.Annotations.CanBeNullAttribute::.ctor() = ( 01 00 00 00 ) 
    .param [1]
    .custom instance void JetBrains.Annotations.NotNullAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    .line 42,42 : 4,59 ''
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.0
    IL_0002:  call       class [System.Drawing]System.Drawing.Icon Dopus.Interop.ShellIcon/shell32::GetSizedIcon(string,
                                                                                                                 uint32)
    IL_0007:  ret
  } // end of method ShellIcon::GetLargeIcon

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  ret
  } // end of method ShellIcon::.ctor

} // end of class Dopus.Interop.ShellIcon

.class public sequential ansi sealed beforefieldinit Dopus.Interop.Types.COLORREF
       extends [mscorlib]System.ValueType
{
  .field public uint8 Red
  .field public uint8 Green
  .field public uint8 Blue
  .field private uint8 padding
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(uint8 red,
                               uint8 green,
                               uint8 blue) cil managed
  {
    // Code size       29 (0x1d)
    .maxstack  8
    .line 35,35 : 4,14 'c:\\Development\\cpp.workspace\\dopus\\Dopus.NET\\backup\\Dopus\\Interop\\Types\\COLORREF.cs'
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      uint8 Dopus.Interop.Types.COLORREF::Red
    .line 36,36 : 4,18 ''
    IL_0007:  ldarg.0
    IL_0008:  ldarg.2
    IL_0009:  stfld      uint8 Dopus.Interop.Types.COLORREF::Green
    .line 37,37 : 4,16 ''
    IL_000e:  ldarg.0
    IL_000f:  ldarg.3
    IL_0010:  stfld      uint8 Dopus.Interop.Types.COLORREF::Blue
    .line 38,38 : 4,16 ''
    IL_0015:  ldarg.0
    IL_0016:  ldc.i4.0
    IL_0017:  stfld      uint8 Dopus.Interop.Types.COLORREF::padding
    .line 39,39 : 3,4 ''
    IL_001c:  ret
  } // end of method COLORREF::.ctor

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(valuetype Dopus.Interop.Types.COLORREF other) cil managed
  {
    // Code size       28 (0x1c)
    .maxstack  8
    .line 41,42 : 3,46 ''
    IL_0000:  ldarg.0
    IL_0001:  ldarga.s   other
    IL_0003:  ldfld      uint8 Dopus.Interop.Types.COLORREF::Red
    IL_0008:  ldarga.s   other
    IL_000a:  ldfld      uint8 Dopus.Interop.Types.COLORREF::Green
    IL_000f:  ldarga.s   other
    IL_0011:  ldfld      uint8 Dopus.Interop.Types.COLORREF::Blue
    IL_0016:  call       instance void Dopus.Interop.Types.COLORREF::.ctor(uint8,
                                                                           uint8,
                                                                           uint8)
    .line 42,42 : 48,49 ''
    IL_001b:  ret
  } // end of method COLORREF::.ctor

  .method public hidebysig specialname static 
          valuetype Dopus.Interop.Types.COLORREF 
          op_Implicit(valuetype [System.Drawing]System.Drawing.Color icon) cil managed
  {
    // Code size       27 (0x1b)
    .maxstack  8
    .line 51,51 : 4,48 ''
    IL_0000:  ldarga.s   icon
    IL_0002:  call       instance uint8 [System.Drawing]System.Drawing.Color::get_R()
    IL_0007:  ldarga.s   icon
    IL_0009:  call       instance uint8 [System.Drawing]System.Drawing.Color::get_G()
    IL_000e:  ldarga.s   icon
    IL_0010:  call       instance uint8 [System.Drawing]System.Drawing.Color::get_B()
    IL_0015:  newobj     instance void Dopus.Interop.Types.COLORREF::.ctor(uint8,
                                                                           uint8,
                                                                           uint8)
    IL_001a:  ret
  } // end of method COLORREF::op_Implicit

  .method public hidebysig specialname static 
          valuetype [System.Drawing]System.Drawing.Color 
          op_Implicit(valuetype Dopus.Interop.Types.COLORREF colorref) cil managed
  {
    // Code size       27 (0x1b)
    .maxstack  8
    .line 59,59 : 4,71 ''
    IL_0000:  ldarga.s   colorref
    IL_0002:  ldfld      uint8 Dopus.Interop.Types.COLORREF::Red
    IL_0007:  ldarga.s   colorref
    IL_0009:  ldfld      uint8 Dopus.Interop.Types.COLORREF::Green
    IL_000e:  ldarga.s   colorref
    IL_0010:  ldfld      uint8 Dopus.Interop.Types.COLORREF::Blue
    IL_0015:  call       valuetype [System.Drawing]System.Drawing.Color [System.Drawing]System.Drawing.Color::FromArgb(int32,
                                                                                                                       int32,
                                                                                                                       int32)
    IL_001a:  ret
  } // end of method COLORREF::op_Implicit

  .method public hidebysig specialname static 
          bool  op_Equality(valuetype Dopus.Interop.Types.COLORREF lhs,
                            valuetype Dopus.Interop.Types.COLORREF rhs) cil managed
  {
    .custom instance void [mscorlib]System.Security.SecurityCriticalAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       29 (0x1d)
    .maxstack  8
    .line 75,75 : 4,50 ''
    IL_0000:  ldarga.s   lhs
    IL_0002:  constrained. Dopus.Interop.Types.COLORREF
    IL_0008:  callvirt   instance int32 [mscorlib]System.Object::GetHashCode()
    IL_000d:  ldarga.s   rhs
    IL_000f:  constrained. Dopus.Interop.Types.COLORREF
    IL_0015:  callvirt   instance int32 [mscorlib]System.Object::GetHashCode()
    IL_001a:  ceq
    IL_001c:  ret
  } // end of method COLORREF::op_Equality

  .method public hidebysig specialname static 
          bool  op_Inequality(valuetype Dopus.Interop.Types.COLORREF lhs,
                              valuetype Dopus.Interop.Types.COLORREF rhs) cil managed
  {
    .custom instance void [mscorlib]System.Security.SecurityCriticalAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       32 (0x20)
    .maxstack  8
    .line 87,87 : 4,50 ''
    IL_0000:  ldarga.s   lhs
    IL_0002:  constrained. Dopus.Interop.Types.COLORREF
    IL_0008:  callvirt   instance int32 [mscorlib]System.Object::GetHashCode()
    IL_000d:  ldarga.s   rhs
    IL_000f:  constrained. Dopus.Interop.Types.COLORREF
    IL_0015:  callvirt   instance int32 [mscorlib]System.Object::GetHashCode()
    IL_001a:  ceq
    IL_001c:  ldc.i4.0
    IL_001d:  ceq
    IL_001f:  ret
  } // end of method COLORREF::op_Inequality

  .method public hidebysig virtual instance bool 
          Equals(object oCompare) cil managed
  {
    .custom instance void [mscorlib]System.Security.SecurityCriticalAttribute::.ctor() = ( 01 00 00 00 ) 
    .param [1]
    .custom instance void JetBrains.Annotations.CanBeNullAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       159 (0x9f)
    .maxstack  3
    .locals init ([0] valuetype [System.Drawing]System.Drawing.Color CS$0$0000,
             [1] valuetype [System.Drawing]System.Drawing.Color CS$0$0001,
             [2] valuetype [System.Drawing]System.Drawing.Color CS$0$0002)
    .line 100,110 : 4,6 ''
    IL_0000:  ldarg.1
    IL_0001:  brfalse.s  IL_001f

    IL_0003:  ldarg.1
    IL_0004:  isinst     Dopus.Interop.Types.COLORREF
    IL_0009:  brfalse.s  IL_001f

    IL_000b:  ldarg.0
    IL_000c:  constrained. Dopus.Interop.Types.COLORREF
    IL_0012:  callvirt   instance int32 [mscorlib]System.Object::GetHashCode()
    IL_0017:  ldarg.1
    IL_0018:  callvirt   instance int32 [mscorlib]System.Object::GetHashCode()
    IL_001d:  beq.s      IL_009d

    IL_001f:  ldarg.1
    IL_0020:  isinst     [mscorlib]System.UInt32
    IL_0025:  brfalse.s  IL_0050

    IL_0027:  ldarg.0
    IL_0028:  ldfld      uint8 Dopus.Interop.Types.COLORREF::Red
    IL_002d:  ldc.i4.s   24
    IL_002f:  shl
    IL_0030:  ldarg.0
    IL_0031:  ldfld      uint8 Dopus.Interop.Types.COLORREF::Green
    IL_0036:  ldc.i4.s   16
    IL_0038:  shl
    IL_0039:  or
    IL_003a:  ldarg.0
    IL_003b:  ldfld      uint8 Dopus.Interop.Types.COLORREF::Blue
    IL_0040:  or
    IL_0041:  ldarg.0
    IL_0042:  ldfld      uint8 Dopus.Interop.Types.COLORREF::padding
    IL_0047:  or
    IL_0048:  ldarg.1
    IL_0049:  unbox.any  [mscorlib]System.UInt32
    IL_004e:  beq.s      IL_009d

    IL_0050:  ldarg.1
    IL_0051:  isinst     [System.Drawing]System.Drawing.Color
    IL_0056:  brfalse.s  IL_009b

    IL_0058:  ldarg.1
    IL_0059:  unbox.any  [System.Drawing]System.Drawing.Color
    IL_005e:  stloc.0
    IL_005f:  ldloca.s   CS$0$0000
    IL_0061:  call       instance uint8 [System.Drawing]System.Drawing.Color::get_R()
    IL_0066:  ldarg.0
    IL_0067:  ldfld      uint8 Dopus.Interop.Types.COLORREF::Red
    IL_006c:  bne.un.s   IL_009b

    IL_006e:  ldarg.1
    IL_006f:  unbox.any  [System.Drawing]System.Drawing.Color
    IL_0074:  stloc.1
    IL_0075:  ldloca.s   CS$0$0001
    IL_0077:  call       instance uint8 [System.Drawing]System.Drawing.Color::get_G()
    IL_007c:  ldarg.0
    IL_007d:  ldfld      uint8 Dopus.Interop.Types.COLORREF::Green
    IL_0082:  bne.un.s   IL_009b

    IL_0084:  ldarg.1
    IL_0085:  unbox.any  [System.Drawing]System.Drawing.Color
    IL_008a:  stloc.2
    IL_008b:  ldloca.s   CS$0$0002
    IL_008d:  call       instance uint8 [System.Drawing]System.Drawing.Color::get_B()
    IL_0092:  ldarg.0
    IL_0093:  ldfld      uint8 Dopus.Interop.Types.COLORREF::Blue
    IL_0098:  ceq
    IL_009a:  ret

    IL_009b:  ldc.i4.0
    IL_009c:  ret

    IL_009d:  ldc.i4.1
    IL_009e:  ret
  } // end of method COLORREF::Equals

  .method public hidebysig virtual instance int32 
          GetHashCode() cil managed
  {
    // Code size       34 (0x22)
    .maxstack  8
    .line 121,121 : 4,74 ''
    IL_0000:  ldarg.0
    IL_0001:  ldfld      uint8 Dopus.Interop.Types.COLORREF::Red
    IL_0006:  ldc.i4.s   24
    IL_0008:  shl
    IL_0009:  ldarg.0
    IL_000a:  ldfld      uint8 Dopus.Interop.Types.COLORREF::Green
    IL_000f:  ldc.i4.s   16
    IL_0011:  shl
    IL_0012:  or
    IL_0013:  ldarg.0
    IL_0014:  ldfld      uint8 Dopus.Interop.Types.COLORREF::Blue
    IL_0019:  or
    IL_001a:  ldarg.0
    IL_001b:  ldfld      uint8 Dopus.Interop.Types.COLORREF::padding
    IL_0020:  or
    IL_0021:  ret
  } // end of method COLORREF::GetHashCode

  .method public hidebysig virtual instance string 
          ToString() cil managed
  {
    // Code size       44 (0x2c)
    .maxstack  8
    .line 132,132 : 4,107 ''
    IL_0000:  ldstr      "COLORREF<Red={0}, Green={1}, Blue={2}> [#{0:X2}{1:"
    + "X2}{2:X2}]"
    IL_0005:  ldarg.0
    IL_0006:  ldfld      uint8 Dopus.Interop.Types.COLORREF::Red
    IL_000b:  box        [mscorlib]System.Byte
    IL_0010:  ldarg.0
    IL_0011:  ldfld      uint8 Dopus.Interop.Types.COLORREF::Green
    IL_0016:  box        [mscorlib]System.Byte
    IL_001b:  ldarg.0
    IL_001c:  ldfld      uint8 Dopus.Interop.Types.COLORREF::Blue
    IL_0021:  box        [mscorlib]System.Byte
    IL_0026:  call       string [mscorlib]System.String::Format(string,
                                                                object,
                                                                object,
                                                                object)
    IL_002b:  ret
  } // end of method COLORREF::ToString

} // end of class Dopus.Interop.Types.COLORREF

.class public sequential ansi sealed beforefieldinit Dopus.Interop.Types.HANDLE
       extends [mscorlib]System.ValueType
{
  .field private native int hBase
  .field private static initonly valuetype Dopus.Interop.Types.HANDLE NULL
  .field private static initonly valuetype Dopus.Interop.Types.HANDLE INVALID_HANDLE_VALUE
  .method private hidebysig specialname rtspecialname 
          instance void  .ctor(native int handle) cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    .line 19,19 : 35,50 'c:\\Development\\cpp.workspace\\dopus\\Dopus.NET\\backup\\Dopus\\Interop\\Types\\HANDLE.cs'
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      native int Dopus.Interop.Types.HANDLE::hBase
    .line 19,19 : 51,52 ''
    IL_0007:  ret
  } // end of method HANDLE::.ctor

  .method public hidebysig specialname static 
          valuetype Dopus.Interop.Types.HANDLE 
          op_Implicit(native int handle) cil managed
  {
    // Code size       55 (0x37)
    .maxstack  2
    .locals init ([0] valuetype Dopus.Interop.Types.HANDLE hResult)
    .line 28,28 : 4,26 ''
    IL_0000:  ldsfld     valuetype Dopus.Interop.Types.HANDLE Dopus.Interop.Types.HANDLE::NULL
    IL_0005:  stloc.0
    .line 29,29 : 4,45 ''
    IL_0006:  ldarg.0
    IL_0007:  ldsfld     valuetype Dopus.Interop.Types.HANDLE Dopus.Interop.Types.HANDLE::INVALID_HANDLE_VALUE
    IL_000c:  ldfld      native int Dopus.Interop.Types.HANDLE::hBase
    IL_0011:  call       bool [mscorlib]System.IntPtr::op_Equality(native int,
                                                                   native int)
    IL_0016:  brfalse.s  IL_0020

    .line 30,30 : 5,36 ''
    IL_0018:  ldsfld     valuetype Dopus.Interop.Types.HANDLE Dopus.Interop.Types.HANDLE::INVALID_HANDLE_VALUE
    IL_001d:  stloc.0
    IL_001e:  br.s       IL_0035

    .line 31,31 : 11,37 ''
    IL_0020:  ldarg.0
    IL_0021:  ldsfld     native int [mscorlib]System.IntPtr::Zero
    IL_0026:  call       bool [mscorlib]System.IntPtr::op_Inequality(native int,
                                                                     native int)
    IL_002b:  brfalse.s  IL_0035

    .line 32,32 : 5,34 ''
    IL_002d:  ldloca.s   hResult
    IL_002f:  ldarg.0
    IL_0030:  call       instance void Dopus.Interop.Types.HANDLE::.ctor(native int)
    .line 34,34 : 4,19 ''
    IL_0035:  ldloc.0
    IL_0036:  ret
  } // end of method HANDLE::op_Implicit

  .method public hidebysig specialname static 
          native int  op_Implicit(valuetype Dopus.Interop.Types.HANDLE handle) cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    .line 46,46 : 4,24 ''
    IL_0000:  ldarga.s   handle
    IL_0002:  ldfld      native int Dopus.Interop.Types.HANDLE::hBase
    IL_0007:  ret
  } // end of method HANDLE::op_Implicit

  .method public hidebysig specialname static 
          bool  op_Implicit(valuetype Dopus.Interop.Types.HANDLE handle) cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    .line 56,56 : 4,27 ''
    IL_0000:  ldarg.0
    IL_0001:  call       bool Dopus.Interop.Types.HANDLE::IsValid(valuetype Dopus.Interop.Types.HANDLE)
    IL_0006:  ret
  } // end of method HANDLE::op_Implicit

  .method public hidebysig specialname static 
          bool  op_Equality(valuetype Dopus.Interop.Types.HANDLE lhs,
                            valuetype Dopus.Interop.Types.HANDLE rhs) cil managed
  {
    .custom instance void [mscorlib]System.Security.SecurityCriticalAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       20 (0x14)
    .maxstack  8
    .line 70,70 : 4,34 ''
    IL_0000:  ldarga.s   lhs
    IL_0002:  ldfld      native int Dopus.Interop.Types.HANDLE::hBase
    IL_0007:  ldarga.s   rhs
    IL_0009:  ldfld      native int Dopus.Interop.Types.HANDLE::hBase
    IL_000e:  call       bool [mscorlib]System.IntPtr::op_Equality(native int,
                                                                   native int)
    IL_0013:  ret
  } // end of method HANDLE::op_Equality

  .method public hidebysig specialname static 
          bool  op_Inequality(valuetype Dopus.Interop.Types.HANDLE lhs,
                              valuetype Dopus.Interop.Types.HANDLE rhs) cil managed
  {
    .custom instance void [mscorlib]System.Security.SecurityCriticalAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       20 (0x14)
    .maxstack  8
    .line 82,82 : 4,34 ''
    IL_0000:  ldarga.s   lhs
    IL_0002:  ldfld      native int Dopus.Interop.Types.HANDLE::hBase
    IL_0007:  ldarga.s   rhs
    IL_0009:  ldfld      native int Dopus.Interop.Types.HANDLE::hBase
    IL_000e:  call       bool [mscorlib]System.IntPtr::op_Inequality(native int,
                                                                     native int)
    IL_0013:  ret
  } // end of method HANDLE::op_Inequality

  .method public hidebysig virtual instance bool 
          Equals(object oCompare) cil managed
  {
    .custom instance void [mscorlib]System.Security.SecurityCriticalAttribute::.ctor() = ( 01 00 00 00 ) 
    .param [1]
    .custom instance void JetBrains.Annotations.CanBeNullAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       54 (0x36)
    .maxstack  8
    .line 97,101 : 4,6 ''
    IL_0000:  ldarg.1
    IL_0001:  brfalse.s  IL_0034

    IL_0003:  ldarg.1
    IL_0004:  isinst     Dopus.Interop.Types.HANDLE
    IL_0009:  brtrue.s   IL_001d

    IL_000b:  ldarg.1
    IL_000c:  unbox.any  [mscorlib]System.IntPtr
    IL_0011:  ldarg.0
    IL_0012:  ldfld      native int Dopus.Interop.Types.HANDLE::hBase
    IL_0017:  call       bool [mscorlib]System.IntPtr::op_Equality(native int,
                                                                   native int)
    IL_001c:  ret

    IL_001d:  ldarg.1
    IL_001e:  unbox.any  Dopus.Interop.Types.HANDLE
    IL_0023:  ldfld      native int Dopus.Interop.Types.HANDLE::hBase
    IL_0028:  ldarg.0
    IL_0029:  ldfld      native int Dopus.Interop.Types.HANDLE::hBase
    IL_002e:  call       bool [mscorlib]System.IntPtr::op_Equality(native int,
                                                                   native int)
    IL_0033:  ret

    IL_0034:  ldc.i4.0
    IL_0035:  ret
  } // end of method HANDLE::Equals

  .method public hidebysig virtual instance int32 
          GetHashCode() cil managed
  {
    // Code size       12 (0xc)
    .maxstack  8
    .line 112,112 : 4,22 ''
    IL_0000:  ldarg.0
    IL_0001:  ldfld      native int Dopus.Interop.Types.HANDLE::hBase
    IL_0006:  call       int32 [mscorlib]System.IntPtr::op_Explicit(native int)
    IL_000b:  ret
  } // end of method HANDLE::GetHashCode

  .method public hidebysig virtual instance string 
          ToString() cil managed
  {
    // Code size       17 (0x11)
    .maxstack  8
    .line 123,123 : 4,31 ''
    IL_0000:  ldarg.0
    IL_0001:  ldflda     native int Dopus.Interop.Types.HANDLE::hBase
    IL_0006:  ldstr      "X"
    IL_000b:  call       instance string [mscorlib]System.IntPtr::ToString(string)
    IL_0010:  ret
  } // end of method HANDLE::ToString

  .method public hidebysig static bool  IsInvalid(valuetype Dopus.Interop.Types.HANDLE handle) cil managed
  {
    // Code size       23 (0x17)
    .maxstack  8
    .line 135,135 : 4,54 ''
    IL_0000:  ldarga.s   handle
    IL_0002:  ldfld      native int Dopus.Interop.Types.HANDLE::hBase
    IL_0007:  ldsfld     valuetype Dopus.Interop.Types.HANDLE Dopus.Interop.Types.HANDLE::INVALID_HANDLE_VALUE
    IL_000c:  ldfld      native int Dopus.Interop.Types.HANDLE::hBase
    IL_0011:  call       bool [mscorlib]System.IntPtr::op_Equality(native int,
                                                                   native int)
    IL_0016:  ret
  } // end of method HANDLE::IsInvalid

  .method public hidebysig static bool  IsNULL(valuetype Dopus.Interop.Types.HANDLE handle) cil managed
  {
    // Code size       18 (0x12)
    .maxstack  8
    .line 145,145 : 4,39 ''
    IL_0000:  ldarga.s   handle
    IL_0002:  ldfld      native int Dopus.Interop.Types.HANDLE::hBase
    IL_0007:  ldsfld     native int [mscorlib]System.IntPtr::Zero
    IL_000c:  call       bool [mscorlib]System.IntPtr::op_Equality(native int,
                                                                   native int)
    IL_0011:  ret
  } // end of method HANDLE::IsNULL

  .method public hidebysig static bool  IsValid(valuetype Dopus.Interop.Types.HANDLE handle) cil managed
  {
    // Code size       20 (0x14)
    .maxstack  8
    .line 155,155 : 4,49 ''
    IL_0000:  ldarg.0
    IL_0001:  call       bool Dopus.Interop.Types.HANDLE::IsInvalid(valuetype Dopus.Interop.Types.HANDLE)
    IL_0006:  brtrue.s   IL_0012

    IL_0008:  ldarg.0
    IL_0009:  call       bool Dopus.Interop.Types.HANDLE::IsNULL(valuetype Dopus.Interop.Types.HANDLE)
    IL_000e:  ldc.i4.0
    IL_000f:  ceq
    IL_0011:  ret

    IL_0012:  ldc.i4.0
    IL_0013:  ret
  } // end of method HANDLE::IsValid

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // Code size       32 (0x20)
    .maxstack  8
    .line 158,158 : 3,65 ''
    IL_0000:  ldsfld     native int [mscorlib]System.IntPtr::Zero
    IL_0005:  newobj     instance void Dopus.Interop.Types.HANDLE::.ctor(native int)
    IL_000a:  stsfld     valuetype Dopus.Interop.Types.HANDLE Dopus.Interop.Types.HANDLE::NULL
    .line 159,159 : 3,84 ''
    IL_000f:  ldc.i4.m1
    IL_0010:  newobj     instance void [mscorlib]System.IntPtr::.ctor(int32)
    IL_0015:  newobj     instance void Dopus.Interop.Types.HANDLE::.ctor(native int)
    IL_001a:  stsfld     valuetype Dopus.Interop.Types.HANDLE Dopus.Interop.Types.HANDLE::INVALID_HANDLE_VALUE
    IL_001f:  ret
  } // end of method HANDLE::.cctor

} // end of class Dopus.Interop.Types.HANDLE

.class public sequential ansi sealed beforefieldinit Dopus.Interop.Types.HICON
       extends [mscorlib]System.ValueType
{
  .field public valuetype Dopus.Interop.Types.HANDLE Handle
  .field private static class Dopus.Internals.Instances.ManagedHandlesTracker`1<class [System.Drawing]System.Drawing.Icon> iconTracker
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(valuetype Dopus.Interop.Types.HANDLE handle) cil managed
  {
    // Code size       27 (0x1b)
    .maxstack  8
    .line 20,20 : 4,16 'c:\\Development\\cpp.workspace\\dopus\\Dopus.NET\\backup\\Dopus\\Interop\\Types\\HICON.cs'
    IL_0000:  ldarg.1
    IL_0001:  call       bool Dopus.Interop.Types.HANDLE::op_Implicit(valuetype Dopus.Interop.Types.HANDLE)
    IL_0006:  brtrue.s   IL_0013

    .line 20,20 : 17,55 ''
    IL_0008:  ldstr      "handle"
    IL_000d:  newobj     instance void [mscorlib]System.ArgumentException::.ctor(string)
    IL_0012:  throw

    .line 21,21 : 4,20 ''
    IL_0013:  ldarg.0
    IL_0014:  ldarg.1
    IL_0015:  stfld      valuetype Dopus.Interop.Types.HANDLE Dopus.Interop.Types.HICON::Handle
    .line 22,22 : 3,4 ''
    IL_001a:  ret
  } // end of method HICON::.ctor

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(native int handle) cil managed
  {
    // Code size       13 (0xd)
    .maxstack  8
    .line 24,25 : 3,26 ''
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       valuetype Dopus.Interop.Types.HANDLE Dopus.Interop.Types.HANDLE::op_Implicit(native int)
    IL_0007:  call       instance void Dopus.Interop.Types.HICON::.ctor(valuetype Dopus.Interop.Types.HANDLE)
    .line 25,25 : 28,29 ''
    IL_000c:  ret
  } // end of method HICON::.ctor

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class [System.Drawing]System.Drawing.Icon icon) cil managed
  {
    .param [1]
    .custom instance void JetBrains.Annotations.CanBeNullAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       51 (0x33)
    .maxstack  5
    .locals init ([0] class [System.Drawing]System.Drawing.Icon CS$0$0000)
    .line 29,29 : 4,20 ''
    IL_0000:  ldarg.1
    IL_0001:  brtrue.s   IL_000e

    .line 29,29 : 21,61 ''
    IL_0003:  ldstr      "icon"
    IL_0008:  newobj     instance void [mscorlib]System.ArgumentNullException::.ctor(string)
    IL_000d:  throw

    .line 30,30 : 4,54 ''
    IL_000e:  ldarg.0
    IL_000f:  call       class Dopus.Internals.Instances.ManagedHandlesTracker`1<class [System.Drawing]System.Drawing.Icon> Dopus.Interop.Types.HICON::get_IconTracker()
    IL_0014:  ldarg.1
    IL_0015:  callvirt   instance native int [System.Drawing]System.Drawing.Icon::get_Handle()
    IL_001a:  ldarg.1
    IL_001b:  dup
    IL_001c:  stloc.0
    IL_001d:  callvirt   instance void class Dopus.Internals.Instances.ManagedHandlesTracker`1<class [System.Drawing]System.Drawing.Icon>::set_Item(native int,
                                                                                                                                                    !0)
    IL_0022:  ldloc.0
    IL_0023:  callvirt   instance native int [System.Drawing]System.Drawing.Icon::get_Handle()
    IL_0028:  call       valuetype Dopus.Interop.Types.HANDLE Dopus.Interop.Types.HANDLE::op_Implicit(native int)
    IL_002d:  stfld      valuetype Dopus.Interop.Types.HANDLE Dopus.Interop.Types.HICON::Handle
    .line 31,31 : 3,4 ''
    IL_0032:  ret
  } // end of method HICON::.ctor

  .method public hidebysig specialname static 
          valuetype Dopus.Interop.Types.HICON 
          op_Implicit(class [System.Drawing]System.Drawing.Icon icon) cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    .line 40,40 : 4,27 ''
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Dopus.Interop.Types.HICON::.ctor(class [System.Drawing]System.Drawing.Icon)
    IL_0006:  ret
  } // end of method HICON::op_Implicit

  .method public hidebysig specialname static 
          class [System.Drawing]System.Drawing.Icon 
          op_Implicit(valuetype Dopus.Interop.Types.HICON hIcon) cil managed
  {
    // Code size       17 (0x11)
    .maxstack  8
    .line 48,48 : 4,30 ''
    IL_0000:  call       class Dopus.Internals.Instances.ManagedHandlesTracker`1<class [System.Drawing]System.Drawing.Icon> Dopus.Interop.Types.HICON::get_IconTracker()
    IL_0005:  ldarg.0
    IL_0006:  call       native int Dopus.Interop.Types.HICON::op_Implicit(valuetype Dopus.Interop.Types.HICON)
    IL_000b:  callvirt   instance !0 class Dopus.Internals.Instances.ManagedHandlesTracker`1<class [System.Drawing]System.Drawing.Icon>::get_Item(native int)
    IL_0010:  ret
  } // end of method HICON::op_Implicit

  .method public hidebysig specialname static 
          native int  op_Implicit(valuetype Dopus.Interop.Types.HICON hIcon) cil managed
  {
    // Code size       13 (0xd)
    .maxstack  8
    .line 56,56 : 4,24 ''
    IL_0000:  ldarga.s   hIcon
    IL_0002:  ldfld      valuetype Dopus.Interop.Types.HANDLE Dopus.Interop.Types.HICON::Handle
    IL_0007:  call       native int Dopus.Interop.Types.HANDLE::op_Implicit(valuetype Dopus.Interop.Types.HANDLE)
    IL_000c:  ret
  } // end of method HICON::op_Implicit

  .method public hidebysig specialname static 
          valuetype Dopus.Interop.Types.HANDLE 
          op_Explicit(valuetype Dopus.Interop.Types.HICON hIcon) cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    .line 64,64 : 4,24 ''
    IL_0000:  ldarga.s   hIcon
    IL_0002:  ldfld      valuetype Dopus.Interop.Types.HANDLE Dopus.Interop.Types.HICON::Handle
    IL_0007:  ret
  } // end of method HICON::op_Explicit

  .method public hidebysig specialname static 
          bool  op_Implicit(valuetype Dopus.Interop.Types.HICON hIcon) cil managed
  {
    // Code size       13 (0xd)
    .maxstack  8
    .line 72,72 : 4,24 ''
    IL_0000:  ldarga.s   hIcon
    IL_0002:  ldfld      valuetype Dopus.Interop.Types.HANDLE Dopus.Interop.Types.HICON::Handle
    IL_0007:  call       bool Dopus.Interop.Types.HANDLE::op_Implicit(valuetype Dopus.Interop.Types.HANDLE)
    IL_000c:  ret
  } // end of method HICON::op_Implicit

  .method public hidebysig specialname static 
          bool  op_Equality(valuetype Dopus.Interop.Types.HICON lhs,
                            valuetype Dopus.Interop.Types.HICON rhs) cil managed
  {
    .custom instance void [mscorlib]System.Security.SecurityCriticalAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       20 (0x14)
    .maxstack  8
    .line 88,88 : 4,36 ''
    IL_0000:  ldarga.s   lhs
    IL_0002:  ldfld      valuetype Dopus.Interop.Types.HANDLE Dopus.Interop.Types.HICON::Handle
    IL_0007:  ldarga.s   rhs
    IL_0009:  ldfld      valuetype Dopus.Interop.Types.HANDLE Dopus.Interop.Types.HICON::Handle
    IL_000e:  call       bool Dopus.Interop.Types.HANDLE::op_Equality(valuetype Dopus.Interop.Types.HANDLE,
                                                                      valuetype Dopus.Interop.Types.HANDLE)
    IL_0013:  ret
  } // end of method HICON::op_Equality

  .method public hidebysig specialname static 
          bool  op_Inequality(valuetype Dopus.Interop.Types.HICON lhs,
                              valuetype Dopus.Interop.Types.HICON rhs) cil managed
  {
    .custom instance void [mscorlib]System.Security.SecurityCriticalAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       20 (0x14)
    .maxstack  8
    .line 100,100 : 4,36 ''
    IL_0000:  ldarga.s   lhs
    IL_0002:  ldfld      valuetype Dopus.Interop.Types.HANDLE Dopus.Interop.Types.HICON::Handle
    IL_0007:  ldarga.s   rhs
    IL_0009:  ldfld      valuetype Dopus.Interop.Types.HANDLE Dopus.Interop.Types.HICON::Handle
    IL_000e:  call       bool Dopus.Interop.Types.HANDLE::op_Inequality(valuetype Dopus.Interop.Types.HANDLE,
                                                                        valuetype Dopus.Interop.Types.HANDLE)
    IL_0013:  ret
  } // end of method HICON::op_Inequality

  .method public hidebysig virtual instance bool 
          Equals(object oCompare) cil managed
  {
    .custom instance void [mscorlib]System.Security.SecurityCriticalAttribute::.ctor() = ( 01 00 00 00 ) 
    .param [1]
    .custom instance void JetBrains.Annotations.CanBeNullAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       99 (0x63)
    .maxstack  2
    .line 113,118 : 4,8 ''
    IL_0000:  ldarg.0
    IL_0001:  ldflda     valuetype Dopus.Interop.Types.HANDLE Dopus.Interop.Types.HICON::Handle
    IL_0006:  ldarg.1
    IL_0007:  constrained. Dopus.Interop.Types.HANDLE
    IL_000d:  callvirt   instance bool [mscorlib]System.Object::Equals(object)
    IL_0012:  brtrue.s   IL_0061

    IL_0014:  ldarg.1
    IL_0015:  brfalse.s  IL_005f

    IL_0017:  ldarg.1
    IL_0018:  isinst     Dopus.Interop.Types.HICON
    IL_001d:  brfalse.s  IL_0037

    IL_001f:  ldarg.0
    IL_0020:  ldfld      valuetype Dopus.Interop.Types.HANDLE Dopus.Interop.Types.HICON::Handle
    IL_0025:  ldarg.1
    IL_0026:  unbox.any  Dopus.Interop.Types.HICON
    IL_002b:  ldfld      valuetype Dopus.Interop.Types.HANDLE Dopus.Interop.Types.HICON::Handle
    IL_0030:  call       bool Dopus.Interop.Types.HANDLE::op_Equality(valuetype Dopus.Interop.Types.HANDLE,
                                                                      valuetype Dopus.Interop.Types.HANDLE)
    IL_0035:  brtrue.s   IL_005d

    IL_0037:  ldarg.1
    IL_0038:  isinst     [System.Drawing]System.Drawing.Icon
    IL_003d:  brfalse.s  IL_005b

    IL_003f:  ldarg.0
    IL_0040:  ldfld      valuetype Dopus.Interop.Types.HANDLE Dopus.Interop.Types.HICON::Handle
    IL_0045:  call       native int Dopus.Interop.Types.HANDLE::op_Implicit(valuetype Dopus.Interop.Types.HANDLE)
    IL_004a:  ldarg.1
    IL_004b:  castclass  [System.Drawing]System.Drawing.Icon
    IL_0050:  callvirt   instance native int [System.Drawing]System.Drawing.Icon::get_Handle()
    IL_0055:  call       bool [mscorlib]System.IntPtr::op_Equality(native int,
                                                                   native int)
    IL_005a:  ret

    IL_005b:  ldc.i4.0
    IL_005c:  ret

    IL_005d:  ldc.i4.1
    IL_005e:  ret

    IL_005f:  ldc.i4.0
    IL_0060:  ret

    IL_0061:  ldc.i4.1
    IL_0062:  ret
  } // end of method HICON::Equals

  .method public hidebysig virtual instance int32 
          GetHashCode() cil managed
  {
    // Code size       18 (0x12)
    .maxstack  8
    .line 129,129 : 4,32 ''
    IL_0000:  ldarg.0
    IL_0001:  ldflda     valuetype Dopus.Interop.Types.HANDLE Dopus.Interop.Types.HICON::Handle
    IL_0006:  constrained. Dopus.Interop.Types.HANDLE
    IL_000c:  callvirt   instance int32 [mscorlib]System.Object::GetHashCode()
    IL_0011:  ret
  } // end of method HICON::GetHashCode

  .method public hidebysig virtual instance string 
          ToString() cil managed
  {
    // Code size       18 (0x12)
    .maxstack  8
    .line 140,140 : 4,29 ''
    IL_0000:  ldarg.0
    IL_0001:  ldflda     valuetype Dopus.Interop.Types.HANDLE Dopus.Interop.Types.HICON::Handle
    IL_0006:  constrained. Dopus.Interop.Types.HANDLE
    IL_000c:  callvirt   instance string [mscorlib]System.Object::ToString()
    IL_0011:  ret
  } // end of method HICON::ToString

  .method assembly hidebysig specialname static 
          class Dopus.Internals.Instances.ManagedHandlesTracker`1<class [System.Drawing]System.Drawing.Icon> 
          get_IconTracker() cil managed
  {
    // Code size       33 (0x21)
    .maxstack  8
    .line 151,151 : 11,98 ''
    IL_0000:  ldsfld     class Dopus.Internals.Instances.ManagedHandlesTracker`1<class [System.Drawing]System.Drawing.Icon> Dopus.Interop.Types.HICON::iconTracker
    IL_0005:  dup
    IL_0006:  brtrue.s   IL_001a

    IL_0008:  pop
    IL_0009:  ldnull
    IL_000a:  ldftn      class [System.Drawing]System.Drawing.Icon [System.Drawing]System.Drawing.Icon::FromHandle(native int)
    IL_0010:  newobj     instance void class Dopus.Internals.Instances.ManagedHandlesTracker`1/HandleToInstFunction<class [System.Drawing]System.Drawing.Icon>::.ctor(object,
                                                                                                                                                                      native int)
    IL_0015:  newobj     instance void class Dopus.Internals.Instances.ManagedHandlesTracker`1<class [System.Drawing]System.Drawing.Icon>::.ctor(class Dopus.Internals.Instances.ManagedHandlesTracker`1/HandleToInstFunction<!0>)
    IL_001a:  dup
    IL_001b:  stsfld     class Dopus.Internals.Instances.ManagedHandlesTracker`1<class [System.Drawing]System.Drawing.Icon> Dopus.Interop.Types.HICON::iconTracker
    IL_0020:  ret
  } // end of method HICON::get_IconTracker

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // Code size       1 (0x1)
    .maxstack  8
    .line 52,151 : 11,98 ''
    IL_0000:  ret
  } // end of method HICON::.cctor

  .property class Dopus.Internals.Instances.ManagedHandlesTracker`1<class [System.Drawing]System.Drawing.Icon>
          IconTracker()
  {
    .custom instance void JetBrains.Annotations.NotNullAttribute::.ctor() = ( 01 00 00 00 ) 
    .get class Dopus.Internals.Instances.ManagedHandlesTracker`1<class [System.Drawing]System.Drawing.Icon> Dopus.Interop.Types.HICON::get_IconTracker()
  } // end of property HICON::IconTracker
} // end of class Dopus.Interop.Types.HICON

.class public sequential autochar sealed beforefieldinit Dopus.Interop.Types.LOGFONT
       extends [mscorlib]System.ValueType
{
  .field public int32 lfHeight
  .field public int32 lfWidth
  .field public int32 lfEscapement
  .field public int32 lfOrientation
  .field public int32 lfWeight
  .field public uint8 lfItalic
  .field public uint8 lfUnderline
  .field public uint8 lfStrikeOut
  .field public uint8 lfCharSet
  .field public uint8 lfOutPrecision
  .field public uint8 lfClipPrecision
  .field public uint8 lfQuality
  .field public uint8 lfPitchAndFamily
  .field public  marshal( fixed sysstring [32]) string lfFaceName
} // end of class Dopus.Interop.Types.LOGFONT

.class public sequential ansi sealed beforefieldinit Dopus.Interop.Types.HWND
       extends [mscorlib]System.ValueType
{
  .field private native int _value
  .method public hidebysig static valuetype Dopus.Interop.Types.HWND 
          Cast(native int hwnd) cil managed
  {
    // Code size       20 (0x14)
    .maxstack  2
    .locals init ([0] valuetype Dopus.Interop.Types.HWND temp,
             [1] valuetype Dopus.Interop.Types.HWND '<>g__initLocal0')
    .line 13,13 : 4,43 'c:\\Development\\cpp.workspace\\dopus\\Dopus.NET\\backup\\Dopus\\Interop\\Types\\HWND.cs'
    IL_0000:  ldloca.s   '<>g__initLocal0'
    IL_0002:  initobj    Dopus.Interop.Types.HWND
    IL_0008:  ldloca.s   '<>g__initLocal0'
    IL_000a:  ldarg.0
    IL_000b:  stfld      native int Dopus.Interop.Types.HWND::_value
    IL_0010:  ldloc.1
    IL_0011:  stloc.0
    .line 14,14 : 4,16 ''
    IL_0012:  ldloc.0
    IL_0013:  ret
  } // end of method HWND::Cast

  .method public hidebysig specialname static 
          native int  op_Implicit(valuetype Dopus.Interop.Types.HWND hwnd) cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    .line 19,19 : 4,23 ''
    IL_0000:  ldarga.s   hwnd
    IL_0002:  ldfld      native int Dopus.Interop.Types.HWND::_value
    IL_0007:  ret
  } // end of method HWND::op_Implicit

  .method public hidebysig specialname static 
          valuetype Dopus.Interop.Types.HWND 
          get_NULL() cil managed
  {
    // Code size       24 (0x18)
    .maxstack  2
    .locals init ([0] valuetype Dopus.Interop.Types.HWND temp,
             [1] valuetype Dopus.Interop.Types.HWND '<>g__initLocal1')
    .line 26,26 : 5,51 ''
    IL_0000:  ldloca.s   '<>g__initLocal1'
    IL_0002:  initobj    Dopus.Interop.Types.HWND
    IL_0008:  ldloca.s   '<>g__initLocal1'
    IL_000a:  ldsfld     native int [mscorlib]System.IntPtr::Zero
    IL_000f:  stfld      native int Dopus.Interop.Types.HWND::_value
    IL_0014:  ldloc.1
    IL_0015:  stloc.0
    .line 27,27 : 5,17 ''
    IL_0016:  ldloc.0
    IL_0017:  ret
  } // end of method HWND::get_NULL

  .method public hidebysig specialname static 
          bool  op_Equality(valuetype Dopus.Interop.Types.HWND lhs,
                            valuetype Dopus.Interop.Types.HWND rhs) cil managed
  {
    // Code size       20 (0x14)
    .maxstack  8
    .line 33,33 : 4,36 ''
    IL_0000:  ldarga.s   lhs
    IL_0002:  ldfld      native int Dopus.Interop.Types.HWND::_value
    IL_0007:  ldarga.s   rhs
    IL_0009:  ldfld      native int Dopus.Interop.Types.HWND::_value
    IL_000e:  call       bool [mscorlib]System.IntPtr::op_Equality(native int,
                                                                   native int)
    IL_0013:  ret
  } // end of method HWND::op_Equality

  .method public hidebysig specialname static 
          bool  op_Inequality(valuetype Dopus.Interop.Types.HWND lhs,
                              valuetype Dopus.Interop.Types.HWND rhs) cil managed
  {
    // Code size       20 (0x14)
    .maxstack  8
    .line 38,38 : 4,36 ''
    IL_0000:  ldarga.s   lhs
    IL_0002:  ldfld      native int Dopus.Interop.Types.HWND::_value
    IL_0007:  ldarga.s   rhs
    IL_0009:  ldfld      native int Dopus.Interop.Types.HWND::_value
    IL_000e:  call       bool [mscorlib]System.IntPtr::op_Inequality(native int,
                                                                     native int)
    IL_0013:  ret
  } // end of method HWND::op_Inequality

  .method public hidebysig virtual instance bool 
          Equals(object oCompare) cil managed
  {
    // Code size       36 (0x24)
    .maxstack  2
    .locals init ([0] valuetype Dopus.Interop.Types.HWND temp)
    .line 43,43 : 4,37 ''
    IL_0000:  ldarg.1
    IL_0001:  unbox.any  Dopus.Interop.Types.HWND
    IL_0006:  call       native int Dopus.Interop.Types.HWND::op_Implicit(valuetype Dopus.Interop.Types.HWND)
    IL_000b:  call       valuetype Dopus.Interop.Types.HWND Dopus.Interop.Types.HWND::Cast(native int)
    IL_0010:  stloc.0
    .line 44,44 : 4,33 ''
    IL_0011:  ldarg.0
    IL_0012:  ldfld      native int Dopus.Interop.Types.HWND::_value
    IL_0017:  ldloca.s   temp
    IL_0019:  ldfld      native int Dopus.Interop.Types.HWND::_value
    IL_001e:  call       bool [mscorlib]System.IntPtr::op_Equality(native int,
                                                                   native int)
    IL_0023:  ret
  } // end of method HWND::Equals

  .method public hidebysig virtual instance int32 
          GetHashCode() cil managed
  {
    // Code size       12 (0xc)
    .maxstack  8
    .line 49,49 : 4,23 ''
    IL_0000:  ldarg.0
    IL_0001:  ldfld      native int Dopus.Interop.Types.HWND::_value
    IL_0006:  call       int32 [mscorlib]System.IntPtr::op_Explicit(native int)
    IL_000b:  ret
  } // end of method HWND::GetHashCode

  .property valuetype Dopus.Interop.Types.HWND
          NULL()
  {
    .get valuetype Dopus.Interop.Types.HWND Dopus.Interop.Types.HWND::get_NULL()
  } // end of property HWND::NULL
} // end of class Dopus.Interop.Types.HWND

.class public sequential ansi sealed beforefieldinit Dopus.Interop.Types.NMHDR
       extends [mscorlib]System.ValueType
{
  .field public valuetype Dopus.Interop.Types.HWND hwndFrom
  .field public native uint idFrom
  .field public uint32 code
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(valuetype Dopus.Interop.Types.HWND hwndFrom,
                               native uint idFrom,
                               uint32 code) cil managed
  {
    // Code size       22 (0x16)
    .maxstack  8
    .line 11,11 : 4,29 'c:\\Development\\cpp.workspace\\dopus\\Dopus.NET\\backup\\Dopus\\Interop\\Types\\NMHDR.cs'
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype Dopus.Interop.Types.HWND Dopus.Interop.Types.NMHDR::hwndFrom
    .line 12,12 : 4,25 ''
    IL_0007:  ldarg.0
    IL_0008:  ldarg.2
    IL_0009:  stfld      native uint Dopus.Interop.Types.NMHDR::idFrom
    .line 13,13 : 4,21 ''
    IL_000e:  ldarg.0
    IL_000f:  ldarg.3
    IL_0010:  stfld      uint32 Dopus.Interop.Types.NMHDR::code
    .line 14,14 : 3,4 ''
    IL_0015:  ret
  } // end of method NMHDR::.ctor

} // end of class Dopus.Interop.Types.NMHDR

.class public sequential ansi sealed beforefieldinit Dopus.Interop.Types.POINT
       extends [mscorlib]System.ValueType
{
  .field public int32 X
  .field public int32 Y
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(int32 x,
                               int32 y) cil managed
  {
    // Code size       15 (0xf)
    .maxstack  8
    .line 24,24 : 4,10 'c:\\Development\\cpp.workspace\\dopus\\Dopus.NET\\backup\\Dopus\\Interop\\Types\\POINT.cs'
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      int32 Dopus.Interop.Types.POINT::X
    .line 25,25 : 4,10 ''
    IL_0007:  ldarg.0
    IL_0008:  ldarg.2
    IL_0009:  stfld      int32 Dopus.Interop.Types.POINT::Y
    .line 26,26 : 3,4 ''
    IL_000e:  ret
  } // end of method POINT::.ctor

  .method public hidebysig specialname static 
          valuetype [System.Drawing]System.Drawing.Point 
          op_Implicit(valuetype Dopus.Interop.Types.POINT p) cil managed
  {
    // Code size       20 (0x14)
    .maxstack  8
    .line 32,32 : 4,31 ''
    IL_0000:  ldarga.s   p
    IL_0002:  ldfld      int32 Dopus.Interop.Types.POINT::X
    IL_0007:  ldarga.s   p
    IL_0009:  ldfld      int32 Dopus.Interop.Types.POINT::Y
    IL_000e:  newobj     instance void [System.Drawing]System.Drawing.Point::.ctor(int32,
                                                                                   int32)
    IL_0013:  ret
  } // end of method POINT::op_Implicit

  .method public hidebysig specialname static 
          valuetype Dopus.Interop.Types.POINT 
          op_Implicit(valuetype [System.Drawing]System.Drawing.Point p) cil managed
  {
    // Code size       20 (0x14)
    .maxstack  8
    .line 39,39 : 4,31 ''
    IL_0000:  ldarga.s   p
    IL_0002:  call       instance int32 [System.Drawing]System.Drawing.Point::get_X()
    IL_0007:  ldarga.s   p
    IL_0009:  call       instance int32 [System.Drawing]System.Drawing.Point::get_Y()
    IL_000e:  newobj     instance void Dopus.Interop.Types.POINT::.ctor(int32,
                                                                        int32)
    IL_0013:  ret
  } // end of method POINT::op_Implicit

} // end of class Dopus.Interop.Types.POINT

.class public sequential ansi serializable sealed beforefieldinit Dopus.Interop.Types.RECT
       extends [mscorlib]System.ValueType
{
  .field public int32 Left
  .field public int32 Top
  .field public int32 Right
  .field public int32 Bottom
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(int32 left_,
                               int32 top_,
                               int32 right_,
                               int32 bottom_) cil managed
  {
    // Code size       30 (0x1e)
    .maxstack  8
    .line 28,28 : 4,17 'c:\\Development\\cpp.workspace\\dopus\\Dopus.NET\\backup\\Dopus\\Interop\\Types\\RECT.cs'
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      int32 Dopus.Interop.Types.RECT::Left
    .line 29,29 : 4,15 ''
    IL_0007:  ldarg.0
    IL_0008:  ldarg.2
    IL_0009:  stfld      int32 Dopus.Interop.Types.RECT::Top
    .line 30,30 : 4,19 ''
    IL_000e:  ldarg.0
    IL_000f:  ldarg.3
    IL_0010:  stfld      int32 Dopus.Interop.Types.RECT::Right
    .line 31,31 : 4,21 ''
    IL_0015:  ldarg.0
    IL_0016:  ldarg.s    bottom_
    IL_0018:  stfld      int32 Dopus.Interop.Types.RECT::Bottom
    .line 32,32 : 3,4 ''
    IL_001d:  ret
  } // end of method RECT::.ctor

  .method public hidebysig specialname instance int32 
          get_Height() cil managed
  {
    // Code size       14 (0xe)
    .maxstack  8
    .line 35,35 : 29,49 ''
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 Dopus.Interop.Types.RECT::Bottom
    IL_0006:  ldarg.0
    IL_0007:  ldfld      int32 Dopus.Interop.Types.RECT::Top
    IL_000c:  sub
    IL_000d:  ret
  } // end of method RECT::get_Height

  .method public hidebysig specialname instance int32 
          get_Width() cil managed
  {
    // Code size       14 (0xe)
    .maxstack  8
    .line 38,38 : 28,48 ''
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 Dopus.Interop.Types.RECT::Right
    IL_0006:  ldarg.0
    IL_0007:  ldfld      int32 Dopus.Interop.Types.RECT::Left
    IL_000c:  sub
    IL_000d:  ret
  } // end of method RECT::get_Width

  .method public hidebysig specialname instance valuetype [System.Drawing]System.Drawing.Size 
          get_Size() cil managed
  {
    // Code size       18 (0x12)
    .maxstack  8
    .line 41,41 : 28,59 ''
    IL_0000:  ldarg.0
    IL_0001:  call       instance int32 Dopus.Interop.Types.RECT::get_Width()
    IL_0006:  ldarg.0
    IL_0007:  call       instance int32 Dopus.Interop.Types.RECT::get_Height()
    IL_000c:  newobj     instance void [System.Drawing]System.Drawing.Size::.ctor(int32,
                                                                                  int32)
    IL_0011:  ret
  } // end of method RECT::get_Size

  .method public hidebysig specialname instance valuetype [System.Drawing]System.Drawing.Point 
          get_Location() cil managed
  {
    // Code size       18 (0x12)
    .maxstack  8
    .line 44,44 : 33,61 ''
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 Dopus.Interop.Types.RECT::Left
    IL_0006:  ldarg.0
    IL_0007:  ldfld      int32 Dopus.Interop.Types.RECT::Top
    IL_000c:  newobj     instance void [System.Drawing]System.Drawing.Point::.ctor(int32,
                                                                                   int32)
    IL_0011:  ret
  } // end of method RECT::get_Location

  .method public hidebysig instance valuetype [System.Drawing]System.Drawing.Rectangle 
          ToRectangle() cil managed
  {
    // Code size       30 (0x1e)
    .maxstack  8
    .line 49,49 : 5,57 ''
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 Dopus.Interop.Types.RECT::Left
    IL_0006:  ldarg.0
    IL_0007:  ldfld      int32 Dopus.Interop.Types.RECT::Top
    IL_000c:  ldarg.0
    IL_000d:  ldfld      int32 Dopus.Interop.Types.RECT::Right
    IL_0012:  ldarg.0
    IL_0013:  ldfld      int32 Dopus.Interop.Types.RECT::Bottom
    IL_0018:  call       valuetype [System.Drawing]System.Drawing.Rectangle [System.Drawing]System.Drawing.Rectangle::FromLTRB(int32,
                                                                                                                               int32,
                                                                                                                               int32,
                                                                                                                               int32)
    IL_001d:  ret
  } // end of method RECT::ToRectangle

  .method public hidebysig static valuetype Dopus.Interop.Types.RECT 
          FromRectangle(valuetype [System.Drawing]System.Drawing.Rectangle rectangle) cil managed
  {
    // Code size       34 (0x22)
    .maxstack  8
    .line 54,54 : 4,86 ''
    IL_0000:  ldarga.s   rectangle
    IL_0002:  call       instance int32 [System.Drawing]System.Drawing.Rectangle::get_Left()
    IL_0007:  ldarga.s   rectangle
    IL_0009:  call       instance int32 [System.Drawing]System.Drawing.Rectangle::get_Top()
    IL_000e:  ldarga.s   rectangle
    IL_0010:  call       instance int32 [System.Drawing]System.Drawing.Rectangle::get_Right()
    IL_0015:  ldarga.s   rectangle
    IL_0017:  call       instance int32 [System.Drawing]System.Drawing.Rectangle::get_Bottom()
    IL_001c:  newobj     instance void Dopus.Interop.Types.RECT::.ctor(int32,
                                                                       int32,
                                                                       int32,
                                                                       int32)
    IL_0021:  ret
  } // end of method RECT::FromRectangle

  .method public hidebysig virtual instance int32 
          GetHashCode() cil managed
  {
    // Code size       65 (0x41)
    .maxstack  4
    .line 60,62 : 4,43 ''
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 Dopus.Interop.Types.RECT::Left
    IL_0006:  ldarg.0
    IL_0007:  ldfld      int32 Dopus.Interop.Types.RECT::Top
    IL_000c:  ldc.i4.s   13
    IL_000e:  shl
    IL_000f:  ldarg.0
    IL_0010:  ldfld      int32 Dopus.Interop.Types.RECT::Top
    IL_0015:  ldc.i4.s   19
    IL_0017:  shr
    IL_0018:  or
    IL_0019:  xor
    IL_001a:  ldarg.0
    IL_001b:  call       instance int32 Dopus.Interop.Types.RECT::get_Width()
    IL_0020:  ldc.i4.s   26
    IL_0022:  shl
    IL_0023:  ldarg.0
    IL_0024:  call       instance int32 Dopus.Interop.Types.RECT::get_Width()
    IL_0029:  ldc.i4.6
    IL_002a:  shr
    IL_002b:  or
    IL_002c:  xor
    IL_002d:  ldarg.0
    IL_002e:  call       instance int32 Dopus.Interop.Types.RECT::get_Height()
    IL_0033:  ldc.i4.7
    IL_0034:  shl
    IL_0035:  ldarg.0
    IL_0036:  call       instance int32 Dopus.Interop.Types.RECT::get_Height()
    IL_003b:  ldc.i4.s   25
    IL_003d:  shr
    IL_003e:  or
    IL_003f:  xor
    IL_0040:  ret
  } // end of method RECT::GetHashCode

  .method public hidebysig specialname static 
          valuetype [System.Drawing]System.Drawing.Rectangle 
          op_Implicit(valuetype Dopus.Interop.Types.RECT rect) cil managed
  {
    // Code size       34 (0x22)
    .maxstack  8
    .line 70,70 : 4,76 ''
    IL_0000:  ldarga.s   rect
    IL_0002:  ldfld      int32 Dopus.Interop.Types.RECT::Left
    IL_0007:  ldarga.s   rect
    IL_0009:  ldfld      int32 Dopus.Interop.Types.RECT::Top
    IL_000e:  ldarga.s   rect
    IL_0010:  ldfld      int32 Dopus.Interop.Types.RECT::Right
    IL_0015:  ldarga.s   rect
    IL_0017:  ldfld      int32 Dopus.Interop.Types.RECT::Bottom
    IL_001c:  call       valuetype [System.Drawing]System.Drawing.Rectangle [System.Drawing]System.Drawing.Rectangle::FromLTRB(int32,
                                                                                                                               int32,
                                                                                                                               int32,
                                                                                                                               int32)
    IL_0021:  ret
  } // end of method RECT::op_Implicit

  .method public hidebysig specialname static 
          valuetype Dopus.Interop.Types.RECT 
          op_Implicit(valuetype [System.Drawing]System.Drawing.Rectangle rect) cil managed
  {
    // Code size       34 (0x22)
    .maxstack  8
    .line 76,76 : 4,66 ''
    IL_0000:  ldarga.s   rect
    IL_0002:  call       instance int32 [System.Drawing]System.Drawing.Rectangle::get_Left()
    IL_0007:  ldarga.s   rect
    IL_0009:  call       instance int32 [System.Drawing]System.Drawing.Rectangle::get_Top()
    IL_000e:  ldarga.s   rect
    IL_0010:  call       instance int32 [System.Drawing]System.Drawing.Rectangle::get_Right()
    IL_0015:  ldarga.s   rect
    IL_0017:  call       instance int32 [System.Drawing]System.Drawing.Rectangle::get_Bottom()
    IL_001c:  newobj     instance void Dopus.Interop.Types.RECT::.ctor(int32,
                                                                       int32,
                                                                       int32,
                                                                       int32)
    IL_0021:  ret
  } // end of method RECT::op_Implicit

  .property instance int32 Height()
  {
    .get instance int32 Dopus.Interop.Types.RECT::get_Height()
  } // end of property RECT::Height
  .property instance int32 Width()
  {
    .get instance int32 Dopus.Interop.Types.RECT::get_Width()
  } // end of property RECT::Width
  .property instance valuetype [System.Drawing]System.Drawing.Size
          Size()
  {
    .get instance valuetype [System.Drawing]System.Drawing.Size Dopus.Interop.Types.RECT::get_Size()
  } // end of property RECT::Size
  .property instance valuetype [System.Drawing]System.Drawing.Point
          Location()
  {
    .get instance valuetype [System.Drawing]System.Drawing.Point Dopus.Interop.Types.RECT::get_Location()
  } // end of property RECT::Location
} // end of class Dopus.Interop.Types.RECT

.class public sequential ansi sealed beforefieldinit Dopus.Interop.Types.SIZE
       extends [mscorlib]System.ValueType
{
  .field public int32 cx
  .field public int32 cy
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(int32 cx,
                               int32 cy) cil managed
  {
    // Code size       15 (0xf)
    .maxstack  8
    .line 15,15 : 4,17 'c:\\Development\\cpp.workspace\\dopus\\Dopus.NET\\backup\\Dopus\\Interop\\Types\\SIZE.cs'
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      int32 Dopus.Interop.Types.SIZE::cx
    .line 16,16 : 4,17 ''
    IL_0007:  ldarg.0
    IL_0008:  ldarg.2
    IL_0009:  stfld      int32 Dopus.Interop.Types.SIZE::cy
    .line 17,17 : 3,4 ''
    IL_000e:  ret
  } // end of method SIZE::.ctor

  .method public hidebysig specialname static 
          valuetype [System.Drawing]System.Drawing.Size 
          op_Implicit(valuetype Dopus.Interop.Types.SIZE size) cil managed
  {
    // Code size       20 (0x14)
    .maxstack  8
    .line 22,22 : 4,38 ''
    IL_0000:  ldarga.s   size
    IL_0002:  ldfld      int32 Dopus.Interop.Types.SIZE::cx
    IL_0007:  ldarga.s   size
    IL_0009:  ldfld      int32 Dopus.Interop.Types.SIZE::cy
    IL_000e:  newobj     instance void [System.Drawing]System.Drawing.Size::.ctor(int32,
                                                                                  int32)
    IL_0013:  ret
  } // end of method SIZE::op_Implicit

  .method public hidebysig specialname static 
          valuetype Dopus.Interop.Types.SIZE 
          op_Implicit(valuetype [System.Drawing]System.Drawing.Size size) cil managed
  {
    // Code size       20 (0x14)
    .maxstack  8
    .line 28,28 : 4,45 ''
    IL_0000:  ldarga.s   size
    IL_0002:  call       instance int32 [System.Drawing]System.Drawing.Size::get_Width()
    IL_0007:  ldarga.s   size
    IL_0009:  call       instance int32 [System.Drawing]System.Drawing.Size::get_Height()
    IL_000e:  newobj     instance void Dopus.Interop.Types.SIZE::.ctor(int32,
                                                                       int32)
    IL_0013:  ret
  } // end of method SIZE::op_Implicit

} // end of class Dopus.Interop.Types.SIZE

.class public auto ansi sealed beforefieldinit JetBrains.Annotations.CanBeNullAttribute
       extends [mscorlib]System.Attribute
{
  .custom instance void [mscorlib]System.AttributeUsageAttribute::.ctor(valuetype [mscorlib]System.AttributeTargets) = ( 01 00 C0 19 00 00 02 00 54 02 0D 41 6C 6C 6F 77   // ........T..Allow
                                                                                                                         4D 75 6C 74 69 70 6C 65 00 54 02 09 49 6E 68 65   // Multiple.T..Inhe
                                                                                                                         72 69 74 65 64 01 )                               // rited.
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Attribute::.ctor()
    IL_0006:  ret
  } // end of method CanBeNullAttribute::.ctor

} // end of class JetBrains.Annotations.CanBeNullAttribute

.class public auto ansi sealed beforefieldinit JetBrains.Annotations.NotNullAttribute
       extends [mscorlib]System.Attribute
{
  .custom instance void [mscorlib]System.AttributeUsageAttribute::.ctor(valuetype [mscorlib]System.AttributeTargets) = ( 01 00 C0 19 00 00 02 00 54 02 0D 41 6C 6C 6F 77   // ........T..Allow
                                                                                                                         4D 75 6C 74 69 70 6C 65 00 54 02 09 49 6E 68 65   // Multiple.T..Inhe
                                                                                                                         72 69 74 65 64 01 )                               // rited.
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Attribute::.ctor()
    IL_0006:  ret
  } // end of method NotNullAttribute::.ctor

} // end of class JetBrains.Annotations.NotNullAttribute

.class public auto ansi sealed beforefieldinit JetBrains.Annotations.StringFormatMethodAttribute
       extends [mscorlib]System.Attribute
{
  .custom instance void [mscorlib]System.AttributeUsageAttribute::.ctor(valuetype [mscorlib]System.AttributeTargets) = ( 01 00 60 00 00 00 02 00 54 02 0D 41 6C 6C 6F 77   // ..`.....T..Allow
                                                                                                                         4D 75 6C 74 69 70 6C 65 00 54 02 09 49 6E 68 65   // Multiple.T..Inhe
                                                                                                                         72 69 74 65 64 01 )                               // rited.
  .field private string '<FormatParameterName>k__BackingField'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(string formatParameterName) cil managed
  {
    // Code size       14 (0xe)
    .maxstack  8
    .line 74,74 : 3,65 'c:\\Development\\cpp.workspace\\dopus\\Dopus.NET\\backup\\Dopus\\ThirdParty\\JetBrains\\Annotations.cs'
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Attribute::.ctor()
    .line 76,76 : 4,46 ''
    IL_0006:  ldarg.0
    IL_0007:  ldarg.1
    IL_0008:  call       instance void JetBrains.Annotations.StringFormatMethodAttribute::set_FormatParameterName(string)
    .line 77,77 : 3,4 ''
    IL_000d:  ret
  } // end of method StringFormatMethodAttribute::.ctor

  .method public hidebysig specialname instance string 
          get_FormatParameterName() cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string JetBrains.Annotations.StringFormatMethodAttribute::'<FormatParameterName>k__BackingField'
    IL_0006:  ret
  } // end of method StringFormatMethodAttribute::get_FormatParameterName

  .method private hidebysig specialname instance void 
          set_FormatParameterName(string 'value') cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string JetBrains.Annotations.StringFormatMethodAttribute::'<FormatParameterName>k__BackingField'
    IL_0007:  ret
  } // end of method StringFormatMethodAttribute::set_FormatParameterName

  .property instance string FormatParameterName()
  {
    .set instance void JetBrains.Annotations.StringFormatMethodAttribute::set_FormatParameterName(string)
    .get instance string JetBrains.Annotations.StringFormatMethodAttribute::get_FormatParameterName()
  } // end of property StringFormatMethodAttribute::FormatParameterName
} // end of class JetBrains.Annotations.StringFormatMethodAttribute

.class public auto ansi sealed beforefieldinit JetBrains.Annotations.InvokerParameterNameAttribute
       extends [mscorlib]System.Attribute
{
  .custom instance void [mscorlib]System.AttributeUsageAttribute::.ctor(valuetype [mscorlib]System.AttributeTargets) = ( 01 00 00 08 00 00 02 00 54 02 0D 41 6C 6C 6F 77   // ........T..Allow
                                                                                                                         4D 75 6C 74 69 70 6C 65 00 54 02 09 49 6E 68 65   // Multiple.T..Inhe
                                                                                                                         72 69 74 65 64 01 )                               // rited.
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Attribute::.ctor()
    IL_0006:  ret
  } // end of method InvokerParameterNameAttribute::.ctor

} // end of class JetBrains.Annotations.InvokerParameterNameAttribute

.class public auto ansi sealed beforefieldinit JetBrains.Annotations.NotifyPropertyChangedInvocatorAttribute
       extends [mscorlib]System.Attribute
{
  .custom instance void [mscorlib]System.AttributeUsageAttribute::.ctor(valuetype [mscorlib]System.AttributeTargets) = ( 01 00 40 00 00 00 02 00 54 02 0D 41 6C 6C 6F 77   // ..@.....T..Allow
                                                                                                                         4D 75 6C 74 69 70 6C 65 00 54 02 09 49 6E 68 65   // Multiple.T..Inhe
                                                                                                                         72 69 74 65 64 01 )                               // rited.
  .field private string '<ParameterName>k__BackingField'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    .line 156,156 : 3,51 ''
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Attribute::.ctor()
    .line 156,156 : 53,54 ''
    IL_0006:  ret
  } // end of method NotifyPropertyChangedInvocatorAttribute::.ctor

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(string parameterName) cil managed
  {
    // Code size       14 (0xe)
    .maxstack  8
    .line 158,158 : 3,71 ''
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Attribute::.ctor()
    .line 160,160 : 4,34 ''
    IL_0006:  ldarg.0
    IL_0007:  ldarg.1
    IL_0008:  call       instance void JetBrains.Annotations.NotifyPropertyChangedInvocatorAttribute::set_ParameterName(string)
    .line 161,161 : 3,4 ''
    IL_000d:  ret
  } // end of method NotifyPropertyChangedInvocatorAttribute::.ctor

  .method public hidebysig specialname instance string 
          get_ParameterName() cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string JetBrains.Annotations.NotifyPropertyChangedInvocatorAttribute::'<ParameterName>k__BackingField'
    IL_0006:  ret
  } // end of method NotifyPropertyChangedInvocatorAttribute::get_ParameterName

  .method private hidebysig specialname instance void 
          set_ParameterName(string 'value') cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string JetBrains.Annotations.NotifyPropertyChangedInvocatorAttribute::'<ParameterName>k__BackingField'
    IL_0007:  ret
  } // end of method NotifyPropertyChangedInvocatorAttribute::set_ParameterName

  .property instance string ParameterName()
  {
    .set instance void JetBrains.Annotations.NotifyPropertyChangedInvocatorAttribute::set_ParameterName(string)
    .get instance string JetBrains.Annotations.NotifyPropertyChangedInvocatorAttribute::get_ParameterName()
  } // end of property NotifyPropertyChangedInvocatorAttribute::ParameterName
} // end of class JetBrains.Annotations.NotifyPropertyChangedInvocatorAttribute

.class public auto ansi sealed beforefieldinit JetBrains.Annotations.ContractAnnotationAttribute
       extends [mscorlib]System.Attribute
{
  .custom instance void [mscorlib]System.AttributeUsageAttribute::.ctor(valuetype [mscorlib]System.AttributeTargets) = ( 01 00 40 00 00 00 02 00 54 02 0D 41 6C 6C 6F 77   // ..@.....T..Allow
                                                                                                                         4D 75 6C 74 69 70 6C 65 01 54 02 09 49 6E 68 65   // Multiple.T..Inhe
                                                                                                                         72 69 74 65 64 01 )                               // rited.
  .field private string '<Contract>k__BackingField'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private bool '<ForceFullStates>k__BackingField'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(string contract) cil managed
  {
    .param [1]
    .custom instance void JetBrains.Annotations.NotNullAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       9 (0x9)
    .maxstack  8
    .line 223,224 : 3,27 ''
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldc.i4.0
    IL_0003:  call       instance void JetBrains.Annotations.ContractAnnotationAttribute::.ctor(string,
                                                                                                bool)
    .line 224,224 : 29,30 ''
    IL_0008:  ret
  } // end of method ContractAnnotationAttribute::.ctor

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(string contract,
                               bool forceFullStates) cil managed
  {
    .param [1]
    .custom instance void JetBrains.Annotations.NotNullAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       21 (0x15)
    .maxstack  8
    .line 226,226 : 3,86 ''
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Attribute::.ctor()
    .line 228,228 : 4,24 ''
    IL_0006:  ldarg.0
    IL_0007:  ldarg.1
    IL_0008:  call       instance void JetBrains.Annotations.ContractAnnotationAttribute::set_Contract(string)
    .line 229,229 : 4,38 ''
    IL_000d:  ldarg.0
    IL_000e:  ldarg.2
    IL_000f:  call       instance void JetBrains.Annotations.ContractAnnotationAttribute::set_ForceFullStates(bool)
    .line 230,230 : 3,4 ''
    IL_0014:  ret
  } // end of method ContractAnnotationAttribute::.ctor

  .method public hidebysig specialname instance string 
          get_Contract() cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string JetBrains.Annotations.ContractAnnotationAttribute::'<Contract>k__BackingField'
    IL_0006:  ret
  } // end of method ContractAnnotationAttribute::get_Contract

  .method private hidebysig specialname instance void 
          set_Contract(string 'value') cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string JetBrains.Annotations.ContractAnnotationAttribute::'<Contract>k__BackingField'
    IL_0007:  ret
  } // end of method ContractAnnotationAttribute::set_Contract

  .method public hidebysig specialname instance bool 
          get_ForceFullStates() cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool JetBrains.Annotations.ContractAnnotationAttribute::'<ForceFullStates>k__BackingField'
    IL_0006:  ret
  } // end of method ContractAnnotationAttribute::get_ForceFullStates

  .method private hidebysig specialname instance void 
          set_ForceFullStates(bool 'value') cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool JetBrains.Annotations.ContractAnnotationAttribute::'<ForceFullStates>k__BackingField'
    IL_0007:  ret
  } // end of method ContractAnnotationAttribute::set_ForceFullStates

  .property instance string Contract()
  {
    .get instance string JetBrains.Annotations.ContractAnnotationAttribute::get_Contract()
    .set instance void JetBrains.Annotations.ContractAnnotationAttribute::set_Contract(string)
  } // end of property ContractAnnotationAttribute::Contract
  .property instance bool ForceFullStates()
  {
    .get instance bool JetBrains.Annotations.ContractAnnotationAttribute::get_ForceFullStates()
    .set instance void JetBrains.Annotations.ContractAnnotationAttribute::set_ForceFullStates(bool)
  } // end of property ContractAnnotationAttribute::ForceFullStates
} // end of class JetBrains.Annotations.ContractAnnotationAttribute

.class public auto ansi sealed beforefieldinit JetBrains.Annotations.LocalizationRequiredAttribute
       extends [mscorlib]System.Attribute
{
  .custom instance void [mscorlib]System.AttributeUsageAttribute::.ctor(valuetype [mscorlib]System.AttributeTargets) = ( 01 00 FF 7F 00 00 02 00 54 02 0D 41 6C 6C 6F 77   // ........T..Allow
                                                                                                                         4D 75 6C 74 69 70 6C 65 00 54 02 09 49 6E 68 65   // Multiple.T..Inhe
                                                                                                                         72 69 74 65 64 01 )                               // rited.
  .field private bool '<Required>k__BackingField'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    .line 250,250 : 3,54 ''
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.1
    IL_0002:  call       instance void JetBrains.Annotations.LocalizationRequiredAttribute::.ctor(bool)
    .line 250,250 : 56,57 ''
    IL_0007:  ret
  } // end of method LocalizationRequiredAttribute::.ctor

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(bool required) cil managed
  {
    // Code size       14 (0xe)
    .maxstack  8
    .line 252,252 : 3,54 ''
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Attribute::.ctor()
    .line 254,254 : 4,24 ''
    IL_0006:  ldarg.0
    IL_0007:  ldarg.1
    IL_0008:  call       instance void JetBrains.Annotations.LocalizationRequiredAttribute::set_Required(bool)
    .line 255,255 : 3,4 ''
    IL_000d:  ret
  } // end of method LocalizationRequiredAttribute::.ctor

  .method public hidebysig specialname instance bool 
          get_Required() cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool JetBrains.Annotations.LocalizationRequiredAttribute::'<Required>k__BackingField'
    IL_0006:  ret
  } // end of method LocalizationRequiredAttribute::get_Required

  .method private hidebysig specialname instance void 
          set_Required(bool 'value') cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool JetBrains.Annotations.LocalizationRequiredAttribute::'<Required>k__BackingField'
    IL_0007:  ret
  } // end of method LocalizationRequiredAttribute::set_Required

  .property instance bool Required()
  {
    .set instance void JetBrains.Annotations.LocalizationRequiredAttribute::set_Required(bool)
    .get instance bool JetBrains.Annotations.LocalizationRequiredAttribute::get_Required()
  } // end of property LocalizationRequiredAttribute::Required
} // end of class JetBrains.Annotations.LocalizationRequiredAttribute

.class public auto ansi sealed beforefieldinit JetBrains.Annotations.CannotApplyEqualityOperatorAttribute
       extends [mscorlib]System.Attribute
{
  .custom instance void [mscorlib]System.AttributeUsageAttribute::.ctor(valuetype [mscorlib]System.AttributeTargets) = ( 01 00 0C 04 00 00 02 00 54 02 0D 41 6C 6C 6F 77   // ........T..Allow
                                                                                                                         4D 75 6C 74 69 70 6C 65 00 54 02 09 49 6E 68 65   // Multiple.T..Inhe
                                                                                                                         72 69 74 65 64 01 )                               // rited.
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Attribute::.ctor()
    IL_0006:  ret
  } // end of method CannotApplyEqualityOperatorAttribute::.ctor

} // end of class JetBrains.Annotations.CannotApplyEqualityOperatorAttribute

.class public auto ansi sealed beforefieldinit JetBrains.Annotations.BaseTypeRequiredAttribute
       extends [mscorlib]System.Attribute
{
  .custom instance void [mscorlib]System.AttributeUsageAttribute::.ctor(valuetype [mscorlib]System.AttributeTargets) = ( 01 00 04 00 00 00 02 00 54 02 0D 41 6C 6C 6F 77   // ........T..Allow
                                                                                                                         4D 75 6C 74 69 70 6C 65 01 54 02 09 49 6E 68 65   // Multiple.T..Inhe
                                                                                                                         72 69 74 65 64 01 )                               // rited.
  .custom instance void JetBrains.Annotations.BaseTypeRequiredAttribute::.ctor(class [mscorlib]System.Type) = ( 01 00 5D 53 79 73 74 65 6D 2E 41 74 74 72 69 62   // ..]System.Attrib
                                                                                                                75 74 65 2C 20 6D 73 63 6F 72 6C 69 62 2C 20 56   // ute, mscorlib, V
                                                                                                                65 72 73 69 6F 6E 3D 34 2E 30 2E 30 2E 30 2C 20   // ersion=4.0.0.0, 
                                                                                                                43 75 6C 74 75 72 65 3D 6E 65 75 74 72 61 6C 2C   // Culture=neutral,
                                                                                                                20 50 75 62 6C 69 63 4B 65 79 54 6F 6B 65 6E 3D   //  PublicKeyToken=
                                                                                                                62 37 37 61 35 63 35 36 31 39 33 34 65 30 38 39   // b77a5c561934e089
                                                                                                                00 00 ) 
  .field private class [mscorlib]System.Type '<BaseType>k__BackingField'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class [mscorlib]System.Type baseType) cil managed
  {
    .param [1]
    .custom instance void JetBrains.Annotations.NotNullAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       14 (0xe)
    .maxstack  8
    .line 302,302 : 3,60 ''
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Attribute::.ctor()
    .line 304,304 : 4,24 ''
    IL_0006:  ldarg.0
    IL_0007:  ldarg.1
    IL_0008:  call       instance void JetBrains.Annotations.BaseTypeRequiredAttribute::set_BaseType(class [mscorlib]System.Type)
    .line 305,305 : 3,4 ''
    IL_000d:  ret
  } // end of method BaseTypeRequiredAttribute::.ctor

  .method public hidebysig specialname instance class [mscorlib]System.Type 
          get_BaseType() cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [mscorlib]System.Type JetBrains.Annotations.BaseTypeRequiredAttribute::'<BaseType>k__BackingField'
    IL_0006:  ret
  } // end of method BaseTypeRequiredAttribute::get_BaseType

  .method private hidebysig specialname instance void 
          set_BaseType(class [mscorlib]System.Type 'value') cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class [mscorlib]System.Type JetBrains.Annotations.BaseTypeRequiredAttribute::'<BaseType>k__BackingField'
    IL_0007:  ret
  } // end of method BaseTypeRequiredAttribute::set_BaseType

  .property instance class [mscorlib]System.Type
          BaseType()
  {
    .custom instance void JetBrains.Annotations.NotNullAttribute::.ctor() = ( 01 00 00 00 ) 
    .get instance class [mscorlib]System.Type JetBrains.Annotations.BaseTypeRequiredAttribute::get_BaseType()
    .set instance void JetBrains.Annotations.BaseTypeRequiredAttribute::set_BaseType(class [mscorlib]System.Type)
  } // end of property BaseTypeRequiredAttribute::BaseType
} // end of class JetBrains.Annotations.BaseTypeRequiredAttribute

.class public auto ansi sealed beforefieldinit JetBrains.Annotations.UsedImplicitlyAttribute
       extends [mscorlib]System.Attribute
{
  .custom instance void [mscorlib]System.AttributeUsageAttribute::.ctor(valuetype [mscorlib]System.AttributeTargets) = ( 01 00 FF 7F 00 00 02 00 54 02 0D 41 6C 6C 6F 77   // ........T..Allow
                                                                                                                         4D 75 6C 74 69 70 6C 65 00 54 02 09 49 6E 68 65   // Multiple.T..Inhe
                                                                                                                         72 69 74 65 64 01 )                               // rited.
  .field private valuetype JetBrains.Annotations.ImplicitUseKindFlags '<UseKindFlags>k__BackingField'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype JetBrains.Annotations.ImplicitUseTargetFlags '<TargetFlags>k__BackingField'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       9 (0x9)
    .maxstack  8
    .line 319,320 : 3,72 ''
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.7
    IL_0002:  ldc.i4.1
    IL_0003:  call       instance void JetBrains.Annotations.UsedImplicitlyAttribute::.ctor(valuetype JetBrains.Annotations.ImplicitUseKindFlags,
                                                                                            valuetype JetBrains.Annotations.ImplicitUseTargetFlags)
    .line 320,320 : 74,75 ''
    IL_0008:  ret
  } // end of method UsedImplicitlyAttribute::.ctor

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(valuetype JetBrains.Annotations.ImplicitUseKindFlags useKindFlags) cil managed
  {
    // Code size       9 (0x9)
    .maxstack  8
    .line 322,323 : 3,56 ''
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldc.i4.1
    IL_0003:  call       instance void JetBrains.Annotations.UsedImplicitlyAttribute::.ctor(valuetype JetBrains.Annotations.ImplicitUseKindFlags,
                                                                                            valuetype JetBrains.Annotations.ImplicitUseTargetFlags)
    .line 323,323 : 58,59 ''
    IL_0008:  ret
  } // end of method UsedImplicitlyAttribute::.ctor

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(valuetype JetBrains.Annotations.ImplicitUseTargetFlags targetFlags) cil managed
  {
    // Code size       9 (0x9)
    .maxstack  8
    .line 325,326 : 3,53 ''
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.7
    IL_0002:  ldarg.1
    IL_0003:  call       instance void JetBrains.Annotations.UsedImplicitlyAttribute::.ctor(valuetype JetBrains.Annotations.ImplicitUseKindFlags,
                                                                                            valuetype JetBrains.Annotations.ImplicitUseTargetFlags)
    .line 326,326 : 55,56 ''
    IL_0008:  ret
  } // end of method UsedImplicitlyAttribute::.ctor

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(valuetype JetBrains.Annotations.ImplicitUseKindFlags useKindFlags,
                               valuetype JetBrains.Annotations.ImplicitUseTargetFlags targetFlags) cil managed
  {
    // Code size       21 (0x15)
    .maxstack  8
    .line 328,329 : 3,74 ''
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Attribute::.ctor()
    .line 331,331 : 4,32 ''
    IL_0006:  ldarg.0
    IL_0007:  ldarg.1
    IL_0008:  call       instance void JetBrains.Annotations.UsedImplicitlyAttribute::set_UseKindFlags(valuetype JetBrains.Annotations.ImplicitUseKindFlags)
    .line 332,332 : 4,30 ''
    IL_000d:  ldarg.0
    IL_000e:  ldarg.2
    IL_000f:  call       instance void JetBrains.Annotations.UsedImplicitlyAttribute::set_TargetFlags(valuetype JetBrains.Annotations.ImplicitUseTargetFlags)
    .line 333,333 : 3,4 ''
    IL_0014:  ret
  } // end of method UsedImplicitlyAttribute::.ctor

  .method public hidebysig specialname instance valuetype JetBrains.Annotations.ImplicitUseKindFlags 
          get_UseKindFlags() cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype JetBrains.Annotations.ImplicitUseKindFlags JetBrains.Annotations.UsedImplicitlyAttribute::'<UseKindFlags>k__BackingField'
    IL_0006:  ret
  } // end of method UsedImplicitlyAttribute::get_UseKindFlags

  .method private hidebysig specialname instance void 
          set_UseKindFlags(valuetype JetBrains.Annotations.ImplicitUseKindFlags 'value') cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype JetBrains.Annotations.ImplicitUseKindFlags JetBrains.Annotations.UsedImplicitlyAttribute::'<UseKindFlags>k__BackingField'
    IL_0007:  ret
  } // end of method UsedImplicitlyAttribute::set_UseKindFlags

  .method public hidebysig specialname instance valuetype JetBrains.Annotations.ImplicitUseTargetFlags 
          get_TargetFlags() cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype JetBrains.Annotations.ImplicitUseTargetFlags JetBrains.Annotations.UsedImplicitlyAttribute::'<TargetFlags>k__BackingField'
    IL_0006:  ret
  } // end of method UsedImplicitlyAttribute::get_TargetFlags

  .method private hidebysig specialname instance void 
          set_TargetFlags(valuetype JetBrains.Annotations.ImplicitUseTargetFlags 'value') cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype JetBrains.Annotations.ImplicitUseTargetFlags JetBrains.Annotations.UsedImplicitlyAttribute::'<TargetFlags>k__BackingField'
    IL_0007:  ret
  } // end of method UsedImplicitlyAttribute::set_TargetFlags

  .property instance valuetype JetBrains.Annotations.ImplicitUseKindFlags
          UseKindFlags()
  {
    .get instance valuetype JetBrains.Annotations.ImplicitUseKindFlags JetBrains.Annotations.UsedImplicitlyAttribute::get_UseKindFlags()
    .set instance void JetBrains.Annotations.UsedImplicitlyAttribute::set_UseKindFlags(valuetype JetBrains.Annotations.ImplicitUseKindFlags)
  } // end of property UsedImplicitlyAttribute::UseKindFlags
  .property instance valuetype JetBrains.Annotations.ImplicitUseTargetFlags
          TargetFlags()
  {
    .get instance valuetype JetBrains.Annotations.ImplicitUseTargetFlags JetBrains.Annotations.UsedImplicitlyAttribute::get_TargetFlags()
    .set instance void JetBrains.Annotations.UsedImplicitlyAttribute::set_TargetFlags(valuetype JetBrains.Annotations.ImplicitUseTargetFlags)
  } // end of property UsedImplicitlyAttribute::TargetFlags
} // end of class JetBrains.Annotations.UsedImplicitlyAttribute

.class public auto ansi sealed beforefieldinit JetBrains.Annotations.MeansImplicitUseAttribute
       extends [mscorlib]System.Attribute
{
  .custom instance void [mscorlib]System.AttributeUsageAttribute::.ctor(valuetype [mscorlib]System.AttributeTargets) = ( 01 00 04 00 00 00 02 00 54 02 0D 41 6C 6C 6F 77   // ........T..Allow
                                                                                                                         4D 75 6C 74 69 70 6C 65 00 54 02 09 49 6E 68 65   // Multiple.T..Inhe
                                                                                                                         72 69 74 65 64 01 )                               // rited.
  .field private valuetype JetBrains.Annotations.ImplicitUseKindFlags '<UseKindFlags>k__BackingField'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype JetBrains.Annotations.ImplicitUseTargetFlags '<TargetFlags>k__BackingField'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       9 (0x9)
    .maxstack  8
    .line 347,348 : 3,72 ''
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.7
    IL_0002:  ldc.i4.1
    IL_0003:  call       instance void JetBrains.Annotations.MeansImplicitUseAttribute::.ctor(valuetype JetBrains.Annotations.ImplicitUseKindFlags,
                                                                                              valuetype JetBrains.Annotations.ImplicitUseTargetFlags)
    .line 348,348 : 74,75 ''
    IL_0008:  ret
  } // end of method MeansImplicitUseAttribute::.ctor

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(valuetype JetBrains.Annotations.ImplicitUseKindFlags useKindFlags) cil managed
  {
    // Code size       9 (0x9)
    .maxstack  8
    .line 350,351 : 3,56 ''
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldc.i4.1
    IL_0003:  call       instance void JetBrains.Annotations.MeansImplicitUseAttribute::.ctor(valuetype JetBrains.Annotations.ImplicitUseKindFlags,
                                                                                              valuetype JetBrains.Annotations.ImplicitUseTargetFlags)
    .line 351,351 : 58,59 ''
    IL_0008:  ret
  } // end of method MeansImplicitUseAttribute::.ctor

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(valuetype JetBrains.Annotations.ImplicitUseTargetFlags targetFlags) cil managed
  {
    // Code size       9 (0x9)
    .maxstack  8
    .line 353,354 : 3,53 ''
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.7
    IL_0002:  ldarg.1
    IL_0003:  call       instance void JetBrains.Annotations.MeansImplicitUseAttribute::.ctor(valuetype JetBrains.Annotations.ImplicitUseKindFlags,
                                                                                              valuetype JetBrains.Annotations.ImplicitUseTargetFlags)
    .line 354,354 : 55,56 ''
    IL_0008:  ret
  } // end of method MeansImplicitUseAttribute::.ctor

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(valuetype JetBrains.Annotations.ImplicitUseKindFlags useKindFlags,
                               valuetype JetBrains.Annotations.ImplicitUseTargetFlags targetFlags) cil managed
  {
    // Code size       21 (0x15)
    .maxstack  8
    .line 356,357 : 3,74 ''
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Attribute::.ctor()
    .line 359,359 : 4,32 ''
    IL_0006:  ldarg.0
    IL_0007:  ldarg.1
    IL_0008:  call       instance void JetBrains.Annotations.MeansImplicitUseAttribute::set_UseKindFlags(valuetype JetBrains.Annotations.ImplicitUseKindFlags)
    .line 360,360 : 4,30 ''
    IL_000d:  ldarg.0
    IL_000e:  ldarg.2
    IL_000f:  call       instance void JetBrains.Annotations.MeansImplicitUseAttribute::set_TargetFlags(valuetype JetBrains.Annotations.ImplicitUseTargetFlags)
    .line 361,361 : 3,4 ''
    IL_0014:  ret
  } // end of method MeansImplicitUseAttribute::.ctor

  .method public hidebysig specialname instance valuetype JetBrains.Annotations.ImplicitUseKindFlags 
          get_UseKindFlags() cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype JetBrains.Annotations.ImplicitUseKindFlags JetBrains.Annotations.MeansImplicitUseAttribute::'<UseKindFlags>k__BackingField'
    IL_0006:  ret
  } // end of method MeansImplicitUseAttribute::get_UseKindFlags

  .method private hidebysig specialname instance void 
          set_UseKindFlags(valuetype JetBrains.Annotations.ImplicitUseKindFlags 'value') cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype JetBrains.Annotations.ImplicitUseKindFlags JetBrains.Annotations.MeansImplicitUseAttribute::'<UseKindFlags>k__BackingField'
    IL_0007:  ret
  } // end of method MeansImplicitUseAttribute::set_UseKindFlags

  .method public hidebysig specialname instance valuetype JetBrains.Annotations.ImplicitUseTargetFlags 
          get_TargetFlags() cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype JetBrains.Annotations.ImplicitUseTargetFlags JetBrains.Annotations.MeansImplicitUseAttribute::'<TargetFlags>k__BackingField'
    IL_0006:  ret
  } // end of method MeansImplicitUseAttribute::get_TargetFlags

  .method private hidebysig specialname instance void 
          set_TargetFlags(valuetype JetBrains.Annotations.ImplicitUseTargetFlags 'value') cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype JetBrains.Annotations.ImplicitUseTargetFlags JetBrains.Annotations.MeansImplicitUseAttribute::'<TargetFlags>k__BackingField'
    IL_0007:  ret
  } // end of method MeansImplicitUseAttribute::set_TargetFlags

  .property instance valuetype JetBrains.Annotations.ImplicitUseKindFlags
          UseKindFlags()
  {
    .custom instance void JetBrains.Annotations.UsedImplicitlyAttribute::.ctor() = ( 01 00 00 00 ) 
    .set instance void JetBrains.Annotations.MeansImplicitUseAttribute::set_UseKindFlags(valuetype JetBrains.Annotations.ImplicitUseKindFlags)
    .get instance valuetype JetBrains.Annotations.ImplicitUseKindFlags JetBrains.Annotations.MeansImplicitUseAttribute::get_UseKindFlags()
  } // end of property MeansImplicitUseAttribute::UseKindFlags
  .property instance valuetype JetBrains.Annotations.ImplicitUseTargetFlags
          TargetFlags()
  {
    .custom instance void JetBrains.Annotations.UsedImplicitlyAttribute::.ctor() = ( 01 00 00 00 ) 
    .set instance void JetBrains.Annotations.MeansImplicitUseAttribute::set_TargetFlags(valuetype JetBrains.Annotations.ImplicitUseTargetFlags)
    .get instance valuetype JetBrains.Annotations.ImplicitUseTargetFlags JetBrains.Annotations.MeansImplicitUseAttribute::get_TargetFlags()
  } // end of property MeansImplicitUseAttribute::TargetFlags
} // end of class JetBrains.Annotations.MeansImplicitUseAttribute

.class public auto ansi sealed JetBrains.Annotations.ImplicitUseKindFlags
       extends [mscorlib]System.Enum
{
  .custom instance void [mscorlib]System.FlagsAttribute::.ctor() = ( 01 00 00 00 ) 
  .field public specialname rtspecialname int32 value__
  .field public static literal valuetype JetBrains.Annotations.ImplicitUseKindFlags Default = int32(0x00000007)
  .field public static literal valuetype JetBrains.Annotations.ImplicitUseKindFlags Access = int32(0x00000001)
  .field public static literal valuetype JetBrains.Annotations.ImplicitUseKindFlags Assign = int32(0x00000002)
  .field public static literal valuetype JetBrains.Annotations.ImplicitUseKindFlags InstantiatedWithFixedConstructorSignature = int32(0x00000004)
  .field public static literal valuetype JetBrains.Annotations.ImplicitUseKindFlags InstantiatedNoFixedConstructorSignature = int32(0x00000008)
} // end of class JetBrains.Annotations.ImplicitUseKindFlags

.class public auto ansi sealed JetBrains.Annotations.ImplicitUseTargetFlags
       extends [mscorlib]System.Enum
{
  .custom instance void [mscorlib]System.FlagsAttribute::.ctor() = ( 01 00 00 00 ) 
  .field public specialname rtspecialname int32 value__
  .field public static literal valuetype JetBrains.Annotations.ImplicitUseTargetFlags Default = int32(0x00000001)
  .field public static literal valuetype JetBrains.Annotations.ImplicitUseTargetFlags Itself = int32(0x00000001)
  .field public static literal valuetype JetBrains.Annotations.ImplicitUseTargetFlags Members = int32(0x00000002)
  .field public static literal valuetype JetBrains.Annotations.ImplicitUseTargetFlags WithMembers = int32(0x00000003)
} // end of class JetBrains.Annotations.ImplicitUseTargetFlags

.class public auto ansi sealed beforefieldinit JetBrains.Annotations.PublicAPIAttribute
       extends [mscorlib]System.Attribute
{
  .custom instance void JetBrains.Annotations.MeansImplicitUseAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private string '<Comment>k__BackingField'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    .line 416,416 : 3,30 ''
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Attribute::.ctor()
    .line 416,416 : 32,33 ''
    IL_0006:  ret
  } // end of method PublicAPIAttribute::.ctor

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(string comment) cil managed
  {
    .param [1]
    .custom instance void JetBrains.Annotations.NotNullAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       14 (0xe)
    .maxstack  8
    .line 418,418 : 3,54 ''
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Attribute::.ctor()
    .line 420,420 : 4,22 ''
    IL_0006:  ldarg.0
    IL_0007:  ldarg.1
    IL_0008:  call       instance void JetBrains.Annotations.PublicAPIAttribute::set_Comment(string)
    .line 421,421 : 3,4 ''
    IL_000d:  ret
  } // end of method PublicAPIAttribute::.ctor

  .method public hidebysig specialname instance string 
          get_Comment() cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string JetBrains.Annotations.PublicAPIAttribute::'<Comment>k__BackingField'
    IL_0006:  ret
  } // end of method PublicAPIAttribute::get_Comment

  .method private hidebysig specialname instance void 
          set_Comment(string 'value') cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string JetBrains.Annotations.PublicAPIAttribute::'<Comment>k__BackingField'
    IL_0007:  ret
  } // end of method PublicAPIAttribute::set_Comment

  .property instance string Comment()
  {
    .custom instance void JetBrains.Annotations.NotNullAttribute::.ctor() = ( 01 00 00 00 ) 
    .get instance string JetBrains.Annotations.PublicAPIAttribute::get_Comment()
    .set instance void JetBrains.Annotations.PublicAPIAttribute::set_Comment(string)
  } // end of property PublicAPIAttribute::Comment
} // end of class JetBrains.Annotations.PublicAPIAttribute

.class public auto ansi sealed beforefieldinit JetBrains.Annotations.InstantHandleAttribute
       extends [mscorlib]System.Attribute
{
  .custom instance void [mscorlib]System.AttributeUsageAttribute::.ctor(valuetype [mscorlib]System.AttributeTargets) = ( 01 00 00 08 00 00 01 00 54 02 09 49 6E 68 65 72   // ........T..Inher
                                                                                                                         69 74 65 64 01 )                                  // ited.
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Attribute::.ctor()
    IL_0006:  ret
  } // end of method InstantHandleAttribute::.ctor

} // end of class JetBrains.Annotations.InstantHandleAttribute

.class public auto ansi sealed beforefieldinit JetBrains.Annotations.PureAttribute
       extends [mscorlib]System.Attribute
{
  .custom instance void [mscorlib]System.AttributeUsageAttribute::.ctor(valuetype [mscorlib]System.AttributeTargets) = ( 01 00 40 00 00 00 01 00 54 02 09 49 6E 68 65 72   // ..@.....T..Inher
                                                                                                                         69 74 65 64 01 )                                  // ited.
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Attribute::.ctor()
    IL_0006:  ret
  } // end of method PureAttribute::.ctor

} // end of class JetBrains.Annotations.PureAttribute

.class public auto ansi beforefieldinit JetBrains.Annotations.PathReferenceAttribute
       extends [mscorlib]System.Attribute
{
  .custom instance void [mscorlib]System.AttributeUsageAttribute::.ctor(valuetype [mscorlib]System.AttributeTargets) = ( 01 00 00 08 00 00 00 00 ) 
  .field private string '<BasePath>k__BackingField'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    .line 461,461 : 3,34 ''
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Attribute::.ctor()
    .line 461,461 : 36,37 ''
    IL_0006:  ret
  } // end of method PathReferenceAttribute::.ctor

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(string basePath) cil managed
  {
    .param [1]
    .custom instance void JetBrains.Annotations.PathReferenceAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       14 (0xe)
    .maxstack  8
    .line 463,463 : 3,65 ''
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Attribute::.ctor()
    .line 465,465 : 4,24 ''
    IL_0006:  ldarg.0
    IL_0007:  ldarg.1
    IL_0008:  call       instance void JetBrains.Annotations.PathReferenceAttribute::set_BasePath(string)
    .line 466,466 : 3,4 ''
    IL_000d:  ret
  } // end of method PathReferenceAttribute::.ctor

  .method public hidebysig specialname instance string 
          get_BasePath() cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string JetBrains.Annotations.PathReferenceAttribute::'<BasePath>k__BackingField'
    IL_0006:  ret
  } // end of method PathReferenceAttribute::get_BasePath

  .method private hidebysig specialname instance void 
          set_BasePath(string 'value') cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string JetBrains.Annotations.PathReferenceAttribute::'<BasePath>k__BackingField'
    IL_0007:  ret
  } // end of method PathReferenceAttribute::set_BasePath

  .property instance string BasePath()
  {
    .custom instance void JetBrains.Annotations.NotNullAttribute::.ctor() = ( 01 00 00 00 ) 
    .set instance void JetBrains.Annotations.PathReferenceAttribute::set_BasePath(string)
    .get instance string JetBrains.Annotations.PathReferenceAttribute::get_BasePath()
  } // end of property PathReferenceAttribute::BasePath
} // end of class JetBrains.Annotations.PathReferenceAttribute

.class public auto ansi sealed beforefieldinit JetBrains.Annotations.AspMvcActionAttribute
       extends [mscorlib]System.Attribute
{
  .custom instance void [mscorlib]System.AttributeUsageAttribute::.ctor(valuetype [mscorlib]System.AttributeTargets) = ( 01 00 40 08 00 00 00 00 )                         // ..@.....
  .field private string '<AnonymousProperty>k__BackingField'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    .line 483,483 : 3,33 ''
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Attribute::.ctor()
    .line 483,483 : 35,36 ''
    IL_0006:  ret
  } // end of method AspMvcActionAttribute::.ctor

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(string anonymousProperty) cil managed
  {
    .param [1]
    .custom instance void JetBrains.Annotations.NotNullAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       14 (0xe)
    .maxstack  8
    .line 485,485 : 3,67 ''
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Attribute::.ctor()
    .line 487,487 : 4,42 ''
    IL_0006:  ldarg.0
    IL_0007:  ldarg.1
    IL_0008:  call       instance void JetBrains.Annotations.AspMvcActionAttribute::set_AnonymousProperty(string)
    .line 488,488 : 3,4 ''
    IL_000d:  ret
  } // end of method AspMvcActionAttribute::.ctor

  .method public hidebysig specialname instance string 
          get_AnonymousProperty() cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string JetBrains.Annotations.AspMvcActionAttribute::'<AnonymousProperty>k__BackingField'
    IL_0006:  ret
  } // end of method AspMvcActionAttribute::get_AnonymousProperty

  .method private hidebysig specialname instance void 
          set_AnonymousProperty(string 'value') cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string JetBrains.Annotations.AspMvcActionAttribute::'<AnonymousProperty>k__BackingField'
    IL_0007:  ret
  } // end of method AspMvcActionAttribute::set_AnonymousProperty

  .property instance string AnonymousProperty()
  {
    .custom instance void JetBrains.Annotations.NotNullAttribute::.ctor() = ( 01 00 00 00 ) 
    .set instance void JetBrains.Annotations.AspMvcActionAttribute::set_AnonymousProperty(string)
    .get instance string JetBrains.Annotations.AspMvcActionAttribute::get_AnonymousProperty()
  } // end of property AspMvcActionAttribute::AnonymousProperty
} // end of class JetBrains.Annotations.AspMvcActionAttribute

.class public auto ansi sealed beforefieldinit JetBrains.Annotations.AspMvcAreaAttribute
       extends JetBrains.Annotations.PathReferenceAttribute
{
  .custom instance void [mscorlib]System.AttributeUsageAttribute::.ctor(valuetype [mscorlib]System.AttributeTargets) = ( 01 00 00 08 00 00 00 00 ) 
  .field private string '<AnonymousProperty>k__BackingField'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    .line 502,502 : 3,31 ''
    IL_0000:  ldarg.0
    IL_0001:  call       instance void JetBrains.Annotations.PathReferenceAttribute::.ctor()
    .line 502,502 : 33,34 ''
    IL_0006:  ret
  } // end of method AspMvcAreaAttribute::.ctor

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(string anonymousProperty) cil managed
  {
    .param [1]
    .custom instance void JetBrains.Annotations.NotNullAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       14 (0xe)
    .maxstack  8
    .line 504,504 : 3,65 ''
    IL_0000:  ldarg.0
    IL_0001:  call       instance void JetBrains.Annotations.PathReferenceAttribute::.ctor()
    .line 506,506 : 4,42 ''
    IL_0006:  ldarg.0
    IL_0007:  ldarg.1
    IL_0008:  call       instance void JetBrains.Annotations.AspMvcAreaAttribute::set_AnonymousProperty(string)
    .line 507,507 : 3,4 ''
    IL_000d:  ret
  } // end of method AspMvcAreaAttribute::.ctor

  .method public hidebysig specialname instance string 
          get_AnonymousProperty() cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string JetBrains.Annotations.AspMvcAreaAttribute::'<AnonymousProperty>k__BackingField'
    IL_0006:  ret
  } // end of method AspMvcAreaAttribute::get_AnonymousProperty

  .method private hidebysig specialname instance void 
          set_AnonymousProperty(string 'value') cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string JetBrains.Annotations.AspMvcAreaAttribute::'<AnonymousProperty>k__BackingField'
    IL_0007:  ret
  } // end of method AspMvcAreaAttribute::set_AnonymousProperty

  .property instance string AnonymousProperty()
  {
    .custom instance void JetBrains.Annotations.NotNullAttribute::.ctor() = ( 01 00 00 00 ) 
    .get instance string JetBrains.Annotations.AspMvcAreaAttribute::get_AnonymousProperty()
    .set instance void JetBrains.Annotations.AspMvcAreaAttribute::set_AnonymousProperty(string)
  } // end of property AspMvcAreaAttribute::AnonymousProperty
} // end of class JetBrains.Annotations.AspMvcAreaAttribute

.class public auto ansi sealed beforefieldinit JetBrains.Annotations.AspMvcControllerAttribute
       extends [mscorlib]System.Attribute
{
  .custom instance void [mscorlib]System.AttributeUsageAttribute::.ctor(valuetype [mscorlib]System.AttributeTargets) = ( 01 00 40 08 00 00 00 00 )                         // ..@.....
  .field private string '<AnonymousProperty>k__BackingField'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    .line 523,523 : 3,37 ''
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Attribute::.ctor()
    .line 523,523 : 39,40 ''
    IL_0006:  ret
  } // end of method AspMvcControllerAttribute::.ctor

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(string anonymousProperty) cil managed
  {
    .param [1]
    .custom instance void JetBrains.Annotations.NotNullAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       14 (0xe)
    .maxstack  8
    .line 525,525 : 3,71 ''
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Attribute::.ctor()
    .line 527,527 : 4,42 ''
    IL_0006:  ldarg.0
    IL_0007:  ldarg.1
    IL_0008:  call       instance void JetBrains.Annotations.AspMvcControllerAttribute::set_AnonymousProperty(string)
    .line 528,528 : 3,4 ''
    IL_000d:  ret
  } // end of method AspMvcControllerAttribute::.ctor

  .method public hidebysig specialname instance string 
          get_AnonymousProperty() cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string JetBrains.Annotations.AspMvcControllerAttribute::'<AnonymousProperty>k__BackingField'
    IL_0006:  ret
  } // end of method AspMvcControllerAttribute::get_AnonymousProperty

  .method private hidebysig specialname instance void 
          set_AnonymousProperty(string 'value') cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string JetBrains.Annotations.AspMvcControllerAttribute::'<AnonymousProperty>k__BackingField'
    IL_0007:  ret
  } // end of method AspMvcControllerAttribute::set_AnonymousProperty

  .property instance string AnonymousProperty()
  {
    .custom instance void JetBrains.Annotations.NotNullAttribute::.ctor() = ( 01 00 00 00 ) 
    .get instance string JetBrains.Annotations.AspMvcControllerAttribute::get_AnonymousProperty()
    .set instance void JetBrains.Annotations.AspMvcControllerAttribute::set_AnonymousProperty(string)
  } // end of property AspMvcControllerAttribute::AnonymousProperty
} // end of class JetBrains.Annotations.AspMvcControllerAttribute

.class public auto ansi sealed beforefieldinit JetBrains.Annotations.AspMvcMasterAttribute
       extends [mscorlib]System.Attribute
{
  .custom instance void [mscorlib]System.AttributeUsageAttribute::.ctor(valuetype [mscorlib]System.AttributeTargets) = ( 01 00 00 08 00 00 00 00 ) 
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Attribute::.ctor()
    IL_0006:  ret
  } // end of method AspMvcMasterAttribute::.ctor

} // end of class JetBrains.Annotations.AspMvcMasterAttribute

.class public auto ansi sealed beforefieldinit JetBrains.Annotations.AspMvcModelTypeAttribute
       extends [mscorlib]System.Attribute
{
  .custom instance void [mscorlib]System.AttributeUsageAttribute::.ctor(valuetype [mscorlib]System.AttributeTargets) = ( 01 00 00 08 00 00 00 00 ) 
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Attribute::.ctor()
    IL_0006:  ret
  } // end of method AspMvcModelTypeAttribute::.ctor

} // end of class JetBrains.Annotations.AspMvcModelTypeAttribute

.class public auto ansi sealed beforefieldinit JetBrains.Annotations.AspMvcPartialViewAttribute
       extends JetBrains.Annotations.PathReferenceAttribute
{
  .custom instance void [mscorlib]System.AttributeUsageAttribute::.ctor(valuetype [mscorlib]System.AttributeTargets) = ( 01 00 40 08 00 00 00 00 )                         // ..@.....
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void JetBrains.Annotations.PathReferenceAttribute::.ctor()
    IL_0006:  ret
  } // end of method AspMvcPartialViewAttribute::.ctor

} // end of class JetBrains.Annotations.AspMvcPartialViewAttribute

.class public auto ansi sealed beforefieldinit JetBrains.Annotations.AspMvcSupressViewErrorAttribute
       extends [mscorlib]System.Attribute
{
  .custom instance void [mscorlib]System.AttributeUsageAttribute::.ctor(valuetype [mscorlib]System.AttributeTargets) = ( 01 00 44 00 00 00 00 00 )                         // ..D.....
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Attribute::.ctor()
    IL_0006:  ret
  } // end of method AspMvcSupressViewErrorAttribute::.ctor

} // end of class JetBrains.Annotations.AspMvcSupressViewErrorAttribute

.class public auto ansi sealed beforefieldinit JetBrains.Annotations.AspMvcDisplayTemplateAttribute
       extends [mscorlib]System.Attribute
{
  .custom instance void [mscorlib]System.AttributeUsageAttribute::.ctor(valuetype [mscorlib]System.AttributeTargets) = ( 01 00 00 08 00 00 00 00 ) 
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Attribute::.ctor()
    IL_0006:  ret
  } // end of method AspMvcDisplayTemplateAttribute::.ctor

} // end of class JetBrains.Annotations.AspMvcDisplayTemplateAttribute

.class public auto ansi sealed beforefieldinit JetBrains.Annotations.AspMvcEditorTemplateAttribute
       extends [mscorlib]System.Attribute
{
  .custom instance void [mscorlib]System.AttributeUsageAttribute::.ctor(valuetype [mscorlib]System.AttributeTargets) = ( 01 00 00 08 00 00 00 00 ) 
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Attribute::.ctor()
    IL_0006:  ret
  } // end of method AspMvcEditorTemplateAttribute::.ctor

} // end of class JetBrains.Annotations.AspMvcEditorTemplateAttribute

.class public auto ansi sealed beforefieldinit JetBrains.Annotations.AspMvcTemplateAttribute
       extends [mscorlib]System.Attribute
{
  .custom instance void [mscorlib]System.AttributeUsageAttribute::.ctor(valuetype [mscorlib]System.AttributeTargets) = ( 01 00 00 08 00 00 00 00 ) 
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Attribute::.ctor()
    IL_0006:  ret
  } // end of method AspMvcTemplateAttribute::.ctor

} // end of class JetBrains.Annotations.AspMvcTemplateAttribute

.class public auto ansi sealed beforefieldinit JetBrains.Annotations.AspMvcViewAttribute
       extends JetBrains.Annotations.PathReferenceAttribute
{
  .custom instance void [mscorlib]System.AttributeUsageAttribute::.ctor(valuetype [mscorlib]System.AttributeTargets) = ( 01 00 40 08 00 00 00 00 )                         // ..@.....
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void JetBrains.Annotations.PathReferenceAttribute::.ctor()
    IL_0006:  ret
  } // end of method AspMvcViewAttribute::.ctor

} // end of class JetBrains.Annotations.AspMvcViewAttribute

.class public auto ansi sealed beforefieldinit JetBrains.Annotations.AspMvcActionSelectorAttribute
       extends [mscorlib]System.Attribute
{
  .custom instance void [mscorlib]System.AttributeUsageAttribute::.ctor(valuetype [mscorlib]System.AttributeTargets) = ( 01 00 80 08 00 00 00 00 ) 
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Attribute::.ctor()
    IL_0006:  ret
  } // end of method AspMvcActionSelectorAttribute::.ctor

} // end of class JetBrains.Annotations.AspMvcActionSelectorAttribute

.class public auto ansi sealed beforefieldinit JetBrains.Annotations.HtmlElementAttributesAttribute
       extends [mscorlib]System.Attribute
{
  .custom instance void [mscorlib]System.AttributeUsageAttribute::.ctor(valuetype [mscorlib]System.AttributeTargets) = ( 01 00 80 09 00 00 01 00 54 02 09 49 6E 68 65 72   // ........T..Inher
                                                                                                                         69 74 65 64 01 )                                  // ited.
  .field private string '<Name>k__BackingField'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    .line 621,621 : 3,42 ''
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Attribute::.ctor()
    .line 621,621 : 44,45 ''
    IL_0006:  ret
  } // end of method HtmlElementAttributesAttribute::.ctor

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(string name) cil managed
  {
    .param [1]
    .custom instance void JetBrains.Annotations.NotNullAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       14 (0xe)
    .maxstack  8
    .line 623,623 : 3,63 ''
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Attribute::.ctor()
    .line 625,625 : 4,16 ''
    IL_0006:  ldarg.0
    IL_0007:  ldarg.1
    IL_0008:  call       instance void JetBrains.Annotations.HtmlElementAttributesAttribute::set_Name(string)
    .line 626,626 : 3,4 ''
    IL_000d:  ret
  } // end of method HtmlElementAttributesAttribute::.ctor

  .method public hidebysig specialname instance string 
          get_Name() cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string JetBrains.Annotations.HtmlElementAttributesAttribute::'<Name>k__BackingField'
    IL_0006:  ret
  } // end of method HtmlElementAttributesAttribute::get_Name

  .method private hidebysig specialname instance void 
          set_Name(string 'value') cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string JetBrains.Annotations.HtmlElementAttributesAttribute::'<Name>k__BackingField'
    IL_0007:  ret
  } // end of method HtmlElementAttributesAttribute::set_Name

  .property instance string Name()
  {
    .custom instance void JetBrains.Annotations.NotNullAttribute::.ctor() = ( 01 00 00 00 ) 
    .set instance void JetBrains.Annotations.HtmlElementAttributesAttribute::set_Name(string)
    .get instance string JetBrains.Annotations.HtmlElementAttributesAttribute::get_Name()
  } // end of property HtmlElementAttributesAttribute::Name
} // end of class JetBrains.Annotations.HtmlElementAttributesAttribute

.class public auto ansi sealed beforefieldinit JetBrains.Annotations.HtmlAttributeValueAttribute
       extends [mscorlib]System.Attribute
{
  .custom instance void [mscorlib]System.AttributeUsageAttribute::.ctor(valuetype [mscorlib]System.AttributeTargets) = ( 01 00 80 09 00 00 01 00 54 02 09 49 6E 68 65 72   // ........T..Inher
                                                                                                                         69 74 65 64 01 )                                  // ited.
  .field private string '<Name>k__BackingField'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(string name) cil managed
  {
    .param [1]
    .custom instance void JetBrains.Annotations.NotNullAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       14 (0xe)
    .maxstack  8
    .line 637,637 : 3,60 ''
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Attribute::.ctor()
    .line 639,639 : 4,16 ''
    IL_0006:  ldarg.0
    IL_0007:  ldarg.1
    IL_0008:  call       instance void JetBrains.Annotations.HtmlAttributeValueAttribute::set_Name(string)
    .line 640,640 : 3,4 ''
    IL_000d:  ret
  } // end of method HtmlAttributeValueAttribute::.ctor

  .method public hidebysig specialname instance string 
          get_Name() cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string JetBrains.Annotations.HtmlAttributeValueAttribute::'<Name>k__BackingField'
    IL_0006:  ret
  } // end of method HtmlAttributeValueAttribute::get_Name

  .method private hidebysig specialname instance void 
          set_Name(string 'value') cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string JetBrains.Annotations.HtmlAttributeValueAttribute::'<Name>k__BackingField'
    IL_0007:  ret
  } // end of method HtmlAttributeValueAttribute::set_Name

  .property instance string Name()
  {
    .custom instance void JetBrains.Annotations.NotNullAttribute::.ctor() = ( 01 00 00 00 ) 
    .get instance string JetBrains.Annotations.HtmlAttributeValueAttribute::get_Name()
    .set instance void JetBrains.Annotations.HtmlAttributeValueAttribute::set_Name(string)
  } // end of property HtmlAttributeValueAttribute::Name
} // end of class JetBrains.Annotations.HtmlAttributeValueAttribute

.class public auto ansi sealed beforefieldinit JetBrains.Annotations.RazorSectionAttribute
       extends [mscorlib]System.Attribute
{
  .custom instance void [mscorlib]System.AttributeUsageAttribute::.ctor(valuetype [mscorlib]System.AttributeTargets) = ( 01 00 40 08 00 00 01 00 54 02 09 49 6E 68 65 72   // ..@.....T..Inher
                                                                                                                         69 74 65 64 01 )                                  // ited.
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Attribute::.ctor()
    IL_0006:  ret
  } // end of method RazorSectionAttribute::.ctor

} // end of class JetBrains.Annotations.RazorSectionAttribute

.class public abstract auto ansi sealed beforefieldinit Dopus.UI.ConvertEx
       extends [mscorlib]System.Object
{
  .method public hidebysig static valuetype [System.Drawing]System.Drawing.Color 
          ColorRefToColor(uint32 colorRef) cil managed
  {
    // Code size       23 (0x17)
    .maxstack  3
    .locals init ([0] uint8 r,
             [1] uint8 g,
             [2] uint8 b)
    .line 22,22 : 4,30 'c:\\Development\\cpp.workspace\\dopus\\Dopus.NET\\backup\\Dopus\\UI\\ConvertEx.cs'
    IL_0000:  ldarg.0
    IL_0001:  conv.u1
    IL_0002:  stloc.0
    .line 23,23 : 4,35 ''
    IL_0003:  ldarg.0
    IL_0004:  ldc.i4.8
    IL_0005:  shr.un
    IL_0006:  conv.u1
    IL_0007:  stloc.1
    .line 24,24 : 4,36 ''
    IL_0008:  ldarg.0
    IL_0009:  ldc.i4.s   16
    IL_000b:  shr.un
    IL_000c:  conv.u1
    IL_000d:  stloc.2
    .line 26,26 : 4,35 ''
    IL_000e:  ldloc.0
    IL_000f:  ldloc.1
    IL_0010:  ldloc.2
    IL_0011:  call       valuetype [System.Drawing]System.Drawing.Color [System.Drawing]System.Drawing.Color::FromArgb(int32,
                                                                                                                       int32,
                                                                                                                       int32)
    IL_0016:  ret
  } // end of method ConvertEx::ColorRefToColor

  .method public hidebysig static int32  HundredthInchToTwips(int32 n) cil managed
  {
    // Code size       14 (0xe)
    .maxstack  8
    .line 37,37 : 4,27 ''
    IL_0000:  ldarg.0
    IL_0001:  conv.r8
    IL_0002:  ldc.r8     14.4
    IL_000b:  mul
    IL_000c:  conv.i4
    IL_000d:  ret
  } // end of method ConvertEx::HundredthInchToTwips

  .method public hidebysig static float32 
          InchesToPixels(float32 length,
                         float32 dpi) cil managed
  {
    // Code size       4 (0x4)
    .maxstack  8
    .line 48,48 : 4,24 ''
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  mul
    IL_0003:  ret
  } // end of method ConvertEx::InchesToPixels

  .method public hidebysig static float32 
          InchesToTwips(float32 inches) cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    .line 58,58 : 4,25 ''
    IL_0000:  ldarg.0
    IL_0001:  ldc.r4     1440.
    IL_0006:  mul
    IL_0007:  ret
  } // end of method ConvertEx::InchesToTwips

  .method public hidebysig static float32 
          PointsToTwips(float32 points) cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    .line 68,68 : 4,26 ''
    IL_0000:  ldarg.0
    IL_0001:  ldc.r4     20.
    IL_0006:  mul
    IL_0007:  ret
  } // end of method ConvertEx::PointsToTwips

  .method public hidebysig static float32 
          PixelsToInches(float32 length,
                         float32 dpi) cil managed
  {
    // Code size       4 (0x4)
    .maxstack  8
    .line 79,79 : 4,24 ''
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  div
    IL_0003:  ret
  } // end of method ConvertEx::PixelsToInches

  .method public hidebysig static float32 
          TwipsToInches(float32 twips) cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    .line 89,89 : 4,25 ''
    IL_0000:  ldarg.0
    IL_0001:  ldc.r4     1440.
    IL_0006:  div
    IL_0007:  ret
  } // end of method ConvertEx::TwipsToInches

  .method public hidebysig static float32 
          TwipsToPoints(int32 twips) cil managed
  {
    // Code size       9 (0x9)
    .maxstack  8
    .line 99,99 : 4,25 ''
    IL_0000:  ldarg.0
    IL_0001:  conv.r4
    IL_0002:  ldc.r4     20.
    IL_0007:  div
    IL_0008:  ret
  } // end of method ConvertEx::TwipsToPoints

} // end of class Dopus.UI.ConvertEx

.class public auto ansi sealed beforefieldinit Dopus.Wow64
       extends Dopus.Internals.Disposables.UnmanagedDisposables
{
  .field static assembly class [mscorlib]System.WeakReference refInstance
  .field assembly native int hRedirectHandle
  .method assembly hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       29 (0x1d)
    .maxstack  8
    .line 26,26 : 3,49 'c:\\Development\\cpp.workspace\\dopus\\Dopus.NET\\backup\\Dopus\\Wow64.cs'
    IL_0000:  ldarg.0
    IL_0001:  ldsfld     native int [mscorlib]System.IntPtr::Zero
    IL_0006:  stfld      native int Dopus.Wow64::hRedirectHandle
    .line 28,28 : 3,19 ''
    IL_000b:  ldarg.0
    IL_000c:  call       instance void Dopus.Internals.Disposables.UnmanagedDisposables::.ctor()
    .line 30,30 : 4,40 ''
    IL_0011:  ldarg.0
    IL_0012:  call       native int Dopus.Wow64::InternalDisable()
    IL_0017:  stfld      native int Dopus.Wow64::hRedirectHandle
    .line 31,31 : 3,4 ''
    IL_001c:  ret
  } // end of method Wow64::.ctor

  .method assembly hidebysig strict virtual 
          instance void  Release() cil managed
  {
    .custom instance void [mscorlib]System.Security.SecurityCriticalAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       23 (0x17)
    .maxstack  8
    .line 41,41 : 4,36 ''
    IL_0000:  ldarg.0
    IL_0001:  ldfld      native int Dopus.Wow64::hRedirectHandle
    IL_0006:  call       void Dopus.Wow64::InternalRevert(native int)
    .line 42,42 : 4,34 ''
    IL_000b:  ldarg.0
    IL_000c:  ldsfld     native int [mscorlib]System.IntPtr::Zero
    IL_0011:  stfld      native int Dopus.Wow64::hRedirectHandle
    .line 43,43 : 3,4 ''
    IL_0016:  ret
  } // end of method Wow64::Release

  .method public hidebysig specialname static 
          bool  get_RedirectionDisabled() cil managed
  {
    // Code size       45 (0x2d)
    .maxstack  8
    .line 54,56 : 5,40 ''
    IL_0000:  ldsfld     class [mscorlib]System.WeakReference Dopus.Wow64::refInstance
    IL_0005:  callvirt   instance bool [mscorlib]System.WeakReference::get_IsAlive()
    IL_000a:  brfalse.s  IL_002b

    IL_000c:  ldsfld     class [mscorlib]System.WeakReference Dopus.Wow64::refInstance
    IL_0011:  callvirt   instance object [mscorlib]System.WeakReference::get_Target()
    IL_0016:  castclass  Dopus.Wow64
    IL_001b:  ldfld      native int Dopus.Wow64::hRedirectHandle
    IL_0020:  ldsfld     native int [mscorlib]System.IntPtr::Zero
    IL_0025:  call       bool [mscorlib]System.IntPtr::op_Inequality(native int,
                                                                     native int)
    IL_002a:  ret

    IL_002b:  ldc.i4.0
    IL_002c:  ret
  } // end of method Wow64::get_RedirectionDisabled

  .method public hidebysig static class Dopus.Wow64 
          DisableRedirection() cil managed
  {
    .custom instance void JetBrains.Annotations.NotNullAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       74 (0x4a)
    .maxstack  2
    .locals init ([0] class Dopus.Wow64 'instance',
             [1] bool '<>s__LockTaken0',
             [2] class [mscorlib]System.WeakReference CS$2$0000)
    .line 63,63 : 4,26 ''
    IL_0000:  ldnull
    IL_0001:  stloc.0
    IL_0002:  ldc.i4.0
    IL_0003:  stloc.1
    .line 64,64 : 4,21 ''
    .try
    {
      IL_0004:  ldsfld     class [mscorlib]System.WeakReference Dopus.Wow64::refInstance
      IL_0009:  dup
      IL_000a:  stloc.2
      IL_000b:  ldloca.s   '<>s__LockTaken0'
      IL_000d:  call       void [mscorlib]System.Threading.Monitor::Enter(object,
                                                                          bool&)
      .line 65,65 : 5,28 ''
      IL_0012:  call       bool Dopus.Wow64::get_RedirectionDisabled()
      IL_0017:  brfalse.s  IL_002b

      .line 66,66 : 6,43 ''
      IL_0019:  ldsfld     class [mscorlib]System.WeakReference Dopus.Wow64::refInstance
      IL_001e:  callvirt   instance object [mscorlib]System.WeakReference::get_Target()
      IL_0023:  castclass  Dopus.Wow64
      IL_0028:  stloc.0
      IL_0029:  br.s       IL_003c

      .line 68,68 : 6,29 ''
      IL_002b:  newobj     instance void Dopus.Wow64::.ctor()
      IL_0030:  stloc.0
      .line 69,69 : 6,48 ''
      IL_0031:  ldloc.0
      IL_0032:  newobj     instance void [mscorlib]System.WeakReference::.ctor(object)
      IL_0037:  stsfld     class [mscorlib]System.WeakReference Dopus.Wow64::refInstance
      IL_003c:  leave.s    IL_0048

    }  // end .try
    finally
    {
      IL_003e:  ldloc.1
      IL_003f:  brfalse.s  IL_0047

      IL_0041:  ldloc.2
      IL_0042:  call       void [mscorlib]System.Threading.Monitor::Exit(object)
      IL_0047:  endfinally
      .line 72,72 : 4,20 ''
    }  // end handler
    IL_0048:  ldloc.0
    IL_0049:  ret
  } // end of method Wow64::DisableRedirection

  .method assembly hidebysig static pinvokeimpl("dopus.exe" as "DisableWow64Redirection" nomangle winapi) 
          native int  InternalDisable() cil managed preservesig
  {
    .custom instance void [mscorlib]System.Security.SuppressUnmanagedCodeSecurityAttribute::.ctor() = ( 01 00 00 00 ) 
  }
  .method assembly hidebysig static pinvokeimpl("dopus.exe" as "RevertWow64Redirection" nomangle winapi) 
          void  InternalRevert(native int hHandle) cil managed preservesig
  {
    .custom instance void [mscorlib]System.Security.SuppressUnmanagedCodeSecurityAttribute::.ctor() = ( 01 00 00 00 ) 
  }
  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // Code size       1 (0x1)
    .maxstack  8
    .line 52,56 : 5,40 ''
    IL_0000:  ret
  } // end of method Wow64::.cctor

  .property bool RedirectionDisabled()
  {
    .get bool Dopus.Wow64::get_RedirectionDisabled()
  } // end of property Wow64::RedirectionDisabled
} // end of class Dopus.Wow64

.class public auto ansi beforefieldinit Dopus.XML
       extends [mscorlib]System.Object
{
  .method public hidebysig static valuetype Dopus.Interop.Types.HANDLE 
          XMLLoadFile([in] string  marshal( lptstr) pszFile) cil managed
  {
  } // end of method XML::XMLLoadFile

  .method public hidebysig static bool 
          marshal( bool) 
          XMLSaveFile(valuetype Dopus.Interop.Types.HANDLE hXML,
                      [in] string  marshal( lptstr) pszFile) cil managed
  {
  } // end of method XML::XMLSaveFile

  .method public hidebysig static valuetype Dopus.Interop.Types.HANDLE 
          XMLCreateFile() cil managed
  {
  } // end of method XML::XMLCreateFile

  .method public hidebysig static void  XMLFreeFile(valuetype Dopus.Interop.Types.HANDLE hXML) cil managed
  {
  } // end of method XML::XMLFreeFile

  .method public hidebysig static valuetype Dopus.Interop.Types.HANDLE 
          XMLAddChildNode(valuetype Dopus.Interop.Types.HANDLE hXML,
                          [in] string  marshal( lptstr) pszName) cil managed
  {
  } // end of method XML::XMLAddChildNode

  .method public hidebysig static bool 
          marshal( bool) 
          XMLDeleteChild(valuetype Dopus.Interop.Types.HANDLE hXML,
                         valuetype Dopus.Interop.Types.HANDLE hChild) cil managed
  {
  } // end of method XML::XMLDeleteChild

  .method public hidebysig static bool 
          marshal( bool) 
          XMLDeleteAllChildNodes(valuetype Dopus.Interop.Types.HANDLE hXML) cil managed
  {
  } // end of method XML::XMLDeleteAllChildNodes

  .method public hidebysig static valuetype Dopus.Interop.Types.HANDLE 
          XMLFirstChildNode(valuetype Dopus.Interop.Types.HANDLE hXML) cil managed
  {
  } // end of method XML::XMLFirstChildNode

  .method public hidebysig static valuetype Dopus.Interop.Types.HANDLE 
          XMLNextNode(valuetype Dopus.Interop.Types.HANDLE hXML) cil managed
  {
  } // end of method XML::XMLNextNode

  .method public hidebysig static valuetype Dopus.Interop.Types.HANDLE 
          XMLFindChildNode(valuetype Dopus.Interop.Types.HANDLE hXML,
                           [in] string  marshal( lptstr) pszName) cil managed
  {
  } // end of method XML::XMLFindChildNode

  .method public hidebysig static valuetype Dopus.Interop.Types.HANDLE 
          XMLEnumChildNodes(valuetype Dopus.Interop.Types.HANDLE hXML,
                            [in] string  marshal( lptstr) pszName,
                            valuetype Dopus.Interop.Types.HANDLE hPrev) cil managed
  {
  } // end of method XML::XMLEnumChildNodes

  .method public hidebysig static bool 
          marshal( bool) 
          XMLGetNodeName(valuetype Dopus.Interop.Types.HANDLE hXML,
                         class [mscorlib]System.Text.StringBuilder  marshal( lptstr) pszName,
                         int32& pcchMax) cil managed
  {
  } // end of method XML::XMLGetNodeName

  .method public hidebysig static bool 
          marshal( bool) 
          XMLSetNodeName(valuetype Dopus.Interop.Types.HANDLE hXML,
                         [in] string  marshal( lptstr) pszName) cil managed
  {
  } // end of method XML::XMLSetNodeName

  .method public hidebysig static bool 
          marshal( bool) 
          XMLGetNodeValue(valuetype Dopus.Interop.Types.HANDLE hXML,
                          class [mscorlib]System.Text.StringBuilder  marshal( lptstr) pszValue,
                          int32& pcchMax) cil managed
  {
  } // end of method XML::XMLGetNodeValue

  .method public hidebysig static bool 
          marshal( bool) 
          XMLSetNodeValue(valuetype Dopus.Interop.Types.HANDLE hXML,
                          [in] string  marshal( lptstr) pszValue) cil managed
  {
  } // end of method XML::XMLSetNodeValue

  .method public hidebysig static bool 
          marshal( bool) 
          XMLGetNodeBoolValue(valuetype Dopus.Interop.Types.HANDLE hXML,
                              bool&  marshal( bool) pfValue) cil managed
  {
  } // end of method XML::XMLGetNodeBoolValue

  .method public hidebysig static bool 
          marshal( bool) 
          XMLSetNodeBoolValue(valuetype Dopus.Interop.Types.HANDLE hXML,
                              bool  marshal( bool) fValue) cil managed
  {
  } // end of method XML::XMLSetNodeBoolValue

  .method public hidebysig static bool 
          marshal( bool) 
          XMLGetNodeIntValue(valuetype Dopus.Interop.Types.HANDLE hXML,
                             int32& piValue) cil managed
  {
  } // end of method XML::XMLGetNodeIntValue

  .method public hidebysig static bool 
          marshal( bool) 
          XMLSetNodeIntValue(valuetype Dopus.Interop.Types.HANDLE hXML,
                             int32 iValue) cil managed
  {
  } // end of method XML::XMLSetNodeIntValue

  .method public hidebysig static bool 
          marshal( bool) 
          XMLGetNodeDWORDValue(valuetype Dopus.Interop.Types.HANDLE hXML,
                               uint32& pdwValue) cil managed
  {
  } // end of method XML::XMLGetNodeDWORDValue

  .method public hidebysig static bool 
          marshal( bool) 
          XMLSetNodeDWORDValue(valuetype Dopus.Interop.Types.HANDLE hXML,
                               uint32 dwValue) cil managed
  {
  } // end of method XML::XMLSetNodeDWORDValue

  .method public hidebysig static bool 
          marshal( bool) 
          XMLGetNodeDWORDLONGValue(valuetype Dopus.Interop.Types.HANDLE hXML,
                                   uint64& pdwlValue) cil managed
  {
  } // end of method XML::XMLGetNodeDWORDLONGValue

  .method public hidebysig static bool 
          marshal( bool) 
          XMLSetNodeDWORDLONGValue(valuetype Dopus.Interop.Types.HANDLE hXML,
                                   uint64 dwlValue) cil managed
  {
  } // end of method XML::XMLSetNodeDWORDLONGValue

  .method public hidebysig static bool 
          marshal( bool) 
          XMLGetNodeLOGFONTValue(valuetype Dopus.Interop.Types.HANDLE hXML,
                                 valuetype Dopus.Interop.Types.LOGFONT& plfValue) cil managed
  {
  } // end of method XML::XMLGetNodeLOGFONTValue

  .method public hidebysig static bool 
          marshal( bool) 
          XMLSetNodeLOGFONTValue(valuetype Dopus.Interop.Types.HANDLE hXML,
                                 valuetype Dopus.Interop.Types.LOGFONT& plfValue) cil managed
  {
  } // end of method XML::XMLSetNodeLOGFONTValue

  .method public hidebysig static bool 
          marshal( bool) 
          XMLGetNodeBinaryValue(valuetype Dopus.Interop.Types.HANDLE hXML,
                                valuetype Dopus.Interop.Types.HANDLE pValue,
                                uint32& pdwSize) cil managed
  {
  } // end of method XML::XMLGetNodeBinaryValue

  .method public hidebysig static bool 
          marshal( bool) 
          XMLSetNodeBinaryValue(valuetype Dopus.Interop.Types.HANDLE hXML,
                                valuetype Dopus.Interop.Types.HANDLE pValue,
                                uint32 dwSize) cil managed
  {
  } // end of method XML::XMLSetNodeBinaryValue

  .method public hidebysig static bool 
          marshal( bool) 
          XMLGetNodeAttribute(valuetype Dopus.Interop.Types.HANDLE hXML,
                              [in] string  marshal( lptstr) pszAttrName,
                              class [mscorlib]System.Text.StringBuilder  marshal( lptstr) pszAttrValue,
                              int32& pcchMax) cil managed
  {
  } // end of method XML::XMLGetNodeAttribute

  .method public hidebysig static bool 
          marshal( bool) 
          XMLSetNodeAttribute(valuetype Dopus.Interop.Types.HANDLE hXML,
                              [in] string  marshal( lptstr) pszAttrName,
                              [in] string  marshal( lptstr) pszAttrValue) cil managed
  {
  } // end of method XML::XMLSetNodeAttribute

  .method public hidebysig static bool 
          marshal( bool) 
          XMLGetNodeBoolAttribute(valuetype Dopus.Interop.Types.HANDLE hXML,
                                  [in] string  marshal( lptstr) pszAttrName,
                                  int32& pfAttrValue) cil managed
  {
  } // end of method XML::XMLGetNodeBoolAttribute

  .method public hidebysig static bool 
          marshal( bool) 
          XMLSetNodeBoolAttribute(valuetype Dopus.Interop.Types.HANDLE hXML,
                                  [in] string  marshal( lptstr) pszAttrName,
                                  bool  marshal( bool) fAttrValue) cil managed
  {
  } // end of method XML::XMLSetNodeBoolAttribute

  .method public hidebysig static bool 
          marshal( bool) 
          XMLGetNodeIntAttribute(valuetype Dopus.Interop.Types.HANDLE hXML,
                                 [in] string  marshal( lptstr) pszAttrName,
                                 int32& piAttrValue) cil managed
  {
  } // end of method XML::XMLGetNodeIntAttribute

  .method public hidebysig static bool 
          marshal( bool) 
          XMLSetNodeIntAttribute(valuetype Dopus.Interop.Types.HANDLE hXML,
                                 [in] string  marshal( lptstr) pszAttrName,
                                 int32 iAttrValue) cil managed
  {
  } // end of method XML::XMLSetNodeIntAttribute

  .method public hidebysig static bool 
          marshal( bool) 
          XMLGetNodeDWORDAttribute(valuetype Dopus.Interop.Types.HANDLE hXML,
                                   class [mscorlib]System.Text.StringBuilder  marshal( lptstr) pszAttrName,
                                   uint32& pdwAttrValue) cil managed
  {
  } // end of method XML::XMLGetNodeDWORDAttribute

  .method public hidebysig static bool 
          marshal( bool) 
          XMLSetNodeDWORDAttribute(valuetype Dopus.Interop.Types.HANDLE hXML,
                                   class [mscorlib]System.Text.StringBuilder  marshal( lptstr) pszAttrName,
                                   uint32 dwAttrValue) cil managed
  {
  } // end of method XML::XMLSetNodeDWORDAttribute

  .method public hidebysig static bool 
          marshal( bool) 
          XMLGetNodeDWORDLONGAttribute(valuetype Dopus.Interop.Types.HANDLE hXML,
                                       [in] string  marshal( lptstr) pszAttrName,
                                       uint64& pdwlAttrValue) cil managed
  {
  } // end of method XML::XMLGetNodeDWORDLONGAttribute

  .method public hidebysig static bool 
          marshal( bool) 
          XMLSetNodeDWORDLONGAttribute(valuetype Dopus.Interop.Types.HANDLE hXML,
                                       [in] string  marshal( lptstr) pszAttrName,
                                       uint64 dwlAttrValue) cil managed
  {
  } // end of method XML::XMLSetNodeDWORDLONGAttribute

  .method public hidebysig static bool 
          marshal( bool) 
          XMLDeleteNodeAttribute(valuetype Dopus.Interop.Types.HANDLE hXML,
                                 [in] string  marshal( lptstr) pszAttrName) cil managed
  {
  } // end of method XML::XMLDeleteNodeAttribute

  .method public hidebysig static bool 
          marshal( bool) 
          XMLDeleteAllNodeAttributes(valuetype Dopus.Interop.Types.HANDLE hXML) cil managed
  {
  } // end of method XML::XMLDeleteAllNodeAttributes

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  ret
  } // end of method XML::.ctor

} // end of class Dopus.XML



