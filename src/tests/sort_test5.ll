declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
@n = global i32 0
define i32 @swap( i32* %r100, i32 %r101, i32 %r102 ) {
bb1:
  %r103 = alloca i32
  %r104 = load i32, i32* %r101
  %r105 = getelementptr i32, i32* %r100, i32 %r104
  %r106 = load i32, i32* %r105
  store i32 %r106, i32* %r103
  %r107 = load i32, i32* %r102
  %r108 = getelementptr i32, i32* %r100, i32 %r107
  %r109 = load i32, i32* %r108
  %r110 = load i32, i32* %r101
  %r111 = getelementptr i32, i32* %r100, i32 %r110
  store i32 %r109, i32* %r111
  %r112 = load i32, i32* %r103
  %r113 = load i32, i32* %r102
  %r114 = getelementptr i32, i32* %r100, i32 %r113
  store i32 %r112, i32* %r114
  ret i32 0
}

define i32 @heap_ajust( i32* %r115, i32 %r116, i32 %r117 ) {
bb2:
  %r129 = alloca i32
  %r126 = alloca i32
  %r118 = alloca i32
  store i32 %r116, i32* %r118
  %r119 = alloca i32
  %r120 = load i32, i32* %r118
  %r121 = mul i32 %r120, 2
  %r122 = add i32 %r121, 1
  store i32 %r122, i32* %r119
  br label %bb3

bb3:
  %r123 = load i32, i32* %r119
  %r124 = add i32 %r117, 1
  %r125 = icmp slt i32 %r123, %r124
  br i1 %r125, label %bb4, label %bb5

bb4:
  %r127 = load i32, i32* %r119
  %r128 = add i32 %r127, 1
  store i32 %r128, i32* %r126
  %r130 = load i32, i32* %r119
  %r131 = icmp slt i32 %r130, %r117
  br i1 %r131, label %bb9, label %bb7

bb9:
  %r132 = load i32, i32* %r119
  %r133 = getelementptr i32, i32* %r115, i32 %r132
  %r134 = load i32, i32* %r133
  %r135 = load i32, i32* %r126
  %r136 = getelementptr i32, i32* %r115, i32 %r135
  %r137 = load i32, i32* %r136
  %r138 = icmp slt i32 %r134, %r137
  br i1 %r138, label %bb6, label %bb7

bb6:
  %r139 = load i32, i32* %r119
  %r140 = add i32 %r139, 1
  store i32 %r140, i32* %r119
  br label %bb8

bb8:
  %r141 = load i32, i32* %r118
  %r142 = getelementptr i32, i32* %r115, i32 %r141
  %r143 = load i32, i32* %r142
  %r144 = load i32, i32* %r119
  %r145 = getelementptr i32, i32* %r115, i32 %r144
  %r146 = load i32, i32* %r145
  %r147 = icmp sgt i32 %r143, %r146
  br i1 %r147, label %bb10, label %bb11

bb10:
  ret i32 0
  br label %bb12

bb11:
  %r148 = load i32, i32* %r118
  %r149 = load i32, i32* %r119
  %r150 = call i32 @swap(i32* %r115, i32 %r148, i32 %r149)
  store i32 %r150, i32* %r118
  %r151 = load i32, i32* %r119
  store i32 %r151, i32* %r118
  %r152 = load i32, i32* %r118
  %r153 = mul i32 %r152, 2
  %r154 = add i32 %r153, 1
  store i32 %r154, i32* %r119
  br label %bb12

bb12:
  br label %bb3

bb5:
  ret i32 0
}

