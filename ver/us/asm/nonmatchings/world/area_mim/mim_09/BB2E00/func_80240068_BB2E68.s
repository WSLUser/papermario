.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240068_BB2E68
/* BB2E68 80240068 44806000 */  mtc1      $zero, $f12
/* BB2E6C 8024006C 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* BB2E70 80240070 AFB00010 */  sw        $s0, 0x10($sp)
/* BB2E74 80240074 0080802D */  daddu     $s0, $a0, $zero
/* BB2E78 80240078 AFBF0014 */  sw        $ra, 0x14($sp)
/* BB2E7C 8024007C 0C038022 */  jal       get_xz_dist_to_player
/* BB2E80 80240080 46006386 */   mov.s    $f14, $f12
/* BB2E84 80240084 4600008D */  trunc.w.s $f2, $f0
/* BB2E88 80240088 E6020084 */  swc1      $f2, 0x84($s0)
/* BB2E8C 8024008C 8FBF0014 */  lw        $ra, 0x14($sp)
/* BB2E90 80240090 8FB00010 */  lw        $s0, 0x10($sp)
/* BB2E94 80240094 24020002 */  addiu     $v0, $zero, 2
/* BB2E98 80240098 03E00008 */  jr        $ra
/* BB2E9C 8024009C 27BD0018 */   addiu    $sp, $sp, 0x18
