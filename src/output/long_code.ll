; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.timeval = type { i64, i32 }

@n = global i32 0
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

define i32 @bubblesort(ptr %r100) {
bb1:
  %r569 = add i32 0, 0
  %r570 = add i32 0, 0
  %r571 = add i32 0, 0
  %r572 = add i32 0, 0
  %r573 = add i32 0, 0
  %r574 = add i32 0, 0
  br label %bb2

bb2:                                              ; preds = %bb7, %bb1
  %r575 = phi i32 [ %r574, %bb1 ], [ %r584, %bb7 ]
  %r104 = load i32, ptr @n, align 4
  %r576 = sub i32 %r104, 1
  %r577 = icmp slt i32 %r575, %r576
  br i1 %r577, label %bb3, label %bb4

bb3:                                              ; preds = %bb2
  %r578 = add i32 0, 0
  br label %bb5

bb5:                                              ; preds = %bb10, %bb3
  %r579 = phi i32 [ %r578, %bb3 ], [ %r589, %bb10 ]
  %r108 = load i32, ptr @n, align 4
  %r580 = sub i32 %r108, %r575
  %r581 = sub i32 %r580, 1
  %r582 = icmp slt i32 %r579, %r581
  br i1 %r582, label %bb6, label %bb7

bb6:                                              ; preds = %bb5
  %r585 = add i32 %r579, 1
  %r586 = add i32 %r585, 0
  %r117 = getelementptr i32, ptr %r100, i32 %r579
  %r118 = load i32, ptr %r117, align 4
  %r120 = getelementptr i32, ptr %r100, i32 %r586
  %r121 = load i32, ptr %r120, align 4
  %r587 = icmp sgt i32 %r118, %r121
  br i1 %r587, label %bb8, label %bb9

bb8:                                              ; preds = %bb6
  %r590 = add i32 %r579, 1
  %r591 = add i32 %r590, 0
  %r128 = getelementptr i32, ptr %r100, i32 %r591
  %r129 = load i32, ptr %r128, align 4
  %r592 = add i32 %r129, 0
  %r131 = getelementptr i32, ptr %r100, i32 %r579
  %r132 = load i32, ptr %r131, align 4
  %r134 = getelementptr i32, ptr %r100, i32 %r591
  store i32 %r132, ptr %r134, align 4
  %r137 = getelementptr i32, ptr %r100, i32 %r579
  store i32 %r592, ptr %r137, align 4
  br label %bb10

bb9:                                              ; preds = %bb6
  br label %bb10

bb10:                                             ; preds = %bb9, %bb8
  %r588 = add i32 %r579, 1
  %r589 = add i32 %r588, 0
  br label %bb5

bb7:                                              ; preds = %bb5
  %r583 = add i32 %r575, 1
  %r584 = add i32 %r583, 0
  br label %bb2

bb4:                                              ; preds = %bb2
  ret i32 0
}

define i32 @insertsort(ptr %r142) {
bb11:
  %r598 = add i32 0, 0
  %r599 = add i32 0, 0
  %r600 = add i32 0, 0
  %r601 = add i32 0, 0
  %r602 = add i32 0, 0
  %r603 = add i32 1, 0
  br label %bb12

bb12:                                             ; preds = %bb17, %bb11
  %r604 = phi i32 [ %r603, %bb11 ], [ %r615, %bb17 ]
  %r145 = load i32, ptr @n, align 4
  %r605 = icmp slt i32 %r604, %r145
  br i1 %r605, label %bb13, label %bb14

bb13:                                             ; preds = %bb12
  %r149 = getelementptr i32, ptr %r142, i32 %r604
  %r150 = load i32, ptr %r149, align 4
  %r606 = add i32 %r150, 0
  %r607 = sub i32 %r604, 1
  %r608 = add i32 %r607, 0
  br label %bb15

bb15:                                             ; preds = %bb16, %bb13
  %r609 = phi i32 [ %r608, %bb13 ], [ %r620, %bb16 ]
  %r610 = sub i32 0, 1
  %r611 = icmp sgt i32 %r609, %r610
  br i1 %r611, label %bb18, label %bb17

bb18:                                             ; preds = %bb15
  %r160 = getelementptr i32, ptr %r142, i32 %r609
  %r161 = load i32, ptr %r160, align 4
  %r616 = icmp slt i32 %r606, %r161
  br i1 %r616, label %bb16, label %bb17

bb16:                                             ; preds = %bb18
  %r617 = add i32 %r609, 1
  %r618 = add i32 %r617, 0
  %r167 = getelementptr i32, ptr %r142, i32 %r609
  %r168 = load i32, ptr %r167, align 4
  %r170 = getelementptr i32, ptr %r142, i32 %r618
  store i32 %r168, ptr %r170, align 4
  %r619 = sub i32 %r609, 1
  %r620 = add i32 %r619, 0
  br label %bb15

bb17:                                             ; preds = %bb18, %bb15
  %r612 = add i32 %r609, 1
  %r613 = add i32 %r612, 0
  %r178 = getelementptr i32, ptr %r142, i32 %r613
  store i32 %r606, ptr %r178, align 4
  %r614 = add i32 %r604, 1
  %r615 = add i32 %r614, 0
  br label %bb12

bb14:                                             ; preds = %bb12
  ret i32 0
}

