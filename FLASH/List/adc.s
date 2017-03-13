///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.1.7305/W32 for ARM       21/Jun/2014  20:39:54
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  L:\6.21\src\Sources\Drivers\adc\adc.c
//    Command line =  
//        L:\6.21\src\Sources\Drivers\adc\adc.c -D IAR -D TWR_K60N512 -D DEBUG
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
//    List file    =  L:\6.21\FLASH\List\adc.s
//
///////////////////////////////////////////////////////////////////////////////

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

// L:\6.21\src\Sources\Drivers\adc\adc.c
//    1 /******************** ************************* ********************
//    2  * �ļ���       ��adc.c
//    3  * ����         ��adc��������
//    4  *
//    5 **********************************************************************************/
//    6 
//    7 #include "common.h"
//    8 #include "adc.h"
//    9 
//   10 
//   11 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   12 tADC_Config Master_Adc_Config;          //�ýṹ���������Ҫ��ADC/PGA����
Master_Adc_Config:
        DS8 16
//   13 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   14 volatile struct ADC_MemMap *ADCx[2] = {ADC0_BASE_PTR, ADC1_BASE_PTR}; //��������ָ�����鱣�� ADCx �ĵ�ַ
ADCx:
        DATA
        DC32 4003B000H, 400BB000H
