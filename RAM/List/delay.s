///////////////////////////////////////////////////////////////////////////////
//                                                                            /
//                                                      27/Apr/2013  13:44:41 /
// IAR ANSI C/C++ Compiler V6.30.4.23288/W32 EVALUATION for ARM               /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Users\Administrator\Desktop\4.25��Ļ ��λ�� ����     /
//                    ���� ���ش���  ����\src\Sources\Drivers\delay\delay.c   /
//    Command line =  "C:\Users\Administrator\Desktop\4.25��Ļ ��λ�� ����    /
//                    ���� ���ش���  ����\src\Sources\Drivers\delay\delay.c"  /
//                    -lCN "C:\Users\Administrator\Desktop\4.25��Ļ ��λ��    /
//                    ���� ���� ���ش���  ����\RAM\List\" -lB                 /
//                    "C:\Users\Administrator\Desktop\4.25��Ļ ��λ�� ����    /
//                    ���� ���ش���  ����\RAM\List\" -o                       /
//                    "C:\Users\Administrator\Desktop\4.25��Ļ ��λ�� ����    /
//                    ���� ���ش���  ����\RAM\Obj\" --no_cse --no_unroll      /
//                    --no_inline --no_code_motion --no_tbaa --no_clustering  /
//                    --no_scheduling --debug --endian=little                 /
//                    --cpu=Cortex-M4 -e --fpu=None --dlib_config             /
//                    "D:\Program Files\IAR Systems\Embedded Workbench 6.0    /
//                    Evaluation\arm\INC\c\DLib_Config_Normal.h" -I           /
//                    "C:\Users\Administrator\Desktop\4.25��Ļ ��λ�� ����    /
//                    ���� ���ش���  ����\src\Sources\Cpu\" -I                /
//                    "C:\Users\Administrator\Desktop\4.25��Ļ ��λ�� ����    /
//                    ���� ���ش���  ����\src\Sources\App\" -I                /
//                    "C:\Users\Administrator\Desktop\4.25��Ļ ��λ�� ����    /
//                    ���� ���ش���  ����\src\Sources\Drivers\adc\" -I        /
//                    "C:\Users\Administrator\Desktop\4.25��Ļ ��λ�� ����    /
//                    ���� ���ش���  ����\src\Sources\Drivers\delay\" -I      /
//                    "C:\Users\Administrator\Desktop\4.25��Ļ ��λ�� ����    /
//                    ���� ���ش���  ����\src\Sources\Drivers\FTM\" -I        /
//                    "C:\Users\Administrator\Desktop\4.25��Ļ ��λ�� ����    /
//                    ���� ���ش���  ����\src\Sources\Drivers\gpio\" -I       /
//                    "C:\Users\Administrator\Desktop\4.25��Ļ ��λ�� ����    /
//                    ���� ���ش���  ����\src\Sources\Drivers\lptmr\" -I      /
//                    "C:\Users\Administrator\Desktop\4.25��Ļ ��λ�� ����    /
//                    ���� ���ش���  ����\src\Sources\Drivers\mcg\" -I        /
//                    "C:\Users\Administrator\Desktop\4.25��Ļ ��λ�� ����    /
//                    ���� ���ش���  ����\src\Sources\Drivers\PIT\" -I        /
//                    "C:\Users\Administrator\Desktop\4.25��Ļ ��λ�� ����    /
//                    ���� ���ش���  ����\src\Sources\Drivers\uart\" -I       /
//                    "C:\Users\Administrator\Desktop\4.25��Ļ ��λ�� ����    /
//                    ���� ���ش���  ����\src\Sources\Drivers\oled\" -I       /
//                    "C:\Users\Administrator\Desktop\4.25��Ļ ��λ�� ����    /
//                    ���� ���ش���  ����\src\Sources\Drivers\spi\" -On       /
//                    --use_c++_inline                                        /
//    List file    =  C:\Users\Administrator\Desktop\4.25��Ļ ��λ�� ����     /
//                    ���� ���ش���  ����\RAM\List\delay.s                    /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME delay

        #define SHT_PROGBITS 0x1

        PUBLIC delay
        PUBLIC delayms

// C:\Users\Administrator\Desktop\4.25��Ļ ��λ�� ���� ���� ���ش���  ����\src\Sources\Drivers\delay\delay.c
//    1 /******************** (C) COPYRIGHT 2011 Ұ��Ƕ��ʽ���������� ********************
//    2  * �ļ���       ��delay.c
//    3  * ����         ����ʱ��������
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
//   14 #include  "delay.h"
//   15 
//   16 
//   17 /*************************************************************************
//   18 *                             Ұ��Ƕ��ʽ����������
//   19 *
//   20 *  �������ƣ�delay
//   21 *  ����˵������ʱ��������׼ȷ��
//   22 *  ����˵������
//   23 *  �������أ���
//   24 *  �޸�ʱ�䣺2012-2-1    �Ѳ���
//   25 *  ��    ע��
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
//   33 *                             Ұ��Ƕ��ʽ����������
//   34 *
//   35 *  �������ƣ�delayms
//   36 *  ����˵������ʱ��������׼ȷ�����ں�Ƶ��Ϊ100Mʱ��Ϊ׼ȷ
//   37 *  ����˵������
//   38 *  �������أ���
//   39 *  �޸�ʱ�䣺2012-2-1    �Ѳ���
//   40 *  ��    ע��
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
// 44 bytes in section .text
// 
// 44 bytes of CODE memory
//
//Errors: none
//Warnings: none
