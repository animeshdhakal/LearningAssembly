; Anything below this is only readable and writable
section .data
    msg db "Hello, World!", 10
    msg_len equ $ - msg

; Anything below this is only executable
section .text
    global _start

_start:
    mov eax, 0x04
    mov ebx, 1
    mov ecx, msg
    mov edx, msg_len
    int 0x80
    
    mov eax, 1
    mov ebx, 0
    int 0x80

