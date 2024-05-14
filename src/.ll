declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
define i32 @quickread( ) {
bb1:
  %r107 = add i32 0, 0
  %r107 = add i32 0, 0
  %r108 = add i32 0, 0
  %r108 = add i32 0, 0
  %r102 = alloca [ 10 x i32 ]
  %r104 = icmp ne i32 %r108, 0
  br i1 %r104, label %bb2, label %bb3

bb2:
  %r107 = add i32 1, 0
  br label %bb4

bb3:
  %r107 = add i32 2, 0
  br label %bb4

bb4:
  %r107 = phi i32 [ %r107, %bb2 ], [ %r107, %bb3 ]
  %r106 = add i32 %r107, 1
  %r108 = add i32 %r106, 0
  ret i32 0
}

