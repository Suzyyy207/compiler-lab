declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
define i32 @func1( i32 %r100, i32 %r102, i32 %r104 ) {
bb2:
  %r275 = add i32 0, 0
  %r276 = add i32 %r100, 0
  %r277 = add i32 0, 0
  %r278 = add i32 %r102, 0
  %r279 = add i32 0, 0
  %r280 = add i32 %r104, 0
  br label %bb1

bb1:
  %r281 = icmp eq i32 %r280, 0
  br i1 %r281, label %bb3, label %bb4

bb3:
  %r284 = mul i32 %r276, %r278
  ret i32 %r284
bb4:
  %r282 = sub i32 %r278, %r280
  %r283 = call i32 @func1(i32 %r276, i32 %r282, i32 0)
  ret i32 %r283
}

define i32 @func2( i32 %r116, i32 %r118 ) {
bb7:
  %r287 = add i32 0, 0
  %r288 = add i32 %r116, 0
  %r289 = add i32 0, 0
  %r290 = add i32 %r118, 0
  br label %bb6

bb6:
  %r291 = icmp ne i32 %r290, 0
  br i1 %r291, label %bb8, label %bb9

bb8:
  %r292 = sdiv i32 %r288, %r290
  %r293 = mul i32 %r292, %r290
  %r294 = sub i32 %r288, %r293
  %r295 = call i32 @func2(i32 %r294, i32 0)
  ret i32 %r295
bb9:
  ret i32 %r288
}

define i32 @func3( i32 %r131, i32 %r133 ) {
bb12:
  %r298 = add i32 0, 0
  %r299 = add i32 %r131, 0
  %r300 = add i32 0, 0
  %r301 = add i32 %r133, 0
  br label %bb11

bb11:
  %r302 = icmp eq i32 %r301, 0
  br i1 %r302, label %bb13, label %bb14

bb13:
  %r305 = add i32 %r299, 1
  ret i32 %r305
bb14:
  %r303 = add i32 %r299, %r301
  %r304 = call i32 @func3(i32 %r303, i32 0)
  ret i32 %r304
}

define i32 @func4( i32 %r143, i32 %r145, i32 %r147 ) {
bb17:
  %r309 = add i32 0, 0
  %r310 = add i32 %r143, 0
  %r311 = add i32 0, 0
  %r312 = add i32 %r145, 0
  %r313 = add i32 0, 0
  %r314 = add i32 %r147, 0
  br label %bb16

bb16:
  %r315 = icmp ne i32 %r310, 0
  br i1 %r315, label %bb18, label %bb19

bb18:
  ret i32 %r312
bb19:
  ret i32 %r314
}

define i32 @func5( i32 %r153 ) {
bb22:
  %r317 = add i32 0, 0
  %r318 = add i32 %r153, 0
  br label %bb21

bb21:
  %r319 = sub i32 0, %r318
  ret i32 %r319
}

define i32 @func6( i32 %r157, i32 %r159 ) {
bb24:
  %r322 = add i32 0, 0
  %r323 = add i32 %r157, 0
  %r324 = add i32 0, 0
  %r325 = add i32 %r159, 0
  br label %bb23

bb23:
  %r326 = icmp ne i32 %r323, 0
  br i1 %r326, label %bb28, label %bb26

bb28:
  %r327 = icmp ne i32 %r325, 0
  br i1 %r327, label %bb25, label %bb26

bb25:
  ret i32 1
bb26:
  ret i32 0
}

define i32 @func7( i32 %r166 ) {
bb30:
  %r329 = add i32 0, 0
  %r330 = add i32 %r166, 0
  br label %bb29

bb29:
  %r331 = icmp ne i32 %r330, 0
  br i1 %r331, label %bb31, label %bb32

bb31:
  ret i32 1
bb32:
  ret i32 0
}

