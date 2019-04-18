[SECTION .data]
fmtString db "0x%X", 0Dh, 0Ah, 0
fmtString_length equ $-fmtString ; not needed but nice to have if i ever do need it

crlf db 0Dh, 0Ah, 0
crlf_length equ $-crlf

[SECTION .bss]
testdword resd 1 ; reserve 1 dword for the label testdword

[SECTION .text]
extern printf
extern _getch
global testfn

testfn:
	push ebp
	mov ebp, esp

	mov dword [testdword], 0c0ffeeh
	
	push dword [testdword]
	push fmtString
	call printf ; printf("0x%X\r\n",testdword);
	add esp, 8
	
	xor eax,eax
	mov esp, ebp
	pop ebp
	ret