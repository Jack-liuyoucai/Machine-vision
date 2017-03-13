
#include "MK60N512VMD100.h"
#include "include.h"
#include <math.h>

#define TEST_TIME1(x) gpio_set(PORTB, 6, x)


 /*Globle variabls*/
 //旧标定：直立时
//75cm-------42
//110cm---------49
 //前瞻110cm

//以白色电池垫住，75CM------35(36)hang
                 //110=-------42hang
//摄像头顶端距离顶面32cm

//新标定 摄像头顶端距离地面：32.8cm 车倒下前瞻67.5
/*需调节的参数*/             
uint16 Speed_set=240;//270   70、340、75,360//   250 75 360 80 380

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

//float steer_kp=0,steer_kd = 0; //方向
uint16 error_servo_ref_d =0;          //105/110    sp=150//0518     110/120 170
uint16 error_servo_ref_p =0;//120      83 80/63/70 v=110   //83 45
int16 lcd_ref_p =0; 
int16 lcd_ref_d =0; 
int16 lcd_ref_p1 =52;//45       65     74     44
int16 lcd_ref_d1 =450;//150 260  250   300    300
int16 lcd_ref_p2 =54;//54  50   70     84     57  54//sp=240/250
int16 lcd_ref_d2 =460;//250 300 340    320    320
int16 zhongjian=30;

/*整体,时间等参数*/
uint16 SpeedControlCount = 0;                  //速控制周期计数值
uint8 g_nCarSpeedCount ;                //1ms控制周期计数
uint8 DirectionControlCount = 0;               //方向控制周期
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
/*直立平衡控制相关参数 */

float acce=0,gyro=0,w=0;                     //送入滤波的加速度计角度，陀螺仪角速度

float GYRO_STATIC =0;                                  //零点偏移量

float AD_AngleData[2];              //均值滤波之后的陀螺仪和加速度计传感器数据

float acce_G=0,acce_angle=0,gyro_angle=0,acce_offset=0,gyro_offset=0;
float g_nCarAngle=0;
float gyroIntegral=0;                     
float angle_error=0;               //角度偏差
int16 anglePDout=0;
int16 anglePD=0;
int16 last_anglePD=0;

//*****************************************************************************
/*速度控制相关参数*/ 
int16 g_nLeftCount=0, g_nRightCount=0;                  //两个电机的速度计数，符号位表示方向
float RealSpeed;
float LeftRealSpeed,RightRealSpeed;
float Speed_error,motor_P,motor_I=0;

float SpeedPID = 0;                                 //速度控制的输出量
float SpeedPIDold=0;
int16 SpeedPIDout=0;

//*****************************************************************************
/*转向控制相关参数*/

 /*float  Distance[30];
 float error=0;
 
 float  dis_error=0;
 float  steerpwm=0;                                     //转向控制输出数量
 float  steerpwmold=0;*/
 int16 steerpwmout=0;

 
int16 LeftSpeedPwm,RightSpeedPwm;



//--------------------------采集图像的相关变量-------------------------------------//
bool     OddEvenStatus;		  //奇偶场状态标志
#define  OddStatus  0
#define  EvenStatus 1
#define  ODD_EVEN_STATUS  (bool)(0x00000001 & (GPIOB_PDIR  >> 20))  //奇偶变换标志  将第ptc端口的第1位右移动后，置1
#define VIF_START	0   	 //开始模式				 
#define VIF_WAITSAMPLE	1        //   等待模式
#define VIF_SAMPLELINE	2         //   除去消隐行的状态
#define VIF Videoclo_Flag         //
#define PIANYI 170 //实际采集列数为COLUMN + PIANYI，PIANYI为每行消隐点  中心值大于中值，消隐行减少98
#define VIDEO_START_LINE  80//图像采集起始行27
bool ImageReady;               //图像准备好标志
uint8 Videoclo_Flag, VideoImageLine;   //采集状态标志位，行中断实际采集行数计数器
uint16 LineCount=0;                       //行中断采集行数计数器   这个数据一定是要定义为uint16  自己以前定义为uint8  伤心痛苦折磨了好几天
bool lcd_debug = 1;    
//-------------------------处理图像的相关变量--------------------------//
#define ROW 50	                 //采集行数
#define COLUMN	157 		//每行点数
#define MID  78           //列中心 78 2014 。0515
uint8 VideoImage1[ROW][COLUMN] =       //原始图像数组[0][0]在左下角
{
   0
};
uint8 VideoImage2[ROW][COLUMN] =       //原始图像数组[0][0]在左下角
{
   0
};
uint8 left_black[ROW]=                 //左边沿线的采集数组
{
  0
};
uint8 right_black[ROW]=                //右边沿线的采集数组
{
  0
};
uint8 center_white[ROW]=              //（虚拟出来的）中线的数组
{
  0
};


//-------------------------------------搜两边黑线----------------------------------//
#define MIN_WHITEBASE_POINT 30                    //最少连续白点个数成为基准的要求
#define WHITE_TOP_WHITELINE_POINT 15                  //两边的黑线的宽度小于这个值，判定为最高有效
#define CENTER_LOST_POINT 20
uint8 current_deal_line=0;     //当前处理的行
uint8 deal_start_line = 0;                //这个 值时控制处理的起始行一般定义为基准行 + 4
uint8 hang_search_start = 0;             //定义每次扫描的开始是从哪个点开始的
uint8 whitepoint_start=0;                //从左至右白点开始处
uint8 whitepoint_end=0;                 //从左至右白点结束处
uint8 whitebase_searchstart = MID;
uint8 left_whitebase_searchstart = 0;
uint8 right_whitebase_searchstart = 0; 
uint8 re_whitepoint_start =14;  // 20发车的时候车子一定要在赛道的中心左右，否则会出现找不到赛道的危险??
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
uint8 OT=36;                                     //////判定为灰度值的跳变沿的最小灰度的跳变值
uint8 BASE_OT = 140;
uint8 WHITE_BLACK_OT = 140;           //进行二值化的分界值
#define WHITE 255
#define BLACK 10

uint8 top_whiteline = ROW-1;                          //图像的最顶行
uint8 left_top_whiteline = ROW-1;
uint8 right_top_whiteline = ROW-1;

uint8 bottom_whitebase = 0;                       //图像的基准行 
bool find_whitebase_flag = 0;  //基准行的标志位
bool  tingting=0;
bool ting=0;
bool ting_check_stop=0;
bool stop_special_flag=0;

int8 jump_stop=10;
uint8 re_white_refer = MID;  //这个点作为每场搜索基准行的开始的点  ，最开始的时候定义为 默认为MID
uint8 white_refer = 0;                            //基准行上的赛道的中点
uint8 Row_state[ROW] =
{
  0
};
//-------------------------------赛道处理的相关参数-----------------------//
uint8 S_right = 0;//向右拐的计数
uint8 S_left =0 ; //向左拐计数
uint8 S_straight = 0;
uint8 direction = 0; //4是初始化的值
uint8 re_direction = 0;//记录上一次的当有的时候，无法判断出赛道的类型的时候，用上一次的状态
uint32 center_average = 0;
uint32 speed_center_average = 0;
//uint16 center_error_average = 0;  
uint32 center_linear_average = 0;
     
uint16 ramp_delay_time = 150;
uint16 ramp_time = 0;                //进入坡道后多长时间重新开启起跑线检测
uint16 ramp_dis_time = 0;       //防止下坡的误判而延时
uint16 ramp_speed = 75;                    //坡道减速值70
bool ramp_flag = 0;                          //进入坡道标志,主要用于控制
bool ramp_dis_flag = 0;                     //主要是防止下坡误判
 
float linear_factor = 0;

int16 angle=0;
int16 re_angle=0;


uint16 control_top_whiteline = 0; //re_control_top_whiteline top_error_servo_p
uint16 danger_count = 0;  //记录危险的点数
bool danger_flag = 1;  //这个的初始值为1.当出了控制最高行了则置为0；
 
int16 refer_error =0;
uint16 center_average_a =0;
uint16 center_average_b = 0;
int16 re_refer_error = 0;

uint32 start_stop_count = 0;  //起跑线检测计数
bool stopflag = 0;//速度反馈
uint32 stop_pit_count = 8;
bool start_stop_en = 0;   //起跑线检测使能
bool start_stop_cs =0;   //起跑线检测的片选信号   当为1的时候选中检测起跑线

uint16 car_test_run = 0; 
bool test_run = 0;  
#define BUS_CLOCK  100  //(MHZ)50 82 90 100 105 110 115//这里设置的内核时钟等于总线时钟100M
#define BAUD  19200    //波特率9600
#define CORE_CLOCK 180
  uint16 sumbel=0; 
   uint16 sumbe2=0; 
    uint16 sumbe3=0;
  int16  angleout;
//-----串口功能选择----//
uint8 send_mes=0;              //根据上位机发送来的数据来选择不同的串口功能
uint8 fanting=1;

//-----串口功能选择----//
uint8 se1=0,se2=0,se3=0;

uint16 r_count=0;
bool deal_r_flag=0;
bool response=1;
uint16 Speed=0;
bool liu=1;
bool begin=0,begin2=0;
 bool bm3,feng;
//int16 big=1100;
 //-----------------------------延迟-------------------------------//
void Delay_MS(uint32 ms)
{
   while(ms--);
}

//---------------------------行中断捕捉端口初始化-------------------//
void EXIT_Init(void)
{
     SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK;  //开启B端口时钟
    PORTB_PCR22 =PORT_PCR_MUX(1);  //GPIO
    GPIOB_PDDR &= ~GPIO_PIN(22);   //输入
    PORTB_PCR22 |= PORT_PCR_PE_MASK | PORT_PCR_PS_MASK; //上拉电阻;
    PORTB_PCR22 |= PORT_PCR_IRQC(9); //9为上升沿触发外部中断 10为下降沿触
}

