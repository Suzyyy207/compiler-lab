declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
@M = global i32 0
@L = global i32 0
@N = global i32 0
define i32 @mul( i32* %r100, i32* %r101, i32* %r102, i32* %r103, i32* %r104, i32* %r105, i32* %r106, i32* %r107, i32* %r108 ) {
bb1:
  %r344 = add i32 0, 0
  %r345 = add i32 0, 0
  %r110 = getelementptr i32, i32* %r100, i32 0
  %r111 = load i32, i32* %r110
  %r112 = getelementptr i32, i32* %r103, i32 0
  %r113 = load i32, i32* %r112
  %r346 = mul i32 %r111, %r113
  %r115 = getelementptr i32, i32* %r100, i32 1
  %r116 = load i32, i32* %r115
  %r117 = getelementptr i32, i32* %r104, i32 0
  %r118 = load i32, i32* %r117
  %r347 = mul i32 %r116, %r118
  %r348 = add i32 %r346, %r347
  %r121 = getelementptr i32, i32* %r100, i32 2
  %r122 = load i32, i32* %r121
  %r123 = getelementptr i32, i32* %r105, i32 0
  %r124 = load i32, i32* %r123
  %r349 = mul i32 %r122, %r124
  %r350 = add i32 %r348, %r349
  %r127 = getelementptr i32, i32* %r106, i32 0
  store i32 %r350, i32* %r127
  %r128 = getelementptr i32, i32* %r100, i32 0
  %r129 = load i32, i32* %r128
  %r130 = getelementptr i32, i32* %r103, i32 1
  %r131 = load i32, i32* %r130
  %r351 = mul i32 %r129, %r131
  %r133 = getelementptr i32, i32* %r100, i32 1
  %r134 = load i32, i32* %r133
  %r135 = getelementptr i32, i32* %r104, i32 1
  %r136 = load i32, i32* %r135
  %r352 = mul i32 %r134, %r136
  %r353 = add i32 %r351, %r352
  %r139 = getelementptr i32, i32* %r100, i32 2
  %r140 = load i32, i32* %r139
  %r141 = getelementptr i32, i32* %r105, i32 1
  %r142 = load i32, i32* %r141
  %r354 = mul i32 %r140, %r142
  %r355 = add i32 %r353, %r354
  %r145 = getelementptr i32, i32* %r106, i32 1
  store i32 %r355, i32* %r145
  %r146 = getelementptr i32, i32* %r100, i32 0
  %r147 = load i32, i32* %r146
  %r148 = getelementptr i32, i32* %r103, i32 2
  %r149 = load i32, i32* %r148
  %r356 = mul i32 %r147, %r149
  %r151 = getelementptr i32, i32* %r100, i32 1
  %r152 = load i32, i32* %r151
  %r153 = getelementptr i32, i32* %r104, i32 2
  %r154 = load i32, i32* %r153
  %r357 = mul i32 %r152, %r154
  %r358 = add i32 %r356, %r357
  %r157 = getelementptr i32, i32* %r100, i32 2
  %r158 = load i32, i32* %r157
  %r159 = getelementptr i32, i32* %r105, i32 2
  %r160 = load i32, i32* %r159
  %r359 = mul i32 %r158, %r160
  %r360 = add i32 %r358, %r359
  %r163 = getelementptr i32, i32* %r106, i32 2
  store i32 %r360, i32* %r163
  %r164 = getelementptr i32, i32* %r101, i32 0
  %r165 = load i32, i32* %r164
  %r166 = getelementptr i32, i32* %r103, i32 0
  %r167 = load i32, i32* %r166
  %r361 = mul i32 %r165, %r167
  %r169 = getelementptr i32, i32* %r101, i32 1
  %r170 = load i32, i32* %r169
  %r171 = getelementptr i32, i32* %r104, i32 0
  %r172 = load i32, i32* %r171
  %r362 = mul i32 %r170, %r172
  %r363 = add i32 %r361, %r362
  %r175 = getelementptr i32, i32* %r101, i32 2
  %r176 = load i32, i32* %r175
  %r177 = getelementptr i32, i32* %r105, i32 0
  %r178 = load i32, i32* %r177
  %r364 = mul i32 %r176, %r178
  %r365 = add i32 %r363, %r364
  %r181 = getelementptr i32, i32* %r107, i32 0
  store i32 %r365, i32* %r181
  %r182 = getelementptr i32, i32* %r101, i32 0
  %r183 = load i32, i32* %r182
  %r184 = getelementptr i32, i32* %r103, i32 1
  %r185 = load i32, i32* %r184
  %r366 = mul i32 %r183, %r185
  %r187 = getelementptr i32, i32* %r101, i32 1
  %r188 = load i32, i32* %r187
  %r189 = getelementptr i32, i32* %r104, i32 1
  %r190 = load i32, i32* %r189
  %r367 = mul i32 %r188, %r190
  %r368 = add i32 %r366, %r367
  %r193 = getelementptr i32, i32* %r101, i32 2
  %r194 = load i32, i32* %r193
  %r195 = getelementptr i32, i32* %r105, i32 1
  %r196 = load i32, i32* %r195
  %r369 = mul i32 %r194, %r196
  %r370 = add i32 %r368, %r369
  %r199 = getelementptr i32, i32* %r107, i32 1
  store i32 %r370, i32* %r199
  %r200 = getelementptr i32, i32* %r101, i32 0
  %r201 = load i32, i32* %r200
  %r202 = getelementptr i32, i32* %r103, i32 2
  %r203 = load i32, i32* %r202
  %r371 = mul i32 %r201, %r203
  %r205 = getelementptr i32, i32* %r101, i32 1
  %r206 = load i32, i32* %r205
  %r207 = getelementptr i32, i32* %r104, i32 2
  %r208 = load i32, i32* %r207
  %r372 = mul i32 %r206, %r208
  %r373 = add i32 %r371, %r372
  %r211 = getelementptr i32, i32* %r101, i32 2
  %r212 = load i32, i32* %r211
  %r213 = getelementptr i32, i32* %r105, i32 2
  %r214 = load i32, i32* %r213
  %r374 = mul i32 %r212, %r214
  %r375 = add i32 %r373, %r374
  %r217 = getelementptr i32, i32* %r107, i32 2
  store i32 %r375, i32* %r217
  %r218 = getelementptr i32, i32* %r102, i32 0
  %r219 = load i32, i32* %r218
  %r220 = getelementptr i32, i32* %r103, i32 0
  %r221 = load i32, i32* %r220
  %r376 = mul i32 %r219, %r221
  %r223 = getelementptr i32, i32* %r102, i32 1
  %r224 = load i32, i32* %r223
  %r225 = getelementptr i32, i32* %r104, i32 0
  %r226 = load i32, i32* %r225
  %r377 = mul i32 %r224, %r226
  %r378 = add i32 %r376, %r377
  %r229 = getelementptr i32, i32* %r102, i32 2
  %r230 = load i32, i32* %r229
  %r231 = getelementptr i32, i32* %r105, i32 0
  %r232 = load i32, i32* %r231
  %r379 = mul i32 %r230, %r232
  %r380 = add i32 %r378, %r379
  %r235 = getelementptr i32, i32* %r108, i32 0
  store i32 %r380, i32* %r235
  %r236 = getelementptr i32, i32* %r102, i32 0
  %r237 = load i32, i32* %r236
  %r238 = getelementptr i32, i32* %r103, i32 1
  %r239 = load i32, i32* %r238
  %r381 = mul i32 %r237, %r239
  %r241 = getelementptr i32, i32* %r102, i32 1
  %r242 = load i32, i32* %r241
  %r243 = getelementptr i32, i32* %r104, i32 1
  %r244 = load i32, i32* %r243
  %r382 = mul i32 %r242, %r244
  %r383 = add i32 %r381, %r382
  %r247 = getelementptr i32, i32* %r102, i32 2
  %r248 = load i32, i32* %r247
  %r249 = getelementptr i32, i32* %r105, i32 1
  %r250 = load i32, i32* %r249
  %r384 = mul i32 %r248, %r250
  %r385 = add i32 %r383, %r384
  %r253 = getelementptr i32, i32* %r108, i32 1
  store i32 %r385, i32* %r253
  %r254 = getelementptr i32, i32* %r102, i32 0
  %r255 = load i32, i32* %r254
  %r256 = getelementptr i32, i32* %r103, i32 2
  %r257 = load i32, i32* %r256
  %r386 = mul i32 %r255, %r257
  %r259 = getelementptr i32, i32* %r102, i32 1
  %r260 = load i32, i32* %r259
  %r261 = getelementptr i32, i32* %r104, i32 2
  %r262 = load i32, i32* %r261
  %r387 = mul i32 %r260, %r262
  %r388 = add i32 %r386, %r387
  %r265 = getelementptr i32, i32* %r102, i32 2
  %r266 = load i32, i32* %r265
  %r267 = getelementptr i32, i32* %r105, i32 2
  %r268 = load i32, i32* %r267
  %r389 = mul i32 %r266, %r268
  %r390 = add i32 %r388, %r389
  %r271 = getelementptr i32, i32* %r108, i32 2
  store i32 %r390, i32* %r271
  ret i32 0
}

