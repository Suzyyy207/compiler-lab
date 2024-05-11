declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
define i32 @quickread( ) {
bb1:
  %r101 = call i32 @getch()
  %r109 = add i32 %r101, 0
  %r110 = add i32 0, 0
  %r111 = add i32 0, 0
  br label %bb2

bb2:
  %r106 = icmp slt i32 %r109, 48
  br i1 %r106, label %bb3, label %bb5

bb5:
  %r108 = icmp sgt i32 %r109, 57
  br i1 %r108, label %bb3, label %bb4

bb3:
  br label %bb2

bb4:
  ret i32 0
}

