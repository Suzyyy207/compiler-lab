; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.timeval = type { i64, i32 }

@TOKEN_NUM = global i32 0
@TOKEN_OTHER = global i32 1
@last_char = global i32 32
@num = global i32 0
@other = global i32 0
@cur_token = global i32 0
@llvm.global_ctors = appending global [2 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @before_main, ptr null }, { i32, ptr, ptr } { i32 65535, ptr @__GLOBAL_init_65535, ptr null }]
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d:\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@_sysy_us = global [1024 x i32] zeroinitializer, align 4
@_sysy_s = global [1024 x i32] zeroinitializer, align 4
@_sysy_m = global [1024 x i32] zeroinitializer, align 4
@_sysy_h = global [1024 x i32] zeroinitializer, align 4
@_sysy_idx = global i32 0, align 4
@__stderrp = external global ptr, align 8
@.str.5 = private unnamed_addr constant [35 x i8] c"Timer@%04d-%04d: %dH-%dM-%dS-%dus\0A\00", align 1
@_sysy_l1 = global [1024 x i32] zeroinitializer, align 4
@_sysy_l2 = global [1024 x i32] zeroinitializer, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"TOTAL: %dH-%dM-%dS-%dus\0A\00", align 1
@_sysy_start = global %struct.timeval zeroinitializer, align 8
@_sysy_end = global %struct.timeval zeroinitializer, align 8
@__dso_handle = external hidden global i8

define i32 @next_char() {
bb1:
  %r312 = call i32 @getch()
  store i32 %r312, ptr @last_char, align 4
  %r101 = load i32, ptr @last_char, align 4
  ret i32 %r101
}

define i32 @is_space(i32 %r102) {
bb3:
  %r314 = add i32 0, 0
  %r315 = add i32 %r102, 0
  br label %bb2

bb2:                                              ; preds = %bb3
  %r316 = icmp eq i32 %r315, 32
  br i1 %r316, label %bb4, label %bb7

bb7:                                              ; preds = %bb2
  %r317 = icmp eq i32 %r315, 10
  br i1 %r317, label %bb4, label %bb5

bb4:                                              ; preds = %bb7, %bb2
  ret i32 1

bb5:                                              ; preds = %bb7
  ret i32 0
}

define i32 @is_num(i32 %r109) {
bb9:
  %r319 = add i32 0, 0
  %r320 = add i32 %r109, 0
  br label %bb8

bb8:                                              ; preds = %bb9
  %r321 = icmp sge i32 %r320, 48
  br i1 %r321, label %bb13, label %bb11

bb13:                                             ; preds = %bb8
  %r322 = icmp sle i32 %r320, 57
  br i1 %r322, label %bb10, label %bb11

bb10:                                             ; preds = %bb13
  ret i32 1

bb11:                                             ; preds = %bb13, %bb8
  ret i32 0
}

define i32 @next_token() {
bb14:
  br label %bb15

bb15:                                             ; preds = %bb16, %bb14
  %r116 = load i32, ptr @last_char, align 4
  %r323 = call i32 @is_space(i32 %r116)
  %r324 = icmp ne i32 %r323, 0
  br i1 %r324, label %bb16, label %bb17

bb16:                                             ; preds = %bb15
  %r335 = call i32 @next_char()
  br label %bb15

bb17:                                             ; preds = %bb15
  %r120 = load i32, ptr @last_char, align 4
  %r325 = call i32 @is_num(i32 %r120)
  %r326 = icmp ne i32 %r325, 0
  br i1 %r326, label %bb18, label %bb19

bb18:                                             ; preds = %bb17
  %r123 = load i32, ptr @last_char, align 4
  %r328 = sub i32 %r123, 48
  store i32 %r328, ptr @num, align 4
  br label %bb21

bb21:                                             ; preds = %bb22, %bb18
  %r329 = call i32 @next_char()
  %r330 = call i32 @is_num(i32 %r329)
  %r331 = icmp ne i32 %r330, 0
  br i1 %r331, label %bb22, label %bb23

bb22:                                             ; preds = %bb21
  %r128 = load i32, ptr @num, align 4
  %r332 = mul i32 %r128, 10
  %r130 = load i32, ptr @last_char, align 4
  %r333 = add i32 %r332, %r130
  %r334 = sub i32 %r333, 48
  store i32 %r334, ptr @num, align 4
  br label %bb21

bb23:                                             ; preds = %bb21
  %r133 = load i32, ptr @TOKEN_NUM, align 4
  store i32 %r133, ptr @cur_token, align 4
  br label %bb20

bb19:                                             ; preds = %bb17
  %r134 = load i32, ptr @last_char, align 4
  store i32 %r134, ptr @other, align 4
  %r327 = call i32 @next_char()
  %r136 = load i32, ptr @TOKEN_OTHER, align 4
  store i32 %r136, ptr @cur_token, align 4
  br label %bb20

bb20:                                             ; preds = %bb19, %bb23
  %r137 = load i32, ptr @cur_token, align 4
  ret i32 %r137
}

