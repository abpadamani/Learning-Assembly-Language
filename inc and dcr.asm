%include "io64.inc"
section .data
Myvar db 20
Myvartwo db 58
section .text
global CMAIN
CMAIN:
    mov rbp, rsp; for correct debugging
    ;increament register
    mov rax,25
    inc rax
    
    ;increament memory
    inc byte[Myvar]
    
    ;decreament register
    mov rbx,58
    dec rbx
    
    ;decreament memory
    dec byte[Myvartwo]
    xor rax, rax
    ret