[SECTION .data]
idkwhattocallthis db '>', 0

fmtString db "You typed: %s", 0Dh, 0Ah, 0

[SECTION .bss]
teststring resb 256

[SECTION .text]
extern printf
extern gets
global testfn

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

testfn:
	prologue
	
	put idkwhattocallthis
	
	get teststring
	
	put fmtString, teststring
	
	xor eax,eax

	epilogue
	ret