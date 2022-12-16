%include "io64.inc"
section .data
myvar dq 10
sum dw 35
section .text
global CMAIN
CMAIN:
    mov rbp, rsp; for correct debugging
    
    ;xchg instruction - it is used to exchange content of two oprands and oprands must be memory or registers only.
    
    ;xchg register,register
    mov rax,50
    mov rbx,100
    xchg rax,rbx
    
    ;xchg register,memory
    xchg rax,[myvar]
    
    ;xchg memory,register
    mov rcx,25
    xchg [sum],rcx
    xor rax, rax

    ret