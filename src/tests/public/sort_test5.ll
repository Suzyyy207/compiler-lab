declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
@n = global i32 0
define i32 @swap( i32* %r100, i32 %r101, i32 %r103 ) {
bb2:
  %r105 = alloca i32
  %r102 = alloca i32
  store i32 %r101, i32* %r102
  %r104 = alloca i32
  store i32 %r103, i32* %r104
  br label %bb1

bb1:
  %r106 = load i32, i32* %r102
  %r107 = getelementptr i32, i32* %r100, i32 %r106
  %r108 = load i32, i32* %r107
  store i32 %r108, i32* %r105
  %r109 = load i32, i32* %r104
  %r110 = getelementptr i32, i32* %r100, i32 %r109
  %r111 = load i32, i32* %r110
  %r112 = load i32, i32* %r102
  %r113 = getelementptr i32, i32* %r100, i32 %r112
  store i32 %r111, i32* %r113
  %r114 = load i32, i32* %r105
  %r115 = load i32, i32* %r104
  %r116 = getelementptr i32, i32* %r100, i32 %r115
  store i32 %r114, i32* %r116
  ret i32 0
}

define i32 @heap_ajust( i32* %r117, i32 %r118, i32 %r120 ) {
bb4:
  %r132 = alloca i32
  %r124 = alloca i32
  %r122 = alloca i32
  %r119 = alloca i32
  store i32 %r118, i32* %r119
  %r121 = alloca i32
  store i32 %r120, i32* %r121
  br label %bb3

bb3:
  %r123 = load i32, i32* %r119
  store i32 %r123, i32* %r122
  %r125 = load i32, i32* %r122
  %r126 = mul i32 %r125, 2
  %r127 = add i32 %r126, 1
  store i32 %r127, i32* %r124
  br label %bb5

bb5:
  %r128 = load i32, i32* %r124
  %r129 = load i32, i32* %r121
  %r130 = add i32 %r129, 1
  %r131 = icmp slt i32 %r128, %r130
  br i1 %r131, label %bb6, label %bb7

bb6:
  %r133 = load i32, i32* %r124
  %r134 = add i32 %r133, 1
  store i32 %r134, i32* %r132
  %r136 = load i32, i32* %r124
  %r137 = load i32, i32* %r121
  %r138 = icmp slt i32 %r136, %r137
  br i1 %r138, label %bb11, label %bb9

bb11:
  %r139 = load i32, i32* %r124
  %r140 = getelementptr i32, i32* %r117, i32 %r139
  %r141 = load i32, i32* %r140
  %r142 = load i32, i32* %r132
  %r143 = getelementptr i32, i32* %r117, i32 %r142
  %r144 = load i32, i32* %r143
  %r145 = icmp slt i32 %r141, %r144
  br i1 %r145, label %bb8, label %bb9

bb8:
  %r146 = load i32, i32* %r124
  %r147 = add i32 %r146, 1
  store i32 %r147, i32* %r124
  br label %bb10

bb9:
  br label %bb10

bb10:
  %r148 = load i32, i32* %r122
  %r149 = getelementptr i32, i32* %r117, i32 %r148
  %r150 = load i32, i32* %r149
  %r151 = load i32, i32* %r124
  %r152 = getelementptr i32, i32* %r117, i32 %r151
  %r153 = load i32, i32* %r152
  %r154 = icmp sgt i32 %r150, %r153
  br i1 %r154, label %bb12, label %bb13

bb12:
  ret i32 0
bb13:
  %r155 = load i32, i32* %r122
  %r156 = load i32, i32* %r124
  %r157 = call i32 @swap(i32* %r117, i32 %r155, i32 %r156)
  store i32 %r157, i32* %r122
  %r158 = load i32, i32* %r124
  store i32 %r158, i32* %r122
  %r159 = load i32, i32* %r122
  %r160 = mul i32 %r159, 2
  %r161 = add i32 %r160, 1
  store i32 %r161, i32* %r124
  br label %bb14

bb14:
  br label %bb5

bb7:
  ret i32 0
}

