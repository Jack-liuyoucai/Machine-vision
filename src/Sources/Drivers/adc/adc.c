/******************** ************************* ********************
 * �ļ���       ��adc.c
 * ����         ��adc��������
 *
**********************************************************************************/

#include "common.h"
#include "adc.h"



tADC_Config Master_Adc_Config;          //�ýṹ���������Ҫ��ADC/PGA����

volatile struct ADC_MemMap *ADCx[2] = {ADC0_BASE_PTR, ADC1_BASE_PTR}; //��������ָ�����鱣�� ADCx �ĵ�ַ

/*************************************************************************
*                               
*
*  �������ƣ�adc_init
*  ����˵����AD��ʼ����ʹ��ʱ��
*  ����˵����ADCn        ģ��ţ� ADC0�� ADC1��
*  �������أ���
*  �޸�ʱ�䣺2012-2-10
*  ��    ע���ο����ݴ�ѧ������
*************************************************************************/
void adc_init(ADCn adcn, ADC_Ch ch)
{ 
  switch(adcn)
    {
    case ADC0:       /*   ADC0  */
        SIM_SCGC6 |= (SIM_SCGC6_ADC0_MASK );        //����ADC0ʱ��
        SIM_SOPT7 &= ~(SIM_SOPT7_ADC0ALTTRGEN_MASK  | SIM_SOPT7_ADC0PRETRGSEL_MASK);
        SIM_SOPT7 = SIM_SOPT7_ADC0TRGSEL(0);

        switch(ch)
        {
        case AD8:   //ADC0_SE8 -- PTB0
        case AD9:   //ADC0_SE9 -- PTB1
            SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK;
            PORT_PCR_REG(PORTB_BASE_PTR, ch - AD8 + 0) =  PORT_PCR_MUX(0);
            break;
        case AD10:  //ADC0_SE10 -- PTA7
        case AD11:  //ADC0_SE11 -- PTA8
            SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
            PORT_PCR_REG(PORTA_BASE_PTR, ch - AD10 + 7) =  PORT_PCR_MUX(0);
            break;
        case AD12:  //ADC0_SE12 -- PTB2
        case AD13:  //ADC0_SE13 -- PTB3
            SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK;
            PORT_PCR_REG(PORTB_BASE_PTR, ch - AD12 + 2) =  PORT_PCR_MUX(0);
            break;
         case AD4: 
             SIM_SCGC5 |= SIM_SCGC5_PORTC_MASK;
            PORT_PCR_REG(PORTC_BASE_PTR, ch - AD4 + 2) =  PORT_PCR_MUX(0);
            break;
        case AD14:  //ADC0_SE14 -- PTC0
           SIM_SCGC5 |= SIM_SCGC5_PORTC_MASK;
            PORT_PCR_REG(PORTC_BASE_PTR, ch - AD14 + 0) =  PORT_PCR_MUX(0);
            break;
        case AD15:  //ADC0_SE15 -- PTC1
            SIM_SCGC5 |= SIM_SCGC5_PORTC_MASK;
            PORT_PCR_REG(PORTC_BASE_PTR, ch - AD15 + 1) =  PORT_PCR_MUX(0);
            break;
        case AD17:   //ADC0_SE17 -- PTE24
        case AD18:   //ADC0_SE17 -- PTE25
            SIM_SCGC5 |= SIM_SCGC5_PORTE_MASK;
            PORT_PCR_REG(PORTE_BASE_PTR, ch - AD17 + 24) =  PORT_PCR_MUX(0);
            break;
        default:
            return;
        }
        return;

    case ADC1:       /*   ADC1    */
        SIM_SCGC3 |= (SIM_SCGC3_ADC1_MASK );
        SIM_SOPT7 &= ~(SIM_SOPT7_ADC1ALTTRGEN_MASK  | SIM_SOPT7_ADC1PRETRGSEL_MASK) ;
        SIM_SOPT7 = SIM_SOPT7_ADC1TRGSEL(0);

        switch(ch)
        {
        case AD4a:   //ADC1_SE4a -- PTE0
        case AD5a:   //ADC1_SE5a -- PTE1
        case AD6a:   //ADC1_SE6a -- PTE2
        case AD7a:   //ADC1_SE7a -- PTE3
            SIM_SCGC5 |= SIM_SCGC5_PORTE_MASK;
            PORT_PCR_REG(PORTE_BASE_PTR, ch - AD4a + 0) =  PORT_PCR_MUX(0);
            break;
        case AD8:  //ADC1_SE8 -- PTB0
        case AD9:  //ADC1_SE9 -- PTB1
            SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK;
            PORT_PCR_REG(PORTB_BASE_PTR, ch - AD8 + 0) =  PORT_PCR_MUX(0);
            break;
        case AD10:  //ADC1_SE10 -- PTB4
            SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK;
            PORT_PCR_REG(PORTB_BASE_PTR, ch - AD10+4) =  PORT_PCR_MUX(0);
            break;
        case AD11:  //ADC1_SE11 -- PTB5
            SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK;
            PORT_PCR_REG(PORTB_BASE_PTR, ch -AD11+5) =  PORT_PCR_MUX(0);
            break;
        case AD12:  //ADC1_SE12 -- PTB6
        case AD13:  //ADC1_SE13 -- PTB7
            SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK;
            PORT_PCR_REG(PORTB_BASE_PTR, ch - 6) =  PORT_PCR_MUX(0);
            break;
        case AD14:  //ADC1_SE14 -- PTB10
        case AD15:  //ADC1_SE15 -- PTB11
            SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK;
            PORT_PCR_REG(PORTB_BASE_PTR, ch - AD10 + 4) =  PORT_PCR_MUX(0);
            break;
        case AD17:  //ADC1_SE17 -- PTA17
            SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;
            PORT_PCR_REG(PORTA_BASE_PTR, ch) =  PORT_PCR_MUX(0);
            break;
        default:
            break;
        }
        break;
    default:
        break;
    }
}


