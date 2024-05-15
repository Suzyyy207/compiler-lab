; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.timeval = type { i64, i32 }

@max = global i32 1073741824
@a = global [10000000 x i32] zeroinitializer
@b = global [10000000 x i32] zeroinitializer
@kernelid = global [10000 x i32] zeroinitializer
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

define i32 @checkrange(i32 %r100) {
bb2:
  %r401 = add i32 0, 0
  %r402 = add i32 %r100, 0
  br label %bb1

bb1:                                              ; preds = %bb2
  br label %bb3

bb3:                                              ; preds = %bb4, %bb1
  %r403 = phi i32 [ %r402, %bb1 ], [ %r410, %bb4 ]
  %r103 = load i32, ptr @max, align 4
  %r404 = icmp sgt i32 %r403, %r103
  br i1 %r404, label %bb4, label %bb5

bb4:                                              ; preds = %bb3
  %r106 = load i32, ptr @max, align 4
  %r409 = sub i32 %r403, %r106
  %r410 = add i32 %r409, 0
  br label %bb3

bb5:                                              ; preds = %bb3
  br label %bb6

bb6:                                              ; preds = %bb7, %bb5
  %r405 = phi i32 [ %r403, %bb5 ], [ %r408, %bb7 ]
  %r406 = icmp slt i32 %r405, 0
  br i1 %r406, label %bb7, label %bb8

bb7:                                              ; preds = %bb6
  %r111 = load i32, ptr @max, align 4
  %r407 = add i32 %r405, %r111
  %r408 = add i32 %r407, 0
  br label %bb6

bb8:                                              ; preds = %bb6
  ret i32 %r405
}

define i32 @mod(i32 %r114, i32 %r116) {
bb10:
  %r413 = add i32 0, 0
  %r414 = add i32 %r114, 0
  %r415 = add i32 0, 0
  %r416 = add i32 %r116, 0
  br label %bb9

bb9:                                              ; preds = %bb10
  %r417 = sdiv i32 %r414, %r416
  %r418 = mul i32 %r417, %r416
  %r419 = sub i32 %r414, %r418
  ret i32 %r419
}

