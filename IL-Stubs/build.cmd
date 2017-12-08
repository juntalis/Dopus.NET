@echo off
setlocal
call "%windir%\Microsoft.NET\Framework\v4.0.30319\ilasm.exe" /include=x86 /dll "/output=%~dp0dopus.viewer.x86.dll" "%~dp0dopus.viewer.il"
call "%windir%\Microsoft.NET\Framework\v4.0.30319\ilasm.exe" /include=x64 /dll /pe64 /x64 "/output=%~dp0dopus.viewer.x64.dll" "%~dp0dopus.viewer.il"
