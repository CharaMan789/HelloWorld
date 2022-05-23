section .text
  global _main
  _main:
  
  ;printing hello
    mov eax, 4
    mov ebx, 1
    mov ecx, hello
    mov edx, hello_len
   ;kernel call
    int 0x80
    
   ;printing the underscore character without creating a new line
    mov eax, 4
    mov ebx, 1
    mov ecx, underscore
    mov edx, 1
    ;kernel call
    int 0x80

   ;printing world
    mov eax, 4
    mov ebx, 1
    mov ecx, world
    mov edx, world_len
    ;kernel call
    int 0x80

  ;the stop the program after printing, so as to not crash
    mov eax, 1
    int 0x80



section .data
  hello: db "Hello"
  hello_len equ $-hello
  underscore: db "_"
  ;0xA works as /n in ascii , hence creates a new line
  world: db "World", 0xA
  world_len equ $-world
