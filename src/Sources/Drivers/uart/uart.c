/******************** (C) COPYRIGHT 2011 Ұ��Ƕ��ʽ���������� ********************
 * �ļ���       ��uart.c
 * ����         �����ں���
 * ��ע         ���ο����ݴ�ѧ�����̺ͷ�˼�����ٷ�������
 *
 * ʵ��ƽ̨     ��Ұ��kinetis������
 * ��汾       ��
 * Ƕ��ϵͳ     ��
 *
 * ����         ��
 * �Ա���       ��http://firestm32.taobao.com
 * ����֧����̳ ��http://www.ourdev.cn/bbs/bbs_list.jsp?bbs_id=1008
**********************************************************************************/

#include "common.h"
#include "uart.h"
#include "assert.h"

volatile struct UART_MemMap *UARTx[6] = {UART0_BASE_PTR, UART1_BASE_PTR, UART2_BASE_PTR, UART3_BASE_PTR, UART4_BASE_PTR, UART5_BASE_PTR}; //�������ָ�����鱣�� UARTx �ĵ�ַ

/*************************************************************************
*                             Ұ��Ƕ��ʽ����������
*
*  �������ƣ�uart_init
*  ����˵������ʼ�����ڣ����ò�����
*  ����˵����UARTn       ģ��ţ�UART0~UART5��
*            baud        �����ʣ���9600��19200��56000��115200��
*  �������أ���
*  �޸�ʱ�䣺2012-1-20       uartclk_khz = CORE_CLOCK*10 * BUS_CLOCK;//ʱ��180MHz    //��ʱ����
*  ��    ע���ڹٷ��������޸�
*************************************************************************/

