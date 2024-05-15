declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
@max = global i32 1073741824
@a = global [ 10000000 x i32 ] zeroinitializer
@b = global [ 10000000 x i32 ] zeroinitializer
@kernelid = global [ 10000 x i32 ] zeroinitializer
define i32 @checkrange( i32 %r100 ) {
bb2:
  %r401 = add i32 0, 0
  %r402 = add i32 %r100, 0
  br label %bb1

bb1:
  br label %bb3

bb3:
  %r403 = phi i32 [ %r402, %bb1 ], [ %r410, %bb4 ]
  %r103 = load i32, i32* @max
  %r404 = icmp sgt i32 %r403, %r103
  br i1 %r404, label %bb4, label %bb5

bb4:
  %r106 = load i32, i32* @max
  %r409 = sub i32 %r403, %r106
  %r410 = add i32 %r409, 0
  br label %bb3

bb5:
  br label %bb6

bb6:
  %r405 = phi i32 [ %r403, %bb5 ], [ %r408, %bb7 ]
  %r406 = icmp slt i32 %r405, 0
  br i1 %r406, label %bb7, label %bb8

bb7:
  %r111 = load i32, i32* @max
  %r407 = add i32 %r405, %r111
  %r408 = add i32 %r407, 0
  br label %bb6

bb8:
  ret i32 %r405
}

define i32 @mod( i32 %r114, i32 %r116 ) {
bb10:
  %r413 = add i32 0, 0
  %r414 = add i32 %r114, 0
  %r415 = add i32 0, 0
  %r416 = add i32 %r116, 0
  br label %bb9

bb9:
  %r417 = sdiv i32 %r414, %r416
  %r418 = mul i32 %r417, %r416
  %r419 = sub i32 %r414, %r418
  ret i32 %r419
}