define i32 @heap_sort( i32* %r155, i32 %r156 ) {
bb13:
  %r173 = alloca i32
  %r157 = alloca i32
  %r158 = alloca i32
  %r159 = sdiv i32 %r156, 2
  %r160 = sub i32 %r159, 1
  store i32 %r160, i32* %r157
  br label %bb14

bb14:
  %r161 = load i32, i32* %r157
  %r162 = sub i32 0, 1
  %r163 = icmp sgt i32 %r161, %r162
  br i1 %r163, label %bb15, label %bb16

bb15:
  %r164 = sub i32 %r156, 1
  store i32 %r164, i32* %r158
  %r165 = load i32, i32* %r157
  %r166 = load i32, i32* %r158
  %r167 = call i32 @heap_ajust(i32* %r155, i32 %r165, i32 %r166)
  store i32 %r167, i32* %r158
  %r168 = load i32, i32* %r157
  %r169 = sub i32 %r168, 1
  store i32 %r169, i32* %r157
  br label %bb14

bb16:
  %r170 = sub i32 %r156, 1
  store i32 %r170, i32* %r157
  br label %bb17

bb17:
  %r171 = load i32, i32* %r157
  %r172 = icmp sgt i32 %r171, 0
  br i1 %r172, label %bb18, label %bb19

bb18:
  store i32 0, i32* %r173
  %r174 = load i32, i32* %r173
  %r175 = load i32, i32* %r157
  %r176 = call i32 @swap(i32* %r155, i32 %r174, i32 %r175)
  store i32 %r176, i32* %r158
  %r177 = load i32, i32* %r157
  %r178 = sub i32 %r177, 1
  store i32 %r178, i32* %r158
  %r179 = load i32, i32* %r173
  %r180 = load i32, i32* %r158
  %r181 = call i32 @heap_ajust(i32* %r155, i32 %r179, i32 %r180)
  store i32 %r181, i32* %r158
  %r182 = load i32, i32* %r157
  %r183 = sub i32 %r182, 1
  store i32 %r183, i32* %r157
  br label %bb17

bb19:
  ret i32 0
}

define i32 @main( ) {
bb20:
  %r201 = alloca i32
  store i32 10, i32* @n
  %r184 = alloca [ 10 x i32 ]
  %r185 = getelementptr [10 x i32 ], [10 x i32 ]* %r184, i32 0, i32 0
  store i32 4, i32* %r185
  %r186 = getelementptr [10 x i32 ], [10 x i32 ]* %r184, i32 0, i32 1
  store i32 3, i32* %r186
  %r187 = getelementptr [10 x i32 ], [10 x i32 ]* %r184, i32 0, i32 2
  store i32 9, i32* %r187
  %r188 = getelementptr [10 x i32 ], [10 x i32 ]* %r184, i32 0, i32 3
  store i32 2, i32* %r188
  %r189 = getelementptr [10 x i32 ], [10 x i32 ]* %r184, i32 0, i32 4
  store i32 0, i32* %r189
  %r190 = getelementptr [10 x i32 ], [10 x i32 ]* %r184, i32 0, i32 5
  store i32 1, i32* %r190
  %r191 = getelementptr [10 x i32 ], [10 x i32 ]* %r184, i32 0, i32 6
  store i32 6, i32* %r191
  %r192 = getelementptr [10 x i32 ], [10 x i32 ]* %r184, i32 0, i32 7
  store i32 5, i32* %r192
  %r193 = getelementptr [10 x i32 ], [10 x i32 ]* %r184, i32 0, i32 8
  store i32 7, i32* %r193
  %r194 = getelementptr [10 x i32 ], [10 x i32 ]* %r184, i32 0, i32 9
  store i32 8, i32* %r194
  %r195 = alloca i32
  store i32 0, i32* %r195
  %r196 = load i32, i32* @n
  %r197 = call i32 @heap_sort(i32* %r184, i32 %r196)
  store i32 %r197, i32* %r195
  br label %bb21

bb21:
  %r198 = load i32, i32* %r195
  %r199 = load i32, i32* @n
  %r200 = icmp slt i32 %r198, %r199
  br i1 %r200, label %bb22, label %bb23

bb22:
  %r202 = load i32, i32* %r195
  %r203 = getelementptr [10 x i32 ], [10 x i32 ]* %r184, i32 0, i32 %r202
  %r204 = load i32, i32* %r203
  store i32 %r204, i32* %r201
  %r205 = load i32, i32* %r201
  call void @putint(i32 %r205)
  store i32 10, i32* %r201
  %r206 = load i32, i32* %r201
  call void @putch(i32 %r206)
  %r207 = load i32, i32* %r195
  %r208 = add i32 %r207, 1
  store i32 %r208, i32* %r195
  br label %bb21

bb23:
  ret i32 0
}

