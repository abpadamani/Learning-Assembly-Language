%include "io64.inc"

section .data
books dd 10
items dq 50

section .text
global CMAIN
CMAIN:
    mov rbp, rsp; for correct debugging
    ;mov destination , source
    mov rax,70
    
    ;mov register , imm(immediate)
    mov rbx,25
    
    ;mov register , register 
    mov rbx,20
    mov rax,rbx
    mov rcx,rax
    
    ;mov memory , immediate
   mov dword[books],20
   
   ;mov register , memory
   mov rax,qword[items]
   
   ;mov memory , register
   mov rax,90
   mov [items],rax
   
   ;
    xor rax,rax
    ret