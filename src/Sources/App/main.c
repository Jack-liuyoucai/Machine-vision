
#include "MK60N512VMD100.h"
#include "include.h"
#include <math.h>

#define TEST_TIME1(x) gpio_set(PORTB, 6, x)


 /*Globle variabls*/
 //�ɱ궨��ֱ��ʱ
//75cm-------42
//110cm---------49
 //ǰհ110cm

//�԰�ɫ��ص�ס��75CM------35(36)hang
                 //110=-------42hang
//����ͷ���˾��붥��32cm

//�±궨 ����ͷ���˾�����棺32.8cm ������ǰհ67.5
/*����ڵĲ���*/             
uint16 Speed_set=240;//270   70��340��75,360//   250 75 360 80 380

uint16 Speed_limit=50;
uint16 Speed_limit_record=0;

float ft=1.8;
bool start1=0;
float ACCE_STATIC =1230;    //1251   1236 1228
float angle_kp_set=540,angle_kd_set=10.3;
float angle_kp =540,angle_kd =9.3;    //600 8.3
float acce_static=0;
float angle_kp_across =540,angle_kd_across =11.3;//600 8.3
float speed_kp=80,speed_ki=0.3;//

//float steer_kp=0,steer_kd = 0; //����
uint16 error_servo_ref_d =0;          //105/110    sp=150//0518     110/120 170
uint16 error_servo_ref_p =0;//120      83 80/63/70 v=110   //83 45
int16 lcd_ref_p =0; 
int16 lcd_ref_d =0; 
int16 lcd_ref_p1 =52;//45       65     74     44
int16 lcd_ref_d1 =450;//150 260  250   300    300
int16 lcd_ref_p2 =54;//54  50   70     84     57  54//sp=240/250
int16 lcd_ref_d2 =460;//250 300 340    320    320
int16 zhongjian=30;

/*����,ʱ��Ȳ���*/
uint16 SpeedControlCount = 0;                  //�ٿ������ڼ���ֵ
uint8 g_nCarSpeedCount ;                //1ms�������ڼ���
uint8 DirectionControlCount = 0;               //�����������
uint8 IntegrationTime;

uint16 Time=0;

uint8 send_data_cnt = 0;
uint8 TimerCnt20ms = 0;

uint8 disable_lcd_flag=1;
uint8 disable_key_flag=1;

float V;


 //---------------------------------------------------------------
int16 tingting_p=0;
int16 tingting_d=130;

uint8 summ=0;
uint8 da=30;
uint8 fuxiao=30;

////***************************************************************************
/*ֱ��ƽ�������ز��� */

float acce=0,gyro=0,w=0;                     //�����˲��ļ��ٶȼƽǶȣ������ǽ��ٶ�

float GYRO_STATIC =0;                                  //���ƫ����

float AD_AngleData[2];              //��ֵ�˲�֮��������Ǻͼ��ٶȼƴ���������

float acce_G=0,acce_angle=0,gyro_angle=0,acce_offset=0,gyro_offset=0;
float g_nCarAngle=0;
float gyroIntegral=0;                     
float angle_error=0;               //�Ƕ�ƫ��
int16 anglePDout=0;
int16 anglePD=0;
int16 last_anglePD=0;

//*****************************************************************************
/*�ٶȿ�����ز���*/ 
int16 g_nLeftCount=0, g_nRightCount=0;                  //����������ٶȼ���������λ��ʾ����
float RealSpeed;
float LeftRealSpeed,RightRealSpeed;
float Speed_error,motor_P,motor_I=0;

float SpeedPID = 0;                                 //�ٶȿ��Ƶ������
float SpeedPIDold=0;
int16 SpeedPIDout=0;

//*****************************************************************************
/*ת�������ز���*/

 /*float  Distance[30];
 float error=0;
 
 float  dis_error=0;
 float  steerpwm=0;                                     //ת������������
 float  steerpwmold=0;*/
 int16 steerpwmout=0;

 
int16 LeftSpeedPwm,RightSpeedPwm;



//--------------------------�ɼ�ͼ�����ر���-------------------------------------//
bool     OddEvenStatus;		  //��ż��״̬��־
#define  OddStatus  0
#define  EvenStatus 1
#define  ODD_EVEN_STATUS  (bool)(0x00000001 & (GPIOB_PDIR  >> 20))  //��ż�任��־  ����ptc�˿ڵĵ�1λ���ƶ�����1
#define VIF_START	0   	 //��ʼģʽ				 
#define VIF_WAITSAMPLE	1        //   �ȴ�ģʽ
#define VIF_SAMPLELINE	2         //   ��ȥ�����е�״̬
#define VIF Videoclo_Flag         //
#define PIANYI 170 //ʵ�ʲɼ�����ΪCOLUMN + PIANYI��PIANYIΪÿ��������  ����ֵ������ֵ�������м���98
#define VIDEO_START_LINE  80//ͼ��ɼ���ʼ��27
bool ImageReady;               //ͼ��׼���ñ�־
uint8 Videoclo_Flag, VideoImageLine;   //�ɼ�״̬��־λ�����ж�ʵ�ʲɼ�����������
uint16 LineCount=0;                       //���жϲɼ�����������   �������һ����Ҫ����Ϊuint16  �Լ���ǰ����Ϊuint8  ����ʹ����ĥ�˺ü���
bool lcd_debug = 1;    
//-------------------------����ͼ�����ر���--------------------------//
#define ROW 50	                 //�ɼ�����
#define COLUMN	157 		//ÿ�е���
#define MID  78           //������ 78 2014 ��0515
uint8 VideoImage1[ROW][COLUMN] =       //ԭʼͼ������[0][0]�����½�
{
   0
};
uint8 VideoImage2[ROW][COLUMN] =       //ԭʼͼ������[0][0]�����½�
{
   0
};
uint8 left_black[ROW]=                 //������ߵĲɼ�����
{
  0
};
uint8 right_black[ROW]=                //�ұ����ߵĲɼ�����
{
  0
};
uint8 center_white[ROW]=              //����������ģ����ߵ�����
{
  0
};


//-------------------------------------�����ߺ���----------------------------------//
#define MIN_WHITEBASE_POINT 30                    //���������׵������Ϊ��׼��Ҫ��
#define WHITE_TOP_WHITELINE_POINT 15                  //���ߵĺ��ߵĿ���С�����ֵ���ж�Ϊ�����Ч
#define CENTER_LOST_POINT 20
uint8 current_deal_line=0;     //��ǰ��������
uint8 deal_start_line = 0;                //��� ֵʱ���ƴ�������ʼ��һ�㶨��Ϊ��׼�� + 4
uint8 hang_search_start = 0;             //����ÿ��ɨ��Ŀ�ʼ�Ǵ��ĸ��㿪ʼ��
uint8 whitepoint_start=0;                //�������Ұ׵㿪ʼ��
uint8 whitepoint_end=0;                 //�������Ұ׵������
uint8 whitebase_searchstart = MID;
uint8 left_whitebase_searchstart = 0;
uint8 right_whitebase_searchstart = 0; 
uint8 re_whitepoint_start =14;  // 20������ʱ����һ��Ҫ���������������ң����������Ҳ���������Σ��??
uint8 re_whitepoint_end=144;   
uint8 center_lost_hang = 0;
/*
uint8 refer_road_width[ROW] ={130,130,129,127,125,124,122,121,120,118,117,114,112,111,109,
                              106,105,104,102,99,97,94,92,91,88,85,84,82,79,77,74,73,70,68,65,
                              64,61,58,55,53,50,47,45,43,41,39,37,35,34,32
};*/ /* 
uint8 refer_road_width[ROW] ={116,114,112,111,109,108,107,105,104,103,
                              101,98,96,94,92,90,87,85,83,81,
                              79,77,75,73,71,69,66,64,62,59,
                              56,54,52,50,48,46,42,40,37,35,
                              32,29,26,25,25,24,24,22,21,20
                              
}; 

uint8 refer_road_width[ROW] ={129,128,127,125,123,121,121,120,119,119,
                              118,116,116,113,110,108,108,105,102,99,
                               98,97,95,92,90,89,87,84,79,76,
                               75,72,70,68,67,65,61,58,55,53,
                               51,49,45,43,42,40,38,36,32
                              
};  

*/

uint8 refer_road_width[ROW] ={
                              126,124,123,122,120,118,117,114,113,112,
                              111,109,107,105,104,101,100,97,95,93,
                              92,90,88,86,83,81,79,77,74,72,
                              71,69,66,63,60,56,55,54,52,48,
                              46,43,40,37,34,33,32,31,30,29
};  
uint8 OT=36;                                     //////�ж�Ϊ�Ҷ�ֵ�������ص���С�Ҷȵ�����ֵ
uint8 BASE_OT = 140;
uint8 WHITE_BLACK_OT = 140;           //���ж�ֵ���ķֽ�ֵ
#define WHITE 255
#define BLACK 10

uint8 top_whiteline = ROW-1;                          //ͼ������
uint8 left_top_whiteline = ROW-1;
uint8 right_top_whiteline = ROW-1;

uint8 bottom_whitebase = 0;                       //ͼ��Ļ�׼�� 
bool find_whitebase_flag = 0;  //��׼�еı�־λ
bool  tingting=0;
bool ting=0;
bool ting_check_stop=0;
bool stop_special_flag=0;

int8 jump_stop=10;
uint8 re_white_refer = MID;  //�������Ϊÿ��������׼�еĿ�ʼ�ĵ�  ���ʼ��ʱ����Ϊ Ĭ��ΪMID
uint8 white_refer = 0;                            //��׼���ϵ��������е�
uint8 Row_state[ROW] =
{
  0
};
//-------------------------------������������ز���-----------------------//
uint8 S_right = 0;//���ҹյļ���
uint8 S_left =0 ; //����ռ���
uint8 S_straight = 0;
uint8 direction = 0; //4�ǳ�ʼ����ֵ
uint8 re_direction = 0;//��¼��һ�εĵ��е�ʱ���޷��жϳ����������͵�ʱ������һ�ε�״̬
uint32 center_average = 0;
uint32 speed_center_average = 0;
//uint16 center_error_average = 0;  
uint32 center_linear_average = 0;
     
uint16 ramp_delay_time = 150;
uint16 ramp_time = 0;                //�����µ���೤ʱ�����¿��������߼��
uint16 ramp_dis_time = 0;       //��ֹ���µ����ж���ʱ
uint16 ramp_speed = 75;                    //�µ�����ֵ70
bool ramp_flag = 0;                          //�����µ���־,��Ҫ���ڿ���
bool ramp_dis_flag = 0;                     //��Ҫ�Ƿ�ֹ��������
 
float linear_factor = 0;

int16 angle=0;
int16 re_angle=0;


uint16 control_top_whiteline = 0; //re_control_top_whiteline top_error_servo_p
uint16 danger_count = 0;  //��¼Σ�յĵ���
bool danger_flag = 1;  //����ĳ�ʼֵΪ1.�����˿��������������Ϊ0��
 
int16 refer_error =0;
uint16 center_average_a =0;
uint16 center_average_b = 0;
int16 re_refer_error = 0;

uint32 start_stop_count = 0;  //�����߼�����
bool stopflag = 0;//�ٶȷ���
uint32 stop_pit_count = 8;
bool start_stop_en = 0;   //�����߼��ʹ��
bool start_stop_cs =0;   //�����߼���Ƭѡ�ź�   ��Ϊ1��ʱ��ѡ�м��������

uint16 car_test_run = 0; 
bool test_run = 0;  
#define BUS_CLOCK  100  //(MHZ)50 82 90 100 105 110 115//�������õ��ں�ʱ�ӵ�������ʱ��100M
#define BAUD  19200    //������9600
#define CORE_CLOCK 180
  uint16 sumbel=0; 
   uint16 sumbe2=0; 
    uint16 sumbe3=0;
  int16  angleout;
//-----���ڹ���ѡ��----//
uint8 send_mes=0;              //������λ����������������ѡ��ͬ�Ĵ��ڹ���
uint8 fanting=1;

//-----���ڹ���ѡ��----//
uint8 se1=0,se2=0,se3=0;

uint16 r_count=0;
bool deal_r_flag=0;
bool response=1;
uint16 Speed=0;
bool liu=1;
bool begin=0,begin2=0;
 bool bm3,feng;
//int16 big=1100;
 //-----------------------------�ӳ�-------------------------------//
void Delay_MS(uint32 ms)
{
   while(ms--);
}

//---------------------------���жϲ�׽�˿ڳ�ʼ��-------------------//
void EXIT_Init(void)
{
     SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK;  //����B�˿�ʱ��
    PORTB_PCR22 =PORT_PCR_MUX(1);  //GPIO
    GPIOB_PDDR &= ~GPIO_PIN(22);   //����
    PORTB_PCR22 |= PORT_PCR_PE_MASK | PORT_PCR_PS_MASK; //��������;
    PORTB_PCR22 |= PORT_PCR_IRQC(9); //9Ϊ�����ش����ⲿ�ж� 10Ϊ�½��ش�
}

//---------------------------�����ʼ��--------------------------//
void Initial(void)
{
  int16 i;
     for(i = 0;i < ROW;i++)
       {
         left_black[i] = 0;
         right_black[i] = 0;
         center_white[i] = 0;
         Row_state[i] = 3; //3�����������߶�û�г��ֶ���
       }
       start_stop_count = 0;
       ramp_dis_flag = 0;
       ramp_flag = 0;
}

                                                                           
/*1.�˿ڳ�ʼ��*/
 void GIPO_init()
 {   
    gpio_init (PORTB , 10, GPO, HIGH);
    //gpio_init (PORTB , 6, GPO,LOW);
      gpio_init (PORTA , 16, GPO, HIGH);
       gpio_init (PORTA , 17, GPO, HIGH);
       
     gpio_init (PORTA, 27, GPI, HIGH);//boma
      gpio_init (PORTA, 26, GPI, HIGH);
      gpio_init (PORTA, 25, GPI, HIGH);
      gpio_init (PORTA, 24, GPI, HIGH);
      
      //gpio_init (PORTB, 10, GPO, HIGH);//������
 
    PORTE_PCR0 = PORT_PCR_MUX(1)| PORT_PCR_PE_MASK |  PORT_PCR_PS_MASK;//E4��������ΪGPIOģʽ
    PORTE_PCR1 = PORT_PCR_MUX(1)| PORT_PCR_PE_MASK |  PORT_PCR_PS_MASK;//E5��������ΪGPIOģʽ
    PORTE_PCR2 = PORT_PCR_MUX(1)| PORT_PCR_PE_MASK |  PORT_PCR_PS_MASK;//E6��������ΪGPIOģʽ
    PORTE_PCR3 = PORT_PCR_MUX(1)| PORT_PCR_PE_MASK |  PORT_PCR_PS_MASK;//E7��������ΪGPIOģʽ
    PORTE_PCR4 = PORT_PCR_MUX(1)| PORT_PCR_PE_MASK |  PORT_PCR_PS_MASK;//E8��������ΪGPIOģʽ
    PORTE_PCR5 = PORT_PCR_MUX(1)| PORT_PCR_PE_MASK |  PORT_PCR_PS_MASK;//E9��������ΪGPIOģʽ
    PORTE_PCR6 = PORT_PCR_MUX(1)| PORT_PCR_PE_MASK |  PORT_PCR_PS_MASK;//E10��������ΪGPIOģʽ
    PORTE_PCR7 = PORT_PCR_MUX(1)| PORT_PCR_PE_MASK |  PORT_PCR_PS_MASK;//E11��������ΪGPIOģʽ
         
        GPIOE_PDDR = 0xffffff00;  //E0~E7����Ϊ����� 
        
        PORTB_PCR20 = PORT_PCR_MUX(1) | PORT_PCR_PE_MASK |  PORT_PCR_PS_MASK;//PTB20��������ΪGPIOģʽ ����
        GPIOB_PDDR = 0xffefff00;  //PTB20����Ϊ����
  }
  
/*2.�����ǳ�ʼ��*/
 
 void init_gyro()
 {
        int i=0;
        adc_start(ADC1, AD10, ADC_10bit );
        
        for(i=0;i<10;i++)
        {
   
        
        
 	GYRO_STATIC =ad_ave(ADC1, AD10, ADC_10bit, 100)*3.22265625+GYRO_STATIC;   //16����* 0.050354
        
        Delay_MS(100);
        
        
 	}
        adc_stop(ADC1);
        GYRO_STATIC=GYRO_STATIC/10.0;
 }


void sensor_init()
{
    adc_init(ADC1, AD10);
  adc_init(ADC1, AD11);
    adc_init(ADC0, AD14);

}



/*------------------------------------------------------------------------------
                                        С����                                                 
------------------------------------------------------------------------------*/
int abs(int num)     //����ֵ����
{
         if(num<0)
             return -num;
         else
             return num;
}

int16 f_abs16(int16 x)
{
  if(x>0) return x;
  else return -x;
}

float f_absf(float x)
{
    if(x>=0.0) return x;
    else  return -x;
}

int MIN_INT( int a, int b)
{
    if(a>b) return b;
    else  return a;
}