define i32 @QuickSort(ptr %r181, i32 %r182, i32 %r184) {
bb20:
  %r627 = add i32 0, 0
  %r628 = add i32 0, 0
  %r629 = add i32 0, 0
  %r630 = add i32 0, 0
  %r631 = add i32 0, 0
  %r632 = add i32 %r182, 0
  %r633 = add i32 0, 0
  %r634 = add i32 %r184, 0
  br label %bb19

bb19:                                             ; preds = %bb20
  %r635 = icmp slt i32 %r632, %r634
  br i1 %r635, label %bb21, label %bb22

bb21:                                             ; preds = %bb19
  %r636 = add i32 %r632, 0
  %r637 = add i32 %r634, 0
  %r195 = getelementptr i32, ptr %r181, i32 %r632
  %r196 = load i32, ptr %r195, align 4
  %r638 = add i32 %r196, 0
  br label %bb24

bb24:                                             ; preds = %bb40, %bb21
  %r639 = phi i32 [ %r637, %bb21 ], [ %r657, %bb40 ]
  %r640 = phi i32 [ %r636, %bb21 ], [ %r654, %bb40 ]
  %r641 = icmp slt i32 %r640, %r639
  br i1 %r641, label %bb25, label %bb26

bb25:                                             ; preds = %bb24
  br label %bb27

bb27:                                             ; preds = %bb28, %bb25
  %r650 = phi i32 [ %r639, %bb25 ], [ %r668, %bb28 ]
  %r651 = icmp slt i32 %r640, %r650
  br i1 %r651, label %bb30, label %bb29

bb30:                                             ; preds = %bb27
  %r205 = getelementptr i32, ptr %r181, i32 %r650
  %r206 = load i32, ptr %r205, align 4
  %r665 = sub i32 %r638, 1
  %r666 = icmp sgt i32 %r206, %r665
  br i1 %r666, label %bb28, label %bb29

bb28:                                             ; preds = %bb30
  %r667 = sub i32 %r650, 1
  %r668 = add i32 %r667, 0
  br label %bb27

bb29:                                             ; preds = %bb30, %bb27
  %r652 = icmp slt i32 %r640, %r650
  br i1 %r652, label %bb31, label %bb32

bb31:                                             ; preds = %bb29
  %r216 = getelementptr i32, ptr %r181, i32 %r650
  %r217 = load i32, ptr %r216, align 4
  %r219 = getelementptr i32, ptr %r181, i32 %r640
  store i32 %r217, ptr %r219, align 4
  %r663 = add i32 %r640, 1
  %r664 = add i32 %r663, 0
  br label %bb33

bb32:                                             ; preds = %bb29
  br label %bb33

bb33:                                             ; preds = %bb32, %bb31
  %r653 = phi i32 [ %r664, %bb31 ], [ %r640, %bb32 ]
  br label %bb34

bb34:                                             ; preds = %bb35, %bb33
  %r654 = phi i32 [ %r653, %bb33 ], [ %r662, %bb35 ]
  %r655 = icmp slt i32 %r654, %r650
  br i1 %r655, label %bb37, label %bb36

bb37:                                             ; preds = %bb34
  %r227 = getelementptr i32, ptr %r181, i32 %r654
  %r228 = load i32, ptr %r227, align 4
  %r660 = icmp slt i32 %r228, %r638
  br i1 %r660, label %bb35, label %bb36

bb35:                                             ; preds = %bb37
  %r661 = add i32 %r654, 1
  %r662 = add i32 %r661, 0
  br label %bb34

bb36:                                             ; preds = %bb37, %bb34
  %r656 = icmp slt i32 %r654, %r650
  br i1 %r656, label %bb38, label %bb39

bb38:                                             ; preds = %bb36
  %r237 = getelementptr i32, ptr %r181, i32 %r654
  %r238 = load i32, ptr %r237, align 4
  %r240 = getelementptr i32, ptr %r181, i32 %r650
  store i32 %r238, ptr %r240, align 4
  %r658 = sub i32 %r650, 1
  %r659 = add i32 %r658, 0
  br label %bb40

bb39:                                             ; preds = %bb36
  br label %bb40

bb40:                                             ; preds = %bb39, %bb38
  %r657 = phi i32 [ %r659, %bb38 ], [ %r650, %bb39 ]
  br label %bb24

bb26:                                             ; preds = %bb24
  %r245 = getelementptr i32, ptr %r181, i32 %r640
  store i32 %r638, ptr %r245, align 4
  %r642 = sub i32 %r640, 1
  %r643 = add i32 %r642, 0
  %r644 = call i32 @QuickSort(ptr %r181, i32 %r632, i32 %r643)
  %r645 = add i32 %r644, 0
  %r646 = add i32 %r640, 1
  %r647 = add i32 %r646, 0
  %r648 = call i32 @QuickSort(ptr %r181, i32 %r647, i32 %r634)
  %r649 = add i32 %r648, 0
  br label %bb23

bb22:                                             ; preds = %bb19
  br label %bb23

bb23:                                             ; preds = %bb22, %bb26
  ret i32 0
}

