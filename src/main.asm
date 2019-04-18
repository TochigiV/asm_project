[SECTION .data]
pauseString db "Press any key to continue . . . ", 0
pauseString_length equ $-pauseString

crlf db 0Dh, 0Ah, 0
crlf_length equ $-crlf

testString db "hello", 0Dh, 0Ah, 0
testString_length equ $-testString

[SECTION .text]

extern printf
extern _getch
extern testfn

global main

%macro _pause 0
	push pauseString
	call printf
	add esp, 4
	
	call _getch
	
	push crlf
	call printf
	add esp, 4
%endmacro

main:
	push ebp
	mov ebp, esp
	
	push testString
	call printf
	add esp, 4

	call testfn
	
	_pause
	
	xor eax,eax
	mov esp, ebp
	pop ebp
	ret