void uart_init (UARTn uratn, uint32 baud)
{
    register uint16 sbr, brfa;
    uint8 temp;
    uint32 sysclk;     //ʱ��

    
    switch(uratn)
    {
    case UART0:
        if(UART0_RX == PTA1)
            PORTA_PCR1 = PORT_PCR_MUX(0x2);      //��PTA1��ʹ��UART0_RXD
        else if(UART0_RX == PTA15)
            PORTA_PCR15 = PORT_PCR_MUX(0x3);     //��PTA15��ʹ��UART0_RXD
        else if(UART0_RX == PTB16)
            PORTB_PCR16 = PORT_PCR_MUX(0x3);     //��PTB16��ʹ��UART0_RXD
        else if(UART0_RX == PTD6)
            PORTD_PCR6 = PORT_PCR_MUX(0x3);      //��PTD6��ʹ��UART0_RXD

        if(UART0_TX == PTA2)
            PORTA_PCR2 = PORT_PCR_MUX(0x2);     //��PTA2��ʹ��UART0_RXD
        else if(UART0_TX == PTA14)
            PORTA_PCR14 = PORT_PCR_MUX(0x3);     //��PTA14��ʹ��UART0_RXD
        else if(UART0_TX == PTB17)
            PORTB_PCR17 = PORT_PCR_MUX(0x3);     //��PTB17��ʹ��UART0_RXD
        else if(UART0_TX == PTD7)
            PORTD_PCR7 = PORT_PCR_MUX(0x3);     //��PTD7��ʹ��UART0_RXD

        SIM_SCGC4 |= SIM_SCGC4_UART0_MASK;      //ʹ�� UARTn ʱ��
        break;

    case UART1:
        if(UART1_RX == PTC3)
            PORTC_PCR3 = PORT_PCR_MUX(0x3);     //��PTC3��ʹ��UART1_RXD
        else if(UART1_RX == PTE1)
            PORTE_PCR1 = PORT_PCR_MUX(0x3);     //��PTE1��ʹ��UART1_RXD
        

        if(UART1_TX == PTC4)
            PORTC_PCR4 = PORT_PCR_MUX(0x3);     //��PTC4��ʹ��UART1_RXD
        else if(UART1_TX == PTE0)
            PORTE_PCR0 = PORT_PCR_MUX(0x3);     //��PTE0��ʹ��UART1_RXD
       

        SIM_SCGC4 |= SIM_SCGC4_UART1_MASK;
        break;

    case UART2:
        PORTD_PCR3 = PORT_PCR_MUX(0x3);         //��PTD3��ʹ��UART2_TXD����
        PORTD_PCR2 = PORT_PCR_MUX(0x3);         //��PTD2��ʹ��UART2_RXD
        SIM_SCGC4 |= SIM_SCGC4_UART2_MASK;
        break;

    case UART3:
        if(UART3_RX == PTB10)
            PORTB_PCR10 = PORT_PCR_MUX(0x3);     //��PTB10��ʹ��UART3_RXD
        else if(UART3_RX == PTC16)
            PORTC_PCR16 = PORT_PCR_MUX(0x3);     //��PTC16��ʹ��UART3_RXD
        else if(UART3_RX == PTE5)
            PORTE_PCR5 = PORT_PCR_MUX(0x3);      //��PTE5��ʹ��UART3_RXD
                

        if(UART3_TX == PTB11)
            PORTB_PCR11 = PORT_PCR_MUX(0x3);     //��PTB11��ʹ��UART3_RXD
        else if(UART3_TX == PTC17)
            PORTC_PCR17 = PORT_PCR_MUX(0x3);     //��PTC17��ʹ��UART3_RXD
        else if(UART3_TX == PTE4)
            PORTE_PCR4 = PORT_PCR_MUX(0x3);     //��PTE4��ʹ��UART3_RXD
     
        SIM_SCGC4 |= SIM_SCGC4_UART3_MASK;
        break;

    case UART4:
        if(UART4_RX == PTC14)
            PORTC_PCR14 = PORT_PCR_MUX(0x3);     //��PTC14��ʹ��UART4_RXD
        else if(UART4_RX == PTE25)
            PORTE_PCR25 = PORT_PCR_MUX(0x3);     //��PTE25��ʹ��UART4_RXD
       
        if(UART4_TX == PTC15)
            PORTC_PCR15 = PORT_PCR_MUX(0x3);     //��PTC15��ʹ��UART4_RXD
        else if(UART4_TX == PTE24)
            PORTE_PCR24 = PORT_PCR_MUX(0x3);     //��PTE24��ʹ��UART4_RXD
                     //���ùܽ�����

        SIM_SCGC1 |= SIM_SCGC1_UART4_MASK;
        break;

    case UART5:
        if(UART5_RX == PTD8)
            PORTD_PCR8 = PORT_PCR_MUX(0x3);     //��PTD8��ʹ��UART5_RXD
        else if(UART5_RX == PTE9)
            PORTE_PCR9 = PORT_PCR_MUX(0x3);     //��PTE9��ʹ��UART5_RXD
        
        if(UART5_TX == PTD9)
            PORTD_PCR9 = PORT_PCR_MUX(0x3);     //��PTD9��ʹ��UART5_RXD
        else if(UART5_TX == PTE8)
            PORTE_PCR8 = PORT_PCR_MUX(0x3);     //��PTE8��ʹ��UART5_RXD
        
        SIM_SCGC1 |= SIM_SCGC1_UART5_MASK;
        break;
    default:
        break;
    }


    //���õ�ʱ��Ӧ�ý�ֹ���ͽ���
    UART_C2_REG(UARTx[uratn]) &= ~(UART_C2_TE_MASK  | UART_C2_RE_MASK );

    //���ó�8λ��У��ģʽ
    //���� UART ���ݸ�ʽ��У�鷽ʽ��ֹͣλλ����ͨ������ UART ģ����ƼĴ��� C1 ʵ�֣�
    UART_C1_REG(UARTx[uratn]) = 0;	// ȫ��ֱ��ʹ��Ĭ�����þ��У�����ֱ����0

    //���㲨���ʣ�����0��1ʹ���ں�ʱ�ӣ���������ʹ������ʱ��
    if ((uratn == UART0) | (uratn == UART1))
        sysclk = core_clk_khz * 1000;            //�ں�ʱ��//
    else
        sysclk = bus_clk_khz * 1000;  //����ʱ��

    //���� UART ����ͨѶ�����ʡ�ͨ������ UART ģ��Ĳ����ʼĴ���
    sbr = (uint16)(sysclk / (baud << 4));

   
    temp = UART_BDH_REG(UARTx[uratn]) & ~(UART_BDH_SBR(0x1F));

    UART_BDH_REG(UARTx[uratn]) = temp |  UART_BDH_SBR(((sbr & 0x1F00) >> 8));
    UART_BDL_REG(UARTx[uratn]) = (uint8)(sbr & UART_BDL_SBR_MASK);

    //brfa = (((sysclk*32)/(baud * 16)) - (sbr * 32));
    brfa = (((sysclk << 5) / (baud << 4)) - (sbr << 5));

  
    temp = UART_C4_REG(UARTx[uratn]) & ~(UART_C4_BRFA(0x1F));

    UART_C4_REG(UARTx[uratn]) = temp |  UART_C4_BRFA(brfa);

   
    UART_C2_REG(UARTx[uratn]) |= (UART_C2_TE_MASK | UART_C2_RE_MASK );

    //�����Ƿ�������պͷ����жϡ�ͨ������ UART ģ��� C2 �Ĵ�����
    //RIE �� TIE λʵ�֡����ʹ���жϣ���������ʵ���жϷ������
}