define i32 @panic() {
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

define i32 @get_op_prec(i32 %r139) {
bb26:
  %r338 = add i32 0, 0
  %r339 = add i32 %r139, 0
  br label %bb25

bb25:                                             ; preds = %bb26
  %r340 = icmp eq i32 %r339, 43
  br i1 %r340, label %bb27, label %bb30

bb30:                                             ; preds = %bb25
  %r341 = icmp eq i32 %r339, 45
  br i1 %r341, label %bb27, label %bb28

bb27:                                             ; preds = %bb30, %bb25
  ret i32 10

bb28:                                             ; preds = %bb30
  br label %bb29

bb29:                                             ; preds = %bb28
  %r342 = icmp eq i32 %r339, 42
  br i1 %r342, label %bb31, label %bb35

bb35:                                             ; preds = %bb29
  %r343 = icmp eq i32 %r339, 47
  br i1 %r343, label %bb31, label %bb34

bb34:                                             ; preds = %bb35
  %r344 = icmp eq i32 %r339, 37
  br i1 %r344, label %bb31, label %bb32

bb31:                                             ; preds = %bb34, %bb35, %bb29
  ret i32 20

bb32:                                             ; preds = %bb34
  br label %bb33

bb33:                                             ; preds = %bb32
  ret i32 0
}

define void @stack_push(ptr %r154, i32 %r155) {
bb37:
  %r347 = add i32 0, 0
  %r348 = add i32 0, 0
  %r349 = add i32 %r155, 0
  br label %bb36

bb36:                                             ; preds = %bb37
  %r157 = getelementptr i32, ptr %r154, i32 0
  %r158 = load i32, ptr %r157, align 4
  %r350 = add i32 %r158, 1
  %r160 = getelementptr i32, ptr %r154, i32 0
  store i32 %r350, ptr %r160, align 4
  %r162 = getelementptr i32, ptr %r154, i32 0
  %r163 = load i32, ptr %r162, align 4
  %r351 = add i32 %r163, 0
  %r166 = getelementptr i32, ptr %r154, i32 %r351
  store i32 %r349, ptr %r166, align 4
  ret void
}

define i32 @stack_pop(ptr %r167) {
bb38:
  %r169 = getelementptr i32, ptr %r167, i32 0
  %r170 = load i32, ptr %r169, align 4
  %r354 = add i32 0, 0
  %r355 = add i32 %r170, 0
  %r173 = getelementptr i32, ptr %r167, i32 %r355
  %r174 = load i32, ptr %r173, align 4
  %r356 = add i32 0, 0
  %r357 = add i32 %r174, 0
  %r175 = getelementptr i32, ptr %r167, i32 0
  %r176 = load i32, ptr %r175, align 4
  %r358 = sub i32 %r176, 1
  %r178 = getelementptr i32, ptr %r167, i32 0
  store i32 %r358, ptr %r178, align 4
  ret i32 %r357
}

define i32 @stack_peek(ptr %r180) {
bb39:
  %r182 = getelementptr i32, ptr %r180, i32 0
  %r183 = load i32, ptr %r182, align 4
  %r360 = add i32 0, 0
  %r361 = add i32 %r183, 0
  %r185 = getelementptr i32, ptr %r180, i32 %r361
  %r186 = load i32, ptr %r185, align 4
  ret i32 %r186
}

define i32 @stack_size(ptr %r187) {
bb40:
  %r188 = getelementptr i32, ptr %r187, i32 0
  %r189 = load i32, ptr %r188, align 4
  ret i32 %r189
}

define i32 @mod(i32 %r190, i32 %r192) {
bb42:
  %r364 = add i32 0, 0
  %r365 = add i32 %r190, 0
  %r366 = add i32 0, 0
  %r367 = add i32 %r192, 0
  br label %bb41

bb41:                                             ; preds = %bb42
  %r368 = sdiv i32 %r365, %r367
  %r369 = mul i32 %r368, %r367
  %r370 = sub i32 %r365, %r369
  ret i32 %r370
}

define i32 @eval_op(i32 %r201, i32 %r203, i32 %r205) {
bb44:
  %r374 = add i32 0, 0
  %r375 = add i32 %r201, 0
  %r376 = add i32 0, 0
  %r377 = add i32 %r203, 0
  %r378 = add i32 0, 0
  %r379 = add i32 %r205, 0
  br label %bb43

bb43:                                             ; preds = %bb44
  %r380 = icmp eq i32 %r375, 43
  br i1 %r380, label %bb45, label %bb46

bb45:                                             ; preds = %bb43
  %r389 = add i32 %r377, %r379
  ret i32 %r389

bb46:                                             ; preds = %bb43
  br label %bb47

bb47:                                             ; preds = %bb46
  %r381 = icmp eq i32 %r375, 45
  br i1 %r381, label %bb48, label %bb49

bb48:                                             ; preds = %bb47
  %r388 = sub i32 %r377, %r379
  ret i32 %r388

bb49:                                             ; preds = %bb47
  br label %bb50

bb50:                                             ; preds = %bb49
  %r382 = icmp eq i32 %r375, 42
  br i1 %r382, label %bb51, label %bb52

bb51:                                             ; preds = %bb50
  %r387 = mul i32 %r377, %r379
  ret i32 %r387

bb52:                                             ; preds = %bb50
  br label %bb53

bb53:                                             ; preds = %bb52
  %r383 = icmp eq i32 %r375, 47
  br i1 %r383, label %bb54, label %bb55

bb54:                                             ; preds = %bb53
  %r386 = sdiv i32 %r377, %r379
  ret i32 %r386

bb55:                                             ; preds = %bb53
  br label %bb56

bb56:                                             ; preds = %bb55
  %r384 = icmp eq i32 %r375, 37
  br i1 %r384, label %bb57, label %bb58

bb57:                                             ; preds = %bb56
  %r385 = call i32 @mod(i32 %r377, i32 %r379)
  ret i32 %r385

bb58:                                             ; preds = %bb56
  br label %bb59

bb59:                                             ; preds = %bb58
  ret i32 0
}

define i32 @eval() {
bb60:
  %r398 = add i32 0, 0
  %r399 = add i32 0, 0
  %r400 = add i32 0, 0
  %r401 = add i32 0, 0
  %r402 = add i32 0, 0
  %r403 = add i32 0, 0
  %r404 = add i32 0, 0
  %r232 = alloca [256 x i32], align 4
  %r233 = alloca [256 x i32], align 4
  %r405 = add i32 0, 0
  %r406 = add i32 0, 0
  br label %bb61

bb61:                                             ; preds = %bb62, %bb60
  %r407 = phi i32 [ %r406, %bb60 ], [ %r445, %bb62 ]
  %r408 = icmp slt i32 %r407, 256
  br i1 %r408, label %bb62, label %bb63

bb62:                                             ; preds = %bb61
  %r238 = getelementptr [256 x i32], ptr %r232, i32 0, i32 %r407
  store i32 0, ptr %r238, align 4
  %r240 = getelementptr [256 x i32], ptr %r233, i32 0, i32 %r407
  store i32 0, ptr %r240, align 4
  %r444 = add i32 %r407, 1
  %r445 = add i32 %r444, 0
  br label %bb61

bb63:                                             ; preds = %bb61
  %r243 = load i32, ptr @cur_token, align 4
  %r244 = load i32, ptr @TOKEN_NUM, align 4
  %r409 = icmp ne i32 %r243, %r244
  br i1 %r409, label %bb64, label %bb65

bb64:                                             ; preds = %bb63
  %r443 = call i32 @panic()
  ret i32 %r443

bb65:                                             ; preds = %bb63
  br label %bb66

bb66:                                             ; preds = %bb65
  %r247 = getelementptr [256 x i32], ptr %r232, i32 0, i32 0
  %r248 = load i32, ptr @num, align 4
  call void @stack_push(ptr %r247, i32 %r248)
  %r410 = call i32 @next_token()
  br label %bb67

bb67:                                             ; preds = %bb79, %bb66
  %r250 = load i32, ptr @cur_token, align 4
  %r251 = load i32, ptr @TOKEN_OTHER, align 4
  %r411 = icmp eq i32 %r250, %r251
  br i1 %r411, label %bb68, label %bb69

bb68:                                             ; preds = %bb67
  %r254 = load i32, ptr @other, align 4
  %r423 = add i32 %r254, 0
  %r424 = call i32 @get_op_prec(i32 %r423)
  %r425 = icmp eq i32 %r424, 0
  br i1 %r425, label %bb70, label %bb71

bb70:                                             ; preds = %bb68
  br label %bb69

bb71:                                             ; preds = %bb68
  br label %bb72

bb72:                                             ; preds = %bb71
  %r426 = call i32 @next_token()
  br label %bb73

bb73:                                             ; preds = %bb74, %bb72
  %r427 = call i32 @stack_size(ptr %r233)
  %r428 = icmp ne i32 %r427, 0
  br i1 %r428, label %bb76, label %bb75

bb76:                                             ; preds = %bb73
  %r432 = call i32 @stack_peek(ptr %r233)
  %r433 = call i32 @get_op_prec(i32 %r432)
  %r434 = call i32 @get_op_prec(i32 %r423)
  %r435 = icmp sge i32 %r433, %r434
  br i1 %r435, label %bb74, label %bb75

bb74:                                             ; preds = %bb76
  %r436 = call i32 @stack_pop(ptr %r233)
  %r437 = add i32 %r436, 0
  %r438 = call i32 @stack_pop(ptr %r232)
  %r439 = add i32 %r438, 0
  %r440 = call i32 @stack_pop(ptr %r232)
  %r441 = add i32 %r440, 0
  %r273 = getelementptr [256 x i32], ptr %r232, i32 0, i32 0
  %r442 = call i32 @eval_op(i32 %r437, i32 %r441, i32 %r439)
  call void @stack_push(ptr %r273, i32 %r442)
  br label %bb73

bb75:                                             ; preds = %bb76, %bb73
  %r278 = getelementptr [256 x i32], ptr %r233, i32 0, i32 0
  call void @stack_push(ptr %r278, i32 %r423)
  %r281 = load i32, ptr @cur_token, align 4
  %r282 = load i32, ptr @TOKEN_NUM, align 4
  %r429 = icmp ne i32 %r281, %r282
  br i1 %r429, label %bb77, label %bb78

bb77:                                             ; preds = %bb75
  %r431 = call i32 @panic()
  ret i32 %r431

bb78:                                             ; preds = %bb75
  br label %bb79

bb79:                                             ; preds = %bb78
  %r285 = getelementptr [256 x i32], ptr %r232, i32 0, i32 0
  %r286 = load i32, ptr @num, align 4
  call void @stack_push(ptr %r285, i32 %r286)
  %r430 = call i32 @next_token()
  br label %bb67

bb69:                                             ; preds = %bb70, %bb67
  %r412 = call i32 @next_token()
  br label %bb80

bb80:                                             ; preds = %bb81, %bb69
  %r413 = call i32 @stack_size(ptr %r233)
  %r414 = icmp ne i32 %r413, 0
  br i1 %r414, label %bb81, label %bb82

bb81:                                             ; preds = %bb80
  %r416 = call i32 @stack_pop(ptr %r233)
  %r417 = add i32 %r416, 0
  %r418 = call i32 @stack_pop(ptr %r232)
  %r419 = add i32 %r418, 0
  %r420 = call i32 @stack_pop(ptr %r232)
  %r421 = add i32 %r420, 0
  %r297 = getelementptr [256 x i32], ptr %r232, i32 0, i32 0
  %r422 = call i32 @eval_op(i32 %r417, i32 %r421, i32 %r419)
  call void @stack_push(ptr %r297, i32 %r422)
  br label %bb80

bb82:                                             ; preds = %bb80
  %r415 = call i32 @stack_peek(ptr %r232)
  ret i32 %r415
}

define i32 @main() {
bb83:
  call void @_sysy_starttime(i32 205)
  %r447 = call i32 @getint()
  %r448 = add i32 0, 0
  %r449 = add i32 %r447, 0
  %r450 = call i32 @getch()
  %r451 = call i32 @next_token()
  br label %bb84

bb84:                                             ; preds = %bb85, %bb83
  %r452 = phi i32 [ %r449, %bb83 ], [ %r456, %bb85 ]
  %r453 = icmp ne i32 %r452, 0
  br i1 %r453, label %bb85, label %bb86

bb85:                                             ; preds = %bb84
  %r454 = call i32 @eval()
  call void @putint(i32 %r454)
  call void @putch(i32 10)
  %r455 = sub i32 %r452, 1
  %r456 = add i32 %r455, 0
  br label %bb84

bb86:                                             ; preds = %bb84
  call void @_sysy_stoptime(i32 214)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @before_main() #0 {
  %1 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  br label %2

2:                                                ; preds = %18, %0
  %3 = load i32, ptr %1, align 4
  %4 = icmp slt i32 %3, 1024
  br i1 %4, label %5, label %21

5:                                                ; preds = %2
  %6 = load i32, ptr %1, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [1024 x i32], ptr @_sysy_us, i64 0, i64 %7
  store i32 0, ptr %8, align 4
  %9 = load i32, ptr %1, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [1024 x i32], ptr @_sysy_s, i64 0, i64 %10
  store i32 0, ptr %11, align 4
  %12 = load i32, ptr %1, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [1024 x i32], ptr @_sysy_m, i64 0, i64 %13
  store i32 0, ptr %14, align 4
  %15 = load i32, ptr %1, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [1024 x i32], ptr @_sysy_h, i64 0, i64 %16
  store i32 0, ptr %17, align 4
  br label %18

18:                                               ; preds = %5
  %19 = load i32, ptr %1, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, ptr %1, align 4
  br label %2, !llvm.loop !5

21:                                               ; preds = %2
  store i32 1, ptr @_sysy_idx, align 4
  ret void
}

; Function Attrs: noinline nounwind ssp uwtable(sync)
define internal void @__GLOBAL_init_65535() #1 section "__TEXT,__StaticInit,regular,pure_instructions" {
  %1 = call i32 @__cxa_atexit(ptr @after_main, ptr null, ptr @__dso_handle) #2
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @after_main() #0 {
  %1 = alloca i32, align 4
  store i32 1, ptr %1, align 4
  br label %2

2:                                                ; preds = %63, %0
  %3 = load i32, ptr %1, align 4
  %4 = load i32, ptr @_sysy_idx, align 4
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %6, label %66

6:                                                ; preds = %2
  %7 = load ptr, ptr @__stderrp, align 8
  %8 = load i32, ptr %1, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [1024 x i32], ptr @_sysy_l1, i64 0, i64 %9
  %11 = load i32, ptr %10, align 4
  %12 = load i32, ptr %1, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [1024 x i32], ptr @_sysy_l2, i64 0, i64 %13
  %15 = load i32, ptr %14, align 4
  %16 = load i32, ptr %1, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [1024 x i32], ptr @_sysy_h, i64 0, i64 %17
  %19 = load i32, ptr %18, align 4
  %20 = load i32, ptr %1, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [1024 x i32], ptr @_sysy_m, i64 0, i64 %21
  %23 = load i32, ptr %22, align 4
  %24 = load i32, ptr %1, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [1024 x i32], ptr @_sysy_s, i64 0, i64 %25
  %27 = load i32, ptr %26, align 4
  %28 = load i32, ptr %1, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [1024 x i32], ptr @_sysy_us, i64 0, i64 %29
  %31 = load i32, ptr %30, align 4
  %32 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.5, i32 noundef %11, i32 noundef %15, i32 noundef %19, i32 noundef %23, i32 noundef %27, i32 noundef %31)
  %33 = load i32, ptr %1, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [1024 x i32], ptr @_sysy_us, i64 0, i64 %34
  %36 = load i32, ptr %35, align 4
  %37 = load i32, ptr @_sysy_us, align 4
  %38 = add nsw i32 %37, %36
  store i32 %38, ptr @_sysy_us, align 4
  %39 = load i32, ptr %1, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [1024 x i32], ptr @_sysy_s, i64 0, i64 %40
  %42 = load i32, ptr %41, align 4
  %43 = load i32, ptr @_sysy_s, align 4
  %44 = add nsw i32 %43, %42
  store i32 %44, ptr @_sysy_s, align 4
  %45 = load i32, ptr @_sysy_us, align 4
  %46 = srem i32 %45, 1000000
  store i32 %46, ptr @_sysy_us, align 4
  %47 = load i32, ptr %1, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [1024 x i32], ptr @_sysy_m, i64 0, i64 %48
  %50 = load i32, ptr %49, align 4
  %51 = load i32, ptr @_sysy_m, align 4
  %52 = add nsw i32 %51, %50
  store i32 %52, ptr @_sysy_m, align 4
  %53 = load i32, ptr @_sysy_s, align 4
  %54 = srem i32 %53, 60
  store i32 %54, ptr @_sysy_s, align 4
  %55 = load i32, ptr %1, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [1024 x i32], ptr @_sysy_h, i64 0, i64 %56
  %58 = load i32, ptr %57, align 4
  %59 = load i32, ptr @_sysy_h, align 4
  %60 = add nsw i32 %59, %58
  store i32 %60, ptr @_sysy_h, align 4
  %61 = load i32, ptr @_sysy_m, align 4
  %62 = srem i32 %61, 60
  store i32 %62, ptr @_sysy_m, align 4
  br label %63

