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
        mov     x9, x0
        mov     x10, x1
        //  %r110 = add i32 %r100, 0

        //  %r111 = add i32 0, 0

        //  %r112 = add i32 %r102, 0

        mov     x10, x10
        //  br label %bb1


        b     bb1
        //bb1:

bb1:

        //  %r105 = load i32, i32* @cnt

        adrp     x9, cnt
        add     x9, x9, #:lo12:cnt
        ldr     x9, x9
        //  %r106 = getelementptr [5005 x i32 ], [5005 x i32 ]* @to, i32 0, i32 %r105

        mov     x11, #8
        mul     x9, x11, x9
        adrp     x11, to
        add     x11, x11, #:lo12:to
        //  store i32 %r112, i32* %r106

        //  ret void

        mov     sp, x29
        ret
