///////////////////////////////////////////////////////////////////////////////
//                                                                            /
//                                                      27/Apr/2013  13:36:04 /
// IAR ANSI C/C++ Compiler V6.30.4.23288/W32 EVALUATION for ARM               /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Users\Administrator\Desktop\4.25屏幕 下位机 发送     /
//                    接受 像素处理  死机\src\Sources\Drivers\uart\uart.c     /
//    Command line =  "C:\Users\Administrator\Desktop\4.25屏幕 下位机 发送    /
//                    接受 像素处理  死机\src\Sources\Drivers\uart\uart.c"    /
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
//                    接受 像素处理  死机\RAM\List\uart.s                     /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME uart

        #define SHT_PROGBITS 0x1

        EXTERN disable_irq
        EXTERN enable_irq

        PUBLIC UARTx
        PUBLIC uart_getchar
        PUBLIC uart_init
        PUBLIC uart_irq_DIS
        PUBLIC uart_irq_EN
        PUBLIC uart_pendchar
        PUBLIC uart_pendchar1
        PUBLIC uart_pendstr
        PUBLIC uart_putchar
        PUBLIC uart_query
        PUBLIC uart_sendN
        PUBLIC uart_sendStr

// C:\Users\Administrator\Desktop\4.25屏幕 下位机 发送 接受 像素处理  死机\src\Sources\Drivers\uart\uart.c
//    1 /******************** (C) COPYRIGHT 2011 野火嵌入式开发工作室 ********************
//    2  * 文件名       ：uart.c
//    3  * 描述         ：串口函数
//    4  * 备注         ：参考苏州大学的例程和飞思卡尔官方的例程
//    5  *
//    6  * 实验平台     ：野火kinetis开发板
//    7  * 库版本       ：
//    8  * 嵌入系统     ：
//    9  *
//   10  * 作者         ：
//   11  * 淘宝店       ：http://firestm32.taobao.com
//   12  * 技术支持论坛 ：http://www.ourdev.cn/bbs/bbs_list.jsp?bbs_id=1008
//   13 **********************************************************************************/
//   14 
//   15 #include "common.h"
//   16 #include "uart.h"
//   17 #include "assert.h"
//   18 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   19 volatile struct UART_MemMap *UARTx[6] = {UART0_BASE_PTR, UART1_BASE_PTR, UART2_BASE_PTR, UART3_BASE_PTR, UART4_BASE_PTR, UART5_BASE_PTR}; //定义五个指针数组保存 UARTx 的地址
UARTx:
        DATA
        DC32 4006A000H, 4006B000H, 4006C000H, 4006D000H, 400EA000H, 400EB000H
//   20 
//   21 /*************************************************************************
//   22 *                             野火嵌入式开发工作室
//   23 *
//   24 *  函数名称：uart_init
//   25 *  功能说明：初始化串口，设置波特率
//   26 *  参数说明：UARTn       模块号（UART0~UART5）
//   27 *            baud        波特率，如9600、19200、56000、115200等
//   28 *  函数返回：无
//   29 *  修改时间：2012-1-20
//   30 *  备    注：在官方例程上修改
//   31 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   32 void uart_init (UARTn uratn, uint32 baud)
//   33 {
uart_init:
        PUSH     {R4-R7}
//   34     register uint16 sbr, brfa;
//   35     uint8 temp;
//   36     uint32 sysclk;     //时钟
//   37 
//   38     /* 配置 UART功能的 GPIO 接口 开启时钟 */
//   39     switch(uratn)
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??uart_init_0
        CMP      R0,#+2
        BEQ.N    ??uart_init_1
        BCC.N    ??uart_init_2
        CMP      R0,#+4
        BEQ.N    ??uart_init_3
        BCC.N    ??uart_init_4
        CMP      R0,#+5
        BEQ.N    ??uart_init_5
        B.N      ??uart_init_6
