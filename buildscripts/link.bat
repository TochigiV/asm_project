@echo off
setlocal enabledelayedexpansion

cd %obj_folder%

set link_files=
for %%i in (*.obj) do (
	set link_files=obj\%%i !link_files!
)

cd %current_dir%

%linker% %linker_flags% %link_files% %additional_link_files%