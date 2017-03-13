///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.1.7305/W32 for ARM       21/Jun/2014  20:39:54
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  L:\6.21\src\Sources\Cpu\common.c
//    Command line =  
//        L:\6.21\src\Sources\Cpu\common.c -D IAR -D TWR_K60N512 -D DEBUG -lCN
//        L:\6.21\FLASH\List\ -lB L:\6.21\FLASH\List\ -o L:\6.21\FLASH\Obj\
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
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
//    List file    =  L:\6.21\FLASH\List\common.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        PUBLIC disable_irq
        PUBLIC enable_irq
        PUBLIC set_irq_priority
        PUBLIC stop
        PUBLIC wait
        PUBLIC write_vtor

// L:\6.21\src\Sources\Cpu\common.c
//    1 //-------------------------------------------------------------------------*
//    2 // 文件名: common.h (通用头文件)                                           *
//    3 // 说  明:                                                                 *
//    4 //-------------------------------------------------------------------------*
//    5 
//    6 #include "common.h"
//    7 
//    8 //-------------------------------------------------------------------------*
//    9 //函数名: stop                                                             *
//   10 //功  能: 设置CPU为STOP模式                                                * 
//   11 //参  数: 无								   *	
//   12 //返  回: 无                                                               *
//   13 //说  明: 无                                                               *
//   14 //-------------------------------------------------------------------------*

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   15 void stop (void)
//   16 {
//   17     //置位SLEEPDEEP来使能STOP模式
//   18     SCB_SCR |= SCB_SCR_SLEEPDEEP_MASK;	
stop:
        LDR.N    R0,??DataTable4  ;; 0xe000ed10
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x4
        LDR.N    R1,??DataTable4  ;; 0xe000ed10
        STR      R0,[R1, #+0]
//   19     //进入STOP模式
//   20     asm("WFI");
        WFI
//   21 }
        BX       LR               ;; return
//   22 
//   23 //-------------------------------------------------------------------------*
//   24 //函数名: wait                                                             *
//   25 //功  能: 设置CPU为WAIT模式                                                * 
//   26 //参  数: 无								   *	
//   27 //返  回: 无                                                               *
//   28 //说  明: 无                                                               *
//   29 //-------------------------------------------------------------------------*

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   30 void wait (void)
//   31 {
//   32     //清SLEEPDEEP位来确定进入WAIT模式
//   33     SCB_SCR &= ~SCB_SCR_SLEEPDEEP_MASK;	
wait:
        LDR.N    R0,??DataTable4  ;; 0xe000ed10
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x4
        LDR.N    R1,??DataTable4  ;; 0xe000ed10
        STR      R0,[R1, #+0]
//   34     //进入WAIT模式
//   35     asm("WFI");
        WFI
//   36 }
        BX       LR               ;; return
//   37 
//   38 //-------------------------------------------------------------------------*
//   39 //函数名: write_vtor                                                       *
//   40 //功  能: 更改中断向量表偏移寄存器的值                                     * 
//   41 //参  数: 要更改的值    						   *	
//   42 //返  回: 无                                                               *
//   43 //说  明: 无                                                               *
//   44 //-------------------------------------------------------------------------*

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   45 void write_vtor (int vtor)
//   46 {
//   47     //写新值
//   48     SCB_VTOR = vtor;	
write_vtor:
        LDR.N    R1,??DataTable4_1  ;; 0xe000ed08
        STR      R0,[R1, #+0]
//   49 }
        BX       LR               ;; return
//   50 
//   51 //-------------------------------------------------------------------------*
//   52 //函数名: enable_irq                                                       *
//   53 //功  能: 使能irq中断                                                      * 
//   54 //参  数: irq:irq号       						   *	
//   55 //返  回: 无                                                               *
//   56 //说  明: irq号不是中断向量号                                              *
//   57 //-------------------------------------------------------------------------*

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   58 void enable_irq (int irq)
//   59 {
enable_irq:
        PUSH     {R4}
//   60     int div;
//   61 
//   62     //确定irq号为有效的irq号
//   63     if (irq > 91)	irq=91;
        CMP      R0,#+92
        BLT.N    ??enable_irq_0
        MOVS     R2,#+91
        MOVS     R0,R2
//   64     
//   65     //确定对应的NVICISER
//   66     div = irq/32;
??enable_irq_0:
        MOVS     R2,#+32
        SDIV     R2,R0,R2
        MOVS     R1,R2
//   67     
//   68     switch (div)
        CMP      R1,#+0
        BEQ.N    ??enable_irq_1
        CMP      R1,#+2
        BEQ.N    ??enable_irq_2
        BCC.N    ??enable_irq_3
        B.N      ??enable_irq_4
//   69     {
//   70     	case 0x0:
//   71               NVICICPR0 = 1 << (irq%32);
??enable_irq_1:
        MOVS     R2,#+1
        MOVS     R3,#+32
        SDIV     R4,R0,R3
        MLS      R4,R4,R3,R0
        LSLS     R2,R2,R4
        LDR.N    R3,??DataTable4_2  ;; 0xe000e280
        STR      R2,[R3, #+0]
//   72               NVICISER0 = 1 << (irq%32);
        MOVS     R2,#+1
        MOVS     R3,#+32
        SDIV     R4,R0,R3
        MLS      R4,R4,R3,R0
        LSLS     R2,R2,R4
        LDR.N    R3,??DataTable4_3  ;; 0xe000e100
        STR      R2,[R3, #+0]
//   73               break;
        B.N      ??enable_irq_4
//   74     	case 0x1:
//   75               NVICICPR1 = 1 << (irq%32);
??enable_irq_3:
        MOVS     R2,#+1
        MOVS     R3,#+32
        SDIV     R4,R0,R3
        MLS      R4,R4,R3,R0
        LSLS     R2,R2,R4
        LDR.N    R3,??DataTable4_4  ;; 0xe000e284
        STR      R2,[R3, #+0]
//   76               NVICISER1 = 1 << (irq%32);
        MOVS     R2,#+1
        MOVS     R3,#+32
        SDIV     R4,R0,R3
        MLS      R4,R4,R3,R0
        LSLS     R2,R2,R4
        LDR.N    R3,??DataTable4_5  ;; 0xe000e104
        STR      R2,[R3, #+0]
//   77               break;
        B.N      ??enable_irq_4
//   78     	case 0x2:
//   79               NVICICPR2 = 1 << (irq%32);
??enable_irq_2:
        MOVS     R2,#+1
        MOVS     R3,#+32
        SDIV     R4,R0,R3
        MLS      R4,R4,R3,R0
        LSLS     R2,R2,R4
        LDR.N    R3,??DataTable4_6  ;; 0xe000e288
        STR      R2,[R3, #+0]
//   80               NVICISER2 = 1 << (irq%32);
        MOVS     R2,#+1
        MOVS     R3,#+32
        SDIV     R4,R0,R3
        MLS      R4,R4,R3,R0
        LSLS     R2,R2,R4
        LDR.N    R3,??DataTable4_7  ;; 0xe000e108
        STR      R2,[R3, #+0]
//   81               break;
//   82     }              
//   83 }
??enable_irq_4:
        POP      {R4}
        BX       LR               ;; return
//   84 
//   85 //-------------------------------------------------------------------------*
//   86 //函数名: disable_irq                                                      *
//   87 //功  能: 禁止irq中断                                                      * 
//   88 //参  数: irq:irq号       						   *	
//   89 //返  回: 无                                                               *
//   90 //说  明: irq号不是中断向量号                                              *
//   91 //-------------------------------------------------------------------------*

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   92 void disable_irq (int irq)
//   93 {
disable_irq:
        PUSH     {R4}
//   94     int div;
//   95     
//   96     //确定irq号为有效的irq号
//   97     if (irq > 91)	irq=91;
        CMP      R0,#+92
        BLT.N    ??disable_irq_0
        MOVS     R2,#+91
        MOVS     R0,R2
//   98     
//   99     //确定对应的NVICISER
//  100     div = irq/32;
??disable_irq_0:
        MOVS     R2,#+32
        SDIV     R2,R0,R2
        MOVS     R1,R2
//  101     
//  102     switch (div)
        CMP      R1,#+0
        BEQ.N    ??disable_irq_1
        CMP      R1,#+2
        BEQ.N    ??disable_irq_2
        BCC.N    ??disable_irq_3
        B.N      ??disable_irq_4
//  103     {
//  104     	case 0x0:
//  105                NVICICER0 = 1 << (irq%32);
??disable_irq_1:
        MOVS     R2,#+1
        MOVS     R3,#+32
        SDIV     R4,R0,R3
        MLS      R4,R4,R3,R0
        LSLS     R2,R2,R4
        LDR.N    R3,??DataTable4_8  ;; 0xe000e180
        STR      R2,[R3, #+0]
//  106               break;
        B.N      ??disable_irq_4
//  107     	case 0x1:
//  108               NVICICER1 = 1 << (irq%32);
??disable_irq_3:
        MOVS     R2,#+1
        MOVS     R3,#+32
        SDIV     R4,R0,R3
        MLS      R4,R4,R3,R0
        LSLS     R2,R2,R4
        LDR.N    R3,??DataTable4_9  ;; 0xe000e184
        STR      R2,[R3, #+0]
//  109               break;
        B.N      ??disable_irq_4
//  110     	case 0x2:
//  111               NVICICER2 = 1 << (irq%32);
??disable_irq_2:
        MOVS     R2,#+1
        MOVS     R3,#+32
        SDIV     R4,R0,R3
        MLS      R4,R4,R3,R0
        LSLS     R2,R2,R4
        LDR.N    R3,??DataTable4_10  ;; 0xe000e188
        STR      R2,[R3, #+0]
//  112               break;
//  113     }              
//  114 }
??disable_irq_4:
        POP      {R4}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4:
        DC32     0xe000ed10

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_1:
        DC32     0xe000ed08

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_2:
        DC32     0xe000e280

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_3:
        DC32     0xe000e100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_4:
        DC32     0xe000e284

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_5:
        DC32     0xe000e104

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_6:
        DC32     0xe000e288

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_7:
        DC32     0xe000e108

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_8:
        DC32     0xe000e180

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_9:
        DC32     0xe000e184

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_10:
        DC32     0xe000e188
//  115  
//  116 //-------------------------------------------------------------------------*
//  117 //函数名: set_irq_priority                                                 *
//  118 //功  能: 设置irq中断和优先级                                              * 
//  119 //参  数: irq:irq号         						   *	
//  120 //        prio:优先级						           *	
//  121 //返  回: 无                                                               *
//  122 //说  明: irq号不是中断向量号                                              *
//  123 //-------------------------------------------------------------------------*

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  124 void set_irq_priority (int irq, int prio)
//  125 {
//  126     uint8 *prio_reg;
//  127 
//  128     //确定irq号和优先级有效
//  129     if (irq > 91)	irq=91;
set_irq_priority:
        CMP      R0,#+92
        BLT.N    ??set_irq_priority_0
        MOVS     R3,#+91
        MOVS     R0,R3
//  130     if (prio > 15)	prio=15;
??set_irq_priority_0:
        CMP      R1,#+16
        BLT.N    ??set_irq_priority_1
        MOVS     R3,#+15
        MOVS     R1,R3
//  131 
//  132     //确定对应的NVICISER
//  133     prio_reg = (uint8 *)(((uint32)&NVICIP0) + irq);
??set_irq_priority_1:
        ADD      R3,R0,#-536870912
        ADDS     R3,R3,#+58368
        MOVS     R2,R3
//  134     //设置优先级
//  135     *prio_reg = ( (prio&0xF) << (8 - ARM_INTERRUPT_LEVEL_BITS) );             
        LSLS     R3,R1,#+4
        STRB     R3,[R2, #+0]
//  136 }
        BX       LR               ;; return

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  137 
// 
// 352 bytes in section .text
// 
// 352 bytes of CODE memory
//
//Errors: none
//Warnings: none
