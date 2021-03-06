.late_rodata
glabel D_80AEA878
    .float 0.014
glabel D_80AEA87C
    .float 0.013
glabel D_80AEA880
    .float -0.4

.text
glabel EnRr_Init
/* 00000 80AE8440 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 00004 80AE8444 AFB10018 */  sw      $s1, 0x0018($sp)           
/* 00008 80AE8448 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 0000C 80AE844C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00010 80AE8450 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 00014 80AE8454 3C0580AF */  lui     $a1, %hi(D_80AEA6D0)       ## $a1 = 80AF0000
/* 00018 80AE8458 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0001C 80AE845C 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 00020 80AE8460 24A5A6D0 */  addiu   $a1, $a1, %lo(D_80AEA6D0)  ## $a1 = 80AEA6D0
/* 00024 80AE8464 3C0E80AF */  lui     $t6, %hi(D_80AEA6B0)       ## $t6 = 80AF0000
/* 00028 80AE8468 25CEA6B0 */  addiu   $t6, $t6, %lo(D_80AEA6B0)  ## $t6 = 80AEA6B0
/* 0002C 80AE846C 240F0004 */  addiu   $t7, $zero, 0x0004         ## $t7 = 00000004
/* 00030 80AE8470 AE0E0098 */  sw      $t6, 0x0098($s0)           ## 00000098
/* 00034 80AE8474 A20F00AF */  sb      $t7, 0x00AF($s0)           ## 000000AF
/* 00038 80AE8478 26050150 */  addiu   $a1, $s0, 0x0150           ## $a1 = 00000150
/* 0003C 80AE847C AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00040 80AE8480 0C0170D9 */  jal     Collider_InitCylinder
              
/* 00044 80AE8484 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00048 80AE8488 3C0780AF */  lui     $a3, %hi(D_80AEA658)       ## $a3 = 80AF0000
/* 0004C 80AE848C 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 00050 80AE8490 24E7A658 */  addiu   $a3, $a3, %lo(D_80AEA658)  ## $a3 = 80AEA658
/* 00054 80AE8494 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00058 80AE8498 0C017114 */  jal     Collider_SetCylinder_Set3              
/* 0005C 80AE849C 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00060 80AE84A0 2605019C */  addiu   $a1, $s0, 0x019C           ## $a1 = 0000019C
/* 00064 80AE84A4 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00068 80AE84A8 0C0170D9 */  jal     Collider_InitCylinder
              
/* 0006C 80AE84AC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00070 80AE84B0 3C0780AF */  lui     $a3, %hi(D_80AEA684)       ## $a3 = 80AF0000
/* 00074 80AE84B4 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 00078 80AE84B8 24E7A684 */  addiu   $a3, $a3, %lo(D_80AEA684)  ## $a3 = 80AEA684
/* 0007C 80AE84BC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00080 80AE84C0 0C017114 */  jal     Collider_SetCylinder_Set3              
/* 00084 80AE84C4 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00088 80AE84C8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0008C 80AE84CC 0C00B56E */  jal     Actor_SetHeight
              
