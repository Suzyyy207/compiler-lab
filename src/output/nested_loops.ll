; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%my_struct_6 = type { [2 x %my_struct_5] }
%my_struct_5 = type { [3 x %my_struct_4] }
%my_struct_4 = type { [4 x %my_struct_3] }
%my_struct_3 = type { [5 x %my_struct_2] }
%my_struct_2 = type { [8 x %my_struct_1] }
%my_struct_1 = type { [7 x i32] }
%struct.timeval = type { i64, i32 }

@arr1 = global [10 x %my_struct_6] zeroinitializer
@arr2 = global [10 x %my_struct_6] zeroinitializer
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

define i32 @loop1(i32 %r100, i32 %r102) {
bb2:
  %r406 = add i32 0, 0
  %r407 = add i32 0, 0
  %r408 = add i32 0, 0
  %r409 = add i32 0, 0
  %r410 = add i32 0, 0
  %r411 = add i32 0, 0
  %r412 = add i32 0, 0
  %r413 = add i32 0, 0
  %r414 = add i32 %r100, 0
  %r415 = add i32 0, 0
  %r416 = add i32 %r102, 0
  br label %bb1

bb1:                                              ; preds = %bb2
  %r417 = add i32 0, 0
  br label %bb3

bb3:                                              ; preds = %bb9, %bb1
  %r418 = phi i32 [ %r417, %bb1 ], [ %r425, %bb9 ]
  %r419 = icmp slt i32 %r418, %r414
  br i1 %r419, label %bb6, label %bb5

bb6:                                              ; preds = %bb3
  %r420 = icmp slt i32 %r418, %r416
  br i1 %r420, label %bb4, label %bb5

bb4:                                              ; preds = %bb6
  %r421 = add i32 0, 0
  br label %bb7

bb7:                                              ; preds = %bb12, %bb4
  %r422 = phi i32 [ %r421, %bb4 ], [ %r430, %bb12 ]
  %r423 = icmp slt i32 %r422, 2
  br i1 %r423, label %bb8, label %bb9

bb8:                                              ; preds = %bb7
  %r426 = add i32 0, 0
  br label %bb10

bb10:                                             ; preds = %bb15, %bb8
  %r427 = phi i32 [ %r426, %bb8 ], [ %r435, %bb15 ]
  %r428 = icmp slt i32 %r427, 3
  br i1 %r428, label %bb11, label %bb12

bb11:                                             ; preds = %bb10
  %r431 = add i32 0, 0
  br label %bb13

bb13:                                             ; preds = %bb18, %bb11
  %r432 = phi i32 [ %r431, %bb11 ], [ %r440, %bb18 ]
  %r433 = icmp slt i32 %r432, 4
  br i1 %r433, label %bb14, label %bb15

bb14:                                             ; preds = %bb13
  %r436 = add i32 0, 0
  br label %bb16

bb16:                                             ; preds = %bb21, %bb14
  %r437 = phi i32 [ %r436, %bb14 ], [ %r445, %bb21 ]
  %r438 = icmp slt i32 %r437, 5
  br i1 %r438, label %bb17, label %bb18

bb17:                                             ; preds = %bb16
  %r441 = add i32 0, 0
  br label %bb19

bb19:                                             ; preds = %bb24, %bb17
  %r442 = phi i32 [ %r441, %bb17 ], [ %r450, %bb24 ]
  %r443 = icmp slt i32 %r442, 6
  br i1 %r443, label %bb20, label %bb21

bb20:                                             ; preds = %bb19
  %r446 = add i32 0, 0
  br label %bb22

bb22:                                             ; preds = %bb23, %bb20
  %r447 = phi i32 [ %r446, %bb20 ], [ %r460, %bb23 ]
  %r448 = icmp slt i32 %r447, 2
  br i1 %r448, label %bb23, label %bb24

bb23:                                             ; preds = %bb22
  %r451 = add i32 %r418, %r422
  %r452 = add i32 %r451, %r427
  %r453 = add i32 %r452, %r432
  %r454 = add i32 %r453, %r437
  %r455 = add i32 %r454, %r442
  %r456 = add i32 %r455, %r447
  %r457 = add i32 %r456, %r414
  %r458 = add i32 %r457, %r416
  %r154 = getelementptr [10 x %my_struct_6], ptr @arr1, i32 0, i32 %r418
  %r155 = getelementptr %my_struct_6, ptr %r154, i32 0, i32 0
  %r156 = getelementptr [2 x %my_struct_5], ptr %r155, i32 0, i32 %r422
  %r157 = getelementptr %my_struct_5, ptr %r156, i32 0, i32 0
  %r158 = getelementptr [3 x %my_struct_4], ptr %r157, i32 0, i32 %r427
  %r159 = getelementptr %my_struct_4, ptr %r158, i32 0, i32 0
  %r160 = getelementptr [4 x %my_struct_3], ptr %r159, i32 0, i32 %r432
  %r161 = getelementptr %my_struct_3, ptr %r160, i32 0, i32 0
  %r162 = getelementptr [5 x %my_struct_2], ptr %r161, i32 0, i32 %r437
  %r163 = getelementptr %my_struct_2, ptr %r162, i32 0, i32 0
  %r164 = getelementptr [8 x %my_struct_1], ptr %r163, i32 0, i32 %r442
  %r165 = getelementptr %my_struct_1, ptr %r164, i32 0, i32 0
  %r166 = getelementptr [7 x i32], ptr %r165, i32 0, i32 %r447
  store i32 %r458, ptr %r166, align 4
  %r459 = add i32 %r447, 1
  %r460 = add i32 %r459, 0
  br label %bb22

bb24:                                             ; preds = %bb22
  %r449 = add i32 %r442, 1
  %r450 = add i32 %r449, 0
  br label %bb19

bb21:                                             ; preds = %bb19
  %r444 = add i32 %r437, 1
  %r445 = add i32 %r444, 0
  br label %bb16

bb18:                                             ; preds = %bb16
  %r439 = add i32 %r432, 1
  %r440 = add i32 %r439, 0
  br label %bb13

bb15:                                             ; preds = %bb13
  %r434 = add i32 %r427, 1
  %r435 = add i32 %r434, 0
  br label %bb10

bb12:                                             ; preds = %bb10
  %r429 = add i32 %r422, 1
  %r430 = add i32 %r429, 0
  br label %bb7

bb9:                                              ; preds = %bb7
  %r424 = add i32 %r418, 1
  %r425 = add i32 %r424, 0
  br label %bb3

bb5:                                              ; preds = %bb6, %bb3
  ret i32 0
}