//   40     {
//   41     case UART0:
//   42         if(UART0_RX == PTA1)
//   43             PORTA_PCR1 = PORT_PCR_MUX(0x2);      //在PTA1上使能UART0_RXD
//   44         else if(UART0_RX == PTA15)
//   45             PORTA_PCR15 = PORT_PCR_MUX(0x3);     //在PTA15上使能UART0_RXD
//   46         else if(UART0_RX == PTB16)
//   47             PORTB_PCR16 = PORT_PCR_MUX(0x3);     //在PTB16上使能UART0_RXD
//   48         else if(UART0_RX == PTD6)
//   49             PORTD_PCR6 = PORT_PCR_MUX(0x3);      //在PTD6上使能UART0_RXD
??uart_init_0:
        LDR.N    R6,??DataTable7  ;; 0x4004c018
        MOV      R7,#+768
        STR      R7,[R6, #+0]
//   50 
//   51         if(UART0_TX == PTA2)
//   52             PORTA_PCR2 = PORT_PCR_MUX(0x2);     //在PTA2上使能UART0_RXD
//   53         else if(UART0_TX == PTA14)
//   54             PORTA_PCR14 = PORT_PCR_MUX(0x3);     //在PTA14上使能UART0_RXD
//   55         else if(UART0_TX == PTB17)
//   56             PORTB_PCR17 = PORT_PCR_MUX(0x3);     //在PTB17上使能UART0_RXD
//   57         else if(UART0_TX == PTD7)
//   58             PORTD_PCR7 = PORT_PCR_MUX(0x3);     //在PTD7上使能UART0_RXD
        LDR.N    R6,??DataTable7_1  ;; 0x4004c01c
        MOV      R7,#+768
        STR      R7,[R6, #+0]
//   59 
//   60         SIM_SCGC4 |= SIM_SCGC4_UART0_MASK;      //使能 UARTn 时钟
        LDR.N    R6,??DataTable7_2  ;; 0x40048034
        LDR      R6,[R6, #+0]
        ORRS     R6,R6,#0x400
        LDR.N    R7,??DataTable7_2  ;; 0x40048034
        STR      R6,[R7, #+0]
//   61         break;
        B.N      ??uart_init_7
//   62 
//   63     case UART1:
//   64         if(UART1_RX == PTC3)
//   65             PORTC_PCR3 = PORT_PCR_MUX(0x3);     //在PTC3上使能UART1_RXD
??uart_init_2:
        LDR.N    R6,??DataTable7_3  ;; 0x4004b00c
        MOV      R7,#+768
        STR      R7,[R6, #+0]
//   66         else if(UART1_RX == PTE1)
//   67             PORTE_PCR1 = PORT_PCR_MUX(0x3);     //在PTE1上使能UART1_RXD
//   68         
//   69 
//   70         if(UART1_TX == PTC4)
//   71             PORTC_PCR4 = PORT_PCR_MUX(0x3);     //在PTC4上使能UART1_RXD
        LDR.N    R6,??DataTable7_4  ;; 0x4004b010
        MOV      R7,#+768
        STR      R7,[R6, #+0]
//   72         else if(UART1_TX == PTE0)
//   73             PORTE_PCR0 = PORT_PCR_MUX(0x3);     //在PTE0上使能UART1_RXD
//   74        
//   75 
//   76         SIM_SCGC4 |= SIM_SCGC4_UART1_MASK;
        LDR.N    R6,??DataTable7_2  ;; 0x40048034
        LDR      R6,[R6, #+0]
        ORRS     R6,R6,#0x800
        LDR.N    R7,??DataTable7_2  ;; 0x40048034
        STR      R6,[R7, #+0]
//   77         break;
        B.N      ??uart_init_7
//   78 
//   79     case UART2:
//   80         PORTD_PCR3 = PORT_PCR_MUX(0x3);         //在PTD3上使能UART2_TXD功能
??uart_init_1:
        LDR.N    R6,??DataTable7_5  ;; 0x4004c00c
        MOV      R7,#+768
        STR      R7,[R6, #+0]
//   81         PORTD_PCR2 = PORT_PCR_MUX(0x3);         //在PTD2上使能UART2_RXD
        LDR.N    R6,??DataTable7_6  ;; 0x4004c008
        MOV      R7,#+768
        STR      R7,[R6, #+0]
//   82         SIM_SCGC4 |= SIM_SCGC4_UART2_MASK;
        LDR.N    R6,??DataTable7_2  ;; 0x40048034
        LDR      R6,[R6, #+0]
        ORRS     R6,R6,#0x1000
        LDR.N    R7,??DataTable7_2  ;; 0x40048034
        STR      R6,[R7, #+0]
//   83         break;
        B.N      ??uart_init_7
//   84 
//   85     case UART3:
//   86         if(UART3_RX == PTB10)
//   87             PORTB_PCR10 = PORT_PCR_MUX(0x3);     //在PTB10上使能UART3_RXD
//   88         else if(UART3_RX == PTC16)
//   89             PORTC_PCR16 = PORT_PCR_MUX(0x3);     //在PTC16上使能UART3_RXD
??uart_init_4:
        LDR.N    R6,??DataTable7_7  ;; 0x4004b040
        MOV      R7,#+768
        STR      R7,[R6, #+0]
//   90         else if(UART3_RX == PTE5)
//   91             PORTE_PCR5 = PORT_PCR_MUX(0x3);      //在PTE5上使能UART3_RXD
//   92                 
//   93 
//   94         if(UART3_TX == PTB11)
//   95             PORTB_PCR11 = PORT_PCR_MUX(0x3);     //在PTB11上使能UART3_RXD
//   96         else if(UART3_TX == PTC17)
//   97             PORTC_PCR17 = PORT_PCR_MUX(0x3);     //在PTC17上使能UART3_RXD
        LDR.N    R6,??DataTable7_8  ;; 0x4004b044
        MOV      R7,#+768
        STR      R7,[R6, #+0]
//   98         else if(UART3_TX == PTE4)
//   99             PORTE_PCR4 = PORT_PCR_MUX(0x3);     //在PTE4上使能UART3_RXD
//  100      
//  101         SIM_SCGC4 |= SIM_SCGC4_UART3_MASK;
        LDR.N    R6,??DataTable7_2  ;; 0x40048034
        LDR      R6,[R6, #+0]
        ORRS     R6,R6,#0x2000
        LDR.N    R7,??DataTable7_2  ;; 0x40048034
        STR      R6,[R7, #+0]
//  102         break;
        B.N      ??uart_init_7
//  103 
//  104     case UART4:
//  105         if(UART4_RX == PTC14)
//  106             PORTC_PCR14 = PORT_PCR_MUX(0x3);     //在PTC14上使能UART4_RXD
//  107         else if(UART4_RX == PTE25)
//  108             PORTE_PCR25 = PORT_PCR_MUX(0x3);     //在PTE25上使能UART4_RXD
??uart_init_3:
        LDR.N    R6,??DataTable7_9  ;; 0x4004d064
        MOV      R7,#+768
        STR      R7,[R6, #+0]
//  109        
//  110         if(UART4_TX == PTC15)
//  111             PORTC_PCR15 = PORT_PCR_MUX(0x3);     //在PTC15上使能UART4_RXD
//  112         else if(UART4_TX == PTE24)
//  113             PORTE_PCR24 = PORT_PCR_MUX(0x3);     //在PTE24上使能UART4_RXD
        LDR.N    R6,??DataTable7_10  ;; 0x4004d060
        MOV      R7,#+768
        STR      R7,[R6, #+0]
//  114                      //设置管脚有误？
//  115 
//  116         SIM_SCGC1 |= SIM_SCGC1_UART4_MASK;
        LDR.N    R6,??DataTable7_11  ;; 0x40048028
        LDR      R6,[R6, #+0]
        ORRS     R6,R6,#0x400
        LDR.N    R7,??DataTable7_11  ;; 0x40048028
        STR      R6,[R7, #+0]
//  117         break;
        B.N      ??uart_init_7
//  118 
//  119     case UART5:
//  120         if(UART5_RX == PTD8)
//  121             PORTD_PCR8 = PORT_PCR_MUX(0x3);     //在PTD8上使能UART5_RXD
//  122         else if(UART5_RX == PTE9)
//  123             PORTE_PCR9 = PORT_PCR_MUX(0x3);     //在PTE9上使能UART5_RXD
??uart_init_5:
        LDR.N    R6,??DataTable7_12  ;; 0x4004d024
        MOV      R7,#+768
        STR      R7,[R6, #+0]
//  124         
//  125         if(UART5_TX == PTD9)
//  126             PORTD_PCR9 = PORT_PCR_MUX(0x3);     //在PTD9上使能UART5_RXD
//  127         else if(UART5_TX == PTE8)
//  128             PORTE_PCR8 = PORT_PCR_MUX(0x3);     //在PTE8上使能UART5_RXD
        LDR.N    R6,??DataTable7_13  ;; 0x4004d020
        MOV      R7,#+768
        STR      R7,[R6, #+0]
//  129         
//  130         SIM_SCGC1 |= SIM_SCGC1_UART5_MASK;
        LDR.N    R6,??DataTable7_11  ;; 0x40048028
        LDR      R6,[R6, #+0]
        ORRS     R6,R6,#0x800
        LDR.N    R7,??DataTable7_11  ;; 0x40048028
        STR      R6,[R7, #+0]
//  131         break;
        B.N      ??uart_init_7
//  132     default:
//  133         break;
//  134     }
//  135 
//  136 
//  137     //设置的时候，应该禁止发送接受
//  138     UART_C2_REG(UARTx[uratn]) &= ~(UART_C2_TE_MASK  | UART_C2_RE_MASK );
??uart_init_6:
??uart_init_7:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R6,??DataTable7_14
        LDR      R6,[R6, R0, LSL #+2]
        LDRB     R6,[R6, #+3]
        ANDS     R6,R6,#0xF3
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R7,??DataTable7_14
        LDR      R7,[R7, R0, LSL #+2]
        STRB     R6,[R7, #+3]
//  139 
//  140     //配置成8位无校验模式
//  141     //设置 UART 数据格式、校验方式和停止位位数。通过设置 UART 模块控制寄存器 C1 实现；
//  142     UART_C1_REG(UARTx[uratn]) = 0;	// 全部直接使用默认设置就行，所以直接清0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R6,??DataTable7_14
        LDR      R6,[R6, R0, LSL #+2]
        MOVS     R7,#+0
        STRB     R7,[R6, #+2]
//  143 
//  144     //计算波特率，串口0、1使用内核时钟，其它串口使用外设时钟
//  145     if ((uratn == UART0) | (uratn == UART1))
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??uart_init_8
        MOVS     R6,#+1
        B.N      ??uart_init_9
??uart_init_8:
        MOVS     R6,#+0
??uart_init_9:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+1
        BNE.N    ??uart_init_10
        MOVS     R7,#+1
        B.N      ??uart_init_11
??uart_init_10:
        MOVS     R7,#+0
??uart_init_11:
        ORRS     R6,R7,R6
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BEQ.N    ??uart_init_12
//  146         sysclk = core_clk_khz * 1000;            //内核时钟
        LDR.N    R6,??DataTable7_15  ;; 0xaba9500
        MOVS     R5,R6
        B.N      ??uart_init_13
//  147     else
//  148         sysclk = bus_clk_khz * 1000;  //外设时钟
??uart_init_12:
        LDR.N    R6,??DataTable7_16  ;; 0x55d4a80
        MOVS     R5,R6
//  149 
//  150     //设置 UART 数据通讯波特率。通过设置 UART 模块的波特率寄存器
//  151     sbr = (uint16)(sysclk / (baud << 4));
??uart_init_13:
        LSLS     R6,R1,#+4
        UDIV     R6,R5,R6
        MOVS     R2,R6
//  152 
//  153     /* Save off the current value of the UARTx_BDH except for the SBR field */
//  154     temp = UART_BDH_REG(UARTx[uratn]) & ~(UART_BDH_SBR(0x1F));
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R6,??DataTable7_14
        LDR      R6,[R6, R0, LSL #+2]
        LDRB     R6,[R6, #+0]
        ANDS     R6,R6,#0xE0
        MOVS     R4,R6
//  155 
//  156     UART_BDH_REG(UARTx[uratn]) = temp |  UART_BDH_SBR(((sbr & 0x1F00) >> 8));
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        LSRS     R6,R2,#+8
        ANDS     R6,R6,#0x1F
        ORRS     R6,R6,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R7,??DataTable7_14
        LDR      R7,[R7, R0, LSL #+2]
        STRB     R6,[R7, #+0]
//  157     UART_BDL_REG(UARTx[uratn]) = (uint8)(sbr & UART_BDL_SBR_MASK);
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R6,??DataTable7_14
        LDR      R6,[R6, R0, LSL #+2]
        STRB     R2,[R6, #+1]
//  158 
//  159     //brfa = (((sysclk*32)/(baud * 16)) - (sbr * 32));
//  160     brfa = (((sysclk << 5) / (baud << 4)) - (sbr << 5));
        LSLS     R6,R5,#+5
        LSLS     R7,R1,#+4
        UDIV     R6,R6,R7
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        SUBS     R6,R6,R2, LSL #+5
        MOVS     R3,R6
//  161 
//  162     /* Save off the current value of the UARTx_C4 register except for the BRFA field */
//  163     temp = UART_C4_REG(UARTx[uratn]) & ~(UART_C4_BRFA(0x1F));
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R6,??DataTable7_14
        LDR      R6,[R6, R0, LSL #+2]
        LDRB     R6,[R6, #+10]
        ANDS     R6,R6,#0xE0
        MOVS     R4,R6
//  164 
//  165     UART_C4_REG(UARTx[uratn]) = temp |  UART_C4_BRFA(brfa);
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R6,??DataTable7_14
        LDR      R6,[R6, R0, LSL #+2]
        ANDS     R7,R3,#0x1F
        ORRS     R7,R7,R4
        STRB     R7,[R6, #+10]
//  166 
//  167     /* 允许发送和接收 */
//  168     UART_C2_REG(UARTx[uratn]) |= (UART_C2_TE_MASK | UART_C2_RE_MASK );
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R6,??DataTable7_14
        LDR      R6,[R6, R0, LSL #+2]
        LDRB     R6,[R6, #+3]
        ORRS     R6,R6,#0xC
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R7,??DataTable7_14
        LDR      R7,[R7, R0, LSL #+2]
        STRB     R6,[R7, #+3]
//  169 
//  170     //设置是否允许接收和发送中断。通过设置 UART 模块的 C2 寄存器的
//  171     //RIE 和 TIE 位实现。如果使能中断，必须首先实现中断服务程序；
//  172 }
        POP      {R4-R7}
        BX       LR               ;; return
//  173 
//  174 /*************************************************************************
//  175 *                             野火嵌入式开发工作室
//  176 *
//  177 *  函数名称：uart_getchar
//  178 *  功能说明：无限时间等待串口接受一个字节
//  179 *  参数说明：UARTn       模块号（UART0~UART5）
//  180 *  函数返回：接收到的字节
//  181 *  修改时间：2012-1-20
//  182 *  备    注：官方例程
//  183 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  184 char uart_getchar (UARTn uratn)
//  185 {
//  186     /* Wait until character has been received */
//  187     while (!(UART_S1_REG(UARTx[uratn]) & UART_S1_RDRF_MASK));
uart_getchar:
??uart_getchar_0:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable7_14
        LDR      R1,[R1, R0, LSL #+2]
        LDRB     R1,[R1, #+4]
        LSLS     R1,R1,#+26
        BPL.N    ??uart_getchar_0
//  188 
//  189     /* Return the 8-bit data from the receiver */
//  190     return UART_D_REG(UARTx[uratn]);
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable7_14
        LDR      R0,[R1, R0, LSL #+2]
        LDRB     R0,[R0, #+7]
        BX       LR               ;; return
//  191 }
//  192 
//  193 /*************************************************************************
//  194 *                             野火嵌入式开发工作室
//  195 *
//  196 *  函数名称：uart_pendchar
//  197 *  功能说明：有限时间等待串口接受一个字节
//  198 *  参数说明：UARTn       模块号（UART0~UART5）
//  199 *  函数返回：接收到的字节
//  200 *  修改时间：2012-1-20
//  201 *  备    注：
//  202 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  203 char uart_pendchar (UARTn uratn, char *ch)
//  204 {
uart_pendchar:
        MOVS     R2,R0
//  205     uint32 i = 0;
        MOVS     R3,#+0
//  206 
//  207     while(++i < 0xffffff)                                         //时间限制
??uart_pendchar_0:
        ADDS     R3,R3,#+1
        MVNS     R0,#-16777216
        CMP      R3,R0
        BCS.N    ??uart_pendchar_1
//  208     {
//  209         if(UART_S1_REG(UARTx[uratn]) & UART_S1_RDRF_MASK)         //查询是否接受到数据
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LDR.N    R0,??DataTable7_14
        LDR      R0,[R0, R2, LSL #+2]
        LDRB     R0,[R0, #+4]
        LSLS     R0,R0,#+26
        BPL.N    ??uart_pendchar_0
//  210         {
//  211             *ch  =   UART_D_REG(UARTx[uratn]);                    //接受到8位的数据
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LDR.N    R0,??DataTable7_14
        LDR      R0,[R0, R2, LSL #+2]
        LDRB     R0,[R0, #+7]
        STRB     R0,[R1, #+0]
//  212             return  1;                                            //返回 1 表示接收成功
        MOVS     R0,#+1
        B.N      ??uart_pendchar_2
//  213         }
//  214     }
//  215 
//  216     *ch = 0;                                                     //接收不到，应该清空了接收区
??uart_pendchar_1:
        MOVS     R0,#+0
        STRB     R0,[R1, #+0]
//  217     return 0;                                                    //返回0表示接收失败
        MOVS     R0,#+0
??uart_pendchar_2:
        BX       LR               ;; return
//  218 }
//  219 
//  220 /*************************************************************************
//  221 *  函数名称：uart_pendchar
//  222 *  功能说明：有限时间等待串口接受一个字节
//  223 *  参数说明：UARTn       模块号（UART0~UART5）
//  224 *  函数返回：接收到的字节
//  225 *  修改时间：2012-1-20
//  226 *  备    注：
//  227 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  228 char uart_pendchar1 (UARTn uratn)
//  229 {
//  230    
//  231     
//  232       
//  233             return UART_D_REG(UARTx[uratn]);                    //接受到8位的数据 
uart_pendchar1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable7_14
        LDR      R0,[R1, R0, LSL #+2]
        LDRB     R0,[R0, #+7]
        BX       LR               ;; return
//  234            
//  235                                                                            
//  236 }
//  237 
//  238 
//  239 /*************************************************************************
//  240 *                             野火嵌入式开发工作室
//  241 *
//  242 *  函数名称：uart_pendstr
//  243 *  功能说明：有限时间等待串口接受字符串
//  244 *  参数说明：UARTn       模块号（UART0~UART5）
//  245 *  函数返回：接收到的字节
//  246 *  修改时间：2012-1-20
//  247 *  备    注：
//  248 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  249 char uart_pendstr (UARTn uratn, char *str)
//  250 {
uart_pendstr:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//  251     uint32 i = 0;
        MOVS     R6,#+0
//  252     while(uart_pendchar(uratn, str + i++));
??uart_pendstr_0:
        ADDS     R1,R6,R5
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       uart_pendchar
        ADDS     R6,R6,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??uart_pendstr_0
//  253 
//  254     return (i <= 1 ? 0 : 1);
        CMP      R6,#+2
        BCS.N    ??uart_pendstr_1
        MOVS     R0,#+0
        B.N      ??uart_pendstr_2
??uart_pendstr_1:
        MOVS     R0,#+1
??uart_pendstr_2:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4-R6,PC}       ;; return
//  255 }
//  256 
//  257 
//  258 
//  259 /*************************************************************************
//  260 *                             野火嵌入式开发工作室
//  261 *
//  262 *  函数名称：uart_putchar
//  263 *  功能说明：串口发送一个字节
//  264 *  参数说明：UARTn       模块号（UART0~UART5）
//  265 *  函数返回：无
//  266 *  修改时间：2012-1-20
//  267 *  备    注：官方例程，printf会调用这函数
//  268 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  269 void uart_putchar (UARTn uratn, char ch)
//  270 {
//  271     //等待发送缓冲区空
//  272     while(!(UART_S1_REG(UARTx[uratn]) & UART_S1_TDRE_MASK));
uart_putchar:
??uart_putchar_0:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R2,??DataTable7_14
        LDR      R2,[R2, R0, LSL #+2]
        LDRB     R2,[R2, #+4]
        LSLS     R2,R2,#+24
        BPL.N    ??uart_putchar_0
//  273     //发送数据
//  274     UART_D_REG(UARTx[uratn]) = (uint8)ch;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R2,??DataTable7_14
        LDR      R2,[R2, R0, LSL #+2]
        STRB     R1,[R2, #+7]
//  275 }
        BX       LR               ;; return
//  276 
//  277 
//  278 
//  279 /*************************************************************************
//  280 *                             野火嵌入式开发工作室
//  281 *
//  282 *  函数名称：uart_query
//  283 *  功能说明：查询是否接受到一个字节
//  284 *  参数说明：UARTn       模块号（UART0~UART5）
//  285 *  函数返回：1           接收到一个字节了
//  286 *            0           没有接收到
//  287 *  修改时间：2012-1-20
//  288 *  备    注：官方例程
//  289 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  290 int uart_query (UARTn uratn)
//  291 {
//  292     return (UART_S1_REG(UARTx[uratn]) & UART_S1_RDRF_MASK);
uart_query:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable7_14
        LDR      R0,[R1, R0, LSL #+2]
        LDRB     R0,[R0, #+4]
        ANDS     R0,R0,#0x20
        BX       LR               ;; return
//  293 }
//  294 
//  295 /*************************************************************************
//  296 *                             野火嵌入式开发工作室
//  297 *
//  298 *  函数名称：uart_sendN
//  299 *  功能说明：串行 发送指定len个字节长度字符串 （包括 NULL 也会发送）
//  300 *  参数说明：UARTn       模块号（UART0~UART5）
//  301 *            buff        发送缓冲区
//  302 *            len         发送长度
//  303 *  函数返回：无
//  304 *  修改时间：2012-1-20
//  305 *  备    注：
//  306 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  307 void uart_sendN (UARTn uratn, uint8 *buff, uint16 len)
//  308 {
uart_sendN:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//  309     int i;
//  310     for(i = 0; i < len; i++)
        MOVS     R0,#+0
        MOVS     R7,R0
??uart_sendN_0:
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R7,R6
        BGE.N    ??uart_sendN_1
//  311     {
//  312         uart_putchar(uratn, buff[i]);
        LDRB     R1,[R7, R5]
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       uart_putchar
//  313     }
        ADDS     R7,R7,#+1
        B.N      ??uart_sendN_0
//  314 }
??uart_sendN_1:
        POP      {R0,R4-R7,PC}    ;; return
//  315 
//  316 /*************************************************************************
//  317 *                             野火嵌入式开发工作室
//  318 *
//  319 *  函数名称：uart_sendStr
//  320 *  功能说明：串行发送字符串
//  321 *  参数说明：UARTn       模块号（UART0~UART5）
//  322 *            str         字符串
//  323 *  函数返回：无
//  324 *  修改时间：2012-1-20
//  325 *  备    注：
//  326 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  327 void uart_sendStr (UARTn uratn, const uint8 *str)
//  328 {
uart_sendStr:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//  329     while(*str)
??uart_sendStr_0:
        LDRB     R0,[R5, #+0]
        CMP      R0,#+0
        BEQ.N    ??uart_sendStr_1
//  330     {
//  331         uart_putchar(uratn, *str++);
        LDRB     R1,[R5, #+0]
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       uart_putchar
        ADDS     R5,R5,#+1
        B.N      ??uart_sendStr_0
//  332     }
//  333 }
??uart_sendStr_1:
        POP      {R0,R4,R5,PC}    ;; return
//  334 
//  335 /*************************************************************************
//  336 *                             野火嵌入式开发工作室
//  337 *
//  338 *  函数名称：uart_irq_EN
//  339 *  功能说明：开串口接收中断
//  340 *  参数说明：UARTn       模块号（UART0~UART5）
//  341 *  函数返回：无
//  342 *  修改时间：2012-1-20
//  343 *  备    注：
//  344 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  345 void uart_irq_EN(UARTn uratn)
//  346 {
uart_irq_EN:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  347     UART_C2_REG(UARTx[uratn]) |= UART_C2_RIE_MASK;    //开放UART接收中断
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable7_14
        LDR      R0,[R0, R4, LSL #+2]
        LDRB     R0,[R0, #+3]
        ORRS     R0,R0,#0x20
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R1,??DataTable7_14
        LDR      R1,[R1, R4, LSL #+2]
        STRB     R0,[R1, #+3]
//  348     enable_irq((uratn << 1) + 45);			        //开接收引脚的IRQ中断
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LSLS     R0,R4,#+1
        ADDS     R0,R0,#+45
        BL       enable_irq
//  349 }
        POP      {R4,PC}          ;; return
//  350 
//  351 
//  352 /*************************************************************************
//  353 *                             野火嵌入式开发工作室
//  354 *
//  355 *  函数名称：uart_irq_DIS
//  356 *  功能说明：关串口接收中断
//  357 *  参数说明：UARTn       模块号（UART0~UART5）
//  358 *  函数返回：无
//  359 *  修改时间：2012-1-20
//  360 *  备    注：
//  361 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  362 void uart_irq_DIS(UARTn uratn)
//  363 {
uart_irq_DIS:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  364     UART_C2_REG(UARTx[uratn]) &= ~UART_C2_RIE_MASK;   //禁止UART接收中断
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable7_14
        LDR      R0,[R0, R4, LSL #+2]
        LDRB     R0,[R0, #+3]
        ANDS     R0,R0,#0xDF
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R1,??DataTable7_14
        LDR      R1,[R1, R4, LSL #+2]
        STRB     R0,[R1, #+3]
//  365     disable_irq((uratn << 1) + 45);			        //关接收引脚的IRQ中断
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LSLS     R0,R4,#+1
        ADDS     R0,R0,#+45
        BL       disable_irq
//  366 }
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7:
        DC32     0x4004c018

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_1:
        DC32     0x4004c01c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_2:
        DC32     0x40048034

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_3:
        DC32     0x4004b00c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_4:
        DC32     0x4004b010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_5:
        DC32     0x4004c00c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_6:
        DC32     0x4004c008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_7:
        DC32     0x4004b040

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_8:
        DC32     0x4004b044

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_9:
        DC32     0x4004d064

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_10:
        DC32     0x4004d060

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_11:
        DC32     0x40048028

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_12:
        DC32     0x4004d024

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_13:
        DC32     0x4004d020

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_14:
        DC32     UARTx

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_15:
        DC32     0xaba9500

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_16:
        DC32     0x55d4a80

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  367 
// 
//  24 bytes in section .data
// 796 bytes in section .text
// 
// 796 bytes of CODE memory
//  24 bytes of DATA memory
//
//Errors: none
//Warnings: none