define i32 @getMid(ptr %r257) {
bb41:
  %r671 = add i32 0, 0
  %r672 = add i32 0, 0
  %r259 = load i32, ptr @n, align 4
  %r673 = sdiv i32 %r259, 2
  %r674 = mul i32 %r673, 2
  %r262 = load i32, ptr @n, align 4
  %r675 = icmp eq i32 %r674, %r262
  br i1 %r675, label %bb42, label %bb43

bb42:                                             ; preds = %bb41
  %r264 = load i32, ptr @n, align 4
  %r678 = sdiv i32 %r264, 2
  %r679 = add i32 %r678, 0
  %r680 = sub i32 %r679, 1
  %r681 = add i32 %r680, 0
  %r270 = getelementptr i32, ptr %r257, i32 %r679
  %r271 = load i32, ptr %r270, align 4
  %r273 = getelementptr i32, ptr %r257, i32 %r681
  %r274 = load i32, ptr %r273, align 4
  %r682 = add i32 %r271, %r274
  %r683 = sdiv i32 %r682, 2
  ret i32 %r683

bb43:                                             ; preds = %bb41
  %r277 = load i32, ptr @n, align 4
  %r676 = sdiv i32 %r277, 2
  %r677 = add i32 %r676, 0
  %r280 = getelementptr i32, ptr %r257, i32 %r677
  %r281 = load i32, ptr %r280, align 4
  ret i32 %r281
}