define i32 @reduce(i32 %r125, i32 %r127, i32 %r129) {
bb12:
  %r429 = add i32 0, 0
  %r430 = add i32 0, 0
  %r431 = add i32 0, 0
  %r432 = add i32 0, 0
  %r433 = add i32 0, 0
  %r434 = add i32 0, 0
  %r435 = add i32 0, 0
  %r436 = add i32 %r125, 0
  %r437 = add i32 0, 0
  %r438 = add i32 %r127, 0
  %r439 = add i32 0, 0
  %r440 = add i32 %r129, 0
  br label %bb11

bb11:                                             ; preds = %bb12
  %r441 = icmp eq i32 %r436, 0
  br i1 %r441, label %bb13, label %bb14

bb13:                                             ; preds = %bb11
  %r503 = add i32 %r438, %r440
  %r504 = call i32 @checkrange(i32 %r503)
  ret i32 %r504

bb14:                                             ; preds = %bb11
  br label %bb15

bb15:                                             ; preds = %bb14
  %r442 = icmp eq i32 %r436, 1
  br i1 %r442, label %bb16, label %bb17

bb16:                                             ; preds = %bb15
  %r485 = add i32 0, 0
  %r486 = add i32 1, 0
  br label %bb19

bb19:                                             ; preds = %bb24, %bb16
  %r487 = phi i32 [ %r485, %bb16 ], [ %r498, %bb24 ]
  %r488 = phi i32 [ %r486, %bb16 ], [ %r500, %bb24 ]
  %r142 = load i32, ptr @max, align 4
  %r489 = icmp slt i32 %r488, %r142
  br i1 %r489, label %bb20, label %bb21

bb20:                                             ; preds = %bb19
  %r490 = sdiv i32 %r438, %r488
  %r491 = call i32 @mod(i32 %r490, i32 2)
  %r492 = sdiv i32 %r440, %r488
  %r493 = call i32 @mod(i32 %r492, i32 2)
  %r494 = icmp eq i32 %r491, %r493
  br i1 %r494, label %bb22, label %bb23

bb22:                                             ; preds = %bb20
  %r501 = mul i32 %r487, 2
  %r502 = add i32 %r501, 0
  br label %bb24

bb23:                                             ; preds = %bb20
  %r495 = mul i32 %r487, 2
  %r496 = add i32 %r495, 1
  %r497 = add i32 %r496, 0
  br label %bb24

bb24:                                             ; preds = %bb23, %bb22
  %r498 = phi i32 [ %r502, %bb22 ], [ %r497, %bb23 ]
  %r499 = mul i32 %r488, 2
  %r500 = add i32 %r499, 0
  br label %bb19

bb21:                                             ; preds = %bb19
  ret i32 %r487

bb17:                                             ; preds = %bb15
  br label %bb18

bb18:                                             ; preds = %bb17
  %r443 = icmp eq i32 %r436, 2
  br i1 %r443, label %bb25, label %bb26

bb25:                                             ; preds = %bb18
  %r484 = icmp sgt i32 %r438, %r440
  br i1 %r484, label %bb28, label %bb29

bb28:                                             ; preds = %bb25
  ret i32 %r438

bb29:                                             ; preds = %bb25
  ret i32 %r440

bb26:                                             ; preds = %bb18
  br label %bb27

bb27:                                             ; preds = %bb26
  %r444 = icmp eq i32 %r436, 3
  br i1 %r444, label %bb31, label %bb32

bb31:                                             ; preds = %bb27
  %r465 = add i32 0, 0
  %r466 = add i32 1, 0
  br label %bb34

bb34:                                             ; preds = %bb39, %bb31
  %r467 = phi i32 [ %r466, %bb31 ], [ %r475, %bb39 ]
  %r468 = phi i32 [ %r465, %bb31 ], [ %r473, %bb39 ]
  %r173 = load i32, ptr @max, align 4
  %r469 = icmp slt i32 %r467, %r173
  br i1 %r469, label %bb35, label %bb36

bb35:                                             ; preds = %bb34
  %r470 = sdiv i32 %r438, %r467
  %r471 = call i32 @mod(i32 %r470, i32 2)
  %r472 = icmp eq i32 %r471, 1
  br i1 %r472, label %bb37, label %bb40

bb40:                                             ; preds = %bb35
  %r479 = sdiv i32 %r440, %r467
  %r480 = call i32 @mod(i32 %r479, i32 2)
  %r481 = icmp eq i32 %r480, 1
  br i1 %r481, label %bb37, label %bb38

bb37:                                             ; preds = %bb40, %bb35
  %r476 = mul i32 %r468, 2
  %r477 = add i32 %r476, 1
  %r478 = add i32 %r477, 0
  br label %bb39

bb38:                                             ; preds = %bb40
  %r482 = mul i32 %r468, 2
  %r483 = add i32 %r482, 0
  br label %bb39

bb39:                                             ; preds = %bb38, %bb37
  %r473 = phi i32 [ %r478, %bb37 ], [ %r483, %bb38 ]
  %r474 = mul i32 %r467, 2
  %r475 = add i32 %r474, 0
  br label %bb34

bb36:                                             ; preds = %bb34
  ret i32 %r468

bb32:                                             ; preds = %bb27
  br label %bb33

bb33:                                             ; preds = %bb32
  %r445 = icmp eq i32 %r436, 4
  br i1 %r445, label %bb41, label %bb42

bb41:                                             ; preds = %bb33
  %r446 = add i32 0, 0
  %r447 = add i32 1, 0
  br label %bb44

bb44:                                             ; preds = %bb49, %bb41
  %r448 = phi i32 [ %r447, %bb41 ], [ %r456, %bb49 ]
  %r449 = phi i32 [ %r446, %bb41 ], [ %r454, %bb49 ]
  %r199 = load i32, ptr @max, align 4
  %r450 = icmp slt i32 %r448, %r199
  br i1 %r450, label %bb45, label %bb46

bb45:                                             ; preds = %bb44
  %r451 = sdiv i32 %r438, %r448
  %r452 = call i32 @mod(i32 %r451, i32 2)
  %r453 = icmp eq i32 %r452, 1
  br i1 %r453, label %bb50, label %bb48

bb50:                                             ; preds = %bb45
  %r459 = sdiv i32 %r440, %r448
  %r460 = call i32 @mod(i32 %r459, i32 2)
  %r461 = icmp eq i32 %r460, 1
  br i1 %r461, label %bb47, label %bb48

bb47:                                             ; preds = %bb50
  %r462 = mul i32 %r449, 2
  %r463 = add i32 %r462, 1
  %r464 = add i32 %r463, 0
  br label %bb49

bb48:                                             ; preds = %bb50, %bb45
  %r457 = mul i32 %r449, 2
  %r458 = add i32 %r457, 0
  br label %bb49

bb49:                                             ; preds = %bb48, %bb47
  %r454 = phi i32 [ %r464, %bb47 ], [ %r458, %bb48 ]
  %r455 = mul i32 %r448, 2
  %r456 = add i32 %r455, 0
  br label %bb44

bb46:                                             ; preds = %bb44
  ret i32 %r449

bb42:                                             ; preds = %bb33
  br label %bb43

bb43:                                             ; preds = %bb42
  ret i32 0
}

