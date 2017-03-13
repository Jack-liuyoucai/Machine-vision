///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.1.7305/W32 for ARM       24/Jun/2014  19:43:55
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        D:\第九届飞思卡尔\备份\0623 -新板子\src\Sources\Drivers\dma\dma.c
//    Command line =  
//        "D:\第九届飞思卡尔\备份\0623 -新板子\src\Sources\Drivers\dma\dma.c"
//        -D IAR -D TWR_K60N512 -D DEBUG -lCN "D:\第九届飞思卡尔\备份\0623
//        -新板子\FLASH\List\" -lB "D:\第九届飞思卡尔\备份\0623
//        -新板子\FLASH\List\" -o "D:\第九届飞思卡尔\备份\0623
//        -新板子\FLASH\Obj\" --no_cse --no_unroll --no_inline --no_code_motion
//        --no_tbaa --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4 -e --fpu=None --dlib_config
//        D:\dowload\iark60\arm\INC\c\DLib_Config_Normal.h -I
//        "D:\第九届飞思卡尔\备份\0623 -新板子\src\Sources\Cpu\" -I
//        "D:\第九届飞思卡尔\备份\0623 -新板子\src\Sources\App\" -I
//        "D:\第九届飞思卡尔\备份\0623 -新板子\src\Sources\Drivers\adc\" -I
//        "D:\第九届飞思卡尔\备份\0623 -新板子\src\Sources\Drivers\delay\" -I
//        "D:\第九届飞思卡尔\备份\0623 -新板子\src\Sources\Drivers\FTM\" -I
//        "D:\第九届飞思卡尔\备份\0623 -新板子\src\Sources\Drivers\gpio\" -I
//        "D:\第九届飞思卡尔\备份\0623 -新板子\src\Sources\Drivers\lptmr\" -I
//        "D:\第九届飞思卡尔\备份\0623 -新板子\src\Sources\Drivers\mcg\" -I
//        "D:\第九届飞思卡尔\备份\0623 -新板子\src\Sources\Drivers\PIT\" -I
//        "D:\第九届飞思卡尔\备份\0623 -新板子\src\Sources\Drivers\uart\" -I
//        "D:\第九届飞思卡尔\备份\0623 -新板子\src\Sources\Drivers\oled\" -I
//        "D:\第九届飞思卡尔\备份\0623 -新板子\src\Sources\Drivers\spi\" -On
//        --use_c++_inline
//    List file    =  D:\第九届飞思卡尔\备份\0623 -新板子\FLASH\List\dma.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN GPIOx
        EXTERN PORTX
        EXTERN enable_irq

        PUBLIC DMA_PORTx2BUFF_Init
        PUBLIC DMA_count_Init
        PUBLIC DMA_count_get
        PUBLIC DMA_count_reset
        PUBLIC count_init

// D:\第九届飞思卡尔\备份\0623 -新板子\src\Sources\Drivers\dma\dma.c
//    1 #include "include.h"
//    2 
//    3 //u8 counttempaddr;
//    4 #define COUNTSADDR   0x4004000C  //(&counttempaddr)
//    5 #define COUNTDADDR   0x4004000C  //(&counttempaddr)
//    6 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    7 uint32 count_init[16];         //用来保存16个通道的初始化计数值
count_init:
        DS8 64
