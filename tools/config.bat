@echo off

rem don't change this
set current_dir=%cd%

rem folder options
set src_folder=%current_dir%\src
set out_folder=%current_dir%\bin
set obj_folder=%current_dir%\obj

rem executable options
set executable_name=test
set entry=main

rem assembler options
set assembler=nasm
set assembler_flags=-f win32

rem linker options 
set linker=golink
set linker_flags=/console /entry %entry% /fo %out_folder%\%executable_name%
set additional_link_files=msvcrt.dll user32.dll kernel32.dll gdi32.dll oleaut32.dll hhctrl.ocx winspool.drv shell32.dll