declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
define i32 @main( ) {
bb1:
  %r115 = alloca i32
  %r114 = alloca i32
  %r113 = alloca i32
  %r112 = alloca i32
  %r111 = alloca i32
  call void @_sysy_starttime(i32 3)
  %r100 = alloca i32
  %r101 = alloca i32
  %r102 = alloca [ 10 x i32 ]
  store i32 0, i32* %r101
  store i32 0, i32* %r100
  br label %bb2

bb2:
  %r103 = load i32, i32* %r100
  %r104 = icmp slt i32 %r103, 10
  br i1 %r104, label %bb3, label %bb4

bb3:
  %r105 = load i32, i32* %r100
  %r106 = add i32 %r105, 1
  %r107 = load i32, i32* %r100
  %r108 = getelementptr [10 x i32 ], [10 x i32 ]* %r102, i32 0, i32 %r107
  store i32 %r106, i32* %r108
  %r109 = load i32, i32* %r100
  %r110 = add i32 %r109, 1
  store i32 %r110, i32* %r100
  br label %bb2

bb4:
  store i32 10, i32* %r115
  %r116 = call i32 @getint()
  store i32 %r116, i32* %r111
  %r117 = load i32, i32* %r115
  %r118 = sub i32 %r117, 1
  store i32 %r118, i32* %r112
  store i32 0, i32* %r113
  %r119 = load i32, i32* %r112
  %r120 = load i32, i32* %r113
  %r121 = add i32 %r119, %r120
  %r122 = sdiv i32 %r121, 2
  store i32 %r122, i32* %r114
  br label %bb5

bb5:
  %r124 = load i32, i32* %r114
  %r125 = getelementptr [10 x i32 ], [10 x i32 ]* %r102, i32 0, i32 %r124
  %r126 = load i32, i32* %r125
  %r127 = load i32, i32* %r111
  %r128 = icmp ne i32 %r126, %r127
  br i1 %r128, label %bb8, label %bb7

bb8:
  %r129 = load i32, i32* %r113
  %r130 = load i32, i32* %r112
  %r131 = icmp slt i32 %r129, %r130
  br i1 %r131, label %bb6, label %bb7

bb6:
  %r132 = load i32, i32* %r112
  %r133 = load i32, i32* %r113
  %r134 = add i32 %r132, %r133
  %r135 = sdiv i32 %r134, 2
  store i32 %r135, i32* %r114
  %r136 = load i32, i32* %r111
  %r137 = load i32, i32* %r114
  %r138 = getelementptr [10 x i32 ], [10 x i32 ]* %r102, i32 0, i32 %r137
  %r139 = load i32, i32* %r138
  %r140 = icmp slt i32 %r136, %r139
  br i1 %r140, label %bb9, label %bb10

bb9:
  %r141 = load i32, i32* %r114
  %r142 = sub i32 %r141, 1
  store i32 %r142, i32* %r112
  br label %bb11

bb10:
  %r143 = load i32, i32* %r114
  %r144 = add i32 %r143, 1
  store i32 %r144, i32* %r113
  br label %bb11

bb11:
  br label %bb5

bb7:
  %r145 = load i32, i32* %r111
  %r146 = load i32, i32* %r114
  %r147 = getelementptr [10 x i32 ], [10 x i32 ]* %r102, i32 0, i32 %r146
  %r148 = load i32, i32* %r147
  %r149 = icmp eq i32 %r145, %r148
  br i1 %r149, label %bb12, label %bb13

bb12:
  %r150 = load i32, i32* %r111
  %r151 = load i32, i32* %r111
  call void @putint(i32 %r151)
  br label %bb14

bb13:
  store i32 0, i32* %r111
  %r152 = load i32, i32* %r111
  %r153 = load i32, i32* %r111
  call void @putint(i32 %r153)
  br label %bb14

bb14:
  store i32 10, i32* %r111
  %r154 = load i32, i32* %r111
  %r155 = load i32, i32* %r111
  call void @putch(i32 %r155)
  call void @_sysy_stoptime(i32 49)
  ret i32 0
}

