/******************** (C) COPYRIGHT 2011 野火嵌入式开发工作室 ********************
 * 文件名       ：uart.h
 * 描述         ：串口相关函数的头文件
 * 备注         ：
 *
 * 实验平台     ：野火kinetis开发板
 * 库版本       ：
 * 嵌入系统     ：
 *
 * 作者         ：
 * 淘宝店       ：http://firestm32.taobao.com
 * 技术支持论坛 ：http://www.ourdev.cn/bbs/bbs_list.jsp?bbs_id=1008
**********************************************************************************/
#include"gpio.h"
#ifndef __UART_H__
#define __UART_H__

/**********************************  UART   ***************************************/

//      模块通道    端口          可选范围                          建议
#define UART0_RX    PTB16        //PTA1、PTA15、PTB16、PTD6          PTA1不要用（与Jtag冲突）
#define UART0_TX    PTB17        //PTA2、PTA14、PTB17、PTD7          PTA2不要用（与Jtag冲突）

#define UART1_RX    PTC3        //PTC3、PTE1
#define UART1_TX    PTC4        //PTC4、PTE0

#define UART2_RX    PTD2        //PTD2
#define UART2_TX    PTD3        //PTD3

#define UART3_RX    PTC16       //PTB10、PTC16、PTE5
#define UART3_TX    PTC17       //PTB11、PTC17、PTE4

#define UART4_RX    PTE25       //PTC14、PTE25
#define UART4_TX    PTE24       //PTC15、PTE24

#define UART5_RX    PTE9        //PTD8、PTE9
#define UART5_TX    PTE8        //PTD9、PTE8


typedef enum  UARTn
{
    //初始化默认配置       --TXD--      --RXD--     可以复用其他通道，请自行修改 uart_init
    UART0,    //           PTD7         PTD6
    UART1,    //           PTC4         PTC3
    UART2,    //           PTD3         PTD2
    UART3,    //           PTC17        PTC16
    UART4,    //           PTE24        PTE25
    UART5     //           PTE8         PTE9
} UARTn;

extern volatile struct UART_MemMap *UARTx[6];
/********************************************************************/



void uart_init (UARTn, uint32 baud);                     //初始化uartx模块

char uart_getchar   (UARTn);                          //无限等待接受1个字节
char uart_pendchar  (UARTn, char *ch);                //有限时间等待接收一个字符
char uart_pendchar1 (UARTn uratn);
char uart_pendstr   (UARTn, char *str);               //有限时间等待接收字符串

int uart_query      (UARTn);                          //查询是否接收到一个字节

void uart_putchar   (UARTn, char ch);                 //发送1个字节
void uart_sendN     (UARTn , uint8 *buff, uint16 len); //发送n个字节
void uart_sendStr   (UARTn , const uint8 *str);          //发送字符串


void uart_irq_EN    (UARTn);                          //开串口接收中断
void uart_irq_DIS   (UARTn);                          //关串口接收中断



#define UART_IRQ_EN(UARTn)   UART_C2_REG(UARTx[UARTn])|=UART_C2_RIE_MASK; enable_irq((UARTn<<1)+45)     //宏定义开串口接收中断
#define UART_IRQ_DIS(UARTn)  UART_C2_REG(UARTx[UARTn])&=~UART_C2_RIE_MASK; disable_irq((UARTn<<1)+45)   //宏定义关接收引脚的IRQ中断

//volatile struct UART_MemMap *UARTx[6] = {UART0_BASE_PTR, UART1_BASE_PTR, UART2_BASE_PTR, UART3_BASE_PTR, UART4_BASE_PTR, UART5_BASE_PTR}; //定义五个指针数组保存 UARTx 的地址



/********************************************************************/

#endif /* __UART_H__ */