//   15 
//   16 /*************************************************************************
//   17 *                               
//   18 *
//   19 *  �������ƣ�adc_init
//   20 *  ����˵����AD��ʼ����ʹ��ʱ��
//   21 *  ����˵����ADCn        ģ��ţ� ADC0�� ADC1��
//   22 *  �������أ���
//   23 *  �޸�ʱ�䣺2012-2-10
//   24 *  ��    ע���ο����ݴ�ѧ������
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
//   31         SIM_SCGC6 |= (SIM_SCGC6_ADC0_MASK );        //����ADC0ʱ��
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
        MOVS     R2,#+0
        LDR.W    R3,??DataTable5_1  ;; 0x40048018
        STR      R2,[R3, #+0]
//   34 
//   35         switch(ch)
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R2,R1
        SUBS     R2,R2,#+4
        BEQ.N    ??adc_init_3
        SUBS     R2,R2,#+4
        CMP      R2,#+1
        BLS.N    ??adc_init_4
        SUBS     R2,R2,#+2
        CMP      R2,#+1
        BLS.N    ??adc_init_5
        SUBS     R2,R2,#+2
        CMP      R2,#+1
        BLS.N    ??adc_init_6
        SUBS     R2,R2,#+2
        BEQ.N    ??adc_init_7
        SUBS     R2,R2,#+1
        BEQ.N    ??adc_init_8
        SUBS     R2,R2,#+2
        CMP      R2,#+1
        BLS.N    ??adc_init_9
        B.N      ??adc_init_10
//   36         {
//   37         case AD8:   //ADC0_SE8 -- PTB0
//   38         case AD9:   //ADC0_SE9 -- PTB1
//   39             SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK;
??adc_init_4:
        LDR.W    R2,??DataTable5_2  ;; 0x40048038
        LDR      R2,[R2, #+0]
        ORRS     R2,R2,#0x400
        LDR.W    R3,??DataTable5_2  ;; 0x40048038
        STR      R2,[R3, #+0]
//   40             PORT_PCR_REG(PORTB_BASE_PTR, ch - AD8 + 0) =  PORT_PCR_MUX(0);
        MOVS     R2,#+0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSLS     R3,R1,#+2
        ADD      R3,R3,#+1073741824
        ADDS     R3,R3,#+303104
        STR      R2,[R3, #-32]
//   41             break;
        B.N      ??adc_init_11
//   42         case AD10:  //ADC0_SE10 -- PTA7
//   43         case AD11:  //ADC0_SE11 -- PTA8
//   44             SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
??adc_init_5:
        LDR.W    R2,??DataTable5_2  ;; 0x40048038
        LDR      R2,[R2, #+0]
        ORRS     R2,R2,#0x200
        LDR.W    R3,??DataTable5_2  ;; 0x40048038
        STR      R2,[R3, #+0]
//   45             PORT_PCR_REG(PORTA_BASE_PTR, ch - AD10 + 7) =  PORT_PCR_MUX(0);
        MOVS     R2,#+0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSLS     R3,R1,#+2
        ADD      R3,R3,#+1073741824
        ADDS     R3,R3,#+299008
        STR      R2,[R3, #-12]
//   46             break;
        B.N      ??adc_init_11
//   47         case AD12:  //ADC0_SE12 -- PTB2
//   48         case AD13:  //ADC0_SE13 -- PTB3
//   49             SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK;
??adc_init_6:
        LDR.W    R2,??DataTable5_2  ;; 0x40048038
        LDR      R2,[R2, #+0]
        ORRS     R2,R2,#0x400
        LDR.W    R3,??DataTable5_2  ;; 0x40048038
        STR      R2,[R3, #+0]
//   50             PORT_PCR_REG(PORTB_BASE_PTR, ch - AD12 + 2) =  PORT_PCR_MUX(0);
        MOVS     R2,#+0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSLS     R3,R1,#+2
        ADD      R3,R3,#+1073741824
        ADDS     R3,R3,#+303104
        STR      R2,[R3, #-40]
//   51             break;
        B.N      ??adc_init_11
//   52          case AD4: 
//   53              SIM_SCGC5 |= SIM_SCGC5_PORTC_MASK;
??adc_init_3:
        LDR.W    R2,??DataTable5_2  ;; 0x40048038
        LDR      R2,[R2, #+0]
        ORRS     R2,R2,#0x800
        LDR.W    R3,??DataTable5_2  ;; 0x40048038
        STR      R2,[R3, #+0]
//   54             PORT_PCR_REG(PORTC_BASE_PTR, ch - AD4 + 2) =  PORT_PCR_MUX(0);
        MOVS     R2,#+0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSLS     R3,R1,#+2
        ADD      R3,R3,#+1073741824
        ADDS     R3,R3,#+307200
        STR      R2,[R3, #-8]
//   55             break;
        B.N      ??adc_init_11
//   56         case AD14:  //ADC0_SE14 -- PTC0
//   57            SIM_SCGC5 |= SIM_SCGC5_PORTC_MASK;
??adc_init_7:
        LDR.W    R2,??DataTable5_2  ;; 0x40048038
        LDR      R2,[R2, #+0]
        ORRS     R2,R2,#0x800
        LDR.W    R3,??DataTable5_2  ;; 0x40048038
        STR      R2,[R3, #+0]
//   58             PORT_PCR_REG(PORTC_BASE_PTR, ch - AD14 + 0) =  PORT_PCR_MUX(0);
        MOVS     R2,#+0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSLS     R3,R1,#+2
        ADD      R3,R3,#+1073741824
        ADDS     R3,R3,#+307200
        STR      R2,[R3, #-56]
//   59             break;
        B.N      ??adc_init_11
//   60         case AD15:  //ADC0_SE15 -- PTC1
//   61             SIM_SCGC5 |= SIM_SCGC5_PORTC_MASK;
??adc_init_8:
        LDR.W    R2,??DataTable5_2  ;; 0x40048038
        LDR      R2,[R2, #+0]
        ORRS     R2,R2,#0x800
        LDR.W    R3,??DataTable5_2  ;; 0x40048038
        STR      R2,[R3, #+0]
//   62             PORT_PCR_REG(PORTC_BASE_PTR, ch - AD15 + 1) =  PORT_PCR_MUX(0);
        MOVS     R2,#+0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSLS     R3,R1,#+2
        ADD      R3,R3,#+1073741824
        ADDS     R3,R3,#+307200
        STR      R2,[R3, #-56]
//   63             break;
        B.N      ??adc_init_11
//   64         case AD17:   //ADC0_SE17 -- PTE24
//   65         case AD18:   //ADC0_SE17 -- PTE25
//   66             SIM_SCGC5 |= SIM_SCGC5_PORTE_MASK;
??adc_init_9:
        LDR.W    R2,??DataTable5_2  ;; 0x40048038
        LDR      R2,[R2, #+0]
        ORRS     R2,R2,#0x2000
        LDR.W    R3,??DataTable5_2  ;; 0x40048038
        STR      R2,[R3, #+0]
//   67             PORT_PCR_REG(PORTE_BASE_PTR, ch - AD17 + 24) =  PORT_PCR_MUX(0);
        MOVS     R2,#+0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSLS     R3,R1,#+2
        ADD      R3,R3,#+1073741824
        ADDS     R3,R3,#+315392
        STR      R2,[R3, #+28]
//   68             break;
        B.N      ??adc_init_11
//   69         default:
//   70             return;
??adc_init_10:
        B.N      ??adc_init_12
//   71         }
//   72         return;
??adc_init_11:
        B.N      ??adc_init_12
//   73 
//   74     case ADC1:       /*   ADC1    */
//   75         SIM_SCGC3 |= (SIM_SCGC3_ADC1_MASK );
??adc_init_1:
        LDR.W    R2,??DataTable5_3  ;; 0x40048030
        LDR      R2,[R2, #+0]
        ORRS     R2,R2,#0x8000000
        LDR.W    R3,??DataTable5_3  ;; 0x40048030
        STR      R2,[R3, #+0]
//   76         SIM_SOPT7 &= ~(SIM_SOPT7_ADC1ALTTRGEN_MASK  | SIM_SOPT7_ADC1PRETRGSEL_MASK) ;
        LDR.W    R2,??DataTable5_1  ;; 0x40048018
        LDR      R2,[R2, #+0]
        BICS     R2,R2,#0x9000
        LDR.W    R3,??DataTable5_1  ;; 0x40048018
        STR      R2,[R3, #+0]
//   77         SIM_SOPT7 = SIM_SOPT7_ADC1TRGSEL(0);
        MOVS     R2,#+0
        LDR.W    R3,??DataTable5_1  ;; 0x40048018
        STR      R2,[R3, #+0]
//   78 
//   79         switch(ch)
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R2,R1
        SUBS     R2,R2,#+4
        CMP      R2,#+3
        BLS.N    ??adc_init_13
        SUBS     R2,R2,#+4
        CMP      R2,#+1
        BLS.N    ??adc_init_14
        SUBS     R2,R2,#+2
        BEQ.N    ??adc_init_15
        SUBS     R2,R2,#+1
        BEQ.N    ??adc_init_16
        SUBS     R2,R2,#+1
        CMP      R2,#+1
        BLS.N    ??adc_init_17
        SUBS     R2,R2,#+2
        CMP      R2,#+1
        BLS.N    ??adc_init_18
        SUBS     R2,R2,#+3
        BEQ.N    ??adc_init_19
        B.N      ??adc_init_20
//   80         {
//   81         case AD4a:   //ADC1_SE4a -- PTE0
//   82         case AD5a:   //ADC1_SE5a -- PTE1
//   83         case AD6a:   //ADC1_SE6a -- PTE2
//   84         case AD7a:   //ADC1_SE7a -- PTE3
//   85             SIM_SCGC5 |= SIM_SCGC5_PORTE_MASK;
??adc_init_13:
        LDR.W    R2,??DataTable5_2  ;; 0x40048038
        LDR      R2,[R2, #+0]
        ORRS     R2,R2,#0x2000
        LDR.W    R3,??DataTable5_2  ;; 0x40048038
        STR      R2,[R3, #+0]
//   86             PORT_PCR_REG(PORTE_BASE_PTR, ch - AD4a + 0) =  PORT_PCR_MUX(0);
        MOVS     R2,#+0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSLS     R3,R1,#+2
        ADD      R3,R3,#+1073741824
        ADDS     R3,R3,#+315392
        STR      R2,[R3, #-16]
//   87             break;
        B.N      ??adc_init_21
//   88         case AD8:  //ADC1_SE8 -- PTB0
//   89         case AD9:  //ADC1_SE9 -- PTB1
//   90             SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK;
??adc_init_14:
        LDR.W    R2,??DataTable5_2  ;; 0x40048038
        LDR      R2,[R2, #+0]
        ORRS     R2,R2,#0x400
        LDR.W    R3,??DataTable5_2  ;; 0x40048038
        STR      R2,[R3, #+0]
//   91             PORT_PCR_REG(PORTB_BASE_PTR, ch - AD8 + 0) =  PORT_PCR_MUX(0);
        MOVS     R2,#+0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSLS     R3,R1,#+2
        ADD      R3,R3,#+1073741824
        ADDS     R3,R3,#+303104
        STR      R2,[R3, #-32]
//   92             break;
        B.N      ??adc_init_21
//   93         case AD10:  //ADC1_SE10 -- PTB4
//   94             SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK;
??adc_init_15:
        LDR.W    R2,??DataTable5_2  ;; 0x40048038
        LDR      R2,[R2, #+0]
        ORRS     R2,R2,#0x400
        LDR.W    R3,??DataTable5_2  ;; 0x40048038
        STR      R2,[R3, #+0]
//   95             PORT_PCR_REG(PORTB_BASE_PTR, ch - AD10+4) =  PORT_PCR_MUX(0);
        MOVS     R2,#+0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSLS     R3,R1,#+2
        ADD      R3,R3,#+1073741824
        ADDS     R3,R3,#+303104
        STR      R2,[R3, #-24]
//   96             break;
        B.N      ??adc_init_21
//   97         case AD11:  //ADC1_SE11 -- PTB5
//   98             SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK;
??adc_init_16:
        LDR.W    R2,??DataTable5_2  ;; 0x40048038
        LDR      R2,[R2, #+0]
        ORRS     R2,R2,#0x400
        LDR.W    R3,??DataTable5_2  ;; 0x40048038
        STR      R2,[R3, #+0]
//   99             PORT_PCR_REG(PORTB_BASE_PTR, ch -AD11+5) =  PORT_PCR_MUX(0);
        MOVS     R2,#+0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSLS     R3,R1,#+2
        ADD      R3,R3,#+1073741824
        ADDS     R3,R3,#+303104
        STR      R2,[R3, #-24]
//  100             break;
        B.N      ??adc_init_21
//  101         case AD12:  //ADC1_SE12 -- PTB6
//  102         case AD13:  //ADC1_SE13 -- PTB7
//  103             SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK;
??adc_init_17:
        LDR.W    R2,??DataTable5_2  ;; 0x40048038
        LDR      R2,[R2, #+0]
        ORRS     R2,R2,#0x400
        LDR.W    R3,??DataTable5_2  ;; 0x40048038
        STR      R2,[R3, #+0]
//  104             PORT_PCR_REG(PORTB_BASE_PTR, ch - 6) =  PORT_PCR_MUX(0);
        MOVS     R2,#+0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSLS     R3,R1,#+2
        ADD      R3,R3,#+1073741824
        ADDS     R3,R3,#+303104
        STR      R2,[R3, #-24]
//  105             break;
        B.N      ??adc_init_21
//  106         case AD14:  //ADC1_SE14 -- PTB10
//  107         case AD15:  //ADC1_SE15 -- PTB11
//  108             SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK;
??adc_init_18:
        LDR.W    R2,??DataTable5_2  ;; 0x40048038
        LDR      R2,[R2, #+0]
        ORRS     R2,R2,#0x400
        LDR.W    R3,??DataTable5_2  ;; 0x40048038
        STR      R2,[R3, #+0]
//  109             PORT_PCR_REG(PORTB_BASE_PTR, ch - AD10 + 4) =  PORT_PCR_MUX(0);
        MOVS     R2,#+0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSLS     R3,R1,#+2
        ADD      R3,R3,#+1073741824
        ADDS     R3,R3,#+303104
        STR      R2,[R3, #-24]
//  110             break;
        B.N      ??adc_init_21
//  111         case AD17:  //ADC1_SE17 -- PTA17
//  112             SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
??adc_init_19:
        LDR.W    R2,??DataTable5_2  ;; 0x40048038
        LDR      R2,[R2, #+0]
        ORRS     R2,R2,#0x200
        LDR.W    R3,??DataTable5_2  ;; 0x40048038
        STR      R2,[R3, #+0]
//  113             PORT_PCR_REG(PORTA_BASE_PTR, ch) =  PORT_PCR_MUX(0);
        MOVS     R2,#+0
        LDR.W    R3,??DataTable5_4  ;; 0x40049000
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        STR      R2,[R3, R1, LSL #+2]
//  114             break;
        B.N      ??adc_init_21
//  115         default:
//  116             break;
//  117         }
//  118         break;
??adc_init_20:
??adc_init_21:
        B.N      ??adc_init_22
//  119     default:
//  120         break;
//  121     }
//  122 }
??adc_init_2:
??adc_init_22:
??adc_init_12:
        BX       LR               ;; return
//  123 
//  124 
//  125 /*************************************************************************
//  126 *                               
//  127 *
//  128 *  �������ƣ�ad_once
//  129 *  ����˵�����ɼ�һ��һ·ģ������ADֵ
//  130 *  ����˵����ADCn        ģ��ţ� ADC0�� ADC1��
//  131 *            ADC_Channel ͨ����
//  132 *            ADC_nbit    ���ȣ� ADC_8bit,ADC_12bit, ADC_10bit, ADC_16bit ��
//  133 *  �������أ��޷��Ž��ֵ
//  134 *  �޸�ʱ�䣺2012-2-10
//  135 *  ��    ע���ο����ݴ�ѧ�����̣�Bͨ���������������������
//  136 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  137 uint16 ad_once(ADCn adcn, ADC_Ch ch, ADC_nbit bit) //�ɼ�ĳ·ģ������ADֵ
//  138 {
ad_once:
        PUSH     {R4,R5}
        MOVS     R3,R0
//  139     uint16 result = 0;
        MOVS     R0,#+0
//  140     //ASSERT( ((adcn == ADC0) && (ch >= AD8 && ch <= AD18)) || ((adcn == ADC1) && (ch >= AD4a && ch <= AD17)) ) ; //ʹ�ö��Լ��ADCn_CHn�Ƿ�����
//  141 
//  142     //adc_start(adcn, ch, bit);	  //����ADCת��
//  143 
//  144     while (( ADC_SC1_REG(ADCx[adcn], 0 ) & ADC_SC1_COCO_MASK ) != ADC_SC1_COCO_MASK);
??ad_once_0:
        LDR.W    R4,??DataTable5_5
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LDR      R4,[R4, R3, LSL #+2]
        LDR      R4,[R4, #+0]
        LSLS     R4,R4,#+24
        BPL.N    ??ad_once_0
//  145     result = ADC_R_REG(ADCx[adcn], 0);
        LDR.W    R4,??DataTable5_5
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LDR      R4,[R4, R3, LSL #+2]
        LDR      R4,[R4, #+16]
        MOVS     R0,R4
//  146     ADC_SC1_REG(ADCx[adcn], 0) &= ~ADC_SC1_COCO_MASK;
        LDR.W    R4,??DataTable5_5
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LDR      R4,[R4, R3, LSL #+2]
        LDR      R4,[R4, #+0]
        BICS     R4,R4,#0x80
        LDR.W    R5,??DataTable5_5
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LDR      R5,[R5, R3, LSL #+2]
        STR      R4,[R5, #+0]
//  147     return result;
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        POP      {R4,R5}
        BX       LR               ;; return
//  148 }
//  149 
//  150 /*************************************************************************
//  151 *                               
//  152 *
//  153 *  �������ƣ�ad_mid
//  154 *  ����˵�����ɼ�����һ·ģ������ADֵ������ ��ֵ
//  155 *  ����˵����ADCx        ģ��ţ� ADC0�� ADC1��
//  156 *            ADC_Channel ͨ����
//  157 *            ADC_nbit    ���ȣ� ADC_8bit,ADC_12bit, ADC_10bit, ADC_16bit ��
//  158 *  �������أ��޷��Ž��ֵ
//  159 *  �޸�ʱ�䣺2012-2-10
//  160 *  ��    ע���޸����ݴ�ѧ������
//  161 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  162 uint16 ad_mid(ADCn adcn, ADC_Ch ch, ADC_nbit bit)
//  163 {
ad_mid:
        PUSH     {R4-R10,LR}
        MOVS     R6,R0
        MOVS     R7,R1
        MOV      R8,R2
//  164     uint16 i, j, k, tmp;
//  165     //ASSERT( ((adcn == ADC0) && (ch >= AD8 && ch <= AD18)) || ((adcn == ADC1) && (ch >= AD4a && ch <= AD17)) ) ; //ʹ�ö��Լ��ADCn_CHn�Ƿ�����
//  166 
//  167     //3��ADCת��
//  168     i = ad_once(adcn, ch, bit);
        MOV      R2,R8
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R7
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       ad_once
        MOV      R9,R0
//  169     j = ad_once(adcn, ch, bit);
        MOV      R2,R8
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R7
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       ad_once
        MOV      R10,R0
//  170     k = ad_once(adcn, ch, bit);
        MOV      R2,R8
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R7
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       ad_once
        MOVS     R5,R0
//  171 
//  172     //ȡ��ֵ
//  173     tmp = i > j ? i : j;          //tmpȡ�������ֵ
        UXTH     R10,R10          ;; ZeroExt  R10,R10,#+16,#+16
        UXTH     R9,R9            ;; ZeroExt  R9,R9,#+16,#+16
        CMP      R10,R9
        BCS.N    ??ad_mid_0
        MOV      R4,R9
        B.N      ??ad_mid_1
??ad_mid_0:
        MOV      R4,R10
//  174     return k > tmp ?    tmp :  (   k > i  ?    k   :     i  );
??ad_mid_1:
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R4,R5
        BCS.N    ??ad_mid_2
        MOV      R9,R4
        B.N      ??ad_mid_3
??ad_mid_2:
        UXTH     R9,R9            ;; ZeroExt  R9,R9,#+16,#+16
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R9,R5
        BCS.N    ??ad_mid_4
        MOV      R9,R5
        B.N      ??ad_mid_3
??ad_mid_4:
??ad_mid_3:
        MOV      R0,R9
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        POP      {R4-R10,PC}      ;; return
//  175     //                k>tmp>i             tmp>k>i   tmp>i>k
//  176 }
//  177 /*************************************************************************
//  178 *                               
//  179 *
//  180 *  �������ƣ�ad_mid_last
//  181 *  ����˵�����ɼ�һ��һ·ģ������ADֵ�����ȥ��������Ƚϣ����� ��ֵ
//  182 *  ����˵����ADCx        ģ��ţ� ADC0�� ADC1��
//  183 *            ADC_Channel ͨ����
//  184 *            ADC_nbit    ���ȣ� ADC_8bit,ADC_12bit, ADC_10bit, ADC_16bit ��
//  185 *  �������أ��޷��Ž��ֵ
//  186 *  �޸�ʱ�䣺2012-2-10
//  187 *  ��    ע���޸����ݴ�ѧ������
//  188 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  189  uint16 ad_mid_last(ADCn adcn, ADC_Ch ch, ADC_nbit bit)
//  190 {
ad_mid_last:
        PUSH     {R4-R7,LR}
        SUB      SP,SP,#+12
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//  191     uint16 tmp;
//  192     uint16 temp[3]={0};
        ADD      R0,SP,#+0
        MOVS     R1,#+0
        MOVS     R2,#+0
        STM      R0!,{R1,R2}
        SUBS     R0,R0,#+8
//  193     //ASSERT( ((adcn == ADC0) && (ch >= AD8 && ch <= AD18)) || ((adcn == ADC1) && (ch >= AD4a && ch <= AD17)) ) ; //ʹ�ö��Լ��ADCn_CHn�Ƿ�����
//  194 
//  195     //3��ADCת��
//  196     temp[0]=temp[1];
        LDRH     R0,[SP, #+2]
        STRH     R0,[SP, #+0]
//  197     temp[1]=temp[2];
        LDRH     R0,[SP, #+4]
        STRH     R0,[SP, #+2]
//  198     temp[2]=ad_once(adcn, ch, bit);
        MOVS     R2,R6
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       ad_once
        STRH     R0,[SP, #+4]
//  199 
//  200     //ȡ��ֵ
//  201     tmp = temp[0] > temp[1] ? temp[0] : temp[1];          //tmpȡ�������ֵ
        LDRH     R0,[SP, #+2]
        LDRH     R1,[SP, #+0]
        CMP      R0,R1
        BCS.N    ??ad_mid_last_0
        LDRH     R7,[SP, #+0]
        B.N      ??ad_mid_last_1
??ad_mid_last_0:
        LDRH     R7,[SP, #+2]
//  202     return temp[2] > tmp ?    tmp :  (   temp[2] > temp[0]  ?   temp[2]   :   temp[0]    );
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
        B.N      ??ad_mid_last_2
??ad_mid_last_4:
        LDRH     R7,[SP, #+0]
??ad_mid_last_2:
        MOVS     R0,R7
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        POP      {R1-R7,PC}       ;; return
//  203     //                k>tmp>i             tmp>k>i   tmp>i>k
//  204 }
//  205 /*************************************************************************
//  206 *                               
//  207 *
//  208 *  �������ƣ�ad_ave
//  209 *  ����˵������β�����ȡƽ��ֵ
//  210 *  ����˵����ADCx        ģ��ţ� ADC0�� ADC1��
//  211 *            ADC_Channel ͨ����
//  212 *            ADC_nbit    ���ȣ� ADC_8bit,ADC_12bit, ADC_10bit, ADC_16bit ��
//  213 *            N           ��ֵ�˲�����(��Χ:0~255)
//  214 *  �������أ�16λ�޷��Ž��ֵ
//  215 *  �޸�ʱ�䣺2012-2-10
//  216 *  ��    ע���޸����ݴ�ѧ������
//  217 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  218 float ad_ave(ADCn adcn, ADC_Ch ch, ADC_nbit bit, uint8 N) //��ֵ�˲�
//  219 {
ad_ave:
        PUSH     {R3-R9,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
//  220     float tmp = 0;
        MOVS     R8,#+0
//  221     uint8  i;
//  222     //ASSERT( ((adcn == ADC0) && (ch >= AD8 && ch <= AD18)) || ((adcn == ADC1) && (ch >= AD4a && ch <= AD17)) ) ; //ʹ�ö��Լ��ADCn_CHn�Ƿ�����
//  223 
//  224     for(i = 0; i < N; i++)
        MOVS     R0,#+0
        MOV      R9,R0
??ad_ave_0:
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R9,R7
        BCS.N    ??ad_ave_1
//  225         tmp += ad_once(adcn, ch, bit);
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
//  226     
//  227     return tmp / N;
??ad_ave_1:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        MOVS     R0,R7
        BL       __aeabi_ui2f
        MOVS     R1,R0
        MOV      R0,R8
        BL       __aeabi_fdiv
        POP      {R1,R4-R9,PC}    ;; return
//  228 }
//  229 /*************************************************************************
//  230 *                               
//  231 *
//  232 *  �������ƣ�ad_ave_mid
//  233 *  ����˵������β�����ȡƽ��ֵ
//  234 *  ����˵����ADCx        ģ��ţ� ADC0�� ADC1��
//  235 *            ADC_Channel ͨ����
//  236 *            ADC_nbit    ���ȣ� ADC_8bit,ADC_12bit, ADC_10bit, ADC_16bit ��
//  237 *            N           ��ֵ�˲�����(��Χ:0~255)
//  238 *  �������أ�16λ�޷��Ž��ֵ
//  239 *  �޸�ʱ�䣺2012-2-10
//  240 *  ��    ע���޸����ݴ�ѧ������
//  241 *************************************************************************/
//  242 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  243 uint16 AD[50] ={0};
AD:
        DS8 100
//  244 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  245 float ad_ave_mid(ADCn adcn, ADC_Ch ch, ADC_nbit bit, uint8 N) //��ֵ�˲�
//  246 {
ad_ave_mid:
        PUSH     {R0,R4-R11,LR}
        MOVS     R4,R1
        MOVS     R5,R2
        MOVS     R6,R3
//  247     
//  248     
//  249     uint8 i,m,n;
//  250     uint16 temp=0;
        MOVS     R10,#+0
//  251     float sum=0; 
        MOVS     R11,#+0
//  252 
//  253          
//  254     for(i=0; i<N; i++)
        MOVS     R0,#+0
        MOVS     R7,R0
??ad_ave_mid_0:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R7,R6
        BCS.N    ??ad_ave_mid_1
//  255          {
//  256               AD[i]=ad_once(adcn, ch, bit);
        MOVS     R2,R5
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDRB     R0,[SP, #+0]
        BL       ad_once
        LDR.N    R1,??DataTable5_6
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        STRH     R0,[R1, R7, LSL #+1]
//  257          } 
        ADDS     R7,R7,#+1
        B.N      ??ad_ave_mid_0
//  258              
//  259     for(m = 0; m < N-1; m++)
??ad_ave_mid_1:
        MOVS     R0,#+0
        MOV      R8,R0
??ad_ave_mid_2:
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        SUBS     R0,R6,#+1
        CMP      R8,R0
        BGE.N    ??ad_ave_mid_3
//  260     {
//  261       for(n = m+1; n < N; n++) 
        ADDS     R0,R8,#+1
        MOV      R9,R0
??ad_ave_mid_4:
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R9,R6
        BCS.N    ??ad_ave_mid_5
//  262               
//  263     {
//  264       if(AD[m]>AD[n])
        LDR.N    R0,??DataTable5_6
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        LDRH     R0,[R0, R9, LSL #+1]
        LDR.N    R1,??DataTable5_6
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        LDRH     R1,[R1, R8, LSL #+1]
        CMP      R0,R1
        BCS.N    ??ad_ave_mid_6
//  265       {
//  266                  
//  267         temp=AD[m];
        LDR.N    R0,??DataTable5_6
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        LDRH     R0,[R0, R8, LSL #+1]
        MOV      R10,R0
//  268                  
//  269         AD[m]=AD[n];
        LDR.N    R0,??DataTable5_6
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        LDRH     R0,[R0, R9, LSL #+1]
        LDR.N    R1,??DataTable5_6
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        STRH     R0,[R1, R8, LSL #+1]
//  270                  
//  271         AD[n]=temp;
        LDR.N    R0,??DataTable5_6
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        STRH     R10,[R0, R9, LSL #+1]
//  272                  
//  273       }
//  274               
//  275     }
??ad_ave_mid_6:
        ADDS     R9,R9,#+1
        B.N      ??ad_ave_mid_4
//  276              
//  277     }
??ad_ave_mid_5:
        ADDS     R8,R8,#+1
        B.N      ??ad_ave_mid_2
//  278          
//  279              
//  280               for(i = 10; i < N-10; i++)
??ad_ave_mid_3:
        MOVS     R0,#+10
        MOVS     R7,R0
??ad_ave_mid_7:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        SUBS     R0,R6,#+10
        CMP      R7,R0
        BGE.N    ??ad_ave_mid_8
//  281                   {
//  282                      sum += AD[i];
        LDR.N    R0,??DataTable5_6
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDRH     R0,[R0, R7, LSL #+1]
        BL       __aeabi_ui2f
        MOV      R1,R11
        BL       __aeabi_fadd
        MOV      R11,R0
//  283                   }
        ADDS     R7,R7,#+1
        B.N      ??ad_ave_mid_7
//  284           
//  285     return sum/(N-20);
??ad_ave_mid_8:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        SUBS     R0,R6,#+20
        BL       __aeabi_i2f
        MOVS     R1,R0
        MOV      R0,R11
        BL       __aeabi_fdiv
        POP      {R1,R4-R11,PC}   ;; return
//  286 }
//  287 
//  288 
//  289 /*************************************************************************
//  290 *                               
//  291 *
//  292 *  �������ƣ�ad_flt
//  293 *  ����˵����һ�β�������ǰ���β�������ƽ��ֵ
//  294 *  ����˵����ADCx        ģ��ţ� ADC0�� ADC1��
//  295 *            ADC_Channel ͨ����
//  296 *            ADC_nbit    ���ȣ� ADC_8bit,ADC_12bit, ADC_10bit, ADC_16bit ��
//  297 *  �������أ�16λ�޷��Ž��ֵ
//  298 *  �޸�ʱ�䣺2012-2-10
//  299 *  ��    ע��
//  300 *************************************************************************/
//  301 #define SAMP_COUNT  2       //��ǰ�˲� 2^SAMP_COUNT ����  ����̫�󣬲�Ȼ������׼

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  302 uint16 ad_flt(ADCn adcn, ADC_Ch ch, ADC_nbit bit)
//  303 {
ad_flt:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//  304     static uint16 buf[(1<<(SAMP_COUNT))] = {0};  //����ǰ  2^SAMP_COUNT �� �Ĳ�������
//  305     static uint8 n = (uint8)(0x100 - (int8)(1 << (SAMP_COUNT)));
//  306     static uint32 sum = 0;
//  307 
//  308     //ASSERT( ((adcn == ADC0) && (ch >= AD8 && ch <= AD18)) || ((adcn == ADC1) && (ch >= AD4a && ch <= AD17)) ) ; //ʹ�ö��Լ��ADCn_CHn�Ƿ�����
//  309 
//  310     if(n >= (uint8)(0x100 - (int8)(1 << (SAMP_COUNT))))
        LDR.N    R0,??DataTable5_7
        LDRB     R0,[R0, #+0]
        CMP      R0,#+252
        BLT.N    ??ad_flt_0
//  311     {
//  312         buf[(uint8)((1<<(SAMP_COUNT))+n)] = ad_once(adcn, ch, bit);
        MOVS     R2,R6
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       ad_once
        LDR.N    R1,??DataTable5_8
        LDR.N    R2,??DataTable5_7
        LDRB     R2,[R2, #+0]
        ADDS     R2,R2,#+4
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        STRH     R0,[R1, R2, LSL #+1]
//  313         sum += buf[(uint8)((1<<(SAMP_COUNT))+n)];
        LDR.N    R0,??DataTable5_9
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable5_8
        LDR.N    R2,??DataTable5_7
        LDRB     R2,[R2, #+0]
        ADDS     R2,R2,#+4
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LDRH     R1,[R1, R2, LSL #+1]
        UXTAH    R0,R0,R1
        LDR.N    R1,??DataTable5_9
        STR      R0,[R1, #+0]
//  314         n++;
        LDR.N    R0,??DataTable5_7
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable5_7
        STRB     R0,[R1, #+0]
//  315         return ((uint16)(sum >> SAMP_COUNT));
        LDR.N    R0,??DataTable5_9
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+2
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        B.N      ??ad_flt_1
//  316     }
//  317 
//  318     sum -= buf[n];
??ad_flt_0:
        LDR.N    R0,??DataTable5_9
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable5_8
        LDR.N    R2,??DataTable5_7
        LDRB     R2,[R2, #+0]
        LDRH     R1,[R1, R2, LSL #+1]
        SUBS     R0,R0,R1
        LDR.N    R1,??DataTable5_9
        STR      R0,[R1, #+0]
//  319     buf[n] = ad_once(adcn, ch, bit);
        MOVS     R2,R6
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       ad_once
        LDR.N    R1,??DataTable5_8
        LDR.N    R2,??DataTable5_7
        LDRB     R2,[R2, #+0]
        STRH     R0,[R1, R2, LSL #+1]
//  320     sum += buf[n];
        LDR.N    R0,??DataTable5_9
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable5_8
        LDR.N    R2,??DataTable5_7
        LDRB     R2,[R2, #+0]
        LDRH     R1,[R1, R2, LSL #+1]
        UXTAH    R0,R0,R1
        LDR.N    R1,??DataTable5_9
        STR      R0,[R1, #+0]
//  321 
//  322     if (++n >= (1 << (SAMP_COUNT)))
        LDR.N    R0,??DataTable5_7
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable5_7
        STRB     R0,[R1, #+0]
        LDR.N    R0,??DataTable5_7
        LDRB     R0,[R0, #+0]
        CMP      R0,#+4
        BLT.N    ??ad_flt_2
//  323     {
//  324         n = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable5_7
        STRB     R0,[R1, #+0]
//  325     }
//  326     return ((uint16)(sum >> SAMP_COUNT)); /* ADC����ֵ�����ɴβ���ֵƽ�� */
??ad_flt_2:
        LDR.N    R0,??DataTable5_9
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+2
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
??ad_flt_1:
        POP      {R4-R6,PC}       ;; return
//  327 }

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
//  328 #undef  SAMP_COUNT
//  329 
//  330 
//  331 
//  332 
//  333 /*************************************************************************
//  334 *                               
//  335 *
//  336 *  �������ƣ�adc_start
//  337 *  ����˵��������adc���������Bͨ�������������������������
//  338 *  ����˵����ADCx        ģ��ţ� ADC0�� ADC1��
//  339 *            ADC_Channel ͨ����
//  340 *            ADC_nbit    ���ȣ� ADC_8bit,ADC_12bit, ADC_10bit, ADC_16bit ��
//  341 *  �������أ���
//  342 *  �޸�ʱ�䣺2012-2-10
//  343 *  ��    ע���޸����ݴ�ѧ������
//  344 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  345 void adc_start(ADCn adcn, ADC_Ch ch, ADC_nbit bit)
//  346 {
adc_start:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//  347 
//  348     Master_Adc_Config.STATUS1A = AIEN_ON | DIFF_SINGLE | ADC_SC1_ADCH( ch );
        ANDS     R0,R5,#0x1F
        ORRS     R0,R0,#0x40
        LDR.N    R1,??DataTable5_10
        STRB     R0,[R1, #+8]
//  349 
//  350     //��ʼ��ADCĬ������
//  351     Master_Adc_Config.CONFIG1  = ADLPC_NORMAL
//  352                                  | ADC_CFG1_ADIV(ADIV_4)
//  353                                  | ADLSMP_LONG
//  354                                  | ADC_CFG1_MODE(bit)
//  355                                  | ADC_CFG1_ADICLK(ADICLK_BUS);
        LSLS     R0,R6,#+2
        ANDS     R0,R0,#0xC
        ORRS     R0,R0,#0x50
        LDR.N    R1,??DataTable5_10
        STRB     R0,[R1, #+0]
//  356     Master_Adc_Config.CONFIG2  = MUXSEL_ADCA    //MUXSEL_ADCA
//  357                                  | ADACKEN_DISABLED
//  358                                  | ADHSC_HISPEED
//  359                                  | ADC_CFG2_ADLSTS(ADLSTS_20) ;
        MOVS     R0,#+4
        LDR.N    R1,??DataTable5_10
        STRB     R0,[R1, #+1]
//  360 
//  361     Master_Adc_Config.COMPARE1 = 0x1234u ;                 //����ֵ
        MOVW     R0,#+4660
        LDR.N    R1,??DataTable5_10
        STRH     R0,[R1, #+2]
//  362     Master_Adc_Config.COMPARE2 = 0x5678u ;                 //����ֵ
        MOVW     R0,#+22136
        LDR.N    R1,??DataTable5_10
        STRH     R0,[R1, #+4]
//  363 
//  364     adc_config_alt(ADCx[adcn], &Master_Adc_Config);       // ���� ADCn
        LDR.N    R1,??DataTable5_10
        LDR.N    R0,??DataTable5_5
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        BL       adc_config_alt
//  365 }
        POP      {R4-R6,PC}       ;; return
//  366 
//  367 /*************************************************************************
//  368 *                               
//  369 *
//  370 *  �������ƣ�adc_stop
//  371 *  ����˵����ֹͣADCת��
//  372 *  ����˵����ADCx        ģ��ţ� ADC0�� ADC1��
//  373 *            ADC_Channel ͨ����
//  374 *  �������أ���
//  375 *  �޸�ʱ�䣺2012-2-10
//  376 *  ��    ע���޸����ݴ�ѧ������
//  377 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  378 void adc_stop(ADCn adcn)
//  379 {
adc_stop:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  380     Master_Adc_Config.STATUS1A = AIEN_ON | DIFF_SINGLE | ADC_SC1_ADCH(Module_disabled);
        MOVS     R0,#+95
        LDR.N    R1,??DataTable5_10
        STRB     R0,[R1, #+8]
//  381     adc_config_alt(ADCx[adcn], &Master_Adc_Config);  // ����ADC0
        LDR.N    R1,??DataTable5_10
        LDR.N    R0,??DataTable5_5
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        BL       adc_config_alt
//  382 }
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
//  383 
//  384 
//  385 /*************************************************************************
//  386 *                               
//  387 *
//  388 *  �������ƣ�adc_config_alt
//  389 *  ����˵������adc�Ĵ����ṹ�����ý�adc�Ĵ���
//  390 *  ����˵����adcmap      adc��ַ�Ĵ�����ַ��ADC0_BASE_PTR,ADC1_BASE_PTR��
//  391 *            ADC_CfgPtr  ��� �Ĵ���ֵ�Ľṹ��
//  392 *  �������أ���
//  393 *  �޸�ʱ�䣺2012-2-10
//  394 *  ��    ע���޸Ĺٷ����̵�����
//  395 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  396 void adc_config_alt(ADC_MemMapPtr adcmap, tADC_ConfigPtr ADC_CfgPtr)
//  397 {
//  398     ADC_CFG1_REG(adcmap) = ADC_CfgPtr->CONFIG1;
adc_config_alt:
        LDRB     R2,[R1, #+0]
        STR      R2,[R0, #+8]
//  399     ADC_CFG2_REG(adcmap) = ADC_CfgPtr->CONFIG2;
        LDRB     R2,[R1, #+1]
        STR      R2,[R0, #+12]
//  400     ADC_CV1_REG(adcmap)  = ADC_CfgPtr->COMPARE1;
        LDRH     R2,[R1, #+2]
        STR      R2,[R0, #+24]
//  401     ADC_CV2_REG(adcmap)  = ADC_CfgPtr->COMPARE2;
        LDRH     R2,[R1, #+4]
        STR      R2,[R0, #+28]
//  402     ADC_SC2_REG(adcmap)  = ADC_CfgPtr->STATUS2;
        LDRB     R2,[R1, #+6]
        STR      R2,[R0, #+32]
//  403     ADC_SC3_REG(adcmap)  = ADC_CfgPtr->STATUS3;
        LDRB     R2,[R1, #+7]
        STR      R2,[R0, #+36]
//  404     ADC_PGA_REG(adcmap)  = ADC_CfgPtr->PGA;
        LDR      R2,[R1, #+12]
        STR      R2,[R0, #+80]
//  405     ADC_SC1_REG(adcmap, A) = ADC_CfgPtr->STATUS1A;
        LDRB     R2,[R1, #+8]
        STR      R2,[R0, #+0]
//  406     ADC_SC1_REG(adcmap, B) = ADC_CfgPtr->STATUS1B;
        LDRB     R2,[R1, #+9]
        STR      R2,[R0, #+4]
//  407 }
        BX       LR               ;; return

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
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
//  408 
//  409 
//  410 
// 
//   128 bytes in section .bss
//     9 bytes in section .data
//     8 bytes in section .rodata
// 1 672 bytes in section .text
// 
// 1 672 bytes of CODE  memory
//     8 bytes of CONST memory
//   137 bytes of DATA  memory
//
//Errors: none
//Warnings: none
