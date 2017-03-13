/******************** (C) COPYRIGHT 2011      ********************
 * �ļ���       ��mcg.c
 * ����         ������ʱ��ģʽ���ã����໷��
 * ��ע         ���ٷ��������޸�
 *                                                  
**********************************************************************************/

#include "common.h"
#include "mcg.h"




//���໷Ƶ��Ϊ50/15*54=180M���Ժ���
void pll_init(void)
{
	uint32_t temp_reg;
        //ʹ��IO�˿�ʱ��    
    SIM_SCGC5 |= (SIM_SCGC5_PORTA_MASK
                              | SIM_SCGC5_PORTB_MASK
                              | SIM_SCGC5_PORTC_MASK
                              | SIM_SCGC5_PORTD_MASK
                              | SIM_SCGC5_PORTE_MASK );
    //���ﴦ��Ĭ�ϵ�FEIģʽ
    //�����ƶ���FBEģʽ
    MCG_C2 = 0;  
    //MCG_C2 = MCG_C2_RANGE(2) | MCG_C2_HGO_MASK | MCG_C2_EREFS_MASK;
    //��ʼ��������ͷ�����״̬��������GPIO
    SIM_SCGC4 |= SIM_SCGC4_LLWU_MASK;
    LLWU_CS |= LLWU_CS_ACKISO_MASK;
    
    //ѡ���ⲿ���񣬲ο���Ƶ������IREFS�������ⲿ����
    //011 If RANGE = 0, Divide Factor is 8; for all other RANGE values, Divide Factor is 256.
    MCG_C1 = MCG_C1_CLKS(2) | MCG_C1_FRDIV(3);
    
    //�ȴ������ȶ�	    
    //while (!(MCG_S & MCG_S_OSCINIT_MASK)){}              //�ȴ����໷��ʼ������
    while (MCG_S & MCG_S_IREFST_MASK){}                  //�ȴ�ʱ���л����ⲿ�ο�ʱ��
    while (((MCG_S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) != 0x2){}
    
    //����FBEģʽ,
  
    MCG_C5 = MCG_C5_PRDIV(0x0e);        //c        
    
    //ȷ��MCG_C6���ڸ�λ״̬����ֹLOLIE��PLL����ʱ�ӿ���������PLL VCO��Ƶ��
    MCG_C6 = 0x0;
    
    //����FMC_PFAPR��ǰ��ֵ
    temp_reg = FMC_PFAPR;
    
    //ͨ��M&PFD��λM0PFD����ֹԤȡ����
    FMC_PFAPR |= FMC_PFAPR_M7PFD_MASK | FMC_PFAPR_M6PFD_MASK | FMC_PFAPR_M5PFD_MASK
                     | FMC_PFAPR_M4PFD_MASK | FMC_PFAPR_M3PFD_MASK | FMC_PFAPR_M2PFD_MASK
                     | FMC_PFAPR_M1PFD_MASK | FMC_PFAPR_M0PFD_MASK;    
    ///����ϵͳ��Ƶ��
    //MCG=PLL, core = MCG, bus = MCG/2, FlexBus = MCG/2, Flash clock= MCG/8
    SIM_CLKDIV1 = SIM_CLKDIV1_OUTDIV1(0) | SIM_CLKDIV1_OUTDIV2(1) 
                 | SIM_CLKDIV1_OUTDIV3(1) | SIM_CLKDIV1_OUTDIV4(7);       
    
    //���´�FMC_PFAPR��ԭʼֵ
    FMC_PFAPR = temp_reg; 
    
    //����VCO��Ƶ����ʹ��PLLΪ100MHz, LOLIE=0, PLLS=1, CME=0, VDIV=26
    MCG_C6 = MCG_C6_PLLS_MASK | MCG_C6_VDIV(30);  //VDIV = 31 (x54)  //28
                                                  //VDIV = 26 (x50)
    while (!(MCG_S & MCG_S_PLLST_MASK)){}; // wait for PLL status bit to set    
    while (!(MCG_S & MCG_S_LOCK_MASK)){}; // Wait for LOCK bit to set    
    
    //����PBEģʽ    
    //ͨ������CLKSλ������PEEģʽ
    // CLKS=0, FRDIV=3, IREFS=0, IRCLKEN=0, IREFSTEN=0
    MCG_C1 &= ~MCG_C1_CLKS_MASK;
    
    //�ȴ�ʱ��״̬λ����
    while (((MCG_S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) != 0x3){};
    //SIM_CLKDIV2 |= SIM_CLKDIV2_USBDIV(1);  
    
    //���ø���ʱ��Ϊ�ں�ʱ��
    SIM_SOPT2 |= SIM_SOPT2_TRACECLKSEL_MASK;	
    //��PTA6������ʹ��TRACE_CLKOU����
    PORTA_PCR6 = ( PORT_PCR_MUX(0x7));  
    //ʹ��FlexBusģ��ʱ��
    SIM_SCGC7 |= SIM_SCGC7_FLEXBUS_MASK;
    //��PTA6������ʹ��FB_CLKOUT����
    PORTC_PCR3 = ( PORT_PCR_MUX(0x5));
}
