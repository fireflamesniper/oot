glabel func_808A12C4
/* 00704 808A12C4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00708 808A12C8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0070C 808A12CC AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00710 808A12D0 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00714 808A12D4 848F0018 */  lh      $t7, 0x0018($a0)           ## 00000018
/* 00718 808A12D8 55E0000E */  bnel    $t7, $zero, .L808A1314     
/* 0071C 808A12DC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00720 808A12E0 0C023A62 */  jal     Player_InCsMode              
/* 00724 808A12E4 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00728 808A12E8 14400009 */  bne     $v0, $zero, .L808A1310     
/* 0072C 808A12EC 8FB80018 */  lw      $t8, 0x0018($sp)           
/* 00730 808A12F0 8705001C */  lh      $a1, 0x001C($t8)           ## 0000001C
/* 00734 808A12F4 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00738 808A12F8 00052A03 */  sra     $a1, $a1,  8               
/* 0073C 808A12FC 0C00B2DD */  jal     Flags_SetSwitch
              
/* 00740 808A1300 30A5003F */  andi    $a1, $a1, 0x003F           ## $a1 = 00000000
/* 00744 808A1304 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00748 808A1308 0C2284C8 */  jal     func_808A1320              
/* 0074C 808A130C 8FA5001C */  lw      $a1, 0x001C($sp)           
.L808A1310:
/* 00750 808A1310 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L808A1314:
/* 00754 808A1314 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00758 808A1318 03E00008 */  jr      $ra                        
/* 0075C 808A131C 00000000 */  nop
