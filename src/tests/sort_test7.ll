declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
@n = global i32 0
define i32 @Merge( i32* %r100, i32 %r101, i32 %r102, i32 %r103 ) {
bb1:
  %r140 = alloca i32
  %r139 = alloca i32
  %r104 = alloca i32
  %r105 = sub i32 %r102, %r101
  %r106 = add i32 %r105, 1
  store i32 %r106, i32* %r104
  %r107 = alloca i32
  %r108 = sub i32 %r103, %r102
  store i32 %r108, i32* %r107
  %r109 = alloca [ 10 x i32 ]
  %r110 = alloca [ 10 x i32 ]
  %r111 = alloca i32
  store i32 0, i32* %r111
  %r112 = alloca i32
  store i32 0, i32* %r112
  %r113 = alloca i32
  br label %bb2

bb2:
  %r114 = load i32, i32* %r111
  %r115 = load i32, i32* %r104
  %r116 = icmp slt i32 %r114, %r115
  br i1 %r116, label %bb3, label %bb4

bb3:
  %r117 = load i32, i32* %r111
  %r118 = add i32 %r117, %r101
  store i32 %r118, i32* %r113
  %r119 = load i32, i32* %r113
  %r120 = getelementptr i32, i32* %r100, i32 %r119
  %r121 = load i32, i32* %r120
  %r122 = load i32, i32* %r111
  %r123 = getelementptr [10 x i32 ], [10 x i32 ]* %r109, i32 0, i32 %r122
  store i32 %r121, i32* %r123
  %r124 = load i32, i32* %r111
  %r125 = add i32 %r124, 1
  store i32 %r125, i32* %r111
  br label %bb2

bb4:
  br label %bb5

bb5:
  %r126 = load i32, i32* %r112
  %r127 = load i32, i32* %r107
  %r128 = icmp slt i32 %r126, %r127
  br i1 %r128, label %bb6, label %bb7

bb6:
  %r129 = load i32, i32* %r112
  %r130 = add i32 %r129, %r102
  %r131 = add i32 %r130, 1
  store i32 %r131, i32* %r113
  %r132 = load i32, i32* %r113
  %r133 = getelementptr i32, i32* %r100, i32 %r132
  %r134 = load i32, i32* %r133
  %r135 = load i32, i32* %r112
  %r136 = getelementptr [10 x i32 ], [10 x i32 ]* %r110, i32 0, i32 %r135
  store i32 %r134, i32* %r136
  %r137 = load i32, i32* %r112
  %r138 = add i32 %r137, 1
  store i32 %r138, i32* %r112
  br label %bb5

bb7:
  store i32 0, i32* %r111
  store i32 0, i32* %r112
  store i32 %r101, i32* %r139
  br label %bb8

bb8:
  %r141 = load i32, i32* %r111
  %r142 = load i32, i32* %r104
  %r143 = icmp ne i32 %r141, %r142
  br i1 %r143, label %bb11, label %bb10

bb11:
  %r144 = load i32, i32* %r112
  %r145 = load i32, i32* %r107
  %r146 = icmp ne i32 %r144, %r145
  br i1 %r146, label %bb9, label %bb10

bb9:
  %r147 = load i32, i32* %r111
  %r148 = getelementptr [10 x i32 ], [10 x i32 ]* %r109, i32 0, i32 %r147
  %r149 = load i32, i32* %r148
  %r150 = load i32, i32* %r112
  %r151 = getelementptr [10 x i32 ], [10 x i32 ]* %r110, i32 0, i32 %r150
  %r152 = load i32, i32* %r151
  %r153 = add i32 %r152, 1
  %r154 = icmp slt i32 %r149, %r153
  br i1 %r154, label %bb12, label %bb13

bb12:
  %r155 = load i32, i32* %r111
  %r156 = getelementptr [10 x i32 ], [10 x i32 ]* %r109, i32 0, i32 %r155
  %r157 = load i32, i32* %r156
  %r158 = load i32, i32* %r139
  %r159 = getelementptr i32, i32* %r100, i32 %r158
  store i32 %r157, i32* %r159
  %r160 = load i32, i32* %r139
  %r161 = add i32 %r160, 1
  store i32 %r161, i32* %r139
  %r162 = load i32, i32* %r111
  %r163 = add i32 %r162, 1
  store i32 %r163, i32* %r111
  br label %bb14

bb13:
  %r164 = load i32, i32* %r112
  %r165 = getelementptr [10 x i32 ], [10 x i32 ]* %r110, i32 0, i32 %r164
  %r166 = load i32, i32* %r165
  %r167 = load i32, i32* %r139
  %r168 = getelementptr i32, i32* %r100, i32 %r167
  store i32 %r166, i32* %r168
  %r169 = load i32, i32* %r139
  %r170 = add i32 %r169, 1
  store i32 %r170, i32* %r139
  %r171 = load i32, i32* %r112
  %r172 = add i32 %r171, 1
  store i32 %r172, i32* %r112
  br label %bb14

bb14:
  br label %bb8

bb10:
  br label %bb15

bb15:
  %r173 = load i32, i32* %r111
  %r174 = load i32, i32* %r104
  %r175 = icmp slt i32 %r173, %r174
  br i1 %r175, label %bb16, label %bb17

bb16:
  %r176 = load i32, i32* %r111
  %r177 = getelementptr [10 x i32 ], [10 x i32 ]* %r109, i32 0, i32 %r176
  %r178 = load i32, i32* %r177
  %r179 = load i32, i32* %r139
  %r180 = getelementptr i32, i32* %r100, i32 %r179
  store i32 %r178, i32* %r180
  %r181 = load i32, i32* %r139
  %r182 = add i32 %r181, 1
  store i32 %r182, i32* %r139
  %r183 = load i32, i32* %r111
  %r184 = add i32 %r183, 1
  store i32 %r184, i32* %r111
  br label %bb15

bb17:
  br label %bb18

bb18:
  %r185 = load i32, i32* %r112
  %r186 = load i32, i32* %r107
  %r187 = icmp slt i32 %r185, %r186
  br i1 %r187, label %bb19, label %bb20

bb19:
  %r188 = load i32, i32* %r112
  %r189 = getelementptr [10 x i32 ], [10 x i32 ]* %r110, i32 0, i32 %r188
  %r190 = load i32, i32* %r189
  %r191 = load i32, i32* %r139
  %r192 = getelementptr i32, i32* %r100, i32 %r191
  store i32 %r190, i32* %r192
  %r193 = load i32, i32* %r139
  %r194 = add i32 %r193, 1
  store i32 %r194, i32* %r139
  %r195 = load i32, i32* %r112
  %r196 = add i32 %r195, 1
  store i32 %r196, i32* %r112
  br label %bb18

bb20:
  ret i32 0
}

