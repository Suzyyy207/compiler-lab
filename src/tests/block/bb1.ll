bb1:
  %r108 = call i32 @getch()
  %r109 = add i32 0, 0
  %r110 = add i32 %r108, 0
  %r111 = add i32 0, 0
  %r112 = add i32 0, 0
  %r113 = icmp sgt i32 %r110, 1
  br i1 %r113, label %bb2, label %bb3

