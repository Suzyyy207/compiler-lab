declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
define i32 @main( ) {
bb1:
  %r128 = add i32 0, 0
  %r129 = add i32 0, 0
  call void @_sysy_starttime(i32 2)
  %r130 = add i32 0, 0
  %r131 = add i32 0, 0
  %r132 = add i32 0, 0
  %r133 = icmp slt i32 1, 9
  br i1 %r133, label %bb4, label %bb3

bb4:
  %r142 = icmp sgt i32 %r131, 0
  br i1 %r142, label %bb2, label %bb3

bb2:
  %r143 = add i32 1, 0
  br label %bb5

bb3:
  %r134 = add i32 0, 0
  br label %bb5

bb5:
  %r135 = phi i32 [ %r143, %bb2 ], [ %r134, %bb3 ]
  %r136 = add i32 %r135, 0
  br label %bb6

bb6:
  %r137 = phi i32 [ %r131, %bb5 ], [ %r141, %bb7 ]
  %r138 = icmp slt i32 %r137, 1000000
  br i1 %r138, label %bb7, label %bb8

bb7:
  %r139 = add i32 0, 0
  %r140 = add i32 %r137, 1
  %r141 = add i32 %r140, 0
  br label %bb6

bb8:
  call void @putint(i32 %r136)
  call void @_sysy_stoptime(i32 10)
  ret i32 0
}

