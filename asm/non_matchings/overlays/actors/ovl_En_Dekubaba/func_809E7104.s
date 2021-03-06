glabel func_809E7104
/* 01934 809E7104 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 01938 809E7108 AFB00028 */  sw      $s0, 0x0028($sp)
/* 0193C 809E710C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01940 809E7110 AFBF002C */  sw      $ra, 0x002C($sp)
/* 01944 809E7114 2484017C */  addiu   $a0, $a0, 0x017C           ## $a0 = 0000017C
/* 01948 809E7118 AFA50054 */  sw      $a1, 0x0054($sp)
/* 0194C 809E711C 0C02927F */  jal     SkelAnime_FrameUpdateMatrix

/* 01950 809E7120 AFA40034 */  sw      $a0, 0x0034($sp)
/* 01954 809E7124 860301C6 */  lh      $v1, 0x01C6($s0)           ## 000001C6
/* 01958 809E7128 8FA40034 */  lw      $a0, 0x0034($sp)
/* 0195C 809E712C 14600068 */  bne     $v1, $zero, .L809E72D0
/* 01960 809E7130 2861000B */  slti    $at, $v1, 0x000B
/* 01964 809E7134 0C0295B2 */  jal     func_800A56C8
/* 01968 809E7138 3C053F80 */  lui     $a1, 0x3F80                ## $a1 = 3F800000
/* 0196C 809E713C 5040000D */  beql    $v0, $zero, .L809E7174
/* 01970 809E7140 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 01974 809E7144 860E001C */  lh      $t6, 0x001C($s0)           ## 0000001C
/* 01978 809E7148 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 0197C 809E714C 2405385D */  addiu   $a1, $zero, 0x385D         ## $a1 = 0000385D
/* 01980 809E7150 15C10005 */  bne     $t6, $at, .L809E7168
/* 01984 809E7154 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01988 809E7158 0C00BE0A */  jal     Audio_PlayActorSound2

/* 0198C 809E715C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01990 809E7160 10000004 */  beq     $zero, $zero, .L809E7174
/* 01994 809E7164 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
.L809E7168:
/* 01998 809E7168 0C00BE0A */  jal     Audio_PlayActorSound2

/* 0199C 809E716C 24053861 */  addiu   $a1, $zero, 0x3861         ## $a1 = 00003861
/* 019A0 809E7170 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
.L809E7174:
/* 019A4 809E7174 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 019A8 809E7178 0C01DE2B */  jal     Math_ApproxUpdateScaledS

/* 019AC 809E717C 24060222 */  addiu   $a2, $zero, 0x0222         ## $a2 = 00000222
/* 019B0 809E7180 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 019B4 809E7184 44813000 */  mtc1    $at, $f6                   ## $f6 = 10.00
/* 019B8 809E7188 C6040194 */  lwc1    $f4, 0x0194($s0)           ## 00000194
/* 019BC 809E718C 260401CA */  addiu   $a0, $s0, 0x01CA           ## $a0 = 000001CA
/* 019C0 809E7190 2405F1C8 */  addiu   $a1, $zero, 0xF1C8         ## $a1 = FFFFF1C8
/* 019C4 809E7194 46062202 */  mul.s   $f8, $f4, $f6
/* 019C8 809E7198 4600428D */  trunc.w.s $f10, $f8
/* 019CC 809E719C 44035000 */  mfc1    $v1, $f10
/* 019D0 809E71A0 00000000 */  nop
/* 019D4 809E71A4 00031C00 */  sll     $v1, $v1, 16
/* 019D8 809E71A8 00031C03 */  sra     $v1, $v1, 16
/* 019DC 809E71AC 2466038E */  addiu   $a2, $v1, 0x038E           ## $a2 = 0000038E
/* 019E0 809E71B0 00063400 */  sll     $a2, $a2, 16
/* 019E4 809E71B4 00063403 */  sra     $a2, $a2, 16
/* 019E8 809E71B8 0C01DE2B */  jal     Math_ApproxUpdateScaledS

/* 019EC 809E71BC A7A3004A */  sh      $v1, 0x004A($sp)
/* 019F0 809E71C0 87A6004A */  lh      $a2, 0x004A($sp)
/* 019F4 809E71C4 30430001 */  andi    $v1, $v0, 0x0001           ## $v1 = 00000000
/* 019F8 809E71C8 AFA3004C */  sw      $v1, 0x004C($sp)
/* 019FC 809E71CC 24C6071C */  addiu   $a2, $a2, 0x071C           ## $a2 = 0000071C
/* 01A00 809E71D0 00063400 */  sll     $a2, $a2, 16
/* 01A04 809E71D4 00063403 */  sra     $a2, $a2, 16
/* 01A08 809E71D8 260401CC */  addiu   $a0, $s0, 0x01CC           ## $a0 = 000001CC
/* 01A0C 809E71DC 0C01DE2B */  jal     Math_ApproxUpdateScaledS

