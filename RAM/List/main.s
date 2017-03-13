///////////////////////////////////////////////////////////////////////////////
//                                                                            /
//                                                      27/Apr/2013  17:10:07 /
// IAR ANSI C/C++ Compiler V6.30.4.23288/W32 EVALUATION for ARM               /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Users\Administrator\Desktop\4.25屏幕 下位机 发送     /
//                    接受 像素处理  死机\src\Sources\App\main.c              /
//    Command line =  "C:\Users\Administrator\Desktop\4.25屏幕 下位机 发送    /
//                    接受 像素处理  死机\src\Sources\App\main.c" -lCN        /
//                    "C:\Users\Administrator\Desktop\4.25屏幕 下位机 发送    /
//                    接受 像素处理  死机\RAM\List\" -lB                      /
//                    "C:\Users\Administrator\Desktop\4.25屏幕 下位机 发送    /
//                    接受 像素处理  死机\RAM\List\" -o                       /
//                    "C:\Users\Administrator\Desktop\4.25屏幕 下位机 发送    /
//                    接受 像素处理  死机\RAM\Obj\" --no_cse --no_unroll      /
//                    --no_inline --no_code_motion --no_tbaa --no_clustering  /
//                    --no_scheduling --debug --endian=little                 /
//                    --cpu=Cortex-M4 -e --fpu=None --dlib_config             /
//                    "D:\Program Files\IAR Systems\Embedded Workbench 6.0    /
//                    Evaluation\arm\INC\c\DLib_Config_Normal.h" -I           /
//                    "C:\Users\Administrator\Desktop\4.25屏幕 下位机 发送    /
//                    接受 像素处理  死机\src\Sources\Cpu\" -I                /
//                    "C:\Users\Administrator\Desktop\4.25屏幕 下位机 发送    /
//                    接受 像素处理  死机\src\Sources\App\" -I                /
//                    "C:\Users\Administrator\Desktop\4.25屏幕 下位机 发送    /
//                    接受 像素处理  死机\src\Sources\Drivers\adc\" -I        /
//                    "C:\Users\Administrator\Desktop\4.25屏幕 下位机 发送    /
//                    接受 像素处理  死机\src\Sources\Drivers\delay\" -I      /
//                    "C:\Users\Administrator\Desktop\4.25屏幕 下位机 发送    /
//                    接受 像素处理  死机\src\Sources\Drivers\FTM\" -I        /
//                    "C:\Users\Administrator\Desktop\4.25屏幕 下位机 发送    /
//                    接受 像素处理  死机\src\Sources\Drivers\gpio\" -I       /
//                    "C:\Users\Administrator\Desktop\4.25屏幕 下位机 发送    /
//                    接受 像素处理  死机\src\Sources\Drivers\lptmr\" -I      /
//                    "C:\Users\Administrator\Desktop\4.25屏幕 下位机 发送    /
//                    接受 像素处理  死机\src\Sources\Drivers\mcg\" -I        /
//                    "C:\Users\Administrator\Desktop\4.25屏幕 下位机 发送    /
//                    接受 像素处理  死机\src\Sources\Drivers\PIT\" -I        /
//                    "C:\Users\Administrator\Desktop\4.25屏幕 下位机 发送    /
//                    接受 像素处理  死机\src\Sources\Drivers\uart\" -I       /
//                    "C:\Users\Administrator\Desktop\4.25屏幕 下位机 发送    /
//                    接受 像素处理  死机\src\Sources\Drivers\oled\" -I       /
//                    "C:\Users\Administrator\Desktop\4.25屏幕 下位机 发送    /
//                    接受 像素处理  死机\src\Sources\Drivers\spi\" -On       /
//                    --use_c++_inline                                        /
//    List file    =  C:\Users\Administrator\Desktop\4.25屏幕 下位机 发送     /
//                    接受 像素处理  死机\RAM\List\main.s                     /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME main

        #define SHT_PROGBITS 0x1

        EXTERN FTM_PWM_init
        EXTERN FTM_QUAD_init
        EXTERN LCD_Init
        EXTERN UARTx
        EXTERN __aeabi_cfcmple
        EXTERN __aeabi_cfrcmple
        EXTERN __aeabi_d2f
        EXTERN __aeabi_dadd
        EXTERN __aeabi_ddiv
        EXTERN __aeabi_dmul
        EXTERN __aeabi_f2d
        EXTERN __aeabi_f2iz
        EXTERN __aeabi_fadd
        EXTERN __aeabi_fdiv
        EXTERN __aeabi_fmul
        EXTERN __aeabi_fsub
        EXTERN __aeabi_i2d
        EXTERN __aeabi_memclr4
        EXTERN __aeabi_ui2d
        EXTERN __aeabi_ui2f
        EXTERN ad_ave
        EXTERN ad_once
        EXTERN adc_init
        EXTERN asin
        EXTERN delayms
        EXTERN gpio_init
        EXTERN gpio_set
        EXTERN pit_init
        EXTERN pre_show
        EXTERN redraw
        EXTERN uart_init
        EXTERN uart_putchar

        PUBLIC ACCE_STATIC
        PUBLIC AD_AngleData
        PUBLIC CCD_init
        PUBLIC CCD_value
        PUBLIC CRC_CHECK
        PUBLIC CarAngleAdjust
        PUBLIC CarControlOut
        PUBLIC CarDirectionAdjust
        PUBLIC DirectionControlCount
        PUBLIC Distance
        PUBLIC GIPO_init
        PUBLIC GYRO_STATIC
        PUBLIC GetADValue
        PUBLIC GetAngle
        PUBLIC ImageCapture
        PUBLIC IntegrationTime
        PUBLIC LeftRealSpeed
        PUBLIC LeftSpeedPwm
        PUBLIC Left_cnt
        PUBLIC Left_cnt1
        PUBLIC Left_cnt2
        PUBLIC Normalized_U8
        PUBLIC OutData
        PUBLIC OutPut_Data
        PUBLIC PIT0_isr
        PUBLIC Pixel
        PUBLIC PixelAverage
        PUBLIC Pixel_fil
        PUBLIC Pixel_top
        PUBLIC PutDate
        PUBLIC RealSpeed
        PUBLIC RightRealSpeed
        PUBLIC RightSpeedPwm
        PUBLIC Right_cnt
        PUBLIC Right_cnt1
        PUBLIC Right_cnt2
        PUBLIC SamplingDelay
        PUBLIC SendDate
        PUBLIC SendHex
        PUBLIC SendImageData1
        PUBLIC SendImageData2
        PUBLIC SpeedControl
        PUBLIC SpeedControlCount
        PUBLIC SpeedPID
        PUBLIC Speed_error
        PUBLIC Speed_set
        PUBLIC TimerCnt20ms
        PUBLIC V
        PUBLIC WHITE_CENTER
        PUBLIC abs
        PUBLIC acce
        PUBLIC acce_G
        PUBLIC acce_angle
        PUBLIC acce_offset
        PUBLIC anglePD
        PUBLIC angle_error
        PUBLIC angle_kd
        PUBLIC angle_kp
        PUBLIC black_latch
        PUBLIC ccd_scan_flag
        PUBLIC ccd_scan_num
        PUBLIC dis_error
        PUBLIC edge_error
        PUBLIC edge_error1
        PUBLIC error
        PUBLIC g_nCarAngle
        PUBLIC g_nCarSpeedCount
        PUBLIC g_nLeftCount
        PUBLIC g_nRightCount
        PUBLIC get_latch
        PUBLIC gyro
        PUBLIC gyroIntegral
        PUBLIC gyro_angle
        PUBLIC gyro_offset
        PUBLIC init_gyro
        PUBLIC j
        PUBLIC last_Left_cnt
        PUBLIC last_Right_cnt
        PUBLIC last_dis_error
        PUBLIC last_error
        PUBLIC latch
        PUBLIC line_latch
        PUBLIC main
        PUBLIC motor_I
        PUBLIC motor_P
        PUBLIC p_distance
        PUBLIC pixel_binarize
        PUBLIC put_cnt
        PUBLIC put_date
        PUBLIC send_cnt
        PUBLIC send_data_cnt
        PUBLIC send_date
        PUBLIC sensor_init
        PUBLIC speed_ki
        PUBLIC speed_kp
        PUBLIC steer_kd
        PUBLIC steer_kp
        PUBLIC steerpwm
        PUBLIC w
        PUBLIC white_center
        PUBLIC white_latch

// C:\Users\Administrator\Desktop\4.25屏幕 下位机 发送 接受 像素处理  死机\src\Sources\App\main.c
//    1 #include "include.h"
//    2 //#include "MK60N512VMD100.h"
//    3 
//    4 //#include <math.h>
//    5 
//    6 
//    7 
//    8 #define CCD_SI(x)   gpio_set(PORTE, 0, x)
//    9 #define CCD_CLK(x)  gpio_set(PORTE, 1, x)
//   10 
//   11 #define TEST_TIME0(x) gpio_set(PORTE, 28, x)
//   12 #define TEST_TIME1(x) gpio_set(PORTE, 27, x)
//   13 
//   14 
//   15  /*Globle variabls*/
//   16  
//   17 
//   18 /*需调节的参数*/             

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   19 uint8 Speed_set=0;
Speed_set:
        DS8 1
//   20 

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//   21 uint8 WHITE_CENTER=62;//车放在中间时的跑道中心  //需要校准
WHITE_CENTER:
        DATA
        DC8 62
//   22 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   23 float ACCE_STATIC = 1124;                         //1123           蓝电池 1124
ACCE_STATIC:
        DATA
        DC32 448C8000H
//   24 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   25 float angle_kp =440,angle_kd = 4.4;     //角度                   480  4.2       450  5
angle_kp:
        DATA
        DC32 43DC0000H

        SECTION `.data`:DATA:REORDER:NOROOT(2)
angle_kd:
        DATA
        DC32 408CCCCDH
//   26 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   27 float speed_kp=40,speed_ki=2.5; //速度
speed_kp:
        DATA
        DC32 42200000H

        SECTION `.data`:DATA:REORDER:NOROOT(2)
speed_ki:
        DATA
        DC32 40200000H
//   28 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   29 float steer_kp=28.5,steer_kd = 29.5; //方向
steer_kp:
        DATA
        DC32 41E40000H

        SECTION `.data`:DATA:REORDER:NOROOT(2)
steer_kd:
        DATA
        DC32 41EC0000H
//   30 
//   31 
//   32 /*整体,时间等参数*/

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   33 uint8 SpeedControlCount = 0;                  //速控制周期计数值
SpeedControlCount:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   34 uint8 g_nCarSpeedCount ;                //1.25ms控制周期计数
g_nCarSpeedCount:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   35 uint8 DirectionControlCount = 0;               //方向控制周期
DirectionControlCount:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   36 uint8 IntegrationTime;
IntegrationTime:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   37 uint8 send_data_cnt = 0;
send_data_cnt:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   38 uint8 TimerCnt20ms = 0;
TimerCnt20ms:
        DS8 1
//   39 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   40 float V;
V:
        DS8 4
//   41 
//   42 
//   43                                                                            
//   44 
//   45 //******************************************************************************
//   46 /*直立平衡控制相关参数*/
//   47 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   48 float acce=0,gyro=0,w=0;                     //送入滤波的加速度计角度，陀螺仪角速度
acce:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
gyro:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
w:
        DS8 4
//   49 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   50 float GYRO_STATIC = 0;                                  //零点偏移量
GYRO_STATIC:
        DS8 4
//   51 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   52 float AD_AngleData[2];             //均值滤波之后的陀螺仪和加速度计传感器数据
AD_AngleData:
        DS8 8
//   53 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   54 float acce_G=0,acce_angle=0,gyro_angle=0,acce_offset=0,gyro_offset=0;
acce_G:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
acce_angle:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
gyro_angle:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
acce_offset:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
gyro_offset:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   55 float g_nCarAngle=0;
g_nCarAngle:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   56 float gyroIntegral=0;                     
gyroIntegral:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   57 float angle_error=0;               //角度偏差
angle_error:
        DS8 4
//   58 

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   59 int16 anglePD=0;
anglePD:
        DS8 2
//   60 
//   61 //*****************************************************************************
//   62 /*速度控制相关参数*/ 

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   63 int16 g_nLeftCount=0, g_nRightCount=0;                  //两个电机的速度计数，符号位表示方向
g_nLeftCount:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
g_nRightCount:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   64 float RealSpeed;
RealSpeed:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   65 float LeftRealSpeed,RightRealSpeed;
LeftRealSpeed:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
RightRealSpeed:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   66 float Speed_error,motor_P,motor_I=0;
Speed_error:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
motor_P:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
motor_I:
        DS8 4
//   67 

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   68 int16 SpeedPID = 0.0;                                 //速度控制的输出量
SpeedPID:
        DS8 2
