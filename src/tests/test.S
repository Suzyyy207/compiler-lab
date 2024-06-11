.section .data
.global    n
.global    m
.global    to
.global    next
.global    head
.global    cnt
.global    que
.global    h
.global    tail
.global    inq
n:
        .quad   0
m:
        .quad   0
to:
        .zero   40040
next:
        .zero   40040
head:
        .zero   8040
cnt:
        .quad   0
que:
        .zero   8040
h:
        .quad   0
tail:
        .quad   0
inq:
        .zero   8040
.section .text
.global getch
.global getint
.global putch
.global putint
.global putarray
.global _sysy_starttime
.global _sysy_stoptime
.global quickread
quickread:

        //bb1:

bb1:

        //  %r131 = call i32 @getch()

        sub     sp, sp, #0
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     getch
        stp     x29, x30, [sp, #16]!
        str     x7, [sp, #-8]!
        stp     x14, x15, [sp, #16]!
        stp     x12, x13, [sp, #16]!
        stp     x10, x11, [sp, #16]!
        mov     x131, x0
        //  %r132 = add i32 0, 0

        mov     x132, #0
        //  %r133 = add i32 %r131, 0

        mov     x133, x131
        //  %r134 = add i32 0, 0

        mov     x134, #0
        //  %r135 = add i32 0, 0

        mov     x135, #0
        //  %r136 = add i32 0, 0

        mov     x136, #0
        //  %r137 = add i32 0, 0

        mov     x137, #0
        //  br label %bb2


        b     bb2
        mov     x139, x137
        mov     x138, x133
        //bb2:

bb2:

        //  %r138 = phi i32 [ %r133, %bb1 ], [ %r144, %bb8 ]

        //  %r139 = phi i32 [ %r137, %bb1 ], [ %r142, %bb8 ]

        //  %r140 = icmp slt i32 %r138, 48

        mov     x159, #48
        cmp     x138, x159
        //  br i1 %r140, label %bb3, label %bb5


        b.lt     bb3
        b     bb5
        //bb5:

bb5:

        //  %r146 = icmp sgt i32 %r138, 57

        mov     x160, #57
        cmp     x138, x160
        //  br i1 %r146, label %bb3, label %bb4


        b.gt     bb3
        b     bb4
        //bb3:

bb3:

        //  %r141 = icmp eq i32 %r138, 45

        mov     x161, #45
        cmp     x138, x161
        //  br i1 %r141, label %bb6, label %bb7


        b.eq     bb6
        b     bb7
        //bb6:

bb6:

        //  %r145 = add i32 1, 0

        mov     x145, #1
        //  br label %bb8


        b     bb8
        mov     x142, x145
        //bb7:

bb7:

        //  br label %bb8


        b     bb8
        mov     x142, x139
        //bb8:

bb8:

        //  %r142 = phi i32 [ %r145, %bb6 ], [ %r139, %bb7 ]

        //  %r143 = call i32 @getch()

        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     getch
        stp     x29, x30, [sp, #16]!
        str     x7, [sp, #-8]!
        stp     x14, x15, [sp, #16]!
        stp     x12, x13, [sp, #16]!
        stp     x10, x11, [sp, #16]!
        mov     x143, x0
        //  %r144 = add i32 %r143, 0

        mov     x144, x143
        //  br label %bb2


        b     bb2
        mov     x139, x142
        mov     x138, x144
        //bb4:

bb4:

        //  br label %bb9


        b     bb9
        mov     x148, x135
        mov     x147, x138
        //bb9:

bb9:

        //  %r147 = phi i32 [ %r138, %bb4 ], [ %r158, %bb10 ]

        //  %r148 = phi i32 [ %r135, %bb4 ], [ %r156, %bb10 ]

        //  %r149 = icmp sge i32 %r147, 48

        mov     x162, #48
        cmp     x147, x162
        //  br i1 %r149, label %bb12, label %bb11


        b.ge     bb12
        b     bb11
        //bb12:

bb12:

        //  %r152 = icmp sle i32 %r147, 57

        mov     x163, #57
        cmp     x147, x163
        //  br i1 %r152, label %bb10, label %bb11


        b.le     bb10
        b     bb11
        //bb10:

bb10:

        //  %r153 = mul i32 %r148, 10

        mul     x153, x148, #10
        //  %r154 = add i32 %r153, %r147

        add     x154, x153, x147
        //  %r155 = sub i32 %r154, 48

        sub     x155, x154, #48
        //  %r156 = add i32 %r155, 0

        mov     x156, x155
        //  %r157 = call i32 @getch()

        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     getch
        stp     x29, x30, [sp, #16]!
        str     x7, [sp, #-8]!
        stp     x14, x15, [sp, #16]!
        stp     x12, x13, [sp, #16]!
        stp     x10, x11, [sp, #16]!
        mov     x157, x0
        //  %r158 = add i32 %r157, 0

        mov     x158, x157
        //  br label %bb9


        b     bb9
        mov     x148, x156
        mov     x147, x158
        //bb11:

bb11:

        //  %r150 = icmp ne i32 %r139, 0

        mov     x164, #0
        cmp     x139, x164
        //  br i1 %r150, label %bb13, label %bb14


        b.ne     bb13
        b     bb14
        //bb13:

bb13:

        //  %r151 = sub i32 0, %r148

        sub     x151, #0, x148
        //  ret i32 %r151

        mov     x0, x151
        mov     sp, x29
        ret
        //bb14:

bb14:

        //  ret i32 %r148

        mov     x0, x148
        mov     sp, x29
        ret
