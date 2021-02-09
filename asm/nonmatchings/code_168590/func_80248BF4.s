.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80248BF4
/* 169454 80248BF4 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* 169458 80248BF8 AFB00010 */  sw        $s0, 0x10($sp)
/* 16945C 80248BFC 0080802D */  daddu     $s0, $a0, $zero
/* 169460 80248C00 3C038025 */  lui       $v1, %hi(D_8024C08C)
/* 169464 80248C04 8C63C08C */  lw        $v1, %lo(D_8024C08C)($v1)
/* 169468 80248C08 3C020004 */  lui       $v0, 4
/* 16946C 80248C0C AFBF0018 */  sw        $ra, 0x18($sp)
/* 169470 80248C10 AFB10014 */  sw        $s1, 0x14($sp)
/* 169474 80248C14 92050003 */  lbu       $a1, 3($s0)
/* 169478 80248C18 00621024 */  and       $v0, $v1, $v0
/* 16947C 80248C1C 1040000A */  beqz      $v0, .L80248C48
/* 169480 80248C20 3C020008 */   lui      $v0, 8
/* 169484 80248C24 92020001 */  lbu       $v0, 1($s0)
/* 169488 80248C28 2442FFFF */  addiu     $v0, $v0, -1
/* 16948C 80248C2C A2020001 */  sb        $v0, 1($s0)
/* 169490 80248C30 00021600 */  sll       $v0, $v0, 0x18
/* 169494 80248C34 04410026 */  bgez      $v0, .L80248CD0
/* 169498 80248C38 00000000 */   nop
/* 16949C 80248C3C 92020005 */  lbu       $v0, 5($s0)
/* 1694A0 80248C40 08092333 */  j         .L80248CCC
/* 1694A4 80248C44 2442FFFF */   addiu    $v0, $v0, -1
.L80248C48:
/* 1694A8 80248C48 00621024 */  and       $v0, $v1, $v0
/* 1694AC 80248C4C 10400020 */  beqz      $v0, .L80248CD0
/* 1694B0 80248C50 00000000 */   nop
/* 1694B4 80248C54 92020001 */  lbu       $v0, 1($s0)
/* 1694B8 80248C58 82030005 */  lb        $v1, 5($s0)
/* 1694BC 80248C5C 24420001 */  addiu     $v0, $v0, 1
/* 1694C0 80248C60 A2020001 */  sb        $v0, 1($s0)
/* 1694C4 80248C64 00021600 */  sll       $v0, $v0, 0x18
/* 1694C8 80248C68 00021603 */  sra       $v0, $v0, 0x18
/* 1694CC 80248C6C 0043102A */  slt       $v0, $v0, $v1
/* 1694D0 80248C70 50400001 */  beql      $v0, $zero, .L80248C78
/* 1694D4 80248C74 A2000001 */   sb       $zero, 1($s0)
.L80248C78:
/* 1694D8 80248C78 82020006 */  lb        $v0, 6($s0)
/* 1694DC 80248C7C 82030002 */  lb        $v1, 2($s0)
/* 1694E0 80248C80 2442FFFF */  addiu     $v0, $v0, -1
/* 1694E4 80248C84 14620012 */  bne       $v1, $v0, .L80248CD0
/* 1694E8 80248C88 00000000 */   nop
/* 1694EC 80248C8C 82020001 */  lb        $v0, 1($s0)
/* 1694F0 80248C90 92030001 */  lbu       $v1, 1($s0)
/* 1694F4 80248C94 2842000B */  slti      $v0, $v0, 0xb
/* 1694F8 80248C98 14400003 */  bnez      $v0, .L80248CA8
/* 1694FC 80248C9C 2462FFF8 */   addiu    $v0, $v1, -8
/* 169500 80248CA0 08092334 */  j         .L80248CD0
/* 169504 80248CA4 A2000001 */   sb       $zero, 1($s0)
.L80248CA8:
/* 169508 80248CA8 304200FF */  andi      $v0, $v0, 0xff
/* 16950C 80248CAC 2C420002 */  sltiu     $v0, $v0, 2
/* 169510 80248CB0 14400006 */  bnez      $v0, .L80248CCC
/* 169514 80248CB4 2402000A */   addiu    $v0, $zero, 0xa
/* 169518 80248CB8 2462FFFB */  addiu     $v0, $v1, -5
/* 16951C 80248CBC 304200FF */  andi      $v0, $v0, 0xff
/* 169520 80248CC0 2C420002 */  sltiu     $v0, $v0, 2
/* 169524 80248CC4 10400002 */  beqz      $v0, .L80248CD0
/* 169528 80248CC8 24020007 */   addiu    $v0, $zero, 7
.L80248CCC:
/* 16952C 80248CCC A2020001 */  sb        $v0, 1($s0)
.L80248CD0:
/* 169530 80248CD0 3C038025 */  lui       $v1, %hi(D_8024C08C)
/* 169534 80248CD4 8C63C08C */  lw        $v1, %lo(D_8024C08C)($v1)
/* 169538 80248CD8 3C020001 */  lui       $v0, 1
/* 16953C 80248CDC 00621024 */  and       $v0, $v1, $v0
/* 169540 80248CE0 1040000B */  beqz      $v0, .L80248D10
/* 169544 80248CE4 3C020002 */   lui      $v0, 2
/* 169548 80248CE8 92020002 */  lbu       $v0, 2($s0)
/* 16954C 80248CEC 2442FFFF */  addiu     $v0, $v0, -1
/* 169550 80248CF0 A2020002 */  sb        $v0, 2($s0)
/* 169554 80248CF4 00021600 */  sll       $v0, $v0, 0x18
/* 169558 80248CF8 04410011 */  bgez      $v0, .L80248D40
/* 16955C 80248CFC 00000000 */   nop
/* 169560 80248D00 92020006 */  lbu       $v0, 6($s0)
/* 169564 80248D04 2442FFFF */  addiu     $v0, $v0, -1
/* 169568 80248D08 08092350 */  j         .L80248D40
/* 16956C 80248D0C A2020002 */   sb       $v0, 2($s0)
.L80248D10:
/* 169570 80248D10 00621024 */  and       $v0, $v1, $v0
/* 169574 80248D14 1040000A */  beqz      $v0, .L80248D40
/* 169578 80248D18 00000000 */   nop
/* 16957C 80248D1C 92020002 */  lbu       $v0, 2($s0)
/* 169580 80248D20 82030006 */  lb        $v1, 6($s0)
/* 169584 80248D24 24420001 */  addiu     $v0, $v0, 1
/* 169588 80248D28 A2020002 */  sb        $v0, 2($s0)
/* 16958C 80248D2C 00021600 */  sll       $v0, $v0, 0x18
/* 169590 80248D30 00021603 */  sra       $v0, $v0, 0x18
/* 169594 80248D34 0043102A */  slt       $v0, $v0, $v1
/* 169598 80248D38 50400001 */  beql      $v0, $zero, .L80248D40
/* 16959C 80248D3C A2000002 */   sb       $zero, 2($s0)
.L80248D40:
/* 1695A0 80248D40 82020006 */  lb        $v0, 6($s0)
/* 1695A4 80248D44 82030002 */  lb        $v1, 2($s0)
/* 1695A8 80248D48 2442FFFF */  addiu     $v0, $v0, -1
/* 1695AC 80248D4C 14620012 */  bne       $v1, $v0, .L80248D98
/* 1695B0 80248D50 00000000 */   nop
/* 1695B4 80248D54 82020001 */  lb        $v0, 1($s0)
/* 1695B8 80248D58 92030001 */  lbu       $v1, 1($s0)
/* 1695BC 80248D5C 2842000B */  slti      $v0, $v0, 0xb
/* 1695C0 80248D60 14400003 */  bnez      $v0, .L80248D70
/* 1695C4 80248D64 2462FFF8 */   addiu    $v0, $v1, -8
/* 1695C8 80248D68 08092365 */  j         .L80248D94
/* 1695CC 80248D6C 2402000A */   addiu    $v0, $zero, 0xa
.L80248D70:
/* 1695D0 80248D70 304200FF */  andi      $v0, $v0, 0xff
/* 1695D4 80248D74 2C420002 */  sltiu     $v0, $v0, 2
/* 1695D8 80248D78 14400006 */  bnez      $v0, .L80248D94
/* 1695DC 80248D7C 24020007 */   addiu    $v0, $zero, 7
/* 1695E0 80248D80 2462FFFB */  addiu     $v0, $v1, -5
/* 1695E4 80248D84 304200FF */  andi      $v0, $v0, 0xff
/* 1695E8 80248D88 2C420002 */  sltiu     $v0, $v0, 2
/* 1695EC 80248D8C 10400002 */  beqz      $v0, .L80248D98
/* 1695F0 80248D90 24020004 */   addiu    $v0, $zero, 4
.L80248D94:
/* 1695F4 80248D94 A2020001 */  sb        $v0, 1($s0)
.L80248D98:
/* 1695F8 80248D98 82020004 */  lb        $v0, 4($s0)
/* 1695FC 80248D9C 82030005 */  lb        $v1, 5($s0)
/* 169600 80248DA0 00430018 */  mult      $v0, $v1
/* 169604 80248DA4 00003812 */  mflo      $a3
/* 169608 80248DA8 82020006 */  lb        $v0, 6($s0)
/* 16960C 80248DAC 00000000 */  nop
/* 169610 80248DB0 00E20018 */  mult      $a3, $v0
/* 169614 80248DB4 00002012 */  mflo      $a0
/* 169618 80248DB8 82020002 */  lb        $v0, 2($s0)
/* 16961C 80248DBC 00000000 */  nop
/* 169620 80248DC0 00620018 */  mult      $v1, $v0
/* 169624 80248DC4 00001012 */  mflo      $v0
/* 169628 80248DC8 00821821 */  addu      $v1, $a0, $v0
/* 16962C 80248DCC 82040001 */  lb        $a0, 1($s0)
/* 169630 80248DD0 8E020008 */  lw        $v0, 8($s0)
/* 169634 80248DD4 00641821 */  addu      $v1, $v1, $a0
/* 169638 80248DD8 00431021 */  addu      $v0, $v0, $v1
/* 16963C 80248DDC 90420000 */  lbu       $v0, ($v0)
/* 169640 80248DE0 A2020003 */  sb        $v0, 3($s0)
/* 169644 80248DE4 304200FF */  andi      $v0, $v0, 0xff
/* 169648 80248DE8 10A20003 */  beq       $a1, $v0, .L80248DF8
/* 16964C 80248DEC 00000000 */   nop
/* 169650 80248DF0 0C05272D */  jal       play_sound
/* 169654 80248DF4 24042102 */   addiu    $a0, $zero, 0x2102
.L80248DF8:
/* 169658 80248DF8 3C028025 */  lui       $v0, %hi(D_8024C084)
/* 16965C 80248DFC 8C42C084 */  lw        $v0, %lo(D_8024C084)($v0)
/* 169660 80248E00 30428000 */  andi      $v0, $v0, 0x8000
/* 169664 80248E04 1040009A */  beqz      $v0, .L80249070
/* 169668 80248E08 00000000 */   nop
/* 16966C 80248E0C 92020003 */  lbu       $v0, 3($s0)
/* 169670 80248E10 2443FF3A */  addiu     $v1, $v0, -0xc6
/* 169674 80248E14 2C620005 */  sltiu     $v0, $v1, 5
/* 169678 80248E18 1040006D */  beqz      $v0, .L80248FD0
/* 16967C 80248E1C 00031080 */   sll      $v0, $v1, 2
/* 169680 80248E20 3C018025 */  lui       $at, %hi(jtbl_8024C060)
/* 169684 80248E24 00220821 */  addu      $at, $at, $v0
/* 169688 80248E28 8C22C060 */  lw        $v0, %lo(jtbl_8024C060)($at)
/* 16968C 80248E2C 00400008 */  jr        $v0
/* 169690 80248E30 00000000 */   nop
glabel L80248E34_169694
/* 169694 80248E34 0C05272D */  jal       play_sound
/* 169698 80248E38 24042103 */   addiu    $a0, $zero, 0x2103
/* 16969C 80248E3C 3C048025 */  lui       $a0, %hi(D_8024C090)
/* 1696A0 80248E40 2484C090 */  addiu     $a0, $a0, %lo(D_8024C090)
/* 1696A4 80248E44 80820000 */  lb        $v0, ($a0)
/* 1696A8 80248E48 24050008 */  addiu     $a1, $zero, 8
/* 1696AC 80248E4C 14450002 */  bne       $v0, $a1, .L80248E58
/* 1696B0 80248E50 24020007 */   addiu    $v0, $zero, 7
/* 1696B4 80248E54 A0820000 */  sb        $v0, ($a0)
.L80248E58:
/* 1696B8 80248E58 80830000 */  lb        $v1, ($a0)
/* 1696BC 80248E5C 08092402 */  j         .L80249008
/* 1696C0 80248E60 240200F7 */   addiu    $v0, $zero, 0xf7
glabel L80248E64_1696C4
/* 1696C4 80248E64 82020004 */  lb        $v0, 4($s0)
/* 1696C8 80248E68 24110001 */  addiu     $s1, $zero, 1
/* 1696CC 80248E6C 10510071 */  beq       $v0, $s1, .L80249034
/* 1696D0 80248E70 00000000 */   nop
/* 1696D4 80248E74 0C05272D */  jal       play_sound
/* 1696D8 80248E78 24042105 */   addiu    $a0, $zero, 0x2105
/* 1696DC 80248E7C 82050001 */  lb        $a1, 1($s0)
/* 1696E0 80248E80 82060002 */  lb        $a2, 2($s0)
/* 1696E4 80248E84 0200202D */  daddu     $a0, $s0, $zero
/* 1696E8 80248E88 080923AD */  j         .L80248EB4
/* 1696EC 80248E8C A2110004 */   sb       $s1, 4($s0)
glabel L80248E90_1696F0
/* 1696F0 80248E90 82020004 */  lb        $v0, 4($s0)
/* 1696F4 80248E94 10400067 */  beqz      $v0, .L80249034
/* 1696F8 80248E98 00000000 */   nop
/* 1696FC 80248E9C 0C05272D */  jal       play_sound
/* 169700 80248EA0 24042105 */   addiu    $a0, $zero, 0x2105
/* 169704 80248EA4 82050001 */  lb        $a1, 1($s0)
/* 169708 80248EA8 82060002 */  lb        $a2, 2($s0)
/* 16970C 80248EAC 0200202D */  daddu     $a0, $s0, $zero
/* 169710 80248EB0 A2000004 */  sb        $zero, 4($s0)
.L80248EB4:
/* 169714 80248EB4 0C090B65 */  jal       func_80242D94
/* 169718 80248EB8 00000000 */   nop
/* 16971C 80248EBC 3C058025 */  lui       $a1, %hi(func_80248170)
/* 169720 80248EC0 24A58170 */  addiu     $a1, $a1, %lo(func_80248170)
/* 169724 80248EC4 0C051F9F */  jal       set_window_update
/* 169728 80248EC8 24040031 */   addiu    $a0, $zero, 0x31
/* 16972C 80248ECC 0809240D */  j         .L80249034
/* 169730 80248ED0 00000000 */   nop
glabel L80248ED4_169734
/* 169734 80248ED4 0000182D */  daddu     $v1, $zero, $zero
/* 169738 80248ED8 3C058025 */  lui       $a1, %hi(D_8024C110)
/* 16973C 80248EDC 24A5C110 */  addiu     $a1, $a1, %lo(D_8024C110)
/* 169740 80248EE0 240400F7 */  addiu     $a0, $zero, 0xf7
/* 169744 80248EE4 00651021 */  addu      $v0, $v1, $a1
.L80248EE8:
/* 169748 80248EE8 90420000 */  lbu       $v0, ($v0)
/* 16974C 80248EEC 14440006 */  bne       $v0, $a0, .L80248F08
/* 169750 80248EF0 24020008 */   addiu    $v0, $zero, 8
/* 169754 80248EF4 24630001 */  addiu     $v1, $v1, 1
/* 169758 80248EF8 28620008 */  slti      $v0, $v1, 8
/* 16975C 80248EFC 1440FFFA */  bnez      $v0, .L80248EE8
/* 169760 80248F00 00651021 */   addu     $v0, $v1, $a1
/* 169764 80248F04 24020008 */  addiu     $v0, $zero, 8
.L80248F08:
/* 169768 80248F08 14620005 */  bne       $v1, $v0, .L80248F20
/* 16976C 80248F0C 00000000 */   nop
/* 169770 80248F10 0C05272D */  jal       play_sound
/* 169774 80248F14 2404021D */   addiu    $a0, $zero, 0x21d
/* 169778 80248F18 0809240D */  j         .L80249034
/* 16977C 80248F1C 00000000 */   nop
.L80248F20:
/* 169780 80248F20 0C05272D */  jal       play_sound
/* 169784 80248F24 240400C9 */   addiu    $a0, $zero, 0xc9
/* 169788 80248F28 3C058024 */  lui       $a1, %hi(func_80243CCC)
/* 16978C 80248F2C 24A53CCC */  addiu     $a1, $a1, %lo(func_80243CCC)
/* 169790 80248F30 0C051F9F */  jal       set_window_update
/* 169794 80248F34 24040032 */   addiu    $a0, $zero, 0x32
/* 169798 80248F38 3C048016 */  lui       $a0, %hi(gUIPanels)
/* 16979C 80248F3C 24849D50 */  addiu     $a0, $a0, %lo(gUIPanels)
/* 1697A0 80248F40 24020079 */  addiu     $v0, $zero, 0x79
/* 1697A4 80248F44 A482064E */  sh        $v0, 0x64e($a0)
/* 1697A8 80248F48 24020045 */  addiu     $v0, $zero, 0x45
/* 1697AC 80248F4C A4820650 */  sh        $v0, 0x650($a0)
/* 1697B0 80248F50 2402002C */  addiu     $v0, $zero, 0x2c
/* 1697B4 80248F54 80830643 */  lb        $v1, 0x643($a0)
/* 1697B8 80248F58 A4820652 */  sh        $v0, 0x652($a0)
/* 1697BC 80248F5C 2402FFFF */  addiu     $v0, $zero, -1
/* 1697C0 80248F60 1062000B */  beq       $v1, $v0, .L80248F90
/* 1697C4 80248F64 2485064C */   addiu    $a1, $a0, 0x64c
/* 1697C8 80248F68 00031140 */  sll       $v0, $v1, 5
/* 1697CC 80248F6C 00441021 */  addu      $v0, $v0, $a0
/* 1697D0 80248F70 94420010 */  lhu       $v0, 0x10($v0)
/* 1697D4 80248F74 00021400 */  sll       $v0, $v0, 0x10
/* 1697D8 80248F78 00021C03 */  sra       $v1, $v0, 0x10
/* 1697DC 80248F7C 000217C2 */  srl       $v0, $v0, 0x1f
/* 1697E0 80248F80 00621821 */  addu      $v1, $v1, $v0
/* 1697E4 80248F84 00031843 */  sra       $v1, $v1, 1
/* 1697E8 80248F88 080923E7 */  j         .L80248F9C
/* 1697EC 80248F8C 2463FFDE */   addiu    $v1, $v1, -0x22
.L80248F90:
/* 1697F0 80248F90 2403007E */  addiu     $v1, $zero, 0x7e
/* 1697F4 80248F94 3C048016 */  lui       $a0, %hi(gUIPanels)
/* 1697F8 80248F98 24849D50 */  addiu     $a0, $a0, %lo(gUIPanels)
.L80248F9C:
/* 1697FC 80248F9C 2402FFBA */  addiu     $v0, $zero, -0x46
/* 169800 80248FA0 A4A30000 */  sh        $v1, ($a1)
/* 169804 80248FA4 A48205CE */  sh        $v0, 0x5ce($a0)
/* 169808 80248FA8 240200A4 */  addiu     $v0, $zero, 0xa4
/* 16980C 80248FAC A48205D0 */  sh        $v0, 0x5d0($a0)
/* 169810 80248FB0 2402003E */  addiu     $v0, $zero, 0x3e
/* 169814 80248FB4 808305C3 */  lb        $v1, 0x5c3($a0)
/* 169818 80248FB8 A48205D2 */  sh        $v0, 0x5d2($a0)
/* 16981C 80248FBC 2402FFFF */  addiu     $v0, $zero, -1
/* 169820 80248FC0 146200BD */  bne       $v1, $v0, .L802492B8
/* 169824 80248FC4 248705CC */   addiu    $a3, $a0, 0x5cc
/* 169828 80248FC8 080924B9 */  j         .L802492E4
/* 16982C 80248FCC 2403004E */   addiu    $v1, $zero, 0x4e
.L80248FD0:
/* 169830 80248FD0 0C05272D */  jal       play_sound
/* 169834 80248FD4 24042103 */   addiu    $a0, $zero, 0x2103
/* 169838 80248FD8 3C048025 */  lui       $a0, %hi(D_8024C090)
/* 16983C 80248FDC 2484C090 */  addiu     $a0, $a0, %lo(D_8024C090)
/* 169840 80248FE0 80830000 */  lb        $v1, ($a0)
/* 169844 80248FE4 24050008 */  addiu     $a1, $zero, 8
/* 169848 80248FE8 14650006 */  bne       $v1, $a1, .L80249004
/* 16984C 80248FEC 00000000 */   nop
/* 169850 80248FF0 92020003 */  lbu       $v0, 3($s0)
/* 169854 80248FF4 3C018025 */  lui       $at, %hi(D_8024C117)
/* 169858 80248FF8 A022C117 */  sb        $v0, %lo(D_8024C117)($at)
/* 16985C 80248FFC 0809240D */  j         .L80249034
/* 169860 80249000 00000000 */   nop
.L80249004:
/* 169864 80249004 92020003 */  lbu       $v0, 3($s0)
.L80249008:
/* 169868 80249008 3C018025 */  lui       $at, %hi(D_8024C110)
/* 16986C 8024900C 00230821 */  addu      $at, $at, $v1
/* 169870 80249010 A022C110 */  sb        $v0, %lo(D_8024C110)($at)
/* 169874 80249014 90820000 */  lbu       $v0, ($a0)
/* 169878 80249018 24420001 */  addiu     $v0, $v0, 1
/* 16987C 8024901C A0820000 */  sb        $v0, ($a0)
/* 169880 80249020 00021600 */  sll       $v0, $v0, 0x18
/* 169884 80249024 00021603 */  sra       $v0, $v0, 0x18
/* 169888 80249028 28420009 */  slti      $v0, $v0, 9
/* 16988C 8024902C 50400001 */  beql      $v0, $zero, .L80249034
/* 169890 80249030 A0850000 */   sb       $a1, ($a0)
.L80249034:
glabel L80249034_169894
/* 169894 80249034 92020003 */  lbu       $v0, 3($s0)
/* 169898 80249038 24420039 */  addiu     $v0, $v0, 0x39
/* 16989C 8024903C 304200FF */  andi      $v0, $v0, 0xff
/* 1698A0 80249040 2C420003 */  sltiu     $v0, $v0, 3
/* 1698A4 80249044 1440000A */  bnez      $v0, .L80249070
/* 1698A8 80249048 24020008 */   addiu    $v0, $zero, 8
/* 1698AC 8024904C 3C038025 */  lui       $v1, %hi(D_8024C090)
/* 1698B0 80249050 8063C090 */  lb        $v1, %lo(D_8024C090)($v1)
/* 1698B4 80249054 14620006 */  bne       $v1, $v0, .L80249070
/* 1698B8 80249058 0200202D */   daddu    $a0, $s0, $zero
/* 1698BC 8024905C 82050005 */  lb        $a1, 5($s0)
/* 1698C0 80249060 82060006 */  lb        $a2, 6($s0)
/* 1698C4 80249064 24A5FFFD */  addiu     $a1, $a1, -3
/* 1698C8 80249068 0C090B65 */  jal       func_80242D94
/* 1698CC 8024906C 24C6FFFF */   addiu    $a2, $a2, -1
.L80249070:
/* 1698D0 80249070 3C038025 */  lui       $v1, %hi(D_8024C084)
/* 1698D4 80249074 8C63C084 */  lw        $v1, %lo(D_8024C084)($v1)
/* 1698D8 80249078 30624000 */  andi      $v0, $v1, 0x4000
/* 1698DC 8024907C 14400006 */  bnez      $v0, .L80249098
/* 1698E0 80249080 30628000 */   andi     $v0, $v1, 0x8000
/* 1698E4 80249084 1040004B */  beqz      $v0, .L802491B4
/* 1698E8 80249088 240200C9 */   addiu    $v0, $zero, 0xc9
/* 1698EC 8024908C 92030003 */  lbu       $v1, 3($s0)
/* 1698F0 80249090 14620048 */  bne       $v1, $v0, .L802491B4
/* 1698F4 80249094 00000000 */   nop
.L80249098:
/* 1698F8 80249098 0C05272D */  jal       play_sound
/* 1698FC 8024909C 24042104 */   addiu    $a0, $zero, 0x2104
/* 169900 802490A0 3C038025 */  lui       $v1, %hi(D_8024C090)
/* 169904 802490A4 2463C090 */  addiu     $v1, $v1, %lo(D_8024C090)
/* 169908 802490A8 90620000 */  lbu       $v0, ($v1)
/* 16990C 802490AC 2442FFFF */  addiu     $v0, $v0, -1
/* 169910 802490B0 A0620000 */  sb        $v0, ($v1)
/* 169914 802490B4 00021600 */  sll       $v0, $v0, 0x18
/* 169918 802490B8 00021603 */  sra       $v0, $v0, 0x18
/* 16991C 802490BC 04430031 */  bgezl     $v0, .L80249184
/* 169920 802490C0 0040182D */   daddu    $v1, $v0, $zero
/* 169924 802490C4 24040030 */  addiu     $a0, $zero, 0x30
/* 169928 802490C8 3C108024 */  lui       $s0, %hi(func_80243628)
/* 16992C 802490CC 26103628 */  addiu     $s0, $s0, %lo(func_80243628)
/* 169930 802490D0 0200282D */  daddu     $a1, $s0, $zero
/* 169934 802490D4 0C051F9F */  jal       set_window_update
/* 169938 802490D8 A0600000 */   sb       $zero, ($v1)
/* 16993C 802490DC 24040031 */  addiu     $a0, $zero, 0x31
/* 169940 802490E0 0C051F9F */  jal       set_window_update
/* 169944 802490E4 0200282D */   daddu    $a1, $s0, $zero
/* 169948 802490E8 2404002D */  addiu     $a0, $zero, 0x2d
/* 16994C 802490EC 3C108024 */  lui       $s0, %hi(func_8024381C)
/* 169950 802490F0 2610381C */  addiu     $s0, $s0, %lo(func_8024381C)
/* 169954 802490F4 0C051F9F */  jal       set_window_update
/* 169958 802490F8 0200282D */   daddu    $a1, $s0, $zero
/* 16995C 802490FC 24040033 */  addiu     $a0, $zero, 0x33
/* 169960 80249100 0C051F9F */  jal       set_window_update
/* 169964 80249104 0200282D */   daddu    $a1, $s0, $zero
/* 169968 80249108 24040034 */  addiu     $a0, $zero, 0x34
/* 16996C 8024910C 0C051F9F */  jal       set_window_update
/* 169970 80249110 0200282D */   daddu    $a1, $s0, $zero
/* 169974 80249114 24040035 */  addiu     $a0, $zero, 0x35
/* 169978 80249118 0C051F9F */  jal       set_window_update
/* 16997C 8024911C 0200282D */   daddu    $a1, $s0, $zero
/* 169980 80249120 24040036 */  addiu     $a0, $zero, 0x36
/* 169984 80249124 0C051F9F */  jal       set_window_update
/* 169988 80249128 0200282D */   daddu    $a1, $s0, $zero
/* 16998C 8024912C 24040037 */  addiu     $a0, $zero, 0x37
/* 169990 80249130 0C051F9F */  jal       set_window_update
/* 169994 80249134 0200282D */   daddu    $a1, $s0, $zero
/* 169998 80249138 24040035 */  addiu     $a0, $zero, 0x35
/* 16999C 8024913C 0C051F9F */  jal       set_window_update
/* 1699A0 80249140 0200282D */   daddu    $a1, $s0, $zero
/* 1699A4 80249144 24040038 */  addiu     $a0, $zero, 0x38
/* 1699A8 80249148 0C051F9F */  jal       set_window_update
/* 1699AC 8024914C 0200282D */   daddu    $a1, $s0, $zero
/* 1699B0 80249150 24040039 */  addiu     $a0, $zero, 0x39
/* 1699B4 80249154 0C051F9F */  jal       set_window_update
/* 1699B8 80249158 0200282D */   daddu    $a1, $s0, $zero
/* 1699BC 8024915C 2404003A */  addiu     $a0, $zero, 0x3a
/* 1699C0 80249160 0C051F9F */  jal       set_window_update
/* 1699C4 80249164 0200282D */   daddu    $a1, $s0, $zero
/* 1699C8 80249168 2404003B */  addiu     $a0, $zero, 0x3b
/* 1699CC 8024916C 0C051F9F */  jal       set_window_update
/* 1699D0 80249170 0200282D */   daddu    $a1, $s0, $zero
/* 1699D4 80249174 3C018025 */  lui       $at, %hi(D_8024C098)
/* 1699D8 80249178 A020C098 */  sb        $zero, %lo(D_8024C098)($at)
/* 1699DC 8024917C 080924C4 */  j         .L80249310
/* 1699E0 80249180 00000000 */   nop
.L80249184:
/* 1699E4 80249184 28620008 */  slti      $v0, $v1, 8
/* 1699E8 80249188 1040000A */  beqz      $v0, .L802491B4
/* 1699EC 8024918C 00000000 */   nop
/* 1699F0 80249190 3C058025 */  lui       $a1, %hi(D_8024C110)
/* 1699F4 80249194 24A5C110 */  addiu     $a1, $a1, %lo(D_8024C110)
/* 1699F8 80249198 240400F7 */  addiu     $a0, $zero, 0xf7
/* 1699FC 8024919C 00651021 */  addu      $v0, $v1, $a1
.L802491A0:
/* 169A00 802491A0 A0440000 */  sb        $a0, ($v0)
/* 169A04 802491A4 24630001 */  addiu     $v1, $v1, 1
/* 169A08 802491A8 28620008 */  slti      $v0, $v1, 8
/* 169A0C 802491AC 1440FFFC */  bnez      $v0, .L802491A0
/* 169A10 802491B0 00651021 */   addu     $v0, $v1, $a1
.L802491B4:
/* 169A14 802491B4 3C028025 */  lui       $v0, %hi(D_8024C084)
/* 169A18 802491B8 8C42C084 */  lw        $v0, %lo(D_8024C084)($v0)
/* 169A1C 802491BC 30421000 */  andi      $v0, $v0, 0x1000
/* 169A20 802491C0 10400053 */  beqz      $v0, .L80249310
/* 169A24 802491C4 0000182D */   daddu    $v1, $zero, $zero
/* 169A28 802491C8 3C058025 */  lui       $a1, %hi(D_8024C110)
/* 169A2C 802491CC 24A5C110 */  addiu     $a1, $a1, %lo(D_8024C110)
/* 169A30 802491D0 240400F7 */  addiu     $a0, $zero, 0xf7
/* 169A34 802491D4 00651021 */  addu      $v0, $v1, $a1
.L802491D8:
/* 169A38 802491D8 90420000 */  lbu       $v0, ($v0)
/* 169A3C 802491DC 14440006 */  bne       $v0, $a0, .L802491F8
/* 169A40 802491E0 24020008 */   addiu    $v0, $zero, 8
/* 169A44 802491E4 24630001 */  addiu     $v1, $v1, 1
/* 169A48 802491E8 28620008 */  slti      $v0, $v1, 8
/* 169A4C 802491EC 1440FFFA */  bnez      $v0, .L802491D8
/* 169A50 802491F0 00651021 */   addu     $v0, $v1, $a1
/* 169A54 802491F4 24020008 */  addiu     $v0, $zero, 8
.L802491F8:
/* 169A58 802491F8 14620005 */  bne       $v1, $v0, .L80249210
/* 169A5C 802491FC 00000000 */   nop
/* 169A60 80249200 0C05272D */  jal       play_sound
/* 169A64 80249204 2404021D */   addiu    $a0, $zero, 0x21d
/* 169A68 80249208 080924C4 */  j         .L80249310
/* 169A6C 8024920C 00000000 */   nop
.L80249210:
/* 169A70 80249210 0C05272D */  jal       play_sound
/* 169A74 80249214 240400C9 */   addiu    $a0, $zero, 0xc9
/* 169A78 80249218 3C058024 */  lui       $a1, %hi(func_80243CCC)
/* 169A7C 8024921C 24A53CCC */  addiu     $a1, $a1, %lo(func_80243CCC)
/* 169A80 80249220 0C051F9F */  jal       set_window_update
/* 169A84 80249224 24040032 */   addiu    $a0, $zero, 0x32
/* 169A88 80249228 3C048016 */  lui       $a0, %hi(gUIPanels)
/* 169A8C 8024922C 24849D50 */  addiu     $a0, $a0, %lo(gUIPanels)
/* 169A90 80249230 24020079 */  addiu     $v0, $zero, 0x79
/* 169A94 80249234 A482064E */  sh        $v0, 0x64e($a0)
/* 169A98 80249238 24020045 */  addiu     $v0, $zero, 0x45
/* 169A9C 8024923C A4820650 */  sh        $v0, 0x650($a0)
/* 169AA0 80249240 2402002C */  addiu     $v0, $zero, 0x2c
/* 169AA4 80249244 80830643 */  lb        $v1, 0x643($a0)
/* 169AA8 80249248 A4820652 */  sh        $v0, 0x652($a0)
/* 169AAC 8024924C 2402FFFF */  addiu     $v0, $zero, -1
/* 169AB0 80249250 1062000B */  beq       $v1, $v0, .L80249280
/* 169AB4 80249254 2485064C */   addiu    $a1, $a0, 0x64c
/* 169AB8 80249258 00031140 */  sll       $v0, $v1, 5
/* 169ABC 8024925C 00441021 */  addu      $v0, $v0, $a0
/* 169AC0 80249260 94420010 */  lhu       $v0, 0x10($v0)
/* 169AC4 80249264 00021400 */  sll       $v0, $v0, 0x10
/* 169AC8 80249268 00021C03 */  sra       $v1, $v0, 0x10
/* 169ACC 8024926C 000217C2 */  srl       $v0, $v0, 0x1f
/* 169AD0 80249270 00621821 */  addu      $v1, $v1, $v0
/* 169AD4 80249274 00031843 */  sra       $v1, $v1, 1
/* 169AD8 80249278 080924A3 */  j         .L8024928C
/* 169ADC 8024927C 2463FFDE */   addiu    $v1, $v1, -0x22
.L80249280:
/* 169AE0 80249280 2403007E */  addiu     $v1, $zero, 0x7e
/* 169AE4 80249284 3C048016 */  lui       $a0, %hi(gUIPanels)
/* 169AE8 80249288 24849D50 */  addiu     $a0, $a0, %lo(gUIPanels)
.L8024928C:
/* 169AEC 8024928C 2402FFBA */  addiu     $v0, $zero, -0x46
/* 169AF0 80249290 A4A30000 */  sh        $v1, ($a1)
/* 169AF4 80249294 A48205CE */  sh        $v0, 0x5ce($a0)
/* 169AF8 80249298 240200A4 */  addiu     $v0, $zero, 0xa4
/* 169AFC 8024929C A48205D0 */  sh        $v0, 0x5d0($a0)
/* 169B00 802492A0 2402003E */  addiu     $v0, $zero, 0x3e
/* 169B04 802492A4 808305C3 */  lb        $v1, 0x5c3($a0)
/* 169B08 802492A8 A48205D2 */  sh        $v0, 0x5d2($a0)
/* 169B0C 802492AC 2402FFFF */  addiu     $v0, $zero, -1
/* 169B10 802492B0 1062000B */  beq       $v1, $v0, .L802492E0
/* 169B14 802492B4 248705CC */   addiu    $a3, $a0, 0x5cc
.L802492B8:
/* 169B18 802492B8 00031140 */  sll       $v0, $v1, 5
/* 169B1C 802492BC 00441021 */  addu      $v0, $v0, $a0
/* 169B20 802492C0 94420010 */  lhu       $v0, 0x10($v0)
/* 169B24 802492C4 00021400 */  sll       $v0, $v0, 0x10
/* 169B28 802492C8 00021C03 */  sra       $v1, $v0, 0x10
/* 169B2C 802492CC 000217C2 */  srl       $v0, $v0, 0x1f
/* 169B30 802492D0 00621821 */  addu      $v1, $v1, $v0
/* 169B34 802492D4 00031843 */  sra       $v1, $v1, 1
/* 169B38 802492D8 080924B9 */  j         .L802492E4
/* 169B3C 802492DC 2463FFAE */   addiu    $v1, $v1, -0x52
.L802492E0:
/* 169B40 802492E0 2403004E */  addiu     $v1, $zero, 0x4e
.L802492E4:
/* 169B44 802492E4 0000282D */  daddu     $a1, $zero, $zero
/* 169B48 802492E8 00A0302D */  daddu     $a2, $a1, $zero
/* 169B4C 802492EC A4E30000 */  sh        $v1, ($a3)
/* 169B50 802492F0 3C048025 */  lui       $a0, %hi(D_80249B88)
/* 169B54 802492F4 8C849B88 */  lw        $a0, %lo(D_80249B88)($a0)
/* 169B58 802492F8 24020001 */  addiu     $v0, $zero, 1
/* 169B5C 802492FC 3C018025 */  lui       $at, %hi(D_8024C098)
/* 169B60 80249300 A022C098 */  sb        $v0, %lo(D_8024C098)($at)
/* 169B64 80249304 24020002 */  addiu     $v0, $zero, 2
/* 169B68 80249308 0C090B65 */  jal       func_80242D94
/* 169B6C 8024930C A0820004 */   sb       $v0, 4($a0)
.L80249310:
/* 169B70 80249310 8FBF0018 */  lw        $ra, 0x18($sp)
/* 169B74 80249314 8FB10014 */  lw        $s1, 0x14($sp)
/* 169B78 80249318 8FB00010 */  lw        $s0, 0x10($sp)
/* 169B7C 8024931C 03E00008 */  jr        $ra
/* 169B80 80249320 27BD0020 */   addiu    $sp, $sp, 0x20