define i32 @loop2() {
bb25:
  %r468 = add i32 0, 0
  %r469 = add i32 0, 0
  %r470 = add i32 0, 0
  %r471 = add i32 0, 0
  %r472 = add i32 0, 0
  %r473 = add i32 0, 0
  %r474 = add i32 0, 0
  %r475 = add i32 0, 0
  br label %bb26

bb26:                                             ; preds = %bb31, %bb25
  %r476 = phi i32 [ %r475, %bb25 ], [ %r482, %bb31 ]
  %r477 = icmp slt i32 %r476, 10
  br i1 %r477, label %bb27, label %bb28

bb27:                                             ; preds = %bb26
  %r478 = add i32 0, 0
  br label %bb29

bb29:                                             ; preds = %bb34, %bb27
  %r479 = phi i32 [ %r478, %bb27 ], [ %r487, %bb34 ]
  %r480 = icmp slt i32 %r479, 2
  br i1 %r480, label %bb30, label %bb31

bb30:                                             ; preds = %bb29
  %r483 = add i32 0, 0
  br label %bb32

bb32:                                             ; preds = %bb37, %bb30
  %r484 = phi i32 [ %r483, %bb30 ], [ %r492, %bb37 ]
  %r485 = icmp slt i32 %r484, 3
  br i1 %r485, label %bb33, label %bb34

bb33:                                             ; preds = %bb32
  %r488 = add i32 0, 0
  br label %bb35

bb35:                                             ; preds = %bb40, %bb33
  %r489 = phi i32 [ %r488, %bb33 ], [ %r497, %bb40 ]
  %r490 = icmp slt i32 %r489, 2
  br i1 %r490, label %bb36, label %bb37

bb36:                                             ; preds = %bb35
  %r493 = add i32 0, 0
  br label %bb38

bb38:                                             ; preds = %bb43, %bb36
  %r494 = phi i32 [ %r493, %bb36 ], [ %r502, %bb43 ]
  %r495 = icmp slt i32 %r494, 4
  br i1 %r495, label %bb39, label %bb40

bb39:                                             ; preds = %bb38
  %r498 = add i32 0, 0
  br label %bb41

bb41:                                             ; preds = %bb46, %bb39
  %r499 = phi i32 [ %r498, %bb39 ], [ %r507, %bb46 ]
  %r500 = icmp slt i32 %r499, 8
  br i1 %r500, label %bb42, label %bb43

bb42:                                             ; preds = %bb41
  %r503 = add i32 0, 0
  br label %bb44

bb44:                                             ; preds = %bb45, %bb42
  %r504 = phi i32 [ %r503, %bb42 ], [ %r512, %bb45 ]
  %r505 = icmp slt i32 %r504, 7
  br i1 %r505, label %bb45, label %bb46

bb45:                                             ; preds = %bb44
  %r508 = add i32 %r476, %r479
  %r509 = add i32 %r508, %r489
  %r510 = add i32 %r509, %r504
  %r216 = getelementptr [10 x %my_struct_6], ptr @arr2, i32 0, i32 %r476
  %r217 = getelementptr %my_struct_6, ptr %r216, i32 0, i32 0
  %r218 = getelementptr [2 x %my_struct_5], ptr %r217, i32 0, i32 %r479
  %r219 = getelementptr %my_struct_5, ptr %r218, i32 0, i32 0
  %r220 = getelementptr [3 x %my_struct_4], ptr %r219, i32 0, i32 %r484
  %r221 = getelementptr %my_struct_4, ptr %r220, i32 0, i32 0
  %r222 = getelementptr [4 x %my_struct_3], ptr %r221, i32 0, i32 %r489
  %r223 = getelementptr %my_struct_3, ptr %r222, i32 0, i32 0
  %r224 = getelementptr [5 x %my_struct_2], ptr %r223, i32 0, i32 %r494
  %r225 = getelementptr %my_struct_2, ptr %r224, i32 0, i32 0
  %r226 = getelementptr [8 x %my_struct_1], ptr %r225, i32 0, i32 %r499
  %r227 = getelementptr %my_struct_1, ptr %r226, i32 0, i32 0
  %r228 = getelementptr [7 x i32], ptr %r227, i32 0, i32 %r504
  store i32 %r510, ptr %r228, align 4
  %r511 = add i32 %r504, 1
  %r512 = add i32 %r511, 0
  br label %bb44

bb46:                                             ; preds = %bb44
  %r506 = add i32 %r499, 1
  %r507 = add i32 %r506, 0
  br label %bb41

bb43:                                             ; preds = %bb41
  %r501 = add i32 %r494, 1
  %r502 = add i32 %r501, 0
  br label %bb38

bb40:                                             ; preds = %bb38
  %r496 = add i32 %r489, 1
  %r497 = add i32 %r496, 0
  br label %bb35

bb37:                                             ; preds = %bb35
  %r491 = add i32 %r484, 1
  %r492 = add i32 %r491, 0
  br label %bb32

bb34:                                             ; preds = %bb32
  %r486 = add i32 %r479, 1
  %r487 = add i32 %r486, 0
  br label %bb29

bb31:                                             ; preds = %bb29
  %r481 = add i32 %r476, 1
  %r482 = add i32 %r481, 0
  br label %bb26

bb28:                                             ; preds = %bb26
  ret i32 0
}

