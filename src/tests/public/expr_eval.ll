declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
@TOKEN_NUM = global i32 0
@TOKEN_OTHER = global i32 1
@last_char = global i32 32
@num = global i32 0
@other = global i32 0
@cur_token = global i32 0
define i32 @next_char( ) {
bb1:
  %r100 = call i32 @getch()
  store i32 %r100, i32* @last_char
  %r101 = load i32, i32* @last_char
  ret i32 %r101
}

define i32 @is_space( i32 %r102 ) {
bb3:
  %r103 = alloca i32
  store i32 %r102, i32* %r103
  br label %bb2

bb2:
  %r105 = load i32, i32* %r103
  %r106 = icmp eq i32 %r105, 32
  br i1 %r106, label %bb4, label %bb7

bb7:
  %r107 = load i32, i32* %r103
  %r108 = icmp eq i32 %r107, 10
  br i1 %r108, label %bb4, label %bb5

bb4:
  ret i32 1
bb5:
  ret i32 0
bb6:
  ret i32 0
}

define i32 @is_num( i32 %r109 ) {
bb9:
  %r110 = alloca i32
  store i32 %r109, i32* %r110
  br label %bb8

bb8:
  %r112 = load i32, i32* %r110
  %r113 = icmp sge i32 %r112, 48
  br i1 %r113, label %bb13, label %bb11

bb13:
  %r114 = load i32, i32* %r110
  %r115 = icmp sle i32 %r114, 57
  br i1 %r115, label %bb10, label %bb11

bb10:
  ret i32 1
bb11:
  ret i32 0
bb12:
  ret i32 0
}

define i32 @next_token( ) {
bb14:
  br label %bb15

bb15:
  %r116 = load i32, i32* @last_char
  %r117 = call i32 @is_space(i32 %r116)
  %r118 = icmp ne i32 %r117, 0
  br i1 %r118, label %bb16, label %bb17

bb16:
  %r119 = call i32 @next_char()
  br label %bb15

bb17:
  %r120 = load i32, i32* @last_char
  %r121 = call i32 @is_num(i32 %r120)
  %r122 = icmp ne i32 %r121, 0
  br i1 %r122, label %bb18, label %bb19

bb18:
  %r123 = load i32, i32* @last_char
  %r124 = sub i32 %r123, 48
  store i32 %r124, i32* @num
  br label %bb21

bb21:
  %r125 = call i32 @next_char()
  %r126 = call i32 @is_num(i32 %r125)
  %r127 = icmp ne i32 %r126, 0
  br i1 %r127, label %bb22, label %bb23

bb22:
  %r128 = load i32, i32* @num
  %r129 = mul i32 %r128, 10
  %r130 = load i32, i32* @last_char
  %r131 = add i32 %r129, %r130
  %r132 = sub i32 %r131, 48
  store i32 %r132, i32* @num
  br label %bb21

bb23:
  %r133 = load i32, i32* @TOKEN_NUM
  store i32 %r133, i32* @cur_token
  br label %bb20

bb19:
  %r134 = load i32, i32* @last_char
  store i32 %r134, i32* @other
  %r135 = call i32 @next_char()
  %r136 = load i32, i32* @TOKEN_OTHER
  store i32 %r136, i32* @cur_token
  br label %bb20

bb20:
  %r137 = load i32, i32* @cur_token
  ret i32 %r137
}

define i32 @panic( ) {
bb24:
  call void @putch(i32 112)
  call void @putch(i32 97)
  call void @putch(i32 110)
  call void @putch(i32 105)
  call void @putch(i32 99)
  call void @putch(i32 33)
  call void @putch(i32 10)
  %r138 = sub i32 0, 1
  ret i32 %r138
}

