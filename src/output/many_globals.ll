; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.timeval = type { i64, i32 }

@a0 = global i32 0
@a1 = global i32 0
@a2 = global i32 0
@a3 = global i32 0
@a4 = global i32 0
@a5 = global i32 0
@a6 = global i32 0
@a7 = global i32 0
@a8 = global i32 0
@a9 = global i32 0
@a10 = global i32 0
@a11 = global i32 0
@a12 = global i32 0
@a13 = global i32 0
@a14 = global i32 0
@a15 = global i32 0
@a16 = global i32 0
@a17 = global i32 0
@a18 = global i32 0
@a19 = global i32 0
@a20 = global i32 0
@a21 = global i32 0
@a22 = global i32 0
@a23 = global i32 0
@a24 = global i32 0
@a25 = global i32 0
@a26 = global i32 0
@a27 = global i32 0
@a28 = global i32 0
@a29 = global i32 0
@a30 = global i32 0
@a31 = global i32 0
@a32 = global i32 0
@a33 = global i32 0
@a34 = global i32 0
@a35 = global i32 0
@a36 = global i32 0
@a37 = global i32 0
@a38 = global i32 0
@a39 = global i32 0
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

define i32 @testParam8(i32 %r100, i32 %r102, i32 %r104, i32 %r106, i32 %r108, i32 %r110, i32 %r112, i32 %r114) {
bb2:
  %r391 = add i32 0, 0
  %r392 = add i32 %r100, 0
  %r393 = add i32 0, 0
  %r394 = add i32 %r102, 0
  %r395 = add i32 0, 0
  %r396 = add i32 %r104, 0
  %r397 = add i32 0, 0
  %r398 = add i32 %r106, 0
  %r399 = add i32 0, 0
  %r400 = add i32 %r108, 0
  %r401 = add i32 0, 0
  %r402 = add i32 %r110, 0
  %r403 = add i32 0, 0
  %r404 = add i32 %r112, 0
  %r405 = add i32 0, 0
  %r406 = add i32 %r114, 0
  br label %bb1

bb1:                                              ; preds = %bb2
  %r407 = add i32 %r392, %r394
  %r408 = add i32 %r407, %r396
  %r409 = add i32 %r408, %r398
  %r410 = add i32 %r409, %r400
  %r411 = add i32 %r410, %r402
  %r412 = add i32 %r411, %r404
  %r413 = add i32 %r412, %r406
  ret i32 %r413
}

define i32 @testParam16(i32 %r131, i32 %r133, i32 %r135, i32 %r137, i32 %r139, i32 %r141, i32 %r143, i32 %r145, i32 %r147, i32 %r149, i32 %r151, i32 %r153, i32 %r155, i32 %r157, i32 %r159, i32 %r161) {
bb4:
  %r430 = add i32 0, 0
  %r431 = add i32 %r131, 0
  %r432 = add i32 0, 0
  %r433 = add i32 %r133, 0
  %r434 = add i32 0, 0
  %r435 = add i32 %r135, 0
  %r436 = add i32 0, 0
  %r437 = add i32 %r137, 0
  %r438 = add i32 0, 0
  %r439 = add i32 %r139, 0
  %r440 = add i32 0, 0
  %r441 = add i32 %r141, 0
  %r442 = add i32 0, 0
  %r443 = add i32 %r143, 0
  %r444 = add i32 0, 0
  %r445 = add i32 %r145, 0
  %r446 = add i32 0, 0
  %r447 = add i32 %r147, 0
  %r448 = add i32 0, 0
  %r449 = add i32 %r149, 0
  %r450 = add i32 0, 0
  %r451 = add i32 %r151, 0
  %r452 = add i32 0, 0
  %r453 = add i32 %r153, 0
  %r454 = add i32 0, 0
  %r455 = add i32 %r155, 0
  %r456 = add i32 0, 0
  %r457 = add i32 %r157, 0
  %r458 = add i32 0, 0
  %r459 = add i32 %r159, 0
  %r460 = add i32 0, 0
  %r461 = add i32 %r161, 0
  br label %bb3

bb3:                                              ; preds = %bb4
  %r462 = add i32 %r431, %r433
  %r463 = add i32 %r462, %r435
  %r464 = sub i32 %r463, %r437
  %r465 = sub i32 %r464, %r439
  %r466 = sub i32 %r465, %r441
  %r467 = sub i32 %r466, %r443
  %r468 = sub i32 %r467, %r445
  %r469 = add i32 %r468, %r447
  %r470 = add i32 %r469, %r449
  %r471 = add i32 %r470, %r451
  %r472 = add i32 %r471, %r453
  %r473 = add i32 %r472, %r455
  %r474 = add i32 %r473, %r457
  %r475 = add i32 %r474, %r459
  %r476 = add i32 %r475, %r461
  ret i32 %r476
}

