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

        //bb2:

bb2:

        //  %r129 = add i32 0, 0

        mov     x16, #0
        sub     sp, sp, x16
        mov     x9, x0
        //  %r130 = add i32 0, 0

        //  %r131 = add i32 0, 0

        //  %r132 = add i32 %r100, 0

        mov     x12, x9
        //  br label %bb1


        b     bb1
        //bb1:

bb1:

        //  %r133 = add i32 0, 0

        mov     x10, #0
        //  %r134 = add i32 1, 0

        mov     x9, #1
        mov     x11, x9
        mov     x10, x10
        //  br label %bb3


        b     bb3
        //bb3:

bb3:

        //  %r135 = phi i32 [ %r134, %bb1 ], [ %r144, %bb8 ]

        //  %r136 = phi i32 [ %r133, %bb1 ], [ %r142, %bb8 ]

        //  %r137 = add i32 %r132, 1

        mov     x9, #1
        add     x9, x12, x9
        //  %r138 = icmp slt i32 %r135, %r137

        cmp     x11, x9
        //  br i1 %r138, label %bb4, label %bb5


        b.lt     bb4
        b     bb5
        //bb4:

bb4:

        //  %r139 = sdiv i32 %r132, %r135

        sdiv     x9, x12, x11
        //  %r140 = mul i32 %r139, %r135

        mul     x9, x9, x11
        //  %r141 = icmp eq i32 %r140, %r132

        cmp     x9, x12
        //  br i1 %r141, label %bb6, label %bb7


        b.eq     bb6
        b     bb7
        //bb6:

bb6:

        //  %r145 = add i32 %r136, %r135

        add     x9, x10, x11
        //  %r146 = add i32 %r145, 0

        mov     x9, x9
        mov     x9, x9
        //  br label %bb8


        b     bb8
        //bb7:

bb7:

        mov     x9, x10
        //  br label %bb8


        b     bb8
        //bb8:

bb8:

        //  %r142 = phi i32 [ %r146, %bb6 ], [ %r136, %bb7 ]

        //  %r143 = add i32 %r135, 1

        mov     x10, #1
        add     x10, x11, x10
        //  %r144 = add i32 %r143, 0

        mov     x10, x10
        mov     x11, x10
        mov     x10, x9
        //  br label %bb3


        b     bb3
        //bb5:

bb5:

        //  ret i32 %r136

        mov     x0, x10
        mov     sp, x29
        ret
        sub     sp, sp, #0
main:

        //bb9:

bb9:

        //  call void @_sysy_starttime(i32 24)

        mov     x16, #0
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

        mov     x9, #4
        adrp     x10, N
        add     x10, x10, #:lo12:N
        str     x9, [x10]
        //  store i32 10, i32* @newline

        mov     x9, #10
        adrp     x10, newline
        add     x10, x10, #:lo12:newline
        str     x9, [x10]
        //  %r150 = add i32 0, 0

        //  %r151 = add i32 0, 0

        //  %r152 = add i32 1478, 0

        mov     x9, #1478
        //  %r153 = add i32 0, 0

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
        //  %r154 = call i32 @factor(i32 %r152)

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
        //  ret i32 %r154

        mov     x0, x9
        mov     sp, x29
        ret