/*************************************************************************
*                               
*
*  �������ƣ�ad_once
*  ����˵�����ɼ�һ��һ·ģ������ADֵ
*  ����˵����ADCn        ģ��ţ� ADC0�� ADC1��
*            ADC_Channel ͨ����
*            ADC_nbit    ���ȣ� ADC_8bit,ADC_12bit, ADC_10bit, ADC_16bit ��
*  �������أ��޷��Ž��ֵ
*  �޸�ʱ�䣺2012-2-10
*  ��    ע���ο����ݴ�ѧ�����̣�Bͨ���������������������
*************************************************************************/
uint16 ad_once(ADCn adcn, ADC_Ch ch, ADC_nbit bit) //�ɼ�ĳ·ģ������ADֵ
{
    uint16 result = 0;
    //ASSERT( ((adcn == ADC0) && (ch >= AD8 && ch <= AD18)) || ((adcn == ADC1) && (ch >= AD4a && ch <= AD17)) ) ; //ʹ�ö��Լ��ADCn_CHn�Ƿ�����

    //adc_start(adcn, ch, bit);	  //����ADCת��

    while (( ADC_SC1_REG(ADCx[adcn], 0 ) & ADC_SC1_COCO_MASK ) != ADC_SC1_COCO_MASK);
    result = ADC_R_REG(ADCx[adcn], 0);
    ADC_SC1_REG(ADCx[adcn], 0) &= ~ADC_SC1_COCO_MASK;
    return result;
}