/*************************************************************************
*                             Ұ��Ƕ��ʽ����������
*
*  �������ƣ�uart_getchar
*  ����˵��������ʱ��ȴ����ڽ���һ���ֽ�
*  ����˵����UARTn       ģ��ţ�UART0~UART5��
*  �������أ����յ����ֽ�
*  �޸�ʱ�䣺2012-1-20
*  ��    ע���ٷ�����
*************************************************************************/
char uart_getchar (UARTn uratn)
{
    /* Wait until character has been received */
    while (!(UART_S1_REG(UARTx[uratn]) & UART_S1_RDRF_MASK));

    /* Return the 8-bit data from the receiver */
    return UART_D_REG(UARTx[uratn]);
}

/*************************************************************************
*                             Ұ��Ƕ��ʽ����������
*
*  �������ƣ�uart_pendchar
*  ����˵��������ʱ��ȴ����ڽ���һ���ֽ�
*  ����˵����UARTn       ģ��ţ�UART0~UART5��
*  �������أ����յ����ֽ�
*  �޸�ʱ�䣺2012-1-20
*  ��    ע��
*************************************************************************/
char uart_pendchar (UARTn uratn, char *ch)
{
    uint32 i = 0;

    while(++i < 0xffffff)                                         //ʱ������
    {
        if(UART_S1_REG(UARTx[uratn]) & UART_S1_RDRF_MASK)         //��ѯ�Ƿ���ܵ�����
        {
            *ch  =   UART_D_REG(UARTx[uratn]);                    //���ܵ�8λ������
            return  1;                                            //���� 1 ��ʾ���ճɹ�
        }
    }

    *ch = 0;                                                     //���ղ�����Ӧ������˽�����
    return 0;                                                    //����0��ʾ����ʧ��
}

/*************************************************************************
*  �������ƣ�uart_pendchar
*  ����˵��������ʱ��ȴ����ڽ���һ���ֽ�
*  ����˵����UARTn       ģ��ţ�UART0~UART5��
*  �������أ����յ����ֽ�
*  �޸�ʱ�䣺2012-1-20
*  ��    ע��
*************************************************************************/
char uart_pendchar1 (UARTn uratn)
{
   
    
      
            return UART_D_REG(UARTx[uratn]);                    //���ܵ�8λ������ 
           
                                                                           
}


/*************************************************************************
*                             Ұ��Ƕ��ʽ����������
*
*  �������ƣ�uart_pendstr
*  ����˵��������ʱ��ȴ����ڽ����ַ���
*  ����˵����UARTn       ģ��ţ�UART0~UART5��
*  �������أ����յ����ֽ�
*  �޸�ʱ�䣺2012-1-20
*  ��    ע��
*************************************************************************/
char uart_pendstr (UARTn uratn, char *str)
{
    uint32 i = 0;
    while(uart_pendchar(uratn, str + i++));

    return (i <= 1 ? 0 : 1);
}