uint16 counter=0;
void stop_special(void)              //���������ͣ��
{
    int i=0,j=0;
    
    if(jump_stop>0 ) jump_stop--;
    else
    { 
      for(i=0;i<COLUMN;i++)  
      {
        if( VideoImage2[3][i]<=WHITE_BLACK_OT) 
          j++;
      }
      
      if(j>85) counter++;
      else   counter=0;
      if(counter>10)  
      {
        ting=1;
        counter=0;
      }
    }
    
    //---------------------�Ƕ��ж�ͣ��
    if(g_nCarAngle>da||g_nCarAngle<-fuxiao)
    {
         ting=1; 
    }/* */
}

//-----------------------------------ɨ����߻�׼��---------------------------------//
/*
1�����������Ŀ�����ͼ������ռ�ı����ϴ󣬹ʿ���Ϊ���е��λ�ã�79������һ�����������У�
�����ǳ����ܳ���������������Ҫ��������ƫ�������������
*/
void Search_WhiteBase(void)   //��ͼ��ײ��м俪ʼ������ɨ����߻�׼
{ 
  uint8 i = 0,j = 0 ;//����ʮ��λ���з��ű���   i�����б���  j�����б���
 uint8 base_sum = 0; 
  current_deal_line=0;                //��¼��������׼�е�ʱ��ĵ�ǰ�������� 
  bottom_whitebase = 0;//��׼�и���ֵ  int
  find_whitebase_flag = 0;               //�Ƿ��ְ��߻�׼��־

  //////////////////////////////�˲���ʼ///////////////////////////////////  
//���ȶ�����ͼ������˲������õķ�������ֵ�˲�
 for(i = 0;i < 5;i++)                 //ֻ�Ƕ�ͼ��ǰ���н����˲���ԭ����Զ�����˲����ܻ���ܵ�����Ϣ�˳��������������ǰ13���˲�
    for(j = 1;j< COLUMN-1;j++) 
    {
        base_sum = (VideoImage1[i][j-1] + VideoImage1[i][j+1])/ 2;
        if( f_abs16( base_sum - VideoImage1[i][j]) > OT)
           VideoImage1[i][j] = base_sum;
    }  //�˲����ܴ���һ����������ǿ��ܰ�Զ���ı������˳���������ֻ�ǶԽ��˽����˲�
 
  
  /*////////////////////////��ͼ���ϵ��������˳�//////////////   �޷��˲������һ����������������ؼ��������⣬����̫С
  for(i = 0;i < ROW ;i++)                 //ͼ����ͻȻ�ĳ����˺ܶ����㣬���������Ϊ�˽�ͼ���ϵ���Щ����˳���������֤Ч���ܺ�
    for(j = 0;j< COLUMN;j++)
    {
      if(VideoImage1[i][j] >245 || VideoImage1[i][j]<10)
      {
        if( j>0 && j < COLUMN - 1)
        {
          VideoImage1[i][j] = (VideoImage1[i][j+1] + VideoImage1[i][j-1])/2;
        }
        else
        {
          if( i>0 && i < ROW - 1)
          VideoImage1[i][j] =  (VideoImage1[i+1][j] +  VideoImage1[i-1][j])/2;
        }
      }
    }
*////////////////////////////�˲�����////////////////////////////////
  
  /*����������׼������Ҫ�ľ��ǽ�������Ŀ�ʼ������⣬������ҵ��ˣ�����������ͺý����*/
  if(VideoImage1[0][re_white_refer] > BASE_OT && VideoImage1[0][re_white_refer-1] >BASE_OT && VideoImage1[0][re_white_refer+1]>BASE_OT)
  {
    whitebase_searchstart = re_white_refer;
  }
  else
  {
    j = MID-1;//��MID��ʼ������׼�еĿ�ʼ��
    left_whitebase_searchstart = MID-1;
    while(j > 10)
    {
      if(VideoImage1[0][j] > BASE_OT && VideoImage1[0][j-1] > BASE_OT &&VideoImage1[0][j-2]>BASE_OT
         &&VideoImage1[0][j-3] >BASE_OT &&VideoImage1[0][j-4]>BASE_OT)
      {
        left_whitebase_searchstart = j;
        break;
      }
      j--;
    }
    /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    j = MID+1; 
    right_whitebase_searchstart = MID+1;
    while(j < 150)
    {
       if(VideoImage1[0][j] > BASE_OT && VideoImage1[0][j+1] > BASE_OT && VideoImage1[0][j+2]>BASE_OT
         && VideoImage1[0][j+3] > BASE_OT &&VideoImage1[0][j+4] > BASE_OT)
      {
        right_whitebase_searchstart = j;
        break;
      }
      j++;
    }
    
    if(right_whitebase_searchstart-MID > MID-left_whitebase_searchstart)
    {
      whitebase_searchstart  = left_whitebase_searchstart;
    }
      
    else
    {
      whitebase_searchstart = right_whitebase_searchstart;
    }
  } 
  
  
  
  while( find_whitebase_flag ==0 && current_deal_line < ROW - 1) //��׼�е�������Χ��0��ROW-1 
  {
      //ÿ�еĴ�������
      whitepoint_start = whitebase_searchstart;   //uint8 
      //������ߵĻ�׼����/////////////////////////////
       j = whitebase_searchstart;   //�е�ʱ�����ǰһ�е��е�����һ�е�ͼ�������
       //ÿ�δ���һ���Ļ�׼���е㿪ʼ������������׼��
       while(j >= 3  )//һ��Ϊ��ʹ�������ظ��ӵ����ԣ����ø����ж�
      {
        
          if( whitepoint_start != whitebase_searchstart && f_abs16(j-re_whitepoint_start) > f_abs16(whitepoint_start -re_whitepoint_start) )
          {
            break;
          }
          else if(VideoImage1[current_deal_line][j] - VideoImage1[current_deal_line][j-2] > OT 
             && VideoImage1[current_deal_line][j] - VideoImage1[current_deal_line][j-3] > OT
               )
          {//����һ��if�������ʱ��˵����ʱ��j����һ���ĵ�ľ���һ��С�� f_abs16(whitepoint_start -re_whitepoint_start) 
            //��������ֻҪ���������䣬�͸���׼�е���ʼ�㸳ֵ
               whitepoint_start = j;
          }
          j--;
      }
      
      if( j == 2  && whitepoint_start == whitebase_searchstart)  //����߽��ˣ����ǻ�û�ж�whitepoint_start��ֵ����˵��û���ҵ���׼�Ŀ�ʼ��
      {
        if(VideoImage1[current_deal_line][j] - VideoImage1[current_deal_line][j-2] > OT)
        {
           whitepoint_start = 2; //�����˱߽�
        }
        else if( VideoImage1[current_deal_line][j-1] - VideoImage1[current_deal_line][j-2] > OT)
        {
           whitepoint_start = 1; //�����˱߽�
        }
        else
        { 
           whitepoint_start = 0;
        }
      }
      //�����������///////////////////////
      
      //�ұ�������ʼ/////////////////////
      whitepoint_end = whitebase_searchstart;    //uint8
      j = whitebase_searchstart;   //ÿ�δ���һ����white_refer������������׼��
      while( j <= COLUMN-4 )//һ��Ϊ��ʹ�������ظ��ӵ����ԣ����ø����ж�
      {
       
          if( whitepoint_end != whitebase_searchstart && f_abs16(j-re_whitepoint_end) > f_abs16(whitepoint_end -re_whitepoint_end) )
          {
             break;
          }//1.��ͬ
          else if(VideoImage1[current_deal_line][j] - VideoImage1[current_deal_line][j+2] > OT
                && VideoImage1[current_deal_line][j] - VideoImage1[current_deal_line][j+3] > OT)
          {
             whitepoint_end = j;
          } 
          j++;
      } 
      
      if(j == COLUMN-3  &&   whitepoint_end == whitebase_searchstart)
      {
         if( VideoImage1[current_deal_line][j] - VideoImage1[current_deal_line][j+2] > OT)
         {
           whitepoint_end = COLUMN-3;
         }
         else if( VideoImage1[current_deal_line][j+1] - VideoImage1[current_deal_line][j+2] > OT)
         {
           whitepoint_end = COLUMN-2;
         }
         else
         {
           whitepoint_end = COLUMN-1;
         }
      }
      //�ұ���������///////////////////////
      //���ұ����ߵ����������õ��Ǹ��ٵ�����������Ŀ����ֻ���ҵ�һ�пɿ��Ļ�׼�е���Ϣ
      
      
      //������һ���Ƿ����Ҫ��ʼ�ռ�¼������Ϣ

        left_black[current_deal_line] = whitepoint_start;   //��¼�����λ�� (��Ϊ0���ܿ���˵����ߺ��߶�ʧ��������ƫ��)
        right_black[current_deal_line] = whitepoint_end;    //��¼�Һ���λ��(��ΪCOLUMN���ܿ���˵���ұߺ��߶�ʧ,������ƫ��)
        /*���ڵ�һ�е�״̬���ж��������뷨����һ�����۵�һ����ʲô״̬ʼ����Ϊû�ж��� �ڶ�����������صĵ���Ϊ����
        ����������Ҫ�����������ֵ����һ�������������������ｫ��׼���ϵ�״̬�趨Ϊû�ж��㣨��ʹ��ʱ�򵽴��˱߽磩��
        ����������ĸ������������ƾ�û���ˣ�
        */
        if(left_black[current_deal_line] == 0 && right_black[current_deal_line] < COLUMN - 1 &&  (right_black[current_deal_line] - left_black[current_deal_line]) > 155)  
        {  //��ʾ��ߵ���߽� ����                                                               //////////////////////////////////////��������������/////////////////////////////////////
          
          left_black[current_deal_line] = re_whitepoint_start;         
          center_white[current_deal_line] = (left_black[current_deal_line] +  right_black[current_deal_line]) / 2; 
        }
        else if(right_black[current_deal_line] == COLUMN - 1 && left_black[current_deal_line] > 0 &&  (right_black[current_deal_line] - left_black[current_deal_line]) > 155)
        { //��ʾ�ұߵ���߽� ����
           right_black[current_deal_line] = re_whitepoint_end;
         center_white[current_deal_line] = (left_black[current_deal_line] +  right_black[current_deal_line]) / 2;  //��¼���ĵ�,����MID˵������ƫ�󣬷�֮��˵������ƫ��
        }
        else if(right_black[current_deal_line] == COLUMN - 1 && left_black[current_deal_line] == 0 )
        {//��ʾ���ߵ���߽� ����
          left_black[current_deal_line] = re_whitepoint_start;
          right_black[current_deal_line] = re_whitepoint_end;
          center_white[current_deal_line] = re_white_refer;
        }
        //˵������ǰ���е���Ϣһ�㲻������Ĭ��Ϊ���ұ��ض��ҵ��˵ĵ� 
        else
        {  //��ʾ���߶�û�ж���
          center_white[current_deal_line] = (left_black[current_deal_line] +  right_black[current_deal_line]) / 2;  //��¼���ĵ�,����MID˵������ƫ�󣬷�֮��˵������ƫ��
        }
        //���������µõ�ͼ�������Ŀ�ʼ����������ֵ
      whitepoint_start = left_black[current_deal_line];
      whitepoint_end =  right_black[current_deal_line];
      white_refer = center_white[current_deal_line];
      
        //����һ�������Ŀ��ȵ�����
       if(whitepoint_end - whitepoint_start > MIN_WHITEBASE_POINT ) //���ֵ����Ϊ20 
        {
          find_whitebase_flag = 1;
          re_white_refer = white_refer;  //���汾��ͼ�����Ϣ
          re_whitepoint_start = whitepoint_start;
          re_whitepoint_end  = whitepoint_end ;
          bottom_whitebase = current_deal_line;//��¼��׼��
          Row_state[bottom_whitebase] = 3; //�е�״̬��־λ
        }
        else
        {
          find_whitebase_flag = 0;
          current_deal_line++;
        }
        
  }//whileѭ���Ľ���
  if(bottom_whitebase > 0)
  {
     for( i = 0 ; i < bottom_whitebase ;i++)////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
     {//��֮ǰ���н��б��
        center_white[i] = MID;  
        left_black[i] = MID - 2;   
        right_black[i] = MID + 2;  
     }
  }
}//

