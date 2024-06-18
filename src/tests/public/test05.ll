declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
@N = global i32 0
@newline = global i32 0
define i32 @factor( i32 %r100 ) {
bb2:
  %r129 = add i32 0, 0
  %r130 = add i32 0, 0
  %r131 = add i32 0, 0
  %r132 = add i32 %r100, 0
  br label %bb1

bb1:
  %r133 = add i32 0, 0
  %r134 = add i32 1, 0
  br label %bb3

bb3:
  %r135 = phi i32 [ %r134, %bb1 ], [ %r144, %bb8 ]
  %r136 = phi i32 [ %r133, %bb1 ], [ %r142, %bb8 ]
  %r137 = add i32 %r132, 1
  %r138 = icmp slt i32 %r135, %r137
  br i1 %r138, label %bb4, label %bb5

bb4:
  %r139 = sdiv i32 %r132, %r135
  %r140 = mul i32 %r139, %r135
  %r141 = icmp eq i32 %r140, %r132
  br i1 %r141, label %bb6, label %bb7

bb6:
  %r145 = add i32 %r136, %r135
  %r146 = add i32 %r145, 0
  br label %bb8

bb7:
  br label %bb8

bb8:
  %r142 = phi i32 [ %r146, %bb6 ], [ %r136, %bb7 ]
  %r143 = add i32 %r135, 1
  %r144 = add i32 %r143, 0
  br label %bb3

bb5:
  ret i32 %r136
}

define i32 @main( ) {
bb9:
  call void @_sysy_starttime(i32 24)
  store i32 4, i32* @N
  store i32 10, i32* @newline
  %r150 = add i32 0, 0
  %r151 = add i32 0, 0
  %r152 = add i32 1478, 0
  %r153 = add i32 0, 0
  call void @_sysy_stoptime(i32 31)
  %r154 = call i32 @factor(i32 %r152)
  ret i32 %r154
}

