declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
@n = global i32 0
define i32 @bubblesort( i32* %r100 ) {
bb1:
  %r569 = add i32 0, 0
  %r570 = add i32 0, 0
  %r571 = add i32 0, 0
  %r572 = add i32 0, 0
  %r573 = add i32 0, 0
  %r574 = add i32 0, 0
  br label %bb2

bb2:
  %r575 = phi i32 [ %r574, %bb1 ], [ %r584, %bb7 ]
  %r104 = load i32, i32* @n
  %r576 = sub i32 %r104, 1
  %r577 = icmp slt i32 %r575, %r576
  br i1 %r577, label %bb3, label %bb4

bb3:
  %r578 = add i32 0, 0
  br label %bb5

bb5:
  %r579 = phi i32 [ %r578, %bb3 ], [ %r589, %bb10 ]
  %r108 = load i32, i32* @n
  %r580 = sub i32 %r108, %r575
  %r581 = sub i32 %r580, 1
  %r582 = icmp slt i32 %r579, %r581
  br i1 %r582, label %bb6, label %bb7

bb6:
  %r585 = add i32 %r579, 1
  %r586 = add i32 %r585, 0
  %r117 = getelementptr i32, i32* %r100, i32 %r579
  %r118 = load i32, i32* %r117
  %r120 = getelementptr i32, i32* %r100, i32 %r586
  %r121 = load i32, i32* %r120
  %r587 = icmp sgt i32 %r118, %r121
  br i1 %r587, label %bb8, label %bb9

bb8:
  %r590 = add i32 %r579, 1
  %r591 = add i32 %r590, 0
  %r128 = getelementptr i32, i32* %r100, i32 %r591
  %r129 = load i32, i32* %r128
  %r592 = add i32 %r129, 0
  %r131 = getelementptr i32, i32* %r100, i32 %r579
  %r132 = load i32, i32* %r131
  %r134 = getelementptr i32, i32* %r100, i32 %r591
  store i32 %r132, i32* %r134
  %r137 = getelementptr i32, i32* %r100, i32 %r579
  store i32 %r592, i32* %r137
  br label %bb10

bb9:
  br label %bb10

bb10:
  %r588 = add i32 %r579, 1
  %r589 = add i32 %r588, 0
  br label %bb5

bb7:
  %r583 = add i32 %r575, 1
  %r584 = add i32 %r583, 0
  br label %bb2

bb4:
  ret i32 0
}

define i32 @insertsort( i32* %r142 ) {
bb11:
  %r598 = add i32 0, 0
  %r599 = add i32 0, 0
  %r600 = add i32 0, 0
  %r601 = add i32 0, 0
  %r602 = add i32 0, 0
  %r603 = add i32 1, 0
  br label %bb12

bb12:
  %r604 = phi i32 [ %r603, %bb11 ], [ %r615, %bb17 ]
  %r145 = load i32, i32* @n
  %r605 = icmp slt i32 %r604, %r145
  br i1 %r605, label %bb13, label %bb14

bb13:
  %r149 = getelementptr i32, i32* %r142, i32 %r604
  %r150 = load i32, i32* %r149
  %r606 = add i32 %r150, 0
  %r607 = sub i32 %r604, 1
  %r608 = add i32 %r607, 0
  br label %bb15

bb15:
  %r609 = phi i32 [ %r608, %bb13 ], [ %r620, %bb16 ]
  %r610 = sub i32 0, 1
  %r611 = icmp sgt i32 %r609, %r610
  br i1 %r611, label %bb18, label %bb17

bb18:
  %r160 = getelementptr i32, i32* %r142, i32 %r609
  %r161 = load i32, i32* %r160
  %r616 = icmp slt i32 %r606, %r161
  br i1 %r616, label %bb16, label %bb17

bb16:
  %r617 = add i32 %r609, 1
  %r618 = add i32 %r617, 0
  %r167 = getelementptr i32, i32* %r142, i32 %r609
  %r168 = load i32, i32* %r167
  %r170 = getelementptr i32, i32* %r142, i32 %r618
  store i32 %r168, i32* %r170
  %r619 = sub i32 %r609, 1
  %r620 = add i32 %r619, 0
  br label %bb15

bb17:
  %r612 = add i32 %r609, 1
  %r613 = add i32 %r612, 0
  %r178 = getelementptr i32, i32* %r142, i32 %r613
  store i32 %r606, i32* %r178
  %r614 = add i32 %r604, 1
  %r615 = add i32 %r614, 0
  br label %bb12

bb14:
  ret i32 0
}

