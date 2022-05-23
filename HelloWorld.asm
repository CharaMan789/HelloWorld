section .text
  global _main
  _main:
    mov eax, 4
    mov ebx, 1
    mov ecx, hello
    mov edx, hello_len
    int 0x80
    
    mov eax, 4
    mov ebx, 1
    mov ecx, underscore
    mov edx, 1
    int 0x80

    mov eax, 4
    mov ebx, 1
    mov ecx, world
    mov edx, world_len
    int 0x80

    mov eax, 1
    int 0x80



section .data
  hello: db "Hello"
  hello_len equ $-hello
  underscore: db "_"
  world: db "World", 0xA
  world_len equ $-world
