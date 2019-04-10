@echo off
call tools\config.bat
call tools\assemble.bat
echo Linking...
call tools\link.bat
echo Done!
pause