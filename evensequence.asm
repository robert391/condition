section .text
  global _start

_start:
  mov eax, 0

label:
  add eax, 2
  cmp eax, 20
  jl label

exit:
  mov eax, 1
  int 0x80