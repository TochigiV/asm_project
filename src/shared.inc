;shared.inc
;just a bunch of useful macros

pauseString db "Press any key to continue . . . ", 0

crlf db 0Dh, 0Ah, 0

extern printf
extern gets
extern _getch

%macro prologue 0
	push ebp
	mov ebp, esp
%endmacro

%macro epilogue 0
	mov esp, ebp
	pop ebp
%endmacro

%macro put 1-*
	%rep %0
		%rotate -1
		push %1
	%endrep
	call printf
	add esp, (%0*4)
%endmacro

%macro get 1
	push %1
	call gets
	add esp, 4
%endmacro

%macro _pause 0
	push pauseString
	call printf
	add esp, 4
	
	call _getch
	
	push crlf
	call printf
	add esp, 4
%endmacro