define i32 @MergeSort( i32* %r197, i32 %r198, i32 %r199 ) {
bb21:
  %r204 = alloca i32
  %r201 = alloca i32
  %r200 = icmp slt i32 %r198, %r199
  br i1 %r200, label %bb22, label %bb23

bb22:
  %r202 = add i32 %r198, %r199
  %r203 = sdiv i32 %r202, 2
  store i32 %r203, i32* %r201
  %r205 = load i32, i32* %r201
  %r206 = call i32 @MergeSort(i32* %r197, i32 %r198, i32 %r205)
  store i32 %r206, i32* %r204
  %r207 = load i32, i32* %r201
  %r208 = add i32 %r207, 1
  store i32 %r208, i32* %r204
  %r209 = load i32, i32* %r204
  %r210 = call i32 @MergeSort(i32* %r197, i32 %r209, i32 %r199)
  store i32 %r210, i32* %r204
  %r211 = load i32, i32* %r201
  %r212 = call i32 @Merge(i32* %r197, i32 %r198, i32 %r211, i32 %r199)
  store i32 %r212, i32* %r204
  br label %bb24

bb24:
  ret i32 0
}

define i32 @main( ) {
bb25:
  store i32 10, i32* @n
  %r213 = alloca [ 10 x i32 ]
  %r214 = getelementptr [10 x i32 ], [10 x i32 ]* %r213, i32 0, i32 0
  store i32 4, i32* %r214
  %r215 = getelementptr [10 x i32 ], [10 x i32 ]* %r213, i32 0, i32 1
  store i32 3, i32* %r215
  %r216 = getelementptr [10 x i32 ], [10 x i32 ]* %r213, i32 0, i32 2
  store i32 9, i32* %r216
  %r217 = getelementptr [10 x i32 ], [10 x i32 ]* %r213, i32 0, i32 3
  store i32 2, i32* %r217
  %r218 = getelementptr [10 x i32 ], [10 x i32 ]* %r213, i32 0, i32 4
  store i32 0, i32* %r218
  %r219 = getelementptr [10 x i32 ], [10 x i32 ]* %r213, i32 0, i32 5
  store i32 1, i32* %r219
  %r220 = getelementptr [10 x i32 ], [10 x i32 ]* %r213, i32 0, i32 6
  store i32 6, i32* %r220
  %r221 = getelementptr [10 x i32 ], [10 x i32 ]* %r213, i32 0, i32 7
  store i32 5, i32* %r221
  %r222 = getelementptr [10 x i32 ], [10 x i32 ]* %r213, i32 0, i32 8
  store i32 7, i32* %r222
  %r223 = getelementptr [10 x i32 ], [10 x i32 ]* %r213, i32 0, i32 9
  store i32 8, i32* %r223
  %r224 = alloca i32
  store i32 0, i32* %r224
  %r225 = alloca i32
  %r226 = load i32, i32* @n
  %r227 = sub i32 %r226, 1
  store i32 %r227, i32* %r225
  %r228 = load i32, i32* %r224
  %r229 = load i32, i32* %r225
  %r230 = call i32 @MergeSort(i32* %r213, i32 %r228, i32 %r229)
  store i32 %r230, i32* %r224
  br label %bb26

bb26:
  %r231 = load i32, i32* %r224
  %r232 = load i32, i32* @n
  %r233 = icmp slt i32 %r231, %r232
  br i1 %r233, label %bb27, label %bb28

bb27:
  %r234 = load i32, i32* %r224
  %r235 = getelementptr [10 x i32 ], [10 x i32 ]* %r213, i32 0, i32 %r234
  %r236 = load i32, i32* %r235
  store i32 %r236, i32* %r225
  %r237 = load i32, i32* %r225
  call void @putint(i32 %r237)
  store i32 10, i32* %r225
  %r238 = load i32, i32* %r225
  call void @putch(i32 %r238)
  %r239 = load i32, i32* %r224
  %r240 = add i32 %r239, 1
  store i32 %r240, i32* %r224
  br label %bb26

bb28:
  ret i32 0
}

