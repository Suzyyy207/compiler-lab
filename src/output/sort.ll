; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.timeval = type { i64, i32 }

@base = global i32 16
@a = global [30000010 x i32] zeroinitializer
@ans = global i32 0
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

define i32 @getMaxNum(i32 %r100, ptr %r102) {
bb2:
  %r382 = add i32 0, 0
  %r383 = add i32 0, 0
  %r384 = add i32 0, 0
  %r385 = add i32 %r100, 0
  br label %bb1

bb1:                                              ; preds = %bb2
  %r386 = add i32 0, 0
  %r387 = add i32 0, 0
  br label %bb3

bb3:                                              ; preds = %bb8, %bb1
  %r388 = phi i32 [ %r387, %bb1 ], [ %r394, %bb8 ]
  %r389 = phi i32 [ %r386, %bb1 ], [ %r392, %bb8 ]
  %r390 = icmp slt i32 %r388, %r385
  br i1 %r390, label %bb4, label %bb5

bb4:                                              ; preds = %bb3
  %r109 = getelementptr i32, ptr %r102, i32 %r388
  %r110 = load i32, ptr %r109, align 4
  %r391 = icmp sgt i32 %r110, %r389
  br i1 %r391, label %bb6, label %bb7

bb6:                                              ; preds = %bb4
  %r114 = getelementptr i32, ptr %r102, i32 %r388
  %r115 = load i32, ptr %r114, align 4
  %r395 = add i32 %r115, 0
  br label %bb8

bb7:                                              ; preds = %bb4
  br label %bb8

bb8:                                              ; preds = %bb7, %bb6
  %r392 = phi i32 [ %r395, %bb6 ], [ %r389, %bb7 ]
  %r393 = add i32 %r388, 1
  %r394 = add i32 %r393, 0
  br label %bb3

bb5:                                              ; preds = %bb3
  ret i32 %r389
}

define i32 @getNumPos(i32 %r119, i32 %r121) {
bb10:
  %r400 = add i32 0, 0
  %r401 = add i32 0, 0
  %r402 = add i32 0, 0
  %r403 = add i32 %r119, 0
  %r404 = add i32 0, 0
  %r405 = add i32 %r121, 0
  br label %bb9

bb9:                                              ; preds = %bb10
  %r406 = add i32 1, 0
  %r407 = add i32 0, 0
  br label %bb11

bb11:                                             ; preds = %bb12, %bb9
  %r408 = phi i32 [ %r403, %bb9 ], [ %r415, %bb12 ]
  %r409 = phi i32 [ %r407, %bb9 ], [ %r417, %bb12 ]
  %r410 = icmp slt i32 %r409, %r405
  br i1 %r410, label %bb12, label %bb13

bb12:                                             ; preds = %bb11
  %r129 = load i32, ptr @base, align 4
  %r414 = sdiv i32 %r408, %r129
  %r415 = add i32 %r414, 0
  %r416 = add i32 %r409, 1
  %r417 = add i32 %r416, 0
  br label %bb11

bb13:                                             ; preds = %bb11
  %r135 = load i32, ptr @base, align 4
  %r411 = sdiv i32 %r408, %r135
  %r137 = load i32, ptr @base, align 4
  %r412 = mul i32 %r411, %r137
  %r413 = sub i32 %r408, %r412
  ret i32 %r413
}

