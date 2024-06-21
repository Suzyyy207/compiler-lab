declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
define i32 @func1( i32 %r100, i32 %r102, i32 %r104 ) {
bb2:
  %r101 = alloca i32
  store i32 %r100, i32* %r101
  %r103 = alloca i32
  store i32 %r102, i32* %r103
  %r105 = alloca i32
  store i32 %r104, i32* %r105
  br label %bb1

bb1:
  %r106 = load i32, i32* %r105
  %r107 = icmp eq i32 %r106, 0
  br i1 %r107, label %bb3, label %bb4

bb3:
  %r108 = load i32, i32* %r101
  %r109 = load i32, i32* %r103
  %r110 = mul i32 %r108, %r109
  ret i32 %r110
bb4:
  %r111 = load i32, i32* %r101
  %r112 = load i32, i32* %r103
  %r113 = load i32, i32* %r105
  %r114 = sub i32 %r112, %r113
  %r115 = call i32 @func1(i32 %r111, i32 %r114, i32 0)
  ret i32 %r115
bb5:
  ret i32 0
}

define i32 @func2( i32 %r116, i32 %r118 ) {
bb7:
  %r117 = alloca i32
  store i32 %r116, i32* %r117
  %r119 = alloca i32
  store i32 %r118, i32* %r119
  br label %bb6

bb6:
  %r120 = load i32, i32* %r119
  %r121 = icmp ne i32 %r120, 0
  br i1 %r121, label %bb8, label %bb9

bb8:
  %r122 = load i32, i32* %r117
  %r123 = load i32, i32* %r117
  %r124 = load i32, i32* %r119
  %r125 = sdiv i32 %r123, %r124
  %r126 = load i32, i32* %r119
  %r127 = mul i32 %r125, %r126
  %r128 = sub i32 %r122, %r127
  %r129 = call i32 @func2(i32 %r128, i32 0)
  ret i32 %r129
bb9:
  %r130 = load i32, i32* %r117
  ret i32 %r130
bb10:
  ret i32 0
}

define i32 @func3( i32 %r131, i32 %r133 ) {
bb12:
  %r132 = alloca i32
  store i32 %r131, i32* %r132
  %r134 = alloca i32
  store i32 %r133, i32* %r134
  br label %bb11

bb11:
  %r135 = load i32, i32* %r134
  %r136 = icmp eq i32 %r135, 0
  br i1 %r136, label %bb13, label %bb14

bb13:
  %r137 = load i32, i32* %r132
  %r138 = add i32 %r137, 1
  ret i32 %r138
bb14:
  %r139 = load i32, i32* %r132
  %r140 = load i32, i32* %r134
  %r141 = add i32 %r139, %r140
  %r142 = call i32 @func3(i32 %r141, i32 0)
  ret i32 %r142
bb15:
  ret i32 0
}

define i32 @func4( i32 %r143, i32 %r145, i32 %r147 ) {
bb17:
  %r144 = alloca i32
  store i32 %r143, i32* %r144
  %r146 = alloca i32
  store i32 %r145, i32* %r146
  %r148 = alloca i32
  store i32 %r147, i32* %r148
  br label %bb16

bb16:
  %r149 = load i32, i32* %r144
  %r150 = icmp ne i32 %r149, 0
  br i1 %r150, label %bb18, label %bb19

bb18:
  %r151 = load i32, i32* %r146
  ret i32 %r151
bb19:
  %r152 = load i32, i32* %r148
  ret i32 %r152
bb20:
  ret i32 0
}

define i32 @func5( i32 %r153 ) {
bb22:
  %r154 = alloca i32
  store i32 %r153, i32* %r154
  br label %bb21

bb21:
  %r155 = load i32, i32* %r154
  %r156 = sub i32 0, %r155
  ret i32 %r156
}