/* 01A10 809E71E0 2405F1C8 */  addiu   $a1, $zero, 0xF1C8         ## $a1 = FFFFF1C8
/* 01A14 809E71E4 87A6004A */  lh      $a2, 0x004A($sp)
/* 01A18 809E71E8 8FA3004C */  lw      $v1, 0x004C($sp)
/* 01A1C 809E71EC 260401CE */  addiu   $a0, $s0, 0x01CE           ## $a0 = 000001CE
/* 01A20 809E71F0 24C60E38 */  addiu   $a2, $a2, 0x0E38           ## $a2 = 00000E38
/* 01A24 809E71F4 00063400 */  sll     $a2, $a2, 16
/* 01A28 809E71F8 00621824 */  and     $v1, $v1, $v0
/* 01A2C 809E71FC AFA3004C */  sw      $v1, 0x004C($sp)
/* 01A30 809E7200 00063403 */  sra     $a2, $a2, 16
/* 01A34 809E7204 0C01DE2B */  jal     Math_ApproxUpdateScaledS

/* 01A38 809E7208 2405F1C8 */  addiu   $a1, $zero, 0xF1C8         ## $a1 = FFFFF1C8
/* 01A3C 809E720C 8FA3004C */  lw      $v1, 0x004C($sp)
/* 01A40 809E7210 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 01A44 809E7214 24A502B8 */  addiu   $a1, $a1, 0x02B8           ## $a1 = 060002B8
/* 01A48 809E7218 00621824 */  and     $v1, $v1, $v0
/* 01A4C 809E721C 10600054 */  beq     $v1, $zero, .L809E7370
/* 01A50 809E7220 8FA40034 */  lw      $a0, 0x0034($sp)
/* 01A54 809E7224 0C0294E1 */  jal     SkelAnime_ChangeAnimPlaybackRepeat
/* 01A58 809E7228 3C064080 */  lui     $a2, 0x4080                ## $a2 = 40800000
/* 01A5C 809E722C 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 01A60 809E7230 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
/* 01A64 809E7234 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 01A68 809E7238 44818000 */  mtc1    $at, $f16                  ## $f16 = 5.00
/* 01A6C 809E723C 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 01A70 809E7240 46100482 */  mul.s   $f18, $f0, $f16
/* 01A74 809E7244 E7A40040 */  swc1    $f4, 0x0040($sp)
/* 01A78 809E7248 E7B2003C */  swc1    $f18, 0x003C($sp)
/* 01A7C 809E724C 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 01A80 809E7250 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
/* 01A84 809E7254 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 01A88 809E7258 44813000 */  mtc1    $at, $f6                   ## $f6 = 5.00
/* 01A8C 809E725C 3C18809F */  lui     $t8, %hi(D_809E9024)       ## $t8 = 809F0000
/* 01A90 809E7260 3C19809F */  lui     $t9, %hi(D_809E9028)       ## $t9 = 809F0000
/* 01A94 809E7264 46060202 */  mul.s   $f8, $f0, $f6
/* 01A98 809E7268 27399028 */  addiu   $t9, $t9, %lo(D_809E9028)  ## $t9 = 809E9028
/* 01A9C 809E726C 27189024 */  addiu   $t8, $t8, %lo(D_809E9024)  ## $t8 = 809E9024
/* 01AA0 809E7270 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 01AA4 809E7274 AFA80018 */  sw      $t0, 0x0018($sp)
/* 01AA8 809E7278 AFB80010 */  sw      $t8, 0x0010($sp)
/* 01AAC 809E727C AFB90014 */  sw      $t9, 0x0014($sp)
/* 01AB0 809E7280 E7A80044 */  swc1    $f8, 0x0044($sp)
/* 01AB4 809E7284 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 01AB8 809E7288 44818000 */  mtc1    $at, $f16                  ## $f16 = 100.00
/* 01ABC 809E728C C60A0230 */  lwc1    $f10, 0x0230($s0)          ## 00000230
/* 01AC0 809E7290 3C07809F */  lui     $a3, %hi(D_809E8EA0)       ## $a3 = 809F0000
/* 01AC4 809E7294 24E78EA0 */  addiu   $a3, $a3, %lo(D_809E8EA0)  ## $a3 = 809E8EA0
/* 01AC8 809E7298 46105482 */  mul.s   $f18, $f10, $f16
/* 01ACC 809E729C 8FA40054 */  lw      $a0, 0x0054($sp)
/* 01AD0 809E72A0 26050024 */  addiu   $a1, $s0, 0x0024           ## $a1 = 00000024
/* 01AD4 809E72A4 27A6003C */  addiu   $a2, $sp, 0x003C           ## $a2 = FFFFFFEC
/* 01AD8 809E72A8 4600910D */  trunc.w.s $f4, $f18
/* 01ADC 809E72AC 440A2000 */  mfc1    $t2, $f4
/* 01AE0 809E72B0 0C00A0A7 */  jal     func_8002829C
/* 01AE4 809E72B4 AFAA001C */  sw      $t2, 0x001C($sp)
/* 01AE8 809E72B8 920C0249 */  lbu     $t4, 0x0249($s0)           ## 00000249
/* 01AEC 809E72BC 240B0001 */  addiu   $t3, $zero, 0x0001         ## $t3 = 00000001
/* 01AF0 809E72C0 A60B01C6 */  sh      $t3, 0x01C6($s0)           ## 000001C6
/* 01AF4 809E72C4 358D0001 */  ori     $t5, $t4, 0x0001           ## $t5 = 00000001
/* 01AF8 809E72C8 10000029 */  beq     $zero, $zero, .L809E7370
/* 01AFC 809E72CC A20D0249 */  sb      $t5, 0x0249($s0)           ## 00000249
.L809E72D0:
/* 01B00 809E72D0 14200005 */  bne     $at, $zero, .L809E72E8
/* 01B04 809E72D4 246E0001 */  addiu   $t6, $v1, 0x0001           ## $t6 = 00000001
/* 01B08 809E72D8 0C279800 */  jal     func_809E6000
/* 01B0C 809E72DC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01B10 809E72E0 10000023 */  beq     $zero, $zero, .L809E7370
/* 01B14 809E72E4 00000000 */  nop
.L809E72E8:
/* 01B18 809E72E8 A60E01C6 */  sh      $t6, 0x01C6($s0)           ## 000001C6
/* 01B1C 809E72EC 860F01C6 */  lh      $t7, 0x01C6($s0)           ## 000001C6
/* 01B20 809E72F0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01B24 809E72F4 29E10004 */  slti    $at, $t7, 0x0004
/* 01B28 809E72F8 5420000A */  bnel    $at, $zero, .L809E7324
/* 01B2C 809E72FC 8FA40034 */  lw      $a0, 0x0034($sp)
/* 01B30 809E7300 0C00B821 */  jal     func_8002E084
/* 01B34 809E7304 2405016C */  addiu   $a1, $zero, 0x016C         ## $a1 = 0000016C
/* 01B38 809E7308 14400005 */  bne     $v0, $zero, .L809E7320
/* 01B3C 809E730C 260400B6 */  addiu   $a0, $s0, 0x00B6           ## $a0 = 000000B6
/* 01B40 809E7310 8605008A */  lh      $a1, 0x008A($s0)           ## 0000008A
/* 01B44 809E7314 2406000F */  addiu   $a2, $zero, 0x000F         ## $a2 = 0000000F
/* 01B48 809E7318 0C01E1EF */  jal     Math_SmoothScaleMaxS

