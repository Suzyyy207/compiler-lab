declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
define i32 @mod( i32 %r100, i32 %r102 ) {
bb2:
  %r101 = alloca i32
  store i32 %r100, i32* %r101
  %r103 = alloca i32
  store i32 %r102, i32* %r103
  br label %bb1

bb1:
  %r104 = load i32, i32* %r101
  %r105 = load i32, i32* %r101
  %r106 = load i32, i32* %r103
  %r107 = sdiv i32 %r105, %r106
  %r108 = load i32, i32* %r103
  %r109 = mul i32 %r107, %r108
  %r110 = sub i32 %r104, %r109
  ret i32 %r110
}

define i32 @palindrome( i32 %r111 ) {
bb4:
  %r115 = alloca i32
  %r114 = alloca i32
  %r113 = alloca [ 4 x i32 ]
  %r112 = alloca i32
  store i32 %r111, i32* %r112
  br label %bb3

bb3:
  store i32 0, i32* %r114
  br label %bb5

bb5:
  %r116 = load i32, i32* %r114
  %r117 = icmp slt i32 %r116, 4
  br i1 %r117, label %bb6, label %bb7

bb6:
  %r118 = load i32, i32* %r112
  %r119 = call i32 @mod(i32 %r118, i32 10)
  %r120 = load i32, i32* %r114
  %r121 = getelementptr [4 x i32 ], [4 x i32 ]* %r113, i32 0, i32 %r120
  store i32 %r119, i32* %r121
  %r122 = load i32, i32* %r112
  %r123 = sdiv i32 %r122, 10
  store i32 %r123, i32* %r112
  %r124 = load i32, i32* %r114
  %r125 = add i32 %r124, 1
  store i32 %r125, i32* %r114
  br label %bb5

bb7:
  %r127 = getelementptr [4 x i32 ], [4 x i32 ]* %r113, i32 0, i32 0
  %r128 = load i32, i32* %r127
  %r129 = getelementptr [4 x i32 ], [4 x i32 ]* %r113, i32 0, i32 3
  %r130 = load i32, i32* %r129
  %r131 = icmp eq i32 %r128, %r130
  br i1 %r131, label %bb11, label %bb9

bb11:
  %r132 = getelementptr [4 x i32 ], [4 x i32 ]* %r113, i32 0, i32 1
  %r133 = load i32, i32* %r132
  %r134 = getelementptr [4 x i32 ], [4 x i32 ]* %r113, i32 0, i32 2
  %r135 = load i32, i32* %r134
  %r136 = icmp eq i32 %r133, %r135
  br i1 %r136, label %bb8, label %bb9

bb8:
  store i32 1, i32* %r115
  br label %bb10

bb9:
  store i32 0, i32* %r115
  br label %bb10

bb10:
  %r137 = load i32, i32* %r115
  ret i32 %r137
}

define i32 @main( ) {
bb12:
  %r138 = alloca i32
  store i32 1221, i32* %r138
  %r139 = alloca i32
  %r140 = load i32, i32* %r138
  %r141 = call i32 @palindrome(i32 %r140)
  store i32 %r141, i32* %r139
  %r142 = load i32, i32* %r139
  %r143 = icmp eq i32 %r142, 1
  br i1 %r143, label %bb13, label %bb14

bb13:
  %r144 = load i32, i32* %r138
  %r145 = load i32, i32* %r138
  call void @putint(i32 %r145)
  br label %bb15

bb14:
  store i32 0, i32* %r139
  %r146 = load i32, i32* %r139
  %r147 = load i32, i32* %r139
  call void @putint(i32 %r147)
  br label %bb15

bb15:
  store i32 10, i32* %r139
  %r148 = load i32, i32* %r139
  %r149 = load i32, i32* %r139
  call void @putch(i32 %r149)
  ret i32 0
}

