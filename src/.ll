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
  %r108 = add i32 0, 0
  %r103 = icmp ne i32 %r108, 0
  br i1 %r103, label %bb2, label %bb3

bb2:
  %r105 = sub i32 0, %r107
  ret i32 %r105
  br label %bb4

bb3:
  ret i32 %r107
  br label %bb4

bb4:
  ret i32 0
}