define i32 @testParam32(i32 %r194, i32 %r196, i32 %r198, i32 %r200, i32 %r202, i32 %r204, i32 %r206, i32 %r208, i32 %r210, i32 %r212, i32 %r214, i32 %r216, i32 %r218, i32 %r220, i32 %r222, i32 %r224, i32 %r226, i32 %r228, i32 %r230, i32 %r232, i32 %r234, i32 %r236, i32 %r238, i32 %r240, i32 %r242, i32 %r244, i32 %r246, i32 %r248, i32 %r250, i32 %r252, i32 %r254, i32 %r256) {
bb6:
  %r509 = add i32 0, 0
  %r510 = add i32 %r194, 0
  %r511 = add i32 0, 0
  %r512 = add i32 %r196, 0
  %r513 = add i32 0, 0
  %r514 = add i32 %r198, 0
  %r515 = add i32 0, 0
  %r516 = add i32 %r200, 0
  %r517 = add i32 0, 0
  %r518 = add i32 %r202, 0
  %r519 = add i32 0, 0
  %r520 = add i32 %r204, 0
  %r521 = add i32 0, 0
  %r522 = add i32 %r206, 0
  %r523 = add i32 0, 0
  %r524 = add i32 %r208, 0
  %r525 = add i32 0, 0
  %r526 = add i32 %r210, 0
  %r527 = add i32 0, 0
  %r528 = add i32 %r212, 0
  %r529 = add i32 0, 0
  %r530 = add i32 %r214, 0
  %r531 = add i32 0, 0
  %r532 = add i32 %r216, 0
  %r533 = add i32 0, 0
  %r534 = add i32 %r218, 0
  %r535 = add i32 0, 0
  %r536 = add i32 %r220, 0
  %r537 = add i32 0, 0
  %r538 = add i32 %r222, 0
  %r539 = add i32 0, 0
  %r540 = add i32 %r224, 0
  %r541 = add i32 0, 0
  %r542 = add i32 %r226, 0
  %r543 = add i32 0, 0
  %r544 = add i32 %r228, 0
  %r545 = add i32 0, 0
  %r546 = add i32 %r230, 0
  %r547 = add i32 0, 0
  %r548 = add i32 %r232, 0
  %r549 = add i32 0, 0
  %r550 = add i32 %r234, 0
  %r551 = add i32 0, 0
  %r552 = add i32 %r236, 0
  %r553 = add i32 0, 0
  %r554 = add i32 %r238, 0
  %r555 = add i32 0, 0
  %r556 = add i32 %r240, 0
  %r557 = add i32 0, 0
  %r558 = add i32 %r242, 0
  %r559 = add i32 0, 0
  %r560 = add i32 %r244, 0
  %r561 = add i32 0, 0
  %r562 = add i32 %r246, 0
  %r563 = add i32 0, 0
  %r564 = add i32 %r248, 0
  %r565 = add i32 0, 0
  %r566 = add i32 %r250, 0
  %r567 = add i32 0, 0
  %r568 = add i32 %r252, 0
  %r569 = add i32 0, 0
  %r570 = add i32 %r254, 0
  %r571 = add i32 0, 0
  %r572 = add i32 %r256, 0
  br label %bb5

bb5:                                              ; preds = %bb6
  %r573 = add i32 %r510, %r512
  %r574 = add i32 %r573, %r514
  %r575 = add i32 %r574, %r516
  %r576 = add i32 %r575, %r518
  %r577 = add i32 %r576, %r520
  %r578 = add i32 %r577, %r522
  %r579 = add i32 %r578, %r524
  %r580 = add i32 %r579, %r526
  %r581 = add i32 %r580, %r528
  %r582 = add i32 %r581, %r530
  %r583 = add i32 %r582, %r532
  %r584 = add i32 %r583, %r534
  %r585 = add i32 %r584, %r536
  %r586 = add i32 %r585, %r538
  %r587 = add i32 %r586, %r540
  %r588 = add i32 %r587, %r542
  %r589 = add i32 %r588, %r544
  %r590 = sub i32 %r589, %r546
  %r591 = sub i32 %r590, %r548
  %r592 = sub i32 %r591, %r550
  %r593 = sub i32 %r592, %r552
  %r594 = sub i32 %r593, %r554
  %r595 = add i32 %r594, %r556
  %r596 = add i32 %r595, %r558
  %r597 = add i32 %r596, %r560
  %r598 = add i32 %r597, %r562
  %r599 = add i32 %r598, %r564
  %r600 = add i32 %r599, %r566
  %r601 = add i32 %r600, %r568
  %r602 = add i32 %r601, %r570
  %r603 = add i32 %r602, %r572
  ret i32 %r603
}