define i32 @get_op_prec( i32 %r139 ) {
bb26:
  %r140 = alloca i32
  store i32 %r139, i32* %r140
  br label %bb25

bb25:
  %r142 = load i32, i32* %r140
  %r143 = icmp eq i32 %r142, 43
  br i1 %r143, label %bb27, label %bb30

bb30:
  %r144 = load i32, i32* %r140
  %r145 = icmp eq i32 %r144, 45
  br i1 %r145, label %bb27, label %bb28

bb27:
  ret i32 10
bb28:
  br label %bb29

bb29:
  %r148 = load i32, i32* %r140
  %r149 = icmp eq i32 %r148, 42
  br i1 %r149, label %bb31, label %bb35

bb35:
  %r150 = load i32, i32* %r140
  %r151 = icmp eq i32 %r150, 47
  br i1 %r151, label %bb31, label %bb34

bb34:
  %r152 = load i32, i32* %r140
  %r153 = icmp eq i32 %r152, 37
  br i1 %r153, label %bb31, label %bb32

bb31:
  ret i32 20
bb32:
  br label %bb33

bb33:
  ret i32 0
}

define void @stack_push( i32* %r154, i32 %r155 ) {
bb37:
  %r161 = alloca i32
  %r156 = alloca i32
  store i32 %r155, i32* %r156
  br label %bb36

bb36:
  %r157 = getelementptr i32, i32* %r154, i32 0
  %r158 = load i32, i32* %r157
  %r159 = add i32 %r158, 1
  %r160 = getelementptr i32, i32* %r154, i32 0
  store i32 %r159, i32* %r160
  %r162 = getelementptr i32, i32* %r154, i32 0
  %r163 = load i32, i32* %r162
  store i32 %r163, i32* %r161
  %r164 = load i32, i32* %r156
  %r165 = load i32, i32* %r161
  %r166 = getelementptr i32, i32* %r154, i32 %r165
  store i32 %r164, i32* %r166
  ret void
}

define i32 @stack_pop( i32* %r167 ) {
bb38:
  %r169 = getelementptr i32, i32* %r167, i32 0
  %r170 = load i32, i32* %r169
  %r168 = alloca i32
  store i32 %r170, i32* %r168
  %r172 = load i32, i32* %r168
  %r173 = getelementptr i32, i32* %r167, i32 %r172
  %r174 = load i32, i32* %r173
  %r171 = alloca i32
  store i32 %r174, i32* %r171
  %r175 = getelementptr i32, i32* %r167, i32 0
  %r176 = load i32, i32* %r175
  %r177 = sub i32 %r176, 1
  %r178 = getelementptr i32, i32* %r167, i32 0
  store i32 %r177, i32* %r178
  %r179 = load i32, i32* %r171
  ret i32 %r179
}

define i32 @stack_peek( i32* %r180 ) {
bb39:
  %r182 = getelementptr i32, i32* %r180, i32 0
  %r183 = load i32, i32* %r182
  %r181 = alloca i32
  store i32 %r183, i32* %r181
  %r184 = load i32, i32* %r181
  %r185 = getelementptr i32, i32* %r180, i32 %r184
  %r186 = load i32, i32* %r185
  ret i32 %r186
}

define i32 @stack_size( i32* %r187 ) {
bb40:
  %r188 = getelementptr i32, i32* %r187, i32 0
  %r189 = load i32, i32* %r188
  ret i32 %r189
}

define i32 @mod( i32 %r190, i32 %r192 ) {
bb42:
  %r191 = alloca i32
  store i32 %r190, i32* %r191
  %r193 = alloca i32
  store i32 %r192, i32* %r193
  br label %bb41

bb41:
  %r194 = load i32, i32* %r191
  %r195 = load i32, i32* %r191
  %r196 = load i32, i32* %r193
  %r197 = sdiv i32 %r195, %r196
  %r198 = load i32, i32* %r193
  %r199 = mul i32 %r197, %r198
  %r200 = sub i32 %r194, %r199
  ret i32 %r200
}

