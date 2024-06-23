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
  %r312 = call i32 @getch()
  store i32 %r312, i32* @last_char
  %r101 = load i32, i32* @last_char
  ret i32 %r101
}

define i32 @is_space( i32 %r102 ) {
bb3:
  %r314 = add i32 0, 0
  %r315 = add i32 %r102, 0
  br label %bb2

bb2:
  %r316 = icmp eq i32 %r315, 32
  br i1 %r316, label %bb4, label %bb7

bb7:
  %r317 = icmp eq i32 %r315, 10
  br i1 %r317, label %bb4, label %bb5

bb4:
  ret i32 1
bb5:
  ret i32 0
}

define i32 @is_num( i32 %r109 ) {
bb9:
  %r319 = add i32 0, 0
  %r320 = add i32 %r109, 0
  br label %bb8

bb8:
  %r321 = icmp sge i32 %r320, 48
  br i1 %r321, label %bb13, label %bb11

bb13:
  %r322 = icmp sle i32 %r320, 57
  br i1 %r322, label %bb10, label %bb11

bb10:
  ret i32 1
bb11:
  ret i32 0
}

define i32 @next_token( ) {
bb14:
  br label %bb15

bb15:
  %r116 = load i32, i32* @last_char
  %r323 = call i32 @is_space(i32 %r116)
  %r324 = icmp ne i32 %r323, 0
  br i1 %r324, label %bb16, label %bb17

bb16:
  %r335 = call i32 @next_char()
  br label %bb15

bb17:
  %r120 = load i32, i32* @last_char
  %r325 = call i32 @is_num(i32 %r120)
  %r326 = icmp ne i32 %r325, 0
  br i1 %r326, label %bb18, label %bb19

bb18:
  %r123 = load i32, i32* @last_char
  %r328 = sub i32 %r123, 48
  store i32 %r328, i32* @num
  br label %bb21

bb21:
  %r329 = call i32 @next_char()
  %r330 = call i32 @is_num(i32 %r329)
  %r331 = icmp ne i32 %r330, 0
  br i1 %r331, label %bb22, label %bb23

bb22:
  %r128 = load i32, i32* @num
  %r332 = mul i32 %r128, 10
  %r130 = load i32, i32* @last_char
  %r333 = add i32 %r332, %r130
  %r334 = sub i32 %r333, 48
  store i32 %r334, i32* @num
  br label %bb21

bb23:
  %r133 = load i32, i32* @TOKEN_NUM
  store i32 %r133, i32* @cur_token
  br label %bb20

bb19:
  %r134 = load i32, i32* @last_char
  store i32 %r134, i32* @other
  %r327 = call i32 @next_char()
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
  %r336 = sub i32 0, 1
  ret i32 %r336
}

define i32 @get_op_prec( i32 %r139 ) {
bb26:
  %r338 = add i32 0, 0
  %r339 = add i32 %r139, 0
  br label %bb25

bb25:
  %r340 = icmp eq i32 %r339, 43
  br i1 %r340, label %bb27, label %bb30

bb30:
  %r341 = icmp eq i32 %r339, 45
  br i1 %r341, label %bb27, label %bb28

bb27:
  ret i32 10
bb28:
  br label %bb29

bb29:
  %r342 = icmp eq i32 %r339, 42
  br i1 %r342, label %bb31, label %bb35

bb35:
  %r343 = icmp eq i32 %r339, 47
  br i1 %r343, label %bb31, label %bb34

bb34:
  %r344 = icmp eq i32 %r339, 37
  br i1 %r344, label %bb31, label %bb32

bb31:
  ret i32 20
bb32:
  br label %bb33

bb33:
  ret i32 0
}

define void @stack_push( i32* %r154, i32 %r155 ) {
bb37:
  %r347 = add i32 0, 0
  %r348 = add i32 0, 0
  %r349 = add i32 %r155, 0
  br label %bb36

bb36:
  %r157 = getelementptr i32, i32* %r154, i32 0
  %r158 = load i32, i32* %r157
  %r350 = add i32 %r158, 1
  %r160 = getelementptr i32, i32* %r154, i32 0
  store i32 %r350, i32* %r160
  %r162 = getelementptr i32, i32* %r154, i32 0
  %r163 = load i32, i32* %r162
  %r351 = add i32 %r163, 0
  %r166 = getelementptr i32, i32* %r154, i32 %r351
  store i32 %r349, i32* %r166
  ret void
}