//------------------------�ɻ�׼�߶��������ߺ���Ϊ��׼���ҳ�������Ե-----------------------// 
/*�������Ĺ��ܶ���Ϊ���ߣ�Ϊ�˴�����ĳЩ�ϵ������ܼ�����ǰ���ҵ������ߣ�
ֻ�Ƕ��ڱ����߽��г������鹹�������Ķ������������ߵĴ����鹹����Ҫ����һ���������*/
void Search_BlackEdge(void)  //0509   
{   
  int16 i = 0,j = 0,n = 0, k = 0;
  int16 un_lost_hang = bottom_whitebase;//�������������������ټ�¼�����һ�е�û�ж�����У��Ա��ڶ���һ�е�״̬����׼ȷ���ж�.��ʼֵΪbottom_whitebase��Ϊ��bottom_whitebase��ʼ���ж�Ϊû�ж���
  deal_start_line = bottom_whitebase + 1;  
  top_whiteline = ROW -1;
  hang_search_start = white_refer;  //�ӻ�׼�е��е����ɨ�� 
   
  for(i = deal_start_line ; i < ROW ;i++)//��״̬��־���г�ʼ��
    {
      Row_state[i] = 3;
    }
  
  for(i = deal_start_line ;i < ROW;i++) 
  {
    //////////////////���ҵ�������ʼ///////////////////////
    //�������
    j = hang_search_start;
    left_black[i] = hang_search_start;
    while(j >= 2)
    {     
      
      if(VideoImage1[i][j] - VideoImage1[i][j-2] > OT
         && f_abs16(VideoImage1[i][j]-VideoImage1[i][j+1]) < OT && f_abs16(VideoImage1[i][j+1]-VideoImage1[i][j+2]) < OT && VideoImage1[i][j+2]-VideoImage1[i][j+3] < OT)  //�˳��ڲ��ı������
        {
          if(f_abs16(j - left_black[i-1]) < f_abs16(left_black[i] - left_black[i-1]))//�˳�����
           left_black[i] = j;
        } 
       if(left_black[i] != hang_search_start && (f_abs16(j - left_black[i-1]) > f_abs16(left_black[i] - left_black[i-1])
                                                 || (f_abs16(left_black[i] - left_black[i-1])  < 5 && j<=left_black[i-1] )))
       {
        break;
       }//���ټ������������������һ������㣬��ֹͣ
     
         //��ǰһ��״̬�Ƕϵ��״̬ʱ�����ʱ�����ڲ��������������ص�ʱ����Ͳ���������������û���ѵ���
          //���ٵ����������߽�������
       if(Row_state[i-1] == 0 || Row_state[i-1] == 2)//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
          {
            if( j <  left_black[i - 1]  && left_black[i] != hang_search_start) //ǰһ��Ϊ�ϵ�״̬ʱ���������˵�֮������������������
             {
              break; 
            }
          }
          j--;
    }      //����������ߵ�while����
    //��������ߵĳ����ж�
    if(j == 1 && left_black[i] == hang_search_start)      //����߽��ˣ����Ǳ�����û�иı�ʱ����������Χ��û���ҵ�����㣬����Ϊ��ͼ����Ȼ����
    {
      if(VideoImage1[i][j] - VideoImage1[i][j-1] > OT)
         left_black[i] = 1;
      else
        left_black[i] = 0;
    }

  
    //�ұ�����
    j = hang_search_start;
    right_black[i] = hang_search_start;
    
    while( j <=COLUMN-3 )
    { 
      if( VideoImage1[i][j] - VideoImage1[i][j+2] > OT 
         && f_abs16(VideoImage1[i][j]-VideoImage1[i][j-1]) < OT && f_abs16(VideoImage1[i][j-1]-VideoImage1[i][j-2]) < OT && VideoImage1[i][j-2]-VideoImage1[i][j-3] < OT)  //�˳��������
        {
          if(f_abs16(j-right_black[i-1]) < f_abs16(right_black[i] - right_black[i-1]))
          {
                right_black[i] = j ;
          }
        }
      if(right_black[i] != hang_search_start &&( f_abs16(j-right_black[i-1]) > f_abs16(right_black[i] - right_black[i-1])
         ||(f_abs16(right_black[i] - right_black[i-1])<5 && j== right_black[i-1] ) ))//�ڸ����������˵㣬ֻҪ������ǰһ�е���λ�ã���ֹͣ
      {
        break;
      }
      if(Row_state[i-1] == 1 || Row_state[i-1] == 2)
          {
            if( j > right_black[i - 1]  && right_black[i] != hang_search_start) //��ǰһ��Ϊ�ϵ�״̬ʱ���������˵�֮������������������
             {
              break;
            }
            //�����������ߴ�����
            //if()
          }
        j++;
    }    //�ұߵ�while��������
  
    if(j == COLUMN-2 && right_black[i] == hang_search_start)
    {
      if( VideoImage1[i][j] - VideoImage1[i][j+1] > OT)
         right_black[i] = COLUMN - 2 ;
      else
         right_black[i] = COLUMN - 1 ;
    }
    ///////////////////////���ҵ���������//////////////////////////
    
    
    //  /////////////������״̬��ǿ�ʼ////////////////////////////////
  if(i >= deal_start_line)//ֻ�ǶԴ��ڿ�������ı߽���д���
    {    
      //��ͼ��ı��ص����˱߽��ʱ���ж�Ϊ����      ---------------------����ĵ�һ���ж�
      if((left_black[i] <= 1  || left_black[i] >= COLUMN-2 )&& (Row_state[i - 1] == 0||Row_state[i - 1] == 2) && right_black[i] >= 1 && right_black[i] <= COLUMN-2)
      {         //���ڵ���߽�֮���Ƿ���Ϊ��������⣬������������
           Row_state[i] =0;//��߶���
      }
      else if(left_black[i] >= 1 && left_black[i] <= COLUMN-2 && (right_black[i] <= 1 || right_black[i] >= COLUMN-2)&& (Row_state[i - 1] == 1||Row_state[i - 1] == 2))
      {
           Row_state[i] = 1;//�ұ߶���
      } 
      else if((left_black[i] <= 1 || left_black[i] >= COLUMN-2 ) && (right_black[i] <= 1 || right_black[i] >= COLUMN-2))
      {
           Row_state[i] = 2;//���߶��߶���
      }
      else
      {
           Row_state[i] = 3;//���߶���û�ж���
      }
      
 /*���״̬ר���������ʮ�ֵ�·�Ķ�����������ʱʮ�ֵ�·��������һ�ߵ����˱߽磬���������һ��ȴ���Ժܴ�����������չ*/
      if( i> 10)
      {
        if(left_black[i] <= 1 && right_black[i]-right_black[i-1] >= 2 && right_black[i]-right_black[i-2] > 5 && right_black[i]-right_black[i-3] > 6)
        {
          if(Row_state[i] == 0 ||Row_state[i] == 2)//���ڵ�һ�ν���һ���ж�
              Row_state[i] = 2;
           else //if(Row_state[i] == 1 ||Row_state[i] == 3)
             Row_state[i] = 1;//1��ʾ����ֻ���ұ߶���
        }
        else if(right_black[i] >= COLUMN-2 && left_black[i-3] - left_black[i] > 6 && left_black[i-2] - left_black[i] > 5 && left_black[i-1] - left_black[i] >= 2 )
        {
         if(Row_state[i] == 1||Row_state[i] == 2)//���ڵ�һ�ν���һ���ж�
              Row_state[i] = 2;//0��ʾ������߶���,���ұ�û�ж���
           else
              Row_state[i] = 0;//0��ʾ����ֻ����߶���
        }
      }
      
        //���������ߵ�״̬�����ж�//---------------------------����ĵڶ����ж�
      //ע��������жϱ���Ҫ���������һ����������״̬�������ǰһ�е�״̬��ǰһ�е�״̬�Ĳ�ͬ��Ҫ������ͬ�Ĵ�������
      if((right_black[i] - left_black[i])-(right_black[i-1] - left_black[i-1])>= 8)//  ����3�Ļ����ܳ�������//������þ���ֵ������Ϊ�˷�ֹ���
      {
         if(( f_abs16(left_black[i] - left_black[i-1]) < f_abs16(right_black[i] - right_black[i-1]))
            && f_abs16(left_black[i] - left_black[i-1]) <= 3)//��ߵ�ͻ��С���ұߵ�  ˵���ұߵĵ㷢����ͻ��
         {
           if(Row_state[i] == 0 ||Row_state[i] == 2)//���ڵ�һ�ν���һ���ж�
              Row_state[i] = 2;
           else //if(Row_state[i] == 1 ||Row_state[i] == 3)
           {
             Row_state[i] = 1;//1��ʾ����ֻ���ұ߶���
           }
         } 
        else if(( f_abs16(left_black[i] - left_black[i-1]) > f_abs16(right_black[i] - right_black[i-1]))
            && f_abs16(right_black[i] - right_black[i-1]) <= 3)//��ߵ�ͻ��С���ұߵ�  ˵���ұߵĵ㷢����ͻ��
         {
           if(Row_state[i] == 1||Row_state[i] == 2)//���ڵ�һ�ν���һ���ж�
              Row_state[i] = 2;//0��ʾ������߶���,���ұ�û�ж���
           else
              Row_state[i] = 0;//0��ʾ����ֻ����߶���
         }
         else 
         {
           Row_state[i] = 2;//2��ʾ�������߶�����
         }
      }
    
      
      
        if(Row_state[i-1] == 0)//��߶���
        {
          if((right_black[i] - left_black[i]) - (right_black[un_lost_hang] - left_black[un_lost_hang]) >= 3)
          {
            if(Row_state[i] == 1 ||Row_state[i] == 2)
            {
              Row_state[i] = 2;
            }
            if(Row_state[i] == 3)
            {
              Row_state[i] = 0;
            }
          }
        }
        
       else if(Row_state[i-1] == 1)//��߶���
        {
          if((right_black[i] - left_black[i]) - (right_black[un_lost_hang] - left_black[un_lost_hang]) >= 3)
          {
            if(Row_state[i] == 0 ||Row_state[i] == 2)
            {
              Row_state[i] = 2;
            }
           if(Row_state[i] == 3)
             Row_state[i] = 1;
          }
        }
      
    //��¼����Ķ�û�ж������
      if( Row_state[i] == 3)
      {
        un_lost_hang = i;
      }
      ////////////���ұ��ر�ǽ���/////////////////////////
      
      //ǰ�������������״̬���жϣ������������������
      if(Row_state[i] == 0)  //��߶���
      {
        if(right_black[i]- (right_black[i-1] - left_black[i-1]) <= 0 )//�޷�
          left_black[i]=0;
        else
        left_black[i] = right_black[i] - (right_black[i-1] - left_black[i-1]);//����1������������ͼ���ڿ����ڼ�С��ԭ��
      }      
      else if(Row_state[i] == 1)
      {
        if(left_black[i] + (right_black[i-1] - left_black[i-1]) >= COLUMN-1)
          right_black[i] = COLUMN-1;   
        else
          right_black[i] = left_black[i] + (right_black[i-1] - left_black[i-1]);//
      }
      else if(Row_state[i] == 2)
      {
         left_black[i] = left_black[i-1];
         right_black[i] = right_black[i-1];
       }
    } 
    
    
    hang_search_start = (right_black[i] + left_black[i])/2; 
    //////////////////���ҵĴ�������///////////////////////////// 
    
    ///�������Ч�е��ж�/////////////�ж�һ/////////////////////


    if( i> 20 &&i<=top_whiteline && right_black[i] -  left_black[i] < 2*(ROW-i)/5+ WHITE_TOP_WHITELINE_POINT   //////////////////////////////////////////////////////////////////////////
       && (right_black[i-1] -  left_black[i-1]) <  2*(ROW-i)/5 + WHITE_TOP_WHITELINE_POINT 
       ) //ֻ�ж�һ��&& top_whiteline >= ROW-1
    { 
     // if(i<ROW-1) while(1){}
      top_whiteline = i;
    }
    /////////////////////�ж϶�////////////////////////
    center_white[i] = (right_black[i] + left_black[i])/2; 
    if(i>10 && i < ROW-1 &&top_whiteline >= ROW-1 &&( VideoImage2[i-1][center_white[i]] - VideoImage2[i+1][center_white[i]] > OT - 10) /////top_whiteline >= ROW-1 //////////�е�����////////////////////////////////
       &&  VideoImage2[i-1][center_white[i]-1] - VideoImage2[i+1][center_white[i]-1] > OT - 10
              &&  VideoImage2[i-1][center_white[i]+1] - VideoImage2[i + 1][center_white[i]+1] > OT - 10 )  //����е��ж���ԭʼͼ��
    {
      //�����ַ�ʽ��һ���׶˾��ǣ�ͼ�����һ��ͻ�䣬�޷���ʵ�ķ�Ӧ�������ر���60�Ⱥ�50�������΢С���������侭���޲�
       top_whiteline = i-1;
      for( n = top_whiteline; n >  top_whiteline - 7;n--)
      {
        if(left_black[n] <= 1)
        {
          for( k = n; k <= top_whiteline ; k++)
          {
             left_black[k] = 0;
             //���й滮����е�״̬��Ҫ���µĶ���
         /*  if(Row_state[k] == 1 ||Row_state[k] == 2)
            {
              Row_state[k] = 2;
            }
            if(Row_state[k] == 3)
            {
              Row_state[k] = 0;
            }*/
          }
        //  break;  //���ﻹ������break����Ϊ�е�ʱ����ܻ���һ�����������ˡ��� 0 1 0 0 0
        }
        else if(right_black[n] >= COLUMN-2)
        {
          for( k = n; k <= top_whiteline ; k++)
          {
             right_black[k] = COLUMN-1;
             
         /*  if(Row_state[k] == 0 ||Row_state[k] == 2)
            {
              Row_state[k] = 2;
            }
            if(Row_state[k] == 3)
            {
              Row_state[k] = 1;
            }*/
          }
          //break;
        }
      }
    }

  }//forѭ���Ľ���  
  
}

//------------------------ͨ���ҳ����������ԣ��������߽��д������鹹����ϳ�������----------------------//
/*�����������������ӣ����Ҹ��������Լ��ģ�Ȼ��������ߣ�����������״̬��־���ٽ���һ�����
 0  ��ʾ������߶ϵ�
 1  ��ʾ�ұ����߶ϵ�
 2  ��ʾ���߶����� 
����߽����ֱ�ӵ�������
�������ߺ�ʮ�ֵ�·�Ĵ�����ֻҪ��֤��������ˣ���1����֤���ҵ����ܵ��ϵĵ㣻2����֤����������״̬�ļ�¼���Ե���ȷ//////
*/
void Deal_BlackEdge(void)
{ 
  int16 i=0,k=0;
  uint8 un_out_hang = bottom_whitebase ;
  uint8 lost_start_line=0;
  uint8 lost_end_line=0;
  left_top_whiteline = top_whiteline;
  right_top_whiteline = top_whiteline;

  //ͼ���ͻ����������ĳ��֣�����������Ŷ�Row_state[i]����һ����ֵ�˲�
  //��Row_state[i]�˲�
  for( i=bottom_whitebase + 1;i < top_whiteline-2;i++)
 {
   if(Row_state[i-1] == Row_state[i+1] && Row_state[i-1] != Row_state[i])
   {
     Row_state[i] = Row_state[i-1];
   }
 }
  
  
  
  for( i=bottom_whitebase+1 ;i < top_whiteline-1;i++)
  {
    lost_start_line = 0;
    lost_end_line = 0;
    
    if( (Row_state[i-1] == 1 || Row_state[i-1] == 3) && (Row_state[i] == 0 || Row_state[i] == 2))   //�ж���ߵ�i ���Ƿ񶪵� //////////////////////////////////////////////////////////  
    {
       lost_start_line = i - 1;//��¼�����ǰһ��
       while(i < top_whiteline-1)
        {
          if((Row_state[i] == 1 || Row_state[i] == 3) && (Row_state[i+1] == 1 || Row_state[i+1] == 3))  //
          {
            if(lost_end_line >= top_whiteline -2)
              lost_end_line = i;
            else
              lost_end_line = i + 1;
            
            break; 
          }
           i++;//i++����Ҫ��if���ж�֮����У�����ᵼ�³���
        }
       if(lost_end_line !=0)
       {  
         for(k = lost_start_line+1; k< lost_end_line;k++)
         {                                                                  
          left_black[k] = left_black[lost_start_line] + (k -lost_start_line)*(left_black[lost_end_line]-left_black[lost_start_line])/(lost_end_line - lost_start_line);  
         }
       }   
      else if(lost_end_line ==0 && lost_start_line >  top_whiteline/3 && lost_start_line <ROW-1  ) //����еĵ㵽����ص�ʱ�򣬲��ж�
       {   
        if( left_black[top_whiteline] > 1)
         {
           left_top_whiteline = lost_start_line;
           break;
        }
       }
         
    }
  }
  
  //�ұ�
  for( i=bottom_whitebase ;i < top_whiteline-1;i++)
  {
    lost_start_line = 0;
    lost_end_line = 0;
    if( (Row_state[i-1] == 0 || Row_state[i-1] == 3) && (Row_state[i] == 1 || Row_state[i] == 2))//�ж��ұߵ�i ���Ƿ񶪵�
    {
        lost_start_line = i - 1;//��¼�����ǰһ��
       while(i< top_whiteline-1)
        {
          //�����������ҵ��˵�����Ϊ�ҵ������ӵ�
          if((Row_state[i] == 0 || Row_state[i] == 3) && (Row_state[i+1] == 0 || Row_state[i+1] == 3))
          {
            if(lost_end_line >= top_whiteline -2)
              lost_end_line = i;
            else
              lost_end_line = i + 1;
            break;
          }  
          i++;
        }
       if(lost_end_line !=0)
       {
         for(k = lost_start_line+1; k< lost_end_line;k++)
         {                                                                    
          right_black[k] = right_black[lost_start_line] + (k -lost_start_line)*(right_black[lost_end_line]-right_black[lost_start_line])/(lost_end_line - lost_start_line);  
         }
       }
       else if(lost_end_line ==0 && lost_start_line > top_whiteline/3 && lost_start_line <ROW-1 )
       {   
         if(right_black[top_whiteline] < COLUMN -2)
         {
           right_top_whiteline  = lost_start_line;
           break;
        }
       }
       
    }
  }
 ////////////////
  if(right_top_whiteline > left_top_whiteline)
  {
    top_whiteline = right_top_whiteline;//���˶�����������⣬��Ҫ�Զ��ߵ���һ�������ߴ���,�������ұ�
    for(i = left_top_whiteline;i<=right_top_whiteline;i++)
    {
       if(right_black[i]- (right_black[i-1] - left_black[i-1]) <= 0 )//�޷�//////////////////////////////////////////////////////////////////////////////////////////////////////////
          left_black[i]=0;
        else
        left_black[i] = right_black[i] - (right_black[i-1] - left_black[i-1]);
    }
    
  }
 else if(right_top_whiteline < left_top_whiteline)
 {
   top_whiteline = left_top_whiteline;
     for(i = right_top_whiteline;i<=left_top_whiteline;i++)
  {
    if(left_black[i] + (right_black[i-1] - left_black[i-1]) >= COLUMN-1)
      right_black[i] = COLUMN-1;   
    else
      right_black[i] = left_black[i] + (right_black[i-1] - left_black[i-1]);//
  }
 }
else
  {
    top_whiteline = right_top_whiteline;
  }

 //�˳����ҵı����ߵĵ�������///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  for( i=bottom_whitebase + 1 ;i <= top_whiteline;i++)
  {
    if(left_black[i-1] <= 1 && left_black[i] > 1 && left_black[i+1] <= 1)
    {
      left_black[i] = 0;
 /*     
      if(Row_state[k] == 1 ||Row_state[k] == 2)
      {
        Row_state[k] = 2;
      }
      if(Row_state[k] == 3)
      {
        Row_state[k] = 0;
      }*/
    }
    
   if(right_black[i-1] >= COLUMN-2 && right_black[i] < COLUMN-2 && right_black[i+1] >= COLUMN-2)
    {
      right_black[i] = COLUMN-1;
      
    /*  if(Row_state[k] == 0 ||Row_state[k] == 2)
      {
        Row_state[k] = 2;
      }
      if(Row_state[k] == 3)
      {
        Row_state[k] = 1;
      }*/
    }
  }
 //�������˲�����
  
 //��֮ǰ�Ĵ���Ĳ��߽������µ��鹹
  //������鹹�ᵼ����һ������������ǣ�������Ķ��е�ʱ�򣬿��ܻ���ֲ��㣬�벻��������������͵����˶���Ķ���
  for( i=bottom_whitebase ;i <= top_whiteline;i++)
  {
    if(Row_state[i] != 3)///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    {
      center_white[i] = (right_black[i]+left_black[i])/2;
    }
  }
  
  //�������߳���ĵ㣬��������ƽ��ֵ�ķ���ȥ������������ǰһ�е�״̬���в���
  for(i= bottom_whitebase; i <= top_whiteline; i++)
  {
    if(left_black[i] <= 1 && right_black[i] <= COLUMN-5)  //������߳���ĵ���в���
    {
      if( right_black[i] - (right_black[un_out_hang]-left_black[un_out_hang])/2 < 0) 
        center_white[i] = 0;
      else
       center_white[i] = right_black[i] - (right_black[un_out_hang]-left_black[un_out_hang])/2;
    }
    
    else if(right_black[i] >= COLUMN-2 && left_black[i] >= 3)
    {
      if( left_black[i] + (right_black[un_out_hang]-left_black[un_out_hang])/2 > COLUMN - 1)
        center_white[i] = COLUMN - 1 ;
      else
       center_white[i] = left_black[i] + (right_black[un_out_hang]-left_black[un_out_hang])/2;
    }
    else
      un_out_hang = i;
  }
 
 //�����߽�����ֵ�˲�
 //�����ߺͱ����߽�����ֵ�˲�
 for( i=bottom_whitebase + 1;i < top_whiteline-2;i++)
 {
   if((center_white[i] > center_white[i-1] && center_white[i] > center_white[i+1]) ||(center_white[i] < center_white[i-1] && center_white[i] < center_white[i+1]))
   {
     center_white[i] = (center_white[i-1] + center_white[i+1])/2;
   }
      if((left_black[i] > left_black[i-1] && left_black[i] > left_black[i+1]) ||(left_black[i] < left_black[i-1] && left_black[i] < left_black[i+1]))/////////////////////////////////
   {
     left_black[i] = (left_black[i-1] + left_black[i+1])/2;                                                                                           ////////////////////////////////  
   }
      if((right_black[i] > right_black[i-1] && right_black[i] > right_black[i+1]) ||(right_black[i] < right_black[i-1] && right_black[i] < right_black[i+1]))/////////////////////////
   {
     right_black[i] = (right_black[i-1] + right_black[i+1])/2;                                                                                             ////////////////////////////
   }
 }
 
 
}