//   69 
//   70 //*****************************************************************************
//   71 /*获取小车位置偏差相关*/
//   72 

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   73 uint16 latch;
latch:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   74 uint16 Pixel[128];
Pixel:
        DS8 256

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   75 uint16 Pixel_fil[128]={0};
Pixel_fil:
        DS8 256

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   76 uint8 CCD_value[130]={0};
CCD_value:
        DS8 132
//   77 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   78 float white_center=63;//跑道中心
white_center:
        DATA
        DC32 427C0000H
//   79 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   80 float p_distance=0;//偏差
p_distance:
        DS8 4
//   81 

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   82 uint16 Pixel_top=0;
Pixel_top:
        DS8 2

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//   83 uint8 Left_cnt=18;  
Left_cnt:
        DATA
        DC8 18

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//   84 uint8 Right_cnt=110;
Right_cnt:
        DATA
        DC8 110
//   85 
//   86 //*****************************************************************************
//   87 /*转向控制相关参数*/
//   88 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   89  float  Distance[10];
Distance:
        DS8 40

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   90  float error=0;
error:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   91  float last_error;
last_error:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   92  float  dis_error=0;
dis_error:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   93  int16  steerpwm=0;                                     //转向控制输出数量
steerpwm:
        DS8 2
//   94 
//   95 
//   96  

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   97 int16 LeftSpeedPwm,RightSpeedPwm;
LeftSpeedPwm:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
RightSpeedPwm:
        DS8 2
//   98 
//   99 
//  100 
//  101 
//  102  
//  103 /*------------------------------------------------------------------------------
//  104                                 初始化                                                     
//  105 ------------------------------------------------------------------------------*/
//  106 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  107 int abs(int num)     //绝对值函数
//  108 {
//  109          if(num<0)
abs:
        CMP      R0,#+0
        BPL.N    ??abs_0
//  110              return -num;
        RSBS     R0,R0,#+0
        B.N      ??abs_1
//  111          else
//  112              return num;
??abs_0:
??abs_1:
        BX       LR               ;; return
//  113 }
//  114                                                                            
//  115 /*1.端口初始化*/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  116  void GIPO_init()
//  117  {
GIPO_init:
        PUSH     {R7,LR}
//  118       gpio_init (PORTE , 28, GPO,LOW);
        MOVS     R3,#+0
        MOVS     R2,#+1
        MOVS     R1,#+28
        MOVS     R0,#+4
        BL       gpio_init
//  119       gpio_init (PORTE , 27, GPO,LOW);
        MOVS     R3,#+0
        MOVS     R2,#+1
        MOVS     R1,#+27
        MOVS     R0,#+4
        BL       gpio_init
//  120 //    gpio_init (PORTA, 0, GPI, LOW);
//  121 //    gpio_init (PORTA, 1, GPI, LOW);
//  122 //    gpio_init (PORTA, 2, GPI, LOW);
//  123 //    gpio_init (PORTA, 3, GPI, LOW);
//  124 //    gpio_init (PORTA, 4, GPI, LOW);
//  125 //    gpio_init (PORTA, 5, GPI, LOW);
//  126 //    gpio_init (PORTA, 6, GPI, LOW);
//  127 //    gpio_init (PORTA, 7, GPI, LOW);                       
//  128 
//  129   }
        POP      {R0,PC}          ;; return
