///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.1.7305/W32 for ARM       21/Jun/2014  20:39:57
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  L:\6.21\src\Sources\Drivers\FTM\FTM.c
//    Command line =  
//        L:\6.21\src\Sources\Drivers\FTM\FTM.c -D IAR -D TWR_K60N512 -D DEBUG
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
//    List file    =  L:\6.21\FLASH\List\FTM.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        PUBLIC FTM1_QUAD_Iint
        PUBLIC FTM2_QUAD_Iint
        PUBLIC FTM_PWM_init
        PUBLIC FTM_QUAD_init

// L:\6.21\src\Sources\Drivers\FTM\FTM.c
//    1 
//    2 #include "common.h"
//    3 #include  "FTM.h"
//    4  
//    5 
//    6 /*********** FTMn_CHn PWM�����ʼ������ ***********/
//    7 /*
//    8         --FTM0--  --FTM1--  --FTM2--
//    9 CH0       PTC1      PTA8      PTA10
//   10 CH1       PTC2      PTA9      PTA11
//   11 CH2       PTC3       ��         ��
//   12 CH3       PTC4       ��         ��
//   13 CH4       PTD4       ��         ��
//   14 CH5       PTD5       ��         ��
//   15 CH6       PTD6       ��         ��
//   16 CH7       PTD7       ��         ��
//   17 
//   18 ����ʾû��
//   19 */
//   20 //--------------------------------PWM��ʼ��--------------------------------//

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   21 void FTM_PWM_init()
//   22 {
//   23      SIM_SCGC5 |= SIM_SCGC5_PORTC_MASK; //����C�˿�ʱ��
FTM_PWM_init:
        LDR.N    R0,??DataTable3  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x800
        LDR.N    R1,??DataTable3  ;; 0x40048038
        STR      R0,[R1, #+0]
//   24      SIM_SCGC5 |= SIM_SCGC5_PORTD_MASK; //����D�˿�ʱ��
        LDR.N    R0,??DataTable3  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000
        LDR.N    R1,??DataTable3  ;; 0x40048038
        STR      R0,[R1, #+0]
//   25    
//   26      PORTD_PCR4 = PORT_PCR_MUX(4);  // PTC1
        MOV      R0,#+1024
        LDR.N    R1,??DataTable3_1  ;; 0x4004c010
        STR      R0,[R1, #+0]
//   27      
//   28      PORTD_PCR5 = PORT_PCR_MUX(4);  // PTC2
        MOV      R0,#+1024
        LDR.N    R1,??DataTable3_2  ;; 0x4004c014
        STR      R0,[R1, #+0]
//   29      
//   30      PORTD_PCR6 = PORT_PCR_MUX(4);  // PTD4
        MOV      R0,#+1024
        LDR.N    R1,??DataTable3_3  ;; 0x4004c018
        STR      R0,[R1, #+0]
//   31      
//   32      PORTD_PCR7 = PORT_PCR_MUX(4);  // PTD5   
        MOV      R0,#+1024
        LDR.N    R1,??DataTable3_4  ;; 0x4004c01c
        STR      R0,[R1, #+0]
//   33     
//   34      SIM_SCGC6 |= SIM_SCGC6_FTM0_MASK;//����FTM0ģ��ʱ��
        LDR.N    R0,??DataTable3_5  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000000
        LDR.N    R1,??DataTable3_5  ;; 0x4004803c
        STR      R0,[R1, #+0]
//   35         
//   36      FTM0_C4SC |= FTM_CnSC_MSB_MASK | FTM_CnSC_ELSB_MASK;  //FTM0_CH0
        LDR.N    R0,??DataTable3_6  ;; 0x4003802c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x28
        LDR.N    R1,??DataTable3_6  ;; 0x4003802c
        STR      R0,[R1, #+0]
//   37      FTM0_C5SC |= FTM_CnSC_MSB_MASK | FTM_CnSC_ELSB_MASK;  //FTM0_CH1     
        LDR.N    R0,??DataTable3_7  ;; 0x40038034
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x28
        LDR.N    R1,??DataTable3_7  ;; 0x40038034
        STR      R0,[R1, #+0]
//   38      FTM0_C6SC |= FTM_CnSC_MSB_MASK | FTM_CnSC_ELSB_MASK;  //FTM0_CH2
        LDR.N    R0,??DataTable3_8  ;; 0x4003803c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x28
        LDR.N    R1,??DataTable3_8  ;; 0x4003803c
        STR      R0,[R1, #+0]
//   39      FTM0_C7SC |= FTM_CnSC_MSB_MASK | FTM_CnSC_ELSB_MASK;  //FTM0_CH3
        LDR.N    R0,??DataTable3_9  ;; 0x40038044
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x28
        LDR.N    R1,??DataTable3_9  ;; 0x40038044
        STR      R0,[R1, #+0]
//   40      
//   41      FTM0_CNT = 0; //���ü�����ֵΪ0   
        MOVS     R0,#+0
        LDR.N    R1,??DataTable3_10  ;; 0x40038004
        STR      R0,[R1, #+0]
//   42      FTM0_MOD = 2500; //����PWMƵ��Ϊ10K
        MOVW     R0,#+2500
        LDR.N    R1,??DataTable3_11  ;; 0x40038008
        STR      R0,[R1, #+0]
//   43      FTM0_CNTIN = 0; //���ó�ʼ������ֵ     
        MOVS     R0,#+0
        LDR.N    R1,??DataTable3_12  ;; 0x4003804c
        STR      R0,[R1, #+0]
//   44      FTM0_C4V = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable3_13  ;; 0x40038030
        STR      R0,[R1, #+0]
//   45      FTM0_C5V = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable3_14  ;; 0x40038038
        STR      R0,[R1, #+0]
//   46      FTM0_C6V = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable3_15  ;; 0x40038040
        STR      R0,[R1, #+0]
//   47      FTM0_C7V=0;    
        MOVS     R0,#+0
        LDR.N    R1,??DataTable3_16  ;; 0x40038048
        STR      R0,[R1, #+0]
//   48      FTM0_SC |= FTM_SC_CLKS(1) | FTM_SC_PS(1); //����ʱ�Ӻͷ�Ƶ
        LDR.N    R0,??DataTable3_17  ;; 0x40038000
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x9
        LDR.N    R1,??DataTable3_17  ;; 0x40038000
        STR      R0,[R1, #+0]
//   49      
//   50 }
        BX       LR               ;; return
//   51 
//   52 /*==============================================================================
//   53 ���ܣ�FTM1��FTM2ģ��˫·�������������
//   54 ���ţ�PTA12��PTA13��PTA10��PTA11
//   55 ���ݣ���ʼ��FTM1��FTM2���������빦�ܣ�
//   56 ��������
//   57 ==============================================================================*/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   58 void FTM_QUAD_init()
//   59 {
//   60     /*�����˿�ʱ��*/
//   61     SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
FTM_QUAD_init:
        LDR.N    R0,??DataTable3  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x200
        LDR.N    R1,??DataTable3  ;; 0x40048038
        STR      R0,[R1, #+0]
//   62     //SIM_SCGC5 |= SIM_SCGC5_PORTD_MASK;   
//   63 
//   64     /*ѡ��ܽŸ��ù���*/
//   65     PORTA_PCR12 = PORT_PCR_MUX(7);
        MOV      R0,#+1792
        LDR.N    R1,??DataTable3_18  ;; 0x40049030
        STR      R0,[R1, #+0]
//   66     PORTA_PCR13 = PORT_PCR_MUX(7);
        MOV      R0,#+1792
        LDR.N    R1,??DataTable3_19  ;; 0x40049034
        STR      R0,[R1, #+0]
//   67     PORTA_PCR10 = PORT_PCR_MUX(6);
        MOV      R0,#+1536
        LDR.N    R1,??DataTable3_20  ;; 0x40049028
        STR      R0,[R1, #+0]
//   68     PORTA_PCR11 = PORT_PCR_MUX(6);
        MOV      R0,#+1536
        LDR.N    R1,??DataTable3_21  ;; 0x4004902c
        STR      R0,[R1, #+0]
//   69     //PORTD_PCR11 = PORT_PCR_MUX(7);
//   70     //PORTD_PCR12 = PORT_PCR_MUX(7);
//   71 
//   72     /*ʹ��FTM1��FTM2ʱ��*/
//   73     SIM_SCGC6|=SIM_SCGC6_FTM1_MASK;
        LDR.N    R0,??DataTable3_5  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2000000
        LDR.N    R1,??DataTable3_5  ;; 0x4004803c
        STR      R0,[R1, #+0]
//   74     SIM_SCGC3|=SIM_SCGC3_FTM2_MASK;
        LDR.N    R0,??DataTable3_22  ;; 0x40048030
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000000
        LDR.N    R1,??DataTable3_22  ;; 0x40048030
        STR      R0,[R1, #+0]
//   75 
//   76     FTM1_MOD = 0xffff; //�ɸ�����Ҫ����
        MOVW     R0,#+65535
        LDR.N    R1,??DataTable3_23  ;; 0x40039008
        STR      R0,[R1, #+0]
//   77     FTM2_MOD = 0xffff;
        MOVW     R0,#+65535
        LDR.N    R1,??DataTable3_24  ;; 0x400b8008
        STR      R0,[R1, #+0]
//   78 
//   79     FTM1_CNTIN =0x0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable3_25  ;; 0x4003904c
        STR      R0,[R1, #+0]
//   80     FTM2_CNTIN =0x0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable3_26  ;; 0x400b804c
        STR      R0,[R1, #+0]
//   81     
//   82     FTM1_CNT = 0; //���ü�����ֵΪ0
        MOVS     R0,#+0
        LDR.N    R1,??DataTable3_27  ;; 0x40039004
        STR      R0,[R1, #+0]
//   83     FTM2_CNT = 0; //���ü�����ֵΪ0
        MOVS     R0,#+0
        LDR.N    R1,??DataTable3_28  ;; 0x400b8004
        STR      R0,[R1, #+0]
//   84     
//   85     FTM1_MODE |= FTM_MODE_WPDIS_MASK; //��ֹд����
        LDR.N    R0,??DataTable3_29  ;; 0x40039054
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x4
        LDR.N    R1,??DataTable3_29  ;; 0x40039054
        STR      R0,[R1, #+0]
//   86     FTM2_MODE |= FTM_MODE_WPDIS_MASK; //��ֹд����
        LDR.N    R0,??DataTable3_30  ;; 0x400b8054
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x4
        LDR.N    R1,??DataTable3_30  ;; 0x400b8054
        STR      R0,[R1, #+0]
//   87     FTM1_MODE |= FTM_MODE_FTMEN_MASK; //FTMEN=1,�ر�TPM����ģʽ������FTM���й���
        LDR.N    R0,??DataTable3_29  ;; 0x40039054
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable3_29  ;; 0x40039054
        STR      R0,[R1, #+0]
//   88     FTM2_MODE |= FTM_MODE_FTMEN_MASK; //FTMEN=1,�ر�TPM����ģʽ������FTM���й���
        LDR.N    R0,??DataTable3_30  ;; 0x400b8054
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable3_30  ;; 0x400b8054
        STR      R0,[R1, #+0]
//   89 
//   90     FTM1_QDCTRL &= ~FTM_QDCTRL_QUADMODE_MASK; //ѡ������ģʽΪA����B�����ģʽ
        LDR.N    R0,??DataTable3_31  ;; 0x40039080
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x8
        LDR.N    R1,??DataTable3_31  ;; 0x40039080
        STR      R0,[R1, #+0]
//   91     //FTM1_QDCTRL|=FTM_QDCTRL_QUADMODE_MASK;//AB ��ͬʱȷ������ͼ���ֵ
//   92     FTM1_QDCTRL |= FTM_QDCTRL_QUADEN_MASK; //ʹ����������ģʽ
        LDR.N    R0,??DataTable3_31  ;; 0x40039080
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable3_31  ;; 0x40039080
        STR      R0,[R1, #+0]
//   93     FTM2_QDCTRL &= ~FTM_QDCTRL_QUADMODE_MASK; //ѡ������ģʽΪA����B�����ģʽ
        LDR.N    R0,??DataTable3_32  ;; 0x400b8080
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x8
        LDR.N    R1,??DataTable3_32  ;; 0x400b8080
        STR      R0,[R1, #+0]
//   94     //FTM2_QDCTRL|=FTM_QDCTRL_QUADMODE_MASK;//AB ��ͬʱȷ������ͼ���ֵ
//   95     FTM2_QDCTRL |= FTM_QDCTRL_QUADEN_MASK; //ʹ����������ģʽ
        LDR.N    R0,??DataTable3_32  ;; 0x400b8080
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable3_32  ;; 0x400b8080
        STR      R0,[R1, #+0]
//   96 
//   97     //FTM1_SC |= FTM_SC_CLKS(1);  //ѡ���ⲿʱ��  3
//   98     //FTM1_CONF |=FTM_CONF_BDMMODE(3); //�ɸ�����Ҫѡ��
//   99     //FTM2_SC |= FTM_SC_CLKS(1);
//  100     //FTM2_CONF |=FTM_CONF_BDMMODE(3);
//  101 
//  102 }
        BX       LR               ;; return
//  103 
//  104 
//  105 
//  106 
//  107 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  108 void FTM2_QUAD_Iint(void)
//  109 {
//  110     PORTA_PCR10= PORT_PCR_MUX(6); // ��������A10����ΪFTM2_PHA����  
FTM2_QUAD_Iint:
        MOV      R0,#+1536
        LDR.N    R1,??DataTable3_20  ;; 0x40049028
        STR      R0,[R1, #+0]
//  111     PORTA_PCR11= PORT_PCR_MUX(6); // ��������A11����ΪFTM2_PHB����  
        MOV      R0,#+1536
        LDR.N    R1,??DataTable3_21  ;; 0x4004902c
        STR      R0,[R1, #+0]
//  112     SIM_SCGC3|=SIM_SCGC3_FTM2_MASK;//ʹ��FTM2ʱ��  
        LDR.N    R0,??DataTable3_22  ;; 0x40048030
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000000
        LDR.N    R1,??DataTable3_22  ;; 0x40048030
        STR      R0,[R1, #+0]
//  113     FTM2_MODE |= FTM_MODE_WPDIS_MASK;//д������ֹ  
        LDR.N    R0,??DataTable3_30  ;; 0x400b8054
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x4
        LDR.N    R1,??DataTable3_30  ;; 0x400b8054
        STR      R0,[R1, #+0]
//  114     FTM2_QDCTRL|=FTM_QDCTRL_QUADMODE_MASK;//AB��ͬʱȷ������ͼ���ֵ  
        LDR.N    R0,??DataTable3_32  ;; 0x400b8080
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x8
        LDR.N    R1,??DataTable3_32  ;; 0x400b8080
        STR      R0,[R1, #+0]
//  115     FTM2_CNTIN=0;//FTM0��������ʼֵΪ0  
        MOVS     R0,#+0
        LDR.N    R1,??DataTable3_26  ;; 0x400b804c
        STR      R0,[R1, #+0]
//  116     FTM2_MOD=65535;//����ֵ  
        MOVW     R0,#+65535
        LDR.N    R1,??DataTable3_24  ;; 0x400b8008
        STR      R0,[R1, #+0]
//  117     FTM2_QDCTRL|=FTM_QDCTRL_QUADEN_MASK;//����FTM2��������ģʽ  
        LDR.N    R0,??DataTable3_32  ;; 0x400b8080
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable3_32  ;; 0x400b8080
        STR      R0,[R1, #+0]
//  118     FTM2_MODE |= FTM_MODE_FTMEN_MASK;//FTM2EN=1    
        LDR.N    R0,??DataTable3_30  ;; 0x400b8054
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable3_30  ;; 0x400b8054
        STR      R0,[R1, #+0]
//  119     FTM2_CNT=0;  
        MOVS     R0,#+0
        LDR.N    R1,??DataTable3_28  ;; 0x400b8004
        STR      R0,[R1, #+0]
//  120 }
        BX       LR               ;; return
//  121 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  122 void FTM1_QUAD_Iint(void)
//  123 {
//  124     PORTA_PCR12= PORT_PCR_MUX(7); // ��������A12����ΪFTM1_PHA����  
FTM1_QUAD_Iint:
        MOV      R0,#+1792
        LDR.N    R1,??DataTable3_18  ;; 0x40049030
        STR      R0,[R1, #+0]
//  125     PORTA_PCR13= PORT_PCR_MUX(7); // ��������A13����ΪFTM1_PHB����  
        MOV      R0,#+1792
        LDR.N    R1,??DataTable3_19  ;; 0x40049034
        STR      R0,[R1, #+0]
//  126     SIM_SCGC6|=SIM_SCGC6_FTM1_MASK;//ʹ��FTM1ʱ��  
        LDR.N    R0,??DataTable3_5  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2000000
        LDR.N    R1,??DataTable3_5  ;; 0x4004803c
        STR      R0,[R1, #+0]
//  127     FTM1_MODE |= FTM_MODE_WPDIS_MASK;//д������ֹ  
        LDR.N    R0,??DataTable3_29  ;; 0x40039054
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x4
        LDR.N    R1,??DataTable3_29  ;; 0x40039054
        STR      R0,[R1, #+0]
//  128     FTM1_QDCTRL|=FTM_QDCTRL_QUADMODE_MASK;//AB��ͬʱȷ������ͼ���ֵ  
        LDR.N    R0,??DataTable3_31  ;; 0x40039080
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x8
        LDR.N    R1,??DataTable3_31  ;; 0x40039080
        STR      R0,[R1, #+0]
//  129     FTM1_CNTIN=0;//FTM0��������ʼֵΪ0  
        MOVS     R0,#+0
        LDR.N    R1,??DataTable3_25  ;; 0x4003904c
        STR      R0,[R1, #+0]
//  130     FTM1_MOD=65535;//����ֵ  
        MOVW     R0,#+65535
        LDR.N    R1,??DataTable3_23  ;; 0x40039008
        STR      R0,[R1, #+0]
//  131     FTM1_QDCTRL|=FTM_QDCTRL_QUADEN_MASK;//����FTM1��������ģʽ  
        LDR.N    R0,??DataTable3_31  ;; 0x40039080
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable3_31  ;; 0x40039080
        STR      R0,[R1, #+0]
//  132     FTM1_MODE |= FTM_MODE_FTMEN_MASK;//FTM1EN=1    
        LDR.N    R0,??DataTable3_29  ;; 0x40039054
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable3_29  ;; 0x40039054
        STR      R0,[R1, #+0]
//  133     FTM1_CNT=0;  
        MOVS     R0,#+0
        LDR.N    R1,??DataTable3_27  ;; 0x40039004
        STR      R0,[R1, #+0]
//  134 }
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
        DC32     0x4004c010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_2:
        DC32     0x4004c014

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_3:
        DC32     0x4004c018

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_4:
        DC32     0x4004c01c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_5:
        DC32     0x4004803c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_6:
        DC32     0x4003802c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_7:
        DC32     0x40038034

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_8:
        DC32     0x4003803c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_9:
        DC32     0x40038044

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_10:
        DC32     0x40038004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_11:
        DC32     0x40038008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_12:
        DC32     0x4003804c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_13:
        DC32     0x40038030

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_14:
        DC32     0x40038038

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_15:
        DC32     0x40038040

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_16:
        DC32     0x40038048

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_17:
        DC32     0x40038000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_18:
        DC32     0x40049030

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_19:
        DC32     0x40049034

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_20:
        DC32     0x40049028

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_21:
        DC32     0x4004902c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_22:
        DC32     0x40048030

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_23:
        DC32     0x40039008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_24:
        DC32     0x400b8008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_25:
        DC32     0x4003904c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_26:
        DC32     0x400b804c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_27:
        DC32     0x40039004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_28:
        DC32     0x400b8004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_29:
        DC32     0x40039054

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_30:
        DC32     0x400b8054

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_31:
        DC32     0x40039080

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_32:
        DC32     0x400b8080

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
// 708 bytes in section .text
// 
// 708 bytes of CODE memory
//
//Errors: none
//Warnings: none