define i32 @QuickSort( i32* %r181, i32 %r182, i32 %r184 ) {
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

bb19:
  %r635 = icmp slt i32 %r632, %r634
  br i1 %r635, label %bb21, label %bb22

bb21:
  %r636 = add i32 %r632, 0
  %r637 = add i32 %r634, 0
  %r195 = getelementptr i32, i32* %r181, i32 %r632
  %r196 = load i32, i32* %r195
  %r638 = add i32 %r196, 0
  br label %bb24

bb24:
  %r639 = phi i32 [ %r637, %bb21 ], [ %r657, %bb40 ]
  %r640 = phi i32 [ %r636, %bb21 ], [ %r654, %bb40 ]
  %r641 = icmp slt i32 %r640, %r639
  br i1 %r641, label %bb25, label %bb26

bb25:
  br label %bb27

bb27:
  %r650 = phi i32 [ %r639, %bb25 ], [ %r668, %bb28 ]
  %r651 = icmp slt i32 %r640, %r650
  br i1 %r651, label %bb30, label %bb29

bb30:
  %r205 = getelementptr i32, i32* %r181, i32 %r650
  %r206 = load i32, i32* %r205
  %r665 = sub i32 %r638, 1
  %r666 = icmp sgt i32 %r206, %r665
  br i1 %r666, label %bb28, label %bb29

bb28:
  %r667 = sub i32 %r650, 1
  %r668 = add i32 %r667, 0
  br label %bb27

bb29:
  %r652 = icmp slt i32 %r640, %r650
  br i1 %r652, label %bb31, label %bb32

bb31:
  %r216 = getelementptr i32, i32* %r181, i32 %r650
  %r217 = load i32, i32* %r216
  %r219 = getelementptr i32, i32* %r181, i32 %r640
  store i32 %r217, i32* %r219
  %r663 = add i32 %r640, 1
  %r664 = add i32 %r663, 0
  br label %bb33

bb32:
  br label %bb33

bb33:
  %r653 = phi i32 [ %r664, %bb31 ], [ %r640, %bb32 ]
  br label %bb34

bb34:
  %r654 = phi i32 [ %r653, %bb33 ], [ %r662, %bb35 ]
  %r655 = icmp slt i32 %r654, %r650
  br i1 %r655, label %bb37, label %bb36

bb37:
  %r227 = getelementptr i32, i32* %r181, i32 %r654
  %r228 = load i32, i32* %r227
  %r660 = icmp slt i32 %r228, %r638
  br i1 %r660, label %bb35, label %bb36

bb35:
  %r661 = add i32 %r654, 1
  %r662 = add i32 %r661, 0
  br label %bb34

bb36:
  %r656 = icmp slt i32 %r654, %r650
  br i1 %r656, label %bb38, label %bb39

bb38:
  %r237 = getelementptr i32, i32* %r181, i32 %r654
  %r238 = load i32, i32* %r237
  %r240 = getelementptr i32, i32* %r181, i32 %r650
  store i32 %r238, i32* %r240
  %r658 = sub i32 %r650, 1
  %r659 = add i32 %r658, 0
  br label %bb40

bb39:
  br label %bb40

bb40:
  %r657 = phi i32 [ %r659, %bb38 ], [ %r650, %bb39 ]
  br label %bb24

bb26:
  %r245 = getelementptr i32, i32* %r181, i32 %r640
  store i32 %r638, i32* %r245
  %r642 = sub i32 %r640, 1
  %r643 = add i32 %r642, 0
  %r644 = call i32 @QuickSort(i32* %r181, i32 %r632, i32 %r643)
  %r645 = add i32 %r644, 0
  %r646 = add i32 %r640, 1
  %r647 = add i32 %r646, 0
  %r648 = call i32 @QuickSort(i32* %r181, i32 %r647, i32 %r634)
  %r649 = add i32 %r648, 0
  br label %bb23

bb22:
  br label %bb23

bb23:
  ret i32 0
}