define i32 @main( ) {
bb34:
  %r338 = add i32 0, 0
  call void @_sysy_starttime(i32 97)
  %r339 = call i32 @getint()
  %r340 = add i32 0, 0
  %r341 = add i32 %r339, 0
  %r342 = call i32 @getint()
  %r343 = add i32 0, 0
  %r344 = add i32 %r342, 0
  %r345 = call i32 @getint()
  %r346 = add i32 0, 0
  %r347 = add i32 %r345, 0
  %r348 = call i32 @getint()
  %r349 = add i32 0, 0
  %r350 = add i32 %r348, 0
  %r178 = alloca [ 10 x i32 ]
  %r351 = add i32 0, 0
  %r352 = add i32 0, 0
  br label %bb35

bb35:
  %r353 = phi i32 [ %r352, %bb34 ], [ %r392, %bb36 ]
  %r354 = icmp slt i32 %r353, 10
  br i1 %r354, label %bb36, label %bb37

bb36:
  %r390 = call i32 @getint()
  %r184 = getelementptr [10 x i32 ], [10 x i32 ]* %r178, i32 0, i32 %r353
  store i32 %r390, i32* %r184
  %r391 = add i32 %r353, 1
  %r392 = add i32 %r391, 0
  br label %bb35

bb37:
  %r355 = call i32 @func7(i32 %r341)
  %r356 = call i32 @func5(i32 %r344)
  %r357 = call i32 @func6(i32 %r355, i32 %r356)
  %r358 = call i32 @func2(i32 %r357, i32 %r347)
  %r359 = call i32 @func3(i32 %r358, i32 %r350)
  %r360 = call i32 @func5(i32 %r359)
  %r198 = getelementptr [10 x i32 ], [10 x i32 ]* %r178, i32 0, i32 0
  %r199 = load i32, i32* %r198
  %r200 = getelementptr [10 x i32 ], [10 x i32 ]* %r178, i32 0, i32 1
  %r201 = load i32, i32* %r200
  %r361 = call i32 @func5(i32 %r201)
  %r203 = getelementptr [10 x i32 ], [10 x i32 ]* %r178, i32 0, i32 2
  %r204 = load i32, i32* %r203
  %r205 = getelementptr [10 x i32 ], [10 x i32 ]* %r178, i32 0, i32 3
  %r206 = load i32, i32* %r205
  %r362 = call i32 @func7(i32 %r206)
  %r363 = call i32 @func6(i32 %r204, i32 %r362)
  %r209 = getelementptr [10 x i32 ], [10 x i32 ]* %r178, i32 0, i32 4
  %r210 = load i32, i32* %r209
  %r211 = getelementptr [10 x i32 ], [10 x i32 ]* %r178, i32 0, i32 5
  %r212 = load i32, i32* %r211
  %r364 = call i32 @func7(i32 %r212)
  %r365 = call i32 @func2(i32 %r210, i32 %r364)
  %r366 = call i32 @func4(i32 %r361, i32 %r363, i32 %r365)
  %r216 = getelementptr [10 x i32 ], [10 x i32 ]* %r178, i32 0, i32 6
  %r217 = load i32, i32* %r216
  %r367 = call i32 @func3(i32 %r366, i32 %r217)
  %r219 = getelementptr [10 x i32 ], [10 x i32 ]* %r178, i32 0, i32 7
  %r220 = load i32, i32* %r219
  %r368 = call i32 @func2(i32 %r367, i32 %r220)
  %r222 = getelementptr [10 x i32 ], [10 x i32 ]* %r178, i32 0, i32 8
  %r223 = load i32, i32* %r222
  %r224 = getelementptr [10 x i32 ], [10 x i32 ]* %r178, i32 0, i32 9
  %r225 = load i32, i32* %r224
  %r369 = call i32 @func7(i32 %r225)
  %r370 = call i32 @func3(i32 %r223, i32 %r369)
  %r371 = call i32 @func1(i32 %r368, i32 %r370, i32 %r341)
  %r372 = call i32 @func4(i32 %r360, i32 %r199, i32 %r371)
  %r373 = call i32 @func7(i32 %r347)
  %r374 = call i32 @func3(i32 %r373, i32 %r350)
  %r375 = call i32 @func2(i32 %r344, i32 %r374)
  %r376 = call i32 @func3(i32 %r372, i32 %r375)
  %r238 = getelementptr [10 x i32 ], [10 x i32 ]* %r178, i32 0, i32 0
  %r239 = load i32, i32* %r238
  %r240 = getelementptr [10 x i32 ], [10 x i32 ]* %r178, i32 0, i32 1
  %r241 = load i32, i32* %r240
  %r377 = call i32 @func1(i32 %r376, i32 %r239, i32 %r241)
  %r243 = getelementptr [10 x i32 ], [10 x i32 ]* %r178, i32 0, i32 2
  %r244 = load i32, i32* %r243
  %r378 = call i32 @func2(i32 %r377, i32 %r244)
  %r246 = getelementptr [10 x i32 ], [10 x i32 ]* %r178, i32 0, i32 3
  %r247 = load i32, i32* %r246
  %r248 = getelementptr [10 x i32 ], [10 x i32 ]* %r178, i32 0, i32 4
  %r249 = load i32, i32* %r248
  %r250 = getelementptr [10 x i32 ], [10 x i32 ]* %r178, i32 0, i32 5
  %r251 = load i32, i32* %r250
  %r379 = call i32 @func5(i32 %r251)
  %r380 = call i32 @func3(i32 %r249, i32 %r379)
  %r254 = getelementptr [10 x i32 ], [10 x i32 ]* %r178, i32 0, i32 6
  %r255 = load i32, i32* %r254
  %r381 = call i32 @func5(i32 %r255)
  %r382 = call i32 @func2(i32 %r380, i32 %r381)
  %r258 = getelementptr [10 x i32 ], [10 x i32 ]* %r178, i32 0, i32 7
  %r259 = load i32, i32* %r258
  %r260 = getelementptr [10 x i32 ], [10 x i32 ]* %r178, i32 0, i32 8
  %r261 = load i32, i32* %r260
  %r383 = call i32 @func7(i32 %r261)
  %r384 = call i32 @func1(i32 %r382, i32 %r259, i32 %r383)
  %r264 = getelementptr [10 x i32 ], [10 x i32 ]* %r178, i32 0, i32 9
  %r265 = load i32, i32* %r264
  %r385 = call i32 @func5(i32 %r265)
  %r386 = call i32 @func2(i32 %r384, i32 %r385)
  %r387 = call i32 @func3(i32 %r386, i32 %r341)
  %r388 = call i32 @func1(i32 %r378, i32 %r247, i32 %r387)
  %r389 = add i32 %r388, 0
  call void @_sysy_stoptime(i32 117)
  ret i32 %r389
}

