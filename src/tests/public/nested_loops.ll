declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
%my_struct_1 = type { [7 x i32 ] }
%my_struct_2 = type { [8 x %my_struct_1 ] }
%my_struct_3 = type { [5 x %my_struct_2 ] }
%my_struct_4 = type { [4 x %my_struct_3 ] }
%my_struct_5 = type { [3 x %my_struct_4 ] }
%my_struct_6 = type { [2 x %my_struct_5 ] }
@arr1 = global [ 10 x %my_struct_6 ] zeroinitializer
@arr2 = global [ 10 x %my_struct_6 ] zeroinitializer
define i32 @loop1( i32 %r100, i32 %r102 ) {
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

bb1:
  %r417 = add i32 0, 0
  br label %bb3

bb3:
  %r418 = phi i32 [ %r417, %bb1 ], [ %r425, %bb9 ]
  %r419 = icmp slt i32 %r418, %r414
  br i1 %r419, label %bb6, label %bb5

bb6:
  %r420 = icmp slt i32 %r418, %r416
  br i1 %r420, label %bb4, label %bb5

bb4:
  %r421 = add i32 0, 0
  br label %bb7

bb7:
  %r422 = phi i32 [ %r421, %bb4 ], [ %r430, %bb12 ]
  %r423 = icmp slt i32 %r422, 2
  br i1 %r423, label %bb8, label %bb9

bb8:
  %r426 = add i32 0, 0
  br label %bb10

bb10:
  %r427 = phi i32 [ %r426, %bb8 ], [ %r435, %bb15 ]
  %r428 = icmp slt i32 %r427, 3
  br i1 %r428, label %bb11, label %bb12

bb11:
  %r431 = add i32 0, 0
  br label %bb13

bb13:
  %r432 = phi i32 [ %r431, %bb11 ], [ %r440, %bb18 ]
  %r433 = icmp slt i32 %r432, 4
  br i1 %r433, label %bb14, label %bb15

bb14:
  %r436 = add i32 0, 0
  br label %bb16

bb16:
  %r437 = phi i32 [ %r436, %bb14 ], [ %r445, %bb21 ]
  %r438 = icmp slt i32 %r437, 5
  br i1 %r438, label %bb17, label %bb18

bb17:
  %r441 = add i32 0, 0
  br label %bb19

bb19:
  %r442 = phi i32 [ %r441, %bb17 ], [ %r450, %bb24 ]
  %r443 = icmp slt i32 %r442, 6
  br i1 %r443, label %bb20, label %bb21

bb20:
  %r446 = add i32 0, 0
  br label %bb22

bb22:
  %r447 = phi i32 [ %r446, %bb20 ], [ %r460, %bb23 ]
  %r448 = icmp slt i32 %r447, 2
  br i1 %r448, label %bb23, label %bb24

bb23:
  %r451 = add i32 %r418, %r422
  %r452 = add i32 %r451, %r427
  %r453 = add i32 %r452, %r432
  %r454 = add i32 %r453, %r437
  %r455 = add i32 %r454, %r442
  %r456 = add i32 %r455, %r447
  %r457 = add i32 %r456, %r414
  %r458 = add i32 %r457, %r416
  %r154 = getelementptr [10 x %my_struct_6 ], [10 x %my_struct_6 ]* @arr1, i32 0, i32 %r418
  %r155 = getelementptr %my_struct_6, %my_struct_6* %r154, i32 0, i32 0
  %r156 = getelementptr [2 x %my_struct_5 ], [2 x %my_struct_5 ]* %r155, i32 0, i32 %r422
  %r157 = getelementptr %my_struct_5, %my_struct_5* %r156, i32 0, i32 0
  %r158 = getelementptr [3 x %my_struct_4 ], [3 x %my_struct_4 ]* %r157, i32 0, i32 %r427
  %r159 = getelementptr %my_struct_4, %my_struct_4* %r158, i32 0, i32 0
  %r160 = getelementptr [4 x %my_struct_3 ], [4 x %my_struct_3 ]* %r159, i32 0, i32 %r432
  %r161 = getelementptr %my_struct_3, %my_struct_3* %r160, i32 0, i32 0
  %r162 = getelementptr [5 x %my_struct_2 ], [5 x %my_struct_2 ]* %r161, i32 0, i32 %r437
  %r163 = getelementptr %my_struct_2, %my_struct_2* %r162, i32 0, i32 0
  %r164 = getelementptr [8 x %my_struct_1 ], [8 x %my_struct_1 ]* %r163, i32 0, i32 %r442
  %r165 = getelementptr %my_struct_1, %my_struct_1* %r164, i32 0, i32 0
  %r166 = getelementptr [7 x i32 ], [7 x i32 ]* %r165, i32 0, i32 %r447
  store i32 %r458, i32* %r166
  %r459 = add i32 %r447, 1
  %r460 = add i32 %r459, 0
  br label %bb22

bb24:
  %r449 = add i32 %r442, 1
  %r450 = add i32 %r449, 0
  br label %bb19

bb21:
  %r444 = add i32 %r437, 1
  %r445 = add i32 %r444, 0
  br label %bb16

bb18:
  %r439 = add i32 %r432, 1
  %r440 = add i32 %r439, 0
  br label %bb13

bb15:
  %r434 = add i32 %r427, 1
  %r435 = add i32 %r434, 0
  br label %bb10

bb12:
  %r429 = add i32 %r422, 1
  %r430 = add i32 %r429, 0
  br label %bb7

bb9:
  %r424 = add i32 %r418, 1
  %r425 = add i32 %r424, 0
  br label %bb3

bb5:
  ret i32 0
}