define i32 @stack_pop( i32* %r167 ) {
bb38:
  %r169 = getelementptr i32, i32* %r167, i32 0
  %r170 = load i32, i32* %r169
  %r354 = add i32 0, 0
  %r355 = add i32 %r170, 0
  %r173 = getelementptr i32, i32* %r167, i32 %r355
  %r174 = load i32, i32* %r173
  %r356 = add i32 0, 0
  %r357 = add i32 %r174, 0
  %r175 = getelementptr i32, i32* %r167, i32 0
  %r176 = load i32, i32* %r175
  %r358 = sub i32 %r176, 1
  %r178 = getelementptr i32, i32* %r167, i32 0
  store i32 %r358, i32* %r178
  ret i32 %r357
}

define i32 @stack_peek( i32* %r180 ) {
bb39:
  %r182 = getelementptr i32, i32* %r180, i32 0
  %r183 = load i32, i32* %r182
  %r360 = add i32 0, 0
  %r361 = add i32 %r183, 0
  %r185 = getelementptr i32, i32* %r180, i32 %r361
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
  %r364 = add i32 0, 0
  %r365 = add i32 %r190, 0
  %r366 = add i32 0, 0
  %r367 = add i32 %r192, 0
  br label %bb41

bb41:
  %r368 = sdiv i32 %r365, %r367
  %r369 = mul i32 %r368, %r367
  %r370 = sub i32 %r365, %r369
  ret i32 %r370
}

define i32 @eval_op( i32 %r201, i32 %r203, i32 %r205 ) {
bb44:
  %r374 = add i32 0, 0
  %r375 = add i32 %r201, 0
  %r376 = add i32 0, 0
  %r377 = add i32 %r203, 0
  %r378 = add i32 0, 0
  %r379 = add i32 %r205, 0
  br label %bb43

bb43:
  %r380 = icmp eq i32 %r375, 43
  br i1 %r380, label %bb45, label %bb46

bb45:
  %r389 = add i32 %r377, %r379
  ret i32 %r389
bb46:
  br label %bb47

bb47:
  %r381 = icmp eq i32 %r375, 45
  br i1 %r381, label %bb48, label %bb49

bb48:
  %r388 = sub i32 %r377, %r379
  ret i32 %r388
bb49:
  br label %bb50

bb50:
  %r382 = icmp eq i32 %r375, 42
  br i1 %r382, label %bb51, label %bb52

bb51:
  %r387 = mul i32 %r377, %r379
  ret i32 %r387
bb52:
  br label %bb53

bb53:
  %r383 = icmp eq i32 %r375, 47
  br i1 %r383, label %bb54, label %bb55

bb54:
  %r386 = sdiv i32 %r377, %r379
  ret i32 %r386
bb55:
  br label %bb56

bb56:
  %r384 = icmp eq i32 %r375, 37
  br i1 %r384, label %bb57, label %bb58

bb57:
  %r385 = call i32 @mod(i32 %r377, i32 %r379)
  ret i32 %r385
bb58:
  br label %bb59

bb59:
  ret i32 0
}