define i32 @reduce( i32 %r125, i32 %r127, i32 %r129 ) {
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

bb11:
  %r441 = icmp eq i32 %r436, 0
  br i1 %r441, label %bb13, label %bb14

bb13:
  %r503 = add i32 %r438, %r440
  %r504 = call i32 @checkrange(i32 %r503)
  ret i32 %r504
bb14:
  br label %bb15

bb15:
  %r442 = icmp eq i32 %r436, 1
  br i1 %r442, label %bb16, label %bb17

bb16:
  %r485 = add i32 0, 0
  %r486 = add i32 1, 0
  br label %bb19

bb19:
  %r487 = phi i32 [ %r485, %bb16 ], [ %r498, %bb24 ]
  %r488 = phi i32 [ %r486, %bb16 ], [ %r500, %bb24 ]
  %r142 = load i32, i32* @max
  %r489 = icmp slt i32 %r488, %r142
  br i1 %r489, label %bb20, label %bb21

bb20:
  %r490 = sdiv i32 %r438, %r488
  %r491 = call i32 @mod(i32 %r490, i32 2)
  %r492 = sdiv i32 %r440, %r488
  %r493 = call i32 @mod(i32 %r492, i32 2)
  %r494 = icmp eq i32 %r491, %r493
  br i1 %r494, label %bb22, label %bb23

bb22:
  %r501 = mul i32 %r487, 2
  %r502 = add i32 %r501, 0
  br label %bb24

bb23:
  %r495 = mul i32 %r487, 2
  %r496 = add i32 %r495, 1
  %r497 = add i32 %r496, 0
  br label %bb24

bb24:
  %r498 = phi i32 [ %r502, %bb22 ], [ %r497, %bb23 ]
  %r499 = mul i32 %r488, 2
  %r500 = add i32 %r499, 0
  br label %bb19

bb21:
  ret i32 %r487
bb17:
  br label %bb18

bb18:
  %r443 = icmp eq i32 %r436, 2
  br i1 %r443, label %bb25, label %bb26

bb25:
  %r484 = icmp sgt i32 %r438, %r440
  br i1 %r484, label %bb28, label %bb29

bb28:
  ret i32 %r438
bb29:
  ret i32 %r440
bb26:
  br label %bb27

bb27:
  %r444 = icmp eq i32 %r436, 3
  br i1 %r444, label %bb31, label %bb32

bb31:
  %r465 = add i32 0, 0
  %r466 = add i32 1, 0
  br label %bb34

bb34:
  %r467 = phi i32 [ %r466, %bb31 ], [ %r475, %bb39 ]
  %r468 = phi i32 [ %r465, %bb31 ], [ %r473, %bb39 ]
  %r173 = load i32, i32* @max
  %r469 = icmp slt i32 %r467, %r173
  br i1 %r469, label %bb35, label %bb36

bb35:
  %r470 = sdiv i32 %r438, %r467
  %r471 = call i32 @mod(i32 %r470, i32 2)
  %r472 = icmp eq i32 %r471, 1
  br i1 %r472, label %bb37, label %bb40

bb40:
  %r479 = sdiv i32 %r440, %r467
  %r480 = call i32 @mod(i32 %r479, i32 2)
  %r481 = icmp eq i32 %r480, 1
  br i1 %r481, label %bb37, label %bb38

bb37:
  %r476 = mul i32 %r468, 2
  %r477 = add i32 %r476, 1
  %r478 = add i32 %r477, 0
  br label %bb39

bb38:
  %r482 = mul i32 %r468, 2
  %r483 = add i32 %r482, 0
  br label %bb39

bb39:
  %r473 = phi i32 [ %r478, %bb37 ], [ %r483, %bb38 ]
  %r474 = mul i32 %r467, 2
  %r475 = add i32 %r474, 0
  br label %bb34

bb36:
  ret i32 %r468
bb32:
  br label %bb33

bb33:
  %r445 = icmp eq i32 %r436, 4
  br i1 %r445, label %bb41, label %bb42

bb41:
  %r446 = add i32 0, 0
  %r447 = add i32 1, 0
  br label %bb44

bb44:
  %r448 = phi i32 [ %r447, %bb41 ], [ %r456, %bb49 ]
  %r449 = phi i32 [ %r446, %bb41 ], [ %r454, %bb49 ]
  %r199 = load i32, i32* @max
  %r450 = icmp slt i32 %r448, %r199
  br i1 %r450, label %bb45, label %bb46

bb45:
  %r451 = sdiv i32 %r438, %r448
  %r452 = call i32 @mod(i32 %r451, i32 2)
  %r453 = icmp eq i32 %r452, 1
  br i1 %r453, label %bb50, label %bb48

bb50:
  %r459 = sdiv i32 %r440, %r448
  %r460 = call i32 @mod(i32 %r459, i32 2)
  %r461 = icmp eq i32 %r460, 1
  br i1 %r461, label %bb47, label %bb48

bb47:
  %r462 = mul i32 %r449, 2
  %r463 = add i32 %r462, 1
  %r464 = add i32 %r463, 0
  br label %bb49

bb48:
  %r457 = mul i32 %r449, 2
  %r458 = add i32 %r457, 0
  br label %bb49

bb49:
  %r454 = phi i32 [ %r464, %bb47 ], [ %r458, %bb48 ]
  %r455 = mul i32 %r448, 2
  %r456 = add i32 %r455, 0
  br label %bb44

bb46:
  ret i32 %r449
bb42:
  br label %bb43

bb43:
  ret i32 0
}

define i32 @getvalue( i32* %r220, i32 %r221, i32 %r223, i32 %r225, i32 %r227 ) {
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

bb51:
  %r519 = icmp slt i32 %r516, 0
  br i1 %r519, label %bb53, label %bb58

bb58:
  %r520 = icmp slt i32 %r518, 0
  br i1 %r520, label %bb53, label %bb57

bb57:
  %r521 = icmp sge i32 %r516, %r512
  br i1 %r521, label %bb53, label %bb56

bb56:
  %r522 = icmp sge i32 %r518, %r514
  br i1 %r522, label %bb53, label %bb54

bb53:
  ret i32 0
bb54:
  br label %bb55

bb55:
  %r523 = mul i32 %r516, %r514
  %r524 = add i32 %r523, %r518
  %r525 = add i32 %r524, 0
  %r249 = getelementptr i32, i32* %r220, i32 %r525
  %r250 = load i32, i32* %r249
  ret i32 %r250
}

