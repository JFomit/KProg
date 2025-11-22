bits 32

; Prefixe all functions with an underscore.
; They all are cdecl anyway, so consider them to just be
; correctly mangled that way
global	_boring_test
extern _printf

section .text
_boring_test:
	push	ebp
	mov	ebp,	esp

	push    dword hello
        push    dword fhello
        call    _printf

        mov     esp, ebp
	pop	ebp
	ret


section .data
hello   db      "Hello, World!", 00h
fhello  db      "%s", 0Dh, 0Ah, 00h 