//---------------------------数组初始化--------------------------//
void Initial(void)
{
  int16 i;
     for(i = 0;i < ROW;i++)
       {
         left_black[i] = 0;
         right_black[i] = 0;
         center_white[i] = 0;
         Row_state[i] = 3; //3代表的是两边都没有出现丢点
       }
       start_stop_count = 0;
       ramp_dis_flag = 0;
       ramp_flag = 0;
}

                                                                           
/*1.端口初始化*/
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
      
      //gpio_init (PORTB, 10, GPO, HIGH);//蜂鸣器
 
    PORTE_PCR0 = PORT_PCR_MUX(1)| PORT_PCR_PE_MASK |  PORT_PCR_PS_MASK;//E4引脚设置为GPIO模式
    PORTE_PCR1 = PORT_PCR_MUX(1)| PORT_PCR_PE_MASK |  PORT_PCR_PS_MASK;//E5引脚设置为GPIO模式
    PORTE_PCR2 = PORT_PCR_MUX(1)| PORT_PCR_PE_MASK |  PORT_PCR_PS_MASK;//E6引脚设置为GPIO模式
    PORTE_PCR3 = PORT_PCR_MUX(1)| PORT_PCR_PE_MASK |  PORT_PCR_PS_MASK;//E7引脚设置为GPIO模式
    PORTE_PCR4 = PORT_PCR_MUX(1)| PORT_PCR_PE_MASK |  PORT_PCR_PS_MASK;//E8引脚设置为GPIO模式
    PORTE_PCR5 = PORT_PCR_MUX(1)| PORT_PCR_PE_MASK |  PORT_PCR_PS_MASK;//E9引脚设置为GPIO模式
    PORTE_PCR6 = PORT_PCR_MUX(1)| PORT_PCR_PE_MASK |  PORT_PCR_PS_MASK;//E10引脚设置为GPIO模式
    PORTE_PCR7 = PORT_PCR_MUX(1)| PORT_PCR_PE_MASK |  PORT_PCR_PS_MASK;//E11引脚设置为GPIO模式
         
        GPIOE_PDDR = 0xffffff00;  //E0~E7设置为输入口 
        
        PORTB_PCR20 = PORT_PCR_MUX(1) | PORT_PCR_PE_MASK |  PORT_PCR_PS_MASK;//PTB20引脚设置为GPIO模式 上拉
        GPIOB_PDDR = 0xffefff00;  //PTB20设置为输入
  }
  
