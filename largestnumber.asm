section .text
  global _start

_start:
  mov eax, [num1]
  cmp eax, [num2]
  jg label1
  mov eax, [num2]

label1:
  cmp eax, [num3]
  jg label2
  mov eax, [num3]

label2:
  cmp eax, [num4]
  jg label3
  mov eax, [num4]

label3:
  cmp eax, [num5]
  jg exit
  mov eax, [num5]

exit:
  mov [largest], eax
  mov eax, 1
  int 0x80

section .data
  num1 dd 2
  num2 dd 3
  num3 dd 9
  num4 dd 4
  num5 dd 6