define i32 @loop3(i32 %r243, i32 %r245, i32 %r247, i32 %r249, i32 %r251, i32 %r253, i32 %r255) {
bb48:
  %r528 = add i32 0, 0
  %r529 = add i32 0, 0
  %r530 = add i32 0, 0
  %r531 = add i32 0, 0
  %r532 = add i32 0, 0
  %r533 = add i32 0, 0
  %r534 = add i32 0, 0
  %r535 = add i32 0, 0
  %r536 = add i32 0, 0
  %r537 = add i32 %r243, 0
  %r538 = add i32 0, 0
  %r539 = add i32 %r245, 0
  %r540 = add i32 0, 0
  %r541 = add i32 %r247, 0
  %r542 = add i32 0, 0
  %r543 = add i32 %r249, 0
  %r544 = add i32 0, 0
  %r545 = add i32 %r251, 0
  %r546 = add i32 0, 0
  %r547 = add i32 %r253, 0
  %r548 = add i32 0, 0
  %r549 = add i32 %r255, 0
  br label %bb47

bb47:                                             ; preds = %bb48
  %r550 = add i32 0, 0
  %r551 = add i32 0, 0
  br label %bb49

bb49:                                             ; preds = %bb90, %bb47
  %r552 = phi i32 [ %r550, %bb47 ], [ %r560, %bb90 ]
  %r553 = phi i32 [ %r551, %bb47 ], [ %r562, %bb90 ]
  %r554 = icmp slt i32 %r553, 10
  br i1 %r554, label %bb50, label %bb51

bb50:                                             ; preds = %bb49
  %r556 = add i32 0, 0
  br label %bb52

bb52:                                             ; preds = %bb87, %bb50
  %r557 = phi i32 [ %r552, %bb50 ], [ %r568, %bb87 ]
  %r558 = phi i32 [ %r556, %bb50 ], [ %r570, %bb87 ]
  %r559 = icmp slt i32 %r558, 100
  br i1 %r559, label %bb53, label %bb54

bb53:                                             ; preds = %bb52
  %r564 = add i32 0, 0
  br label %bb55

bb55:                                             ; preds = %bb84, %bb53
  %r565 = phi i32 [ %r557, %bb53 ], [ %r576, %bb84 ]
  %r566 = phi i32 [ %r564, %bb53 ], [ %r578, %bb84 ]
  %r567 = icmp slt i32 %r566, 1000
  br i1 %r567, label %bb56, label %bb57

bb56:                                             ; preds = %bb55
  %r572 = add i32 0, 0
  br label %bb58

bb58:                                             ; preds = %bb81, %bb56
  %r573 = phi i32 [ %r565, %bb56 ], [ %r584, %bb81 ]
  %r574 = phi i32 [ %r572, %bb56 ], [ %r586, %bb81 ]
  %r575 = icmp slt i32 %r574, 10000
  br i1 %r575, label %bb59, label %bb60

bb59:                                             ; preds = %bb58
  %r580 = add i32 0, 0
  br label %bb61

bb61:                                             ; preds = %bb78, %bb59
  %r581 = phi i32 [ %r573, %bb59 ], [ %r592, %bb78 ]
  %r582 = phi i32 [ %r580, %bb59 ], [ %r594, %bb78 ]
  %r583 = icmp slt i32 %r582, 100000
  br i1 %r583, label %bb62, label %bb63

bb62:                                             ; preds = %bb61
  %r588 = add i32 0, 0
  br label %bb64

bb64:                                             ; preds = %bb75, %bb62
  %r589 = phi i32 [ %r581, %bb62 ], [ %r600, %bb75 ]
  %r590 = phi i32 [ %r588, %bb62 ], [ %r602, %bb75 ]
  %r591 = icmp slt i32 %r590, 1000000
  br i1 %r591, label %bb65, label %bb66

bb65:                                             ; preds = %bb64
  %r596 = add i32 0, 0
  br label %bb67

bb67:                                             ; preds = %bb72, %bb65
  %r597 = phi i32 [ %r589, %bb65 ], [ %r609, %bb72 ]
  %r598 = phi i32 [ %r596, %bb65 ], [ %r611, %bb72 ]
  %r599 = icmp slt i32 %r598, 10000000
  br i1 %r599, label %bb68, label %bb69

bb68:                                             ; preds = %bb67
  %r604 = sdiv i32 %r597, 817
  %r605 = mul i32 %r604, 817
  %r606 = sub i32 %r597, %r605
  %r291 = getelementptr [10 x %my_struct_6], ptr @arr1, i32 0, i32 %r553
  %r292 = getelementptr %my_struct_6, ptr %r291, i32 0, i32 0
  %r293 = getelementptr [2 x %my_struct_5], ptr %r292, i32 0, i32 %r558
  %r294 = getelementptr %my_struct_5, ptr %r293, i32 0, i32 0
  %r295 = getelementptr [3 x %my_struct_4], ptr %r294, i32 0, i32 %r566
  %r296 = getelementptr %my_struct_4, ptr %r295, i32 0, i32 0
  %r297 = getelementptr [4 x %my_struct_3], ptr %r296, i32 0, i32 %r574
  %r298 = getelementptr %my_struct_3, ptr %r297, i32 0, i32 0
  %r299 = getelementptr [5 x %my_struct_2], ptr %r298, i32 0, i32 %r582
  %r300 = getelementptr %my_struct_2, ptr %r299, i32 0, i32 0
  %r301 = getelementptr [8 x %my_struct_1], ptr %r300, i32 0, i32 %r590
  %r302 = getelementptr %my_struct_1, ptr %r301, i32 0, i32 0
  %r303 = getelementptr [7 x i32], ptr %r302, i32 0, i32 %r598
  %r304 = load i32, ptr %r303, align 4
  %r607 = add i32 %r606, %r304
  %r313 = getelementptr [10 x %my_struct_6], ptr @arr2, i32 0, i32 %r553
  %r314 = getelementptr %my_struct_6, ptr %r313, i32 0, i32 0
  %r315 = getelementptr [2 x %my_struct_5], ptr %r314, i32 0, i32 %r558
  %r316 = getelementptr %my_struct_5, ptr %r315, i32 0, i32 0
  %r317 = getelementptr [3 x %my_struct_4], ptr %r316, i32 0, i32 %r566
  %r318 = getelementptr %my_struct_4, ptr %r317, i32 0, i32 0
  %r319 = getelementptr [4 x %my_struct_3], ptr %r318, i32 0, i32 %r574
  %r320 = getelementptr %my_struct_3, ptr %r319, i32 0, i32 0
  %r321 = getelementptr [5 x %my_struct_2], ptr %r320, i32 0, i32 %r582
  %r322 = getelementptr %my_struct_2, ptr %r321, i32 0, i32 0
  %r323 = getelementptr [8 x %my_struct_1], ptr %r322, i32 0, i32 %r590
  %r324 = getelementptr %my_struct_1, ptr %r323, i32 0, i32 0
  %r325 = getelementptr [7 x i32], ptr %r324, i32 0, i32 %r598
  %r326 = load i32, ptr %r325, align 4
  %r608 = add i32 %r607, %r326
  %r609 = add i32 %r608, 0
  %r610 = add i32 %r598, 1
  %r611 = add i32 %r610, 0
  %r612 = icmp sge i32 %r611, %r549
  br i1 %r612, label %bb70, label %bb71

bb70:                                             ; preds = %bb68
  br label %bb69

bb71:                                             ; preds = %bb68
  br label %bb72

bb72:                                             ; preds = %bb71
  br label %bb67

bb69:                                             ; preds = %bb70, %bb67
  %r600 = phi i32 [ %r597, %bb67 ], [ %r609, %bb70 ]
  %r601 = add i32 %r590, 1
  %r602 = add i32 %r601, 0
  %r603 = icmp sge i32 %r602, %r547
  br i1 %r603, label %bb73, label %bb74

bb73:                                             ; preds = %bb69
  br label %bb66

bb74:                                             ; preds = %bb69
  br label %bb75

bb75:                                             ; preds = %bb74
  br label %bb64

bb66:                                             ; preds = %bb73, %bb64
  %r592 = phi i32 [ %r589, %bb64 ], [ %r600, %bb73 ]
  %r593 = add i32 %r582, 1
  %r594 = add i32 %r593, 0
  %r595 = icmp sge i32 %r594, %r545
  br i1 %r595, label %bb76, label %bb77

bb76:                                             ; preds = %bb66
  br label %bb63

bb77:                                             ; preds = %bb66
  br label %bb78

bb78:                                             ; preds = %bb77
  br label %bb61

bb63:                                             ; preds = %bb76, %bb61
  %r584 = phi i32 [ %r581, %bb61 ], [ %r592, %bb76 ]
  %r585 = add i32 %r574, 1
  %r586 = add i32 %r585, 0
  %r587 = icmp sge i32 %r586, %r543
  br i1 %r587, label %bb79, label %bb80

bb79:                                             ; preds = %bb63
  br label %bb60

bb80:                                             ; preds = %bb63
  br label %bb81

bb81:                                             ; preds = %bb80
  br label %bb58

bb60:                                             ; preds = %bb79, %bb58
  %r576 = phi i32 [ %r573, %bb58 ], [ %r584, %bb79 ]
  %r577 = add i32 %r566, 1
  %r578 = add i32 %r577, 0
  %r579 = icmp sge i32 %r578, %r541
  br i1 %r579, label %bb82, label %bb83

bb82:                                             ; preds = %bb60
  br label %bb57

bb83:                                             ; preds = %bb60
  br label %bb84

bb84:                                             ; preds = %bb83
  br label %bb55

bb57:                                             ; preds = %bb82, %bb55
  %r568 = phi i32 [ %r565, %bb55 ], [ %r576, %bb82 ]
  %r569 = add i32 %r558, 1
  %r570 = add i32 %r569, 0
  %r571 = icmp sge i32 %r570, %r539
  br i1 %r571, label %bb85, label %bb86

bb85:                                             ; preds = %bb57
  br label %bb54

bb86:                                             ; preds = %bb57
  br label %bb87

bb87:                                             ; preds = %bb86
  br label %bb52

bb54:                                             ; preds = %bb85, %bb52
  %r560 = phi i32 [ %r557, %bb52 ], [ %r568, %bb85 ]
  %r561 = add i32 %r553, 1
  %r562 = add i32 %r561, 0
  %r563 = icmp sge i32 %r562, %r537
  br i1 %r563, label %bb88, label %bb89

bb88:                                             ; preds = %bb54
  br label %bb51

bb89:                                             ; preds = %bb54
  br label %bb90

bb90:                                             ; preds = %bb89
  br label %bb49

bb51:                                             ; preds = %bb88, %bb49
  %r555 = phi i32 [ %r552, %bb49 ], [ %r560, %bb88 ]
  ret i32 %r555
}