define i32 @main() {
bb7:
  call void @_sysy_starttime(i32 97)
  store i32 0, ptr @a0, align 4
  store i32 1, ptr @a1, align 4
  store i32 2, ptr @a2, align 4
  store i32 3, ptr @a3, align 4
  store i32 4, ptr @a4, align 4
  store i32 5, ptr @a5, align 4
  store i32 6, ptr @a6, align 4
  store i32 7, ptr @a7, align 4
  store i32 8, ptr @a8, align 4
  store i32 9, ptr @a9, align 4
  store i32 0, ptr @a10, align 4
  store i32 1, ptr @a11, align 4
  store i32 2, ptr @a12, align 4
  store i32 3, ptr @a13, align 4
  store i32 4, ptr @a14, align 4
  store i32 5, ptr @a15, align 4
  store i32 6, ptr @a16, align 4
  store i32 7, ptr @a17, align 4
  store i32 8, ptr @a18, align 4
  store i32 9, ptr @a19, align 4
  store i32 0, ptr @a20, align 4
  store i32 1, ptr @a21, align 4
  store i32 2, ptr @a22, align 4
  store i32 3, ptr @a23, align 4
  store i32 4, ptr @a24, align 4
  store i32 5, ptr @a25, align 4
  store i32 6, ptr @a26, align 4
  store i32 7, ptr @a27, align 4
  store i32 8, ptr @a28, align 4
  store i32 9, ptr @a29, align 4
  store i32 0, ptr @a30, align 4
  store i32 1, ptr @a31, align 4
  store i32 4, ptr @a32, align 4
  store i32 5, ptr @a33, align 4
  store i32 6, ptr @a34, align 4
  store i32 7, ptr @a35, align 4
  store i32 8, ptr @a36, align 4
  store i32 9, ptr @a37, align 4
  store i32 0, ptr @a38, align 4
  store i32 1, ptr @a39, align 4
  %r321 = load i32, ptr @a0, align 4
  %r322 = load i32, ptr @a1, align 4
  %r323 = load i32, ptr @a2, align 4
  %r324 = load i32, ptr @a3, align 4
  %r325 = load i32, ptr @a4, align 4
  %r326 = load i32, ptr @a5, align 4
  %r327 = load i32, ptr @a6, align 4
  %r328 = load i32, ptr @a7, align 4
  %r604 = call i32 @testParam8(i32 %r321, i32 %r322, i32 %r323, i32 %r324, i32 %r325, i32 %r326, i32 %r327, i32 %r328)
  store i32 %r604, ptr @a0, align 4
  %r330 = load i32, ptr @a0, align 4
  call void @putint(i32 %r330)
  %r331 = load i32, ptr @a32, align 4
  %r332 = load i32, ptr @a33, align 4
  %r333 = load i32, ptr @a34, align 4
  %r334 = load i32, ptr @a35, align 4
  %r335 = load i32, ptr @a36, align 4
  %r336 = load i32, ptr @a37, align 4
  %r337 = load i32, ptr @a38, align 4
  %r338 = load i32, ptr @a39, align 4
  %r339 = load i32, ptr @a8, align 4
  %r340 = load i32, ptr @a9, align 4
  %r341 = load i32, ptr @a10, align 4
  %r342 = load i32, ptr @a11, align 4
  %r343 = load i32, ptr @a12, align 4
  %r344 = load i32, ptr @a13, align 4
  %r345 = load i32, ptr @a14, align 4
  %r346 = load i32, ptr @a15, align 4
  %r605 = call i32 @testParam16(i32 %r331, i32 %r332, i32 %r333, i32 %r334, i32 %r335, i32 %r336, i32 %r337, i32 %r338, i32 %r339, i32 %r340, i32 %r341, i32 %r342, i32 %r343, i32 %r344, i32 %r345, i32 %r346)
  store i32 %r605, ptr @a0, align 4
  %r348 = load i32, ptr @a0, align 4
  call void @putint(i32 %r348)
  %r349 = load i32, ptr @a0, align 4
  %r350 = load i32, ptr @a1, align 4
  %r351 = load i32, ptr @a2, align 4
  %r352 = load i32, ptr @a3, align 4
  %r353 = load i32, ptr @a4, align 4
  %r354 = load i32, ptr @a5, align 4
  %r355 = load i32, ptr @a6, align 4
  %r356 = load i32, ptr @a7, align 4
  %r357 = load i32, ptr @a8, align 4
  %r358 = load i32, ptr @a9, align 4
  %r359 = load i32, ptr @a10, align 4
  %r360 = load i32, ptr @a11, align 4
  %r361 = load i32, ptr @a12, align 4
  %r362 = load i32, ptr @a13, align 4
  %r363 = load i32, ptr @a14, align 4
  %r364 = load i32, ptr @a15, align 4
  %r365 = load i32, ptr @a16, align 4
  %r366 = load i32, ptr @a17, align 4
  %r367 = load i32, ptr @a18, align 4
  %r368 = load i32, ptr @a19, align 4
  %r369 = load i32, ptr @a20, align 4
  %r370 = load i32, ptr @a21, align 4
  %r371 = load i32, ptr @a22, align 4
  %r372 = load i32, ptr @a23, align 4
  %r373 = load i32, ptr @a24, align 4
  %r374 = load i32, ptr @a25, align 4
  %r375 = load i32, ptr @a26, align 4
  %r376 = load i32, ptr @a27, align 4
  %r377 = load i32, ptr @a28, align 4
  %r378 = load i32, ptr @a29, align 4
  %r379 = load i32, ptr @a30, align 4
  %r380 = load i32, ptr @a31, align 4
  %r606 = call i32 @testParam32(i32 %r349, i32 %r350, i32 %r351, i32 %r352, i32 %r353, i32 %r354, i32 %r355, i32 %r356, i32 %r357, i32 %r358, i32 %r359, i32 %r360, i32 %r361, i32 %r362, i32 %r363, i32 %r364, i32 %r365, i32 %r366, i32 %r367, i32 %r368, i32 %r369, i32 %r370, i32 %r371, i32 %r372, i32 %r373, i32 %r374, i32 %r375, i32 %r376, i32 %r377, i32 %r378, i32 %r379, i32 %r380)
  store i32 %r606, ptr @a0, align 4
  %r382 = load i32, ptr @a0, align 4
  call void @putint(i32 %r382)
  call void @_sysy_stoptime(i32 117)
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
