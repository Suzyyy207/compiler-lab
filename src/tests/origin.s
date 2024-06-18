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
.global addedge
addedge:

        //bb2:

bb2:

        //  %r109 = add i32 0, 0

        mov     x16, #0
        sub     sp, sp, x16
        mov     x100, x0
        mov     x102, x1
        mov     x109, #0
        //  %r110 = add i32 %r100, 0

        mov     x110, x100
        //  %r111 = add i32 0, 0

        mov     x111, #0
        //  %r112 = add i32 %r102, 0

        mov     x112, x102
        //  br label %bb1


        b     bb1
        //bb1:

bb1:

        //  %r105 = load i32, i32* @cnt

        adrp     x113, cnt
        add     x113, x113, #:lo12:cnt
        ldr     x105, x113
        //  %r106 = getelementptr [5005 x i32 ], [5005 x i32 ]* @to, i32 0, i32 %r105

        mov     x114, #8
        mul     x115, x114, x105
        adrp     x116, to
        add     x116, x116, #:lo12:to
        add     x106, x116, x115
        //  store i32 %r112, i32* %r106

        mov     x106, x112
        //  ret void

        mov     sp, x29
        ret
