declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
@a = global [ 10 x i32 ] zeroinitializer
@b = global i32 27
@c = global i32 1
define i32 @main( ) {
bb1:
  call void @_sysy_starttime(i32 4)
  %r124 = add i32 0, 0
  %r125 = add i32 0, 0
  %r126 = add i32 0, 0
  %r127 = add i32 0, 0
  br label %bb2

bb2:
  %r128 = phi i32 [ %r125, %bb1 ], [ %r139, %bb3 ]
  %r129 = icmp slt i32 %r128, 10
  br i1 %r129, label %bb3, label %bb4

bb3:
  %r106 = getelementptr [10 x i32 ], [10 x i32 ]* @a, i32 0, i32 %r128
  store i32 %r128, i32* %r106
  %r138 = add i32 %r128, 1
  %r139 = add i32 %r138, 0
  br label %bb2

bb4:
  %r130 = add i32 0, 0
  br label %bb5

bb5:
  %r131 = phi i32 [ %r127, %bb4 ], [ %r135, %bb6 ]
  %r132 = phi i32 [ %r130, %bb4 ], [ %r137, %bb6 ]
  %r133 = icmp slt i32 %r132, 10
  br i1 %r133, label %bb6, label %bb7

bb6:
  %r113 = getelementptr [10 x i32 ], [10 x i32 ]* @a, i32 0, i32 %r132
  %r114 = load i32, i32* %r113
  %r134 = add i32 %r131, %r114
  %r135 = add i32 %r134, 0
  %r136 = add i32 %r132, 1
  %r137 = add i32 %r136, 0
  br label %bb5

bb7:
  %r118 = load i32, i32* @b
  call void @putint(i32 %r118)
  %r119 = load i32, i32* @c
  call void @putint(i32 %r119)
  call void @putint(i32 %r131)
  call void @_sysy_stoptime(i32 19)
  ret i32 0
}

