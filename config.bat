rem don't change this
set current_dir=%cd%

rem folder options
set src_folder=%current_dir%\src
set out_folder=%current_dir%\bin
set obj_folder=%current_dir%\obj
set tool_folder=%current_dir%\tools

rem executable options
set executable_name=test.exe
set entry=main

rem assembler options
set assembler=%tool_folder%\nasm.exe
set assembler_flags=-f win32

rem linker options 
set linker=%tool_folder%\GoLink.exe
set linker_flags=/console /entry %entry% /fo %out_folder%\%executable_name%
set additional_link_files=msvcrt.dll user32.dll kernel32.dll gdi32.dll oleaut32.dll hhctrl.ocx winspool.drv shell32.dll

if not exist %obj_folder% mkdir %obj_folder%
if not exist %out_folder% mkdir %out_folder%