'useful in Windows for running a shell script without the command line window showing up
Set WinScriptHost = CreateObject("WScript.Shell")
WinScriptHost.Run Chr(34) & "C:\Tools\getlog.bat" & Chr(34), 0
Set WinScriptHost = Nothing