define i32 @getvalue(ptr %r220, i32 %r221, i32 %r223, i32 %r225, i32 %r227) {
bb52:
  %r510 = add i32 0, 0
  %r511 = add i32 0, 0
  %r512 = add i32 %r221, 0
  %r513 = add i32 0, 0
  %r514 = add i32 %r223, 0
  %r515 = add i32 0, 0
  %r516 = add i32 %r225, 0
  %r517 = add i32 0, 0
  %r518 = add i32 %r227, 0
  br label %bb51

bb51:                                             ; preds = %bb52
  %r519 = icmp slt i32 %r516, 0
  br i1 %r519, label %bb53, label %bb58

bb58:                                             ; preds = %bb51
  %r520 = icmp slt i32 %r518, 0
  br i1 %r520, label %bb53, label %bb57

bb57:                                             ; preds = %bb58
  %r521 = icmp sge i32 %r516, %r512
  br i1 %r521, label %bb53, label %bb56

bb56:                                             ; preds = %bb57
  %r522 = icmp sge i32 %r518, %r514
  br i1 %r522, label %bb53, label %bb54

bb53:                                             ; preds = %bb56, %bb57, %bb58, %bb51
  ret i32 0

bb54:                                             ; preds = %bb56
  br label %bb55

bb55:                                             ; preds = %bb54
  %r523 = mul i32 %r516, %r514
  %r524 = add i32 %r523, %r518
  %r525 = add i32 %r524, 0
  %r249 = getelementptr i32, ptr %r220, i32 %r525
  %r250 = load i32, ptr %r249, align 4
  ret i32 %r250
}