/*************************************************************************
*                             Ұ��Ƕ��ʽ����������
*
*  �������ƣ�uart_putchar
*  ����˵�������ڷ���һ���ֽ�
*  ����˵����UARTn       ģ��ţ�UART0~UART5��
*  �������أ���
*  �޸�ʱ�䣺2012-1-20
*  ��    ע���ٷ����̣�printf������⺯��
*************************************************************************/
void uart_putchar (UARTn uratn, char ch)
{
    //�ȴ����ͻ�������
    while(!(UART_S1_REG(UARTx[uratn]) & UART_S1_TDRE_MASK));
    //��������
    UART_D_REG(UARTx[uratn]) = (uint8)ch;
}



/*************************************************************************
*                             Ұ��Ƕ��ʽ����������
*
*  �������ƣ�uart_query
*  ����˵������ѯ�Ƿ���ܵ�һ���ֽ�
*  ����˵����UARTn       ģ��ţ�UART0~UART5��
*  �������أ�1           ���յ�һ���ֽ���
*            0           û�н��յ�
*  �޸�ʱ�䣺2012-1-20
*  ��    ע���ٷ�����
*************************************************************************/
int uart_query (UARTn uratn)
{
    return (UART_S1_REG(UARTx[uratn]) & UART_S1_RDRF_MASK);
}

/*************************************************************************
*                             Ұ��Ƕ��ʽ����������
*
*  �������ƣ�uart_sendN
*  ����˵�������� ����ָ��len���ֽڳ����ַ��� ������ NULL Ҳ�ᷢ�ͣ�
*  ����˵����UARTn       ģ��ţ�UART0~UART5��
*            buff        ���ͻ�����
*            len         ���ͳ���
*  �������أ���
*  �޸�ʱ�䣺2012-1-20
*  ��    ע��
*************************************************************************/
void uart_sendN (UARTn uratn, uint8 *buff, uint16 len)
{
    int i;
    for(i = 0; i < len; i++)
    {
        uart_putchar(uratn, buff[i]);
    }
}

/*************************************************************************
*                             Ұ��Ƕ��ʽ����������
*
*  �������ƣ�uart_sendStr
*  ����˵�������з����ַ���
*  ����˵����UARTn       ģ��ţ�UART0~UART5��
*            str         �ַ���
*  �������أ���
*  �޸�ʱ�䣺2012-1-20
*  ��    ע��
*************************************************************************/
void uart_sendStr (UARTn uratn, const uint8 *str)
{
    while(*str)
    {
        uart_putchar(uratn, *str++);
    }
}

/*************************************************************************
*                             Ұ��Ƕ��ʽ����������
*
*  �������ƣ�uart_irq_EN
*  ����˵���������ڽ����ж�
*  ����˵����UARTn       ģ��ţ�UART0~UART5��
*  �������أ���
*  �޸�ʱ�䣺2012-1-20
*  ��    ע��
*************************************************************************/
void uart_irq_EN(UARTn uratn)
{
    UART_C2_REG(UARTx[uratn]) |= UART_C2_RIE_MASK;    //����UART�����ж�
    enable_irq((uratn << 1) + 45);			        //���������ŵ�IRQ�ж�
}


/*************************************************************************
*                             Ұ��Ƕ��ʽ����������
*
*  �������ƣ�uart_irq_DIS
*  ����˵�����ش��ڽ����ж�
*  ����˵����UARTn       ģ��ţ�UART0~UART5��
*  �������أ���
*  �޸�ʱ�䣺2012-1-20
*  ��    ע��
*************************************************************************/
void uart_irq_DIS(UARTn uratn)
{
    UART_C2_REG(UARTx[uratn]) &= ~UART_C2_RIE_MASK;   //��ֹUART�����ж�
    disable_irq((uratn << 1) + 45);			        //�ؽ������ŵ�IRQ�ж�
}