define i32 @eval_op( i32 %r201, i32 %r203, i32 %r205 ) {
bb44:
  %r202 = alloca i32
  store i32 %r201, i32* %r202
  %r204 = alloca i32
  store i32 %r203, i32* %r204
  %r206 = alloca i32
  store i32 %r205, i32* %r206
  br label %bb43

bb43:
  %r207 = load i32, i32* %r202
  %r208 = icmp eq i32 %r207, 43
  br i1 %r208, label %bb45, label %bb46

bb45:
  %r209 = load i32, i32* %r204
  %r210 = load i32, i32* %r206
  %r211 = add i32 %r209, %r210
  ret i32 %r211
bb46:
  br label %bb47

bb47:
  %r212 = load i32, i32* %r202
  %r213 = icmp eq i32 %r212, 45
  br i1 %r213, label %bb48, label %bb49

bb48:
  %r214 = load i32, i32* %r204
  %r215 = load i32, i32* %r206
  %r216 = sub i32 %r214, %r215
  ret i32 %r216
bb49:
  br label %bb50

bb50:
  %r217 = load i32, i32* %r202
  %r218 = icmp eq i32 %r217, 42
  br i1 %r218, label %bb51, label %bb52

bb51:
  %r219 = load i32, i32* %r204
  %r220 = load i32, i32* %r206
  %r221 = mul i32 %r219, %r220
  ret i32 %r221
bb52:
  br label %bb53

bb53:
  %r222 = load i32, i32* %r202
  %r223 = icmp eq i32 %r222, 47
  br i1 %r223, label %bb54, label %bb55

bb54:
  %r224 = load i32, i32* %r204
  %r225 = load i32, i32* %r206
  %r226 = sdiv i32 %r224, %r225
  ret i32 %r226
bb55:
  br label %bb56

bb56:
  %r227 = load i32, i32* %r202
  %r228 = icmp eq i32 %r227, 37
  br i1 %r228, label %bb57, label %bb58

bb57:
  %r229 = load i32, i32* %r204
  %r230 = load i32, i32* %r206
  %r231 = call i32 @mod(i32 %r229, i32 %r230)
  ret i32 %r231
bb58:
  br label %bb59

bb59:
  ret i32 0
}

