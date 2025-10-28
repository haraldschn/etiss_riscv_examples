.text
.globl main

main:
    li s0, 1<<31
    li s1, 8
    
    mulh a0, s0, s1
    mul a0, s0, s1

    nop
    nop
    nop
    nop

    mulh a0, s0, s1
    mul a0, s0, s1
    mulh a1, s0, s1
    mul a1, s0, s1
    mulh a2, s0, s1
    mul a2, s0, s1
    mulh a3, s0, s1
    mul a3, s0, s1


    ret