define i32 @getMost(ptr %r282) {
bb45:
  %r688 = add i32 0, 0
  %r689 = add i32 0, 0
  %r690 = add i32 0, 0
  %r283 = alloca [1000 x i32], align 4
  %r691 = add i32 0, 0
  %r692 = add i32 0, 0
  br label %bb46

bb46:                                             ; preds = %bb47, %bb45
  %r693 = phi i32 [ %r692, %bb45 ], [ %r711, %bb47 ]
  %r694 = icmp slt i32 %r693, 1000
  br i1 %r694, label %bb47, label %bb48

bb47:                                             ; preds = %bb46
  %r288 = getelementptr [1000 x i32], ptr %r283, i32 0, i32 %r693
  store i32 0, ptr %r288, align 4
  %r710 = add i32 %r693, 1
  %r711 = add i32 %r710, 0
  br label %bb46

bb48:                                             ; preds = %bb46
  %r695 = add i32 0, 0
  %r696 = add i32 0, 0
  br label %bb49

bb49:                                             ; preds = %bb54, %bb48
  %r697 = phi i32 [ %r695, %bb48 ], [ %r707, %bb54 ]
  %r698 = phi i32 [ %r689, %bb48 ], [ %r704, %bb54 ]
  %r699 = phi i32 [ %r696, %bb48 ], [ %r705, %bb54 ]
  %r294 = load i32, ptr @n, align 4
  %r700 = icmp slt i32 %r697, %r294
  br i1 %r700, label %bb50, label %bb51

bb50:                                             ; preds = %bb49
  %r298 = getelementptr i32, ptr %r282, i32 %r697
  %r299 = load i32, ptr %r298, align 4
  %r701 = add i32 %r299, 0
  %r301 = getelementptr [1000 x i32], ptr %r283, i32 0, i32 %r701
  %r302 = load i32, ptr %r301, align 4
  %r702 = add i32 %r302, 1
  %r305 = getelementptr [1000 x i32], ptr %r283, i32 0, i32 %r701
  store i32 %r702, ptr %r305, align 4
  %r307 = getelementptr [1000 x i32], ptr %r283, i32 0, i32 %r701
  %r308 = load i32, ptr %r307, align 4
  %r703 = icmp sgt i32 %r308, %r699
  br i1 %r703, label %bb52, label %bb53

bb52:                                             ; preds = %bb50
  %r312 = getelementptr [1000 x i32], ptr %r283, i32 0, i32 %r701
  %r313 = load i32, ptr %r312, align 4
  %r708 = add i32 %r313, 0
  %r709 = add i32 %r701, 0
  br label %bb54

bb53:                                             ; preds = %bb50
  br label %bb54

bb54:                                             ; preds = %bb53, %bb52
  %r704 = phi i32 [ %r709, %bb52 ], [ %r698, %bb53 ]
  %r705 = phi i32 [ %r708, %bb52 ], [ %r699, %bb53 ]
  %r706 = add i32 %r697, 1
  %r707 = add i32 %r706, 0
  br label %bb49

bb51:                                             ; preds = %bb49
  ret i32 %r698
}

define i32 @revert(ptr %r318) {
bb55:
  %r715 = add i32 0, 0
  %r716 = add i32 0, 0
  %r717 = add i32 0, 0
  %r718 = add i32 0, 0
  %r719 = add i32 0, 0
  br label %bb56

bb56:                                             ; preds = %bb57, %bb55
  %r720 = phi i32 [ %r719, %bb55 ], [ %r727, %bb57 ]
  %r721 = phi i32 [ %r718, %bb55 ], [ %r725, %bb57 ]
  %r722 = icmp slt i32 %r721, %r720
  br i1 %r722, label %bb57, label %bb58

bb57:                                             ; preds = %bb56
  %r326 = getelementptr i32, ptr %r318, i32 %r721
  %r327 = load i32, ptr %r326, align 4
  %r723 = add i32 %r327, 0
  %r329 = getelementptr i32, ptr %r318, i32 %r720
  %r330 = load i32, ptr %r329, align 4
  %r332 = getelementptr i32, ptr %r318, i32 %r721
  store i32 %r330, ptr %r332, align 4
  %r335 = getelementptr i32, ptr %r318, i32 %r720
  store i32 %r723, ptr %r335, align 4
  %r724 = add i32 %r721, 1
  %r725 = add i32 %r724, 0
  %r726 = sub i32 %r720, 1
  %r727 = add i32 %r726, 0
  br label %bb56

bb58:                                             ; preds = %bb56
  ret i32 0
}

define i32 @arrCopy(ptr %r340, ptr %r341) {
bb59:
  %r729 = add i32 0, 0
  %r730 = add i32 0, 0
  br label %bb60

bb60:                                             ; preds = %bb61, %bb59
  %r731 = phi i32 [ %r730, %bb59 ], [ %r734, %bb61 ]
  %r344 = load i32, ptr @n, align 4
  %r732 = icmp slt i32 %r731, %r344
  br i1 %r732, label %bb61, label %bb62

bb61:                                             ; preds = %bb60
  %r347 = getelementptr i32, ptr %r340, i32 %r731
  %r348 = load i32, ptr %r347, align 4
  %r350 = getelementptr i32, ptr %r341, i32 %r731
  store i32 %r348, ptr %r350, align 4
  %r733 = add i32 %r731, 1
  %r734 = add i32 %r733, 0
  br label %bb60

bb62:                                             ; preds = %bb60
  ret i32 0
}

