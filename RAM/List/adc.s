///////////////////////////////////////////////////////////////////////////////
//                                                                            /
//                                                      27/Apr/2013  13:44:41 /
// IAR ANSI C/C++ Compiler V6.30.4.23288/W32 EVALUATION for ARM               /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Users\Administrator\Desktop\4.25屏幕 下位机 发送     /
//                    接受 像素处理  死机\src\Sources\Drivers\adc\adc.c       /
//    Command line =  "C:\Users\Administrator\Desktop\4.25屏幕 下位机 发送    /
//                    接受 像素处理  死机\src\Sources\Drivers\adc\adc.c"      /
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
//                    接受 像素处理  死机\RAM\List\adc.s                      /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME `adc`

        #define SHT_PROGBITS 0x1

        EXTERN __aeabi_fadd
        EXTERN __aeabi_fdiv
        EXTERN __aeabi_i2f
        EXTERN __aeabi_ui2f

        PUBLIC AD
        PUBLIC ADCx
        PUBLIC Master_Adc_Config
        PUBLIC ad_ave
        PUBLIC ad_ave_mid
        PUBLIC ad_flt
        PUBLIC ad_mid
        PUBLIC ad_mid_last
        PUBLIC ad_once
        PUBLIC adc_init
        PUBLIC adc_start
        PUBLIC adc_stop

// C:\Users\Administrator\Desktop\4.25屏幕 下位机 发送 接受 像素处理  死机\src\Sources\Drivers\adc\adc.c
//    1 /******************** ************************* ********************
//    2  * 文件名       ：adc.c
//    3  * 描述         ：adc驱动函数
//    4  *
//    5 **********************************************************************************/
//    6 
//    7 #include "common.h"
//    8 #include "adc.h"
//    9 
//   10 
//   11 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   12 tADC_Config Master_Adc_Config;          //该结构体包含了需要的ADC/PGA配置
Master_Adc_Config:
        DS8 16
//   13 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   14 volatile struct ADC_MemMap *ADCx[2] = {ADC0_BASE_PTR, ADC1_BASE_PTR}; //定义两个指针数组保存 ADCx 的地址
ADCx:
        DATA
        DC32 4003B000H, 400BB000H
//   15 
//   16 /*************************************************************************
//   17 *                               
//   18 *
//   19 *  函数名称：adc_init
//   20 *  功能说明：AD初始化，使能时钟
//   21 *  参数说明：ADCn        模块号（ ADC0、 ADC1）
//   22 *  函数返回：无
//   23 *  修改时间：2012-2-10
//   24 *  备    注：参考苏州大学的例程
//   25 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   26 void adc_init(ADCn adcn, ADC_Ch ch)
//   27 { 
//   28   switch(adcn)
adc_init:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??adc_init_0
        CMP      R0,#+1
        BEQ.W    ??adc_init_1
        B.N      ??adc_init_2