define i32 @main( ) {
bb2:
  %r393 = add i32 0, 0
  call void @_sysy_starttime(i32 97)
  store i32 3, i32* @N
  store i32 3, i32* @M
  store i32 3, i32* @L
  %r272 = alloca [ 3 x i32 ]
  %r273 = alloca [ 3 x i32 ]
  %r274 = alloca [ 3 x i32 ]
  %r275 = alloca [ 3 x i32 ]
  %r276 = alloca [ 3 x i32 ]
  %r277 = alloca [ 3 x i32 ]
  %r278 = alloca [ 6 x i32 ]
  %r279 = alloca [ 3 x i32 ]
  %r280 = alloca [ 3 x i32 ]
  %r394 = add i32 0, 0
  %r395 = add i32 0, 0
  br label %bb3

bb3:
  %r396 = phi i32 [ %r395, %bb2 ], [ %r421, %bb4 ]
  %r283 = load i32, i32* @M
  %r397 = icmp slt i32 %r396, %r283
  br i1 %r397, label %bb4, label %bb5

bb4:
  %r287 = getelementptr [3 x i32 ], [3 x i32 ]* %r272, i32 0, i32 %r396
  store i32 %r396, i32* %r287
  %r290 = getelementptr [3 x i32 ], [3 x i32 ]* %r273, i32 0, i32 %r396
  store i32 %r396, i32* %r290
  %r293 = getelementptr [3 x i32 ], [3 x i32 ]* %r274, i32 0, i32 %r396
  store i32 %r396, i32* %r293
  %r296 = getelementptr [3 x i32 ], [3 x i32 ]* %r275, i32 0, i32 %r396
  store i32 %r396, i32* %r296
  %r299 = getelementptr [3 x i32 ], [3 x i32 ]* %r276, i32 0, i32 %r396
  store i32 %r396, i32* %r299
  %r302 = getelementptr [3 x i32 ], [3 x i32 ]* %r277, i32 0, i32 %r396
  store i32 %r396, i32* %r302
  %r420 = add i32 %r396, 1
  %r421 = add i32 %r420, 0
  br label %bb3

bb5:
  %r398 = call i32 @mul(i32* %r272, i32* %r273, i32* %r274, i32* %r275, i32* %r276, i32* %r277, i32* %r278, i32* %r279, i32* %r280)
  %r399 = add i32 %r398, 0
  br label %bb6

bb6:
  %r400 = phi i32 [ %r399, %bb5 ], [ %r419, %bb7 ]
  %r308 = load i32, i32* @N
  %r401 = icmp slt i32 %r400, %r308
  br i1 %r401, label %bb7, label %bb8

bb7:
  %r311 = getelementptr [6 x i32 ], [6 x i32 ]* %r278, i32 0, i32 %r400
  %r312 = load i32, i32* %r311
  %r417 = add i32 %r312, 0
  call void @putint(i32 %r417)
  %r418 = add i32 %r400, 1
  %r419 = add i32 %r418, 0
  br label %bb6

bb8:
  %r402 = add i32 10, 0
  %r403 = add i32 0, 0
  call void @putch(i32 %r402)
  br label %bb9

bb9:
  %r404 = phi i32 [ %r403, %bb8 ], [ %r416, %bb10 ]
  %r320 = load i32, i32* @N
  %r405 = icmp slt i32 %r404, %r320
  br i1 %r405, label %bb10, label %bb11

bb10:
  %r323 = getelementptr [3 x i32 ], [3 x i32 ]* %r279, i32 0, i32 %r404
  %r324 = load i32, i32* %r323
  %r414 = add i32 %r324, 0
  call void @putint(i32 %r414)
  %r415 = add i32 %r404, 1
  %r416 = add i32 %r415, 0
  br label %bb9

bb11:
  %r406 = add i32 10, 0
  %r407 = add i32 0, 0
  call void @putch(i32 %r406)
  br label %bb12

bb12:
  %r408 = phi i32 [ %r407, %bb11 ], [ %r413, %bb13 ]
  %r332 = load i32, i32* @N
  %r409 = icmp slt i32 %r408, %r332
  br i1 %r409, label %bb13, label %bb14

bb13:
  %r335 = getelementptr [3 x i32 ], [3 x i32 ]* %r280, i32 0, i32 %r408
  %r336 = load i32, i32* %r335
  %r411 = add i32 %r336, 0
  call void @putint(i32 %r411)
  %r412 = add i32 %r408, 1
  %r413 = add i32 %r412, 0
  br label %bb12

bb14:
  %r410 = add i32 10, 0
  call void @putch(i32 %r410)
  call void @_sysy_stoptime(i32 117)
  ret i32 0
}
