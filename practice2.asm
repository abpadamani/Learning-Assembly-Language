%include "io64.inc"
section .data
varA dq 10
varB dq 20
varC dq 30 
varD dq 40 
result dq 0
section .text
global CMAIN
CMAIN:
    mov rbp, rsp; for correct debugging
    ;question : varA - varB + (varC + varD)
    ;10-20+70
    
    mov rax,[varA]
    sub rax,[varB]
    
    mov rbx,[varC]
    add rbx,[varD]
    
    add rax,rbx
    
    mov [result],rax
    xor rax, rax
    ret