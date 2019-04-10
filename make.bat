@echo off
call config.bat
call buildscripts\assemble.bat
echo Linking...
call buildscripts\link.bat
echo Done!
pause