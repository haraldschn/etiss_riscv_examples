.text
.globl main

main:
    addi a0, a0, 1
    addi a1, a1, 1
    addi a2, a2, 1
    addi a3, a3, 1
    addi sp, sp,-24
    sw   a0, 20(sp)
    sw   a1, 16(sp)
    sw   a2, 12(sp)
    sw   a3, 8(sp)
    addi a0, a0, 1
    addi a1, a1, 1
    addi a2, a2, 1
    addi a3, a3, 1
    addi a0, a0, 1
    addi a1, a1, 1
    addi a2, a2, 1
    addi a3, a3, 1
    lw   a0, 20(sp)
    lw   a1, 16(sp)
    lw   a2, 12(sp)
    lw   a3, 8(sp)
    addi sp, sp,24
    addi a0, a0, 1
    addi a1, a1, 1
    addi a2, a2, 1
    addi a3, a3, 1
    ret

loop:
    ebreak
    j loop   # Just loop here