define void @radixSort(i32 %r140, ptr %r142, i32 %r143, i32 %r145) {
bb15:
  %r433 = add i32 0, 0
  %r434 = add i32 0, 0
  %r435 = add i32 0, 0
  %r436 = add i32 0, 0
  %r437 = add i32 0, 0
  %r438 = add i32 0, 0
  %r439 = add i32 0, 0
  %r440 = add i32 0, 0
  %r441 = add i32 0, 0
  %r442 = add i32 0, 0
  %r443 = add i32 0, 0
  %r444 = add i32 0, 0
  %r149 = alloca [16 x i32], align 4
  %r148 = alloca [16 x i32], align 4
  %r147 = alloca [16 x i32], align 4
  %r445 = add i32 0, 0
  %r446 = add i32 %r140, 0
  %r447 = add i32 0, 0
  %r448 = add i32 %r143, 0
  %r449 = add i32 0, 0
  %r450 = add i32 %r145, 0
  br label %bb14

bb14:                                             ; preds = %bb15
  %r451 = add i32 0, 0
  br label %bb16

bb16:                                             ; preds = %bb17, %bb14
  %r452 = phi i32 [ %r451, %bb14 ], [ %r516, %bb17 ]
  %r152 = load i32, ptr @base, align 4
  %r453 = icmp slt i32 %r452, %r152
  br i1 %r453, label %bb17, label %bb18

bb17:                                             ; preds = %bb16
  %r155 = getelementptr [16 x i32], ptr %r147, i32 0, i32 %r452
  store i32 0, ptr %r155, align 4
  %r157 = getelementptr [16 x i32], ptr %r148, i32 0, i32 %r452
  store i32 0, ptr %r157, align 4
  %r159 = getelementptr [16 x i32], ptr %r149, i32 0, i32 %r452
  store i32 0, ptr %r159, align 4
  %r515 = add i32 %r452, 1
  %r516 = add i32 %r515, 0
  br label %bb16

bb18:                                             ; preds = %bb16
  %r454 = sub i32 0, 1
  %r455 = icmp eq i32 %r446, %r454
  br i1 %r455, label %bb19, label %bb22

bb22:                                             ; preds = %bb18
  %r456 = add i32 %r448, 1
  %r457 = icmp sge i32 %r456, %r450
  br i1 %r457, label %bb19, label %bb20

bb19:                                             ; preds = %bb22, %bb18
  ret void

bb20:                                             ; preds = %bb22
  br label %bb21

bb21:                                             ; preds = %bb20
  %r458 = add i32 %r448, 0
  br label %bb23

bb23:                                             ; preds = %bb24, %bb21
  %r459 = phi i32 [ %r458, %bb21 ], [ %r514, %bb24 ]
  %r460 = icmp slt i32 %r459, %r450
  br i1 %r460, label %bb24, label %bb25

bb24:                                             ; preds = %bb23
  %r177 = getelementptr i32, ptr %r142, i32 %r459
  %r178 = load i32, ptr %r177, align 4
  %r508 = call i32 @getNumPos(i32 %r178, i32 %r446)
  %r509 = add i32 %r508, 0
  %r183 = getelementptr i32, ptr %r142, i32 %r459
  %r184 = load i32, ptr %r183, align 4
  %r510 = call i32 @getNumPos(i32 %r184, i32 %r446)
  %r511 = add i32 %r510, 0
  %r188 = getelementptr [16 x i32], ptr %r149, i32 0, i32 %r509
  %r189 = load i32, ptr %r188, align 4
  %r512 = add i32 %r189, 1
  %r192 = getelementptr [16 x i32], ptr %r149, i32 0, i32 %r511
  store i32 %r512, ptr %r192, align 4
  %r513 = add i32 %r459, 1
  %r514 = add i32 %r513, 0
  br label %bb23

bb25:                                             ; preds = %bb23
  %r196 = getelementptr [16 x i32], ptr %r147, i32 0, i32 0
  store i32 %r448, ptr %r196, align 4
  %r198 = getelementptr [16 x i32], ptr %r149, i32 0, i32 0
  %r199 = load i32, ptr %r198, align 4
  %r461 = add i32 %r448, %r199
  %r201 = getelementptr [16 x i32], ptr %r148, i32 0, i32 0
  store i32 %r461, ptr %r201, align 4
  %r462 = add i32 1, 0
  br label %bb26

bb26:                                             ; preds = %bb27, %bb25
  %r463 = phi i32 [ %r462, %bb25 ], [ %r507, %bb27 ]
  %r203 = load i32, ptr @base, align 4
  %r464 = icmp slt i32 %r463, %r203
  br i1 %r464, label %bb27, label %bb28

bb27:                                             ; preds = %bb26
  %r503 = sub i32 %r463, 1
  %r504 = add i32 %r503, 0
  %r209 = getelementptr [16 x i32], ptr %r148, i32 0, i32 %r504
  %r210 = load i32, ptr %r209, align 4
  %r212 = getelementptr [16 x i32], ptr %r147, i32 0, i32 %r463
  store i32 %r210, ptr %r212, align 4
  %r214 = getelementptr [16 x i32], ptr %r147, i32 0, i32 %r463
  %r215 = load i32, ptr %r214, align 4
  %r217 = getelementptr [16 x i32], ptr %r149, i32 0, i32 %r463
  %r218 = load i32, ptr %r217, align 4
  %r505 = add i32 %r215, %r218
  %r221 = getelementptr [16 x i32], ptr %r148, i32 0, i32 %r463
  store i32 %r505, ptr %r221, align 4
  %r506 = add i32 %r463, 1
  %r507 = add i32 %r506, 0
  br label %bb26

bb28:                                             ; preds = %bb26
  %r465 = add i32 0, 0
  br label %bb29

bb29:                                             ; preds = %bb34, %bb28
  %r466 = phi i32 [ %r465, %bb28 ], [ %r482, %bb34 ]
  %r225 = load i32, ptr @base, align 4
  %r467 = icmp slt i32 %r466, %r225
  br i1 %r467, label %bb30, label %bb31

bb30:                                             ; preds = %bb29
  br label %bb32

bb32:                                             ; preds = %bb37, %bb30
  %r228 = getelementptr [16 x i32], ptr %r147, i32 0, i32 %r466
  %r229 = load i32, ptr %r228, align 4
  %r231 = getelementptr [16 x i32], ptr %r148, i32 0, i32 %r466
  %r232 = load i32, ptr %r231, align 4
  %r480 = icmp slt i32 %r229, %r232
  br i1 %r480, label %bb33, label %bb34

bb33:                                             ; preds = %bb32
  %r236 = getelementptr [16 x i32], ptr %r147, i32 0, i32 %r466
  %r237 = load i32, ptr %r236, align 4
  %r483 = add i32 %r237, 0
  %r240 = getelementptr i32, ptr %r142, i32 %r483
  %r241 = load i32, ptr %r240, align 4
  %r484 = add i32 %r241, 0
  br label %bb35

bb35:                                             ; preds = %bb36, %bb33
  %r485 = phi i32 [ %r484, %bb33 ], [ %r494, %bb36 ]
  %r486 = call i32 @getNumPos(i32 %r485, i32 %r446)
  %r487 = icmp ne i32 %r486, %r466
  br i1 %r487, label %bb36, label %bb37

bb36:                                             ; preds = %bb35
  %r490 = add i32 %r485, 0
  %r491 = call i32 @getNumPos(i32 %r490, i32 %r446)
  %r492 = add i32 %r491, 0
  %r254 = getelementptr [16 x i32], ptr %r147, i32 0, i32 %r492
  %r255 = load i32, ptr %r254, align 4
  %r493 = add i32 %r255, 0
  %r257 = getelementptr i32, ptr %r142, i32 %r493
  %r258 = load i32, ptr %r257, align 4
  %r494 = add i32 %r258, 0
  %r495 = call i32 @getNumPos(i32 %r490, i32 %r446)
  %r496 = add i32 %r495, 0
  %r263 = getelementptr [16 x i32], ptr %r147, i32 0, i32 %r496
  %r264 = load i32, ptr %r263, align 4
  %r497 = add i32 %r264, 0
  %r267 = getelementptr i32, ptr %r142, i32 %r497
  store i32 %r490, ptr %r267, align 4
  %r498 = call i32 @getNumPos(i32 %r490, i32 %r446)
  %r499 = add i32 %r498, 0
  %r500 = call i32 @getNumPos(i32 %r490, i32 %r446)
  %r501 = add i32 %r500, 0
  %r276 = getelementptr [16 x i32], ptr %r147, i32 0, i32 %r499
  %r277 = load i32, ptr %r276, align 4
  %r502 = add i32 %r277, 1
  %r280 = getelementptr [16 x i32], ptr %r147, i32 0, i32 %r501
  store i32 %r502, ptr %r280, align 4
  br label %bb35

bb37:                                             ; preds = %bb35
  %r283 = getelementptr [16 x i32], ptr %r147, i32 0, i32 %r466
  %r284 = load i32, ptr %r283, align 4
  %r488 = add i32 %r284, 0
  %r287 = getelementptr i32, ptr %r142, i32 %r488
  store i32 %r485, ptr %r287, align 4
  %r289 = getelementptr [16 x i32], ptr %r147, i32 0, i32 %r466
  %r290 = load i32, ptr %r289, align 4
  %r489 = add i32 %r290, 1
  %r293 = getelementptr [16 x i32], ptr %r147, i32 0, i32 %r466
  store i32 %r489, ptr %r293, align 4
  br label %bb32

bb34:                                             ; preds = %bb32
  %r481 = add i32 %r466, 1
  %r482 = add i32 %r481, 0
  br label %bb29

bb31:                                             ; preds = %bb29
  %r468 = add i32 %r448, 0
  %r298 = getelementptr [16 x i32], ptr %r147, i32 0, i32 0
  store i32 %r448, ptr %r298, align 4
  %r300 = getelementptr [16 x i32], ptr %r149, i32 0, i32 0
  %r301 = load i32, ptr %r300, align 4
  %r469 = add i32 %r448, %r301
  %r303 = getelementptr [16 x i32], ptr %r148, i32 0, i32 0
  store i32 %r469, ptr %r303, align 4
  %r470 = add i32 0, 0
  br label %bb38

bb38:                                             ; preds = %bb43, %bb31
  %r471 = phi i32 [ %r470, %bb31 ], [ %r476, %bb43 ]
  %r305 = load i32, ptr @base, align 4
  %r472 = icmp slt i32 %r471, %r305
  br i1 %r472, label %bb39, label %bb40

bb39:                                             ; preds = %bb38
  %r473 = icmp sgt i32 %r471, 0
  br i1 %r473, label %bb41, label %bb42

bb41:                                             ; preds = %bb39
  %r477 = sub i32 %r471, 1
  %r478 = add i32 %r477, 0
  %r313 = getelementptr [16 x i32], ptr %r148, i32 0, i32 %r478
  %r314 = load i32, ptr %r313, align 4
  %r316 = getelementptr [16 x i32], ptr %r147, i32 0, i32 %r471
  store i32 %r314, ptr %r316, align 4
  %r318 = getelementptr [16 x i32], ptr %r147, i32 0, i32 %r471
  %r319 = load i32, ptr %r318, align 4
  %r321 = getelementptr [16 x i32], ptr %r149, i32 0, i32 %r471
  %r322 = load i32, ptr %r321, align 4
  %r479 = add i32 %r319, %r322
  %r325 = getelementptr [16 x i32], ptr %r148, i32 0, i32 %r471
  store i32 %r479, ptr %r325, align 4
  br label %bb43

bb42:                                             ; preds = %bb39
  br label %bb43

bb43:                                             ; preds = %bb42, %bb41
  %r474 = sub i32 %r446, 1
  %r328 = getelementptr [30000010 x i32], ptr @a, i32 0, i32 0
  %r330 = getelementptr [16 x i32], ptr %r147, i32 0, i32 %r471
  %r331 = load i32, ptr %r330, align 4
  %r333 = getelementptr [16 x i32], ptr %r148, i32 0, i32 %r471
  %r334 = load i32, ptr %r333, align 4
  call void @radixSort(i32 %r474, ptr %r328, i32 %r331, i32 %r334)
  %r475 = add i32 %r471, 1
  %r476 = add i32 %r475, 0
  br label %bb38

bb40:                                             ; preds = %bb38
  ret void
}

