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
.global mod
.global split
.global main
mod:

        //bb2:

bb2:

        //  %r146 = add i32 0, 0

        mov     x16, #0
        sub     sp, sp, x16
        mov     x9, x0
        mov     x10, x1
        //  %r147 = add i32 %r100, 0

        mov     x9, x9
        //  %r148 = add i32 0, 0

        //  %r149 = add i32 %r102, 0

        mov     x10, x10
        //  br label %bb1


        b     bb1
        //bb1:

bb1:

        //  %r150 = sdiv i32 %r147, %r149

        sdiv     x11, x9, x10
        //  %r151 = mul i32 %r150, %r149

        mul     x10, x11, x10
        //  %r152 = sub i32 %r147, %r151

        sub     x9, x9, x10
        //  ret i32 %r152

        mov     x0, x9
        mov     sp, x29
        ret
split:

        //bb4:

bb4:

        //  %r155 = add i32 0, 0

        mov     x16, #0
        sub     sp, sp, x16
        mov     x10, x0
        mov     x9, x1
        //  %r156 = add i32 0, 0

        //  %r157 = add i32 %r111, 0

        mov     x11, x10
        //  br label %bb3


        b     bb3
        //bb3:

bb3:

        //  %r115 = load i32, i32* @N

        adrp     x10, N
        add     x10, x10, #:lo12:N
        ldr     x12, [x10]
        //  %r158 = sub i32 %r115, 1

        mov     x10, #1
        sub     x10, x12, x10
        //  %r159 = add i32 %r158, 0

        mov     x10, x10
        mov     x12, x11
        mov     x11, x10
        //  br label %bb5


        b     bb5
        //bb5:

bb5:

        //  %r160 = phi i32 [ %r157, %bb3 ], [ %r166, %bb6 ]

        //  %r161 = phi i32 [ %r159, %bb3 ], [ %r168, %bb6 ]

        //  %r162 = sub i32 0, 1

        mov     x13, #0
        mov     x10, #1
        sub     x10, x13, x10
        //  %r163 = icmp ne i32 %r161, %r162

        cmp     x11, x10
        //  br i1 %r163, label %bb6, label %bb7


        b.ne     bb6
        b     bb7
        //bb6:

bb6:

        //  %r164 = call i32 @mod(i32 %r160, i32 10)

        mov     x0, x12
        mov     x1, #10
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     mod
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x10, x0
        //  %r123 = getelementptr i32, i32* %r113, i32 %r161

        mov     x13, #8
        mul     x13, x13, x11
        add     x13, x9, x13
        //  store i32 %r164, i32* %r123

        str     x10, [x13]
        //  %r165 = sdiv i32 %r160, 10

        mov     x10, #10
        sdiv     x10, x12, x10
        //  %r166 = add i32 %r165, 0

        mov     x12, x10
        //  %r167 = sub i32 %r161, 1

        mov     x10, #1
        sub     x10, x11, x10
        //  %r168 = add i32 %r167, 0

        mov     x10, x10
        mov     x12, x12
        mov     x11, x10
        //  br label %bb5


        b     bb5
        //bb7:

bb7:

        //  ret i32 0

        mov     x9, #0
        mov     x0, x9
        mov     sp, x29
        ret
main:

        //130:x29,#-32

        //bb8:

bb8:

        //  call void @_sysy_starttime(i32 26)

        mov     x16, #32
        sub     sp, sp, x16
        mov     x0, #26
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

        mov     x10, #10
        adrp     x9, newline
        add     x9, x9, #:lo12:newline
        str     x10, [x9]
        //  %r172 = add i32 0, 0

        //  %r173 = add i32 0, 0

        //  %r130 = alloca [ 4 x i32 ]

        //  %r174 = add i32 1478, 0

        mov     x9, #1478
        //  %r175 = call i32 @split(i32 %r174, i32* %r130)

        mov     x0, x9
        mov     x1, x11
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     split
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x9, x0
        //  %r176 = add i32 %r175, 0

        //  %r177 = add i32 0, 0

        //  %r178 = add i32 0, 0

        mov     x9, #0
        mov     x10, x9
        //  br label %bb9


        b     bb9
        //bb9:

bb9:

        //  %r179 = phi i32 [ %r178, %bb8 ], [ %r183, %bb10 ]

        //  %r180 = icmp slt i32 %r179, 4

        mov     x9, #4
        cmp     x10, x9
        //  br i1 %r180, label %bb10, label %bb11


        b.lt     bb10
        b     bb11
        //bb10:

bb10:

        //  %r137 = getelementptr [4 x i32 ], [4 x i32 ]* %r130, i32 0, i32 %r179

        mov     x9, #8
        mul     x9, x9, x10
        add     x11, x29, #-32
        add     x9, x11, x9
        //  %r138 = load i32, i32* %r137

        ldr     x9, [x9]
        //  %r181 = add i32 %r138, 0

        mov     x9, x9
        //  call void @putint(i32 %r181)

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
        //  %r141 = load i32, i32* @newline

        adrp     x9, newline
        add     x9, x9, #:lo12:newline
        ldr     x9, [x9]
        //  call void @putch(i32 %r141)

        mov     x0, x9
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
        //  %r182 = add i32 %r179, 1

        mov     x9, #1
        add     x9, x10, x9
        //  %r183 = add i32 %r182, 0

        mov     x9, x9
        mov     x10, x9
        //  br label %bb9


        b     bb9
        //bb11:

bb11:

        //  call void @_sysy_stoptime(i32 42)

        mov     x0, #42
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