/* 01B4C 809E731C 2407071C */  addiu   $a3, $zero, 0x071C         ## $a3 = 0000071C
.L809E7320:
/* 01B50 809E7320 8FA40034 */  lw      $a0, 0x0034($sp)
.L809E7324:
/* 01B54 809E7324 0C0295B2 */  jal     func_800A56C8
/* 01B58 809E7328 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 01B5C 809E732C 14400005 */  bne     $v0, $zero, .L809E7344
/* 01B60 809E7330 8FA40034 */  lw      $a0, 0x0034($sp)
/* 01B64 809E7334 0C0295B2 */  jal     func_800A56C8
/* 01B68 809E7338 3C054140 */  lui     $a1, 0x4140                ## $a1 = 41400000
/* 01B6C 809E733C 1040000C */  beq     $v0, $zero, .L809E7370
/* 01B70 809E7340 00000000 */  nop
.L809E7344:
/* 01B74 809E7344 8618001C */  lh      $t8, 0x001C($s0)           ## 0000001C
/* 01B78 809E7348 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 01B7C 809E734C 2405385C */  addiu   $a1, $zero, 0x385C         ## $a1 = 0000385C
/* 01B80 809E7350 17010005 */  bne     $t8, $at, .L809E7368
/* 01B84 809E7354 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01B88 809E7358 0C00BE0A */  jal     Audio_PlayActorSound2

/* 01B8C 809E735C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01B90 809E7360 10000003 */  beq     $zero, $zero, .L809E7370
/* 01B94 809E7364 00000000 */  nop
.L809E7368:
/* 01B98 809E7368 0C00BE0A */  jal     Audio_PlayActorSound2

/* 01B9C 809E736C 24053860 */  addiu   $a1, $zero, 0x3860         ## $a1 = 00003860
.L809E7370:
/* 01BA0 809E7370 0C279B73 */  jal     func_809E6DCC
/* 01BA4 809E7374 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01BA8 809E7378 8FBF002C */  lw      $ra, 0x002C($sp)
/* 01BAC 809E737C 8FB00028 */  lw      $s0, 0x0028($sp)
/* 01BB0 809E7380 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000
/* 01BB4 809E7384 03E00008 */  jr      $ra
/* 01BB8 809E7388 00000000 */  nop
