; This is same as
; #include <unistd.h>

; int main(){
;     write(1, "Hello World!\n", 13);
;     return 0;
; }

; Anything below this is only readable and writable
section .data
    message db "Hello World!", 10

; Anything below this is only executable
section .text
    global _start

_start:

    ; Writing to stdout
    mov rax, 0x01
    mov rdi, 0x01
    mov rsi, message
    mov rdx, 13
    syscall
    
    ; Exiting Syscall
    mov rax, 0x3c
    mov rdi, 0
    syscall
