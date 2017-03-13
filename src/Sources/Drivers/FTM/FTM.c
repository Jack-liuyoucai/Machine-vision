
#include "common.h"
#include  "FTM.h"
 

/*********** FTMn_CHn PWM输出初始化函数 ***********/
/*
        --FTM0--  --FTM1--  --FTM2--
CH0       PTC1      PTA8      PTA10
CH1       PTC2      PTA9      PTA11
CH2       PTC3       ×         ×
CH3       PTC4       ×         ×
CH4       PTD4       ×         ×
CH5       PTD5       ×         ×
CH6       PTD6       ×         ×
CH7       PTD7       ×         ×

×表示没有
*/
//--------------------------------PWM初始化--------------------------------//
void FTM_PWM_init()
{
     SIM_SCGC5 |= SIM_SCGC5_PORTC_MASK; //开启C端口时钟
     SIM_SCGC5 |= SIM_SCGC5_PORTD_MASK; //开启D端口时钟
   
     PORTD_PCR4 = PORT_PCR_MUX(4);  // PTC1
     
     PORTD_PCR5 = PORT_PCR_MUX(4);  // PTC2
     
     PORTD_PCR6 = PORT_PCR_MUX(4);  // PTD4
     
     PORTD_PCR7 = PORT_PCR_MUX(4);  // PTD5   
    
     SIM_SCGC6 |= SIM_SCGC6_FTM0_MASK;//开启FTM0模块时钟
        
     FTM0_C4SC |= FTM_CnSC_MSB_MASK | FTM_CnSC_ELSB_MASK;  //FTM0_CH0
     FTM0_C5SC |= FTM_CnSC_MSB_MASK | FTM_CnSC_ELSB_MASK;  //FTM0_CH1     
     FTM0_C6SC |= FTM_CnSC_MSB_MASK | FTM_CnSC_ELSB_MASK;  //FTM0_CH2
     FTM0_C7SC |= FTM_CnSC_MSB_MASK | FTM_CnSC_ELSB_MASK;  //FTM0_CH3
     
     FTM0_CNT = 0; //设置计数初值为0   
     FTM0_MOD = 2500; //设置PWM频率为10K
     FTM0_CNTIN = 0; //设置初始化计数值     
     FTM0_C4V = 0;
     FTM0_C5V = 0;
     FTM0_C6V = 0;
     FTM0_C7V=0;    
     FTM0_SC |= FTM_SC_CLKS(1) | FTM_SC_PS(1); //设置时钟和分频
     
}

/*==============================================================================
功能：FTM1、FTM2模块双路正交脉冲计数；
引脚：PTA12、PTA13、PTA10、PTA11
内容：初始化FTM1、FTM2的正交解码功能；
参数：无
==============================================================================*/
void FTM_QUAD_init()
{
    /*开启端口时钟*/
    SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
    //SIM_SCGC5 |= SIM_SCGC5_PORTD_MASK;   

    /*选择管脚复用功能*/
    PORTA_PCR12 = PORT_PCR_MUX(7);
    PORTA_PCR13 = PORT_PCR_MUX(7);
    PORTA_PCR10 = PORT_PCR_MUX(6);
    PORTA_PCR11 = PORT_PCR_MUX(6);
    //PORTD_PCR11 = PORT_PCR_MUX(7);
    //PORTD_PCR12 = PORT_PCR_MUX(7);

    /*使能FTM1、FTM2时钟*/
    SIM_SCGC6|=SIM_SCGC6_FTM1_MASK;
    SIM_SCGC3|=SIM_SCGC3_FTM2_MASK;

    FTM1_MOD = 0xffff; //可根据需要设置
    FTM2_MOD = 0xffff;

    FTM1_CNTIN =0x0;
    FTM2_CNTIN =0x0;
    
    FTM1_CNT = 0; //设置计数初值为0
    FTM2_CNT = 0; //设置计数初值为0
    
    FTM1_MODE |= FTM_MODE_WPDIS_MASK; //禁止写保护
    FTM2_MODE |= FTM_MODE_WPDIS_MASK; //禁止写保护
    FTM1_MODE |= FTM_MODE_FTMEN_MASK; //FTMEN=1,关闭TPM兼容模式，开启FTM所有功能
    FTM2_MODE |= FTM_MODE_FTMEN_MASK; //FTMEN=1,关闭TPM兼容模式，开启FTM所有功能

    FTM1_QDCTRL &= ~FTM_QDCTRL_QUADMODE_MASK; //选定编码模式为A相与B相编码模式
    //FTM1_QDCTRL|=FTM_QDCTRL_QUADMODE_MASK;//AB 相同时确定方向和计数值
    FTM1_QDCTRL |= FTM_QDCTRL_QUADEN_MASK; //使能正交解码模式
    FTM2_QDCTRL &= ~FTM_QDCTRL_QUADMODE_MASK; //选定编码模式为A相与B相编码模式
    //FTM2_QDCTRL|=FTM_QDCTRL_QUADMODE_MASK;//AB 相同时确定方向和计数值
    FTM2_QDCTRL |= FTM_QDCTRL_QUADEN_MASK; //使能正交解码模式

    //FTM1_SC |= FTM_SC_CLKS(1);  //选择外部时钟  3
    //FTM1_CONF |=FTM_CONF_BDMMODE(3); //可根据需要选择
    //FTM2_SC |= FTM_SC_CLKS(1);
    //FTM2_CONF |=FTM_CONF_BDMMODE(3);

}





void FTM2_QUAD_Iint(void)
{
    PORTA_PCR10= PORT_PCR_MUX(6); // 设置引脚A10引脚为FTM2_PHA功能  
    PORTA_PCR11= PORT_PCR_MUX(6); // 设置引脚A11引脚为FTM2_PHB功能  
    SIM_SCGC3|=SIM_SCGC3_FTM2_MASK;//使能FTM2时钟  
    FTM2_MODE |= FTM_MODE_WPDIS_MASK;//写保护禁止  
    FTM2_QDCTRL|=FTM_QDCTRL_QUADMODE_MASK;//AB相同时确定方向和计数值  
    FTM2_CNTIN=0;//FTM0计数器初始值为0  
    FTM2_MOD=65535;//结束值  
    FTM2_QDCTRL|=FTM_QDCTRL_QUADEN_MASK;//启用FTM2正交解码模式  
    FTM2_MODE |= FTM_MODE_FTMEN_MASK;//FTM2EN=1    
    FTM2_CNT=0;  
}

void FTM1_QUAD_Iint(void)
{
    PORTA_PCR12= PORT_PCR_MUX(7); // 设置引脚A12引脚为FTM1_PHA功能  
    PORTA_PCR13= PORT_PCR_MUX(7); // 设置引脚A13引脚为FTM1_PHB功能  
    SIM_SCGC6|=SIM_SCGC6_FTM1_MASK;//使能FTM1时钟  
    FTM1_MODE |= FTM_MODE_WPDIS_MASK;//写保护禁止  
    FTM1_QDCTRL|=FTM_QDCTRL_QUADMODE_MASK;//AB相同时确定方向和计数值  
    FTM1_CNTIN=0;//FTM0计数器初始值为0  
    FTM1_MOD=65535;//结束值  
    FTM1_QDCTRL|=FTM_QDCTRL_QUADEN_MASK;//启用FTM1正交解码模式  
    FTM1_MODE |= FTM_MODE_FTMEN_MASK;//FTM1EN=1    
    FTM1_CNT=0;  
}