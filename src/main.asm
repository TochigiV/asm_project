[SECTION .data]
%include "shared.inc"

helloString db "hello", 0Dh, 0Ah, 0

fmtString db "%s %s %s %s", 0Dh, 0Ah, 0

iString db "i", 0

amString db "am", 0

veryString db "very", 0

boredString db "bored", 0

[SECTION .text]

extern printf
extern _getch
extern testfn

global main

main:
	prologue
	
	put helloString
	
	put fmtString, iString, amString, veryString, boredString

	call testfn

	_pause
	
	xor eax,eax
	
	epilogue
	ret