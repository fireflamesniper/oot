.late_rodata
glabel D_8095C918
    .float 0.01

.text
glabel func_8095B318
/* 0C058 8095B318 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 0C05C 8095B31C 3C0E8096 */  lui     $t6, %hi(D_8095C32C)       ## $t6 = 80960000
/* 0C060 8095B320 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0C064 8095B324 AFA40040 */  sw      $a0, 0x0040($sp)           
/* 0C068 8095B328 25CEC32C */  addiu   $t6, $t6, %lo(D_8095C32C)  ## $t6 = 8095C32C
/* 0C06C 8095B32C 8DD80000 */  lw      $t8, 0x0000($t6)           ## 8095C32C
/* 0C070 8095B330 27A30034 */  addiu   $v1, $sp, 0x0034           ## $v1 = FFFFFFF4
/* 0C074 8095B334 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 0C078 8095B338 AC780000 */  sw      $t8, 0x0000($v1)           ## FFFFFFF4
/* 0C07C 8095B33C 8DCF0004 */  lw      $t7, 0x0004($t6)           ## 8095C330
/* 0C080 8095B340 24080004 */  addiu   $t0, $zero, 0x0004         ## $t0 = 00000004
/* 0C084 8095B344 AC6F0004 */  sw      $t7, 0x0004($v1)           ## FFFFFFF8
/* 0C088 8095B348 8DD80008 */  lw      $t8, 0x0008($t6)           ## 8095C334
/* 0C08C 8095B34C AC780008 */  sw      $t8, 0x0008($v1)           ## FFFFFFFC
.L8095B350:
/* 0C090 8095B350 90B90024 */  lbu     $t9, 0x0024($a1)           ## 00000024
/* 0C094 8095B354 24420001 */  addiu   $v0, $v0, 0x0001           ## $v0 = 00000001
/* 0C098 8095B358 00021400 */  sll     $v0, $v0, 16               
/* 0C09C 8095B35C 1720004A */  bne     $t9, $zero, .L8095B488     
/* 0C0A0 8095B360 00021403 */  sra     $v0, $v0, 16               
/* 0C0A4 8095B364 A0A80024 */  sb      $t0, 0x0024($a1)           ## 00000024
/* 0C0A8 8095B368 ACA60054 */  sw      $a2, 0x0054($a1)           ## 00000054
/* 0C0AC 8095B36C 8C6A0000 */  lw      $t2, 0x0000($v1)           ## FFFFFFF4
/* 0C0B0 8095B370 3C0B8096 */  lui     $t3, %hi(D_8095C220)       ## $t3 = 80960000
/* 0C0B4 8095B374 256BC220 */  addiu   $t3, $t3, %lo(D_8095C220)  ## $t3 = 8095C220
/* 0C0B8 8095B378 ACAA0000 */  sw      $t2, 0x0000($a1)           ## 00000000
/* 0C0BC 8095B37C 8C690004 */  lw      $t1, 0x0004($v1)           ## FFFFFFF8
/* 0C0C0 8095B380 27A20024 */  addiu   $v0, $sp, 0x0024           ## $v0 = FFFFFFE4
/* 0C0C4 8095B384 ACA90004 */  sw      $t1, 0x0004($a1)           ## 00000004
/* 0C0C8 8095B388 8C6A0008 */  lw      $t2, 0x0008($v1)           ## FFFFFFFC
/* 0C0CC 8095B38C ACAA0008 */  sw      $t2, 0x0008($a1)           ## 00000008
/* 0C0D0 8095B390 8D6D0000 */  lw      $t5, 0x0000($t3)           ## 8095C220
/* 0C0D4 8095B394 AC4D0000 */  sw      $t5, 0x0000($v0)           ## FFFFFFE4
/* 0C0D8 8095B398 8D6C0004 */  lw      $t4, 0x0004($t3)           ## 8095C224
/* 0C0DC 8095B39C 8C4F0000 */  lw      $t7, 0x0000($v0)           ## FFFFFFE4
/* 0C0E0 8095B3A0 AC4C0004 */  sw      $t4, 0x0004($v0)           ## FFFFFFE8
/* 0C0E4 8095B3A4 8D6D0008 */  lw      $t5, 0x0008($t3)           ## 8095C228
/* 0C0E8 8095B3A8 AC4D0008 */  sw      $t5, 0x0008($v0)           ## FFFFFFEC
/* 0C0EC 8095B3AC ACAF0018 */  sw      $t7, 0x0018($a1)           ## 00000018
/* 0C0F0 8095B3B0 8C4E0004 */  lw      $t6, 0x0004($v0)           ## FFFFFFE8
/* 0C0F4 8095B3B4 ACAE001C */  sw      $t6, 0x001C($a1)           ## 0000001C
/* 0C0F8 8095B3B8 8C4F0008 */  lw      $t7, 0x0008($v0)           ## FFFFFFEC
/* 0C0FC 8095B3BC ACAF0020 */  sw      $t7, 0x0020($a1)           ## 00000020
/* 0C100 8095B3C0 8C590000 */  lw      $t9, 0x0000($v0)           ## FFFFFFE4
/* 0C104 8095B3C4 ACB9000C */  sw      $t9, 0x000C($a1)           ## 0000000C
/* 0C108 8095B3C8 8C580004 */  lw      $t8, 0x0004($v0)           ## FFFFFFE8
/* 0C10C 8095B3CC ACB80010 */  sw      $t8, 0x0010($a1)           ## 00000010
/* 0C110 8095B3D0 8C590008 */  lw      $t9, 0x0008($v0)           ## FFFFFFEC
/* 0C114 8095B3D4 A4A00028 */  sh      $zero, 0x0028($a1)         ## 00000028
/* 0C118 8095B3D8 ACB90014 */  sw      $t9, 0x0014($a1)           ## 00000014
/* 0C11C 8095B3DC C4E40000 */  lwc1    $f4, 0x0000($a3)           ## 00000000
/* 0C120 8095B3E0 E4A40048 */  swc1    $f4, 0x0048($a1)           ## 00000048
/* 0C124 8095B3E4 C4E60008 */  lwc1    $f6, 0x0008($a3)           ## 00000008
/* 0C128 8095B3E8 E4A60050 */  swc1    $f6, 0x0050($a1)           ## 00000050
/* 0C12C 8095B3EC C4E80004 */  lwc1    $f8, 0x0004($a3)           ## 00000004
/* 0C130 8095B3F0 E4A8004C */  swc1    $f8, 0x004C($a1)           ## 0000004C
/* 0C134 8095B3F4 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 0C138 8095B3F8 AFA50044 */  sw      $a1, 0x0044($sp)           
/* 0C13C 8095B3FC 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 0C140 8095B400 44815000 */  mtc1    $at, $f10                  ## $f10 = 10.00
/* 0C144 8095B404 8FA50044 */  lw      $a1, 0x0044($sp)           
/* 0C148 8095B408 240D00E6 */  addiu   $t5, $zero, 0x00E6         ## $t5 = 000000E6
/* 0C14C 8095B40C 460A0402 */  mul.s   $f16, $f0, $f10            
/* 0C150 8095B410 A4AD0036 */  sh      $t5, 0x0036($a1)           ## 00000036
/* 0C154 8095B414 84A20036 */  lh      $v0, 0x0036($a1)           ## 00000036
/* 0C158 8095B418 240E0064 */  addiu   $t6, $zero, 0x0064         ## $t6 = 00000064
/* 0C15C 8095B41C 240F00DC */  addiu   $t7, $zero, 0x00DC         ## $t7 = 000000DC
/* 0C160 8095B420 241800A0 */  addiu   $t8, $zero, 0x00A0         ## $t8 = 000000A0
/* 0C164 8095B424 A4A00038 */  sh      $zero, 0x0038($a1)         ## 00000038
/* 0C168 8095B428 4600848D */  trunc.w.s $f18, $f16                 
/* 0C16C 8095B42C A4AE003A */  sh      $t6, 0x003A($a1)           ## 0000003A
/* 0C170 8095B430 A4AF003C */  sh      $t7, 0x003C($a1)           ## 0000003C
/* 0C174 8095B434 A4B8003E */  sh      $t8, 0x003E($a1)           ## 0000003E
/* 0C178 8095B438 440B9000 */  mfc1    $t3, $f18                  
/* 0C17C 8095B43C A4A20034 */  sh      $v0, 0x0034($a1)           ## 00000034
/* 0C180 8095B440 A4A20032 */  sh      $v0, 0x0032($a1)           ## 00000032
/* 0C184 8095B444 256C006F */  addiu   $t4, $t3, 0x006F           ## $t4 = 0000006F
/* 0C188 8095B448 A4AC0026 */  sh      $t4, 0x0026($a1)           ## 00000026
/* 0C18C 8095B44C A4A20030 */  sh      $v0, 0x0030($a1)           ## 00000030
/* 0C190 8095B450 87B90052 */  lh      $t9, 0x0052($sp)           
/* 0C194 8095B454 44992000 */  mtc1    $t9, $f4                   ## $f4 = 0.00
/* 0C198 8095B458 00000000 */  nop
/* 0C19C 8095B45C 46802320 */  cvt.s.w $f12, $f4                  
/* 0C1A0 8095B460 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 0C1A4 8095B464 E7AC001C */  swc1    $f12, 0x001C($sp)          
/* 0C1A8 8095B468 C7AC001C */  lwc1    $f12, 0x001C($sp)          
/* 0C1AC 8095B46C 3C018096 */  lui     $at, %hi(D_8095C918)       ## $at = 80960000
/* 0C1B0 8095B470 C428C918 */  lwc1    $f8, %lo(D_8095C918)($at)  
/* 0C1B4 8095B474 460C0180 */  add.s   $f6, $f0, $f12             
/* 0C1B8 8095B478 8FA50044 */  lw      $a1, 0x0044($sp)           
/* 0C1BC 8095B47C 46083282 */  mul.s   $f10, $f6, $f8             
/* 0C1C0 8095B480 10000004 */  beq     $zero, $zero, .L8095B494   
/* 0C1C4 8095B484 E4AA0040 */  swc1    $f10, 0x0040($a1)          ## 00000040
.L8095B488:
/* 0C1C8 8095B488 28410190 */  slti    $at, $v0, 0x0190           
/* 0C1CC 8095B48C 1420FFB0 */  bne     $at, $zero, .L8095B350     
/* 0C1D0 8095B490 24A50058 */  addiu   $a1, $a1, 0x0058           ## $a1 = 00000058
.L8095B494:
/* 0C1D4 8095B494 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0C1D8 8095B498 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 0C1DC 8095B49C 03E00008 */  jr      $ra                        
/* 0C1E0 8095B4A0 00000000 */  nop
