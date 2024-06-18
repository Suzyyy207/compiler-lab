declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
@a = global i32 1
define i32 @foo( i32 %r100 ) {
bb2:
  %r113 = add i32 0, 0
  %r114 = add i32 %r100, 0
  br label %bb1

bb1:
  store i32 %r114, i32* @a
  ret i32 1
}

define i32 @main( ) {
bb3:
  call void @_sysy_starttime(i32 9)
  %r116 = add i32 0, 0
  %r117 = add i32 1, 0
  %r118 = call i32 @foo(i32 2)
  %r119 = icmp sgt i32 %r118, 0
  br i1 %r119, label %bb4, label %bb7

bb7:
  %r122 = call i32 @foo(i32 3)
  %r123 = icmp sgt i32 %r122, 0
  br i1 %r123, label %bb4, label %bb5

bb4:
  %r121 = add i32 2, 0
  br label %bb6

bb5:
  br label %bb6

bb6:
  %r120 = phi i32 [ %r121, %bb4 ], [ %r117, %bb5 ]
  %r109 = load i32, i32* @a
  call void @putint(i32 %r109)
  call void @putint(i32 %r120)
  call void @_sysy_stoptime(i32 17)
  ret i32 0
}

