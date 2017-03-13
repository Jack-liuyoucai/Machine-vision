///////////////////////////////////////////////////////////////////////////////
//                                                                            /
//                                                      27/Apr/2013  16:30:50 /
// IAR ANSI C/C++ Compiler V6.30.4.23288/W32 EVALUATION for ARM               /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Users\Administrator\Desktop\4.25��Ļ ��λ�� ����     /
//                    ���� ���ش���  ����\src\Settings\Start_up\start.c       /
//    Command line =  "C:\Users\Administrator\Desktop\4.25��Ļ ��λ�� ����    /
//                    ���� ���ش���  ����\src\Settings\Start_up\start.c"      /
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
//                    ���� ���ش���  ����\RAM\List\start.s                    /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME start

        #define SHT_PROGBITS 0x1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0
        SECTION `.data`:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0
        SECTION `.data_init`:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0
        SECTION CodeRelocate:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0
        SECTION CodeRelocateRam:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        EXTERN __VECTOR_RAM
        EXTERN __VECTOR_TABLE
        EXTERN main
        EXTERN pll_init
        EXTERN wdog_disable
        EXTERN write_vtor

        PUBLIC common_startup
        PUBLIC start
        PUBLIC trace_clk_init

// C:\Users\Administrator\Desktop\4.25��Ļ ��λ�� ���� ���� ���ش���  ����\src\Settings\Start_up\start.c
//    1 //-------------------------------------------------------------------------*
//    2 // �ļ���:start.c                                                          *
//    3 // ˵  ��: CPU���������ϵͳ����                                           *
//    4 //-------------------------------------------------------------------------*
//    5 
//    6 //ͷ�ļ�
//    7 #include "common.h"
//    8 #include "wdog.h"
//    9 #include "mcg.h"
//   10 
//   11 #pragma section = ".data"
//   12 #pragma section = ".data_init"
//   13 #pragma section = ".bss"
//   14 #pragma section = "CodeRelocate"
//   15 #pragma section = "CodeRelocateRam" 
//   16 
//   17 //�ڲ���������
//   18 //-------------------------------------------------------------------------*
//   19 //������: common_startup                                                   *
//   20 //��  ��: �����ж�������RAM��                                            * 
//   21 //��  ��: ��								   *	
//   22 //˵  ��: ��ROM�еĳ�ʼ�����ݿ�����RAM��                                   *
//   23 //-------------------------------------------------------------------------*
//   24 void common_startup(void);
//   25 
//   26 void trace_clk_init(void);
//   27 
//   28 //-------------------------------------------------------------------------*
//   29 //������: start                                                            *
//   30 //��  ��: ϵͳ����                                                         * 
//   31 //��  ��: ��								   *	
//   32 //˵  ��: ��                                                               *
//   33 //-------------------------------------------------------------------------*

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   34 void start(void)
//   35 {
start:
        PUSH     {R7,LR}
//   36     //�رտ��Ź�
//   37     wdog_disable();		
        BL       wdog_disable
//   38     //�����ж�������RAM��
//   39     common_startup();
        BL       common_startup
//   40     
//   41     trace_clk_init();
        BL       trace_clk_init
//   42     
//   43     pll_init();
        BL       pll_init
//   44     
//   45     
//   46     //����������
//   47     main();
        BL       main
//   48     
//   49     while(1);
??start_0:
        B.N      ??start_0
//   50 }
//   51 
//   52 
//   53 //-------------------------------------------------------------------------*
//   54 //������: common_startup                                                   *
//   55 //��  ��: �����ж�������RAM��                                            * 
//   56 //��  ��: ��								   *	
//   57 //˵  ��: ��ROM�еĳ�ʼ�����ݿ�����RAM��                                   *
//   58 //-------------------------------------------------------------------------*

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   59 void common_startup(void)
//   60 {
common_startup:
        PUSH     {R3-R7,LR}
//   61     /* Declare a counter we'll use in all of the copy loops */
//   62     uint32 n;
//   63  
//   64  
//   65     /* Addresses for VECTOR_TABLE and VECTOR_RAM come from the linker file */  
//   66     extern uint32 __VECTOR_TABLE[];
//   67     extern uint32 __VECTOR_RAM[];
//   68 
//   69     /* Copy the vector table to RAM */
//   70     if (__VECTOR_RAM != __VECTOR_TABLE)
        LDR.N    R0,??DataTable1
        LDR.N    R1,??DataTable1_1
        CMP      R0,R1
        BEQ.N    ??common_startup_0
//   71     {
//   72         for (n = 0; n < 0x410; n++)
        MOVS     R0,#+0
        MOVS     R4,R0
??common_startup_1:
        CMP      R4,#+1040
        BCS.N    ??common_startup_0
