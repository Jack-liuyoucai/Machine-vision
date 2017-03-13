///////////////////////////////////////////////////////////////////////////////
//                                                                            /
//                                                      27/Apr/2013  13:44:40 /
// IAR ANSI C/C++ Compiler V6.30.4.23288/W32 EVALUATION for ARM               /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Users\Administrator\Desktop\4.25屏幕 下位机 发送     /
//                    接受 像素处理  死机\src\Sources\Drivers\FTM\FTM.c       /
//    Command line =  "C:\Users\Administrator\Desktop\4.25屏幕 下位机 发送    /
//                    接受 像素处理  死机\src\Sources\Drivers\FTM\FTM.c"      /
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
//                    接受 像素处理  死机\RAM\List\FTM.s                      /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME FTM

        #define SHT_PROGBITS 0x1

        PUBLIC FTM1_QUAD_Iint
        PUBLIC FTM2_QUAD_Iint
        PUBLIC FTM_PWM_init
        PUBLIC FTM_QUAD_init

// C:\Users\Administrator\Desktop\4.25屏幕 下位机 发送 接受 像素处理  死机\src\Sources\Drivers\FTM\FTM.c
//    1 
//    2 #include "common.h"
//    3 #include  "FTM.h"
//    4  
//    5 
//    6 /*********** FTMn_CHn PWM输出初始化函数 ***********/
//    7 /*
//    8         --FTM0--  --FTM1--  --FTM2--
//    9 CH0       PTC1      PTA8      PTA10
//   10 CH1       PTC2      PTA9      PTA11
//   11 CH2       PTC3       ×         ×
//   12 CH3       PTC4       ×         ×
//   13 CH4       PTD4       ×         ×
//   14 CH5       PTD5       ×         ×
//   15 CH6       PTD6       ×         ×
//   16 CH7       PTD7       ×         ×
//   17 
//   18 ×表示没有
//   19 */
//   20 //--------------------------------PWM初始化--------------------------------//

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   21 void FTM_PWM_init()
//   22 {
//   23      SIM_SCGC5 |= SIM_SCGC5_PORTC_MASK; //开启C端口时钟
FTM_PWM_init:
        LDR.N    R0,??DataTable3  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x800
        LDR.N    R1,??DataTable3  ;; 0x40048038
        STR      R0,[R1, #+0]
//   24      SIM_SCGC5 |= SIM_SCGC5_PORTD_MASK; //开启D端口时钟
        LDR.N    R0,??DataTable3  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000
        LDR.N    R1,??DataTable3  ;; 0x40048038
        STR      R0,[R1, #+0]
//   25 
//   26    
//   27      PORTC_PCR1 = PORT_PCR_MUX(4);  // PTC1
        LDR.N    R0,??DataTable3_1  ;; 0x4004b004
        MOV      R1,#+1024
        STR      R1,[R0, #+0]
//   28      
//   29      PORTC_PCR2 = PORT_PCR_MUX(4);  // PTC2
        LDR.N    R0,??DataTable3_2  ;; 0x4004b008
        MOV      R1,#+1024
        STR      R1,[R0, #+0]
//   30      
//   31      PORTC_PCR3 = PORT_PCR_MUX(4);  // PTC3
        LDR.N    R0,??DataTable3_3  ;; 0x4004b00c
        MOV      R1,#+1024
        STR      R1,[R0, #+0]
//   32      
//   33      PORTC_PCR4 = PORT_PCR_MUX(4);  // PTC4
        LDR.N    R0,??DataTable3_4  ;; 0x4004b010
        MOV      R1,#+1024
        STR      R1,[R0, #+0]
//   34      
//   35      PORTD_PCR4 = PORT_PCR_MUX(4);  // PTD4
        LDR.N    R0,??DataTable3_5  ;; 0x4004c010
        MOV      R1,#+1024
        STR      R1,[R0, #+0]
//   36      
//   37       //PORTA_PCR8 = PORT_PCR_MUX(3);  // PTD4
//   38      
//   39      //PORTA_PCR9 = PORT_PCR_MUX(3);  // PTD5
//   40      
//   41 
//   42      SIM_SCGC6 |= SIM_SCGC6_FTM0_MASK;//开启FTM0模块时钟
        LDR.N    R0,??DataTable3_6  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000000
        LDR.N    R1,??DataTable3_6  ;; 0x4004803c
        STR      R0,[R1, #+0]
//   43      
//   44 
//   45      
//   46      FTM0_C0SC |= FTM_CnSC_MSB_MASK | FTM_CnSC_ELSB_MASK;  //FTM0_CH0
        LDR.N    R0,??DataTable3_7  ;; 0x4003800c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x28
        LDR.N    R1,??DataTable3_7  ;; 0x4003800c
        STR      R0,[R1, #+0]
//   47      FTM0_C1SC |= FTM_CnSC_MSB_MASK | FTM_CnSC_ELSB_MASK;  //FTM0_CH1     
        LDR.N    R0,??DataTable3_8  ;; 0x40038014
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x28
        LDR.N    R1,??DataTable3_8  ;; 0x40038014
        STR      R0,[R1, #+0]
//   48      FTM0_C2SC |= FTM_CnSC_MSB_MASK | FTM_CnSC_ELSB_MASK;  //FTM0_CH2
        LDR.N    R0,??DataTable3_9  ;; 0x4003801c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x28
        LDR.N    R1,??DataTable3_9  ;; 0x4003801c
        STR      R0,[R1, #+0]
//   49      FTM0_C3SC |= FTM_CnSC_MSB_MASK | FTM_CnSC_ELSB_MASK;  //FTM0_CH3
        LDR.N    R0,??DataTable3_10  ;; 0x40038024
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x28
        LDR.N    R1,??DataTable3_10  ;; 0x40038024
        STR      R0,[R1, #+0]
//   50      FTM0_C4SC |= FTM_CnSC_MSB_MASK | FTM_CnSC_ELSB_MASK;  //FTM0_CH4
        LDR.N    R0,??DataTable3_11  ;; 0x4003802c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x28
        LDR.N    R1,??DataTable3_11  ;; 0x4003802c
        STR      R0,[R1, #+0]
//   51     
//   52      
//   53   
//   54 
//   55      FTM0_CNT = 0; //设置计数初值为0
        LDR.N    R0,??DataTable3_12  ;; 0x40038004
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//   56     
//   57      FTM0_MOD = 2500; //设置PWM频率为10K
        LDR.N    R0,??DataTable3_13  ;; 0x40038008
        MOVW     R1,#+2500
        STR      R1,[R0, #+0]
//   58    
//   59 
//   60      FTM0_CNTIN = 0; //设置初始化计数值
        LDR.N    R0,??DataTable3_14  ;; 0x4003804c
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//   61 
//   62      
//   63      FTM0_C0V = 0;
        LDR.N    R0,??DataTable3_15  ;; 0x40038010
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//   64      FTM0_C1V = 0;
        LDR.N    R0,??DataTable3_16  ;; 0x40038018
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//   65      FTM0_C2V = 0;
        LDR.N    R0,??DataTable3_17  ;; 0x40038020
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//   66      //FTM0_C4V=0;
//   67      FTM0_C3V = 0; //设置占空比
        LDR.N    R0,??DataTable3_18  ;; 0x40038028
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//   68      
//   69 
//   70       //设置时钟和分频
//   71      FTM0_SC |= FTM_SC_CLKS(1) | FTM_SC_PS(2);
        LDR.N    R0,??DataTable3_19  ;; 0x40038000
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0xA
        LDR.N    R1,??DataTable3_19  ;; 0x40038000
        STR      R0,[R1, #+0]
//   72      
//   73 }
        BX       LR               ;; return
//   74 
//   75 
//   76 /*==============================================================================
//   77 功能：FTM1、FTM2模块双路正交脉冲计数；
//   78 引脚：PTA12、PTA13、PTA10、PTA11
//   79 内容：初始化FTM1、FTM2的正交解码功能；
//   80 参数：无
//   81 ==============================================================================*/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   82 void FTM_QUAD_init()
//   83 {
//   84     /*开启端口时钟*/
//   85     SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
FTM_QUAD_init:
        LDR.N    R0,??DataTable3  ;; 0x40048038
        LDR      R0,[R0, #+0]
        MOV      R1,#+512
        ORRS     R0,R1,R0
        LDR.N    R1,??DataTable3  ;; 0x40048038
        STR      R0,[R1, #+0]
//   86     //SIM_SCGC5 |= SIM_SCGC5_PORTD_MASK;   
//   87 
//   88     /*选择管脚复用功能*/
//   89     PORTA_PCR12 = PORT_PCR_MUX(7);
        LDR.N    R0,??DataTable3_20  ;; 0x40049030
        MOV      R1,#+1792
        STR      R1,[R0, #+0]
//   90     PORTA_PCR13 = PORT_PCR_MUX(7);
        LDR.N    R0,??DataTable3_21  ;; 0x40049034
        MOV      R1,#+1792
        STR      R1,[R0, #+0]
//   91     PORTA_PCR10 = PORT_PCR_MUX(6);
        LDR.N    R0,??DataTable3_22  ;; 0x40049028
        MOV      R1,#+1536
        STR      R1,[R0, #+0]
//   92     PORTA_PCR11 = PORT_PCR_MUX(6);
        LDR.N    R0,??DataTable3_23  ;; 0x4004902c
        MOV      R1,#+1536
        STR      R1,[R0, #+0]
//   93     //PORTD_PCR11 = PORT_PCR_MUX(7);
//   94     //PORTD_PCR12 = PORT_PCR_MUX(7);
//   95 
//   96     /*使能FTM1、FTM2时钟*/
//   97     SIM_SCGC6|=SIM_SCGC6_FTM1_MASK;
        LDR.N    R0,??DataTable3_6  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2000000
        LDR.N    R1,??DataTable3_6  ;; 0x4004803c
        STR      R0,[R1, #+0]
//   98     SIM_SCGC3|=SIM_SCGC3_FTM2_MASK;
        LDR.N    R0,??DataTable3_24  ;; 0x40048030
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000000
        LDR.N    R1,??DataTable3_24  ;; 0x40048030
        STR      R0,[R1, #+0]
//   99 
//  100     FTM1_MOD = 0xffff; //可根据需要设置
        LDR.N    R0,??DataTable3_25  ;; 0x40039008
        MOVW     R1,#+65535
        STR      R1,[R0, #+0]
//  101     FTM2_MOD = 0xffff;
        LDR.N    R0,??DataTable3_26  ;; 0x400b8008
        MOVW     R1,#+65535
        STR      R1,[R0, #+0]
//  102 
//  103     FTM1_CNTIN =0x0;
        LDR.N    R0,??DataTable3_27  ;; 0x4003904c
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  104     FTM2_CNTIN =0x0;
        LDR.N    R0,??DataTable3_28  ;; 0x400b804c
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  105     
//  106     FTM1_CNT = 0; //设置计数初值为0
        LDR.N    R0,??DataTable3_29  ;; 0x40039004
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  107     FTM2_CNT = 0; //设置计数初值为0
        LDR.N    R0,??DataTable3_30  ;; 0x400b8004
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  108     
//  109     FTM1_MODE |= FTM_MODE_WPDIS_MASK; //禁止写保护
        LDR.N    R0,??DataTable3_31  ;; 0x40039054
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x4
        LDR.N    R1,??DataTable3_31  ;; 0x40039054
        STR      R0,[R1, #+0]
//  110     FTM2_MODE |= FTM_MODE_WPDIS_MASK; //禁止写保护
        LDR.N    R0,??DataTable3_32  ;; 0x400b8054
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x4
        LDR.N    R1,??DataTable3_32  ;; 0x400b8054
        STR      R0,[R1, #+0]
//  111     FTM1_MODE |= FTM_MODE_FTMEN_MASK; //FTMEN=1,关闭TPM兼容模式，开启FTM所有功能
        LDR.N    R0,??DataTable3_31  ;; 0x40039054
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable3_31  ;; 0x40039054
        STR      R0,[R1, #+0]
//  112     FTM2_MODE |= FTM_MODE_FTMEN_MASK; //FTMEN=1,关闭TPM兼容模式，开启FTM所有功能
        LDR.N    R0,??DataTable3_32  ;; 0x400b8054
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable3_32  ;; 0x400b8054
        STR      R0,[R1, #+0]
//  113 
//  114     //FTM1_C0SC |= FTM_CnSC_ELSA_MASK;     //捕捉输入上升沿
//  115     FTM1_QDCTRL &= ~FTM_QDCTRL_QUADMODE_MASK; //选定编码模式为A相与B相编码模式
        LDR.N    R0,??DataTable3_33  ;; 0x40039080
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x8
        LDR.N    R1,??DataTable3_33  ;; 0x40039080
        STR      R0,[R1, #+0]
//  116     //FTM1_QDCTRL|=FTM_QDCTRL_QUADMODE_MASK;//AB 相同时确定方向和计数值
//  117     FTM1_QDCTRL |= FTM_QDCTRL_QUADEN_MASK; //使能正交解码模式
        LDR.N    R0,??DataTable3_33  ;; 0x40039080
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable3_33  ;; 0x40039080
        STR      R0,[R1, #+0]
//  118     FTM2_QDCTRL &= ~FTM_QDCTRL_QUADMODE_MASK; //选定编码模式为A相与B相编码模式
        LDR.N    R0,??DataTable3_34  ;; 0x400b8080
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x8
        LDR.N    R1,??DataTable3_34  ;; 0x400b8080
        STR      R0,[R1, #+0]
//  119     //FTM2_QDCTRL|=FTM_QDCTRL_QUADMODE_MASK;//AB 相同时确定方向和计数值
//  120     FTM2_QDCTRL |= FTM_QDCTRL_QUADEN_MASK; //使能正交解码模式
        LDR.N    R0,??DataTable3_34  ;; 0x400b8080
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable3_34  ;; 0x400b8080
        STR      R0,[R1, #+0]
//  121 
//  122     //FTM1_SC |= FTM_SC_CLKS(1);  //选择外部时钟  3
//  123     //FTM1_CONF |=FTM_CONF_BDMMODE(3); //可根据需要选择
//  124     //FTM2_SC |= FTM_SC_CLKS(1);
//  125     //FTM2_CONF |=FTM_CONF_BDMMODE(3);
//  126 
//  127 }
        BX       LR               ;; return
//  128 
//  129 
//  130 
//  131 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  132 void FTM2_QUAD_Iint(void)
//  133 {
//  134     PORTA_PCR10= PORT_PCR_MUX(6); // 设置引脚A10引脚为FTM2_PHA功能  
FTM2_QUAD_Iint:
        LDR.N    R0,??DataTable3_22  ;; 0x40049028
        MOV      R1,#+1536
        STR      R1,[R0, #+0]
//  135     PORTA_PCR11= PORT_PCR_MUX(6); // 设置引脚A11引脚为FTM2_PHB功能  
        LDR.N    R0,??DataTable3_23  ;; 0x4004902c
        MOV      R1,#+1536
        STR      R1,[R0, #+0]
//  136     SIM_SCGC3|=SIM_SCGC3_FTM2_MASK;//使能FTM2时钟  
        LDR.N    R0,??DataTable3_24  ;; 0x40048030
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000000
        LDR.N    R1,??DataTable3_24  ;; 0x40048030
        STR      R0,[R1, #+0]
//  137     FTM2_MODE |= FTM_MODE_WPDIS_MASK;//写保护禁止  
        LDR.N    R0,??DataTable3_32  ;; 0x400b8054
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x4
        LDR.N    R1,??DataTable3_32  ;; 0x400b8054
        STR      R0,[R1, #+0]
//  138     FTM2_QDCTRL|=FTM_QDCTRL_QUADMODE_MASK;//AB相同时确定方向和计数值  
        LDR.N    R0,??DataTable3_34  ;; 0x400b8080
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x8
        LDR.N    R1,??DataTable3_34  ;; 0x400b8080
        STR      R0,[R1, #+0]
//  139     FTM2_CNTIN=0;//FTM0计数器初始值为0  
        LDR.N    R0,??DataTable3_28  ;; 0x400b804c
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  140     FTM2_MOD=65535;//结束值  
        LDR.N    R0,??DataTable3_26  ;; 0x400b8008
        MOVW     R1,#+65535
        STR      R1,[R0, #+0]
//  141     FTM2_QDCTRL|=FTM_QDCTRL_QUADEN_MASK;//启用FTM2正交解码模式  
        LDR.N    R0,??DataTable3_34  ;; 0x400b8080
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable3_34  ;; 0x400b8080
        STR      R0,[R1, #+0]
//  142     FTM2_MODE |= FTM_MODE_FTMEN_MASK;//FTM2EN=1    
        LDR.N    R0,??DataTable3_32  ;; 0x400b8054
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable3_32  ;; 0x400b8054
        STR      R0,[R1, #+0]
//  143     FTM2_CNT=0;  
        LDR.N    R0,??DataTable3_30  ;; 0x400b8004
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  144 }
        BX       LR               ;; return
//  145 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  146 void FTM1_QUAD_Iint(void)
//  147 {
//  148     PORTA_PCR12= PORT_PCR_MUX(7); // 设置引脚A12引脚为FTM1_PHA功能  
FTM1_QUAD_Iint:
        LDR.N    R0,??DataTable3_20  ;; 0x40049030
        MOV      R1,#+1792
        STR      R1,[R0, #+0]
//  149     PORTA_PCR13= PORT_PCR_MUX(7); // 设置引脚A13引脚为FTM1_PHB功能  
        LDR.N    R0,??DataTable3_21  ;; 0x40049034
        MOV      R1,#+1792
        STR      R1,[R0, #+0]
//  150     SIM_SCGC6|=SIM_SCGC6_FTM1_MASK;//使能FTM1时钟  
        LDR.N    R0,??DataTable3_6  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2000000
        LDR.N    R1,??DataTable3_6  ;; 0x4004803c
        STR      R0,[R1, #+0]
//  151     FTM1_MODE |= FTM_MODE_WPDIS_MASK;//写保护禁止  
        LDR.N    R0,??DataTable3_31  ;; 0x40039054
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x4
        LDR.N    R1,??DataTable3_31  ;; 0x40039054
        STR      R0,[R1, #+0]
//  152     FTM1_QDCTRL|=FTM_QDCTRL_QUADMODE_MASK;//AB相同时确定方向和计数值  
        LDR.N    R0,??DataTable3_33  ;; 0x40039080
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x8
        LDR.N    R1,??DataTable3_33  ;; 0x40039080
        STR      R0,[R1, #+0]
//  153     FTM1_CNTIN=0;//FTM0计数器初始值为0  
        LDR.N    R0,??DataTable3_27  ;; 0x4003904c
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  154     FTM1_MOD=65535;//结束值  
        LDR.N    R0,??DataTable3_25  ;; 0x40039008
        MOVW     R1,#+65535
        STR      R1,[R0, #+0]
//  155     FTM1_QDCTRL|=FTM_QDCTRL_QUADEN_MASK;//启用FTM1正交解码模式  
        LDR.N    R0,??DataTable3_33  ;; 0x40039080
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable3_33  ;; 0x40039080
        STR      R0,[R1, #+0]
//  156     FTM1_MODE |= FTM_MODE_FTMEN_MASK;//FTM1EN=1    
        LDR.N    R0,??DataTable3_31  ;; 0x40039054
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable3_31  ;; 0x40039054
        STR      R0,[R1, #+0]
//  157     FTM1_CNT=0;  
        LDR.N    R0,??DataTable3_29  ;; 0x40039004
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  158 }
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3:
        DC32     0x40048038

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_1:
        DC32     0x4004b004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_2:
        DC32     0x4004b008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_3:
        DC32     0x4004b00c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_4:
        DC32     0x4004b010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_5:
        DC32     0x4004c010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_6:
        DC32     0x4004803c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_7:
        DC32     0x4003800c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_8:
        DC32     0x40038014

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_9:
        DC32     0x4003801c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_10:
        DC32     0x40038024

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_11:
        DC32     0x4003802c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_12:
        DC32     0x40038004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_13:
        DC32     0x40038008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_14:
        DC32     0x4003804c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_15:
        DC32     0x40038010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_16:
        DC32     0x40038018

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_17:
        DC32     0x40038020

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_18:
        DC32     0x40038028

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_19:
        DC32     0x40038000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_20:
        DC32     0x40049030

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_21:
        DC32     0x40049034

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_22:
        DC32     0x40049028

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_23:
        DC32     0x4004902c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_24:
        DC32     0x40048030

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_25:
        DC32     0x40039008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_26:
        DC32     0x400b8008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_27:
        DC32     0x4003904c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_28:
        DC32     0x400b804c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_29:
        DC32     0x40039004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_30:
        DC32     0x400b8004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_31:
        DC32     0x40039054

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_32:
        DC32     0x400b8054

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_33:
        DC32     0x40039080

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_34:
        DC32     0x400b8080

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
// 738 bytes in section .text
// 
// 738 bytes of CODE memory
//
//Errors: none
//Warnings: none
