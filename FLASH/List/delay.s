///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.1.7305/W32 for ARM       21/Jun/2014  20:39:55
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  L:\6.21\src\Sources\Drivers\delay\delay.c
//    Command line =  
//        L:\6.21\src\Sources\Drivers\delay\delay.c -D IAR -D TWR_K60N512 -D
//        DEBUG -lCN L:\6.21\FLASH\List\ -lB L:\6.21\FLASH\List\ -o
//        L:\6.21\FLASH\Obj\ --no_cse --no_unroll --no_inline --no_code_motion
//        --no_tbaa --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4 -e --fpu=None --dlib_config
//        D:\dowload\iark60\arm\INC\c\DLib_Config_Normal.h -I
//        L:\6.21\src\Sources\Cpu\ -I L:\6.21\src\Sources\App\ -I
//        L:\6.21\src\Sources\Drivers\adc\ -I
//        L:\6.21\src\Sources\Drivers\delay\ -I
//        L:\6.21\src\Sources\Drivers\FTM\ -I L:\6.21\src\Sources\Drivers\gpio\
//        -I L:\6.21\src\Sources\Drivers\lptmr\ -I
//        L:\6.21\src\Sources\Drivers\mcg\ -I L:\6.21\src\Sources\Drivers\PIT\
//        -I L:\6.21\src\Sources\Drivers\uart\ -I
//        L:\6.21\src\Sources\Drivers\oled\ -I L:\6.21\src\Sources\Drivers\spi\
//        -On --use_c++_inline
//    List file    =  L:\6.21\FLASH\List\delay.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        PUBLIC delay
        PUBLIC delayms

// L:\6.21\src\Sources\Drivers\delay\delay.c
//    1 /******************** (C) COPYRIGHT 2011 野火嵌入式开发工作室 ********************
//    2  * 文件名       ：delay.c
//    3  * 描述         ：延时函数定义
//    4  *
//    5  * 实验平台     ：野火kinetis开发板
//    6  * 库版本       ：
//    7  * 嵌入系统     ：
//    8  *
//    9  * 作者         ：野火嵌入式开发工作室
//   10  * 淘宝店       ：http://firestm32.taobao.com
//   11  * 技术支持论坛 ：http://www.ourdev.cn/bbs/bbs_list.jsp?bbs_id=1008
//   12 **********************************************************************************/
//   13 
//   14 #include  "delay.h"
//   15 
//   16 
//   17 /*************************************************************************
//   18 *                             野火嵌入式开发工作室
//   19 *
//   20 *  函数名称：delay
//   21 *  功能说明：延时函数（不准确）
//   22 *  参数说明：无
//   23 *  函数返回：无
//   24 *  修改时间：2012-2-1    已测试
//   25 *  备    注：
//   26 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   27 void  delay(void)
//   28 {
delay:
        PUSH     {R7,LR}
//   29     delayms(500);
        MOV      R0,#+500
        BL       delayms
//   30 }
        POP      {R0,PC}          ;; return
//   31 
//   32 /*************************************************************************
//   33 *                             野火嵌入式开发工作室
//   34 *
//   35 *  函数名称：delayms
//   36 *  功能说明：延时函数（不准确），内核频率为100M时较为准确
//   37 *  参数说明：无
//   38 *  函数返回：无
//   39 *  修改时间：2012-2-1    已测试
//   40 *  备    注：
//   41 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   42 void  delayms(uint32  ms)
//   43 {
//   44 
//   45     uint32  i, j;
//   46     for(i = 0; i < ms; i++)
delayms:
        MOVS     R3,#+0
        MOVS     R1,R3
??delayms_0:
        CMP      R1,R0
        BCS.N    ??delayms_1
//   47     {
//   48         for(j = 100000; j > 0; j--)
        LDR.N    R3,??DataTable0  ;; 0x186a0
        MOVS     R2,R3
??delayms_2:
        CMP      R2,#+0
        BEQ.N    ??delayms_3
//   49         {
//   50             asm("nop");
        nop
//   51         }
        SUBS     R2,R2,#+1
        B.N      ??delayms_2
//   52     }
??delayms_3:
        ADDS     R1,R1,#+1
        B.N      ??delayms_0
//   53 }
??delayms_1:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0:
        DC32     0x186a0

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
// 
// 44 bytes in section .text
// 
// 44 bytes of CODE memory
//
//Errors: none
//Warnings: none
