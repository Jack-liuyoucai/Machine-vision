/******************** (C) COPYRIGHT 2011      ********************
 * 文件名       ：mcg.c
 * 描述         ：工作时钟模式设置，锁相环。
 * 备注         ：官方例程上修改
 *                                                  
**********************************************************************************/

#include "common.h"
#include "mcg.h"




//锁相环频率为50/15*54=180M测试函数
void pll_init(void)
{
	uint32_t temp_reg;
        //使能IO端口时钟    
    SIM_SCGC5 |= (SIM_SCGC5_PORTA_MASK
                              | SIM_SCGC5_PORTB_MASK
                              | SIM_SCGC5_PORTC_MASK
                              | SIM_SCGC5_PORTD_MASK
                              | SIM_SCGC5_PORTE_MASK );
    //这里处在默认的FEI模式
    //首先移动到FBE模式
    MCG_C2 = 0;  
    //MCG_C2 = MCG_C2_RANGE(2) | MCG_C2_HGO_MASK | MCG_C2_EREFS_MASK;
    //初始化晶振后释放锁定状态的振荡器和GPIO
    SIM_SCGC4 |= SIM_SCGC4_LLWU_MASK;
    LLWU_CS |= LLWU_CS_ACKISO_MASK;
    
    //选择外部晶振，参考分频器，清IREFS来启动外部晶振
    //011 If RANGE = 0, Divide Factor is 8; for all other RANGE values, Divide Factor is 256.
    MCG_C1 = MCG_C1_CLKS(2) | MCG_C1_FRDIV(3);
    
    //等待晶振稳定	    
    //while (!(MCG_S & MCG_S_OSCINIT_MASK)){}              //等待锁相环初始化结束
    while (MCG_S & MCG_S_IREFST_MASK){}                  //等待时钟切换到外部参考时钟
    while (((MCG_S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) != 0x2){}
    
    //进入FBE模式,
  
    MCG_C5 = MCG_C5_PRDIV(0x0e);        //c        
    
    //确保MCG_C6处于复位状态，禁止LOLIE、PLL、和时钟控制器，清PLL VCO分频器
    MCG_C6 = 0x0;
    
    //保存FMC_PFAPR当前的值
    temp_reg = FMC_PFAPR;
    
    //通过M&PFD置位M0PFD来禁止预取功能
    FMC_PFAPR |= FMC_PFAPR_M7PFD_MASK | FMC_PFAPR_M6PFD_MASK | FMC_PFAPR_M5PFD_MASK
                     | FMC_PFAPR_M4PFD_MASK | FMC_PFAPR_M3PFD_MASK | FMC_PFAPR_M2PFD_MASK
                     | FMC_PFAPR_M1PFD_MASK | FMC_PFAPR_M0PFD_MASK;    
    ///设置系统分频器
    //MCG=PLL, core = MCG, bus = MCG/2, FlexBus = MCG/2, Flash clock= MCG/8
    SIM_CLKDIV1 = SIM_CLKDIV1_OUTDIV1(0) | SIM_CLKDIV1_OUTDIV2(1) 
                 | SIM_CLKDIV1_OUTDIV3(1) | SIM_CLKDIV1_OUTDIV4(7);       
    
    //从新存FMC_PFAPR的原始值
    FMC_PFAPR = temp_reg; 
    
    //设置VCO分频器，使能PLL为100MHz, LOLIE=0, PLLS=1, CME=0, VDIV=26
    MCG_C6 = MCG_C6_PLLS_MASK | MCG_C6_VDIV(30);  //VDIV = 31 (x54)  //28
                                                  //VDIV = 26 (x50)
    while (!(MCG_S & MCG_S_PLLST_MASK)){}; // wait for PLL status bit to set    
    while (!(MCG_S & MCG_S_LOCK_MASK)){}; // Wait for LOCK bit to set    
    
    //进入PBE模式    
    //通过清零CLKS位来进入PEE模式
    // CLKS=0, FRDIV=3, IREFS=0, IRCLKEN=0, IREFSTEN=0
    MCG_C1 &= ~MCG_C1_CLKS_MASK;
    
    //等待时钟状态位更新
    while (((MCG_S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) != 0x3){};
    //SIM_CLKDIV2 |= SIM_CLKDIV2_USBDIV(1);  
    
    //设置跟踪时钟为内核时钟
    SIM_SOPT2 |= SIM_SOPT2_TRACECLKSEL_MASK;	
    //在PTA6引脚上使能TRACE_CLKOU功能
    PORTA_PCR6 = ( PORT_PCR_MUX(0x7));  
    //使能FlexBus模块时钟
    SIM_SCGC7 |= SIM_SCGC7_FLEXBUS_MASK;
    //在PTA6引脚上使能FB_CLKOUT功能
    PORTC_PCR3 = ( PORT_PCR_MUX(0x5));
}
