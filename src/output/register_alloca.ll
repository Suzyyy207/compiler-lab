; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.timeval = type { i64, i32 }

@a1 = global i32 1
@a2 = global i32 2
@a3 = global i32 3
@a4 = global i32 4
@a5 = global i32 5
@a6 = global i32 6
@a7 = global i32 7
@a8 = global i32 8
@a9 = global i32 9
@a10 = global i32 10
@a11 = global i32 11
@a12 = global i32 12
@a13 = global i32 13
@a14 = global i32 14
@a15 = global i32 15
@a16 = global i32 16
@a17 = global i32 1
@a18 = global i32 2
@a19 = global i32 3
@a20 = global i32 4
@a21 = global i32 5
@a22 = global i32 6
@a23 = global i32 7
@a24 = global i32 8
@a25 = global i32 9
@a26 = global i32 10
@a27 = global i32 11
@a28 = global i32 12
@a29 = global i32 13
@a30 = global i32 14
@a31 = global i32 15
@a32 = global i32 16
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

define i32 @func(i32 %r100, i32 %r102) {
bb2:
  %r612 = add i32 0, 0
  %r613 = add i32 0, 0
  %r614 = add i32 0, 0
  %r615 = add i32 0, 0
  %r616 = add i32 0, 0
  %r617 = add i32 0, 0
  %r618 = add i32 0, 0
  %r619 = add i32 0, 0
  %r620 = add i32 0, 0
  %r621 = add i32 0, 0
  %r622 = add i32 0, 0
  %r623 = add i32 0, 0
  %r624 = add i32 0, 0
  %r625 = add i32 0, 0
  %r626 = add i32 0, 0
  %r627 = add i32 0, 0
  %r628 = add i32 0, 0
  %r629 = add i32 0, 0
  %r630 = add i32 0, 0
  %r631 = add i32 0, 0
  %r632 = add i32 0, 0
  %r633 = add i32 0, 0
  %r634 = add i32 0, 0
  %r635 = add i32 0, 0
  %r636 = add i32 0, 0
  %r637 = add i32 0, 0
  %r638 = add i32 0, 0
  %r639 = add i32 0, 0
  %r640 = add i32 0, 0
  %r641 = add i32 0, 0
  %r642 = add i32 0, 0
  %r643 = add i32 0, 0
  %r644 = add i32 0, 0
  %r645 = add i32 0, 0
  %r646 = add i32 0, 0
  %r647 = add i32 0, 0
  %r648 = add i32 0, 0
  %r649 = add i32 0, 0
  %r650 = add i32 %r100, 0
  %r651 = add i32 0, 0
  %r652 = add i32 %r102, 0
  br label %bb1

bb1:                                              ; preds = %bb2
  %r653 = add i32 %r650, %r652
  %r654 = add i32 %r653, 0
  %r655 = call i32 @getint()
  %r656 = add i32 %r655, 0
  %r657 = call i32 @getint()
  %r658 = add i32 %r657, 0
  %r659 = call i32 @getint()
  %r660 = add i32 %r659, 0
  %r661 = call i32 @getint()
  %r662 = add i32 %r661, 0
  %r663 = add i32 1, %r656
  %r150 = load i32, ptr @a1, align 4
  %r664 = add i32 %r663, %r150
  %r665 = add i32 %r664, 0
  %r666 = add i32 2, %r658
  %r154 = load i32, ptr @a2, align 4
  %r667 = add i32 %r666, %r154
  %r668 = add i32 %r667, 0
  %r669 = add i32 3, %r660
  %r158 = load i32, ptr @a3, align 4
  %r670 = add i32 %r669, %r158
  %r671 = add i32 %r670, 0
  %r672 = add i32 4, %r662
  %r162 = load i32, ptr @a4, align 4
  %r673 = add i32 %r672, %r162
  %r674 = add i32 %r673, 0
  %r675 = add i32 1, %r665
  %r166 = load i32, ptr @a5, align 4
  %r676 = add i32 %r675, %r166
  %r677 = add i32 %r676, 0
  %r678 = add i32 2, %r668
  %r170 = load i32, ptr @a6, align 4
  %r679 = add i32 %r678, %r170
  %r680 = add i32 %r679, 0
  %r681 = add i32 3, %r671
  %r174 = load i32, ptr @a7, align 4
  %r682 = add i32 %r681, %r174
  %r683 = add i32 %r682, 0
  %r684 = add i32 4, %r674
  %r178 = load i32, ptr @a8, align 4
  %r685 = add i32 %r684, %r178
  %r686 = add i32 %r685, 0
  %r687 = add i32 1, %r677
  %r182 = load i32, ptr @a9, align 4
  %r688 = add i32 %r687, %r182
  %r689 = add i32 %r688, 0
  %r690 = add i32 2, %r680
  %r186 = load i32, ptr @a10, align 4
  %r691 = add i32 %r690, %r186
  %r692 = add i32 %r691, 0
  %r693 = add i32 3, %r683
  %r190 = load i32, ptr @a11, align 4
  %r694 = add i32 %r693, %r190
  %r695 = add i32 %r694, 0
  %r696 = add i32 4, %r686
  %r194 = load i32, ptr @a12, align 4
  %r697 = add i32 %r696, %r194
  %r698 = add i32 %r697, 0
  %r699 = add i32 1, %r689
  %r198 = load i32, ptr @a13, align 4
  %r700 = add i32 %r699, %r198
  %r701 = add i32 %r700, 0
  %r702 = add i32 2, %r692
  %r202 = load i32, ptr @a14, align 4
  %r703 = add i32 %r702, %r202
  %r704 = add i32 %r703, 0
  %r705 = add i32 3, %r695
  %r206 = load i32, ptr @a15, align 4
  %r706 = add i32 %r705, %r206
  %r707 = add i32 %r706, 0
  %r708 = add i32 4, %r698
  %r210 = load i32, ptr @a16, align 4
  %r709 = add i32 %r708, %r210
  %r710 = add i32 %r709, 0
  %r711 = add i32 1, %r701
  %r214 = load i32, ptr @a17, align 4
  %r712 = add i32 %r711, %r214
  %r713 = add i32 %r712, 0
  %r714 = add i32 2, %r704
  %r218 = load i32, ptr @a18, align 4
  %r715 = add i32 %r714, %r218
  %r716 = add i32 %r715, 0
  %r717 = add i32 3, %r707
  %r222 = load i32, ptr @a19, align 4
  %r718 = add i32 %r717, %r222
  %r719 = add i32 %r718, 0
  %r720 = add i32 4, %r710
  %r226 = load i32, ptr @a20, align 4
  %r721 = add i32 %r720, %r226
  %r722 = add i32 %r721, 0
  %r723 = add i32 1, %r713
  %r230 = load i32, ptr @a21, align 4
  %r724 = add i32 %r723, %r230
  %r725 = add i32 %r724, 0
  %r726 = add i32 2, %r716
  %r234 = load i32, ptr @a22, align 4
  %r727 = add i32 %r726, %r234
  %r728 = add i32 %r727, 0
  %r729 = add i32 3, %r719
  %r238 = load i32, ptr @a23, align 4
  %r730 = add i32 %r729, %r238
  %r731 = add i32 %r730, 0
  %r732 = add i32 4, %r722
  %r242 = load i32, ptr @a24, align 4
  %r733 = add i32 %r732, %r242
  %r734 = add i32 %r733, 0
  %r735 = add i32 1, %r725
  %r246 = load i32, ptr @a25, align 4
  %r736 = add i32 %r735, %r246
  %r737 = add i32 %r736, 0
  %r738 = add i32 2, %r728
  %r250 = load i32, ptr @a26, align 4
  %r739 = add i32 %r738, %r250
  %r740 = add i32 %r739, 0
  %r741 = add i32 3, %r731
  %r254 = load i32, ptr @a27, align 4
  %r742 = add i32 %r741, %r254
  %r743 = add i32 %r742, 0
  %r744 = add i32 4, %r734
  %r258 = load i32, ptr @a28, align 4
  %r745 = add i32 %r744, %r258
  %r746 = add i32 %r745, 0
  %r747 = add i32 1, %r737
  %r262 = load i32, ptr @a29, align 4
  %r748 = add i32 %r747, %r262
  %r749 = add i32 %r748, 0
  %r750 = add i32 2, %r740
  %r266 = load i32, ptr @a30, align 4
  %r751 = add i32 %r750, %r266
  %r752 = add i32 %r751, 0
  %r753 = add i32 3, %r743
  %r270 = load i32, ptr @a31, align 4
  %r754 = add i32 %r753, %r270
  %r755 = add i32 %r754, 0
  %r756 = add i32 4, %r746
  %r274 = load i32, ptr @a32, align 4
  %r757 = add i32 %r756, %r274
  %r758 = add i32 %r757, 0
  %r759 = sub i32 %r650, %r652
  %r760 = add i32 %r759, 10
  %r761 = add i32 %r760, 0
  %r762 = add i32 1, %r737
  %r282 = load i32, ptr @a29, align 4
  %r763 = add i32 %r762, %r282
  %r764 = add i32 %r763, 0
  %r765 = add i32 2, %r740
  %r286 = load i32, ptr @a30, align 4
  %r766 = add i32 %r765, %r286
  %r767 = add i32 %r766, 0
  %r768 = add i32 3, %r743
  %r290 = load i32, ptr @a31, align 4
  %r769 = add i32 %r768, %r290
  %r770 = add i32 %r769, 0
  %r771 = add i32 4, %r746
  %r294 = load i32, ptr @a32, align 4
  %r772 = add i32 %r771, %r294
  %r773 = add i32 %r772, 0
  %r774 = add i32 1, %r725
  %r298 = load i32, ptr @a25, align 4
  %r775 = add i32 %r774, %r298
  %r776 = add i32 %r775, 0
  %r777 = add i32 2, %r728
  %r302 = load i32, ptr @a26, align 4
  %r778 = add i32 %r777, %r302
  %r779 = add i32 %r778, 0
  %r780 = add i32 3, %r731
  %r306 = load i32, ptr @a27, align 4
  %r781 = add i32 %r780, %r306
  %r782 = add i32 %r781, 0
  %r783 = add i32 4, %r734
  %r310 = load i32, ptr @a28, align 4
  %r784 = add i32 %r783, %r310
  %r785 = add i32 %r784, 0
  %r786 = add i32 1, %r713
  %r314 = load i32, ptr @a21, align 4
  %r787 = add i32 %r786, %r314
  %r788 = add i32 %r787, 0
  %r789 = add i32 2, %r716
  %r318 = load i32, ptr @a22, align 4
  %r790 = add i32 %r789, %r318
  %r791 = add i32 %r790, 0
  %r792 = add i32 3, %r719
  %r322 = load i32, ptr @a23, align 4
  %r793 = add i32 %r792, %r322
  %r794 = add i32 %r793, 0
  %r795 = add i32 4, %r722
  %r326 = load i32, ptr @a24, align 4
  %r796 = add i32 %r795, %r326
  %r797 = add i32 %r796, 0
  %r798 = add i32 1, %r701
  %r330 = load i32, ptr @a17, align 4
  %r799 = add i32 %r798, %r330
  %r800 = add i32 %r799, 0
  %r801 = add i32 2, %r704
  %r334 = load i32, ptr @a18, align 4
  %r802 = add i32 %r801, %r334
  %r803 = add i32 %r802, 0
  %r804 = add i32 3, %r707
  %r338 = load i32, ptr @a19, align 4
  %r805 = add i32 %r804, %r338
  %r806 = add i32 %r805, 0
  %r807 = add i32 4, %r710
  %r342 = load i32, ptr @a20, align 4
  %r808 = add i32 %r807, %r342
  %r809 = add i32 %r808, 0
  %r810 = add i32 1, %r689
  %r346 = load i32, ptr @a13, align 4
  %r811 = add i32 %r810, %r346
  %r812 = add i32 %r811, 0
  %r813 = add i32 2, %r692
  %r350 = load i32, ptr @a14, align 4
  %r814 = add i32 %r813, %r350
  %r815 = add i32 %r814, 0
  %r816 = add i32 3, %r695
  %r354 = load i32, ptr @a15, align 4
  %r817 = add i32 %r816, %r354
  %r818 = add i32 %r817, 0
  %r819 = add i32 4, %r698
  %r358 = load i32, ptr @a16, align 4
  %r820 = add i32 %r819, %r358
  %r821 = add i32 %r820, 0
  %r822 = add i32 1, %r677
  %r362 = load i32, ptr @a9, align 4
  %r823 = add i32 %r822, %r362
  %r824 = add i32 %r823, 0
  %r825 = add i32 2, %r680
  %r366 = load i32, ptr @a10, align 4
  %r826 = add i32 %r825, %r366
  %r827 = add i32 %r826, 0
  %r828 = add i32 3, %r683
  %r370 = load i32, ptr @a11, align 4
  %r829 = add i32 %r828, %r370
  %r830 = add i32 %r829, 0
  %r831 = add i32 4, %r686
  %r374 = load i32, ptr @a12, align 4
  %r832 = add i32 %r831, %r374
  %r833 = add i32 %r832, 0
  %r834 = add i32 1, %r665
  %r378 = load i32, ptr @a5, align 4
  %r835 = add i32 %r834, %r378
  %r836 = add i32 %r835, 0
  %r837 = add i32 2, %r668
  %r382 = load i32, ptr @a6, align 4
  %r838 = add i32 %r837, %r382
  %r839 = add i32 %r838, 0
  %r840 = add i32 3, %r671
  %r386 = load i32, ptr @a7, align 4
  %r841 = add i32 %r840, %r386
  %r842 = add i32 %r841, 0
  %r843 = add i32 4, %r674
  %r390 = load i32, ptr @a8, align 4
  %r844 = add i32 %r843, %r390
  %r845 = add i32 %r844, 0
  %r846 = add i32 1, %r656
  %r394 = load i32, ptr @a1, align 4
  %r847 = add i32 %r846, %r394
  %r848 = add i32 %r847, 0
  %r849 = add i32 2, %r658
  %r398 = load i32, ptr @a2, align 4
  %r850 = add i32 %r849, %r398
  %r851 = add i32 %r850, 0
  %r852 = add i32 3, %r660
  %r402 = load i32, ptr @a3, align 4
  %r853 = add i32 %r852, %r402
  %r854 = add i32 %r853, 0
  %r855 = add i32 4, %r662
  %r406 = load i32, ptr @a4, align 4
  %r856 = add i32 %r855, %r406
  %r857 = add i32 %r856, 0
  %r858 = add i32 1, %r656
  %r410 = load i32, ptr @a1, align 4
  %r859 = add i32 %r858, %r410
  %r860 = add i32 %r859, 0
  %r861 = add i32 2, %r658
  %r414 = load i32, ptr @a2, align 4
  %r862 = add i32 %r861, %r414
  %r863 = add i32 %r862, 0
  %r864 = add i32 3, %r660
  %r418 = load i32, ptr @a3, align 4
  %r865 = add i32 %r864, %r418
  %r866 = add i32 %r865, 0
  %r867 = add i32 4, %r662
  %r422 = load i32, ptr @a4, align 4
  %r868 = add i32 %r867, %r422
  %r869 = add i32 %r868, 0
  %r870 = add i32 %r761, %r656
  %r871 = add i32 %r870, %r658
  %r872 = add i32 %r871, %r660
  %r873 = add i32 %r872, %r662
  %r874 = sub i32 %r873, %r860
  %r875 = sub i32 %r874, %r863
  %r876 = sub i32 %r875, %r866
  %r877 = sub i32 %r876, %r869
  %r878 = add i32 %r877, %r836
  %r879 = add i32 %r878, %r839
  %r880 = add i32 %r879, %r842
  %r881 = add i32 %r880, %r845
  %r882 = sub i32 %r881, %r824
  %r883 = sub i32 %r882, %r827
  %r884 = sub i32 %r883, %r830
  %r885 = sub i32 %r884, %r833
  %r886 = add i32 %r885, %r812
  %r887 = add i32 %r886, %r815
  %r888 = add i32 %r887, %r818
  %r889 = add i32 %r888, %r821
  %r890 = sub i32 %r889, %r800
  %r891 = sub i32 %r890, %r803
  %r892 = sub i32 %r891, %r806
  %r893 = sub i32 %r892, %r809
  %r894 = add i32 %r893, %r788
  %r895 = add i32 %r894, %r791
  %r896 = add i32 %r895, %r794
  %r897 = add i32 %r896, %r797
  %r898 = sub i32 %r897, %r776
  %r899 = sub i32 %r898, %r779
  %r900 = sub i32 %r899, %r782
  %r901 = sub i32 %r900, %r785
  %r902 = add i32 %r901, %r764
  %r903 = add i32 %r902, %r767
  %r904 = add i32 %r903, %r770
  %r905 = add i32 %r904, %r773
  %r497 = load i32, ptr @a1, align 4
  %r906 = add i32 %r905, %r497
  %r499 = load i32, ptr @a2, align 4
  %r907 = sub i32 %r906, %r499
  %r501 = load i32, ptr @a3, align 4
  %r908 = add i32 %r907, %r501
  %r503 = load i32, ptr @a4, align 4
  %r909 = sub i32 %r908, %r503
  %r505 = load i32, ptr @a5, align 4
  %r910 = add i32 %r909, %r505
  %r507 = load i32, ptr @a6, align 4
  %r911 = sub i32 %r910, %r507
  %r509 = load i32, ptr @a7, align 4
  %r912 = add i32 %r911, %r509
  %r511 = load i32, ptr @a8, align 4
  %r913 = sub i32 %r912, %r511
  %r513 = load i32, ptr @a9, align 4
  %r914 = add i32 %r913, %r513
  %r515 = load i32, ptr @a10, align 4
  %r915 = sub i32 %r914, %r515
  %r517 = load i32, ptr @a11, align 4
  %r916 = add i32 %r915, %r517
  %r519 = load i32, ptr @a12, align 4
  %r917 = sub i32 %r916, %r519
  %r521 = load i32, ptr @a13, align 4
  %r918 = add i32 %r917, %r521
  %r523 = load i32, ptr @a14, align 4
  %r919 = sub i32 %r918, %r523
  %r525 = load i32, ptr @a15, align 4
  %r920 = add i32 %r919, %r525
  %r527 = load i32, ptr @a16, align 4
  %r921 = sub i32 %r920, %r527
  %r529 = load i32, ptr @a17, align 4
  %r922 = add i32 %r921, %r529
  %r531 = load i32, ptr @a18, align 4
  %r923 = sub i32 %r922, %r531
  %r533 = load i32, ptr @a19, align 4
  %r924 = add i32 %r923, %r533
  %r535 = load i32, ptr @a20, align 4
  %r925 = sub i32 %r924, %r535
  %r537 = load i32, ptr @a21, align 4
  %r926 = add i32 %r925, %r537
  %r539 = load i32, ptr @a22, align 4
  %r927 = sub i32 %r926, %r539
  %r541 = load i32, ptr @a23, align 4
  %r928 = add i32 %r927, %r541
  %r543 = load i32, ptr @a24, align 4
  %r929 = sub i32 %r928, %r543
  %r545 = load i32, ptr @a25, align 4
  %r930 = add i32 %r929, %r545
  %r547 = load i32, ptr @a26, align 4
  %r931 = sub i32 %r930, %r547
  %r549 = load i32, ptr @a27, align 4
  %r932 = add i32 %r931, %r549
  %r551 = load i32, ptr @a28, align 4
  %r933 = sub i32 %r932, %r551
  %r553 = load i32, ptr @a29, align 4
  %r934 = add i32 %r933, %r553
  %r555 = load i32, ptr @a30, align 4
  %r935 = sub i32 %r934, %r555
  %r557 = load i32, ptr @a31, align 4
  %r936 = add i32 %r935, %r557
  %r559 = load i32, ptr @a32, align 4
  %r937 = sub i32 %r936, %r559
  ret i32 %r937
}

define i32 @main() {
bb3:
  call void @_sysy_starttime(i32 87)
  %r940 = add i32 0, 0
  %r941 = add i32 0, 0
  %r942 = call i32 @getint()
  %r943 = add i32 %r942, 0
  %r944 = mul i32 2, 9
  %r945 = add i32 %r943, %r944
  %r946 = add i32 %r945, 0
  %r947 = call i32 @func(i32 %r943, i32 %r946)
  %r948 = add i32 %r947, 0
  call void @putint(i32 %r948)
  call void @_sysy_stoptime(i32 93)
  ret i32 %r948
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
