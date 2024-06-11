declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
define i32 @quickread( ) {
bb1:
  %r131 = call i32 @getch()
  %r132 = add i32 0, 0
  %r133 = add i32 %r131, 0
  %r134 = add i32 0, 0
  %r135 = add i32 0, 0
  %r136 = add i32 0, 0
  %r137 = add i32 0, 0
  br label %bb2

bb2:
  %r138 = phi i32 [ %r137, %bb1 ], [ %r142, %bb8 ]
  %r139 = phi i32 [ %r133, %bb1 ], [ %r144, %bb8 ]
  %r140 = icmp slt i32 %r139, 48
  br i1 %r140, label %bb3, label %bb5

bb5:
  %r146 = icmp sgt i32 %r139, 57
  br i1 %r146, label %bb3, label %bb4

bb3:
  %r141 = icmp eq i32 %r139, 45
  br i1 %r141, label %bb6, label %bb7

bb6:
  %r145 = add i32 1, 0
  br label %bb8

bb7:
  br label %bb8

bb8:
  %r142 = phi i32 [ %r145, %bb6 ], [ %r138, %bb7 ]
  %r143 = call i32 @getch()
  %r144 = add i32 %r143, 0
  br label %bb2

bb4:
  br label %bb9

bb9:
  %r147 = phi i32 [ %r139, %bb4 ], [ %r158, %bb10 ]
  %r148 = phi i32 [ %r135, %bb4 ], [ %r156, %bb10 ]
  %r149 = icmp sge i32 %r147, 48
  br i1 %r149, label %bb12, label %bb11

bb12:
  %r152 = icmp sle i32 %r147, 57
  br i1 %r152, label %bb10, label %bb11

bb10:
  %r153 = mul i32 %r148, 10
  %r154 = add i32 %r153, %r147
  %r155 = sub i32 %r154, 48
  %r156 = add i32 %r155, 0
  %r157 = call i32 @getch()
  %r158 = add i32 %r157, 0
  br label %bb9

bb11:
  %r150 = icmp ne i32 %r138, 0
  br i1 %r150, label %bb13, label %bb14

bb13:
  %r151 = sub i32 0, %r148
  ret i32 %r151
bb14:
  ret i32 %r148
}

