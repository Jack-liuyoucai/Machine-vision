///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.1.7305/W32 for ARM       21/Jun/2014  20:40:00
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  L:\6.21\src\Sources\Drivers\mcg\mcg.c
//    Command line =  
//        L:\6.21\src\Sources\Drivers\mcg\mcg.c -D IAR -D TWR_K60N512 -D DEBUG
//        -lCN L:\6.21\FLASH\List\ -lB L:\6.21\FLASH\List\ -o
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
//    List file    =  L:\6.21\FLASH\List\mcg.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        PUBLIC pll_init

// L:\6.21\src\Sources\Drivers\mcg\mcg.c
//    1 /******************** (C) COPYRIGHT 2011      ********************
//    2  * 文件名       ：mcg.c
//    3  * 描述         ：工作时钟模式设置，锁相环。
//    4  * 备注         ：官方例程上修改
//    5  *                                                  
//    6 **********************************************************************************/
//    7 
//    8 #include "common.h"
//    9 #include "mcg.h"
//   10 
//   11 
//   12 
//   13 
//   14 //锁相环频率为50/15*54=180M测试函数

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   15 void pll_init(void)
//   16 {
//   17 	uint32_t temp_reg;
//   18         //使能IO端口时钟    
//   19     SIM_SCGC5 |= (SIM_SCGC5_PORTA_MASK
//   20                               | SIM_SCGC5_PORTB_MASK
//   21                               | SIM_SCGC5_PORTC_MASK
//   22                               | SIM_SCGC5_PORTD_MASK
//   23                               | SIM_SCGC5_PORTE_MASK );
pll_init:
        LDR.N    R1,??pll_init_0  ;; 0x40048038
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x3E00
        LDR.N    R2,??pll_init_0  ;; 0x40048038
        STR      R1,[R2, #+0]
//   24     //这里处在默认的FEI模式
//   25     //首先移动到FBE模式
//   26     MCG_C2 = 0;  
        MOVS     R1,#+0
        LDR.N    R2,??pll_init_0+0x4  ;; 0x40064001
        STRB     R1,[R2, #+0]
//   27     //MCG_C2 = MCG_C2_RANGE(2) | MCG_C2_HGO_MASK | MCG_C2_EREFS_MASK;
//   28     //初始化晶振后释放锁定状态的振荡器和GPIO
//   29     SIM_SCGC4 |= SIM_SCGC4_LLWU_MASK;
        LDR.N    R1,??pll_init_0+0x8  ;; 0x40048034
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x10000000
        LDR.N    R2,??pll_init_0+0x8  ;; 0x40048034
        STR      R1,[R2, #+0]
//   30     LLWU_CS |= LLWU_CS_ACKISO_MASK;
        LDR.N    R1,??pll_init_0+0xC  ;; 0x4007c008
        LDRB     R1,[R1, #+0]
        ORRS     R1,R1,#0x80
        LDR.N    R2,??pll_init_0+0xC  ;; 0x4007c008
        STRB     R1,[R2, #+0]
//   31     
//   32     //选择外部晶振，参考分频器，清IREFS来启动外部晶振
//   33     //011 If RANGE = 0, Divide Factor is 8; for all other RANGE values, Divide Factor is 256.
//   34     MCG_C1 = MCG_C1_CLKS(2) | MCG_C1_FRDIV(3);
        MOVS     R1,#+152
        LDR.N    R2,??pll_init_0+0x10  ;; 0x40064000
        STRB     R1,[R2, #+0]
//   35     
//   36     //等待晶振稳定	    
//   37     //while (!(MCG_S & MCG_S_OSCINIT_MASK)){}              //等待锁相环初始化结束
//   38     while (MCG_S & MCG_S_IREFST_MASK){}                  //等待时钟切换到外部参考时钟
??pll_init_1:
        LDR.N    R1,??pll_init_0+0x14  ;; 0x40064006
        LDRB     R1,[R1, #+0]
        LSLS     R1,R1,#+27
        BMI.N    ??pll_init_1
//   39     while (((MCG_S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) != 0x2){}
??pll_init_2:
        LDR.N    R1,??pll_init_0+0x14  ;; 0x40064006
        LDRB     R1,[R1, #+0]
        UBFX     R1,R1,#+2,#+2
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+2
        BNE.N    ??pll_init_2
//   40     
//   41     //进入FBE模式,
//   42   
//   43     MCG_C5 = MCG_C5_PRDIV(0x0e);        //c        
        MOVS     R1,#+14
        LDR.N    R2,??pll_init_0+0x18  ;; 0x40064004
        STRB     R1,[R2, #+0]
//   44     
//   45     //确保MCG_C6处于复位状态，禁止LOLIE、PLL、和时钟控制器，清PLL VCO分频器
//   46     MCG_C6 = 0x0;
        MOVS     R1,#+0
        LDR.N    R2,??pll_init_0+0x1C  ;; 0x40064005
        STRB     R1,[R2, #+0]
//   47     
//   48     //保存FMC_PFAPR当前的值
//   49     temp_reg = FMC_PFAPR;
        LDR.N    R1,??pll_init_0+0x20  ;; 0x4001f000
        LDR      R1,[R1, #+0]
        MOVS     R0,R1
//   50     
//   51     //通过M&PFD置位M0PFD来禁止预取功能
//   52     FMC_PFAPR |= FMC_PFAPR_M7PFD_MASK | FMC_PFAPR_M6PFD_MASK | FMC_PFAPR_M5PFD_MASK
//   53                      | FMC_PFAPR_M4PFD_MASK | FMC_PFAPR_M3PFD_MASK | FMC_PFAPR_M2PFD_MASK
//   54                      | FMC_PFAPR_M1PFD_MASK | FMC_PFAPR_M0PFD_MASK;    
        LDR.N    R1,??pll_init_0+0x20  ;; 0x4001f000
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0xFF0000
        LDR.N    R2,??pll_init_0+0x20  ;; 0x4001f000
        STR      R1,[R2, #+0]
//   55     ///设置系统分频器
//   56     //MCG=PLL, core = MCG, bus = MCG/2, FlexBus = MCG/2, Flash clock= MCG/8
//   57     SIM_CLKDIV1 = SIM_CLKDIV1_OUTDIV1(0) | SIM_CLKDIV1_OUTDIV2(1) 
//   58                  | SIM_CLKDIV1_OUTDIV3(1) | SIM_CLKDIV1_OUTDIV4(7);       
        LDR.N    R1,??pll_init_0+0x24  ;; 0x1170000
        LDR.N    R2,??pll_init_0+0x28  ;; 0x40048044
        STR      R1,[R2, #+0]
//   59     
//   60     //从新存FMC_PFAPR的原始值
//   61     FMC_PFAPR = temp_reg; 
        LDR.N    R1,??pll_init_0+0x20  ;; 0x4001f000
        STR      R0,[R1, #+0]
//   62     
//   63     //设置VCO分频器，使能PLL为100MHz, LOLIE=0, PLLS=1, CME=0, VDIV=26
//   64     MCG_C6 = MCG_C6_PLLS_MASK | MCG_C6_VDIV(30);  //VDIV = 31 (x54)  //28
        MOVS     R1,#+94
        LDR.N    R2,??pll_init_0+0x1C  ;; 0x40064005
        STRB     R1,[R2, #+0]
//   65                                                   //VDIV = 26 (x50)
//   66     while (!(MCG_S & MCG_S_PLLST_MASK)){}; // wait for PLL status bit to set    
??pll_init_3:
        LDR.N    R1,??pll_init_0+0x14  ;; 0x40064006
        LDRB     R1,[R1, #+0]
        LSLS     R1,R1,#+26
        BPL.N    ??pll_init_3
//   67     while (!(MCG_S & MCG_S_LOCK_MASK)){}; // Wait for LOCK bit to set    
??pll_init_4:
        LDR.N    R1,??pll_init_0+0x14  ;; 0x40064006
        LDRB     R1,[R1, #+0]
        LSLS     R1,R1,#+25
        BPL.N    ??pll_init_4
//   68     
//   69     //进入PBE模式    
//   70     //通过清零CLKS位来进入PEE模式
//   71     // CLKS=0, FRDIV=3, IREFS=0, IRCLKEN=0, IREFSTEN=0
//   72     MCG_C1 &= ~MCG_C1_CLKS_MASK;
        LDR.N    R1,??pll_init_0+0x10  ;; 0x40064000
        LDRB     R1,[R1, #+0]
        ANDS     R1,R1,#0x3F
        LDR.N    R2,??pll_init_0+0x10  ;; 0x40064000
        STRB     R1,[R2, #+0]
//   73     
//   74     //等待时钟状态位更新
//   75     while (((MCG_S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) != 0x3){};
??pll_init_5:
        LDR.N    R1,??pll_init_0+0x14  ;; 0x40064006
        LDRB     R1,[R1, #+0]
        UBFX     R1,R1,#+2,#+2
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+3
        BNE.N    ??pll_init_5
//   76     //SIM_CLKDIV2 |= SIM_CLKDIV2_USBDIV(1);  
//   77     
//   78     //设置跟踪时钟为内核时钟
//   79     SIM_SOPT2 |= SIM_SOPT2_TRACECLKSEL_MASK;	
        LDR.N    R1,??pll_init_0+0x2C  ;; 0x40048004
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x1000
        LDR.N    R2,??pll_init_0+0x2C  ;; 0x40048004
        STR      R1,[R2, #+0]
//   80     //在PTA6引脚上使能TRACE_CLKOU功能
//   81     PORTA_PCR6 = ( PORT_PCR_MUX(0x7));  
        MOV      R1,#+1792
        LDR.N    R2,??pll_init_0+0x30  ;; 0x40049018
        STR      R1,[R2, #+0]
//   82     //使能FlexBus模块时钟
//   83     SIM_SCGC7 |= SIM_SCGC7_FLEXBUS_MASK;
        LDR.N    R1,??pll_init_0+0x34  ;; 0x40048040
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x1
        LDR.N    R2,??pll_init_0+0x34  ;; 0x40048040
        STR      R1,[R2, #+0]
//   84     //在PTA6引脚上使能FB_CLKOUT功能
//   85     PORTC_PCR3 = ( PORT_PCR_MUX(0x5));
        MOV      R1,#+1280
        LDR.N    R2,??pll_init_0+0x38  ;; 0x4004b00c
        STR      R1,[R2, #+0]
//   86 }
        BX       LR               ;; return
        DATA
??pll_init_0:
        DC32     0x40048038
        DC32     0x40064001
        DC32     0x40048034
        DC32     0x4007c008
        DC32     0x40064000
        DC32     0x40064006
        DC32     0x40064004
        DC32     0x40064005
        DC32     0x4001f000
        DC32     0x1170000
        DC32     0x40048044
        DC32     0x40048004
        DC32     0x40049018
        DC32     0x40048040
        DC32     0x4004b00c

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
// 260 bytes in section .text
// 
// 260 bytes of CODE memory
//
//Errors: none
//Warnings: none
