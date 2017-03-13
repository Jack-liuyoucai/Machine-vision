///////////////////////////////////////////////////////////////////////////////
//                                                                            /
//                                                      27/Apr/2013  13:44:41 /
// IAR ANSI C/C++ Compiler V6.30.4.23288/W32 EVALUATION for ARM               /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Users\Administrator\Desktop\4.25屏幕 下位机 发送     /
//                    接受 像素处理  死机\src\Sources\Drivers\PIT\PIT.c       /
//    Command line =  "C:\Users\Administrator\Desktop\4.25屏幕 下位机 发送    /
//                    接受 像素处理  死机\src\Sources\Drivers\PIT\PIT.c"      /
//                    -lCN "C:\Users\Administrator\Desktop\4.25屏幕 下位机    /
//                    发送 接受 像素处理  死机\RAM\List\" -lB                 /
//                    "C:\Users\Administrator\Desktop\4.25屏幕 下位机 发送    /
//                    接受 像素处理  死机\RAM\List\" -o                       /
//                    "C:\Users\Administrator\Desktop\4.25屏幕 下位机 发送    /
//                    接受 像素处理  死机\RAM\Obj\" --no_cse --no_unroll      /
//                    --no_inline --no_code_motion --no_tbaa --no_clustering  /
//                    --no_scheduling --debug --endian=little                 /
//                    --cpu=Cortex-M4 -e --fpu=None --dlib_config             /
//                    "D:\Program Files\IAR Systems\Embedded Workbench 6.0    /
//                    Evaluation\arm\INC\c\DLib_Config_Normal.h" -I           /
//                    "C:\Users\Administrator\Desktop\4.25屏幕 下位机 发送    /
//                    接受 像素处理  死机\src\Sources\Cpu\" -I                /
//                    "C:\Users\Administrator\Desktop\4.25屏幕 下位机 发送    /
//                    接受 像素处理  死机\src\Sources\App\" -I                /
//                    "C:\Users\Administrator\Desktop\4.25屏幕 下位机 发送    /
//                    接受 像素处理  死机\src\Sources\Drivers\adc\" -I        /
//                    "C:\Users\Administrator\Desktop\4.25屏幕 下位机 发送    /
//                    接受 像素处理  死机\src\Sources\Drivers\delay\" -I      /
//                    "C:\Users\Administrator\Desktop\4.25屏幕 下位机 发送    /
//                    接受 像素处理  死机\src\Sources\Drivers\FTM\" -I        /
//                    "C:\Users\Administrator\Desktop\4.25屏幕 下位机 发送    /
//                    接受 像素处理  死机\src\Sources\Drivers\gpio\" -I       /
//                    "C:\Users\Administrator\Desktop\4.25屏幕 下位机 发送    /
//                    接受 像素处理  死机\src\Sources\Drivers\lptmr\" -I      /
//                    "C:\Users\Administrator\Desktop\4.25屏幕 下位机 发送    /
//                    接受 像素处理  死机\src\Sources\Drivers\mcg\" -I        /
//                    "C:\Users\Administrator\Desktop\4.25屏幕 下位机 发送    /
//                    接受 像素处理  死机\src\Sources\Drivers\PIT\" -I        /
//                    "C:\Users\Administrator\Desktop\4.25屏幕 下位机 发送    /
//                    接受 像素处理  死机\src\Sources\Drivers\uart\" -I       /
//                    "C:\Users\Administrator\Desktop\4.25屏幕 下位机 发送    /
//                    接受 像素处理  死机\src\Sources\Drivers\oled\" -I       /
//                    "C:\Users\Administrator\Desktop\4.25屏幕 下位机 发送    /
//                    接受 像素处理  死机\src\Sources\Drivers\spi\" -On       /
//                    --use_c++_inline                                        /
//    List file    =  C:\Users\Administrator\Desktop\4.25屏幕 下位机 发送     /
//                    接受 像素处理  死机\RAM\List\PIT.s                      /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME PIT

        #define SHT_PROGBITS 0x1

        EXTERN enable_irq

        PUBLIC pit_dma_init
        PUBLIC pit_init