//  130   
//  131 /*2.陀螺仪初始化*/
//  132  

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  133  void init_gyro(){
init_gyro:
        PUSH     {R7,LR}
//  134    
//  135         //adc_start(ADC0, AD8, ADC_10bit );
//  136         
//  137  	GYRO_STATIC =ad_ave(ADC0, AD8, ADC_10bit, 100)*3.22265625;   //16精度* 0.050354
        MOVS     R3,#+100
        MOVS     R2,#+2
        MOVS     R1,#+8
        MOVS     R0,#+0
        BL       ad_ave
        BL       __aeabi_f2d
        MOVS     R2,#+0
        LDR.W    R3,??DataTable10  ;; 0x4009c800
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        LDR.W    R1,??DataTable10_1
        STR      R0,[R1, #+0]
//  138         //adc_stop(ADC0);
//  139  	}
        POP      {R0,PC}          ;; return
//  140 /*3.CCD初始化*/
//  141 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  142 void CCD_init(void)
//  143 {
CCD_init:
        PUSH     {R7,LR}
//  144   gpio_init (PORTE , 0, GPO,LOW);
        MOVS     R3,#+0
        MOVS     R2,#+1
        MOVS     R1,#+0
        MOVS     R0,#+4
        BL       gpio_init
//  145   gpio_init (PORTE , 1, GPO,LOW);
        MOVS     R3,#+0
        MOVS     R2,#+1
        MOVS     R1,#+1
        MOVS     R0,#+4
        BL       gpio_init
//  146   adc_init(ADC0, AD12) ;
        MOVS     R1,#+12
        MOVS     R0,#+0
        BL       adc_init
//  147   //adc_start(ADC0, AD12, ADC_10bit );
//  148   
//  149 } 
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  150 void sensor_init(){
sensor_init:
        PUSH     {R7,LR}
//  151     adc_init(ADC0, AD8);
        MOVS     R1,#+8
        MOVS     R0,#+0
        BL       adc_init
//  152     adc_init(ADC0, AD9);
        MOVS     R1,#+9
        MOVS     R0,#+0
        BL       adc_init
//  153     //adc_start(ADC0, AD8, ADC_10bit );
//  154     //adc_start(ADC0, AD9, ADC_10bit );
//  155 }
        POP      {R0,PC}          ;; return
//  156 
//  157 /*------------------------------------------------------------------------------
//  158                                     AD采样，均值                                                     
//  159 ------------------------------------------------------------------------------*/
//  160 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  161 void GetADValue(void) //查询方式,8位精度，右对齐，数据存放在ATDDRLx
//  162 {  uint8 i=0; 
GetADValue:
        PUSH     {R4,LR}
        MOVS     R4,#+0
//  163   //adc_start(ADC0, AD8, ADC_10bit );
//  164   
//  165   AD_AngleData[0] = ad_ave(ADC0, AD8, ADC_10bit,30 );     //结果
        MOVS     R3,#+30
        MOVS     R2,#+2
        MOVS     R1,#+8
        MOVS     R0,#+0
        BL       ad_ave
        LDR.W    R1,??DataTable10_2
        STR      R0,[R1, #+0]
//  166   
//  167   for(i=0;i<=100;i++){
        MOVS     R0,#+0
        MOVS     R4,R0
??GetADValue_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+101
        BCS.N    ??GetADValue_1
//  168     asm("nop");
        nop              
//  169     asm("nop");
        nop              
//  170   
//  171   }
        ADDS     R4,R4,#+1
        B.N      ??GetADValue_0
//  172   
//  173  // adc_stop(ADC0);
//  174   
//  175   //adc_start(ADC0, AD9, ADC_10bit );
//  176   
//  177   AD_AngleData[1] = ad_ave(ADC0, AD9, ADC_10bit,30 );
??GetADValue_1:
        MOVS     R3,#+30
        MOVS     R2,#+2
        MOVS     R1,#+9
        MOVS     R0,#+0
        BL       ad_ave
        LDR.W    R1,??DataTable10_2
        STR      R0,[R1, #+4]
//  178  // adc_stop(ADC0);
//  179               
//  180 }
        POP      {R4,PC}          ;; return
//  181 
//  182 
//  183 /*------------------------------------------------------------------------------
//  184                                          角度环控制                                                  
//  185 ------------------------------------------------------------------------------*/
//  186 
//  187 
//  188 /*2.计算角度*/
//  189 
//  190 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  191 void GetAngle() 
//  192 { 
GetAngle:
        PUSH     {R3-R5,LR}
//  193           acce = AD_AngleData[1]*3.22265625;		                        //角度校正  //静态值 360    352
        LDR.W    R0,??DataTable10_2
        LDR      R0,[R0, #+4]
        BL       __aeabi_f2d
        MOVS     R2,#+0
        LDR.W    R3,??DataTable10  ;; 0x4009c800
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        LDR.W    R1,??DataTable10_3
        STR      R0,[R1, #+0]
//  194           
//  195           acce_offset=ACCE_STATIC-acce;
        LDR.W    R0,??DataTable10_4
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable10_3
        LDR      R1,[R1, #+0]
        BL       __aeabi_fsub
        LDR.W    R1,??DataTable10_5
        STR      R0,[R1, #+0]
//  196           acce_G = acce_offset/800;                                     //这里得到角度的正弦值
        LDR.W    R0,??DataTable10_5
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable10_6  ;; 0x44480000
        BL       __aeabi_fdiv
        LDR.W    R1,??DataTable10_7
        STR      R0,[R1, #+0]
//  197           
//  198            
//  199           if(acce_G >0.3 ) acce_G = 0.3;                                    //算出的值可能大于1或小于-1，是错的，所以限下幅            
        LDR.W    R0,??DataTable10_7
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable10_8  ;; 0x3e99999a
        BL       __aeabi_cfrcmple
        BHI.N    ??GetAngle_0
        LDR.W    R0,??DataTable10_7
        LDR.W    R1,??DataTable10_8  ;; 0x3e99999a
        STR      R1,[R0, #+0]
//  200           if(acce_G <-0.3) acce_G = -0.3;
??GetAngle_0:
        LDR.W    R0,??DataTable10_7
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable10_9  ;; 0xbe999999
        BL       __aeabi_cfcmple
        BCS.N    ??GetAngle_1
        LDR.W    R0,??DataTable10_7
        LDR.W    R1,??DataTable10_10  ;; 0xbe99999a
        STR      R1,[R0, #+0]
//  201                      
//  202      
//  203           acce_angle = 180/3.1416*asin(acce_G);                         //asin求反正弦，得出的单位是弧度，*180/pi得到角度值 
??GetAngle_1:
        LDR.W    R0,??DataTable10_7
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        BL       asin
        LDR.W    R2,??DataTable10_11  ;; 0xb6774c14
        LDR.W    R3,??DataTable10_12  ;; 0x404ca5d7
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        LDR.W    R1,??DataTable10_13
        STR      R0,[R1, #+0]
//  204           
//  205             
//  206 	  gyro = AD_AngleData[0]*3.22265625;
        LDR.W    R0,??DataTable10_2
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        MOVS     R2,#+0
        LDR.W    R3,??DataTable10  ;; 0x4009c800
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        LDR.W    R1,??DataTable10_14
        STR      R0,[R1, #+0]
//  207           
//  208           gyro_offset=  GYRO_STATIC - gyro;
        LDR.W    R0,??DataTable10_1
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable10_14
        LDR      R1,[R1, #+0]
        BL       __aeabi_fsub
        LDR.W    R1,??DataTable10_15
        STR      R0,[R1, #+0]
//  209           w= gyro_offset/6.7;                              //角速度值-静态值    w= ( gyro - GYRO_OFF )/6.7;  
        LDR.W    R0,??DataTable10_15
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        LDR.W    R2,??DataTable10_16  ;; 0xcccccccd
        LDR.W    R3,??DataTable10_17  ;; 0x401acccc
        BL       __aeabi_ddiv
        BL       __aeabi_d2f
        LDR.W    R1,??DataTable10_18
        STR      R0,[R1, #+0]
//  210        
//  211 
//  212           
//  213           g_nCarAngle =0.9987*(g_nCarAngle+0.001*w)+0.0013*acce_angle;
        LDR.W    R0,??DataTable11
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable10_18
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        LDR.W    R2,??DataTable11_1  ;; 0xd2f1a9fc
        LDR.W    R3,??DataTable11_2  ;; 0x3f50624d
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        LDR.W    R2,??DataTable11_3  ;; 0xb3d07c85
        LDR.W    R3,??DataTable11_4  ;; 0x3feff559
        BL       __aeabi_dmul
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable10_13
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        LDR.W    R2,??DataTable11_5  ;; 0x5f06f694
        LDR.W    R3,??DataTable11_6  ;; 0x3f554c98
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        LDR.W    R1,??DataTable11
        STR      R0,[R1, #+0]
//  214                
//  215 }  
        POP      {R0,R4,R5,PC}    ;; return
//  216 
//  217     
//  218 /*3.角度控制*/
//  219 
//  220   
//  221 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  222     void CarAngleAdjust()                                          //要调整输出值与周期之间的比例
//  223 {
CarAngleAdjust:
        PUSH     {R4,LR}
//  224   anglePD =(int16)(g_nCarAngle* angle_kp  +  angle_kd*w);
        LDR.W    R0,??DataTable11
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable11_7
        LDR      R0,[R0, #+0]
        BL       __aeabi_fmul
        MOVS     R4,R0
        LDR.W    R0,??DataTable11_8
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable10_18
        LDR      R0,[R0, #+0]
        BL       __aeabi_fmul
        MOVS     R1,R4
        BL       __aeabi_fadd
        BL       __aeabi_f2iz
        LDR.W    R1,??DataTable14
        STRH     R0,[R1, #+0]
//  225         
//  226                                                                                         
//  227 }
        POP      {R4,PC}          ;; return
//  228 
//  229 
//  230 /*------------------------------------------------------------------------------
//  231                                         速度闭环控制                                                 
//  232 ------------------------------------------------------------------------------*/ 
//  233 
//  234 /*速度闭环控制*/                                       
//  235 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  236 void  SpeedControl(void)
//  237 {
SpeedControl:
        PUSH     {LR}
//  238           g_nRightCount = FTM1_CNT;
        LDR.W    R0,??DataTable11_9
        LDR.W    R1,??DataTable11_10  ;; 0x40039004
        LDR      R1,[R1, #+0]
        STRH     R1,[R0, #+0]
//  239           g_nLeftCount = FTM2_CNT ;
        LDR.W    R0,??DataTable11_11
        LDR.W    R1,??DataTable11_12  ;; 0x400b8004
        LDR      R1,[R1, #+0]
        STRH     R1,[R0, #+0]
//  240           FTM1_CNT=0;
        LDR.W    R0,??DataTable11_10  ;; 0x40039004
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  241           FTM2_CNT=0;
        LDR.W    R0,??DataTable11_12  ;; 0x400b8004
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  242   
//  243           LeftRealSpeed =g_nRightCount*0.025;	    //比例系数0.062属于经验,对应于200p     p.2125
        LDR.W    R0,??DataTable11_9
        LDRSH    R0,[R0, #+0]
        BL       __aeabi_i2d
        LDR.W    R2,??DataTable11_13  ;; 0x9999999a
        LDR.W    R3,??DataTable11_14  ;; 0x3f999999
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        LDR.W    R1,??DataTable11_15
        STR      R0,[R1, #+0]
//  244           RightRealSpeed=g_nLeftCount*0.025;      //比例系数0.025属于经验,对应于500p  
        LDR.W    R0,??DataTable11_11
        LDRSH    R0,[R0, #+0]
        BL       __aeabi_i2d
        LDR.W    R2,??DataTable11_13  ;; 0x9999999a
        LDR.W    R3,??DataTable11_14  ;; 0x3f999999
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        LDR.W    R1,??DataTable12
        STR      R0,[R1, #+0]
//  245                         	                             
//  246           RealSpeed=( LeftRealSpeed + RightRealSpeed )/2;
        LDR.W    R0,??DataTable11_15
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable12
        LDR      R0,[R0, #+0]
        BL       __aeabi_fadd
        MOVS     R1,#+1073741824
        BL       __aeabi_fdiv
        LDR.W    R1,??DataTable12_1
        STR      R0,[R1, #+0]
//  247           Speed_error = Speed_set - RealSpeed ;
        LDR.W    R0,??DataTable12_2
        LDRB     R0,[R0, #+0]
        BL       __aeabi_ui2f
        LDR.W    R1,??DataTable12_1
        LDR      R1,[R1, #+0]
        BL       __aeabi_fsub
        LDR.W    R1,??DataTable12_3
        STR      R0,[R1, #+0]
//  248           
//  249           if(Speed_error>5)
        LDR.W    R0,??DataTable12_3
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable12_4  ;; 0x40a00001
        BL       __aeabi_cfrcmple
        BHI.N    ??SpeedControl_0
//  250                     Speed_error = 5;
        LDR.W    R0,??DataTable12_3
        LDR.W    R1,??DataTable12_5  ;; 0x40a00000
        STR      R1,[R0, #+0]
//  251           if(Speed_error<-5)
??SpeedControl_0:
        LDR.W    R0,??DataTable12_3
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable12_6  ;; 0xc0a00000
        BL       __aeabi_cfcmple
        BCS.N    ??SpeedControl_1
//  252                     Speed_error = -5;      
        LDR.W    R0,??DataTable12_3
        LDR.W    R1,??DataTable12_6  ;; 0xc0a00000
        STR      R1,[R0, #+0]
//  253          
//  254  //P控制//  
//  255        
//  256           motor_P = speed_kp*Speed_error;        
??SpeedControl_1:
        LDR.W    R0,??DataTable12_7
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable12_3
        LDR      R0,[R0, #+0]
        BL       __aeabi_fmul
        LDR.W    R1,??DataTable12_8
        STR      R0,[R1, #+0]
//  257          
//  258 //I控制//   
//  259          // motor_I +=  speed_ki*Speed_error;
//  260           
//  261          
//  262           SpeedPID =(int16)( motor_P );//+ motor_I);                
        LDR.W    R0,??DataTable12_8
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2iz
        LDR.W    R1,??DataTable15
        STRH     R0,[R1, #+0]
//  263 }
        POP      {PC}             ;; return
//  264 
//  265 
//  266 /*------------------------------------------------------------------------------
//  267                                  方向控制                                                 
//  268 ------------------------------------------------------------------------------*/
//  269 
//  270 /*1.数据归一化*/
//  271 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  272 uint8 Normalized_U8(uint16 data)
//  273 {
//  274   return (uint8)((uint32)data*255/1024);
Normalized_U8:
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        MOVS     R1,#+255
        MULS     R0,R1,R0
        LSRS     R0,R0,#+10
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return
//  275 }
//  276 
//  277 /*2.求数组的均值程序*/
//  278                                                             

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  279 uint16 PixelAverage(uint8 len, uint16 *data) {
PixelAverage:
        PUSH     {R4}
//  280   uint8 i;
//  281   uint32 sum = 0;
        MOVS     R3,#+0
//  282   for(i = 0; i<len; i++) {
        MOVS     R4,#+0
        MOVS     R2,R4
??PixelAverage_0:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R2,R0
        BCS.N    ??PixelAverage_1
//  283     sum = sum + *data++;
        LDRH     R4,[R1, #+0]
        UXTAH    R3,R3,R4
        ADDS     R1,R1,#+2
//  284   }
        ADDS     R2,R2,#+1
        B.N      ??PixelAverage_0
//  285   return ((uint16)(sum/len));
??PixelAverage_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        UDIV     R0,R3,R0
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        POP      {R4}
        BX       LR               ;; return
//  286 }
//  287 
//  288 /*3.CCD延时程序*/
//  289 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  290  void SamplingDelay(void){
//  291   // int8 i;
//  292 
//  293     asm("nop");
SamplingDelay:
        nop              
//  294     asm("nop");
        nop              
//  295     asm("nop");
        nop              
//  296     asm("nop");
        nop              
//  297     asm("nop");
        nop              
//  298     asm("nop");
        nop              
//  299     asm("nop");
        nop              
//  300     asm("nop");
        nop              
//  301     asm("nop");
        nop              
//  302     asm("nop");
        nop              
//  303     asm("nop");
        nop              
//  304     asm("nop");
        nop              
//  305     asm("nop");
        nop              
//  306     asm("nop");
        nop              
//  307     asm("nop");
        nop              
//  308     asm("nop");
        nop              
//  309     asm("nop");
        nop              
//  310     asm("nop");
        nop              
//  311     asm("nop");
        nop              
//  312     asm("nop");
        nop              
//  313     asm("nop");
        nop              
//  314     asm("nop");
        nop              
//  315     asm("nop");
        nop              
//  316     asm("nop");
        nop              
//  317     asm("nop");
        nop              
//  318 //        asm("nop");
//  319 //    asm("nop");
//  320 //    asm("nop");
//  321 //    asm("nop");
//  322 //    asm("nop");
//  323 //    asm("nop");
//  324 //    asm("nop");
//  325 //    asm("nop");
//  326 //    asm("nop");
//  327 //    asm("nop");
//  328 //    asm("nop");
//  329 //    asm("nop");
//  330 }
        BX       LR               ;; return
//  331 
//  332 /*4.CCD启动程序*/
//  333 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  334 void ImageCapture(uint16 * ImageData) {
ImageCapture:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
//  335 
//  336     unsigned char i;
//  337     extern uint8 AtemP ;
//  338 
//  339     CCD_SI(1);            /* SI  = 1 */
        MOVS     R2,#+1
        MOVS     R1,#+0
        MOVS     R0,#+4
        BL       gpio_set
//  340     SamplingDelay();
        BL       SamplingDelay
//  341     CCD_CLK(1);           /* CLK = 1 */
        MOVS     R2,#+1
        MOVS     R1,#+1
        MOVS     R0,#+4
        BL       gpio_set
//  342     SamplingDelay();
        BL       SamplingDelay
//  343     CCD_SI(0);            /* SI  = 0 */
        MOVS     R2,#+0
        MOVS     R1,#+0
        MOVS     R0,#+4
        BL       gpio_set
//  344     SamplingDelay();
        BL       SamplingDelay
//  345 
//  346     
//  347 //    for(i = 0; i < 50; i++) {               //Delay 10us for sample the first pixel
//  348 //      SamplingDelay() ;  //200ns           
//  349 //    } 
//  350     //adc_start(ADC0, AD12, ADC_10bit );
//  351     
//  352     *ImageData =  ad_once(ADC0, AD12, ADC_10bit);
        MOVS     R2,#+2
        MOVS     R1,#+12
        MOVS     R0,#+0
        BL       ad_once
        STRH     R0,[R4, #+0]
//  353     ImageData ++ ;
        ADDS     R4,R4,#+2
//  354   
//  355     
//  356     CCD_CLK(0);           /* CLK = 0 */
        MOVS     R2,#+0
        MOVS     R1,#+1
        MOVS     R0,#+4
        BL       gpio_set
//  357       
//  358 
//  359     for(i=0; i<127; i++) {
        MOVS     R0,#+0
        MOVS     R5,R0
??ImageCapture_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+127
        BCS.N    ??ImageCapture_1
//  360         SamplingDelay();
        BL       SamplingDelay
//  361         SamplingDelay();
        BL       SamplingDelay
//  362         CCD_CLK(1);       /* CLK = 1 */
        MOVS     R2,#+1
        MOVS     R1,#+1
        MOVS     R0,#+4
        BL       gpio_set
//  363         SamplingDelay();
        BL       SamplingDelay
//  364         SamplingDelay();
        BL       SamplingDelay
//  365         //Sampling Pixel 2~128
//  366 
//  367         *ImageData = ad_once(ADC0, AD12, ADC_10bit);
        MOVS     R2,#+2
        MOVS     R1,#+12
        MOVS     R0,#+0
        BL       ad_once
        STRH     R0,[R4, #+0]
//  368         ImageData ++ ;
        ADDS     R4,R4,#+2
//  369         CCD_CLK(0);       /* CLK = 0 */
        MOVS     R2,#+0
        MOVS     R1,#+1
        MOVS     R0,#+4
        BL       gpio_set
//  370         
//  371     }
        ADDS     R5,R5,#+1
        B.N      ??ImageCapture_0
//  372     //adc_stop(ADC0);
//  373     SamplingDelay();
??ImageCapture_1:
        BL       SamplingDelay
//  374     SamplingDelay();
        BL       SamplingDelay
//  375     CCD_CLK(1);           /* CLK = 1 */
        MOVS     R2,#+1
        MOVS     R1,#+1
        MOVS     R0,#+4
        BL       gpio_set
//  376     SamplingDelay();
        BL       SamplingDelay
//  377     SamplingDelay();
        BL       SamplingDelay
//  378     CCD_CLK(0);           /* CLK = 0 */
        MOVS     R2,#+0
        MOVS     R1,#+1
        MOVS     R0,#+4
        BL       gpio_set
//  379 }
        POP      {R0,R4,R5,PC}    ;; return
//  380 
//  381 
//  382 /*
//  383 void mid( )
//  384 {
//  385     uint16 a, b, c, tmp;
//  386     
//  387     uint8 i;
//  388     
//  389     Pixel_fil[0]=Pixel[0];
//  390     
//  391     for(i=1;i<127;i++){
//  392       a =  Pixel[i-1];
//  393       b =  Pixel[i];
//  394       c =  Pixel[i+1];
//  395       tmp = a > b ? a : b;          //tmp取两者最大值
//  396       Pixel_fil[i]=c > tmp ?    tmp :  (   c > a  ?    c   :     a  );
//  397     }
//  398     
//  399     Pixel_fil[127]=Pixel[127];
//  400                                                   
//  401 }
//  402 */
//  403 #define LATCH_LINE  104

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  404 uint8 line_latch[LATCH_LINE]={0};  //灰度值数组 
line_latch:
        DS8 104

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//  405 uint16 black_latch=0;
black_latch:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//  406 uint16 white_latch=0;
white_latch:
        DS8 2
//  407 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  408 void get_latch(void) //双峰直方图测动态阀值     //如果出现问题，请检查电池是否有电
//  409 {
get_latch:
        PUSH     {R4,R5}
//  410    uint8 i=0;
        MOVS     R1,#+0
//  411    uint8 temp=0;
        MOVS     R0,#+0
//  412   
//  413    for (i=0;i<LATCH_LINE;i++) 
        MOVS     R2,#+0
        MOVS     R1,R2
??get_latch_0:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+104
        BCS.N    ??get_latch_1
//  414       line_latch[i]=0;
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R2,??DataTable14_1
        MOVS     R3,#+0
        STRB     R3,[R1, R2]
        ADDS     R1,R1,#+1
        B.N      ??get_latch_0
//  415    
//  416    for (i=0;i<127;i++)                           
??get_latch_1:
        MOVS     R2,#+0
        MOVS     R1,R2
??get_latch_2:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+127
        BCS.N    ??get_latch_3
//  417           line_latch[Pixel[i]/10]++; 
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R2,??DataTable14_2
        LDRH     R2,[R2, R1, LSL #+1]
        MOVS     R3,#+10
        SDIV     R2,R2,R3
        LDR.W    R3,??DataTable14_1
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R4,??DataTable14_2
        LDRH     R4,[R4, R1, LSL #+1]
        MOVS     R5,#+10
        SDIV     R4,R4,R5
        LDR.W    R5,??DataTable14_1
        LDRB     R4,[R4, R5]
        ADDS     R4,R4,#+1
        STRB     R4,[R2, R3]
        ADDS     R1,R1,#+1
        B.N      ??get_latch_2
//  418 
//  419                                                 
//  420 
//  421    for(i=LATCH_LINE;i>LATCH_LINE-50;i--)  
??get_latch_3:
        MOVS     R2,#+104
        MOVS     R1,R2
??get_latch_4:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+55
        BCC.N    ??get_latch_5
//  422    {
//  423       if(line_latch[i-1]>line_latch[i])
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R2,??DataTable14_1
        LDRB     R2,[R1, R2]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R3,??DataTable14_1
        ADDS     R3,R1,R3
        LDRB     R3,[R3, #-1]
        CMP      R2,R3
        BCS.N    ??get_latch_6
//  424       {
//  425           temp= line_latch[i];
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R2,??DataTable14_1
        LDRB     R2,[R1, R2]
        MOVS     R0,R2
//  426           line_latch[i]=line_latch[i-1];
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R2,??DataTable14_1
        ADDS     R2,R1,R2
        LDRB     R2,[R2, #-1]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R3,??DataTable14_1
        STRB     R2,[R1, R3]
//  427           line_latch[i-1]=temp;
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R2,??DataTable14_1
        ADDS     R2,R1,R2
        STRB     R0,[R2, #-1]
//  428           
//  429           white_latch=(i-1)*10;
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        SUBS     R2,R1,#+1
        MOVS     R3,#+10
        MULS     R2,R3,R2
        LDR.W    R3,??DataTable15_1
        STRH     R2,[R3, #+0]
//  430       }
//  431    
//  432    }
??get_latch_6:
        SUBS     R1,R1,#+1
        B.N      ??get_latch_4
//  433    
//  434    
//  435    for(i=10;i<40;i++) 
??get_latch_5:
        MOVS     R2,#+10
        MOVS     R1,R2
??get_latch_7:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+40
        BCS.N    ??get_latch_8
//  436    {
//  437       if(line_latch[i+1]>line_latch[i])
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R2,??DataTable14_1
        LDRB     R2,[R1, R2]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R3,??DataTable14_1
        ADDS     R3,R1,R3
        LDRB     R3,[R3, #+1]
        CMP      R2,R3
        BCS.N    ??get_latch_9
//  438       {
//  439           temp= line_latch[i];
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R2,??DataTable14_1
        LDRB     R2,[R1, R2]
        MOVS     R0,R2
//  440           line_latch[i]=line_latch[i-1];
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R2,??DataTable14_1
        ADDS     R2,R1,R2
        LDRB     R2,[R2, #-1]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R3,??DataTable14_1
        STRB     R2,[R1, R3]
//  441           line_latch[i-1]=temp;
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R2,??DataTable14_1
        ADDS     R2,R1,R2
        STRB     R0,[R2, #-1]
//  442           
//  443           black_latch=(i+1)*10;
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R2,R1,#+1
        MOVS     R3,#+10
        MULS     R2,R3,R2
        LDR.W    R3,??DataTable15_2
        STRH     R2,[R3, #+0]
//  444       }
//  445    
//  446    }
??get_latch_9:
        ADDS     R1,R1,#+1
        B.N      ??get_latch_7
//  447   
//  448    
//  449    latch=(white_latch+black_latch)/2;
??get_latch_8:
        LDR.W    R2,??DataTable15_1
        LDRH     R2,[R2, #+0]
        LDR.W    R3,??DataTable15_2
        LDRH     R3,[R3, #+0]
        UXTAH    R2,R3,R2
        MOVS     R3,#+2
        SDIV     R2,R2,R3
        LDR.W    R3,??DataTable15_3
        STRH     R2,[R3, #+0]
//  450 
//  451 }
        POP      {R4,R5}
        BX       LR               ;; return
//  452 
//  453 
//  454 /*5.采样值二值化*/
//  455 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  456 void pixel_binarize(uint16 *Pixel_data)
//  457   {    
//  458     unsigned char i;    
//  459       
//  460     for(i=0;i<128;i++)
pixel_binarize:
        MOVS     R2,#+0
        MOVS     R1,R2
??pixel_binarize_0:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+128
        BCS.N    ??pixel_binarize_1
//  461       {
//  462       
//  463         if(*Pixel_data++>=latch)
        MOVS     R2,R0
        ADDS     R0,R2,#+2
        LDRH     R2,[R2, #+0]
        LDR.W    R3,??DataTable15_3
        LDRH     R3,[R3, #+0]
        CMP      R2,R3
        BCC.N    ??pixel_binarize_2
//  464            CCD_value[i]=1;
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R2,??DataTable15_4
        MOVS     R3,#+1
        STRB     R3,[R1, R2]
        B.N      ??pixel_binarize_3
//  465         else
//  466            CCD_value[i]=0; 
??pixel_binarize_2:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R2,??DataTable15_4
        MOVS     R3,#+0
        STRB     R3,[R1, R2]
//  467       }    
??pixel_binarize_3:
        ADDS     R1,R1,#+1
        B.N      ??pixel_binarize_0
//  468   }
??pixel_binarize_1:
        BX       LR               ;; return
//  469   
//  470  
//  471 
//  472 
//  473 /*6.偏差获取*/

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  474 uint8 ccd_scan_flag=0;
ccd_scan_flag:
        DS8 1

        SECTION `.data`:DATA:REORDER:NOROOT(1)
//  475 uint16 ccd_scan_num=100;
ccd_scan_num:
        DATA
        DC16 100

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//  476 uint8 Left_cnt1=63;
Left_cnt1:
        DATA
        DC8 63

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//  477 uint8 Left_cnt2=63;
Left_cnt2:
        DATA
        DC8 63

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//  478 uint8 Right_cnt1=63;
Right_cnt1:
        DATA
        DC8 63

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//  479 uint8 Right_cnt2=63;
Right_cnt2:
        DATA
        DC8 63

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//  480 uint8 last_Right_cnt=63;
last_Right_cnt:
        DATA
        DC8 63

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//  481 uint8 last_Left_cnt=63;
last_Left_cnt:
        DATA
        DC8 63
//  482 
//  483 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  484 void edge_error(void) 
//  485 {
edge_error:
        PUSH     {R4,LR}
//  486     
//  487     uint8 i=63;
        MOVS     R4,#+63
//  488 //    if(ccd_scan_num>0){
//  489 //      ccd_scan_num--;
//  490 //      if(ccd_scan_num==0)
//  491 //        ccd_scan_flag=1;
//  492 //	}
//  493     
//  494      //for(i=(ccd_scan_flag ? Left_cnt+10 : 63);i> 0;i--)
//  495     i=63;
        MOVS     R0,#+63
        MOVS     R4,R0
//  496        while(CCD_value[i]) 
??edge_error_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R0,??DataTable15_4
        LDRB     R0,[R4, R0]
        CMP      R0,#+0
        BEQ.N    ??edge_error_1
//  497        {
//  498          i--;
        SUBS     R4,R4,#+1
        B.N      ??edge_error_0
//  499        }
//  500      Left_cnt=i;
??edge_error_1:
        LDR.W    R0,??DataTable15_5
        STRB     R4,[R0, #+0]
//  501      //for(i=(ccd_scan_flag ? Right_cnt-10 : 63);i<128;i++)
//  502      i=63;
        MOVS     R0,#+63
        MOVS     R4,R0
//  503        while(CCD_value[i]) 
??edge_error_2:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R0,??DataTable15_4
        LDRB     R0,[R4, R0]
        CMP      R0,#+0
        BEQ.N    ??edge_error_3
//  504        {
//  505         i++;
        ADDS     R4,R4,#+1
        B.N      ??edge_error_2
//  506 
//  507        }
//  508       Right_cnt=i;
??edge_error_3:
        LDR.W    R0,??DataTable15_6
        STRB     R4,[R0, #+0]
//  509 
//  510     white_center=(Left_cnt+Right_cnt)/2.0;//计算白线中心值  
        LDR.W    R0,??DataTable15_5
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable15_6
        LDRB     R1,[R1, #+0]
        ADDS     R0,R1,R0
        BL       __aeabi_i2d
        MOVS     R2,#+0
        MOVS     R3,#+1073741824
        BL       __aeabi_ddiv
        BL       __aeabi_d2f
        LDR.W    R1,??DataTable15_7
        STR      R0,[R1, #+0]
//  511     p_distance=white_center-WHITE_CENTER;//计算偏差
        LDR.W    R0,??DataTable15_8
        LDRB     R0,[R0, #+0]
        BL       __aeabi_ui2f
        MOVS     R1,R0
        LDR.W    R0,??DataTable15_7
        LDR      R0,[R0, #+0]
        BL       __aeabi_fsub
        LDR.W    R1,??DataTable15_9
        STR      R0,[R1, #+0]
//  512     
//  513     if(Right_cnt-Left_cnt>108||Right_cnt-Left_cnt<60)
        LDR.W    R0,??DataTable15_6
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable15_5
        LDRB     R1,[R1, #+0]
        SUBS     R0,R0,R1
        CMP      R0,#+109
        BGE.N    ??edge_error_4
        LDR.W    R0,??DataTable15_6
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable15_5
        LDRB     R1,[R1, #+0]
        SUBS     R0,R0,R1
        CMP      R0,#+60
        BGE.N    ??edge_error_5
//  514      p_distance= 0;
??edge_error_4:
        LDR.W    R0,??DataTable15_9
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  515     
//  516 } 
??edge_error_5:
        POP      {R4,PC}          ;; return
//  517 
//  518  

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  519 void edge_error1(void) 
//  520 {
edge_error1:
        PUSH     {R3-R5,LR}
//  521     
//  522     uint8 i=0;
        MOVS     R4,#+0
//  523  // uint8 j=0;
//  524     if(ccd_scan_num>0){
        LDR.W    R0,??DataTable15_10
        LDRH     R0,[R0, #+0]
        CMP      R0,#+1
        BCC.N    ??edge_error1_0
//  525      ccd_scan_num--;
        LDR.W    R0,??DataTable15_10
        LDRH     R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.W    R1,??DataTable15_10
        STRH     R0,[R1, #+0]
//  526       if(ccd_scan_num==0)
        LDR.W    R0,??DataTable15_10
        LDRH     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??edge_error1_0
//  527         ccd_scan_flag=1;
        LDR.W    R0,??DataTable15_11
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//  528 	}
//  529     
//  530      //for(i=(ccd_scan_flag ? Left_cnt+10 : 63);i> 0;i--)
//  531     //i=(uint8)white_center;
//  532     //i=(Left_cnt+Right_cnt)/2 ;
//  533     i=63;
??edge_error1_0:
        MOVS     R0,#+63
        MOVS     R4,R0
//  534        while(CCD_value[i]) 
??edge_error1_1:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R0,??DataTable15_4
        LDRB     R0,[R4, R0]
        CMP      R0,#+0
        BEQ.N    ??edge_error1_2
//  535        {
//  536          i--;
        SUBS     R4,R4,#+1
        B.N      ??edge_error1_1
//  537        }
//  538        
//  539      Left_cnt1=i;
??edge_error1_2:
        LDR.W    R0,??DataTable15_12
        STRB     R4,[R0, #+0]
//  540      
//  541      while(!CCD_value[i]){
??edge_error1_3:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R0,??DataTable15_4
        LDRB     R0,[R4, R0]
        CMP      R0,#+0
        BNE.N    ??edge_error1_4
//  542        i--;
        SUBS     R4,R4,#+1
        B.N      ??edge_error1_3
//  543      }
//  544      if(i==0)
??edge_error1_4:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BNE.N    ??edge_error1_5
//  545        Left_cnt= Left_cnt1;
        LDR.W    R0,??DataTable15_5
        LDR.W    R1,??DataTable15_12
        LDRB     R1,[R1, #+0]
        STRB     R1,[R0, #+0]
        B.N      ??edge_error1_6
//  546      else{
//  547        
//  548        while(CCD_value[i]) {i--;}
??edge_error1_5:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R0,??DataTable15_4
        LDRB     R0,[R4, R0]
        CMP      R0,#+0
        BEQ.N    ??edge_error1_7
        SUBS     R4,R4,#+1
        B.N      ??edge_error1_5
//  549        
//  550        if(i==0)  Left_cnt= Left_cnt1;
??edge_error1_7:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BNE.N    ??edge_error1_8
        LDR.W    R0,??DataTable15_5
        LDR.W    R1,??DataTable15_12
        LDRB     R1,[R1, #+0]
        STRB     R1,[R0, #+0]
        B.N      ??edge_error1_6
//  551 
//  552        else{ 
//  553          Left_cnt2=i;
??edge_error1_8:
        LDR.W    R0,??DataTable15_13
        STRB     R4,[R0, #+0]
//  554          Left_cnt=(abs(Left_cnt-Left_cnt1)<abs(Left_cnt-Left_cnt2))?Left_cnt1:Left_cnt2;
        LDR.W    R0,??DataTable15_5
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable15_12
        LDRB     R1,[R1, #+0]
        SUBS     R0,R0,R1
        BL       abs
        MOVS     R5,R0
        LDR.W    R0,??DataTable15_5
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable15_13
        LDRB     R1,[R1, #+0]
        SUBS     R0,R0,R1
        BL       abs
        CMP      R5,R0
        BGE.N    ??edge_error1_9
        LDR.W    R0,??DataTable15_12
        LDRB     R0,[R0, #+0]
        B.N      ??edge_error1_10
??edge_error1_9:
        LDR.W    R0,??DataTable15_13
        LDRB     R0,[R0, #+0]
??edge_error1_10:
        LDR.W    R1,??DataTable15_5
        STRB     R0,[R1, #+0]
//  555        }
//  556         
//  557      }
//  558      
//  559       
//  560       
//  561       i=63;
??edge_error1_6:
        MOVS     R0,#+63
        MOVS     R4,R0
//  562        while(CCD_value[i]) 
??edge_error1_11:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R0,??DataTable15_4
        LDRB     R0,[R4, R0]
        CMP      R0,#+0
        BEQ.N    ??edge_error1_12
//  563        {
//  564         i++;
        ADDS     R4,R4,#+1
        B.N      ??edge_error1_11
//  565 
//  566        }
//  567       Right_cnt1=i;
??edge_error1_12:
        LDR.W    R0,??DataTable15_14
        STRB     R4,[R0, #+0]
//  568       
//  569       while(!CCD_value[i]){
??edge_error1_13:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R0,??DataTable15_4
        LDRB     R0,[R4, R0]
        CMP      R0,#+0
        BNE.N    ??edge_error1_14
//  570        i++;
        ADDS     R4,R4,#+1
        B.N      ??edge_error1_13
//  571      }
//  572      if(i==127)
??edge_error1_14:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+127
        BNE.N    ??edge_error1_15
//  573        Right_cnt= Right_cnt1;
        LDR.W    R0,??DataTable15_6
        LDR.W    R1,??DataTable15_14
        LDRB     R1,[R1, #+0]
        STRB     R1,[R0, #+0]
        B.N      ??edge_error1_16
//  574      else{
//  575        
//  576        while(CCD_value[i]) {i++;}
??edge_error1_15:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R0,??DataTable15_4
        LDRB     R0,[R4, R0]
        CMP      R0,#+0
        BEQ.N    ??edge_error1_17
        ADDS     R4,R4,#+1
        B.N      ??edge_error1_15
//  577        
//  578        if(i==127)  Left_cnt= Left_cnt1;
??edge_error1_17:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+127
        BNE.N    ??edge_error1_18
        LDR.W    R0,??DataTable15_5
        LDR.W    R1,??DataTable15_12
        LDRB     R1,[R1, #+0]
        STRB     R1,[R0, #+0]
        B.N      ??edge_error1_16
//  579 
//  580        else 
//  581        { 
//  582          Right_cnt2=i;
??edge_error1_18:
        LDR.W    R0,??DataTable15_15
        STRB     R4,[R0, #+0]
//  583           Left_cnt=(abs(Right_cnt-Right_cnt1)<abs(Right_cnt-Right_cnt2))?Right_cnt1:Right_cnt2;
        LDR.W    R0,??DataTable15_6
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable15_14
        LDRB     R1,[R1, #+0]
        SUBS     R0,R0,R1
        BL       abs
        MOVS     R5,R0
        LDR.W    R0,??DataTable15_6
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable15_15
        LDRB     R1,[R1, #+0]
        SUBS     R0,R0,R1
        BL       abs
        CMP      R5,R0
        BGE.N    ??edge_error1_19
        LDR.W    R0,??DataTable15_14
        LDRB     R0,[R0, #+0]
        B.N      ??edge_error1_20
??edge_error1_19:
        LDR.W    R0,??DataTable15_15
        LDRB     R0,[R0, #+0]
??edge_error1_20:
        LDR.W    R1,??DataTable15_5
        STRB     R0,[R1, #+0]
//  584        }
//  585         
//  586      }
//  587      
//  588      if(ccd_scan_flag){
??edge_error1_16:
        LDR.W    R0,??DataTable15_11
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??edge_error1_21
//  589      if(abs(Left_cnt-last_Left_cnt)>8||abs(Right_cnt-last_Right_cnt)>8)
        LDR.W    R0,??DataTable15_5
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable15_16
        LDRB     R1,[R1, #+0]
        SUBS     R0,R0,R1
        BL       abs
        CMP      R0,#+9
        BGE.N    ??edge_error1_22
        LDR.W    R0,??DataTable15_6
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable15_17
        LDRB     R1,[R1, #+0]
        SUBS     R0,R0,R1
        BL       abs
        CMP      R0,#+9
        BLT.N    ??edge_error1_21
//  590      {
//  591        Left_cnt=last_Left_cnt;
??edge_error1_22:
        LDR.W    R0,??DataTable15_5
        LDR.W    R1,??DataTable15_16
        LDRB     R1,[R1, #+0]
        STRB     R1,[R0, #+0]
//  592        Right_cnt=last_Right_cnt;
        LDR.W    R0,??DataTable15_6
        LDR.W    R1,??DataTable15_17
        LDRB     R1,[R1, #+0]
        STRB     R1,[R0, #+0]
//  593      }
//  594      }
//  595 
//  596     white_center=(Left_cnt+Right_cnt)/2.0;//计算白线中心值  
??edge_error1_21:
        LDR.W    R0,??DataTable15_5
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable15_6
        LDRB     R1,[R1, #+0]
        ADDS     R0,R1,R0
        BL       __aeabi_i2d
        MOVS     R2,#+0
        MOVS     R3,#+1073741824
        BL       __aeabi_ddiv
        BL       __aeabi_d2f
        LDR.W    R1,??DataTable15_7
        STR      R0,[R1, #+0]
//  597     p_distance=white_center-WHITE_CENTER;//计算偏差
        LDR.W    R0,??DataTable15_8
        LDRB     R0,[R0, #+0]
        BL       __aeabi_ui2f
        MOVS     R1,R0
        LDR.W    R0,??DataTable15_7
        LDR      R0,[R0, #+0]
        BL       __aeabi_fsub
        LDR.W    R1,??DataTable15_9
        STR      R0,[R1, #+0]
//  598     
//  599     if(Right_cnt-Left_cnt>108||Right_cnt-Left_cnt<50)
        LDR.W    R0,??DataTable15_6
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable15_5
        LDRB     R1,[R1, #+0]
        SUBS     R0,R0,R1
        CMP      R0,#+109
        BGE.N    ??edge_error1_23
        LDR.W    R0,??DataTable15_6
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable15_5
        LDRB     R1,[R1, #+0]
        SUBS     R0,R0,R1
        CMP      R0,#+50
        BGE.N    ??edge_error1_24
//  600      p_distance= 0;
??edge_error1_23:
        LDR.W    R0,??DataTable15_9
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  601                                      
//  602     
//  603      last_Left_cnt  =Left_cnt;
??edge_error1_24:
        LDR.W    R0,??DataTable15_16
        LDR.W    R1,??DataTable15_5
        LDRB     R1,[R1, #+0]
        STRB     R1,[R0, #+0]
//  604      last_Right_cnt=Right_cnt;
        LDR.W    R0,??DataTable15_17
        LDR.W    R1,??DataTable15_6
        LDRB     R1,[R1, #+0]
        STRB     R1,[R0, #+0]
//  605      
//  606      
//  607     
//  608 } 
        POP      {R0,R4,R5,PC}    ;; return
//  609 
//  610  
//  611                                                                                                      
//  612 /*7.方向输出*/  

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  613 float last_dis_error=0;
last_dis_error:
        DS8 4

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  614 void CarDirectionAdjust()
//  615 {
CarDirectionAdjust:
        PUSH     {R4-R6,LR}
//  616       uint8 i;	
//  617       
//  618       for(i=0;i<10-1;i++)
        MOVS     R0,#+0
        MOVS     R6,R0
??CarDirectionAdjust_0:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+9
        BCS.N    ??CarDirectionAdjust_1
//  619       {
//  620            Distance[i]=Distance[i+1];
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR.W    R0,??DataTable15_18
        ADDS     R0,R0,R6, LSL #+2
        LDR      R0,[R0, #+4]
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR.W    R1,??DataTable15_18
        STR      R0,[R1, R6, LSL #+2]
//  621       }
        ADDS     R6,R6,#+1
        B.N      ??CarDirectionAdjust_0
//  622            Distance[9]=p_distance;
??CarDirectionAdjust_1:
        LDR.W    R0,??DataTable15_18
        LDR.W    R1,??DataTable15_9
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+36]
//  623       
//  624        
//  625 
//  626        error=p_distance;     //sum/5;
        LDR.W    R0,??DataTable15_19
        LDR.W    R1,??DataTable15_9
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+0]
//  627        
//  628        dis_error=0.8*(Distance[9]-Distance[5])+0.2*last_dis_error;
        LDR.W    R0,??DataTable15_18
        LDR      R0,[R0, #+36]
        LDR.W    R1,??DataTable15_18
        LDR      R1,[R1, #+20]
        BL       __aeabi_fsub
        BL       __aeabi_f2d
        LDR.W    R2,??DataTable11_13  ;; 0x9999999a
        LDR.W    R3,??DataTable15_20  ;; 0x3fe99999
        BL       __aeabi_dmul
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable15_21
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        LDR.W    R2,??DataTable11_13  ;; 0x9999999a
        LDR.W    R3,??DataTable15_22  ;; 0x3fc99999
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        LDR.W    R1,??DataTable15_23
        STR      R0,[R1, #+0]
//  629       // dis_error=error-last_error;
//  630        
//  631        last_dis_error=dis_error;
        LDR.W    R0,??DataTable15_21
        LDR.W    R1,??DataTable15_23
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+0]
//  632        
//  633        last_error=error;
        LDR.W    R0,??DataTable15_24
        LDR.W    R1,??DataTable15_19
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+0]
//  634 
//  635     steerpwm=(int16)(steer_kp*error+ steer_kd* dis_error);     //       
        LDR.W    R0,??DataTable15_25
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable15_19
        LDR      R0,[R0, #+0]
        BL       __aeabi_fmul
        MOVS     R4,R0
        LDR.W    R0,??DataTable15_26
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable15_23
        LDR      R0,[R0, #+0]
        BL       __aeabi_fmul
        MOVS     R1,R4
        BL       __aeabi_fadd
        BL       __aeabi_f2iz
        LDR.W    R1,??DataTable15_27
        STRH     R0,[R1, #+0]
//  636     
//  637 }
        POP      {R4-R6,PC}       ;; return
//  638 
//  639 
//  640 /*------------------------------------------------------------------------------
//  641                                   电机输出                                                    
//  642                           ( 角度+速度+方向=pwm输出)                                          
//  643 ------------------------------------------------------------------------------*/
//  644 
//  645 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  646 void CarControlOut()
//  647 {
CarControlOut:
        PUSH     {LR}
//  648  
//  649           RightSpeedPwm = anglePD- SpeedPID+steerpwm;
        LDR.W    R0,??DataTable14
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable15
        LDRH     R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable15_27
        LDRH     R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable15_28
        STRH     R0,[R1, #+0]
//  650           LeftSpeedPwm = anglePD- SpeedPID-steerpwm;
        LDR.W    R0,??DataTable14
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable15
        LDRH     R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable15_27
        LDRH     R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable15_29
        STRH     R0,[R1, #+0]
//  651           
//  652           
//  653           
//  654           if(RightSpeedPwm>2500)  RightSpeedPwm = 2500 ;
        LDR.W    R0,??DataTable15_28
        LDRSH    R0,[R0, #+0]
        MOVW     R1,#+2501
        CMP      R0,R1
        BLT.N    ??CarControlOut_0
        LDR.W    R0,??DataTable15_28
        MOVW     R1,#+2500
        STRH     R1,[R0, #+0]
//  655           if(RightSpeedPwm<-2500)  RightSpeedPwm = -2500 ;
??CarControlOut_0:
        LDR.W    R0,??DataTable15_28
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable15_30  ;; 0xfffff63c
        CMP      R0,R1
        BGE.N    ??CarControlOut_1
        LDR.W    R0,??DataTable15_28
        LDR.W    R1,??DataTable15_30  ;; 0xfffff63c
        STRH     R1,[R0, #+0]
//  656           if(LeftSpeedPwm>2500)   LeftSpeedPwm =2500;
??CarControlOut_1:
        LDR.W    R0,??DataTable15_29
        LDRSH    R0,[R0, #+0]
        MOVW     R1,#+2501
        CMP      R0,R1
        BLT.N    ??CarControlOut_2
        LDR.W    R0,??DataTable15_29
        MOVW     R1,#+2500
        STRH     R1,[R0, #+0]
//  657           if(LeftSpeedPwm<-2500)  LeftSpeedPwm = -2500;
??CarControlOut_2:
        LDR.W    R0,??DataTable15_29
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable15_30  ;; 0xfffff63c
        CMP      R0,R1
        BGE.N    ??CarControlOut_3
        LDR.W    R0,??DataTable15_29
        LDR.W    R1,??DataTable15_30  ;; 0xfffff63c
        STRH     R1,[R0, #+0]
//  658           
//  659           
//  660      
//  661           
//  662           if(g_nCarAngle > 15||g_nCarAngle<-15)
??CarControlOut_3:
        LDR.N    R0,??DataTable11
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable15_31  ;; 0x41700001
        BL       __aeabi_cfrcmple
        BLS.N    ??CarControlOut_4
        LDR.N    R0,??DataTable11
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable15_32  ;; 0xc1700000
        BL       __aeabi_cfcmple
        BCS.N    ??CarControlOut_5
//  663           {
//  664                   LeftSpeedPwm = 0;
??CarControlOut_4:
        LDR.W    R0,??DataTable15_29
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
//  665                   RightSpeedPwm = 0;
        LDR.W    R0,??DataTable15_28
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
//  666           }
//  667           
//  668  //左轮//
//  669           if( LeftSpeedPwm > 0 )
??CarControlOut_5:
        LDR.W    R0,??DataTable15_29
        LDRSH    R0,[R0, #+0]
        CMP      R0,#+1
        BLT.N    ??CarControlOut_6
//  670           {
//  671                    FTM0_C0V = LeftSpeedPwm;                   
        LDR.W    R0,??DataTable15_33  ;; 0x40038010
        LDR.W    R1,??DataTable15_29
        LDRSH    R1,[R1, #+0]
        STR      R1,[R0, #+0]
//  672                    FTM0_C1V = 0;
        LDR.W    R0,??DataTable15_34  ;; 0x40038018
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  673                    
//  674                     
//  675           }
//  676           if( LeftSpeedPwm <= 0)
??CarControlOut_6:
        LDR.W    R0,??DataTable15_29
        LDRSH    R0,[R0, #+0]
        CMP      R0,#+1
        BGE.N    ??CarControlOut_7
//  677           {
//  678                    FTM0_C0V = 0;
        LDR.W    R0,??DataTable15_33  ;; 0x40038010
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  679                    FTM0_C1V = -LeftSpeedPwm;
        LDR.W    R0,??DataTable15_34  ;; 0x40038018
        LDR.W    R1,??DataTable15_29
        LDRSH    R1,[R1, #+0]
        RSBS     R1,R1,#+0
        STR      R1,[R0, #+0]
//  680                  
//  681           }
//  682 //右轮//
//  683           if(  RightSpeedPwm > 0 )
??CarControlOut_7:
        LDR.W    R0,??DataTable15_28
        LDRSH    R0,[R0, #+0]
        CMP      R0,#+1
        BLT.N    ??CarControlOut_8
//  684           {
//  685                    FTM0_C3V = RightSpeedPwm;
        LDR.W    R0,??DataTable15_35  ;; 0x40038028
        LDR.W    R1,??DataTable15_28
        LDRSH    R1,[R1, #+0]
        STR      R1,[R0, #+0]
//  686                    FTM0_C2V = 0;
        LDR.W    R0,??DataTable15_36  ;; 0x40038020
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  687            }
//  688           if(  RightSpeedPwm <= 0)
??CarControlOut_8:
        LDR.W    R0,??DataTable15_28
        LDRSH    R0,[R0, #+0]
        CMP      R0,#+1
        BGE.N    ??CarControlOut_9
//  689           { 
//  690                   
//  691                    FTM0_C3V = 0;
        LDR.W    R0,??DataTable15_35  ;; 0x40038028
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  692                    FTM0_C2V = -RightSpeedPwm;
        LDR.W    R0,??DataTable15_36  ;; 0x40038020
        LDR.W    R1,??DataTable15_28
        LDRSH    R1,[R1, #+0]
        RSBS     R1,R1,#+0
        STR      R1,[R0, #+0]
//  693           }
//  694 }
??CarControlOut_9:
        POP      {PC}             ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10:
        DC32     0x4009c800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_1:
        DC32     GYRO_STATIC

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_2:
        DC32     AD_AngleData

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_3:
        DC32     acce

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_4:
        DC32     ACCE_STATIC

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_5:
        DC32     acce_offset

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_6:
        DC32     0x44480000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_7:
        DC32     acce_G

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_8:
        DC32     0x3e99999a

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_9:
        DC32     0xbe999999

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_10:
        DC32     0xbe99999a

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_11:
        DC32     0xb6774c14

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_12:
        DC32     0x404ca5d7

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_13:
        DC32     acce_angle

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_14:
        DC32     gyro

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_15:
        DC32     gyro_offset

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_16:
        DC32     0xcccccccd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_17:
        DC32     0x401acccc

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_18:
        DC32     w
//  695 
//  696 /*------------------------------------------------------------------------------
//  697                             串口部分              
//  698 ------------------------------------------------------------------------------*/
//  699 
//  700 /*发送像素点*/
//  701 
//  702 /*拉普*/
//  703 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  704 void SendImageData1(uint16 * ImageData) {
SendImageData1:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
//  705 
//  706     uint8 i;
//  707 
//  708         for(i=0; i<128; i++)
        MOVS     R0,#+0
        MOVS     R5,R0
??SendImageData1_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+128
        BCS.N    ??SendImageData1_1
//  709     {
//  710       //串口发送AD值，可用于线性CCD调试助手
//  711       if(Normalized_U8(* ImageData)==0xFF) 
        LDRH     R0,[R4, #+0]
        BL       Normalized_U8
        CMP      R0,#+255
        BNE.N    ??SendImageData1_2
//  712         uart_putchar (UART0,0xFE ); //遇到FF用FE替换即可
        MOVS     R1,#+254
        MOVS     R0,#+0
        BL       uart_putchar
        B.N      ??SendImageData1_3
//  713       else
//  714         uart_putchar (UART0,Normalized_U8(* ImageData) );
??SendImageData1_2:
        LDRH     R0,[R4, #+0]
        BL       Normalized_U8
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+0
        BL       uart_putchar
//  715       ImageData ++;
??SendImageData1_3:
        ADDS     R4,R4,#+2
//  716     }
        ADDS     R5,R5,#+1
        B.N      ??SendImageData1_0
//  717     
//  718     
//  719     uart_putchar (UART0, 0xFF);                //此字节用于线性CCD调试助手识别换行
??SendImageData1_1:
        MOVS     R1,#+255
        MOVS     R0,#+0
        BL       uart_putchar
//  720     
//  721 }
        POP      {R0,R4,R5,PC}    ;; return
//  722  
//  723 /*蓝宙*/
//  724 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  725 void SendHex(unsigned char hex) {
SendHex:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
//  726   unsigned char temp;
//  727   temp = hex >> 4;
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LSRS     R0,R4,#+4
        MOVS     R5,R0
//  728   if(temp < 10) {
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+10
        BCS.N    ??SendHex_0
//  729     uart_putchar(UART0,temp + '0');
        ADDS     R1,R5,#+48
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+0
        BL       uart_putchar
        B.N      ??SendHex_1
//  730   } else {
//  731     uart_putchar(UART0,temp - 10 + 'A');
??SendHex_0:
        ADDS     R1,R5,#+55
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+0
        BL       uart_putchar
//  732   }
//  733   temp = hex & 0x0F;
??SendHex_1:
        ANDS     R0,R4,#0xF
        MOVS     R5,R0
//  734   if(temp < 10) {
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+10
        BCS.N    ??SendHex_2
//  735     uart_putchar(UART0,temp + '0');
        ADDS     R1,R5,#+48
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+0
        BL       uart_putchar
        B.N      ??SendHex_3
//  736   } else {
//  737    uart_putchar(UART0,temp - 10 + 'A');
??SendHex_2:
        ADDS     R1,R5,#+55
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+0
        BL       uart_putchar
//  738   }
//  739 }
??SendHex_3:
        POP      {R0,R4,R5,PC}    ;; return
//  740 
//  741 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  742 void SendImageData2( uint16 * ImageData) {
SendImageData2:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
//  743 
//  744     unsigned char i;
//  745     unsigned char crc = 0;
        MOVS     R6,#+0
//  746 
//  747     /* Send Data */
//  748     uart_putchar(UART0,'*');
        MOVS     R1,#+42
        MOVS     R0,#+0
        BL       uart_putchar
//  749    // uart_putchar(UART0,'L');
//  750    // uart_putchar(UART0,'D');
//  751 
//  752     SendHex(0);
        MOVS     R0,#+0
        BL       SendHex
//  753     SendHex(0);
        MOVS     R0,#+0
        BL       SendHex
//  754     SendHex(0);
        MOVS     R0,#+0
        BL       SendHex
//  755     SendHex(0);
        MOVS     R0,#+0
        BL       SendHex
//  756 
//  757     for(i=0; i<128; i++) {
        MOVS     R0,#+0
        MOVS     R5,R0
??SendImageData2_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+128
        BCS.N    ??SendImageData2_1
//  758       SendHex(Normalized_U8(*ImageData++));
        LDRH     R0,[R4, #+0]
        BL       Normalized_U8
        ADDS     R4,R4,#+2
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       SendHex
//  759     }
        ADDS     R5,R5,#+1
        B.N      ??SendImageData2_0
//  760 
//  761     SendHex(crc);
??SendImageData2_1:
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       SendHex
//  762     uart_putchar(UART0,'#');
        MOVS     R1,#+35
        MOVS     R0,#+0
        BL       uart_putchar
//  763 }
        POP      {R4-R6,PC}       ;; return
//  764 
//  765 /*超级示波器*/
//  766 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  767 float OutData[4] = { 0 };
OutData:
        DS8 16
//  768 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  769 unsigned short CRC_CHECK(unsigned char *Buf, unsigned char CRC_CNT)
//  770 {
CRC_CHECK:
        PUSH     {R4,R5}
        MOVS     R2,R0
//  771     unsigned short CRC_Temp;
//  772     unsigned char i,j;
//  773     CRC_Temp = 0xffff;
        MOVW     R5,#+65535
        MOVS     R0,R5
//  774 
//  775     for (i=0;i<CRC_CNT; i++){      
        MOVS     R5,#+0
        MOVS     R3,R5
??CRC_CHECK_0:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R3,R1
        BCS.N    ??CRC_CHECK_1
//  776         CRC_Temp ^= Buf[i];
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LDRB     R5,[R3, R2]
        EORS     R0,R5,R0
//  777         for (j=0;j<8;j++) {
        MOVS     R5,#+0
        MOVS     R4,R5
??CRC_CHECK_2:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+8
        BCS.N    ??CRC_CHECK_3
//  778             if (CRC_Temp & 0x01)
        LSLS     R5,R0,#+31
        BPL.N    ??CRC_CHECK_4
//  779                 CRC_Temp = (CRC_Temp >>1 ) ^ 0xa001;
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LSRS     R0,R0,#+1
        EOR      R0,R0,#0xA000
        EORS     R0,R0,#0x1
        B.N      ??CRC_CHECK_5
//  780             else
//  781                 CRC_Temp = CRC_Temp >> 1;
??CRC_CHECK_4:
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LSRS     R0,R0,#+1
//  782         }
??CRC_CHECK_5:
        ADDS     R4,R4,#+1
        B.N      ??CRC_CHECK_2
//  783     }
??CRC_CHECK_3:
        ADDS     R3,R3,#+1
        B.N      ??CRC_CHECK_0
//  784     return(CRC_Temp);
??CRC_CHECK_1:
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        POP      {R4,R5}
        BX       LR               ;; return
//  785 }
//  786 

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  787 uint8 j=0;
j:
        DS8 1

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  788 void OutPut_Data(void)
//  789 {
OutPut_Data:
        PUSH     {R4,R5,LR}
        SUB      SP,SP,#+44
//  790   int temp[4] = {0};
        ADD      R0,SP,#+28
        MOVS     R1,#+16
        BL       __aeabi_memclr4
//  791   unsigned int temp1[4] = {0};
        ADD      R0,SP,#+12
        MOVS     R1,#+16
        BL       __aeabi_memclr4
//  792   unsigned char databuf[10] = {0};
        ADD      R0,SP,#+0
        MOVS     R1,#+0
        MOVS     R2,#+0
        MOVS     R3,#+0
        STM      R0!,{R1-R3}
        SUBS     R0,R0,#+12
//  793   unsigned char i;
//  794   unsigned short CRC16 = 0;
        MOVS     R5,#+0
//  795   for(i=0;i<4;i++)
        MOVS     R0,#+0
        MOVS     R4,R0
??OutPut_Data_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+4
        BCS.N    ??OutPut_Data_1
//  796    {
//  797     
//  798     temp[i]  = (int)OutData[i];
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R0,??DataTable15_37
        LDR      R0,[R0, R4, LSL #+2]
        BL       __aeabi_f2iz
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADD      R1,SP,#+28
        STR      R0,[R1, R4, LSL #+2]
//  799     temp1[i] = (unsigned int)temp[i];
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADD      R0,SP,#+12
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADD      R1,SP,#+28
        LDR      R1,[R1, R4, LSL #+2]
        STR      R1,[R0, R4, LSL #+2]
//  800     
//  801    }
        ADDS     R4,R4,#+1
        B.N      ??OutPut_Data_0
//  802    
//  803   for(i=0;i<4;i++) 
??OutPut_Data_1:
        MOVS     R0,#+0
        MOVS     R4,R0
??OutPut_Data_2:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+4
        BCS.N    ??OutPut_Data_3
//  804   {
//  805     databuf[i*2]   = (unsigned char)(temp1[i]%256);
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADD      R0,SP,#+12
        LDR      R0,[R0, R4, LSL #+2]
        MOV      R1,#+256
        UDIV     R2,R0,R1
        MLS      R2,R2,R1,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADD      R0,SP,#+0
        STRB     R2,[R0, R4, LSL #+1]
//  806     databuf[i*2+1] = (unsigned char)(temp1[i]/256);
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADD      R0,SP,#+12
        LDR      R0,[R0, R4, LSL #+2]
        LSRS     R0,R0,#+8
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADD      R1,SP,#+0
        ADDS     R1,R1,R4, LSL #+1
        STRB     R0,[R1, #+1]
//  807   }
        ADDS     R4,R4,#+1
        B.N      ??OutPut_Data_2
//  808   
//  809   CRC16 = CRC_CHECK(databuf,8);
??OutPut_Data_3:
        MOVS     R1,#+8
        ADD      R0,SP,#+0
        BL       CRC_CHECK
        MOVS     R5,R0
//  810   databuf[8] = CRC16%256;
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        MOV      R0,#+256
        SDIV     R1,R5,R0
        MLS      R1,R1,R0,R5
        STRB     R1,[SP, #+8]
//  811   databuf[9] = CRC16/256;
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        MOV      R0,#+256
        SDIV     R0,R5,R0
        STRB     R0,[SP, #+9]
//  812   
//  813   
//  814   UART_D_REG(UARTx[UART0])= databuf[j];
        LDR.W    R0,??DataTable15_38
        LDRB     R0,[R0, #+0]
        ADD      R1,SP,#+0
        LDRB     R0,[R0, R1]
        LDR.W    R1,??DataTable15_39
        LDR      R1,[R1, #+0]
        STRB     R0,[R1, #+7]
//  815   j++;
        LDR.N    R0,??DataTable15_38
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable15_38
        STRB     R0,[R1, #+0]
//  816   if(j==10) j=0;
        LDR.N    R0,??DataTable15_38
        LDRB     R0,[R0, #+0]
        CMP      R0,#+10
        BNE.N    ??OutPut_Data_4
        LDR.N    R0,??DataTable15_38
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  817   
//  818   //for(i=0;i<10;i++)
//  819    // uart_putchar(UART0,databuf[i]);
//  820   
//  821 }
??OutPut_Data_4:
        ADD      SP,SP,#+44
        POP      {R4,R5,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11:
        DC32     g_nCarAngle

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_1:
        DC32     0xd2f1a9fc

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_2:
        DC32     0x3f50624d

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_3:
        DC32     0xb3d07c85

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_4:
        DC32     0x3feff559

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_5:
        DC32     0x5f06f694

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_6:
        DC32     0x3f554c98

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_7:
        DC32     angle_kp

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_8:
        DC32     angle_kd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_9:
        DC32     g_nRightCount

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_10:
        DC32     0x40039004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_11:
        DC32     g_nLeftCount

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_12:
        DC32     0x400b8004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_13:
        DC32     0x9999999a

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_14:
        DC32     0x3f999999

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_15:
        DC32     LeftRealSpeed
//  822 
//  823 /*上位机*/

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  824 uint8 put_cnt=0;
put_cnt:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  825 uint8 put_date[11]={0};
put_date:
        DS8 12

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  826 void PutDate(){
PutDate:
        PUSH     {LR}
//  827   
//  828    
//  829   
//  830    
//  831     put_date[0]=255;
        LDR.N    R0,??DataTable15_40
        MOVS     R1,#+255
        STRB     R1,[R0, #+0]
//  832     put_date[1]=(uint8)w*10;
        LDR.N    R0,??DataTable15_41
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2iz
        MOVS     R1,#+10
        MULS     R0,R1,R0
        LDR.N    R1,??DataTable15_40
        STRB     R0,[R1, #+1]
//  833     put_date[2]=(uint16)acce& 0x00ff;
        LDR.N    R0,??DataTable15_42
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2iz
        LDR.N    R1,??DataTable15_40
        STRB     R0,[R1, #+2]
//  834     put_date[3]=(uint16)acce>>8;
        LDR.N    R0,??DataTable15_42
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2iz
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LSRS     R0,R0,#+8
        LDR.N    R1,??DataTable15_40
        STRB     R0,[R1, #+3]
//  835     put_date[4]=(uint8)GYRO_STATIC/10;
        LDR.N    R0,??DataTable15_43
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2iz
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R1,#+10
        SDIV     R0,R0,R1
        LDR.N    R1,??DataTable15_40
        STRB     R0,[R1, #+4]
//  836     put_date[5]=latch/10;
        LDR.N    R0,??DataTable15_3
        LDRH     R0,[R0, #+0]
        MOVS     R1,#+10
        SDIV     R0,R0,R1
        LDR.N    R1,??DataTable15_40
        STRB     R0,[R1, #+5]
//  837     put_date[6]=(uint8)p_distance;
        LDR.N    R0,??DataTable15_9
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2iz
        LDR.N    R1,??DataTable15_40
        STRB     R0,[R1, #+6]
//  838     put_date[7]=Pixel[63]/10;
        LDR.N    R0,??DataTable14_2
        LDRH     R0,[R0, #+126]
        MOVS     R1,#+10
        SDIV     R0,R0,R1
        LDR.N    R1,??DataTable15_40
        STRB     R0,[R1, #+7]
//  839     put_date[8]=Left_cnt;
        LDR.N    R0,??DataTable15_40
        LDR.N    R1,??DataTable15_5
        LDRB     R1,[R1, #+0]
        STRB     R1,[R0, #+8]
//  840     put_date[9]=Right_cnt;
        LDR.N    R0,??DataTable15_40
        LDR.N    R1,??DataTable15_6
        LDRB     R1,[R1, #+0]
        STRB     R1,[R0, #+9]
//  841     put_date[10]=254;
        LDR.N    R0,??DataTable15_40
        MOVS     R1,#+254
        STRB     R1,[R0, #+10]
//  842     
//  843     
//  844 //    put_date[0]=255;
//  845 //    put_date[1]=1;
//  846 //    put_date[2]=2;
//  847 //    put_date[3]=2;
//  848 //    put_date[4]=3;
//  849 //    put_date[5]=5;
//  850 //    put_date[6]=6;
//  851 //    put_date[7]=10;
//  852 //    put_date[8]=0;
//  853 //    put_date[9]=7;
//  854 //    put_date[10]=254;
//  855     
//  856     
//  857     
//  858    UART_D_REG(UARTx[UART0])= put_date[put_cnt];
        LDR.N    R0,??DataTable15_44
        LDRB     R0,[R0, #+0]
        LDR.N    R1,??DataTable15_40
        LDRB     R0,[R0, R1]
        LDR.N    R1,??DataTable15_39
        LDR      R1,[R1, #+0]
        STRB     R0,[R1, #+7]
//  859    //    uart_putchar(UART0,123);
//  860      put_cnt++;
        LDR.N    R0,??DataTable15_44
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable15_44
        STRB     R0,[R1, #+0]
//  861     
//  862      if(put_cnt==11) put_cnt=0;
        LDR.N    R0,??DataTable15_44
        LDRB     R0,[R0, #+0]
        CMP      R0,#+11
        BNE.N    ??PutDate_0
        LDR.N    R0,??DataTable15_44
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  863     
//  864     
//  865     
//  866 //    uart_putchar(UART0,w);
//  867 //    uart_putchar(UART0,acce);
//  868 //    uart_putchar(UART0,GYRO_STATIC);
//  869 //    uart_putchar(UART0,latch);
//  870 //    uart_putchar(UART0,p_distance);
//  871 //    uart_putchar(UART0,Pixel[63]);
//  872 //    uart_putchar(UART0,Left_cnt);
//  873 //    uart_putchar(UART0,Right_cnt);
//  874 
//  875   //uart_putchar(UART0,'#');
//  876   
//  877 }
??PutDate_0:
        POP      {PC}             ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12:
        DC32     RightRealSpeed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_1:
        DC32     RealSpeed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_2:
        DC32     Speed_set

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_3:
        DC32     Speed_error

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_4:
        DC32     0x40a00001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_5:
        DC32     0x40a00000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_6:
        DC32     0xc0a00000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_7:
        DC32     speed_kp

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_8:
        DC32     motor_P

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  878 uint8 send_date[9]={0};
send_date:
        DS8 12

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  879 uint8 send_cnt=0;
send_cnt:
        DS8 1

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  880 void SendDate(){
SendDate:
        PUSH     {LR}
//  881                
//  882        speed_kp =send_date[1];
        LDR.N    R0,??DataTable15_45
        LDRB     R0,[R0, #+1]
        BL       __aeabi_ui2f
        LDR.N    R1,??DataTable15_46
        STR      R0,[R1, #+0]
//  883                    
//  884        speed_ki = send_date[2]/10.0;
        LDR.N    R0,??DataTable15_45
        LDRB     R0,[R0, #+2]
        BL       __aeabi_ui2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable15_47  ;; 0x40240000
        BL       __aeabi_ddiv
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable15_48
        STR      R0,[R1, #+0]
//  885        
//  886        
//  887        steer_kp = (send_date[4]*256+send_date[3])/10.0; 
        LDR.N    R0,??DataTable15_45
        LDRB     R0,[R0, #+4]
        MOV      R1,#+256
        LDR.N    R2,??DataTable15_45
        LDRB     R2,[R2, #+3]
        MLA      R0,R1,R0,R2
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable15_47  ;; 0x40240000
        BL       __aeabi_ddiv
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable15_25
        STR      R0,[R1, #+0]
//  888        steer_kd = (send_date[5]*256+send_date[6])/10.0;
        LDR.N    R0,??DataTable15_45
        LDRB     R0,[R0, #+5]
        MOV      R1,#+256
        LDR.N    R2,??DataTable15_45
        LDRB     R2,[R2, #+6]
        MLA      R0,R1,R0,R2
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable15_47  ;; 0x40240000
        BL       __aeabi_ddiv
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable15_26
        STR      R0,[R1, #+0]
//  889                            
//  890        
//  891        Speed_set =  send_date[7];
        LDR.N    R0,??DataTable15_45
        LDRB     R0,[R0, #+7]
        LDR.N    R1,??DataTable15_49
        STRB     R0,[R1, #+0]
//  892        
//  893      //  i=0;
//  894        
//  895 
//  896      //  stop_flag =  send_date[7];
//  897 
//  898 
//  899 }
        POP      {PC}             ;; return
//  900 
//  901 
//  902 /*------------------------------------------------------------------------------
//  903                             主函数              
//  904 ------------------------------------------------------------------------------*/
//  905 
//  906 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  907   void  main(void)
//  908 {
main:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
//  909   volatile uint8 i;
//  910 
//  911   uint16 *pixel_pt;
//  912   DisableInterrupts;                             //禁止总中断
        CPSID i         
//  913    
//  914   pixel_pt = Pixel;
        LDR.N    R0,??DataTable14_2
        MOVS     R4,R0
//  915   for(i=0; i<128; i++) {
        MOVS     R0,#+0
        STRB     R0,[SP, #+0]
??main_0:
        LDRB     R0,[SP, #+0]
        CMP      R0,#+128
        BCS.N    ??main_1
//  916     *pixel_pt++ = 0;
        MOVS     R0,#+0
        STRH     R0,[R4, #+0]
        ADDS     R4,R4,#+2
//  917   }
        LDRB     R0,[SP, #+0]
        ADDS     R0,R0,#+1
        STRB     R0,[SP, #+0]
        B.N      ??main_0
//  918   
//  919   CCD_init() ;
??main_1:
        BL       CCD_init
//  920   adc_init(ADC0, AD14) ;
        MOVS     R1,#+14
        MOVS     R0,#+0
        BL       adc_init
//  921   sensor_init();
        BL       sensor_init
//  922   
//  923   FTM_PWM_init( );
        BL       FTM_PWM_init
//  924   FTM_QUAD_init( );
        BL       FTM_QUAD_init
//  925   
//  926  // GIPO_init();
//  927   
//  928   LCD_Init();
        BL       LCD_Init
//  929   
//  930   pit_init(PIT0, 100000);                          //初始化PIT0，定时时间为： 1ms
        LDR.N    R1,??DataTable15_50  ;; 0x186a0
        MOVS     R0,#+0
        BL       pit_init
//  931   delayms(1000);
        MOV      R0,#+1000
        BL       delayms
//  932   
//  933   uart_init (UART0 ,9600);                      //初始化UART0，输出脚PTA15，输入脚PTA14，串口频率 9600
        MOV      R1,#+9600
        MOVS     R0,#+0
        BL       uart_init
//  934  // uart_irq_EN(UART0);
//  935   
//  936   //adc_start(ADC0, AD14, ADC_10bit );
//  937   V=ad_once(ADC0, AD14, ADC_10bit)*9.9/1024.0;
        MOVS     R2,#+2
        MOVS     R1,#+14
        MOVS     R0,#+0
        BL       ad_once
        BL       __aeabi_ui2d
        LDR.N    R2,??DataTable15_51  ;; 0xcccccccd
        LDR.N    R3,??DataTable15_52  ;; 0x4023cccc
        BL       __aeabi_dmul
        MOVS     R2,#+0
        LDR.N    R3,??DataTable15_53  ;; 0x40900000
        BL       __aeabi_ddiv
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable15_54
        STR      R0,[R1, #+0]
//  938 
//  939   
//  940   
//  941   pre_show();
        BL       pre_show
//  942   
//  943   init_gyro();
        BL       init_gyro
//  944   
//  945   EnableInterrupts;			              //开总中断
        CPSIE i         
//  946   while(1){   
//  947     if(SpeedControlCount==99)
??main_2:
        LDR.N    R0,??DataTable15_55
        LDRB     R0,[R0, #+0]
        CMP      R0,#+99
        BNE.N    ??main_2
//  948         redraw();             //4.08ms
        BL       redraw
        B.N      ??main_2
//  949     
//  950 //    if(TimerCnt20ms==5)
//  951 //      KeyScan();                 //按键扫描
//  952     
//  953     //if(SpeedControlCount==50)
//  954 //    if((UART_S1_REG(UARTx[UART0]) & UART_S1_TDRE_MASK))
//  955 //      PutDate();
//  956 //    
//  957 // //   if((UART_S1_REG(UARTx[UART0]) & UART_S1_TDRE_MASK)){
//  958 ////    OutData[0] = acce_angle*10;
//  959 ////    OutData[1] = (g_nCarAngle*10);
//  960 ////    OutData[2] = w*10;
//  961 ////    OutPut_Data();}
//  962 //    
//  963 //      if(UART_S1_REG(UARTx[UART0]) & UART_S1_RDRF_MASK)         //查询是否接受到数据
//  964 //      
//  965 //      {send_date[send_cnt]=UART_D_REG(UARTx[UART0]);
//  966 //       send_cnt++;
//  967 //       if(send_cnt==8) send_cnt=0;
//  968 //      }
//  969 //       
//  970 //      
//  971 //      if(send_date[0]==255&&send_date[8]==253)
//  972 //         SendDate();
//  973 
//  974   }
//  975   
//  976   
//  977  
//  978 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14:
        DC32     anglePD

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_1:
        DC32     line_latch

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_2:
        DC32     Pixel
//  979 
//  980 
//  981 
//  982 /*------------------------------------------------------------------------------
//  983                                       中断                                      
//  984 ------------------------------------------------------------------------------*/
//  985 
//  986 
//  987 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  988 void PIT0_isr( )
//  989 {
PIT0_isr:
        PUSH     {R7,LR}
//  990      
//  991      //TEST_TIME0(1);
//  992      GetADValue();                 //200采样两路角度传感器信 
        BL       GetADValue
//  993      //TEST_TIME0(0);
//  994      GetAngle();                     
        BL       GetAngle
//  995      
//  996      CarAngleAdjust();      //60
        BL       CarAngleAdjust
//  997                                  
//  998       TimerCnt20ms++;  
        LDR.N    R0,??DataTable15_56
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable15_56
        STRB     R0,[R1, #+0]
//  999     if(TimerCnt20ms >=10)
        LDR.N    R0,??DataTable15_56
        LDRB     R0,[R0, #+0]
        CMP      R0,#+10
        BCC.N    ??PIT0_isr_0
// 1000     { //TEST_TIME0(1);
// 1001       TimerCnt20ms=0;
        LDR.N    R0,??DataTable15_56
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
// 1002       ImageCapture(Pixel);   // 280
        LDR.N    R0,??DataTable15_57
        BL       ImageCapture
// 1003       
// 1004       //latch=PixelAverage(128, Pixel);
// 1005       
// 1006       get_latch();
        BL       get_latch
// 1007       
// 1008       pixel_binarize(Pixel);
        LDR.N    R0,??DataTable15_57
        BL       pixel_binarize
// 1009       
// 1010       edge_error();               //40
        BL       edge_error
// 1011       CarDirectionAdjust();
        BL       CarDirectionAdjust
// 1012       //TEST_TIME0(0);
// 1013         
// 1014     }
// 1015       SpeedControlCount++;
??PIT0_isr_0:
        LDR.N    R0,??DataTable15_55
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable15_55
        STRB     R0,[R1, #+0]
// 1016 
// 1017     if(SpeedControlCount >= 100){
        LDR.N    R0,??DataTable15_55
        LDRB     R0,[R0, #+0]
        CMP      R0,#+100
        BCC.N    ??PIT0_isr_1
// 1018 
// 1019       SpeedControlCount = 0;
        LDR.N    R0,??DataTable15_55
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
// 1020       
// 1021       SpeedControl();               //12
        BL       SpeedControl
// 1022 
// 1023     }
// 1024 
// 1025      
// 1026      CarControlOut();               //12
??PIT0_isr_1:
        BL       CarControlOut
// 1027                                    //590
// 1028     
// 1029      PIT_Flag_Clear(PIT0);       //清中断标志位
        LDR.N    R0,??DataTable15_58  ;; 0x4003710c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable15_58  ;; 0x4003710c
        STR      R0,[R1, #+0]
// 1030 
// 1031      // TEST_TIME0(0);
// 1032     
// 1033     
// 1034     
// 1035     
// 1036       /* Send data to CCDView every 100ms */
// 1037         //TEST_TIME0(1);
// 1038         //SendImageData2(Pixel);
// 1039         //TEST_TIME0(0);
// 1040   
// 1041   
// 1042 //                   OutData[1] = d_steerpwm*20;
// 1043 //                   OutData[2] = percent[0]*10;
// 1044 //                   OutData[0] = (AD_DirectionData[0]*10);
// 1045 //                   OutData[1] = (AD_DirectionData[2]*10);   
// 1046 //                   OutData[0] = angle*10;
// 1047 //                   OutData[1] = (g_nCarAngle*10);
// 1048 //                   OutData[0] = RightSpeedPwm;
// 1049 //                   OutData[1] = LeftSpeedPwm; 
// 1050 //                   OutData[2] = p_distance*50;
// 1051 //                   OutData[3] =angle_dot*10;
// 1052 //                   OutData[3] = ((int)anglePD)/5;
// 1053 //                   OutData[2] = w*10;
// 1054 //                   OutData[2] = 194*10;
// 1055 //                   OutData[3] = ( LeftSpeed_filter + RightSpeed_filter )*5;
// 1056 //                   OutData[0] = LeftSpeed_filter*10;
// 1057 //                   OutData[1] = RightSpeed_filter*10;
// 1058 //                   OutData[2] = ((int)anglePD);
// 1059 //                   OutData[2] = speedset*10;;
// 1060 //                   OutData[3] = ((int)SpeedPIDout);
// 1061 //                   OutData[3] =  steerpwm;
// 1062 //                   OutData[1] = dis_error*10;
// 1063 //                   OutData[3] = ( LeftSpeed_filter + RightSpeed_filter )*5;
// 1064 //                  OutData[1] = ((int)anglePD);
// 1065 //                   OutData[0] = ((int)SpeedPIDout);
// 1066 //                   OutPut_Data();  
// 1067         
// 1068     
// 1069      
// 1070    
// 1071 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15:
        DC32     SpeedPID

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_1:
        DC32     white_latch

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_2:
        DC32     black_latch

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_3:
        DC32     latch

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_4:
        DC32     CCD_value

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_5:
        DC32     Left_cnt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_6:
        DC32     Right_cnt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_7:
        DC32     white_center

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_8:
        DC32     WHITE_CENTER

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_9:
        DC32     p_distance

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_10:
        DC32     ccd_scan_num

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_11:
        DC32     ccd_scan_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_12:
        DC32     Left_cnt1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_13:
        DC32     Left_cnt2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_14:
        DC32     Right_cnt1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_15:
        DC32     Right_cnt2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_16:
        DC32     last_Left_cnt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_17:
        DC32     last_Right_cnt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_18:
        DC32     Distance

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_19:
        DC32     error

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_20:
        DC32     0x3fe99999

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_21:
        DC32     last_dis_error

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_22:
        DC32     0x3fc99999

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_23:
        DC32     dis_error

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_24:
        DC32     last_error

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_25:
        DC32     steer_kp

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_26:
        DC32     steer_kd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_27:
        DC32     steerpwm

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_28:
        DC32     RightSpeedPwm

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_29:
        DC32     LeftSpeedPwm

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_30:
        DC32     0xfffff63c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_31:
        DC32     0x41700001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_32:
        DC32     0xc1700000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_33:
        DC32     0x40038010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_34:
        DC32     0x40038018

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_35:
        DC32     0x40038028

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_36:
        DC32     0x40038020

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_37:
        DC32     OutData

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_38:
        DC32     j

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_39:
        DC32     UARTx

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_40:
        DC32     put_date

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_41:
        DC32     w

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_42:
        DC32     acce

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_43:
        DC32     GYRO_STATIC

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_44:
        DC32     put_cnt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_45:
        DC32     send_date

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_46:
        DC32     speed_kp

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_47:
        DC32     0x40240000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_48:
        DC32     speed_ki

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_49:
        DC32     Speed_set

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_50:
        DC32     0x186a0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_51:
        DC32     0xcccccccd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_52:
        DC32     0x4023cccc

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_53:
        DC32     0x40900000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_54:
        DC32     V

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_55:
        DC32     SpeedControlCount

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_56:
        DC32     TimerCnt20ms

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_57:
        DC32     Pixel

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_58:
        DC32     0x4003710c

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC32 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC32 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        END
// 1072 
// 1073 
// 
//   965 bytes in section .bss
//    43 bytes in section .data
//    44 bytes in section .rodata
// 4 342 bytes in section .text
// 
// 4 342 bytes of CODE  memory
//    44 bytes of CONST memory
// 1 008 bytes of DATA  memory
//
//Errors: none
//Warnings: none
