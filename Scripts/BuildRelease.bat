@ECHO OFF
"C:\Windows\Microsoft.NET\Framework\v4.0.30319\MSBuild.exe" "..\Sources\Vicuna.sln" /t:Rebuild /p:Configuration=Release /p:Platform=Win32 /l:MSBuildErrorListLogger,"C:\Program Files\MSBuildShellExtension\MSBuildShellExtensionLogger.dll"