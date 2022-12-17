%include "io64.inc"
section .data
Myvar dq 50
section .text
global CMAIN
CMAIN:
    mov rbp, rsp; for correct debugging
    ;add and sub instructions
    
    ;add and sub register,immediate number 
    mov rax,20
    add rax,50
    sub rax,25
    
    ;add and sub register , register
    mov rbx,25
    add rbx,rax
    sub rax,rbx
    
    ;add and sub memory,immediate
    add qword[Myvar],50
    sub qword[Myvar],10
    
    ;add and sub register,memory
    add rcx,[Myvar]
    sub rbx,[Myvar]
    
    ;add and sub memory to register
    add [Myvar],rbx
    sub [Myvar],rcx
    
    
    xor rax, rax
    ret