define i32 @eval( ) {
bb60:
  %r398 = add i32 0, 0
  %r399 = add i32 0, 0
  %r400 = add i32 0, 0
  %r401 = add i32 0, 0
  %r402 = add i32 0, 0
  %r403 = add i32 0, 0
  %r404 = add i32 0, 0
  %r232 = alloca [ 256 x i32 ]
  %r233 = alloca [ 256 x i32 ]
  %r405 = add i32 0, 0
  %r406 = add i32 0, 0
  br label %bb61

bb61:
  %r407 = phi i32 [ %r406, %bb60 ], [ %r445, %bb62 ]
  %r408 = icmp slt i32 %r407, 256
  br i1 %r408, label %bb62, label %bb63

bb62:
  %r238 = getelementptr [256 x i32 ], [256 x i32 ]* %r232, i32 0, i32 %r407
  store i32 0, i32* %r238
  %r240 = getelementptr [256 x i32 ], [256 x i32 ]* %r233, i32 0, i32 %r407
  store i32 0, i32* %r240
  %r444 = add i32 %r407, 1
  %r445 = add i32 %r444, 0
  br label %bb61

bb63:
  %r243 = load i32, i32* @cur_token
  %r244 = load i32, i32* @TOKEN_NUM
  %r409 = icmp ne i32 %r243, %r244
  br i1 %r409, label %bb64, label %bb65

bb64:
  %r443 = call i32 @panic()
  ret i32 %r443
bb65:
  br label %bb66

bb66:
  %r247 = getelementptr [256 x i32 ], [256 x i32 ]* %r232, i32 0, i32 0
  %r248 = load i32, i32* @num
  call void @stack_push(i32* %r247, i32 %r248)
  %r410 = call i32 @next_token()
  br label %bb67

bb67:
  %r250 = load i32, i32* @cur_token
  %r251 = load i32, i32* @TOKEN_OTHER
  %r411 = icmp eq i32 %r250, %r251
  br i1 %r411, label %bb68, label %bb69

bb68:
  %r254 = load i32, i32* @other
  %r423 = add i32 %r254, 0
  %r424 = call i32 @get_op_prec(i32 %r423)
  %r425 = icmp eq i32 %r424, 0
  br i1 %r425, label %bb70, label %bb71

bb70:
  br label %bb69

bb71:
  br label %bb72

bb72:
  %r426 = call i32 @next_token()
  br label %bb73

bb73:
  %r427 = call i32 @stack_size(i32* %r233)
  %r428 = icmp ne i32 %r427, 0
  br i1 %r428, label %bb76, label %bb75

bb76:
  %r432 = call i32 @stack_peek(i32* %r233)
  %r433 = call i32 @get_op_prec(i32 %r432)
  %r434 = call i32 @get_op_prec(i32 %r423)
  %r435 = icmp sge i32 %r433, %r434
  br i1 %r435, label %bb74, label %bb75

bb74:
  %r436 = call i32 @stack_pop(i32* %r233)
  %r437 = add i32 %r436, 0
  %r438 = call i32 @stack_pop(i32* %r232)
  %r439 = add i32 %r438, 0
  %r440 = call i32 @stack_pop(i32* %r232)
  %r441 = add i32 %r440, 0
  %r273 = getelementptr [256 x i32 ], [256 x i32 ]* %r232, i32 0, i32 0
  %r442 = call i32 @eval_op(i32 %r437, i32 %r441, i32 %r439)
  call void @stack_push(i32* %r273, i32 %r442)
  br label %bb73

bb75:
  %r278 = getelementptr [256 x i32 ], [256 x i32 ]* %r233, i32 0, i32 0
  call void @stack_push(i32* %r278, i32 %r423)
  %r281 = load i32, i32* @cur_token
  %r282 = load i32, i32* @TOKEN_NUM
  %r429 = icmp ne i32 %r281, %r282
  br i1 %r429, label %bb77, label %bb78

bb77:
  %r431 = call i32 @panic()
  ret i32 %r431
bb78:
  br label %bb79

bb79:
  %r285 = getelementptr [256 x i32 ], [256 x i32 ]* %r232, i32 0, i32 0
  %r286 = load i32, i32* @num
  call void @stack_push(i32* %r285, i32 %r286)
  %r430 = call i32 @next_token()
  br label %bb67

bb69:
  %r412 = call i32 @next_token()
  br label %bb80

bb80:
  %r413 = call i32 @stack_size(i32* %r233)
  %r414 = icmp ne i32 %r413, 0
  br i1 %r414, label %bb81, label %bb82

bb81:
  %r416 = call i32 @stack_pop(i32* %r233)
  %r417 = add i32 %r416, 0
  %r418 = call i32 @stack_pop(i32* %r232)
  %r419 = add i32 %r418, 0
  %r420 = call i32 @stack_pop(i32* %r232)
  %r421 = add i32 %r420, 0
  %r297 = getelementptr [256 x i32 ], [256 x i32 ]* %r232, i32 0, i32 0
  %r422 = call i32 @eval_op(i32 %r417, i32 %r421, i32 %r419)
  call void @stack_push(i32* %r297, i32 %r422)
  br label %bb80

bb82:
  %r415 = call i32 @stack_peek(i32* %r232)
  ret i32 %r415
}

define i32 @main( ) {
bb83:
  call void @_sysy_starttime(i32 205)
  %r447 = call i32 @getint()
  %r448 = add i32 0, 0
  %r449 = add i32 %r447, 0
  %r450 = call i32 @getch()
  %r451 = call i32 @next_token()
  br label %bb84

bb84:
  %r452 = phi i32 [ %r449, %bb83 ], [ %r456, %bb85 ]
  %r453 = icmp ne i32 %r452, 0
  br i1 %r453, label %bb85, label %bb86

bb85:
  %r454 = call i32 @eval()
  call void @putint(i32 %r454)
  call void @putch(i32 10)
  %r455 = sub i32 %r452, 1
  %r456 = add i32 %r455, 0
  br label %bb84

bb86:
  call void @_sysy_stoptime(i32 214)
  ret i32 0
}