/*2.陀螺仪初始化*/
 
 void init_gyro()
 {
        int i=0;
        adc_start(ADC1, AD10, ADC_10bit );
        
        for(i=0;i<10;i++)
        {
   
        
        
 	GYRO_STATIC =ad_ave(ADC1, AD10, ADC_10bit, 100)*3.22265625+GYRO_STATIC;   //16精度* 0.050354
        
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
                                        小函数                                                 
------------------------------------------------------------------------------*/
int abs(int num)     //绝对值函数
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
void stop_special(void)              //非正常情况停车
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
    
    //---------------------角度判断停车
    if(g_nCarAngle>da||g_nCarAngle<-fuxiao)
    {
         ting=1; 
    }/* */
}

//-----------------------------------扫描白线基准线---------------------------------//
/*
1、由于赛道的宽度在图像中所占的比例较大，故可认为在中点的位置（79处）就一定是在赛道中，
，除非车子跑出了赛道，而不需要考虑中心偏离赛道的情况。
*/
void Search_WhiteBase(void)   //从图像底部中间开始向两边扫描白线基准
{ 
  uint8 i = 0,j = 0 ;//定义十六位的有符号变量   i代表行变量  j代表列变量
 uint8 base_sum = 0; 
  current_deal_line=0;                //记录在搜索基准行的时候的当前处理的行 
  bottom_whitebase = 0;//基准行赋初值  int
  find_whitebase_flag = 0;               //是否发现白线基准标志

  //////////////////////////////滤波开始///////////////////////////////////  
//首先对整幅图像进行滤波，采用的方法是中值滤波
 for(i = 0;i < 5;i++)                 //只是对图像前几行进行滤波，原因是远处的滤波可能会把跑道的信息滤除掉这里对赛道的前13行滤波
    for(j = 1;j< COLUMN-1;j++) 
    {
        base_sum = (VideoImage1[i][j-1] + VideoImage1[i][j+1])/ 2;
        if( f_abs16( base_sum - VideoImage1[i][j]) > OT)
           VideoImage1[i][j] = base_sum;
    }  //滤波可能带来一个后果，就是可能把远处的边沿线滤除掉，这里只是对近端进行滤波
 
  
  /*////////////////////////对图像上的噪点进行滤除//////////////   限幅滤波会带来一个后果，导致跳变沿检测出现问题，跳变太小
  for(i = 0;i < ROW ;i++)                 //图像上突然的出现了很多的噪点，这个程序是为了将图像上的这些噪点滤除。经过验证效果很好
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
*////////////////////////////滤波结束////////////////////////////////
  
  /*对于搜索基准行最重要的就是解决搜索的开始点的问题，这个点找到了，其他的问题就好解决了*/
  if(VideoImage1[0][re_white_refer] > BASE_OT && VideoImage1[0][re_white_refer-1] >BASE_OT && VideoImage1[0][re_white_refer+1]>BASE_OT)
  {
    whitebase_searchstart = re_white_refer;
  }
  else
  {
    j = MID-1;//从MID开始搜索基准行的开始点
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
  
  
  
  while( find_whitebase_flag ==0 && current_deal_line < ROW - 1) //基准行的搜索范围从0到ROW-1 
  {
      //每行的处理清零
      whitepoint_start = whitebase_searchstart;   //uint8 
      //搜索左边的基准边沿/////////////////////////////
       j = whitebase_searchstart;   //有的时候出现前一行的中点在下一行的图像的外面
       //每次从上一场的基准的中点开始向两边搜索基准行
       while(j >= 3  )//一般为了使得跳变沿更加的明显，采用隔点判断
      {
        
          if( whitepoint_start != whitebase_searchstart && f_abs16(j-re_whitepoint_start) > f_abs16(whitepoint_start -re_whitepoint_start) )
          {
            break;
          }
          else if(VideoImage1[current_deal_line][j] - VideoImage1[current_deal_line][j-2] > OT 
             && VideoImage1[current_deal_line][j] - VideoImage1[current_deal_line][j-3] > OT
               )
          {//当第一个if不满足的时候说明此时的j到上一场的点的距离一定小于 f_abs16(whitepoint_start -re_whitepoint_start) 
            //所以这里只要遇到了跳变，就给基准行的起始点赋值
               whitepoint_start = j;
          }
          j--;
      }
      
      if( j == 2  && whitepoint_start == whitebase_searchstart)  //到达边界了，但是还没有对whitepoint_start赋值过，说明没有找到基准的开始点
      {
        if(VideoImage1[current_deal_line][j] - VideoImage1[current_deal_line][j-2] > OT)
        {
           whitepoint_start = 2; //到达了边界
        }
        else if( VideoImage1[current_deal_line][j-1] - VideoImage1[current_deal_line][j-2] > OT)
        {
           whitepoint_start = 1; //到达了边界
        }
        else
        { 
           whitepoint_start = 0;
        }
      }
      //左边搜索结束///////////////////////
      
      //右边搜索开始/////////////////////
      whitepoint_end = whitebase_searchstart;    //uint8
      j = whitebase_searchstart;   //每次从上一场的white_refer向两边搜索基准行
      while( j <= COLUMN-4 )//一般为了使得跳变沿更加的明显，采用隔点判断
      {
       
          if( whitepoint_end != whitebase_searchstart && f_abs16(j-re_whitepoint_end) > f_abs16(whitepoint_end -re_whitepoint_end) )
          {
             break;
          }//1.不同
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
      //右边搜索结束///////////////////////
      //左右边沿线的搜索方法用的是跟踪的搜索方法，目的是只想找到一行可靠的基准行的信息
      
      
      //无论这一行是否符合要求，始终记录赛道信息

        left_black[current_deal_line] = whitepoint_start;   //记录左黑线位置 (若为0，很可能说明左边黑线丢失，即车身偏右)
        right_black[current_deal_line] = whitepoint_end;    //记录右黑线位置(若为COLUMN，很可能说明右边黑线丢失,即车身偏左)
        /*对于第一行的状态的判断有两种想法，第一：无论第一行是什么状态始终认为没有丢点 第二：将到达边沿的点视为丢点
        此外这里需要对上面的三个值进行一定的修正，并且在这里将基准行上的状态设定为没有丢点（即使有时候到达了边界）。
        （否则，这里的跟踪搜索的优势就没有了）
        */
        if(left_black[current_deal_line] == 0 && right_black[current_deal_line] < COLUMN - 1 &&  (right_black[current_deal_line] - left_black[current_deal_line]) > 155)  
        {  //表示左边到达边界 丢点                                                               //////////////////////////////////////？？？？？？？/////////////////////////////////////
          
          left_black[current_deal_line] = re_whitepoint_start;         
          center_white[current_deal_line] = (left_black[current_deal_line] +  right_black[current_deal_line]) / 2; 
        }
        else if(right_black[current_deal_line] == COLUMN - 1 && left_black[current_deal_line] > 0 &&  (right_black[current_deal_line] - left_black[current_deal_line]) > 155)
        { //表示右边到达边界 丢点
           right_black[current_deal_line] = re_whitepoint_end;
         center_white[current_deal_line] = (left_black[current_deal_line] +  right_black[current_deal_line]) / 2;  //记录中心点,大于MID说明车身偏左，反之，说明车身偏右
        }
        else if(right_black[current_deal_line] == COLUMN - 1 && left_black[current_deal_line] == 0 )
        {//表示两边到达边界 丢点
          left_black[current_deal_line] = re_whitepoint_start;
          right_black[current_deal_line] = re_whitepoint_end;
          center_white[current_deal_line] = re_white_refer;
        }
        //说明由于前三行的信息一般不做处理默认为左右边沿都找到了的点 
        else
        {  //表示两边都没有丢点
          center_white[current_deal_line] = (left_black[current_deal_line] +  right_black[current_deal_line]) / 2;  //记录中心点,大于MID说明车身偏左，反之，说明车身偏右
        }
        //处理后重新得到图像搜索的开始结束及中心值
      whitepoint_start = left_black[current_deal_line];
      whitepoint_end =  right_black[current_deal_line];
      white_refer = center_white[current_deal_line];
      
        //加上一个赛道的宽度的限制
       if(whitepoint_end - whitepoint_start > MIN_WHITEBASE_POINT ) //这个值设置为20 
        {
          find_whitebase_flag = 1;
          re_white_refer = white_refer;  //保存本场图像的信息
          re_whitepoint_start = whitepoint_start;
          re_whitepoint_end  = whitepoint_end ;
          bottom_whitebase = current_deal_line;//记录基准行
          Row_state[bottom_whitebase] = 3; //行的状态标志位
        }
        else
        {
          find_whitebase_flag = 0;
          current_deal_line++;
        }
        
  }//while循环的结束
  if(bottom_whitebase > 0)
  {
     for( i = 0 ; i < bottom_whitebase ;i++)////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
     {//对之前的行进行标记
        center_white[i] = MID;  
        left_black[i] = MID - 2;   
        right_black[i] = MID + 2;  
     }
  }
}//

//------------------------由基准线定出的两边黑线为基准，找出赛道边缘-----------------------// 
/*本函数的功能定义为找线，为了处理在某些断点的情况能继续在前方找到边沿线，
只是对于边沿线进行初步的虚构，真正的对赛道两边沿线的处理虚构，主要由下一个函数完成*/
void Search_BlackEdge(void)  //0509   
{   
  int16 i = 0,j = 0,n = 0, k = 0;
  int16 un_lost_hang = bottom_whitebase;//这两个变量是用来跟踪记录最近的一行的没有丢点的行，以便于对下一行的状态进行准确的判断.初始值为bottom_whitebase因为第bottom_whitebase行始终判断为没有丢点
  deal_start_line = bottom_whitebase + 1;  
  top_whiteline = ROW -1;
  hang_search_start = white_refer;  //从基准行的中点进行扫描 
   
  for(i = deal_start_line ; i < ROW ;i++)//对状态标志进行初始化
    {
      Row_state[i] = 3;
    }
  
  for(i = deal_start_line ;i < ROW;i++) 
  {
    //////////////////左右的搜索开始///////////////////////
    //左边搜索
    j = hang_search_start;
    left_black[i] = hang_search_start;
    while(j >= 2)
    {     
      
      if(VideoImage1[i][j] - VideoImage1[i][j-2] > OT
         && f_abs16(VideoImage1[i][j]-VideoImage1[i][j+1]) < OT && f_abs16(VideoImage1[i][j+1]-VideoImage1[i][j+2]) < OT && VideoImage1[i][j+2]-VideoImage1[i][j+3] < OT)  //滤除内部的边沿噪点
        {
          if(f_abs16(j - left_black[i-1]) < f_abs16(left_black[i] - left_black[i-1]))//滤除干扰
           left_black[i] = j;
        } 
       if(left_black[i] != hang_search_start && (f_abs16(j - left_black[i-1]) > f_abs16(left_black[i] - left_black[i-1])
                                                 || (f_abs16(left_black[i] - left_black[i-1])  < 5 && j<=left_black[i-1] )))
       {
        break;
       }//减少计算量，搜索到最近的一个跳变点，则停止
     
         //当前一个状态是断点的状态时，这个时候当在内部搜索到了跳变沿的时候，则就不进行搜索，若是没有搜到，
          //则再到赛道的两边进行搜索
       if(Row_state[i-1] == 0 || Row_state[i-1] == 2)//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
          {
            if( j <  left_black[i - 1]  && left_black[i] != hang_search_start) //前一行为断点状态时，搜索到了点之后，则不允许继续的搜索
             {
              break; 
            }
          }
          j--;
    }      //搜索左边沿线的while结束
    //对左边沿线的出界判定
    if(j == 1 && left_black[i] == hang_search_start)      //到达边界了，但是边沿线没有改变时，在搜索范围内没有找到跳变点，则认为是图像依然丢点
    {
      if(VideoImage1[i][j] - VideoImage1[i][j-1] > OT)
         left_black[i] = 1;
      else
        left_black[i] = 0;
    }

  
    //右边搜索
    j = hang_search_start;
    right_black[i] = hang_search_start;
    
    while( j <=COLUMN-3 )
    { 
      if( VideoImage1[i][j] - VideoImage1[i][j+2] > OT 
         && f_abs16(VideoImage1[i][j]-VideoImage1[i][j-1]) < OT && f_abs16(VideoImage1[i][j-1]-VideoImage1[i][j-2]) < OT && VideoImage1[i][j-2]-VideoImage1[i][j-3] < OT)  //滤除边沿噪点
        {
          if(f_abs16(j-right_black[i-1]) < f_abs16(right_black[i] - right_black[i-1]))
          {
                right_black[i] = j ;
          }
        }
      if(right_black[i] != hang_search_start &&( f_abs16(j-right_black[i-1]) > f_abs16(right_black[i] - right_black[i-1])
         ||(f_abs16(right_black[i] - right_black[i-1])<5 && j== right_black[i-1] ) ))//在附近搜索到了点，只要到达了前一行的列位置，则停止
      {
        break;
      }
      if(Row_state[i-1] == 1 || Row_state[i-1] == 2)
          {
            if( j > right_black[i - 1]  && right_black[i] != hang_search_start) //当前一行为断点状态时，搜索到了点之后，则不允许继续的搜索
             {
              break;
            }
            //当搜索到的线大于了
            //if()
          }
        j++;
    }    //右边的while搜索结束
  
    if(j == COLUMN-2 && right_black[i] == hang_search_start)
    {
      if( VideoImage1[i][j] - VideoImage1[i][j+1] > OT)
         right_black[i] = COLUMN - 2 ;
      else
         right_black[i] = COLUMN - 1 ;
    }
    ///////////////////////左右的搜索结束//////////////////////////
    
    
    //  /////////////赛道的状态标记开始////////////////////////////////
  if(i >= deal_start_line)//只是对处于控制区域的边界进行处理
    {    
      //当图像的边沿到达了边界的时候，判定为丢点      ---------------------丢点的第一次判断
      if((left_black[i] <= 1  || left_black[i] >= COLUMN-2 )&& (Row_state[i - 1] == 0||Row_state[i - 1] == 2) && right_black[i] >= 1 && right_black[i] <= COLUMN-2)
      {         //对于到达边界之后是否认为丢点的问题，这个视情况而定
           Row_state[i] =0;//左边丢点
      }
      else if(left_black[i] >= 1 && left_black[i] <= COLUMN-2 && (right_black[i] <= 1 || right_black[i] >= COLUMN-2)&& (Row_state[i - 1] == 1||Row_state[i - 1] == 2))
      {
           Row_state[i] = 1;//右边丢点
      } 
      else if((left_black[i] <= 1 || left_black[i] >= COLUMN-2 ) && (right_black[i] <= 1 || right_black[i] >= COLUMN-2))
      {
           Row_state[i] = 2;//两边都边丢点
      }
      else
      {
           Row_state[i] = 3;//两边都边没有丢点
      }
      
 /*这个状态专门用来标记十字道路的丢点的情况，此时十字道路的赛道的一边到达了边界，但是另外的一边却是以很大趋势向外伸展*/
      if( i> 10)
      {
        if(left_black[i] <= 1 && right_black[i]-right_black[i-1] >= 2 && right_black[i]-right_black[i-2] > 5 && right_black[i]-right_black[i-3] > 6)
        {
          if(Row_state[i] == 0 ||Row_state[i] == 2)//对于第一次进行一个判断
              Row_state[i] = 2;
           else //if(Row_state[i] == 1 ||Row_state[i] == 3)
             Row_state[i] = 1;//1表示的是只有右边丢点
        }
        else if(right_black[i] >= COLUMN-2 && left_black[i-3] - left_black[i] > 6 && left_black[i-2] - left_black[i] > 5 && left_black[i-1] - left_black[i] >= 2 )
        {
         if(Row_state[i] == 1||Row_state[i] == 2)//对于第一次进行一个判断
              Row_state[i] = 2;//0表示的是左边丢点,而右边没有丢点
           else
              Row_state[i] = 0;//0表示的是只有左边丢点
        }
      }
      
        //对两边沿线的状态进行判断//---------------------------丢点的第二次判断
      //注意这里的判断必须要分两种情况一个是跳变点的状态，其次是前一行的状态（前一行的状态的不同需要作出不同的处理），
      if((right_black[i] - left_black[i])-(right_black[i-1] - left_black[i-1])>= 8)//  若是3的话可能出现误判//这里采用绝对值限制是为了防止噪点
      {
         if(( f_abs16(left_black[i] - left_black[i-1]) < f_abs16(right_black[i] - right_black[i-1]))
            && f_abs16(left_black[i] - left_black[i-1]) <= 3)//左边的突变小于右边的  说明右边的点发生了突变
         {
           if(Row_state[i] == 0 ||Row_state[i] == 2)//对于第一次进行一个判断
              Row_state[i] = 2;
           else //if(Row_state[i] == 1 ||Row_state[i] == 3)
           {
             Row_state[i] = 1;//1表示的是只有右边丢点
           }
         } 
        else if(( f_abs16(left_black[i] - left_black[i-1]) > f_abs16(right_black[i] - right_black[i-1]))
            && f_abs16(right_black[i] - right_black[i-1]) <= 3)//左边的突变小于右边的  说明右边的点发生了突变
         {
           if(Row_state[i] == 1||Row_state[i] == 2)//对于第一次进行一个判断
              Row_state[i] = 2;//0表示的是左边丢点,而右边没有丢点
           else
              Row_state[i] = 0;//0表示的是只有左边丢点
         }
         else 
         {
           Row_state[i] = 2;//2表示的是两边都丢点
         }
      }
    
      
      
        if(Row_state[i-1] == 0)//左边丢点
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
        
       else if(Row_state[i-1] == 1)//左边丢点
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
      
    //记录最近的都没有丢点的行
      if( Row_state[i] == 3)
      {
        un_lost_hang = i;
      }
      ////////////左右边沿标记结束/////////////////////////
      
      //前面对赛道进行了状态的判断，这里做出初步的拟合
      if(Row_state[i] == 0)  //左边丢点
      {
        if(right_black[i]- (right_black[i-1] - left_black[i-1]) <= 0 )//限幅
          left_black[i]=0;
        else
        left_black[i] = right_black[i] - (right_black[i-1] - left_black[i-1]);//加上1是由于下向上图像在宽度在减小的原因
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
    //////////////////左右的处理结束///////////////////////////// 
    
    ///对最高有效行的判断/////////////判断一/////////////////////


    if( i> 20 &&i<=top_whiteline && right_black[i] -  left_black[i] < 2*(ROW-i)/5+ WHITE_TOP_WHITELINE_POINT   //////////////////////////////////////////////////////////////////////////
       && (right_black[i-1] -  left_black[i-1]) <  2*(ROW-i)/5 + WHITE_TOP_WHITELINE_POINT 
       ) //只判定一次&& top_whiteline >= ROW-1
    { 
     // if(i<ROW-1) while(1){}
      top_whiteline = i;
    }
    /////////////////////判断二////////////////////////
    center_white[i] = (right_black[i] + left_black[i])/2; 
    if(i>10 && i < ROW-1 &&top_whiteline >= ROW-1 &&( VideoImage2[i-1][center_white[i]] - VideoImage2[i+1][center_white[i]] > OT - 10) /////top_whiteline >= ROW-1 //////////中点跳变////////////////////////////////
       &&  VideoImage2[i-1][center_white[i]-1] - VideoImage2[i+1][center_white[i]-1] > OT - 10
              &&  VideoImage2[i-1][center_white[i]+1] - VideoImage2[i + 1][center_white[i]+1] > OT - 10 )  //最高行的判断用原始图像
    {
      //用这种方式有一个弊端就是，图像存在一个突变，无法真实的反应赛道，特别是60度和50度弯道的微小差别，这里对其经行修补
       top_whiteline = i-1;
      for( n = top_whiteline; n >  top_whiteline - 7;n--)
      {
        if(left_black[n] <= 1)
        {
          for( k = n; k <= top_whiteline ; k++)
          {
             left_black[k] = 0;
             //进行规划后的行的状态需要重新的定义
         /*  if(Row_state[k] == 1 ||Row_state[k] == 2)
            {
              Row_state[k] = 2;
            }
            if(Row_state[k] == 3)
            {
              Row_state[k] = 0;
            }*/
          }
        //  break;  //这里还不能用break。因为有的时候可能会有一个点跳出来了。如 0 1 0 0 0
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

  }//for循环的结束  
  
}

//------------------------通过找出来的赛道对，两边沿线进行处理和虚构并拟合出中心线----------------------//
/*对赛道进行拉线连接，左右各自连接自己的，然后对于中线，利用赛道的状态标志，再进行一次拟合
 0  表示左边沿线断点
 1  表示右边沿线断点
 2  表示两边都断了 
到达边界后不能直接的拉线了
对于虚线和十字道路的处理，只要保证两点就行了，即1、保证能找到在跑道上的点；2、保证对赛道的行状态的记录绝对的正确//////
*/
void Deal_BlackEdge(void)
{ 
  int16 i=0,k=0;
  uint8 un_out_hang = bottom_whitebase ;
  uint8 lost_start_line=0;
  uint8 lost_end_line=0;
  left_top_whiteline = top_whiteline;
  right_top_whiteline = top_whiteline;

  //图像的突变可能是噪点的出现，这里可以试着对Row_state[i]经行一下中值滤波
  //对Row_state[i]滤波
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
    
    if( (Row_state[i-1] == 1 || Row_state[i-1] == 3) && (Row_state[i] == 0 || Row_state[i] == 2))   //判断左边第i 点是否丢点 //////////////////////////////////////////////////////////  
    {
       lost_start_line = i - 1;//记录丢点的前一行
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
           i++;//i++必须要在if的判断之后进行，否则会导致出错
        }
       if(lost_end_line !=0)
       {  
         for(k = lost_start_line+1; k< lost_end_line;k++)
         {                                                                  
          left_black[k] = left_black[lost_start_line] + (k -lost_start_line)*(left_black[lost_end_line]-left_black[lost_start_line])/(lost_end_line - lost_start_line);  
         }
       }   
      else if(lost_end_line ==0 && lost_start_line >  top_whiteline/3 && lost_start_line <ROW-1  ) //当最顶行的点到达边沿的时候，不判定
       {   
        if( left_black[top_whiteline] > 1)
         {
           left_top_whiteline = lost_start_line;
           break;
        }
       }
         
    }
  }
  
  //右边
  for( i=bottom_whitebase ;i < top_whiteline-1;i++)
  {
    lost_start_line = 0;
    lost_end_line = 0;
    if( (Row_state[i-1] == 0 || Row_state[i-1] == 3) && (Row_state[i] == 1 || Row_state[i] == 2))//判断右边第i 点是否丢点
    {
        lost_start_line = i - 1;//记录丢点的前一行
       while(i< top_whiteline-1)
        {
          //连续的两行找到了点则认为找到了连接点
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
    top_whiteline = right_top_whiteline;//除了定义最高行以外，还要对丢线的那一边做补线处理,这里是右边
    for(i = left_top_whiteline;i<=right_top_whiteline;i++)
    {
       if(right_black[i]- (right_black[i-1] - left_black[i-1]) <= 0 )//限幅//////////////////////////////////////////////////////////////////////////////////////////////////////////
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

 //滤除左右的变沿线的单个跳变///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
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
 //边沿线滤波结束
  
 //对之前的错误的补线进行重新的虚构
  //这里的虚构会导致有一种情况发生就是，在弯道的顶行的时候，可能会出现补点，与不补点的区别，这样就导致了舵机的抖动
  for( i=bottom_whitebase ;i <= top_whiteline;i++)
  {
    if(Row_state[i] != 3)///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    {
      center_white[i] = (right_black[i]+left_black[i])/2;
    }
  }
  
  //对于两边出界的点，不利用求平均值的方法去做，而是利用前一行的状态进行补充
  for(i= bottom_whitebase; i <= top_whiteline; i++)
  {
    if(left_black[i] <= 1 && right_black[i] <= COLUMN-5)  //对于左边出界的点进行补充
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
 
 //对中线进行中值滤波
 //对中线和边沿线进行中值滤波
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


/*这个程序包含了两部分，其一是赛道特征的提取；其二是赛道类型的判断///
*/
void get_line_information(void)
{
  int16 i;
  uint8 ramp_count = 0;  //用于记录宽度超出限制的行的个数
  uint16 temp_center_line = 0;
  center_lost_hang = 0;
  
    /*程序的开始首先对中线出现断点的情况进行修补
  当图像的中线出现了巨大的跳变时，他前面的线全部用左右两边的中值代替
  */
 //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// 
  if(left_black[10]<=1 || left_black[11]<=1 ||right_black[10]>=COLUMN-2||right_black[11]>=COLUMN-2)
  {
    for(i = bottom_whitebase + 10 ; i < top_whiteline-5;i++)  //基准行上的偏差不用处理
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
    /////////// //图像的中心线出来之后，首先要确定能够到那些行，在此之后的行全部用控制的行的
   /////////////////////求取控制的最高有效行////////////////////////////////
  danger_count = 0;
  danger_flag = 1;//没有判断之前都认为是危险状态
  control_top_whiteline = top_whiteline;
  
  ////////////////////计算控制的最高有效行//////////////////////
     while(danger_flag ==1)
     {
       for(i = control_top_whiteline;i>=deal_start_line ;i--)//表示从上向下遍历
        {                                                                                         ///////////////////////////////////////////////////////////////////////////////////////////
          temp_center_line = center_white[control_top_whiteline] + (i - (control_top_whiteline)) *(center_white[deal_start_line] - center_white[control_top_whiteline])/( deal_start_line-(control_top_whiteline) );
        if(
           (right_black[i] - temp_center_line < (refer_road_width[i]/5)&&right_black[i] < COLUMN - 2) || (temp_center_line - left_black[i] < (refer_road_width[i]/5) && left_black[i] > 1)
             && i < ( top_whiteline - 10 )   //远端的点不进行安全化，安全化之后对直道入急弯的影响很大
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
         danger_flag = 0;//危险消除
       }
     }
     
  /////////////////赛道的类型的判断/////////////////////////
    S_right = 0;//向右拐的计数
    S_left =0 ; //向左拐计数
    S_straight = 0;
  for( i=bottom_whitebase ;i < control_top_whiteline;i++)
 {
   if(center_white[i+1]- center_white[i] > 1)
   {
     S_right++; //S 弯右加加
   }
   else if(center_white[i]- center_white[i+1] > 1)
   {
     S_left++; //S 弯左加加
   }
   else
   {
     S_straight++;
   }
 }
 
 /*对赛道的判断
 对于赛道的判断 只是区分直道(1) 、波浪弯道(2)、 入弯(3)、弯道(4) */
 
 
 if( control_top_whiteline >= 42)//??????0520
 {
   if(S_left<5 && S_right < 5 )
      direction = 1;  //直道
   else if((f_abs16(S_left-S_right) < 8 && S_left>1 &&S_right>1)
           )
      direction = 2;  //波浪弯道
   else if((S_left<=1 )||(S_right<=1))
     direction = 6;  //大弧弯
   else
     direction =3;// re_direction;出弯道or入弯道或者是斜着的直道
 }
 else if( control_top_whiteline >=35 && control_top_whiteline < 41)
 {
  if((S_left<=1 || S_right <=1) && control_top_whiteline >= 39) ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    direction = 6;  //大弧
  else
   direction = 3;  //入弯道
 }
 else if( control_top_whiteline >=29 && control_top_whiteline <=37)////////////////////////////////////////////////////////////////////////////////////////////////////////////
 {
   if(ramp_flag == 1)
      direction = 1;//坡道视为直道
   else 
      direction = 4;  //弯道当中
 }
 else           //处于很急的弯道当中///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
 {
   if(ramp_flag == 1)
      direction = 1;//坡道视为直道
   else 
      direction = 5;  //弯道当中
 }
 re_direction =direction ;
 //////////////////////赛道的类型的判断结束///////////////////////////////
  
 //前面对于波浪弯道的判断过于简单，这样会导致出弯道和进入弯道的时候有一个误判的行为//////////////////////////////////可以删除以下的///////////////////////////////////////
 if(direction == 2)
 {
    S_right = 0;//向右拐的计数
    S_left =0 ; //向左拐计数
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
     direction = 3;//后面视这种情况为大弧弯 用来加速
   }
 }  
  //////////////////////////////对赛道进行优化//////////////////////////////
 //需要注意的是既然已经将赛道的类型判断出来了，那么就可以按照不同的赛道实现不同的优化特别是针对波浪弯道o
 if(direction == 2)  //波浪弯道  控制行大于60
 {
   for( i=bottom_whitebase ;i <= control_top_whiteline;i++)//无论是什么样的赛道，将中线向图像的中心平移
     {
      if(center_white[i] > MID)//归中
      {
        if( center_white[i] - (control_top_whiteline - 41 ) >= MID )////////////////////////////////////////////////////////////////////////////////////////////////////////////////
          center_white[i] = center_white[i] - (control_top_whiteline - 41);
        else
          center_white[i] = MID;
      }
      else 
      {
        if(center_white[i] + (control_top_whiteline - 41 ) <= MID)  //归中防止在波浪弯道的较大的打角
          center_white[i] = center_white[i] + (control_top_whiteline - 41 );  
        else
          center_white[i] = MID; 
      }
     }
 }
 else if(direction != 1 )   //直线状态不进行归中，防止直道漂浮////
  {
   for( i=bottom_whitebase ;i <= control_top_whiteline;i++)//无论是什么样的赛道，将中线向图像的中心平移
     {
      if(center_white[i] > MID)//归中
      {
        if( center_white[i] - 2 >= MID )
          center_white[i] = center_white[i] - 2;
        else
          center_white[i] = MID;
      }
      else 
      {
        if(center_white[i] + 2 <= MID)  //归中防止在波浪弯道的较大的打角
          center_white[i] = center_white[i] + 2;  
        else
          center_white[i] = MID; 
      }
     }
 }
 
 /*
 center_average = 0;
 /////////////////得到前50行的线性的均值////////////////
    if(control_top_whiteline > 50)
  {
    for(i = bottom_whitebase+1;i<=control_top_whiteline- 10;i++)
   {
     center_average +=  center_white[i];
     if(i == control_top_whiteline - 10)    //只是对前100cm左右的前瞻进行加权
     {
       center_average = center_average /(control_top_whiteline - bottom_whitebase - 10);
       center_linear_average = center_average;
     }
   }
  }
  */
 ///////////////////////////////////////////////////////////////////
  ///////////////////////////////////////////////////////////////////
  
    //为了准确的判断出赛道的变化趋势，十分有必要的是对这个数的历史进行存储。这里存储7个历史值，然后进行模糊判断。
    //通过测试发现 这个值的变化趋势在0 到 25之间变化  当在直道的时候，值在0 - -8之间在弯道中的时候，是在16--25之间变化
    //当数值达到19后，则认为已经到达弯道中间或是在出弯道
  ///////////////均值提取结束//////////////////////////////
  
  /*/////对坡道的判断，当坡道判断出来之后，用标志位标志，且其只是作用在电机的给定控制上
  对于坡道的检测只需要将上坡道检测出来（最高行接近顶行，且其宽度达到了一定的范围）下坡检测比较的困难，
  所以这里不检测下坡，一般只是做一下坡道状态延时就行了（延时时间为1s--2s之间），
  且检测出来之后，只需要降速，对于舵机可以不用去管。图像已经做得可以了。
  对坡道的检测不能只是用宽度去判定，这样容易和弯道出现误检。所以还要加上对端点的限制，将其限制在某一个范围之内,
  这就要求进入弯道之前车子是摆正的。
  #define RAMP_WIDTH  45                  //图像10~20行的宽度范围超过该范围确定为坡道
  #define RAMP_TIME   60
  uint8 ramp_time = 50;                     //进入坡道后多长时间重新开启起跑线检测
  int8 ramp_speed = 0;                    //坡道减速值
  bool ramp_flag;                          //进入坡道标志,主要用于控制
  bool ramp_dis_flag;                     //主要是防止下坡误判 
  对于坡道的检测不能用最高的几行，因为这样容易和十字道路误检
 */
  ramp_count = 0;//3,65,4,25
  if( ramp_dis_flag ==0  && control_top_whiteline >= ROW - 10 ) //直线状态检测  //加入这个ramp_dis_flag标志，是为了让车子在检测数跑道后的这段时间里，不对坡道进行检测
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


/*-------------------------------获取中线的线性相关系数-----------------------------*/
float get_linear_factor(uint8 bottom,uint8 top,uint8 average)            //传递三个参数基准行，顶行，所有行与MID的差值
{
    uint8 i;
    uint8 Y_aver=0;
    float X_square_sum=0;   //X轴平方和
    float Y_square_sum=0;   //Y轴平方和
    float multi_sum=0;      //XY乘积之和
    int temp=0,temp1=0,temp2=0; //减轻浮点运算的寄存器
    float factor=0;
    
     Y_aver=(uint8)((bottom+top)/2);  //Y坐标的范围
    for(i=bottom;i<=top;i++)
    {
        temp=temp+(center_white[i]-average)*(center_white[i]-average);
        if(temp>30000)
        {
            X_square_sum=X_square_sum+temp;   //X平方和
            temp=0;
        }

        temp1=temp1+(i-Y_aver)*(i-Y_aver);
        if(temp1>30000)
        {
            Y_square_sum=Y_square_sum+temp1;   //Y平方和
            temp1=0;
        }

        temp2=temp2+(center_white[i]-average)*(i-Y_aver);
        if(f_abs16(temp2)>30000)
        {
            multi_sum=multi_sum+temp2;    //X、Y的积
            temp2=0;
        }
    }
     
        X_square_sum=X_square_sum+temp;   //得出x的平方和
        Y_square_sum=Y_square_sum+temp1;  //计算出y的平方和
        multi_sum=multi_sum+temp2;        //计算出xy的乘积
    
       /* XX_square_sum =X_square_sum;      //用于检测
        YY_square_sum =Y_square_sum;
        XYmulti_sum = multi_sum;*/
        
        if(X_square_sum<0.1)   //防止除数为0
            X_square_sum=0.1;
        if(Y_square_sum<0.1)
            Y_square_sum=0.1;
        
        if(X_square_sum<300)  //小于300出现在直道
            factor=1; // =1 or =-1 //完全是直线
        else  //否则用公式计算 //注意处理速度，小于200时处理时间少很多
            factor=multi_sum/sqrt(X_square_sum*Y_square_sum)*(bottom_whitebase+control_top_whiteline-10)/(65-10);
        
        if(factor>0.95)
          factor=1;
        if(factor<-0.95)
          factor=-1;
    
        return factor;
}


/*加入起跑线检测的停车程序，利用摄像头进行检测
 这里的主要目的是给stop_flag置位,为了能够检测起跑线，必须保证的是检测的距离为起跑线前的20厘米以上。
这里的图像而言的话就是图像的30行，
以五米的速度来看的话，也就是必须保证两场图像至少有一场检测到，40ms*5m = 20厘米
注意这里的检测是检测黑到白的跳变。这个比检测白到黑的跳变更加的准确
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
  //弯道不检测起跑线
  if(top_whiteline - bottom_whitebase > 35)
  {
    for(i=bottom_whitebase+1;i< bottom_whitebase + 35;i++) //只是检测前二十五行，大于车身的前20几个厘米  
    {
        //至少保证中线的左右的三个点是白色的 并且要保证这个时候的行的状态为3
      if( top_whiteline >= 40
         && (VideoImage2[i - 1][ center_white[i]] -  VideoImage2[i + 1][ center_white[i]])< OT
          && (VideoImage2[i - 1][ center_white[i] - 1] -  VideoImage2[i + 1][ center_white[i] - 1]) < OT
           && (VideoImage2[i - 1][ center_white[i] + 1] -  VideoImage2[i + 1][ center_white[i] + 1]) < OT)
      {//左右两边能够有两段是黑色的
        //这两段白色的检测用的是左右边沿各自向内缩减5格子
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
        }//右边搜索 
      } //中线符合标准
        //当找到了符合的起跑线的时候，跳出循环//判断是还要防止图像的错位
        if(  left_start_stop_flag == 1 && right_start_stop_flag == 1 && f_abs16(right_start_stop_hang - left_start_stop_hang) < 5)
        {
         ting1= 1;
          break;//
        }
    }//for循环
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
  //弯道不检测起跑线
  if(top_whiteline - bottom_whitebase > 35)
  {
    for(i=bottom_whitebase+5;i< bottom_whitebase + 30;i++) //只是检测前二十五行，大于车身的前20几个厘米  
    {
        //至少保证中线的左右的三个点是白色的 并且要保证这个时候的行的状态为3
      if( top_whiteline >= 40
         &&  f_abs16(VideoImage2[i - 1][ center_white[i]] -  VideoImage2[i + 1][ center_white[i]] )< OT
          &&f_abs16( VideoImage2[i - 1][ center_white[i] - 1] -  VideoImage2[i + 1][ center_white[i] - 1]) < OT
           &&f_abs16( VideoImage2[i - 1][ center_white[i] + 1] -  VideoImage2[i + 1][ center_white[i] + 1]) < OT
             &&VideoImage2[i - 1][ center_white[i]]> BASE_OT&&VideoImage2[i - 1][ center_white[i]-1]> BASE_OT
               &&VideoImage2[i - 1][ center_white[i]+1]> BASE_OT)
      {//左右两边能够有两段是黑色的
        //这两段白色的检测用的是左右边沿各自向内缩减5格子
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
        }//右边搜索 
      } //中线符合标准
        //当找到了符合的起跑线的时候，跳出循环//判断是还要防止图像的错位
        if(  left_start_stop_flag == 1 && right_start_stop_flag == 1 && f_abs16(right_start_stop_hang - left_start_stop_hang) < 5)
        {
         ting1= 1;
          break;//
        }
    }//for循环
  }
  
  if(ting1==1)
         zhou++;
    if(zhou>=25)
    { ting_check_stop=1;zhou=0;ting1=0;gpio_set (PORTB, 10,LOW );}
}
/*-----------------------------------舵机和电机的控制函数的变量---------------------------------
这个函数用于进行赛道的优化和控制，其中控制包括电机和舵机，这两部分。对其进行统一的控制
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
 re_angle= angle;/////////问题的
 
   //////////////////////对图像的加权平均值的提取/////////////////////
  center_average = 0;//清零
  
  error_servo_ref_p =0;  //增加这个p有利于出弯道内切    3/13    1/2
  error_servo_ref_d=0; 

 if(control_top_whiteline>15)
{
  if(control_top_whiteline >= 41)                //处理长直道（>2m）出弯道，和半径很大的大弧弯  
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
  
  else  if(control_top_whiteline >=37)//入弯前大约1m以上
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
 
  else if(control_top_whiteline >=33)//入弯道1m以内
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
  
  else if(control_top_whiteline >=27)//入弯道1m以内
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
    //归中的error
  if(abs(refer_error)<zhongjian)
  { lcd_ref_p= lcd_ref_p1;lcd_ref_d=lcd_ref_d1;}
  else
  { lcd_ref_p= lcd_ref_p2;lcd_ref_d=lcd_ref_d2;}  
  if(barrier_l==1||barrier_r==1) { lcd_ref_p= lcd_ref_p2+30;lcd_ref_d=lcd_ref_d2+20;}
  if( direction == 2){ lcd_ref_p= lcd_ref_p1+20;lcd_ref_d=lcd_ref_d1;}
  if(turn_l==1||turn_r==1)
 { lcd_ref_p= 64;lcd_ref_d=300;}
  
    error_servo_ref_p = 1*f_abs16(center_average_b-MID)/8 + lcd_ref_p + 1*(ROW - control_top_whiteline)/2;  //增加这个p有利于出弯道内切    3/13    1/2
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
	if( Row_state[i]==0&&Row_state[i+1]==0&&Row_state[i+2]==0&&left_black[i]>10&&right_black[i]<COLUMN-10)//发现丢线
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

       }//向上搜索完毕
       
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
    if(Row_state[i]==0||left_black[i]<=1)//可能有问题
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
                                    AD采样，均值                                                     
------------------------------------------------------------------------------*/

void GetADValue(void) //查询方式,8位精度，右对齐，数据存放在ATDDRLx
{  uint8 i=0; 
  adc_start(ADC1, AD10, ADC_10bit );
  
  AD_AngleData[0] = ad_ave(ADC1, AD10, ADC_10bit,30 );     //结果
  
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
                                         角度环控制                                                  
------------------------------------------------------------------------------*/


/*2.计算角度*///0626改
 float tmp=0;
 float temp1[3]={0};
 float temp2[3]={0};
 float last_acce_angle=0;
 float Angle[5]={0};
 float  AcceData[3]={0};
//uint8 Rg=15; 
float Rgr;
float pre_Lastgyro=0,Lastgyro=0;                     //用于陀螺仪中值滤波的递推赋值

void GetAngle() 
{         
          uint16 i=0;
          float tempa,tempb,tempc,max,min;             //用于陀螺仪的均值滤波
          acce = AD_AngleData[1]*3.22265625;		                        //角度校正  //静态值 360    352
          
          acce_offset=acce_static-acce;
          acce_G = acce_offset/800;                                     //这里得到角度的正弦值
          
           
          if(acce_G >1 ) acce_G = 1;                                    //算出的值可能大于1或小于-1，是错的，所以限下幅            
          if(acce_G <-1) acce_G = -1;
                     
          acce_angle = 180/3.1416*asin(acce_G);                         //asin求反正弦，得出的单位是弧度，*180/pi得到角度值                                
     
          /*temp1[0]=temp1[1];
          temp1[1]=temp1[2];
          temp1[2]=acce_angle;*/
 
          //acce_angle=(last_acce_angle+acce_angle)/2.0;//考虑增大均值范围
          //last_acce_angle=acce_angle;
          
           for(i=2;i>=1;i--)                                                   //历史数据的处理
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
          
          pre_Lastgyro = Lastgyro;                                //角速度递推赋值
          Lastgyro = gyro;/**/
          gyro_offset= gyro-GYRO_STATIC;                             //-GYRO_STATIC;
          w= gyro_offset/3.417;     //0.67mv/g                                    //角速度值-静态值    w= ( gyro - GYRO_OFF )/6.7;  
     
          
         
          
         
            ////0.9////////////////////////////////////////////////////////////////////////
           g_nCarAngle+= ( ft*w +( acce_angle - g_nCarAngle ) )*0.00125;//0.9偏大  
           
         /*  for(i=4;i>=1;i--)                                                 //历史数据的处理
          {   
             Angle[i] = Angle[i-1];
          }
             Angle[0] = g_nCarAngle;
          
           g_nCarAngle=(Angle[0]+Angle[1])/2;*//* */                 
}  

    
/*3.角度控制*/

  

void  CarAngleAdjust()                                          //要调整输出值与周期之间的比例
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
 // anglePD = (int16)(0.8*last_anglePD + anglePD*0.2);               //平滑输出，意义不太大吧                                                                                        
}


/*------------------------------------------------------------------------------
                                        速度闭环控制                                                 
------------------------------------------------------------------------------*/ 

/*速度闭环控制*/                                       

void  SpeedControl(void)
{
          g_nRightCount =FTM1_CNT;
          g_nLeftCount = ~FTM2_CNT+1;
          FTM1_CNT=0;
          FTM2_CNT=0;
  
          LeftRealSpeed =g_nLeftCount*0.06;//+0.25*LeftRealSpeed;	0.08    //比例系数0.062属于经验,对应于200p     p.2125
          RightRealSpeed=g_nRightCount*0.06;//+0.25*RightRealSpeed;      //比例系数0.025属于经验,对应于500p  
                        	                             
          //RealSpeed=( LeftRealSpeed+ RightRealSpeed )/2 ;//
          RealSpeed=(RightRealSpeed+LeftRealSpeed)/2 ;//0624
          Speed_error = Speed-RealSpeed ;
          
          if(Speed_error>Speed_limit)
                    Speed_error = Speed_limit;
          if(Speed_error<-Speed_limit)
                    Speed_error = -Speed_limit;      
         
 //P控制//  
          
          motor_P = speed_kp*Speed_error;        
         
//I控制
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
          LeftSpeed_filter+=g_nLeftCount*0.06;// 0.05;      //比例系数0.025属于经验,对应于500p



          RightSpeed_filter*=0.2;	// 0.35;  
          RightSpeed_filter+= g_nRightCount*0.06;//;0.05          
                 
  
         //LeftRealSpeed =g_nLeftCount*0.06;//+0.25*LeftRealSpeed;	0.08    //比例系数0.062属于经验,对应于200p     p.2125
          //RightRealSpeed=g_nRightCount*0.06;//+0.25*RightRealSpeed;      //比例系数0.025属于经验,对应于500p  
                        	                             
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
          
          
           if(Speed_error<=10&&Speed_error>=-10)  //之前为10
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
         
 //P控制//  
          
          motor_P = speed_kp*Speed_error;        
         
//I控制
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
                                  电机输出                                                    
                          ( 角度+速度+方向=pwm输出)                                          
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
//右轮
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
                            串口部分              
------------------------------------------------------------------------------*/



/*超级示波器*/

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

//----------------------------串口初始化-----------------------------//                       李靖康学长
void UART0_Init(void)    //PTB16 RXD    PTB17 TXD
{
    uint32 uartclk_khz = CORE_CLOCK*10 * BUS_CLOCK;//时钟180MHz    //随时更改
    uint32 baud = BAUD;
    uint16 sbr,brfa;
    
    SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK; //开启B口时钟
    PORTB_PCR16|=PORT_PCR_MUX(3);//将PTB16引脚设置为模式3，即UART0_RX
    PORTB_PCR17|=PORT_PCR_MUX(3);//将PTB177引脚设置为模式3，即UART0_TX
    SIM_SCGC4|=SIM_SCGC4_UART0_MASK;//开启UART0时钟
    sbr = (uint16)((uartclk_khz*1000)/(baud*16));//计算并设置波特率
    
    UART0_BDH = (uint8)((sbr&0x1F00)>>8);//将波特率19200写入相应的寄存器然后进行使能，使其工作。前面的buad只是一个数字，而后面的计算是将19200写入这个寄存器，然后进行使能
    UART0_BDL=(uint8)(sbr&0x00FF);
    brfa = (((uartclk_khz*32000)/(baud*16))-(sbr*32));
    UART0_C4 = (uint8)(brfa & 0x001F);
    UART0_C2 |=(UART_C2_TE_MASK|UART_C2_RE_MASK);
    UART0_C1 = 0;	
    UART0_C2 |= UART_C2_RIE_MASK;   //开UART0接收中断
}

//------------------------串口发送函数------------------------ //                           

void SCI0_send_mesage(void)
{
    //int i = 0;
    static bool sci_temp = 0,ts=0;
     int i = 0,j = 0;
    DisableInterrupts;  //发送图像数据时，要关闭所有中断，否则会出错    
    if(send_mes == 1)  //参数 自己上位机
    {  
      
      while(!(UART0_S1&UART_S1_TDRE_MASK));   //等待数据到达0
        UART0_D =0x01;
        
      while(!(UART0_S1&UART_S1_TDRE_MASK));   //等待数据到达1
        UART0_D =(uint8)((uint16)angle_kp>>8);
      while(!(UART0_S1&UART_S1_TDRE_MASK));   //等待数据到达2
        UART0_D = (uint8)( (uint16)angle_kp&0x00ff);
        
      while(!(UART0_S1&UART_S1_TDRE_MASK));   //等待数据到达3
        UART0_D =(uint8)(angle_kd);
        
      while(!(UART0_S1&UART_S1_TDRE_MASK));   //等待数据到达4
        UART0_D = (uint8)( (uint16)error_servo_ref_d >>8 );
      while(!(UART0_S1&UART_S1_TDRE_MASK));   //等待数据到达5
        UART0_D =(uint8)( (uint16)error_servo_ref_d  &0x00ff);
        
       while(!(UART0_S1&UART_S1_TDRE_MASK));   //等待数据到达6
        UART0_D = (uint8)( (uint16)error_servo_ref_p >>8 );
      while(!(UART0_S1&UART_S1_TDRE_MASK));   //等待数据到达7
        UART0_D =(uint8)( (uint16)error_servo_ref_p  &0x00ff);
        
      while(!(UART0_S1&UART_S1_TDRE_MASK));   //等待数据到达8
        UART0_D = (uint8)( speed_kp );
        
      while(!(UART0_S1&UART_S1_TDRE_MASK));   //等待数据到达9
        UART0_D = (uint8)( speed_ki*10);
    //  while(!(UART0_S1&UART_S1_TDRE_MASK));   //等待数据到达10
     //   UART0_D = (uint8)( Speed_set );
      
      //while(!(UART0_S1&UART_S1_TDRE_MASK));   //等待数据到达11
        //UART0_D =( uint8 )(w);
      while(!(UART0_S1&UART_S1_TDRE_MASK));   //等待数据到达11
        UART0_D =(uint8)( RealSpeed );
        
      //while(!(UART0_S1&UART_S1_TDRE_MASK));   //等待数据到达12
        //UART0_D =(uint8)( speed_ki);
      while(!(UART0_S1&UART_S1_TDRE_MASK));   //等待数据到达12
        UART0_D = (uint8)( (uint16)ACCE_STATIC>>8 );
      while(!(UART0_S1&UART_S1_TDRE_MASK));   //等待数据到达13
        UART0_D =(uint8)( (uint16)ACCE_STATIC&0x00ff);  
        
      while(!(UART0_S1&UART_S1_TDRE_MASK));   //等待数据到达14
        UART0_D =(uint8)(V*10);    
        
        send_mes = 0;  //发送一次即可，所以要清零
     }
   
    
    else if(send_mes == 2)
    {
      if(!ts)
      {
          while(!(UART0_S1&UART_S1_TDRE_MASK));//等待数据到达
          UART0_D =10;
      }
      
      else
      {
        
          while(!(UART0_S1&UART_S1_TDRE_MASK));//等待数据到达
          UART0_D =20;
      }
          //Delay_MS(80000);
      ts=!ts;
      
    }
 
   else if (send_mes == 3)  //便于调试
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
           while(!(UART0_S1&UART_S1_TDRE_MASK));//等待数据到达
           UART0_D=(uint8)RealSpeed;
           sci_temp = !sci_temp;
           //Delay_MS(2000000); 
        }
        
        //       send_mes = 0;不清0是为了连续发送
      }
   
    else if(send_mes ==4)  //图像
    {  
      while(!(UART0_S1&UART_S1_TDRE_MASK));   //等待数据到达
        UART0_D = WHITE_BLACK_OT;//由于阀值的不存在，故这里只是随便填写的一个数字
              while(!(UART0_S1&UART_S1_TDRE_MASK));   //等待数据到达
        UART0_D = (uint8)ROW;
              while(!(UART0_S1&UART_S1_TDRE_MASK));   //等待数据到达
        UART0_D = (uint8)COLUMN;
        
       // while(!(UART0_S1&UART_S1_TDRE_MASK));   //等待数据到达
        //UART0_D = (uint8)bottom_whitebase;
             // while(!(UART0_S1&UART_S1_TDRE_MASK));   //等待数据到达
        //UART0_D = (uint8)control_top_whiteline ;
        
      for(i =ROW-1;i>=0;i--)
      {
        for(j=0;j<COLUMN;j++)
        {
          while(!(UART0_S1&UART_S1_TDRE_MASK));//等待数据到达
          UART0_D =  VideoImage2[i][j];///见最后一个函数讲解
          Delay_MS(80000);
        }
      }  
      for (i =ROW-1 ;i >=0 ; i--)
      {
        while(!(UART0_S1&UART_S1_TDRE_MASK));//等待数据到达
           UART0_D = left_black[i];
        Delay_MS(80000);
      }
      for (i =ROW-1 ;i >=0 ; i--)
      {
         while(!(UART0_S1&UART_S1_TDRE_MASK));//等待数据到达
         UART0_D = right_black[i];
         Delay_MS(80000);
      }
      for (i =ROW-1 ;i >=0 ; i--)
      {
        while(!(UART0_S1&UART_S1_TDRE_MASK));//等待数据到达
        UART0_D = center_white[i];
        Delay_MS(80000);
      }
      send_mes = 0;  //发送一次即可，所以要清零
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
    DisableInterrupts;  //发送图像数据时，要关闭所有中断，否则会出错    
    if(send_mes==1)  //平哥改进后的上位机的图像
    {  
      while(!(UART0_S1&UART_S1_TDRE_MASK));   //等待数据到达
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
       
        //上位机显示的第一个点是左上角，所以我发的时候第一个点就发左上角的点
      for(i =0;i<=ROW-1;i++)
      {
        for(j=COLUMN-1;j>=0;j--)
        {
          while(!(UART0_S1&UART_S1_TDRE_MASK));//等待数据到达
          UART0_D =  VideoImage2[i][j];///见最后一个函数讲解
          //Delay_MS(80000);
        }
      } 

      for(i =0;i<=ROW-1;i++)
      {
        while(!(UART0_S1&UART_S1_TDRE_MASK));//等待数据到达
           UART0_D = COLUMN - 1 - left_black[i];
        //Delay_MS(80000);
      }
           for(i =0;i<=ROW-1;i++)
      {
         while(!(UART0_S1&UART_S1_TDRE_MASK));//等待数据到达
         UART0_D = COLUMN - 1 - right_black[i];
         //Delay_MS(80000);
      } 
      for(i =0;i<=ROW-1;i++)
      {
        while(!(UART0_S1&UART_S1_TDRE_MASK));//等待数据到达
        UART0_D = COLUMN - 1 - center_white[i];
        //Delay_MS(80000);
      }
      for(i =0;i<=ROW-1;i++)
      {
        while(!(UART0_S1&UART_S1_TDRE_MASK));//发送拟合出来的中线
        UART0_D = COLUMN - 1 - center_average;
        //Delay_MS(80000);
      }
      for(i =0;i<=control_top_whiteline;i++)
      {
        while(!(UART0_S1&UART_S1_TDRE_MASK));//发送拟合出来的中线
        UART0_D = MID;
        //Delay_MS(80000);
      }
      
      
      send_mes = 0;  //发送一次即可，所以要清零
     }
   // EnableInterrupts;  //重新开启所有中断
   else if(send_mes == 2) //用立哥上位机画出图像
   {
           while(!(UART0_S1&UART_S1_TDRE_MASK));   //等待数据到达
        UART0_D = WHITE_BLACK_OT;//由于阀值的不存在，故这里只是随便填写的一个数字
              while(!(UART0_S1&UART_S1_TDRE_MASK));   //等待数据到达
        UART0_D = (uint8)ROW;
              while(!(UART0_S1&UART_S1_TDRE_MASK));   //等待数据到达
        UART0_D = (uint8)COLUMN;
        
        
        //上位机显示的第一个点是左上角，所以我发的时候第一个点就发左上角的点
      for(i =ROW-1;i>=0;i--)
      {
        for(j=0;j<COLUMN;j++)
        {
          while(!(UART0_S1&UART_S1_TDRE_MASK));//等待数据到达
          UART0_D =  VideoImage2[i][j];///见最后一个函数讲解
          Delay_MS(80000);
        }
      }  
      for (i =ROW-1 ;i >=0 ; i--)
      {
        while(!(UART0_S1&UART_S1_TDRE_MASK));//等待数据到达
           UART0_D = left_black[i];
        Delay_MS(80000);
      }
      for (i =ROW-1 ;i >=0 ; i--)
      {
         while(!(UART0_S1&UART_S1_TDRE_MASK));//等待数据到达
         UART0_D = right_black[i];
         Delay_MS(80000);
      }
      for (i =ROW-1 ;i >=0 ; i--)
      {
        while(!(UART0_S1&UART_S1_TDRE_MASK));//等待数据到达
        UART0_D = center_white[i];
        Delay_MS(80000);
      }
      
     
        while(!(UART0_S1&UART_S1_TDRE_MASK));   //等待数据到达
        UART0_D = (uint8)bottom_whitebase;
        while(!(UART0_S1&UART_S1_TDRE_MASK));   //等待数据到达
        UART0_D = (uint8)control_top_whiteline;
      send_mes = 0;  //发送一次即可，所以要清零
   }
   else if (send_mes == 3)  //便于调试
    {  
        if(!sci_temp)    ////////////////////////////////////////////$$$$$$4$$$$$$$$$$$$$/////////////////////////////////////////////////////////////
        {
       while(!(UART0_S1&UART_S1_TDRE_MASK));
       UART0_D = (uint8)(RealSpeed); //speed_feedback
       sci_temp = !sci_temp;
        }
        else
        {
         while(!(UART0_S1&UART_S1_TDRE_MASK));//等待数据到达
         UART0_D= (uint8)( SpeedPIDout);
          sci_temp = !sci_temp;
        }
        //       send_mes = 0;不清0是为了连续发送
      }
       else if (send_mes == 4)  //便于调试
    {  
        if(!sci_temp)
        {
       while(!(UART0_S1&UART_S1_TDRE_MASK));
       UART0_D = (uint8)(f_abs16(0 - angle)/2);//speed_feedback  79---8d
       sci_temp = !sci_temp;
        }
        else
        {
         while(!(UART0_S1&UART_S1_TDRE_MASK));//等待数据到达
         UART0_D= (uint8)(direction);         //  37 -- 39
          sci_temp = !sci_temp;
        }
        //       send_mes = 0;不清0是为了连续发送
      }
           else if (send_mes == 5)  //便于调试
    {  
        if(!sci_temp)
        {
       while(!(UART0_S1&UART_S1_TDRE_MASK));
       UART0_D = (uint8)(top_whiteline);//speed_feedback  79---8d
       sci_temp = !sci_temp;
        }
        else
        {
         while(!(UART0_S1&UART_S1_TDRE_MASK));//等待数据到达
         UART0_D= (uint8)(control_top_whiteline);         //  37 -- 39
          sci_temp = !sci_temp;
        }
        //       send_mes = 0;不清0是为了连续发送
      }
    else if (send_mes =='p')  //停车
    {
       while(!(UART0_S1&UART_S1_TDRE_MASK));   //等待数据到达
       stopflag = 1;
       send_mes = 0;
    }
    else if (send_mes == 's')  //启动
    {
       while(!(UART0_S1&UART_S1_TDRE_MASK));   //等待数据到达
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
 
  temp4 = GPIOA_PDIR;   //读PTD6~PTD13 
  
  temp0 = (uint8)((temp4 >> 24) & 0x00000001);
 
   if(temp0 == 1)   //对应的是拨码8
   lcd_debug  = 1;  //点亮的状态为按键调节时间，若调节完毕，则拨码检测结束，程序向下运行
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
  
  
 /* temp0 = (uint8)((temp4 >> 1) & 0x00000001);//对应的是拨码7
  if(temp0 == 1)
     redraw_control=1;  //拨亮则刷屏
  else
      redraw_control=0; 
  
   //  start_stop_cs 起跑线检测的片选信号*/
    temp0 = (uint8)((temp4 >> 25) & 0x00000001);//0x00000800
   if(temp0 == 1)
    feng = 0;
   else
    feng = 1;
   
  //  停车选择信号 默认状况下是用摄像头检测，当拨码拨上等亮了之后，则用干簧管检测
 /*  temp = !(uint8)((temp1 >> 3) & 0x00000001);//0x00000800
      if(temp == 1)
     stop_check_cs = 1;  //    用干簧管检测
      else
     stop_check_cs = 0;     //用摄像头检测  灯不亮*/
   
}
void   FantingOut()
{
          int16 temp4;
          temp4 = angle-re_angle;
          angleout = (int16)(temp4*(sumbe3 + 1)/16+ re_angle) ;//+  speeddiff*0;
          
}

/*------------------------------------------------------------------------------
                               主函数               
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
  DisableInterrupts;               //禁止总中断 
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
  UART0_Init();                 //串口初始化   19200             PTB16 RXD    PTB17 TXD                           李靖康学长    
  Initial();
  EXIT_Init();   
    OddEvenStatus = ODD_EVEN_STATUS;
    VIF = VIF_START;
 enable_irq(45);           //打开串口中断
 enable_irq(88);           //打开行中断 
  
  EnableInterrupts;			              //开总中断
  
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

       if(ImageReady==1&&lcd_debug==0)                                      //图像准备好，再决策
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

void uart0_isr(void)          //串口中断
{    
    DisableInterrupts;   // 关总中断也可以，但在有更高级中断存在里不推荐
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
   
      if(ch==0x40) //图像
      {
         send_mes=4;
      }
     
      else if(ch==0x41)//fuwei
      {
         send_mes=0;
      }
      
      else if(ch==0x01)//停
      {
        ting=1;
      }
      else if(ch==0x42)//参数获取
      {
        send_mes=1;
        //SCI0_send_mesage(); 
      }
     
     else if( ch==0x43&&deal_r_flag==0 )//参数读取
     {
        deal_r_flag=1;
        send_mes=0;
     }
     
      else if(ch==0x44) //直立波形
      {
        send_mes=2;
        //SCI0_send_mesage(); 
      }
     
      else if(ch==0x45)//速度波形
      {
        send_mes=3;
        //SCI0_send_mesage(); 
      }
     
     else if(ch==0x46) //待定
      {
        send_mes=0;
        //SCI0_send_mesage(); 
      }
     
     else if(ch==0x88)//低速发车
     {
        lcd_debug = 0;
        stop_special_flag=1; 
  //      Speed_set=20;
        
     }
   
    EnableInterrupts;
}
 

void PTB_isr(void)//对于场中断20ms和行中断63us都是摄像头的固有的频率，不需要用软件去定时
{        
    uint16 i; 
   DisableInterrupts; 
   PORTB_PCR22|=PORT_PCR_ISF_MASK;  //清除中断标志位/////////////////////////////////////////////////////////////////////////////////////////////////////  
   sumbel++;
    if(tingting==0)
  {
     if (VIF == VIF_START)                              //开始采样标志
      { 
        LineCount++;
        if(OddEvenStatus != ODD_EVEN_STATUS)         ///////////////////////////////////////////////////////////////////////////////////////////////
        {
          OddEvenStatus = ODD_EVEN_STATUS;	//奇偶场标志
          VIF = VIF_WAITSAMPLE;   		//下一个状态为等待采样
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
    else if (VIF == VIF_WAITSAMPLE)                 //等待采样,此时略去VIDEO_START_LINE行
      { 
          LineCount++;
          if (LineCount >= VIDEO_START_LINE)
          {
              VIF = VIF_SAMPLELINE;                 //下一个状态为采样状态
          } 
            if( sumbel>= 16)    
       { 
        sumbel=0;
         tingting=1;
       }  
      }
    else if (VIF == VIF_SAMPLELINE)              //开始采样
      {
          LineCount++;
          if (LineCount % 4== 0)                //每隔一行采一行
          {
              for (i = 0; i < COLUMN+PIANYI ; i++)        //每行扫描COLUMN+PIANYI个点(其中PIANYI个点需要被剔除掉，因为是行消隐点)
             {
                  if (i >=PIANYI )///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                   {//采集的第一个点的坐标在真实的世界里是右下角，所以在数组中存储在第一行的最后一个位置
                     VideoImage2[VideoImageLine][COLUMN-1-i+PIANYI] = (uint8)(0x000000ff & GPIOE_PDIR);//将采集到的点直接放入到VideoImage2[][]中在init array（）中放到VideoImage1[][]中做处理
                         Delay_MS(3);
                        asm("nop");
                        asm("nop");//汇编延时 
                  }
              }
             VideoImageLine++;
         if( sumbel>= 16)    
       { 
        sumbel=0;
         tingting=1;
       }  
          }
          
 
          if (VideoImageLine == ROW)      //采集行数大于设定的行数
          {
              ImageReady = 1;           //图像准备好
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


