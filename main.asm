; Anything below this is only readable and writable
section .data

; Anything below this is only executable
section .text
    global _start

_start:
    call func
    mov eax, 1
    int 0x80

func:
    push ebp ; Save the base pointer
    mov ebp, esp ; Set the base pointer to the stack pointer
    sub esp, 4 ; Allocate 4 bytes on the stack
    
    ; This is called function prologue
    mov ebx, 10

    mov esp, ebp ; Restore the stack pointer
    pop ebp ; Restore the base pointer
    
    ret