define i32 @getMid( i32* %r257 ) {
bb41:
  %r671 = add i32 0, 0
  %r672 = add i32 0, 0
  %r259 = load i32, i32* @n
  %r673 = sdiv i32 %r259, 2
  %r674 = mul i32 %r673, 2
  %r262 = load i32, i32* @n
  %r675 = icmp eq i32 %r674, %r262
  br i1 %r675, label %bb42, label %bb43

bb42:
  %r264 = load i32, i32* @n
  %r678 = sdiv i32 %r264, 2
  %r679 = add i32 %r678, 0
  %r680 = sub i32 %r679, 1
  %r681 = add i32 %r680, 0
  %r270 = getelementptr i32, i32* %r257, i32 %r679
  %r271 = load i32, i32* %r270
  %r273 = getelementptr i32, i32* %r257, i32 %r681
  %r274 = load i32, i32* %r273
  %r682 = add i32 %r271, %r274
  %r683 = sdiv i32 %r682, 2
  ret i32 %r683
bb43:
  %r277 = load i32, i32* @n
  %r676 = sdiv i32 %r277, 2
  %r677 = add i32 %r676, 0
  %r280 = getelementptr i32, i32* %r257, i32 %r677
  %r281 = load i32, i32* %r280
  ret i32 %r281
}

define i32 @getMost( i32* %r282 ) {
bb45:
  %r688 = add i32 0, 0
  %r689 = add i32 0, 0
  %r690 = add i32 0, 0
  %r283 = alloca [ 1000 x i32 ]
  %r691 = add i32 0, 0
  %r692 = add i32 0, 0
  br label %bb46

bb46:
  %r693 = phi i32 [ %r692, %bb45 ], [ %r711, %bb47 ]
  %r694 = icmp slt i32 %r693, 1000
  br i1 %r694, label %bb47, label %bb48

bb47:
  %r288 = getelementptr [1000 x i32 ], [1000 x i32 ]* %r283, i32 0, i32 %r693
  store i32 0, i32* %r288
  %r710 = add i32 %r693, 1
  %r711 = add i32 %r710, 0
  br label %bb46

bb48:
  %r695 = add i32 0, 0
  %r696 = add i32 0, 0
  br label %bb49

bb49:
  %r697 = phi i32 [ %r695, %bb48 ], [ %r707, %bb54 ]
  %r698 = phi i32 [ %r696, %bb48 ], [ %r704, %bb54 ]
  %r699 = phi i32 [ %r689, %bb48 ], [ %r705, %bb54 ]
  %r294 = load i32, i32* @n
  %r700 = icmp slt i32 %r697, %r294
  br i1 %r700, label %bb50, label %bb51

bb50:
  %r298 = getelementptr i32, i32* %r282, i32 %r697
  %r299 = load i32, i32* %r298
  %r701 = add i32 %r299, 0
  %r301 = getelementptr [1000 x i32 ], [1000 x i32 ]* %r283, i32 0, i32 %r701
  %r302 = load i32, i32* %r301
  %r702 = add i32 %r302, 1
  %r305 = getelementptr [1000 x i32 ], [1000 x i32 ]* %r283, i32 0, i32 %r701
  store i32 %r702, i32* %r305
  %r307 = getelementptr [1000 x i32 ], [1000 x i32 ]* %r283, i32 0, i32 %r701
  %r308 = load i32, i32* %r307
  %r703 = icmp sgt i32 %r308, %r698
  br i1 %r703, label %bb52, label %bb53

bb52:
  %r312 = getelementptr [1000 x i32 ], [1000 x i32 ]* %r283, i32 0, i32 %r701
  %r313 = load i32, i32* %r312
  %r708 = add i32 %r313, 0
  %r709 = add i32 %r701, 0
  br label %bb54

bb53:
  br label %bb54

bb54:
  %r704 = phi i32 [ %r708, %bb52 ], [ %r698, %bb53 ]
  %r705 = phi i32 [ %r709, %bb52 ], [ %r699, %bb53 ]
  %r706 = add i32 %r697, 1
  %r707 = add i32 %r706, 0
  br label %bb49

bb51:
  ret i32 %r699
}