//    8 
//    9  ////////////////////////////////////////////////////////
//   10 
//   11  ////////////////////////////
//   12 /*************************************************************************
//   13 *                             野火嵌入式开发工作室
//   14 *
//   15 *  函数名称：DMA_PORTx2BUFF_Init
//   16 *  功能说明：DMA初始化，读取端口数据到内存
//   17 *  参数说明：DMA_CHn              通道号（DMA_CH0 ~ DMA_CH15）
//   18 *            SADDR                源地址( (void * )&PTx_BYTEn_IN 或 (void * )&PTx_WORDn_IN   )
//   19 *            DADDR                目的地址
//   20 *            PTxn                 触发端口
//   21 *            DMA_BYTEn            每次DMA传输字节数
//   22 *            count                一个主循环传输字节数
//   23 *            DMA_PORTx2BUFF_cfg   DMA传输配置
//   24 *  函数返回：无
//   25 *  修改时间：2012-2-20
//   26 *  备    注：
//   27 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   28 void DMA_PORTx2BUFF_Init(DMA_CHn CHn, void *SADDR, void *DADDR, PTxn ptxn, DMA_BYTEn byten, uint32 count, DMA_PORTx2BUFF_cfg cfg)
//   29 {
DMA_PORTx2BUFF_Init:
        PUSH     {R3-R11,LR}
        MOVS     R5,R0
        LDR      R0,[SP, #+40]
        LDR      R6,[SP, #+44]
        LDR      R4,[SP, #+48]
//   30     uint8 n, i, tmp;
//   31     
//   32     uint8 BYTEs = (byten == DMA_BYTE1 ? 1 : (byten == DMA_BYTE2 ? 2 : (byten == DMA_BYTE4 ? 4 : 16 ) ) ); //计算传输字节数
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??DMA_PORTx2BUFF_Init_0
        MOVS     R8,#+1
        B.N      ??DMA_PORTx2BUFF_Init_1
??DMA_PORTx2BUFF_Init_0:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+1
        BNE.N    ??DMA_PORTx2BUFF_Init_2
        MOVS     R8,#+2
        B.N      ??DMA_PORTx2BUFF_Init_3
??DMA_PORTx2BUFF_Init_2:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+2
        BNE.N    ??DMA_PORTx2BUFF_Init_4
        MOVS     R8,#+4
        B.N      ??DMA_PORTx2BUFF_Init_3
??DMA_PORTx2BUFF_Init_4:
        MOVS     R8,#+16
//   33 
//   34     /* 开启时钟 */
//   35     SIM_SCGC7 |= SIM_SCGC7_DMA_MASK;                        //打开DMA模块时钟
??DMA_PORTx2BUFF_Init_3:
??DMA_PORTx2BUFF_Init_1:
        LDR.W    R9,??DataTable3  ;; 0x40048040
        LDR      R9,[R9, #+0]
        ORRS     R9,R9,#0x2
        LDR.W    R10,??DataTable3  ;; 0x40048040
        STR      R9,[R10, #+0]
//   36     SIM_SCGC6 |= SIM_SCGC6_DMAMUX_MASK;                     //打开DMA多路复用器时钟
        LDR.W    R9,??DataTable3_1  ;; 0x4004803c
        LDR      R9,[R9, #+0]
        ORRS     R9,R9,#0x2
        LDR.W    R10,??DataTable3_1  ;; 0x4004803c
        STR      R9,[R10, #+0]
//   37 
//   38     /* 配置 DMA 通道 的 传输控制块 TCD ( Transfer Control Descriptor ) */
//   39     DMA_SADDR(CHn) =    (uint32)SADDR;                         // 设置  源地址
        LDR.W    R9,??DataTable3_2  ;; 0x40009000
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LSLS     R10,R5,#+5
        STR      R1,[R10, R9]
//   40     DMA_DADDR(CHn) =    (uint32)DADDR;                         // 设置目的地址
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LSLS     R9,R5,#+5
        ADD      R9,R9,#+1073741824
        ADDS     R9,R9,#+36864
        STR      R2,[R9, #+16]
//   41     DMA_SOFF(CHn)  =    0x00u;                              // 设置源地址偏移 = 0x0, 即不变
        MOVS     R9,#+0
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LSLS     R10,R5,#+5
        ADD      R10,R10,#+1073741824
        ADDS     R10,R10,#+36864
        STRH     R9,[R10, #+4]
//   42     DMA_DOFF(CHn)  =    BYTEs;                              // 每次传输后，目的地址加 BYTEs
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LSLS     R9,R5,#+5
        ADD      R9,R9,#+1073741824
        ADDS     R9,R9,#+36864
        STRH     R8,[R9, #+20]
//   43 
//   44     DMA_ATTR(CHn)  =    (0
//   45                          | DMA_ATTR_SMOD(0x0)                // 源地址模数禁止  Source address modulo feature is disabled
//   46                          | DMA_ATTR_SSIZE(byten)             // 源数据位宽 ：DMA_BYTEn  。    SSIZE = 0 -> 8-bit ，SSIZE = 1 -> 16-bit ，SSIZE = 2 -> 32-bit ，SSIZE = 4 -> 16-byte
//   47                          | DMA_ATTR_DMOD(0x0)                // 目标地址模数禁止
//   48                          | DMA_ATTR_DSIZE(byten)             // 目标数据位宽 ：DMA_BYTEn  。  设置参考  SSIZE
//   49                         );
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R9,R0,#+8
        ANDS     R9,R9,#0x700
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ANDS     R10,R0,#0x7
        ORRS     R9,R10,R9
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LSLS     R10,R5,#+5
        ADD      R10,R10,#+1073741824
        ADDS     R10,R10,#+36864
        STRH     R9,[R10, #+6]
//   50 
//   51     DMA_CITER_ELINKNO(CHn)  = DMA_CITER_ELINKNO_CITER(count); //当前主循环次数
        MOV      R9,R6
        LSLS     R9,R9,#+17       ;; ZeroExtS R9,R9,#+17,#+17
        LSRS     R9,R9,#+17
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LSLS     R10,R5,#+5
        ADD      R10,R10,#+1073741824
        ADDS     R10,R10,#+36864
        STRH     R9,[R10, #+22]
//   52     DMA_BITER_ELINKNO(CHn)  = DMA_BITER_ELINKYES_BITER(count);//起始主循环次数
        MOV      R9,R6
        LSLS     R9,R9,#+23       ;; ZeroExtS R9,R9,#+23,#+23
        LSRS     R9,R9,#+23
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LSLS     R10,R5,#+5
        ADD      R10,R10,#+1073741824
        ADDS     R10,R10,#+36864
        STRH     R9,[R10, #+30]
//   53 
//   54 
//   55     DMA_CR &= ~DMA_CR_EMLM_MASK;                            // CR[EMLM] = 0
        LDR.W    R9,??DataTable3_3  ;; 0x40008000
        LDR      R9,[R9, #+0]
        BICS     R9,R9,#0x80
        LDR.W    R10,??DataTable3_3  ;; 0x40008000
        STR      R9,[R10, #+0]
//   56 
//   57     //当CR[EMLM] = 0 时:
//   58     DMA_NBYTES_MLNO(CHn) =   DMA_NBYTES_MLNO_NBYTES(BYTEs); // 通道每次传输字节数，这里设置为BYTEs个字节。注：值为0表示传输4GB */
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LSLS     R9,R5,#+5
        ADD      R9,R9,#+1073741824
        ADDS     R9,R9,#+36864
        STR      R8,[R9, #+8]
//   59 
//   60 
//   61     /* 配置 DMA 传输结束后的操作 */
//   62     DMA_SLAST(CHn)      =   0;                              //调整  源地址的附加值,主循环结束后恢复  源地址
        MOVS     R9,#+0
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LSLS     R10,R5,#+5
        ADD      R10,R10,#+1073741824
        ADDS     R10,R10,#+36864
        STR      R9,[R10, #+12]
//   63     DMA_DLAST_SGA(CHn)  =   (uint32)( (cfg & 0x20) == 0 ? (-count)  : 0 ); //调整目的地址的附加值,主循环结束后恢复目的地址或者保持地址
        LSLS     R9,R4,#+26
        BMI.N    ??DMA_PORTx2BUFF_Init_5
        RSBS     R9,R6,#+0
        B.N      ??DMA_PORTx2BUFF_Init_6
??DMA_PORTx2BUFF_Init_5:
        MOVS     R9,#+0
??DMA_PORTx2BUFF_Init_6:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LSLS     R10,R5,#+5
        ADD      R10,R10,#+1073741824
        ADDS     R10,R10,#+36864
        STR      R9,[R10, #+24]
//   64     DMA_CSR(CHn)        =   (0
//   65                              | DMA_CSR_DREQ_MASK            //主循环结束后停止硬件请求
//   66                              | DMA_CSR_INTMAJOR_MASK        //主循环结束后产生中断
//   67                             );
        MOVS     R9,#+10
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LSLS     R10,R5,#+5
        ADD      R10,R10,#+1073741824
        ADDS     R10,R10,#+36864
        STRH     R9,[R10, #+28]
//   68 
//   69     /* 配置 DMA 触发源 */
//   70     DMAMUX_CHCFG_REG(DMAMUX_BASE_PTR, CHn) = (0
//   71             | DMAMUX_CHCFG_ENBL_MASK                        /* Enable routing of DMA request */
//   72             //| DMAMUX_CHCFG_TRIG_MASK                        /* Trigger Mode: Periodic   PIT周期触发传输模式   通道1对应PIT1，必须使能PIT1，且配置相应的PIT定时触发 */
//   73             | DMAMUX_CHCFG_SOURCE((ptxn >> 5) + DMA_Port_A) /* 通道触发传输源:     */
//   74                                              );
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LSRS     R9,R3,#+5
        ADDS     R9,R9,#+49
        ORRS     R9,R9,#0x80
        LDR.W    R10,??DataTable3_4  ;; 0x40021000
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        STRB     R9,[R5, R10]
//   75 
//   76     SIM_SCGC5 |= (SIM_SCGC5_PORTA_MASK << (ptxn>>5));                                                               //开启PORTx端口
        LDR.W    R9,??DataTable3_5  ;; 0x40048038
        LDR      R9,[R9, #+0]
        MOV      R10,#+512
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LSRS     R11,R3,#+5
        LSLS     R10,R10,R11
        ORRS     R9,R10,R9
        LDR.W    R10,??DataTable3_5  ;; 0x40048038
        STR      R9,[R10, #+0]
//   77     GPIO_PDDR_REG(GPIOx[(ptxn>>5)]) &= ~(1 << (ptxn & 0x1f));                                                       //设置端口方向为输入
        LDR.W    R9,??DataTable3_6
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        ASRS     R10,R3,#+5
        LDR      R9,[R9, R10, LSL #+2]
        STR      R9,[SP, #+0]
        LDR.W    R9,??DataTable3_6
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        ASRS     R10,R3,#+5
        LDR      R9,[R9, R10, LSL #+2]
        LDR      R9,[R9, #+20]
        MOVS     R11,#+1
        ANDS     R10,R3,#0x1F
        LSLS     R10,R11,R10
        BICS     R10,R9,R10
        LDR      R9,[SP, #+0]
        STR      R10,[R9, #+20]
//   78     PORT_PCR_REG(PORTX[(ptxn>>5)], (ptxn & 0x1F)) = ( 0
//   79             | PORT_PCR_MUX(1)               // 复用GPIO
//   80             | PORT_PCR_IRQC(cfg & 0x03 )    // 确定触发模式
//   81             | ((cfg & 0xc0 ) >> 6)          // 开启上拉或下拉电阻，或者没有
//   82                                                     );
        LDR.W    R9,??DataTable3_7
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        ASRS     R10,R3,#+5
        LDR      R9,[R9, R10, LSL #+2]
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        ANDS     R10,R3,#0x1F
        STR      R10,[SP, #+0]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ANDS     R11,R4,#0x3
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LSRS     R10,R4,#+6
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        ORRS     R10,R10,R11, LSL #+16
        ORRS     R10,R10,#0x100
        LDR      R11,[SP, #+0]
        STR      R10,[R9, R11, LSL #+2]
//   83     GPIO_PDDR_REG(GPIOx[(ptxn>>5)]) &= ~(1 << (ptxn && 0x1F));                                                      //输入模式
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        CMP      R3,#+0
        BEQ.N    ??DMA_PORTx2BUFF_Init_7
        MOVS     R11,#+1
        B.N      ??DMA_PORTx2BUFF_Init_8
??DMA_PORTx2BUFF_Init_7:
        MOVS     R11,#+0
??DMA_PORTx2BUFF_Init_8:
        LDR.W    R9,??DataTable3_6
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        ASRS     R10,R3,#+5
        LDR      R9,[R9, R10, LSL #+2]
        STR      R9,[SP, #+0]
        LDR.W    R10,??DataTable3_6
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        ASRS     R9,R3,#+5
        LDR      R9,[R10, R9, LSL #+2]
        LDR      R9,[R9, #+20]
        MOVS     R10,#+1
        LSLS     R10,R10,R11
        BICS     R10,R9,R10
        LDR      R9,[SP, #+0]
        STR      R10,[R9, #+20]
//   84 
//   85     /*  配置输入源   */
//   86     SIM_SCGC5 |= (SIM_SCGC5_PORTA_MASK << ((((uint32)SADDR) & 0x1ff)>>6));             //开启PORTx端口
        LDR.W    R9,??DataTable3_5  ;; 0x40048038
        LDR      R9,[R9, #+0]
        MOV      R10,#+512
        LSRS     R11,R1,#+6
        ANDS     R11,R11,#0x7
        LSLS     R10,R10,R11
        ORRS     R9,R10,R9
        LDR.W    R10,??DataTable3_5  ;; 0x40048038
        STR      R9,[R10, #+0]
//   87     switch(byten)
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??DMA_PORTx2BUFF_Init_9
        CMP      R0,#+2
        BEQ.N    ??DMA_PORTx2BUFF_Init_10
        BCC.N    ??DMA_PORTx2BUFF_Init_11
        B.N      ??DMA_PORTx2BUFF_Init_12
//   88     {
//   89     case DMA_BYTE1:
//   90         *((uint8 *)((uint32)SADDR + 4)) = 0;   //设置为输入方向。为什么加4？PDIR地址加4后，就变成对应的PDDR地址
??DMA_PORTx2BUFF_Init_9:
        MOVS     R9,#+0
        STRB     R9,[R1, #+4]
//   91         break;
        B.N      ??DMA_PORTx2BUFF_Init_13
//   92     case DMA_BYTE2:
//   93         *((uint16 *)((uint32)SADDR + 4)) = 0;
??DMA_PORTx2BUFF_Init_11:
        MOVS     R9,#+0
        STRH     R9,[R1, #+4]
//   94         break;
        B.N      ??DMA_PORTx2BUFF_Init_13
//   95     case DMA_BYTE4:
//   96         *((uint32 *)((uint32)SADDR + 4)) = 0;
??DMA_PORTx2BUFF_Init_10:
        MOVS     R9,#+0
        STR      R9,[R1, #+4]
//   97         break;
        B.N      ??DMA_PORTx2BUFF_Init_13
//   98     default:
//   99         
//  100         break;
//  101     }
//  102 
//  103     /*  输入源管脚选择功能脚  */
//  104     n =(uint8)(((uint32)SADDR - ((uint32)(&PTA_BYTE0_IN))) & 0x3f);         //最小的引脚号
??DMA_PORTx2BUFF_Init_12:
??DMA_PORTx2BUFF_Init_13:
        MOV      R9,R1
        SUBS     R9,R9,#+16
        ANDS     R9,R9,#0x3F
        MOV      R7,R9
//  105     tmp = n + (BYTEs << 3);                                         //最大的引脚号
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        LSLS     R9,R8,#+3
        UXTAB    R9,R9,R7
        MOV      LR,R9
//  106     for(i = n; i < tmp; i++)
        MOV      R12,R7
??DMA_PORTx2BUFF_Init_14:
        UXTB     R12,R12          ;; ZeroExt  R12,R12,#+24,#+24
        UXTB     LR,LR            ;; ZeroExt  LR,LR,#+24,#+24
        CMP      R12,LR
        BCS.N    ??DMA_PORTx2BUFF_Init_15
//  107     {
//  108         PORT_PCR_REG(PORTX[   ((((uint32)SADDR)&0x1ff)>>6)    ], i) = (0
//  109                 | PORT_PCR_MUX(1)
//  110                 | GPI_DOWN             //输入源应该下拉，默认读取到的是0
//  111                                                                    );
        LDR.W    R9,??DataTable3_7
        LSRS     R10,R1,#+6
        ANDS     R10,R10,#0x7
        LDR      R9,[R9, R10, LSL #+2]
        UXTB     R12,R12          ;; ZeroExt  R12,R12,#+24,#+24
        MOV      R10,#+258
        STR      R10,[R9, R12, LSL #+2]
//  112     }
        ADDS     R12,R12,#+1
        B.N      ??DMA_PORTx2BUFF_Init_14
//  113 
//  114     /* 开启中断 */
//  115     //DMA_EN(CHn);                                    //使能通道CHn 硬件请求
//  116     //DMA_IRQ_EN(CHn);                                //允许DMA通道传输
//  117 }
??DMA_PORTx2BUFF_Init_15:
        POP      {R0,R4-R11,PC}   ;; return
//  118 
//  119 
//  120 
//  121 
//  122 
//  123 /*************************************************************************
//  124 *                             野火嵌入式开发工作室
//  125 *
//  126 *  函数名称：DMA_count_Init
//  127 *  功能说明：DMA累加计数初始化
//  128 *  参数说明：DMA_CHn              通道号（DMA_CH0 ~ DMA_CH15）
//  129 *            PTxn                 触发端口
//  130 *            count                累加计数中断值
//  131 *            DMA_Count_cfg        DMA传输配置
//  132 *  函数返回：无
//  133 *  修改时间：2012-1-20
//  134 *  备    注：
//  135 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  136 void DMA_count_Init(DMA_CHn CHn, PTxn ptxn, uint32 count, DMA_Count_cfg cfg)
//  137 {
DMA_count_Init:
        PUSH     {R3-R9,LR}
        MOVS     R5,R0
        MOVS     R6,R1
        MOVS     R7,R2
        MOV      R8,R3
//  138     uint8 byten = DMA_BYTE1;
        MOVS     R9,#+0
//  139     uint8 BYTEs = (byten == DMA_BYTE1 ? 1 : (byten == DMA_BYTE2 ? 2 : (byten == DMA_BYTE4 ? 4 : 16 ) ) ); //计算传输字节数
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        CMP      R9,#+0
        BNE.N    ??DMA_count_Init_0
        MOVS     R4,#+1
        B.N      ??DMA_count_Init_1
??DMA_count_Init_0:
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        CMP      R9,#+1
        BNE.N    ??DMA_count_Init_2
        MOVS     R4,#+2
        B.N      ??DMA_count_Init_3
??DMA_count_Init_2:
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        CMP      R9,#+2
        BNE.N    ??DMA_count_Init_4
        MOVS     R4,#+4
        B.N      ??DMA_count_Init_3
??DMA_count_Init_4:
        MOVS     R4,#+16
//  140     if(count > 0x7FFF )count = 0x7FFF;
??DMA_count_Init_3:
??DMA_count_Init_1:
        CMP      R7,#+32768
        BCC.N    ??DMA_count_Init_5
        MOVW     R0,#+32767
        MOVS     R7,R0
//  141     count_init[CHn] = count;
??DMA_count_Init_5:
        LDR.N    R0,??DataTable3_8
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        STR      R7,[R0, R5, LSL #+2]
//  142 
//  143     /* 开启时钟 */
//  144     SIM_SCGC7 |= SIM_SCGC7_DMA_MASK;                        //打开DMA模块时钟
        LDR.N    R0,??DataTable3  ;; 0x40048040
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2
        LDR.N    R1,??DataTable3  ;; 0x40048040
        STR      R0,[R1, #+0]
//  145     SIM_SCGC6 |= SIM_SCGC6_DMAMUX_MASK;                     //打开DMA多路复用器时钟
        LDR.N    R0,??DataTable3_1  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2
        LDR.N    R1,??DataTable3_1  ;; 0x4004803c
        STR      R0,[R1, #+0]
//  146 
//  147     /* 配置 DMA 通道 的 传输控制块 TCD ( Transfer Control Descriptor ) */
//  148     DMA_SADDR(CHn) =    (uint32)COUNTSADDR;                    // 设置  源地址
        LDR.N    R0,??DataTable3_9  ;; 0x4004000c
        LDR.N    R1,??DataTable3_2  ;; 0x40009000
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LSLS     R2,R5,#+5
        STR      R0,[R2, R1]
//  149     DMA_DADDR(CHn) =    (uint32)COUNTDADDR;                    // 设置目的地址
        LDR.N    R0,??DataTable3_9  ;; 0x4004000c
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LSLS     R1,R5,#+5
        ADD      R1,R1,#+1073741824
        ADDS     R1,R1,#+36864
        STR      R0,[R1, #+16]
//  150     DMA_SOFF(CHn)  =    0;                                  // 设置源地址不变
        MOVS     R0,#+0
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LSLS     R1,R5,#+5
        ADD      R1,R1,#+1073741824
        ADDS     R1,R1,#+36864
        STRH     R0,[R1, #+4]
//  151     DMA_DOFF(CHn)  =    0;                                  // 每次传输后，目的地址不变
        MOVS     R0,#+0
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LSLS     R1,R5,#+5
        ADD      R1,R1,#+1073741824
        ADDS     R1,R1,#+36864
        STRH     R0,[R1, #+20]
//  152 
//  153     DMA_ATTR(CHn)  =    (0
//  154                          | DMA_ATTR_SMOD(0x0)                // 源地址模数禁止  Source address modulo feature is disabled
//  155                          | DMA_ATTR_SSIZE(byten)             // 源数据位宽 ：DMA_BYTEn  。    SSIZE = 0 -> 8-bit ，SSIZE = 1 -> 16-bit ，SSIZE = 2 -> 32-bit ，SSIZE = 4 -> 16-byte
//  156                          | DMA_ATTR_DMOD(0x0)                // 目标地址模数禁止
//  157                          | DMA_ATTR_DSIZE(byten)             // 目标数据位宽 ：DMA_BYTEn  。  设置参考  SSIZE
//  158                         );
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        LSLS     R0,R9,#+8
        ANDS     R0,R0,#0x700
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        ANDS     R1,R9,#0x7
        ORRS     R0,R1,R0
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LSLS     R1,R5,#+5
        ADD      R1,R1,#+1073741824
        ADDS     R1,R1,#+36864
        STRH     R0,[R1, #+6]
//  159 
//  160     DMA_CITER_ELINKNO(CHn)  = DMA_CITER_ELINKNO_CITER(count); //当前主循环次数
        MOVS     R0,R7
        LSLS     R0,R0,#+17       ;; ZeroExtS R0,R0,#+17,#+17
        LSRS     R0,R0,#+17
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LSLS     R1,R5,#+5
        ADD      R1,R1,#+1073741824
        ADDS     R1,R1,#+36864
        STRH     R0,[R1, #+22]
//  161     DMA_BITER_ELINKNO(CHn)  = DMA_BITER_ELINKYES_BITER(count);//起始主循环次数
        MOVS     R0,R7
        LSLS     R0,R0,#+23       ;; ZeroExtS R0,R0,#+23,#+23
        LSRS     R0,R0,#+23
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LSLS     R1,R5,#+5
        ADD      R1,R1,#+1073741824
        ADDS     R1,R1,#+36864
        STRH     R0,[R1, #+30]
//  162 
//  163     DMA_CR &= ~DMA_CR_EMLM_MASK;                            // CR[EMLM] = 0
        LDR.N    R0,??DataTable3_3  ;; 0x40008000
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x80
        LDR.N    R1,??DataTable3_3  ;; 0x40008000
        STR      R0,[R1, #+0]
//  164 
//  165     DMA_NBYTES_MLNO(CHn) =   DMA_NBYTES_MLNO_NBYTES(BYTEs); // 通道每次传输字节数，这里设置为BYTEs个字节。注：值为0表示传输4GB */
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LSLS     R0,R5,#+5
        ADD      R0,R0,#+1073741824
        ADDS     R0,R0,#+36864
        STR      R4,[R0, #+8]
//  166 
//  167     /* 配置 DMA 传输结束后的操作 */
//  168     DMA_SLAST(CHn)      =   -count;                              //调整  源地址的附加值,主循环结束后恢复  源地址
        RSBS     R0,R7,#+0
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LSLS     R1,R5,#+5
        ADD      R1,R1,#+1073741824
        ADDS     R1,R1,#+36864
        STR      R0,[R1, #+12]
//  169     DMA_DLAST_SGA(CHn)  =   0;                                  //调整目的地址的附加值,主循环结束后恢复目的地址或者保持地址
        MOVS     R0,#+0
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LSLS     R1,R5,#+5
        ADD      R1,R1,#+1073741824
        ADDS     R1,R1,#+36864
        STR      R0,[R1, #+24]
//  170     DMA_CSR(CHn)        =   (0
//  171                              | DMA_CSR_DREQ_MASK            //主循环结束后停止硬件请求
//  172                              | DMA_CSR_INTMAJOR_MASK        //主循环结束后产生中断
//  173                             );
        MOVS     R0,#+10
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LSLS     R1,R5,#+5
        ADD      R1,R1,#+1073741824
        ADDS     R1,R1,#+36864
        STRH     R0,[R1, #+28]
//  174 
//  175     /* 配置 DMA 触发源 */
//  176     DMAMUX_CHCFG_REG(DMAMUX_BASE_PTR, CHn) = (0
//  177             | DMAMUX_CHCFG_ENBL_MASK                        /* Enable routing of DMA request */
//  178             | DMAMUX_CHCFG_SOURCE((ptxn >> 5) + DMA_Port_A) /* 通道触发传输源:     */
//  179                                              );
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LSRS     R0,R6,#+5
        ADDS     R0,R0,#+49
        ORRS     R0,R0,#0x80
        LDR.N    R1,??DataTable3_4  ;; 0x40021000
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        STRB     R0,[R5, R1]
//  180 
//  181     SIM_SCGC5 |= (SIM_SCGC5_PORTA_MASK << (ptxn>>5));                                                               //开启PORTx端口
        LDR.N    R0,??DataTable3_5  ;; 0x40048038
        LDR      R0,[R0, #+0]
        MOV      R1,#+512
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LSRS     R2,R6,#+5
        LSLS     R1,R1,R2
        ORRS     R0,R1,R0
        LDR.N    R1,??DataTable3_5  ;; 0x40048038
        STR      R0,[R1, #+0]
//  182     GPIO_PDDR_REG(GPIOx[(ptxn>>5)]) &= ~(1 << (ptxn & 0x1f));                                                       //设置端口方向为输入
        LDR.N    R0,??DataTable3_6
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        ASRS     R1,R6,#+5
        LDR      R0,[R0, R1, LSL #+2]
        LDR.N    R1,??DataTable3_6
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        ASRS     R2,R6,#+5
        LDR      R1,[R1, R2, LSL #+2]
        LDR      R1,[R1, #+20]
        MOVS     R2,#+1
        ANDS     R3,R6,#0x1F
        LSLS     R2,R2,R3
        BICS     R1,R1,R2
        STR      R1,[R0, #+20]
//  183     PORT_PCR_REG(PORTX[(ptxn>>5)], (ptxn & 0x1F)) = ( 0
//  184             | PORT_PCR_MUX(1)               // 复用GPIO
//  185             | PORT_PCR_IRQC(cfg & 0x03 )    // 确定触发模式
//  186             | ((cfg & 0xc0 ) >> 6)          // 开启上拉或下拉电阻，或者没有
//  187                                                     );
        LDR.N    R0,??DataTable3_7
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        ASRS     R1,R6,#+5
        LDR      R0,[R0, R1, LSL #+2]
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        ANDS     R1,R6,#0x1F
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        ANDS     R2,R8,#0x3
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        LSRS     R3,R8,#+6
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        ORRS     R2,R3,R2, LSL #+16
        ORRS     R2,R2,#0x100
        STR      R2,[R0, R1, LSL #+2]
//  188     GPIO_PDDR_REG(GPIOx[(ptxn>>5)]) &= ~(1 << (ptxn && 0x1F));                                                      //输入模式
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BEQ.N    ??DMA_count_Init_6
        MOVS     R0,#+1
        B.N      ??DMA_count_Init_7
??DMA_count_Init_6:
        MOVS     R0,#+0
??DMA_count_Init_7:
        LDR.N    R1,??DataTable3_6
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        ASRS     R2,R6,#+5
        LDR      R1,[R1, R2, LSL #+2]
        LDR.N    R2,??DataTable3_6
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        ASRS     R3,R6,#+5
        LDR      R2,[R2, R3, LSL #+2]
        LDR      R2,[R2, #+20]
        MOVS     R3,#+1
        LSLS     R0,R3,R0
        BICS     R0,R2,R0
        STR      R0,[R1, #+20]
//  189 
//  190     /* 开启中断 */
//  191     DMA_EN(CHn);                                    //使能通道CHn 硬件请求
        LDR.N    R0,??DataTable3_10  ;; 0x4000800c
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1
        LSLS     R1,R1,R5
        ORRS     R0,R1,R0
        LDR.N    R1,??DataTable3_10  ;; 0x4000800c
        STR      R0,[R1, #+0]
//  192     DMA_IRQ_EN(CHn);                                //允许DMA通道传输
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        MOVS     R0,R5
        BL       enable_irq
//  193 }
        POP      {R0,R4-R9,PC}    ;; return
//  194 
//  195 /*************************************************************************
//  196 *                             野火嵌入式开发工作室
//  197 *
//  198 *  函数名称：DMA_count_get
//  199 *  功能说明：返回累加计数值
//  200 *  参数说明：DMA_CHn              通道号（DMA_CH0 ~ DMA_CH15）
//  201 *  函数返回：累加计数值
//  202 *  修改时间：2012-3-320
//  203 *  备    注：
//  204 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  205 uint32 DMA_count_get(DMA_CHn CHn)
//  206 {
DMA_count_get:
        MOVS     R1,R0
//  207     uint32 temp =  count_init[CHn] - DMA_CITER_ELINKNO(CHn)  ;
        LDR.N    R0,??DataTable3_8
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR      R0,[R0, R1, LSL #+2]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSLS     R2,R1,#+5
        ADD      R2,R2,#+1073741824
        ADDS     R2,R2,#+36864
        LDRH     R2,[R2, #+22]
        SUBS     R0,R0,R2
//  208     return temp;
        BX       LR               ;; return
//  209 }
//  210 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  211 void DMA_count_reset(DMA_CHn CHn)
//  212 {
//  213     DMA_CITER_ELINKNO(CHn) = count_init[CHn] ;
DMA_count_reset:
        LDR.N    R1,??DataTable3_8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR      R1,[R1, R0, LSL #+2]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R2,R0,#+5
        ADD      R2,R2,#+1073741824
        ADDS     R2,R2,#+36864
        STRH     R1,[R2, #+22]
//  214 }
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3:
        DC32     0x40048040

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_1:
        DC32     0x4004803c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_2:
        DC32     0x40009000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_3:
        DC32     0x40008000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_4:
        DC32     0x40021000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_5:
        DC32     0x40048038

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_6:
        DC32     GPIOx

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_7:
        DC32     PORTX

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_8:
        DC32     count_init

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_9:
        DC32     0x4004000c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_10:
        DC32     0x4000800c

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  215 
//  216 
// 
//    64 bytes in section .bss
// 1 384 bytes in section .text
// 
// 1 384 bytes of CODE memory
//    64 bytes of DATA memory
//
//Errors: none
//Warnings: none