define i32 @main() {
bb91:
  call void @_sysy_starttime(i32 97)
  %r622 = call i32 @getint()
  %r623 = add i32 0, 0
  %r624 = add i32 %r622, 0
  %r625 = call i32 @getint()
  %r626 = add i32 0, 0
  %r627 = add i32 %r625, 0
  %r628 = call i32 @getint()
  %r629 = add i32 0, 0
  %r630 = add i32 %r628, 0
  %r631 = call i32 @getint()
  %r632 = add i32 0, 0
  %r633 = add i32 %r631, 0
  %r634 = call i32 @getint()
  %r635 = add i32 0, 0
  %r636 = add i32 %r634, 0
  %r637 = call i32 @getint()
  %r638 = add i32 0, 0
  %r639 = add i32 %r637, 0
  %r640 = call i32 @getint()
  %r641 = add i32 0, 0
  %r642 = add i32 %r640, 0
  %r643 = call i32 @getint()
  %r644 = add i32 0, 0
  %r645 = add i32 %r643, 0
  %r646 = call i32 @getint()
  %r647 = add i32 0, 0
  %r648 = add i32 %r646, 0
  %r649 = call i32 @loop1(i32 %r624, i32 %r627)
  %r650 = call i32 @loop2()
  %r651 = call i32 @loop3(i32 %r630, i32 %r633, i32 %r636, i32 %r639, i32 %r642, i32 %r645, i32 %r648)
  %r652 = add i32 %r651, 0
  call void @_sysy_stoptime(i32 117)
  ret i32 %r652
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
