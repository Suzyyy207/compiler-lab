declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
define i32 @mod( i32 %r100, i32 %r101 ) {
bb1:
  %r102 = sdiv i32 %r100, %r101
  %r103 = mul i32 %r102, %r101
  %r104 = sub i32 %r100, %r103
  ret i32 %r104
}

define i32 @palindrome( i32 %r105 ) {
bb2:
  %r117 = alloca i32
  %r106 = alloca [ 4 x i32 ]
  %r107 = alloca i32
  %r108 = alloca i32
  store i32 0, i32* %r107
  br label %bb3

bb3:
  %r109 = load i32, i32* %r107
  %r110 = icmp slt i32 %r109, 4
  br i1 %r110, label %bb4, label %bb5

bb4:
  %r111 = call i32 @mod(i32 %r105, i32 10)
  %r112 = load i32, i32* %r107
  %r113 = getelementptr [4 x i32 ], [4 x i32 ]* %r106, i32 0, i32 %r112
  store i32 %r111, i32* %r113
  %r114 = sdiv i32 %r105, 10
  store i32 %r114, i32* %r105
  %r115 = load i32, i32* %r107
  %r116 = add i32 %r115, 1
  store i32 %r116, i32* %r107
  br label %bb3

bb5:
  %r118 = getelementptr [4 x i32 ], [4 x i32 ]* %r106, i32 0, i32 0
  %r119 = load i32, i32* %r118
  %r120 = getelementptr [4 x i32 ], [4 x i32 ]* %r106, i32 0, i32 3
  %r121 = load i32, i32* %r120
  %r122 = icmp eq i32 %r119, %r121
  br i1 %r122, label %bb9, label %bb7

bb9:
  %r123 = getelementptr [4 x i32 ], [4 x i32 ]* %r106, i32 0, i32 1
  %r124 = load i32, i32* %r123
  %r125 = getelementptr [4 x i32 ], [4 x i32 ]* %r106, i32 0, i32 2
  %r126 = load i32, i32* %r125
  %r127 = icmp eq i32 %r124, %r126
  br i1 %r127, label %bb6, label %bb7

bb6:
  store i32 1, i32* %r108
  br label %bb8

bb7:
  store i32 0, i32* %r108
  br label %bb8

bb8:
  %r128 = load i32, i32* %r108
  ret i32 %r128
}

define i32 @main( ) {
bb10:
  %r129 = alloca i32
  store i32 1221, i32* %r129
  %r130 = alloca i32
  %r131 = load i32, i32* %r129
  %r132 = call i32 @palindrome(i32 %r131)
  store i32 %r132, i32* %r130
  %r133 = load i32, i32* %r130
  %r134 = icmp eq i32 %r133, 1
  br i1 %r134, label %bb11, label %bb12

bb11:
  %r135 = load i32, i32* %r129
  call void @putint(i32 %r135)
  br label %bb13

bb12:
  store i32 0, i32* %r130
  %r136 = load i32, i32* %r130
  call void @putint(i32 %r136)
  br label %bb13

bb13:
  store i32 10, i32* %r130
  %r137 = load i32, i32* %r130
  call void @putch(i32 %r137)
  ret i32 0
}