/*************************************************************************
*                               
*
*  �������ƣ�ad_mid
*  ����˵�����ɼ�����һ·ģ������ADֵ������ ��ֵ
*  ����˵����ADCx        ģ��ţ� ADC0�� ADC1��
*            ADC_Channel ͨ����
*            ADC_nbit    ���ȣ� ADC_8bit,ADC_12bit, ADC_10bit, ADC_16bit ��
*  �������أ��޷��Ž��ֵ
*  �޸�ʱ�䣺2012-2-10
*  ��    ע���޸����ݴ�ѧ������
*************************************************************************/
uint16 ad_mid(ADCn adcn, ADC_Ch ch, ADC_nbit bit)
{
    uint16 i, j, k, tmp;
    //ASSERT( ((adcn == ADC0) && (ch >= AD8 && ch <= AD18)) || ((adcn == ADC1) && (ch >= AD4a && ch <= AD17)) ) ; //ʹ�ö��Լ��ADCn_CHn�Ƿ�����

    //3��ADCת��
    i = ad_once(adcn, ch, bit);
    j = ad_once(adcn, ch, bit);
    k = ad_once(adcn, ch, bit);

    //ȡ��ֵ
    tmp = i > j ? i : j;          //tmpȡ�������ֵ
    return k > tmp ?    tmp :  (   k > i  ?    k   :     i  );
    //                k>tmp>i             tmp>k>i   tmp>i>k
}
/*************************************************************************
*                               
*
*  �������ƣ�ad_mid_last
*  ����˵�����ɼ�һ��һ·ģ������ADֵ�����ȥ��������Ƚϣ����� ��ֵ
*  ����˵����ADCx        ģ��ţ� ADC0�� ADC1��
*            ADC_Channel ͨ����
*            ADC_nbit    ���ȣ� ADC_8bit,ADC_12bit, ADC_10bit, ADC_16bit ��
*  �������أ��޷��Ž��ֵ
*  �޸�ʱ�䣺2012-2-10
*  ��    ע���޸����ݴ�ѧ������
*************************************************************************/
 uint16 ad_mid_last(ADCn adcn, ADC_Ch ch, ADC_nbit bit)
{
    uint16 tmp;
    uint16 temp[3]={0};
    //ASSERT( ((adcn == ADC0) && (ch >= AD8 && ch <= AD18)) || ((adcn == ADC1) && (ch >= AD4a && ch <= AD17)) ) ; //ʹ�ö��Լ��ADCn_CHn�Ƿ�����

    //3��ADCת��
    temp[0]=temp[1];
    temp[1]=temp[2];
    temp[2]=ad_once(adcn, ch, bit);

    //ȡ��ֵ
    tmp = temp[0] > temp[1] ? temp[0] : temp[1];          //tmpȡ�������ֵ
    return temp[2] > tmp ?    tmp :  (   temp[2] > temp[0]  ?   temp[2]   :   temp[0]    );
    //                k>tmp>i             tmp>k>i   tmp>i>k
}
/*************************************************************************
*                               
*
*  �������ƣ�ad_ave
*  ����˵������β�����ȡƽ��ֵ
*  ����˵����ADCx        ģ��ţ� ADC0�� ADC1��
*            ADC_Channel ͨ����
*            ADC_nbit    ���ȣ� ADC_8bit,ADC_12bit, ADC_10bit, ADC_16bit ��
*            N           ��ֵ�˲�����(��Χ:0~255)
*  �������أ�16λ�޷��Ž��ֵ
*  �޸�ʱ�䣺2012-2-10
*  ��    ע���޸����ݴ�ѧ������
*************************************************************************/
float ad_ave(ADCn adcn, ADC_Ch ch, ADC_nbit bit, uint8 N) //��ֵ�˲�
{
    float tmp = 0;
    uint8  i;
    //ASSERT( ((adcn == ADC0) && (ch >= AD8 && ch <= AD18)) || ((adcn == ADC1) && (ch >= AD4a && ch <= AD17)) ) ; //ʹ�ö��Լ��ADCn_CHn�Ƿ�����

    for(i = 0; i < N; i++)
        tmp += ad_once(adcn, ch, bit);
    
    return tmp / N;
}
/*************************************************************************
*                               
*
*  �������ƣ�ad_ave_mid
*  ����˵������β�����ȡƽ��ֵ
*  ����˵����ADCx        ģ��ţ� ADC0�� ADC1��
*            ADC_Channel ͨ����
*            ADC_nbit    ���ȣ� ADC_8bit,ADC_12bit, ADC_10bit, ADC_16bit ��
*            N           ��ֵ�˲�����(��Χ:0~255)
*  �������أ�16λ�޷��Ž��ֵ
*  �޸�ʱ�䣺2012-2-10
*  ��    ע���޸����ݴ�ѧ������
*************************************************************************/

uint16 AD[50] ={0};

float ad_ave_mid(ADCn adcn, ADC_Ch ch, ADC_nbit bit, uint8 N) //��ֵ�˲�
{
    
    
    uint8 i,m,n;
    uint16 temp=0;
    float sum=0; 

         
    for(i=0; i<N; i++)
         {
              AD[i]=ad_once(adcn, ch, bit);
         } 
             
    for(m = 0; m < N-1; m++)
    {
      for(n = m+1; n < N; n++) 
              
    {
      if(AD[m]>AD[n])
      {
                 
        temp=AD[m];
                 
        AD[m]=AD[n];
                 
        AD[n]=temp;
                 
      }
              
    }
             
    }
         
             
              for(i = 10; i < N-10; i++)
                  {
                     sum += AD[i];
                  }
          
    return sum/(N-20);
}


/*************************************************************************
*                               
*
*  �������ƣ�ad_flt
*  ����˵����һ�β�������ǰ���β�������ƽ��ֵ
*  ����˵����ADCx        ģ��ţ� ADC0�� ADC1��
*            ADC_Channel ͨ����
*            ADC_nbit    ���ȣ� ADC_8bit,ADC_12bit, ADC_10bit, ADC_16bit ��
*  �������أ�16λ�޷��Ž��ֵ
*  �޸�ʱ�䣺2012-2-10
*  ��    ע��
*************************************************************************/
#define SAMP_COUNT  2       //��ǰ�˲� 2^SAMP_COUNT ����  ����̫�󣬲�Ȼ������׼
uint16 ad_flt(ADCn adcn, ADC_Ch ch, ADC_nbit bit)
{
    static uint16 buf[(1<<(SAMP_COUNT))] = {0};  //����ǰ  2^SAMP_COUNT �� �Ĳ�������
    static uint8 n = (uint8)(0x100 - (int8)(1 << (SAMP_COUNT)));
    static uint32 sum = 0;

    //ASSERT( ((adcn == ADC0) && (ch >= AD8 && ch <= AD18)) || ((adcn == ADC1) && (ch >= AD4a && ch <= AD17)) ) ; //ʹ�ö��Լ��ADCn_CHn�Ƿ�����

    if(n >= (uint8)(0x100 - (int8)(1 << (SAMP_COUNT))))
    {
        buf[(uint8)((1<<(SAMP_COUNT))+n)] = ad_once(adcn, ch, bit);
        sum += buf[(uint8)((1<<(SAMP_COUNT))+n)];
        n++;
        return ((uint16)(sum >> SAMP_COUNT));
    }

    sum -= buf[n];
    buf[n] = ad_once(adcn, ch, bit);
    sum += buf[n];

    if (++n >= (1 << (SAMP_COUNT)))
    {
        n = 0;
    }
    return ((uint16)(sum >> SAMP_COUNT)); /* ADC����ֵ�����ɴβ���ֵƽ�� */
}
#undef  SAMP_COUNT




