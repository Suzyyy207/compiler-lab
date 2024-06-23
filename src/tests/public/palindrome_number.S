.section .data
.section .text
.global getch
.global getint
.global putch
.global putint
.global putarray
.global _sysy_starttime
.global _sysy_stoptime
.global mod
.global palindrome
.global main
        sub     sp, sp, #0
mod:

        //bb2:

bb2:

        //  %r152 = add i32 0, 0

        mov     x16, #0
        sub     sp, sp, x16
        mov     x9, x0
        mov     x10, x1
        //  %r153 = add i32 %r100, 0

        mov     x9, x9
        //  %r154 = add i32 0, 0

        //  %r155 = add i32 %r102, 0

        mov     x10, x10
        //  br label %bb1


        b     bb1
        //bb1:

bb1:

        //  %r156 = sdiv i32 %r153, %r155

        sdiv     x11, x9, x10
        //  %r157 = mul i32 %r156, %r155

        mul     x10, x11, x10
        //  %r158 = sub i32 %r153, %r157

        sub     x9, x9, x10
        //  ret i32 %r158

        mov     x0, x9
        mov     sp, x29
        ret
        sub     sp, sp, #0
palindrome:

        //113:x29,#-32

        //bb4:

bb4:

        //  %r162 = add i32 0, 0

        mov     x16, #32
        sub     sp, sp, x16
        mov     x9, x0
        //  %r163 = add i32 0, 0

        //  %r113 = alloca [ 4 x i32 ]

        //  %r164 = add i32 0, 0

        //  %r165 = add i32 %r111, 0

        mov     x10, x9
        //  br label %bb3


        b     bb3
        //bb3:

bb3:

        //  %r166 = add i32 0, 0

        mov     x9, #0
        mov     x10, x10
        mov     x11, x9
        //  br label %bb5


        b     bb5
        //bb5:

bb5:

        //  %r167 = phi i32 [ %r165, %bb3 ], [ %r177, %bb6 ]

        //  %r168 = phi i32 [ %r166, %bb3 ], [ %r179, %bb6 ]

        //  %r169 = icmp slt i32 %r168, 4

        mov     x9, #4
        cmp     x11, x9
        //  br i1 %r169, label %bb6, label %bb7


        b.lt     bb6
        b     bb7
        //bb6:

bb6:

        //  %r175 = call i32 @mod(i32 %r167, i32 10)

        mov     x0, x10
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
        mov     x9, x0
        //  %r121 = getelementptr [4 x i32 ], [4 x i32 ]* %r113, i32 0, i32 %r168

        mov     x12, #8
        mul     x12, x12, x11
        add     x13, x29, #-32
        add     x12, x13, x12
        //  store i32 %r175, i32* %r121

        str     x9, [x12]
        //  %r176 = sdiv i32 %r167, 10

        mov     x9, #10
        sdiv     x9, x10, x9
        //  %r177 = add i32 %r176, 0

        mov     x10, x9
        //  %r178 = add i32 %r168, 1

        mov     x9, #1
        add     x9, x11, x9
        //  %r179 = add i32 %r178, 0

        mov     x9, x9
        mov     x10, x10
        mov     x11, x9
        //  br label %bb5


        b     bb5
        //bb7:

bb7:

        //  %r127 = getelementptr [4 x i32 ], [4 x i32 ]* %r113, i32 0, i32 0

        mov     x9, #8
        mov     x10, #0
        mul     x9, x9, x10
        add     x10, x29, #-32
        add     x9, x10, x9
        //  %r128 = load i32, i32* %r127

        ldr     x9, [x9]
        //  %r129 = getelementptr [4 x i32 ], [4 x i32 ]* %r113, i32 0, i32 3

        mov     x10, #8
        mov     x11, #3
        mul     x10, x10, x11
        add     x11, x29, #-32
        add     x10, x11, x10
        //  %r130 = load i32, i32* %r129

        ldr     x10, [x10]
        //  %r170 = icmp eq i32 %r128, %r130

        cmp     x9, x10
        //  br i1 %r170, label %bb11, label %bb9


        b.eq     bb11
        b     bb9
        //bb11:

bb11:

        //  %r132 = getelementptr [4 x i32 ], [4 x i32 ]* %r113, i32 0, i32 1

        mov     x9, #8
        mov     x10, #1
        mul     x9, x9, x10
        add     x10, x29, #-32
        add     x9, x10, x9
        //  %r133 = load i32, i32* %r132

        ldr     x9, [x9]
        //  %r134 = getelementptr [4 x i32 ], [4 x i32 ]* %r113, i32 0, i32 2

        mov     x10, #8
        mov     x11, #2
        mul     x10, x10, x11
        add     x11, x29, #-32
        add     x10, x11, x10
        //  %r135 = load i32, i32* %r134

        ldr     x10, [x10]
        //  %r173 = icmp eq i32 %r133, %r135

        cmp     x9, x10
        //  br i1 %r173, label %bb8, label %bb9


        b.eq     bb8
        b     bb9
        //bb8:

bb8:

        //  %r174 = add i32 1, 0

        mov     x9, #1
        mov     x9, x9
        //  br label %bb10


        b     bb10
        //bb9:

bb9:

        //  %r172 = add i32 0, 0

        mov     x9, #0
        mov     x9, x9
        //  br label %bb10


        b     bb10
        //bb10:

bb10:

        //  %r171 = phi i32 [ %r174, %bb8 ], [ %r172, %bb9 ]

        //  ret i32 %r171

        mov     x0, x9
        mov     sp, x29
        ret
        sub     sp, sp, #0
main:

        //bb12:

bb12:

        //  call void @_sysy_starttime(i32 30)

        mov     x16, #0
        sub     sp, sp, x16
        mov     x0, #30
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
        //  %r182 = add i32 0, 0

        //  %r183 = add i32 1221, 0

        mov     x9, #1221
        //  %r184 = add i32 0, 0

        //  %r185 = call i32 @palindrome(i32 %r183)

        mov     x0, x9
        stp     x9, x10, [sp, #-16]!
        stp     x11, x12, [sp, #-16]!
        stp     x13, x14, [sp, #-16]!
        str     x15, [sp, #-8]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     palindrome
        ldp     x29, x30, [sp], #16
        ldr     x15, [sp], #8
        ldp     x13, x14, [sp], #16
        ldp     x11, x12, [sp], #16
        ldp     x9, x10, [sp], #16
        mov     x10, x0
        //  %r186 = add i32 %r185, 0

        mov     x10, x10
        //  %r187 = icmp eq i32 %r186, 1

        mov     x11, #1
        cmp     x10, x11
        //  br i1 %r187, label %bb13, label %bb14


        b.eq     bb13
        b     bb14
        //bb13:

bb13:

        //  call void @putint(i32 %r183)

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
        //  br label %bb15


        b     bb15
        //bb14:

bb14:

        //  %r189 = add i32 0, 0

        mov     x9, #0
        //  call void @putint(i32 %r189)

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
        //  br label %bb15


        b     bb15
        //bb15:

bb15:

        //  %r188 = add i32 10, 0

        mov     x9, #10
        //  call void @putch(i32 %r188)

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
        //  call void @_sysy_stoptime(i32 47)

        mov     x0, #47
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