//   73             __VECTOR_RAM[n] = __VECTOR_TABLE[n];
        LDR.N    R0,??DataTable1
        LDR.N    R1,??DataTable1_1
        LDR      R1,[R1, R4, LSL #+2]
        STR      R1,[R0, R4, LSL #+2]
        ADDS     R4,R4,#+1
        B.N      ??common_startup_1
//   74     }
//   75     /* Point the VTOR to the new copy of the vector table */
//   76     write_vtor((uint32)__VECTOR_RAM);    
??common_startup_0:
        LDR.N    R0,??DataTable1
        BL       write_vtor
//   77     
//   78     /* Get the addresses for the .data section (initialized data section) */
//   79     uint8* data_ram = __section_begin(".data");
        LDR.N    R2,??DataTable1_2
//   80     uint8* data_rom = __section_begin(".data_init");
        LDR.N    R1,??DataTable1_3
//   81     uint8* data_rom_end = __section_end(".data_init");
        LDR.N    R0,??DataTable1_4
//   82     
//   83     /* Copy initialized data from ROM to RAM */
//   84     n = data_rom_end - data_rom;
        SUBS     R3,R0,R1
        MOVS     R4,R3
//   85     while (n--)
??common_startup_2:
        MOVS     R3,R4
        SUBS     R4,R3,#+1
        CMP      R3,#+0
        BEQ.N    ??common_startup_3
//   86       *data_ram++ = *data_rom++;
        LDRB     R3,[R1, #+0]
        STRB     R3,[R2, #+0]
        ADDS     R1,R1,#+1
        ADDS     R2,R2,#+1
        B.N      ??common_startup_2
//   87  
//   88  
//   89     /* Get the addresses for the .bss section (zero-initialized data) */
//   90     uint8* bss_start = __section_begin(".bss");
??common_startup_3:
        LDR.N    R5,??DataTable1_5
//   91     uint8* bss_end = __section_end(".bss");
        LDR.N    R3,??DataTable1_6
//   92     
//   93     /* Clear the zero-initialized data section */
//   94     n = bss_end - bss_start;
        SUBS     R6,R3,R5
        MOVS     R4,R6
//   95     while(n--)
??common_startup_4:
        MOVS     R6,R4
        SUBS     R4,R6,#+1
        CMP      R6,#+0
        BEQ.N    ??common_startup_5
//   96       *bss_start++ = 0;    
        MOVS     R6,#+0
        STRB     R6,[R5, #+0]
        ADDS     R5,R5,#+1
        B.N      ??common_startup_4
//   97     
//   98     /* Get addresses for any code sections that need to be copied from ROM to RAM.
//   99      * The IAR tools have a predefined keyword that can be used to mark individual
//  100      * functions for execution from RAM. Add "__ramfunc" before the return type in
//  101      * the function prototype for any routines you need to execute from RAM instead 
//  102      * of ROM. ex: __ramfunc void foo(void);
//  103      */
//  104     uint8* code_relocate_ram = __section_begin("CodeRelocateRam");
??common_startup_5:
        LDR.N    R6,??DataTable1_7
//  105     uint8* code_relocate = __section_begin("CodeRelocate");
        LDR.N    R7,??DataTable1_8
//  106     uint8* code_relocate_end = __section_end("CodeRelocate");
        LDR.W    R12,??DataTable1_9
//  107     
//  108     /* Copy functions from ROM to RAM */
//  109     n = code_relocate_end - code_relocate;
        SUBS     LR,R12,R7
        MOV      R4,LR
//  110     while (n--)
??common_startup_6:
        MOV      LR,R4
        SUBS     R4,LR,#+1
        CMP      LR,#+0
        BEQ.N    ??common_startup_7
//  111       *code_relocate_ram++ = *code_relocate++;
        LDRB     LR,[R7, #+0]
        STRB     LR,[R6, #+0]
        ADDS     R7,R7,#+1
        ADDS     R6,R6,#+1
        B.N      ??common_startup_6
//  112 }
??common_startup_7:
        POP      {R0,R4-R7,PC}    ;; return
//  113 
//  114 
//  115 //-------------------------------------------------------------------------*
//  116 //������: trace_clk_init                                                   *
//  117 //��  ��: ����ʱ�ӳ�ʼ��                                                   * 
//  118 //��  ��: ��							  	   *	
//  119 //��  ��: ��                                                               *
//  120 //˵  ��: ���ڵ���                                                         *
//  121 //-------------------------------------------------------------------------*

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  122 void trace_clk_init(void)
//  123 {
//  124     //���ø���ʱ��Ϊ�ں�ʱ��
//  125     SIM_SOPT2 |= SIM_SOPT2_TRACECLKSEL_MASK;	
trace_clk_init:
        LDR.N    R0,??DataTable1_10  ;; 0x40048004
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000
        LDR.N    R1,??DataTable1_10  ;; 0x40048004
        STR      R0,[R1, #+0]
//  126     //��PTA6������ʹ��TRACE_CLKOU����
//  127     PORTA_PCR6 = ( PORT_PCR_MUX(0x7));
        LDR.N    R0,??DataTable1_11  ;; 0x40049018
        MOV      R1,#+1792
        STR      R1,[R0, #+0]
//  128 }
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     __VECTOR_RAM

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DC32     __VECTOR_TABLE

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_2:
        DC32     SFB(`.data`)

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_3:
        DC32     SFB(`.data_init`)

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_4:
        DC32     SFE(`.data_init`)

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_5:
        DC32     SFB(`.bss`)

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_6:
        DC32     SFE(`.bss`)

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_7:
        DC32     SFB(CodeRelocateRam)

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_8:
        DC32     SFB(CodeRelocate)

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_9:
        DC32     SFE(CodeRelocate)

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_10:
        DC32     0x40048004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_11:
        DC32     0x40049018

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.data`:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.data_init`:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION CodeRelocate:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION CodeRelocateRam:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
// 
// 230 bytes in section .text
// 
// 230 bytes of CODE memory
//
//Errors: none
//Warnings: none