/*************************************************************************
*                               
*
*  �������ƣ�adc_start
*  ����˵��������adc���������Bͨ�������������������������
*  ����˵����ADCx        ģ��ţ� ADC0�� ADC1��
*            ADC_Channel ͨ����
*            ADC_nbit    ���ȣ� ADC_8bit,ADC_12bit, ADC_10bit, ADC_16bit ��
*  �������أ���
*  �޸�ʱ�䣺2012-2-10
*  ��    ע���޸����ݴ�ѧ������
*************************************************************************/
void adc_start(ADCn adcn, ADC_Ch ch, ADC_nbit bit)
{

    Master_Adc_Config.STATUS1A = AIEN_ON | DIFF_SINGLE | ADC_SC1_ADCH( ch );

    //��ʼ��ADCĬ������
    Master_Adc_Config.CONFIG1  = ADLPC_NORMAL
                                 | ADC_CFG1_ADIV(ADIV_4)
                                 | ADLSMP_LONG
                                 | ADC_CFG1_MODE(bit)
                                 | ADC_CFG1_ADICLK(ADICLK_BUS);
    Master_Adc_Config.CONFIG2  = MUXSEL_ADCA    //MUXSEL_ADCA
                                 | ADACKEN_DISABLED
                                 | ADHSC_HISPEED
                                 | ADC_CFG2_ADLSTS(ADLSTS_20) ;

    Master_Adc_Config.COMPARE1 = 0x1234u ;                 //����ֵ
    Master_Adc_Config.COMPARE2 = 0x5678u ;                 //����ֵ

    adc_config_alt(ADCx[adcn], &Master_Adc_Config);       // ���� ADCn
}

/*************************************************************************
*                               
*
*  �������ƣ�adc_stop
*  ����˵����ֹͣADCת��
*  ����˵����ADCx        ģ��ţ� ADC0�� ADC1��
*            ADC_Channel ͨ����
*  �������أ���
*  �޸�ʱ�䣺2012-2-10
*  ��    ע���޸����ݴ�ѧ������
*************************************************************************/
void adc_stop(ADCn adcn)
{
    Master_Adc_Config.STATUS1A = AIEN_ON | DIFF_SINGLE | ADC_SC1_ADCH(Module_disabled);
    adc_config_alt(ADCx[adcn], &Master_Adc_Config);  // ����ADC0
}


/*************************************************************************
*                               
*
*  �������ƣ�adc_config_alt
*  ����˵������adc�Ĵ����ṹ�����ý�adc�Ĵ���
*  ����˵����adcmap      adc��ַ�Ĵ�����ַ��ADC0_BASE_PTR,ADC1_BASE_PTR��
*            ADC_CfgPtr  ��� �Ĵ���ֵ�Ľṹ��
*  �������أ���
*  �޸�ʱ�䣺2012-2-10
*  ��    ע���޸Ĺٷ����̵�����
*************************************************************************/
void adc_config_alt(ADC_MemMapPtr adcmap, tADC_ConfigPtr ADC_CfgPtr)
{
    ADC_CFG1_REG(adcmap) = ADC_CfgPtr->CONFIG1;
    ADC_CFG2_REG(adcmap) = ADC_CfgPtr->CONFIG2;
    ADC_CV1_REG(adcmap)  = ADC_CfgPtr->COMPARE1;
    ADC_CV2_REG(adcmap)  = ADC_CfgPtr->COMPARE2;
    ADC_SC2_REG(adcmap)  = ADC_CfgPtr->STATUS2;
    ADC_SC3_REG(adcmap)  = ADC_CfgPtr->STATUS3;
    ADC_PGA_REG(adcmap)  = ADC_CfgPtr->PGA;
    ADC_SC1_REG(adcmap, A) = ADC_CfgPtr->STATUS1A;
    ADC_SC1_REG(adcmap, B) = ADC_CfgPtr->STATUS1B;
}