/*�����������������֣���һ��������������ȡ��������������͵��ж�///
*/
void get_line_information(void)
{
  int16 i;
  uint8 ramp_count = 0;  //���ڼ�¼���ȳ������Ƶ��еĸ���
  uint16 temp_center_line = 0;
  center_lost_hang = 0;
  
    /*����Ŀ�ʼ���ȶ����߳��ֶϵ����������޲�
  ��ͼ������߳����˾޴������ʱ����ǰ�����ȫ�����������ߵ���ֵ����
  */
 //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// 
  if(left_black[10]<=1 || left_black[11]<=1 ||right_black[10]>=COLUMN-2||right_black[11]>=COLUMN-2)
  {
    for(i = bottom_whitebase + 10 ; i < top_whiteline-5;i++)  //��׼���ϵ�ƫ��ô���
    {
      if(f_abs16(center_white[i] - center_white[i+2]) > CENTER_LOST_POINT
         &&f_abs16(center_white[i] - center_white[i+3]) > CENTER_LOST_POINT)
      {
        center_lost_hang = i;
        break;
      }
    }
     if(center_lost_hang >0)
     {
       for( i = bottom_whitebase ;  i< center_lost_hang + 2;i++)
       {
         center_white[i] = (left_black[i]+right_black[i])/2;  
       }
     }
  }
 //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// 
 for(i = bottom_whitebase+10; i< top_whiteline-1;i++)
 {
   if(
       (f_abs16(center_white[i] - left_black[i])<=1  && f_abs16(center_white[i+1] - left_black[i+1])<=1 && f_abs16(center_white[i+2] - left_black[i+2])<=1) 
        ||
      ( f_abs16(center_white[i] - right_black[i])<=1 && f_abs16(center_white[i+1] - right_black[i+1])<=1 && f_abs16(center_white[i+2] - right_black[i+2])<=1)
   
        )
   { 
     top_whiteline = i + 1;   //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////          
   }
 }
 if(top_whiteline < ROW - 2)
  {
    for(i = top_whiteline+1;i<ROW;i++)/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    {
      center_white[i] =MID;
      right_black[i] = MID+2;
      left_black[i] = MID-2;
    }
  }
    /////////// //ͼ��������߳���֮������Ҫȷ���ܹ�����Щ�У��ڴ�֮�����ȫ���ÿ��Ƶ��е�
   /////////////////////��ȡ���Ƶ������Ч��////////////////////////////////
  danger_count = 0;
  danger_flag = 1;//û���ж�֮ǰ����Ϊ��Σ��״̬
  control_top_whiteline = top_whiteline;
  
  ////////////////////������Ƶ������Ч��//////////////////////
     while(danger_flag ==1)
     {
       for(i = control_top_whiteline;i>=deal_start_line ;i--)//��ʾ�������±���
        {                                                                                         ///////////////////////////////////////////////////////////////////////////////////////////
          temp_center_line = center_white[control_top_whiteline] + (i - (control_top_whiteline)) *(center_white[deal_start_line] - center_white[control_top_whiteline])/( deal_start_line-(control_top_whiteline) );
        if(
           (right_black[i] - temp_center_line < (refer_road_width[i]/5)&&right_black[i] < COLUMN - 2) || (temp_center_line - left_black[i] < (refer_road_width[i]/5) && left_black[i] > 1)
             && i < ( top_whiteline - 10 )   //Զ�˵ĵ㲻���а�ȫ������ȫ��֮���ֱ���뼱���Ӱ��ܴ�
             )
            danger_count++;  
        }
       
       if(danger_count >0)
       {
         control_top_whiteline --;  
         danger_count = 0;
       }
       else
       {  
         danger_flag = 0;//Σ������
       }
     }
     
  /////////////////���������͵��ж�/////////////////////////
    S_right = 0;//���ҹյļ���
    S_left =0 ; //����ռ���
    S_straight = 0;
  for( i=bottom_whitebase ;i < control_top_whiteline;i++)
 {
   if(center_white[i+1]- center_white[i] > 1)
   {
     S_right++; //S ���ҼӼ�
   }
   else if(center_white[i]- center_white[i+1] > 1)
   {
     S_left++; //S ����Ӽ�
   }
   else
   {
     S_straight++;
   }
 }
 
 /*���������ж�
 �����������ж� ֻ������ֱ��(1) ���������(2)�� ����(3)�����(4) */
 
 
 if( control_top_whiteline >= 42)//??????0520
 {
   if(S_left<5 && S_right < 5 )
      direction = 1;  //ֱ��
   else if((f_abs16(S_left-S_right) < 8 && S_left>1 &&S_right>1)
           )
      direction = 2;  //�������
   else if((S_left<=1 )||(S_right<=1))
     direction = 6;  //����
   else
     direction =3;// re_direction;�����or�����������б�ŵ�ֱ��
 }
 else if( control_top_whiteline >=35 && control_top_whiteline < 41)
 {
  if((S_left<=1 || S_right <=1) && control_top_whiteline >= 39) ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    direction = 6;  //��
  else
   direction = 3;  //�����
 }
 else if( control_top_whiteline >=29 && control_top_whiteline <=37)////////////////////////////////////////////////////////////////////////////////////////////////////////////
 {
   if(ramp_flag == 1)
      direction = 1;//�µ���Ϊֱ��
   else 
      direction = 4;  //�������
 }
 else           //���ںܼ����������///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
 {
   if(ramp_flag == 1)
      direction = 1;//�µ���Ϊֱ��
   else 
      direction = 5;  //�������
 }
 re_direction =direction ;
 //////////////////////���������͵��жϽ���///////////////////////////////
  
 //ǰ����ڲ���������жϹ��ڼ򵥣������ᵼ�³�����ͽ��������ʱ����һ�����е���Ϊ//////////////////////////////////����ɾ�����µ�///////////////////////////////////////
 if(direction == 2)
 {
    S_right = 0;//���ҹյļ���
    S_left =0 ; //����ռ���
    S_straight = 0;
   for(i = bottom_whitebase;i<=control_top_whiteline-1;i++)
   {
     if(center_white[i]- center_white[i+1] > 0)
     {
       S_left++;
     }
     else if(center_white[i]- center_white[i+1] < 0)
     {
       S_right++;
     }
     else
     {
       S_straight++;
     }
   }
   
   if(f_abs16(S_left-S_right) >37)
   {
     direction = 3;//�������������Ϊ���� ��������
   }
 }  
  //////////////////////////////�����������Ż�//////////////////////////////
 //��Ҫע����Ǽ�Ȼ�Ѿ��������������жϳ����ˣ���ô�Ϳ��԰��ղ�ͬ������ʵ�ֲ�ͬ���Ż��ر�����Բ������o
 if(direction == 2)  //�������  �����д���60
 {
   for( i=bottom_whitebase ;i <= control_top_whiteline;i++)//������ʲô������������������ͼ�������ƽ��
     {
      if(center_white[i] > MID)//����
      {
        if( center_white[i] - (control_top_whiteline - 41 ) >= MID )////////////////////////////////////////////////////////////////////////////////////////////////////////////////
          center_white[i] = center_white[i] - (control_top_whiteline - 41);
        else
          center_white[i] = MID;
      }
      else 
      {
        if(center_white[i] + (control_top_whiteline - 41 ) <= MID)  //���з�ֹ�ڲ�������Ľϴ�Ĵ��
          center_white[i] = center_white[i] + (control_top_whiteline - 41 );  
        else
          center_white[i] = MID; 
      }
     }
 }
 else if(direction != 1 )   //ֱ��״̬�����й��У���ֱֹ��Ư��////
  {
   for( i=bottom_whitebase ;i <= control_top_whiteline;i++)//������ʲô������������������ͼ�������ƽ��
     {
      if(center_white[i] > MID)//����
      {
        if( center_white[i] - 2 >= MID )
          center_white[i] = center_white[i] - 2;
        else
          center_white[i] = MID;
      }
      else 
      {
        if(center_white[i] + 2 <= MID)  //���з�ֹ�ڲ�������Ľϴ�Ĵ��
          center_white[i] = center_white[i] + 2;  
        else
          center_white[i] = MID; 
      }
     }
 }
 
 /*
 center_average = 0;
 /////////////////�õ�ǰ50�е����Եľ�ֵ////////////////
    if(control_top_whiteline > 50)
  {
    for(i = bottom_whitebase+1;i<=control_top_whiteline- 10;i++)
   {
     center_average +=  center_white[i];
     if(i == control_top_whiteline - 10)    //ֻ�Ƕ�ǰ100cm���ҵ�ǰհ���м�Ȩ
     {
       center_average = center_average /(control_top_whiteline - bottom_whitebase - 10);
       center_linear_average = center_average;
     }
   }
  }
  */
 ///////////////////////////////////////////////////////////////////
  ///////////////////////////////////////////////////////////////////
  
    //Ϊ��׼ȷ���жϳ������ı仯���ƣ�ʮ���б�Ҫ���Ƕ����������ʷ���д洢������洢7����ʷֵ��Ȼ�����ģ���жϡ�
    //ͨ�����Է��� ���ֵ�ı仯������0 �� 25֮��仯  ����ֱ����ʱ��ֵ��0 - -8֮��������е�ʱ������16--25֮��仯
    //����ֵ�ﵽ19������Ϊ�Ѿ���������м�����ڳ����
  ///////////////��ֵ��ȡ����//////////////////////////////
  
  /*/////���µ����жϣ����µ��жϳ���֮���ñ�־λ��־������ֻ�������ڵ���ĸ���������
  �����µ��ļ��ֻ��Ҫ�����µ�������������нӽ����У�������ȴﵽ��һ���ķ�Χ�����¼��Ƚϵ����ѣ�
  �������ﲻ������£�һ��ֻ����һ���µ�״̬��ʱ�����ˣ���ʱʱ��Ϊ1s--2s֮�䣩��
  �Ҽ�����֮��ֻ��Ҫ���٣����ڶ�����Բ���ȥ�ܡ�ͼ���Ѿ����ÿ����ˡ�
  ���µ��ļ�ⲻ��ֻ���ÿ���ȥ�ж����������׺����������졣���Ի�Ҫ���϶Զ˵�����ƣ�����������ĳһ����Χ֮��,
  ���Ҫ��������֮ǰ�����ǰ����ġ�
  #define RAMP_WIDTH  45                  //ͼ��10~20�еĿ��ȷ�Χ�����÷�Χȷ��Ϊ�µ�
  #define RAMP_TIME   60
  uint8 ramp_time = 50;                     //�����µ���೤ʱ�����¿��������߼��
  int8 ramp_speed = 0;                    //�µ�����ֵ
  bool ramp_flag;                          //�����µ���־,��Ҫ���ڿ���
  bool ramp_dis_flag;                     //��Ҫ�Ƿ�ֹ�������� 
  �����µ��ļ�ⲻ������ߵļ��У���Ϊ�������׺�ʮ�ֵ�·���
 */
  ramp_count = 0;//3,65,4,25
  if( ramp_dis_flag ==0  && control_top_whiteline >= ROW - 10 ) //ֱ��״̬���  //�������ramp_dis_flag��־����Ϊ���ó����ڼ�����ܵ�������ʱ��������µ����м��
  {
    for(i = 28; i<=44; i++)
      {
        if(right_black[i]-left_black[i] >= refer_road_width[i] + 5)
          ramp_count ++;
      }        
    if(ramp_count >= 6)
    { 
      if(left_black[ 28] - left_black[24] > 0 && left_black[ 28] - left_black[24] <= 8
         && right_black[24] -right_black[28] > 0 && right_black[24] -right_black[28] <=8)
      {   
      ramp_flag = 1;
      ramp_dis_flag = 1;
      }
    } 
  }
  
  if(ramp_flag == 1)
  {
    gpio_set(PORTB,10,0);
    ramp_time++;
    if(ramp_time >= ramp_delay_time)
    {
      ramp_time = 0;
      ramp_flag = 0;
    }
  }
  
  else
  {
    gpio_set(PORTB,10,1);
  
  }
  
  if(ramp_dis_flag == 1)
  {
    ramp_dis_time++;
    if(ramp_dis_time >= 4 * ramp_delay_time)
    {
      ramp_dis_time = 0;
      ramp_dis_flag = 0;
    }
  }
}


/*-------------------------------��ȡ���ߵ��������ϵ��-----------------------------*/
float get_linear_factor(uint8 bottom,uint8 top,uint8 average)            //��������������׼�У����У���������MID�Ĳ�ֵ
{
    uint8 i;
    uint8 Y_aver=0;
    float X_square_sum=0;   //X��ƽ����
    float Y_square_sum=0;   //Y��ƽ����
    float multi_sum=0;      //XY�˻�֮��
    int temp=0,temp1=0,temp2=0; //���ḡ������ļĴ���
    float factor=0;
    
     Y_aver=(uint8)((bottom+top)/2);  //Y����ķ�Χ
    for(i=bottom;i<=top;i++)
    {
        temp=temp+(center_white[i]-average)*(center_white[i]-average);
        if(temp>30000)
        {
            X_square_sum=X_square_sum+temp;   //Xƽ����
            temp=0;
        }

        temp1=temp1+(i-Y_aver)*(i-Y_aver);
        if(temp1>30000)
        {
            Y_square_sum=Y_square_sum+temp1;   //Yƽ����
            temp1=0;
        }

        temp2=temp2+(center_white[i]-average)*(i-Y_aver);
        if(f_abs16(temp2)>30000)
        {
            multi_sum=multi_sum+temp2;    //X��Y�Ļ�
            temp2=0;
        }
    }
     
        X_square_sum=X_square_sum+temp;   //�ó�x��ƽ����
        Y_square_sum=Y_square_sum+temp1;  //�����y��ƽ����
        multi_sum=multi_sum+temp2;        //�����xy�ĳ˻�
    
       /* XX_square_sum =X_square_sum;      //���ڼ��
        YY_square_sum =Y_square_sum;
        XYmulti_sum = multi_sum;*/
        
        if(X_square_sum<0.1)   //��ֹ����Ϊ0
            X_square_sum=0.1;
        if(Y_square_sum<0.1)
            Y_square_sum=0.1;
        
        if(X_square_sum<300)  //С��300������ֱ��
            factor=1; // =1 or =-1 //��ȫ��ֱ��
        else  //�����ù�ʽ���� //ע�⴦���ٶȣ�С��200ʱ����ʱ���ٺܶ�
            factor=multi_sum/sqrt(X_square_sum*Y_square_sum)*(bottom_whitebase+control_top_whiteline-10)/(65-10);
        
        if(factor>0.95)
          factor=1;
        if(factor<-0.95)
          factor=-1;
    
        return factor;
}


/*���������߼���ͣ��������������ͷ���м��
 �������ҪĿ���Ǹ�stop_flag��λ,Ϊ���ܹ���������ߣ����뱣֤���Ǽ��ľ���Ϊ������ǰ��20�������ϡ�
�����ͼ����ԵĻ�����ͼ���30�У�
�����׵��ٶ������Ļ���Ҳ���Ǳ��뱣֤����ͼ��������һ����⵽��40ms*5m = 20����
ע������ļ���Ǽ��ڵ��׵����䡣����ȼ��׵��ڵ�������ӵ�׼ȷ
*/

uint8 zhou=0;
bool ting1=0;
/*
void check_start_stop_line()
{ 
  int i,j;
  uint8 left_start_stop_hang = 0;
  uint8 left_start_stop_flag = 0;
  uint8 right_start_stop_hang = 0;
  uint8 right_start_stop_flag = 0;
  //��������������
  if(top_whiteline - bottom_whitebase > 35)
  {
    for(i=bottom_whitebase+1;i< bottom_whitebase + 35;i++) //ֻ�Ǽ��ǰ��ʮ���У����ڳ�����ǰ20��������  
    {
        //���ٱ�֤���ߵ����ҵ��������ǰ�ɫ�� ����Ҫ��֤���ʱ����е�״̬Ϊ3
      if( top_whiteline >= 40
         && (VideoImage2[i - 1][ center_white[i]] -  VideoImage2[i + 1][ center_white[i]])< OT
          && (VideoImage2[i - 1][ center_white[i] - 1] -  VideoImage2[i + 1][ center_white[i] - 1]) < OT
           && (VideoImage2[i - 1][ center_white[i] + 1] -  VideoImage2[i + 1][ center_white[i] + 1]) < OT)
      {//���������ܹ��������Ǻ�ɫ��
        //�����ΰ�ɫ�ļ���õ������ұ��ظ�����������5����
        for(j = left_black[i] + 4 ; j <   center_white[i] - 3;j++)
        {
          if((VideoImage2[i + 2][ j ] -  VideoImage2[i - 1][ j])> OT-10
             &&(VideoImage2[i + 2][ j + 1] -  VideoImage2[i - 1][ j+1])> OT-10
                &&(VideoImage2[i + 2][ j + 2] -  VideoImage2[i - 1][ j + 2])> OT-10 ) // 
          {
             left_start_stop_hang = i;
             left_start_stop_flag = 1;
          }
        }
        
        for(j = right_black[i] - 4 ; j > center_white[i] + 3;j--)
        {
          if((VideoImage2[i + 2][ j] -  VideoImage2[i - 1][ j]) > OT-10
             &&(VideoImage2[i + 2][ j - 1] -  VideoImage2[i - 1][ j - 1])> OT-10
              &&(VideoImage2[i + 2][ j - 2] -  VideoImage2[i - 1][ j - 2])> OT-10 ) 
          {
             right_start_stop_hang = i;
             right_start_stop_flag = 1;
          }
        }//�ұ����� 
      } //���߷��ϱ�׼
        //���ҵ��˷��ϵ������ߵ�ʱ������ѭ��//�ж��ǻ�Ҫ��ֹͼ��Ĵ�λ
        if(  left_start_stop_flag == 1 && right_start_stop_flag == 1 && f_abs16(right_start_stop_hang - left_start_stop_hang) < 5)
        {
         ting1= 1;
          break;//
        }
    }//forѭ��
  }
  
  if(ting1==1)
         zhou++;
    if(zhou>=25)
    { ting_check_stop=1;zhou=0;ting1=0;gpio_set (PORTB, 10,LOW );}
}
*/

