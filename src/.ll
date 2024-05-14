declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
define i32 @quickread( ) {
bb1:
  %r108 = call i32 @getch()
  %r109 = add i32 0, 0
  %r110 = add i32 %r108, 0
  %r111 = add i32 0, 0
  %r112 = add i32 0, 0
  %r113 = icmp sgt i32 %r110, 1
  br i1 %r113, label %bb2, label %bb3

bb2:
  %r117 = add i32 1, 0
  br label %bb4

bb3:
  %r114 = add i32 2, 0
  br label %bb4

bb4:
  %r115 = phi i32 [ %r117, %bb2 ], [ %r114, %bb3 ]
  %r116 = add i32 %r115, 0
  ret i32 0
}