define i32 @revert( i32* %r318 ) {
bb55:
  %r715 = add i32 0, 0
  %r716 = add i32 0, 0
  %r717 = add i32 0, 0
  %r718 = add i32 0, 0
  %r719 = add i32 0, 0
  br label %bb56

bb56:
  %r720 = phi i32 [ %r719, %bb55 ], [ %r727, %bb57 ]
  %r721 = phi i32 [ %r718, %bb55 ], [ %r725, %bb57 ]
  %r722 = icmp slt i32 %r721, %r720
  br i1 %r722, label %bb57, label %bb58

bb57:
  %r326 = getelementptr i32, i32* %r318, i32 %r721
  %r327 = load i32, i32* %r326
  %r723 = add i32 %r327, 0
  %r329 = getelementptr i32, i32* %r318, i32 %r720
  %r330 = load i32, i32* %r329
  %r332 = getelementptr i32, i32* %r318, i32 %r721
  store i32 %r330, i32* %r332
  %r335 = getelementptr i32, i32* %r318, i32 %r720
  store i32 %r723, i32* %r335
  %r724 = add i32 %r721, 1
  %r725 = add i32 %r724, 0
  %r726 = sub i32 %r720, 1
  %r727 = add i32 %r726, 0
  br label %bb56

bb58:
  ret i32 0
}

define i32 @arrCopy( i32* %r340, i32* %r341 ) {
bb59:
  %r729 = add i32 0, 0
  %r730 = add i32 0, 0
  br label %bb60

bb60:
  %r731 = phi i32 [ %r730, %bb59 ], [ %r734, %bb61 ]
  %r344 = load i32, i32* @n
  %r732 = icmp slt i32 %r731, %r344
  br i1 %r732, label %bb61, label %bb62

bb61:
  %r347 = getelementptr i32, i32* %r340, i32 %r731
  %r348 = load i32, i32* %r347
  %r350 = getelementptr i32, i32* %r341, i32 %r731
  store i32 %r348, i32* %r350
  %r733 = add i32 %r731, 1
  %r734 = add i32 %r733, 0
  br label %bb60

bb62:
  ret i32 0
}

define i32 @calSum( i32* %r353, i32 %r354 ) {
bb64:
  %r738 = add i32 0, 0
  %r739 = add i32 0, 0
  %r740 = add i32 0, 0
  %r741 = add i32 %r354, 0
  br label %bb63

bb63:
  %r742 = add i32 0, 0
  %r743 = add i32 0, 0
  br label %bb65

bb65:
  %r744 = phi i32 [ %r742, %bb63 ], [ %r754, %bb70 ]
  %r745 = phi i32 [ %r743, %bb63 ], [ %r756, %bb70 ]
  %r359 = load i32, i32* @n
  %r746 = icmp slt i32 %r745, %r359
  br i1 %r746, label %bb66, label %bb67

bb66:
  %r363 = getelementptr i32, i32* %r353, i32 %r745
  %r364 = load i32, i32* %r363
  %r747 = add i32 %r744, %r364
  %r748 = add i32 %r747, 0
  %r749 = sdiv i32 %r745, %r741
  %r750 = mul i32 %r749, %r741
  %r751 = sub i32 %r745, %r750
  %r752 = sub i32 %r741, 1
  %r753 = icmp ne i32 %r751, %r752
  br i1 %r753, label %bb68, label %bb69

bb68:
  %r377 = getelementptr i32, i32* %r353, i32 %r745
  store i32 0, i32* %r377
  br label %bb70

bb69:
  %r380 = getelementptr i32, i32* %r353, i32 %r745
  store i32 %r748, i32* %r380
  %r757 = add i32 0, 0
  br label %bb70

bb70:
  %r754 = phi i32 [ %r748, %bb68 ], [ %r757, %bb69 ]
  %r755 = add i32 %r745, 1
  %r756 = add i32 %r755, 0
  br label %bb65

bb67:
  ret i32 0
}