void check_start_stop_line()
{ 
  int i,j;
  uint8 left_start_stop_hang = 0;
  uint8 left_start_stop_flag = 0;
  uint8 right_start_stop_hang = 0;
  uint8 right_start_stop_flag = 0;
  //��������������
  if(top_whiteline - bottom_whitebase > 35)
  {
    for(i=bottom_whitebase+5;i< bottom_whitebase + 30;i++) //ֻ�Ǽ��ǰ��ʮ���У����ڳ�����ǰ20��������  
    {
        //���ٱ�֤���ߵ����ҵ��������ǰ�ɫ�� ����Ҫ��֤���ʱ����е�״̬Ϊ3
      if( top_whiteline >= 40
         &&  f_abs16(VideoImage2[i - 1][ center_white[i]] -  VideoImage2[i + 1][ center_white[i]] )< OT
          &&f_abs16( VideoImage2[i - 1][ center_white[i] - 1] -  VideoImage2[i + 1][ center_white[i] - 1]) < OT
           &&f_abs16( VideoImage2[i - 1][ center_white[i] + 1] -  VideoImage2[i + 1][ center_white[i] + 1]) < OT
             &&VideoImage2[i - 1][ center_white[i]]> BASE_OT&&VideoImage2[i - 1][ center_white[i]-1]> BASE_OT
               &&VideoImage2[i - 1][ center_white[i]+1]> BASE_OT)
      {//���������ܹ��������Ǻ�ɫ��
        //�����ΰ�ɫ�ļ���õ������ұ��ظ�����������5����
        for(j = left_black[i] + 4 ; j <   center_white[i] - 3;j++)
        {
          if((VideoImage2[i + 2][ j ] -  VideoImage2[i - 1][ j])> OT-10
             &&(VideoImage2[i + 2][ j + 1] -  VideoImage2[i - 1][ j+1])> OT-10
                &&(VideoImage2[i + 2][ j + 2] -  VideoImage2[i - 1][ j + 2])> OT-10 
                 &&(VideoImage2[i + 2][ j + 3] -  VideoImage2[i - 1][ j + 3])> OT-10
                  &&(VideoImage2[i + 2][ j + 4] -  VideoImage2[i - 1][ j + 4])> OT-10 ) // 
          {
             left_start_stop_hang = i;
             left_start_stop_flag = 1;
          }
        }
        
        for(j = right_black[i] - 4 ; j > center_white[i] + 3;j--)
        {
          if((VideoImage2[i + 2][ j] -  VideoImage2[i - 1][ j]) > OT-10
             &&(VideoImage2[i + 2][ j - 1] -  VideoImage2[i - 1][ j - 1])> OT-10
              &&(VideoImage2[i + 2][ j - 2] -  VideoImage2[i - 1][ j - 2])> OT-10
               &&(VideoImage2[i + 2][ j - 3] -  VideoImage2[i - 1][ j - 3])> OT-10
              &&(VideoImage2[i + 2][ j - 4] -  VideoImage2[i - 1][ j - 4])> OT-10 ) 
          {
             right_start_stop_hang = i;
             right_start_stop_flag = 1;
          }
        }//�ұ����� 
      } //���߷��ϱ�׼
        //���ҵ��˷��ϵ������ߵ�ʱ������ѭ��//�ж��ǻ�Ҫ��ֹͼ��Ĵ�λ
        if(  left_start_stop_flag == 1 && right_start_stop_flag == 1 && f_abs16(right_start_stop_hang - left_start_stop_hang) < 5)
        {
         ting1= 1;
          break;//
        }
    }//forѭ��
  }
  
  if(ting1==1)
         zhou++;
    if(zhou>=25)
    { ting_check_stop=1;zhou=0;ting1=0;gpio_set (PORTB, 10,LOW );}
}
/*-----------------------------------����͵���Ŀ��ƺ����ı���---------------------------------
����������ڽ����������Ż��Ϳ��ƣ����п��ư�������Ͷ�����������֡��������ͳһ�Ŀ���
*/
int16 big1=80;
int16 ft1=800;
int16 big=1100;
bool turn_l=0,turn_r=0;
 bool barrier_l=0;
 bool barrier_r=0;
bool jianshu=0;
//uint angle_record=0;
bool record_flag=0;
void Control()
{
 int16 i=0; //
 int16 angle_temp=0;
 center_average_a =0;
 center_average_b = 0;
 refer_error = 0;
 sumbe3=0;
 re_angle= angle;/////////�����
 
   //////////////////////��ͼ��ļ�Ȩƽ��ֵ����ȡ/////////////////////
  center_average = 0;//����
  
  error_servo_ref_p =0;  //�������p�����ڳ��������    3/13    1/2
  error_servo_ref_d=0; 

 if(control_top_whiteline>15)
{
  if(control_top_whiteline >= 41)                //������ֱ����>2m����������Ͱ뾶�ܴ�Ĵ���  
   {
      for(i = bottom_whitebase+4;i<=bottom_whitebase+33;i++)
     {
       center_average_a +=  center_white[i];
     }
      center_average_a = center_average_a /(30);
      
    for(i= 41; i>=37;i--)
      {
       center_average_b +=  center_white[i];
      }
      center_average_b = center_average_b /5;
      
      center_average = (20*center_average_a + 80*center_average_b)/100;     //   80 0.2     70 0.8
   }
  
  else  if(control_top_whiteline >=37)//����ǰ��Լ1m����
   {
      for(i = bottom_whitebase+4;i<=bottom_whitebase+30;i++)
     {
       center_average_a +=  center_white[i];
     }
      center_average_a = center_average_a /(27);
      
        for(i= control_top_whiteline; i>=control_top_whiteline-3;i--)
      {
       center_average_b +=  center_white[i];
      }
      center_average_b = center_average_b /4;
      
      center_average = (18*center_average_a+82*center_average_b)/100;     //   80 0.2     70 0.8
      
   }
 
  else if(control_top_whiteline >=33)//�����1m����
   {
      for(i = bottom_whitebase+4;i<=bottom_whitebase+24;i++)
     {
       center_average_a +=  center_white[i];
     }
      center_average_a = center_average_a /21;
      
      for(i= control_top_whiteline; i>=control_top_whiteline-2;i--)
      {
       center_average_b +=  center_white[i];
      }
      center_average_b = center_average_b /3;
      
      center_average = (16*center_average_a + 84*center_average_b)/100;     //   80 0.2     70 0.8
   }
  
  else if(control_top_whiteline >=27)//�����1m����
   {
      for(i = bottom_whitebase+4;i<=bottom_whitebase+15;i++)
     {
       center_average_a +=  center_white[i];
     }
      center_average_a = center_average_a /12;
      
      for(i= control_top_whiteline; i>=control_top_whiteline-2;i--)
      {
       center_average_b +=  center_white[i];
      }
      center_average_b = center_average_b /3;
      
      center_average = (14*center_average_a + 86*center_average_b)/100;     //   80 0.2     70 0.8
   }
  else   //
     {
      for(i = bottom_whitebase+4;i<=bottom_whitebase+10;i++)
     {
       center_average_a +=  center_white[i];
     }
      center_average_a = center_average_a /7;
      
      for(i= control_top_whiteline; i>=control_top_whiteline-2;i--)
      {
       center_average_b +=  center_white[i];
      }
      center_average_b = center_average_b /3;
      
      center_average = (12*center_average_a+88*center_average_b)/100;
      }
    refer_error = MID - center_average;  
    //���е�error
  if(abs(refer_error)<zhongjian)
  { lcd_ref_p= lcd_ref_p1;lcd_ref_d=lcd_ref_d1;}
  else
  { lcd_ref_p= lcd_ref_p2;lcd_ref_d=lcd_ref_d2;}  
  if(barrier_l==1||barrier_r==1) { lcd_ref_p= lcd_ref_p2+30;lcd_ref_d=lcd_ref_d2+20;}
  if( direction == 2){ lcd_ref_p= lcd_ref_p1+20;lcd_ref_d=lcd_ref_d1;}
  if(turn_l==1||turn_r==1)
 { lcd_ref_p= 64;lcd_ref_d=300;}
  
    error_servo_ref_p = 1*f_abs16(center_average_b-MID)/8 + lcd_ref_p + 1*(ROW - control_top_whiteline)/2;  //�������p�����ڳ��������    3/13    1/2
    error_servo_ref_d =  lcd_ref_d + f_abs16(center_average-MID)/20;//1*(ROW-control_top_whiteline)/16+    
     
   angle_temp=-(int16)( (error_servo_ref_p * refer_error + error_servo_ref_d * (refer_error - re_refer_error)) / 10);//     
 } 
 
 else
   angle_temp = re_angle;
 
 
 if(turn_l==1&&control_top_whiteline<31)
{
       
         angle_temp=-ft1;
 
         if(angle_temp<-1600)
           angle_temp=-1600;
 
}

else if(turn_r==1&&control_top_whiteline<31)
{
  
         angle_temp=ft1;
         
 if(angle_temp>1600)
      angle_temp=1600; 
        
}

if(turn_l==0&&turn_r==0)
{
   record_flag=0; 
}

 if(angle_temp>big)
      angle_temp=big;
 if(angle_temp<-big)
      angle_temp=-big; 
 
 angle=angle_temp;
 /*
 if(jianshu==1)/////turn_l==1||turn_r==1                   RealSpeed
 { 
 if( RealSpeed>Speed_set+30){Speed=Speed_set-ft-50;}// acce_static=ACCE_STATIC-fanting-80;
 else  if( RealSpeed>(Speed_set+10)){Speed=Speed_set-ft-40;}// acce_static=ACCE_STATIC-fanting-60;
 else  if( RealSpeed>(Speed_set)){ Speed=Speed_set-ft-30;}//acce_static=ACCE_STATIC-fanting-40;
  else  if( RealSpeed>(Speed_set-20)){Speed=Speed_set-ft-25;}//  acce_static=ACCE_STATIC-fanting-20;
 else  if( RealSpeed>(Speed_set)-30){ Speed=Speed_set-ft-20;}//acce_static=ACCE_STATIC-fanting-10; 
 else { Speed=Speed_set-ft-15;}   // acce_static=ACCE_STATIC-fanting;
 }
else  Speed=Speed_set;
 */
/*  if( begin==0&&liu==1&&feng==1 )acce_static=ACCE_STATIC-1000;
else  if( begin==0&&liu==0&&feng==1)acce_static=ACCE_STATIC-50;
else  if( begin==0&&liu==1&&feng==0)acce_static=ACCE_STATIC-150;
else  if( begin==0&&liu==0&&feng==0)acce_static=ACCE_STATIC;
*/ 
 /*
if(jianshu==0)
{
 if( RealSpeed>Speed_set+10) 
   {
  if(abs(refer_error)>45)Speed=Speed_set-40;
    else  if(abs(refer_error)>40)Speed=Speed_set-30;
      else    if(abs(refer_error)>30)Speed=Speed_set-20; 
        else    if(abs(refer_error)>25)Speed=Speed_set-10; 
          else   if(abs(refer_error)>15)Speed=Speed_set;
            else   if(abs(refer_error)>10)Speed=Speed_set+10;
               else   Speed=Speed_set+15; 
     }
else 
  if( RealSpeed>Speed_set) 
 {
  if(abs(refer_error)>45)Speed=Speed_set-30;
    else  if(abs(refer_error)>40)Speed=Speed_set-20;
      else    if(abs(refer_error)>30)Speed=Speed_set-10; 
        else    if(abs(refer_error)>25)Speed=Speed_set; 
          else   if(abs(refer_error)>15)Speed=Speed_set+5;
            else   if(abs(refer_error)>10)Speed=Speed_set+15;
               else   Speed=Speed_set+25; 
      }  
 else 
  if( RealSpeed>Speed_set-15) 
 {
  if(abs(refer_error)>45)Speed=Speed_set-20;
    else  if(abs(refer_error)>40)Speed=Speed_set-10;
      else    if(abs(refer_error)>30)Speed=Speed_set-5; 
        else    if(abs(refer_error)>25)Speed=Speed_set; 
          else   if(abs(refer_error)>15)Speed=Speed_set+10;
            else   if(abs(refer_error)>10)Speed=Speed_set+20;
               else   Speed=Speed_set+30; 
      }  
 else 
  if( RealSpeed>Speed_set-30) 
 {
  if(abs(refer_error)>45)Speed=Speed_set-15;
    else  if(abs(refer_error)>40)Speed=Speed_set-10;
      else    if(abs(refer_error)>30)Speed=Speed_set; 
        else    if(abs(refer_error)>25)Speed=Speed_set+5; 
          else   if(abs(refer_error)>15)Speed=Speed_set+15;
            else   if(abs(refer_error)>10)Speed=Speed_set+25;
               else   Speed=Speed_set+35; 
      } 
 else
 {
  if(abs(refer_error)>45)Speed=Speed_set-10;
    else  if(abs(refer_error)>40)Speed=Speed_set-5;
      else    if(abs(refer_error)>30)Speed=Speed_set+5; 
        else    if(abs(refer_error)>25)Speed=Speed_set+15; 
          else   if(abs(refer_error)>15)Speed=Speed_set+25;
            else   if(abs(refer_error)>10)Speed=Speed_set+35;
               else   Speed=Speed_set+45; 
      }   
}
 */


/*  if( direction == 1 )
 {
   if(ramp_flag==1 )
 { 
   Speed=Speed_set+45;  
 gpio_set (PORTB, 10, 0);
 }
   else 
   {
   Speed=Speed_set+45; 
   }
 }
  else  if( direction == 2 )
 {   
   acce_static=ACCE_STATIC-40;
 }
 
 else  if( direction ==3||direction == 5||direction == 6||direction == 4 )
 {
    acce_static=ACCE_STATIC+30;    
 }
 else 
    acce_static=ACCE_STATIC; 
 //
*/
 // if(ramp_flag==1 )gpio_set (PORTB, 10, 0);
/* 
 if( direction == 1 )gpio_set (PORTB, 10, 0);
 else  gpio_set (PORTB, 10,1);

  if(barrier_l==1||barrier_r==1) 
     gpio_set (PORTB, 10, 0);
 else 
   gpio_set (PORTB, 10,1);
  */
 
 if(turn_l==0&&turn_r==0)
 {
    re_refer_error =refer_error;
 }
 
}


 
 float close=1.0;
 
void barrier( )
{
 uint16 tadge_l=0,tadge_r=0;
 uint16 i=0;
 int16 record=0;
if(control_top_whiteline>20)
{
	for(i = bottom_whitebase+3;i<control_top_whiteline-3;i++)
{
	if( f_abs16( left_black[i]-left_black[i-1] )<4&&f_abs16(left_black[i]-left_black[i-2])<4&&f_abs16(left_black[i]-left_black[i-3])<4&&left_black[i+1]-left_black[i]>8&&left_black[i+2]-left_black[i]>7&&left_black[i+3]-left_black[i]>6)
{
	barrier_l=1;
        //barrier_r=0;
        tadge_l=i;
        break;
}

else
{
	barrier_l=0;
        //barrier_r=0;
        tadge_l=0;
}

}


for(i = bottom_whitebase+3;i<control_top_whiteline-3;i++)
{
	

 if(f_abs16(right_black[i]-right_black[i-1])<4&&f_abs16(right_black[i]-right_black[i-2])<4&&f_abs16(right_black[i]-right_black[i-3])<4&&right_black[i]-right_black[i+1]>8&&right_black[i]-right_black[i+2]>7&&right_black[i]-right_black[i+3]>6)
{
	barrier_r=1;
        //barrier_l=0;
        tadge_r=i;
        break;
}

else
{
	barrier_r=0;
         tadge_r=0;
        //barrier_r=0;
}


}

if(barrier_l==1&&barrier_r==0)
{         GPIO_SET(PORTB, 10,0);
	for(i = bottom_whitebase;i<=control_top_whiteline;i++)
{
	record=left_black[tadge_l+3]+2/5*(tadge_l+3-i);
        if(record<=0)
          record=0;
        else if(record>=MID)
        {
          record=MID;
        }
        left_black[i]=record;
        
       record= (left_black[i]+right_black[i])/2;
       if(record<=0)
       {
          record=0;
       }
        else if(record>=COLUMN-1)
        {
          record=COLUMN-1;
        }
       center_white[i]=record;
        
}
 
}

else if(barrier_r==1&&barrier_l==0)
{        GPIO_SET(PORTB, 10,0);
	for(i = bottom_whitebase;i<=control_top_whiteline;i++)
{
	 record=right_black[tadge_r+3]-2/5*(tadge_r+3-i);
      
        if(record<=MID)
          record=MID;
        else if(record>=COLUMN-1)
        {
          record=COLUMN-1;
        }
        right_black[i]=record;
        
       record= (left_black[i]+right_black[i])/2;
       if(record<=0)
       {
          record=0;
       }
        else if(record>=COLUMN-1)
        {
          record=COLUMN-1;
        }
       center_white[i]=record;
}

}

else if(barrier_r==1&&barrier_l==1)
{
     GPIO_SET(PORTB, 10,0);
     
     for(i = bottom_whitebase;i<=control_top_whiteline;i++)
     {
       
       record=left_black[tadge_l+3]+2/5*(tadge_l+3-i);
        if(record<=0)
          record=0;
        else if(record>=MID)
        {
          record=MID;
        }
        left_black[i]=record;
        
       record=right_black[tadge_r+3]-2/5*(tadge_r+3-i);
      
        if(record<=MID)
          record=MID;
        else if(record>=COLUMN-1)
        {
          record=COLUMN-1;
        }
        right_black[i]=record;
        
       record= (left_black[i]+right_black[i])/2;
       if(record<=0)
       {
          record=0;
       }
        else if(record>=COLUMN-1)
        {
          record=COLUMN-1;
        }
       center_white[i]=record;
     }
    
}

else
{
     //GPIO_SET(PORTB, 10,1);
     
}

}


}

