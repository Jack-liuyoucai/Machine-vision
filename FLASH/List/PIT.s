///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.1.7305/W32 for ARM       21/Jun/2014  20:40:00
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  L:\6.21\src\Sources\Drivers\PIT\PIT.c
//    Command line =  
//        L:\6.21\src\Sources\Drivers\PIT\PIT.c -D IAR -D TWR_K60N512 -D DEBUG
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
//    List file    =  L:\6.21\FLASH\List\PIT.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN enable_irq

        PUBLIC pit_dma_init
        PUBLIC pit_init

// L:\6.21\src\Sources\Drivers\PIT\PIT.c
//    1 /******************** (C) COPYRIGHT 2011      ********************
//    2  * �ļ���       ��PIT.c
//    3  * ����         ��PIT�����жϼ�ʱ������ʱ�ж�
//    4  * ��ע         ��
//    5  *
//    6                                                
//    7 **********************************************************************************/
//    8 
//    9 
//   10 #include "common.h"
//   11 #include  "PIT.h"     //�����жϼ�ʱ��
//   12 
//   13 /*************************************************************************
//   14 *                                 
//   15 *
//   16 *  �������ƣ�pit_init
//   17 *  ����˵����PITn��ʱ�ж�
//   18 *  ����˵����PITn        ģ��ţ�PIT0~PIT3��
//   19              cnt         ��ʱʱ��(��λΪbusʱ������)
//   20 *  �������أ���
//   21 *  �޸�ʱ�䣺2012-1-24
//   22 *  ��    ע��
//   23 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   24 void pit_init(PITn pitn, uint32 cnt)
//   25 {
pit_init:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//   26     //PIT �õ��� Bus Clock ����Ƶ��
//   27     //������� = ����Ƶ�� * ʱ��
//   28 
//   29     /* ����ʱ��*/
//   30     SIM_SCGC6       |= SIM_SCGC6_PIT_MASK;                            //ʹ��PITʱ��
        LDR.N    R0,??DataTable1  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x800000
        LDR.N    R1,??DataTable1  ;; 0x4004803c
        STR      R0,[R1, #+0]
//   31 
//   32     /* PITģ����� PIT Module Control Register (PIT_MCR) */
//   33     PIT_MCR         &= ~(PIT_MCR_MDIS_MASK | PIT_MCR_FRZ_MASK );      //ʹ��PIT��ʱ��ʱ�� ������ģʽ�¼�������
        LDR.N    R0,??DataTable1_1  ;; 0x40037000
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+2
        LSLS     R0,R0,#+2
        LDR.N    R1,??DataTable1_1  ;; 0x40037000
        STR      R0,[R1, #+0]
//   34 
//   35     /* ��ʱ������ֵ���� Timer Load Value Register (PIT_LDVALn) */
//   36     PIT_LDVAL(pitn)  = cnt;                                          //��������ж�ʱ��
        LDR.N    R0,??DataTable1_2  ;; 0x40037100
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LSLS     R1,R4,#+4
        STR      R5,[R1, R0]
//   37 
//   38     //��ʱʱ�䵽�˺�TIF �� 1 ��д1��ʱ��ͻ���0
//   39     PIT_Flag_Clear(pitn);                                             //���жϱ�־λ
        LDR.N    R0,??DataTable1_2  ;; 0x40037100
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADDS     R0,R0,R4, LSL #+4
        LDR      R0,[R0, #+12]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable1_2  ;; 0x40037100
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADDS     R1,R1,R4, LSL #+4
        STR      R0,[R1, #+12]
//   40 
//   41     /* ��ʱ�����ƼĴ��� Timer Control Register (PIT_TCTRL0) */
//   42     PIT_TCTRL(pitn) |= ( PIT_TCTRL_TEN_MASK | PIT_TCTRL_TIE_MASK );   //ʹ�� PITn��ʱ��,����PITn�ж�
        LDR.N    R0,??DataTable1_2  ;; 0x40037100
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADDS     R0,R0,R4, LSL #+4
        LDR      R0,[R0, #+8]
        ORRS     R0,R0,#0x3
        LDR.N    R1,??DataTable1_2  ;; 0x40037100
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADDS     R1,R1,R4, LSL #+4
        STR      R0,[R1, #+8]
//   43 
//   44     enable_irq(pitn + 68);			                                //���������ŵ�IRQ�ж�
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
//   51 *  �������ƣ�pit_init
//   52 *  ����˵����PITn��ʱ�ж�
//   53 *  ����˵����PITn        ģ��ţ�PIT0~PIT3��
//   54              cnt         ��ʱʱ��(��λΪbusʱ������)
//   55 *  �������أ���
//   56 *  �޸�ʱ�䣺2012-1-24
//   57 *  ��    ע��
//   58 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   59 void pit_dma_init(PITn pitn, uint32 cnt)
//   60 {
pit_dma_init:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//   61     //PIT �õ��� Bus Clock ����Ƶ��
//   62     //������� = ����Ƶ�� * ʱ��
//   63 
//   64     /* ����ʱ��*/
//   65     SIM_SCGC6       |= SIM_SCGC6_PIT_MASK;                            //ʹ��PITʱ��
        LDR.N    R0,??DataTable1  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x800000
        LDR.N    R1,??DataTable1  ;; 0x4004803c
        STR      R0,[R1, #+0]
//   66 
//   67     /* PITģ����� PIT Module Control Register (PIT_MCR) */
//   68     //PIT_MCR         &=~(PIT_MCR_MDIS_MASK | PIT_MCR_FRZ_MASK );       //ʹ��PIT��ʱ��ʱ�� ������ģʽ�¼�������
//   69     PIT_MCR = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_1  ;; 0x40037000
        STR      R0,[R1, #+0]
//   70 
//   71     /* ��ʱ������ֵ���� Timer Load Value Register (PIT_LDVALn) */
//   72     PIT_LDVAL(pitn)  = cnt;                                          //��������ж�ʱ��
        LDR.N    R0,??DataTable1_2  ;; 0x40037100
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LSLS     R1,R4,#+4
        STR      R5,[R1, R0]
//   73 
//   74     //��ʱʱ�䵽�˺�TIF �� 1 ��д1��ʱ��ͻ���0
//   75     PIT_Flag_Clear(pitn);                                             //���жϱ�־λ
        LDR.N    R0,??DataTable1_2  ;; 0x40037100
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADDS     R0,R0,R4, LSL #+4
        LDR      R0,[R0, #+12]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable1_2  ;; 0x40037100
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADDS     R1,R1,R4, LSL #+4
        STR      R0,[R1, #+12]
//   76 
//   77     /* ��ʱ�����ƼĴ��� Timer Control Register (PIT_TCTRL0) */
//   78     PIT_TCTRL(pitn) |= (0
//   79                         | PIT_TCTRL_TEN_MASK  //ʹ�� PITn��ʱ��
//   80                         | PIT_TCTRL_TIE_MASK  //��PITn�ж�
//   81                        );
        LDR.N    R0,??DataTable1_2  ;; 0x40037100
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADDS     R0,R0,R4, LSL #+4
        LDR      R0,[R0, #+8]
        ORRS     R0,R0,#0x3
        LDR.N    R1,??DataTable1_2  ;; 0x40037100
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADDS     R1,R1,R4, LSL #+4
        STR      R0,[R1, #+8]
//   82 
//   83     enable_irq(pitn + 68);			                                //���������ŵ�IRQ�ж�
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
// 202 bytes in section .text
// 
// 202 bytes of CODE memory
//
//Errors: none
//Warnings: none
