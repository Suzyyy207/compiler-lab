declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
define i32 @quickread( ) {
bb1:
  %r109 = add i32 0, 0
  %r110 = add i32 0, 0
  %r111 = add i32 0, 0
  %r112 = add i32 0, 0
  %r102 = alloca [ 10 x i32 ]
  %r113 = icmp ne i32 %r112, 0
  br i1 %r113, label %bb2, label %bb3

bb2:
  %r118 = add i32 1, 0
  br label %bb4

bb3:
  %r117 = add i32 2, 0
  br label %bb4

bb4:
  %r114 = phi i32 [ %r118, %bb2 ], [ %r117, %bb3 ]
  %r115 = add i32 %r114, 1
  %r116 = add i32 %r115, 0
  ret i32 0
}

