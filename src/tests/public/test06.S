.section .data
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
        sub     sp, sp, #0
foo:

        //bb1:

bb1:

        //  %r101 = getelementptr %Bar, %Bar* %r100, i32 1

        mov     x16, #0
        sub     sp, sp, x16
        mov     x11, x0
        mov     x10, #256
        mov     x9, #1
        mul     x9, x10, x9
        add     x11, x11, x9
        //  %r102 = getelementptr %Bar, %Bar* %r101, i32 0, i32 2

        mov     x10, #256
        mov     x9, #2
        mul     x9, x10, x9
        add     x11, x11, x9
        //  %r103 = getelementptr [10 x i32 ], [10 x i32 ]* %r102, i32 0, i32 3

        mov     x10, #8
        mov     x9, #3
        mul     x9, x10, x9
        add     x9, x11, x9
        //  store i32 5, i32* %r103

        mov     x10, #5
        str     x10, [x9]
        //  ret void

        mov     sp, x29
        ret
        sub     sp, sp, #0
main:

        //104:x29,#-2560

        //bb2:

bb2:

        //  call void @_sysy_starttime(i32 18)

        mov     x16, #2560
        sub     sp, sp, x16
        mov     x0, #18
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
        //  %r104 = alloca [ 10 x %Bar ]

        //  %r105 = getelementptr [10 x %Bar ], [10 x %Bar ]* %r104, i32 0, i32 0

        mov     x9, #10
        mov     x10, #0
        mul     x9, x9, x10
        add     x10, x29, #-2560
        add     x9, x10, x9
        //  %r106 = getelementptr %Bar, %Bar* %r105, i32 0, i32 0

        mov     x10, #10
        mov     x11, #0
        mul     x10, x10, x11
        add     x9, x9, x10
        //  %r107 = getelementptr %Node, %Node* %r106, i32 0, i32 0

        mov     x10, #16
        mov     x11, #0
        mul     x10, x10, x11
        add     x9, x9, x10
        //  store i32 1, i32* %r107

        mov     x10, #1
        str     x10, [x9]
        //  %r108 = getelementptr [10 x %Bar ], [10 x %Bar ]* %r104, i32 0, i32 0

        mov     x10, #10
        mov     x9, #0
        mul     x9, x10, x9
        add     x10, x29, #-2560
        add     x9, x10, x9
        //  %r109 = getelementptr %Bar, %Bar* %r108, i32 0, i32 0

        mov     x10, #10
        mov     x11, #0
        mul     x10, x10, x11
        add     x9, x9, x10
        //  %r110 = getelementptr %Node, %Node* %r109, i32 0, i32 1

        mov     x10, #16
        mov     x11, #1
        mul     x10, x10, x11
        add     x9, x9, x10
        //  store i32 2, i32* %r110

        mov     x10, #2
        str     x10, [x9]
        //  %r111 = getelementptr [10 x %Bar ], [10 x %Bar ]* %r104, i32 0, i32 0

        mov     x10, #10
        mov     x9, #0
        mul     x10, x10, x9
        add     x9, x29, #-2560
        add     x11, x9, x10
        //  %r112 = getelementptr %Bar, %Bar* %r111, i32 0, i32 1

        mov     x10, #10
        mov     x9, #1
        mul     x9, x10, x9
        add     x11, x11, x9
        //  %r113 = getelementptr [10 x %Node ], [10 x %Node ]* %r112, i32 0, i32 2

        mov     x10, #16
        mov     x9, #2
        mul     x9, x10, x9
        add     x11, x11, x9
        //  %r114 = getelementptr %Node, %Node* %r113, i32 0, i32 0

        mov     x10, #16
        mov     x9, #0
        mul     x9, x10, x9
        add     x10, x11, x9
        //  store i32 3, i32* %r114

        mov     x9, #3
        str     x9, [x10]
        //  %r115 = getelementptr [10 x %Bar ], [10 x %Bar ]* %r104, i32 0, i32 0

        mov     x10, #10
        mov     x9, #0
        mul     x10, x10, x9
        add     x9, x29, #-2560
        add     x11, x9, x10
        //  %r116 = getelementptr %Bar, %Bar* %r115, i32 0, i32 1

        mov     x10, #10
        mov     x9, #1
        mul     x9, x10, x9
        add     x11, x11, x9
        //  %r117 = getelementptr [10 x %Node ], [10 x %Node ]* %r116, i32 0, i32 2

        mov     x10, #16
        mov     x9, #2
        mul     x9, x10, x9
        add     x11, x11, x9
        //  %r118 = getelementptr %Node, %Node* %r117, i32 0, i32 1

        mov     x10, #16
        mov     x9, #1
        mul     x9, x10, x9
        add     x10, x11, x9
        //  store i32 4, i32* %r118

        mov     x9, #4
        str     x9, [x10]
        //  %r119 = getelementptr [10 x %Bar ], [10 x %Bar ]* %r104, i32 0, i32 0

        mov     x10, #10
        mov     x9, #0
        mul     x10, x10, x9
        add     x9, x29, #-2560
        add     x9, x9, x10
        //  call void @foo(%Bar* %r119)

        mov     x0, x9
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
        //  %r120 = getelementptr [10 x %Bar ], [10 x %Bar ]* %r104, i32 0, i32 0

        mov     x10, #10
        mov     x9, #0
        mul     x10, x10, x9
        add     x9, x29, #-2560
        add     x11, x9, x10
        //  %r121 = getelementptr %Bar, %Bar* %r120, i32 0, i32 0

        mov     x10, #10
        mov     x9, #0
        mul     x9, x10, x9
        add     x11, x11, x9
        //  %r122 = getelementptr %Node, %Node* %r121, i32 0, i32 0

        mov     x10, #16
        mov     x9, #0
        mul     x9, x10, x9
        add     x9, x11, x9
        //  %r123 = load i32, i32* %r122

        ldr     x9, [x9]
        //  call void @putint(i32 %r123)

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
        //  %r124 = getelementptr [10 x %Bar ], [10 x %Bar ]* %r104, i32 0, i32 0

        mov     x10, #10
        mov     x9, #0
        mul     x10, x10, x9
        add     x9, x29, #-2560
        add     x11, x9, x10
        //  %r125 = getelementptr %Bar, %Bar* %r124, i32 0, i32 0

        mov     x10, #10
        mov     x9, #0
        mul     x9, x10, x9
        add     x11, x11, x9
        //  %r126 = getelementptr %Node, %Node* %r125, i32 0, i32 1

        mov     x10, #16
        mov     x9, #1
        mul     x9, x10, x9
        add     x9, x11, x9
        //  %r127 = load i32, i32* %r126

        ldr     x9, [x9]
        //  call void @putint(i32 %r127)

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
        //  %r128 = getelementptr [10 x %Bar ], [10 x %Bar ]* %r104, i32 0, i32 0

        mov     x10, #10
        mov     x9, #0
        mul     x10, x10, x9
        add     x9, x29, #-2560
        add     x11, x9, x10
        //  %r129 = getelementptr %Bar, %Bar* %r128, i32 0, i32 1

        mov     x10, #10
        mov     x9, #1
        mul     x9, x10, x9
        add     x9, x11, x9
        //  %r130 = getelementptr [10 x %Node ], [10 x %Node ]* %r129, i32 0, i32 2

        mov     x10, #16
        mov     x11, #2
        mul     x10, x10, x11
        add     x9, x9, x10
        //  %r131 = getelementptr %Node, %Node* %r130, i32 0, i32 0

        mov     x10, #16
        mov     x11, #0
        mul     x10, x10, x11
        add     x9, x9, x10
        //  %r132 = load i32, i32* %r131

        ldr     x9, [x9]
        //  call void @putint(i32 %r132)

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
        //  %r133 = getelementptr [10 x %Bar ], [10 x %Bar ]* %r104, i32 0, i32 0

        mov     x9, #10
        mov     x10, #0
        mul     x9, x9, x10
        add     x10, x29, #-2560
        add     x9, x10, x9
        //  %r134 = getelementptr %Bar, %Bar* %r133, i32 0, i32 1

        mov     x10, #10
        mov     x11, #1
        mul     x10, x10, x11
        add     x9, x9, x10
        //  %r135 = getelementptr [10 x %Node ], [10 x %Node ]* %r134, i32 0, i32 2

        mov     x10, #16
        mov     x11, #2
        mul     x10, x10, x11
        add     x9, x9, x10
        //  %r136 = getelementptr %Node, %Node* %r135, i32 0, i32 1

        mov     x10, #16
        mov     x11, #1
        mul     x10, x10, x11
        add     x9, x9, x10
        //  %r137 = load i32, i32* %r136

        ldr     x9, [x9]
        //  call void @putint(i32 %r137)

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
        //  %r138 = getelementptr [10 x %Bar ], [10 x %Bar ]* %r104, i32 0, i32 1

        mov     x9, #10
        mov     x10, #1
        mul     x9, x9, x10
        add     x10, x29, #-2560
        add     x9, x10, x9
        //  %r139 = getelementptr %Bar, %Bar* %r138, i32 0, i32 2

        mov     x10, #10
        mov     x11, #2
        mul     x10, x10, x11
        add     x9, x9, x10
        //  %r140 = getelementptr [10 x i32 ], [10 x i32 ]* %r139, i32 0, i32 3

        mov     x10, #8
        mov     x11, #3
        mul     x10, x10, x11
        add     x9, x9, x10
        //  %r141 = load i32, i32* %r140

        ldr     x9, [x9]
        //  call void @putint(i32 %r141)

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
        //  call void @_sysy_stoptime(i32 30)

        mov     x0, #30
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