define i32 @avgPooling( i32* %r383, i32 %r384 ) {
bb72:
  %r763 = add i32 0, 0
  %r764 = add i32 0, 0
  %r765 = add i32 0, 0
  %r766 = add i32 0, 0
  %r767 = add i32 0, 0
  %r768 = add i32 %r384, 0
  br label %bb71

bb71:
  %r769 = add i32 0, 0
  %r770 = add i32 0, 0
  br label %bb73

bb73:
  %r771 = phi i32 [ %r764, %bb71 ], [ %r784, %bb78 ]
  %r772 = phi i32 [ %r769, %bb71 ], [ %r787, %bb78 ]
  %r773 = phi i32 [ %r770, %bb71 ], [ %r785, %bb78 ]
  %r390 = load i32, i32* @n
  %r774 = icmp slt i32 %r772, %r390
  br i1 %r774, label %bb74, label %bb75

bb74:
  %r782 = sub i32 %r768, 1
  %r783 = icmp slt i32 %r772, %r782
  br i1 %r783, label %bb76, label %bb77

bb76:
  %r398 = getelementptr i32, i32* %r383, i32 %r772
  %r399 = load i32, i32* %r398
  %r802 = add i32 %r773, %r399
  %r803 = add i32 %r802, 0
  br label %bb78

bb77:
  %r788 = sub i32 %r768, 1
  %r789 = icmp eq i32 %r772, %r788
  br i1 %r789, label %bb79, label %bb80

bb79:
  %r405 = getelementptr i32, i32* %r383, i32 0
  %r406 = load i32, i32* %r405
  %r800 = add i32 %r406, 0
  %r801 = sdiv i32 %r773, %r768
  %r410 = getelementptr i32, i32* %r383, i32 0
  store i32 %r801, i32* %r410
  br label %bb81

bb80:
  %r413 = getelementptr i32, i32* %r383, i32 %r772
  %r414 = load i32, i32* %r413
  %r792 = add i32 %r773, %r414
  %r793 = sub i32 %r792, %r771
  %r794 = add i32 %r793, 0
  %r795 = sub i32 %r772, %r768
  %r796 = add i32 %r795, 1
  %r797 = add i32 %r796, 0
  %r424 = getelementptr i32, i32* %r383, i32 %r797
  %r425 = load i32, i32* %r424
  %r798 = add i32 %r425, 0
  %r799 = sdiv i32 %r794, %r768
  %r430 = getelementptr i32, i32* %r383, i32 %r797
  store i32 %r799, i32* %r430
  br label %bb81

bb81:
  %r790 = phi i32 [ %r800, %bb79 ], [ %r798, %bb80 ]
  %r791 = phi i32 [ %r773, %bb79 ], [ %r794, %bb80 ]
  br label %bb78

bb78:
  %r784 = phi i32 [ %r771, %bb76 ], [ %r790, %bb81 ]
  %r785 = phi i32 [ %r803, %bb76 ], [ %r791, %bb81 ]
  %r786 = add i32 %r772, 1
  %r787 = add i32 %r786, 0
  br label %bb73

bb75:
  %r433 = load i32, i32* @n
  %r775 = sub i32 %r433, %r768
  %r776 = add i32 %r775, 1
  %r777 = add i32 %r776, 0
  br label %bb82

bb82:
  %r778 = phi i32 [ %r777, %bb75 ], [ %r781, %bb83 ]
  %r438 = load i32, i32* @n
  %r779 = icmp slt i32 %r778, %r438
  br i1 %r779, label %bb83, label %bb84

bb83:
  %r441 = getelementptr i32, i32* %r383, i32 %r778
  store i32 0, i32* %r441
  %r780 = add i32 %r778, 1
  %r781 = add i32 %r780, 0
  br label %bb82

bb84:
  ret i32 0
}

