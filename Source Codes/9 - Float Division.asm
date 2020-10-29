; The approximate program is as follows
;
; start() {
;     float a = 3.14;
;     float b = 2.11;
;     float c = a / b;
;
;     exit(0);
; }

section .data
    fs_var_1 dd 3.14
    fs_var_2 dd 2.11

section .text
    global _start

_start:
    movsd   xmm1, QWORD[fs_var_1]
    movsd   xmm2, QWORD[fs_var_2]
    
    divsd   xmm1, xmm1
    syscall
    
    call    _exit

_exit:
    mov rax, 60
    mov rdi, 0
    syscall