define i32 @convn( i32 %r251, i32* %r253, i32* %r254, i32 %r255, i32 %r257, i32 %r259 ) {
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

bb59:
  %r552 = add i32 0, 0
  %r553 = add i32 0, 0
  %r554 = add i32 1, 0
  br label %bb61

bb61:
  %r555 = phi i32 [ %r552, %bb59 ], [ %r561, %bb84 ]
  %r556 = icmp eq i32 %r554, %r554
  br i1 %r556, label %bb62, label %bb63

bb62:
  %r557 = add i32 0, 0
  br label %bb64

bb64:
  %r558 = phi i32 [ %r557, %bb62 ], [ %r575, %bb81 ]
  %r559 = icmp eq i32 %r554, %r554
  br i1 %r559, label %bb65, label %bb66

bb65:
  %r563 = add i32 0, 0
  %r564 = sdiv i32 %r551, 2
  %r565 = sub i32 %r555, %r564
  %r566 = add i32 %r565, 0
  br label %bb67

bb67:
  %r567 = phi i32 [ %r563, %bb65 ], [ %r583, %bb78 ]
  %r568 = phi i32 [ %r566, %bb65 ], [ %r585, %bb78 ]
  %r569 = icmp eq i32 %r554, %r554
  br i1 %r569, label %bb68, label %bb69

bb68:
  %r577 = sdiv i32 %r551, 2
  %r578 = sub i32 %r558, %r577
  %r579 = add i32 %r578, 0
  br label %bb70

bb70:
  %r580 = phi i32 [ %r579, %bb68 ], [ %r593, %bb75 ]
  %r581 = phi i32 [ %r567, %bb68 ], [ %r591, %bb75 ]
  %r582 = icmp eq i32 %r554, %r554
  br i1 %r582, label %bb71, label %bb72

bb71:
  %r589 = call i32 @getvalue(i32* %r253, i32 %r547, i32 %r549, i32 %r568, i32 %r580)
  %r590 = call i32 @reduce(i32 %r545, i32 %r581, i32 %r589)
  %r591 = add i32 %r590, 0
  %r592 = add i32 %r580, 1
  %r593 = add i32 %r592, 0
  %r594 = sdiv i32 %r551, 2
  %r595 = add i32 %r558, %r594
  %r596 = icmp sge i32 %r593, %r595
  br i1 %r596, label %bb73, label %bb74

bb73:
  br label %bb72

bb74:
  br label %bb75

bb75:
  br label %bb70

bb72:
  %r583 = phi i32 [ %r581, %bb70 ], [ %r591, %bb73 ]
  %r584 = add i32 %r568, 1
  %r585 = add i32 %r584, 0
  %r586 = sdiv i32 %r551, 2
  %r587 = add i32 %r555, %r586
  %r588 = icmp sge i32 %r585, %r587
  br i1 %r588, label %bb76, label %bb77

bb76:
  br label %bb69

bb77:
  br label %bb78

bb78:
  br label %bb67

bb69:
  %r570 = phi i32 [ %r567, %bb67 ], [ %r583, %bb76 ]
  %r571 = mul i32 %r555, %r549
  %r572 = add i32 %r571, %r558
  %r573 = add i32 %r572, 0
  %r319 = getelementptr i32, i32* %r254, i32 %r573
  store i32 %r570, i32* %r319
  %r574 = add i32 %r558, 1
  %r575 = add i32 %r574, 0
  %r576 = icmp sge i32 %r575, %r549
  br i1 %r576, label %bb79, label %bb80

bb79:
  br label %bb66

bb80:
  br label %bb81

bb81:
  br label %bb64

bb66:
  %r560 = add i32 %r555, 1
  %r561 = add i32 %r560, 0
  %r562 = icmp sge i32 %r561, %r547
  br i1 %r562, label %bb82, label %bb83

bb82:
  br label %bb63

bb83:
  br label %bb84

bb84:
  br label %bb61

bb63:
  ret i32 0
}