uint8 qing=38;
uint8 huanjie=25;



void across_smile()
{
//bool check_flag_l=0;
//bool check_flag_r=0;

uint16 turn_l_count=0;
uint16 turn_r_count=0;

int16 record=0;

int tage=0;
uint16 count_tt=0;
uint16 i=0;
uint16 temp=0;

uint16 j=0;

if( control_top_whiteline>30)
{
    turn_l=0;
    turn_r=0;
}

for(i = bottom_whitebase+5;i<control_top_whiteline-6;i++)
{
     if(Row_state[i-3]==3&&Row_state[i-2]==3&&Row_state[i-1]==3&&Row_state[i]!=3&&Row_state[i+1]!=3&&Row_state[i+2]!=3)
  {
	if( Row_state[i]==0&&Row_state[i+1]==0&&Row_state[i+2]==0&&left_black[i]>10&&right_black[i]<COLUMN-10)//���ֶ���
       {
	 temp=i;
	for(j=temp;j<temp+10;j++)
       { 
         if( left_black[j]>6)
         {
          if( VideoImage2[j][ left_black[j]-1]>WHITE_BLACK_OT&&VideoImage2[j][ left_black[j]-2]>WHITE_BLACK_OT&&VideoImage2[j][ left_black[j]-3]>WHITE_BLACK_OT
               &&VideoImage2[j][ left_black[j]-4]>WHITE_BLACK_OT&&VideoImage2[j][ left_black[j]-5]>WHITE_BLACK_OT&&VideoImage2[j][ left_black[j]-6]>WHITE_BLACK_OT&&(Row_state[j]!=2&&Row_state[j]!=1))
          {
            turn_l_count++;
          }
         }

       }//�����������
       
       if(turn_l_count>7&&center_white[control_top_whiteline]>35&&center_white[control_top_whiteline]<MID&&right_black[control_top_whiteline]-left_black[control_top_whiteline]<40)   //////
       {    
            turn_l=1;
            tage=temp;
            break;
        }
  
       }
        else if( Row_state[i]==1&&Row_state[i+1]==1&&Row_state[i+2]==1&&right_black[i]<COLUMN-10&&left_black[i]>10)
      {
        temp=i;
	for(j=temp;j<temp+10;j++)
       { 
         if( right_black[j]<COLUMN-7)
         {
          if( VideoImage2[j][ right_black[j]+1]>WHITE_BLACK_OT&&VideoImage2[j][ right_black[j]+2]>WHITE_BLACK_OT&&VideoImage2[j][ right_black[j]+3]>WHITE_BLACK_OT
               &&VideoImage2[j][ right_black[j]+4]>WHITE_BLACK_OT&&VideoImage2[j][ right_black[j]+5]>WHITE_BLACK_OT&&VideoImage2[j][ right_black[j]+6]>WHITE_BLACK_OT&&(Row_state[j]!=2&&Row_state[j]!=0))
          {
            turn_r_count++;
          }
         }

       }
       
       if(turn_r_count>7&&center_white[control_top_whiteline]>MID&&center_white[control_top_whiteline]<121&&right_black[control_top_whiteline]-left_black[control_top_whiteline]<40)   
       {    
            turn_r=1;
            tage=temp;
            break;
       }
           
           
         }
        
        
      }
}
 if(turn_l==1||turn_r==1)jianshu=1;
else jianshu=0;     
if( control_top_whiteline>=qing)
{
    turn_l=0;
    turn_r=0;
}

if(turn_l==1)
{
  GPIO_SET(PORTB, 10,0);
  if( tage!=bottom_whitebase-3&&tage!=0)
  {
   for(i =bottom_whitebase; i<=control_top_whiteline;i++)
         {                                                                    
          record =huanjie+center_white[bottom_whitebase] + (i -bottom_whitebase)*(left_black[tage+3]-center_white[bottom_whitebase])/( tage+3-bottom_whitebase );  
          if( record<=0)
              record=0;

          else if( record>=MID)
              record=MID;
          center_white[i]=(uint8)record;
          
         }	
 
    
  
}
 
  else if( tage==0 ) 
{
  for(i =bottom_whitebase; i<=control_top_whiteline;i++)
  {
    if(Row_state[i]==0||left_black[i]<=1)//����������
    {
      count_tt++;
    }
  }
  
  if(count_tt>=(bottom_whitebase+control_top_whiteline)/3)
  {
  for(i =bottom_whitebase; i<=control_top_whiteline;i++)  
    center_white[i] =huanjie;
 /* {
      center_white[i] = right_black[i] - (right_black[bottom_whitebase]-center_white[bottom_whitebase]);
        left_black[i] = center_white[i] - (right_black[bottom_whitebase]-center_white[bottom_whitebase]);
        if( center_white[i] < 1)
          center_white[i] = 0;
        if(left_black[i] < 1)
          left_black[i] = 0;
  }*/
  }
  else
  {
    
  }
                                                                                      
}
}

else if(turn_r==1)
{ 
  GPIO_SET(PORTB, 10,0);
  if( tage!=bottom_whitebase-3&&tage!=0)
  {

for(i =bottom_whitebase; i<=control_top_whiteline;i++)
         {                                                                    
          record =-huanjie+ center_white[bottom_whitebase] + (i -bottom_whitebase)*(right_black[tage+3]-center_white[bottom_whitebase])/( tage+3-bottom_whitebase );  
          if( record<=MID)
              record=MID;

          else if( record>=COLUMN-1)
              record=COLUMN-1;
          center_white[i]=(uint8)record;
         }	



}
else if(tage==0)
{
  for(i =bottom_whitebase; i<=control_top_whiteline;i++)
  {
    if(Row_state[i]==1||right_black[i]>=COLUMN-2)
    {
      count_tt++;
    }
  }
  
  if(count_tt>=(bottom_whitebase+control_top_whiteline)/3)
  {
    for(i =bottom_whitebase; i<=control_top_whiteline;i++)
     center_white[i] =COLUMN-huanjie;
    /*{
        center_white[i] = left_black[i] + (center_white[bottom_whitebase]-left_black[bottom_whitebase]);
        right_black[i] = center_white[i] + (center_white[bottom_whitebase]-left_black[bottom_whitebase]);
        if( center_white[i] > COLUMN - 1)
          center_white[i] = COLUMN - 1;
        if(right_black[i] > COLUMN - 1)
          right_black[i] = COLUMN - 1;
    }*/
  }
  else
  {
    
  }
  
  }
}

else
{
    GPIO_SET(PORTB, 10,1);
}

}
 
//--------------------------------------------------------------------------------------------------



//-------------------------------------------------------------------------------------------------

 
//--------------------------------------------------------------------------------------------------

void GetPower()
{
       
  adc_start(ADC0, AD14, ADC_10bit );
        
  V=ad_ave(ADC0, AD14, ADC_10bit,10 )*9.43/1024.0;
  
  adc_stop(ADC0);
}
/*------------------------------------------------------------------------------
                                    AD��������ֵ                                                     
------------------------------------------------------------------------------*/

void GetADValue(void) //��ѯ��ʽ,8λ���ȣ��Ҷ��룬���ݴ����ATDDRLx
{  uint8 i=0; 
  adc_start(ADC1, AD10, ADC_10bit );
  
  AD_AngleData[0] = ad_ave(ADC1, AD10, ADC_10bit,30 );     //���
  
  adc_stop(ADC1);
  
   for(i = 50; i > 0; i--)
        {
            asm("nop") ;
        }
  
  
  adc_start(ADC1, AD11, ADC_10bit );
  
  AD_AngleData[1] = ad_ave(ADC1, AD11, ADC_10bit,50 );
   adc_stop(ADC1);
              
}
/*------------------------------------------------------------------------------
                                         �ǶȻ�����                                                  
------------------------------------------------------------------------------*/


/*2.����Ƕ�*///0626��
 float tmp=0;
 float temp1[3]={0};
 float temp2[3]={0};
 float last_acce_angle=0;
 float Angle[5]={0};
 float  AcceData[3]={0};
//uint8 Rg=15; 
float Rgr;
float pre_Lastgyro=0,Lastgyro=0;                     //������������ֵ�˲��ĵ��Ƹ�ֵ

void GetAngle() 
{         
          uint16 i=0;
          float tempa,tempb,tempc,max,min;             //���������ǵľ�ֵ�˲�
          acce = AD_AngleData[1]*3.22265625;		                        //�Ƕ�У��  //��ֵ̬ 360    352
          
          acce_offset=acce_static-acce;
          acce_G = acce_offset/800;                                     //����õ��Ƕȵ�����ֵ
          
           
          if(acce_G >1 ) acce_G = 1;                                    //�����ֵ���ܴ���1��С��-1���Ǵ��ģ��������·�            
          if(acce_G <-1) acce_G = -1;
                     
          acce_angle = 180/3.1416*asin(acce_G);                         //asin�����ң��ó��ĵ�λ�ǻ��ȣ�*180/pi�õ��Ƕ�ֵ                                
     
          /*temp1[0]=temp1[1];
          temp1[1]=temp1[2];
          temp1[2]=acce_angle;*/
 
          //acce_angle=(last_acce_angle+acce_angle)/2.0;//���������ֵ��Χ
          //last_acce_angle=acce_angle;
          
           for(i=2;i>=1;i--)                                                   //��ʷ���ݵĴ���
            {   
                    AcceData[i] = AcceData[i-1];
            }	
          AcceData[0] = acce_angle;
          
          acce_angle= (AcceData[ 0 ]+AcceData[ 1 ])/2.0; 
       
	  gyro =AD_AngleData[0]*3.22265625;
          
          
          tempa=pre_Lastgyro;
          tempb=Lastgyro;
          tempc=gyro;  
          max = tempa > tempb ? tempa:tempb;//??????
          max = max > tempc ? max:tempc;
          min = tempa < tempb ? tempa:tempb;
          min = min < tempc ? min:tempc;
          if(tempa > min && tempa < max)  gyro = tempa;
          if(tempb > min  && tempb < max )  gyro = tempb;
          if(tempc > min  &&  tempc < max)  gyro = tempc;  
          
          pre_Lastgyro = Lastgyro;                                //���ٶȵ��Ƹ�ֵ
          Lastgyro = gyro;/**/
          gyro_offset= gyro-GYRO_STATIC;                             //-GYRO_STATIC;
          w= gyro_offset/3.417;     //0.67mv/g                                    //���ٶ�ֵ-��ֵ̬    w= ( gyro - GYRO_OFF )/6.7;  
     
          
         
          
         
            ////0.9////////////////////////////////////////////////////////////////////////
           g_nCarAngle+= ( ft*w +( acce_angle - g_nCarAngle ) )*0.00125;//0.9ƫ��  
           
         /*  for(i=4;i>=1;i--)                                                 //��ʷ���ݵĴ���
          {   
             Angle[i] = Angle[i-1];
          }
             Angle[0] = g_nCarAngle;
          
           g_nCarAngle=(Angle[0]+Angle[1])/2;*//* */                 
}  

    
/*3.�Ƕȿ���*/

  

void  CarAngleAdjust()                                          //Ҫ�������ֵ������֮��ı���
{last_anglePD = anglePD;

if(turn_l==1||turn_r==1)
{
  angle_kp_set=angle_kp_across;
  angle_kd_set=angle_kd_across;
}

else
{
  angle_kp_set=angle_kp;
  angle_kd_set=angle_kd;
}
  anglePD =(int16)(g_nCarAngle* angle_kp_set  +  angle_kd_set*w);   
 // anglePD = (int16)(0.8*last_anglePD + anglePD*0.2);               //ƽ����������岻̫���                                                                                        
}


/*------------------------------------------------------------------------------
                                        �ٶȱջ�����                                                 
------------------------------------------------------------------------------*/ 

/*�ٶȱջ�����*/                                       

void  SpeedControl(void)
{
          g_nRightCount =FTM1_CNT;
          g_nLeftCount = ~FTM2_CNT+1;
          FTM1_CNT=0;
          FTM2_CNT=0;
  
          LeftRealSpeed =g_nLeftCount*0.06;//+0.25*LeftRealSpeed;	0.08    //����ϵ��0.062���ھ���,��Ӧ��200p     p.2125
          RightRealSpeed=g_nRightCount*0.06;//+0.25*RightRealSpeed;      //����ϵ��0.025���ھ���,��Ӧ��500p  
                        	                             
          //RealSpeed=( LeftRealSpeed+ RightRealSpeed )/2 ;//
          RealSpeed=(RightRealSpeed+LeftRealSpeed)/2 ;//0624
          Speed_error = Speed-RealSpeed ;
          
          if(Speed_error>Speed_limit)
                    Speed_error = Speed_limit;
          if(Speed_error<-Speed_limit)
                    Speed_error = -Speed_limit;      
         
 //P����//  
          
          motor_P = speed_kp*Speed_error;        
         
//I����
           if(motor_I<=500&&motor_I>=-500)
          motor_I +=  speed_ki*Speed_error;
            
          SpeedPIDold=SpeedPID;
          SpeedPID = motor_P + motor_I;                
}

 /*float LeftSpeed_filter=0,LeftSpeed_filter_last=0,  RightSpeed_filter=0,RightSpeed_filter_last=0 ;
bool jifenflag=0;
void  SpeedControl(void)
{         
          bool jifenflag=0;
          g_nRightCount =FTM1_CNT;
          g_nLeftCount = ~FTM2_CNT+1;
          FTM1_CNT=0;
          FTM2_CNT=0;
          LeftSpeed_filter =LeftSpeed_filter_last;
          RightSpeed_filter  =RightSpeed_filter_last ;
          
          LeftSpeed_filter*=0.2;//0.35 	           
          LeftSpeed_filter+=g_nLeftCount*0.06;// 0.05;      //����ϵ��0.025���ھ���,��Ӧ��500p



          RightSpeed_filter*=0.2;	// 0.35;  
          RightSpeed_filter+= g_nRightCount*0.06;//;0.05          
                 
  
         //LeftRealSpeed =g_nLeftCount*0.06;//+0.25*LeftRealSpeed;	0.08    //����ϵ��0.062���ھ���,��Ӧ��200p     p.2125
          //RightRealSpeed=g_nRightCount*0.06;//+0.25*RightRealSpeed;      //����ϵ��0.025���ھ���,��Ӧ��500p  
                        	                             
          RealSpeed=(  RightSpeed_filter+LeftSpeed_filter )/2 ;//
          
          LeftSpeed_filter =0;
          RightSpeed_filter =0;
          
          LeftSpeed_filter_last=LeftSpeed_filter;
          RightSpeed_filter_last = RightSpeed_filter;
          
          Speed_error = Speed_set-RealSpeed ;
          
          if(Speed_error>50)
                    Speed_error = 50;
          if(Speed_error<-50)
                    Speed_error = -50; 
          
          //ar_speed_kp();
          
          
           if(Speed_error<=10&&Speed_error>=-10)  //֮ǰΪ10
         {
                    jifenflag = 1;
         }
         else 
         {
                    jifenflag =0;
         }
         if(jifenflag==1)
         {
             motor_I +=  speed_ki*Speed_error;
         }
          
          if(motor_I>500)    
          {
            motor_I=500;
          }
          
           if(motor_I<-500)    
          {
            motor_I=-500;
          }
         
 //P����//  
          
          motor_P = speed_kp*Speed_error;        
         
//I����
           //if(motor_I<=500&&motor_I>=-500)
          //motor_I +=  speed_ki*Speed_error;
          
         
          
          SpeedPIDold=SpeedPID;
          SpeedPID = motor_P + motor_I;     
          
          
           if(SpeedPID>2500) 
                    SpeedPID = 2500;
          if(SpeedPID<-2500)
                    SpeedPID = -2500;   
}*/
void   SpeedControlOut()
{
          float temp;
          temp = SpeedPID - SpeedPIDold;
          SpeedPIDout = (int16)(temp*(sumbe2 + 1)/50+ SpeedPIDold) ;//+  speeddiff*0;
}