63:                                               ; preds = %6
  %64 = load i32, ptr %1, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, ptr %1, align 4
  br label %2, !llvm.loop !7

66:                                               ; preds = %2
  %67 = load ptr, ptr @__stderrp, align 8
  %68 = load i32, ptr @_sysy_h, align 4
  %69 = load i32, ptr @_sysy_m, align 4
  %70 = load i32, ptr @_sysy_s, align 4
  %71 = load i32, ptr @_sysy_us, align 4
  %72 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %67, ptr noundef @.str.6, i32 noundef %68, i32 noundef %69, i32 noundef %70, i32 noundef %71)
  ret void
}

; Function Attrs: nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) #2

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #3

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @getint() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (ptr, ...) @scanf(ptr noundef @.str, ptr noundef %1)
  %3 = load i32, ptr %1, align 4
  ret i32 %3
}

declare i32 @scanf(ptr noundef, ...) #3

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @getch() #0 {
  %1 = alloca i8, align 1
  %2 = call i32 (ptr, ...) @scanf(ptr noundef @.str.1, ptr noundef %1)
  %3 = load i8, ptr %1, align 1
  %4 = sext i8 %3 to i32
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @putint(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %3 = load i32, ptr %2, align 4
  %4 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %3)
  ret void
}

declare i32 @printf(ptr noundef, ...) #3

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @putch(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %3 = load i32, ptr %2, align 4
  %4 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %3)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @putarray(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store ptr %1, ptr %4, align 8
  %6 = load i32, ptr %3, align 4
  %7 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %6)
  store i32 0, ptr %5, align 4
  br label %8

