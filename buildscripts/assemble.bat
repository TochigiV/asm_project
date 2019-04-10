@echo off

cd %src_folder%

for %%i in (*.asm) do (
	echo Assembling %%i...
	%assembler% %assembler_flags% %%i
)

for %%i in (*.obj) do (
	echo Moving %%i to %obj_folder%...
	move /y %%i %obj_folder%
)

cd %current_dir%