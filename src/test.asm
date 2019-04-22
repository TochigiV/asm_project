[SECTION .data]
%include "shared.inc"

idkwhattocallthis db '>', 0

fmtString db "You typed: %s", 0Dh, 0Ah, 0

[SECTION .bss]
teststring resb 256

[SECTION .text]

global testfn

testfn:
	prologue
	
	put idkwhattocallthis
	
	get teststring
	
	put fmtString, teststring
	
	xor eax,eax

	epilogue
	ret