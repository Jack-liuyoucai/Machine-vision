#include "include.h"

//u8 counttempaddr;
#define COUNTSADDR   0x4004000C  //(&counttempaddr)
#define COUNTDADDR   0x4004000C  //(&counttempaddr)

uint32 count_init[16];         //��������16��ͨ���ĳ�ʼ������ֵ

 ////////////////////////////////////////////////////////

 ////////////////////////////
/*************************************************************************
*                             Ұ��Ƕ��ʽ����������
*
*  �������ƣ�DMA_PORTx2BUFF_Init
*  ����˵����DMA��ʼ������ȡ�˿����ݵ��ڴ�
*  ����˵����DMA_CHn              ͨ���ţ�DMA_CH0 ~ DMA_CH15��
*            SADDR                Դ��ַ( (void * )&PTx_BYTEn_IN �� (void * )&PTx_WORDn_IN   )
*            DADDR                Ŀ�ĵ�ַ
*            PTxn                 �����˿�
*            DMA_BYTEn            ÿ��DMA�����ֽ���
*            count                һ����ѭ�������ֽ���
*            DMA_PORTx2BUFF_cfg   DMA��������
*  �������أ���
*  �޸�ʱ�䣺2012-2-20
*  ��    ע��
*************************************************************************/
void DMA_PORTx2BUFF_Init(DMA_CHn CHn, void *SADDR, void *DADDR, PTxn ptxn, DMA_BYTEn byten, uint32 count, DMA_PORTx2BUFF_cfg cfg)
{
    uint8 n, i, tmp;
    
    uint8 BYTEs = (byten == DMA_BYTE1 ? 1 : (byten == DMA_BYTE2 ? 2 : (byten == DMA_BYTE4 ? 4 : 16 ) ) ); //���㴫���ֽ���

    /* ����ʱ�� */
    SIM_SCGC7 |= SIM_SCGC7_DMA_MASK;                        //��DMAģ��ʱ��
    SIM_SCGC6 |= SIM_SCGC6_DMAMUX_MASK;                     //��DMA��·������ʱ��

    /* ���� DMA ͨ�� �� ������ƿ� TCD ( Transfer Control Descriptor ) */
    DMA_SADDR(CHn) =    (uint32)SADDR;                         // ����  Դ��ַ
    DMA_DADDR(CHn) =    (uint32)DADDR;                         // ����Ŀ�ĵ�ַ
    DMA_SOFF(CHn)  =    0x00u;                              // ����Դ��ַƫ�� = 0x0, ������
    DMA_DOFF(CHn)  =    BYTEs;                              // ÿ�δ����Ŀ�ĵ�ַ�� BYTEs

    DMA_ATTR(CHn)  =    (0
                         | DMA_ATTR_SMOD(0x0)                // Դ��ַģ����ֹ  Source address modulo feature is disabled
                         | DMA_ATTR_SSIZE(byten)             // Դ����λ�� ��DMA_BYTEn  ��    SSIZE = 0 -> 8-bit ��SSIZE = 1 -> 16-bit ��SSIZE = 2 -> 32-bit ��SSIZE = 4 -> 16-byte
                         | DMA_ATTR_DMOD(0x0)                // Ŀ���ַģ����ֹ
                         | DMA_ATTR_DSIZE(byten)             // Ŀ������λ�� ��DMA_BYTEn  ��  ���òο�  SSIZE
                        );

    DMA_CITER_ELINKNO(CHn)  = DMA_CITER_ELINKNO_CITER(count); //��ǰ��ѭ������
    DMA_BITER_ELINKNO(CHn)  = DMA_BITER_ELINKYES_BITER(count);//��ʼ��ѭ������


    DMA_CR &= ~DMA_CR_EMLM_MASK;                            // CR[EMLM] = 0

    //��CR[EMLM] = 0 ʱ:
    DMA_NBYTES_MLNO(CHn) =   DMA_NBYTES_MLNO_NBYTES(BYTEs); // ͨ��ÿ�δ����ֽ�������������ΪBYTEs���ֽڡ�ע��ֵΪ0��ʾ����4GB */


    /* ���� DMA ���������Ĳ��� */
    DMA_SLAST(CHn)      =   0;                              //����  Դ��ַ�ĸ���ֵ,��ѭ��������ָ�  Դ��ַ
    DMA_DLAST_SGA(CHn)  =   (uint32)( (cfg & 0x20) == 0 ? (-count)  : 0 ); //����Ŀ�ĵ�ַ�ĸ���ֵ,��ѭ��������ָ�Ŀ�ĵ�ַ���߱��ֵ�ַ
    DMA_CSR(CHn)        =   (0
                             | DMA_CSR_DREQ_MASK            //��ѭ��������ֹͣӲ������
                             | DMA_CSR_INTMAJOR_MASK        //��ѭ������������ж�
                            );

    /* ���� DMA ����Դ */
    DMAMUX_CHCFG_REG(DMAMUX_BASE_PTR, CHn) = (0
            | DMAMUX_CHCFG_ENBL_MASK                        /* Enable routing of DMA request */
            //| DMAMUX_CHCFG_TRIG_MASK                        /* Trigger Mode: Periodic   PIT���ڴ�������ģʽ   ͨ��1��ӦPIT1������ʹ��PIT1����������Ӧ��PIT��ʱ���� */
            | DMAMUX_CHCFG_SOURCE((ptxn >> 5) + DMA_Port_A) /* ͨ����������Դ:     */
                                             );

    SIM_SCGC5 |= (SIM_SCGC5_PORTA_MASK << (ptxn>>5));                                                               //����PORTx�˿�
    GPIO_PDDR_REG(GPIOx[(ptxn>>5)]) &= ~(1 << (ptxn & 0x1f));                                                       //���ö˿ڷ���Ϊ����
    PORT_PCR_REG(PORTX[(ptxn>>5)], (ptxn & 0x1F)) = ( 0
            | PORT_PCR_MUX(1)               // ����GPIO
            | PORT_PCR_IRQC(cfg & 0x03 )    // ȷ������ģʽ
            | ((cfg & 0xc0 ) >> 6)          // �����������������裬����û��
                                                    );
    GPIO_PDDR_REG(GPIOx[(ptxn>>5)]) &= ~(1 << (ptxn && 0x1F));                                                      //����ģʽ

    /*  ��������Դ   */
    SIM_SCGC5 |= (SIM_SCGC5_PORTA_MASK << ((((uint32)SADDR) & 0x1ff)>>6));             //����PORTx�˿�
    switch(byten)
    {
    case DMA_BYTE1:
        *((uint8 *)((uint32)SADDR + 4)) = 0;   //����Ϊ���뷽��Ϊʲô��4��PDIR��ַ��4�󣬾ͱ�ɶ�Ӧ��PDDR��ַ
        break;
    case DMA_BYTE2:
        *((uint16 *)((uint32)SADDR + 4)) = 0;
        break;
    case DMA_BYTE4:
        *((uint32 *)((uint32)SADDR + 4)) = 0;
        break;
    default:
        
        break;
    }

    /*  ����Դ�ܽ�ѡ���ܽ�  */
    n =(uint8)(((uint32)SADDR - ((uint32)(&PTA_BYTE0_IN))) & 0x3f);         //��С�����ź�
    tmp = n + (BYTEs << 3);                                         //�������ź�
    for(i = n; i < tmp; i++)
    {
        PORT_PCR_REG(PORTX[   ((((uint32)SADDR)&0x1ff)>>6)    ], i) = (0
                | PORT_PCR_MUX(1)
                | GPI_DOWN             //����ԴӦ��������Ĭ�϶�ȡ������0
                                                                   );
    }

    /* �����ж� */
    //DMA_EN(CHn);                                    //ʹ��ͨ��CHn Ӳ������
    //DMA_IRQ_EN(CHn);                                //����DMAͨ������
}