define i32 @heap_sort( i32* %r162, i32 %r163 ) {
bb16:
  %r184 = alloca i32
  %r166 = alloca i32
  %r165 = alloca i32
  %r164 = alloca i32
  store i32 %r163, i32* %r164
  br label %bb15

bb15:
  %r167 = load i32, i32* %r164
  %r168 = sdiv i32 %r167, 2
  %r169 = sub i32 %r168, 1
  store i32 %r169, i32* %r165
  br label %bb17

bb17:
  %r170 = load i32, i32* %r165
  %r171 = sub i32 0, 1
  %r172 = icmp sgt i32 %r170, %r171
  br i1 %r172, label %bb18, label %bb19

bb18:
  %r173 = load i32, i32* %r164
  %r174 = sub i32 %r173, 1
  store i32 %r174, i32* %r166
  %r175 = load i32, i32* %r165
  %r176 = load i32, i32* %r166
  %r177 = call i32 @heap_ajust(i32* %r162, i32 %r175, i32 %r176)
  store i32 %r177, i32* %r166
  %r178 = load i32, i32* %r165
  %r179 = sub i32 %r178, 1
  store i32 %r179, i32* %r165
  br label %bb17

bb19:
  %r180 = load i32, i32* %r164
  %r181 = sub i32 %r180, 1
  store i32 %r181, i32* %r165
  br label %bb20

bb20:
  %r182 = load i32, i32* %r165
  %r183 = icmp sgt i32 %r182, 0
  br i1 %r183, label %bb21, label %bb22

bb21:
  store i32 0, i32* %r184
  %r185 = load i32, i32* %r184
  %r186 = load i32, i32* %r165
  %r187 = call i32 @swap(i32* %r162, i32 %r185, i32 %r186)
  store i32 %r187, i32* %r166
  %r188 = load i32, i32* %r165
  %r189 = sub i32 %r188, 1
  store i32 %r189, i32* %r166
  %r190 = load i32, i32* %r184
  %r191 = load i32, i32* %r166
  %r192 = call i32 @heap_ajust(i32* %r162, i32 %r190, i32 %r191)
  store i32 %r192, i32* %r166
  %r193 = load i32, i32* %r165
  %r194 = sub i32 %r193, 1
  store i32 %r194, i32* %r165
  br label %bb20

bb22:
  ret i32 0
}

define i32 @main( ) {
bb23:
  %r212 = alloca i32
  call void @_sysy_starttime(i32 50)
  store i32 10, i32* @n
  %r195 = alloca [ 10 x i32 ]
  %r196 = getelementptr [10 x i32 ], [10 x i32 ]* %r195, i32 0, i32 0
  store i32 4, i32* %r196
  %r197 = getelementptr [10 x i32 ], [10 x i32 ]* %r195, i32 0, i32 1
  store i32 3, i32* %r197
  %r198 = getelementptr [10 x i32 ], [10 x i32 ]* %r195, i32 0, i32 2
  store i32 9, i32* %r198
  %r199 = getelementptr [10 x i32 ], [10 x i32 ]* %r195, i32 0, i32 3
  store i32 2, i32* %r199
  %r200 = getelementptr [10 x i32 ], [10 x i32 ]* %r195, i32 0, i32 4
  store i32 0, i32* %r200
  %r201 = getelementptr [10 x i32 ], [10 x i32 ]* %r195, i32 0, i32 5
  store i32 1, i32* %r201
  %r202 = getelementptr [10 x i32 ], [10 x i32 ]* %r195, i32 0, i32 6
  store i32 6, i32* %r202
  %r203 = getelementptr [10 x i32 ], [10 x i32 ]* %r195, i32 0, i32 7
  store i32 5, i32* %r203
  %r204 = getelementptr [10 x i32 ], [10 x i32 ]* %r195, i32 0, i32 8
  store i32 7, i32* %r204
  %r205 = getelementptr [10 x i32 ], [10 x i32 ]* %r195, i32 0, i32 9
  store i32 8, i32* %r205
  %r206 = alloca i32
  store i32 0, i32* %r206
  %r207 = load i32, i32* @n
  %r208 = call i32 @heap_sort(i32* %r195, i32 %r207)
  store i32 %r208, i32* %r206
  br label %bb24

bb24:
  %r209 = load i32, i32* %r206
  %r210 = load i32, i32* @n
  %r211 = icmp slt i32 %r209, %r210
  br i1 %r211, label %bb25, label %bb26

bb25:
  %r213 = load i32, i32* %r206
  %r214 = getelementptr [10 x i32 ], [10 x i32 ]* %r195, i32 0, i32 %r213
  %r215 = load i32, i32* %r214
  store i32 %r215, i32* %r212
  %r216 = load i32, i32* %r212
  %r217 = load i32, i32* %r212
  call void @putint(i32 %r217)
  store i32 10, i32* %r212
  %r218 = load i32, i32* %r212
  %r219 = load i32, i32* %r212
  call void @putch(i32 %r219)
  %r220 = load i32, i32* %r206
  %r221 = add i32 %r220, 1
  store i32 %r221, i32* %r206
  br label %bb24

bb26:
  call void @_sysy_stoptime(i32 66)
  ret i32 0
}

