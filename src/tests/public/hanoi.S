.section .data
.section .text
.global getch
.global getint
.global putch
.global putint
.global putarray
.global _sysy_starttime
.global _sysy_stoptime
.global move
.global hanoi
.global main
        sub     sp, sp, #0
move:

        //103:x29,#-16

        //101:x29,#-8

        //bb2:

bb2:

        //  %r101 = alloca i32

        mov     x16, #16
        sub     sp, sp, x16
        mov     x9, x0
        mov     x11, x1
        //  store i32 %r100, i32* %r101

        str     x9, [x10]
        //  %r103 = alloca i32

        //  store i32 %r102, i32* %r103

        str     x11, [x12]
        //  br label %bb1


        b     bb1
        //bb1:

bb1:

        //  %r104 = load i32, i32* %r101

        //  %r105 = load i32, i32* %r101

        ldr     x9, [x10]
        //  call void @putint(i32 %r105)

        mov     x0, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     putint
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        //  call void @putch(i32 32)

        mov     x0, #32
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     putch
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        //  %r106 = load i32, i32* %r103

        //  %r107 = load i32, i32* %r103

        ldr     x9, [x12]
        //  call void @putint(i32 %r107)

        mov     x0, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     putint
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        //  call void @putch(i32 44)

        mov     x0, #44
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     putch
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        //  call void @putch(i32 32)

        mov     x0, #32
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     putch
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        //  ret void

        mov     sp, x29
        ret
        sub     sp, sp, #8
hanoi:

        //115:x29,#-32

        //113:x29,#-24

        //111:x29,#-16

        //109:x29,#-8

        //bb4:

bb4:

        sub     sp, sp, #8
        //  %r109 = alloca i32

        mov     x16, #32
        sub     sp, sp, x16
        mov     x12, x0
        mov     x13, x1
        mov     x14, x2
        mov     x15, x3
        //  store i32 %r108, i32* %r109

        str     x12, [x9]
        //  %r111 = alloca i32

        //  store i32 %r110, i32* %r111

        str     x13, [x10]
        //  %r113 = alloca i32

        //  store i32 %r112, i32* %r113

        str     x14, [x11]
        //  %r115 = alloca i32

        //  store i32 %r114, i32* %r115

        str     x15, [x16]
        add     x16, sp, #0
        str     x16, [x16]
        //  br label %bb3


        b     bb3
        //bb3:

bb3:

        //  %r116 = load i32, i32* %r109

        ldr     x12, [x9]
        //  %r117 = icmp eq i32 %r116, 1

        mov     x13, #1
        cmp     x12, x13
        //  br i1 %r117, label %bb5, label %bb6


        b.eq     bb5
        b     bb6
        //bb5:

bb5:

        //  %r118 = load i32, i32* %r111

        //  %r119 = load i32, i32* %r111

        ldr     x10, [x10]
        //  %r120 = load i32, i32* %r115

        //  %r121 = load i32, i32* %r115

        add     x17, sp, #0
        ldr     x17, [x17]
        ldr     x9, [x17]
        //  call void @move(i32 %r119, i32 %r121)

        mov     x0, x10
        mov     x1, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     move
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        //  br label %bb7


        b     bb7
        //bb6:

bb6:

        //  %r122 = load i32, i32* %r109

        ldr     x12, [x9]
        //  %r123 = sub i32 %r122, 1

        mov     x13, #1
        sub     x15, x12, x13
        //  %r124 = load i32, i32* %r111

        //  %r125 = load i32, i32* %r111

        ldr     x14, [x10]
        //  %r126 = load i32, i32* %r115

        //  %r127 = load i32, i32* %r115

        add     x18, sp, #0
        ldr     x18, [x18]
        ldr     x13, [x18]
        //  %r128 = load i32, i32* %r113

        //  %r129 = load i32, i32* %r113

        ldr     x12, [x11]
        //  call void @hanoi(i32 %r123, i32 %r125, i32 %r127, i32 %r129)

        mov     x0, x15
        mov     x1, x14
        mov     x2, x13
        mov     x3, x12
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     hanoi
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        //  %r130 = load i32, i32* %r111

        //  %r131 = load i32, i32* %r111

        ldr     x13, [x10]
        //  %r132 = load i32, i32* %r115

        //  %r133 = load i32, i32* %r115

        add     x19, sp, #0
        ldr     x19, [x19]
        ldr     x12, [x19]
        //  call void @move(i32 %r131, i32 %r133)

        mov     x0, x13
        mov     x1, x12
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     move
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        //  %r134 = load i32, i32* %r109

        ldr     x9, [x9]
        //  %r135 = sub i32 %r134, 1

        mov     x12, #1
        sub     x9, x9, x12
        //  %r136 = load i32, i32* %r113

        //  %r137 = load i32, i32* %r113

        ldr     x11, [x11]
        //  %r138 = load i32, i32* %r111

        //  %r139 = load i32, i32* %r111

        ldr     x10, [x10]
        //  %r140 = load i32, i32* %r115

        //  %r141 = load i32, i32* %r115

        add     x16, sp, #0
        ldr     x16, [x16]
        ldr     x12, [x16]
        //  call void @hanoi(i32 %r135, i32 %r137, i32 %r139, i32 %r141)

        mov     x0, x9
        mov     x1, x11
        mov     x2, x10
        mov     x3, x12
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     hanoi
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        //  br label %bb7


        b     bb7
        //bb7:

bb7:

        //  ret void

        mov     sp, x29
        ret
        sub     sp, sp, #0
main:

        //142:x29,#-8

        //bb8:

bb8:

        //  call void @_sysy_starttime(i32 21)

        mov     x16, #16
        sub     sp, sp, x16
        mov     x0, #21
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
        //  %r143 = call i32 @getint()

        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     getint
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x10, x0
        //  %r142 = alloca i32

        //  store i32 %r143, i32* %r142

        str     x10, [x9]
        //  br label %bb9


        b     bb9
        //bb9:

bb9:

        //  %r144 = load i32, i32* %r142

        ldr     x10, [x9]
        //  %r145 = icmp sgt i32 %r144, 0

        mov     x11, #0
        cmp     x10, x11
        //  br i1 %r145, label %bb10, label %bb11


        b.gt     bb10
        b     bb11
        //bb10:

bb10:

        //  %r146 = call i32 @getint()

        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     getint
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x10, x0
        //  call void @hanoi(i32 %r146, i32 1, i32 2, i32 3)

        mov     x0, x10
        mov     x1, #1
        mov     x2, #2
        mov     x3, #3
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     hanoi
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        //  call void @putch(i32 10)

        mov     x0, #10
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     putch
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        //  %r147 = load i32, i32* %r142

        ldr     x10, [x9]
        //  %r148 = sub i32 %r147, 1

        mov     x11, #1
        sub     x10, x10, x11
        //  store i32 %r148, i32* %r142

        str     x10, [x9]
        //  br label %bb9


        b     bb9
        //bb11:

bb11:

        //  call void @_sysy_stoptime(i32 28)

        mov     x0, #28
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
        //  ret i32 0

        mov     x9, #0
        mov     x0, x9
        mov     sp, x29
        ret
