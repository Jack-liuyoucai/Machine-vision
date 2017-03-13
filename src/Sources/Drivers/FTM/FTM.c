
#include "common.h"
#include  "FTM.h"
 

/*********** FTMn_CHn PWM�����ʼ������ ***********/
/*
        --FTM0--  --FTM1--  --FTM2--
CH0       PTC1      PTA8      PTA10
CH1       PTC2      PTA9      PTA11
CH2       PTC3       ��         ��
CH3       PTC4       ��         ��
CH4       PTD4       ��         ��
CH5       PTD5       ��         ��
CH6       PTD6       ��         ��
CH7       PTD7       ��         ��

����ʾû��
*/
//--------------------------------PWM��ʼ��--------------------------------//
void FTM_PWM_init()
{
     SIM_SCGC5 |= SIM_SCGC5_PORTC_MASK; //����C�˿�ʱ��
     SIM_SCGC5 |= SIM_SCGC5_PORTD_MASK; //����D�˿�ʱ��
   
     PORTD_PCR4 = PORT_PCR_MUX(4);  // PTC1
     
     PORTD_PCR5 = PORT_PCR_MUX(4);  // PTC2
     
     PORTD_PCR6 = PORT_PCR_MUX(4);  // PTD4
     
     PORTD_PCR7 = PORT_PCR_MUX(4);  // PTD5   
    
     SIM_SCGC6 |= SIM_SCGC6_FTM0_MASK;//����FTM0ģ��ʱ��
        
     FTM0_C4SC |= FTM_CnSC_MSB_MASK | FTM_CnSC_ELSB_MASK;  //FTM0_CH0
     FTM0_C5SC |= FTM_CnSC_MSB_MASK | FTM_CnSC_ELSB_MASK;  //FTM0_CH1     
     FTM0_C6SC |= FTM_CnSC_MSB_MASK | FTM_CnSC_ELSB_MASK;  //FTM0_CH2
     FTM0_C7SC |= FTM_CnSC_MSB_MASK | FTM_CnSC_ELSB_MASK;  //FTM0_CH3
     
     FTM0_CNT = 0; //���ü�����ֵΪ0   
     FTM0_MOD = 2500; //����PWMƵ��Ϊ10K
     FTM0_CNTIN = 0; //���ó�ʼ������ֵ     
     FTM0_C4V = 0;
     FTM0_C5V = 0;
     FTM0_C6V = 0;
     FTM0_C7V=0;    
     FTM0_SC |= FTM_SC_CLKS(1) | FTM_SC_PS(1); //����ʱ�Ӻͷ�Ƶ
     
}

