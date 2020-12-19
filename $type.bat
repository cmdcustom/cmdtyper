@echo off
set random=
set typeid=%random%
echo set text=
set text=
set /p text=
echo Enter a vbs instance name - it does not really matter:
set vbi=
set /p vbi=
cd C:\Windows\System32
echo Set WshShell = WScript.CreateObject("WScript.Shell") >> %vbi%.vbs
echo. WScript.Sleep 1000 >> %vbi%.vbs
echo.WshShell.SendKeys "%text%" >> %vbi%.vbs
echo Instance created! Linking a command to it. 
echo @echo off >> $typefromid%typeid%.bat
echo.start %vbi%.vbs >> $typefromid%typeid%.bat