define i32 @calSum(ptr %r353, i32 %r354) {
bb64:
  %r738 = add i32 0, 0
  %r739 = add i32 0, 0
  %r740 = add i32 0, 0
  %r741 = add i32 %r354, 0
  br label %bb63

bb63:                                             ; preds = %bb64
  %r742 = add i32 0, 0
  %r743 = add i32 0, 0
  br label %bb65

bb65:                                             ; preds = %bb70, %bb63
  %r744 = phi i32 [ %r743, %bb63 ], [ %r756, %bb70 ]
  %r745 = phi i32 [ %r742, %bb63 ], [ %r754, %bb70 ]
  %r359 = load i32, ptr @n, align 4
  %r746 = icmp slt i32 %r744, %r359
  br i1 %r746, label %bb66, label %bb67

bb66:                                             ; preds = %bb65
  %r363 = getelementptr i32, ptr %r353, i32 %r744
  %r364 = load i32, ptr %r363, align 4
  %r747 = add i32 %r745, %r364
  %r748 = add i32 %r747, 0
  %r749 = sdiv i32 %r744, %r741
  %r750 = mul i32 %r749, %r741
  %r751 = sub i32 %r744, %r750
  %r752 = sub i32 %r741, 1
  %r753 = icmp ne i32 %r751, %r752
  br i1 %r753, label %bb68, label %bb69

bb68:                                             ; preds = %bb66
  %r377 = getelementptr i32, ptr %r353, i32 %r744
  store i32 0, ptr %r377, align 4
  br label %bb70

bb69:                                             ; preds = %bb66
  %r380 = getelementptr i32, ptr %r353, i32 %r744
  store i32 %r748, ptr %r380, align 4
  %r757 = add i32 0, 0
  br label %bb70

bb70:                                             ; preds = %bb69, %bb68
  %r754 = phi i32 [ %r748, %bb68 ], [ %r757, %bb69 ]
  %r755 = add i32 %r744, 1
  %r756 = add i32 %r755, 0
  br label %bb65

bb67:                                             ; preds = %bb65
  ret i32 0
}

define i32 @avgPooling(ptr %r383, i32 %r384) {
bb72:
  %r763 = add i32 0, 0
  %r764 = add i32 0, 0
  %r765 = add i32 0, 0
  %r766 = add i32 0, 0
  %r767 = add i32 0, 0
  %r768 = add i32 %r384, 0
  br label %bb71

bb71:                                             ; preds = %bb72
  %r769 = add i32 0, 0
  %r770 = add i32 0, 0
  br label %bb73

bb73:                                             ; preds = %bb78, %bb71
  %r771 = phi i32 [ %r770, %bb71 ], [ %r784, %bb78 ]
  %r772 = phi i32 [ %r769, %bb71 ], [ %r787, %bb78 ]
  %r773 = phi i32 [ %r764, %bb71 ], [ %r785, %bb78 ]
  %r390 = load i32, ptr @n, align 4
  %r774 = icmp slt i32 %r772, %r390
  br i1 %r774, label %bb74, label %bb75

bb74:                                             ; preds = %bb73
  %r782 = sub i32 %r768, 1
  %r783 = icmp slt i32 %r772, %r782
  br i1 %r783, label %bb76, label %bb77

bb76:                                             ; preds = %bb74
  %r398 = getelementptr i32, ptr %r383, i32 %r772
  %r399 = load i32, ptr %r398, align 4
  %r802 = add i32 %r771, %r399
  %r803 = add i32 %r802, 0
  br label %bb78

bb77:                                             ; preds = %bb74
  %r788 = sub i32 %r768, 1
  %r789 = icmp eq i32 %r772, %r788
  br i1 %r789, label %bb79, label %bb80

bb79:                                             ; preds = %bb77
  %r405 = getelementptr i32, ptr %r383, i32 0
  %r406 = load i32, ptr %r405, align 4
  %r800 = add i32 %r406, 0
  %r801 = sdiv i32 %r771, %r768
  %r410 = getelementptr i32, ptr %r383, i32 0
  store i32 %r801, ptr %r410, align 4
  br label %bb81

bb80:                                             ; preds = %bb77
  %r413 = getelementptr i32, ptr %r383, i32 %r772
  %r414 = load i32, ptr %r413, align 4
  %r792 = add i32 %r771, %r414
  %r793 = sub i32 %r792, %r773
  %r794 = add i32 %r793, 0
  %r795 = sub i32 %r772, %r768
  %r796 = add i32 %r795, 1
  %r797 = add i32 %r796, 0
  %r424 = getelementptr i32, ptr %r383, i32 %r797
  %r425 = load i32, ptr %r424, align 4
  %r798 = add i32 %r425, 0
  %r799 = sdiv i32 %r794, %r768
  %r430 = getelementptr i32, ptr %r383, i32 %r797
  store i32 %r799, ptr %r430, align 4
  br label %bb81

bb81:                                             ; preds = %bb80, %bb79
  %r790 = phi i32 [ %r771, %bb79 ], [ %r794, %bb80 ]
  %r791 = phi i32 [ %r800, %bb79 ], [ %r798, %bb80 ]
  br label %bb78

bb78:                                             ; preds = %bb81, %bb76
  %r784 = phi i32 [ %r803, %bb76 ], [ %r790, %bb81 ]
  %r785 = phi i32 [ %r773, %bb76 ], [ %r791, %bb81 ]
  %r786 = add i32 %r772, 1
  %r787 = add i32 %r786, 0
  br label %bb73

bb75:                                             ; preds = %bb73
  %r433 = load i32, ptr @n, align 4
  %r775 = sub i32 %r433, %r768
  %r776 = add i32 %r775, 1
  %r777 = add i32 %r776, 0
  br label %bb82

bb82:                                             ; preds = %bb83, %bb75
  %r778 = phi i32 [ %r777, %bb75 ], [ %r781, %bb83 ]
  %r438 = load i32, ptr @n, align 4
  %r779 = icmp slt i32 %r778, %r438
  br i1 %r779, label %bb83, label %bb84

bb83:                                             ; preds = %bb82
  %r441 = getelementptr i32, ptr %r383, i32 %r778
  store i32 0, ptr %r441, align 4
  %r780 = add i32 %r778, 1
  %r781 = add i32 %r780, 0
  br label %bb82

bb84:                                             ; preds = %bb82
  ret i32 0
}

