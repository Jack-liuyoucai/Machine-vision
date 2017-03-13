///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.1.7305/W32 for ARM       21/Jun/2014  20:39:57
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  L:\6.21\src\Sources\Drivers\gpio\gpio.c
//    Command line =  
//        L:\6.21\src\Sources\Drivers\gpio\gpio.c -D IAR -D TWR_K60N512 -D
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
//    List file    =  L:\6.21\FLASH\List\gpio.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        PUBLIC GPIOx
        PUBLIC PORTX
        PUBLIC gpio_get
        PUBLIC gpio_init
        PUBLIC gpio_set
        PUBLIC gpio_turn

// L:\6.21\src\Sources\Drivers\gpio\gpio.c
//    1 /******************** (C) COPYRIGHT 2011 Ұ��Ƕ��ʽ���������� ********************
//    2  * �ļ���       ��gpio.c
//    3  * ����         ��gpio��������
//    4  *
//    5  * ʵ��ƽ̨     ��Ұ��kinetis������
//    6  * ��汾       ��
//    7  * Ƕ��ϵͳ     ��
//    8  *
//    9  * ����         ��Ұ��Ƕ��ʽ����������
//   10  * �Ա���       ��http://firestm32.taobao.com
//   11  * ����֧����̳ ��http://www.ourdev.cn/bbs/bbs_list.jsp?bbs_id=1008
//   12 **********************************************************************************/
//   13 
//   14 #include "common.h"
//   15 #include "gpio.h"
//   16 
//   17 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   18 volatile struct GPIO_MemMap *GPIOx[5] = {PTA_BASE_PTR, PTB_BASE_PTR, PTC_BASE_PTR, PTD_BASE_PTR, PTE_BASE_PTR}; //�������ָ�����鱣�� GPIOx �ĵ�ַ
GPIOx:
        DATA
        DC32 400FF000H, 400FF040H, 400FF080H, 400FF0C0H, 400FF100H

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   19 volatile struct PORT_MemMap *PORTX[5] = {PORTA_BASE_PTR, PORTB_BASE_PTR, PORTC_BASE_PTR, PORTD_BASE_PTR, PORTE_BASE_PTR};
PORTX:
        DATA
        DC32 40049000H, 4004A000H, 4004B000H, 4004C000H, 4004D000H
//   20 
//   21 /*************************************************************************
//   22 *                             Ұ��Ƕ��ʽ����������
//   23 *
//   24 *  �������ƣ�gpio_init
//   25 *  ����˵������ʼ��gpio
//   26 *  ����˵����PORTx       �˿ںţ�PORTA,PORTB,PORTC,PORTD,PORTE��
//   27 *            n           �˿�����
//   28 *            IO          ���ŷ���,0=����,1=���
//   29 *            data        �����ʼ״̬,0=�͵�ƽ,1=�ߵ�ƽ ����������Ч��
//   30 *  �������أ���
//   31 *  �޸�ʱ�䣺2012-1-15   �Ѳ���
//   32 *  ��    ע��
//   33 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   34 void gpio_init (PORTx portx, uint8 n, GPIO_CFG cfg, uint8 data)
//   35 {
gpio_init:
        PUSH     {R4,R5}
