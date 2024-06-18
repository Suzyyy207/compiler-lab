.section .data
.global    a
a:
        .quad   1
.section .text
.global getch
.global getint
.global putch
.global putint
.global putarray
.global _sysy_starttime
.global _sysy_stoptime
.global foo
.global main
foo:

        //bb2:

bb2:

        //  %r113 = add i32 0, 0

        mov     x16, #0
        sub     sp, sp, x16
        mov     x9, x0
        //  %r114 = add i32 %r100, 0

        mov     x9, x9
        //  br label %bb1


        b     bb1
        //bb1:

bb1:

        //  store i32 %r114, i32* @a

        adrp     x10, a
        add     x10, x10, #:lo12:a
        str     x9, [x10]
        //  ret i32 1

        mov     x9, #1
        mov     x0, x9
        mov     sp, x29
        ret
main:

        //bb3:

bb3:

        //  call void @_sysy_starttime(i32 9)

        mov     x16, #0
        sub     sp, sp, x16
        mov     x0, #9
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
        //  %r116 = add i32 0, 0

        //  %r117 = add i32 1, 0

        mov     x10, #1
        //  %r118 = call i32 @foo(i32 2)

        mov     x0, #2
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     foo
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        //  %r119 = icmp sgt i32 %r118, 0

        mov     x11, #0
        cmp     x9, x11
        //  br i1 %r119, label %bb4, label %bb7


        b.gt     bb4
        b     bb7
        //bb7:

bb7:

        //  %r122 = call i32 @foo(i32 3)

        mov     x0, #3
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     foo
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        //  %r123 = icmp sgt i32 %r122, 0

        mov     x11, #0
        cmp     x9, x11
        //  br i1 %r123, label %bb4, label %bb5


        b.gt     bb4
        b     bb5
        //bb4:

bb4:

        //  %r121 = add i32 2, 0

        mov     x9, #2
        mov     x10, x9
        //  br label %bb6


        b     bb6
        //bb5:

bb5:

        mov     x10, x10
        //  br label %bb6


        b     bb6
        //bb6:

bb6:

        //  %r120 = phi i32 [ %r121, %bb4 ], [ %r117, %bb5 ]

        //  %r109 = load i32, i32* @a

        adrp     x9, a
        add     x9, x9, #:lo12:a
        ldr     x9, [x9]
        //  call void @putint(i32 %r109)

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
        //  call void @putint(i32 %r120)

        mov     x0, x10
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
        //  call void @_sysy_stoptime(i32 17)

        mov     x0, #17
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