/*==============================================================================
���ܣ�FTM1��FTM2ģ��˫·�������������
���ţ�PTA12��PTA13��PTA10��PTA11
���ݣ���ʼ��FTM1��FTM2���������빦�ܣ�
��������
==============================================================================*/
void FTM_QUAD_init()
{
    /*�����˿�ʱ��*/
    SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
    //SIM_SCGC5 |= SIM_SCGC5_PORTD_MASK;   

    /*ѡ��ܽŸ��ù���*/
    PORTA_PCR12 = PORT_PCR_MUX(7);
    PORTA_PCR13 = PORT_PCR_MUX(7);
    PORTA_PCR10 = PORT_PCR_MUX(6);
    PORTA_PCR11 = PORT_PCR_MUX(6);
    //PORTD_PCR11 = PORT_PCR_MUX(7);
    //PORTD_PCR12 = PORT_PCR_MUX(7);

    /*ʹ��FTM1��FTM2ʱ��*/
    SIM_SCGC6|=SIM_SCGC6_FTM1_MASK;
    SIM_SCGC3|=SIM_SCGC3_FTM2_MASK;

    FTM1_MOD = 0xffff; //�ɸ�����Ҫ����
    FTM2_MOD = 0xffff;

    FTM1_CNTIN =0x0;
    FTM2_CNTIN =0x0;
    
    FTM1_CNT = 0; //���ü�����ֵΪ0
    FTM2_CNT = 0; //���ü�����ֵΪ0
    
    FTM1_MODE |= FTM_MODE_WPDIS_MASK; //��ֹд����
    FTM2_MODE |= FTM_MODE_WPDIS_MASK; //��ֹд����
    FTM1_MODE |= FTM_MODE_FTMEN_MASK; //FTMEN=1,�ر�TPM����ģʽ������FTM���й���
    FTM2_MODE |= FTM_MODE_FTMEN_MASK; //FTMEN=1,�ر�TPM����ģʽ������FTM���й���

    FTM1_QDCTRL &= ~FTM_QDCTRL_QUADMODE_MASK; //ѡ������ģʽΪA����B�����ģʽ
    //FTM1_QDCTRL|=FTM_QDCTRL_QUADMODE_MASK;//AB ��ͬʱȷ������ͼ���ֵ
    FTM1_QDCTRL |= FTM_QDCTRL_QUADEN_MASK; //ʹ����������ģʽ
    FTM2_QDCTRL &= ~FTM_QDCTRL_QUADMODE_MASK; //ѡ������ģʽΪA����B�����ģʽ
    //FTM2_QDCTRL|=FTM_QDCTRL_QUADMODE_MASK;//AB ��ͬʱȷ������ͼ���ֵ
    FTM2_QDCTRL |= FTM_QDCTRL_QUADEN_MASK; //ʹ����������ģʽ

    //FTM1_SC |= FTM_SC_CLKS(1);  //ѡ���ⲿʱ��  3
    //FTM1_CONF |=FTM_CONF_BDMMODE(3); //�ɸ�����Ҫѡ��
    //FTM2_SC |= FTM_SC_CLKS(1);
    //FTM2_CONF |=FTM_CONF_BDMMODE(3);

}





void FTM2_QUAD_Iint(void)
{
    PORTA_PCR10= PORT_PCR_MUX(6); // ��������A10����ΪFTM2_PHA����  
    PORTA_PCR11= PORT_PCR_MUX(6); // ��������A11����ΪFTM2_PHB����  
    SIM_SCGC3|=SIM_SCGC3_FTM2_MASK;//ʹ��FTM2ʱ��  
    FTM2_MODE |= FTM_MODE_WPDIS_MASK;//д������ֹ  
    FTM2_QDCTRL|=FTM_QDCTRL_QUADMODE_MASK;//AB��ͬʱȷ������ͼ���ֵ  
    FTM2_CNTIN=0;//FTM0��������ʼֵΪ0  
    FTM2_MOD=65535;//����ֵ  
    FTM2_QDCTRL|=FTM_QDCTRL_QUADEN_MASK;//����FTM2��������ģʽ  
    FTM2_MODE |= FTM_MODE_FTMEN_MASK;//FTM2EN=1    
    FTM2_CNT=0;  
}

void FTM1_QUAD_Iint(void)
{
    PORTA_PCR12= PORT_PCR_MUX(7); // ��������A12����ΪFTM1_PHA����  
    PORTA_PCR13= PORT_PCR_MUX(7); // ��������A13����ΪFTM1_PHB����  
    SIM_SCGC6|=SIM_SCGC6_FTM1_MASK;//ʹ��FTM1ʱ��  
    FTM1_MODE |= FTM_MODE_WPDIS_MASK;//д������ֹ  
    FTM1_QDCTRL|=FTM_QDCTRL_QUADMODE_MASK;//AB��ͬʱȷ������ͼ���ֵ  
    FTM1_CNTIN=0;//FTM0��������ʼֵΪ0  
    FTM1_MOD=65535;//����ֵ  
    FTM1_QDCTRL|=FTM_QDCTRL_QUADEN_MASK;//����FTM1��������ģʽ  
    FTM1_MODE |= FTM_MODE_FTMEN_MASK;//FTM1EN=1    
    FTM1_CNT=0;  
}