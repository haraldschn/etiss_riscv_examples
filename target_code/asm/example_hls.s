.text
.globl main

main:
    lw x12, 8(x9)
    lw x13, 0(x7)
    div x17, x13, x12
    addi x18, x12, 28
    mul x19, x12, x18
    mul x10, x17, x14
    add x10, x10, x13
    sw x10, 0(x11)
    lw x10, 4(x8)
    addi x13, x10, 4
    ret

loop:
    ebreak
    j loop   # Just loop here