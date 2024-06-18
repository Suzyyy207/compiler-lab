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
main:

        //bb1:

bb1:

        //  %r128 = add i32 0, 0

        mov     x16, #0
        sub     sp, sp, x16
        //  %r129 = add i32 0, 0

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
        //  %r130 = add i32 0, 0

        //  %r131 = add i32 0, 0

        mov     x11, #0
        //  %r132 = add i32 0, 0

        //  %r133 = icmp slt i32 1, 9

        mov     x9, #1
        mov     x10, #9
        cmp     x9, x10
        //  br i1 %r133, label %bb4, label %bb3


        b.lt     bb4
        b     bb3
        //bb4:

bb4:

        //  %r142 = icmp sgt i32 %r131, 0

        mov     x9, #0
        cmp     x11, x9
        //  br i1 %r142, label %bb2, label %bb3


        b.gt     bb2
        b     bb3
        //bb2:

bb2:

        //  %r143 = add i32 1, 0

        mov     x9, #1
        mov     x9, x9
        //  br label %bb5


        b     bb5
        //bb3:

bb3:

        //  %r134 = add i32 0, 0

        mov     x9, #0
        mov     x9, x9
        //  br label %bb5


        b     bb5
        //bb5:

bb5:

        //  %r135 = phi i32 [ %r143, %bb2 ], [ %r134, %bb3 ]

        //  %r136 = add i32 %r135, 0

        mov     x10, x9
        mov     x9, x11
        //  br label %bb6


        b     bb6
        //bb6:

bb6:

        //  %r137 = phi i32 [ %r131, %bb5 ], [ %r141, %bb7 ]

        //  %r138 = icmp slt i32 %r137, 1000000

        mov     x11, #1000000
        cmp     x9, x11
        //  br i1 %r138, label %bb7, label %bb8


        b.lt     bb7
        b     bb8
        //bb7:

bb7:

        //  %r139 = add i32 0, 0

        //  %r140 = add i32 %r137, 1

        mov     x11, #1
        add     x9, x9, x11
        //  %r141 = add i32 %r140, 0

        mov     x9, x9
        mov     x9, x9
        //  br label %bb6


        b     bb6
        //bb8:

bb8:

        //  call void @putint(i32 %r136)

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