define i32 @loop2( ) {
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

bb26:
  %r476 = phi i32 [ %r475, %bb25 ], [ %r482, %bb31 ]
  %r477 = icmp slt i32 %r476, 10
  br i1 %r477, label %bb27, label %bb28

bb27:
  %r478 = add i32 0, 0
  br label %bb29

bb29:
  %r479 = phi i32 [ %r478, %bb27 ], [ %r487, %bb34 ]
  %r480 = icmp slt i32 %r479, 2
  br i1 %r480, label %bb30, label %bb31

bb30:
  %r483 = add i32 0, 0
  br label %bb32

bb32:
  %r484 = phi i32 [ %r483, %bb30 ], [ %r492, %bb37 ]
  %r485 = icmp slt i32 %r484, 3
  br i1 %r485, label %bb33, label %bb34

bb33:
  %r488 = add i32 0, 0
  br label %bb35

bb35:
  %r489 = phi i32 [ %r488, %bb33 ], [ %r497, %bb40 ]
  %r490 = icmp slt i32 %r489, 2
  br i1 %r490, label %bb36, label %bb37

bb36:
  %r493 = add i32 0, 0
  br label %bb38

bb38:
  %r494 = phi i32 [ %r493, %bb36 ], [ %r502, %bb43 ]
  %r495 = icmp slt i32 %r494, 4
  br i1 %r495, label %bb39, label %bb40

bb39:
  %r498 = add i32 0, 0
  br label %bb41

bb41:
  %r499 = phi i32 [ %r498, %bb39 ], [ %r507, %bb46 ]
  %r500 = icmp slt i32 %r499, 8
  br i1 %r500, label %bb42, label %bb43

bb42:
  %r503 = add i32 0, 0
  br label %bb44

bb44:
  %r504 = phi i32 [ %r503, %bb42 ], [ %r512, %bb45 ]
  %r505 = icmp slt i32 %r504, 7
  br i1 %r505, label %bb45, label %bb46

bb45:
  %r508 = add i32 %r476, %r479
  %r509 = add i32 %r508, %r489
  %r510 = add i32 %r509, %r504
  %r216 = getelementptr [10 x %my_struct_6 ], [10 x %my_struct_6 ]* @arr2, i32 0, i32 %r476
  %r217 = getelementptr %my_struct_6, %my_struct_6* %r216, i32 0, i32 0
  %r218 = getelementptr [2 x %my_struct_5 ], [2 x %my_struct_5 ]* %r217, i32 0, i32 %r479
  %r219 = getelementptr %my_struct_5, %my_struct_5* %r218, i32 0, i32 0
  %r220 = getelementptr [3 x %my_struct_4 ], [3 x %my_struct_4 ]* %r219, i32 0, i32 %r484
  %r221 = getelementptr %my_struct_4, %my_struct_4* %r220, i32 0, i32 0
  %r222 = getelementptr [4 x %my_struct_3 ], [4 x %my_struct_3 ]* %r221, i32 0, i32 %r489
  %r223 = getelementptr %my_struct_3, %my_struct_3* %r222, i32 0, i32 0
  %r224 = getelementptr [5 x %my_struct_2 ], [5 x %my_struct_2 ]* %r223, i32 0, i32 %r494
  %r225 = getelementptr %my_struct_2, %my_struct_2* %r224, i32 0, i32 0
  %r226 = getelementptr [8 x %my_struct_1 ], [8 x %my_struct_1 ]* %r225, i32 0, i32 %r499
  %r227 = getelementptr %my_struct_1, %my_struct_1* %r226, i32 0, i32 0
  %r228 = getelementptr [7 x i32 ], [7 x i32 ]* %r227, i32 0, i32 %r504
  store i32 %r510, i32* %r228
  %r511 = add i32 %r504, 1
  %r512 = add i32 %r511, 0
  br label %bb44

bb46:
  %r506 = add i32 %r499, 1
  %r507 = add i32 %r506, 0
  br label %bb41

bb43:
  %r501 = add i32 %r494, 1
  %r502 = add i32 %r501, 0
  br label %bb38

bb40:
  %r496 = add i32 %r489, 1
  %r497 = add i32 %r496, 0
  br label %bb35

bb37:
  %r491 = add i32 %r484, 1
  %r492 = add i32 %r491, 0
  br label %bb32

bb34:
  %r486 = add i32 %r479, 1
  %r487 = add i32 %r486, 0
  br label %bb29

bb31:
  %r481 = add i32 %r476, 1
  %r482 = add i32 %r481, 0
  br label %bb26

bb28:
  ret i32 0
}

