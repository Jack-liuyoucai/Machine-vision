///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.1.7305/W32 for ARM       21/Jun/2014  20:40:01
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  L:\6.21\src\Sources\Drivers\uart\uart.c
//    Command line =  
//        L:\6.21\src\Sources\Drivers\uart\uart.c -D IAR -D TWR_K60N512 -D
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
//    List file    =  L:\6.21\FLASH\List\uart.s
//
///////////////////////////////////////////////////////////////////////////////

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

// L:\6.21\src\Sources\Drivers\uart\uart.c
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
//   29 *  修改时间：2012-1-20       uartclk_khz = CORE_CLOCK*10 * BUS_CLOCK;//时钟180MHz    //随时更改
//   30 *  备    注：在官方例程上修改
//   31 *************************************************************************/
//   32 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   33 void uart_init (UARTn uratn, uint32 baud)
//   34 {
uart_init:
        PUSH     {R4-R7}
//   35     register uint16 sbr, brfa;
//   36     uint8 temp;
//   37     uint32 sysclk;     //时钟
//   38 
//   39     
//   40     switch(uratn)
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
//   41     {
//   42     case UART0:
//   43         if(UART0_RX == PTA1)
//   44             PORTA_PCR1 = PORT_PCR_MUX(0x2);      //在PTA1上使能UART0_RXD
//   45         else if(UART0_RX == PTA15)
//   46             PORTA_PCR15 = PORT_PCR_MUX(0x3);     //在PTA15上使能UART0_RXD
//   47         else if(UART0_RX == PTB16)
//   48             PORTB_PCR16 = PORT_PCR_MUX(0x3);     //在PTB16上使能UART0_RXD
??uart_init_0:
        MOV      R6,#+768
        LDR.N    R7,??DataTable7  ;; 0x4004a040
        STR      R6,[R7, #+0]
//   49         else if(UART0_RX == PTD6)
//   50             PORTD_PCR6 = PORT_PCR_MUX(0x3);      //在PTD6上使能UART0_RXD
//   51 
//   52         if(UART0_TX == PTA2)
//   53             PORTA_PCR2 = PORT_PCR_MUX(0x2);     //在PTA2上使能UART0_RXD
//   54         else if(UART0_TX == PTA14)
//   55             PORTA_PCR14 = PORT_PCR_MUX(0x3);     //在PTA14上使能UART0_RXD
//   56         else if(UART0_TX == PTB17)
//   57             PORTB_PCR17 = PORT_PCR_MUX(0x3);     //在PTB17上使能UART0_RXD
        MOV      R6,#+768
        LDR.N    R7,??DataTable7_1  ;; 0x4004a044
        STR      R6,[R7, #+0]
//   58         else if(UART0_TX == PTD7)
//   59             PORTD_PCR7 = PORT_PCR_MUX(0x3);     //在PTD7上使能UART0_RXD
//   60 
//   61         SIM_SCGC4 |= SIM_SCGC4_UART0_MASK;      //使能 UARTn 时钟
        LDR.N    R6,??DataTable7_2  ;; 0x40048034
        LDR      R6,[R6, #+0]
        ORRS     R6,R6,#0x400
        LDR.N    R7,??DataTable7_2  ;; 0x40048034
        STR      R6,[R7, #+0]
//   62         break;
        B.N      ??uart_init_7
//   63 
//   64     case UART1:
//   65         if(UART1_RX == PTC3)
//   66             PORTC_PCR3 = PORT_PCR_MUX(0x3);     //在PTC3上使能UART1_RXD
??uart_init_2:
        MOV      R6,#+768
        LDR.N    R7,??DataTable7_3  ;; 0x4004b00c
        STR      R6,[R7, #+0]
//   67         else if(UART1_RX == PTE1)
//   68             PORTE_PCR1 = PORT_PCR_MUX(0x3);     //在PTE1上使能UART1_RXD
//   69         
//   70 
//   71         if(UART1_TX == PTC4)
//   72             PORTC_PCR4 = PORT_PCR_MUX(0x3);     //在PTC4上使能UART1_RXD
        MOV      R6,#+768
        LDR.N    R7,??DataTable7_4  ;; 0x4004b010
        STR      R6,[R7, #+0]
//   73         else if(UART1_TX == PTE0)
//   74             PORTE_PCR0 = PORT_PCR_MUX(0x3);     //在PTE0上使能UART1_RXD
//   75        
//   76 
//   77         SIM_SCGC4 |= SIM_SCGC4_UART1_MASK;
        LDR.N    R6,??DataTable7_2  ;; 0x40048034
        LDR      R6,[R6, #+0]
        ORRS     R6,R6,#0x800
        LDR.N    R7,??DataTable7_2  ;; 0x40048034
        STR      R6,[R7, #+0]
//   78         break;
        B.N      ??uart_init_7
//   79 
//   80     case UART2:
//   81         PORTD_PCR3 = PORT_PCR_MUX(0x3);         //在PTD3上使能UART2_TXD功能
??uart_init_1:
        MOV      R6,#+768
        LDR.N    R7,??DataTable7_5  ;; 0x4004c00c
        STR      R6,[R7, #+0]
//   82         PORTD_PCR2 = PORT_PCR_MUX(0x3);         //在PTD2上使能UART2_RXD
        MOV      R6,#+768
        LDR.N    R7,??DataTable7_6  ;; 0x4004c008
        STR      R6,[R7, #+0]
//   83         SIM_SCGC4 |= SIM_SCGC4_UART2_MASK;
        LDR.N    R6,??DataTable7_2  ;; 0x40048034
        LDR      R6,[R6, #+0]
        ORRS     R6,R6,#0x1000
        LDR.N    R7,??DataTable7_2  ;; 0x40048034
        STR      R6,[R7, #+0]
//   84         break;
        B.N      ??uart_init_7
//   85 
//   86     case UART3:
//   87         if(UART3_RX == PTB10)
//   88             PORTB_PCR10 = PORT_PCR_MUX(0x3);     //在PTB10上使能UART3_RXD
//   89         else if(UART3_RX == PTC16)
//   90             PORTC_PCR16 = PORT_PCR_MUX(0x3);     //在PTC16上使能UART3_RXD
??uart_init_4:
        MOV      R6,#+768
        LDR.N    R7,??DataTable7_7  ;; 0x4004b040
        STR      R6,[R7, #+0]
//   91         else if(UART3_RX == PTE5)
//   92             PORTE_PCR5 = PORT_PCR_MUX(0x3);      //在PTE5上使能UART3_RXD
//   93                 
//   94 
//   95         if(UART3_TX == PTB11)
//   96             PORTB_PCR11 = PORT_PCR_MUX(0x3);     //在PTB11上使能UART3_RXD
//   97         else if(UART3_TX == PTC17)
//   98             PORTC_PCR17 = PORT_PCR_MUX(0x3);     //在PTC17上使能UART3_RXD
        MOV      R6,#+768
        LDR.N    R7,??DataTable7_8  ;; 0x4004b044
        STR      R6,[R7, #+0]
//   99         else if(UART3_TX == PTE4)
//  100             PORTE_PCR4 = PORT_PCR_MUX(0x3);     //在PTE4上使能UART3_RXD
//  101      
//  102         SIM_SCGC4 |= SIM_SCGC4_UART3_MASK;
        LDR.N    R6,??DataTable7_2  ;; 0x40048034
        LDR      R6,[R6, #+0]
        ORRS     R6,R6,#0x2000
        LDR.N    R7,??DataTable7_2  ;; 0x40048034
        STR      R6,[R7, #+0]
//  103         break;
        B.N      ??uart_init_7
//  104 
//  105     case UART4:
//  106         if(UART4_RX == PTC14)
//  107             PORTC_PCR14 = PORT_PCR_MUX(0x3);     //在PTC14上使能UART4_RXD
//  108         else if(UART4_RX == PTE25)
//  109             PORTE_PCR25 = PORT_PCR_MUX(0x3);     //在PTE25上使能UART4_RXD
??uart_init_3:
        MOV      R6,#+768
        LDR.N    R7,??DataTable7_9  ;; 0x4004d064
        STR      R6,[R7, #+0]
//  110        
//  111         if(UART4_TX == PTC15)
//  112             PORTC_PCR15 = PORT_PCR_MUX(0x3);     //在PTC15上使能UART4_RXD
//  113         else if(UART4_TX == PTE24)
//  114             PORTE_PCR24 = PORT_PCR_MUX(0x3);     //在PTE24上使能UART4_RXD
        MOV      R6,#+768
        LDR.N    R7,??DataTable7_10  ;; 0x4004d060
        STR      R6,[R7, #+0]
//  115                      //设置管脚有误？
//  116 
//  117         SIM_SCGC1 |= SIM_SCGC1_UART4_MASK;
        LDR.N    R6,??DataTable7_11  ;; 0x40048028
        LDR      R6,[R6, #+0]
        ORRS     R6,R6,#0x400
        LDR.N    R7,??DataTable7_11  ;; 0x40048028
        STR      R6,[R7, #+0]
//  118         break;
        B.N      ??uart_init_7
//  119 
//  120     case UART5:
//  121         if(UART5_RX == PTD8)
//  122             PORTD_PCR8 = PORT_PCR_MUX(0x3);     //在PTD8上使能UART5_RXD
//  123         else if(UART5_RX == PTE9)
//  124             PORTE_PCR9 = PORT_PCR_MUX(0x3);     //在PTE9上使能UART5_RXD
??uart_init_5:
        MOV      R6,#+768
        LDR.N    R7,??DataTable7_12  ;; 0x4004d024
        STR      R6,[R7, #+0]
//  125         
//  126         if(UART5_TX == PTD9)
//  127             PORTD_PCR9 = PORT_PCR_MUX(0x3);     //在PTD9上使能UART5_RXD
//  128         else if(UART5_TX == PTE8)
//  129             PORTE_PCR8 = PORT_PCR_MUX(0x3);     //在PTE8上使能UART5_RXD
        MOV      R6,#+768
        LDR.N    R7,??DataTable7_13  ;; 0x4004d020
        STR      R6,[R7, #+0]
//  130         
//  131         SIM_SCGC1 |= SIM_SCGC1_UART5_MASK;
        LDR.N    R6,??DataTable7_11  ;; 0x40048028
        LDR      R6,[R6, #+0]
        ORRS     R6,R6,#0x800
        LDR.N    R7,??DataTable7_11  ;; 0x40048028
        STR      R6,[R7, #+0]
//  132         break;
        B.N      ??uart_init_7
//  133     default:
//  134         break;
//  135     }
//  136 
//  137 
//  138     //设置的时候，应该禁止发送接受
//  139     UART_C2_REG(UARTx[uratn]) &= ~(UART_C2_TE_MASK  | UART_C2_RE_MASK );
??uart_init_6:
??uart_init_7:
        LDR.N    R6,??DataTable7_14
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR      R6,[R6, R0, LSL #+2]
        LDRB     R6,[R6, #+3]
        ANDS     R6,R6,#0xF3
        LDR.N    R7,??DataTable7_14
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR      R7,[R7, R0, LSL #+2]
        STRB     R6,[R7, #+3]
//  140 
//  141     //配置成8位无校验模式
//  142     //设置 UART 数据格式、校验方式和停止位位数。通过设置 UART 模块控制寄存器 C1 实现；
//  143     UART_C1_REG(UARTx[uratn]) = 0;	// 全部直接使用默认设置就行，所以直接清0
        MOVS     R6,#+0
        LDR.N    R7,??DataTable7_14
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR      R7,[R7, R0, LSL #+2]
        STRB     R6,[R7, #+2]
//  144 
//  145     //计算波特率，串口0、1使用内核时钟，其它串口使用外设时钟
//  146     if ((uratn == UART0) | (uratn == UART1))
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
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        ORRS     R6,R7,R6
        CMP      R6,#+0
        BEQ.N    ??uart_init_12
//  147         sysclk = core_clk_khz * 1000;            //内核时钟//
        LDR.N    R6,??DataTable7_15  ;; 0xaba9500
        MOVS     R5,R6
        B.N      ??uart_init_13
//  148     else
//  149         sysclk = bus_clk_khz * 1000;  //外设时钟
??uart_init_12:
        LDR.N    R6,??DataTable7_16  ;; 0x55d4a80
        MOVS     R5,R6
//  150 
//  151     //设置 UART 数据通讯波特率。通过设置 UART 模块的波特率寄存器
//  152     sbr = (uint16)(sysclk / (baud << 4));
??uart_init_13:
        LSLS     R6,R1,#+4
        UDIV     R6,R5,R6
        MOVS     R2,R6
//  153 
//  154    
//  155     temp = UART_BDH_REG(UARTx[uratn]) & ~(UART_BDH_SBR(0x1F));
        LDR.N    R6,??DataTable7_14
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR      R6,[R6, R0, LSL #+2]
        LDRB     R6,[R6, #+0]
        ANDS     R6,R6,#0xE0
        MOVS     R4,R6
//  156 
//  157     UART_BDH_REG(UARTx[uratn]) = temp |  UART_BDH_SBR(((sbr & 0x1F00) >> 8));
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        LSRS     R6,R2,#+8
        ANDS     R6,R6,#0x1F
        ORRS     R6,R6,R4
        LDR.N    R7,??DataTable7_14
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR      R7,[R7, R0, LSL #+2]
        STRB     R6,[R7, #+0]
//  158     UART_BDL_REG(UARTx[uratn]) = (uint8)(sbr & UART_BDL_SBR_MASK);
        LDR.N    R6,??DataTable7_14
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR      R6,[R6, R0, LSL #+2]
        STRB     R2,[R6, #+1]
//  159 
//  160     //brfa = (((sysclk*32)/(baud * 16)) - (sbr * 32));
//  161     brfa = (((sysclk << 5) / (baud << 4)) - (sbr << 5));
        LSLS     R6,R5,#+5
        LSLS     R7,R1,#+4
        UDIV     R6,R6,R7
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        SUBS     R6,R6,R2, LSL #+5
        MOVS     R3,R6
//  162 
//  163   
//  164     temp = UART_C4_REG(UARTx[uratn]) & ~(UART_C4_BRFA(0x1F));
        LDR.N    R6,??DataTable7_14
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR      R6,[R6, R0, LSL #+2]
        LDRB     R6,[R6, #+10]
        ANDS     R6,R6,#0xE0
        MOVS     R4,R6
//  165 
//  166     UART_C4_REG(UARTx[uratn]) = temp |  UART_C4_BRFA(brfa);
        ANDS     R6,R3,#0x1F
        ORRS     R6,R6,R4
        LDR.N    R7,??DataTable7_14
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR      R7,[R7, R0, LSL #+2]
        STRB     R6,[R7, #+10]
//  167 
//  168    
//  169     UART_C2_REG(UARTx[uratn]) |= (UART_C2_TE_MASK | UART_C2_RE_MASK );
        LDR.N    R6,??DataTable7_14
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR      R6,[R6, R0, LSL #+2]
        LDRB     R6,[R6, #+3]
        ORRS     R6,R6,#0xC
        LDR.N    R7,??DataTable7_14
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR      R7,[R7, R0, LSL #+2]
        STRB     R6,[R7, #+3]
//  170 
//  171     //设置是否允许接收和发送中断。通过设置 UART 模块的 C2 寄存器的
//  172     //RIE 和 TIE 位实现。如果使能中断，必须首先实现中断服务程序；
//  173 }
        POP      {R4-R7}
        BX       LR               ;; return
//  174 
//  175 /*************************************************************************
//  176 *                             野火嵌入式开发工作室
//  177 *
//  178 *  函数名称：uart_getchar
//  179 *  功能说明：无限时间等待串口接受一个字节
//  180 *  参数说明：UARTn       模块号（UART0~UART5）
//  181 *  函数返回：接收到的字节
//  182 *  修改时间：2012-1-20
//  183 *  备    注：官方例程
//  184 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  185 char uart_getchar (UARTn uratn)
//  186 {
//  187     /* Wait until character has been received */
//  188     while (!(UART_S1_REG(UARTx[uratn]) & UART_S1_RDRF_MASK));
uart_getchar:
??uart_getchar_0:
        LDR.N    R1,??DataTable7_14
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR      R1,[R1, R0, LSL #+2]
        LDRB     R1,[R1, #+4]
        LSLS     R1,R1,#+26
        BPL.N    ??uart_getchar_0
//  189 
//  190     /* Return the 8-bit data from the receiver */
//  191     return UART_D_REG(UARTx[uratn]);
        LDR.N    R1,??DataTable7_14
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR      R0,[R1, R0, LSL #+2]
        LDRB     R0,[R0, #+7]
        BX       LR               ;; return
//  192 }
//  193 
//  194 /*************************************************************************
//  195 *                             野火嵌入式开发工作室
//  196 *
//  197 *  函数名称：uart_pendchar
//  198 *  功能说明：有限时间等待串口接受一个字节
//  199 *  参数说明：UARTn       模块号（UART0~UART5）
//  200 *  函数返回：接收到的字节
//  201 *  修改时间：2012-1-20
//  202 *  备    注：
//  203 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  204 char uart_pendchar (UARTn uratn, char *ch)
//  205 {
uart_pendchar:
        MOVS     R2,R0
//  206     uint32 i = 0;
        MOVS     R3,#+0
//  207 
//  208     while(++i < 0xffffff)                                         //时间限制
??uart_pendchar_0:
        ADDS     R3,R3,#+1
        MVNS     R0,#-16777216
        CMP      R3,R0
        BCS.N    ??uart_pendchar_1
//  209     {
//  210         if(UART_S1_REG(UARTx[uratn]) & UART_S1_RDRF_MASK)         //查询是否接受到数据
        LDR.N    R0,??DataTable7_14
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LDR      R0,[R0, R2, LSL #+2]
        LDRB     R0,[R0, #+4]
        LSLS     R0,R0,#+26
        BPL.N    ??uart_pendchar_0
//  211         {
//  212             *ch  =   UART_D_REG(UARTx[uratn]);                    //接受到8位的数据
        LDR.N    R0,??DataTable7_14
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LDR      R0,[R0, R2, LSL #+2]
        LDRB     R0,[R0, #+7]
        STRB     R0,[R1, #+0]
//  213             return  1;                                            //返回 1 表示接收成功
        MOVS     R0,#+1
        B.N      ??uart_pendchar_2
//  214         }
//  215     }
//  216 
//  217     *ch = 0;                                                     //接收不到，应该清空了接收区
??uart_pendchar_1:
        MOVS     R0,#+0
        STRB     R0,[R1, #+0]
//  218     return 0;                                                    //返回0表示接收失败
        MOVS     R0,#+0
??uart_pendchar_2:
        BX       LR               ;; return
//  219 }
//  220 
//  221 /*************************************************************************
//  222 *  函数名称：uart_pendchar
//  223 *  功能说明：有限时间等待串口接受一个字节
//  224 *  参数说明：UARTn       模块号（UART0~UART5）
//  225 *  函数返回：接收到的字节
//  226 *  修改时间：2012-1-20
//  227 *  备    注：
//  228 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  229 char uart_pendchar1 (UARTn uratn)
//  230 {
//  231    
//  232     
//  233       
//  234             return UART_D_REG(UARTx[uratn]);                    //接受到8位的数据 
uart_pendchar1:
        LDR.N    R1,??DataTable7_14
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR      R0,[R1, R0, LSL #+2]
        LDRB     R0,[R0, #+7]
        BX       LR               ;; return
//  235            
//  236                                                                            
//  237 }
//  238 
//  239 
//  240 /*************************************************************************
//  241 *                             野火嵌入式开发工作室
//  242 *
//  243 *  函数名称：uart_pendstr
//  244 *  功能说明：有限时间等待串口接受字符串
//  245 *  参数说明：UARTn       模块号（UART0~UART5）
//  246 *  函数返回：接收到的字节
//  247 *  修改时间：2012-1-20
//  248 *  备    注：
//  249 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  250 char uart_pendstr (UARTn uratn, char *str)
//  251 {
uart_pendstr:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//  252     uint32 i = 0;
        MOVS     R6,#+0
//  253     while(uart_pendchar(uratn, str + i++));
??uart_pendstr_0:
        ADDS     R1,R6,R5
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       uart_pendchar
        ADDS     R6,R6,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??uart_pendstr_0
//  254 
//  255     return (i <= 1 ? 0 : 1);
        CMP      R6,#+2
        BCS.N    ??uart_pendstr_1
        MOVS     R0,#+0
        B.N      ??uart_pendstr_2
??uart_pendstr_1:
        MOVS     R0,#+1
??uart_pendstr_2:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4-R6,PC}       ;; return
//  256 }
//  257 
//  258 
//  259 
//  260 /*************************************************************************
//  261 *                             野火嵌入式开发工作室
//  262 *
//  263 *  函数名称：uart_putchar
//  264 *  功能说明：串口发送一个字节
//  265 *  参数说明：UARTn       模块号（UART0~UART5）
//  266 *  函数返回：无
//  267 *  修改时间：2012-1-20
//  268 *  备    注：官方例程，printf会调用这函数
//  269 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  270 void uart_putchar (UARTn uratn, char ch)
//  271 {
//  272     //等待发送缓冲区空
//  273     while(!(UART_S1_REG(UARTx[uratn]) & UART_S1_TDRE_MASK));
uart_putchar:
??uart_putchar_0:
        LDR.N    R2,??DataTable7_14
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR      R2,[R2, R0, LSL #+2]
        LDRB     R2,[R2, #+4]
        LSLS     R2,R2,#+24
        BPL.N    ??uart_putchar_0
//  274     //发送数据
//  275     UART_D_REG(UARTx[uratn]) = (uint8)ch;
        LDR.N    R2,??DataTable7_14
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR      R2,[R2, R0, LSL #+2]
        STRB     R1,[R2, #+7]
//  276 }
        BX       LR               ;; return
//  277 
//  278 
//  279 
//  280 /*************************************************************************
//  281 *                             野火嵌入式开发工作室
//  282 *
//  283 *  函数名称：uart_query
//  284 *  功能说明：查询是否接受到一个字节
//  285 *  参数说明：UARTn       模块号（UART0~UART5）
//  286 *  函数返回：1           接收到一个字节了
//  287 *            0           没有接收到
//  288 *  修改时间：2012-1-20
//  289 *  备    注：官方例程
//  290 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  291 int uart_query (UARTn uratn)
//  292 {
//  293     return (UART_S1_REG(UARTx[uratn]) & UART_S1_RDRF_MASK);
uart_query:
        LDR.N    R1,??DataTable7_14
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR      R0,[R1, R0, LSL #+2]
        LDRB     R0,[R0, #+4]
        ANDS     R0,R0,#0x20
        BX       LR               ;; return
//  294 }
//  295 
//  296 /*************************************************************************
//  297 *                             野火嵌入式开发工作室
//  298 *
//  299 *  函数名称：uart_sendN
//  300 *  功能说明：串行 发送指定len个字节长度字符串 （包括 NULL 也会发送）
//  301 *  参数说明：UARTn       模块号（UART0~UART5）
//  302 *            buff        发送缓冲区
//  303 *            len         发送长度
//  304 *  函数返回：无
//  305 *  修改时间：2012-1-20
//  306 *  备    注：
//  307 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  308 void uart_sendN (UARTn uratn, uint8 *buff, uint16 len)
//  309 {
uart_sendN:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//  310     int i;
//  311     for(i = 0; i < len; i++)
        MOVS     R0,#+0
        MOVS     R7,R0
??uart_sendN_0:
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R7,R6
        BGE.N    ??uart_sendN_1
//  312     {
//  313         uart_putchar(uratn, buff[i]);
        LDRB     R1,[R7, R5]
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       uart_putchar
//  314     }
        ADDS     R7,R7,#+1
        B.N      ??uart_sendN_0
//  315 }
??uart_sendN_1:
        POP      {R0,R4-R7,PC}    ;; return
//  316 
//  317 /*************************************************************************
//  318 *                             野火嵌入式开发工作室
//  319 *
//  320 *  函数名称：uart_sendStr
//  321 *  功能说明：串行发送字符串
//  322 *  参数说明：UARTn       模块号（UART0~UART5）
//  323 *            str         字符串
//  324 *  函数返回：无
//  325 *  修改时间：2012-1-20
//  326 *  备    注：
//  327 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  328 void uart_sendStr (UARTn uratn, const uint8 *str)
//  329 {
uart_sendStr:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//  330     while(*str)
??uart_sendStr_0:
        LDRB     R0,[R5, #+0]
        CMP      R0,#+0
        BEQ.N    ??uart_sendStr_1
//  331     {
//  332         uart_putchar(uratn, *str++);
        LDRB     R1,[R5, #+0]
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       uart_putchar
        ADDS     R5,R5,#+1
        B.N      ??uart_sendStr_0
//  333     }
//  334 }
??uart_sendStr_1:
        POP      {R0,R4,R5,PC}    ;; return
//  335 
//  336 /*************************************************************************
//  337 *                             野火嵌入式开发工作室
//  338 *
//  339 *  函数名称：uart_irq_EN
//  340 *  功能说明：开串口接收中断
//  341 *  参数说明：UARTn       模块号（UART0~UART5）
//  342 *  函数返回：无
//  343 *  修改时间：2012-1-20
//  344 *  备    注：
//  345 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  346 void uart_irq_EN(UARTn uratn)
//  347 {
uart_irq_EN:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  348     UART_C2_REG(UARTx[uratn]) |= UART_C2_RIE_MASK;    //开放UART接收中断
        LDR.N    R0,??DataTable7_14
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        LDRB     R0,[R0, #+3]
        ORRS     R0,R0,#0x20
        LDR.N    R1,??DataTable7_14
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR      R1,[R1, R4, LSL #+2]
        STRB     R0,[R1, #+3]
//  349     enable_irq((uratn << 1) + 45);			        //开接收引脚的IRQ中断
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LSLS     R0,R4,#+1
        ADDS     R0,R0,#+45
        BL       enable_irq
//  350 }
        POP      {R4,PC}          ;; return
//  351 
//  352 
//  353 /*************************************************************************
//  354 *                             野火嵌入式开发工作室
//  355 *
//  356 *  函数名称：uart_irq_DIS
//  357 *  功能说明：关串口接收中断
//  358 *  参数说明：UARTn       模块号（UART0~UART5）
//  359 *  函数返回：无
//  360 *  修改时间：2012-1-20
//  361 *  备    注：
//  362 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  363 void uart_irq_DIS(UARTn uratn)
//  364 {
uart_irq_DIS:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  365     UART_C2_REG(UARTx[uratn]) &= ~UART_C2_RIE_MASK;   //禁止UART接收中断
        LDR.N    R0,??DataTable7_14
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        LDRB     R0,[R0, #+3]
        ANDS     R0,R0,#0xDF
        LDR.N    R1,??DataTable7_14
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR      R1,[R1, R4, LSL #+2]
        STRB     R0,[R1, #+3]
//  366     disable_irq((uratn << 1) + 45);			        //关接收引脚的IRQ中断
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LSLS     R0,R4,#+1
        ADDS     R0,R0,#+45
        BL       disable_irq
//  367 }
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7:
        DC32     0x4004a040

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_1:
        DC32     0x4004a044

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

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  368 
// 
//  24 bytes in section .data
// 798 bytes in section .text
// 
// 798 bytes of CODE memory
//  24 bytes of DATA memory
//
//Errors: none
//Warnings: none