/* 00090 80AE84D0 3C0541F0 */  lui     $a1, 0x41F0                ## $a1 = 41F00000
/* 00094 80AE84D4 3C0180AF */  lui     $at, %hi(D_80AEA878)       ## $at = 80AF0000
/* 00098 80AE84D8 C422A878 */  lwc1    $f2, %lo(D_80AEA878)($at)  
/* 0009C 80AE84DC 3C0180AF */  lui     $at, %hi(D_80AEA87C)       ## $at = 80AF0000
/* 000A0 80AE84E0 C424A87C */  lwc1    $f4, %lo(D_80AEA87C)($at)  
/* 000A4 80AE84E4 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 000A8 80AE84E8 241800FF */  addiu   $t8, $zero, 0x00FF         ## $t8 = 000000FF
/* 000AC 80AE84EC A21800AE */  sb      $t8, 0x00AE($s0)           ## 000000AE
/* 000B0 80AE84F0 3C0180AF */  lui     $at, %hi(D_80AEA880)       ## $at = 80AF0000
/* 000B4 80AE84F4 E6020050 */  swc1    $f2, 0x0050($s0)           ## 00000050
/* 000B8 80AE84F8 E6020058 */  swc1    $f2, 0x0058($s0)           ## 00000058
/* 000BC 80AE84FC E6040054 */  swc1    $f4, 0x0054($s0)           ## 00000054
/* 000C0 80AE8500 E6000068 */  swc1    $f0, 0x0068($s0)           ## 00000068
/* 000C4 80AE8504 E6000060 */  swc1    $f0, 0x0060($s0)           ## 00000060
/* 000C8 80AE8508 C426A880 */  lwc1    $f6, %lo(D_80AEA880)($at)  
/* 000CC 80AE850C 3C0880AF */  lui     $t0, %hi(func_80AE95B0)    ## $t0 = 80AF0000
/* 000D0 80AE8510 24030001 */  addiu   $v1, $zero, 0x0001         ## $v1 = 00000001
/* 000D4 80AE8514 250895B0 */  addiu   $t0, $t0, %lo(func_80AE95B0) ## $t0 = 80AE95B0
/* 000D8 80AE8518 00034980 */  sll     $t1, $v1,  6               
/* 000DC 80AE851C A60001EA */  sh      $zero, 0x01EA($s0)         ## 000001EA
/* 000E0 80AE8520 A2000372 */  sb      $zero, 0x0372($s0)         ## 00000372
/* 000E4 80AE8524 A2000373 */  sb      $zero, 0x0373($s0)         ## 00000373
/* 000E8 80AE8528 A2000375 */  sb      $zero, 0x0375($s0)         ## 00000375
/* 000EC 80AE852C A60001EE */  sh      $zero, 0x01EE($s0)         ## 000001EE
/* 000F0 80AE8530 A60001F0 */  sh      $zero, 0x01F0($s0)         ## 000001F0
/* 000F4 80AE8534 A60001F2 */  sh      $zero, 0x01F2($s0)         ## 000001F2
/* 000F8 80AE8538 A6000378 */  sh      $zero, 0x0378($s0)         ## 00000378
/* 000FC 80AE853C A2000376 */  sb      $zero, 0x0376($s0)         ## 00000376
/* 00100 80AE8540 A60001F4 */  sh      $zero, 0x01F4($s0)         ## 000001F4
/* 00104 80AE8544 A2000370 */  sb      $zero, 0x0370($s0)         ## 00000370
/* 00108 80AE8548 A2000371 */  sb      $zero, 0x0371($s0)         ## 00000371
/* 0010C 80AE854C AE08014C */  sw      $t0, 0x014C($s0)           ## 0000014C
/* 00110 80AE8550 02091021 */  addu    $v0, $s0, $t1              
/* 00114 80AE8554 E6000224 */  swc1    $f0, 0x0224($s0)           ## 00000224
/* 00118 80AE8558 E6000228 */  swc1    $f0, 0x0228($s0)           ## 00000228
/* 0011C 80AE855C E6000244 */  swc1    $f0, 0x0244($s0)           ## 00000244
/* 00120 80AE8560 E6000248 */  swc1    $f0, 0x0248($s0)           ## 00000248
/* 00124 80AE8564 E600024C */  swc1    $f0, 0x024C($s0)           ## 0000024C
/* 00128 80AE8568 E606006C */  swc1    $f6, 0x006C($s0)           ## 0000006C
/* 0012C 80AE856C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00130 80AE8570 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00134 80AE8574 E44002E4 */  swc1    $f0, 0x02E4($v0)           ## 000002E4
/* 00138 80AE8578 E44002E8 */  swc1    $f0, 0x02E8($v0)           ## 000002E8
/* 0013C 80AE857C E4400304 */  swc1    $f0, 0x0304($v0)           ## 00000304
/* 00140 80AE8580 E4400308 */  swc1    $f0, 0x0308($v0)           ## 00000308
/* 00144 80AE8584 E440030C */  swc1    $f0, 0x030C($v0)           ## 0000030C
/* 00148 80AE8588 E44002A4 */  swc1    $f0, 0x02A4($v0)           ## 000002A4
/* 0014C 80AE858C E44002A8 */  swc1    $f0, 0x02A8($v0)           ## 000002A8
/* 00150 80AE8590 E44002C4 */  swc1    $f0, 0x02C4($v0)           ## 000002C4
/* 00154 80AE8594 E44002C8 */  swc1    $f0, 0x02C8($v0)           ## 000002C8
/* 00158 80AE8598 E44002CC */  swc1    $f0, 0x02CC($v0)           ## 000002CC
/* 0015C 80AE859C E4400264 */  swc1    $f0, 0x0264($v0)           ## 00000264
/* 00160 80AE85A0 E4400268 */  swc1    $f0, 0x0268($v0)           ## 00000268
/* 00164 80AE85A4 E4400284 */  swc1    $f0, 0x0284($v0)           ## 00000284
/* 00168 80AE85A8 E4400288 */  swc1    $f0, 0x0288($v0)           ## 00000288
/* 0016C 80AE85AC E440028C */  swc1    $f0, 0x028C($v0)           ## 0000028C
/* 00170 80AE85B0 E4400224 */  swc1    $f0, 0x0224($v0)           ## 00000224
/* 00174 80AE85B4 E4400228 */  swc1    $f0, 0x0228($v0)           ## 00000228
/* 00178 80AE85B8 E4400244 */  swc1    $f0, 0x0244($v0)           ## 00000244
/* 0017C 80AE85BC E4400248 */  swc1    $f0, 0x0248($v0)           ## 00000248
/* 00180 80AE85C0 0C2BA49B */  jal     func_80AE926C              
/* 00184 80AE85C4 E440024C */  swc1    $f0, 0x024C($v0)           ## 0000024C
/* 00188 80AE85C8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0018C 80AE85CC 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 00190 80AE85D0 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 00194 80AE85D4 03E00008 */  jr      $ra                        
/* 00198 80AE85D8 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
