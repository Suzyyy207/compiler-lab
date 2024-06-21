.section .data
.section .text
.global getch
.global getint
.global putch
.global putint
.global putarray
.global _sysy_starttime
.global _sysy_stoptime
.global main
        sub     sp, sp, #0
main:

        //102:x29,#-32

        //100:x29,#-24

        //101:x29,#-16

        //110:x29,#-8

        //bb1:

bb1:

        //  %r110 = alloca i32

        mov     x16, #32
        sub     sp, sp, x16
        //  %r101 = alloca i32

        //  call void @_sysy_starttime(i32 2)

        mov     x0, #2
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
        //  %r100 = alloca i32

        //  store i32 0, i32* %r100

        mov     x11, #0
        str     x11, [x10]
        //  %r102 = alloca i32

        //  %r104 = icmp slt i32 1, 9

        mov     x11, #1
        mov     x14, #9
        cmp     x11, x14
        //  br i1 %r104, label %bb4, label %bb3


        b.lt     bb4
        b     bb3
        //bb4:

bb4:

        //  %r105 = load i32, i32* %r100

        ldr     x11, [x10]
        //  %r106 = icmp sgt i32 %r105, 0

        mov     x14, #0
        cmp     x11, x14
        //  br i1 %r106, label %bb2, label %bb3


        b.gt     bb2
        b     bb3
        //bb2:

bb2:

        //  store i32 1, i32* %r102

        mov     x11, #1
        str     x11, [x13]
        //  br label %bb5


        b     bb5
        //bb3:

bb3:

        //  store i32 0, i32* %r102

        mov     x11, #0
        str     x11, [x13]
        //  br label %bb5


        b     bb5
        //bb5:

bb5:

        //  %r107 = load i32, i32* %r102

        ldr     x11, [x13]
        //  store i32 %r107, i32* %r101

        str     x11, [x9]
        //  br label %bb6


        b     bb6
        //bb6:

bb6:

        //  %r108 = load i32, i32* %r100

        ldr     x11, [x10]
        //  %r109 = icmp slt i32 %r108, 1000000

        mov     x13, #1000000
        cmp     x11, x13
        //  br i1 %r109, label %bb7, label %bb8


        b.lt     bb7
        b     bb8
        //bb7:

bb7:

        //  store i32 0, i32* %r110

        mov     x11, #0
        str     x11, [x12]
        //  %r111 = load i32, i32* %r100

        ldr     x11, [x10]
        //  %r112 = add i32 %r111, 1

        mov     x13, #1
        add     x11, x11, x13
        //  store i32 %r112, i32* %r100

        str     x11, [x10]
        //  br label %bb6


        b     bb6
        //bb8:

bb8:

        //  %r113 = load i32, i32* %r101

        //  %r114 = load i32, i32* %r101

        ldr     x9, [x9]
        //  call void @putint(i32 %r114)

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
        //  call void @_sysy_stoptime(i32 10)

        mov     x0, #10
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
