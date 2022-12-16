%include "io64.inc"
section .data
Myvar dq 60
section .text
global CMAIN
CMAIN:
    mov rbp, rsp; for correct debugging
    
    ;negative instruction
    
    ;negative register
    mov rax,50
    neg rax
    
    ;negative memory
    neg qword[Myvar]
    xor rax, rax
    ret