define i32 @main() {
bb85:
  call void @_sysy_starttime(i32 209)
  store i32 32, ptr @n, align 4
  %r444 = alloca [32 x i32], align 4
  %r445 = alloca [32 x i32], align 4
  %r446 = getelementptr [32 x i32], ptr %r444, i32 0, i32 0
  store i32 7, ptr %r446, align 4
  %r447 = getelementptr [32 x i32], ptr %r444, i32 0, i32 1
  store i32 23, ptr %r447, align 4
  %r448 = getelementptr [32 x i32], ptr %r444, i32 0, i32 2
  store i32 89, ptr %r448, align 4
  %r449 = getelementptr [32 x i32], ptr %r444, i32 0, i32 3
  store i32 26, ptr %r449, align 4
  %r450 = getelementptr [32 x i32], ptr %r444, i32 0, i32 4
  store i32 282, ptr %r450, align 4
  %r451 = getelementptr [32 x i32], ptr %r444, i32 0, i32 5
  store i32 254, ptr %r451, align 4
  %r452 = getelementptr [32 x i32], ptr %r444, i32 0, i32 6
  store i32 27, ptr %r452, align 4
  %r453 = getelementptr [32 x i32], ptr %r444, i32 0, i32 7
  store i32 5, ptr %r453, align 4
  %r454 = getelementptr [32 x i32], ptr %r444, i32 0, i32 8
  store i32 83, ptr %r454, align 4
  %r455 = getelementptr [32 x i32], ptr %r444, i32 0, i32 9
  store i32 273, ptr %r455, align 4
  %r456 = getelementptr [32 x i32], ptr %r444, i32 0, i32 10
  store i32 574, ptr %r456, align 4
  %r457 = getelementptr [32 x i32], ptr %r444, i32 0, i32 11
  store i32 905, ptr %r457, align 4
  %r458 = getelementptr [32 x i32], ptr %r444, i32 0, i32 12
  store i32 354, ptr %r458, align 4
  %r459 = getelementptr [32 x i32], ptr %r444, i32 0, i32 13
  store i32 657, ptr %r459, align 4
  %r460 = getelementptr [32 x i32], ptr %r444, i32 0, i32 14
  store i32 935, ptr %r460, align 4
  %r461 = getelementptr [32 x i32], ptr %r444, i32 0, i32 15
  store i32 264, ptr %r461, align 4
  %r462 = getelementptr [32 x i32], ptr %r444, i32 0, i32 16
  store i32 639, ptr %r462, align 4
  %r463 = getelementptr [32 x i32], ptr %r444, i32 0, i32 17
  store i32 459, ptr %r463, align 4
  %r464 = getelementptr [32 x i32], ptr %r444, i32 0, i32 18
  store i32 29, ptr %r464, align 4
  %r465 = getelementptr [32 x i32], ptr %r444, i32 0, i32 19
  store i32 68, ptr %r465, align 4
  %r466 = getelementptr [32 x i32], ptr %r444, i32 0, i32 20
  store i32 929, ptr %r466, align 4
  %r467 = getelementptr [32 x i32], ptr %r444, i32 0, i32 21
  store i32 756, ptr %r467, align 4
  %r468 = getelementptr [32 x i32], ptr %r444, i32 0, i32 22
  store i32 452, ptr %r468, align 4
  %r469 = getelementptr [32 x i32], ptr %r444, i32 0, i32 23
  store i32 279, ptr %r469, align 4
  %r470 = getelementptr [32 x i32], ptr %r444, i32 0, i32 24
  store i32 58, ptr %r470, align 4
  %r471 = getelementptr [32 x i32], ptr %r444, i32 0, i32 25
  store i32 87, ptr %r471, align 4
  %r472 = getelementptr [32 x i32], ptr %r444, i32 0, i32 26
  store i32 96, ptr %r472, align 4
  %r473 = getelementptr [32 x i32], ptr %r444, i32 0, i32 27
  store i32 36, ptr %r473, align 4
  %r474 = getelementptr [32 x i32], ptr %r444, i32 0, i32 28
  store i32 39, ptr %r474, align 4
  %r475 = getelementptr [32 x i32], ptr %r444, i32 0, i32 29
  store i32 28, ptr %r475, align 4
  %r476 = getelementptr [32 x i32], ptr %r444, i32 0, i32 30
  store i32 1, ptr %r476, align 4
  %r477 = getelementptr [32 x i32], ptr %r444, i32 0, i32 31
  store i32 290, ptr %r477, align 4
  %r806 = add i32 0, 0
  %r807 = call i32 @arrCopy(ptr %r444, ptr %r445)
  %r808 = add i32 %r807, 0
  %r809 = call i32 @revert(ptr %r445)
  %r810 = add i32 %r809, 0
  %r811 = add i32 0, 0
  %r812 = add i32 0, 0
  br label %bb86

bb86:                                             ; preds = %bb87, %bb85
  %r813 = phi i32 [ %r812, %bb85 ], [ %r880, %bb87 ]
  %r814 = icmp slt i32 %r813, 32
  br i1 %r814, label %bb87, label %bb88

bb87:                                             ; preds = %bb86
  %r485 = getelementptr [32 x i32], ptr %r445, i32 0, i32 %r813
  %r486 = load i32, ptr %r485, align 4
  %r878 = add i32 %r486, 0
  call void @putint(i32 %r878)
  %r879 = add i32 %r813, 1
  %r880 = add i32 %r879, 0
  br label %bb86

bb88:                                             ; preds = %bb86
  %r815 = call i32 @bubblesort(ptr %r445)
  %r816 = add i32 %r815, 0
  %r817 = add i32 0, 0
  br label %bb89

bb89:                                             ; preds = %bb90, %bb88
  %r818 = phi i32 [ %r817, %bb88 ], [ %r877, %bb90 ]
  %r819 = icmp slt i32 %r818, 32
  br i1 %r819, label %bb90, label %bb91

bb90:                                             ; preds = %bb89
  %r495 = getelementptr [32 x i32], ptr %r445, i32 0, i32 %r818
  %r496 = load i32, ptr %r495, align 4
  %r875 = add i32 %r496, 0
  call void @putint(i32 %r875)
  %r876 = add i32 %r818, 1
  %r877 = add i32 %r876, 0
  br label %bb89

bb91:                                             ; preds = %bb89
  %r820 = call i32 @getMid(ptr %r445)
  %r821 = add i32 %r820, 0
  call void @putint(i32 %r821)
  %r822 = call i32 @getMost(ptr %r445)
  %r823 = add i32 %r822, 0
  call void @putint(i32 %r823)
  %r824 = call i32 @arrCopy(ptr %r444, ptr %r445)
  %r825 = add i32 %r824, 0
  %r826 = call i32 @bubblesort(ptr %r445)
  %r827 = add i32 %r826, 0
  %r828 = add i32 0, 0
  br label %bb92

bb92:                                             ; preds = %bb93, %bb91
  %r829 = phi i32 [ %r828, %bb91 ], [ %r874, %bb93 ]
  %r830 = icmp slt i32 %r829, 32
  br i1 %r830, label %bb93, label %bb94

bb93:                                             ; preds = %bb92
  %r512 = getelementptr [32 x i32], ptr %r445, i32 0, i32 %r829
  %r513 = load i32, ptr %r512, align 4
  %r872 = add i32 %r513, 0
  call void @putint(i32 %r872)
  %r873 = add i32 %r829, 1
  %r874 = add i32 %r873, 0
  br label %bb92

bb94:                                             ; preds = %bb92
  %r831 = call i32 @arrCopy(ptr %r444, ptr %r445)
  %r832 = add i32 %r831, 0
  %r833 = call i32 @insertsort(ptr %r445)
  %r834 = add i32 %r833, 0
  %r835 = add i32 0, 0
  br label %bb95

bb95:                                             ; preds = %bb96, %bb94
  %r836 = phi i32 [ %r835, %bb94 ], [ %r871, %bb96 ]
  %r837 = icmp slt i32 %r836, 32
  br i1 %r837, label %bb96, label %bb97

bb96:                                             ; preds = %bb95
  %r523 = getelementptr [32 x i32], ptr %r445, i32 0, i32 %r836
  %r524 = load i32, ptr %r523, align 4
  %r869 = add i32 %r524, 0
  call void @putint(i32 %r869)
  %r870 = add i32 %r836, 1
  %r871 = add i32 %r870, 0
  br label %bb95

bb97:                                             ; preds = %bb95
  %r838 = call i32 @arrCopy(ptr %r444, ptr %r445)
  %r839 = add i32 %r838, 0
  %r840 = add i32 0, 0
  %r841 = add i32 31, 0
  %r842 = call i32 @QuickSort(ptr %r445, i32 %r840, i32 %r841)
  %r843 = add i32 %r842, 0
  br label %bb98

bb98:                                             ; preds = %bb99, %bb97
  %r844 = phi i32 [ %r840, %bb97 ], [ %r868, %bb99 ]
  %r845 = icmp slt i32 %r844, 32
  br i1 %r845, label %bb99, label %bb100

bb99:                                             ; preds = %bb98
  %r536 = getelementptr [32 x i32], ptr %r445, i32 0, i32 %r844
  %r537 = load i32, ptr %r536, align 4
  %r866 = add i32 %r537, 0
  call void @putint(i32 %r866)
  %r867 = add i32 %r844, 1
  %r868 = add i32 %r867, 0
  br label %bb98

bb100:                                            ; preds = %bb98
  %r846 = call i32 @arrCopy(ptr %r444, ptr %r445)
  %r847 = add i32 %r846, 0
  %r848 = call i32 @calSum(ptr %r445, i32 4)
  %r849 = add i32 %r848, 0
  %r850 = add i32 0, 0
  br label %bb101

bb101:                                            ; preds = %bb102, %bb100
  %r851 = phi i32 [ %r850, %bb100 ], [ %r865, %bb102 ]
  %r852 = icmp slt i32 %r851, 32
  br i1 %r852, label %bb102, label %bb103

bb102:                                            ; preds = %bb101
  %r547 = getelementptr [32 x i32], ptr %r445, i32 0, i32 %r851
  %r548 = load i32, ptr %r547, align 4
  %r863 = add i32 %r548, 0
  call void @putint(i32 %r863)
  %r864 = add i32 %r851, 1
  %r865 = add i32 %r864, 0
  br label %bb101

bb103:                                            ; preds = %bb101
  %r853 = call i32 @arrCopy(ptr %r444, ptr %r445)
  %r854 = add i32 %r853, 0
  %r855 = call i32 @avgPooling(ptr %r445, i32 3)
  %r856 = add i32 %r855, 0
  %r857 = add i32 0, 0
  br label %bb104

bb104:                                            ; preds = %bb105, %bb103
  %r858 = phi i32 [ %r857, %bb103 ], [ %r862, %bb105 ]
  %r859 = icmp slt i32 %r858, 32
  br i1 %r859, label %bb105, label %bb106

bb105:                                            ; preds = %bb104
  %r558 = getelementptr [32 x i32], ptr %r445, i32 0, i32 %r858
  %r559 = load i32, ptr %r558, align 4
  %r860 = add i32 %r559, 0
  call void @putint(i32 %r860)
  %r861 = add i32 %r858, 1
  %r862 = add i32 %r861, 0
  br label %bb104

bb106:                                            ; preds = %bb104
  call void @_sysy_stoptime(i32 312)
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