define i32 @eval( ) {
bb60:
  %r295 = alloca i32
  %r293 = alloca i32
  %r291 = alloca i32
  %r271 = alloca i32
  %r269 = alloca i32
  %r267 = alloca i32
  %r253 = alloca i32
  %r232 = alloca [ 256 x i32 ]
  %r233 = alloca [ 256 x i32 ]
  %r234 = alloca i32
  store i32 0, i32* %r234
  br label %bb61

bb61:
  %r235 = load i32, i32* %r234
  %r236 = icmp slt i32 %r235, 256
  br i1 %r236, label %bb62, label %bb63

bb62:
  %r237 = load i32, i32* %r234
  %r238 = getelementptr [256 x i32 ], [256 x i32 ]* %r232, i32 0, i32 %r237
  store i32 0, i32* %r238
  %r239 = load i32, i32* %r234
  %r240 = getelementptr [256 x i32 ], [256 x i32 ]* %r233, i32 0, i32 %r239
  store i32 0, i32* %r240
  %r241 = load i32, i32* %r234
  %r242 = add i32 %r241, 1
  store i32 %r242, i32* %r234
  br label %bb61

bb63:
  %r243 = load i32, i32* @cur_token
  %r244 = load i32, i32* @TOKEN_NUM
  %r245 = icmp ne i32 %r243, %r244
  br i1 %r245, label %bb64, label %bb65

bb64:
  %r246 = call i32 @panic()
  ret i32 %r246
bb65:
  br label %bb66

bb66:
  %r247 = getelementptr [256 x i32 ], [256 x i32 ]* %r232, i32 0, i32 0
  %r248 = load i32, i32* @num
  call void @stack_push(i32* %r247, i32 %r248)
  %r249 = call i32 @next_token()
  br label %bb67

bb67:
  %r250 = load i32, i32* @cur_token
  %r251 = load i32, i32* @TOKEN_OTHER
  %r252 = icmp eq i32 %r250, %r251
  br i1 %r252, label %bb68, label %bb69

bb68:
  %r254 = load i32, i32* @other
  store i32 %r254, i32* %r253
  %r255 = load i32, i32* %r253
  %r256 = call i32 @get_op_prec(i32 %r255)
  %r257 = icmp eq i32 %r256, 0
  br i1 %r257, label %bb70, label %bb71

bb70:
  br label %bb69

bb71:
  br label %bb72

bb72:
  %r258 = call i32 @next_token()
  br label %bb73

bb73:
  %r260 = call i32 @stack_size(i32* %r233)
  %r261 = icmp ne i32 %r260, 0
  br i1 %r261, label %bb76, label %bb75

bb76:
  %r262 = call i32 @stack_peek(i32* %r233)
  %r263 = call i32 @get_op_prec(i32 %r262)
  %r264 = load i32, i32* %r253
  %r265 = call i32 @get_op_prec(i32 %r264)
  %r266 = icmp sge i32 %r263, %r265
  br i1 %r266, label %bb74, label %bb75

bb74:
  %r268 = call i32 @stack_pop(i32* %r233)
  store i32 %r268, i32* %r267
  %r270 = call i32 @stack_pop(i32* %r232)
  store i32 %r270, i32* %r269
  %r272 = call i32 @stack_pop(i32* %r232)
  store i32 %r272, i32* %r271
  %r273 = getelementptr [256 x i32 ], [256 x i32 ]* %r232, i32 0, i32 0
  %r274 = load i32, i32* %r267
  %r275 = load i32, i32* %r271
  %r276 = load i32, i32* %r269
  %r277 = call i32 @eval_op(i32 %r274, i32 %r275, i32 %r276)
  call void @stack_push(i32* %r273, i32 %r277)
  br label %bb73

bb75:
  %r278 = getelementptr [256 x i32 ], [256 x i32 ]* %r233, i32 0, i32 0
  %r279 = load i32, i32* %r253
  %r280 = load i32, i32* %r253
  call void @stack_push(i32* %r278, i32 %r280)
  %r281 = load i32, i32* @cur_token
  %r282 = load i32, i32* @TOKEN_NUM
  %r283 = icmp ne i32 %r281, %r282
  br i1 %r283, label %bb77, label %bb78

bb77:
  %r284 = call i32 @panic()
  ret i32 %r284
bb78:
  br label %bb79

bb79:
  %r285 = getelementptr [256 x i32 ], [256 x i32 ]* %r232, i32 0, i32 0
  %r286 = load i32, i32* @num
  call void @stack_push(i32* %r285, i32 %r286)
  %r287 = call i32 @next_token()
  br label %bb67

bb69:
  %r288 = call i32 @next_token()
  br label %bb80

bb80:
  %r289 = call i32 @stack_size(i32* %r233)
  %r290 = icmp ne i32 %r289, 0
  br i1 %r290, label %bb81, label %bb82

bb81:
  %r292 = call i32 @stack_pop(i32* %r233)
  store i32 %r292, i32* %r291
  %r294 = call i32 @stack_pop(i32* %r232)
  store i32 %r294, i32* %r293
  %r296 = call i32 @stack_pop(i32* %r232)
  store i32 %r296, i32* %r295
  %r297 = getelementptr [256 x i32 ], [256 x i32 ]* %r232, i32 0, i32 0
  %r298 = load i32, i32* %r291
  %r299 = load i32, i32* %r295
  %r300 = load i32, i32* %r293
  %r301 = call i32 @eval_op(i32 %r298, i32 %r299, i32 %r300)
  call void @stack_push(i32* %r297, i32 %r301)
  br label %bb80

bb82:
  %r302 = call i32 @stack_peek(i32* %r232)
  ret i32 %r302
}

define i32 @main( ) {
bb83:
  call void @_sysy_starttime(i32 205)
  %r304 = call i32 @getint()
  %r303 = alloca i32
  store i32 %r304, i32* %r303
  %r305 = call i32 @getch()
  %r306 = call i32 @next_token()
  br label %bb84

bb84:
  %r307 = load i32, i32* %r303
  %r308 = icmp ne i32 %r307, 0
  br i1 %r308, label %bb85, label %bb86

bb85:
  %r309 = call i32 @eval()
  call void @putint(i32 %r309)
  call void @putch(i32 10)
  %r310 = load i32, i32* %r303
  %r311 = sub i32 %r310, 1
  store i32 %r311, i32* %r303
  br label %bb84

bb86:
  call void @_sysy_stoptime(i32 214)
  ret i32 0
}