// C:\Users\Administrator\Desktop\4.25屏幕 下位机 发送 接受 像素处理  死机\src\Sources\Drivers\PIT\PIT.c
//    1 /******************** (C) COPYRIGHT 2011      ********************
//    2  * 文件名       ：PIT.c
//    3  * 描述         ：PIT周期中断计时器，定时中断
//    4  * 备注         ：
//    5  *
//    6                                                
//    7 **********************************************************************************/
//    8 
//    9 
//   10 #include "common.h"
//   11 #include  "PIT.h"     //周期中断计时器
//   12 
//   13 /*************************************************************************
//   14 *                                 
//   15 *
//   16 *  函数名称：pit_init
//   17 *  功能说明：PITn定时中断
//   18 *  参数说明：PITn        模块号（PIT0~PIT3）
//   19              cnt         延时时间(单位为bus时钟周期)
//   20 *  函数返回：无
//   21 *  修改时间：2012-1-24
//   22 *  备    注：
//   23 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   24 void pit_init(PITn pitn, uint32 cnt)
//   25 {
pit_init:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//   26     //PIT 用的是 Bus Clock 总线频率
//   27     //溢出计数 = 总线频率 * 时间
//   28 
//   29     /* 开启时钟*/
//   30     SIM_SCGC6       |= SIM_SCGC6_PIT_MASK;                            //使能PIT时钟
        LDR.N    R0,??DataTable1  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x800000
        LDR.N    R1,??DataTable1  ;; 0x4004803c
        STR      R0,[R1, #+0]
//   31 
//   32     /* PIT模块控制 PIT Module Control Register (PIT_MCR) */
//   33     PIT_MCR         &= ~(PIT_MCR_MDIS_MASK | PIT_MCR_FRZ_MASK );      //使能PIT定时器时钟 ，调试模式下继续运行
        LDR.N    R0,??DataTable1_1  ;; 0x40037000
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+2
        LSLS     R0,R0,#+2
        LDR.N    R1,??DataTable1_1  ;; 0x40037000
        STR      R0,[R1, #+0]
//   34 
//   35     /* 定时器加载值设置 Timer Load Value Register (PIT_LDVALn) */
//   36     PIT_LDVAL(pitn)  = cnt;                                          //设置溢出中断时间
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LSLS     R0,R4,#+4
        LDR.N    R1,??DataTable1_2  ;; 0x40037100
        STR      R5,[R0, R1]
//   37 
//   38     //定时时间到了后，TIF 置 1 。写1的时候就会清0
//   39     PIT_Flag_Clear(pitn);                                             //清中断标志位
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable1_2  ;; 0x40037100
        ADDS     R0,R0,R4, LSL #+4
        LDR      R0,[R0, #+12]
        ORRS     R0,R0,#0x1
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R1,??DataTable1_2  ;; 0x40037100
        ADDS     R1,R1,R4, LSL #+4
        STR      R0,[R1, #+12]
//   40 
//   41     /* 定时器控制寄存器 Timer Control Register (PIT_TCTRL0) */
//   42     PIT_TCTRL(pitn) |= ( PIT_TCTRL_TEN_MASK | PIT_TCTRL_TIE_MASK );   //使能 PITn定时器,并开PITn中断
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable1_2  ;; 0x40037100
        ADDS     R0,R0,R4, LSL #+4
        LDR      R0,[R0, #+8]
        ORRS     R0,R0,#0x3
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R1,??DataTable1_2  ;; 0x40037100
        ADDS     R1,R1,R4, LSL #+4
        STR      R0,[R1, #+8]
//   43 
//   44     enable_irq(pitn + 68);			                                //开接收引脚的IRQ中断
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADDS     R0,R4,#+68
        BL       enable_irq
//   45 }
        POP      {R0,R4,R5,PC}    ;; return
//   46 
//   47 
//   48 /*************************************************************************
//   49 *                                 
//   50 *
//   51 *  函数名称：pit_init
//   52 *  功能说明：PITn定时中断
//   53 *  参数说明：PITn        模块号（PIT0~PIT3）
//   54              cnt         延时时间(单位为bus时钟周期)
//   55 *  函数返回：无
//   56 *  修改时间：2012-1-24
//   57 *  备    注：
//   58 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   59 void pit_dma_init(PITn pitn, uint32 cnt)
//   60 {
pit_dma_init:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//   61     //PIT 用的是 Bus Clock 总线频率
//   62     //溢出计数 = 总线频率 * 时间
//   63 
//   64     /* 开启时钟*/
//   65     SIM_SCGC6       |= SIM_SCGC6_PIT_MASK;                            //使能PIT时钟
        LDR.N    R0,??DataTable1  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x800000
        LDR.N    R1,??DataTable1  ;; 0x4004803c
        STR      R0,[R1, #+0]
//   66 
//   67     /* PIT模块控制 PIT Module Control Register (PIT_MCR) */
//   68     //PIT_MCR         &=~(PIT_MCR_MDIS_MASK | PIT_MCR_FRZ_MASK );       //使能PIT定时器时钟 ，调试模式下继续运行
//   69     PIT_MCR = 0;
        LDR.N    R0,??DataTable1_1  ;; 0x40037000
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//   70 
//   71     /* 定时器加载值设置 Timer Load Value Register (PIT_LDVALn) */
//   72     PIT_LDVAL(pitn)  = cnt;                                          //设置溢出中断时间
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LSLS     R0,R4,#+4
        LDR.N    R1,??DataTable1_2  ;; 0x40037100
        STR      R5,[R0, R1]
//   73 
//   74     //定时时间到了后，TIF 置 1 。写1的时候就会清0
//   75     PIT_Flag_Clear(pitn);                                             //清中断标志位
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable1_2  ;; 0x40037100
        ADDS     R0,R0,R4, LSL #+4
        LDR      R0,[R0, #+12]
        ORRS     R0,R0,#0x1
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R1,??DataTable1_2  ;; 0x40037100
        ADDS     R1,R1,R4, LSL #+4
        STR      R0,[R1, #+12]
//   76 
//   77     /* 定时器控制寄存器 Timer Control Register (PIT_TCTRL0) */
//   78     PIT_TCTRL(pitn) |= (0
//   79                         | PIT_TCTRL_TEN_MASK  //使能 PITn定时器
//   80                         | PIT_TCTRL_TIE_MASK  //开PITn中断
//   81                        );
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable1_2  ;; 0x40037100
        ADDS     R0,R0,R4, LSL #+4
        LDR      R0,[R0, #+8]
        ORRS     R0,R0,#0x3
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R1,??DataTable1_2  ;; 0x40037100
        ADDS     R1,R1,R4, LSL #+4
        STR      R0,[R1, #+8]
//   82 
//   83     enable_irq(pitn + 68);			                                //开接收引脚的IRQ中断
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADDS     R0,R4,#+68
        BL       enable_irq
//   84 }
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     0x4004803c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DC32     0x40037000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_2:
        DC32     0x40037100

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
// 
// 202 bytes in section .text
// 
// 202 bytes of CODE memory
//
//Errors: none
//Warnings: none