define i32 @func6( i32 %r157, i32 %r159 ) {
bb24:
  %r158 = alloca i32
  store i32 %r157, i32* %r158
  %r160 = alloca i32
  store i32 %r159, i32* %r160
  br label %bb23

bb23:
  %r162 = load i32, i32* %r158
  %r163 = icmp ne i32 %r162, 0
  br i1 %r163, label %bb28, label %bb26

bb28:
  %r164 = load i32, i32* %r160
  %r165 = icmp ne i32 %r164, 0
  br i1 %r165, label %bb25, label %bb26

bb25:
  ret i32 1
bb26:
  ret i32 0
bb27:
  ret i32 0
}

define i32 @func7( i32 %r166 ) {
bb30:
  %r167 = alloca i32
  store i32 %r166, i32* %r167
  br label %bb29

bb29:
  %r168 = load i32, i32* %r167
  %r169 = icmp ne i32 %r168, 0
  br i1 %r169, label %bb31, label %bb32

bb31:
  ret i32 1
bb32:
  ret i32 0
bb33:
  ret i32 0
}

define i32 @main( ) {
bb34:
  %r187 = alloca i32
  call void @_sysy_starttime(i32 97)
  %r171 = call i32 @getint()
  %r170 = alloca i32
  store i32 %r171, i32* %r170
  %r173 = call i32 @getint()
  %r172 = alloca i32
  store i32 %r173, i32* %r172
  %r175 = call i32 @getint()
  %r174 = alloca i32
  store i32 %r175, i32* %r174
  %r177 = call i32 @getint()
  %r176 = alloca i32
  store i32 %r177, i32* %r176
  %r178 = alloca [ 10 x i32 ]
  %r179 = alloca i32
  store i32 0, i32* %r179
  br label %bb35

bb35:
  %r180 = load i32, i32* %r179
  %r181 = icmp slt i32 %r180, 10
  br i1 %r181, label %bb36, label %bb37

bb36:
  %r182 = call i32 @getint()
  %r183 = load i32, i32* %r179
  %r184 = getelementptr [10 x i32 ], [10 x i32 ]* %r178, i32 0, i32 %r183
  store i32 %r182, i32* %r184
  %r185 = load i32, i32* %r179
  %r186 = add i32 %r185, 1
  store i32 %r186, i32* %r179
  br label %bb35

bb37:
  %r188 = load i32, i32* %r170
  %r189 = call i32 @func7(i32 %r188)
  %r190 = load i32, i32* %r172
  %r191 = call i32 @func5(i32 %r190)
  %r192 = call i32 @func6(i32 %r189, i32 %r191)
  %r193 = load i32, i32* %r174
  %r194 = call i32 @func2(i32 %r192, i32 %r193)
  %r195 = load i32, i32* %r176
  %r196 = call i32 @func3(i32 %r194, i32 %r195)
  %r197 = call i32 @func5(i32 %r196)
  %r198 = getelementptr [10 x i32 ], [10 x i32 ]* %r178, i32 0, i32 0
  %r199 = load i32, i32* %r198
  %r200 = getelementptr [10 x i32 ], [10 x i32 ]* %r178, i32 0, i32 1
  %r201 = load i32, i32* %r200
  %r202 = call i32 @func5(i32 %r201)
  %r203 = getelementptr [10 x i32 ], [10 x i32 ]* %r178, i32 0, i32 2
  %r204 = load i32, i32* %r203
  %r205 = getelementptr [10 x i32 ], [10 x i32 ]* %r178, i32 0, i32 3
  %r206 = load i32, i32* %r205
  %r207 = call i32 @func7(i32 %r206)
  %r208 = call i32 @func6(i32 %r204, i32 %r207)
  %r209 = getelementptr [10 x i32 ], [10 x i32 ]* %r178, i32 0, i32 4
  %r210 = load i32, i32* %r209
  %r211 = getelementptr [10 x i32 ], [10 x i32 ]* %r178, i32 0, i32 5
  %r212 = load i32, i32* %r211
  %r213 = call i32 @func7(i32 %r212)
  %r214 = call i32 @func2(i32 %r210, i32 %r213)
  %r215 = call i32 @func4(i32 %r202, i32 %r208, i32 %r214)
  %r216 = getelementptr [10 x i32 ], [10 x i32 ]* %r178, i32 0, i32 6
  %r217 = load i32, i32* %r216
  %r218 = call i32 @func3(i32 %r215, i32 %r217)
  %r219 = getelementptr [10 x i32 ], [10 x i32 ]* %r178, i32 0, i32 7
  %r220 = load i32, i32* %r219
  %r221 = call i32 @func2(i32 %r218, i32 %r220)
  %r222 = getelementptr [10 x i32 ], [10 x i32 ]* %r178, i32 0, i32 8
  %r223 = load i32, i32* %r222
  %r224 = getelementptr [10 x i32 ], [10 x i32 ]* %r178, i32 0, i32 9
  %r225 = load i32, i32* %r224
  %r226 = call i32 @func7(i32 %r225)
  %r227 = call i32 @func3(i32 %r223, i32 %r226)
  %r228 = load i32, i32* %r170
  %r229 = call i32 @func1(i32 %r221, i32 %r227, i32 %r228)
  %r230 = call i32 @func4(i32 %r197, i32 %r199, i32 %r229)
  %r231 = load i32, i32* %r172
  %r232 = load i32, i32* %r174
  %r233 = call i32 @func7(i32 %r232)
  %r234 = load i32, i32* %r176
  %r235 = call i32 @func3(i32 %r233, i32 %r234)
  %r236 = call i32 @func2(i32 %r231, i32 %r235)
  %r237 = call i32 @func3(i32 %r230, i32 %r236)
  %r238 = getelementptr [10 x i32 ], [10 x i32 ]* %r178, i32 0, i32 0
  %r239 = load i32, i32* %r238
  %r240 = getelementptr [10 x i32 ], [10 x i32 ]* %r178, i32 0, i32 1
  %r241 = load i32, i32* %r240
  %r242 = call i32 @func1(i32 %r237, i32 %r239, i32 %r241)
  %r243 = getelementptr [10 x i32 ], [10 x i32 ]* %r178, i32 0, i32 2
  %r244 = load i32, i32* %r243
  %r245 = call i32 @func2(i32 %r242, i32 %r244)
  %r246 = getelementptr [10 x i32 ], [10 x i32 ]* %r178, i32 0, i32 3
  %r247 = load i32, i32* %r246
  %r248 = getelementptr [10 x i32 ], [10 x i32 ]* %r178, i32 0, i32 4
  %r249 = load i32, i32* %r248
  %r250 = getelementptr [10 x i32 ], [10 x i32 ]* %r178, i32 0, i32 5
  %r251 = load i32, i32* %r250
  %r252 = call i32 @func5(i32 %r251)
  %r253 = call i32 @func3(i32 %r249, i32 %r252)
  %r254 = getelementptr [10 x i32 ], [10 x i32 ]* %r178, i32 0, i32 6
  %r255 = load i32, i32* %r254
  %r256 = call i32 @func5(i32 %r255)
  %r257 = call i32 @func2(i32 %r253, i32 %r256)
  %r258 = getelementptr [10 x i32 ], [10 x i32 ]* %r178, i32 0, i32 7
  %r259 = load i32, i32* %r258
  %r260 = getelementptr [10 x i32 ], [10 x i32 ]* %r178, i32 0, i32 8
  %r261 = load i32, i32* %r260
  %r262 = call i32 @func7(i32 %r261)
  %r263 = call i32 @func1(i32 %r257, i32 %r259, i32 %r262)
  %r264 = getelementptr [10 x i32 ], [10 x i32 ]* %r178, i32 0, i32 9
  %r265 = load i32, i32* %r264
  %r266 = call i32 @func5(i32 %r265)
  %r267 = call i32 @func2(i32 %r263, i32 %r266)
  %r268 = load i32, i32* %r170
  %r269 = call i32 @func3(i32 %r267, i32 %r268)
  %r270 = call i32 @func1(i32 %r245, i32 %r247, i32 %r269)
  store i32 %r270, i32* %r187
  call void @_sysy_stoptime(i32 117)
  %r271 = load i32, i32* %r187
  ret i32 %r271
}

