glabel func_80B58898
/* 054E8 80B58898 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 054EC 80B5889C AFA50024 */  sw      $a1, 0x0024($sp)           
/* 054F0 80B588A0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 054F4 80B588A4 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 054F8 80B588A8 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 054FC 80B588AC AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 05500 80B588B0 24A538C0 */  addiu   $a1, $a1, 0x38C0           ## $a1 = 060038C0
/* 05504 80B588B4 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 05508 80B588B8 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 0550C 80B588BC 0C2D5385 */  jal     func_80B54E14              
/* 05510 80B588C0 3C07C100 */  lui     $a3, 0xC100                ## $a3 = C1000000
/* 05514 80B588C4 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 05518 80B588C8 240F0026 */  addiu   $t7, $zero, 0x0026         ## $t7 = 00000026
/* 0551C 80B588CC 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 05520 80B588D0 AC8F024C */  sw      $t7, 0x024C($a0)           ## 0000024C
/* 05524 80B588D4 AC980374 */  sw      $t8, 0x0374($a0)           ## 00000374
/* 05528 80B588D8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0552C 80B588DC 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 05530 80B588E0 03E00008 */  jr      $ra                        
/* 05534 80B588E4 00000000 */  nop