define void @memmove( i32* %r330, i32* %r331, i32 %r332 ) {
bb86:
  %r599 = add i32 0, 0
  %r600 = add i32 0, 0
  %r601 = add i32 %r332, 0
  br label %bb85

bb85:
  %r602 = add i32 0, 0
  br label %bb87

bb87:
  %r603 = phi i32 [ %r602, %bb85 ], [ %r606, %bb88 ]
  %r604 = icmp slt i32 %r603, %r601
  br i1 %r604, label %bb88, label %bb89

bb88:
  %r339 = getelementptr i32, i32* %r331, i32 %r603
  %r340 = load i32, i32* %r339
  %r342 = getelementptr i32, i32* %r330, i32 %r603
  store i32 %r340, i32* %r342
  %r605 = add i32 %r603, 1
  %r606 = add i32 %r605, 0
  br label %bb87

bb89:
  ret void
}

define i32 @main( ) {
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

bb91:
  %r630 = phi i32 [ %r629, %bb90 ], [ %r651, %bb92 ]
  %r631 = icmp slt i32 %r630, %r627
  br i1 %r631, label %bb92, label %bb93

bb92:
  %r649 = call i32 @getint()
  %r359 = getelementptr [10000000 x i32 ], [10000000 x i32 ]* @a, i32 0, i32 %r630
  store i32 %r649, i32* %r359
  %r650 = add i32 %r630, 1
  %r651 = add i32 %r650, 0
  br label %bb91

bb93:
  %r632 = call i32 @getint()
  %r633 = add i32 %r632, 0
  %r634 = add i32 0, 0
  br label %bb94

bb94:
  %r635 = phi i32 [ %r634, %bb93 ], [ %r648, %bb95 ]
  %r636 = icmp slt i32 %r635, %r633
  br i1 %r636, label %bb95, label %bb96

bb95:
  %r646 = call i32 @getint()
  %r368 = getelementptr [10000 x i32 ], [10000 x i32 ]* @kernelid, i32 0, i32 %r635
  store i32 %r646, i32* %r368
  %r647 = add i32 %r635, 1
  %r648 = add i32 %r647, 0
  br label %bb94

bb96:
  %r637 = add i32 %r633, 0
  call void @_sysy_starttime(i32 209)
  %r638 = add i32 0, 0
  br label %bb97

bb97:
  %r639 = phi i32 [ %r638, %bb96 ], [ %r645, %bb98 ]
  %r640 = icmp slt i32 %r639, %r637
  br i1 %r640, label %bb98, label %bb99

bb98:
  %r378 = getelementptr [10000 x i32 ], [10000 x i32 ]* @kernelid, i32 0, i32 %r639
  %r379 = load i32, i32* %r378
  %r380 = getelementptr [10000000 x i32 ], [10000000 x i32 ]* @a, i32 0, i32 0
  %r381 = getelementptr [10000000 x i32 ], [10000000 x i32 ]* @b, i32 0, i32 0
  %r642 = call i32 @convn(i32 %r379, i32* %r380, i32* %r381, i32 %r621, i32 %r624, i32 %r618)
  %r389 = getelementptr [10000000 x i32 ], [10000000 x i32 ]* @a, i32 0, i32 0
  %r390 = getelementptr [10000000 x i32 ], [10000000 x i32 ]* @b, i32 0, i32 0
  %r643 = mul i32 %r621, %r624
  call void @memmove(i32* %r389, i32* %r390, i32 %r643)
  %r644 = add i32 %r639, 1
  %r645 = add i32 %r644, 0
  br label %bb97

bb99:
  call void @_sysy_stoptime(i32 312)
  %r641 = mul i32 %r621, %r624
  %r399 = getelementptr [10000000 x i32 ], [10000000 x i32 ]* @a, i32 0, i32 0
  call void @putarray(i32 %r641, i32* %r399)
  ret i32 0
}