define i32 @main() {
bb44:
  %r520 = add i32 0, 0
  %r521 = call i32 @getint()
  %r522 = add i32 0, 0
  %r523 = add i32 %r521, 0
  %r524 = add i32 0, 0
  %r525 = add i32 0, 0
  br label %bb45

bb45:                                             ; preds = %bb46, %bb44
  %r526 = phi i32 [ %r525, %bb44 ], [ %r544, %bb46 ]
  %r527 = icmp slt i32 %r526, %r523
  br i1 %r527, label %bb46, label %bb47

bb46:                                             ; preds = %bb45
  %r542 = call i32 @getint()
  %r345 = getelementptr [30000010 x i32], ptr @a, i32 0, i32 %r526
  store i32 %r542, ptr %r345, align 4
  %r543 = add i32 %r526, 1
  %r544 = add i32 %r543, 0
  br label %bb45

bb47:                                             ; preds = %bb45
  call void @_sysy_starttime(i32 97)
  %r348 = getelementptr [30000010 x i32], ptr @a, i32 0, i32 0
  call void @radixSort(i32 8, ptr %r348, i32 0, i32 %r523)
  %r528 = add i32 0, 0
  br label %bb48

bb48:                                             ; preds = %bb49, %bb47
  %r529 = phi i32 [ %r528, %bb47 ], [ %r541, %bb49 ]
  %r530 = icmp slt i32 %r529, %r523
  br i1 %r530, label %bb49, label %bb50

bb49:                                             ; preds = %bb48
  %r355 = load i32, ptr @ans, align 4
  %r358 = getelementptr [30000010 x i32], ptr @a, i32 0, i32 %r529
  %r359 = load i32, ptr %r358, align 4
  %r361 = getelementptr [30000010 x i32], ptr @a, i32 0, i32 %r529
  %r362 = load i32, ptr %r361, align 4
  %r533 = add i32 2, %r529
  %r534 = sdiv i32 %r362, %r533
  %r535 = add i32 2, %r529
  %r536 = mul i32 %r534, %r535
  %r537 = sub i32 %r359, %r536
  %r538 = mul i32 %r529, %r537
  %r539 = add i32 %r355, %r538
  store i32 %r539, ptr @ans, align 4
  %r540 = add i32 %r529, 1
  %r541 = add i32 %r540, 0
  br label %bb48

bb50:                                             ; preds = %bb48
  %r374 = load i32, ptr @ans, align 4
  %r531 = icmp slt i32 %r374, 0
  br i1 %r531, label %bb51, label %bb52

bb51:                                             ; preds = %bb50
  %r376 = load i32, ptr @ans, align 4
  %r532 = sub i32 0, %r376
  store i32 %r532, ptr @ans, align 4
  br label %bb53

bb52:                                             ; preds = %bb50
  br label %bb53

bb53:                                             ; preds = %bb52, %bb51
  call void @_sysy_stoptime(i32 117)
  %r378 = load i32, ptr @ans, align 4
  call void @putint(i32 %r378)
  call void @putch(i32 10)
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
