setlocal enabledelayedexpansion

cd %obj_folder%

set link_files=
for %%i in (*.obj) do (
	set link_files=%%i !link_files!
)

%linker% %linker_flags% %link_files% %additional_link_files%

cd %current_dir%