//   36    // ASSERT( (n < 32u)  && (data < 2u) );           //ʹ�ö��Լ�����롢��ƽ �Ƿ�Ϊ1bit
//   37 
//   38     //ѡ���ܽ� PORTx_PCRx ��ÿ���˿ڶ��и��Ĵ��� PORTx_PCRx
//   39     PORT_PCR_REG(PORTX[portx], n) = (0 | PORT_PCR_MUX(1) | cfg);
        LDR.N    R4,??DataTable3
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR      R4,[R4, R0, LSL #+2]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ORRS     R5,R2,#0x100
        STR      R5,[R4, R1, LSL #+2]
//   40 
//   41     //�˿ڷ���������뻹�����
//   42     if( ( (cfg & 0x01) == GPI) || (cfg == GPI_UP) ||     (cfg == GPI_UP_PF)      )
        LSLS     R4,R2,#+31
        BPL.N    ??gpio_init_0
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+3
        BEQ.N    ??gpio_init_0
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+19
        BNE.N    ??gpio_init_1
//   43         //   ���λΪ0������   ||   ��������ģʽ  ||   ��������������Դ�˲���
//   44     {
//   45         GPIO_PDDR_REG(GPIOx[portx]) &= ~(1 << n);  //���ö˿ڷ���Ϊ����
??gpio_init_0:
        LDR.N    R4,??DataTable3_1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR      R4,[R4, R0, LSL #+2]
        LDR      R4,[R4, #+20]
        MOVS     R5,#+1
        LSLS     R5,R5,R1
        BICS     R4,R4,R5
        LDR.N    R5,??DataTable3_1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR      R5,[R5, R0, LSL #+2]
        STR      R4,[R5, #+20]
        B.N      ??gpio_init_2
//   46     }
//   47     else
//   48     {
//   49         GPIO_PDDR_REG(GPIOx[portx]) |= (1 << n);    //���ö˿ڷ���Ϊ���
??gpio_init_1:
        LDR.N    R4,??DataTable3_1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR      R4,[R4, R0, LSL #+2]
        LDR      R4,[R4, #+20]
        MOVS     R5,#+1
        LSLS     R5,R5,R1
        ORRS     R4,R5,R4
        LDR.N    R5,??DataTable3_1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR      R5,[R5, R0, LSL #+2]
        STR      R4,[R5, #+20]
//   50         if(data == 1)//output
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        CMP      R3,#+1
        BNE.N    ??gpio_init_3
//   51         {
//   52             GPIO_SET(portx, n, 1);                  //�Զ˿�������ƣ����Ϊ1
        LDR.N    R4,??DataTable3_1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR      R4,[R4, R0, LSL #+2]
        LDR      R4,[R4, #+0]
        MOVS     R5,#+1
        LSLS     R5,R5,R1
        ORRS     R4,R5,R4
        LDR.N    R5,??DataTable3_1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR      R5,[R5, R0, LSL #+2]
        STR      R4,[R5, #+0]
        B.N      ??gpio_init_2
//   53         }
//   54         else
//   55         {
//   56             GPIO_SET(portx, n, 0);                  //�Զ˿�������ƣ����Ϊ0
??gpio_init_3:
        LDR.N    R4,??DataTable3_1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR      R4,[R4, R0, LSL #+2]
        LDR      R4,[R4, #+0]
        MOVS     R5,#+1
        LSLS     R5,R5,R1
        BICS     R4,R4,R5
        LDR.N    R5,??DataTable3_1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR      R5,[R5, R0, LSL #+2]
        STR      R4,[R5, #+0]
//   57         }
//   58     }
//   59 }
??gpio_init_2:
        POP      {R4,R5}
        BX       LR               ;; return
//   60 
//   61 /*************************************************************************
//   62 *                             Ұ��Ƕ��ʽ����������
//   63 *
//   64 *  �������ƣ�gpio_set
//   65 *  ����˵������������״̬
//   66 *  ����˵����PORTx       �˿ںţ�PORTA,PORTB,PORTC,PORTD,PORTE��
//   67 *            n           �˿�����
//   68 *            data        �����ʼ״̬,0=�͵�ƽ,1=�ߵ�ƽ
//   69 *  �������أ���
//   70 *  �޸�ʱ�䣺2012-1-16   �Ѳ���
//   71 *  ��    ע��
//   72 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   73 void gpio_set (PORTx portx, uint8 n, uint8 data)
//   74 {
gpio_set:
        PUSH     {R4}
//   75     //ASSERT( (n < 32u)  && (data < 2u) );           //ʹ�ö��Լ�����롢��ƽ �Ƿ�Ϊ1bit
//   76 
//   77     if(data == 1)               //���
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+1
        BNE.N    ??gpio_set_0
//   78         GPIO_SET(portx, n, 1);  //GPIO_PDOR_REG(PORTx) |= (1<<n);
        LDR.N    R3,??DataTable3_1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR      R3,[R3, R0, LSL #+2]
        LDR      R3,[R3, #+0]
        MOVS     R4,#+1
        LSLS     R4,R4,R1
        ORRS     R3,R4,R3
        LDR.N    R4,??DataTable3_1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR      R4,[R4, R0, LSL #+2]
        STR      R3,[R4, #+0]
        B.N      ??gpio_set_1
//   79     else
//   80         GPIO_SET(portx, n, 0);  //GPIO_PDOR_REG(PORTx) &= ~(1<<n);
??gpio_set_0:
        LDR.N    R3,??DataTable3_1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR      R3,[R3, R0, LSL #+2]
        LDR      R3,[R3, #+0]
        MOVS     R4,#+1
        LSLS     R4,R4,R1
        BICS     R3,R3,R4
        LDR.N    R4,??DataTable3_1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR      R4,[R4, R0, LSL #+2]
        STR      R3,[R4, #+0]
//   81 }
??gpio_set_1:
        POP      {R4}
        BX       LR               ;; return
//   82 
//   83 /*************************************************************************
//   84 *                             Ұ��Ƕ��ʽ����������
//   85 *
//   86 *  �������ƣ�gpio_turn
//   87 *  ����˵������ת����״̬
//   88 *  ����˵����PORTx       �˿ںţ�PORTA,PORTB,PORTC,PORTD,PORTE��
//   89 *            n           �˿�����
//   90 *  �������أ���
//   91 *  �޸�ʱ�䣺2012-1-15   �Ѳ���
//   92 *  ��    ע��
//   93 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   94 void gpio_turn (PORTx portx, uint8 n)
//   95 {
//   96     //ASSERT( n < 32u );           //ʹ�ö��Լ�����ź�
//   97     GPIO_TURN(portx, n);
gpio_turn:
        LDR.N    R2,??DataTable3_1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR      R2,[R2, R0, LSL #+2]
        LDR      R2,[R2, #+0]
        MOVS     R3,#+1
        LSLS     R3,R3,R1
        EORS     R2,R3,R2
        LDR.N    R3,??DataTable3_1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR      R3,[R3, R0, LSL #+2]
        STR      R2,[R3, #+0]
//   98 }
        BX       LR               ;; return
//   99 
//  100 /*************************************************************************
//  101 *                             Ұ��Ƕ��ʽ����������
//  102 *
//  103 *  �������ƣ�gpio_get
//  104 *  ����˵������ȡ��������״̬
//  105 *  ����˵����PORTx       �˿ںţ�PORTA,PORTB,PORTC,PORTD,PORTE��
//  106 *            n           �˿�����
//  107 *  �������أ���
//  108 *  �޸�ʱ�䣺2012-1-15   �Ѳ���
//  109 *  ��    ע��
//  110 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  111 uint8 gpio_get(PORTx portx, uint8 n)          //��ȡ����״̬
//  112 {
//  113     //ASSERT( n < 32u );                  //ʹ�ö��Լ�����ź�
//  114     return GPIO_Get(portx, n);
gpio_get:
        LDR.N    R2,??DataTable3_1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR      R0,[R2, R0, LSL #+2]
        LDR      R0,[R0, #+16]
        LSRS     R0,R0,R1
        ANDS     R0,R0,#0x1
        BX       LR               ;; return
//  115 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3:
        DC32     PORTX

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_1:
        DC32     GPIOx

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
//  40 bytes in section .data
// 276 bytes in section .text
// 
// 276 bytes of CODE memory
//  40 bytes of DATA memory
//
//Errors: none
//Warnings: none
