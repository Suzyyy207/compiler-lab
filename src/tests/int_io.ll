declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
@ascii_0 = global i32 48
define i32 @my_getint( ) {
bb1:
  %r100 = alloca i32
  store i32 0, i32* %r100
  %r101 = alloca i32
  br label %bb2

bb2:
  %r102 = icmp sgt i32 1, 0
  br i1 %r102, label %bb3, label %bb4

bb3:
  %r103 = call i32 @getch()
  %r104 = load i32, i32* @ascii_0
  %r105 = sub i32 %r103, %r104
  store i32 %r105, i32* %r101
  %r107 = load i32, i32* %r101
  %r108 = icmp slt i32 %r107, 0
  br i1 %r108, label %bb5, label %bb8

bb8:
  %r109 = load i32, i32* %r101
  %r110 = icmp sgt i32 %r109, 9
  br i1 %r110, label %bb5, label %bb6

bb5:
  br label %bb2

  br label %bb7

bb6:
  br label %bb4

  br label %bb7

bb7:
  br label %bb2

bb4:
  %r111 = load i32, i32* %r101
  store i32 %r111, i32* %r100
  br label %bb9

bb9:
  %r112 = icmp sgt i32 1, 0
  br i1 %r112, label %bb10, label %bb11

bb10:
  %r113 = call i32 @getch()
  %r114 = load i32, i32* @ascii_0
  %r115 = sub i32 %r113, %r114
  store i32 %r115, i32* %r101
  %r117 = load i32, i32* %r101
  %r118 = icmp sge i32 %r117, 0
  br i1 %r118, label %bb15, label %bb13

bb15:
  %r119 = load i32, i32* %r101
  %r120 = icmp sle i32 %r119, 9
  br i1 %r120, label %bb12, label %bb13

bb12:
  %r121 = load i32, i32* %r100
  %r122 = mul i32 %r121, 10
  %r123 = load i32, i32* %r101
  %r124 = add i32 %r122, %r123
  store i32 %r124, i32* %r100
  br label %bb14

bb13:
  br label %bb11

  br label %bb14

bb14:
  br label %bb9

bb11:
  %r125 = load i32, i32* %r100
  ret i32 %r125
}

define i32 @mod( i32 %r126, i32 %r128 ) {
bb17:
  %r127 = alloca i32
  store i32 %r126, i32* %r127
  %r129 = alloca i32
  store i32 %r128, i32* %r129
  br label %bb16

bb16:
  %r130 = load i32, i32* %r127
  %r131 = load i32, i32* %r127
  %r132 = load i32, i32* %r129
  %r133 = sdiv i32 %r131, %r132
  %r134 = load i32, i32* %r129
  %r135 = mul i32 %r133, %r134
  %r136 = sub i32 %r130, %r135
  ret i32 %r136
}

define void @my_putint( i32 %r137 ) {
bb19:
  %r140 = alloca i32
  %r139 = alloca [ 16 x i32 ]
  %r138 = alloca i32
  store i32 %r137, i32* %r138
  br label %bb18

bb18:
  store i32 0, i32* %r140
  br label %bb20

bb20:
  %r141 = load i32, i32* %r138
  %r142 = icmp sgt i32 %r141, 0
  br i1 %r142, label %bb21, label %bb22

bb21:
  %r143 = load i32, i32* %r138
  %r144 = call i32 @mod(i32 %r143, i32 10)
  %r145 = load i32, i32* @ascii_0
  %r146 = add i32 %r144, %r145
  %r147 = load i32, i32* %r140
  %r148 = getelementptr [16 x i32 ], [16 x i32 ]* %r139, i32 0, i32 %r147
  store i32 %r146, i32* %r148
  %r149 = load i32, i32* %r138
  %r150 = sdiv i32 %r149, 10
  store i32 %r150, i32* %r138
  %r151 = load i32, i32* %r140
  %r152 = add i32 %r151, 1
  store i32 %r152, i32* %r140
  br label %bb20

bb22:
  br label %bb23

bb23:
  %r153 = load i32, i32* %r140
  %r154 = icmp sgt i32 %r153, 0
  br i1 %r154, label %bb24, label %bb25

bb24:
  %r155 = load i32, i32* %r140
  %r156 = sub i32 %r155, 1
  store i32 %r156, i32* %r140
  %r157 = load i32, i32* %r140
  %r158 = getelementptr [16 x i32 ], [16 x i32 ]* %r139, i32 0, i32 %r157
  %r159 = load i32, i32* %r158
  call void @putch(i32 %r159)
  br label %bb23

bb25:
  ret void
}

define i32 @main( ) {
bb26:
  %r164 = alloca i32
  %r161 = call i32 @my_getint()
  %r160 = alloca i32
  store i32 %r161, i32* %r160
  br label %bb27

bb27:
  %r162 = load i32, i32* %r160
  %r163 = icmp sgt i32 %r162, 0
  br i1 %r163, label %bb28, label %bb29

bb28:
  %r165 = call i32 @my_getint()
  store i32 %r165, i32* %r164
  %r166 = load i32, i32* %r164
  %r167 = load i32, i32* %r164
  call void @my_putint(i32 %r167)
  call void @putch(i32 10)
  %r168 = load i32, i32* %r160
  %r169 = sub i32 %r168, 1
  store i32 %r169, i32* %r160
  br label %bb27

bb29:
  ret i32 0
}

