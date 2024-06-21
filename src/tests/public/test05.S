.section .data
.global    N
.global    newline
N:
        .quad   0
newline:
        .quad   0
.section .text
.global getch
.global getint
.global putch
.global putint
.global putarray
.global _sysy_starttime
.global _sysy_stoptime
.global factor
.global main
        sub     sp, sp, #0
factor:

        //101:x29,#-24

        //102:x29,#-16

        //103:x29,#-8

        //bb2:

bb2:

        //  %r103 = alloca i32

        mov     x16, #32
        sub     sp, sp, x16
        mov     x12, x0
        //  %r102 = alloca i32

        //  %r101 = alloca i32

        //  store i32 %r100, i32* %r101

        str     x12, [x11]
        //  br label %bb1


        b     bb1
        //bb1:

bb1:

        //  store i32 0, i32* %r103

        mov     x12, #0
        str     x12, [x9]
        //  store i32 1, i32* %r102

        mov     x12, #1
        str     x12, [x10]
        //  br label %bb3


        b     bb3
        //bb3:

bb3:

        //  %r104 = load i32, i32* %r102

        ldr     x13, [x10]
        //  %r105 = load i32, i32* %r101

        ldr     x12, [x11]
        //  %r106 = add i32 %r105, 1

        mov     x14, #1
        add     x12, x12, x14
        //  %r107 = icmp slt i32 %r104, %r106

        cmp     x13, x12
        //  br i1 %r107, label %bb4, label %bb5


        b.lt     bb4
        b     bb5
        //bb4:

bb4:

        //  %r108 = load i32, i32* %r101

        ldr     x13, [x11]
        //  %r109 = load i32, i32* %r102

        ldr     x12, [x10]
        //  %r110 = sdiv i32 %r108, %r109

        sdiv     x13, x13, x12
        //  %r111 = load i32, i32* %r102

        ldr     x12, [x10]
        //  %r112 = mul i32 %r110, %r111

        mul     x12, x13, x12
        //  %r113 = load i32, i32* %r101

        ldr     x13, [x11]
        //  %r114 = icmp eq i32 %r112, %r113

        cmp     x12, x13
        //  br i1 %r114, label %bb6, label %bb7


        b.eq     bb6
        b     bb7
        //bb6:

bb6:

        //  %r115 = load i32, i32* %r103

        ldr     x12, [x9]
        //  %r116 = load i32, i32* %r102

        ldr     x13, [x10]
        //  %r117 = add i32 %r115, %r116

        add     x12, x12, x13
        //  store i32 %r117, i32* %r103

        str     x12, [x9]
        //  br label %bb8


        b     bb8
        //bb7:

bb7:

        //  br label %bb8


        b     bb8
        //bb8:

bb8:

        //  %r118 = load i32, i32* %r102

        ldr     x13, [x10]
        //  %r119 = add i32 %r118, 1

        mov     x12, #1
        add     x12, x13, x12
        //  store i32 %r119, i32* %r102

        str     x12, [x10]
        //  br label %bb3


        b     bb3
        //bb5:

bb5:

        //  %r120 = load i32, i32* %r103

        ldr     x9, [x9]
        //  ret i32 %r120

        mov     x0, x9
        mov     sp, x29
        ret
        sub     sp, sp, #0
main:

        //123:x29,#-24

        //122:x29,#-16

        //121:x29,#-8

        //bb9:

bb9:

        //  call void @_sysy_starttime(i32 24)

        mov     x16, #32
        sub     sp, sp, x16
        mov     x0, #24
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     _sysy_starttime
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        //  store i32 4, i32* @N

        mov     x10, #4
        adrp     x11, N
        add     x11, x11, #:lo12:N
        str     x10, [x11]
        //  store i32 10, i32* @newline

        mov     x10, #10
        adrp     x11, newline
        add     x11, x11, #:lo12:newline
        str     x10, [x11]
        //  %r121 = alloca i32

        //  %r122 = alloca i32

        //  store i32 1478, i32* %r122

        mov     x10, #1478
        str     x10, [x9]
        //  %r123 = alloca i32

        //  call void @_sysy_stoptime(i32 31)

        mov     x0, #31
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     _sysy_stoptime
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        //  %r124 = load i32, i32* %r122

        ldr     x9, [x9]
        //  %r125 = call i32 @factor(i32 %r124)

        mov     x0, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     factor
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        //  ret i32 %r125

        mov     x0, x9
        mov     sp, x29
        ret