define i32 @convn(i32 %r251, ptr %r253, ptr %r254, i32 %r255, i32 %r257, i32 %r259) {
bb60:
  %r537 = add i32 0, 0
  %r538 = add i32 0, 0
  %r539 = add i32 0, 0
  %r540 = add i32 0, 0
  %r541 = add i32 0, 0
  %r542 = add i32 0, 0
  %r543 = add i32 0, 0
  %r544 = add i32 0, 0
  %r545 = add i32 %r251, 0
  %r546 = add i32 0, 0
  %r547 = add i32 %r255, 0
  %r548 = add i32 0, 0
  %r549 = add i32 %r257, 0
  %r550 = add i32 0, 0
  %r551 = add i32 %r259, 0
  br label %bb59

bb59:                                             ; preds = %bb60
  %r552 = add i32 0, 0
  %r553 = add i32 0, 0
  %r554 = add i32 1, 0
  br label %bb61

bb61:                                             ; preds = %bb84, %bb59
  %r555 = phi i32 [ %r552, %bb59 ], [ %r561, %bb84 ]
  %r556 = icmp eq i32 %r554, %r554
  br i1 %r556, label %bb62, label %bb63

bb62:                                             ; preds = %bb61
  %r557 = add i32 0, 0
  br label %bb64

bb64:                                             ; preds = %bb81, %bb62
  %r558 = phi i32 [ %r557, %bb62 ], [ %r575, %bb81 ]
  %r559 = icmp eq i32 %r554, %r554
  br i1 %r559, label %bb65, label %bb66

bb65:                                             ; preds = %bb64
  %r563 = add i32 0, 0
  %r564 = sdiv i32 %r551, 2
  %r565 = sub i32 %r555, %r564
  %r566 = add i32 %r565, 0
  br label %bb67

bb67:                                             ; preds = %bb78, %bb65
  %r567 = phi i32 [ %r563, %bb65 ], [ %r583, %bb78 ]
  %r568 = phi i32 [ %r566, %bb65 ], [ %r585, %bb78 ]
  %r569 = icmp eq i32 %r554, %r554
  br i1 %r569, label %bb68, label %bb69

bb68:                                             ; preds = %bb67
  %r577 = sdiv i32 %r551, 2
  %r578 = sub i32 %r558, %r577
  %r579 = add i32 %r578, 0
  br label %bb70

bb70:                                             ; preds = %bb75, %bb68
  %r580 = phi i32 [ %r579, %bb68 ], [ %r593, %bb75 ]
  %r581 = phi i32 [ %r567, %bb68 ], [ %r591, %bb75 ]
  %r582 = icmp eq i32 %r554, %r554
  br i1 %r582, label %bb71, label %bb72

bb71:                                             ; preds = %bb70
  %r589 = call i32 @getvalue(ptr %r253, i32 %r547, i32 %r549, i32 %r568, i32 %r580)
  %r590 = call i32 @reduce(i32 %r545, i32 %r581, i32 %r589)
  %r591 = add i32 %r590, 0
  %r592 = add i32 %r580, 1
  %r593 = add i32 %r592, 0
  %r594 = sdiv i32 %r551, 2
  %r595 = add i32 %r558, %r594
  %r596 = icmp sge i32 %r593, %r595
  br i1 %r596, label %bb73, label %bb74

bb73:                                             ; preds = %bb71
  br label %bb72

bb74:                                             ; preds = %bb71
  br label %bb75

bb75:                                             ; preds = %bb74
  br label %bb70

bb72:                                             ; preds = %bb73, %bb70
  %r583 = phi i32 [ %r581, %bb70 ], [ %r591, %bb73 ]
  %r584 = add i32 %r568, 1
  %r585 = add i32 %r584, 0
  %r586 = sdiv i32 %r551, 2
  %r587 = add i32 %r555, %r586
  %r588 = icmp sge i32 %r585, %r587
  br i1 %r588, label %bb76, label %bb77

bb76:                                             ; preds = %bb72
  br label %bb69

bb77:                                             ; preds = %bb72
  br label %bb78

bb78:                                             ; preds = %bb77
  br label %bb67

bb69:                                             ; preds = %bb76, %bb67
  %r570 = phi i32 [ %r567, %bb67 ], [ %r583, %bb76 ]
  %r571 = mul i32 %r555, %r549
  %r572 = add i32 %r571, %r558
  %r573 = add i32 %r572, 0
  %r319 = getelementptr i32, ptr %r254, i32 %r573
  store i32 %r570, ptr %r319, align 4
  %r574 = add i32 %r558, 1
  %r575 = add i32 %r574, 0
  %r576 = icmp sge i32 %r575, %r549
  br i1 %r576, label %bb79, label %bb80

bb79:                                             ; preds = %bb69
  br label %bb66

bb80:                                             ; preds = %bb69
  br label %bb81

bb81:                                             ; preds = %bb80
  br label %bb64

bb66:                                             ; preds = %bb79, %bb64
  %r560 = add i32 %r555, 1
  %r561 = add i32 %r560, 0
  %r562 = icmp sge i32 %r561, %r547
  br i1 %r562, label %bb82, label %bb83

bb82:                                             ; preds = %bb66
  br label %bb63

bb83:                                             ; preds = %bb66
  br label %bb84

bb84:                                             ; preds = %bb83
  br label %bb61

bb63:                                             ; preds = %bb82, %bb61
  ret i32 0
}

