declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
@N = global i32 0
define i32 @insert( i32* %r100, i32 %r101 ) {
bb2:
  %r120 = alloca i32
  %r104 = alloca i32
  %r103 = alloca i32
  %r102 = alloca i32
  store i32 %r101, i32* %r102
  br label %bb1

bb1:
  store i32 0, i32* %r103
  br label %bb3

bb3:
  %r106 = load i32, i32* %r102
  %r107 = load i32, i32* %r103
  %r108 = getelementptr i32, i32* %r100, i32 %r107
  %r109 = load i32, i32* %r108
  %r110 = icmp sgt i32 %r106, %r109
  br i1 %r110, label %bb6, label %bb5

bb6:
  %r111 = load i32, i32* %r103
  %r112 = load i32, i32* @N
  %r113 = icmp slt i32 %r111, %r112
  br i1 %r113, label %bb4, label %bb5

bb4:
  %r114 = load i32, i32* %r103
  %r115 = add i32 %r114, 1
  store i32 %r115, i32* %r103
  br label %bb3

bb5:
  %r116 = load i32, i32* @N
  store i32 %r116, i32* %r104
  br label %bb7

bb7:
  %r117 = load i32, i32* %r104
  %r118 = load i32, i32* %r103
  %r119 = icmp sgt i32 %r117, %r118
  br i1 %r119, label %bb8, label %bb9

bb8:
  %r121 = load i32, i32* %r104
  %r122 = sub i32 %r121, 1
  store i32 %r122, i32* %r120
  %r123 = load i32, i32* %r120
  %r124 = getelementptr i32, i32* %r100, i32 %r123
  %r125 = load i32, i32* %r124
  %r126 = load i32, i32* %r104
  %r127 = getelementptr i32, i32* %r100, i32 %r126
  store i32 %r125, i32* %r127
  %r128 = load i32, i32* %r102
  %r129 = load i32, i32* %r103
  %r130 = getelementptr i32, i32* %r100, i32 %r129
  store i32 %r128, i32* %r130
  %r131 = load i32, i32* %r104
  %r132 = sub i32 %r131, 1
  store i32 %r132, i32* %r104
  br label %bb7

bb9:
  ret i32 0
}

define i32 @main( ) {
bb10:
  call void @_sysy_starttime(i32 27)
  store i32 10, i32* @N
  %r133 = alloca [ 11 x i32 ]
  %r134 = getelementptr [11 x i32 ], [11 x i32 ]* %r133, i32 0, i32 0
  store i32 1, i32* %r134
  %r135 = getelementptr [11 x i32 ], [11 x i32 ]* %r133, i32 0, i32 1
  store i32 3, i32* %r135
  %r136 = getelementptr [11 x i32 ], [11 x i32 ]* %r133, i32 0, i32 2
  store i32 4, i32* %r136
  %r137 = getelementptr [11 x i32 ], [11 x i32 ]* %r133, i32 0, i32 3
  store i32 7, i32* %r137
  %r138 = getelementptr [11 x i32 ], [11 x i32 ]* %r133, i32 0, i32 4
  store i32 8, i32* %r138
  %r139 = getelementptr [11 x i32 ], [11 x i32 ]* %r133, i32 0, i32 5
  store i32 11, i32* %r139
  %r140 = getelementptr [11 x i32 ], [11 x i32 ]* %r133, i32 0, i32 6
  store i32 13, i32* %r140
  %r141 = getelementptr [11 x i32 ], [11 x i32 ]* %r133, i32 0, i32 7
  store i32 18, i32* %r141
  %r142 = getelementptr [11 x i32 ], [11 x i32 ]* %r133, i32 0, i32 8
  store i32 56, i32* %r142
  %r143 = getelementptr [11 x i32 ], [11 x i32 ]* %r133, i32 0, i32 9
  store i32 78, i32* %r143
  %r144 = alloca i32
  %r145 = alloca i32
  store i32 0, i32* %r145
  %r146 = call i32 @getint()
  store i32 %r146, i32* %r144
  %r147 = load i32, i32* %r144
  %r148 = call i32 @insert(i32* %r133, i32 %r147)
  store i32 %r148, i32* %r144
  br label %bb11

bb11:
  %r149 = load i32, i32* %r145
  %r150 = load i32, i32* @N
  %r151 = icmp slt i32 %r149, %r150
  br i1 %r151, label %bb12, label %bb13

bb12:
  %r152 = load i32, i32* %r145
  %r153 = getelementptr [11 x i32 ], [11 x i32 ]* %r133, i32 0, i32 %r152
  %r154 = load i32, i32* %r153
  store i32 %r154, i32* %r144
  %r155 = load i32, i32* %r144
  %r156 = load i32, i32* %r144
  call void @putint(i32 %r156)
  store i32 10, i32* %r144
  %r157 = load i32, i32* %r144
  %r158 = load i32, i32* %r144
  call void @putch(i32 %r158)
  %r159 = load i32, i32* %r145
  %r160 = add i32 %r159, 1
  store i32 %r160, i32* %r145
  br label %bb11

bb13:
  call void @_sysy_stoptime(i32 54)
  ret i32 0
}