8:                                                ; preds = %19, %2
  %9 = load i32, ptr %5, align 4
  %10 = load i32, ptr %3, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %22

12:                                               ; preds = %8
  %13 = load ptr, ptr %4, align 8
  %14 = load i32, ptr %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, ptr %13, i64 %15
  %17 = load i32, ptr %16, align 4
  %18 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %17)
  br label %19

19:                                               ; preds = %12
  %20 = load i32, ptr %5, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, ptr %5, align 4
  br label %8, !llvm.loop !8

22:                                               ; preds = %8
  %23 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @_sysy_starttime(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %3 = load i32, ptr %2, align 4
  %4 = load i32, ptr @_sysy_idx, align 4
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds [1024 x i32], ptr @_sysy_l1, i64 0, i64 %5
  store i32 %3, ptr %6, align 4
  %7 = call i32 @gettimeofday(ptr noundef @_sysy_start, ptr noundef null)
  ret void
}

declare i32 @gettimeofday(ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @_sysy_stoptime(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %3 = call i32 @gettimeofday(ptr noundef @_sysy_end, ptr noundef null)
  %4 = load i32, ptr %2, align 4
  %5 = load i32, ptr @_sysy_idx, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [1024 x i32], ptr @_sysy_l2, i64 0, i64 %6
  store i32 %4, ptr %7, align 4
  %8 = load i64, ptr @_sysy_end, align 8
  %9 = load i64, ptr @_sysy_start, align 8
  %10 = sub nsw i64 %8, %9
  %11 = mul nsw i64 1000000, %10
  %12 = load i32, ptr getelementptr inbounds (%struct.timeval, ptr @_sysy_end, i32 0, i32 1), align 8
  %13 = sext i32 %12 to i64
  %14 = add nsw i64 %11, %13
  %15 = load i32, ptr getelementptr inbounds (%struct.timeval, ptr @_sysy_start, i32 0, i32 1), align 8
  %16 = sext i32 %15 to i64
  %17 = sub nsw i64 %14, %16
  %18 = load i32, ptr @_sysy_idx, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [1024 x i32], ptr @_sysy_us, i64 0, i64 %19
  %21 = load i32, ptr %20, align 4
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %22, %17
  %24 = trunc i64 %23 to i32
  store i32 %24, ptr %20, align 4
  %25 = load i32, ptr @_sysy_idx, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [1024 x i32], ptr @_sysy_us, i64 0, i64 %26
  %28 = load i32, ptr %27, align 4
  %29 = sdiv i32 %28, 1000000
  %30 = load i32, ptr @_sysy_idx, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [1024 x i32], ptr @_sysy_s, i64 0, i64 %31
  %33 = load i32, ptr %32, align 4
  %34 = add nsw i32 %33, %29
  store i32 %34, ptr %32, align 4
  %35 = load i32, ptr @_sysy_idx, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [1024 x i32], ptr @_sysy_us, i64 0, i64 %36
  %38 = load i32, ptr %37, align 4
  %39 = srem i32 %38, 1000000
  store i32 %39, ptr %37, align 4
  %40 = load i32, ptr @_sysy_idx, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [1024 x i32], ptr @_sysy_s, i64 0, i64 %41
  %43 = load i32, ptr %42, align 4
  %44 = sdiv i32 %43, 60
  %45 = load i32, ptr @_sysy_idx, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [1024 x i32], ptr @_sysy_m, i64 0, i64 %46
  %48 = load i32, ptr %47, align 4
  %49 = add nsw i32 %48, %44
  store i32 %49, ptr %47, align 4
  %50 = load i32, ptr @_sysy_idx, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [1024 x i32], ptr @_sysy_s, i64 0, i64 %51
  %53 = load i32, ptr %52, align 4
  %54 = srem i32 %53, 60
  store i32 %54, ptr %52, align 4
  %55 = load i32, ptr @_sysy_idx, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [1024 x i32], ptr @_sysy_m, i64 0, i64 %56
  %58 = load i32, ptr %57, align 4
  %59 = sdiv i32 %58, 60
  %60 = load i32, ptr @_sysy_idx, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [1024 x i32], ptr @_sysy_h, i64 0, i64 %61
  %63 = load i32, ptr %62, align 4
  %64 = add nsw i32 %63, %59
  store i32 %64, ptr %62, align 4
  %65 = load i32, ptr @_sysy_idx, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [1024 x i32], ptr @_sysy_m, i64 0, i64 %66
  %68 = load i32, ptr %67, align 4
  %69 = srem i32 %68, 60
  store i32 %69, ptr %67, align 4
  %70 = load i32, ptr @_sysy_idx, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, ptr @_sysy_idx, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a,+zcm,+zcz" }
attributes #1 = { noinline nounwind ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a,+zcm,+zcz" }
attributes #2 = { nounwind }
attributes #3 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a,+zcm,+zcz" }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4}

!0 = !{!"Homebrew clang version 17.0.6"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