//   29     {
//   30     case ADC0:       /*   ADC0  */
//   31         SIM_SCGC6 |= (SIM_SCGC6_ADC0_MASK );        //开启ADC0时钟
??adc_init_0:
        LDR.W    R2,??DataTable5  ;; 0x4004803c
        LDR      R2,[R2, #+0]
        ORRS     R2,R2,#0x8000000
        LDR.W    R3,??DataTable5  ;; 0x4004803c
        STR      R2,[R3, #+0]
//   32         SIM_SOPT7 &= ~(SIM_SOPT7_ADC0ALTTRGEN_MASK  | SIM_SOPT7_ADC0PRETRGSEL_MASK);
        LDR.W    R2,??DataTable5_1  ;; 0x40048018
        LDR      R2,[R2, #+0]
        BICS     R2,R2,#0x90
        LDR.W    R3,??DataTable5_1  ;; 0x40048018
        STR      R2,[R3, #+0]
//   33         SIM_SOPT7 = SIM_SOPT7_ADC0TRGSEL(0);
        LDR.W    R2,??DataTable5_1  ;; 0x40048018
        MOVS     R3,#+0
        STR      R3,[R2, #+0]
//   34 
//   35         switch(ch)
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R2,R1
        SUBS     R2,R2,#+8
        CMP      R2,#+1
        BLS.N    ??adc_init_3
        SUBS     R2,R2,#+2
        CMP      R2,#+1
        BLS.N    ??adc_init_4
        SUBS     R2,R2,#+2
        CMP      R2,#+1
        BLS.N    ??adc_init_5
        SUBS     R2,R2,#+2
        CMP      R2,#+1
        BLS.N    ??adc_init_6
        SUBS     R2,R2,#+3
        CMP      R2,#+1
        BLS.N    ??adc_init_7
        B.N      ??adc_init_8
//   36         {
//   37         case AD8:   //ADC0_SE8 -- PTB0
//   38         case AD9:   //ADC0_SE9 -- PTB1
//   39             SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK;
??adc_init_3:
        LDR.W    R2,??DataTable5_2  ;; 0x40048038
        LDR      R2,[R2, #+0]
        ORRS     R2,R2,#0x400
        LDR.W    R3,??DataTable5_2  ;; 0x40048038
        STR      R2,[R3, #+0]
//   40             PORT_PCR_REG(PORTB_BASE_PTR, ch - AD8 + 0) =  PORT_PCR_MUX(0);
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSLS     R2,R1,#+2
        ADD      R2,R2,#+1073741824
        ADDS     R2,R2,#+303104
        MOVS     R3,#+0
        STR      R3,[R2, #-32]
//   41             break;
        B.N      ??adc_init_9
//   42         case AD10:  //ADC0_SE10 -- PTA7
//   43         case AD11:  //ADC0_SE11 -- PTA8
//   44             SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
??adc_init_4:
        LDR.W    R2,??DataTable5_2  ;; 0x40048038
        LDR      R2,[R2, #+0]
        MOV      R3,#+512
        ORRS     R2,R3,R2
        LDR.W    R3,??DataTable5_2  ;; 0x40048038
        STR      R2,[R3, #+0]
//   45             PORT_PCR_REG(PORTA_BASE_PTR, ch - AD10 + 7) =  PORT_PCR_MUX(0);
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSLS     R2,R1,#+2
        ADD      R2,R2,#+1073741824
        ADDS     R2,R2,#+299008
        MOVS     R3,#+0
        STR      R3,[R2, #-12]
//   46             break;
        B.N      ??adc_init_9
//   47         case AD12:  //ADC0_SE12 -- PTB2
//   48         case AD13:  //ADC0_SE13 -- PTB3
//   49             SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK;
??adc_init_5:
        LDR.W    R2,??DataTable5_2  ;; 0x40048038
        LDR      R2,[R2, #+0]
        ORRS     R2,R2,#0x400
        LDR.W    R3,??DataTable5_2  ;; 0x40048038
        STR      R2,[R3, #+0]
//   50             PORT_PCR_REG(PORTB_BASE_PTR, ch - AD12 + 2) =  PORT_PCR_MUX(0);
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSLS     R2,R1,#+2
        ADD      R2,R2,#+1073741824
        ADDS     R2,R2,#+303104
        MOVS     R3,#+0
        STR      R3,[R2, #-40]
//   51             break;
        B.N      ??adc_init_9
//   52         case AD14:  //ADC0_SE14 -- PTC0
//   53         case AD15:  //ADC0_SE15 -- PTC1
//   54             SIM_SCGC5 |= SIM_SCGC5_PORTC_MASK;
??adc_init_6:
        LDR.W    R2,??DataTable5_2  ;; 0x40048038
        LDR      R2,[R2, #+0]
        ORRS     R2,R2,#0x800
        LDR.W    R3,??DataTable5_2  ;; 0x40048038
        STR      R2,[R3, #+0]
//   55             PORT_PCR_REG(PORTC_BASE_PTR, ch - AD14 + 0) =  PORT_PCR_MUX(0);
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSLS     R2,R1,#+2
        ADD      R2,R2,#+1073741824
        ADDS     R2,R2,#+307200
        MOVS     R3,#+0
        STR      R3,[R2, #-56]
//   56             break;
        B.N      ??adc_init_9
//   57         case AD17:   //ADC0_SE17 -- PTE24
//   58         case AD18:   //ADC0_SE17 -- PTE25
//   59             SIM_SCGC5 |= SIM_SCGC5_PORTE_MASK;
??adc_init_7:
        LDR.W    R2,??DataTable5_2  ;; 0x40048038
        LDR      R2,[R2, #+0]
        ORRS     R2,R2,#0x2000
        LDR.W    R3,??DataTable5_2  ;; 0x40048038
        STR      R2,[R3, #+0]
//   60             PORT_PCR_REG(PORTE_BASE_PTR, ch - AD17 + 24) =  PORT_PCR_MUX(0);
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSLS     R2,R1,#+2
        ADD      R2,R2,#+1073741824
        ADDS     R2,R2,#+315392
        MOVS     R3,#+0
        STR      R3,[R2, #+28]
//   61             break;
        B.N      ??adc_init_9
//   62         default:
//   63             return;
??adc_init_8:
        B.N      ??adc_init_10
//   64         }
//   65         return;
??adc_init_9:
        B.N      ??adc_init_10
//   66 
//   67     case ADC1:       /*   ADC1    */
//   68         SIM_SCGC3 |= (SIM_SCGC3_ADC1_MASK );
??adc_init_1:
        LDR.W    R2,??DataTable5_3  ;; 0x40048030
        LDR      R2,[R2, #+0]
        ORRS     R2,R2,#0x8000000
        LDR.W    R3,??DataTable5_3  ;; 0x40048030
        STR      R2,[R3, #+0]
//   69         SIM_SOPT7 &= ~(SIM_SOPT7_ADC1ALTTRGEN_MASK  | SIM_SOPT7_ADC1PRETRGSEL_MASK) ;
        LDR.W    R2,??DataTable5_1  ;; 0x40048018
        LDR      R2,[R2, #+0]
        BICS     R2,R2,#0x9000
        LDR.W    R3,??DataTable5_1  ;; 0x40048018
        STR      R2,[R3, #+0]
//   70         SIM_SOPT7 = SIM_SOPT7_ADC1TRGSEL(0);
        LDR.W    R2,??DataTable5_1  ;; 0x40048018
        MOVS     R3,#+0
        STR      R3,[R2, #+0]
//   71 
//   72         switch(ch)
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R2,R1
        SUBS     R2,R2,#+4
        CMP      R2,#+3
        BLS.N    ??adc_init_11
        SUBS     R2,R2,#+4
        CMP      R2,#+1
        BLS.N    ??adc_init_12
        SUBS     R2,R2,#+2
        CMP      R2,#+3
        BLS.N    ??adc_init_13
        SUBS     R2,R2,#+4
        CMP      R2,#+1
        BLS.N    ??adc_init_14
        SUBS     R2,R2,#+3
        BEQ.N    ??adc_init_15
        B.N      ??adc_init_16
//   73         {
//   74         case AD4a:   //ADC1_SE4a -- PTE0
//   75         case AD5a:   //ADC1_SE5a -- PTE1
//   76         case AD6a:   //ADC1_SE6a -- PTE2
//   77         case AD7a:   //ADC1_SE7a -- PTE3
//   78             SIM_SCGC5 |= SIM_SCGC5_PORTE_MASK;
??adc_init_11:
        LDR.W    R2,??DataTable5_2  ;; 0x40048038
        LDR      R2,[R2, #+0]
        ORRS     R2,R2,#0x2000
        LDR.W    R3,??DataTable5_2  ;; 0x40048038
        STR      R2,[R3, #+0]
//   79             PORT_PCR_REG(PORTE_BASE_PTR, ch - AD4a + 0) =  PORT_PCR_MUX(0);
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSLS     R2,R1,#+2
        ADD      R2,R2,#+1073741824
        ADDS     R2,R2,#+315392
        MOVS     R3,#+0
        STR      R3,[R2, #-16]
//   80             break;
        B.N      ??adc_init_17
//   81         case AD8:  //ADC1_SE8 -- PTB0
//   82         case AD9:  //ADC1_SE9 -- PTB1
//   83             SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK;
??adc_init_12:
        LDR.W    R2,??DataTable5_2  ;; 0x40048038
        LDR      R2,[R2, #+0]
        ORRS     R2,R2,#0x400
        LDR.W    R3,??DataTable5_2  ;; 0x40048038
        STR      R2,[R3, #+0]
//   84             PORT_PCR_REG(PORTB_BASE_PTR, ch - AD8 + 0) =  PORT_PCR_MUX(0);
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSLS     R2,R1,#+2
        ADD      R2,R2,#+1073741824
        ADDS     R2,R2,#+303104
        MOVS     R3,#+0
        STR      R3,[R2, #-32]
//   85             break;
        B.N      ??adc_init_17
//   86         case AD10:  //ADC1_SE10 -- PTB4
//   87         case AD11:  //ADC1_SE11 -- PTB5
//   88         case AD12:  //ADC1_SE12 -- PTB6
//   89         case AD13:  //ADC1_SE13 -- PTB7
//   90             SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK;
??adc_init_13:
        LDR.W    R2,??DataTable5_2  ;; 0x40048038
        LDR      R2,[R2, #+0]
        ORRS     R2,R2,#0x400
        LDR.W    R3,??DataTable5_2  ;; 0x40048038
        STR      R2,[R3, #+0]
//   91             PORT_PCR_REG(PORTB_BASE_PTR, ch - 6) =  PORT_PCR_MUX(0);
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSLS     R2,R1,#+2
        ADD      R2,R2,#+1073741824
        ADDS     R2,R2,#+303104
        MOVS     R3,#+0
        STR      R3,[R2, #-24]
//   92             break;
        B.N      ??adc_init_17
//   93         case AD14:  //ADC1_SE14 -- PTB10
//   94         case AD15:  //ADC1_SE15 -- PTB11
//   95             SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK;
??adc_init_14:
        LDR.W    R2,??DataTable5_2  ;; 0x40048038
        LDR      R2,[R2, #+0]
        ORRS     R2,R2,#0x400
        LDR.W    R3,??DataTable5_2  ;; 0x40048038
        STR      R2,[R3, #+0]
//   96             PORT_PCR_REG(PORTB_BASE_PTR, ch - AD10 + 4) =  PORT_PCR_MUX(0);
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSLS     R2,R1,#+2
        ADD      R2,R2,#+1073741824
        ADDS     R2,R2,#+303104
        MOVS     R3,#+0
        STR      R3,[R2, #-24]
//   97             break;
        B.N      ??adc_init_17
//   98         case AD17:  //ADC1_SE17 -- PTA17
//   99             SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
??adc_init_15:
        LDR.W    R2,??DataTable5_2  ;; 0x40048038
        LDR      R2,[R2, #+0]
        MOV      R3,#+512
        ORRS     R2,R3,R2
        LDR.W    R3,??DataTable5_2  ;; 0x40048038
        STR      R2,[R3, #+0]
//  100             PORT_PCR_REG(PORTA_BASE_PTR, ch) =  PORT_PCR_MUX(0);
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R2,??DataTable5_4  ;; 0x40049000
        MOVS     R3,#+0
        STR      R3,[R2, R1, LSL #+2]
//  101             break;
        B.N      ??adc_init_17
//  102         default:
//  103             break;
//  104         }
//  105         break;
??adc_init_16:
??adc_init_17:
        B.N      ??adc_init_18
//  106     default:
//  107         break;
//  108     }
//  109 }
??adc_init_2:
??adc_init_18:
??adc_init_10:
        BX       LR               ;; return
//  110 
//  111 
//  112 /*************************************************************************
//  113 *                               
//  114 *
//  115 *  函数名称：ad_once
//  116 *  功能说明：采集一次一路模拟量的AD值
//  117 *  参数说明：ADCn        模块号（ ADC0、 ADC1）
//  118 *            ADC_Channel 通道号
//  119 *            ADC_nbit    精度（ ADC_8bit,ADC_12bit, ADC_10bit, ADC_16bit ）
//  120 *  函数返回：无符号结果值
//  121 *  修改时间：2012-2-10
//  122 *  备    注：参考苏州大学的例程，B通道不能软件触发！！！！
//  123 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  124 uint16 ad_once(ADCn adcn, ADC_Ch ch, ADC_nbit bit) //采集某路模拟量的AD值
//  125 {
ad_once:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//  126     uint16 result = 0;
        MOVS     R7,#+0
//  127     //ASSERT( ((adcn == ADC0) && (ch >= AD8 && ch <= AD18)) || ((adcn == ADC1) && (ch >= AD4a && ch <= AD17)) ) ; //使用断言检测ADCn_CHn是否正常
//  128 
//  129     adc_start(adcn, ch, bit);	  //启动ADC转换
        MOVS     R2,R6
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       adc_start
//  130 
//  131     while (( ADC_SC1_REG(ADCx[adcn], 0 ) & ADC_SC1_COCO_MASK ) != ADC_SC1_COCO_MASK);
??ad_once_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R0,??DataTable5_5
        LDR      R0,[R0, R4, LSL #+2]
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??ad_once_0
//  132     result = ADC_R_REG(ADCx[adcn], 0);
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R0,??DataTable5_5
        LDR      R0,[R0, R4, LSL #+2]
        LDR      R0,[R0, #+16]
        MOVS     R7,R0
//  133     ADC_SC1_REG(ADCx[adcn], 0) &= ~ADC_SC1_COCO_MASK;
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R0,??DataTable5_5
        LDR      R0,[R0, R4, LSL #+2]
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x80
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R1,??DataTable5_5
        LDR      R1,[R1, R4, LSL #+2]
        STR      R0,[R1, #+0]
//  134     return result;
        MOVS     R0,R7
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        POP      {R1,R4-R7,PC}    ;; return
//  135 }
//  136 
//  137 /*************************************************************************
//  138 *                               
//  139 *
//  140 *  函数名称：ad_mid
//  141 *  功能说明：采集三次一路模拟量的AD值，返回 中值
//  142 *  参数说明：ADCx        模块号（ ADC0、 ADC1）
//  143 *            ADC_Channel 通道号
//  144 *            ADC_nbit    精度（ ADC_8bit,ADC_12bit, ADC_10bit, ADC_16bit ）
//  145 *  函数返回：无符号结果值
//  146 *  修改时间：2012-2-10
//  147 *  备    注：修改苏州大学的例程
//  148 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  149 uint16 ad_mid(ADCn adcn, ADC_Ch ch, ADC_nbit bit)
//  150 {
ad_mid:
        PUSH     {R4-R10,LR}
        MOVS     R5,R0
        MOVS     R6,R1
        MOVS     R7,R2
//  151     uint16 i, j, k, tmp;
//  152     //ASSERT( ((adcn == ADC0) && (ch >= AD8 && ch <= AD18)) || ((adcn == ADC1) && (ch >= AD4a && ch <= AD17)) ) ; //使用断言检测ADCn_CHn是否正常
//  153 
//  154     //3次ADC转换
//  155     i = ad_once(adcn, ch, bit);
        MOVS     R2,R7
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R6
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       ad_once
        MOV      R8,R0
//  156     j = ad_once(adcn, ch, bit);
        MOVS     R2,R7
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R6
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       ad_once
        MOV      R9,R0
//  157     k = ad_once(adcn, ch, bit);
        MOVS     R2,R7
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R6
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       ad_once
        MOVS     R4,R0
//  158 
//  159     //取中值
//  160     tmp = i > j ? i : j;          //tmp取两者最大值
        UXTH     R9,R9            ;; ZeroExt  R9,R9,#+16,#+16
        UXTH     R8,R8            ;; ZeroExt  R8,R8,#+16,#+16
        CMP      R9,R8
        BCS.N    ??ad_mid_0
        MOV      R10,R8
        B.N      ??ad_mid_1
??ad_mid_0:
        MOV      R10,R9
//  161     return k > tmp ?    tmp :  (   k > i  ?    k   :     i  );
??ad_mid_1:
        UXTH     R10,R10          ;; ZeroExt  R10,R10,#+16,#+16
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R10,R4
        BCS.N    ??ad_mid_2
        MOV      R8,R10
        B.N      ??ad_mid_3
??ad_mid_2:
        UXTH     R8,R8            ;; ZeroExt  R8,R8,#+16,#+16
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R8,R4
        BCS.N    ??ad_mid_4
        MOV      R8,R4
        B.N      ??ad_mid_5
??ad_mid_4:
??ad_mid_5:
??ad_mid_3:
        MOV      R0,R8
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        POP      {R4-R10,PC}      ;; return
//  162     //                k>tmp>i             tmp>k>i   tmp>i>k
//  163 }
//  164 /*************************************************************************
//  165 *                               
//  166 *
//  167 *  函数名称：ad_mid_last
//  168 *  功能说明：采集一次一路模拟量的AD值，与过去的三次相比较，返回 中值
//  169 *  参数说明：ADCx        模块号（ ADC0、 ADC1）
//  170 *            ADC_Channel 通道号
//  171 *            ADC_nbit    精度（ ADC_8bit,ADC_12bit, ADC_10bit, ADC_16bit ）
//  172 *  函数返回：无符号结果值
//  173 *  修改时间：2012-2-10
//  174 *  备    注：修改苏州大学的例程
//  175 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  176  uint16 ad_mid_last(ADCn adcn, ADC_Ch ch, ADC_nbit bit)
//  177 {
ad_mid_last:
        PUSH     {R4-R7,LR}
        SUB      SP,SP,#+12
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//  178     uint16 tmp;
//  179     uint16 temp[3]={0};
        ADD      R0,SP,#+0
        MOVS     R1,#+0
        MOVS     R2,#+0
        STM      R0!,{R1,R2}
        SUBS     R0,R0,#+8
//  180     //ASSERT( ((adcn == ADC0) && (ch >= AD8 && ch <= AD18)) || ((adcn == ADC1) && (ch >= AD4a && ch <= AD17)) ) ; //使用断言检测ADCn_CHn是否正常
//  181 
//  182     //3次ADC转换
//  183     temp[0]=temp[1];
        LDRH     R0,[SP, #+2]
        STRH     R0,[SP, #+0]
//  184     temp[1]=temp[2];
        LDRH     R0,[SP, #+4]
        STRH     R0,[SP, #+2]
//  185     temp[2]=ad_once(adcn, ch, bit);
        MOVS     R2,R6
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       ad_once
        STRH     R0,[SP, #+4]
//  186 
//  187     //取中值
//  188     tmp = temp[0] > temp[1] ? temp[0] : temp[1];          //tmp取两者最大值
        LDRH     R0,[SP, #+2]
        LDRH     R1,[SP, #+0]
        CMP      R0,R1
        BCS.N    ??ad_mid_last_0
        LDRH     R7,[SP, #+0]
        B.N      ??ad_mid_last_1
??ad_mid_last_0:
        LDRH     R7,[SP, #+2]
//  189     return temp[2] > tmp ?    tmp :  (   temp[2] > temp[0]  ?   temp[2]   :   temp[0]    );
??ad_mid_last_1:
        LDRH     R0,[SP, #+4]
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        CMP      R7,R0
        BCC.N    ??ad_mid_last_2
??ad_mid_last_3:
        LDRH     R0,[SP, #+0]
        LDRH     R1,[SP, #+4]
        CMP      R0,R1
        BCS.N    ??ad_mid_last_4
        LDRH     R7,[SP, #+4]
        B.N      ??ad_mid_last_5
??ad_mid_last_4:
        LDRH     R7,[SP, #+0]
??ad_mid_last_5:
??ad_mid_last_2:
        MOVS     R0,R7
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        POP      {R1-R7,PC}       ;; return
//  190     //                k>tmp>i             tmp>k>i   tmp>i>k
//  191 }
//  192 /*************************************************************************
//  193 *                               
//  194 *
//  195 *  函数名称：ad_ave
//  196 *  功能说明：多次采样，取平均值
//  197 *  参数说明：ADCx        模块号（ ADC0、 ADC1）
//  198 *            ADC_Channel 通道号
//  199 *            ADC_nbit    精度（ ADC_8bit,ADC_12bit, ADC_10bit, ADC_16bit ）
//  200 *            N           均值滤波次数(范围:0~255)
//  201 *  函数返回：16位无符号结果值
//  202 *  修改时间：2012-2-10
//  203 *  备    注：修改苏州大学的例程
//  204 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  205 float ad_ave(ADCn adcn, ADC_Ch ch, ADC_nbit bit, uint8 N) //均值滤波
//  206 {
ad_ave:
        PUSH     {R3-R9,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
//  207     float tmp = 0;
        MOVS     R8,#+0
//  208     uint8  i;
//  209     //ASSERT( ((adcn == ADC0) && (ch >= AD8 && ch <= AD18)) || ((adcn == ADC1) && (ch >= AD4a && ch <= AD17)) ) ; //使用断言检测ADCn_CHn是否正常
//  210 
//  211     for(i = 0; i < N; i++)
        MOVS     R0,#+0
        MOV      R9,R0
??ad_ave_0:
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R9,R7
        BCS.N    ??ad_ave_1
//  212         tmp += ad_once(adcn, ch, bit);
        MOVS     R2,R6
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       ad_once
        BL       __aeabi_ui2f
        MOV      R1,R8
        BL       __aeabi_fadd
        MOV      R8,R0
        ADDS     R9,R9,#+1
        B.N      ??ad_ave_0
//  213     
//  214     return tmp / N;
??ad_ave_1:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        MOVS     R0,R7
        BL       __aeabi_ui2f
        MOVS     R1,R0
        MOV      R0,R8
        BL       __aeabi_fdiv
        POP      {R1,R4-R9,PC}    ;; return
//  215 }
//  216 /*************************************************************************
//  217 *                               
//  218 *
//  219 *  函数名称：ad_ave_mid
//  220 *  功能说明：多次采样，取平均值
//  221 *  参数说明：ADCx        模块号（ ADC0、 ADC1）
//  222 *            ADC_Channel 通道号
//  223 *            ADC_nbit    精度（ ADC_8bit,ADC_12bit, ADC_10bit, ADC_16bit ）
//  224 *            N           均值滤波次数(范围:0~255)
//  225 *  函数返回：16位无符号结果值
//  226 *  修改时间：2012-2-10
//  227 *  备    注：修改苏州大学的例程
//  228 *************************************************************************/
//  229 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  230 uint16 AD[30] ={0};
AD:
        DS8 60
//  231 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  232 float ad_ave_mid(ADCn adcn, ADC_Ch ch, ADC_nbit bit, uint8 N) //均值滤波
//  233 {
ad_ave_mid:
        PUSH     {R0,R4-R11,LR}
        MOVS     R4,R1
        MOVS     R5,R2
        MOVS     R6,R3
//  234     
//  235     
//  236     uint8 i,m,n;
//  237     uint16 temp=0;
        MOVS     R10,#+0
//  238     float sum=0; 
        MOVS     R11,#+0
//  239 
//  240          
//  241     for(i=0; i<N; i++)
        MOVS     R0,#+0
        MOVS     R7,R0
??ad_ave_mid_0:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R7,R6
        BCS.N    ??ad_ave_mid_1
//  242          {
//  243               AD[i]=ad_once(adcn, ch, bit);
        MOVS     R2,R5
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDRB     R0,[SP, #+0]
        BL       ad_once
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.N    R1,??DataTable5_6
        STRH     R0,[R1, R7, LSL #+1]
//  244          } 
        ADDS     R7,R7,#+1
        B.N      ??ad_ave_mid_0
//  245              
//  246     for(m = 0; m < N-1; m++)
??ad_ave_mid_1:
        MOVS     R0,#+0
        MOV      R8,R0
??ad_ave_mid_2:
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        SUBS     R0,R6,#+1
        CMP      R8,R0
        BGE.N    ??ad_ave_mid_3
//  247     {
//  248       for(n = m+1; n < N; n++) 
        ADDS     R0,R8,#+1
        MOV      R9,R0
??ad_ave_mid_4:
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R9,R6
        BCS.N    ??ad_ave_mid_5
//  249               
//  250     {
//  251       if(AD[m]>AD[n])
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        LDR.N    R0,??DataTable5_6
        LDRH     R0,[R0, R9, LSL #+1]
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        LDR.N    R1,??DataTable5_6
        LDRH     R1,[R1, R8, LSL #+1]
        CMP      R0,R1
        BCS.N    ??ad_ave_mid_6
//  252       {
//  253                  
//  254         temp=AD[m];
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        LDR.N    R0,??DataTable5_6
        LDRH     R0,[R0, R8, LSL #+1]
        MOV      R10,R0
//  255                  
//  256         AD[m]=AD[n];
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        LDR.N    R0,??DataTable5_6
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        LDR.N    R1,??DataTable5_6
        LDRH     R1,[R1, R9, LSL #+1]
        STRH     R1,[R0, R8, LSL #+1]
//  257                  
//  258         AD[n]=temp;
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        LDR.N    R0,??DataTable5_6
        STRH     R10,[R0, R9, LSL #+1]
//  259                  
//  260       }
//  261               
//  262     }
??ad_ave_mid_6:
        ADDS     R9,R9,#+1
        B.N      ??ad_ave_mid_4
//  263              
//  264     }
??ad_ave_mid_5:
        ADDS     R8,R8,#+1
        B.N      ??ad_ave_mid_2
//  265          
//  266              
//  267               for(i = 10; i < N-10; i++)
??ad_ave_mid_3:
        MOVS     R0,#+10
        MOVS     R7,R0
??ad_ave_mid_7:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        SUBS     R0,R6,#+10
        CMP      R7,R0
        BGE.N    ??ad_ave_mid_8
//  268                   {
//  269                      sum += AD[i];
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.N    R0,??DataTable5_6
        LDRH     R0,[R0, R7, LSL #+1]
        BL       __aeabi_ui2f
        MOV      R1,R11
        BL       __aeabi_fadd
        MOV      R11,R0
//  270                   }
        ADDS     R7,R7,#+1
        B.N      ??ad_ave_mid_7
//  271           
//  272     return sum/(N-20);
??ad_ave_mid_8:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        SUBS     R0,R6,#+20
        BL       __aeabi_i2f
        MOVS     R1,R0
        MOV      R0,R11
        BL       __aeabi_fdiv
        POP      {R1,R4-R11,PC}   ;; return
//  273 }
//  274 
//  275 
//  276 /*************************************************************************
//  277 *                               
//  278 *
//  279 *  函数名称：ad_flt
//  280 *  功能说明：一次采样后，与前几次采样，求平均值
//  281 *  参数说明：ADCx        模块号（ ADC0、 ADC1）
//  282 *            ADC_Channel 通道号
//  283 *            ADC_nbit    精度（ ADC_8bit,ADC_12bit, ADC_10bit, ADC_16bit ）
//  284 *  函数返回：16位无符号结果值
//  285 *  修改时间：2012-2-10
//  286 *  备    注：
//  287 *************************************************************************/
//  288 #define SAMP_COUNT  2       //向前滤波 2^SAMP_COUNT 次数  不能太大，不然采样不准

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  289 uint16 ad_flt(ADCn adcn, ADC_Ch ch, ADC_nbit bit)
//  290 {
ad_flt:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//  291     static uint16 buf[(1<<(SAMP_COUNT))] = {0};  //保存前  2^SAMP_COUNT 次 的采样数据
//  292     static uint8 n = (uint8)(0x100 - (int8)(1 << (SAMP_COUNT)));
//  293     static uint32 sum = 0;
//  294 
//  295     //ASSERT( ((adcn == ADC0) && (ch >= AD8 && ch <= AD18)) || ((adcn == ADC1) && (ch >= AD4a && ch <= AD17)) ) ; //使用断言检测ADCn_CHn是否正常
//  296 
//  297     if(n >= (uint8)(0x100 - (int8)(1 << (SAMP_COUNT))))
        LDR.N    R0,??DataTable5_7
        LDRB     R0,[R0, #+0]
        CMP      R0,#+252
        BCC.N    ??ad_flt_0
//  298     {
//  299         buf[(uint8)((1<<(SAMP_COUNT))+n)] = ad_once(adcn, ch, bit);
        MOVS     R2,R6
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       ad_once
        LDR.N    R1,??DataTable5_7
        LDRB     R1,[R1, #+0]
        ADDS     R1,R1,#+4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R2,??DataTable5_8
        STRH     R0,[R2, R1, LSL #+1]
//  300         sum += buf[(uint8)((1<<(SAMP_COUNT))+n)];
        LDR.N    R0,??DataTable5_9
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable5_7
        LDRB     R1,[R1, #+0]
        ADDS     R1,R1,#+4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R2,??DataTable5_8
        LDRH     R1,[R2, R1, LSL #+1]
        UXTAH    R0,R0,R1
        LDR.N    R1,??DataTable5_9
        STR      R0,[R1, #+0]
//  301         n++;
        LDR.N    R0,??DataTable5_7
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable5_7
        STRB     R0,[R1, #+0]
//  302         return ((uint16)(sum >> SAMP_COUNT));
        LDR.N    R0,??DataTable5_9
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+2
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        B.N      ??ad_flt_1
//  303     }
//  304 
//  305     sum -= buf[n];
??ad_flt_0:
        LDR.N    R0,??DataTable5_9
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable5_7
        LDRB     R1,[R1, #+0]
        LDR.N    R2,??DataTable5_8
        LDRH     R1,[R2, R1, LSL #+1]
        SUBS     R0,R0,R1
        LDR.N    R1,??DataTable5_9
        STR      R0,[R1, #+0]
//  306     buf[n] = ad_once(adcn, ch, bit);
        MOVS     R2,R6
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       ad_once
        LDR.N    R1,??DataTable5_7
        LDRB     R1,[R1, #+0]
        LDR.N    R2,??DataTable5_8
        STRH     R0,[R2, R1, LSL #+1]
//  307     sum += buf[n];
        LDR.N    R0,??DataTable5_9
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable5_7
        LDRB     R1,[R1, #+0]
        LDR.N    R2,??DataTable5_8
        LDRH     R1,[R2, R1, LSL #+1]
        UXTAH    R0,R0,R1
        LDR.N    R1,??DataTable5_9
        STR      R0,[R1, #+0]
//  308 
//  309     if (++n >= (1 << (SAMP_COUNT)))
        LDR.N    R0,??DataTable5_7
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable5_7
        STRB     R0,[R1, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+4
        BCC.N    ??ad_flt_2
//  310     {
//  311         n = 0;
        LDR.N    R0,??DataTable5_7
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  312     }
//  313     return ((uint16)(sum >> SAMP_COUNT)); /* ADC采样值由若干次采样值平均 */
??ad_flt_2:
        LDR.N    R0,??DataTable5_9
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+2
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
??ad_flt_1:
        POP      {R4-R6,PC}       ;; return
//  314 }

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
??buf:
        DS8 8

        SECTION `.data`:DATA:REORDER:NOROOT(0)
??n:
        DATA
        DC8 252

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
??sum:
        DS8 4
//  315 #undef  SAMP_COUNT
//  316 
//  317 
//  318 
//  319 
//  320 /*************************************************************************
//  321 *                               
//  322 *
//  323 *  函数名称：adc_start
//  324 *  功能说明：启动adc软件采样，B通道不能用于软件触发！！！！
//  325 *  参数说明：ADCx        模块号（ ADC0、 ADC1）
//  326 *            ADC_Channel 通道号
//  327 *            ADC_nbit    精度（ ADC_8bit,ADC_12bit, ADC_10bit, ADC_16bit ）
//  328 *  函数返回：无
//  329 *  修改时间：2012-2-10
//  330 *  备    注：修改苏州大学的例程
//  331 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  332 void adc_start(ADCn adcn, ADC_Ch ch, ADC_nbit bit)
//  333 {
adc_start:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//  334 
//  335     Master_Adc_Config.STATUS1A = AIEN_ON | DIFF_SINGLE | ADC_SC1_ADCH( ch );
        ANDS     R0,R5,#0x1F
        ORRS     R0,R0,#0x40
        LDR.N    R1,??DataTable5_10
        STRB     R0,[R1, #+8]
//  336 
//  337     //初始化ADC默认配置
//  338     Master_Adc_Config.CONFIG1  = ADLPC_NORMAL
//  339                                  | ADC_CFG1_ADIV(ADIV_4)
//  340                                  | ADLSMP_LONG
//  341                                  | ADC_CFG1_MODE(bit)
//  342                                  | ADC_CFG1_ADICLK(ADICLK_BUS);
        LSLS     R0,R6,#+2
        ANDS     R0,R0,#0xC
        ORRS     R0,R0,#0x50
        LDR.N    R1,??DataTable5_10
        STRB     R0,[R1, #+0]
//  343     Master_Adc_Config.CONFIG2  = MUXSEL_ADCA    //MUXSEL_ADCA
//  344                                  | ADACKEN_DISABLED
//  345                                  | ADHSC_HISPEED
//  346                                  | ADC_CFG2_ADLSTS(ADLSTS_20) ;
        LDR.N    R0,??DataTable5_10
        MOVS     R1,#+4
        STRB     R1,[R0, #+1]
//  347 
//  348     Master_Adc_Config.COMPARE1 = 0x1234u ;                 //任意值
        LDR.N    R0,??DataTable5_10
        MOVW     R1,#+4660
        STRH     R1,[R0, #+2]
//  349     Master_Adc_Config.COMPARE2 = 0x5678u ;                 //任意值
        LDR.N    R0,??DataTable5_10
        MOVW     R1,#+22136
        STRH     R1,[R0, #+4]
//  350 
//  351     adc_config_alt(ADCx[adcn], &Master_Adc_Config);       // 配置 ADCn
        LDR.N    R1,??DataTable5_10
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable5_5
        LDR      R0,[R0, R4, LSL #+2]
        BL       adc_config_alt
//  352 }
        POP      {R4-R6,PC}       ;; return
//  353 
//  354 /*************************************************************************
//  355 *                               
//  356 *
//  357 *  函数名称：adc_stop
//  358 *  功能说明：停止ADC转换
//  359 *  参数说明：ADCx        模块号（ ADC0、 ADC1）
//  360 *            ADC_Channel 通道号
//  361 *  函数返回：无
//  362 *  修改时间：2012-2-10
//  363 *  备    注：修改苏州大学的例程
//  364 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  365 void adc_stop(ADCn adcn)
//  366 {
adc_stop:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  367     Master_Adc_Config.STATUS1A = AIEN_ON | DIFF_SINGLE | ADC_SC1_ADCH(Module_disabled);
        LDR.N    R0,??DataTable5_10
        MOVS     R1,#+95
        STRB     R1,[R0, #+8]
//  368     adc_config_alt(ADCx[adcn], &Master_Adc_Config);  // 配置ADC0
        LDR.N    R1,??DataTable5_10
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable5_5
        LDR      R0,[R0, R4, LSL #+2]
        BL       adc_config_alt
//  369 }
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5:
        DC32     0x4004803c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_1:
        DC32     0x40048018

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_2:
        DC32     0x40048038

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_3:
        DC32     0x40048030

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_4:
        DC32     0x40049000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_5:
        DC32     ADCx

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_6:
        DC32     AD

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_7:
        DC32     ??n

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_8:
        DC32     ??buf

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_9:
        DC32     ??sum

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_10:
        DC32     Master_Adc_Config
//  370 
//  371 
//  372 /*************************************************************************
//  373 *                               
//  374 *
//  375 *  函数名称：adc_config_alt
//  376 *  功能说明：将adc寄存器结构体配置进adc寄存器
//  377 *  参数说明：adcmap      adc基址寄存器地址（ADC0_BASE_PTR,ADC1_BASE_PTR）
//  378 *            ADC_CfgPtr  存放 寄存器值的结构体
//  379 *  函数返回：无
//  380 *  修改时间：2012-2-10
//  381 *  备    注：修改官方工程的例程
//  382 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  383 void adc_config_alt(ADC_MemMapPtr adcmap, tADC_ConfigPtr ADC_CfgPtr)
//  384 {
//  385     ADC_CFG1_REG(adcmap) = ADC_CfgPtr->CONFIG1;
adc_config_alt:
        LDRB     R2,[R1, #+0]
        STR      R2,[R0, #+8]
//  386     ADC_CFG2_REG(adcmap) = ADC_CfgPtr->CONFIG2;
        LDRB     R2,[R1, #+1]
        STR      R2,[R0, #+12]
//  387     ADC_CV1_REG(adcmap)  = ADC_CfgPtr->COMPARE1;
        LDRH     R2,[R1, #+2]
        STR      R2,[R0, #+24]
//  388     ADC_CV2_REG(adcmap)  = ADC_CfgPtr->COMPARE2;
        LDRH     R2,[R1, #+4]
        STR      R2,[R0, #+28]
//  389     ADC_SC2_REG(adcmap)  = ADC_CfgPtr->STATUS2;
        LDRB     R2,[R1, #+6]
        STR      R2,[R0, #+32]
//  390     ADC_SC3_REG(adcmap)  = ADC_CfgPtr->STATUS3;
        LDRB     R2,[R1, #+7]
        STR      R2,[R0, #+36]
//  391     ADC_PGA_REG(adcmap)  = ADC_CfgPtr->PGA;
        LDR      R2,[R1, #+12]
        STR      R2,[R0, #+80]
//  392     ADC_SC1_REG(adcmap, A) = ADC_CfgPtr->STATUS1A;
        LDRB     R2,[R1, #+8]
        STR      R2,[R0, #+0]
//  393     ADC_SC1_REG(adcmap, B) = ADC_CfgPtr->STATUS1B;
        LDRB     R2,[R1, #+9]
        STR      R2,[R0, #+4]
//  394 }
        BX       LR               ;; return

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC16 0
        DC8 0, 0, 0, 0, 0, 0

        END
//  395 
//  396 
//  397 
// 
//    88 bytes in section .bss
//     9 bytes in section .data
//     8 bytes in section .rodata
// 1 538 bytes in section .text
// 
// 1 538 bytes of CODE  memory
//     8 bytes of CONST memory
//    97 bytes of DATA  memory
//
//Errors: none
//Warnings: none
