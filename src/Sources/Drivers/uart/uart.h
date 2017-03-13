/******************** (C) COPYRIGHT 2011 Ұ��Ƕ��ʽ���������� ********************
 * �ļ���       ��uart.h
 * ����         ��������غ�����ͷ�ļ�
 * ��ע         ��
 *
 * ʵ��ƽ̨     ��Ұ��kinetis������
 * ��汾       ��
 * Ƕ��ϵͳ     ��
 *
 * ����         ��
 * �Ա���       ��http://firestm32.taobao.com
 * ����֧����̳ ��http://www.ourdev.cn/bbs/bbs_list.jsp?bbs_id=1008
**********************************************************************************/
#include"gpio.h"
#ifndef __UART_H__
#define __UART_H__

/**********************************  UART   ***************************************/

//      ģ��ͨ��    �˿�          ��ѡ��Χ                          ����
#define UART0_RX    PTB16        //PTA1��PTA15��PTB16��PTD6          PTA1��Ҫ�ã���Jtag��ͻ��
#define UART0_TX    PTB17        //PTA2��PTA14��PTB17��PTD7          PTA2��Ҫ�ã���Jtag��ͻ��

#define UART1_RX    PTC3        //PTC3��PTE1
#define UART1_TX    PTC4        //PTC4��PTE0

#define UART2_RX    PTD2        //PTD2
#define UART2_TX    PTD3        //PTD3

#define UART3_RX    PTC16       //PTB10��PTC16��PTE5
#define UART3_TX    PTC17       //PTB11��PTC17��PTE4

#define UART4_RX    PTE25       //PTC14��PTE25
#define UART4_TX    PTE24       //PTC15��PTE24

#define UART5_RX    PTE9        //PTD8��PTE9
#define UART5_TX    PTE8        //PTD9��PTE8


typedef enum  UARTn
{
    //��ʼ��Ĭ������       --TXD--      --RXD--     ���Ը�������ͨ�����������޸� uart_init
    UART0,    //           PTD7         PTD6
    UART1,    //           PTC4         PTC3
    UART2,    //           PTD3         PTD2
    UART3,    //           PTC17        PTC16
    UART4,    //           PTE24        PTE25
    UART5     //           PTE8         PTE9
} UARTn;

extern volatile struct UART_MemMap *UARTx[6];
/********************************************************************/



void uart_init (UARTn, uint32 baud);                     //��ʼ��uartxģ��

char uart_getchar   (UARTn);                          //���޵ȴ�����1���ֽ�
char uart_pendchar  (UARTn, char *ch);                //����ʱ��ȴ�����һ���ַ�
char uart_pendchar1 (UARTn uratn);
char uart_pendstr   (UARTn, char *str);               //����ʱ��ȴ������ַ���

int uart_query      (UARTn);                          //��ѯ�Ƿ���յ�һ���ֽ�

void uart_putchar   (UARTn, char ch);                 //����1���ֽ�
void uart_sendN     (UARTn , uint8 *buff, uint16 len); //����n���ֽ�
void uart_sendStr   (UARTn , const uint8 *str);          //�����ַ���


void uart_irq_EN    (UARTn);                          //�����ڽ����ж�
void uart_irq_DIS   (UARTn);                          //�ش��ڽ����ж�



#define UART_IRQ_EN(UARTn)   UART_C2_REG(UARTx[UARTn])|=UART_C2_RIE_MASK; enable_irq((UARTn<<1)+45)     //�궨�忪���ڽ����ж�
#define UART_IRQ_DIS(UARTn)  UART_C2_REG(UARTx[UARTn])&=~UART_C2_RIE_MASK; disable_irq((UARTn<<1)+45)   //�궨��ؽ������ŵ�IRQ�ж�

//volatile struct UART_MemMap *UARTx[6] = {UART0_BASE_PTR, UART1_BASE_PTR, UART2_BASE_PTR, UART3_BASE_PTR, UART4_BASE_PTR, UART5_BASE_PTR}; //�������ָ�����鱣�� UARTx �ĵ�ַ



/********************************************************************/

#endif /* __UART_H__ */
