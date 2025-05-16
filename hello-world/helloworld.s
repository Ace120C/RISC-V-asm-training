.global _start

.section .text

_start:
      li a0, 1 # Print to stdout
      la a1, hello # setting the variable
      li a2, 13 # how many bytes are in the string
      li a7, 64 # Write into Console system call
      ecall

      li a0, 0 # Exit Status code 0
      li a7, 93 # Exit system call for Risc-V arch 
      ecall

.section .data
hello: .ascii "Hello RISC-V\n"