define i32 @main( ) {
bb85:
  call void @_sysy_starttime(i32 209)
  store i32 32, i32* @n
  %r444 = alloca [ 32 x i32 ]
  %r445 = alloca [ 32 x i32 ]
  %r446 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 0
  store i32 7, i32* %r446
  %r447 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 1
  store i32 23, i32* %r447
  %r448 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 2
  store i32 89, i32* %r448
  %r449 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 3
  store i32 26, i32* %r449
  %r450 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 4
  store i32 282, i32* %r450
  %r451 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 5
  store i32 254, i32* %r451
  %r452 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 6
  store i32 27, i32* %r452
  %r453 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 7
  store i32 5, i32* %r453
  %r454 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 8
  store i32 83, i32* %r454
  %r455 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 9
  store i32 273, i32* %r455
  %r456 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 10
  store i32 574, i32* %r456
  %r457 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 11
  store i32 905, i32* %r457
  %r458 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 12
  store i32 354, i32* %r458
  %r459 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 13
  store i32 657, i32* %r459
  %r460 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 14
  store i32 935, i32* %r460
  %r461 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 15
  store i32 264, i32* %r461
  %r462 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 16
  store i32 639, i32* %r462
  %r463 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 17
  store i32 459, i32* %r463
  %r464 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 18
  store i32 29, i32* %r464
  %r465 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 19
  store i32 68, i32* %r465
  %r466 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 20
  store i32 929, i32* %r466
  %r467 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 21
  store i32 756, i32* %r467
  %r468 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 22
  store i32 452, i32* %r468
  %r469 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 23
  store i32 279, i32* %r469
  %r470 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 24
  store i32 58, i32* %r470
  %r471 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 25
  store i32 87, i32* %r471
  %r472 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 26
  store i32 96, i32* %r472
  %r473 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 27
  store i32 36, i32* %r473
  %r474 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 28
  store i32 39, i32* %r474
  %r475 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 29
  store i32 28, i32* %r475
  %r476 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 30
  store i32 1, i32* %r476
  %r477 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 31
  store i32 290, i32* %r477
  %r806 = add i32 0, 0
  %r807 = call i32 @arrCopy(i32* %r444, i32* %r445)
  %r808 = add i32 %r807, 0
  %r809 = call i32 @revert(i32* %r445)
  %r810 = add i32 %r809, 0
  %r811 = add i32 0, 0
  %r812 = add i32 0, 0
  br label %bb86

bb86:
  %r813 = phi i32 [ %r812, %bb85 ], [ %r880, %bb87 ]
  %r814 = icmp slt i32 %r813, 32
  br i1 %r814, label %bb87, label %bb88

bb87:
  %r485 = getelementptr [32 x i32 ], [32 x i32 ]* %r445, i32 0, i32 %r813
  %r486 = load i32, i32* %r485
  %r878 = add i32 %r486, 0
  call void @putint(i32 %r878)
  %r879 = add i32 %r813, 1
  %r880 = add i32 %r879, 0
  br label %bb86

bb88:
  %r815 = call i32 @bubblesort(i32* %r445)
  %r816 = add i32 %r815, 0
  %r817 = add i32 0, 0
  br label %bb89

bb89:
  %r818 = phi i32 [ %r817, %bb88 ], [ %r877, %bb90 ]
  %r819 = icmp slt i32 %r818, 32
  br i1 %r819, label %bb90, label %bb91

bb90:
  %r495 = getelementptr [32 x i32 ], [32 x i32 ]* %r445, i32 0, i32 %r818
  %r496 = load i32, i32* %r495
  %r875 = add i32 %r496, 0
  call void @putint(i32 %r875)
  %r876 = add i32 %r818, 1
  %r877 = add i32 %r876, 0
  br label %bb89

bb91:
  %r820 = call i32 @getMid(i32* %r445)
  %r821 = add i32 %r820, 0
  call void @putint(i32 %r821)
  %r822 = call i32 @getMost(i32* %r445)
  %r823 = add i32 %r822, 0
  call void @putint(i32 %r823)
  %r824 = call i32 @arrCopy(i32* %r444, i32* %r445)
  %r825 = add i32 %r824, 0
  %r826 = call i32 @bubblesort(i32* %r445)
  %r827 = add i32 %r826, 0
  %r828 = add i32 0, 0
  br label %bb92

bb92:
  %r829 = phi i32 [ %r828, %bb91 ], [ %r874, %bb93 ]
  %r830 = icmp slt i32 %r829, 32
  br i1 %r830, label %bb93, label %bb94

bb93:
  %r512 = getelementptr [32 x i32 ], [32 x i32 ]* %r445, i32 0, i32 %r829
  %r513 = load i32, i32* %r512
  %r872 = add i32 %r513, 0
  call void @putint(i32 %r872)
  %r873 = add i32 %r829, 1
  %r874 = add i32 %r873, 0
  br label %bb92

bb94:
  %r831 = call i32 @arrCopy(i32* %r444, i32* %r445)
  %r832 = add i32 %r831, 0
  %r833 = call i32 @insertsort(i32* %r445)
  %r834 = add i32 %r833, 0
  %r835 = add i32 0, 0
  br label %bb95

bb95:
  %r836 = phi i32 [ %r835, %bb94 ], [ %r871, %bb96 ]
  %r837 = icmp slt i32 %r836, 32
  br i1 %r837, label %bb96, label %bb97

bb96:
  %r523 = getelementptr [32 x i32 ], [32 x i32 ]* %r445, i32 0, i32 %r836
  %r524 = load i32, i32* %r523
  %r869 = add i32 %r524, 0
  call void @putint(i32 %r869)
  %r870 = add i32 %r836, 1
  %r871 = add i32 %r870, 0
  br label %bb95

bb97:
  %r838 = call i32 @arrCopy(i32* %r444, i32* %r445)
  %r839 = add i32 %r838, 0
  %r840 = add i32 0, 0
  %r841 = add i32 31, 0
  %r842 = call i32 @QuickSort(i32* %r445, i32 %r840, i32 %r841)
  %r843 = add i32 %r842, 0
  br label %bb98

bb98:
  %r844 = phi i32 [ %r840, %bb97 ], [ %r868, %bb99 ]
  %r845 = icmp slt i32 %r844, 32
  br i1 %r845, label %bb99, label %bb100

bb99:
  %r536 = getelementptr [32 x i32 ], [32 x i32 ]* %r445, i32 0, i32 %r844
  %r537 = load i32, i32* %r536
  %r866 = add i32 %r537, 0
  call void @putint(i32 %r866)
  %r867 = add i32 %r844, 1
  %r868 = add i32 %r867, 0
  br label %bb98

bb100:
  %r846 = call i32 @arrCopy(i32* %r444, i32* %r445)
  %r847 = add i32 %r846, 0
  %r848 = call i32 @calSum(i32* %r445, i32 4)
  %r849 = add i32 %r848, 0
  %r850 = add i32 0, 0
  br label %bb101

bb101:
  %r851 = phi i32 [ %r850, %bb100 ], [ %r865, %bb102 ]
  %r852 = icmp slt i32 %r851, 32
  br i1 %r852, label %bb102, label %bb103

bb102:
  %r547 = getelementptr [32 x i32 ], [32 x i32 ]* %r445, i32 0, i32 %r851
  %r548 = load i32, i32* %r547
  %r863 = add i32 %r548, 0
  call void @putint(i32 %r863)
  %r864 = add i32 %r851, 1
  %r865 = add i32 %r864, 0
  br label %bb101

bb103:
  %r853 = call i32 @arrCopy(i32* %r444, i32* %r445)
  %r854 = add i32 %r853, 0
  %r855 = call i32 @avgPooling(i32* %r445, i32 3)
  %r856 = add i32 %r855, 0
  %r857 = add i32 0, 0
  br label %bb104

bb104:
  %r858 = phi i32 [ %r857, %bb103 ], [ %r862, %bb105 ]
  %r859 = icmp slt i32 %r858, 32
  br i1 %r859, label %bb105, label %bb106

bb105:
  %r558 = getelementptr [32 x i32 ], [32 x i32 ]* %r445, i32 0, i32 %r858
  %r559 = load i32, i32* %r558
  %r860 = add i32 %r559, 0
  call void @putint(i32 %r860)
  %r861 = add i32 %r858, 1
  %r862 = add i32 %r861, 0
  br label %bb104

bb106:
  call void @_sysy_stoptime(i32 312)
  ret i32 0
}

