.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel IdleJumpToGoal
/* 1A79EC 8027910C 27BDFFA8 */  addiu     $sp, $sp, -0x58
/* 1A79F0 80279110 AFB20020 */  sw        $s2, 0x20($sp)
/* 1A79F4 80279114 0080902D */  daddu     $s2, $a0, $zero
/* 1A79F8 80279118 AFBF0024 */  sw        $ra, 0x24($sp)
/* 1A79FC 8027911C AFB1001C */  sw        $s1, 0x1c($sp)
/* 1A7A00 80279120 AFB00018 */  sw        $s0, 0x18($sp)
/* 1A7A04 80279124 F7BE0050 */  sdc1      $f30, 0x50($sp)
/* 1A7A08 80279128 F7BC0048 */  sdc1      $f28, 0x48($sp)
/* 1A7A0C 8027912C F7BA0040 */  sdc1      $f26, 0x40($sp)
/* 1A7A10 80279130 F7B80038 */  sdc1      $f24, 0x38($sp)
/* 1A7A14 80279134 F7B60030 */  sdc1      $f22, 0x30($sp)
/* 1A7A18 80279138 F7B40028 */  sdc1      $f20, 0x28($sp)
/* 1A7A1C 8027913C 8E51000C */  lw        $s1, 0xc($s2)
/* 1A7A20 80279140 54A00001 */  bnel      $a1, $zero, .L80279148
/* 1A7A24 80279144 AE400070 */   sw       $zero, 0x70($s2)
.L80279148:
/* 1A7A28 80279148 8E420070 */  lw        $v0, 0x70($s2)
/* 1A7A2C 8027914C 14400073 */  bnez      $v0, .L8027931C
/* 1A7A30 80279150 00000000 */   nop
/* 1A7A34 80279154 8E250000 */  lw        $a1, ($s1)
/* 1A7A38 80279158 26310004 */  addiu     $s1, $s1, 4
/* 1A7A3C 8027915C 0C0B1EAF */  jal       evt_get_variable
/* 1A7A40 80279160 0240202D */   daddu    $a0, $s2, $zero
/* 1A7A44 80279164 0040202D */  daddu     $a0, $v0, $zero
/* 1A7A48 80279168 2402FF81 */  addiu     $v0, $zero, -0x7f
/* 1A7A4C 8027916C 14820002 */  bne       $a0, $v0, .L80279178
/* 1A7A50 80279170 00000000 */   nop
/* 1A7A54 80279174 8E440148 */  lw        $a0, 0x148($s2)
.L80279178:
/* 1A7A58 80279178 0C09A75B */  jal       get_actor
/* 1A7A5C 8027917C 00000000 */   nop
/* 1A7A60 80279180 0040802D */  daddu     $s0, $v0, $zero
/* 1A7A64 80279184 AE500074 */  sw        $s0, 0x74($s2)
/* 1A7A68 80279188 8E250000 */  lw        $a1, ($s1)
/* 1A7A6C 8027918C 26310004 */  addiu     $s1, $s1, 4
/* 1A7A70 80279190 0C0B1EAF */  jal       evt_get_variable
/* 1A7A74 80279194 0240202D */   daddu    $a0, $s2, $zero
/* 1A7A78 80279198 A6020120 */  sh        $v0, 0x120($s0)
/* 1A7A7C 8027919C 8E250000 */  lw        $a1, ($s1)
/* 1A7A80 802791A0 26310004 */  addiu     $s1, $s1, 4
/* 1A7A84 802791A4 0C0B1EAF */  jal       evt_get_variable
/* 1A7A88 802791A8 0240202D */   daddu    $a0, $s2, $zero
/* 1A7A8C 802791AC AE420078 */  sw        $v0, 0x78($s2)
/* 1A7A90 802791B0 8E250000 */  lw        $a1, ($s1)
/* 1A7A94 802791B4 0C0B1EAF */  jal       evt_get_variable
/* 1A7A98 802791B8 0240202D */   daddu    $a0, $s2, $zero
/* 1A7A9C 802791BC AE42007C */  sw        $v0, 0x7c($s2)
/* 1A7AA0 802791C0 C6000148 */  lwc1      $f0, 0x148($s0)
/* 1A7AA4 802791C4 C61A00D4 */  lwc1      $f26, 0xd4($s0)
/* 1A7AA8 802791C8 C61C00DC */  lwc1      $f28, 0xdc($s0)
/* 1A7AAC 802791CC C614014C */  lwc1      $f20, 0x14c($s0)
/* 1A7AB0 802791D0 C61800D8 */  lwc1      $f24, 0xd8($s0)
/* 1A7AB4 802791D4 261100C8 */  addiu     $s1, $s0, 0xc8
/* 1A7AB8 802791D8 E60000CC */  swc1      $f0, 0xcc($s0)
/* 1A7ABC 802791DC 46000786 */  mov.s     $f30, $f0
/* 1A7AC0 802791E0 4406D000 */  mfc1      $a2, $f26
/* 1A7AC4 802791E4 4407E000 */  mfc1      $a3, $f28
/* 1A7AC8 802791E8 C6000144 */  lwc1      $f0, 0x144($s0)
/* 1A7ACC 802791EC 4600A386 */  mov.s     $f14, $f20
/* 1A7AD0 802791F0 E61400D0 */  swc1      $f20, 0xd0($s0)
/* 1A7AD4 802791F4 E60000C8 */  swc1      $f0, 0xc8($s0)
/* 1A7AD8 802791F8 46000586 */  mov.s     $f22, $f0
/* 1A7ADC 802791FC 0C00A720 */  jal       atan2
/* 1A7AE0 80279200 4600B306 */   mov.s    $f12, $f22
/* 1A7AE4 80279204 4600B306 */  mov.s     $f12, $f22
/* 1A7AE8 80279208 4600A386 */  mov.s     $f14, $f20
/* 1A7AEC 8027920C 4406D000 */  mfc1      $a2, $f26
/* 1A7AF0 80279210 4407E000 */  mfc1      $a3, $f28
/* 1A7AF4 80279214 461EC781 */  sub.s     $f30, $f24, $f30
/* 1A7AF8 80279218 0C00A7B5 */  jal       dist2D
/* 1A7AFC 8027921C E6000110 */   swc1     $f0, 0x110($s0)
/* 1A7B00 80279220 86020120 */  lh        $v0, 0x120($s0)
/* 1A7B04 80279224 46000106 */  mov.s     $f4, $f0
/* 1A7B08 80279228 14400012 */  bnez      $v0, .L80279274
/* 1A7B0C 8027922C E6040114 */   swc1     $f4, 0x114($s0)
/* 1A7B10 80279230 C6000108 */  lwc1      $f0, 0x108($s0)
/* 1A7B14 80279234 C6020108 */  lwc1      $f2, 0x108($s0)
/* 1A7B18 80279238 46002003 */  div.s     $f0, $f4, $f0
/* 1A7B1C 8027923C 4600028D */  trunc.w.s $f10, $f0
/* 1A7B20 80279240 44035000 */  mfc1      $v1, $f10
/* 1A7B24 80279244 00000000 */  nop
/* 1A7B28 80279248 00031400 */  sll       $v0, $v1, 0x10
/* 1A7B2C 8027924C 00021403 */  sra       $v0, $v0, 0x10
/* 1A7B30 80279250 44820000 */  mtc1      $v0, $f0
/* 1A7B34 80279254 00000000 */  nop
/* 1A7B38 80279258 46800020 */  cvt.s.w   $f0, $f0
/* 1A7B3C 8027925C 46020002 */  mul.s     $f0, $f0, $f2
/* 1A7B40 80279260 00000000 */  nop
/* 1A7B44 80279264 46002086 */  mov.s     $f2, $f4
/* 1A7B48 80279268 A6030120 */  sh        $v1, 0x120($s0)
/* 1A7B4C 8027926C 0809E4AA */  j         .L802792A8
/* 1A7B50 80279270 46001201 */   sub.s    $f8, $f2, $f0
.L80279274:
/* 1A7B54 80279274 44821000 */  mtc1      $v0, $f2
/* 1A7B58 80279278 00000000 */  nop
/* 1A7B5C 8027927C 468010A0 */  cvt.s.w   $f2, $f2
/* 1A7B60 80279280 86020120 */  lh        $v0, 0x120($s0)
/* 1A7B64 80279284 46022083 */  div.s     $f2, $f4, $f2
/* 1A7B68 80279288 44820000 */  mtc1      $v0, $f0
/* 1A7B6C 8027928C 00000000 */  nop
/* 1A7B70 80279290 46800020 */  cvt.s.w   $f0, $f0
/* 1A7B74 80279294 46020002 */  mul.s     $f0, $f0, $f2
/* 1A7B78 80279298 00000000 */  nop
/* 1A7B7C 8027929C C6040114 */  lwc1      $f4, 0x114($s0)
/* 1A7B80 802792A0 E6020108 */  swc1      $f2, 0x108($s0)
/* 1A7B84 802792A4 46002201 */  sub.s     $f8, $f4, $f0
.L802792A8:
/* 1A7B88 802792A8 86220058 */  lh        $v0, 0x58($s1)
/* 1A7B8C 802792AC 14400003 */  bnez      $v0, .L802792BC
/* 1A7B90 802792B0 00000000 */   nop
/* 1A7B94 802792B4 0809E4FC */  j         .L802793F0
/* 1A7B98 802792B8 24020002 */   addiu    $v0, $zero, 2
.L802792BC:
/* 1A7B9C 802792BC C622003C */  lwc1      $f2, 0x3c($s1)
/* 1A7BA0 802792C0 44823000 */  mtc1      $v0, $f6
/* 1A7BA4 802792C4 00000000 */  nop
/* 1A7BA8 802792C8 468031A0 */  cvt.s.w   $f6, $f6
/* 1A7BAC 802792CC 46061082 */  mul.s     $f2, $f2, $f6
/* 1A7BB0 802792D0 00000000 */  nop
/* 1A7BB4 802792D4 3C013F00 */  lui       $at, 0x3f00
/* 1A7BB8 802792D8 44810000 */  mtc1      $at, $f0
/* 1A7BBC 802792DC 00000000 */  nop
/* 1A7BC0 802792E0 46001082 */  mul.s     $f2, $f2, $f0
/* 1A7BC4 802792E4 00000000 */  nop
/* 1A7BC8 802792E8 86220058 */  lh        $v0, 0x58($s1)
/* 1A7BCC 802792EC C6240040 */  lwc1      $f4, 0x40($s1)
/* 1A7BD0 802792F0 44820000 */  mtc1      $v0, $f0
/* 1A7BD4 802792F4 00000000 */  nop
/* 1A7BD8 802792F8 46800020 */  cvt.s.w   $f0, $f0
/* 1A7BDC 802792FC 46004003 */  div.s     $f0, $f8, $f0
/* 1A7BE0 80279300 46002100 */  add.s     $f4, $f4, $f0
/* 1A7BE4 80279304 4606F183 */  div.s     $f6, $f30, $f6
/* 1A7BE8 80279308 46061080 */  add.s     $f2, $f2, $f6
/* 1A7BEC 8027930C 24020001 */  addiu     $v0, $zero, 1
/* 1A7BF0 80279310 E6240040 */  swc1      $f4, 0x40($s1)
/* 1A7BF4 80279314 E6220044 */  swc1      $f2, 0x44($s1)
/* 1A7BF8 80279318 AE420070 */  sw        $v0, 0x70($s2)
.L8027931C:
/* 1A7BFC 8027931C 8E500074 */  lw        $s0, 0x74($s2)
/* 1A7C00 80279320 C600010C */  lwc1      $f0, 0x10c($s0)
/* 1A7C04 80279324 C60400CC */  lwc1      $f4, 0xcc($s0)
/* 1A7C08 80279328 46000086 */  mov.s     $f2, $f0
/* 1A7C0C 8027932C 46002100 */  add.s     $f4, $f4, $f0
/* 1A7C10 80279330 C6000104 */  lwc1      $f0, 0x104($s0)
/* 1A7C14 80279334 46001081 */  sub.s     $f2, $f2, $f0
/* 1A7C18 80279338 44800000 */  mtc1      $zero, $f0
/* 1A7C1C 8027933C 261100C8 */  addiu     $s1, $s0, 0xc8
/* 1A7C20 80279340 E60400CC */  swc1      $f4, 0xcc($s0)
/* 1A7C24 80279344 4600103C */  c.lt.s    $f2, $f0
/* 1A7C28 80279348 00000000 */  nop
/* 1A7C2C 8027934C 45000007 */  bc1f      .L8027936C
/* 1A7C30 80279350 E602010C */   swc1     $f2, 0x10c($s0)
/* 1A7C34 80279354 C60200D8 */  lwc1      $f2, 0xd8($s0)
/* 1A7C38 80279358 46002006 */  mov.s     $f0, $f4
/* 1A7C3C 8027935C 4602003C */  c.lt.s    $f0, $f2
/* 1A7C40 80279360 00000000 */  nop
/* 1A7C44 80279364 45030001 */  bc1tl     .L8027936C
/* 1A7C48 80279368 E60200CC */   swc1     $f2, 0xcc($s0)
.L8027936C:
/* 1A7C4C 8027936C 8E250040 */  lw        $a1, 0x40($s1)
/* 1A7C50 80279370 8E260048 */  lw        $a2, 0x48($s1)
/* 1A7C54 80279374 0C099096 */  jal       add_xz_vec3f_copy2
/* 1A7C58 80279378 0220202D */   daddu    $a0, $s1, $zero
/* 1A7C5C 8027937C C6200000 */  lwc1      $f0, ($s1)
/* 1A7C60 80279380 E6000144 */  swc1      $f0, 0x144($s0)
/* 1A7C64 80279384 C6200004 */  lwc1      $f0, 4($s1)
/* 1A7C68 80279388 E6000148 */  swc1      $f0, 0x148($s0)
/* 1A7C6C 8027938C C6200008 */  lwc1      $f0, 8($s1)
/* 1A7C70 80279390 E600014C */  swc1      $f0, 0x14c($s0)
/* 1A7C74 80279394 96220058 */  lhu       $v0, 0x58($s1)
/* 1A7C78 80279398 2442FFFF */  addiu     $v0, $v0, -1
/* 1A7C7C 8027939C A6220058 */  sh        $v0, 0x58($s1)
/* 1A7C80 802793A0 00021400 */  sll       $v0, $v0, 0x10
/* 1A7C84 802793A4 1C400012 */  bgtz      $v0, .L802793F0
/* 1A7C88 802793A8 0000102D */   daddu    $v0, $zero, $zero
/* 1A7C8C 802793AC 8E42007C */  lw        $v0, 0x7c($s2)
/* 1A7C90 802793B0 10400008 */  beqz      $v0, .L802793D4
/* 1A7C94 802793B4 00000000 */   nop
/* 1A7C98 802793B8 C6200048 */  lwc1      $f0, 0x48($s1)
/* 1A7C9C 802793BC E7A00010 */  swc1      $f0, 0x10($sp)
/* 1A7CA0 802793C0 8E25000C */  lw        $a1, 0xc($s1)
/* 1A7CA4 802793C4 8E260010 */  lw        $a2, 0x10($s1)
/* 1A7CA8 802793C8 8E270014 */  lw        $a3, 0x14($s1)
/* 1A7CAC 802793CC 0C0990BC */  jal       play_movement_dust_effects
/* 1A7CB0 802793D0 24040002 */   addiu    $a0, $zero, 2
.L802793D4:
/* 1A7CB4 802793D4 C620000C */  lwc1      $f0, 0xc($s1)
/* 1A7CB8 802793D8 E6000144 */  swc1      $f0, 0x144($s0)
/* 1A7CBC 802793DC C6200010 */  lwc1      $f0, 0x10($s1)
/* 1A7CC0 802793E0 E6000148 */  swc1      $f0, 0x148($s0)
/* 1A7CC4 802793E4 C6200014 */  lwc1      $f0, 0x14($s1)
/* 1A7CC8 802793E8 24020001 */  addiu     $v0, $zero, 1
/* 1A7CCC 802793EC E600014C */  swc1      $f0, 0x14c($s0)
.L802793F0:
/* 1A7CD0 802793F0 8FBF0024 */  lw        $ra, 0x24($sp)
/* 1A7CD4 802793F4 8FB20020 */  lw        $s2, 0x20($sp)
/* 1A7CD8 802793F8 8FB1001C */  lw        $s1, 0x1c($sp)
/* 1A7CDC 802793FC 8FB00018 */  lw        $s0, 0x18($sp)
/* 1A7CE0 80279400 D7BE0050 */  ldc1      $f30, 0x50($sp)
/* 1A7CE4 80279404 D7BC0048 */  ldc1      $f28, 0x48($sp)
/* 1A7CE8 80279408 D7BA0040 */  ldc1      $f26, 0x40($sp)
/* 1A7CEC 8027940C D7B80038 */  ldc1      $f24, 0x38($sp)
/* 1A7CF0 80279410 D7B60030 */  ldc1      $f22, 0x30($sp)
/* 1A7CF4 80279414 D7B40028 */  ldc1      $f20, 0x28($sp)
/* 1A7CF8 80279418 03E00008 */  jr        $ra
/* 1A7CFC 8027941C 27BD0058 */   addiu    $sp, $sp, 0x58
