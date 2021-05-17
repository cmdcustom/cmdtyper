@echo off
set random=
set text=%1
set vbi=%random%
cd C:\Windows\System32
echo Set WshShell = WScript.CreateObject("WScript.Shell") >> %vbi%.vbs
echo. WScript.Sleep 500 >> %vbi%.vbs
echo.WshShell.SendKeys "%text%" >> %vbi%.vbs
echo @echo off >> 
start %vbi%.vbs
delete %vbi%.vbs