/*************************************************************************
*                             Ұ��Ƕ��ʽ����������
*
*  �������ƣ�DMA_count_Init
*  ����˵����DMA�ۼӼ�����ʼ��
*  ����˵����DMA_CHn              ͨ���ţ�DMA_CH0 ~ DMA_CH15��
*            PTxn                 �����˿�
*            count                �ۼӼ����ж�ֵ
*            DMA_Count_cfg        DMA��������
*  �������أ���
*  �޸�ʱ�䣺2012-1-20
*  ��    ע��
*************************************************************************/
void DMA_count_Init(DMA_CHn CHn, PTxn ptxn, uint32 count, DMA_Count_cfg cfg)
{
    uint8 byten = DMA_BYTE1;
    uint8 BYTEs = (byten == DMA_BYTE1 ? 1 : (byten == DMA_BYTE2 ? 2 : (byten == DMA_BYTE4 ? 4 : 16 ) ) ); //���㴫���ֽ���
    if(count > 0x7FFF )count = 0x7FFF;
    count_init[CHn] = count;

    /* ����ʱ�� */
    SIM_SCGC7 |= SIM_SCGC7_DMA_MASK;                        //��DMAģ��ʱ��
    SIM_SCGC6 |= SIM_SCGC6_DMAMUX_MASK;                     //��DMA��·������ʱ��

    /* ���� DMA ͨ�� �� ������ƿ� TCD ( Transfer Control Descriptor ) */
    DMA_SADDR(CHn) =    (uint32)COUNTSADDR;                    // ����  Դ��ַ
    DMA_DADDR(CHn) =    (uint32)COUNTDADDR;                    // ����Ŀ�ĵ�ַ
    DMA_SOFF(CHn)  =    0;                                  // ����Դ��ַ����
    DMA_DOFF(CHn)  =    0;                                  // ÿ�δ����Ŀ�ĵ�ַ����

    DMA_ATTR(CHn)  =    (0
                         | DMA_ATTR_SMOD(0x0)                // Դ��ַģ����ֹ  Source address modulo feature is disabled
                         | DMA_ATTR_SSIZE(byten)             // Դ����λ�� ��DMA_BYTEn  ��    SSIZE = 0 -> 8-bit ��SSIZE = 1 -> 16-bit ��SSIZE = 2 -> 32-bit ��SSIZE = 4 -> 16-byte
                         | DMA_ATTR_DMOD(0x0)                // Ŀ���ַģ����ֹ
                         | DMA_ATTR_DSIZE(byten)             // Ŀ������λ�� ��DMA_BYTEn  ��  ���òο�  SSIZE
                        );

    DMA_CITER_ELINKNO(CHn)  = DMA_CITER_ELINKNO_CITER(count); //��ǰ��ѭ������
    DMA_BITER_ELINKNO(CHn)  = DMA_BITER_ELINKYES_BITER(count);//��ʼ��ѭ������

    DMA_CR &= ~DMA_CR_EMLM_MASK;                            // CR[EMLM] = 0

    DMA_NBYTES_MLNO(CHn) =   DMA_NBYTES_MLNO_NBYTES(BYTEs); // ͨ��ÿ�δ����ֽ�������������ΪBYTEs���ֽڡ�ע��ֵΪ0��ʾ����4GB */

    /* ���� DMA ���������Ĳ��� */
    DMA_SLAST(CHn)      =   -count;                              //����  Դ��ַ�ĸ���ֵ,��ѭ��������ָ�  Դ��ַ
    DMA_DLAST_SGA(CHn)  =   0;                                  //����Ŀ�ĵ�ַ�ĸ���ֵ,��ѭ��������ָ�Ŀ�ĵ�ַ���߱��ֵ�ַ
    DMA_CSR(CHn)        =   (0
                             | DMA_CSR_DREQ_MASK            //��ѭ��������ֹͣӲ������
                             | DMA_CSR_INTMAJOR_MASK        //��ѭ������������ж�
                            );

    /* ���� DMA ����Դ */
    DMAMUX_CHCFG_REG(DMAMUX_BASE_PTR, CHn) = (0
            | DMAMUX_CHCFG_ENBL_MASK                        /* Enable routing of DMA request */
            | DMAMUX_CHCFG_SOURCE((ptxn >> 5) + DMA_Port_A) /* ͨ����������Դ:     */
                                             );

    SIM_SCGC5 |= (SIM_SCGC5_PORTA_MASK << (ptxn>>5));                                                               //����PORTx�˿�
    GPIO_PDDR_REG(GPIOx[(ptxn>>5)]) &= ~(1 << (ptxn & 0x1f));                                                       //���ö˿ڷ���Ϊ����
    PORT_PCR_REG(PORTX[(ptxn>>5)], (ptxn & 0x1F)) = ( 0
            | PORT_PCR_MUX(1)               // ����GPIO
            | PORT_PCR_IRQC(cfg & 0x03 )    // ȷ������ģʽ
            | ((cfg & 0xc0 ) >> 6)          // �����������������裬����û��
                                                    );
    GPIO_PDDR_REG(GPIOx[(ptxn>>5)]) &= ~(1 << (ptxn && 0x1F));                                                      //����ģʽ

    /* �����ж� */
    DMA_EN(CHn);                                    //ʹ��ͨ��CHn Ӳ������
    DMA_IRQ_EN(CHn);                                //����DMAͨ������
}

/*************************************************************************
*                             Ұ��Ƕ��ʽ����������
*
*  �������ƣ�DMA_count_get
*  ����˵���������ۼӼ���ֵ
*  ����˵����DMA_CHn              ͨ���ţ�DMA_CH0 ~ DMA_CH15��
*  �������أ��ۼӼ���ֵ
*  �޸�ʱ�䣺2012-3-320
*  ��    ע��
*************************************************************************/
uint32 DMA_count_get(DMA_CHn CHn)
{
    uint32 temp =  count_init[CHn] - DMA_CITER_ELINKNO(CHn)  ;
    return temp;
}

void DMA_count_reset(DMA_CHn CHn)
{
    DMA_CITER_ELINKNO(CHn) = count_init[CHn] ;
}