define void @memmove(ptr %r330, ptr %r331, i32 %r332) {
bb86:
  %r599 = add i32 0, 0
  %r600 = add i32 0, 0
  %r601 = add i32 %r332, 0
  br label %bb85

bb85:                                             ; preds = %bb86
  %r602 = add i32 0, 0
  br label %bb87

bb87:                                             ; preds = %bb88, %bb85
  %r603 = phi i32 [ %r602, %bb85 ], [ %r606, %bb88 ]
  %r604 = icmp slt i32 %r603, %r601
  br i1 %r604, label %bb88, label %bb89

bb88:                                             ; preds = %bb87
  %r339 = getelementptr i32, ptr %r331, i32 %r603
  %r340 = load i32, ptr %r339, align 4
  %r342 = getelementptr i32, ptr %r330, i32 %r603
  store i32 %r340, ptr %r342, align 4
  %r605 = add i32 %r603, 1
  %r606 = add i32 %r605, 0
  br label %bb87

bb89:                                             ; preds = %bb87
  ret void
}

define i32 @main() {
bb90:
  %r614 = add i32 0, 0
  %r615 = add i32 0, 0
  %r616 = call i32 @getint()
  %r617 = add i32 0, 0
  %r618 = add i32 %r616, 0
  %r619 = call i32 @getint()
  %r620 = add i32 0, 0
  %r621 = add i32 %r619, 0
  %r622 = call i32 @getint()
  %r623 = add i32 0, 0
  %r624 = add i32 %r622, 0
  %r625 = add i32 0, 0
  %r626 = call i32 @getint()
  %r627 = add i32 %r626, 0
  %r628 = add i32 0, 0
  %r629 = add i32 0, 0
  br label %bb91

bb91:                                             ; preds = %bb92, %bb90
  %r630 = phi i32 [ %r629, %bb90 ], [ %r651, %bb92 ]
  %r631 = icmp slt i32 %r630, %r627
  br i1 %r631, label %bb92, label %bb93

bb92:                                             ; preds = %bb91
  %r649 = call i32 @getint()
  %r359 = getelementptr [10000000 x i32], ptr @a, i32 0, i32 %r630
  store i32 %r649, ptr %r359, align 4
  %r650 = add i32 %r630, 1
  %r651 = add i32 %r650, 0
  br label %bb91

bb93:                                             ; preds = %bb91
  %r632 = call i32 @getint()
  %r633 = add i32 %r632, 0
  %r634 = add i32 0, 0
  br label %bb94

bb94:                                             ; preds = %bb95, %bb93
  %r635 = phi i32 [ %r634, %bb93 ], [ %r648, %bb95 ]
  %r636 = icmp slt i32 %r635, %r633
  br i1 %r636, label %bb95, label %bb96

bb95:                                             ; preds = %bb94
  %r646 = call i32 @getint()
  %r368 = getelementptr [10000 x i32], ptr @kernelid, i32 0, i32 %r635
  store i32 %r646, ptr %r368, align 4
  %r647 = add i32 %r635, 1
  %r648 = add i32 %r647, 0
  br label %bb94

bb96:                                             ; preds = %bb94
  %r637 = add i32 %r633, 0
  call void @_sysy_starttime(i32 209)
  %r638 = add i32 0, 0
  br label %bb97

bb97:                                             ; preds = %bb98, %bb96
  %r639 = phi i32 [ %r638, %bb96 ], [ %r645, %bb98 ]
  %r640 = icmp slt i32 %r639, %r637
  br i1 %r640, label %bb98, label %bb99

bb98:                                             ; preds = %bb97
  %r378 = getelementptr [10000 x i32], ptr @kernelid, i32 0, i32 %r639
  %r379 = load i32, ptr %r378, align 4
  %r380 = getelementptr [10000000 x i32], ptr @a, i32 0, i32 0
  %r381 = getelementptr [10000000 x i32], ptr @b, i32 0, i32 0
  %r642 = call i32 @convn(i32 %r379, ptr %r380, ptr %r381, i32 %r621, i32 %r624, i32 %r618)
  %r389 = getelementptr [10000000 x i32], ptr @a, i32 0, i32 0
  %r390 = getelementptr [10000000 x i32], ptr @b, i32 0, i32 0
  %r643 = mul i32 %r621, %r624
  call void @memmove(ptr %r389, ptr %r390, i32 %r643)
  %r644 = add i32 %r639, 1
  %r645 = add i32 %r644, 0
  br label %bb97

bb99:                                             ; preds = %bb97
  call void @_sysy_stoptime(i32 312)
  %r641 = mul i32 %r621, %r624
  %r399 = getelementptr [10000000 x i32], ptr @a, i32 0, i32 0
  call void @putarray(i32 %r641, ptr %r399)
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
