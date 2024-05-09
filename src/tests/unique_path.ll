declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
define i32 @uniquePaths( i32 %r100, i32 %r102 ) {
bb2:
  %r114 = alloca i32
  %r113 = alloca i32
  %r112 = alloca i32
  %r111 = alloca i32
  %r110 = alloca i32
  %r109 = alloca [ 9 x i32 ]
  %r101 = alloca i32
  store i32 %r100, i32* %r101
  %r103 = alloca i32
  store i32 %r102, i32* %r103
  br label %bb1

bb1:
  %r105 = load i32, i32* %r101
  %r106 = icmp eq i32 %r105, 1
  br i1 %r106, label %bb3, label %bb6

bb6:
  %r107 = load i32, i32* %r103
  %r108 = icmp eq i32 %r107, 1
  br i1 %r108, label %bb3, label %bb4

bb3:
  ret i32 1
  br label %bb5

bb4:
  br label %bb5

bb5:
  store i32 0, i32* %r110
  br label %bb7

bb7:
  %r115 = load i32, i32* %r110
  %r116 = load i32, i32* %r101
  %r117 = icmp slt i32 %r115, %r116
  br i1 %r117, label %bb8, label %bb9

bb8:
  %r118 = load i32, i32* %r110
  %r119 = mul i32 %r118, 3
  %r120 = load i32, i32* %r103
  %r121 = add i32 %r119, %r120
  %r122 = sub i32 %r121, 1
  store i32 %r122, i32* %r112
  %r123 = load i32, i32* %r112
  %r124 = getelementptr [9 x i32 ], [9 x i32 ]* %r109, i32 0, i32 %r123
  store i32 1, i32* %r124
  %r125 = load i32, i32* %r110
  %r126 = add i32 %r125, 1
  store i32 %r126, i32* %r110
  br label %bb7

bb9:
  store i32 0, i32* %r110
  br label %bb10

bb10:
  %r127 = load i32, i32* %r110
  %r128 = load i32, i32* %r103
  %r129 = icmp slt i32 %r127, %r128
  br i1 %r129, label %bb11, label %bb12

bb11:
  %r130 = load i32, i32* %r101
  %r131 = sub i32 %r130, 1
  %r132 = mul i32 %r131, 3
  %r133 = load i32, i32* %r110
  %r134 = add i32 %r132, %r133
  store i32 %r134, i32* %r112
  %r135 = load i32, i32* %r112
  %r136 = getelementptr [9 x i32 ], [9 x i32 ]* %r109, i32 0, i32 %r135
  store i32 1, i32* %r136
  %r137 = load i32, i32* %r110
  %r138 = add i32 %r137, 1
  store i32 %r138, i32* %r110
  br label %bb10

bb12:
  %r139 = load i32, i32* %r101
  %r140 = sub i32 %r139, 2
  store i32 %r140, i32* %r110
  br label %bb13

bb13:
  %r141 = load i32, i32* %r110
  %r142 = sub i32 0, 1
  %r143 = icmp sgt i32 %r141, %r142
  br i1 %r143, label %bb14, label %bb15

bb14:
  %r144 = load i32, i32* %r103
  %r145 = sub i32 %r144, 2
  store i32 %r145, i32* %r111
  br label %bb16

bb16:
  %r146 = load i32, i32* %r111
  %r147 = sub i32 0, 1
  %r148 = icmp sgt i32 %r146, %r147
  br i1 %r148, label %bb17, label %bb18

bb17:
  %r149 = load i32, i32* %r110
  %r150 = mul i32 %r149, 3
  %r151 = load i32, i32* %r111
  %r152 = add i32 %r150, %r151
  store i32 %r152, i32* %r112
  %r153 = load i32, i32* %r110
  %r154 = add i32 %r153, 1
  %r155 = mul i32 %r154, 3
  %r156 = load i32, i32* %r111
  %r157 = add i32 %r155, %r156
  store i32 %r157, i32* %r113
  %r158 = load i32, i32* %r110
  %r159 = mul i32 %r158, 3
  %r160 = load i32, i32* %r111
  %r161 = add i32 %r159, %r160
  %r162 = add i32 %r161, 1
  store i32 %r162, i32* %r114
  %r163 = load i32, i32* %r113
  %r164 = getelementptr [9 x i32 ], [9 x i32 ]* %r109, i32 0, i32 %r163
  %r165 = load i32, i32* %r164
  %r166 = load i32, i32* %r114
  %r167 = getelementptr [9 x i32 ], [9 x i32 ]* %r109, i32 0, i32 %r166
  %r168 = load i32, i32* %r167
  %r169 = add i32 %r165, %r168
  %r170 = load i32, i32* %r112
  %r171 = getelementptr [9 x i32 ], [9 x i32 ]* %r109, i32 0, i32 %r170
  store i32 %r169, i32* %r171
  %r172 = load i32, i32* %r111
  %r173 = sub i32 %r172, 1
  store i32 %r173, i32* %r111
  br label %bb16

bb18:
  %r174 = load i32, i32* %r110
  %r175 = sub i32 %r174, 1
  store i32 %r175, i32* %r110
  br label %bb13

bb15:
  %r176 = getelementptr [9 x i32 ], [9 x i32 ]* %r109, i32 0, i32 0
  %r177 = load i32, i32* %r176
  ret i32 %r177
}

define i32 @main( ) {
bb19:
  %r178 = alloca i32
  %r179 = alloca i32
  store i32 3, i32* %r179
  %r180 = load i32, i32* %r179
  %r181 = load i32, i32* %r179
  %r182 = call i32 @uniquePaths(i32 %r180, i32 %r181)
  store i32 %r182, i32* %r178
  %r183 = load i32, i32* %r178
  ret i32 %r183
}