define i32 @loop3( i32 %r243, i32 %r245, i32 %r247, i32 %r249, i32 %r251, i32 %r253, i32 %r255 ) {
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

bb47:
  %r550 = add i32 0, 0
  %r551 = add i32 0, 0
  br label %bb49

bb49:
  %r552 = phi i32 [ %r550, %bb47 ], [ %r560, %bb90 ]
  %r553 = phi i32 [ %r551, %bb47 ], [ %r562, %bb90 ]
  %r554 = icmp slt i32 %r553, 10
  br i1 %r554, label %bb50, label %bb51

bb50:
  %r556 = add i32 0, 0
  br label %bb52

bb52:
  %r557 = phi i32 [ %r552, %bb50 ], [ %r568, %bb87 ]
  %r558 = phi i32 [ %r556, %bb50 ], [ %r570, %bb87 ]
  %r559 = icmp slt i32 %r558, 100
  br i1 %r559, label %bb53, label %bb54

bb53:
  %r564 = add i32 0, 0
  br label %bb55

bb55:
  %r565 = phi i32 [ %r557, %bb53 ], [ %r576, %bb84 ]
  %r566 = phi i32 [ %r564, %bb53 ], [ %r578, %bb84 ]
  %r567 = icmp slt i32 %r566, 1000
  br i1 %r567, label %bb56, label %bb57

bb56:
  %r572 = add i32 0, 0
  br label %bb58

bb58:
  %r573 = phi i32 [ %r565, %bb56 ], [ %r584, %bb81 ]
  %r574 = phi i32 [ %r572, %bb56 ], [ %r586, %bb81 ]
  %r575 = icmp slt i32 %r574, 10000
  br i1 %r575, label %bb59, label %bb60

bb59:
  %r580 = add i32 0, 0
  br label %bb61

bb61:
  %r581 = phi i32 [ %r580, %bb59 ], [ %r594, %bb78 ]
  %r582 = phi i32 [ %r573, %bb59 ], [ %r592, %bb78 ]
  %r583 = icmp slt i32 %r581, 100000
  br i1 %r583, label %bb62, label %bb63

bb62:
  %r588 = add i32 0, 0
  br label %bb64

bb64:
  %r589 = phi i32 [ %r588, %bb62 ], [ %r602, %bb75 ]
  %r590 = phi i32 [ %r582, %bb62 ], [ %r600, %bb75 ]
  %r591 = icmp slt i32 %r589, 1000000
  br i1 %r591, label %bb65, label %bb66

bb65:
  %r596 = add i32 0, 0
  br label %bb67

bb67:
  %r597 = phi i32 [ %r596, %bb65 ], [ %r611, %bb72 ]
  %r598 = phi i32 [ %r590, %bb65 ], [ %r609, %bb72 ]
  %r599 = icmp slt i32 %r597, 10000000
  br i1 %r599, label %bb68, label %bb69

bb68:
  %r604 = sdiv i32 %r598, 817
  %r605 = mul i32 %r604, 817
  %r606 = sub i32 %r598, %r605
  %r291 = getelementptr [10 x %my_struct_6 ], [10 x %my_struct_6 ]* @arr1, i32 0, i32 %r553
  %r292 = getelementptr %my_struct_6, %my_struct_6* %r291, i32 0, i32 0
  %r293 = getelementptr [2 x %my_struct_5 ], [2 x %my_struct_5 ]* %r292, i32 0, i32 %r558
  %r294 = getelementptr %my_struct_5, %my_struct_5* %r293, i32 0, i32 0
  %r295 = getelementptr [3 x %my_struct_4 ], [3 x %my_struct_4 ]* %r294, i32 0, i32 %r566
  %r296 = getelementptr %my_struct_4, %my_struct_4* %r295, i32 0, i32 0
  %r297 = getelementptr [4 x %my_struct_3 ], [4 x %my_struct_3 ]* %r296, i32 0, i32 %r574
  %r298 = getelementptr %my_struct_3, %my_struct_3* %r297, i32 0, i32 0
  %r299 = getelementptr [5 x %my_struct_2 ], [5 x %my_struct_2 ]* %r298, i32 0, i32 %r581
  %r300 = getelementptr %my_struct_2, %my_struct_2* %r299, i32 0, i32 0
  %r301 = getelementptr [8 x %my_struct_1 ], [8 x %my_struct_1 ]* %r300, i32 0, i32 %r589
  %r302 = getelementptr %my_struct_1, %my_struct_1* %r301, i32 0, i32 0
  %r303 = getelementptr [7 x i32 ], [7 x i32 ]* %r302, i32 0, i32 %r597
  %r304 = load i32, i32* %r303
  %r607 = add i32 %r606, %r304
  %r313 = getelementptr [10 x %my_struct_6 ], [10 x %my_struct_6 ]* @arr2, i32 0, i32 %r553
  %r314 = getelementptr %my_struct_6, %my_struct_6* %r313, i32 0, i32 0
  %r315 = getelementptr [2 x %my_struct_5 ], [2 x %my_struct_5 ]* %r314, i32 0, i32 %r558
  %r316 = getelementptr %my_struct_5, %my_struct_5* %r315, i32 0, i32 0
  %r317 = getelementptr [3 x %my_struct_4 ], [3 x %my_struct_4 ]* %r316, i32 0, i32 %r566
  %r318 = getelementptr %my_struct_4, %my_struct_4* %r317, i32 0, i32 0
  %r319 = getelementptr [4 x %my_struct_3 ], [4 x %my_struct_3 ]* %r318, i32 0, i32 %r574
  %r320 = getelementptr %my_struct_3, %my_struct_3* %r319, i32 0, i32 0
  %r321 = getelementptr [5 x %my_struct_2 ], [5 x %my_struct_2 ]* %r320, i32 0, i32 %r581
  %r322 = getelementptr %my_struct_2, %my_struct_2* %r321, i32 0, i32 0
  %r323 = getelementptr [8 x %my_struct_1 ], [8 x %my_struct_1 ]* %r322, i32 0, i32 %r589
  %r324 = getelementptr %my_struct_1, %my_struct_1* %r323, i32 0, i32 0
  %r325 = getelementptr [7 x i32 ], [7 x i32 ]* %r324, i32 0, i32 %r597
  %r326 = load i32, i32* %r325
  %r608 = add i32 %r607, %r326
  %r609 = add i32 %r608, 0
  %r610 = add i32 %r597, 1
  %r611 = add i32 %r610, 0
  %r612 = icmp sge i32 %r611, %r549
  br i1 %r612, label %bb70, label %bb71

bb70:
  br label %bb69

bb71:
  br label %bb72

bb72:
  br label %bb67

bb69:
  %r600 = phi i32 [ %r598, %bb67 ], [ %r609, %bb70 ]
  %r601 = add i32 %r589, 1
  %r602 = add i32 %r601, 0
  %r603 = icmp sge i32 %r602, %r547
  br i1 %r603, label %bb73, label %bb74

bb73:
  br label %bb66

bb74:
  br label %bb75

bb75:
  br label %bb64

bb66:
  %r592 = phi i32 [ %r590, %bb64 ], [ %r600, %bb73 ]
  %r593 = add i32 %r581, 1
  %r594 = add i32 %r593, 0
  %r595 = icmp sge i32 %r594, %r545
  br i1 %r595, label %bb76, label %bb77

bb76:
  br label %bb63

bb77:
  br label %bb78

bb78:
  br label %bb61

bb63:
  %r584 = phi i32 [ %r582, %bb61 ], [ %r592, %bb76 ]
  %r585 = add i32 %r574, 1
  %r586 = add i32 %r585, 0
  %r587 = icmp sge i32 %r586, %r543
  br i1 %r587, label %bb79, label %bb80

bb79:
  br label %bb60

bb80:
  br label %bb81

bb81:
  br label %bb58

bb60:
  %r576 = phi i32 [ %r573, %bb58 ], [ %r584, %bb79 ]
  %r577 = add i32 %r566, 1
  %r578 = add i32 %r577, 0
  %r579 = icmp sge i32 %r578, %r541
  br i1 %r579, label %bb82, label %bb83

bb82:
  br label %bb57

bb83:
  br label %bb84

bb84:
  br label %bb55

bb57:
  %r568 = phi i32 [ %r565, %bb55 ], [ %r576, %bb82 ]
  %r569 = add i32 %r558, 1
  %r570 = add i32 %r569, 0
  %r571 = icmp sge i32 %r570, %r539
  br i1 %r571, label %bb85, label %bb86

bb85:
  br label %bb54

bb86:
  br label %bb87

bb87:
  br label %bb52

bb54:
  %r560 = phi i32 [ %r557, %bb52 ], [ %r568, %bb85 ]
  %r561 = add i32 %r553, 1
  %r562 = add i32 %r561, 0
  %r563 = icmp sge i32 %r562, %r537
  br i1 %r563, label %bb88, label %bb89

bb88:
  br label %bb51

bb89:
  br label %bb90

bb90:
  br label %bb49

bb51:
  %r555 = phi i32 [ %r552, %bb49 ], [ %r560, %bb88 ]
  ret i32 %r555
}

define i32 @main( ) {
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