/*------------------------------------------------------------------------------
                                  ������                                                    
                          ( �Ƕ�+�ٶ�+����=pwm���)                                          
------------------------------------------------------------------------------*/
void CarControlOut()
{        
      if(jianshu==1)
        {
      /*   if( RealSpeed>Speed_set+20)   close=0.1;          
        else  if( RealSpeed>Speed_set+10)  close=0.15;
         else  if( RealSpeed>Speed_set-5)      close=0.2;
            else  if( RealSpeed>Speed_set-15)   close=0.25;
              else  if( RealSpeed>Speed_set-30)   close=0.3;
                 else     close=0.35;    
           */
          close=0.1;
         }
         
         else
         {
            close=1.0;
         }
      
         if(lcd_debug==1||start1==0) angleout = 0;
         RightSpeedPwm =(int16)(anglePD-SpeedPIDout*close-angleout);        //150  -100
         LeftSpeedPwm = (int16)(anglePD-SpeedPIDout*close+angleout)+summ;
          
          if( ting==1||ting_check_stop==1)
          {
       
            RightSpeedPwm = 0;
            LeftSpeedPwm  = 0;
          }

          if(RightSpeedPwm>2500)  RightSpeedPwm = 2500;
          if(RightSpeedPwm<-2500)  RightSpeedPwm = -2500 ;
          if(LeftSpeedPwm>2500)   LeftSpeedPwm =2500;
          if(LeftSpeedPwm<-2500)  LeftSpeedPwm = -2500;
      
          if(  RightSpeedPwm> 0 )
          {
                   FTM0_C7V = RightSpeedPwm;                   
                   FTM0_C6V = 0;            /////////////////////////////////////////////////////////////////////////////////////////////////////
                   
                    
          }
          if(  RightSpeedPwm<= 0)
          {
                   FTM0_C7V = 0;
                   FTM0_C6V = -RightSpeedPwm;
                 
          }
//����
          if(  LeftSpeedPwm > 0 )
          {
                   FTM0_C5V = 0;
                   FTM0_C4V = LeftSpeedPwm;
           }
          if(  LeftSpeedPwm <= 0)
          { 
                  
                   FTM0_C5V =-LeftSpeedPwm;
                   FTM0_C4V = 0;
          }
}



/*------------------------------------------------------------------------------
                            ���ڲ���              
------------------------------------------------------------------------------*/



/*����ʾ����*/

float OutData[4] = { 0 };

unsigned short CRC_CHECK(unsigned char *Buf, unsigned char CRC_CNT)
{
    unsigned short CRC_Temp;
    unsigned char i,j;
    CRC_Temp = 0xffff;

    for (i=0;i<CRC_CNT; i++){      
        CRC_Temp ^= Buf[i];
        for (j=0;j<8;j++) {
            if (CRC_Temp & 0x01)
                CRC_Temp = (CRC_Temp >>1 ) ^ 0xa001;
            else
                CRC_Temp = CRC_Temp >> 1;
        }
    }
    return(CRC_Temp);
}

uint8 j=0;
void OutPut_Data(void)
{
  int temp[4] = {0};
  unsigned int temp1[4] = {0};
  unsigned char databuf[10] = {0};
  unsigned char i;
  unsigned short CRC16 = 0;
  for(i=0;i<4;i++)
   {
    
    temp[i]  = (int)OutData[i];
    temp1[i] = (unsigned int)temp[i];
    
   }
   
  for(i=0;i<4;i++) 
  {
    databuf[i*2]   = (unsigned char)(temp1[i]%256);
    databuf[i*2+1] = (unsigned char)(temp1[i]/256);
  }
  
  CRC16 = CRC_CHECK(databuf,8);
  databuf[8] = CRC16%256;
  databuf[9] = CRC16/256;
  
  
  for(i=0;i<10;i++)
    uart_putchar(UART0,databuf[i]);
  
}


uint8 put_cnt=0;
uint8 put_date[11]={0};
void PutDate(){
  
   
  
   
    put_date[0]=255;
    put_date[1]=(uint8)w*10;
    put_date[2]=(uint16)acce& 0x00ff;
    put_date[3]=(uint16)acce>>8;
    put_date[4]=(uint8)GYRO_STATIC/10;
 
  
  
    put_date[10]=254;
    
    
//    put_date[0]=255;
//    put_date[1]=1;
//    put_date[2]=2;
//    put_date[3]=2;
//    put_date[4]=3;
//    put_date[5]=5;
//    put_date[6]=6;
//    put_date[7]=10;
//    put_date[8]=0;
//    put_date[9]=7;
//    put_date[10]=254;
    
    
    
   UART_D_REG(UARTx[UART0])= put_date[put_cnt];
   //    uart_putchar(UART0,123);
     put_cnt++;
    
     if(put_cnt==11) put_cnt=0;

}
uint8 send_date[9]={0};
uint8 send_cnt=0;
void SendDate(){
               
       speed_kp =send_date[1];
                   
       speed_ki = send_date[2]/10.0;
       
     
                           
       
//       Speed_set =  send_date[7];
 
}

//----------------------------���ڳ�ʼ��-----------------------------//                       ���ѧ��
void UART0_Init(void)    //PTB16 RXD    PTB17 TXD
{
    uint32 uartclk_khz = CORE_CLOCK*10 * BUS_CLOCK;//ʱ��180MHz    //��ʱ����
    uint32 baud = BAUD;
    uint16 sbr,brfa;
    
    SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK; //����B��ʱ��
    PORTB_PCR16|=PORT_PCR_MUX(3);//��PTB16��������Ϊģʽ3����UART0_RX
    PORTB_PCR17|=PORT_PCR_MUX(3);//��PTB177��������Ϊģʽ3����UART0_TX
    SIM_SCGC4|=SIM_SCGC4_UART0_MASK;//����UART0ʱ��
    sbr = (uint16)((uartclk_khz*1000)/(baud*16));//���㲢���ò�����
    
    UART0_BDH = (uint8)((sbr&0x1F00)>>8);//��������19200д����Ӧ�ļĴ���Ȼ�����ʹ�ܣ�ʹ�乤����ǰ���buadֻ��һ�����֣�������ļ����ǽ�19200д������Ĵ�����Ȼ�����ʹ��
    UART0_BDL=(uint8)(sbr&0x00FF);
    brfa = (((uartclk_khz*32000)/(baud*16))-(sbr*32));
    UART0_C4 = (uint8)(brfa & 0x001F);
    UART0_C2 |=(UART_C2_TE_MASK|UART_C2_RE_MASK);
    UART0_C1 = 0;	
    UART0_C2 |= UART_C2_RIE_MASK;   //��UART0�����ж�
}

//------------------------���ڷ��ͺ���------------------------ //                           

void SCI0_send_mesage(void)
{
    //int i = 0;
    static bool sci_temp = 0,ts=0;
     int i = 0,j = 0;
    DisableInterrupts;  //����ͼ������ʱ��Ҫ�ر������жϣ���������    
    if(send_mes == 1)  //���� �Լ���λ��
    {  
      
      while(!(UART0_S1&UART_S1_TDRE_MASK));   //�ȴ����ݵ���0
        UART0_D =0x01;
        
      while(!(UART0_S1&UART_S1_TDRE_MASK));   //�ȴ����ݵ���1
        UART0_D =(uint8)((uint16)angle_kp>>8);
      while(!(UART0_S1&UART_S1_TDRE_MASK));   //�ȴ����ݵ���2
        UART0_D = (uint8)( (uint16)angle_kp&0x00ff);
        
      while(!(UART0_S1&UART_S1_TDRE_MASK));   //�ȴ����ݵ���3
        UART0_D =(uint8)(angle_kd);
        
      while(!(UART0_S1&UART_S1_TDRE_MASK));   //�ȴ����ݵ���4
        UART0_D = (uint8)( (uint16)error_servo_ref_d >>8 );
      while(!(UART0_S1&UART_S1_TDRE_MASK));   //�ȴ����ݵ���5
        UART0_D =(uint8)( (uint16)error_servo_ref_d  &0x00ff);
        
       while(!(UART0_S1&UART_S1_TDRE_MASK));   //�ȴ����ݵ���6
        UART0_D = (uint8)( (uint16)error_servo_ref_p >>8 );
      while(!(UART0_S1&UART_S1_TDRE_MASK));   //�ȴ����ݵ���7
        UART0_D =(uint8)( (uint16)error_servo_ref_p  &0x00ff);
        
      while(!(UART0_S1&UART_S1_TDRE_MASK));   //�ȴ����ݵ���8
        UART0_D = (uint8)( speed_kp );
        
      while(!(UART0_S1&UART_S1_TDRE_MASK));   //�ȴ����ݵ���9
        UART0_D = (uint8)( speed_ki*10);
    //  while(!(UART0_S1&UART_S1_TDRE_MASK));   //�ȴ����ݵ���10
     //   UART0_D = (uint8)( Speed_set );
      
      //while(!(UART0_S1&UART_S1_TDRE_MASK));   //�ȴ����ݵ���11
        //UART0_D =( uint8 )(w);
      while(!(UART0_S1&UART_S1_TDRE_MASK));   //�ȴ����ݵ���11
        UART0_D =(uint8)( RealSpeed );
        
      //while(!(UART0_S1&UART_S1_TDRE_MASK));   //�ȴ����ݵ���12
        //UART0_D =(uint8)( speed_ki);
      while(!(UART0_S1&UART_S1_TDRE_MASK));   //�ȴ����ݵ���12
        UART0_D = (uint8)( (uint16)ACCE_STATIC>>8 );
      while(!(UART0_S1&UART_S1_TDRE_MASK));   //�ȴ����ݵ���13
        UART0_D =(uint8)( (uint16)ACCE_STATIC&0x00ff);  
        
      while(!(UART0_S1&UART_S1_TDRE_MASK));   //�ȴ����ݵ���14
        UART0_D =(uint8)(V*10);    
        
        send_mes = 0;  //����һ�μ��ɣ�����Ҫ����
     }
   
    
    else if(send_mes == 2)
    {
      if(!ts)
      {
          while(!(UART0_S1&UART_S1_TDRE_MASK));//�ȴ����ݵ���
          UART0_D =10;
      }
      
      else
      {
        
          while(!(UART0_S1&UART_S1_TDRE_MASK));//�ȴ����ݵ���
          UART0_D =20;
      }
          //Delay_MS(80000);
      ts=!ts;
      
    }
 
   else if (send_mes == 3)  //���ڵ���
    {  
        if(!sci_temp)
        {
         while(!(UART0_S1&UART_S1_TDRE_MASK));
          UART0_D =Speed_set;//speed_feedback
         sci_temp = !sci_temp; 
           //Delay_MS(2000000); 
        }
        else
        {
           while(!(UART0_S1&UART_S1_TDRE_MASK));//�ȴ����ݵ���
           UART0_D=(uint8)RealSpeed;
           sci_temp = !sci_temp;
           //Delay_MS(2000000); 
        }
        
        //       send_mes = 0;����0��Ϊ����������
      }
   
    else if(send_mes ==4)  //ͼ��
    {  
      while(!(UART0_S1&UART_S1_TDRE_MASK));   //�ȴ����ݵ���
        UART0_D = WHITE_BLACK_OT;//���ڷ�ֵ�Ĳ����ڣ�������ֻ�������д��һ������
              while(!(UART0_S1&UART_S1_TDRE_MASK));   //�ȴ����ݵ���
        UART0_D = (uint8)ROW;
              while(!(UART0_S1&UART_S1_TDRE_MASK));   //�ȴ����ݵ���
        UART0_D = (uint8)COLUMN;
        
       // while(!(UART0_S1&UART_S1_TDRE_MASK));   //�ȴ����ݵ���
        //UART0_D = (uint8)bottom_whitebase;
             // while(!(UART0_S1&UART_S1_TDRE_MASK));   //�ȴ����ݵ���
        //UART0_D = (uint8)control_top_whiteline ;
        
      for(i =ROW-1;i>=0;i--)
      {
        for(j=0;j<COLUMN;j++)
        {
          while(!(UART0_S1&UART_S1_TDRE_MASK));//�ȴ����ݵ���
          UART0_D =  VideoImage2[i][j];///�����һ����������
          Delay_MS(80000);
        }
      }  
      for (i =ROW-1 ;i >=0 ; i--)
      {
        while(!(UART0_S1&UART_S1_TDRE_MASK));//�ȴ����ݵ���
           UART0_D = left_black[i];
        Delay_MS(80000);
      }
      for (i =ROW-1 ;i >=0 ; i--)
      {
         while(!(UART0_S1&UART_S1_TDRE_MASK));//�ȴ����ݵ���
         UART0_D = right_black[i];
         Delay_MS(80000);
      }
      for (i =ROW-1 ;i >=0 ; i--)
      {
        while(!(UART0_S1&UART_S1_TDRE_MASK));//�ȴ����ݵ���
        UART0_D = center_white[i];
        Delay_MS(80000);
      }
      send_mes = 0;  //����һ�μ��ɣ�����Ҫ����
     }               
   /* if( response )
    {
      while(!(UART0_S1&UART_S1_TDRE_MASK));
       UART0_D =0x01;
       response=0;
    }*/
    EnableInterrupts;
}

/*void SCI0_send_mesage(void)
{
    int i = 0,j = 0;
    static bool sci_temp = 0;
    DisableInterrupts;  //����ͼ������ʱ��Ҫ�ر������жϣ���������    
    if(send_mes==1)  //ƽ��Ľ������λ����ͼ��
    {  
      while(!(UART0_S1&UART_S1_TDRE_MASK));   //�ȴ����ݵ���
         UART0_D =1;
       while(!(UART0_S1&UART_S1_TDRE_MASK));   
           UART0_D = (uint8)WHITE_BLACK_OT;
         while(!(UART0_S1&UART_S1_TDRE_MASK));
        UART0_D = (uint8)(ROW);
         while(!(UART0_S1&UART_S1_TDRE_MASK));
           UART0_D = (uint8)(COLUMN); 
           
        while(!(UART0_S1&UART_S1_TDRE_MASK));
        UART0_D = 0;
        while(!(UART0_S1&UART_S1_TDRE_MASK));
        UART0_D = 0;
        while(!(UART0_S1&UART_S1_TDRE_MASK));
        UART0_D = 0;
        while(!(UART0_S1&UART_S1_TDRE_MASK));
        UART0_D = 0;
        while(!(UART0_S1&UART_S1_TDRE_MASK));
        UART0_D = 0;
        while(!(UART0_S1&UART_S1_TDRE_MASK));
        UART0_D = 0;
        while(!(UART0_S1&UART_S1_TDRE_MASK));
        UART0_D = 0;
        while(!(UART0_S1&UART_S1_TDRE_MASK));
        UART0_D = 0;
        while(!(UART0_S1&UART_S1_TDRE_MASK));
        UART0_D = 0;     
       
        //��λ����ʾ�ĵ�һ���������Ͻǣ������ҷ���ʱ���һ����ͷ����Ͻǵĵ�
      for(i =0;i<=ROW-1;i++)
      {
        for(j=COLUMN-1;j>=0;j--)
        {
          while(!(UART0_S1&UART_S1_TDRE_MASK));//�ȴ����ݵ���
          UART0_D =  VideoImage2[i][j];///�����һ����������
          //Delay_MS(80000);
        }
      } 

      for(i =0;i<=ROW-1;i++)
      {
        while(!(UART0_S1&UART_S1_TDRE_MASK));//�ȴ����ݵ���
           UART0_D = COLUMN - 1 - left_black[i];
        //Delay_MS(80000);
      }
           for(i =0;i<=ROW-1;i++)
      {
         while(!(UART0_S1&UART_S1_TDRE_MASK));//�ȴ����ݵ���
         UART0_D = COLUMN - 1 - right_black[i];
         //Delay_MS(80000);
      } 
      for(i =0;i<=ROW-1;i++)
      {
        while(!(UART0_S1&UART_S1_TDRE_MASK));//�ȴ����ݵ���
        UART0_D = COLUMN - 1 - center_white[i];
        //Delay_MS(80000);
      }
      for(i =0;i<=ROW-1;i++)
      {
        while(!(UART0_S1&UART_S1_TDRE_MASK));//������ϳ���������
        UART0_D = COLUMN - 1 - center_average;
        //Delay_MS(80000);
      }
      for(i =0;i<=control_top_whiteline;i++)
      {
        while(!(UART0_S1&UART_S1_TDRE_MASK));//������ϳ���������
        UART0_D = MID;
        //Delay_MS(80000);
      }
      
      
      send_mes = 0;  //����һ�μ��ɣ�����Ҫ����
     }
   // EnableInterrupts;  //���¿��������ж�
   else if(send_mes == 2) //��������λ������ͼ��
   {
           while(!(UART0_S1&UART_S1_TDRE_MASK));   //�ȴ����ݵ���
        UART0_D = WHITE_BLACK_OT;//���ڷ�ֵ�Ĳ����ڣ�������ֻ�������д��һ������
              while(!(UART0_S1&UART_S1_TDRE_MASK));   //�ȴ����ݵ���
        UART0_D = (uint8)ROW;
              while(!(UART0_S1&UART_S1_TDRE_MASK));   //�ȴ����ݵ���
        UART0_D = (uint8)COLUMN;
        
        
        //��λ����ʾ�ĵ�һ���������Ͻǣ������ҷ���ʱ���һ����ͷ����Ͻǵĵ�
      for(i =ROW-1;i>=0;i--)
      {
        for(j=0;j<COLUMN;j++)
        {
          while(!(UART0_S1&UART_S1_TDRE_MASK));//�ȴ����ݵ���
          UART0_D =  VideoImage2[i][j];///�����һ����������
          Delay_MS(80000);
        }
      }  
      for (i =ROW-1 ;i >=0 ; i--)
      {
        while(!(UART0_S1&UART_S1_TDRE_MASK));//�ȴ����ݵ���
           UART0_D = left_black[i];
        Delay_MS(80000);
      }
      for (i =ROW-1 ;i >=0 ; i--)
      {
         while(!(UART0_S1&UART_S1_TDRE_MASK));//�ȴ����ݵ���
         UART0_D = right_black[i];
         Delay_MS(80000);
      }
      for (i =ROW-1 ;i >=0 ; i--)
      {
        while(!(UART0_S1&UART_S1_TDRE_MASK));//�ȴ����ݵ���
        UART0_D = center_white[i];
        Delay_MS(80000);
      }
      
     
        while(!(UART0_S1&UART_S1_TDRE_MASK));   //�ȴ����ݵ���
        UART0_D = (uint8)bottom_whitebase;
        while(!(UART0_S1&UART_S1_TDRE_MASK));   //�ȴ����ݵ���
        UART0_D = (uint8)control_top_whiteline;
      send_mes = 0;  //����һ�μ��ɣ�����Ҫ����
   }
   else if (send_mes == 3)  //���ڵ���
    {  
        if(!sci_temp)    ////////////////////////////////////////////$$$$$$4$$$$$$$$$$$$$/////////////////////////////////////////////////////////////
        {
       while(!(UART0_S1&UART_S1_TDRE_MASK));
       UART0_D = (uint8)(RealSpeed); //speed_feedback
       sci_temp = !sci_temp;
        }
        else
        {
         while(!(UART0_S1&UART_S1_TDRE_MASK));//�ȴ����ݵ���
         UART0_D= (uint8)( SpeedPIDout);
          sci_temp = !sci_temp;
        }
        //       send_mes = 0;����0��Ϊ����������
      }
       else if (send_mes == 4)  //���ڵ���
    {  
        if(!sci_temp)
        {
       while(!(UART0_S1&UART_S1_TDRE_MASK));
       UART0_D = (uint8)(f_abs16(0 - angle)/2);//speed_feedback  79---8d
       sci_temp = !sci_temp;
        }
        else
        {
         while(!(UART0_S1&UART_S1_TDRE_MASK));//�ȴ����ݵ���
         UART0_D= (uint8)(direction);         //  37 -- 39
          sci_temp = !sci_temp;
        }
        //       send_mes = 0;����0��Ϊ����������
      }
           else if (send_mes == 5)  //���ڵ���
    {  
        if(!sci_temp)
        {
       while(!(UART0_S1&UART_S1_TDRE_MASK));
       UART0_D = (uint8)(top_whiteline);//speed_feedback  79---8d
       sci_temp = !sci_temp;
        }
        else
        {
         while(!(UART0_S1&UART_S1_TDRE_MASK));//�ȴ����ݵ���
         UART0_D= (uint8)(control_top_whiteline);         //  37 -- 39
          sci_temp = !sci_temp;
        }
        //       send_mes = 0;����0��Ϊ����������
      }
    else if (send_mes =='p')  //ͣ��
    {
       while(!(UART0_S1&UART_S1_TDRE_MASK));   //�ȴ����ݵ���
       stopflag = 1;
       send_mes = 0;
    }
    else if (send_mes == 's')  //����
    {
       while(!(UART0_S1&UART_S1_TDRE_MASK));   //�ȴ����ݵ���
       stopflag = 0;
       send_mes = 0;  
    }
    EnableInterrupts;
}*/

