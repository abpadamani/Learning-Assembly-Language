%include "io64.inc"
section .data
varA dq 10
varB dq 20
section .text
global CMAIN
CMAIN:
    mov rbp, rsp; for correct debugging
    
    ;1.assign 7 to varA
    mov rax,7
    xchg [varA],rax
    
    ;2. assign -1 to varB
    mov rbx,-1
    xchg [varB],rbx
    
    ;3.exchange varA and varB
    xchg rax,[varA]
    xchg [varB],rax
    xchg rbx,[varB]
    xchg [varA],rbx
    xor rax, rax
    ret