void scan_boma(void)
{
  uint32 temp4=0;
  uint8 temp0=0;
  //uint8 temp1=0;
 
  temp4 = GPIOA_PDIR;   //��PTD6~PTD13 
  
  temp0 = (uint8)((temp4 >> 24) & 0x00000001);
 
   if(temp0 == 1)   //��Ӧ���ǲ���8
   lcd_debug  = 1;  //������״̬Ϊ��������ʱ�䣬��������ϣ������������������������
  else
     lcd_debug = 0;
  
  temp0= (uint8)((temp4 >>27) & 0x00000001);
  
  if(temp0==1)
  {
    stop_special_flag=0;
  }
  
  else
  {
    stop_special_flag=1; 
    
  }
   temp0= (uint8)((temp4 >>26) & 0x00000001);
  
  if(temp0==1)
  {
    bm3=0;
  }
  
  else
  {
    bm3=1; 
    
  }
  
  
 /* temp0 = (uint8)((temp4 >> 1) & 0x00000001);//��Ӧ���ǲ���7
  if(temp0 == 1)
     redraw_control=1;  //������ˢ��
  else
      redraw_control=0; 
  
   //  start_stop_cs �����߼���Ƭѡ�ź�*/
    temp0 = (uint8)((temp4 >> 25) & 0x00000001);//0x00000800
   if(temp0 == 1)
    feng = 0;
   else
    feng = 1;
   
  //  ͣ��ѡ���ź� Ĭ��״������������ͷ��⣬�����벦�ϵ�����֮�����øɻɹܼ��
 /*  temp = !(uint8)((temp1 >> 3) & 0x00000001);//0x00000800
      if(temp == 1)
     stop_check_cs = 1;  //    �øɻɹܼ��
      else
     stop_check_cs = 0;     //������ͷ���  �Ʋ���*/
   
}
void   FantingOut()
{
          int16 temp4;
          temp4 = angle-re_angle;
          angleout = (int16)(temp4*(sumbe3 + 1)/16+ re_angle) ;//+  speeddiff*0;
          
}

/*------------------------------------------------------------------------------
                               ������               
------------------------------------------------------------------------------*/

uint16 set_up_time=50;
uint16 reset_count=50;
uint16 lcd_ref_p1_record =0,lcd_ref_p2_record =0;
float speed_kp_record=0;

void car_set_start()
{
 
  if(set_up_time>0)
              {                                         
                        
                        angle_kp_set=560;
                        angle_kd_set=10.3;
                        speed_kp=speed_kp_record+30;
                        speed_ki=0.5;
                        Speed_limit=Speed_limit_record+70;    
              } 
              else if(set_up_time==0)  //
              {
                        if(reset_count>0) 
                        {
                                  reset_count--;  //
                                  
                                  Speed_limit=10;
                                  angle_kp_set=angle_kp;
                                  angle_kd_set=angle_kd;
                                  speed_kp=speed_kp_record;
                                  speed_ki=0.3;
                                  lcd_ref_p1 =lcd_ref_p1_record-5;//

                                  lcd_ref_p2 =lcd_ref_p2_record-8;
                        } 
                         if(reset_count==0)
                        {
                                  Speed_limit=Speed_limit_record;
                                  lcd_ref_p1 =lcd_ref_p1_record;
                                  lcd_ref_p2 =lcd_ref_p2_record;
                        }
          }

}

uint16 stopcount=150;
uint16 sumbe4=0,sumbe5=0,sumbe6=0,count_s=0;

  void  main(void)
{   
  volatile uint8 i;
  DisableInterrupts;               //��ֹ���ж� 
  delayms(40);
  GIPO_init();
  sensor_init();
  delayms(1000);
  init_gyro();
   delayms(10);
  pre_show();
 
   FTM_PWM_init( );
   FTM_QUAD_init( ); 
    
  GPIO_SET(PORTB, 10, 0);
  delayms(20);
  GPIO_SET(PORTB, 10, 1);
  
  LCD_Init();
  GetPower(); 
  UART0_Init();                 //���ڳ�ʼ��   19200             PTB16 RXD    PTB17 TXD                           ���ѧ��    
  Initial();
  EXIT_Init();   
    OddEvenStatus = ODD_EVEN_STATUS;
    VIF = VIF_START;
 enable_irq(45);           //�򿪴����ж�
 enable_irq(88);           //�����ж� 
  
  EnableInterrupts;			              //�����ж�
  
  redraw();  
  while(1)
    {
      scan_boma();
      if(lcd_debug==1)
    {  GPIO_SET(PORTB, 10,1);  
      if( sumbe2%10==0)
       redraw();
      
       KeyScan(); 
       angle_kp_across=angle_kp+10;
       angle_kd_across=angle_kd+1;
       Speed_limit_record=Speed_limit;
       lcd_ref_p1_record=lcd_ref_p1;
       lcd_ref_p2_record=lcd_ref_p2;
       speed_kp_record=speed_kp;
       BASE_OT=WHITE_BLACK_OT;
      begin=0;
      start1=0;
     angleout=0;
    
     sumbe4=0;
     sumbe5=0;
     sumbe6=0;
        if( stop_special_flag==1)
        {
          Speed=Speed_set;
           stop_special(); 
       }
        else{
               Speed=0;
                ting=0;
               ting1=0;
               ting_check_stop=0; 
             } 
     set_up_time=50;
     begin2=0;
     count_s=0;
     liu=1;
    acce_static=ACCE_STATIC; 
    }

       if(ImageReady==1&&lcd_debug==0)                                      //ͼ��׼���ã��پ���
       { TEST_TIME1(1);
       
         if(start1==0)
        {
          Speed=0;
         sumbe5++;
         if(sumbe5>150)
         {start1=1;sumbe5=0;Speed=Speed_set;}
        }
        
        if(start1==1)
        {
           if(begin==0)
         {
       
         if(sumbe4<100)
              { sumbe4++;begin=0;
                gpio_set (PORTB, 10,LOW );
              }
         else if(sumbe4>99)
           {
           begin=1;gpio_set (PORTB, 10,HIGH);
           }
         } 
           if(feng==1)
           {
            if(set_up_time>0)   set_up_time--;
              car_set_start();
           }
        
         if(begin2==0)
         {
          count_s++;
          if(count_s>stopcount)
                  {begin2=1;count_s=0;}
         
         }
          
          
       for(i = 0;i< ROW ; i++)
           for(j= 0;j<COLUMN;j++)
           {
          /* 
             if(i>40&&VideoImage2[i][j]>30)
              {  
               VideoImage2[i][j]=VideoImage2[i][j]-2*(i-40);  
              }
           */
               if(i<10&&VideoImage2[i][j]<180)
              {  
               VideoImage2[i][j]=VideoImage2[i][j]+15;  
              }
    
             if(VideoImage2[i][j] > WHITE_BLACK_OT)
             {
                 VideoImage1[i][j] = WHITE;
             }
             else
             {
                VideoImage1[i][j] =BLACK;
             }
           } 
        
    
        Search_WhiteBase();
         
        if(find_whitebase_flag == 1)  
        {
          Search_BlackEdge();
          Deal_BlackEdge();
          get_line_information();
        }   
        
    //  if(feng==1)   gpio_set (PORTB, 10,LOW );       
     if(bm3==1)
     {
      barrier();
      across_smile();
      if(begin2==1)
        check_start_stop_line();
     }
     
     else
     {
        ting_check_stop=0;
     }
     if(ting_check_stop==1)   gpio_set (PORTB, 10,LOW );
     
     Control();
     
     if( stop_special_flag==1&&ting==0&&begin==1&&barrier_l==0&&barrier_r==0)
     {
        stop_special(); 
     }
     else if(stop_special_flag==0)
     {
         LCD_PrintImage((uint8 *)VideoImage1, 50, 157);     
         ting=0;
      }

        SCI0_send_mesage();  
      TEST_TIME1(0);         
        }  
       while(ImageReady);   
     
       }
  
  } 

}

void uart0_isr(void)          //�����ж�
{    
    DisableInterrupts;   // �����ж�Ҳ���ԣ������и��߼��жϴ����ﲻ�Ƽ�
      uint8 ch;
     while(!(UART0_S1&UART_S1_RDRF_MASK));
      ch = UART0_D;   
     if(deal_r_flag==1)
     {
      r_count++; 
      if(ch!=0)
      {
        switch(r_count)
        {
        case 1:
              se1=ch;
              break;
        case 2:
              angle_kp=( float)( (se1<<8)|ch );
              break;
        case 3:
              angle_kd=(float )( ch);
              break;      
        case 4:
              se2=ch;
              break;
        case 5:
             error_servo_ref_d =( uint16)( (se2<<8)|ch );
              break;
        case 6:
              se2=(uint8)( ch);
              break;
              
        case 7:
              error_servo_ref_p=( uint16)( (se2<<8)|ch );
              break;
        case 8:
              speed_kp=(float )( ch);
              break;
        case 9:
             speed_ki=(float)( ch )/10.0;
              break;
      //  case 10:
         //    Speed_set=(uint16 )( ch);
         //     break;
        case 11:
              se3=ch;
              break;
        case 12:
              ACCE_STATIC=(float)( (se3<<8)|ch );
              break;
        /*case 12:
              se7=ch;
              break;   */   
        default:break;
        }
      }
      
      if(r_count==13)
      {
        //response=1;
        deal_r_flag=0;
        r_count=0;
      }
    }
   
      if(ch==0x40) //ͼ��
      {
         send_mes=4;
      }
     
      else if(ch==0x41)//fuwei
      {
         send_mes=0;
      }
      
      else if(ch==0x01)//ͣ
      {
        ting=1;
      }
      else if(ch==0x42)//������ȡ
      {
        send_mes=1;
        //SCI0_send_mesage(); 
      }
     
     else if( ch==0x43&&deal_r_flag==0 )//������ȡ
     {
        deal_r_flag=1;
        send_mes=0;
     }
     
      else if(ch==0x44) //ֱ������
      {
        send_mes=2;
        //SCI0_send_mesage(); 
      }
     
      else if(ch==0x45)//�ٶȲ���
      {
        send_mes=3;
        //SCI0_send_mesage(); 
      }
     
     else if(ch==0x46) //����
      {
        send_mes=0;
        //SCI0_send_mesage(); 
      }
     
     else if(ch==0x88)//���ٷ���
     {
        lcd_debug = 0;
        stop_special_flag=1; 
  //      Speed_set=20;
        
     }
   
    EnableInterrupts;
}
 

void PTB_isr(void)//���ڳ��ж�20ms�����ж�63us��������ͷ�Ĺ��е�Ƶ�ʣ�����Ҫ������ȥ��ʱ
{        
    uint16 i; 
   DisableInterrupts; 
   PORTB_PCR22|=PORT_PCR_ISF_MASK;  //����жϱ�־λ/////////////////////////////////////////////////////////////////////////////////////////////////////  
   sumbel++;
    if(tingting==0)
  {
     if (VIF == VIF_START)                              //��ʼ������־
      { 
        LineCount++;
        if(OddEvenStatus != ODD_EVEN_STATUS)         ///////////////////////////////////////////////////////////////////////////////////////////////
        {
          OddEvenStatus = ODD_EVEN_STATUS;	//��ż����־
          VIF = VIF_WAITSAMPLE;   		//��һ��״̬Ϊ�ȴ�����
          VideoImageLine = 0;
          LineCount = 0;
          ImageReady = 0;   
         }
          if( sumbel>= 16)    
       { 
        sumbel=0;
         tingting=1;
       }  
       }
    else if (VIF == VIF_WAITSAMPLE)                 //�ȴ�����,��ʱ��ȥVIDEO_START_LINE��
      { 
          LineCount++;
          if (LineCount >= VIDEO_START_LINE)
          {
              VIF = VIF_SAMPLELINE;                 //��һ��״̬Ϊ����״̬
          } 
            if( sumbel>= 16)    
       { 
        sumbel=0;
         tingting=1;
       }  
      }
    else if (VIF == VIF_SAMPLELINE)              //��ʼ����
      {
          LineCount++;
          if (LineCount % 4== 0)                //ÿ��һ�в�һ��
          {
              for (i = 0; i < COLUMN+PIANYI ; i++)        //ÿ��ɨ��COLUMN+PIANYI����(����PIANYI������Ҫ���޳�������Ϊ����������)
             {
                  if (i >=PIANYI )///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                   {//�ɼ��ĵ�һ�������������ʵ�������������½ǣ������������д洢�ڵ�һ�е����һ��λ��
                     VideoImage2[VideoImageLine][COLUMN-1-i+PIANYI] = (uint8)(0x000000ff & GPIOE_PDIR);//���ɼ����ĵ�ֱ�ӷ��뵽VideoImage2[][]����init array�����зŵ�VideoImage1[][]��������
                         Delay_MS(3);
                        asm("nop");
                        asm("nop");//�����ʱ 
                  }
              }
             VideoImageLine++;
         if( sumbel>= 16)    
       { 
        sumbel=0;
         tingting=1;
       }  
          }
          
 
          if (VideoImageLine == ROW)      //�ɼ����������趨������
          {
              ImageReady = 1;           //ͼ��׼����
              VIF = VIF_START;
          }
     }
  }
  
  else{ 
     sumbe2++;
      sumbe3++;
     GetADValue();              
     GetAngle();                          
     CarAngleAdjust();            
       
      LineCount++;
       LineCount++;
     SpeedControlOut();
     FantingOut();
     CarControlOut();    
    tingting=0; 
    
      }  
   if( sumbe2>=50)
   {  
      sumbe2=0;
      //SpeedControlCount = 0;
      SpeedControl();     
   }  
  
 
 EnableInterrupts;   
  
  
}

