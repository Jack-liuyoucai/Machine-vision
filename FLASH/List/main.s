///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.1.7305/W32 for ARM       14/Jul/2014  22:11:55
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        F:\刘友才 (H)\飞思卡尔\liuyoucai\7.12
//        晚六点；匀速\src\Sources\App\main.c
//    Command line =  
//        "F:\刘友才 (H)\飞思卡尔\liuyoucai\7.12
//        晚六点；匀速\src\Sources\App\main.c" -D IAR -D TWR_K60N512 -D DEBUG
//        -lCN "F:\刘友才 (H)\飞思卡尔\liuyoucai\7.12 晚六点；匀速\FLASH\List\"
//        -lB "F:\刘友才 (H)\飞思卡尔\liuyoucai\7.12 晚六点；匀速\FLASH\List\"
//        -o "F:\刘友才 (H)\飞思卡尔\liuyoucai\7.12 晚六点；匀速\FLASH\Obj\"
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4 -e --fpu=None --dlib_config
//        D:\IAR\arm\INC\c\DLib_Config_Normal.h -I "F:\刘友才
//        (H)\飞思卡尔\liuyoucai\7.12 晚六点；匀速\src\Sources\Cpu\" -I
//        "F:\刘友才 (H)\飞思卡尔\liuyoucai\7.12 晚六点；匀速\src\Sources\App\"
//        -I "F:\刘友才 (H)\飞思卡尔\liuyoucai\7.12
//        晚六点；匀速\src\Sources\Drivers\adc\" -I "F:\刘友才
//        (H)\飞思卡尔\liuyoucai\7.12 晚六点；匀速\src\Sources\Drivers\delay\"
//        -I "F:\刘友才 (H)\飞思卡尔\liuyoucai\7.12
//        晚六点；匀速\src\Sources\Drivers\FTM\" -I "F:\刘友才
//        (H)\飞思卡尔\liuyoucai\7.12 晚六点；匀速\src\Sources\Drivers\gpio\"
//        -I "F:\刘友才 (H)\飞思卡尔\liuyoucai\7.12
//        晚六点；匀速\src\Sources\Drivers\lptmr\" -I "F:\刘友才
//        (H)\飞思卡尔\liuyoucai\7.12 晚六点；匀速\src\Sources\Drivers\mcg\" -I
//        "F:\刘友才 (H)\飞思卡尔\liuyoucai\7.12
//        晚六点；匀速\src\Sources\Drivers\PIT\" -I "F:\刘友才
//        (H)\飞思卡尔\liuyoucai\7.12 晚六点；匀速\src\Sources\Drivers\uart\"
//        -I "F:\刘友才 (H)\飞思卡尔\liuyoucai\7.12
//        晚六点；匀速\src\Sources\Drivers\oled\" -I "F:\刘友才
//        (H)\飞思卡尔\liuyoucai\7.12 晚六点；匀速\src\Sources\Drivers\spi\"
//        -On --use_c++_inline
//    List file    =  
//        F:\刘友才 (H)\飞思卡尔\liuyoucai\7.12 晚六点；匀速\FLASH\List\main.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN FTM_PWM_init
        EXTERN FTM_QUAD_init
        EXTERN GPIOx
        EXTERN KeyScan
        EXTERN LCD_Init
        EXTERN LCD_PrintImage
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
        EXTERN __aeabi_i2f
        EXTERN __aeabi_memclr4
        EXTERN __aeabi_ui2d
        EXTERN __aeabi_ui2f
        EXTERN ad_ave
        EXTERN adc_init
        EXTERN adc_start
        EXTERN adc_stop
        EXTERN asin
        EXTERN delayms
        EXTERN enable_irq
        EXTERN gpio_init
        EXTERN gpio_set
        EXTERN pre_show
        EXTERN redraw
        EXTERN sqrt
        EXTERN uart_putchar

        PUBLIC ACCE_STATIC
        PUBLIC AD_AngleData
        PUBLIC AcceData
        PUBLIC Angle
        PUBLIC BASE_OT
        PUBLIC CRC_CHECK
        PUBLIC CarAngleAdjust
        PUBLIC CarControlOut
        PUBLIC Control
        PUBLIC Deal_BlackEdge
        PUBLIC Delay_MS
        PUBLIC DirectionControlCount
        PUBLIC EXIT_Init
        PUBLIC FantingOut
        PUBLIC GIPO_init
        PUBLIC GYRO_STATIC
        PUBLIC GetADValue
        PUBLIC GetAngle
        PUBLIC GetPower
        PUBLIC ImageReady
        PUBLIC Initial
        PUBLIC IntegrationTime
        PUBLIC Lastgyro
        PUBLIC LeftRealSpeed
        PUBLIC LeftSpeedPwm
        PUBLIC LineCount
        PUBLIC MIN_INT
        PUBLIC OT
        PUBLIC OddEvenStatus
        PUBLIC OutData
        PUBLIC OutPut_Data
        PUBLIC PTB_isr
        PUBLIC PutDate
        PUBLIC RealSpeed
        PUBLIC Rgr
        PUBLIC RightRealSpeed
        PUBLIC RightSpeedPwm
        PUBLIC Row_state
        PUBLIC SCI0_send_mesage
        PUBLIC S_left
        PUBLIC S_right
        PUBLIC S_straight
        PUBLIC Search_BlackEdge
        PUBLIC Search_WhiteBase
        PUBLIC SendDate
        PUBLIC Speed
        PUBLIC SpeedControl
        PUBLIC SpeedControlCount
        PUBLIC SpeedControlOut
        PUBLIC SpeedPID
        PUBLIC SpeedPIDold
        PUBLIC SpeedPIDout
        PUBLIC Speed_error
        PUBLIC Speed_limit
        PUBLIC Speed_limit_record
        PUBLIC Speed_set
        PUBLIC Time
        PUBLIC TimerCnt20ms
        PUBLIC UART0_Init
        PUBLIC V
        PUBLIC VideoImage1
        PUBLIC VideoImage2
        PUBLIC VideoImageLine
        PUBLIC Videoclo_Flag
        PUBLIC WHITE_BLACK_OT
        PUBLIC abs
        PUBLIC acce
        PUBLIC acce_G
        PUBLIC acce_angle
        PUBLIC acce_offset
        PUBLIC acce_static
        PUBLIC across_smile
        PUBLIC angle
        PUBLIC anglePD
        PUBLIC anglePDout
        PUBLIC angle_error
        PUBLIC angle_kd
        PUBLIC angle_kd_across
        PUBLIC angle_kd_set
        PUBLIC angle_kp
        PUBLIC angle_kp_across
        PUBLIC angle_kp_set
        PUBLIC angleout
        PUBLIC barrier
        PUBLIC barrier_l
        PUBLIC barrier_r
        PUBLIC begin
        PUBLIC begin2
        PUBLIC big
        PUBLIC big1
        PUBLIC bm3
        PUBLIC bottom_whitebase
        PUBLIC car_set_start
        PUBLIC car_test_run
        PUBLIC center_average
        PUBLIC center_average_a
        PUBLIC center_average_b
        PUBLIC center_linear_average
        PUBLIC center_lost_hang
        PUBLIC center_white
        PUBLIC check_start_stop_line
        PUBLIC close
        PUBLIC control_top_whiteline
        PUBLIC count_s
        PUBLIC counter
        PUBLIC current_deal_line
        PUBLIC da
        PUBLIC danger_count
        PUBLIC danger_flag
        PUBLIC deal_r_flag
        PUBLIC deal_start_line
        PUBLIC direction
        PUBLIC disable_key_flag
        PUBLIC disable_lcd_flag
        PUBLIC error_servo_ref_d
        PUBLIC error_servo_ref_p
        PUBLIC f_abs16
        PUBLIC f_absf
        PUBLIC fanting
        PUBLIC feng
        PUBLIC find_whitebase_flag
        PUBLIC ft
        PUBLIC ft1
        PUBLIC fuxiao
        PUBLIC g_nCarAngle
        PUBLIC g_nCarSpeedCount
        PUBLIC g_nLeftCount
        PUBLIC g_nRightCount
        PUBLIC get_line_information
        PUBLIC get_linear_factor
        PUBLIC gyro
        PUBLIC gyroIntegral
        PUBLIC gyro_angle
        PUBLIC gyro_offset
        PUBLIC hang_search_start
        PUBLIC huanjie
        PUBLIC init_gyro
        PUBLIC j
        PUBLIC jianshu
        PUBLIC jump_stop
        PUBLIC last_acce_angle
        PUBLIC last_anglePD
        PUBLIC lcd_debug
        PUBLIC lcd_ref_d
        PUBLIC lcd_ref_d1
        PUBLIC lcd_ref_d2
        PUBLIC lcd_ref_p
        PUBLIC lcd_ref_p1
        PUBLIC lcd_ref_p1_record
        PUBLIC lcd_ref_p2
        PUBLIC lcd_ref_p2_record
        PUBLIC left_black
        PUBLIC left_top_whiteline
        PUBLIC left_whitebase_searchstart
        PUBLIC linear_factor
        PUBLIC liu
        PUBLIC main
        PUBLIC motor_I
        PUBLIC motor_P
        PUBLIC pre_Lastgyro
        PUBLIC put_cnt
        PUBLIC put_date
        PUBLIC qing
        PUBLIC r_count
        PUBLIC ramp_delay_time
        PUBLIC ramp_dis_flag
        PUBLIC ramp_dis_time
        PUBLIC ramp_flag
        PUBLIC ramp_speed
        PUBLIC ramp_time
        PUBLIC re_angle
        PUBLIC re_direction
        PUBLIC re_refer_error
        PUBLIC re_white_refer
        PUBLIC re_whitepoint_end
        PUBLIC re_whitepoint_start
        PUBLIC record_flag
        PUBLIC refer_error
        PUBLIC refer_road_width
        PUBLIC reset_count
        PUBLIC response
        PUBLIC right_black
        PUBLIC right_top_whiteline
        PUBLIC right_whitebase_searchstart
        PUBLIC scan_boma
        PUBLIC se1
        PUBLIC se2
        PUBLIC se3
        PUBLIC send_cnt
        PUBLIC send_data_cnt
        PUBLIC send_date
        PUBLIC send_mes
        PUBLIC sensor_init
        PUBLIC set_up_time
        PUBLIC speed_center_average
        PUBLIC speed_ki
        PUBLIC speed_kp
        PUBLIC speed_kp_record
        PUBLIC start1
        PUBLIC start_stop_count
        PUBLIC start_stop_cs
        PUBLIC start_stop_en
        PUBLIC steerpwmout
        PUBLIC stop_pit_count
        PUBLIC stop_special
        PUBLIC stop_special_flag
        PUBLIC stopcount
        PUBLIC stopflag
        PUBLIC sumbe2
        PUBLIC sumbe3
        PUBLIC sumbe4
        PUBLIC sumbe5
        PUBLIC sumbe6
        PUBLIC sumbel
        PUBLIC summ
        PUBLIC temp1
        PUBLIC temp2
        PUBLIC test_run
        PUBLIC ting
        PUBLIC ting1
        PUBLIC ting_check_stop
        PUBLIC tingting
        PUBLIC tingting_d
        PUBLIC tingting_p
        PUBLIC tmp
        PUBLIC top_whiteline
        PUBLIC turn_l
        PUBLIC turn_r
        PUBLIC uart0_isr
        PUBLIC w
        PUBLIC white_refer
        PUBLIC whitebase_searchstart
        PUBLIC whitepoint_end
        PUBLIC whitepoint_start
        PUBLIC zhongjian
        PUBLIC zhou

// F:\刘友才 (H)\飞思卡尔\liuyoucai\7.12 晚六点；匀速\src\Sources\App\main.c
//    1 
//    2 #include "MK60N512VMD100.h"
//    3 #include "include.h"
//    4 #include <math.h>
//    5 
//    6 #define TEST_TIME1(x) gpio_set(PORTB, 6, x)
//    7 
//    8 
//    9  /*Globle variabls*/
//   10  //旧标定：直立时
//   11 //75cm-------42
//   12 //110cm---------49
//   13  //前瞻110cm
//   14 
//   15 //以白色电池垫住，75CM------35(36)hang
//   16                  //110=-------42hang
//   17 //摄像头顶端距离顶面32cm
//   18 
//   19 //新标定 摄像头顶端距离地面：32.8cm 车倒下前瞻67.5
//   20 /*需调节的参数*/             

        SECTION `.data`:DATA:REORDER:NOROOT(1)
//   21 uint16 Speed_set=240;//270   70、340、75,360//   250 75 360 80 380
Speed_set:
        DATA
        DC16 240
//   22 

        SECTION `.data`:DATA:REORDER:NOROOT(1)
//   23 uint16 Speed_limit=50;
Speed_limit:
        DATA
        DC16 50

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   24 uint16 Speed_limit_record=0;
Speed_limit_record:
        DS8 2
//   25 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   26 float ft=1.8;
ft:
        DATA
        DC32 3FE66666H

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   27 bool start1=0;
start1:
        DS8 1

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   28 float ACCE_STATIC =1230;    //1251   1236 1228
ACCE_STATIC:
        DATA
        DC32 4499C000H

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   29 float angle_kp_set=540,angle_kd_set=10.3;
angle_kp_set:
        DATA
        DC32 44070000H

        SECTION `.data`:DATA:REORDER:NOROOT(2)
angle_kd_set:
        DATA
        DC32 4124CCCDH

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   30 float angle_kp =540,angle_kd =9.3;    //600 8.3
angle_kp:
        DATA
        DC32 44070000H

        SECTION `.data`:DATA:REORDER:NOROOT(2)
angle_kd:
        DATA
        DC32 4114CCCDH

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   31 float acce_static=0;
acce_static:
        DS8 4

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   32 float angle_kp_across =540,angle_kd_across =11.3;//600 8.3
angle_kp_across:
        DATA
        DC32 44070000H

        SECTION `.data`:DATA:REORDER:NOROOT(2)
angle_kd_across:
        DATA
        DC32 4134CCCDH

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   33 float speed_kp=80,speed_ki=0.3;//
speed_kp:
        DATA
        DC32 42A00000H

        SECTION `.data`:DATA:REORDER:NOROOT(2)
speed_ki:
        DATA
        DC32 3E99999AH
//   34 
//   35 //float steer_kp=0,steer_kd = 0; //方向

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   36 uint16 error_servo_ref_d =0;          //105/110    sp=150//0518     110/120 170
error_servo_ref_d:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   37 uint16 error_servo_ref_p =0;//120      83 80/63/70 v=110   //83 45
error_servo_ref_p:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   38 int16 lcd_ref_p =0; 
lcd_ref_p:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   39 int16 lcd_ref_d =0; 
lcd_ref_d:
        DS8 2

        SECTION `.data`:DATA:REORDER:NOROOT(1)
//   40 int16 lcd_ref_p1 =52;//45       65     74     44
lcd_ref_p1:
        DATA
        DC16 52

        SECTION `.data`:DATA:REORDER:NOROOT(1)
//   41 int16 lcd_ref_d1 =450;//150 260  250   300    300
lcd_ref_d1:
        DATA
        DC16 450

        SECTION `.data`:DATA:REORDER:NOROOT(1)
//   42 int16 lcd_ref_p2 =54;//54  50   70     84     57  54//sp=240/250
lcd_ref_p2:
        DATA
        DC16 54

        SECTION `.data`:DATA:REORDER:NOROOT(1)
//   43 int16 lcd_ref_d2 =460;//250 300 340    320    320
lcd_ref_d2:
        DATA
        DC16 460

        SECTION `.data`:DATA:REORDER:NOROOT(1)
//   44 int16 zhongjian=30;
zhongjian:
        DATA
        DC16 30
//   45 
//   46 /*整体,时间等参数*/

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   47 uint16 SpeedControlCount = 0;                  //速控制周期计数值
SpeedControlCount:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   48 uint8 g_nCarSpeedCount ;                //1ms控制周期计数
g_nCarSpeedCount:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   49 uint8 DirectionControlCount = 0;               //方向控制周期
DirectionControlCount:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   50 uint8 IntegrationTime;
IntegrationTime:
        DS8 1
//   51 

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   52 uint16 Time=0;
Time:
        DS8 2
//   53 

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   54 uint8 send_data_cnt = 0;
send_data_cnt:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   55 uint8 TimerCnt20ms = 0;
TimerCnt20ms:
        DS8 1
//   56 

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//   57 uint8 disable_lcd_flag=1;
disable_lcd_flag:
        DATA
        DC8 1

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//   58 uint8 disable_key_flag=1;
disable_key_flag:
        DATA
        DC8 1
//   59 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   60 float V;
V:
        DS8 4
//   61 
//   62 
//   63  //---------------------------------------------------------------

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   64 int16 tingting_p=0;
tingting_p:
        DS8 2

        SECTION `.data`:DATA:REORDER:NOROOT(1)
//   65 int16 tingting_d=130;
tingting_d:
        DATA
        DC16 130
//   66 

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   67 uint8 summ=0;
summ:
        DS8 1

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//   68 uint8 da=30;
da:
        DATA
        DC8 30

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//   69 uint8 fuxiao=30;
fuxiao:
        DATA
        DC8 30
//   70 
//   71 ////***************************************************************************
//   72 /*直立平衡控制相关参数 */
//   73 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   74 float acce=0,gyro=0,w=0;                     //送入滤波的加速度计角度，陀螺仪角速度
acce:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
gyro:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
w:
        DS8 4
//   75 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   76 float GYRO_STATIC =0;                                  //零点偏移量
GYRO_STATIC:
        DS8 4
//   77 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   78 float AD_AngleData[2];              //均值滤波之后的陀螺仪和加速度计传感器数据
AD_AngleData:
        DS8 8
//   79 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   80 float acce_G=0,acce_angle=0,gyro_angle=0,acce_offset=0,gyro_offset=0;
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
//   81 float g_nCarAngle=0;
g_nCarAngle:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   82 float gyroIntegral=0;                     
gyroIntegral:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   83 float angle_error=0;               //角度偏差
angle_error:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   84 int16 anglePDout=0;
anglePDout:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   85 int16 anglePD=0;
anglePD:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   86 int16 last_anglePD=0;
last_anglePD:
        DS8 2
//   87 
//   88 //*****************************************************************************
//   89 /*速度控制相关参数*/ 

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   90 int16 g_nLeftCount=0, g_nRightCount=0;                  //两个电机的速度计数，符号位表示方向
g_nLeftCount:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
g_nRightCount:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   91 float RealSpeed;
RealSpeed:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   92 float LeftRealSpeed,RightRealSpeed;
LeftRealSpeed:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
RightRealSpeed:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   93 float Speed_error,motor_P,motor_I=0;
Speed_error:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
motor_P:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
motor_I:
        DS8 4
//   94 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   95 float SpeedPID = 0;                                 //速度控制的输出量
SpeedPID:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   96 float SpeedPIDold=0;
SpeedPIDold:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   97 int16 SpeedPIDout=0;
SpeedPIDout:
        DS8 2
//   98 
//   99 //*****************************************************************************
//  100 /*转向控制相关参数*/
//  101 
//  102  /*float  Distance[30];
//  103  float error=0;
//  104  
//  105  float  dis_error=0;
//  106  float  steerpwm=0;                                     //转向控制输出数量
//  107  float  steerpwmold=0;*/

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//  108  int16 steerpwmout=0;
steerpwmout:
        DS8 2
//  109 
//  110  

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//  111 int16 LeftSpeedPwm,RightSpeedPwm;
LeftSpeedPwm:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
RightSpeedPwm:
        DS8 2
//  112 
//  113 
//  114 
//  115 //--------------------------采集图像的相关变量-------------------------------------//

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  116 bool     OddEvenStatus;		  //奇偶场状态标志
OddEvenStatus:
        DS8 1
//  117 #define  OddStatus  0
//  118 #define  EvenStatus 1
//  119 #define  ODD_EVEN_STATUS  (bool)(0x00000001 & (GPIOB_PDIR  >> 20))  //奇偶变换标志  将第ptc端口的第1位右移动后，置1
//  120 #define VIF_START	0   	 //开始模式				 
//  121 #define VIF_WAITSAMPLE	1        //   等待模式
//  122 #define VIF_SAMPLELINE	2         //   除去消隐行的状态
//  123 #define VIF Videoclo_Flag         //
//  124 #define PIANYI 170 //实际采集列数为COLUMN + PIANYI，PIANYI为每行消隐点  中心值大于中值，消隐行减少98
//  125 #define VIDEO_START_LINE  80//图像采集起始行27

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  126 bool ImageReady;               //图像准备好标志
ImageReady:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  127 uint8 Videoclo_Flag, VideoImageLine;   //采集状态标志位，行中断实际采集行数计数器
Videoclo_Flag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
VideoImageLine:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//  128 uint16 LineCount=0;                       //行中断采集行数计数器   这个数据一定是要定义为uint16  自己以前定义为uint8  伤心痛苦折磨了好几天
LineCount:
        DS8 2

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//  129 bool lcd_debug = 1;    
lcd_debug:
        DATA
        DC8 1
//  130 //-------------------------处理图像的相关变量--------------------------//
//  131 #define ROW 50	                 //采集行数
//  132 #define COLUMN	157 		//每行点数
//  133 #define MID  78           //列中心 78 2014 。0515

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  134 uint8 VideoImage1[ROW][COLUMN] =       //原始图像数组[0][0]在左下角
VideoImage1:
        DS8 7852
//  135 {
//  136    0
//  137 };

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  138 uint8 VideoImage2[ROW][COLUMN] =       //原始图像数组[0][0]在左下角
VideoImage2:
        DS8 7852
//  139 {
//  140    0
//  141 };

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  142 uint8 left_black[ROW]=                 //左边沿线的采集数组
left_black:
        DS8 52
//  143 {
//  144   0
//  145 };

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  146 uint8 right_black[ROW]=                //右边沿线的采集数组
right_black:
        DS8 52
//  147 {
//  148   0
//  149 };

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  150 uint8 center_white[ROW]=              //（虚拟出来的）中线的数组
center_white:
        DS8 52
//  151 {
//  152   0
//  153 };
//  154 
//  155 
//  156 //-------------------------------------搜两边黑线----------------------------------//
//  157 #define MIN_WHITEBASE_POINT 30                    //最少连续白点个数成为基准的要求
//  158 #define WHITE_TOP_WHITELINE_POINT 15                  //两边的黑线的宽度小于这个值，判定为最高有效
//  159 #define CENTER_LOST_POINT 20

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  160 uint8 current_deal_line=0;     //当前处理的行
current_deal_line:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  161 uint8 deal_start_line = 0;                //这个 值时控制处理的起始行一般定义为基准行 + 4
deal_start_line:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  162 uint8 hang_search_start = 0;             //定义每次扫描的开始是从哪个点开始的
hang_search_start:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  163 uint8 whitepoint_start=0;                //从左至右白点开始处
whitepoint_start:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  164 uint8 whitepoint_end=0;                 //从左至右白点结束处
whitepoint_end:
        DS8 1

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//  165 uint8 whitebase_searchstart = MID;
whitebase_searchstart:
        DATA
        DC8 78

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  166 uint8 left_whitebase_searchstart = 0;
left_whitebase_searchstart:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  167 uint8 right_whitebase_searchstart = 0; 
right_whitebase_searchstart:
        DS8 1

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//  168 uint8 re_whitepoint_start =14;  // 20发车的时候车子一定要在赛道的中心左右，否则会出现找不到赛道的危险??
re_whitepoint_start:
        DATA
        DC8 14

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//  169 uint8 re_whitepoint_end=144;   
re_whitepoint_end:
        DATA
        DC8 144

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  170 uint8 center_lost_hang = 0;
center_lost_hang:
        DS8 1
//  171 /*
//  172 uint8 refer_road_width[ROW] ={130,130,129,127,125,124,122,121,120,118,117,114,112,111,109,
//  173                               106,105,104,102,99,97,94,92,91,88,85,84,82,79,77,74,73,70,68,65,
//  174                               64,61,58,55,53,50,47,45,43,41,39,37,35,34,32
//  175 };*/ /* 
//  176 uint8 refer_road_width[ROW] ={116,114,112,111,109,108,107,105,104,103,
//  177                               101,98,96,94,92,90,87,85,83,81,
//  178                               79,77,75,73,71,69,66,64,62,59,
//  179                               56,54,52,50,48,46,42,40,37,35,
//  180                               32,29,26,25,25,24,24,22,21,20
//  181                               
//  182 }; 
//  183 
//  184 uint8 refer_road_width[ROW] ={129,128,127,125,123,121,121,120,119,119,
//  185                               118,116,116,113,110,108,108,105,102,99,
//  186                                98,97,95,92,90,89,87,84,79,76,
//  187                                75,72,70,68,67,65,61,58,55,53,
//  188                                51,49,45,43,42,40,38,36,32
//  189                               
//  190 };  
//  191 
//  192 */
//  193 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//  194 uint8 refer_road_width[ROW] ={
refer_road_width:
        DATA
        DC8 126, 124, 123, 122, 120, 118, 117, 114, 113, 112, 111, 109, 107
        DC8 105, 104, 101, 100, 97, 95, 93, 92, 90, 88, 86, 83, 81, 79, 77, 74
        DC8 72, 71, 69, 66, 63, 60, 56, 55, 54, 52, 48, 46, 43, 40, 37, 34, 33
        DC8 32, 31, 30, 29, 0, 0
//  195                               126,124,123,122,120,118,117,114,113,112,
//  196                               111,109,107,105,104,101,100,97,95,93,
//  197                               92,90,88,86,83,81,79,77,74,72,
//  198                               71,69,66,63,60,56,55,54,52,48,
//  199                               46,43,40,37,34,33,32,31,30,29
//  200 };  

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//  201 uint8 OT=36;                                     //////判定为灰度值的跳变沿的最小灰度的跳变值
OT:
        DATA
        DC8 36

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//  202 uint8 BASE_OT = 140;
BASE_OT:
        DATA
        DC8 140

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//  203 uint8 WHITE_BLACK_OT = 140;           //进行二值化的分界值
WHITE_BLACK_OT:
        DATA
        DC8 140
//  204 #define WHITE 255
//  205 #define BLACK 10
//  206 

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//  207 uint8 top_whiteline = ROW-1;                          //图像的最顶行
top_whiteline:
        DATA
        DC8 49

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//  208 uint8 left_top_whiteline = ROW-1;
left_top_whiteline:
        DATA
        DC8 49

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//  209 uint8 right_top_whiteline = ROW-1;
right_top_whiteline:
        DATA
        DC8 49
//  210 

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  211 uint8 bottom_whitebase = 0;                       //图像的基准行 
bottom_whitebase:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  212 bool find_whitebase_flag = 0;  //基准行的标志位
find_whitebase_flag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  213 bool  tingting=0;
tingting:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  214 bool ting=0;
ting:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  215 bool ting_check_stop=0;
ting_check_stop:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  216 bool stop_special_flag=0;
stop_special_flag:
        DS8 1
//  217 

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//  218 int8 jump_stop=10;
jump_stop:
        DATA
        DC8 10

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//  219 uint8 re_white_refer = MID;  //这个点作为每场搜索基准行的开始的点  ，最开始的时候定义为 默认为MID
re_white_refer:
        DATA
        DC8 78

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  220 uint8 white_refer = 0;                            //基准行上的赛道的中点
white_refer:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  221 uint8 Row_state[ROW] =
Row_state:
        DS8 52
//  222 {
//  223   0
//  224 };
//  225 //-------------------------------赛道处理的相关参数-----------------------//

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  226 uint8 S_right = 0;//向右拐的计数
S_right:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  227 uint8 S_left =0 ; //向左拐计数
S_left:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  228 uint8 S_straight = 0;
S_straight:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  229 uint8 direction = 0; //4是初始化的值
direction:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  230 uint8 re_direction = 0;//记录上一次的当有的时候，无法判断出赛道的类型的时候，用上一次的状态
re_direction:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  231 uint32 center_average = 0;
center_average:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  232 uint32 speed_center_average = 0;
speed_center_average:
        DS8 4
//  233 //uint16 center_error_average = 0;  

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  234 uint32 center_linear_average = 0;
center_linear_average:
        DS8 4
//  235      

        SECTION `.data`:DATA:REORDER:NOROOT(1)
//  236 uint16 ramp_delay_time = 150;
ramp_delay_time:
        DATA
        DC16 150

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//  237 uint16 ramp_time = 0;                //进入坡道后多长时间重新开启起跑线检测
ramp_time:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//  238 uint16 ramp_dis_time = 0;       //防止下坡的误判而延时
ramp_dis_time:
        DS8 2

        SECTION `.data`:DATA:REORDER:NOROOT(1)
//  239 uint16 ramp_speed = 75;                    //坡道减速值70
ramp_speed:
        DATA
        DC16 75

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  240 bool ramp_flag = 0;                          //进入坡道标志,主要用于控制
ramp_flag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  241 bool ramp_dis_flag = 0;                     //主要是防止下坡误判
ramp_dis_flag:
        DS8 1
//  242  

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  243 float linear_factor = 0;
linear_factor:
        DS8 4
//  244 

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//  245 int16 angle=0;
angle:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//  246 int16 re_angle=0;
re_angle:
        DS8 2
//  247 
//  248 

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//  249 uint16 control_top_whiteline = 0; //re_control_top_whiteline top_error_servo_p
control_top_whiteline:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//  250 uint16 danger_count = 0;  //记录危险的点数
danger_count:
        DS8 2

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//  251 bool danger_flag = 1;  //这个的初始值为1.当出了控制最高行了则置为0；
danger_flag:
        DATA
        DC8 1
//  252  

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//  253 int16 refer_error =0;
refer_error:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//  254 uint16 center_average_a =0;
center_average_a:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//  255 uint16 center_average_b = 0;
center_average_b:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//  256 int16 re_refer_error = 0;
re_refer_error:
        DS8 2
//  257 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  258 uint32 start_stop_count = 0;  //起跑线检测计数
start_stop_count:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  259 bool stopflag = 0;//速度反馈
stopflag:
        DS8 1

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//  260 uint32 stop_pit_count = 8;
stop_pit_count:
        DATA
        DC32 8

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  261 bool start_stop_en = 0;   //起跑线检测使能
start_stop_en:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  262 bool start_stop_cs =0;   //起跑线检测的片选信号   当为1的时候选中检测起跑线
start_stop_cs:
        DS8 1
//  263 

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//  264 uint16 car_test_run = 0; 
car_test_run:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  265 bool test_run = 0;  
test_run:
        DS8 1
//  266 #define BUS_CLOCK  100  //(MHZ)50 82 90 100 105 110 115//这里设置的内核时钟等于总线时钟100M
//  267 #define BAUD  19200    //波特率9600
//  268 #define CORE_CLOCK 180

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//  269   uint16 sumbel=0; 
sumbel:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//  270    uint16 sumbe2=0; 
sumbe2:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//  271     uint16 sumbe3=0;
sumbe3:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//  272   int16  angleout;
angleout:
        DS8 2
//  273 //-----串口功能选择----//

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  274 uint8 send_mes=0;              //根据上位机发送来的数据来选择不同的串口功能
send_mes:
        DS8 1

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//  275 uint8 fanting=1;
fanting:
        DATA
        DC8 1
//  276 
//  277 //-----串口功能选择----//

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  278 uint8 se1=0,se2=0,se3=0;
se1:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
se2:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
se3:
        DS8 1
//  279 

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//  280 uint16 r_count=0;
r_count:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  281 bool deal_r_flag=0;
deal_r_flag:
        DS8 1

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//  282 bool response=1;
response:
        DATA
        DC8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//  283 uint16 Speed=0;
Speed:
        DS8 2

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//  284 bool liu=1;
liu:
        DATA
        DC8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  285 bool begin=0,begin2=0;
begin:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
begin2:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  286  bool bm3,feng;
bm3:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
feng:
        DS8 1
//  287 //int16 big=1100;
//  288  //-----------------------------延迟-------------------------------//

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  289 void Delay_MS(uint32 ms)
//  290 {
//  291    while(ms--);
Delay_MS:
??Delay_MS_0:
        MOVS     R1,R0
        SUBS     R0,R1,#+1
        CMP      R1,#+0
        BNE.N    ??Delay_MS_0
//  292 }
        BX       LR               ;; return
//  293 
//  294 //---------------------------行中断捕捉端口初始化-------------------//

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  295 void EXIT_Init(void)
//  296 {
//  297      SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK;  //开启B端口时钟
EXIT_Init:
        LDR.W    R0,??DataTable5  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x400
        LDR.W    R1,??DataTable5  ;; 0x40048038
        STR      R0,[R1, #+0]
//  298     PORTB_PCR22 =PORT_PCR_MUX(1);  //GPIO
        MOV      R0,#+256
        LDR.W    R1,??DataTable5_1  ;; 0x4004a058
        STR      R0,[R1, #+0]
//  299     GPIOB_PDDR &= ~GPIO_PIN(22);   //输入
        LDR.W    R0,??DataTable5_2  ;; 0x400ff054
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x400000
        LDR.W    R1,??DataTable5_2  ;; 0x400ff054
        STR      R0,[R1, #+0]
//  300     PORTB_PCR22 |= PORT_PCR_PE_MASK | PORT_PCR_PS_MASK; //上拉电阻;
        LDR.W    R0,??DataTable5_1  ;; 0x4004a058
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x3
        LDR.W    R1,??DataTable5_1  ;; 0x4004a058
        STR      R0,[R1, #+0]
//  301     PORTB_PCR22 |= PORT_PCR_IRQC(9); //9为上升沿触发外部中断 10为下降沿触
        LDR.W    R0,??DataTable5_1  ;; 0x4004a058
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x90000
        LDR.W    R1,??DataTable5_1  ;; 0x4004a058
        STR      R0,[R1, #+0]
//  302 }
        BX       LR               ;; return
//  303 
//  304 //---------------------------数组初始化--------------------------//

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  305 void Initial(void)
//  306 {
//  307   int16 i;
//  308      for(i = 0;i < ROW;i++)
Initial:
        MOVS     R1,#+0
        MOVS     R0,R1
??Initial_0:
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,#+50
        BGE.N    ??Initial_1
//  309        {
//  310          left_black[i] = 0;
        MOVS     R1,#+0
        LDR.W    R2,??DataTable5_3
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        STRB     R1,[R0, R2]
//  311          right_black[i] = 0;
        MOVS     R1,#+0
        LDR.W    R2,??DataTable5_4
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        STRB     R1,[R0, R2]
//  312          center_white[i] = 0;
        MOVS     R1,#+0
        LDR.W    R2,??DataTable5_5
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        STRB     R1,[R0, R2]
//  313          Row_state[i] = 3; //3代表的是两边都没有出现丢点
        MOVS     R1,#+3
        LDR.W    R2,??DataTable5_6
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        STRB     R1,[R0, R2]
//  314        }
        ADDS     R0,R0,#+1
        B.N      ??Initial_0
//  315        start_stop_count = 0;
??Initial_1:
        MOVS     R1,#+0
        LDR.W    R2,??DataTable5_7
        STR      R1,[R2, #+0]
//  316        ramp_dis_flag = 0;
        MOVS     R1,#+0
        LDR.W    R2,??DataTable5_8
        STRB     R1,[R2, #+0]
//  317        ramp_flag = 0;
        MOVS     R1,#+0
        LDR.W    R2,??DataTable5_9
        STRB     R1,[R2, #+0]
//  318 }
        BX       LR               ;; return
//  319 
//  320                                                                            
//  321 /*1.端口初始化*/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  322  void GIPO_init()
//  323  {   
GIPO_init:
        PUSH     {R7,LR}
//  324     gpio_init (PORTB , 10, GPO, HIGH);
        MOVS     R3,#+1
        MOVS     R2,#+1
        MOVS     R1,#+10
        MOVS     R0,#+1
        BL       gpio_init
//  325     //gpio_init (PORTB , 6, GPO,LOW);
//  326       gpio_init (PORTA , 16, GPO, HIGH);
        MOVS     R3,#+1
        MOVS     R2,#+1
        MOVS     R1,#+16
        MOVS     R0,#+0
        BL       gpio_init
//  327        gpio_init (PORTA , 17, GPO, HIGH);
        MOVS     R3,#+1
        MOVS     R2,#+1
        MOVS     R1,#+17
        MOVS     R0,#+0
        BL       gpio_init
//  328        
//  329      gpio_init (PORTA, 27, GPI, HIGH);//boma
        MOVS     R3,#+1
        MOVS     R2,#+0
        MOVS     R1,#+27
        MOVS     R0,#+0
        BL       gpio_init
//  330       gpio_init (PORTA, 26, GPI, HIGH);
        MOVS     R3,#+1
        MOVS     R2,#+0
        MOVS     R1,#+26
        MOVS     R0,#+0
        BL       gpio_init
//  331       gpio_init (PORTA, 25, GPI, HIGH);
        MOVS     R3,#+1
        MOVS     R2,#+0
        MOVS     R1,#+25
        MOVS     R0,#+0
        BL       gpio_init
//  332       gpio_init (PORTA, 24, GPI, HIGH);
        MOVS     R3,#+1
        MOVS     R2,#+0
        MOVS     R1,#+24
        MOVS     R0,#+0
        BL       gpio_init
//  333       
//  334       //gpio_init (PORTB, 10, GPO, HIGH);//蜂鸣器
//  335  
//  336     PORTE_PCR0 = PORT_PCR_MUX(1)| PORT_PCR_PE_MASK |  PORT_PCR_PS_MASK;//E4引脚设置为GPIO模式
        MOVW     R0,#+259
        LDR.W    R1,??DataTable5_10  ;; 0x4004d000
        STR      R0,[R1, #+0]
//  337     PORTE_PCR1 = PORT_PCR_MUX(1)| PORT_PCR_PE_MASK |  PORT_PCR_PS_MASK;//E5引脚设置为GPIO模式
        MOVW     R0,#+259
        LDR.W    R1,??DataTable5_11  ;; 0x4004d004
        STR      R0,[R1, #+0]
//  338     PORTE_PCR2 = PORT_PCR_MUX(1)| PORT_PCR_PE_MASK |  PORT_PCR_PS_MASK;//E6引脚设置为GPIO模式
        MOVW     R0,#+259
        LDR.W    R1,??DataTable5_12  ;; 0x4004d008
        STR      R0,[R1, #+0]
//  339     PORTE_PCR3 = PORT_PCR_MUX(1)| PORT_PCR_PE_MASK |  PORT_PCR_PS_MASK;//E7引脚设置为GPIO模式
        MOVW     R0,#+259
        LDR.W    R1,??DataTable5_13  ;; 0x4004d00c
        STR      R0,[R1, #+0]
//  340     PORTE_PCR4 = PORT_PCR_MUX(1)| PORT_PCR_PE_MASK |  PORT_PCR_PS_MASK;//E8引脚设置为GPIO模式
        MOVW     R0,#+259
        LDR.W    R1,??DataTable5_14  ;; 0x4004d010
        STR      R0,[R1, #+0]
//  341     PORTE_PCR5 = PORT_PCR_MUX(1)| PORT_PCR_PE_MASK |  PORT_PCR_PS_MASK;//E9引脚设置为GPIO模式
        MOVW     R0,#+259
        LDR.W    R1,??DataTable5_15  ;; 0x4004d014
        STR      R0,[R1, #+0]
//  342     PORTE_PCR6 = PORT_PCR_MUX(1)| PORT_PCR_PE_MASK |  PORT_PCR_PS_MASK;//E10引脚设置为GPIO模式
        MOVW     R0,#+259
        LDR.W    R1,??DataTable5_16  ;; 0x4004d018
        STR      R0,[R1, #+0]
//  343     PORTE_PCR7 = PORT_PCR_MUX(1)| PORT_PCR_PE_MASK |  PORT_PCR_PS_MASK;//E11引脚设置为GPIO模式
        MOVW     R0,#+259
        LDR.W    R1,??DataTable5_17  ;; 0x4004d01c
        STR      R0,[R1, #+0]
//  344          
//  345         GPIOE_PDDR = 0xffffff00;  //E0~E7设置为输入口 
        MVNS     R0,#+255
        LDR.W    R1,??DataTable5_18  ;; 0x400ff114
        STR      R0,[R1, #+0]
//  346         
//  347         PORTB_PCR20 = PORT_PCR_MUX(1) | PORT_PCR_PE_MASK |  PORT_PCR_PS_MASK;//PTB20引脚设置为GPIO模式 上拉
        MOVW     R0,#+259
        LDR.W    R1,??DataTable5_19  ;; 0x4004a050
        STR      R0,[R1, #+0]
//  348         GPIOB_PDDR = 0xffefff00;  //PTB20设置为输入
        LDR.W    R0,??DataTable5_20  ;; 0xffefff00
        LDR.W    R1,??DataTable5_2  ;; 0x400ff054
        STR      R0,[R1, #+0]
//  349   }
        POP      {R0,PC}          ;; return
//  350   
//  351 /*2.陀螺仪初始化*/
//  352  

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  353  void init_gyro()
//  354  {
init_gyro:
        PUSH     {R4-R6,LR}
//  355         int i=0;
        MOVS     R6,#+0
//  356         adc_start(ADC1, AD10, ADC_10bit );
        MOVS     R2,#+2
        MOVS     R1,#+10
        MOVS     R0,#+1
        BL       adc_start
//  357         
//  358         for(i=0;i<10;i++)
        MOVS     R0,#+0
        MOVS     R6,R0
??init_gyro_0:
        CMP      R6,#+10
        BGE.N    ??init_gyro_1
//  359         {
//  360    
//  361         
//  362         
//  363  	GYRO_STATIC =ad_ave(ADC1, AD10, ADC_10bit, 100)*3.22265625+GYRO_STATIC;   //16精度* 0.050354
        MOVS     R3,#+100
        MOVS     R2,#+2
        MOVS     R1,#+10
        MOVS     R0,#+1
        BL       ad_ave
        BL       __aeabi_f2d
        MOVS     R2,#+0
        LDR.W    R3,??DataTable5_21  ;; 0x4009c800
        BL       __aeabi_dmul
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable5_22
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        LDR.W    R1,??DataTable5_22
        STR      R0,[R1, #+0]
//  364         
//  365         Delay_MS(100);
        MOVS     R0,#+100
        BL       Delay_MS
//  366         
//  367         
//  368  	}
        ADDS     R6,R6,#+1
        B.N      ??init_gyro_0
//  369         adc_stop(ADC1);
??init_gyro_1:
        MOVS     R0,#+1
        BL       adc_stop
//  370         GYRO_STATIC=GYRO_STATIC/10.0;
        LDR.W    R0,??DataTable5_22
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        MOVS     R2,#+0
        LDR.W    R3,??DataTable5_23  ;; 0x40240000
        BL       __aeabi_ddiv
        BL       __aeabi_d2f
        LDR.W    R1,??DataTable5_22
        STR      R0,[R1, #+0]
//  371  }
        POP      {R4-R6,PC}       ;; return
//  372 
//  373 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  374 void sensor_init()
//  375 {
sensor_init:
        PUSH     {R7,LR}
//  376     adc_init(ADC1, AD10);
        MOVS     R1,#+10
        MOVS     R0,#+1
        BL       adc_init
//  377   adc_init(ADC1, AD11);
        MOVS     R1,#+11
        MOVS     R0,#+1
        BL       adc_init
//  378     adc_init(ADC0, AD14);
        MOVS     R1,#+14
        MOVS     R0,#+0
        BL       adc_init
//  379 
//  380 }
        POP      {R0,PC}          ;; return
//  381 
//  382 
//  383 
//  384 /*------------------------------------------------------------------------------
//  385                                         小函数                                                 
//  386 ------------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  387 int abs(int num)     //绝对值函数
//  388 {
//  389          if(num<0)
abs:
        CMP      R0,#+0
        BPL.N    ??abs_0
//  390              return -num;
        RSBS     R0,R0,#+0
        B.N      ??abs_1
//  391          else
//  392              return num;
??abs_0:
??abs_1:
        BX       LR               ;; return
//  393 }
//  394 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  395 int16 f_abs16(int16 x)
//  396 {
//  397   if(x>0) return x;
f_abs16:
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,#+1
        BLT.N    ??f_abs16_0
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        B.N      ??f_abs16_1
//  398   else return -x;
??f_abs16_0:
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        RSBS     R0,R0,#+0
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
??f_abs16_1:
        BX       LR               ;; return
//  399 }
//  400 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  401 float f_absf(float x)
//  402 {
f_absf:
        PUSH     {R7,LR}
//  403     if(x>=0.0) return x;
        MOVS     R1,#+0
        BL       __aeabi_cfrcmple
        BLS.N    ??f_absf_0
//  404     else  return -x;
??f_absf_1:
        EORS     R0,R0,#0x80000000
??f_absf_0:
        POP      {R1,PC}          ;; return
//  405 }
//  406 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  407 int MIN_INT( int a, int b)
//  408 {
MIN_INT:
        MOVS     R2,R0
//  409     if(a>b) return b;
        CMP      R1,R2
        BGE.N    ??MIN_INT_0
        MOVS     R0,R1
        B.N      ??MIN_INT_1
//  410     else  return a;
??MIN_INT_0:
        MOVS     R0,R2
??MIN_INT_1:
        BX       LR               ;; return
//  411 }
//  412 

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//  413 uint16 counter=0;
counter:
        DS8 2

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  414 void stop_special(void)              //非正常情况停车
//  415 {
stop_special:
        PUSH     {R3-R5,LR}
//  416     int i=0,j=0;
        MOVS     R4,#+0
        MOVS     R5,#+0
//  417     
//  418     if(jump_stop>0 ) jump_stop--;
        LDR.W    R0,??DataTable5_24
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+1
        BLT.N    ??stop_special_0
        LDR.W    R0,??DataTable5_24
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.W    R1,??DataTable5_24
        STRB     R0,[R1, #+0]
        B.N      ??stop_special_1
//  419     else
//  420     { 
//  421       for(i=0;i<COLUMN;i++)  
??stop_special_0:
        MOVS     R0,#+0
        MOVS     R4,R0
??stop_special_2:
        CMP      R4,#+157
        BGE.N    ??stop_special_3
//  422       {
//  423         if( VideoImage2[3][i]<=WHITE_BLACK_OT) 
        LDR.W    R0,??DataTable5_25
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable5_26
        ADDS     R1,R4,R1
        LDRB     R1,[R1, #+471]
        CMP      R0,R1
        BCC.N    ??stop_special_4
//  424           j++;
        ADDS     R5,R5,#+1
//  425       }
??stop_special_4:
        ADDS     R4,R4,#+1
        B.N      ??stop_special_2
//  426       
//  427       if(j>85) counter++;
??stop_special_3:
        CMP      R5,#+86
        BLT.N    ??stop_special_5
        LDR.W    R0,??DataTable5_27
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable5_27
        STRH     R0,[R1, #+0]
        B.N      ??stop_special_6
//  428       else   counter=0;
??stop_special_5:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable5_27
        STRH     R0,[R1, #+0]
//  429       if(counter>10)  
??stop_special_6:
        LDR.W    R0,??DataTable5_27
        LDRH     R0,[R0, #+0]
        CMP      R0,#+11
        BLT.N    ??stop_special_1
//  430       {
//  431         ting=1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable5_28
        STRB     R0,[R1, #+0]
//  432         counter=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable5_27
        STRH     R0,[R1, #+0]
//  433       }
//  434     }
//  435     
//  436     //---------------------角度判断停车
//  437     if(g_nCarAngle>da||g_nCarAngle<-fuxiao)
??stop_special_1:
        LDR.W    R0,??DataTable5_29
        LDRB     R0,[R0, #+0]
        BL       __aeabi_ui2f
        LDR.W    R1,??DataTable5_30
        LDR      R1,[R1, #+0]
        BL       __aeabi_cfcmple
        BCC.N    ??stop_special_7
        LDR.W    R0,??DataTable5_31
        LDRB     R0,[R0, #+0]
        RSBS     R0,R0,#+0
        BL       __aeabi_i2f
        MOVS     R1,R0
        LDR.W    R0,??DataTable5_30
        LDR      R0,[R0, #+0]
        BL       __aeabi_cfcmple
        BCS.N    ??stop_special_8
//  438     {
//  439          ting=1; 
??stop_special_7:
        MOVS     R0,#+1
        LDR.W    R1,??DataTable5_28
        STRB     R0,[R1, #+0]
//  440     }/* */
//  441 }
??stop_special_8:
        POP      {R0,R4,R5,PC}    ;; return
//  442 
//  443 //-----------------------------------扫描白线基准线---------------------------------//
//  444 /*
//  445 1、由于赛道的宽度在图像中所占的比例较大，故可认为在中点的位置（79处）就一定是在赛道中，
//  446 ，除非车子跑出了赛道，而不需要考虑中心偏离赛道的情况。
//  447 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  448 void Search_WhiteBase(void)   //从图像底部中间开始向两边扫描白线基准
//  449 { 
Search_WhiteBase:
        PUSH     {R3-R7,LR}
//  450   uint8 i = 0,j = 0 ;//定义十六位的有符号变量   i代表行变量  j代表列变量
        MOVS     R5,#+0
        MOVS     R6,#+0
//  451  uint8 base_sum = 0; 
        MOVS     R4,#+0
//  452   current_deal_line=0;                //记录在搜索基准行的时候的当前处理的行 
        MOVS     R0,#+0
        LDR.W    R1,??DataTable5_32
        STRB     R0,[R1, #+0]
//  453   bottom_whitebase = 0;//基准行赋初值  int
        MOVS     R0,#+0
        LDR.W    R1,??DataTable5_33
        STRB     R0,[R1, #+0]
//  454   find_whitebase_flag = 0;               //是否发现白线基准标志
        MOVS     R0,#+0
        LDR.W    R1,??DataTable5_34
        STRB     R0,[R1, #+0]
//  455 
//  456   //////////////////////////////滤波开始///////////////////////////////////  
//  457 //首先对整幅图像进行滤波，采用的方法是中值滤波
//  458  for(i = 0;i < 5;i++)                 //只是对图像前几行进行滤波，原因是远处的滤波可能会把跑道的信息滤除掉这里对赛道的前13行滤波
        MOVS     R0,#+0
        MOVS     R5,R0
??Search_WhiteBase_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+5
        BGE.N    ??Search_WhiteBase_1
//  459     for(j = 1;j< COLUMN-1;j++) 
        MOVS     R0,#+1
        MOVS     R6,R0
??Search_WhiteBase_2:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+156
        BGE.N    ??Search_WhiteBase_3
//  460     {
//  461         base_sum = (VideoImage1[i][j-1] + VideoImage1[i][j+1])/ 2;
        LDR.W    R0,??DataTable5_35
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        MOVS     R1,#+157
        MLA      R0,R1,R5,R0
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        ADDS     R0,R6,R0
        LDRB     R0,[R0, #-1]
        LDR.W    R1,??DataTable5_35
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        MOVS     R2,#+157
        MLA      R1,R2,R5,R1
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        ADDS     R1,R6,R1
        LDRB     R1,[R1, #+1]
        UXTAB    R0,R1,R0
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        MOVS     R4,R0
//  462         if( f_abs16( base_sum - VideoImage1[i][j]) > OT)
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R0,??DataTable5_35
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        MOVS     R1,#+157
        MLA      R0,R1,R5,R0
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDRB     R0,[R6, R0]
        SUBS     R0,R4,R0
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       f_abs16
        LDR.W    R1,??DataTable5_36
        LDRB     R1,[R1, #+0]
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R1,R0
        BGE.N    ??Search_WhiteBase_4
//  463            VideoImage1[i][j] = base_sum;
        LDR.W    R0,??DataTable5_35
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        MOVS     R1,#+157
        MLA      R0,R1,R5,R0
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        STRB     R4,[R6, R0]
//  464     }  //滤波可能带来一个后果，就是可能把远处的边沿线滤除掉，这里只是对近端进行滤波
??Search_WhiteBase_4:
        ADDS     R6,R6,#+1
        B.N      ??Search_WhiteBase_2
??Search_WhiteBase_3:
        ADDS     R5,R5,#+1
        B.N      ??Search_WhiteBase_0
//  465  
//  466   
//  467   /*////////////////////////对图像上的噪点进行滤除//////////////   限幅滤波会带来一个后果，导致跳变沿检测出现问题，跳变太小
//  468   for(i = 0;i < ROW ;i++)                 //图像上突然的出现了很多的噪点，这个程序是为了将图像上的这些噪点滤除。经过验证效果很好
//  469     for(j = 0;j< COLUMN;j++)
//  470     {
//  471       if(VideoImage1[i][j] >245 || VideoImage1[i][j]<10)
//  472       {
//  473         if( j>0 && j < COLUMN - 1)
//  474         {
//  475           VideoImage1[i][j] = (VideoImage1[i][j+1] + VideoImage1[i][j-1])/2;
//  476         }
//  477         else
//  478         {
//  479           if( i>0 && i < ROW - 1)
//  480           VideoImage1[i][j] =  (VideoImage1[i+1][j] +  VideoImage1[i-1][j])/2;
//  481         }
//  482       }
//  483     }
//  484 *////////////////////////////滤波结束////////////////////////////////
//  485   
//  486   /*对于搜索基准行最重要的就是解决搜索的开始点的问题，这个点找到了，其他的问题就好解决了*/
//  487   if(VideoImage1[0][re_white_refer] > BASE_OT && VideoImage1[0][re_white_refer-1] >BASE_OT && VideoImage1[0][re_white_refer+1]>BASE_OT)
??Search_WhiteBase_1:
        LDR.W    R0,??DataTable5_37
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable5_35
        LDR.W    R2,??DataTable5_38
        LDRB     R2,[R2, #+0]
        LDRB     R1,[R2, R1]
        CMP      R0,R1
        BCS.N    ??Search_WhiteBase_5
        LDR.W    R0,??DataTable5_37
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable5_35
        LDR.W    R2,??DataTable5_38
        LDRB     R2,[R2, #+0]
        ADDS     R1,R2,R1
        LDRB     R1,[R1, #-1]
        CMP      R0,R1
        BCS.N    ??Search_WhiteBase_5
        LDR.W    R0,??DataTable5_37
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable5_35
        LDR.W    R2,??DataTable5_38
        LDRB     R2,[R2, #+0]
        ADDS     R1,R2,R1
        LDRB     R1,[R1, #+1]
        CMP      R0,R1
        BCS.N    ??Search_WhiteBase_5
//  488   {
//  489     whitebase_searchstart = re_white_refer;
        LDR.W    R0,??DataTable5_38
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable5_39
        STRB     R0,[R1, #+0]
        B.N      ??Search_WhiteBase_6
//  490   }
//  491   else
//  492   {
//  493     j = MID-1;//从MID开始搜索基准行的开始点
??Search_WhiteBase_5:
        MOVS     R0,#+77
        MOVS     R6,R0
//  494     left_whitebase_searchstart = MID-1;
        MOVS     R0,#+77
        LDR.W    R1,??DataTable5_40
        STRB     R0,[R1, #+0]
//  495     while(j > 10)
??Search_WhiteBase_7:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+11
        BLT.N    ??Search_WhiteBase_8
//  496     {
//  497       if(VideoImage1[0][j] > BASE_OT && VideoImage1[0][j-1] > BASE_OT &&VideoImage1[0][j-2]>BASE_OT
//  498          &&VideoImage1[0][j-3] >BASE_OT &&VideoImage1[0][j-4]>BASE_OT)
        LDR.W    R0,??DataTable5_37
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable5_35
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDRB     R1,[R6, R1]
        CMP      R0,R1
        BCS.N    ??Search_WhiteBase_9
        LDR.W    R0,??DataTable5_37
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable5_35
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        ADDS     R1,R6,R1
        LDRB     R1,[R1, #-1]
        CMP      R0,R1
        BCS.N    ??Search_WhiteBase_9
        LDR.W    R0,??DataTable5_37
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable5_35
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        ADDS     R1,R6,R1
        LDRB     R1,[R1, #-2]
        CMP      R0,R1
        BCS.N    ??Search_WhiteBase_9
        LDR.W    R0,??DataTable5_37
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable5_35
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        ADDS     R1,R6,R1
        LDRB     R1,[R1, #-3]
        CMP      R0,R1
        BCS.N    ??Search_WhiteBase_9
        LDR.W    R0,??DataTable5_37
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable5_35
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        ADDS     R1,R6,R1
        LDRB     R1,[R1, #-4]
        CMP      R0,R1
        BCS.N    ??Search_WhiteBase_9
//  499       {
//  500         left_whitebase_searchstart = j;
        LDR.W    R0,??DataTable5_40
        STRB     R6,[R0, #+0]
//  501         break;
        B.N      ??Search_WhiteBase_8
//  502       }
//  503       j--;
??Search_WhiteBase_9:
        SUBS     R6,R6,#+1
        B.N      ??Search_WhiteBase_7
//  504     }
//  505     /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//  506     j = MID+1; 
??Search_WhiteBase_8:
        MOVS     R0,#+79
        MOVS     R6,R0
//  507     right_whitebase_searchstart = MID+1;
        MOVS     R0,#+79
        LDR.W    R1,??DataTable5_41
        STRB     R0,[R1, #+0]
//  508     while(j < 150)
??Search_WhiteBase_10:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+150
        BGE.N    ??Search_WhiteBase_11
//  509     {
//  510        if(VideoImage1[0][j] > BASE_OT && VideoImage1[0][j+1] > BASE_OT && VideoImage1[0][j+2]>BASE_OT
//  511          && VideoImage1[0][j+3] > BASE_OT &&VideoImage1[0][j+4] > BASE_OT)
        LDR.W    R0,??DataTable5_37
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable5_35
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDRB     R1,[R6, R1]
        CMP      R0,R1
        BCS.N    ??Search_WhiteBase_12
        LDR.W    R0,??DataTable5_37
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable5_35
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        ADDS     R1,R6,R1
        LDRB     R1,[R1, #+1]
        CMP      R0,R1
        BCS.N    ??Search_WhiteBase_12
        LDR.W    R0,??DataTable5_37
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable5_35
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        ADDS     R1,R6,R1
        LDRB     R1,[R1, #+2]
        CMP      R0,R1
        BCS.N    ??Search_WhiteBase_12
        LDR.W    R0,??DataTable5_37
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable5_35
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        ADDS     R1,R6,R1
        LDRB     R1,[R1, #+3]
        CMP      R0,R1
        BCS.N    ??Search_WhiteBase_12
        LDR.W    R0,??DataTable5_37
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable5_35
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        ADDS     R1,R6,R1
        LDRB     R1,[R1, #+4]
        CMP      R0,R1
        BCS.N    ??Search_WhiteBase_12
//  512       {
//  513         right_whitebase_searchstart = j;
        LDR.W    R0,??DataTable5_41
        STRB     R6,[R0, #+0]
//  514         break;
        B.N      ??Search_WhiteBase_11
//  515       }
//  516       j++;
??Search_WhiteBase_12:
        ADDS     R6,R6,#+1
        B.N      ??Search_WhiteBase_10
//  517     }
//  518     
//  519     if(right_whitebase_searchstart-MID > MID-left_whitebase_searchstart)
??Search_WhiteBase_11:
        LDR.W    R0,??DataTable5_40
        LDRB     R0,[R0, #+0]
        RSBS     R0,R0,#+78
        LDR.W    R1,??DataTable5_41
        LDRB     R1,[R1, #+0]
        SUBS     R1,R1,#+78
        CMP      R0,R1
        BGE.N    ??Search_WhiteBase_13
//  520     {
//  521       whitebase_searchstart  = left_whitebase_searchstart;
        LDR.W    R0,??DataTable5_40
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable5_39
        STRB     R0,[R1, #+0]
        B.N      ??Search_WhiteBase_6
//  522     }
//  523       
//  524     else
//  525     {
//  526       whitebase_searchstart = right_whitebase_searchstart;
??Search_WhiteBase_13:
        LDR.W    R0,??DataTable5_41
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable5_39
        STRB     R0,[R1, #+0]
//  527     }
//  528   } 
//  529   
//  530   
//  531   
//  532   while( find_whitebase_flag ==0 && current_deal_line < ROW - 1) //基准行的搜索范围从0到ROW-1 
??Search_WhiteBase_6:
        LDR.W    R0,??DataTable5_34
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.W    ??Search_WhiteBase_14
        LDR.W    R0,??DataTable5_32
        LDRB     R0,[R0, #+0]
        CMP      R0,#+49
        BGE.W    ??Search_WhiteBase_14
//  533   {
//  534       //每行的处理清零
//  535       whitepoint_start = whitebase_searchstart;   //uint8 
        LDR.W    R0,??DataTable5_39
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable5_42
        STRB     R0,[R1, #+0]
//  536       //搜索左边的基准边沿/////////////////////////////
//  537        j = whitebase_searchstart;   //有的时候出现前一行的中点在下一行的图像的外面
        LDR.W    R0,??DataTable5_39
        LDRB     R0,[R0, #+0]
        MOVS     R6,R0
//  538        //每次从上一场的基准的中点开始向两边搜索基准行
//  539        while(j >= 3  )//一般为了使得跳变沿更加的明显，采用隔点判断
??Search_WhiteBase_15:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+3
        BLT.N    ??Search_WhiteBase_16
//  540       {
//  541         
//  542           if( whitepoint_start != whitebase_searchstart && f_abs16(j-re_whitepoint_start) > f_abs16(whitepoint_start -re_whitepoint_start) )
        LDR.W    R0,??DataTable5_42
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable5_39
        LDRB     R1,[R1, #+0]
        CMP      R0,R1
        BEQ.N    ??Search_WhiteBase_17
        LDR.W    R0,??DataTable5_42
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable5_43
        LDRB     R1,[R1, #+0]
        SUBS     R0,R0,R1
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       f_abs16
        MOVS     R7,R0
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR.W    R0,??DataTable5_43
        LDRB     R0,[R0, #+0]
        SUBS     R0,R6,R0
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       f_abs16
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        CMP      R7,R0
        BLT.N    ??Search_WhiteBase_16
//  543           {
//  544             break;
//  545           }
//  546           else if(VideoImage1[current_deal_line][j] - VideoImage1[current_deal_line][j-2] > OT 
//  547              && VideoImage1[current_deal_line][j] - VideoImage1[current_deal_line][j-3] > OT
//  548                )
??Search_WhiteBase_17:
        LDR.W    R0,??DataTable5_36
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable5_35
        LDR.W    R2,??DataTable5_32
        LDRB     R2,[R2, #+0]
        MOVS     R3,#+157
        MLA      R1,R3,R2,R1
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDRB     R1,[R6, R1]
        LDR.W    R2,??DataTable5_35
        LDR.W    R3,??DataTable5_32
        LDRB     R3,[R3, #+0]
        MOVS     R7,#+157
        MLA      R2,R7,R3,R2
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        ADDS     R2,R6,R2
        LDRB     R2,[R2, #-2]
        SUBS     R1,R1,R2
        CMP      R0,R1
        BGE.N    ??Search_WhiteBase_18
        LDR.W    R0,??DataTable5_36
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable5_35
        LDR.W    R2,??DataTable5_32
        LDRB     R2,[R2, #+0]
        MOVS     R3,#+157
        MLA      R1,R3,R2,R1
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDRB     R1,[R6, R1]
        LDR.W    R2,??DataTable5_35
        LDR.W    R3,??DataTable5_32
        LDRB     R3,[R3, #+0]
        MOVS     R7,#+157
        MLA      R2,R7,R3,R2
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        ADDS     R2,R6,R2
        LDRB     R2,[R2, #-3]
        SUBS     R1,R1,R2
        CMP      R0,R1
        BGE.N    ??Search_WhiteBase_18
//  549           {//当第一个if不满足的时候说明此时的j到上一场的点的距离一定小于 f_abs16(whitepoint_start -re_whitepoint_start) 
//  550             //所以这里只要遇到了跳变，就给基准行的起始点赋值
//  551                whitepoint_start = j;
        LDR.W    R0,??DataTable5_42
        STRB     R6,[R0, #+0]
//  552           }
//  553           j--;
??Search_WhiteBase_18:
        SUBS     R6,R6,#+1
        B.N      ??Search_WhiteBase_15
//  554       }
//  555       
//  556       if( j == 2  && whitepoint_start == whitebase_searchstart)  //到达边界了，但是还没有对whitepoint_start赋值过，说明没有找到基准的开始点
??Search_WhiteBase_16:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+2
        BNE.N    ??Search_WhiteBase_19
        LDR.W    R0,??DataTable5_42
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable5_39
        LDRB     R1,[R1, #+0]
        CMP      R0,R1
        BNE.N    ??Search_WhiteBase_19
//  557       {
//  558         if(VideoImage1[current_deal_line][j] - VideoImage1[current_deal_line][j-2] > OT)
        LDR.W    R0,??DataTable5_36
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable5_35
        LDR.W    R2,??DataTable5_32
        LDRB     R2,[R2, #+0]
        MOVS     R3,#+157
        MLA      R1,R3,R2,R1
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDRB     R1,[R6, R1]
        LDR.W    R2,??DataTable5_35
        LDR.W    R3,??DataTable5_32
        LDRB     R3,[R3, #+0]
        MOVS     R7,#+157
        MLA      R2,R7,R3,R2
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        ADDS     R2,R6,R2
        LDRB     R2,[R2, #-2]
        SUBS     R1,R1,R2
        CMP      R0,R1
        BGE.N    ??Search_WhiteBase_20
//  559         {
//  560            whitepoint_start = 2; //到达了边界
        MOVS     R0,#+2
        LDR.W    R1,??DataTable5_42
        STRB     R0,[R1, #+0]
        B.N      ??Search_WhiteBase_19
//  561         }
//  562         else if( VideoImage1[current_deal_line][j-1] - VideoImage1[current_deal_line][j-2] > OT)
??Search_WhiteBase_20:
        LDR.W    R0,??DataTable5_36
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable5_35
        LDR.W    R2,??DataTable5_32
        LDRB     R2,[R2, #+0]
        MOVS     R3,#+157
        MLA      R1,R3,R2,R1
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        ADDS     R1,R6,R1
        LDRB     R1,[R1, #-1]
        LDR.W    R2,??DataTable5_35
        LDR.W    R3,??DataTable5_32
        LDRB     R3,[R3, #+0]
        MOVS     R7,#+157
        MLA      R2,R7,R3,R2
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        ADDS     R2,R6,R2
        LDRB     R2,[R2, #-2]
        SUBS     R1,R1,R2
        CMP      R0,R1
        BGE.N    ??Search_WhiteBase_21
//  563         {
//  564            whitepoint_start = 1; //到达了边界
        MOVS     R0,#+1
        LDR.W    R1,??DataTable5_42
        STRB     R0,[R1, #+0]
        B.N      ??Search_WhiteBase_19
//  565         }
//  566         else
//  567         { 
//  568            whitepoint_start = 0;
??Search_WhiteBase_21:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable5_42
        STRB     R0,[R1, #+0]
//  569         }
//  570       }
//  571       //左边搜索结束///////////////////////
//  572       
//  573       //右边搜索开始/////////////////////
//  574       whitepoint_end = whitebase_searchstart;    //uint8
??Search_WhiteBase_19:
        LDR.W    R0,??DataTable5_39
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable5_44
        STRB     R0,[R1, #+0]
//  575       j = whitebase_searchstart;   //每次从上一场的white_refer向两边搜索基准行
        LDR.W    R0,??DataTable5_39
        LDRB     R0,[R0, #+0]
        MOVS     R6,R0
//  576       while( j <= COLUMN-4 )//一般为了使得跳变沿更加的明显，采用隔点判断
??Search_WhiteBase_22:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+154
        BGE.N    ??Search_WhiteBase_23
//  577       {
//  578        
//  579           if( whitepoint_end != whitebase_searchstart && f_abs16(j-re_whitepoint_end) > f_abs16(whitepoint_end -re_whitepoint_end) )
        LDR.W    R0,??DataTable5_44
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable5_39
        LDRB     R1,[R1, #+0]
        CMP      R0,R1
        BEQ.N    ??Search_WhiteBase_24
        LDR.W    R0,??DataTable5_44
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable5_45
        LDRB     R1,[R1, #+0]
        SUBS     R0,R0,R1
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       f_abs16
        MOVS     R7,R0
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR.W    R0,??DataTable5_45
        LDRB     R0,[R0, #+0]
        SUBS     R0,R6,R0
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       f_abs16
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        CMP      R7,R0
        BLT.N    ??Search_WhiteBase_23
//  580           {
//  581              break;
//  582           }//1.不同
//  583           else if(VideoImage1[current_deal_line][j] - VideoImage1[current_deal_line][j+2] > OT
//  584                 && VideoImage1[current_deal_line][j] - VideoImage1[current_deal_line][j+3] > OT)
??Search_WhiteBase_24:
        LDR.W    R0,??DataTable5_36
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable5_35
        LDR.W    R2,??DataTable5_32
        LDRB     R2,[R2, #+0]
        MOVS     R3,#+157
        MLA      R1,R3,R2,R1
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDRB     R1,[R6, R1]
        LDR.W    R2,??DataTable5_35
        LDR.W    R3,??DataTable5_32
        LDRB     R3,[R3, #+0]
        MOVS     R7,#+157
        MLA      R2,R7,R3,R2
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        ADDS     R2,R6,R2
        LDRB     R2,[R2, #+2]
        SUBS     R1,R1,R2
        CMP      R0,R1
        BGE.N    ??Search_WhiteBase_25
        LDR.W    R0,??DataTable5_36
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable5_35
        LDR.W    R2,??DataTable5_32
        LDRB     R2,[R2, #+0]
        MOVS     R3,#+157
        MLA      R1,R3,R2,R1
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDRB     R1,[R6, R1]
        LDR.W    R2,??DataTable5_35
        LDR.W    R3,??DataTable5_32
        LDRB     R3,[R3, #+0]
        MOVS     R7,#+157
        MLA      R2,R7,R3,R2
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        ADDS     R2,R6,R2
        LDRB     R2,[R2, #+3]
        SUBS     R1,R1,R2
        CMP      R0,R1
        BGE.N    ??Search_WhiteBase_25
//  585           {
//  586              whitepoint_end = j;
        LDR.W    R0,??DataTable5_44
        STRB     R6,[R0, #+0]
//  587           } 
//  588           j++;
??Search_WhiteBase_25:
        ADDS     R6,R6,#+1
        B.N      ??Search_WhiteBase_22
//  589       } 
//  590       
//  591       if(j == COLUMN-3  &&   whitepoint_end == whitebase_searchstart)
??Search_WhiteBase_23:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+154
        BNE.N    ??Search_WhiteBase_26
        LDR.W    R0,??DataTable5_44
        LDRB     R0,[R0, #+0]
        LDR.N    R1,??DataTable5_39
        LDRB     R1,[R1, #+0]
        CMP      R0,R1
        BNE.N    ??Search_WhiteBase_26
//  592       {
//  593          if( VideoImage1[current_deal_line][j] - VideoImage1[current_deal_line][j+2] > OT)
        LDR.N    R0,??DataTable5_36
        LDRB     R0,[R0, #+0]
        LDR.N    R1,??DataTable5_35
        LDR.N    R2,??DataTable5_32
        LDRB     R2,[R2, #+0]
        MOVS     R3,#+157
        MLA      R1,R3,R2,R1
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDRB     R1,[R6, R1]
        LDR.N    R2,??DataTable5_35
        LDR.N    R3,??DataTable5_32
        LDRB     R3,[R3, #+0]
        MOVS     R7,#+157
        MLA      R2,R7,R3,R2
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        ADDS     R2,R6,R2
        LDRB     R2,[R2, #+2]
        SUBS     R1,R1,R2
        CMP      R0,R1
        BGE.N    ??Search_WhiteBase_27
//  594          {
//  595            whitepoint_end = COLUMN-3;
        MOVS     R0,#+154
        LDR.N    R1,??DataTable5_44
        STRB     R0,[R1, #+0]
        B.N      ??Search_WhiteBase_26
//  596          }
//  597          else if( VideoImage1[current_deal_line][j+1] - VideoImage1[current_deal_line][j+2] > OT)
??Search_WhiteBase_27:
        LDR.N    R0,??DataTable5_36
        LDRB     R0,[R0, #+0]
        LDR.N    R1,??DataTable5_35
        LDR.N    R2,??DataTable5_32
        LDRB     R2,[R2, #+0]
        MOVS     R3,#+157
        MLA      R1,R3,R2,R1
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        ADDS     R1,R6,R1
        LDRB     R1,[R1, #+1]
        LDR.N    R2,??DataTable5_35
        LDR.N    R3,??DataTable5_32
        LDRB     R3,[R3, #+0]
        MOVS     R7,#+157
        MLA      R2,R7,R3,R2
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        ADDS     R2,R6,R2
        LDRB     R2,[R2, #+2]
        SUBS     R1,R1,R2
        CMP      R0,R1
        BGE.N    ??Search_WhiteBase_28
//  598          {
//  599            whitepoint_end = COLUMN-2;
        MOVS     R0,#+155
        LDR.N    R1,??DataTable5_44
        STRB     R0,[R1, #+0]
        B.N      ??Search_WhiteBase_26
//  600          }
//  601          else
//  602          {
//  603            whitepoint_end = COLUMN-1;
??Search_WhiteBase_28:
        MOVS     R0,#+156
        LDR.N    R1,??DataTable5_44
        STRB     R0,[R1, #+0]
//  604          }
//  605       }
//  606       //右边搜索结束///////////////////////
//  607       //左右边沿线的搜索方法用的是跟踪的搜索方法，目的是只想找到一行可靠的基准行的信息
//  608       
//  609       
//  610       //无论这一行是否符合要求，始终记录赛道信息
//  611 
//  612         left_black[current_deal_line] = whitepoint_start;   //记录左黑线位置 (若为0，很可能说明左边黑线丢失，即车身偏右)
??Search_WhiteBase_26:
        LDR.N    R0,??DataTable5_42
        LDRB     R0,[R0, #+0]
        LDR.N    R1,??DataTable5_3
        LDR.N    R2,??DataTable5_32
        LDRB     R2,[R2, #+0]
        STRB     R0,[R2, R1]
//  613         right_black[current_deal_line] = whitepoint_end;    //记录右黑线位置(若为COLUMN，很可能说明右边黑线丢失,即车身偏左)
        LDR.N    R0,??DataTable5_44
        LDRB     R0,[R0, #+0]
        LDR.N    R1,??DataTable5_4
        LDR.N    R2,??DataTable5_32
        LDRB     R2,[R2, #+0]
        STRB     R0,[R2, R1]
//  614         /*对于第一行的状态的判断有两种想法，第一：无论第一行是什么状态始终认为没有丢点 第二：将到达边沿的点视为丢点
//  615         此外这里需要对上面的三个值进行一定的修正，并且在这里将基准行上的状态设定为没有丢点（即使有时候到达了边界）。
//  616         （否则，这里的跟踪搜索的优势就没有了）
//  617         */
//  618         if(left_black[current_deal_line] == 0 && right_black[current_deal_line] < COLUMN - 1 &&  (right_black[current_deal_line] - left_black[current_deal_line]) > 155)  
        LDR.N    R0,??DataTable5_3
        LDR.N    R1,??DataTable5_32
        LDRB     R1,[R1, #+0]
        LDRB     R0,[R1, R0]
        CMP      R0,#+0
        BNE.N    ??Search_WhiteBase_29
        LDR.N    R0,??DataTable5_4
        LDR.N    R1,??DataTable5_32
        LDRB     R1,[R1, #+0]
        LDRB     R0,[R1, R0]
        CMP      R0,#+156
        BGE.N    ??Search_WhiteBase_29
        LDR.N    R0,??DataTable5_4
        LDR.N    R1,??DataTable5_32
        LDRB     R1,[R1, #+0]
        LDRB     R0,[R1, R0]
        LDR.N    R1,??DataTable5_3
        LDR.N    R2,??DataTable5_32
        LDRB     R2,[R2, #+0]
        LDRB     R1,[R2, R1]
        SUBS     R0,R0,R1
        CMP      R0,#+156
        BLT.N    ??Search_WhiteBase_29
//  619         {  //表示左边到达边界 丢点                                                               //////////////////////////////////////？？？？？？？/////////////////////////////////////
//  620           
//  621           left_black[current_deal_line] = re_whitepoint_start;         
        LDR.N    R0,??DataTable5_43
        LDRB     R0,[R0, #+0]
        LDR.N    R1,??DataTable5_3
        LDR.N    R2,??DataTable5_32
        LDRB     R2,[R2, #+0]
        STRB     R0,[R2, R1]
//  622           center_white[current_deal_line] = (left_black[current_deal_line] +  right_black[current_deal_line]) / 2; 
        LDR.N    R0,??DataTable5_3
        LDR.N    R1,??DataTable5_32
        LDRB     R1,[R1, #+0]
        LDRB     R0,[R1, R0]
        LDR.N    R1,??DataTable5_4
        LDR.N    R2,??DataTable5_32
        LDRB     R2,[R2, #+0]
        LDRB     R1,[R2, R1]
        ADDS     R0,R1,R0
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        LDR.N    R1,??DataTable5_5
        LDR.N    R2,??DataTable5_32
        LDRB     R2,[R2, #+0]
        STRB     R0,[R2, R1]
        B.N      ??Search_WhiteBase_30
//  623         }
//  624         else if(right_black[current_deal_line] == COLUMN - 1 && left_black[current_deal_line] > 0 &&  (right_black[current_deal_line] - left_black[current_deal_line]) > 155)
??Search_WhiteBase_29:
        LDR.N    R0,??DataTable5_4
        LDR.N    R1,??DataTable5_32
        LDRB     R1,[R1, #+0]
        LDRB     R0,[R1, R0]
        CMP      R0,#+156
        BNE.N    ??Search_WhiteBase_31
        LDR.N    R0,??DataTable5_3
        LDR.N    R1,??DataTable5_32
        LDRB     R1,[R1, #+0]
        LDRB     R0,[R1, R0]
        CMP      R0,#+0
        BEQ.N    ??Search_WhiteBase_31
        LDR.N    R0,??DataTable5_4
        LDR.N    R1,??DataTable5_32
        LDRB     R1,[R1, #+0]
        LDRB     R0,[R1, R0]
        LDR.N    R1,??DataTable5_3
        LDR.N    R2,??DataTable5_32
        LDRB     R2,[R2, #+0]
        LDRB     R1,[R2, R1]
        SUBS     R0,R0,R1
        CMP      R0,#+156
        BLT.N    ??Search_WhiteBase_31
//  625         { //表示右边到达边界 丢点
//  626            right_black[current_deal_line] = re_whitepoint_end;
        LDR.N    R0,??DataTable5_45
        LDRB     R0,[R0, #+0]
        LDR.N    R1,??DataTable5_4
        LDR.N    R2,??DataTable5_32
        LDRB     R2,[R2, #+0]
        STRB     R0,[R2, R1]
//  627          center_white[current_deal_line] = (left_black[current_deal_line] +  right_black[current_deal_line]) / 2;  //记录中心点,大于MID说明车身偏左，反之，说明车身偏右
        LDR.N    R0,??DataTable5_3
        LDR.N    R1,??DataTable5_32
        LDRB     R1,[R1, #+0]
        LDRB     R0,[R1, R0]
        LDR.N    R1,??DataTable5_4
        LDR.N    R2,??DataTable5_32
        LDRB     R2,[R2, #+0]
        LDRB     R1,[R2, R1]
        ADDS     R0,R1,R0
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        LDR.N    R1,??DataTable5_5
        LDR.N    R2,??DataTable5_32
        LDRB     R2,[R2, #+0]
        STRB     R0,[R2, R1]
        B.N      ??Search_WhiteBase_30
//  628         }
//  629         else if(right_black[current_deal_line] == COLUMN - 1 && left_black[current_deal_line] == 0 )
??Search_WhiteBase_31:
        LDR.N    R0,??DataTable5_4
        LDR.N    R1,??DataTable5_32
        LDRB     R1,[R1, #+0]
        LDRB     R0,[R1, R0]
        CMP      R0,#+156
        BNE.N    ??Search_WhiteBase_32
        LDR.N    R0,??DataTable5_3
        LDR.N    R1,??DataTable5_32
        LDRB     R1,[R1, #+0]
        LDRB     R0,[R1, R0]
        CMP      R0,#+0
        BNE.N    ??Search_WhiteBase_32
//  630         {//表示两边到达边界 丢点
//  631           left_black[current_deal_line] = re_whitepoint_start;
        LDR.N    R0,??DataTable5_43
        LDRB     R0,[R0, #+0]
        LDR.N    R1,??DataTable5_3
        LDR.N    R2,??DataTable5_32
        LDRB     R2,[R2, #+0]
        STRB     R0,[R2, R1]
//  632           right_black[current_deal_line] = re_whitepoint_end;
        LDR.N    R0,??DataTable5_45
        LDRB     R0,[R0, #+0]
        LDR.N    R1,??DataTable5_4
        LDR.N    R2,??DataTable5_32
        LDRB     R2,[R2, #+0]
        STRB     R0,[R2, R1]
//  633           center_white[current_deal_line] = re_white_refer;
        LDR.N    R0,??DataTable5_38
        LDRB     R0,[R0, #+0]
        LDR.N    R1,??DataTable5_5
        LDR.N    R2,??DataTable5_32
        LDRB     R2,[R2, #+0]
        STRB     R0,[R2, R1]
        B.N      ??Search_WhiteBase_30
//  634         }
//  635         //说明由于前三行的信息一般不做处理默认为左右边沿都找到了的点 
//  636         else
//  637         {  //表示两边都没有丢点
//  638           center_white[current_deal_line] = (left_black[current_deal_line] +  right_black[current_deal_line]) / 2;  //记录中心点,大于MID说明车身偏左，反之，说明车身偏右
??Search_WhiteBase_32:
        LDR.N    R0,??DataTable5_3
        LDR.N    R1,??DataTable5_32
        LDRB     R1,[R1, #+0]
        LDRB     R0,[R1, R0]
        LDR.N    R1,??DataTable5_4
        LDR.N    R2,??DataTable5_32
        LDRB     R2,[R2, #+0]
        LDRB     R1,[R2, R1]
        ADDS     R0,R1,R0
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        LDR.N    R1,??DataTable5_5
        LDR.N    R2,??DataTable5_32
        LDRB     R2,[R2, #+0]
        STRB     R0,[R2, R1]
//  639         }
//  640         //处理后重新得到图像搜索的开始结束及中心值
//  641       whitepoint_start = left_black[current_deal_line];
??Search_WhiteBase_30:
        LDR.N    R0,??DataTable5_3
        LDR.N    R1,??DataTable5_32
        LDRB     R1,[R1, #+0]
        LDRB     R0,[R1, R0]
        LDR.N    R1,??DataTable5_42
        STRB     R0,[R1, #+0]
//  642       whitepoint_end =  right_black[current_deal_line];
        LDR.N    R0,??DataTable5_4
        LDR.N    R1,??DataTable5_32
        LDRB     R1,[R1, #+0]
        LDRB     R0,[R1, R0]
        LDR.N    R1,??DataTable5_44
        STRB     R0,[R1, #+0]
//  643       white_refer = center_white[current_deal_line];
        LDR.N    R0,??DataTable5_5
        LDR.N    R1,??DataTable5_32
        LDRB     R1,[R1, #+0]
        LDRB     R0,[R1, R0]
        LDR.N    R1,??DataTable5_46
        STRB     R0,[R1, #+0]
//  644       
//  645         //加上一个赛道的宽度的限制
//  646        if(whitepoint_end - whitepoint_start > MIN_WHITEBASE_POINT ) //这个值设置为20 
        LDR.N    R0,??DataTable5_44
        LDRB     R0,[R0, #+0]
        LDR.N    R1,??DataTable5_42
        LDRB     R1,[R1, #+0]
        SUBS     R0,R0,R1
        CMP      R0,#+31
        BLT.N    ??Search_WhiteBase_33
//  647         {
//  648           find_whitebase_flag = 1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable5_34
        STRB     R0,[R1, #+0]
//  649           re_white_refer = white_refer;  //保存本场图像的信息
        LDR.N    R0,??DataTable5_46
        LDRB     R0,[R0, #+0]
        LDR.N    R1,??DataTable5_38
        STRB     R0,[R1, #+0]
//  650           re_whitepoint_start = whitepoint_start;
        LDR.N    R0,??DataTable5_42
        LDRB     R0,[R0, #+0]
        LDR.N    R1,??DataTable5_43
        STRB     R0,[R1, #+0]
//  651           re_whitepoint_end  = whitepoint_end ;
        LDR.N    R0,??DataTable5_44
        LDRB     R0,[R0, #+0]
        LDR.N    R1,??DataTable5_45
        STRB     R0,[R1, #+0]
//  652           bottom_whitebase = current_deal_line;//记录基准行
        LDR.N    R0,??DataTable5_32
        LDRB     R0,[R0, #+0]
        LDR.N    R1,??DataTable5_33
        STRB     R0,[R1, #+0]
//  653           Row_state[bottom_whitebase] = 3; //行的状态标志位
        MOVS     R0,#+3
        LDR.N    R1,??DataTable5_6
        LDR.N    R2,??DataTable5_33
        LDRB     R2,[R2, #+0]
        STRB     R0,[R2, R1]
        B.N      ??Search_WhiteBase_6
//  654         }
//  655         else
//  656         {
//  657           find_whitebase_flag = 0;
??Search_WhiteBase_33:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable5_34
        STRB     R0,[R1, #+0]
//  658           current_deal_line++;
        LDR.N    R0,??DataTable5_32
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable5_32
        STRB     R0,[R1, #+0]
        B.N      ??Search_WhiteBase_6
//  659         }
//  660         
//  661   }//while循环的结束
//  662   if(bottom_whitebase > 0)
??Search_WhiteBase_14:
        LDR.N    R0,??DataTable5_33
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Search_WhiteBase_34
//  663   {
//  664      for( i = 0 ; i < bottom_whitebase ;i++)////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        MOVS     R0,#+0
        MOVS     R5,R0
??Search_WhiteBase_35:
        LDR.N    R0,??DataTable5_33
        LDRB     R0,[R0, #+0]
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,R0
        BCS.N    ??Search_WhiteBase_34
//  665      {//对之前的行进行标记
//  666         center_white[i] = MID;  
        MOVS     R0,#+78
        LDR.N    R1,??DataTable5_5
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        STRB     R0,[R5, R1]
//  667         left_black[i] = MID - 2;   
        MOVS     R0,#+76
        LDR.N    R1,??DataTable5_3
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        STRB     R0,[R5, R1]
//  668         right_black[i] = MID + 2;  
        MOVS     R0,#+80
        LDR.N    R1,??DataTable5_4
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        STRB     R0,[R5, R1]
//  669      }
        ADDS     R5,R5,#+1
        B.N      ??Search_WhiteBase_35
//  670   }
//  671 }//
??Search_WhiteBase_34:
        POP      {R0,R4-R7,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5:
        DC32     0x40048038

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_1:
        DC32     0x4004a058

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_2:
        DC32     0x400ff054

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_3:
        DC32     left_black

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_4:
        DC32     right_black

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_5:
        DC32     center_white

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_6:
        DC32     Row_state

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_7:
        DC32     start_stop_count

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_8:
        DC32     ramp_dis_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_9:
        DC32     ramp_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_10:
        DC32     0x4004d000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_11:
        DC32     0x4004d004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_12:
        DC32     0x4004d008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_13:
        DC32     0x4004d00c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_14:
        DC32     0x4004d010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_15:
        DC32     0x4004d014

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_16:
        DC32     0x4004d018

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_17:
        DC32     0x4004d01c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_18:
        DC32     0x400ff114

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_19:
        DC32     0x4004a050

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_20:
        DC32     0xffefff00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_21:
        DC32     0x4009c800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_22:
        DC32     GYRO_STATIC

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_23:
        DC32     0x40240000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_24:
        DC32     jump_stop

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_25:
        DC32     WHITE_BLACK_OT

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_26:
        DC32     VideoImage2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_27:
        DC32     counter

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_28:
        DC32     ting

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_29:
        DC32     da

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_30:
        DC32     g_nCarAngle

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_31:
        DC32     fuxiao

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_32:
        DC32     current_deal_line

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_33:
        DC32     bottom_whitebase

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_34:
        DC32     find_whitebase_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_35:
        DC32     VideoImage1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_36:
        DC32     OT

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_37:
        DC32     BASE_OT

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_38:
        DC32     re_white_refer

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_39:
        DC32     whitebase_searchstart

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_40:
        DC32     left_whitebase_searchstart

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_41:
        DC32     right_whitebase_searchstart

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_42:
        DC32     whitepoint_start

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_43:
        DC32     re_whitepoint_start

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_44:
        DC32     whitepoint_end

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_45:
        DC32     re_whitepoint_end

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_46:
        DC32     white_refer
//  672 
//  673 //------------------------由基准线定出的两边黑线为基准，找出赛道边缘-----------------------// 
//  674 /*本函数的功能定义为找线，为了处理在某些断点的情况能继续在前方找到边沿线，
//  675 只是对于边沿线进行初步的虚构，真正的对赛道两边沿线的处理虚构，主要由下一个函数完成*/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  676 void Search_BlackEdge(void)  //0509   
//  677 {   
Search_BlackEdge:
        PUSH     {R3-R9,LR}
//  678   int16 i = 0,j = 0,n = 0, k = 0;
        MOVS     R7,#+0
        MOVS     R8,#+0
        MOVS     R4,#+0
        MOVS     R5,#+0
//  679   int16 un_lost_hang = bottom_whitebase;//这两个变量是用来跟踪记录最近的一行的没有丢点的行，以便于对下一行的状态进行准确的判断.初始值为bottom_whitebase因为第bottom_whitebase行始终判断为没有丢点
        LDR.W    R0,??DataTable6
        LDRB     R6,[R0, #+0]
//  680   deal_start_line = bottom_whitebase + 1;  
        LDR.W    R0,??DataTable6
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable6_1
        STRB     R0,[R1, #+0]
//  681   top_whiteline = ROW -1;
        MOVS     R0,#+49
        LDR.W    R1,??DataTable6_2
        STRB     R0,[R1, #+0]
//  682   hang_search_start = white_refer;  //从基准行的中点进行扫描 
        LDR.W    R0,??DataTable6_3
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable6_4
        STRB     R0,[R1, #+0]
//  683    
//  684   for(i = deal_start_line ; i < ROW ;i++)//对状态标志进行初始化
        LDR.W    R0,??DataTable6_1
        LDRB     R0,[R0, #+0]
        MOVS     R7,R0
??Search_BlackEdge_0:
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        CMP      R7,#+50
        BGE.N    ??Search_BlackEdge_1
//  685     {
//  686       Row_state[i] = 3;
        MOVS     R0,#+3
        LDR.W    R1,??DataTable6_5
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        STRB     R0,[R7, R1]
//  687     }
        ADDS     R7,R7,#+1
        B.N      ??Search_BlackEdge_0
//  688   
//  689   for(i = deal_start_line ;i < ROW;i++) 
??Search_BlackEdge_1:
        LDR.W    R0,??DataTable6_1
        LDRB     R0,[R0, #+0]
        MOVS     R7,R0
??Search_BlackEdge_2:
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        CMP      R7,#+50
        BGE.W    ??Search_BlackEdge_3
//  690   {
//  691     //////////////////左右的搜索开始///////////////////////
//  692     //左边搜索
//  693     j = hang_search_start;
        LDR.W    R0,??DataTable6_4
        LDRB     R0,[R0, #+0]
        MOV      R8,R0
//  694     left_black[i] = hang_search_start;
        LDR.W    R0,??DataTable6_4
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable6_6
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        STRB     R0,[R7, R1]
//  695     while(j >= 2)
??Search_BlackEdge_4:
        SXTH     R8,R8            ;; SignExt  R8,R8,#+16,#+16
        CMP      R8,#+2
        BLT.W    ??Search_BlackEdge_5
//  696     {     
//  697       
//  698       if(VideoImage1[i][j] - VideoImage1[i][j-2] > OT
//  699          && f_abs16(VideoImage1[i][j]-VideoImage1[i][j+1]) < OT && f_abs16(VideoImage1[i][j+1]-VideoImage1[i][j+2]) < OT && VideoImage1[i][j+2]-VideoImage1[i][j+3] < OT)  //滤除内部的边沿噪点
        LDR.W    R0,??DataTable6_7
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable6_8
        MOVS     R2,#+157
        SMLABB   R1,R7,R2,R1
        SXTH     R8,R8            ;; SignExt  R8,R8,#+16,#+16
        LDRB     R1,[R8, R1]
        LDR.W    R2,??DataTable6_8
        MOVS     R3,#+157
        SMLABB   R2,R7,R3,R2
        SXTH     R8,R8            ;; SignExt  R8,R8,#+16,#+16
        ADDS     R2,R8,R2
        LDRB     R2,[R2, #-2]
        SUBS     R1,R1,R2
        CMP      R0,R1
        BGE.N    ??Search_BlackEdge_6
        LDR.W    R0,??DataTable6_8
        MOVS     R1,#+157
        SMLABB   R0,R7,R1,R0
        SXTH     R8,R8            ;; SignExt  R8,R8,#+16,#+16
        LDRB     R0,[R8, R0]
        LDR.W    R1,??DataTable6_8
        MOVS     R2,#+157
        SMLABB   R1,R7,R2,R1
        SXTH     R8,R8            ;; SignExt  R8,R8,#+16,#+16
        ADDS     R1,R8,R1
        LDRB     R1,[R1, #+1]
        SUBS     R0,R0,R1
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       f_abs16
        LDR.W    R1,??DataTable6_7
        LDRB     R1,[R1, #+0]
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R0,R1
        BGE.N    ??Search_BlackEdge_6
        LDR.W    R0,??DataTable6_8
        MOVS     R1,#+157
        SMLABB   R0,R7,R1,R0
        SXTH     R8,R8            ;; SignExt  R8,R8,#+16,#+16
        ADDS     R0,R8,R0
        LDRB     R0,[R0, #+1]
        LDR.W    R1,??DataTable6_8
        MOVS     R2,#+157
        SMLABB   R1,R7,R2,R1
        SXTH     R8,R8            ;; SignExt  R8,R8,#+16,#+16
        ADDS     R1,R8,R1
        LDRB     R1,[R1, #+2]
        SUBS     R0,R0,R1
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       f_abs16
        LDR.W    R1,??DataTable6_7
        LDRB     R1,[R1, #+0]
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R0,R1
        BGE.N    ??Search_BlackEdge_6
        LDR.W    R0,??DataTable6_8
        MOVS     R1,#+157
        SMLABB   R0,R7,R1,R0
        SXTH     R8,R8            ;; SignExt  R8,R8,#+16,#+16
        ADDS     R0,R8,R0
        LDRB     R0,[R0, #+2]
        LDR.W    R1,??DataTable6_8
        MOVS     R2,#+157
        SMLABB   R1,R7,R2,R1
        SXTH     R8,R8            ;; SignExt  R8,R8,#+16,#+16
        ADDS     R1,R8,R1
        LDRB     R1,[R1, #+3]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable6_7
        LDRB     R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??Search_BlackEdge_6
//  700         {
//  701           if(f_abs16(j - left_black[i-1]) < f_abs16(left_black[i] - left_black[i-1]))//滤除干扰
        LDR.W    R0,??DataTable6_6
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        ADDS     R0,R7,R0
        LDRB     R0,[R0, #-1]
        SUBS     R0,R8,R0
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       f_abs16
        MOV      R9,R0
        LDR.W    R0,??DataTable6_6
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        LDRB     R0,[R7, R0]
        LDR.W    R1,??DataTable6_6
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        ADDS     R1,R7,R1
        LDRB     R1,[R1, #-1]
        SUBS     R0,R0,R1
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       f_abs16
        SXTH     R9,R9            ;; SignExt  R9,R9,#+16,#+16
        CMP      R9,R0
        BGE.N    ??Search_BlackEdge_6
//  702            left_black[i] = j;
        LDR.W    R0,??DataTable6_6
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        STRB     R8,[R7, R0]
//  703         } 
//  704        if(left_black[i] != hang_search_start && (f_abs16(j - left_black[i-1]) > f_abs16(left_black[i] - left_black[i-1])
//  705                                                  || (f_abs16(left_black[i] - left_black[i-1])  < 5 && j<=left_black[i-1] )))
??Search_BlackEdge_6:
        LDR.W    R0,??DataTable6_6
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        LDRB     R0,[R7, R0]
        LDR.W    R1,??DataTable6_4
        LDRB     R1,[R1, #+0]
        CMP      R0,R1
        BEQ.N    ??Search_BlackEdge_7
        LDR.W    R0,??DataTable6_6
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        LDRB     R0,[R7, R0]
        LDR.W    R1,??DataTable6_6
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        ADDS     R1,R7,R1
        LDRB     R1,[R1, #-1]
        SUBS     R0,R0,R1
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       f_abs16
        MOV      R9,R0
        LDR.W    R0,??DataTable6_6
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        ADDS     R0,R7,R0
        LDRB     R0,[R0, #-1]
        SUBS     R0,R8,R0
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       f_abs16
        SXTH     R9,R9            ;; SignExt  R9,R9,#+16,#+16
        CMP      R9,R0
        BLT.N    ??Search_BlackEdge_8
        LDR.W    R0,??DataTable6_6
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        LDRB     R0,[R7, R0]
        LDR.W    R1,??DataTable6_6
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        ADDS     R1,R7,R1
        LDRB     R1,[R1, #-1]
        SUBS     R0,R0,R1
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       f_abs16
        CMP      R0,#+5
        BGE.N    ??Search_BlackEdge_7
        LDR.W    R0,??DataTable6_6
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        ADDS     R0,R7,R0
        LDRB     R0,[R0, #-1]
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        SXTH     R8,R8            ;; SignExt  R8,R8,#+16,#+16
        CMP      R0,R8
        BLT.N    ??Search_BlackEdge_7
//  706        {
//  707         break;
??Search_BlackEdge_8:
        B.N      ??Search_BlackEdge_5
//  708        }//减少计算量，搜索到最近的一个跳变点，则停止
//  709      
//  710          //当前一个状态是断点的状态时，这个时候当在内部搜索到了跳变沿的时候，则就不进行搜索，若是没有搜到，
//  711           //则再到赛道的两边进行搜索
//  712        if(Row_state[i-1] == 0 || Row_state[i-1] == 2)//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
??Search_BlackEdge_7:
        LDR.W    R0,??DataTable6_5
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        ADDS     R0,R7,R0
        LDRB     R0,[R0, #-1]
        CMP      R0,#+0
        BEQ.N    ??Search_BlackEdge_9
        LDR.W    R0,??DataTable6_5
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        ADDS     R0,R7,R0
        LDRB     R0,[R0, #-1]
        CMP      R0,#+2
        BNE.N    ??Search_BlackEdge_10
//  713           {
//  714             if( j <  left_black[i - 1]  && left_black[i] != hang_search_start) //前一行为断点状态时，搜索到了点之后，则不允许继续的搜索
??Search_BlackEdge_9:
        LDR.W    R0,??DataTable6_6
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        ADDS     R0,R7,R0
        LDRB     R0,[R0, #-1]
        SXTH     R8,R8            ;; SignExt  R8,R8,#+16,#+16
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R8,R0
        BGE.N    ??Search_BlackEdge_10
        LDR.W    R0,??DataTable6_6
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        LDRB     R0,[R7, R0]
        LDR.W    R1,??DataTable6_4
        LDRB     R1,[R1, #+0]
        CMP      R0,R1
        BNE.N    ??Search_BlackEdge_5
//  715              {
//  716               break; 
//  717             }
//  718           }
//  719           j--;
??Search_BlackEdge_10:
        SUBS     R8,R8,#+1
        B.N      ??Search_BlackEdge_4
//  720     }      //搜索左边沿线的while结束
//  721     //对左边沿线的出界判定
//  722     if(j == 1 && left_black[i] == hang_search_start)      //到达边界了，但是边沿线没有改变时，在搜索范围内没有找到跳变点，则认为是图像依然丢点
??Search_BlackEdge_5:
        SXTH     R8,R8            ;; SignExt  R8,R8,#+16,#+16
        CMP      R8,#+1
        BNE.N    ??Search_BlackEdge_11
        LDR.W    R0,??DataTable6_6
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        LDRB     R0,[R7, R0]
        LDR.W    R1,??DataTable6_4
        LDRB     R1,[R1, #+0]
        CMP      R0,R1
        BNE.N    ??Search_BlackEdge_11
//  723     {
//  724       if(VideoImage1[i][j] - VideoImage1[i][j-1] > OT)
        LDR.W    R0,??DataTable6_7
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable6_8
        MOVS     R2,#+157
        SMLABB   R1,R7,R2,R1
        SXTH     R8,R8            ;; SignExt  R8,R8,#+16,#+16
        LDRB     R1,[R8, R1]
        LDR.W    R2,??DataTable6_8
        MOVS     R3,#+157
        SMLABB   R2,R7,R3,R2
        SXTH     R8,R8            ;; SignExt  R8,R8,#+16,#+16
        ADDS     R2,R8,R2
        LDRB     R2,[R2, #-1]
        SUBS     R1,R1,R2
        CMP      R0,R1
        BGE.N    ??Search_BlackEdge_12
//  725          left_black[i] = 1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable6_6
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        STRB     R0,[R7, R1]
        B.N      ??Search_BlackEdge_11
//  726       else
//  727         left_black[i] = 0;
??Search_BlackEdge_12:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable6_6
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        STRB     R0,[R7, R1]
//  728     }
//  729 
//  730   
//  731     //右边搜索
//  732     j = hang_search_start;
??Search_BlackEdge_11:
        LDR.W    R0,??DataTable6_4
        LDRB     R0,[R0, #+0]
        MOV      R8,R0
//  733     right_black[i] = hang_search_start;
        LDR.W    R0,??DataTable6_4
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable6_9
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        STRB     R0,[R7, R1]
//  734     
//  735     while( j <=COLUMN-3 )
??Search_BlackEdge_13:
        SXTH     R8,R8            ;; SignExt  R8,R8,#+16,#+16
        CMP      R8,#+155
        BGE.W    ??Search_BlackEdge_14
//  736     { 
//  737       if( VideoImage1[i][j] - VideoImage1[i][j+2] > OT 
//  738          && f_abs16(VideoImage1[i][j]-VideoImage1[i][j-1]) < OT && f_abs16(VideoImage1[i][j-1]-VideoImage1[i][j-2]) < OT && VideoImage1[i][j-2]-VideoImage1[i][j-3] < OT)  //滤除边沿噪点
        LDR.W    R0,??DataTable6_7
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable6_8
        MOVS     R2,#+157
        SMLABB   R1,R7,R2,R1
        SXTH     R8,R8            ;; SignExt  R8,R8,#+16,#+16
        LDRB     R1,[R8, R1]
        LDR.W    R2,??DataTable6_8
        MOVS     R3,#+157
        SMLABB   R2,R7,R3,R2
        SXTH     R8,R8            ;; SignExt  R8,R8,#+16,#+16
        ADDS     R2,R8,R2
        LDRB     R2,[R2, #+2]
        SUBS     R1,R1,R2
        CMP      R0,R1
        BGE.N    ??Search_BlackEdge_15
        LDR.W    R0,??DataTable6_8
        MOVS     R1,#+157
        SMLABB   R0,R7,R1,R0
        SXTH     R8,R8            ;; SignExt  R8,R8,#+16,#+16
        LDRB     R0,[R8, R0]
        LDR.W    R1,??DataTable6_8
        MOVS     R2,#+157
        SMLABB   R1,R7,R2,R1
        SXTH     R8,R8            ;; SignExt  R8,R8,#+16,#+16
        ADDS     R1,R8,R1
        LDRB     R1,[R1, #-1]
        SUBS     R0,R0,R1
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       f_abs16
        LDR.W    R1,??DataTable6_7
        LDRB     R1,[R1, #+0]
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R0,R1
        BGE.N    ??Search_BlackEdge_15
        LDR.W    R0,??DataTable6_8
        MOVS     R1,#+157
        SMLABB   R0,R7,R1,R0
        SXTH     R8,R8            ;; SignExt  R8,R8,#+16,#+16
        ADDS     R0,R8,R0
        LDRB     R0,[R0, #-1]
        LDR.W    R1,??DataTable6_8
        MOVS     R2,#+157
        SMLABB   R1,R7,R2,R1
        SXTH     R8,R8            ;; SignExt  R8,R8,#+16,#+16
        ADDS     R1,R8,R1
        LDRB     R1,[R1, #-2]
        SUBS     R0,R0,R1
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       f_abs16
        LDR.W    R1,??DataTable6_7
        LDRB     R1,[R1, #+0]
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R0,R1
        BGE.N    ??Search_BlackEdge_15
        LDR.W    R0,??DataTable6_8
        MOVS     R1,#+157
        SMLABB   R0,R7,R1,R0
        SXTH     R8,R8            ;; SignExt  R8,R8,#+16,#+16
        ADDS     R0,R8,R0
        LDRB     R0,[R0, #-2]
        LDR.W    R1,??DataTable6_8
        MOVS     R2,#+157
        SMLABB   R1,R7,R2,R1
        SXTH     R8,R8            ;; SignExt  R8,R8,#+16,#+16
        ADDS     R1,R8,R1
        LDRB     R1,[R1, #-3]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable6_7
        LDRB     R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??Search_BlackEdge_15
//  739         {
//  740           if(f_abs16(j-right_black[i-1]) < f_abs16(right_black[i] - right_black[i-1]))
        LDR.W    R0,??DataTable6_9
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        ADDS     R0,R7,R0
        LDRB     R0,[R0, #-1]
        SUBS     R0,R8,R0
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       f_abs16
        MOV      R9,R0
        LDR.W    R0,??DataTable6_9
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        LDRB     R0,[R7, R0]
        LDR.W    R1,??DataTable6_9
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        ADDS     R1,R7,R1
        LDRB     R1,[R1, #-1]
        SUBS     R0,R0,R1
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       f_abs16
        SXTH     R9,R9            ;; SignExt  R9,R9,#+16,#+16
        CMP      R9,R0
        BGE.N    ??Search_BlackEdge_15
//  741           {
//  742                 right_black[i] = j ;
        LDR.W    R0,??DataTable6_9
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        STRB     R8,[R7, R0]
//  743           }
//  744         }
//  745       if(right_black[i] != hang_search_start &&( f_abs16(j-right_black[i-1]) > f_abs16(right_black[i] - right_black[i-1])
//  746          ||(f_abs16(right_black[i] - right_black[i-1])<5 && j== right_black[i-1] ) ))//在附近搜索到了点，只要到达了前一行的列位置，则停止
??Search_BlackEdge_15:
        LDR.W    R0,??DataTable6_9
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        LDRB     R0,[R7, R0]
        LDR.W    R1,??DataTable6_4
        LDRB     R1,[R1, #+0]
        CMP      R0,R1
        BEQ.N    ??Search_BlackEdge_16
        LDR.W    R0,??DataTable6_9
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        LDRB     R0,[R7, R0]
        LDR.W    R1,??DataTable6_9
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        ADDS     R1,R7,R1
        LDRB     R1,[R1, #-1]
        SUBS     R0,R0,R1
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       f_abs16
        MOV      R9,R0
        LDR.W    R0,??DataTable6_9
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        ADDS     R0,R7,R0
        LDRB     R0,[R0, #-1]
        SUBS     R0,R8,R0
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       f_abs16
        SXTH     R9,R9            ;; SignExt  R9,R9,#+16,#+16
        CMP      R9,R0
        BLT.N    ??Search_BlackEdge_17
        LDR.W    R0,??DataTable6_9
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        LDRB     R0,[R7, R0]
        LDR.W    R1,??DataTable6_9
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        ADDS     R1,R7,R1
        LDRB     R1,[R1, #-1]
        SUBS     R0,R0,R1
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       f_abs16
        CMP      R0,#+5
        BGE.N    ??Search_BlackEdge_16
        LDR.W    R0,??DataTable6_9
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        ADDS     R0,R7,R0
        LDRB     R0,[R0, #-1]
        SXTH     R8,R8            ;; SignExt  R8,R8,#+16,#+16
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R8,R0
        BNE.N    ??Search_BlackEdge_16
//  747       {
//  748         break;
??Search_BlackEdge_17:
        B.N      ??Search_BlackEdge_14
//  749       }
//  750       if(Row_state[i-1] == 1 || Row_state[i-1] == 2)
??Search_BlackEdge_16:
        LDR.W    R0,??DataTable6_5
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        ADDS     R0,R7,R0
        LDRB     R0,[R0, #-1]
        CMP      R0,#+1
        BEQ.N    ??Search_BlackEdge_18
        LDR.W    R0,??DataTable6_5
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        ADDS     R0,R7,R0
        LDRB     R0,[R0, #-1]
        CMP      R0,#+2
        BNE.N    ??Search_BlackEdge_19
//  751           {
//  752             if( j > right_black[i - 1]  && right_black[i] != hang_search_start) //当前一行为断点状态时，搜索到了点之后，则不允许继续的搜索
??Search_BlackEdge_18:
        LDR.W    R0,??DataTable6_9
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        ADDS     R0,R7,R0
        LDRB     R0,[R0, #-1]
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        SXTH     R8,R8            ;; SignExt  R8,R8,#+16,#+16
        CMP      R0,R8
        BGE.N    ??Search_BlackEdge_19
        LDR.W    R0,??DataTable6_9
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        LDRB     R0,[R7, R0]
        LDR.W    R1,??DataTable6_4
        LDRB     R1,[R1, #+0]
        CMP      R0,R1
        BNE.N    ??Search_BlackEdge_14
//  753              {
//  754               break;
//  755             }
//  756             //当搜索到的线大于了
//  757             //if()
//  758           }
//  759         j++;
??Search_BlackEdge_19:
        ADDS     R8,R8,#+1
        B.N      ??Search_BlackEdge_13
//  760     }    //右边的while搜索结束
//  761   
//  762     if(j == COLUMN-2 && right_black[i] == hang_search_start)
??Search_BlackEdge_14:
        SXTH     R8,R8            ;; SignExt  R8,R8,#+16,#+16
        CMP      R8,#+155
        BNE.N    ??Search_BlackEdge_20
        LDR.W    R0,??DataTable6_9
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        LDRB     R0,[R7, R0]
        LDR.W    R1,??DataTable6_4
        LDRB     R1,[R1, #+0]
        CMP      R0,R1
        BNE.N    ??Search_BlackEdge_20
//  763     {
//  764       if( VideoImage1[i][j] - VideoImage1[i][j+1] > OT)
        LDR.W    R0,??DataTable6_7
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable6_8
        MOVS     R2,#+157
        SMLABB   R1,R7,R2,R1
        SXTH     R8,R8            ;; SignExt  R8,R8,#+16,#+16
        LDRB     R1,[R8, R1]
        LDR.W    R2,??DataTable6_8
        MOVS     R3,#+157
        SMLABB   R2,R7,R3,R2
        SXTH     R8,R8            ;; SignExt  R8,R8,#+16,#+16
        ADDS     R2,R8,R2
        LDRB     R2,[R2, #+1]
        SUBS     R1,R1,R2
        CMP      R0,R1
        BGE.N    ??Search_BlackEdge_21
//  765          right_black[i] = COLUMN - 2 ;
        MOVS     R0,#+155
        LDR.W    R1,??DataTable6_9
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        STRB     R0,[R7, R1]
        B.N      ??Search_BlackEdge_20
//  766       else
//  767          right_black[i] = COLUMN - 1 ;
??Search_BlackEdge_21:
        MOVS     R0,#+156
        LDR.W    R1,??DataTable6_9
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        STRB     R0,[R7, R1]
//  768     }
//  769     ///////////////////////左右的搜索结束//////////////////////////
//  770     
//  771     
//  772     //  /////////////赛道的状态标记开始////////////////////////////////
//  773   if(i >= deal_start_line)//只是对处于控制区域的边界进行处理
??Search_BlackEdge_20:
        LDR.W    R0,??DataTable6_1
        LDRB     R0,[R0, #+0]
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R7,R0
        BLT.W    ??Search_BlackEdge_22
//  774     {    
//  775       //当图像的边沿到达了边界的时候，判定为丢点      ---------------------丢点的第一次判断
//  776       if((left_black[i] <= 1  || left_black[i] >= COLUMN-2 )&& (Row_state[i - 1] == 0||Row_state[i - 1] == 2) && right_black[i] >= 1 && right_black[i] <= COLUMN-2)
        LDR.W    R0,??DataTable6_6
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        LDRB     R0,[R7, R0]
        CMP      R0,#+2
        BLT.N    ??Search_BlackEdge_23
        LDR.W    R0,??DataTable6_6
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        LDRB     R0,[R7, R0]
        CMP      R0,#+155
        BLT.N    ??Search_BlackEdge_24
??Search_BlackEdge_23:
        LDR.W    R0,??DataTable6_5
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        ADDS     R0,R7,R0
        LDRB     R0,[R0, #-1]
        CMP      R0,#+0
        BEQ.N    ??Search_BlackEdge_25
        LDR.W    R0,??DataTable6_5
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        ADDS     R0,R7,R0
        LDRB     R0,[R0, #-1]
        CMP      R0,#+2
        BNE.N    ??Search_BlackEdge_24
??Search_BlackEdge_25:
        LDR.W    R0,??DataTable6_9
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        LDRB     R0,[R7, R0]
        CMP      R0,#+0
        BEQ.N    ??Search_BlackEdge_24
        LDR.W    R0,??DataTable6_9
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        LDRB     R0,[R7, R0]
        CMP      R0,#+156
        BGE.N    ??Search_BlackEdge_24
//  777       {         //对于到达边界之后是否认为丢点的问题，这个视情况而定
//  778            Row_state[i] =0;//左边丢点
        MOVS     R0,#+0
        LDR.W    R1,??DataTable6_5
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        STRB     R0,[R7, R1]
        B.N      ??Search_BlackEdge_26
//  779       }
//  780       else if(left_black[i] >= 1 && left_black[i] <= COLUMN-2 && (right_black[i] <= 1 || right_black[i] >= COLUMN-2)&& (Row_state[i - 1] == 1||Row_state[i - 1] == 2))
??Search_BlackEdge_24:
        LDR.W    R0,??DataTable6_6
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        LDRB     R0,[R7, R0]
        CMP      R0,#+0
        BEQ.N    ??Search_BlackEdge_27
        LDR.W    R0,??DataTable6_6
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        LDRB     R0,[R7, R0]
        CMP      R0,#+156
        BGE.N    ??Search_BlackEdge_27
        LDR.W    R0,??DataTable6_9
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        LDRB     R0,[R7, R0]
        CMP      R0,#+2
        BLT.N    ??Search_BlackEdge_28
        LDR.W    R0,??DataTable6_9
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        LDRB     R0,[R7, R0]
        CMP      R0,#+155
        BLT.N    ??Search_BlackEdge_27
??Search_BlackEdge_28:
        LDR.W    R0,??DataTable6_5
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        ADDS     R0,R7,R0
        LDRB     R0,[R0, #-1]
        CMP      R0,#+1
        BEQ.N    ??Search_BlackEdge_29
        LDR.W    R0,??DataTable6_5
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        ADDS     R0,R7,R0
        LDRB     R0,[R0, #-1]
        CMP      R0,#+2
        BNE.N    ??Search_BlackEdge_27
//  781       {
//  782            Row_state[i] = 1;//右边丢点
??Search_BlackEdge_29:
        MOVS     R0,#+1
        LDR.W    R1,??DataTable6_5
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        STRB     R0,[R7, R1]
        B.N      ??Search_BlackEdge_26
//  783       } 
//  784       else if((left_black[i] <= 1 || left_black[i] >= COLUMN-2 ) && (right_black[i] <= 1 || right_black[i] >= COLUMN-2))
??Search_BlackEdge_27:
        LDR.W    R0,??DataTable6_6
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        LDRB     R0,[R7, R0]
        CMP      R0,#+2
        BLT.N    ??Search_BlackEdge_30
        LDR.W    R0,??DataTable6_6
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        LDRB     R0,[R7, R0]
        CMP      R0,#+155
        BLT.N    ??Search_BlackEdge_31
??Search_BlackEdge_30:
        LDR.W    R0,??DataTable6_9
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        LDRB     R0,[R7, R0]
        CMP      R0,#+2
        BLT.N    ??Search_BlackEdge_32
        LDR.W    R0,??DataTable6_9
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        LDRB     R0,[R7, R0]
        CMP      R0,#+155
        BLT.N    ??Search_BlackEdge_31
//  785       {
//  786            Row_state[i] = 2;//两边都边丢点
??Search_BlackEdge_32:
        MOVS     R0,#+2
        LDR.W    R1,??DataTable6_5
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        STRB     R0,[R7, R1]
        B.N      ??Search_BlackEdge_26
//  787       }
//  788       else
//  789       {
//  790            Row_state[i] = 3;//两边都边没有丢点
??Search_BlackEdge_31:
        MOVS     R0,#+3
        LDR.W    R1,??DataTable6_5
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        STRB     R0,[R7, R1]
//  791       }
//  792       
//  793  /*这个状态专门用来标记十字道路的丢点的情况，此时十字道路的赛道的一边到达了边界，但是另外的一边却是以很大趋势向外伸展*/
//  794       if( i> 10)
??Search_BlackEdge_26:
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        CMP      R7,#+11
        BLT.W    ??Search_BlackEdge_33
//  795       {
//  796         if(left_black[i] <= 1 && right_black[i]-right_black[i-1] >= 2 && right_black[i]-right_black[i-2] > 5 && right_black[i]-right_black[i-3] > 6)
        LDR.W    R0,??DataTable6_6
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        LDRB     R0,[R7, R0]
        CMP      R0,#+2
        BGE.N    ??Search_BlackEdge_34
        LDR.W    R0,??DataTable6_9
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        LDRB     R0,[R7, R0]
        LDR.W    R1,??DataTable6_9
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        ADDS     R1,R7,R1
        LDRB     R1,[R1, #-1]
        SUBS     R0,R0,R1
        CMP      R0,#+2
        BLT.N    ??Search_BlackEdge_34
        LDR.W    R0,??DataTable6_9
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        LDRB     R0,[R7, R0]
        LDR.W    R1,??DataTable6_9
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        ADDS     R1,R7,R1
        LDRB     R1,[R1, #-2]
        SUBS     R0,R0,R1
        CMP      R0,#+6
        BLT.N    ??Search_BlackEdge_34
        LDR.W    R0,??DataTable6_9
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        LDRB     R0,[R7, R0]
        LDR.W    R1,??DataTable6_9
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        ADDS     R1,R7,R1
        LDRB     R1,[R1, #-3]
        SUBS     R0,R0,R1
        CMP      R0,#+7
        BLT.N    ??Search_BlackEdge_34
//  797         {
//  798           if(Row_state[i] == 0 ||Row_state[i] == 2)//对于第一次进行一个判断
        LDR.W    R0,??DataTable6_5
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        LDRB     R0,[R7, R0]
        CMP      R0,#+0
        BEQ.N    ??Search_BlackEdge_35
        LDR.W    R0,??DataTable6_5
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        LDRB     R0,[R7, R0]
        CMP      R0,#+2
        BNE.N    ??Search_BlackEdge_36
//  799               Row_state[i] = 2;
??Search_BlackEdge_35:
        MOVS     R0,#+2
        LDR.W    R1,??DataTable6_5
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        STRB     R0,[R7, R1]
        B.N      ??Search_BlackEdge_33
//  800            else //if(Row_state[i] == 1 ||Row_state[i] == 3)
//  801              Row_state[i] = 1;//1表示的是只有右边丢点
??Search_BlackEdge_36:
        MOVS     R0,#+1
        LDR.W    R1,??DataTable6_5
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        STRB     R0,[R7, R1]
        B.N      ??Search_BlackEdge_33
//  802         }
//  803         else if(right_black[i] >= COLUMN-2 && left_black[i-3] - left_black[i] > 6 && left_black[i-2] - left_black[i] > 5 && left_black[i-1] - left_black[i] >= 2 )
??Search_BlackEdge_34:
        LDR.W    R0,??DataTable6_9
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        LDRB     R0,[R7, R0]
        CMP      R0,#+155
        BLT.N    ??Search_BlackEdge_33
        LDR.W    R0,??DataTable6_6
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        ADDS     R0,R7,R0
        LDRB     R0,[R0, #-3]
        LDR.W    R1,??DataTable6_6
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        LDRB     R1,[R7, R1]
        SUBS     R0,R0,R1
        CMP      R0,#+7
        BLT.N    ??Search_BlackEdge_33
        LDR.W    R0,??DataTable6_6
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        ADDS     R0,R7,R0
        LDRB     R0,[R0, #-2]
        LDR.W    R1,??DataTable6_6
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        LDRB     R1,[R7, R1]
        SUBS     R0,R0,R1
        CMP      R0,#+6
        BLT.N    ??Search_BlackEdge_33
        LDR.W    R0,??DataTable6_6
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        ADDS     R0,R7,R0
        LDRB     R0,[R0, #-1]
        LDR.W    R1,??DataTable6_6
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        LDRB     R1,[R7, R1]
        SUBS     R0,R0,R1
        CMP      R0,#+2
        BLT.N    ??Search_BlackEdge_33
//  804         {
//  805          if(Row_state[i] == 1||Row_state[i] == 2)//对于第一次进行一个判断
        LDR.W    R0,??DataTable6_5
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        LDRB     R0,[R7, R0]
        CMP      R0,#+1
        BEQ.N    ??Search_BlackEdge_37
        LDR.W    R0,??DataTable6_5
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        LDRB     R0,[R7, R0]
        CMP      R0,#+2
        BNE.N    ??Search_BlackEdge_38
//  806               Row_state[i] = 2;//0表示的是左边丢点,而右边没有丢点
??Search_BlackEdge_37:
        MOVS     R0,#+2
        LDR.W    R1,??DataTable6_5
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        STRB     R0,[R7, R1]
        B.N      ??Search_BlackEdge_33
//  807            else
//  808               Row_state[i] = 0;//0表示的是只有左边丢点
??Search_BlackEdge_38:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable6_5
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        STRB     R0,[R7, R1]
//  809         }
//  810       }
//  811       
//  812         //对两边沿线的状态进行判断//---------------------------丢点的第二次判断
//  813       //注意这里的判断必须要分两种情况一个是跳变点的状态，其次是前一行的状态（前一行的状态的不同需要作出不同的处理），
//  814       if((right_black[i] - left_black[i])-(right_black[i-1] - left_black[i-1])>= 8)//  若是3的话可能出现误判//这里采用绝对值限制是为了防止噪点
??Search_BlackEdge_33:
        LDR.W    R0,??DataTable6_9
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        LDRB     R0,[R7, R0]
        LDR.W    R1,??DataTable6_6
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        LDRB     R1,[R7, R1]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable6_9
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        ADDS     R1,R7,R1
        LDRB     R1,[R1, #-1]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable6_6
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        ADDS     R1,R7,R1
        LDRB     R1,[R1, #-1]
        UXTAB    R0,R0,R1
        CMP      R0,#+8
        BLT.W    ??Search_BlackEdge_39
//  815       {
//  816          if(( f_abs16(left_black[i] - left_black[i-1]) < f_abs16(right_black[i] - right_black[i-1]))
//  817             && f_abs16(left_black[i] - left_black[i-1]) <= 3)//左边的突变小于右边的  说明右边的点发生了突变
        LDR.W    R0,??DataTable6_6
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        LDRB     R0,[R7, R0]
        LDR.W    R1,??DataTable6_6
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        ADDS     R1,R7,R1
        LDRB     R1,[R1, #-1]
        SUBS     R0,R0,R1
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       f_abs16
        MOV      R9,R0
        LDR.W    R0,??DataTable6_9
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        LDRB     R0,[R7, R0]
        LDR.W    R1,??DataTable6_9
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        ADDS     R1,R7,R1
        LDRB     R1,[R1, #-1]
        SUBS     R0,R0,R1
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       f_abs16
        SXTH     R9,R9            ;; SignExt  R9,R9,#+16,#+16
        CMP      R9,R0
        BGE.N    ??Search_BlackEdge_40
        LDR.W    R0,??DataTable6_6
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        LDRB     R0,[R7, R0]
        LDR.W    R1,??DataTable6_6
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        ADDS     R1,R7,R1
        LDRB     R1,[R1, #-1]
        SUBS     R0,R0,R1
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       f_abs16
        CMP      R0,#+4
        BGE.N    ??Search_BlackEdge_40
//  818          {
//  819            if(Row_state[i] == 0 ||Row_state[i] == 2)//对于第一次进行一个判断
        LDR.W    R0,??DataTable6_5
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        LDRB     R0,[R7, R0]
        CMP      R0,#+0
        BEQ.N    ??Search_BlackEdge_41
        LDR.W    R0,??DataTable6_5
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        LDRB     R0,[R7, R0]
        CMP      R0,#+2
        BNE.N    ??Search_BlackEdge_42
//  820               Row_state[i] = 2;
??Search_BlackEdge_41:
        MOVS     R0,#+2
        LDR.W    R1,??DataTable6_5
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        STRB     R0,[R7, R1]
        B.N      ??Search_BlackEdge_39
//  821            else //if(Row_state[i] == 1 ||Row_state[i] == 3)
//  822            {
//  823              Row_state[i] = 1;//1表示的是只有右边丢点
??Search_BlackEdge_42:
        MOVS     R0,#+1
        LDR.W    R1,??DataTable6_5
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        STRB     R0,[R7, R1]
        B.N      ??Search_BlackEdge_39
//  824            }
//  825          } 
//  826         else if(( f_abs16(left_black[i] - left_black[i-1]) > f_abs16(right_black[i] - right_black[i-1]))
//  827             && f_abs16(right_black[i] - right_black[i-1]) <= 3)//左边的突变小于右边的  说明右边的点发生了突变
??Search_BlackEdge_40:
        LDR.W    R0,??DataTable6_9
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        LDRB     R0,[R7, R0]
        LDR.W    R1,??DataTable6_9
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        ADDS     R1,R7,R1
        LDRB     R1,[R1, #-1]
        SUBS     R0,R0,R1
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       f_abs16
        MOV      R9,R0
        LDR.W    R0,??DataTable6_6
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        LDRB     R0,[R7, R0]
        LDR.W    R1,??DataTable6_6
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        ADDS     R1,R7,R1
        LDRB     R1,[R1, #-1]
        SUBS     R0,R0,R1
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       f_abs16
        SXTH     R9,R9            ;; SignExt  R9,R9,#+16,#+16
        CMP      R9,R0
        BGE.N    ??Search_BlackEdge_43
        LDR.W    R0,??DataTable6_9
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        LDRB     R0,[R7, R0]
        LDR.W    R1,??DataTable6_9
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        ADDS     R1,R7,R1
        LDRB     R1,[R1, #-1]
        SUBS     R0,R0,R1
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       f_abs16
        CMP      R0,#+4
        BGE.N    ??Search_BlackEdge_43
//  828          {
//  829            if(Row_state[i] == 1||Row_state[i] == 2)//对于第一次进行一个判断
        LDR.W    R0,??DataTable6_5
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        LDRB     R0,[R7, R0]
        CMP      R0,#+1
        BEQ.N    ??Search_BlackEdge_44
        LDR.W    R0,??DataTable6_5
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        LDRB     R0,[R7, R0]
        CMP      R0,#+2
        BNE.N    ??Search_BlackEdge_45
//  830               Row_state[i] = 2;//0表示的是左边丢点,而右边没有丢点
??Search_BlackEdge_44:
        MOVS     R0,#+2
        LDR.W    R1,??DataTable6_5
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        STRB     R0,[R7, R1]
        B.N      ??Search_BlackEdge_39
//  831            else
//  832               Row_state[i] = 0;//0表示的是只有左边丢点
??Search_BlackEdge_45:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable6_5
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        STRB     R0,[R7, R1]
        B.N      ??Search_BlackEdge_39
//  833          }
//  834          else 
//  835          {
//  836            Row_state[i] = 2;//2表示的是两边都丢点
??Search_BlackEdge_43:
        MOVS     R0,#+2
        LDR.W    R1,??DataTable6_5
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        STRB     R0,[R7, R1]
//  837          }
//  838       }
//  839     
//  840       
//  841       
//  842         if(Row_state[i-1] == 0)//左边丢点
??Search_BlackEdge_39:
        LDR.W    R0,??DataTable6_5
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        ADDS     R0,R7,R0
        LDRB     R0,[R0, #-1]
        CMP      R0,#+0
        BNE.N    ??Search_BlackEdge_46
//  843         {
//  844           if((right_black[i] - left_black[i]) - (right_black[un_lost_hang] - left_black[un_lost_hang]) >= 3)
        LDR.W    R0,??DataTable6_9
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        LDRB     R0,[R7, R0]
        LDR.W    R1,??DataTable6_6
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        LDRB     R1,[R7, R1]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable6_9
        SXTH     R6,R6            ;; SignExt  R6,R6,#+16,#+16
        LDRB     R1,[R6, R1]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable6_6
        SXTH     R6,R6            ;; SignExt  R6,R6,#+16,#+16
        LDRB     R1,[R6, R1]
        ADDS     R0,R0,R1
        CMP      R0,#+3
        BLT.N    ??Search_BlackEdge_47
//  845           {
//  846             if(Row_state[i] == 1 ||Row_state[i] == 2)
        LDR.W    R0,??DataTable6_5
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        LDRB     R0,[R7, R0]
        CMP      R0,#+1
        BEQ.N    ??Search_BlackEdge_48
        LDR.W    R0,??DataTable6_5
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        LDRB     R0,[R7, R0]
        CMP      R0,#+2
        BNE.N    ??Search_BlackEdge_49
//  847             {
//  848               Row_state[i] = 2;
??Search_BlackEdge_48:
        MOVS     R0,#+2
        LDR.W    R1,??DataTable6_5
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        STRB     R0,[R7, R1]
//  849             }
//  850             if(Row_state[i] == 3)
??Search_BlackEdge_49:
        LDR.W    R0,??DataTable6_5
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        LDRB     R0,[R7, R0]
        CMP      R0,#+3
        BNE.N    ??Search_BlackEdge_47
//  851             {
//  852               Row_state[i] = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable6_5
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        STRB     R0,[R7, R1]
        B.N      ??Search_BlackEdge_47
//  853             }
//  854           }
//  855         }
//  856         
//  857        else if(Row_state[i-1] == 1)//左边丢点
??Search_BlackEdge_46:
        LDR.N    R0,??DataTable6_5
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        ADDS     R0,R7,R0
        LDRB     R0,[R0, #-1]
        CMP      R0,#+1
        BNE.N    ??Search_BlackEdge_47
//  858         {
//  859           if((right_black[i] - left_black[i]) - (right_black[un_lost_hang] - left_black[un_lost_hang]) >= 3)
        LDR.N    R0,??DataTable6_9
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        LDRB     R0,[R7, R0]
        LDR.N    R1,??DataTable6_6
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        LDRB     R1,[R7, R1]
        SUBS     R0,R0,R1
        LDR.N    R1,??DataTable6_9
        SXTH     R6,R6            ;; SignExt  R6,R6,#+16,#+16
        LDRB     R1,[R6, R1]
        SUBS     R0,R0,R1
        LDR.N    R1,??DataTable6_6
        SXTH     R6,R6            ;; SignExt  R6,R6,#+16,#+16
        LDRB     R1,[R6, R1]
        ADDS     R0,R0,R1
        CMP      R0,#+3
        BLT.N    ??Search_BlackEdge_47
//  860           {
//  861             if(Row_state[i] == 0 ||Row_state[i] == 2)
        LDR.N    R0,??DataTable6_5
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        LDRB     R0,[R7, R0]
        CMP      R0,#+0
        BEQ.N    ??Search_BlackEdge_50
        LDR.N    R0,??DataTable6_5
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        LDRB     R0,[R7, R0]
        CMP      R0,#+2
        BNE.N    ??Search_BlackEdge_51
//  862             {
//  863               Row_state[i] = 2;
??Search_BlackEdge_50:
        MOVS     R0,#+2
        LDR.N    R1,??DataTable6_5
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        STRB     R0,[R7, R1]
//  864             }
//  865            if(Row_state[i] == 3)
??Search_BlackEdge_51:
        LDR.N    R0,??DataTable6_5
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        LDRB     R0,[R7, R0]
        CMP      R0,#+3
        BNE.N    ??Search_BlackEdge_47
//  866              Row_state[i] = 1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable6_5
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        STRB     R0,[R7, R1]
//  867           }
//  868         }
//  869       
//  870     //记录最近的都没有丢点的行
//  871       if( Row_state[i] == 3)
??Search_BlackEdge_47:
        LDR.N    R0,??DataTable6_5
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        LDRB     R0,[R7, R0]
        CMP      R0,#+3
        BNE.N    ??Search_BlackEdge_52
//  872       {
//  873         un_lost_hang = i;
        MOVS     R6,R7
//  874       }
//  875       ////////////左右边沿标记结束/////////////////////////
//  876       
//  877       //前面对赛道进行了状态的判断，这里做出初步的拟合
//  878       if(Row_state[i] == 0)  //左边丢点
??Search_BlackEdge_52:
        LDR.N    R0,??DataTable6_5
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        LDRB     R0,[R7, R0]
        CMP      R0,#+0
        BNE.N    ??Search_BlackEdge_53
//  879       {
//  880         if(right_black[i]- (right_black[i-1] - left_black[i-1]) <= 0 )//限幅
        LDR.N    R0,??DataTable6_9
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        LDRB     R0,[R7, R0]
        LDR.N    R1,??DataTable6_9
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        ADDS     R1,R7,R1
        LDRB     R1,[R1, #-1]
        SUBS     R0,R0,R1
        LDR.N    R1,??DataTable6_6
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        ADDS     R1,R7,R1
        LDRB     R1,[R1, #-1]
        UXTAB    R0,R0,R1
        CMP      R0,#+1
        BGE.N    ??Search_BlackEdge_54
//  881           left_black[i]=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable6_6
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        STRB     R0,[R7, R1]
        B.N      ??Search_BlackEdge_22
//  882         else
//  883         left_black[i] = right_black[i] - (right_black[i-1] - left_black[i-1]);//加上1是由于下向上图像在宽度在减小的原因
??Search_BlackEdge_54:
        LDR.N    R0,??DataTable6_9
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        LDRB     R0,[R7, R0]
        LDR.N    R1,??DataTable6_9
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        ADDS     R1,R7,R1
        LDRB     R1,[R1, #-1]
        SUBS     R0,R0,R1
        LDR.N    R1,??DataTable6_6
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        ADDS     R1,R7,R1
        LDRB     R1,[R1, #-1]
        ADDS     R0,R1,R0
        LDR.N    R1,??DataTable6_6
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        STRB     R0,[R7, R1]
        B.N      ??Search_BlackEdge_22
//  884       }      
//  885       else if(Row_state[i] == 1)
??Search_BlackEdge_53:
        LDR.N    R0,??DataTable6_5
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        LDRB     R0,[R7, R0]
        CMP      R0,#+1
        BNE.N    ??Search_BlackEdge_55
//  886       {
//  887         if(left_black[i] + (right_black[i-1] - left_black[i-1]) >= COLUMN-1)
        LDR.N    R0,??DataTable6_6
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        LDRB     R0,[R7, R0]
        LDR.N    R1,??DataTable6_9
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        ADDS     R1,R7,R1
        LDRB     R1,[R1, #-1]
        ADDS     R0,R1,R0
        LDR.N    R1,??DataTable6_6
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        ADDS     R1,R7,R1
        LDRB     R1,[R1, #-1]
        SUBS     R0,R0,R1
        CMP      R0,#+156
        BLT.N    ??Search_BlackEdge_56
//  888           right_black[i] = COLUMN-1;   
        MOVS     R0,#+156
        LDR.N    R1,??DataTable6_9
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        STRB     R0,[R7, R1]
        B.N      ??Search_BlackEdge_22
//  889         else
//  890           right_black[i] = left_black[i] + (right_black[i-1] - left_black[i-1]);//
??Search_BlackEdge_56:
        LDR.N    R0,??DataTable6_6
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        LDRB     R0,[R7, R0]
        LDR.N    R1,??DataTable6_9
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        ADDS     R1,R7,R1
        LDRB     R1,[R1, #-1]
        ADDS     R0,R1,R0
        LDR.N    R1,??DataTable6_6
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        ADDS     R1,R7,R1
        LDRB     R1,[R1, #-1]
        SUBS     R0,R0,R1
        LDR.N    R1,??DataTable6_9
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        STRB     R0,[R7, R1]
        B.N      ??Search_BlackEdge_22
//  891       }
//  892       else if(Row_state[i] == 2)
??Search_BlackEdge_55:
        LDR.N    R0,??DataTable6_5
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        LDRB     R0,[R7, R0]
        CMP      R0,#+2
        BNE.N    ??Search_BlackEdge_22
//  893       {
//  894          left_black[i] = left_black[i-1];
        LDR.N    R0,??DataTable6_6
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        ADDS     R0,R7,R0
        LDRB     R0,[R0, #-1]
        LDR.N    R1,??DataTable6_6
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        STRB     R0,[R7, R1]
//  895          right_black[i] = right_black[i-1];
        LDR.N    R0,??DataTable6_9
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        ADDS     R0,R7,R0
        LDRB     R0,[R0, #-1]
        LDR.N    R1,??DataTable6_9
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        STRB     R0,[R7, R1]
//  896        }
//  897     } 
//  898     
//  899     
//  900     hang_search_start = (right_black[i] + left_black[i])/2; 
??Search_BlackEdge_22:
        LDR.N    R0,??DataTable6_9
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        LDRB     R0,[R7, R0]
        LDR.N    R1,??DataTable6_6
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        LDRB     R1,[R7, R1]
        ADDS     R0,R1,R0
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        LDR.N    R1,??DataTable6_4
        STRB     R0,[R1, #+0]
//  901     //////////////////左右的处理结束///////////////////////////// 
//  902     
//  903     ///对最高有效行的判断/////////////判断一/////////////////////
//  904 
//  905 
//  906     if( i> 20 &&i<=top_whiteline && right_black[i] -  left_black[i] < 2*(ROW-i)/5+ WHITE_TOP_WHITELINE_POINT   //////////////////////////////////////////////////////////////////////////
//  907        && (right_black[i-1] -  left_black[i-1]) <  2*(ROW-i)/5 + WHITE_TOP_WHITELINE_POINT 
//  908        ) //只判定一次&& top_whiteline >= ROW-1
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        CMP      R7,#+21
        BLT.N    ??Search_BlackEdge_57
        LDR.N    R0,??DataTable6_2
        LDRB     R0,[R0, #+0]
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        CMP      R0,R7
        BLT.N    ??Search_BlackEdge_57
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        RSBS     R0,R7,#+50
        LSLS     R0,R0,#+1
        MOVS     R1,#+5
        SDIV     R0,R0,R1
        ADDS     R0,R0,#+15
        LDR.N    R1,??DataTable6_9
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        LDRB     R1,[R7, R1]
        LDR.N    R2,??DataTable6_6
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        LDRB     R2,[R7, R2]
        SUBS     R1,R1,R2
        CMP      R1,R0
        BGE.N    ??Search_BlackEdge_57
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        RSBS     R0,R7,#+50
        LSLS     R0,R0,#+1
        MOVS     R1,#+5
        SDIV     R0,R0,R1
        ADDS     R0,R0,#+15
        LDR.N    R1,??DataTable6_9
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        ADDS     R1,R7,R1
        LDRB     R1,[R1, #-1]
        LDR.N    R2,??DataTable6_6
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        ADDS     R2,R7,R2
        LDRB     R2,[R2, #-1]
        SUBS     R1,R1,R2
        CMP      R1,R0
        BGE.N    ??Search_BlackEdge_57
//  909     { 
//  910      // if(i<ROW-1) while(1){}
//  911       top_whiteline = i;
        LDR.N    R0,??DataTable6_2
        STRB     R7,[R0, #+0]
//  912     }
//  913     /////////////////////判断二////////////////////////
//  914     center_white[i] = (right_black[i] + left_black[i])/2; 
??Search_BlackEdge_57:
        LDR.N    R0,??DataTable6_9
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        LDRB     R0,[R7, R0]
        LDR.N    R1,??DataTable6_6
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        LDRB     R1,[R7, R1]
        ADDS     R0,R1,R0
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        LDR.W    R1,??DataTable7
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        STRB     R0,[R7, R1]
//  915     if(i>10 && i < ROW-1 &&top_whiteline >= ROW-1 &&( VideoImage2[i-1][center_white[i]] - VideoImage2[i+1][center_white[i]] > OT - 10) /////top_whiteline >= ROW-1 //////////中点跳变////////////////////////////////
//  916        &&  VideoImage2[i-1][center_white[i]-1] - VideoImage2[i+1][center_white[i]-1] > OT - 10
//  917               &&  VideoImage2[i-1][center_white[i]+1] - VideoImage2[i + 1][center_white[i]+1] > OT - 10 )  //最高行的判断用原始图像
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        CMP      R7,#+11
        BLT.W    ??Search_BlackEdge_58
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        CMP      R7,#+49
        BGE.W    ??Search_BlackEdge_58
        LDR.N    R0,??DataTable6_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+49
        BLT.W    ??Search_BlackEdge_58
        LDR.N    R0,??DataTable6_7
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+10
        LDR.W    R1,??DataTable7_1
        MOVS     R2,#+157
        SMLABB   R1,R7,R2,R1
        LDR.W    R2,??DataTable7
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        LDRB     R2,[R7, R2]
        ADDS     R1,R2,R1
        LDRB     R1,[R1, #-157]
        LDR.W    R2,??DataTable7_1
        MOVS     R3,#+157
        SMLABB   R2,R7,R3,R2
        LDR.W    R3,??DataTable7
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        LDRB     R3,[R7, R3]
        ADDS     R2,R3,R2
        LDRB     R2,[R2, #+157]
        SUBS     R1,R1,R2
        CMP      R0,R1
        BGE.N    ??Search_BlackEdge_58
        LDR.N    R0,??DataTable6_7
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+10
        LDR.W    R1,??DataTable7_1
        MOVS     R2,#+157
        SMLABB   R1,R7,R2,R1
        LDR.W    R2,??DataTable7
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        LDRB     R2,[R7, R2]
        ADDS     R1,R2,R1
        LDRB     R1,[R1, #-158]
        LDR.W    R2,??DataTable7_1
        MOVS     R3,#+157
        SMLABB   R2,R7,R3,R2
        LDR.W    R3,??DataTable7
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        LDRB     R3,[R7, R3]
        ADDS     R2,R3,R2
        LDRB     R2,[R2, #+156]
        SUBS     R1,R1,R2
        CMP      R0,R1
        BGE.N    ??Search_BlackEdge_58
        LDR.N    R0,??DataTable6_7
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+10
        LDR.W    R1,??DataTable7_1
        MOVS     R2,#+157
        SMLABB   R1,R7,R2,R1
        LDR.W    R2,??DataTable7
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        LDRB     R2,[R7, R2]
        ADDS     R1,R2,R1
        LDRB     R1,[R1, #-156]
        LDR.W    R2,??DataTable7_1
        MOVS     R3,#+157
        SMLABB   R2,R7,R3,R2
        LDR.W    R3,??DataTable7
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        LDRB     R3,[R7, R3]
        ADDS     R2,R3,R2
        LDRB     R2,[R2, #+158]
        SUBS     R1,R1,R2
        CMP      R0,R1
        BGE.N    ??Search_BlackEdge_58
//  918     {
//  919       //用这种方式有一个弊端就是，图像存在一个突变，无法真实的反应赛道，特别是60度和50度弯道的微小差别，这里对其经行修补
//  920        top_whiteline = i-1;
        MOVS     R0,R7
        SUBS     R0,R0,#+1
        LDR.N    R1,??DataTable6_2
        STRB     R0,[R1, #+0]
//  921       for( n = top_whiteline; n >  top_whiteline - 7;n--)
        LDR.N    R0,??DataTable6_2
        LDRB     R0,[R0, #+0]
        MOVS     R4,R0
??Search_BlackEdge_59:
        LDR.N    R0,??DataTable6_2
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+7
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        CMP      R0,R4
        BGE.N    ??Search_BlackEdge_58
//  922       {
//  923         if(left_black[n] <= 1)
        LDR.N    R0,??DataTable6_6
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        LDRB     R0,[R4, R0]
        CMP      R0,#+2
        BGE.N    ??Search_BlackEdge_60
//  924         {
//  925           for( k = n; k <= top_whiteline ; k++)
        MOVS     R5,R4
??Search_BlackEdge_61:
        LDR.N    R0,??DataTable6_2
        LDRB     R0,[R0, #+0]
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        SXTH     R5,R5            ;; SignExt  R5,R5,#+16,#+16
        CMP      R0,R5
        BLT.N    ??Search_BlackEdge_62
//  926           {
//  927              left_black[k] = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable6_6
        SXTH     R5,R5            ;; SignExt  R5,R5,#+16,#+16
        STRB     R0,[R5, R1]
//  928              //进行规划后的行的状态需要重新的定义
//  929          /*  if(Row_state[k] == 1 ||Row_state[k] == 2)
//  930             {
//  931               Row_state[k] = 2;
//  932             }
//  933             if(Row_state[k] == 3)
//  934             {
//  935               Row_state[k] = 0;
//  936             }*/
//  937           }
        ADDS     R5,R5,#+1
        B.N      ??Search_BlackEdge_61
//  938         //  break;  //这里还不能用break。因为有的时候可能会有一个点跳出来了。如 0 1 0 0 0
//  939         }
//  940         else if(right_black[n] >= COLUMN-2)
??Search_BlackEdge_60:
        LDR.N    R0,??DataTable6_9
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        LDRB     R0,[R4, R0]
        CMP      R0,#+155
        BLT.N    ??Search_BlackEdge_62
//  941         {
//  942           for( k = n; k <= top_whiteline ; k++)
        MOVS     R5,R4
??Search_BlackEdge_63:
        LDR.N    R0,??DataTable6_2
        LDRB     R0,[R0, #+0]
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        SXTH     R5,R5            ;; SignExt  R5,R5,#+16,#+16
        CMP      R0,R5
        BLT.N    ??Search_BlackEdge_62
//  943           {
//  944              right_black[k] = COLUMN-1;
        MOVS     R0,#+156
        LDR.N    R1,??DataTable6_9
        SXTH     R5,R5            ;; SignExt  R5,R5,#+16,#+16
        STRB     R0,[R5, R1]
//  945              
//  946          /*  if(Row_state[k] == 0 ||Row_state[k] == 2)
//  947             {
//  948               Row_state[k] = 2;
//  949             }
//  950             if(Row_state[k] == 3)
//  951             {
//  952               Row_state[k] = 1;
//  953             }*/
//  954           }
        ADDS     R5,R5,#+1
        B.N      ??Search_BlackEdge_63
//  955           //break;
//  956         }
//  957       }
??Search_BlackEdge_62:
        SUBS     R4,R4,#+1
        B.N      ??Search_BlackEdge_59
//  958     }
//  959 
//  960   }//for循环的结束  
??Search_BlackEdge_58:
        ADDS     R7,R7,#+1
        B.W      ??Search_BlackEdge_2
//  961   
//  962 }
??Search_BlackEdge_3:
        POP      {R0,R4-R9,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6:
        DC32     bottom_whitebase

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_1:
        DC32     deal_start_line

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_2:
        DC32     top_whiteline

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_3:
        DC32     white_refer

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_4:
        DC32     hang_search_start

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_5:
        DC32     Row_state

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_6:
        DC32     left_black

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_7:
        DC32     OT

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_8:
        DC32     VideoImage1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_9:
        DC32     right_black
//  963 
//  964 //------------------------通过找出来的赛道对，两边沿线进行处理和虚构并拟合出中心线----------------------//
//  965 /*对赛道进行拉线连接，左右各自连接自己的，然后对于中线，利用赛道的状态标志，再进行一次拟合
//  966  0  表示左边沿线断点
//  967  1  表示右边沿线断点
//  968  2  表示两边都断了 
//  969 到达边界后不能直接的拉线了
//  970 对于虚线和十字道路的处理，只要保证两点就行了，即1、保证能找到在跑道上的点；2、保证对赛道的行状态的记录绝对的正确//////
//  971 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  972 void Deal_BlackEdge(void)
//  973 { 
Deal_BlackEdge:
        PUSH     {R4-R7}
//  974   int16 i=0,k=0;
        MOVS     R0,#+0
        MOVS     R1,#+0
//  975   uint8 un_out_hang = bottom_whitebase ;
        LDR.W    R2,??DataTable7_2
        LDRB     R2,[R2, #+0]
//  976   uint8 lost_start_line=0;
        MOVS     R3,#+0
//  977   uint8 lost_end_line=0;
        MOVS     R4,#+0
//  978   left_top_whiteline = top_whiteline;
        LDR.W    R5,??DataTable7_3
        LDRB     R5,[R5, #+0]
        LDR.W    R6,??DataTable7_4
        STRB     R5,[R6, #+0]
//  979   right_top_whiteline = top_whiteline;
        LDR.W    R5,??DataTable7_3
        LDRB     R5,[R5, #+0]
        LDR.W    R6,??DataTable7_5
        STRB     R5,[R6, #+0]
//  980 
//  981   //图像的突变可能是噪点的出现，这里可以试着对Row_state[i]经行一下中值滤波
//  982   //对Row_state[i]滤波
//  983   for( i=bottom_whitebase + 1;i < top_whiteline-2;i++)
        LDR.W    R5,??DataTable7_2
        LDRB     R5,[R5, #+0]
        ADDS     R5,R5,#+1
        MOVS     R0,R5
??Deal_BlackEdge_0:
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDR.W    R5,??DataTable7_3
        LDRB     R5,[R5, #+0]
        SUBS     R5,R5,#+2
        CMP      R0,R5
        BGE.N    ??Deal_BlackEdge_1
//  984  {
//  985    if(Row_state[i-1] == Row_state[i+1] && Row_state[i-1] != Row_state[i])
        LDR.W    R5,??DataTable7_6
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        ADDS     R5,R0,R5
        LDRB     R5,[R5, #-1]
        LDR.W    R6,??DataTable7_6
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        ADDS     R6,R0,R6
        LDRB     R6,[R6, #+1]
        CMP      R5,R6
        BNE.N    ??Deal_BlackEdge_2
        LDR.W    R5,??DataTable7_6
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        ADDS     R5,R0,R5
        LDRB     R5,[R5, #-1]
        LDR.W    R6,??DataTable7_6
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRB     R6,[R0, R6]
        CMP      R5,R6
        BEQ.N    ??Deal_BlackEdge_2
//  986    {
//  987      Row_state[i] = Row_state[i-1];
        LDR.W    R5,??DataTable7_6
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        ADDS     R5,R0,R5
        LDRB     R5,[R5, #-1]
        LDR.W    R6,??DataTable7_6
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        STRB     R5,[R0, R6]
//  988    }
//  989  }
??Deal_BlackEdge_2:
        ADDS     R0,R0,#+1
        B.N      ??Deal_BlackEdge_0
//  990   
//  991   
//  992   
//  993   for( i=bottom_whitebase+1 ;i < top_whiteline-1;i++)
??Deal_BlackEdge_1:
        LDR.W    R5,??DataTable7_2
        LDRB     R5,[R5, #+0]
        ADDS     R5,R5,#+1
        MOVS     R0,R5
??Deal_BlackEdge_3:
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDR.W    R5,??DataTable7_3
        LDRB     R5,[R5, #+0]
        SUBS     R5,R5,#+1
        CMP      R0,R5
        BGE.W    ??Deal_BlackEdge_4
//  994   {
//  995     lost_start_line = 0;
        MOVS     R5,#+0
        MOVS     R3,R5
//  996     lost_end_line = 0;
        MOVS     R5,#+0
        MOVS     R4,R5
//  997     
//  998     if( (Row_state[i-1] == 1 || Row_state[i-1] == 3) && (Row_state[i] == 0 || Row_state[i] == 2))   //判断左边第i 点是否丢点 //////////////////////////////////////////////////////////  
        LDR.W    R5,??DataTable7_6
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        ADDS     R5,R0,R5
        LDRB     R5,[R5, #-1]
        CMP      R5,#+1
        BEQ.N    ??Deal_BlackEdge_5
        LDR.W    R5,??DataTable7_6
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        ADDS     R5,R0,R5
        LDRB     R5,[R5, #-1]
        CMP      R5,#+3
        BNE.W    ??Deal_BlackEdge_6
??Deal_BlackEdge_5:
        LDR.W    R5,??DataTable7_6
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRB     R5,[R0, R5]
        CMP      R5,#+0
        BEQ.N    ??Deal_BlackEdge_7
        LDR.W    R5,??DataTable7_6
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRB     R5,[R0, R5]
        CMP      R5,#+2
        BNE.N    ??Deal_BlackEdge_6
//  999     {
// 1000        lost_start_line = i - 1;//记录丢点的前一行
??Deal_BlackEdge_7:
        MOVS     R5,R0
        SUBS     R5,R5,#+1
        MOVS     R3,R5
// 1001        while(i < top_whiteline-1)
??Deal_BlackEdge_8:
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDR.W    R5,??DataTable7_3
        LDRB     R5,[R5, #+0]
        SUBS     R5,R5,#+1
        CMP      R0,R5
        BGE.N    ??Deal_BlackEdge_9
// 1002         {
// 1003           if((Row_state[i] == 1 || Row_state[i] == 3) && (Row_state[i+1] == 1 || Row_state[i+1] == 3))  //
        LDR.W    R5,??DataTable7_6
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRB     R5,[R0, R5]
        CMP      R5,#+1
        BEQ.N    ??Deal_BlackEdge_10
        LDR.W    R5,??DataTable7_6
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRB     R5,[R0, R5]
        CMP      R5,#+3
        BNE.N    ??Deal_BlackEdge_11
??Deal_BlackEdge_10:
        LDR.W    R5,??DataTable7_6
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        ADDS     R5,R0,R5
        LDRB     R5,[R5, #+1]
        CMP      R5,#+1
        BEQ.N    ??Deal_BlackEdge_12
        LDR.W    R5,??DataTable7_6
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        ADDS     R5,R0,R5
        LDRB     R5,[R5, #+1]
        CMP      R5,#+3
        BNE.N    ??Deal_BlackEdge_11
// 1004           {
// 1005             if(lost_end_line >= top_whiteline -2)
??Deal_BlackEdge_12:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R5,??DataTable7_3
        LDRB     R5,[R5, #+0]
        SUBS     R5,R5,#+2
        CMP      R4,R5
        BLT.N    ??Deal_BlackEdge_13
// 1006               lost_end_line = i;
        MOVS     R5,R0
        MOVS     R4,R5
        B.N      ??Deal_BlackEdge_14
// 1007             else
// 1008               lost_end_line = i + 1;
??Deal_BlackEdge_13:
        ADDS     R5,R0,#+1
        MOVS     R4,R5
// 1009             
// 1010             break; 
??Deal_BlackEdge_14:
        B.N      ??Deal_BlackEdge_9
// 1011           }
// 1012            i++;//i++必须要在if的判断之后进行，否则会导致出错
??Deal_BlackEdge_11:
        ADDS     R0,R0,#+1
        B.N      ??Deal_BlackEdge_8
// 1013         }
// 1014        if(lost_end_line !=0)
??Deal_BlackEdge_9:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??Deal_BlackEdge_15
// 1015        {  
// 1016          for(k = lost_start_line+1; k< lost_end_line;k++)
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        ADDS     R5,R3,#+1
        MOVS     R1,R5
??Deal_BlackEdge_16:
        MOVS     R5,R4
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        SXTH     R5,R5            ;; SignExt  R5,R5,#+16,#+16
        CMP      R1,R5
        BGE.N    ??Deal_BlackEdge_6
// 1017          {                                                                  
// 1018           left_black[k] = left_black[lost_start_line] + (k -lost_start_line)*(left_black[lost_end_line]-left_black[lost_start_line])/(lost_end_line - lost_start_line);  
        LDR.W    R5,??DataTable7_7
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LDRB     R5,[R3, R5]
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        SUBS     R6,R1,R3
        LDR.W    R7,??DataTable7_7
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDRB     R7,[R4, R7]
        LDR.W    R12,??DataTable7_7
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LDRB     R12,[R3, R12]
        SUBS     R7,R7,R12
        MULS     R6,R7,R6
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        SUBS     R7,R4,R3
        SDIV     R6,R6,R7
        ADDS     R5,R6,R5
        LDR.W    R6,??DataTable7_7
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        STRB     R5,[R1, R6]
// 1019          }
        ADDS     R1,R1,#+1
        B.N      ??Deal_BlackEdge_16
// 1020        }   
// 1021       else if(lost_end_line ==0 && lost_start_line >  top_whiteline/3 && lost_start_line <ROW-1  ) //当最顶行的点到达边沿的时候，不判定
??Deal_BlackEdge_15:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BNE.N    ??Deal_BlackEdge_6
        LDR.W    R5,??DataTable7_3
        LDRB     R5,[R5, #+0]
        MOVS     R6,#+3
        SDIV     R5,R5,R6
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        CMP      R5,R3
        BGE.N    ??Deal_BlackEdge_6
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        CMP      R3,#+49
        BGE.N    ??Deal_BlackEdge_6
// 1022        {   
// 1023         if( left_black[top_whiteline] > 1)
        LDR.W    R5,??DataTable7_7
        LDR.W    R6,??DataTable7_3
        LDRB     R6,[R6, #+0]
        LDRB     R5,[R6, R5]
        CMP      R5,#+2
        BLT.N    ??Deal_BlackEdge_6
// 1024          {
// 1025            left_top_whiteline = lost_start_line;
        LDR.W    R5,??DataTable7_4
        STRB     R3,[R5, #+0]
// 1026            break;
        B.N      ??Deal_BlackEdge_4
// 1027         }
// 1028        }
// 1029          
// 1030     }
// 1031   }
??Deal_BlackEdge_6:
        ADDS     R0,R0,#+1
        B.N      ??Deal_BlackEdge_3
// 1032   
// 1033   //右边
// 1034   for( i=bottom_whitebase ;i < top_whiteline-1;i++)
??Deal_BlackEdge_4:
        LDR.W    R5,??DataTable7_2
        LDRB     R5,[R5, #+0]
        MOVS     R0,R5
??Deal_BlackEdge_17:
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDR.W    R5,??DataTable7_3
        LDRB     R5,[R5, #+0]
        SUBS     R5,R5,#+1
        CMP      R0,R5
        BGE.W    ??Deal_BlackEdge_18
// 1035   {
// 1036     lost_start_line = 0;
        MOVS     R5,#+0
        MOVS     R3,R5
// 1037     lost_end_line = 0;
        MOVS     R5,#+0
        MOVS     R4,R5
// 1038     if( (Row_state[i-1] == 0 || Row_state[i-1] == 3) && (Row_state[i] == 1 || Row_state[i] == 2))//判断右边第i 点是否丢点
        LDR.W    R5,??DataTable7_6
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        ADDS     R5,R0,R5
        LDRB     R5,[R5, #-1]
        CMP      R5,#+0
        BEQ.N    ??Deal_BlackEdge_19
        LDR.W    R5,??DataTable7_6
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        ADDS     R5,R0,R5
        LDRB     R5,[R5, #-1]
        CMP      R5,#+3
        BNE.W    ??Deal_BlackEdge_20
??Deal_BlackEdge_19:
        LDR.W    R5,??DataTable7_6
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRB     R5,[R0, R5]
        CMP      R5,#+1
        BEQ.N    ??Deal_BlackEdge_21
        LDR.W    R5,??DataTable7_6
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRB     R5,[R0, R5]
        CMP      R5,#+2
        BNE.N    ??Deal_BlackEdge_20
// 1039     {
// 1040         lost_start_line = i - 1;//记录丢点的前一行
??Deal_BlackEdge_21:
        MOVS     R5,R0
        SUBS     R5,R5,#+1
        MOVS     R3,R5
// 1041        while(i< top_whiteline-1)
??Deal_BlackEdge_22:
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDR.W    R5,??DataTable7_3
        LDRB     R5,[R5, #+0]
        SUBS     R5,R5,#+1
        CMP      R0,R5
        BGE.N    ??Deal_BlackEdge_23
// 1042         {
// 1043           //连续的两行找到了点则认为找到了连接点
// 1044           if((Row_state[i] == 0 || Row_state[i] == 3) && (Row_state[i+1] == 0 || Row_state[i+1] == 3))
        LDR.W    R5,??DataTable7_6
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRB     R5,[R0, R5]
        CMP      R5,#+0
        BEQ.N    ??Deal_BlackEdge_24
        LDR.W    R5,??DataTable7_6
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRB     R5,[R0, R5]
        CMP      R5,#+3
        BNE.N    ??Deal_BlackEdge_25
??Deal_BlackEdge_24:
        LDR.W    R5,??DataTable7_6
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        ADDS     R5,R0,R5
        LDRB     R5,[R5, #+1]
        CMP      R5,#+0
        BEQ.N    ??Deal_BlackEdge_26
        LDR.W    R5,??DataTable7_6
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        ADDS     R5,R0,R5
        LDRB     R5,[R5, #+1]
        CMP      R5,#+3
        BNE.N    ??Deal_BlackEdge_25
// 1045           {
// 1046             if(lost_end_line >= top_whiteline -2)
??Deal_BlackEdge_26:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R5,??DataTable7_3
        LDRB     R5,[R5, #+0]
        SUBS     R5,R5,#+2
        CMP      R4,R5
        BLT.N    ??Deal_BlackEdge_27
// 1047               lost_end_line = i;
        MOVS     R5,R0
        MOVS     R4,R5
        B.N      ??Deal_BlackEdge_28
// 1048             else
// 1049               lost_end_line = i + 1;
??Deal_BlackEdge_27:
        ADDS     R5,R0,#+1
        MOVS     R4,R5
// 1050             break;
??Deal_BlackEdge_28:
        B.N      ??Deal_BlackEdge_23
// 1051           }  
// 1052           i++;
??Deal_BlackEdge_25:
        ADDS     R0,R0,#+1
        B.N      ??Deal_BlackEdge_22
// 1053         }
// 1054        if(lost_end_line !=0)
??Deal_BlackEdge_23:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??Deal_BlackEdge_29
// 1055        {
// 1056          for(k = lost_start_line+1; k< lost_end_line;k++)
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        ADDS     R5,R3,#+1
        MOVS     R1,R5
??Deal_BlackEdge_30:
        MOVS     R5,R4
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        SXTH     R5,R5            ;; SignExt  R5,R5,#+16,#+16
        CMP      R1,R5
        BGE.N    ??Deal_BlackEdge_20
// 1057          {                                                                    
// 1058           right_black[k] = right_black[lost_start_line] + (k -lost_start_line)*(right_black[lost_end_line]-right_black[lost_start_line])/(lost_end_line - lost_start_line);  
        LDR.W    R5,??DataTable8
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LDRB     R5,[R3, R5]
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        SUBS     R6,R1,R3
        LDR.W    R7,??DataTable8
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDRB     R7,[R4, R7]
        LDR.W    R12,??DataTable8
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LDRB     R12,[R3, R12]
        SUBS     R7,R7,R12
        MULS     R6,R7,R6
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        SUBS     R7,R4,R3
        SDIV     R6,R6,R7
        ADDS     R5,R6,R5
        LDR.W    R6,??DataTable8
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        STRB     R5,[R1, R6]
// 1059          }
        ADDS     R1,R1,#+1
        B.N      ??Deal_BlackEdge_30
// 1060        }
// 1061        else if(lost_end_line ==0 && lost_start_line > top_whiteline/3 && lost_start_line <ROW-1 )
??Deal_BlackEdge_29:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BNE.N    ??Deal_BlackEdge_20
        LDR.W    R5,??DataTable7_3
        LDRB     R5,[R5, #+0]
        MOVS     R6,#+3
        SDIV     R5,R5,R6
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        CMP      R5,R3
        BGE.N    ??Deal_BlackEdge_20
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        CMP      R3,#+49
        BGE.N    ??Deal_BlackEdge_20
// 1062        {   
// 1063          if(right_black[top_whiteline] < COLUMN -2)
        LDR.W    R5,??DataTable8
        LDR.W    R6,??DataTable7_3
        LDRB     R6,[R6, #+0]
        LDRB     R5,[R6, R5]
        CMP      R5,#+155
        BGE.N    ??Deal_BlackEdge_20
// 1064          {
// 1065            right_top_whiteline  = lost_start_line;
        LDR.W    R5,??DataTable7_5
        STRB     R3,[R5, #+0]
// 1066            break;
        B.N      ??Deal_BlackEdge_18
// 1067         }
// 1068        }
// 1069        
// 1070     }
// 1071   }
??Deal_BlackEdge_20:
        ADDS     R0,R0,#+1
        B.N      ??Deal_BlackEdge_17
// 1072  ////////////////
// 1073   if(right_top_whiteline > left_top_whiteline)
??Deal_BlackEdge_18:
        LDR.W    R5,??DataTable7_4
        LDRB     R5,[R5, #+0]
        LDR.W    R6,??DataTable7_5
        LDRB     R6,[R6, #+0]
        CMP      R5,R6
        BCS.N    ??Deal_BlackEdge_31
// 1074   {
// 1075     top_whiteline = right_top_whiteline;//除了定义最高行以外，还要对丢线的那一边做补线处理,这里是右边
        LDR.W    R5,??DataTable7_5
        LDRB     R5,[R5, #+0]
        LDR.W    R6,??DataTable7_3
        STRB     R5,[R6, #+0]
// 1076     for(i = left_top_whiteline;i<=right_top_whiteline;i++)
        LDR.W    R5,??DataTable7_4
        LDRB     R5,[R5, #+0]
        MOVS     R0,R5
??Deal_BlackEdge_32:
        LDR.W    R5,??DataTable7_5
        LDRB     R5,[R5, #+0]
        SXTH     R5,R5            ;; SignExt  R5,R5,#+16,#+16
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R5,R0
        BLT.W    ??Deal_BlackEdge_33
// 1077     {
// 1078        if(right_black[i]- (right_black[i-1] - left_black[i-1]) <= 0 )//限幅//////////////////////////////////////////////////////////////////////////////////////////////////////////
        LDR.W    R5,??DataTable8
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRB     R5,[R0, R5]
        LDR.W    R6,??DataTable8
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        ADDS     R6,R0,R6
        LDRB     R6,[R6, #-1]
        SUBS     R5,R5,R6
        LDR.W    R6,??DataTable7_7
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        ADDS     R6,R0,R6
        LDRB     R6,[R6, #-1]
        UXTAB    R5,R5,R6
        CMP      R5,#+1
        BGE.N    ??Deal_BlackEdge_34
// 1079           left_black[i]=0;
        MOVS     R5,#+0
        LDR.W    R6,??DataTable7_7
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        STRB     R5,[R0, R6]
        B.N      ??Deal_BlackEdge_35
// 1080         else
// 1081         left_black[i] = right_black[i] - (right_black[i-1] - left_black[i-1]);
??Deal_BlackEdge_34:
        LDR.W    R5,??DataTable8
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRB     R5,[R0, R5]
        LDR.W    R6,??DataTable8
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        ADDS     R6,R0,R6
        LDRB     R6,[R6, #-1]
        SUBS     R5,R5,R6
        LDR.W    R6,??DataTable7_7
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        ADDS     R6,R0,R6
        LDRB     R6,[R6, #-1]
        ADDS     R5,R6,R5
        LDR.W    R6,??DataTable7_7
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        STRB     R5,[R0, R6]
// 1082     }
??Deal_BlackEdge_35:
        ADDS     R0,R0,#+1
        B.N      ??Deal_BlackEdge_32
// 1083     
// 1084   }
// 1085  else if(right_top_whiteline < left_top_whiteline)
??Deal_BlackEdge_31:
        LDR.W    R5,??DataTable7_5
        LDRB     R5,[R5, #+0]
        LDR.W    R6,??DataTable7_4
        LDRB     R6,[R6, #+0]
        CMP      R5,R6
        BCS.N    ??Deal_BlackEdge_36
// 1086  {
// 1087    top_whiteline = left_top_whiteline;
        LDR.W    R5,??DataTable7_4
        LDRB     R5,[R5, #+0]
        LDR.W    R6,??DataTable7_3
        STRB     R5,[R6, #+0]
// 1088      for(i = right_top_whiteline;i<=left_top_whiteline;i++)
        LDR.W    R5,??DataTable7_5
        LDRB     R5,[R5, #+0]
        MOVS     R0,R5
??Deal_BlackEdge_37:
        LDR.W    R5,??DataTable7_4
        LDRB     R5,[R5, #+0]
        SXTH     R5,R5            ;; SignExt  R5,R5,#+16,#+16
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R5,R0
        BLT.N    ??Deal_BlackEdge_33
// 1089   {
// 1090     if(left_black[i] + (right_black[i-1] - left_black[i-1]) >= COLUMN-1)
        LDR.W    R5,??DataTable7_7
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRB     R5,[R0, R5]
        LDR.W    R6,??DataTable8
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        ADDS     R6,R0,R6
        LDRB     R6,[R6, #-1]
        ADDS     R5,R6,R5
        LDR.W    R6,??DataTable7_7
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        ADDS     R6,R0,R6
        LDRB     R6,[R6, #-1]
        SUBS     R5,R5,R6
        CMP      R5,#+156
        BLT.N    ??Deal_BlackEdge_38
// 1091       right_black[i] = COLUMN-1;   
        MOVS     R5,#+156
        LDR.W    R6,??DataTable8
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        STRB     R5,[R0, R6]
        B.N      ??Deal_BlackEdge_39
// 1092     else
// 1093       right_black[i] = left_black[i] + (right_black[i-1] - left_black[i-1]);//
??Deal_BlackEdge_38:
        LDR.W    R5,??DataTable7_7
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRB     R5,[R0, R5]
        LDR.W    R6,??DataTable8
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        ADDS     R6,R0,R6
        LDRB     R6,[R6, #-1]
        ADDS     R5,R6,R5
        LDR.W    R6,??DataTable7_7
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        ADDS     R6,R0,R6
        LDRB     R6,[R6, #-1]
        SUBS     R5,R5,R6
        LDR.W    R6,??DataTable8
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        STRB     R5,[R0, R6]
// 1094   }
??Deal_BlackEdge_39:
        ADDS     R0,R0,#+1
        B.N      ??Deal_BlackEdge_37
// 1095  }
// 1096 else
// 1097   {
// 1098     top_whiteline = right_top_whiteline;
??Deal_BlackEdge_36:
        LDR.N    R5,??DataTable7_5
        LDRB     R5,[R5, #+0]
        LDR.N    R6,??DataTable7_3
        STRB     R5,[R6, #+0]
// 1099   }
// 1100 
// 1101  //滤除左右的变沿线的单个跳变///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// 1102   for( i=bottom_whitebase + 1 ;i <= top_whiteline;i++)
??Deal_BlackEdge_33:
        LDR.N    R5,??DataTable7_2
        LDRB     R5,[R5, #+0]
        ADDS     R5,R5,#+1
        MOVS     R0,R5
??Deal_BlackEdge_40:
        LDR.N    R5,??DataTable7_3
        LDRB     R5,[R5, #+0]
        SXTH     R5,R5            ;; SignExt  R5,R5,#+16,#+16
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R5,R0
        BLT.N    ??Deal_BlackEdge_41
// 1103   {
// 1104     if(left_black[i-1] <= 1 && left_black[i] > 1 && left_black[i+1] <= 1)
        LDR.N    R5,??DataTable7_7
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        ADDS     R5,R0,R5
        LDRB     R5,[R5, #-1]
        CMP      R5,#+2
        BGE.N    ??Deal_BlackEdge_42
        LDR.N    R5,??DataTable7_7
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRB     R5,[R0, R5]
        CMP      R5,#+2
        BLT.N    ??Deal_BlackEdge_42
        LDR.N    R5,??DataTable7_7
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        ADDS     R5,R0,R5
        LDRB     R5,[R5, #+1]
        CMP      R5,#+2
        BGE.N    ??Deal_BlackEdge_42
// 1105     {
// 1106       left_black[i] = 0;
        MOVS     R5,#+0
        LDR.N    R6,??DataTable7_7
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        STRB     R5,[R0, R6]
// 1107  /*     
// 1108       if(Row_state[k] == 1 ||Row_state[k] == 2)
// 1109       {
// 1110         Row_state[k] = 2;
// 1111       }
// 1112       if(Row_state[k] == 3)
// 1113       {
// 1114         Row_state[k] = 0;
// 1115       }*/
// 1116     }
// 1117     
// 1118    if(right_black[i-1] >= COLUMN-2 && right_black[i] < COLUMN-2 && right_black[i+1] >= COLUMN-2)
??Deal_BlackEdge_42:
        LDR.W    R5,??DataTable8
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        ADDS     R5,R0,R5
        LDRB     R5,[R5, #-1]
        CMP      R5,#+155
        BLT.N    ??Deal_BlackEdge_43
        LDR.W    R5,??DataTable8
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRB     R5,[R0, R5]
        CMP      R5,#+155
        BGE.N    ??Deal_BlackEdge_43
        LDR.W    R5,??DataTable8
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        ADDS     R5,R0,R5
        LDRB     R5,[R5, #+1]
        CMP      R5,#+155
        BLT.N    ??Deal_BlackEdge_43
// 1119     {
// 1120       right_black[i] = COLUMN-1;
        MOVS     R5,#+156
        LDR.W    R6,??DataTable8
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        STRB     R5,[R0, R6]
// 1121       
// 1122     /*  if(Row_state[k] == 0 ||Row_state[k] == 2)
// 1123       {
// 1124         Row_state[k] = 2;
// 1125       }
// 1126       if(Row_state[k] == 3)
// 1127       {
// 1128         Row_state[k] = 1;
// 1129       }*/
// 1130     }
// 1131   }
??Deal_BlackEdge_43:
        ADDS     R0,R0,#+1
        B.N      ??Deal_BlackEdge_40
// 1132  //边沿线滤波结束
// 1133   
// 1134  //对之前的错误的补线进行重新的虚构
// 1135   //这里的虚构会导致有一种情况发生就是，在弯道的顶行的时候，可能会出现补点，与不补点的区别，这样就导致了舵机的抖动
// 1136   for( i=bottom_whitebase ;i <= top_whiteline;i++)
??Deal_BlackEdge_41:
        LDR.N    R5,??DataTable7_2
        LDRB     R5,[R5, #+0]
        MOVS     R0,R5
??Deal_BlackEdge_44:
        LDR.N    R5,??DataTable7_3
        LDRB     R5,[R5, #+0]
        SXTH     R5,R5            ;; SignExt  R5,R5,#+16,#+16
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R5,R0
        BLT.N    ??Deal_BlackEdge_45
// 1137   {
// 1138     if(Row_state[i] != 3)///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        LDR.N    R5,??DataTable7_6
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRB     R5,[R0, R5]
        CMP      R5,#+3
        BEQ.N    ??Deal_BlackEdge_46
// 1139     {
// 1140       center_white[i] = (right_black[i]+left_black[i])/2;
        LDR.W    R5,??DataTable8
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRB     R5,[R0, R5]
        LDR.N    R6,??DataTable7_7
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRB     R6,[R0, R6]
        ADDS     R5,R6,R5
        MOVS     R6,#+2
        SDIV     R5,R5,R6
        LDR.N    R6,??DataTable7
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        STRB     R5,[R0, R6]
// 1141     }
// 1142   }
??Deal_BlackEdge_46:
        ADDS     R0,R0,#+1
        B.N      ??Deal_BlackEdge_44
// 1143   
// 1144   //对于两边出界的点，不利用求平均值的方法去做，而是利用前一行的状态进行补充
// 1145   for(i= bottom_whitebase; i <= top_whiteline; i++)
??Deal_BlackEdge_45:
        LDR.N    R5,??DataTable7_2
        LDRB     R5,[R5, #+0]
        MOVS     R0,R5
??Deal_BlackEdge_47:
        LDR.N    R5,??DataTable7_3
        LDRB     R5,[R5, #+0]
        SXTH     R5,R5            ;; SignExt  R5,R5,#+16,#+16
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R5,R0
        BLT.N    ??Deal_BlackEdge_48
// 1146   {
// 1147     if(left_black[i] <= 1 && right_black[i] <= COLUMN-5)  //对于左边出界的点进行补充
        LDR.N    R5,??DataTable7_7
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRB     R5,[R0, R5]
        CMP      R5,#+2
        BGE.N    ??Deal_BlackEdge_49
        LDR.W    R5,??DataTable8
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRB     R5,[R0, R5]
        CMP      R5,#+153
        BGE.N    ??Deal_BlackEdge_49
// 1148     {
// 1149       if( right_black[i] - (right_black[un_out_hang]-left_black[un_out_hang])/2 < 0) 
        LDR.W    R5,??DataTable8
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRB     R5,[R0, R5]
        LDR.W    R6,??DataTable8
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LDRB     R6,[R2, R6]
        LDR.N    R7,??DataTable7_7
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LDRB     R7,[R2, R7]
        SUBS     R6,R6,R7
        MOVS     R7,#+2
        SDIV     R6,R6,R7
        SUBS     R5,R5,R6
        CMP      R5,#+0
        BPL.N    ??Deal_BlackEdge_50
// 1150         center_white[i] = 0;
        MOVS     R5,#+0
        LDR.N    R6,??DataTable7
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        STRB     R5,[R0, R6]
        B.N      ??Deal_BlackEdge_51
// 1151       else
// 1152        center_white[i] = right_black[i] - (right_black[un_out_hang]-left_black[un_out_hang])/2;
??Deal_BlackEdge_50:
        LDR.W    R5,??DataTable8
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRB     R5,[R0, R5]
        LDR.W    R6,??DataTable8
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LDRB     R6,[R2, R6]
        LDR.N    R7,??DataTable7_7
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LDRB     R7,[R2, R7]
        SUBS     R6,R6,R7
        MOVS     R7,#+2
        SDIV     R6,R6,R7
        SUBS     R5,R5,R6
        LDR.N    R6,??DataTable7
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        STRB     R5,[R0, R6]
        B.N      ??Deal_BlackEdge_51
// 1153     }
// 1154     
// 1155     else if(right_black[i] >= COLUMN-2 && left_black[i] >= 3)
??Deal_BlackEdge_49:
        LDR.W    R5,??DataTable8
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRB     R5,[R0, R5]
        CMP      R5,#+155
        BLT.N    ??Deal_BlackEdge_52
        LDR.N    R5,??DataTable7_7
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRB     R5,[R0, R5]
        CMP      R5,#+3
        BLT.N    ??Deal_BlackEdge_52
// 1156     {
// 1157       if( left_black[i] + (right_black[un_out_hang]-left_black[un_out_hang])/2 > COLUMN - 1)
        LDR.N    R5,??DataTable7_7
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRB     R5,[R0, R5]
        LDR.W    R6,??DataTable8
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LDRB     R6,[R2, R6]
        LDR.N    R7,??DataTable7_7
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LDRB     R7,[R2, R7]
        SUBS     R6,R6,R7
        MOVS     R7,#+2
        SDIV     R6,R6,R7
        ADDS     R5,R6,R5
        CMP      R5,#+157
        BLT.N    ??Deal_BlackEdge_53
// 1158         center_white[i] = COLUMN - 1 ;
        MOVS     R5,#+156
        LDR.N    R6,??DataTable7
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        STRB     R5,[R0, R6]
        B.N      ??Deal_BlackEdge_51
// 1159       else
// 1160        center_white[i] = left_black[i] + (right_black[un_out_hang]-left_black[un_out_hang])/2;
??Deal_BlackEdge_53:
        LDR.N    R5,??DataTable7_7
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRB     R5,[R0, R5]
        LDR.W    R6,??DataTable8
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LDRB     R6,[R2, R6]
        LDR.N    R7,??DataTable7_7
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LDRB     R7,[R2, R7]
        SUBS     R6,R6,R7
        MOVS     R7,#+2
        SDIV     R6,R6,R7
        ADDS     R5,R6,R5
        LDR.N    R6,??DataTable7
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        STRB     R5,[R0, R6]
        B.N      ??Deal_BlackEdge_51
// 1161     }
// 1162     else
// 1163       un_out_hang = i;
??Deal_BlackEdge_52:
        MOVS     R5,R0
        MOVS     R2,R5
// 1164   }
??Deal_BlackEdge_51:
        ADDS     R0,R0,#+1
        B.N      ??Deal_BlackEdge_47
// 1165  
// 1166  //对中线进行中值滤波
// 1167  //对中线和边沿线进行中值滤波
// 1168  for( i=bottom_whitebase + 1;i < top_whiteline-2;i++)
??Deal_BlackEdge_48:
        LDR.N    R5,??DataTable7_2
        LDRB     R5,[R5, #+0]
        ADDS     R5,R5,#+1
        MOVS     R0,R5
??Deal_BlackEdge_54:
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDR.N    R5,??DataTable7_3
        LDRB     R5,[R5, #+0]
        SUBS     R5,R5,#+2
        CMP      R0,R5
        BGE.W    ??Deal_BlackEdge_55
// 1169  {
// 1170    if((center_white[i] > center_white[i-1] && center_white[i] > center_white[i+1]) ||(center_white[i] < center_white[i-1] && center_white[i] < center_white[i+1]))
        LDR.N    R5,??DataTable7
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        ADDS     R5,R0,R5
        LDRB     R5,[R5, #-1]
        LDR.N    R6,??DataTable7
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRB     R6,[R0, R6]
        CMP      R5,R6
        BCS.N    ??Deal_BlackEdge_56
        LDR.N    R5,??DataTable7
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        ADDS     R5,R0,R5
        LDRB     R5,[R5, #+1]
        LDR.N    R6,??DataTable7
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRB     R6,[R0, R6]
        CMP      R5,R6
        BCC.N    ??Deal_BlackEdge_57
??Deal_BlackEdge_56:
        LDR.N    R5,??DataTable7
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRB     R5,[R0, R5]
        LDR.N    R6,??DataTable7
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        ADDS     R6,R0,R6
        LDRB     R6,[R6, #-1]
        CMP      R5,R6
        BCS.N    ??Deal_BlackEdge_58
        LDR.N    R5,??DataTable7
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRB     R5,[R0, R5]
        LDR.N    R6,??DataTable7
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        ADDS     R6,R0,R6
        LDRB     R6,[R6, #+1]
        CMP      R5,R6
        BCS.N    ??Deal_BlackEdge_58
// 1171    {
// 1172      center_white[i] = (center_white[i-1] + center_white[i+1])/2;
??Deal_BlackEdge_57:
        LDR.N    R5,??DataTable7
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        ADDS     R5,R0,R5
        LDRB     R5,[R5, #-1]
        LDR.N    R6,??DataTable7
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        ADDS     R6,R0,R6
        LDRB     R6,[R6, #+1]
        UXTAB    R5,R6,R5
        MOVS     R6,#+2
        SDIV     R5,R5,R6
        LDR.N    R6,??DataTable7
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        STRB     R5,[R0, R6]
// 1173    }
// 1174       if((left_black[i] > left_black[i-1] && left_black[i] > left_black[i+1]) ||(left_black[i] < left_black[i-1] && left_black[i] < left_black[i+1]))/////////////////////////////////
??Deal_BlackEdge_58:
        LDR.N    R5,??DataTable7_7
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        ADDS     R5,R0,R5
        LDRB     R5,[R5, #-1]
        LDR.N    R6,??DataTable7_7
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRB     R6,[R0, R6]
        CMP      R5,R6
        BCS.N    ??Deal_BlackEdge_59
        LDR.N    R5,??DataTable7_7
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        ADDS     R5,R0,R5
        LDRB     R5,[R5, #+1]
        LDR.N    R6,??DataTable7_7
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRB     R6,[R0, R6]
        CMP      R5,R6
        BCC.N    ??Deal_BlackEdge_60
??Deal_BlackEdge_59:
        LDR.N    R5,??DataTable7_7
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRB     R5,[R0, R5]
        LDR.N    R6,??DataTable7_7
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        ADDS     R6,R0,R6
        LDRB     R6,[R6, #-1]
        CMP      R5,R6
        BCS.N    ??Deal_BlackEdge_61
        LDR.N    R5,??DataTable7_7
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRB     R5,[R0, R5]
        LDR.N    R6,??DataTable7_7
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        ADDS     R6,R0,R6
        LDRB     R6,[R6, #+1]
        CMP      R5,R6
        BCS.N    ??Deal_BlackEdge_61
// 1175    {
// 1176      left_black[i] = (left_black[i-1] + left_black[i+1])/2;                                                                                           ////////////////////////////////  
??Deal_BlackEdge_60:
        LDR.N    R5,??DataTable7_7
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        ADDS     R5,R0,R5
        LDRB     R5,[R5, #-1]
        LDR.N    R6,??DataTable7_7
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        ADDS     R6,R0,R6
        LDRB     R6,[R6, #+1]
        UXTAB    R5,R6,R5
        MOVS     R6,#+2
        SDIV     R5,R5,R6
        LDR.N    R6,??DataTable7_7
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        STRB     R5,[R0, R6]
// 1177    }
// 1178       if((right_black[i] > right_black[i-1] && right_black[i] > right_black[i+1]) ||(right_black[i] < right_black[i-1] && right_black[i] < right_black[i+1]))/////////////////////////
??Deal_BlackEdge_61:
        LDR.W    R5,??DataTable8
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        ADDS     R5,R0,R5
        LDRB     R5,[R5, #-1]
        LDR.W    R6,??DataTable8
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRB     R6,[R0, R6]
        CMP      R5,R6
        BCS.N    ??Deal_BlackEdge_62
        LDR.W    R5,??DataTable8
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        ADDS     R5,R0,R5
        LDRB     R5,[R5, #+1]
        LDR.W    R6,??DataTable8
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRB     R6,[R0, R6]
        CMP      R5,R6
        BCC.N    ??Deal_BlackEdge_63
??Deal_BlackEdge_62:
        LDR.W    R5,??DataTable8
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRB     R5,[R0, R5]
        LDR.W    R6,??DataTable8
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        ADDS     R6,R0,R6
        LDRB     R6,[R6, #-1]
        CMP      R5,R6
        BCS.N    ??Deal_BlackEdge_64
        LDR.W    R5,??DataTable8
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDRB     R5,[R0, R5]
        LDR.W    R6,??DataTable8
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        ADDS     R6,R0,R6
        LDRB     R6,[R6, #+1]
        CMP      R5,R6
        BCS.N    ??Deal_BlackEdge_64
// 1179    {
// 1180      right_black[i] = (right_black[i-1] + right_black[i+1])/2;                                                                                             ////////////////////////////
??Deal_BlackEdge_63:
        LDR.W    R5,??DataTable8
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        ADDS     R5,R0,R5
        LDRB     R5,[R5, #-1]
        LDR.W    R6,??DataTable8
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        ADDS     R6,R0,R6
        LDRB     R6,[R6, #+1]
        UXTAB    R5,R6,R5
        MOVS     R6,#+2
        SDIV     R5,R5,R6
        LDR.W    R6,??DataTable8
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        STRB     R5,[R0, R6]
// 1181    }
// 1182  }
??Deal_BlackEdge_64:
        ADDS     R0,R0,#+1
        B.N      ??Deal_BlackEdge_54
// 1183  
// 1184  
// 1185 }
??Deal_BlackEdge_55:
        POP      {R4-R7}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7:
        DC32     center_white

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_1:
        DC32     VideoImage2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_2:
        DC32     bottom_whitebase

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_3:
        DC32     top_whiteline

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_4:
        DC32     left_top_whiteline

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_5:
        DC32     right_top_whiteline

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_6:
        DC32     Row_state

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_7:
        DC32     left_black
// 1186 
// 1187 
// 1188 /*这个程序包含了两部分，其一是赛道特征的提取；其二是赛道类型的判断///
// 1189 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1190 void get_line_information(void)
// 1191 {
get_line_information:
        PUSH     {R3-R7,LR}
// 1192   int16 i;
// 1193   uint8 ramp_count = 0;  //用于记录宽度超出限制的行的个数
        MOVS     R5,#+0
// 1194   uint16 temp_center_line = 0;
        MOVS     R6,#+0
// 1195   center_lost_hang = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable9
        STRB     R0,[R1, #+0]
// 1196   
// 1197     /*程序的开始首先对中线出现断点的情况进行修补
// 1198   当图像的中线出现了巨大的跳变时，他前面的线全部用左右两边的中值代替
// 1199   */
// 1200  //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// 
// 1201   if(left_black[10]<=1 || left_black[11]<=1 ||right_black[10]>=COLUMN-2||right_black[11]>=COLUMN-2)
        LDR.W    R0,??DataTable9_1
        LDRB     R0,[R0, #+10]
        CMP      R0,#+2
        BLT.N    ??get_line_information_0
        LDR.W    R0,??DataTable9_1
        LDRB     R0,[R0, #+11]
        CMP      R0,#+2
        BLT.N    ??get_line_information_0
        LDR.W    R0,??DataTable8
        LDRB     R0,[R0, #+10]
        CMP      R0,#+155
        BGE.N    ??get_line_information_0
        LDR.W    R0,??DataTable8
        LDRB     R0,[R0, #+11]
        CMP      R0,#+155
        BLT.N    ??get_line_information_1
// 1202   {
// 1203     for(i = bottom_whitebase + 10 ; i < top_whiteline-5;i++)  //基准行上的偏差不用处理
??get_line_information_0:
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+10
        MOVS     R4,R0
??get_line_information_2:
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        LDR.W    R0,??DataTable9_3
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+5
        CMP      R4,R0
        BGE.N    ??get_line_information_3
// 1204     {
// 1205       if(f_abs16(center_white[i] - center_white[i+2]) > CENTER_LOST_POINT
// 1206          &&f_abs16(center_white[i] - center_white[i+3]) > CENTER_LOST_POINT)
        LDR.W    R0,??DataTable9_4
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        LDRB     R0,[R4, R0]
        LDR.W    R1,??DataTable9_4
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        ADDS     R1,R4,R1
        LDRB     R1,[R1, #+2]
        SUBS     R0,R0,R1
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       f_abs16
        CMP      R0,#+21
        BLT.N    ??get_line_information_4
        LDR.W    R0,??DataTable9_4
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        LDRB     R0,[R4, R0]
        LDR.W    R1,??DataTable9_4
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        ADDS     R1,R4,R1
        LDRB     R1,[R1, #+3]
        SUBS     R0,R0,R1
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       f_abs16
        CMP      R0,#+21
        BLT.N    ??get_line_information_4
// 1207       {
// 1208         center_lost_hang = i;
        LDR.W    R0,??DataTable9
        STRB     R4,[R0, #+0]
// 1209         break;
        B.N      ??get_line_information_3
// 1210       }
// 1211     }
??get_line_information_4:
        ADDS     R4,R4,#+1
        B.N      ??get_line_information_2
// 1212      if(center_lost_hang >0)
??get_line_information_3:
        LDR.W    R0,??DataTable9
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??get_line_information_1
// 1213      {
// 1214        for( i = bottom_whitebase ;  i< center_lost_hang + 2;i++)
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+0]
        MOVS     R4,R0
??get_line_information_5:
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        LDR.W    R0,??DataTable9
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+2
        CMP      R4,R0
        BGE.N    ??get_line_information_1
// 1215        {
// 1216          center_white[i] = (left_black[i]+right_black[i])/2;  
        LDR.W    R0,??DataTable9_1
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        LDRB     R0,[R4, R0]
        LDR.W    R1,??DataTable8
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        LDRB     R1,[R4, R1]
        ADDS     R0,R1,R0
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        LDR.W    R1,??DataTable9_4
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        STRB     R0,[R4, R1]
// 1217        }
        ADDS     R4,R4,#+1
        B.N      ??get_line_information_5
// 1218      }
// 1219   }
// 1220  //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// 
// 1221  for(i = bottom_whitebase+10; i< top_whiteline-1;i++)
??get_line_information_1:
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+10
        MOVS     R4,R0
??get_line_information_6:
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        LDR.W    R0,??DataTable9_3
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+1
        CMP      R4,R0
        BGE.N    ??get_line_information_7
// 1222  {
// 1223    if(
// 1224        (f_abs16(center_white[i] - left_black[i])<=1  && f_abs16(center_white[i+1] - left_black[i+1])<=1 && f_abs16(center_white[i+2] - left_black[i+2])<=1) 
// 1225         ||
// 1226       ( f_abs16(center_white[i] - right_black[i])<=1 && f_abs16(center_white[i+1] - right_black[i+1])<=1 && f_abs16(center_white[i+2] - right_black[i+2])<=1)
// 1227    
// 1228         )
        LDR.W    R0,??DataTable9_4
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        LDRB     R0,[R4, R0]
        LDR.W    R1,??DataTable9_1
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        LDRB     R1,[R4, R1]
        SUBS     R0,R0,R1
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       f_abs16
        CMP      R0,#+2
        BGE.N    ??get_line_information_8
        LDR.W    R0,??DataTable9_4
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        ADDS     R0,R4,R0
        LDRB     R0,[R0, #+1]
        LDR.W    R1,??DataTable9_1
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        ADDS     R1,R4,R1
        LDRB     R1,[R1, #+1]
        SUBS     R0,R0,R1
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       f_abs16
        CMP      R0,#+2
        BGE.N    ??get_line_information_8
        LDR.W    R0,??DataTable9_4
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        ADDS     R0,R4,R0
        LDRB     R0,[R0, #+2]
        LDR.W    R1,??DataTable9_1
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        ADDS     R1,R4,R1
        LDRB     R1,[R1, #+2]
        SUBS     R0,R0,R1
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       f_abs16
        CMP      R0,#+2
        BLT.N    ??get_line_information_9
??get_line_information_8:
        LDR.W    R0,??DataTable9_4
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        LDRB     R0,[R4, R0]
        LDR.W    R1,??DataTable8
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        LDRB     R1,[R4, R1]
        SUBS     R0,R0,R1
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       f_abs16
        CMP      R0,#+2
        BGE.N    ??get_line_information_10
        LDR.W    R0,??DataTable9_4
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        ADDS     R0,R4,R0
        LDRB     R0,[R0, #+1]
        LDR.W    R1,??DataTable8
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        ADDS     R1,R4,R1
        LDRB     R1,[R1, #+1]
        SUBS     R0,R0,R1
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       f_abs16
        CMP      R0,#+2
        BGE.N    ??get_line_information_10
        LDR.W    R0,??DataTable9_4
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        ADDS     R0,R4,R0
        LDRB     R0,[R0, #+2]
        LDR.W    R1,??DataTable8
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        ADDS     R1,R4,R1
        LDRB     R1,[R1, #+2]
        SUBS     R0,R0,R1
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       f_abs16
        CMP      R0,#+2
        BGE.N    ??get_line_information_10
// 1229    { 
// 1230      top_whiteline = i + 1;   //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////          
??get_line_information_9:
        ADDS     R0,R4,#+1
        LDR.W    R1,??DataTable9_3
        STRB     R0,[R1, #+0]
// 1231    }
// 1232  }
??get_line_information_10:
        ADDS     R4,R4,#+1
        B.N      ??get_line_information_6
// 1233  if(top_whiteline < ROW - 2)
??get_line_information_7:
        LDR.W    R0,??DataTable9_3
        LDRB     R0,[R0, #+0]
        CMP      R0,#+48
        BGE.N    ??get_line_information_11
// 1234   {
// 1235     for(i = top_whiteline+1;i<ROW;i++)/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        LDR.W    R0,??DataTable9_3
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        MOVS     R4,R0
??get_line_information_12:
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        CMP      R4,#+50
        BGE.N    ??get_line_information_11
// 1236     {
// 1237       center_white[i] =MID;
        MOVS     R0,#+78
        LDR.W    R1,??DataTable9_4
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        STRB     R0,[R4, R1]
// 1238       right_black[i] = MID+2;
        MOVS     R0,#+80
        LDR.W    R1,??DataTable8
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        STRB     R0,[R4, R1]
// 1239       left_black[i] = MID-2;
        MOVS     R0,#+76
        LDR.W    R1,??DataTable9_1
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        STRB     R0,[R4, R1]
// 1240     }
        ADDS     R4,R4,#+1
        B.N      ??get_line_information_12
// 1241   }
// 1242     /////////// //图像的中心线出来之后，首先要确定能够到那些行，在此之后的行全部用控制的行的
// 1243    /////////////////////求取控制的最高有效行////////////////////////////////
// 1244   danger_count = 0;
??get_line_information_11:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable10
        STRH     R0,[R1, #+0]
// 1245   danger_flag = 1;//没有判断之前都认为是危险状态
        MOVS     R0,#+1
        LDR.W    R1,??DataTable10_1
        STRB     R0,[R1, #+0]
// 1246   control_top_whiteline = top_whiteline;
        LDR.W    R0,??DataTable9_3
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable10_2
        STRH     R0,[R1, #+0]
// 1247   
// 1248   ////////////////////计算控制的最高有效行//////////////////////
// 1249      while(danger_flag ==1)
??get_line_information_13:
        LDR.W    R0,??DataTable10_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.W    ??get_line_information_14
// 1250      {
// 1251        for(i = control_top_whiteline;i>=deal_start_line ;i--)//表示从上向下遍历
        LDR.W    R0,??DataTable10_2
        LDRSH    R0,[R0, #+0]
        MOVS     R4,R0
??get_line_information_15:
        LDR.W    R0,??DataTable10_3
        LDRB     R0,[R0, #+0]
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R4,R0
        BLT.N    ??get_line_information_16
// 1252         {                                                                                         ///////////////////////////////////////////////////////////////////////////////////////////
// 1253           temp_center_line = center_white[control_top_whiteline] + (i - (control_top_whiteline)) *(center_white[deal_start_line] - center_white[control_top_whiteline])/( deal_start_line-(control_top_whiteline) );
        LDR.W    R0,??DataTable9_4
        LDR.W    R1,??DataTable10_2
        LDRH     R1,[R1, #+0]
        LDRB     R0,[R1, R0]
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        LDR.W    R1,??DataTable10_2
        LDRH     R1,[R1, #+0]
        SUBS     R1,R4,R1
        LDR.W    R2,??DataTable9_4
        LDR.W    R3,??DataTable10_3
        LDRB     R3,[R3, #+0]
        LDRB     R2,[R3, R2]
        LDR.W    R3,??DataTable9_4
        LDR.W    R7,??DataTable10_2
        LDRH     R7,[R7, #+0]
        LDRB     R3,[R7, R3]
        SUBS     R2,R2,R3
        MULS     R1,R2,R1
        LDR.W    R2,??DataTable10_3
        LDRB     R2,[R2, #+0]
        LDR.W    R3,??DataTable10_2
        LDRH     R3,[R3, #+0]
        SUBS     R2,R2,R3
        SDIV     R1,R1,R2
        ADDS     R0,R1,R0
        MOVS     R6,R0
// 1254         if(
// 1255            (right_black[i] - temp_center_line < (refer_road_width[i]/5)&&right_black[i] < COLUMN - 2) || (temp_center_line - left_black[i] < (refer_road_width[i]/5) && left_black[i] > 1)
// 1256              && i < ( top_whiteline - 10 )   //远端的点不进行安全化，安全化之后对直道入急弯的影响很大
// 1257              )
        LDR.W    R0,??DataTable10_4
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        LDRB     R0,[R4, R0]
        MOVS     R1,#+5
        SDIV     R0,R0,R1
        LDR.W    R1,??DataTable8
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        LDRB     R1,[R4, R1]
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        SUBS     R1,R1,R6
        CMP      R1,R0
        BGE.N    ??get_line_information_17
        LDR.W    R0,??DataTable8
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        LDRB     R0,[R4, R0]
        CMP      R0,#+155
        BLT.N    ??get_line_information_18
??get_line_information_17:
        LDR.W    R0,??DataTable10_4
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        LDRB     R0,[R4, R0]
        MOVS     R1,#+5
        SDIV     R0,R0,R1
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        LDR.W    R1,??DataTable9_1
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        LDRB     R1,[R4, R1]
        SUBS     R1,R6,R1
        CMP      R1,R0
        BGE.N    ??get_line_information_19
        LDR.W    R0,??DataTable9_1
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        LDRB     R0,[R4, R0]
        CMP      R0,#+2
        BLT.N    ??get_line_information_19
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        LDR.W    R0,??DataTable9_3
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+10
        CMP      R4,R0
        BGE.N    ??get_line_information_19
// 1258             danger_count++;  
??get_line_information_18:
        LDR.W    R0,??DataTable10
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable10
        STRH     R0,[R1, #+0]
// 1259         }
??get_line_information_19:
        SUBS     R4,R4,#+1
        B.N      ??get_line_information_15
// 1260        
// 1261        if(danger_count >0)
??get_line_information_16:
        LDR.W    R0,??DataTable10
        LDRH     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??get_line_information_20
// 1262        {
// 1263          control_top_whiteline --;  
        LDR.W    R0,??DataTable10_2
        LDRH     R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.W    R1,??DataTable10_2
        STRH     R0,[R1, #+0]
// 1264          danger_count = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable10
        STRH     R0,[R1, #+0]
        B.N      ??get_line_information_13
// 1265        }
// 1266        else
// 1267        {  
// 1268          danger_flag = 0;//危险消除
??get_line_information_20:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable10_1
        STRB     R0,[R1, #+0]
        B.N      ??get_line_information_13
// 1269        }
// 1270      }
// 1271      
// 1272   /////////////////赛道的类型的判断/////////////////////////
// 1273     S_right = 0;//向右拐的计数
??get_line_information_14:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable10_5
        STRB     R0,[R1, #+0]
// 1274     S_left =0 ; //向左拐计数
        MOVS     R0,#+0
        LDR.W    R1,??DataTable10_6
        STRB     R0,[R1, #+0]
// 1275     S_straight = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable10_7
        STRB     R0,[R1, #+0]
// 1276   for( i=bottom_whitebase ;i < control_top_whiteline;i++)
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+0]
        MOVS     R4,R0
??get_line_information_21:
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        LDR.W    R0,??DataTable10_2
        LDRH     R0,[R0, #+0]
        CMP      R4,R0
        BGE.N    ??get_line_information_22
// 1277  {
// 1278    if(center_white[i+1]- center_white[i] > 1)
        LDR.W    R0,??DataTable9_4
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        ADDS     R0,R4,R0
        LDRB     R0,[R0, #+1]
        LDR.W    R1,??DataTable9_4
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        LDRB     R1,[R4, R1]
        SUBS     R0,R0,R1
        CMP      R0,#+2
        BLT.N    ??get_line_information_23
// 1279    {
// 1280      S_right++; //S 弯右加加
        LDR.W    R0,??DataTable10_5
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable10_5
        STRB     R0,[R1, #+0]
        B.N      ??get_line_information_24
// 1281    }
// 1282    else if(center_white[i]- center_white[i+1] > 1)
??get_line_information_23:
        LDR.W    R0,??DataTable9_4
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        LDRB     R0,[R4, R0]
        LDR.W    R1,??DataTable9_4
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        ADDS     R1,R4,R1
        LDRB     R1,[R1, #+1]
        SUBS     R0,R0,R1
        CMP      R0,#+2
        BLT.N    ??get_line_information_25
// 1283    {
// 1284      S_left++; //S 弯左加加
        LDR.W    R0,??DataTable10_6
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable10_6
        STRB     R0,[R1, #+0]
        B.N      ??get_line_information_24
// 1285    }
// 1286    else
// 1287    {
// 1288      S_straight++;
??get_line_information_25:
        LDR.W    R0,??DataTable10_7
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable10_7
        STRB     R0,[R1, #+0]
// 1289    }
// 1290  }
??get_line_information_24:
        ADDS     R4,R4,#+1
        B.N      ??get_line_information_21
// 1291  
// 1292  /*对赛道的判断
// 1293  对于赛道的判断 只是区分直道(1) 、波浪弯道(2)、 入弯(3)、弯道(4) */
// 1294  
// 1295  
// 1296  if( control_top_whiteline >= 42)//??????0520
??get_line_information_22:
        LDR.W    R0,??DataTable10_2
        LDRH     R0,[R0, #+0]
        CMP      R0,#+42
        BLT.N    ??get_line_information_26
// 1297  {
// 1298    if(S_left<5 && S_right < 5 )
        LDR.W    R0,??DataTable10_6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+5
        BGE.N    ??get_line_information_27
        LDR.W    R0,??DataTable10_5
        LDRB     R0,[R0, #+0]
        CMP      R0,#+5
        BGE.N    ??get_line_information_27
// 1299       direction = 1;  //直道
        MOVS     R0,#+1
        LDR.W    R1,??DataTable10_8
        STRB     R0,[R1, #+0]
        B.N      ??get_line_information_28
// 1300    else if((f_abs16(S_left-S_right) < 8 && S_left>1 &&S_right>1)
// 1301            )
??get_line_information_27:
        LDR.W    R0,??DataTable10_6
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable10_5
        LDRB     R1,[R1, #+0]
        SUBS     R0,R0,R1
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       f_abs16
        CMP      R0,#+8
        BGE.N    ??get_line_information_29
        LDR.W    R0,??DataTable10_6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+2
        BLT.N    ??get_line_information_29
        LDR.W    R0,??DataTable10_5
        LDRB     R0,[R0, #+0]
        CMP      R0,#+2
        BLT.N    ??get_line_information_29
// 1302       direction = 2;  //波浪弯道
        MOVS     R0,#+2
        LDR.W    R1,??DataTable10_8
        STRB     R0,[R1, #+0]
        B.N      ??get_line_information_28
// 1303    else if((S_left<=1 )||(S_right<=1))
??get_line_information_29:
        LDR.W    R0,??DataTable10_6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+2
        BLT.N    ??get_line_information_30
        LDR.W    R0,??DataTable10_5
        LDRB     R0,[R0, #+0]
        CMP      R0,#+2
        BGE.N    ??get_line_information_31
// 1304      direction = 6;  //大弧弯
??get_line_information_30:
        MOVS     R0,#+6
        LDR.W    R1,??DataTable10_8
        STRB     R0,[R1, #+0]
        B.N      ??get_line_information_28
// 1305    else
// 1306      direction =3;// re_direction;出弯道or入弯道或者是斜着的直道
??get_line_information_31:
        MOVS     R0,#+3
        LDR.W    R1,??DataTable10_8
        STRB     R0,[R1, #+0]
        B.N      ??get_line_information_28
// 1307  }
// 1308  else if( control_top_whiteline >=35 && control_top_whiteline < 41)
??get_line_information_26:
        LDR.W    R0,??DataTable10_2
        LDRH     R0,[R0, #+0]
        CMP      R0,#+35
        BLT.N    ??get_line_information_32
        LDR.W    R0,??DataTable10_2
        LDRH     R0,[R0, #+0]
        CMP      R0,#+41
        BGE.N    ??get_line_information_32
// 1309  {
// 1310   if((S_left<=1 || S_right <=1) && control_top_whiteline >= 39) ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        LDR.W    R0,??DataTable10_6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+2
        BLT.N    ??get_line_information_33
        LDR.W    R0,??DataTable10_5
        LDRB     R0,[R0, #+0]
        CMP      R0,#+2
        BGE.N    ??get_line_information_34
??get_line_information_33:
        LDR.W    R0,??DataTable10_2
        LDRH     R0,[R0, #+0]
        CMP      R0,#+39
        BLT.N    ??get_line_information_34
// 1311     direction = 6;  //大弧
        MOVS     R0,#+6
        LDR.W    R1,??DataTable10_8
        STRB     R0,[R1, #+0]
        B.N      ??get_line_information_28
// 1312   else
// 1313    direction = 3;  //入弯道
??get_line_information_34:
        MOVS     R0,#+3
        LDR.W    R1,??DataTable10_8
        STRB     R0,[R1, #+0]
        B.N      ??get_line_information_28
// 1314  }
// 1315  else if( control_top_whiteline >=29 && control_top_whiteline <=37)////////////////////////////////////////////////////////////////////////////////////////////////////////////
??get_line_information_32:
        LDR.W    R0,??DataTable10_2
        LDRH     R0,[R0, #+0]
        CMP      R0,#+29
        BLT.N    ??get_line_information_35
        LDR.W    R0,??DataTable10_2
        LDRH     R0,[R0, #+0]
        CMP      R0,#+38
        BGE.N    ??get_line_information_35
// 1316  {
// 1317    if(ramp_flag == 1)
        LDR.W    R0,??DataTable10_9
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??get_line_information_36
// 1318       direction = 1;//坡道视为直道
        MOVS     R0,#+1
        LDR.W    R1,??DataTable10_8
        STRB     R0,[R1, #+0]
        B.N      ??get_line_information_28
// 1319    else 
// 1320       direction = 4;  //弯道当中
??get_line_information_36:
        MOVS     R0,#+4
        LDR.W    R1,??DataTable10_8
        STRB     R0,[R1, #+0]
        B.N      ??get_line_information_28
// 1321  }
// 1322  else           //处于很急的弯道当中///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// 1323  {
// 1324    if(ramp_flag == 1)
??get_line_information_35:
        LDR.W    R0,??DataTable10_9
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??get_line_information_37
// 1325       direction = 1;//坡道视为直道
        MOVS     R0,#+1
        LDR.W    R1,??DataTable10_8
        STRB     R0,[R1, #+0]
        B.N      ??get_line_information_28
// 1326    else 
// 1327       direction = 5;  //弯道当中
??get_line_information_37:
        MOVS     R0,#+5
        LDR.W    R1,??DataTable10_8
        STRB     R0,[R1, #+0]
// 1328  }
// 1329  re_direction =direction ;
??get_line_information_28:
        LDR.W    R0,??DataTable10_8
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable10_10
        STRB     R0,[R1, #+0]
// 1330  //////////////////////赛道的类型的判断结束///////////////////////////////
// 1331   
// 1332  //前面对于波浪弯道的判断过于简单，这样会导致出弯道和进入弯道的时候有一个误判的行为//////////////////////////////////可以删除以下的///////////////////////////////////////
// 1333  if(direction == 2)
        LDR.W    R0,??DataTable10_8
        LDRB     R0,[R0, #+0]
        CMP      R0,#+2
        BNE.N    ??get_line_information_38
// 1334  {
// 1335     S_right = 0;//向右拐的计数
        MOVS     R0,#+0
        LDR.W    R1,??DataTable10_5
        STRB     R0,[R1, #+0]
// 1336     S_left =0 ; //向左拐计数
        MOVS     R0,#+0
        LDR.W    R1,??DataTable10_6
        STRB     R0,[R1, #+0]
// 1337     S_straight = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable10_7
        STRB     R0,[R1, #+0]
// 1338    for(i = bottom_whitebase;i<=control_top_whiteline-1;i++)
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+0]
        MOVS     R4,R0
??get_line_information_39:
        LDR.W    R0,??DataTable10_2
        LDRH     R0,[R0, #+0]
        SUBS     R0,R0,#+1
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        CMP      R0,R4
        BLT.N    ??get_line_information_40
// 1339    {
// 1340      if(center_white[i]- center_white[i+1] > 0)
        LDR.W    R0,??DataTable9_4
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        LDRB     R0,[R4, R0]
        LDR.W    R1,??DataTable9_4
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        ADDS     R1,R4,R1
        LDRB     R1,[R1, #+1]
        SUBS     R0,R0,R1
        CMP      R0,#+1
        BLT.N    ??get_line_information_41
// 1341      {
// 1342        S_left++;
        LDR.W    R0,??DataTable10_6
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable10_6
        STRB     R0,[R1, #+0]
        B.N      ??get_line_information_42
// 1343      }
// 1344      else if(center_white[i]- center_white[i+1] < 0)
??get_line_information_41:
        LDR.W    R0,??DataTable9_4
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        LDRB     R0,[R4, R0]
        LDR.W    R1,??DataTable9_4
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        ADDS     R1,R4,R1
        LDRB     R1,[R1, #+1]
        SUBS     R0,R0,R1
        CMP      R0,#+0
        BPL.N    ??get_line_information_43
// 1345      {
// 1346        S_right++;
        LDR.W    R0,??DataTable10_5
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable10_5
        STRB     R0,[R1, #+0]
        B.N      ??get_line_information_42
// 1347      }
// 1348      else
// 1349      {
// 1350        S_straight++;
??get_line_information_43:
        LDR.W    R0,??DataTable10_7
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable10_7
        STRB     R0,[R1, #+0]
// 1351      }
// 1352    }
??get_line_information_42:
        ADDS     R4,R4,#+1
        B.N      ??get_line_information_39
// 1353    
// 1354    if(f_abs16(S_left-S_right) >37)
??get_line_information_40:
        LDR.W    R0,??DataTable10_6
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable10_5
        LDRB     R1,[R1, #+0]
        SUBS     R0,R0,R1
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       f_abs16
        CMP      R0,#+38
        BLT.N    ??get_line_information_38
// 1355    {
// 1356      direction = 3;//后面视这种情况为大弧弯 用来加速
        MOVS     R0,#+3
        LDR.W    R1,??DataTable10_8
        STRB     R0,[R1, #+0]
// 1357    }
// 1358  }  
// 1359   //////////////////////////////对赛道进行优化//////////////////////////////
// 1360  //需要注意的是既然已经将赛道的类型判断出来了，那么就可以按照不同的赛道实现不同的优化特别是针对波浪弯道o
// 1361  if(direction == 2)  //波浪弯道  控制行大于60
??get_line_information_38:
        LDR.W    R0,??DataTable10_8
        LDRB     R0,[R0, #+0]
        CMP      R0,#+2
        BNE.N    ??get_line_information_44
// 1362  {
// 1363    for( i=bottom_whitebase ;i <= control_top_whiteline;i++)//无论是什么样的赛道，将中线向图像的中心平移
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+0]
        MOVS     R4,R0
??get_line_information_45:
        LDR.W    R0,??DataTable10_2
        LDRH     R0,[R0, #+0]
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        CMP      R0,R4
        BLT.W    ??get_line_information_46
// 1364      {
// 1365       if(center_white[i] > MID)//归中
        LDR.W    R0,??DataTable9_4
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        LDRB     R0,[R4, R0]
        CMP      R0,#+79
        BLT.N    ??get_line_information_47
// 1366       {
// 1367         if( center_white[i] - (control_top_whiteline - 41 ) >= MID )////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        LDR.W    R0,??DataTable9_4
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        LDRB     R0,[R4, R0]
        LDR.W    R1,??DataTable10_2
        LDRH     R1,[R1, #+0]
        SUBS     R0,R0,R1
        ADDS     R0,R0,#+41
        CMP      R0,#+78
        BLT.N    ??get_line_information_48
// 1368           center_white[i] = center_white[i] - (control_top_whiteline - 41);
        LDR.W    R0,??DataTable9_4
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        LDRB     R0,[R4, R0]
        LDR.W    R1,??DataTable10_2
        LDRH     R1,[R1, #+0]
        SUBS     R0,R0,R1
        SUBS     R0,R0,#+215
        LDR.W    R1,??DataTable9_4
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        STRB     R0,[R4, R1]
        B.N      ??get_line_information_49
// 1369         else
// 1370           center_white[i] = MID;
??get_line_information_48:
        MOVS     R0,#+78
        LDR.W    R1,??DataTable9_4
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        STRB     R0,[R4, R1]
        B.N      ??get_line_information_49
// 1371       }
// 1372       else 
// 1373       {
// 1374         if(center_white[i] + (control_top_whiteline - 41 ) <= MID)  //归中防止在波浪弯道的较大的打角
??get_line_information_47:
        LDR.W    R0,??DataTable9_4
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        LDRB     R0,[R4, R0]
        LDR.W    R1,??DataTable10_2
        LDRH     R1,[R1, #+0]
        ADDS     R0,R1,R0
        SUBS     R0,R0,#+41
        CMP      R0,#+79
        BGE.N    ??get_line_information_50
// 1375           center_white[i] = center_white[i] + (control_top_whiteline - 41 );  
        LDR.W    R0,??DataTable9_4
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        LDRB     R0,[R4, R0]
        LDR.W    R1,??DataTable10_2
        LDRH     R1,[R1, #+0]
        SUBS     R1,R1,#+41
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable9_4
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        STRB     R0,[R4, R1]
        B.N      ??get_line_information_49
// 1376         else
// 1377           center_white[i] = MID; 
??get_line_information_50:
        MOVS     R0,#+78
        LDR.W    R1,??DataTable9_4
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        STRB     R0,[R4, R1]
// 1378       }
// 1379      }
??get_line_information_49:
        ADDS     R4,R4,#+1
        B.N      ??get_line_information_45
// 1380  }
// 1381  else if(direction != 1 )   //直线状态不进行归中，防止直道漂浮////
??get_line_information_44:
        LDR.W    R0,??DataTable10_8
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BEQ.N    ??get_line_information_46
// 1382   {
// 1383    for( i=bottom_whitebase ;i <= control_top_whiteline;i++)//无论是什么样的赛道，将中线向图像的中心平移
        LDR.N    R0,??DataTable9_2
        LDRB     R0,[R0, #+0]
        MOVS     R4,R0
??get_line_information_51:
        LDR.W    R0,??DataTable10_2
        LDRH     R0,[R0, #+0]
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        CMP      R0,R4
        BLT.N    ??get_line_information_46
// 1384      {
// 1385       if(center_white[i] > MID)//归中
        LDR.N    R0,??DataTable9_4
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        LDRB     R0,[R4, R0]
        CMP      R0,#+79
        BLT.N    ??get_line_information_52
// 1386       {
// 1387         if( center_white[i] - 2 >= MID )
        LDR.N    R0,??DataTable9_4
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        LDRB     R0,[R4, R0]
        SUBS     R0,R0,#+2
        CMP      R0,#+78
        BLT.N    ??get_line_information_53
// 1388           center_white[i] = center_white[i] - 2;
        LDR.N    R0,??DataTable9_4
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        LDRB     R0,[R4, R0]
        SUBS     R0,R0,#+2
        LDR.N    R1,??DataTable9_4
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        STRB     R0,[R4, R1]
        B.N      ??get_line_information_54
// 1389         else
// 1390           center_white[i] = MID;
??get_line_information_53:
        MOVS     R0,#+78
        LDR.N    R1,??DataTable9_4
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        STRB     R0,[R4, R1]
        B.N      ??get_line_information_54
// 1391       }
// 1392       else 
// 1393       {
// 1394         if(center_white[i] + 2 <= MID)  //归中防止在波浪弯道的较大的打角
??get_line_information_52:
        LDR.N    R0,??DataTable9_4
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        LDRB     R0,[R4, R0]
        ADDS     R0,R0,#+2
        CMP      R0,#+79
        BGE.N    ??get_line_information_55
// 1395           center_white[i] = center_white[i] + 2;  
        LDR.N    R0,??DataTable9_4
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        LDRB     R0,[R4, R0]
        ADDS     R0,R0,#+2
        LDR.N    R1,??DataTable9_4
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        STRB     R0,[R4, R1]
        B.N      ??get_line_information_54
// 1396         else
// 1397           center_white[i] = MID; 
??get_line_information_55:
        MOVS     R0,#+78
        LDR.N    R1,??DataTable9_4
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        STRB     R0,[R4, R1]
// 1398       }
// 1399      }
??get_line_information_54:
        ADDS     R4,R4,#+1
        B.N      ??get_line_information_51
// 1400  }
// 1401  
// 1402  /*
// 1403  center_average = 0;
// 1404  /////////////////得到前50行的线性的均值////////////////
// 1405     if(control_top_whiteline > 50)
// 1406   {
// 1407     for(i = bottom_whitebase+1;i<=control_top_whiteline- 10;i++)
// 1408    {
// 1409      center_average +=  center_white[i];
// 1410      if(i == control_top_whiteline - 10)    //只是对前100cm左右的前瞻进行加权
// 1411      {
// 1412        center_average = center_average /(control_top_whiteline - bottom_whitebase - 10);
// 1413        center_linear_average = center_average;
// 1414      }
// 1415    }
// 1416   }
// 1417   */
// 1418  ///////////////////////////////////////////////////////////////////
// 1419   ///////////////////////////////////////////////////////////////////
// 1420   
// 1421     //为了准确的判断出赛道的变化趋势，十分有必要的是对这个数的历史进行存储。这里存储7个历史值，然后进行模糊判断。
// 1422     //通过测试发现 这个值的变化趋势在0 到 25之间变化  当在直道的时候，值在0 - -8之间在弯道中的时候，是在16--25之间变化
// 1423     //当数值达到19后，则认为已经到达弯道中间或是在出弯道
// 1424   ///////////////均值提取结束//////////////////////////////
// 1425   
// 1426   /*/////对坡道的判断，当坡道判断出来之后，用标志位标志，且其只是作用在电机的给定控制上
// 1427   对于坡道的检测只需要将上坡道检测出来（最高行接近顶行，且其宽度达到了一定的范围）下坡检测比较的困难，
// 1428   所以这里不检测下坡，一般只是做一下坡道状态延时就行了（延时时间为1s--2s之间），
// 1429   且检测出来之后，只需要降速，对于舵机可以不用去管。图像已经做得可以了。
// 1430   对坡道的检测不能只是用宽度去判定，这样容易和弯道出现误检。所以还要加上对端点的限制，将其限制在某一个范围之内,
// 1431   这就要求进入弯道之前车子是摆正的。
// 1432   #define RAMP_WIDTH  45                  //图像10~20行的宽度范围超过该范围确定为坡道
// 1433   #define RAMP_TIME   60
// 1434   uint8 ramp_time = 50;                     //进入坡道后多长时间重新开启起跑线检测
// 1435   int8 ramp_speed = 0;                    //坡道减速值
// 1436   bool ramp_flag;                          //进入坡道标志,主要用于控制
// 1437   bool ramp_dis_flag;                     //主要是防止下坡误判 
// 1438   对于坡道的检测不能用最高的几行，因为这样容易和十字道路误检
// 1439  */
// 1440   ramp_count = 0;//3,65,4,25
??get_line_information_46:
        MOVS     R0,#+0
        MOVS     R5,R0
// 1441   if( ramp_dis_flag ==0  && control_top_whiteline >= ROW - 10 ) //直线状态检测  //加入这个ramp_dis_flag标志，是为了让车子在检测数跑道后的这段时间里，不对坡道进行检测
        LDR.W    R0,??DataTable11
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??get_line_information_56
        LDR.W    R0,??DataTable10_2
        LDRH     R0,[R0, #+0]
        CMP      R0,#+40
        BLT.N    ??get_line_information_56
// 1442   {
// 1443     for(i = 28; i<=44; i++)
        MOVS     R0,#+28
        MOVS     R4,R0
??get_line_information_57:
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        CMP      R4,#+45
        BGE.N    ??get_line_information_58
// 1444       {
// 1445         if(right_black[i]-left_black[i] >= refer_road_width[i] + 5)
        LDR.N    R0,??DataTable8
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        LDRB     R0,[R4, R0]
        LDR.N    R1,??DataTable9_1
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        LDRB     R1,[R4, R1]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable10_4
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        LDRB     R1,[R4, R1]
        ADDS     R1,R1,#+5
        CMP      R0,R1
        BLT.N    ??get_line_information_59
// 1446           ramp_count ++;
        ADDS     R5,R5,#+1
// 1447       }        
??get_line_information_59:
        ADDS     R4,R4,#+1
        B.N      ??get_line_information_57
// 1448     if(ramp_count >= 6)
??get_line_information_58:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+6
        BLT.N    ??get_line_information_56
// 1449     { 
// 1450       if(left_black[ 28] - left_black[24] > 0 && left_black[ 28] - left_black[24] <= 8
// 1451          && right_black[24] -right_black[28] > 0 && right_black[24] -right_black[28] <=8)
        LDR.N    R0,??DataTable9_1
        LDRB     R0,[R0, #+28]
        LDR.N    R1,??DataTable9_1
        LDRB     R1,[R1, #+24]
        SUBS     R0,R0,R1
        CMP      R0,#+1
        BLT.N    ??get_line_information_56
        LDR.N    R0,??DataTable9_1
        LDRB     R0,[R0, #+28]
        LDR.N    R1,??DataTable9_1
        LDRB     R1,[R1, #+24]
        SUBS     R0,R0,R1
        CMP      R0,#+9
        BGE.N    ??get_line_information_56
        LDR.N    R0,??DataTable8
        LDRB     R0,[R0, #+24]
        LDR.N    R1,??DataTable8
        LDRB     R1,[R1, #+28]
        SUBS     R0,R0,R1
        CMP      R0,#+1
        BLT.N    ??get_line_information_56
        LDR.N    R0,??DataTable8
        LDRB     R0,[R0, #+24]
        LDR.N    R1,??DataTable8
        LDRB     R1,[R1, #+28]
        SUBS     R0,R0,R1
        CMP      R0,#+9
        BGE.N    ??get_line_information_56
// 1452       {   
// 1453       ramp_flag = 1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable10_9
        STRB     R0,[R1, #+0]
// 1454       ramp_dis_flag = 1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable11
        STRB     R0,[R1, #+0]
// 1455       }
// 1456     } 
// 1457   }
// 1458   
// 1459   if(ramp_flag == 1)
??get_line_information_56:
        LDR.W    R0,??DataTable10_9
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??get_line_information_60
// 1460   {
// 1461     gpio_set(PORTB,10,0);
        MOVS     R2,#+0
        MOVS     R1,#+10
        MOVS     R0,#+1
        BL       gpio_set
// 1462     ramp_time++;
        LDR.W    R0,??DataTable11_1
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable11_1
        STRH     R0,[R1, #+0]
// 1463     if(ramp_time >= ramp_delay_time)
        LDR.W    R0,??DataTable11_1
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable11_2
        LDRH     R1,[R1, #+0]
        CMP      R0,R1
        BCC.N    ??get_line_information_61
// 1464     {
// 1465       ramp_time = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable11_1
        STRH     R0,[R1, #+0]
// 1466       ramp_flag = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable10_9
        STRB     R0,[R1, #+0]
        B.N      ??get_line_information_61
// 1467     }
// 1468   }
// 1469   
// 1470   else
// 1471   {
// 1472     gpio_set(PORTB,10,1);
??get_line_information_60:
        MOVS     R2,#+1
        MOVS     R1,#+10
        MOVS     R0,#+1
        BL       gpio_set
// 1473   
// 1474   }
// 1475   
// 1476   if(ramp_dis_flag == 1)
??get_line_information_61:
        LDR.W    R0,??DataTable11
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??get_line_information_62
// 1477   {
// 1478     ramp_dis_time++;
        LDR.W    R0,??DataTable11_3
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable11_3
        STRH     R0,[R1, #+0]
// 1479     if(ramp_dis_time >= 4 * ramp_delay_time)
        LDR.W    R0,??DataTable11_3
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable11_2
        LDRH     R1,[R1, #+0]
        CMP      R0,R1, LSL #+2
        BLT.N    ??get_line_information_62
// 1480     {
// 1481       ramp_dis_time = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable11_3
        STRH     R0,[R1, #+0]
// 1482       ramp_dis_flag = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable11
        STRB     R0,[R1, #+0]
// 1483     }
// 1484   }
// 1485 }
??get_line_information_62:
        POP      {R0,R4-R7,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8:
        DC32     right_black
// 1486 
// 1487 
// 1488 /*-------------------------------获取中线的线性相关系数-----------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1489 float get_linear_factor(uint8 bottom,uint8 top,uint8 average)            //传递三个参数基准行，顶行，所有行与MID的差值
// 1490 {
get_linear_factor:
        PUSH     {R0-R2,R4-R11,LR}
        SUB      SP,SP,#+16
// 1491     uint8 i;
// 1492     uint8 Y_aver=0;
        MOVS     R0,#+0
        STRB     R0,[SP, #+8]
// 1493     float X_square_sum=0;   //X轴平方和
        MOVS     R7,#+0
// 1494     float Y_square_sum=0;   //Y轴平方和
        MOVS     R8,#+0
// 1495     float multi_sum=0;      //XY乘积之和
        MOVS     R9,#+0
// 1496     int temp=0,temp1=0,temp2=0; //减轻浮点运算的寄存器
        MOVS     R4,#+0
        MOVS     R5,#+0
        MOVS     R6,#+0
// 1497     float factor=0;
        MOVS     R11,#+0
// 1498     
// 1499      Y_aver=(uint8)((bottom+top)/2);  //Y坐标的范围
        LDRB     R0,[SP, #+16]
        LDRB     R1,[SP, #+20]
        UXTAB    R0,R1,R0
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        STRB     R0,[SP, #+8]
// 1500     for(i=bottom;i<=top;i++)
        LDRB     R0,[SP, #+16]
        MOV      R10,R0
??get_linear_factor_0:
        LDRB     R0,[SP, #+20]
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        CMP      R0,R10
        BCC.N    ??get_linear_factor_1
// 1501     {
// 1502         temp=temp+(center_white[i]-average)*(center_white[i]-average);
        LDR.N    R0,??DataTable9_4
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        LDRB     R0,[R10, R0]
        LDRB     R1,[SP, #+24]
        SUBS     R0,R0,R1
        LDR.N    R1,??DataTable9_4
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        LDRB     R1,[R10, R1]
        LDRB     R2,[SP, #+24]
        SUBS     R1,R1,R2
        MLA      R4,R1,R0,R4
// 1503         if(temp>30000)
        MOVW     R0,#+30001
        CMP      R4,R0
        BLT.N    ??get_linear_factor_2
// 1504         {
// 1505             X_square_sum=X_square_sum+temp;   //X平方和
        MOVS     R0,R4
        BL       __aeabi_i2f
        MOVS     R1,R7
        BL       __aeabi_fadd
        MOVS     R7,R0
// 1506             temp=0;
        MOVS     R0,#+0
        MOVS     R4,R0
// 1507         }
// 1508 
// 1509         temp1=temp1+(i-Y_aver)*(i-Y_aver);
??get_linear_factor_2:
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        LDRB     R0,[SP, #+8]
        SUBS     R0,R10,R0
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        LDRB     R1,[SP, #+8]
        SUBS     R1,R10,R1
        MLA      R5,R1,R0,R5
// 1510         if(temp1>30000)
        MOVW     R0,#+30001
        CMP      R5,R0
        BLT.N    ??get_linear_factor_3
// 1511         {
// 1512             Y_square_sum=Y_square_sum+temp1;   //Y平方和
        MOVS     R0,R5
        BL       __aeabi_i2f
        MOV      R1,R8
        BL       __aeabi_fadd
        MOV      R8,R0
// 1513             temp1=0;
        MOVS     R0,#+0
        MOVS     R5,R0
// 1514         }
// 1515 
// 1516         temp2=temp2+(center_white[i]-average)*(i-Y_aver);
??get_linear_factor_3:
        LDR.N    R0,??DataTable9_4
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        LDRB     R0,[R10, R0]
        LDRB     R1,[SP, #+24]
        SUBS     R0,R0,R1
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        LDRB     R1,[SP, #+8]
        SUBS     R1,R10,R1
        MLA      R6,R1,R0,R6
// 1517         if(f_abs16(temp2)>30000)
        MOVS     R0,R6
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       f_abs16
        MOVW     R1,#+30001
        CMP      R0,R1
        BLT.N    ??get_linear_factor_4
// 1518         {
// 1519             multi_sum=multi_sum+temp2;    //X、Y的积
        MOVS     R0,R6
        BL       __aeabi_i2f
        MOV      R1,R9
        BL       __aeabi_fadd
        MOV      R9,R0
// 1520             temp2=0;
        MOVS     R0,#+0
        MOVS     R6,R0
// 1521         }
// 1522     }
??get_linear_factor_4:
        ADDS     R10,R10,#+1
        B.N      ??get_linear_factor_0
// 1523      
// 1524         X_square_sum=X_square_sum+temp;   //得出x的平方和
??get_linear_factor_1:
        MOVS     R0,R4
        BL       __aeabi_i2f
        MOVS     R1,R7
        BL       __aeabi_fadd
        MOVS     R7,R0
// 1525         Y_square_sum=Y_square_sum+temp1;  //计算出y的平方和
        MOVS     R0,R5
        BL       __aeabi_i2f
        MOV      R1,R8
        BL       __aeabi_fadd
        MOV      R8,R0
// 1526         multi_sum=multi_sum+temp2;        //计算出xy的乘积
        MOVS     R0,R6
        BL       __aeabi_i2f
        MOV      R1,R9
        BL       __aeabi_fadd
        MOV      R9,R0
// 1527     
// 1528        /* XX_square_sum =X_square_sum;      //用于检测
// 1529         YY_square_sum =Y_square_sum;
// 1530         XYmulti_sum = multi_sum;*/
// 1531         
// 1532         if(X_square_sum<0.1)   //防止除数为0
        MOVS     R0,R7
        LDR.W    R1,??DataTable11_4  ;; 0x3dcccccd
        BL       __aeabi_cfcmple
        BCS.N    ??get_linear_factor_5
// 1533             X_square_sum=0.1;
        LDR.W    R0,??DataTable11_4  ;; 0x3dcccccd
        MOVS     R7,R0
// 1534         if(Y_square_sum<0.1)
??get_linear_factor_5:
        MOV      R0,R8
        LDR.W    R1,??DataTable11_4  ;; 0x3dcccccd
        BL       __aeabi_cfcmple
        BCS.N    ??get_linear_factor_6
// 1535             Y_square_sum=0.1;
        LDR.W    R0,??DataTable11_4  ;; 0x3dcccccd
        MOV      R8,R0
// 1536         
// 1537         if(X_square_sum<300)  //小于300出现在直道
??get_linear_factor_6:
        MOVS     R0,R7
        LDR.W    R1,??DataTable11_5  ;; 0x43960000
        BL       __aeabi_cfcmple
        BCS.N    ??get_linear_factor_7
// 1538             factor=1; // =1 or =-1 //完全是直线
        MOVS     R0,#+1065353216
        MOV      R11,R0
        B.N      ??get_linear_factor_8
// 1539         else  //否则用公式计算 //注意处理速度，小于200时处理时间少很多
// 1540             factor=multi_sum/sqrt(X_square_sum*Y_square_sum)*(bottom_whitebase+control_top_whiteline-10)/(65-10);
??get_linear_factor_7:
        MOV      R0,R9
        BL       __aeabi_f2d
        STRD     R0,R1,[SP, #+0]
        MOVS     R0,R7
        MOV      R1,R8
        BL       __aeabi_fmul
        BL       __aeabi_f2d
        BL       sqrt
        MOVS     R2,R0
        MOVS     R3,R1
        LDRD     R0,R1,[SP, #+0]
        BL       __aeabi_ddiv
        STRD     R0,R1,[SP, #+0]
        LDR.N    R0,??DataTable9_2
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable10_2
        LDRH     R1,[R1, #+0]
        ADDS     R0,R1,R0
        SUBS     R0,R0,#+10
        BL       __aeabi_i2d
        LDRD     R2,R3,[SP, #+0]
        BL       __aeabi_dmul
        MOVS     R2,#+0
        LDR.W    R3,??DataTable11_6  ;; 0x404b8000
        BL       __aeabi_ddiv
        BL       __aeabi_d2f
        MOV      R11,R0
// 1541         
// 1542         if(factor>0.95)
??get_linear_factor_8:
        MOV      R0,R11
        LDR.W    R1,??DataTable11_7  ;; 0x3f733334
        BL       __aeabi_cfrcmple
        BHI.N    ??get_linear_factor_9
// 1543           factor=1;
        MOVS     R0,#+1065353216
        MOV      R11,R0
// 1544         if(factor<-0.95)
??get_linear_factor_9:
        MOV      R0,R11
        LDR.W    R1,??DataTable11_8  ;; 0xbf733333
        BL       __aeabi_cfcmple
        BCS.N    ??get_linear_factor_10
// 1545           factor=-1;
        LDR.W    R0,??DataTable11_9  ;; 0xbf800000
        MOV      R11,R0
// 1546     
// 1547         return factor;
??get_linear_factor_10:
        MOV      R0,R11
        ADD      SP,SP,#+28
        POP      {R4-R11,PC}      ;; return
// 1548 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9:
        DC32     center_lost_hang

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_1:
        DC32     left_black

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_2:
        DC32     bottom_whitebase

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_3:
        DC32     top_whiteline

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_4:
        DC32     center_white
// 1549 
// 1550 
// 1551 /*加入起跑线检测的停车程序，利用摄像头进行检测
// 1552  这里的主要目的是给stop_flag置位,为了能够检测起跑线，必须保证的是检测的距离为起跑线前的20厘米以上。
// 1553 这里的图像而言的话就是图像的30行，
// 1554 以五米的速度来看的话，也就是必须保证两场图像至少有一场检测到，40ms*5m = 20厘米
// 1555 注意这里的检测是检测黑到白的跳变。这个比检测白到黑的跳变更加的准确
// 1556 */
// 1557 

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// 1558 uint8 zhou=0;
zhou:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// 1559 bool ting1=0;
ting1:
        DS8 1
// 1560 /*
// 1561 void check_start_stop_line()
// 1562 { 
// 1563   int i,j;
// 1564   uint8 left_start_stop_hang = 0;
// 1565   uint8 left_start_stop_flag = 0;
// 1566   uint8 right_start_stop_hang = 0;
// 1567   uint8 right_start_stop_flag = 0;
// 1568   //弯道不检测起跑线
// 1569   if(top_whiteline - bottom_whitebase > 35)
// 1570   {
// 1571     for(i=bottom_whitebase+1;i< bottom_whitebase + 35;i++) //只是检测前二十五行，大于车身的前20几个厘米  
// 1572     {
// 1573         //至少保证中线的左右的三个点是白色的 并且要保证这个时候的行的状态为3
// 1574       if( top_whiteline >= 40
// 1575          && (VideoImage2[i - 1][ center_white[i]] -  VideoImage2[i + 1][ center_white[i]])< OT
// 1576           && (VideoImage2[i - 1][ center_white[i] - 1] -  VideoImage2[i + 1][ center_white[i] - 1]) < OT
// 1577            && (VideoImage2[i - 1][ center_white[i] + 1] -  VideoImage2[i + 1][ center_white[i] + 1]) < OT)
// 1578       {//左右两边能够有两段是黑色的
// 1579         //这两段白色的检测用的是左右边沿各自向内缩减5格子
// 1580         for(j = left_black[i] + 4 ; j <   center_white[i] - 3;j++)
// 1581         {
// 1582           if((VideoImage2[i + 2][ j ] -  VideoImage2[i - 1][ j])> OT-10
// 1583              &&(VideoImage2[i + 2][ j + 1] -  VideoImage2[i - 1][ j+1])> OT-10
// 1584                 &&(VideoImage2[i + 2][ j + 2] -  VideoImage2[i - 1][ j + 2])> OT-10 ) // 
// 1585           {
// 1586              left_start_stop_hang = i;
// 1587              left_start_stop_flag = 1;
// 1588           }
// 1589         }
// 1590         
// 1591         for(j = right_black[i] - 4 ; j > center_white[i] + 3;j--)
// 1592         {
// 1593           if((VideoImage2[i + 2][ j] -  VideoImage2[i - 1][ j]) > OT-10
// 1594              &&(VideoImage2[i + 2][ j - 1] -  VideoImage2[i - 1][ j - 1])> OT-10
// 1595               &&(VideoImage2[i + 2][ j - 2] -  VideoImage2[i - 1][ j - 2])> OT-10 ) 
// 1596           {
// 1597              right_start_stop_hang = i;
// 1598              right_start_stop_flag = 1;
// 1599           }
// 1600         }//右边搜索 
// 1601       } //中线符合标准
// 1602         //当找到了符合的起跑线的时候，跳出循环//判断是还要防止图像的错位
// 1603         if(  left_start_stop_flag == 1 && right_start_stop_flag == 1 && f_abs16(right_start_stop_hang - left_start_stop_hang) < 5)
// 1604         {
// 1605          ting1= 1;
// 1606           break;//
// 1607         }
// 1608     }//for循环
// 1609   }
// 1610   
// 1611   if(ting1==1)
// 1612          zhou++;
// 1613     if(zhou>=25)
// 1614     { ting_check_stop=1;zhou=0;ting1=0;gpio_set (PORTB, 10,LOW );}
// 1615 }
// 1616 */
// 1617 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1618 void check_start_stop_line()
// 1619 { 
check_start_stop_line:
        PUSH     {R3-R9,LR}
// 1620   int i,j;
// 1621   uint8 left_start_stop_hang = 0;
        MOVS     R6,#+0
// 1622   uint8 left_start_stop_flag = 0;
        MOVS     R7,#+0
// 1623   uint8 right_start_stop_hang = 0;
        MOVS     R8,#+0
// 1624   uint8 right_start_stop_flag = 0;
        MOVS     R9,#+0
// 1625   //弯道不检测起跑线
// 1626   if(top_whiteline - bottom_whitebase > 35)
        LDR.W    R0,??DataTable11_10
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable11_11
        LDRB     R1,[R1, #+0]
        SUBS     R0,R0,R1
        CMP      R0,#+36
        BLT.W    ??check_start_stop_line_0
// 1627   {
// 1628     for(i=bottom_whitebase+5;i< bottom_whitebase + 30;i++) //只是检测前二十五行，大于车身的前20几个厘米  
        LDR.W    R0,??DataTable11_11
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+5
        MOVS     R4,R0
??check_start_stop_line_1:
        LDR.W    R0,??DataTable11_11
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+30
        CMP      R4,R0
        BGE.W    ??check_start_stop_line_0
// 1629     {
// 1630         //至少保证中线的左右的三个点是白色的 并且要保证这个时候的行的状态为3
// 1631       if( top_whiteline >= 40
// 1632          &&  f_abs16(VideoImage2[i - 1][ center_white[i]] -  VideoImage2[i + 1][ center_white[i]] )< OT
// 1633           &&f_abs16( VideoImage2[i - 1][ center_white[i] - 1] -  VideoImage2[i + 1][ center_white[i] - 1]) < OT
// 1634            &&f_abs16( VideoImage2[i - 1][ center_white[i] + 1] -  VideoImage2[i + 1][ center_white[i] + 1]) < OT
// 1635              &&VideoImage2[i - 1][ center_white[i]]> BASE_OT&&VideoImage2[i - 1][ center_white[i]-1]> BASE_OT
// 1636                &&VideoImage2[i - 1][ center_white[i]+1]> BASE_OT)
        LDR.W    R0,??DataTable11_10
        LDRB     R0,[R0, #+0]
        CMP      R0,#+40
        BLT.W    ??check_start_stop_line_2
        LDR.W    R0,??DataTable11_12
        MOVS     R1,#+157
        MLA      R0,R1,R4,R0
        LDR.W    R1,??DataTable11_13
        LDRB     R1,[R4, R1]
        ADDS     R0,R1,R0
        LDRB     R0,[R0, #-157]
        LDR.W    R1,??DataTable11_12
        MOVS     R2,#+157
        MLA      R1,R2,R4,R1
        LDR.W    R2,??DataTable11_13
        LDRB     R2,[R4, R2]
        ADDS     R1,R2,R1
        LDRB     R1,[R1, #+157]
        SUBS     R0,R0,R1
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       f_abs16
        LDR.W    R1,??DataTable11_14
        LDRB     R1,[R1, #+0]
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R0,R1
        BGE.W    ??check_start_stop_line_2
        LDR.W    R0,??DataTable11_12
        MOVS     R1,#+157
        MLA      R0,R1,R4,R0
        LDR.W    R1,??DataTable11_13
        LDRB     R1,[R4, R1]
        ADDS     R0,R1,R0
        LDRB     R0,[R0, #-158]
        LDR.W    R1,??DataTable11_12
        MOVS     R2,#+157
        MLA      R1,R2,R4,R1
        LDR.W    R2,??DataTable11_13
        LDRB     R2,[R4, R2]
        ADDS     R1,R2,R1
        LDRB     R1,[R1, #+156]
        SUBS     R0,R0,R1
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       f_abs16
        LDR.W    R1,??DataTable11_14
        LDRB     R1,[R1, #+0]
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R0,R1
        BGE.W    ??check_start_stop_line_2
        LDR.W    R0,??DataTable11_12
        MOVS     R1,#+157
        MLA      R0,R1,R4,R0
        LDR.W    R1,??DataTable11_13
        LDRB     R1,[R4, R1]
        ADDS     R0,R1,R0
        LDRB     R0,[R0, #-156]
        LDR.W    R1,??DataTable11_12
        MOVS     R2,#+157
        MLA      R1,R2,R4,R1
        LDR.W    R2,??DataTable11_13
        LDRB     R2,[R4, R2]
        ADDS     R1,R2,R1
        LDRB     R1,[R1, #+158]
        SUBS     R0,R0,R1
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       f_abs16
        LDR.W    R1,??DataTable11_14
        LDRB     R1,[R1, #+0]
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R0,R1
        BGE.W    ??check_start_stop_line_2
        LDR.W    R0,??DataTable11_15
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable11_12
        MOVS     R2,#+157
        MLA      R1,R2,R4,R1
        LDR.W    R2,??DataTable11_13
        LDRB     R2,[R4, R2]
        ADDS     R1,R2,R1
        LDRB     R1,[R1, #-157]
        CMP      R0,R1
        BCS.W    ??check_start_stop_line_2
        LDR.W    R0,??DataTable11_15
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable11_12
        MOVS     R2,#+157
        MLA      R1,R2,R4,R1
        LDR.W    R2,??DataTable11_13
        LDRB     R2,[R4, R2]
        ADDS     R1,R2,R1
        LDRB     R1,[R1, #-158]
        CMP      R0,R1
        BCS.W    ??check_start_stop_line_2
        LDR.W    R0,??DataTable11_15
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable11_12
        MOVS     R2,#+157
        MLA      R1,R2,R4,R1
        LDR.W    R2,??DataTable11_13
        LDRB     R2,[R4, R2]
        ADDS     R1,R2,R1
        LDRB     R1,[R1, #-156]
        CMP      R0,R1
        BCS.W    ??check_start_stop_line_2
// 1637       {//左右两边能够有两段是黑色的
// 1638         //这两段白色的检测用的是左右边沿各自向内缩减5格子
// 1639         for(j = left_black[i] + 4 ; j <   center_white[i] - 3;j++)
        LDR.W    R0,??DataTable11_16
        LDRB     R0,[R4, R0]
        ADDS     R0,R0,#+4
        MOVS     R5,R0
??check_start_stop_line_3:
        LDR.W    R0,??DataTable11_13
        LDRB     R0,[R4, R0]
        SUBS     R0,R0,#+3
        CMP      R5,R0
        BGE.N    ??check_start_stop_line_4
// 1640         {
// 1641           if((VideoImage2[i + 2][ j ] -  VideoImage2[i - 1][ j])> OT-10
// 1642              &&(VideoImage2[i + 2][ j + 1] -  VideoImage2[i - 1][ j+1])> OT-10
// 1643                 &&(VideoImage2[i + 2][ j + 2] -  VideoImage2[i - 1][ j + 2])> OT-10 
// 1644                  &&(VideoImage2[i + 2][ j + 3] -  VideoImage2[i - 1][ j + 3])> OT-10
// 1645                   &&(VideoImage2[i + 2][ j + 4] -  VideoImage2[i - 1][ j + 4])> OT-10 ) // 
        LDR.W    R0,??DataTable11_14
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+10
        LDR.W    R1,??DataTable11_12
        MOVS     R2,#+157
        MLA      R1,R2,R4,R1
        ADDS     R1,R5,R1
        LDRB     R1,[R1, #+314]
        LDR.W    R2,??DataTable11_12
        MOVS     R3,#+157
        MLA      R2,R3,R4,R2
        ADDS     R2,R5,R2
        LDRB     R2,[R2, #-157]
        SUBS     R1,R1,R2
        CMP      R0,R1
        BGE.N    ??check_start_stop_line_5
        LDR.W    R0,??DataTable11_14
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+10
        LDR.W    R1,??DataTable11_12
        MOVS     R2,#+157
        MLA      R1,R2,R4,R1
        ADDS     R1,R5,R1
        LDRB     R1,[R1, #+315]
        LDR.W    R2,??DataTable11_12
        MOVS     R3,#+157
        MLA      R2,R3,R4,R2
        ADDS     R2,R5,R2
        LDRB     R2,[R2, #-156]
        SUBS     R1,R1,R2
        CMP      R0,R1
        BGE.N    ??check_start_stop_line_5
        LDR.W    R0,??DataTable11_14
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+10
        LDR.W    R1,??DataTable11_12
        MOVS     R2,#+157
        MLA      R1,R2,R4,R1
        ADDS     R1,R5,R1
        LDRB     R1,[R1, #+316]
        LDR.W    R2,??DataTable11_12
        MOVS     R3,#+157
        MLA      R2,R3,R4,R2
        ADDS     R2,R5,R2
        LDRB     R2,[R2, #-155]
        SUBS     R1,R1,R2
        CMP      R0,R1
        BGE.N    ??check_start_stop_line_5
        LDR.W    R0,??DataTable11_14
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+10
        LDR.W    R1,??DataTable11_12
        MOVS     R2,#+157
        MLA      R1,R2,R4,R1
        ADDS     R1,R5,R1
        LDRB     R1,[R1, #+317]
        LDR.W    R2,??DataTable11_12
        MOVS     R3,#+157
        MLA      R2,R3,R4,R2
        ADDS     R2,R5,R2
        LDRB     R2,[R2, #-154]
        SUBS     R1,R1,R2
        CMP      R0,R1
        BGE.N    ??check_start_stop_line_5
        LDR.W    R0,??DataTable11_14
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+10
        LDR.W    R1,??DataTable11_12
        MOVS     R2,#+157
        MLA      R1,R2,R4,R1
        ADDS     R1,R5,R1
        LDRB     R1,[R1, #+318]
        LDR.W    R2,??DataTable11_12
        MOVS     R3,#+157
        MLA      R2,R3,R4,R2
        ADDS     R2,R5,R2
        LDRB     R2,[R2, #-153]
        SUBS     R1,R1,R2
        CMP      R0,R1
        BGE.N    ??check_start_stop_line_5
// 1646           {
// 1647              left_start_stop_hang = i;
        MOVS     R0,R4
        MOVS     R6,R0
// 1648              left_start_stop_flag = 1;
        MOVS     R0,#+1
        MOVS     R7,R0
// 1649           }
// 1650         }
??check_start_stop_line_5:
        ADDS     R5,R5,#+1
        B.N      ??check_start_stop_line_3
// 1651         
// 1652         for(j = right_black[i] - 4 ; j > center_white[i] + 3;j--)
??check_start_stop_line_4:
        LDR.W    R0,??DataTable12
        LDRB     R0,[R4, R0]
        SUBS     R0,R0,#+4
        MOVS     R5,R0
??check_start_stop_line_6:
        LDR.W    R0,??DataTable11_13
        LDRB     R0,[R4, R0]
        ADDS     R0,R0,#+3
        CMP      R0,R5
        BGE.N    ??check_start_stop_line_2
// 1653         {
// 1654           if((VideoImage2[i + 2][ j] -  VideoImage2[i - 1][ j]) > OT-10
// 1655              &&(VideoImage2[i + 2][ j - 1] -  VideoImage2[i - 1][ j - 1])> OT-10
// 1656               &&(VideoImage2[i + 2][ j - 2] -  VideoImage2[i - 1][ j - 2])> OT-10
// 1657                &&(VideoImage2[i + 2][ j - 3] -  VideoImage2[i - 1][ j - 3])> OT-10
// 1658               &&(VideoImage2[i + 2][ j - 4] -  VideoImage2[i - 1][ j - 4])> OT-10 ) 
        LDR.W    R0,??DataTable11_14
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+10
        LDR.W    R1,??DataTable11_12
        MOVS     R2,#+157
        MLA      R1,R2,R4,R1
        ADDS     R1,R5,R1
        LDRB     R1,[R1, #+314]
        LDR.W    R2,??DataTable11_12
        MOVS     R3,#+157
        MLA      R2,R3,R4,R2
        ADDS     R2,R5,R2
        LDRB     R2,[R2, #-157]
        SUBS     R1,R1,R2
        CMP      R0,R1
        BGE.N    ??check_start_stop_line_7
        LDR.W    R0,??DataTable11_14
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+10
        LDR.W    R1,??DataTable11_12
        MOVS     R2,#+157
        MLA      R1,R2,R4,R1
        ADDS     R1,R5,R1
        LDRB     R1,[R1, #+313]
        LDR.W    R2,??DataTable11_12
        MOVS     R3,#+157
        MLA      R2,R3,R4,R2
        ADDS     R2,R5,R2
        LDRB     R2,[R2, #-158]
        SUBS     R1,R1,R2
        CMP      R0,R1
        BGE.N    ??check_start_stop_line_7
        LDR.W    R0,??DataTable11_14
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+10
        LDR.W    R1,??DataTable11_12
        MOVS     R2,#+157
        MLA      R1,R2,R4,R1
        ADDS     R1,R5,R1
        LDRB     R1,[R1, #+312]
        LDR.W    R2,??DataTable11_12
        MOVS     R3,#+157
        MLA      R2,R3,R4,R2
        ADDS     R2,R5,R2
        LDRB     R2,[R2, #-159]
        SUBS     R1,R1,R2
        CMP      R0,R1
        BGE.N    ??check_start_stop_line_7
        LDR.W    R0,??DataTable11_14
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+10
        LDR.W    R1,??DataTable11_12
        MOVS     R2,#+157
        MLA      R1,R2,R4,R1
        ADDS     R1,R5,R1
        LDRB     R1,[R1, #+311]
        LDR.W    R2,??DataTable11_12
        MOVS     R3,#+157
        MLA      R2,R3,R4,R2
        ADDS     R2,R5,R2
        LDRB     R2,[R2, #-160]
        SUBS     R1,R1,R2
        CMP      R0,R1
        BGE.N    ??check_start_stop_line_7
        LDR.W    R0,??DataTable11_14
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+10
        LDR.W    R1,??DataTable11_12
        MOVS     R2,#+157
        MLA      R1,R2,R4,R1
        ADDS     R1,R5,R1
        LDRB     R1,[R1, #+310]
        LDR.W    R2,??DataTable11_12
        MOVS     R3,#+157
        MLA      R2,R3,R4,R2
        ADDS     R2,R5,R2
        LDRB     R2,[R2, #-161]
        SUBS     R1,R1,R2
        CMP      R0,R1
        BGE.N    ??check_start_stop_line_7
// 1659           {
// 1660              right_start_stop_hang = i;
        MOVS     R0,R4
        MOV      R8,R0
// 1661              right_start_stop_flag = 1;
        MOVS     R0,#+1
        MOV      R9,R0
// 1662           }
// 1663         }//右边搜索 
??check_start_stop_line_7:
        SUBS     R5,R5,#+1
        B.N      ??check_start_stop_line_6
// 1664       } //中线符合标准
// 1665         //当找到了符合的起跑线的时候，跳出循环//判断是还要防止图像的错位
// 1666         if(  left_start_stop_flag == 1 && right_start_stop_flag == 1 && f_abs16(right_start_stop_hang - left_start_stop_hang) < 5)
??check_start_stop_line_2:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+1
        BNE.N    ??check_start_stop_line_8
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        CMP      R9,#+1
        BNE.N    ??check_start_stop_line_8
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        SUBS     R0,R8,R6
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       f_abs16
        CMP      R0,#+5
        BGE.N    ??check_start_stop_line_8
// 1667         {
// 1668          ting1= 1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable12_1
        STRB     R0,[R1, #+0]
// 1669           break;//
        B.N      ??check_start_stop_line_0
// 1670         }
// 1671     }//for循环
??check_start_stop_line_8:
        ADDS     R4,R4,#+1
        B.N      ??check_start_stop_line_1
// 1672   }
// 1673   
// 1674   if(ting1==1)
??check_start_stop_line_0:
        LDR.W    R0,??DataTable12_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??check_start_stop_line_9
// 1675          zhou++;
        LDR.W    R0,??DataTable12_2
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable12_2
        STRB     R0,[R1, #+0]
// 1676     if(zhou>=25)
??check_start_stop_line_9:
        LDR.W    R0,??DataTable12_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+25
        BLT.N    ??check_start_stop_line_10
// 1677     { ting_check_stop=1;zhou=0;ting1=0;gpio_set (PORTB, 10,LOW );}
        MOVS     R0,#+1
        LDR.W    R1,??DataTable12_3
        STRB     R0,[R1, #+0]
        MOVS     R0,#+0
        LDR.W    R1,??DataTable12_2
        STRB     R0,[R1, #+0]
        MOVS     R0,#+0
        LDR.W    R1,??DataTable12_1
        STRB     R0,[R1, #+0]
        MOVS     R2,#+0
        MOVS     R1,#+10
        MOVS     R0,#+1
        BL       gpio_set
// 1678 }
??check_start_stop_line_10:
        POP      {R0,R4-R9,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10:
        DC32     danger_count

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_1:
        DC32     danger_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_2:
        DC32     control_top_whiteline

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_3:
        DC32     deal_start_line

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_4:
        DC32     refer_road_width

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_5:
        DC32     S_right

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_6:
        DC32     S_left

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_7:
        DC32     S_straight

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_8:
        DC32     direction

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_9:
        DC32     ramp_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_10:
        DC32     re_direction
// 1679 /*-----------------------------------舵机和电机的控制函数的变量---------------------------------
// 1680 这个函数用于进行赛道的优化和控制，其中控制包括电机和舵机，这两部分。对其进行统一的控制
// 1681 */

        SECTION `.data`:DATA:REORDER:NOROOT(1)
// 1682 int16 big1=80;
big1:
        DATA
        DC16 80

        SECTION `.data`:DATA:REORDER:NOROOT(1)
// 1683 int16 ft1=800;
ft1:
        DATA
        DC16 800

        SECTION `.data`:DATA:REORDER:NOROOT(1)
// 1684 int16 big=1100;
big:
        DATA
        DC16 1100

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// 1685 bool turn_l=0,turn_r=0;
turn_l:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
turn_r:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// 1686  bool barrier_l=0;
barrier_l:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// 1687  bool barrier_r=0;
barrier_r:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// 1688 bool jianshu=0;
jianshu:
        DS8 1
// 1689 //uint angle_record=0;

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// 1690 bool record_flag=0;
record_flag:
        DS8 1

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1691 void Control()
// 1692 {
Control:
        PUSH     {R4-R6,LR}
// 1693  int16 i=0; //
        MOVS     R4,#+0
// 1694  int16 angle_temp=0;
        MOVS     R5,#+0
// 1695  center_average_a =0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable12_4
        STRH     R0,[R1, #+0]
// 1696  center_average_b = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable12_5
        STRH     R0,[R1, #+0]
// 1697  refer_error = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable12_6
        STRH     R0,[R1, #+0]
// 1698  sumbe3=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable12_7
        STRH     R0,[R1, #+0]
// 1699  re_angle= angle;/////////问题的
        LDR.W    R0,??DataTable12_8
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable12_9
        STRH     R0,[R1, #+0]
// 1700  
// 1701    //////////////////////对图像的加权平均值的提取/////////////////////
// 1702   center_average = 0;//清零
        MOVS     R0,#+0
        LDR.W    R1,??DataTable12_10
        STR      R0,[R1, #+0]
// 1703   
// 1704   error_servo_ref_p =0;  //增加这个p有利于出弯道内切    3/13    1/2
        MOVS     R0,#+0
        LDR.W    R1,??DataTable12_11
        STRH     R0,[R1, #+0]
// 1705   error_servo_ref_d=0; 
        MOVS     R0,#+0
        LDR.W    R1,??DataTable12_12
        STRH     R0,[R1, #+0]
// 1706 
// 1707  if(control_top_whiteline>15)
        LDR.W    R0,??DataTable12_13
        LDRH     R0,[R0, #+0]
        CMP      R0,#+16
        BLT.W    ??Control_0
// 1708 {
// 1709   if(control_top_whiteline >= 41)                //处理长直道（>2m）出弯道，和半径很大的大弧弯  
        LDR.W    R0,??DataTable12_13
        LDRH     R0,[R0, #+0]
        CMP      R0,#+41
        BLT.N    ??Control_1
// 1710    {
// 1711       for(i = bottom_whitebase+4;i<=bottom_whitebase+33;i++)
        LDR.W    R0,??DataTable11_11
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+4
        MOVS     R4,R0
??Control_2:
        LDR.W    R0,??DataTable11_11
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+33
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        CMP      R0,R4
        BLT.N    ??Control_3
// 1712      {
// 1713        center_average_a +=  center_white[i];
        LDR.W    R0,??DataTable12_4
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable11_13
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        LDRB     R1,[R4, R1]
        ADDS     R0,R0,R1
        LDR.W    R1,??DataTable12_4
        STRH     R0,[R1, #+0]
// 1714      }
        ADDS     R4,R4,#+1
        B.N      ??Control_2
// 1715       center_average_a = center_average_a /(30);
??Control_3:
        LDR.W    R0,??DataTable12_4
        LDRH     R0,[R0, #+0]
        MOVS     R1,#+30
        SDIV     R0,R0,R1
        LDR.W    R1,??DataTable12_4
        STRH     R0,[R1, #+0]
// 1716       
// 1717     for(i= 41; i>=37;i--)
        MOVS     R0,#+41
        MOVS     R4,R0
??Control_4:
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        CMP      R4,#+37
        BLT.N    ??Control_5
// 1718       {
// 1719        center_average_b +=  center_white[i];
        LDR.W    R0,??DataTable12_5
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable11_13
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        LDRB     R1,[R4, R1]
        ADDS     R0,R0,R1
        LDR.W    R1,??DataTable12_5
        STRH     R0,[R1, #+0]
// 1720       }
        SUBS     R4,R4,#+1
        B.N      ??Control_4
// 1721       center_average_b = center_average_b /5;
??Control_5:
        LDR.W    R0,??DataTable12_5
        LDRH     R0,[R0, #+0]
        MOVS     R1,#+5
        SDIV     R0,R0,R1
        LDR.W    R1,??DataTable12_5
        STRH     R0,[R1, #+0]
// 1722       
// 1723       center_average = (20*center_average_a + 80*center_average_b)/100;     //   80 0.2     70 0.8
        LDR.W    R0,??DataTable12_4
        LDRH     R0,[R0, #+0]
        MOVS     R1,#+20
        LDR.W    R2,??DataTable12_5
        LDRH     R2,[R2, #+0]
        MOVS     R3,#+80
        MULS     R2,R3,R2
        MLA      R0,R1,R0,R2
        MOVS     R1,#+100
        SDIV     R0,R0,R1
        LDR.W    R1,??DataTable12_10
        STR      R0,[R1, #+0]
        B.N      ??Control_6
// 1724    }
// 1725   
// 1726   else  if(control_top_whiteline >=37)//入弯前大约1m以上
??Control_1:
        LDR.W    R0,??DataTable12_13
        LDRH     R0,[R0, #+0]
        CMP      R0,#+37
        BLT.N    ??Control_7
// 1727    {
// 1728       for(i = bottom_whitebase+4;i<=bottom_whitebase+30;i++)
        LDR.W    R0,??DataTable11_11
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+4
        MOVS     R4,R0
??Control_8:
        LDR.W    R0,??DataTable11_11
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+30
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        CMP      R0,R4
        BLT.N    ??Control_9
// 1729      {
// 1730        center_average_a +=  center_white[i];
        LDR.W    R0,??DataTable12_4
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable11_13
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        LDRB     R1,[R4, R1]
        ADDS     R0,R0,R1
        LDR.W    R1,??DataTable12_4
        STRH     R0,[R1, #+0]
// 1731      }
        ADDS     R4,R4,#+1
        B.N      ??Control_8
// 1732       center_average_a = center_average_a /(27);
??Control_9:
        LDR.W    R0,??DataTable12_4
        LDRH     R0,[R0, #+0]
        MOVS     R1,#+27
        SDIV     R0,R0,R1
        LDR.W    R1,??DataTable12_4
        STRH     R0,[R1, #+0]
// 1733       
// 1734         for(i= control_top_whiteline; i>=control_top_whiteline-3;i--)
        LDR.W    R0,??DataTable12_13
        LDRSH    R0,[R0, #+0]
        MOVS     R4,R0
??Control_10:
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        LDR.W    R0,??DataTable12_13
        LDRH     R0,[R0, #+0]
        SUBS     R0,R0,#+3
        CMP      R4,R0
        BLT.N    ??Control_11
// 1735       {
// 1736        center_average_b +=  center_white[i];
        LDR.W    R0,??DataTable12_5
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable11_13
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        LDRB     R1,[R4, R1]
        ADDS     R0,R0,R1
        LDR.W    R1,??DataTable12_5
        STRH     R0,[R1, #+0]
// 1737       }
        SUBS     R4,R4,#+1
        B.N      ??Control_10
// 1738       center_average_b = center_average_b /4;
??Control_11:
        LDR.W    R0,??DataTable12_5
        LDRH     R0,[R0, #+0]
        MOVS     R1,#+4
        SDIV     R0,R0,R1
        LDR.W    R1,??DataTable12_5
        STRH     R0,[R1, #+0]
// 1739       
// 1740       center_average = (18*center_average_a+82*center_average_b)/100;     //   80 0.2     70 0.8
        LDR.W    R0,??DataTable12_4
        LDRH     R0,[R0, #+0]
        MOVS     R1,#+18
        LDR.W    R2,??DataTable12_5
        LDRH     R2,[R2, #+0]
        MOVS     R3,#+82
        MULS     R2,R3,R2
        MLA      R0,R1,R0,R2
        MOVS     R1,#+100
        SDIV     R0,R0,R1
        LDR.W    R1,??DataTable12_10
        STR      R0,[R1, #+0]
        B.N      ??Control_6
// 1741       
// 1742    }
// 1743  
// 1744   else if(control_top_whiteline >=33)//入弯道1m以内
??Control_7:
        LDR.W    R0,??DataTable12_13
        LDRH     R0,[R0, #+0]
        CMP      R0,#+33
        BLT.N    ??Control_12
// 1745    {
// 1746       for(i = bottom_whitebase+4;i<=bottom_whitebase+24;i++)
        LDR.W    R0,??DataTable11_11
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+4
        MOVS     R4,R0
??Control_13:
        LDR.W    R0,??DataTable11_11
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+24
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        CMP      R0,R4
        BLT.N    ??Control_14
// 1747      {
// 1748        center_average_a +=  center_white[i];
        LDR.W    R0,??DataTable12_4
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable11_13
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        LDRB     R1,[R4, R1]
        ADDS     R0,R0,R1
        LDR.W    R1,??DataTable12_4
        STRH     R0,[R1, #+0]
// 1749      }
        ADDS     R4,R4,#+1
        B.N      ??Control_13
// 1750       center_average_a = center_average_a /21;
??Control_14:
        LDR.W    R0,??DataTable12_4
        LDRH     R0,[R0, #+0]
        MOVS     R1,#+21
        SDIV     R0,R0,R1
        LDR.W    R1,??DataTable12_4
        STRH     R0,[R1, #+0]
// 1751       
// 1752       for(i= control_top_whiteline; i>=control_top_whiteline-2;i--)
        LDR.W    R0,??DataTable12_13
        LDRSH    R0,[R0, #+0]
        MOVS     R4,R0
??Control_15:
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        LDR.W    R0,??DataTable12_13
        LDRH     R0,[R0, #+0]
        SUBS     R0,R0,#+2
        CMP      R4,R0
        BLT.N    ??Control_16
// 1753       {
// 1754        center_average_b +=  center_white[i];
        LDR.W    R0,??DataTable12_5
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable11_13
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        LDRB     R1,[R4, R1]
        ADDS     R0,R0,R1
        LDR.W    R1,??DataTable12_5
        STRH     R0,[R1, #+0]
// 1755       }
        SUBS     R4,R4,#+1
        B.N      ??Control_15
// 1756       center_average_b = center_average_b /3;
??Control_16:
        LDR.W    R0,??DataTable12_5
        LDRH     R0,[R0, #+0]
        MOVS     R1,#+3
        SDIV     R0,R0,R1
        LDR.W    R1,??DataTable12_5
        STRH     R0,[R1, #+0]
// 1757       
// 1758       center_average = (16*center_average_a + 84*center_average_b)/100;     //   80 0.2     70 0.8
        LDR.W    R0,??DataTable12_4
        LDRH     R0,[R0, #+0]
        LSLS     R0,R0,#+4
        LDR.W    R1,??DataTable12_5
        LDRH     R1,[R1, #+0]
        MOVS     R2,#+84
        MLA      R0,R2,R1,R0
        MOVS     R1,#+100
        SDIV     R0,R0,R1
        LDR.W    R1,??DataTable12_10
        STR      R0,[R1, #+0]
        B.N      ??Control_6
// 1759    }
// 1760   
// 1761   else if(control_top_whiteline >=27)//入弯道1m以内
??Control_12:
        LDR.W    R0,??DataTable12_13
        LDRH     R0,[R0, #+0]
        CMP      R0,#+27
        BLT.N    ??Control_17
// 1762    {
// 1763       for(i = bottom_whitebase+4;i<=bottom_whitebase+15;i++)
        LDR.W    R0,??DataTable11_11
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+4
        MOVS     R4,R0
??Control_18:
        LDR.W    R0,??DataTable11_11
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+15
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        CMP      R0,R4
        BLT.N    ??Control_19
// 1764      {
// 1765        center_average_a +=  center_white[i];
        LDR.W    R0,??DataTable12_4
        LDRH     R0,[R0, #+0]
        LDR.N    R1,??DataTable11_13
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        LDRB     R1,[R4, R1]
        ADDS     R0,R0,R1
        LDR.W    R1,??DataTable12_4
        STRH     R0,[R1, #+0]
// 1766      }
        ADDS     R4,R4,#+1
        B.N      ??Control_18
// 1767       center_average_a = center_average_a /12;
??Control_19:
        LDR.W    R0,??DataTable12_4
        LDRH     R0,[R0, #+0]
        MOVS     R1,#+12
        SDIV     R0,R0,R1
        LDR.W    R1,??DataTable12_4
        STRH     R0,[R1, #+0]
// 1768       
// 1769       for(i= control_top_whiteline; i>=control_top_whiteline-2;i--)
        LDR.W    R0,??DataTable12_13
        LDRSH    R0,[R0, #+0]
        MOVS     R4,R0
??Control_20:
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        LDR.W    R0,??DataTable12_13
        LDRH     R0,[R0, #+0]
        SUBS     R0,R0,#+2
        CMP      R4,R0
        BLT.N    ??Control_21
// 1770       {
// 1771        center_average_b +=  center_white[i];
        LDR.W    R0,??DataTable12_5
        LDRH     R0,[R0, #+0]
        LDR.N    R1,??DataTable11_13
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        LDRB     R1,[R4, R1]
        ADDS     R0,R0,R1
        LDR.W    R1,??DataTable12_5
        STRH     R0,[R1, #+0]
// 1772       }
        SUBS     R4,R4,#+1
        B.N      ??Control_20
// 1773       center_average_b = center_average_b /3;
??Control_21:
        LDR.W    R0,??DataTable12_5
        LDRH     R0,[R0, #+0]
        MOVS     R1,#+3
        SDIV     R0,R0,R1
        LDR.W    R1,??DataTable12_5
        STRH     R0,[R1, #+0]
// 1774       
// 1775       center_average = (14*center_average_a + 86*center_average_b)/100;     //   80 0.2     70 0.8
        LDR.W    R0,??DataTable12_4
        LDRH     R0,[R0, #+0]
        MOVS     R1,#+14
        LDR.W    R2,??DataTable12_5
        LDRH     R2,[R2, #+0]
        MOVS     R3,#+86
        MULS     R2,R3,R2
        MLA      R0,R1,R0,R2
        MOVS     R1,#+100
        SDIV     R0,R0,R1
        LDR.W    R1,??DataTable12_10
        STR      R0,[R1, #+0]
        B.N      ??Control_6
// 1776    }
// 1777   else   //
// 1778      {
// 1779       for(i = bottom_whitebase+4;i<=bottom_whitebase+10;i++)
??Control_17:
        LDR.N    R0,??DataTable11_11
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+4
        MOVS     R4,R0
??Control_22:
        LDR.N    R0,??DataTable11_11
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+10
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        CMP      R0,R4
        BLT.N    ??Control_23
// 1780      {
// 1781        center_average_a +=  center_white[i];
        LDR.W    R0,??DataTable12_4
        LDRH     R0,[R0, #+0]
        LDR.N    R1,??DataTable11_13
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        LDRB     R1,[R4, R1]
        ADDS     R0,R0,R1
        LDR.W    R1,??DataTable12_4
        STRH     R0,[R1, #+0]
// 1782      }
        ADDS     R4,R4,#+1
        B.N      ??Control_22
// 1783       center_average_a = center_average_a /7;
??Control_23:
        LDR.W    R0,??DataTable12_4
        LDRH     R0,[R0, #+0]
        MOVS     R1,#+7
        SDIV     R0,R0,R1
        LDR.W    R1,??DataTable12_4
        STRH     R0,[R1, #+0]
// 1784       
// 1785       for(i= control_top_whiteline; i>=control_top_whiteline-2;i--)
        LDR.W    R0,??DataTable12_13
        LDRSH    R0,[R0, #+0]
        MOVS     R4,R0
??Control_24:
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        LDR.W    R0,??DataTable12_13
        LDRH     R0,[R0, #+0]
        SUBS     R0,R0,#+2
        CMP      R4,R0
        BLT.N    ??Control_25
// 1786       {
// 1787        center_average_b +=  center_white[i];
        LDR.W    R0,??DataTable12_5
        LDRH     R0,[R0, #+0]
        LDR.N    R1,??DataTable11_13
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        LDRB     R1,[R4, R1]
        ADDS     R0,R0,R1
        LDR.W    R1,??DataTable12_5
        STRH     R0,[R1, #+0]
// 1788       }
        SUBS     R4,R4,#+1
        B.N      ??Control_24
// 1789       center_average_b = center_average_b /3;
??Control_25:
        LDR.W    R0,??DataTable12_5
        LDRH     R0,[R0, #+0]
        MOVS     R1,#+3
        SDIV     R0,R0,R1
        LDR.W    R1,??DataTable12_5
        STRH     R0,[R1, #+0]
// 1790       
// 1791       center_average = (12*center_average_a+88*center_average_b)/100;
        LDR.W    R0,??DataTable12_4
        LDRH     R0,[R0, #+0]
        MOVS     R1,#+12
        LDR.W    R2,??DataTable12_5
        LDRH     R2,[R2, #+0]
        MOVS     R3,#+88
        MULS     R2,R3,R2
        MLA      R0,R1,R0,R2
        MOVS     R1,#+100
        SDIV     R0,R0,R1
        LDR.W    R1,??DataTable12_10
        STR      R0,[R1, #+0]
// 1792       }
// 1793     refer_error = MID - center_average;  
??Control_6:
        LDR.W    R0,??DataTable12_10
        LDR      R0,[R0, #+0]
        RSBS     R0,R0,#+78
        LDR.W    R1,??DataTable12_6
        STRH     R0,[R1, #+0]
// 1794     //归中的error
// 1795   if(abs(refer_error)<zhongjian)
        LDR.W    R0,??DataTable12_6
        LDRSH    R0,[R0, #+0]
        BL       abs
        LDR.W    R1,??DataTable12_14
        LDRSH    R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??Control_26
// 1796   { lcd_ref_p= lcd_ref_p1;lcd_ref_d=lcd_ref_d1;}
        LDR.W    R0,??DataTable12_15
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable12_16
        STRH     R0,[R1, #+0]
        LDR.W    R0,??DataTable12_17
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable12_18
        STRH     R0,[R1, #+0]
        B.N      ??Control_27
// 1797   else
// 1798   { lcd_ref_p= lcd_ref_p2;lcd_ref_d=lcd_ref_d2;}  
??Control_26:
        LDR.W    R0,??DataTable12_19
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable12_16
        STRH     R0,[R1, #+0]
        LDR.W    R0,??DataTable12_20
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable12_18
        STRH     R0,[R1, #+0]
// 1799   if(barrier_l==1||barrier_r==1) { lcd_ref_p= lcd_ref_p2+30;lcd_ref_d=lcd_ref_d2+20;}
??Control_27:
        LDR.W    R0,??DataTable12_21
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable12_22
        LDRB     R1,[R1, #+0]
        ORRS     R0,R1,R0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??Control_28
        LDR.W    R0,??DataTable12_19
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+30
        LDR.W    R1,??DataTable12_16
        STRH     R0,[R1, #+0]
        LDR.W    R0,??DataTable12_20
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+20
        LDR.W    R1,??DataTable12_18
        STRH     R0,[R1, #+0]
// 1800   if( direction == 2){ lcd_ref_p= lcd_ref_p1+20;lcd_ref_d=lcd_ref_d1;}
??Control_28:
        LDR.W    R0,??DataTable12_23
        LDRB     R0,[R0, #+0]
        CMP      R0,#+2
        BNE.N    ??Control_29
        LDR.W    R0,??DataTable12_15
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+20
        LDR.W    R1,??DataTable12_16
        STRH     R0,[R1, #+0]
        LDR.W    R0,??DataTable12_17
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable12_18
        STRH     R0,[R1, #+0]
// 1801   if(turn_l==1||turn_r==1)
??Control_29:
        LDR.W    R0,??DataTable12_24
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable12_25
        LDRB     R1,[R1, #+0]
        ORRS     R0,R1,R0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??Control_30
// 1802  { lcd_ref_p= 64;lcd_ref_d=300;}
        MOVS     R0,#+64
        LDR.W    R1,??DataTable12_16
        STRH     R0,[R1, #+0]
        MOV      R0,#+300
        LDR.W    R1,??DataTable12_18
        STRH     R0,[R1, #+0]
// 1803   
// 1804     error_servo_ref_p = 1*f_abs16(center_average_b-MID)/8 + lcd_ref_p + 1*(ROW - control_top_whiteline)/2;  //增加这个p有利于出弯道内切    3/13    1/2
??Control_30:
        LDR.W    R0,??DataTable12_5
        LDRSH    R0,[R0, #+0]
        SUBS     R0,R0,#+78
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       f_abs16
        MOVS     R1,#+8
        SDIV     R0,R0,R1
        LDR.W    R1,??DataTable12_16
        LDRSH    R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable12_13
        LDRH     R1,[R1, #+0]
        RSBS     R1,R1,#+50
        MOVS     R2,#+2
        SDIV     R1,R1,R2
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable12_11
        STRH     R0,[R1, #+0]
// 1805     error_servo_ref_d =  lcd_ref_d + f_abs16(center_average-MID)/20;//1*(ROW-control_top_whiteline)/16+    
        LDR.W    R0,??DataTable12_18
        LDRSH    R6,[R0, #+0]
        LDR.W    R0,??DataTable12_10
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+78
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       f_abs16
        MOVS     R1,#+20
        SDIV     R0,R0,R1
        ADDS     R0,R0,R6
        LDR.W    R1,??DataTable12_12
        STRH     R0,[R1, #+0]
// 1806      
// 1807    angle_temp=-(int16)( (error_servo_ref_p * refer_error + error_servo_ref_d * (refer_error - re_refer_error)) / 10);//     
        LDR.W    R0,??DataTable12_11
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable12_6
        LDRSH    R1,[R1, #+0]
        LDR.W    R2,??DataTable12_12
        LDRH     R2,[R2, #+0]
        LDR.W    R3,??DataTable12_6
        LDRSH    R3,[R3, #+0]
        LDR.W    R6,??DataTable12_26
        LDRSH    R6,[R6, #+0]
        SUBS     R3,R3,R6
        MULS     R2,R3,R2
        MLA      R0,R1,R0,R2
        MOVS     R1,#+10
        SDIV     R0,R0,R1
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        RSBS     R0,R0,#+0
        MOVS     R5,R0
        B.N      ??Control_31
// 1808  } 
// 1809  
// 1810  else
// 1811    angle_temp = re_angle;
??Control_0:
        LDR.W    R0,??DataTable12_9
        LDRSH    R0,[R0, #+0]
        MOVS     R5,R0
// 1812  
// 1813  
// 1814  if(turn_l==1&&control_top_whiteline<31)
??Control_31:
        LDR.W    R0,??DataTable12_24
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Control_32
        LDR.W    R0,??DataTable12_13
        LDRH     R0,[R0, #+0]
        CMP      R0,#+31
        BGE.N    ??Control_32
// 1815 {
// 1816        
// 1817          angle_temp=-ft1;
        LDR.W    R0,??DataTable12_27
        LDRSH    R0,[R0, #+0]
        RSBS     R0,R0,#+0
        MOVS     R5,R0
// 1818  
// 1819          if(angle_temp<-1600)
        SXTH     R5,R5            ;; SignExt  R5,R5,#+16,#+16
        CMN      R5,#+1600
        BGE.N    ??Control_33
// 1820            angle_temp=-1600;
        LDR.W    R0,??DataTable12_28  ;; 0xfffff9c0
        MOVS     R5,R0
        B.N      ??Control_33
// 1821  
// 1822 }
// 1823 
// 1824 else if(turn_r==1&&control_top_whiteline<31)
??Control_32:
        LDR.W    R0,??DataTable12_25
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Control_33
        LDR.W    R0,??DataTable12_13
        LDRH     R0,[R0, #+0]
        CMP      R0,#+31
        BGE.N    ??Control_33
// 1825 {
// 1826   
// 1827          angle_temp=ft1;
        LDR.W    R0,??DataTable12_27
        LDRSH    R0,[R0, #+0]
        MOVS     R5,R0
// 1828          
// 1829  if(angle_temp>1600)
        SXTH     R5,R5            ;; SignExt  R5,R5,#+16,#+16
        CMP      R5,#+1600
        BLE.N    ??Control_33
// 1830       angle_temp=1600; 
        MOV      R0,#+1600
        MOVS     R5,R0
// 1831         
// 1832 }
// 1833 
// 1834 if(turn_l==0&&turn_r==0)
??Control_33:
        LDR.W    R0,??DataTable12_24
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable12_25
        LDRB     R1,[R1, #+0]
        ORRS     R0,R1,R0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??Control_34
// 1835 {
// 1836    record_flag=0; 
        MOVS     R0,#+0
        LDR.W    R1,??DataTable12_29
        STRB     R0,[R1, #+0]
// 1837 }
// 1838 
// 1839  if(angle_temp>big)
??Control_34:
        LDR.W    R0,??DataTable12_30
        LDRSH    R0,[R0, #+0]
        SXTH     R5,R5            ;; SignExt  R5,R5,#+16,#+16
        CMP      R0,R5
        BGE.N    ??Control_35
// 1840       angle_temp=big;
        LDR.W    R0,??DataTable12_30
        LDRSH    R0,[R0, #+0]
        MOVS     R5,R0
// 1841  if(angle_temp<-big)
??Control_35:
        SXTH     R5,R5            ;; SignExt  R5,R5,#+16,#+16
        LDR.W    R0,??DataTable12_30
        LDRSH    R0,[R0, #+0]
        CMN      R5,R0
        BGE.N    ??Control_36
// 1842       angle_temp=-big; 
        LDR.W    R0,??DataTable12_30
        LDRSH    R0,[R0, #+0]
        RSBS     R0,R0,#+0
        MOVS     R5,R0
// 1843  
// 1844  angle=angle_temp;
??Control_36:
        LDR.W    R0,??DataTable12_8
        STRH     R5,[R0, #+0]
// 1845  /*
// 1846  if(jianshu==1)/////turn_l==1||turn_r==1                   RealSpeed
// 1847  { 
// 1848  if( RealSpeed>Speed_set+30){Speed=Speed_set-ft-50;}// acce_static=ACCE_STATIC-fanting-80;
// 1849  else  if( RealSpeed>(Speed_set+10)){Speed=Speed_set-ft-40;}// acce_static=ACCE_STATIC-fanting-60;
// 1850  else  if( RealSpeed>(Speed_set)){ Speed=Speed_set-ft-30;}//acce_static=ACCE_STATIC-fanting-40;
// 1851   else  if( RealSpeed>(Speed_set-20)){Speed=Speed_set-ft-25;}//  acce_static=ACCE_STATIC-fanting-20;
// 1852  else  if( RealSpeed>(Speed_set)-30){ Speed=Speed_set-ft-20;}//acce_static=ACCE_STATIC-fanting-10; 
// 1853  else { Speed=Speed_set-ft-15;}   // acce_static=ACCE_STATIC-fanting;
// 1854  }
// 1855 else  Speed=Speed_set;
// 1856  */
// 1857 /*  if( begin==0&&liu==1&&feng==1 )acce_static=ACCE_STATIC-1000;
// 1858 else  if( begin==0&&liu==0&&feng==1)acce_static=ACCE_STATIC-50;
// 1859 else  if( begin==0&&liu==1&&feng==0)acce_static=ACCE_STATIC-150;
// 1860 else  if( begin==0&&liu==0&&feng==0)acce_static=ACCE_STATIC;
// 1861 */ 
// 1862  /*
// 1863 if(jianshu==0)
// 1864 {
// 1865  if( RealSpeed>Speed_set+10) 
// 1866    {
// 1867   if(abs(refer_error)>45)Speed=Speed_set-40;
// 1868     else  if(abs(refer_error)>40)Speed=Speed_set-30;
// 1869       else    if(abs(refer_error)>30)Speed=Speed_set-20; 
// 1870         else    if(abs(refer_error)>25)Speed=Speed_set-10; 
// 1871           else   if(abs(refer_error)>15)Speed=Speed_set;
// 1872             else   if(abs(refer_error)>10)Speed=Speed_set+10;
// 1873                else   Speed=Speed_set+15; 
// 1874      }
// 1875 else 
// 1876   if( RealSpeed>Speed_set) 
// 1877  {
// 1878   if(abs(refer_error)>45)Speed=Speed_set-30;
// 1879     else  if(abs(refer_error)>40)Speed=Speed_set-20;
// 1880       else    if(abs(refer_error)>30)Speed=Speed_set-10; 
// 1881         else    if(abs(refer_error)>25)Speed=Speed_set; 
// 1882           else   if(abs(refer_error)>15)Speed=Speed_set+5;
// 1883             else   if(abs(refer_error)>10)Speed=Speed_set+15;
// 1884                else   Speed=Speed_set+25; 
// 1885       }  
// 1886  else 
// 1887   if( RealSpeed>Speed_set-15) 
// 1888  {
// 1889   if(abs(refer_error)>45)Speed=Speed_set-20;
// 1890     else  if(abs(refer_error)>40)Speed=Speed_set-10;
// 1891       else    if(abs(refer_error)>30)Speed=Speed_set-5; 
// 1892         else    if(abs(refer_error)>25)Speed=Speed_set; 
// 1893           else   if(abs(refer_error)>15)Speed=Speed_set+10;
// 1894             else   if(abs(refer_error)>10)Speed=Speed_set+20;
// 1895                else   Speed=Speed_set+30; 
// 1896       }  
// 1897  else 
// 1898   if( RealSpeed>Speed_set-30) 
// 1899  {
// 1900   if(abs(refer_error)>45)Speed=Speed_set-15;
// 1901     else  if(abs(refer_error)>40)Speed=Speed_set-10;
// 1902       else    if(abs(refer_error)>30)Speed=Speed_set; 
// 1903         else    if(abs(refer_error)>25)Speed=Speed_set+5; 
// 1904           else   if(abs(refer_error)>15)Speed=Speed_set+15;
// 1905             else   if(abs(refer_error)>10)Speed=Speed_set+25;
// 1906                else   Speed=Speed_set+35; 
// 1907       } 
// 1908  else
// 1909  {
// 1910   if(abs(refer_error)>45)Speed=Speed_set-10;
// 1911     else  if(abs(refer_error)>40)Speed=Speed_set-5;
// 1912       else    if(abs(refer_error)>30)Speed=Speed_set+5; 
// 1913         else    if(abs(refer_error)>25)Speed=Speed_set+15; 
// 1914           else   if(abs(refer_error)>15)Speed=Speed_set+25;
// 1915             else   if(abs(refer_error)>10)Speed=Speed_set+35;
// 1916                else   Speed=Speed_set+45; 
// 1917       }   
// 1918 }
// 1919  */
// 1920 
// 1921 
// 1922 /*  if( direction == 1 )
// 1923  {
// 1924    if(ramp_flag==1 )
// 1925  { 
// 1926    Speed=Speed_set+45;  
// 1927  gpio_set (PORTB, 10, 0);
// 1928  }
// 1929    else 
// 1930    {
// 1931    Speed=Speed_set+45; 
// 1932    }
// 1933  }
// 1934   else  if( direction == 2 )
// 1935  {   
// 1936    acce_static=ACCE_STATIC-40;
// 1937  }
// 1938  
// 1939  else  if( direction ==3||direction == 5||direction == 6||direction == 4 )
// 1940  {
// 1941     acce_static=ACCE_STATIC+30;    
// 1942  }
// 1943  else 
// 1944     acce_static=ACCE_STATIC; 
// 1945  //
// 1946 */
// 1947  // if(ramp_flag==1 )gpio_set (PORTB, 10, 0);
// 1948 /* 
// 1949  if( direction == 1 )gpio_set (PORTB, 10, 0);
// 1950  else  gpio_set (PORTB, 10,1);
// 1951 
// 1952   if(barrier_l==1||barrier_r==1) 
// 1953      gpio_set (PORTB, 10, 0);
// 1954  else 
// 1955    gpio_set (PORTB, 10,1);
// 1956   */
// 1957  
// 1958  if(turn_l==0&&turn_r==0)
        LDR.W    R0,??DataTable12_24
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable12_25
        LDRB     R1,[R1, #+0]
        ORRS     R0,R1,R0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??Control_37
// 1959  {
// 1960     re_refer_error =refer_error;
        LDR.W    R0,??DataTable12_6
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable12_26
        STRH     R0,[R1, #+0]
// 1961  }
// 1962  
// 1963 }
??Control_37:
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11:
        DC32     ramp_dis_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_1:
        DC32     ramp_time

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_2:
        DC32     ramp_delay_time

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_3:
        DC32     ramp_dis_time

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_4:
        DC32     0x3dcccccd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_5:
        DC32     0x43960000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_6:
        DC32     0x404b8000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_7:
        DC32     0x3f733334

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_8:
        DC32     0xbf733333

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_9:
        DC32     0xbf800000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_10:
        DC32     top_whiteline

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_11:
        DC32     bottom_whitebase

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_12:
        DC32     VideoImage2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_13:
        DC32     center_white

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_14:
        DC32     OT

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_15:
        DC32     BASE_OT

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_16:
        DC32     left_black
// 1964 
// 1965 
// 1966  

        SECTION `.data`:DATA:REORDER:NOROOT(2)
// 1967  float close=1.0;
close:
        DATA
        DC32 3F800000H
// 1968  

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1969 void barrier( )
// 1970 {
barrier:
        PUSH     {R3-R7,LR}
// 1971  uint16 tadge_l=0,tadge_r=0;
        MOVS     R4,#+0
        MOVS     R5,#+0
// 1972  uint16 i=0;
        MOVS     R6,#+0
// 1973  int16 record=0;
        MOVS     R7,#+0
// 1974 if(control_top_whiteline>20)
        LDR.W    R0,??DataTable12_13
        LDRH     R0,[R0, #+0]
        CMP      R0,#+21
        BLT.W    ??barrier_0
// 1975 {
// 1976 	for(i = bottom_whitebase+3;i<control_top_whiteline-3;i++)
        LDR.W    R0,??DataTable14
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+3
        MOVS     R6,R0
??barrier_1:
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        LDR.W    R0,??DataTable12_13
        LDRH     R0,[R0, #+0]
        SUBS     R0,R0,#+3
        CMP      R6,R0
        BGE.N    ??barrier_2
// 1977 {
// 1978 	if( f_abs16( left_black[i]-left_black[i-1] )<4&&f_abs16(left_black[i]-left_black[i-2])<4&&f_abs16(left_black[i]-left_black[i-3])<4&&left_black[i+1]-left_black[i]>8&&left_black[i+2]-left_black[i]>7&&left_black[i+3]-left_black[i]>6)
        LDR.W    R0,??DataTable15
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        LDRB     R0,[R6, R0]
        LDR.W    R1,??DataTable15
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        ADDS     R1,R6,R1
        LDRB     R1,[R1, #-1]
        SUBS     R0,R0,R1
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       f_abs16
        CMP      R0,#+4
        BGE.N    ??barrier_3
        LDR.W    R0,??DataTable15
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        LDRB     R0,[R6, R0]
        LDR.W    R1,??DataTable15
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        ADDS     R1,R6,R1
        LDRB     R1,[R1, #-2]
        SUBS     R0,R0,R1
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       f_abs16
        CMP      R0,#+4
        BGE.N    ??barrier_3
        LDR.W    R0,??DataTable15
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        LDRB     R0,[R6, R0]
        LDR.W    R1,??DataTable15
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        ADDS     R1,R6,R1
        LDRB     R1,[R1, #-3]
        SUBS     R0,R0,R1
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       f_abs16
        CMP      R0,#+4
        BGE.N    ??barrier_3
        LDR.W    R0,??DataTable15
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        ADDS     R0,R6,R0
        LDRB     R0,[R0, #+1]
        LDR.W    R1,??DataTable15
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        LDRB     R1,[R6, R1]
        SUBS     R0,R0,R1
        CMP      R0,#+9
        BLT.N    ??barrier_3
        LDR.W    R0,??DataTable15
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        ADDS     R0,R6,R0
        LDRB     R0,[R0, #+2]
        LDR.W    R1,??DataTable15
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        LDRB     R1,[R6, R1]
        SUBS     R0,R0,R1
        CMP      R0,#+8
        BLT.N    ??barrier_3
        LDR.W    R0,??DataTable15
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        ADDS     R0,R6,R0
        LDRB     R0,[R0, #+3]
        LDR.W    R1,??DataTable15
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        LDRB     R1,[R6, R1]
        SUBS     R0,R0,R1
        CMP      R0,#+7
        BLT.N    ??barrier_3
// 1979 {
// 1980 	barrier_l=1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable12_21
        STRB     R0,[R1, #+0]
// 1981         //barrier_r=0;
// 1982         tadge_l=i;
        MOVS     R4,R6
// 1983         break;
        B.N      ??barrier_2
// 1984 }
// 1985 
// 1986 else
// 1987 {
// 1988 	barrier_l=0;
??barrier_3:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable12_21
        STRB     R0,[R1, #+0]
// 1989         //barrier_r=0;
// 1990         tadge_l=0;
        MOVS     R0,#+0
        MOVS     R4,R0
// 1991 }
// 1992 
// 1993 }
        ADDS     R6,R6,#+1
        B.N      ??barrier_1
// 1994 
// 1995 
// 1996 for(i = bottom_whitebase+3;i<control_top_whiteline-3;i++)
??barrier_2:
        LDR.W    R0,??DataTable14
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+3
        MOVS     R6,R0
??barrier_4:
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        LDR.N    R0,??DataTable12_13
        LDRH     R0,[R0, #+0]
        SUBS     R0,R0,#+3
        CMP      R6,R0
        BGE.N    ??barrier_5
// 1997 {
// 1998 	
// 1999 
// 2000  if(f_abs16(right_black[i]-right_black[i-1])<4&&f_abs16(right_black[i]-right_black[i-2])<4&&f_abs16(right_black[i]-right_black[i-3])<4&&right_black[i]-right_black[i+1]>8&&right_black[i]-right_black[i+2]>7&&right_black[i]-right_black[i+3]>6)
        LDR.N    R0,??DataTable12
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        LDRB     R0,[R6, R0]
        LDR.N    R1,??DataTable12
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        ADDS     R1,R6,R1
        LDRB     R1,[R1, #-1]
        SUBS     R0,R0,R1
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       f_abs16
        CMP      R0,#+4
        BGE.N    ??barrier_6
        LDR.N    R0,??DataTable12
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        LDRB     R0,[R6, R0]
        LDR.N    R1,??DataTable12
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        ADDS     R1,R6,R1
        LDRB     R1,[R1, #-2]
        SUBS     R0,R0,R1
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       f_abs16
        CMP      R0,#+4
        BGE.N    ??barrier_6
        LDR.N    R0,??DataTable12
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        LDRB     R0,[R6, R0]
        LDR.N    R1,??DataTable12
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        ADDS     R1,R6,R1
        LDRB     R1,[R1, #-3]
        SUBS     R0,R0,R1
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       f_abs16
        CMP      R0,#+4
        BGE.N    ??barrier_6
        LDR.N    R0,??DataTable12
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        LDRB     R0,[R6, R0]
        LDR.N    R1,??DataTable12
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        ADDS     R1,R6,R1
        LDRB     R1,[R1, #+1]
        SUBS     R0,R0,R1
        CMP      R0,#+9
        BLT.N    ??barrier_6
        LDR.N    R0,??DataTable12
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        LDRB     R0,[R6, R0]
        LDR.N    R1,??DataTable12
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        ADDS     R1,R6,R1
        LDRB     R1,[R1, #+2]
        SUBS     R0,R0,R1
        CMP      R0,#+8
        BLT.N    ??barrier_6
        LDR.N    R0,??DataTable12
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        LDRB     R0,[R6, R0]
        LDR.N    R1,??DataTable12
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        ADDS     R1,R6,R1
        LDRB     R1,[R1, #+3]
        SUBS     R0,R0,R1
        CMP      R0,#+7
        BLT.N    ??barrier_6
// 2001 {
// 2002 	barrier_r=1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable12_22
        STRB     R0,[R1, #+0]
// 2003         //barrier_l=0;
// 2004         tadge_r=i;
        MOVS     R5,R6
// 2005         break;
        B.N      ??barrier_5
// 2006 }
// 2007 
// 2008 else
// 2009 {
// 2010 	barrier_r=0;
??barrier_6:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable12_22
        STRB     R0,[R1, #+0]
// 2011          tadge_r=0;
        MOVS     R0,#+0
        MOVS     R5,R0
// 2012         //barrier_r=0;
// 2013 }
// 2014 
// 2015 
// 2016 }
        ADDS     R6,R6,#+1
        B.N      ??barrier_4
// 2017 
// 2018 if(barrier_l==1&&barrier_r==0)
??barrier_5:
        LDR.N    R0,??DataTable12_21
        LDRB     R0,[R0, #+0]
        LDR.N    R1,??DataTable12_22
        LDRB     R1,[R1, #+0]
        EORS     R1,R1,#0x1
        TST      R0,R1
        BEQ.N    ??barrier_7
// 2019 {         GPIO_SET(PORTB, 10,0);
        LDR.W    R0,??DataTable15_1
        LDR      R0,[R0, #+4]
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x400
        LDR.W    R1,??DataTable15_1
        LDR      R1,[R1, #+4]
        STR      R0,[R1, #+0]
// 2020 	for(i = bottom_whitebase;i<=control_top_whiteline;i++)
        LDR.W    R0,??DataTable14
        LDRB     R0,[R0, #+0]
        MOVS     R6,R0
??barrier_8:
        LDR.N    R0,??DataTable12_13
        LDRH     R0,[R0, #+0]
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R0,R6
        BCC.W    ??barrier_0
// 2021 {
// 2022 	record=left_black[tadge_l+3]+2/5*(tadge_l+3-i);
        LDR.W    R0,??DataTable15
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        ADDS     R0,R4,R0
        LDRB     R0,[R0, #+3]
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        ADDS     R1,R4,#+3
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        SUBS     R1,R1,R6
        MOVS     R2,#+0
        MULS     R1,R2,R1
        UXTAB    R0,R1,R0
        MOVS     R7,R0
// 2023         if(record<=0)
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        CMP      R7,#+1
        BGE.N    ??barrier_9
// 2024           record=0;
        MOVS     R0,#+0
        MOVS     R7,R0
        B.N      ??barrier_10
// 2025         else if(record>=MID)
??barrier_9:
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        CMP      R7,#+78
        BLT.N    ??barrier_10
// 2026         {
// 2027           record=MID;
        MOVS     R0,#+78
        MOVS     R7,R0
// 2028         }
// 2029         left_black[i]=record;
??barrier_10:
        LDR.W    R0,??DataTable15
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        STRB     R7,[R6, R0]
// 2030         
// 2031        record= (left_black[i]+right_black[i])/2;
        LDR.W    R0,??DataTable15
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        LDRB     R0,[R6, R0]
        LDR.N    R1,??DataTable12
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        LDRB     R1,[R6, R1]
        ADDS     R0,R1,R0
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        MOVS     R7,R0
// 2032        if(record<=0)
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        CMP      R7,#+1
        BGE.N    ??barrier_11
// 2033        {
// 2034           record=0;
        MOVS     R0,#+0
        MOVS     R7,R0
        B.N      ??barrier_12
// 2035        }
// 2036         else if(record>=COLUMN-1)
??barrier_11:
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        CMP      R7,#+156
        BLT.N    ??barrier_12
// 2037         {
// 2038           record=COLUMN-1;
        MOVS     R0,#+156
        MOVS     R7,R0
// 2039         }
// 2040        center_white[i]=record;
??barrier_12:
        LDR.W    R0,??DataTable17
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        STRB     R7,[R6, R0]
// 2041         
// 2042 }
        ADDS     R6,R6,#+1
        B.N      ??barrier_8
// 2043  
// 2044 }
// 2045 
// 2046 else if(barrier_r==1&&barrier_l==0)
??barrier_7:
        LDR.N    R0,??DataTable12_22
        LDRB     R0,[R0, #+0]
        LDR.N    R1,??DataTable12_21
        LDRB     R1,[R1, #+0]
        EORS     R1,R1,#0x1
        TST      R0,R1
        BEQ.N    ??barrier_13
// 2047 {        GPIO_SET(PORTB, 10,0);
        LDR.W    R0,??DataTable15_1
        LDR      R0,[R0, #+4]
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x400
        LDR.W    R1,??DataTable15_1
        LDR      R1,[R1, #+4]
        STR      R0,[R1, #+0]
// 2048 	for(i = bottom_whitebase;i<=control_top_whiteline;i++)
        LDR.W    R0,??DataTable14
        LDRB     R0,[R0, #+0]
        MOVS     R6,R0
??barrier_14:
        LDR.N    R0,??DataTable12_13
        LDRH     R0,[R0, #+0]
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R0,R6
        BCC.W    ??barrier_0
// 2049 {
// 2050 	 record=right_black[tadge_r+3]-2/5*(tadge_r+3-i);
        LDR.N    R0,??DataTable12
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        ADDS     R0,R5,R0
        LDRB     R0,[R0, #+3]
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        SUBS     R1,R6,R5
        SUBS     R1,R1,#+3
        MOVS     R2,#+0
        MULS     R1,R2,R1
        UXTAB    R0,R1,R0
        MOVS     R7,R0
// 2051       
// 2052         if(record<=MID)
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        CMP      R7,#+79
        BGE.N    ??barrier_15
// 2053           record=MID;
        MOVS     R0,#+78
        MOVS     R7,R0
        B.N      ??barrier_16
// 2054         else if(record>=COLUMN-1)
??barrier_15:
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        CMP      R7,#+156
        BLT.N    ??barrier_16
// 2055         {
// 2056           record=COLUMN-1;
        MOVS     R0,#+156
        MOVS     R7,R0
// 2057         }
// 2058         right_black[i]=record;
??barrier_16:
        LDR.N    R0,??DataTable12
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        STRB     R7,[R6, R0]
// 2059         
// 2060        record= (left_black[i]+right_black[i])/2;
        LDR.W    R0,??DataTable15
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        LDRB     R0,[R6, R0]
        LDR.N    R1,??DataTable12
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        LDRB     R1,[R6, R1]
        ADDS     R0,R1,R0
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        MOVS     R7,R0
// 2061        if(record<=0)
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        CMP      R7,#+1
        BGE.N    ??barrier_17
// 2062        {
// 2063           record=0;
        MOVS     R0,#+0
        MOVS     R7,R0
        B.N      ??barrier_18
// 2064        }
// 2065         else if(record>=COLUMN-1)
??barrier_17:
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        CMP      R7,#+156
        BLT.N    ??barrier_18
// 2066         {
// 2067           record=COLUMN-1;
        MOVS     R0,#+156
        MOVS     R7,R0
// 2068         }
// 2069        center_white[i]=record;
??barrier_18:
        LDR.W    R0,??DataTable17
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        STRB     R7,[R6, R0]
// 2070 }
        ADDS     R6,R6,#+1
        B.N      ??barrier_14
// 2071 
// 2072 }
// 2073 
// 2074 else if(barrier_r==1&&barrier_l==1)
??barrier_13:
        LDR.N    R0,??DataTable12_22
        LDRB     R0,[R0, #+0]
        LDR.N    R1,??DataTable12_21
        LDRB     R1,[R1, #+0]
        TST      R0,R1
        BEQ.N    ??barrier_0
// 2075 {
// 2076      GPIO_SET(PORTB, 10,0);
        LDR.W    R0,??DataTable15_1
        LDR      R0,[R0, #+4]
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x400
        LDR.W    R1,??DataTable15_1
        LDR      R1,[R1, #+4]
        STR      R0,[R1, #+0]
// 2077      
// 2078      for(i = bottom_whitebase;i<=control_top_whiteline;i++)
        LDR.W    R0,??DataTable14
        LDRB     R0,[R0, #+0]
        MOVS     R6,R0
??barrier_19:
        LDR.N    R0,??DataTable12_13
        LDRH     R0,[R0, #+0]
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R0,R6
        BCC.N    ??barrier_0
// 2079      {
// 2080        
// 2081        record=left_black[tadge_l+3]+2/5*(tadge_l+3-i);
        LDR.W    R0,??DataTable15
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        ADDS     R0,R4,R0
        LDRB     R0,[R0, #+3]
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        ADDS     R1,R4,#+3
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        SUBS     R1,R1,R6
        MOVS     R2,#+0
        MULS     R1,R2,R1
        UXTAB    R0,R1,R0
        MOVS     R7,R0
// 2082         if(record<=0)
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        CMP      R7,#+1
        BGE.N    ??barrier_20
// 2083           record=0;
        MOVS     R0,#+0
        MOVS     R7,R0
        B.N      ??barrier_21
// 2084         else if(record>=MID)
??barrier_20:
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        CMP      R7,#+78
        BLT.N    ??barrier_21
// 2085         {
// 2086           record=MID;
        MOVS     R0,#+78
        MOVS     R7,R0
// 2087         }
// 2088         left_black[i]=record;
??barrier_21:
        LDR.W    R0,??DataTable15
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        STRB     R7,[R6, R0]
// 2089         
// 2090        record=right_black[tadge_r+3]-2/5*(tadge_r+3-i);
        LDR.N    R0,??DataTable12
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        ADDS     R0,R5,R0
        LDRB     R0,[R0, #+3]
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        SUBS     R1,R6,R5
        SUBS     R1,R1,#+3
        MOVS     R2,#+0
        MULS     R1,R2,R1
        UXTAB    R0,R1,R0
        MOVS     R7,R0
// 2091       
// 2092         if(record<=MID)
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        CMP      R7,#+79
        BGE.N    ??barrier_22
// 2093           record=MID;
        MOVS     R0,#+78
        MOVS     R7,R0
        B.N      ??barrier_23
// 2094         else if(record>=COLUMN-1)
??barrier_22:
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        CMP      R7,#+156
        BLT.N    ??barrier_23
// 2095         {
// 2096           record=COLUMN-1;
        MOVS     R0,#+156
        MOVS     R7,R0
// 2097         }
// 2098         right_black[i]=record;
??barrier_23:
        LDR.N    R0,??DataTable12
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        STRB     R7,[R6, R0]
// 2099         
// 2100        record= (left_black[i]+right_black[i])/2;
        LDR.W    R0,??DataTable15
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        LDRB     R0,[R6, R0]
        LDR.N    R1,??DataTable12
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        LDRB     R1,[R6, R1]
        ADDS     R0,R1,R0
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        MOVS     R7,R0
// 2101        if(record<=0)
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        CMP      R7,#+1
        BGE.N    ??barrier_24
// 2102        {
// 2103           record=0;
        MOVS     R0,#+0
        MOVS     R7,R0
        B.N      ??barrier_25
// 2104        }
// 2105         else if(record>=COLUMN-1)
??barrier_24:
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        CMP      R7,#+156
        BLT.N    ??barrier_25
// 2106         {
// 2107           record=COLUMN-1;
        MOVS     R0,#+156
        MOVS     R7,R0
// 2108         }
// 2109        center_white[i]=record;
??barrier_25:
        LDR.W    R0,??DataTable17
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        STRB     R7,[R6, R0]
// 2110      }
        ADDS     R6,R6,#+1
        B.N      ??barrier_19
// 2111     
// 2112 }
// 2113 
// 2114 else
// 2115 {
// 2116      //GPIO_SET(PORTB, 10,1);
// 2117      
// 2118 }
// 2119 
// 2120 }
// 2121 
// 2122 
// 2123 }
??barrier_0:
        POP      {R0,R4-R7,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12:
        DC32     right_black

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_1:
        DC32     ting1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_2:
        DC32     zhou

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_3:
        DC32     ting_check_stop

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_4:
        DC32     center_average_a

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_5:
        DC32     center_average_b

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_6:
        DC32     refer_error

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_7:
        DC32     sumbe3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_8:
        DC32     angle

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_9:
        DC32     re_angle

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_10:
        DC32     center_average

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_11:
        DC32     error_servo_ref_p

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_12:
        DC32     error_servo_ref_d

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_13:
        DC32     control_top_whiteline

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_14:
        DC32     zhongjian

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_15:
        DC32     lcd_ref_p1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_16:
        DC32     lcd_ref_p

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_17:
        DC32     lcd_ref_d1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_18:
        DC32     lcd_ref_d

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_19:
        DC32     lcd_ref_p2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_20:
        DC32     lcd_ref_d2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_21:
        DC32     barrier_l

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_22:
        DC32     barrier_r

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_23:
        DC32     direction

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_24:
        DC32     turn_l

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_25:
        DC32     turn_r

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_26:
        DC32     re_refer_error

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_27:
        DC32     ft1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_28:
        DC32     0xfffff9c0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_29:
        DC32     record_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_30:
        DC32     big
// 2124 

        SECTION `.data`:DATA:REORDER:NOROOT(0)
// 2125 uint8 qing=38;
qing:
        DATA
        DC8 38

        SECTION `.data`:DATA:REORDER:NOROOT(0)
// 2126 uint8 huanjie=25;
huanjie:
        DATA
        DC8 25
// 2127 
// 2128 
// 2129 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2130 void across_smile()
// 2131 {
across_smile:
        PUSH     {R4-R10,LR}
// 2132 //bool check_flag_l=0;
// 2133 //bool check_flag_r=0;
// 2134 
// 2135 uint16 turn_l_count=0;
        MOVS     R6,#+0
// 2136 uint16 turn_r_count=0;
        MOVS     R0,#+0
// 2137 
// 2138 int16 record=0;
        MOVS     R1,#+0
// 2139 
// 2140 int tage=0;
        MOVS     R2,#+0
// 2141 uint16 count_tt=0;
        MOVS     R3,#+0
// 2142 uint16 i=0;
        MOVS     R4,#+0
// 2143 uint16 temp=0;
        MOVS     R5,#+0
// 2144 
// 2145 uint16 j=0;
        MOVS     R7,#+0
// 2146 
// 2147 if( control_top_whiteline>30)
        LDR.W    R12,??DataTable17_1
        LDRH     R12,[R12, #+0]
        CMP      R12,#+31
        BLT.N    ??across_smile_0
// 2148 {
// 2149     turn_l=0;
        MOVS     R12,#+0
        LDR.W    LR,??DataTable17_2
        STRB     R12,[LR, #+0]
// 2150     turn_r=0;
        MOVS     R12,#+0
        LDR.W    LR,??DataTable17_3
        STRB     R12,[LR, #+0]
// 2151 }
// 2152 
// 2153 for(i = bottom_whitebase+5;i<control_top_whiteline-6;i++)
??across_smile_0:
        LDR.W    R12,??DataTable14
        LDRB     R12,[R12, #+0]
        ADDS     R12,R12,#+5
        MOV      R4,R12
??across_smile_1:
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        LDR.W    R12,??DataTable17_1
        LDRH     R12,[R12, #+0]
        SUBS     R12,R12,#+6
        CMP      R4,R12
        BGE.W    ??across_smile_2
// 2154 {
// 2155      if(Row_state[i-3]==3&&Row_state[i-2]==3&&Row_state[i-1]==3&&Row_state[i]!=3&&Row_state[i+1]!=3&&Row_state[i+2]!=3)
        LDR.W    R12,??DataTable17_4
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        ADDS     R12,R4,R12
        LDRB     R12,[R12, #-3]
        CMP      R12,#+3
        BNE.W    ??across_smile_3
        LDR.W    R12,??DataTable17_4
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        ADDS     R12,R4,R12
        LDRB     R12,[R12, #-2]
        CMP      R12,#+3
        BNE.W    ??across_smile_3
        LDR.W    R12,??DataTable17_4
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        ADDS     R12,R4,R12
        LDRB     R12,[R12, #-1]
        CMP      R12,#+3
        BNE.W    ??across_smile_3
        LDR.W    R12,??DataTable17_4
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        LDRB     R12,[R4, R12]
        CMP      R12,#+3
        BEQ.W    ??across_smile_3
        LDR.W    R12,??DataTable17_4
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        ADDS     R12,R4,R12
        LDRB     R12,[R12, #+1]
        CMP      R12,#+3
        BEQ.W    ??across_smile_3
        LDR.W    R12,??DataTable17_4
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        ADDS     R12,R4,R12
        LDRB     R12,[R12, #+2]
        CMP      R12,#+3
        BEQ.W    ??across_smile_3
// 2156   {
// 2157 	if( Row_state[i]==0&&Row_state[i+1]==0&&Row_state[i+2]==0&&left_black[i]>10&&right_black[i]<COLUMN-10)//发现丢线
        LDR.W    R12,??DataTable17_4
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        LDRB     R12,[R4, R12]
        CMP      R12,#+0
        BNE.W    ??across_smile_4
        LDR.W    R12,??DataTable17_4
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        ADDS     R12,R4,R12
        LDRB     R12,[R12, #+1]
        CMP      R12,#+0
        BNE.W    ??across_smile_4
        LDR.W    R12,??DataTable17_4
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        ADDS     R12,R4,R12
        LDRB     R12,[R12, #+2]
        CMP      R12,#+0
        BNE.W    ??across_smile_4
        LDR.W    R12,??DataTable15
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        LDRB     R12,[R4, R12]
        CMP      R12,#+11
        BLT.W    ??across_smile_4
        LDR.W    R12,??DataTable17_5
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        LDRB     R12,[R4, R12]
        CMP      R12,#+147
        BGE.W    ??across_smile_4
// 2158        {
// 2159 	 temp=i;
        MOVS     R5,R4
// 2160 	for(j=temp;j<temp+10;j++)
        MOVS     R7,R5
??across_smile_5:
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        ADDS     R12,R5,#+10
        CMP      R7,R12
        BGE.W    ??across_smile_6
// 2161        { 
// 2162          if( left_black[j]>6)
        LDR.W    R12,??DataTable15
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        LDRB     R12,[R7, R12]
        CMP      R12,#+7
        BLT.W    ??across_smile_7
// 2163          {
// 2164           if( VideoImage2[j][ left_black[j]-1]>WHITE_BLACK_OT&&VideoImage2[j][ left_black[j]-2]>WHITE_BLACK_OT&&VideoImage2[j][ left_black[j]-3]>WHITE_BLACK_OT
// 2165                &&VideoImage2[j][ left_black[j]-4]>WHITE_BLACK_OT&&VideoImage2[j][ left_black[j]-5]>WHITE_BLACK_OT&&VideoImage2[j][ left_black[j]-6]>WHITE_BLACK_OT&&(Row_state[j]!=2&&Row_state[j]!=1))
        LDR.W    R12,??DataTable17_6
        LDRB     R12,[R12, #+0]
        LDR.W    LR,??DataTable17_7
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        MOVS     R8,#+157
        MLA      LR,R8,R7,LR
        LDR.W    R8,??DataTable15
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        LDRB     R8,[R7, R8]
        ADDS     LR,R8,LR
        LDRB     LR,[LR, #-1]
        CMP      R12,LR
        BCS.W    ??across_smile_7
        LDR.W    R12,??DataTable17_6
        LDRB     R12,[R12, #+0]
        LDR.W    LR,??DataTable17_7
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        MOVS     R8,#+157
        MLA      LR,R8,R7,LR
        LDR.W    R8,??DataTable15
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        LDRB     R8,[R7, R8]
        ADDS     LR,R8,LR
        LDRB     LR,[LR, #-2]
        CMP      R12,LR
        BCS.N    ??across_smile_7
        LDR.W    R12,??DataTable17_6
        LDRB     R12,[R12, #+0]
        LDR.W    LR,??DataTable17_7
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        MOVS     R8,#+157
        MLA      LR,R8,R7,LR
        LDR.W    R8,??DataTable15
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        LDRB     R8,[R7, R8]
        ADDS     LR,R8,LR
        LDRB     LR,[LR, #-3]
        CMP      R12,LR
        BCS.N    ??across_smile_7
        LDR.W    R12,??DataTable17_6
        LDRB     R12,[R12, #+0]
        LDR.W    LR,??DataTable17_7
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        MOVS     R8,#+157
        MLA      LR,R8,R7,LR
        LDR.W    R8,??DataTable15
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        LDRB     R8,[R7, R8]
        ADDS     LR,R8,LR
        LDRB     LR,[LR, #-4]
        CMP      R12,LR
        BCS.N    ??across_smile_7
        LDR.W    R12,??DataTable17_6
        LDRB     R12,[R12, #+0]
        LDR.W    LR,??DataTable17_7
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        MOVS     R8,#+157
        MLA      LR,R8,R7,LR
        LDR.W    R8,??DataTable15
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        LDRB     R8,[R7, R8]
        ADDS     LR,R8,LR
        LDRB     LR,[LR, #-5]
        CMP      R12,LR
        BCS.N    ??across_smile_7
        LDR.W    R12,??DataTable17_6
        LDRB     R12,[R12, #+0]
        LDR.W    LR,??DataTable17_7
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        MOVS     R8,#+157
        MLA      LR,R8,R7,LR
        LDR.W    R8,??DataTable15
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        LDRB     R8,[R7, R8]
        ADDS     LR,R8,LR
        LDRB     LR,[LR, #-6]
        CMP      R12,LR
        BCS.N    ??across_smile_7
        LDR.W    R12,??DataTable17_4
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        LDRB     R12,[R7, R12]
        CMP      R12,#+2
        BEQ.N    ??across_smile_7
        LDR.W    R12,??DataTable17_4
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        LDRB     R12,[R7, R12]
        CMP      R12,#+1
        BEQ.N    ??across_smile_7
// 2166           {
// 2167             turn_l_count++;
        ADDS     R6,R6,#+1
// 2168           }
// 2169          }
// 2170 
// 2171        }//向上搜索完毕
??across_smile_7:
        ADDS     R7,R7,#+1
        B.N      ??across_smile_5
// 2172        
// 2173        if(turn_l_count>7&&center_white[control_top_whiteline]>35&&center_white[control_top_whiteline]<MID&&right_black[control_top_whiteline]-left_black[control_top_whiteline]<40)   //////
??across_smile_6:
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,#+8
        BLT.W    ??across_smile_3
        LDR.W    R12,??DataTable17
        LDR.W    LR,??DataTable17_1
        LDRH     LR,[LR, #+0]
        LDRB     R12,[LR, R12]
        CMP      R12,#+36
        BLT.W    ??across_smile_3
        LDR.W    R12,??DataTable17
        LDR.W    LR,??DataTable17_1
        LDRH     LR,[LR, #+0]
        LDRB     R12,[LR, R12]
        CMP      R12,#+78
        BGE.W    ??across_smile_3
        LDR.W    R12,??DataTable17_5
        LDR.W    LR,??DataTable17_1
        LDRH     LR,[LR, #+0]
        LDRB     R12,[LR, R12]
        LDR.W    LR,??DataTable15
        LDR.W    R8,??DataTable17_1
        LDRH     R8,[R8, #+0]
        LDRB     LR,[R8, LR]
        SUBS     R12,R12,LR
        CMP      R12,#+40
        BGE.W    ??across_smile_3
// 2174        {    
// 2175             turn_l=1;
        MOVS     R12,#+1
        LDR.W    LR,??DataTable17_2
        STRB     R12,[LR, #+0]
// 2176             tage=temp;
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        MOVS     R2,R5
// 2177             break;
        B.N      ??across_smile_2
// 2178         }
// 2179   
// 2180        }
// 2181         else if( Row_state[i]==1&&Row_state[i+1]==1&&Row_state[i+2]==1&&right_black[i]<COLUMN-10&&left_black[i]>10)
??across_smile_4:
        LDR.W    R12,??DataTable17_4
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        LDRB     R12,[R4, R12]
        CMP      R12,#+1
        BNE.W    ??across_smile_3
        LDR.W    R12,??DataTable17_4
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        ADDS     R12,R4,R12
        LDRB     R12,[R12, #+1]
        CMP      R12,#+1
        BNE.W    ??across_smile_3
        LDR.W    R12,??DataTable17_4
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        ADDS     R12,R4,R12
        LDRB     R12,[R12, #+2]
        CMP      R12,#+1
        BNE.W    ??across_smile_3
        LDR.W    R12,??DataTable17_5
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        LDRB     R12,[R4, R12]
        CMP      R12,#+147
        BGE.W    ??across_smile_3
        LDR.W    R12,??DataTable15
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        LDRB     R12,[R4, R12]
        CMP      R12,#+11
        BLT.W    ??across_smile_3
// 2182       {
// 2183         temp=i;
        MOVS     R5,R4
// 2184 	for(j=temp;j<temp+10;j++)
        MOVS     R7,R5
??across_smile_8:
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        ADDS     R12,R5,#+10
        CMP      R7,R12
        BGE.W    ??across_smile_9
// 2185        { 
// 2186          if( right_black[j]<COLUMN-7)
        LDR.W    R12,??DataTable17_5
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        LDRB     R12,[R7, R12]
        CMP      R12,#+150
        BGE.W    ??across_smile_10
// 2187          {
// 2188           if( VideoImage2[j][ right_black[j]+1]>WHITE_BLACK_OT&&VideoImage2[j][ right_black[j]+2]>WHITE_BLACK_OT&&VideoImage2[j][ right_black[j]+3]>WHITE_BLACK_OT
// 2189                &&VideoImage2[j][ right_black[j]+4]>WHITE_BLACK_OT&&VideoImage2[j][ right_black[j]+5]>WHITE_BLACK_OT&&VideoImage2[j][ right_black[j]+6]>WHITE_BLACK_OT&&(Row_state[j]!=2&&Row_state[j]!=0))
        LDR.W    R12,??DataTable17_6
        LDRB     R12,[R12, #+0]
        LDR.W    LR,??DataTable17_7
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        MOVS     R8,#+157
        MLA      LR,R8,R7,LR
        LDR.W    R8,??DataTable17_5
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        LDRB     R8,[R7, R8]
        ADDS     LR,R8,LR
        LDRB     LR,[LR, #+1]
        CMP      R12,LR
        BCS.W    ??across_smile_10
        LDR.W    R12,??DataTable17_6
        LDRB     R12,[R12, #+0]
        LDR.W    LR,??DataTable17_7
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        MOVS     R8,#+157
        MLA      LR,R8,R7,LR
        LDR.W    R8,??DataTable17_5
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        LDRB     R8,[R7, R8]
        ADDS     LR,R8,LR
        LDRB     LR,[LR, #+2]
        CMP      R12,LR
        BCS.N    ??across_smile_10
        LDR.W    R12,??DataTable17_6
        LDRB     R12,[R12, #+0]
        LDR.W    LR,??DataTable17_7
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        MOVS     R8,#+157
        MLA      LR,R8,R7,LR
        LDR.W    R8,??DataTable17_5
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        LDRB     R8,[R7, R8]
        ADDS     LR,R8,LR
        LDRB     LR,[LR, #+3]
        CMP      R12,LR
        BCS.N    ??across_smile_10
        LDR.W    R12,??DataTable17_6
        LDRB     R12,[R12, #+0]
        LDR.W    LR,??DataTable17_7
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        MOVS     R8,#+157
        MLA      LR,R8,R7,LR
        LDR.W    R8,??DataTable17_5
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        LDRB     R8,[R7, R8]
        ADDS     LR,R8,LR
        LDRB     LR,[LR, #+4]
        CMP      R12,LR
        BCS.N    ??across_smile_10
        LDR.W    R12,??DataTable17_6
        LDRB     R12,[R12, #+0]
        LDR.W    LR,??DataTable17_7
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        MOVS     R8,#+157
        MLA      LR,R8,R7,LR
        LDR.W    R8,??DataTable17_5
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        LDRB     R8,[R7, R8]
        ADDS     LR,R8,LR
        LDRB     LR,[LR, #+5]
        CMP      R12,LR
        BCS.N    ??across_smile_10
        LDR.W    R12,??DataTable17_6
        LDRB     R12,[R12, #+0]
        LDR.W    LR,??DataTable17_7
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        MOVS     R8,#+157
        MLA      LR,R8,R7,LR
        LDR.W    R8,??DataTable17_5
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        LDRB     R8,[R7, R8]
        ADDS     LR,R8,LR
        LDRB     LR,[LR, #+6]
        CMP      R12,LR
        BCS.N    ??across_smile_10
        LDR.W    R12,??DataTable17_4
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        LDRB     R12,[R7, R12]
        CMP      R12,#+2
        BEQ.N    ??across_smile_10
        LDR.W    R12,??DataTable17_4
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        LDRB     R12,[R7, R12]
        CMP      R12,#+0
        BEQ.N    ??across_smile_10
// 2190           {
// 2191             turn_r_count++;
        ADDS     R0,R0,#+1
// 2192           }
// 2193          }
// 2194 
// 2195        }
??across_smile_10:
        ADDS     R7,R7,#+1
        B.N      ??across_smile_8
// 2196        
// 2197        if(turn_r_count>7&&center_white[control_top_whiteline]>MID&&center_white[control_top_whiteline]<121&&right_black[control_top_whiteline]-left_black[control_top_whiteline]<40)   
??across_smile_9:
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        CMP      R0,#+8
        BLT.N    ??across_smile_3
        LDR.W    R12,??DataTable17
        LDR.W    LR,??DataTable17_1
        LDRH     LR,[LR, #+0]
        LDRB     R12,[LR, R12]
        CMP      R12,#+79
        BLT.N    ??across_smile_3
        LDR.W    R12,??DataTable17
        LDR.W    LR,??DataTable17_1
        LDRH     LR,[LR, #+0]
        LDRB     R12,[LR, R12]
        CMP      R12,#+121
        BGE.N    ??across_smile_3
        LDR.W    R12,??DataTable17_5
        LDR.W    LR,??DataTable17_1
        LDRH     LR,[LR, #+0]
        LDRB     R12,[LR, R12]
        LDR.W    LR,??DataTable15
        LDR.W    R8,??DataTable17_1
        LDRH     R8,[R8, #+0]
        LDRB     LR,[R8, LR]
        SUBS     R12,R12,LR
        CMP      R12,#+40
        BGE.N    ??across_smile_3
// 2198        {    
// 2199             turn_r=1;
        MOVS     R12,#+1
        LDR.W    LR,??DataTable17_3
        STRB     R12,[LR, #+0]
// 2200             tage=temp;
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        MOVS     R2,R5
// 2201             break;
        B.N      ??across_smile_2
// 2202        }
// 2203            
// 2204            
// 2205          }
// 2206         
// 2207         
// 2208       }
// 2209 }
??across_smile_3:
        ADDS     R4,R4,#+1
        B.N      ??across_smile_1
// 2210  if(turn_l==1||turn_r==1)jianshu=1;
??across_smile_2:
        LDR.W    R12,??DataTable17_2
        LDRB     R12,[R12, #+0]
        LDR.W    LR,??DataTable17_3
        LDRB     LR,[LR, #+0]
        ORRS     R12,LR,R12
        UXTB     R12,R12          ;; ZeroExt  R12,R12,#+24,#+24
        CMP      R12,#+0
        BEQ.N    ??across_smile_11
        MOVS     R12,#+1
        LDR.W    LR,??DataTable20
        STRB     R12,[LR, #+0]
        B.N      ??across_smile_12
// 2211 else jianshu=0;     
??across_smile_11:
        MOVS     R12,#+0
        LDR.W    LR,??DataTable20
        STRB     R12,[LR, #+0]
// 2212 if( control_top_whiteline>=qing)
??across_smile_12:
        LDR.W    R12,??DataTable17_1
        LDRH     R12,[R12, #+0]
        LDR.W    LR,??DataTable20_1
        LDRB     LR,[LR, #+0]
        UXTH     LR,LR            ;; ZeroExt  LR,LR,#+16,#+16
        CMP      R12,LR
        BCC.N    ??across_smile_13
// 2213 {
// 2214     turn_l=0;
        MOVS     R12,#+0
        LDR.W    LR,??DataTable17_2
        STRB     R12,[LR, #+0]
// 2215     turn_r=0;
        MOVS     R12,#+0
        LDR.W    LR,??DataTable17_3
        STRB     R12,[LR, #+0]
// 2216 }
// 2217 
// 2218 if(turn_l==1)
??across_smile_13:
        LDR.W    R12,??DataTable17_2
        LDRB     R12,[R12, #+0]
        CMP      R12,#+0
        BEQ.W    ??across_smile_14
// 2219 {
// 2220   GPIO_SET(PORTB, 10,0);
        LDR.W    R12,??DataTable15_1
        LDR      R12,[R12, #+4]
        LDR      R12,[R12, #+0]
        BICS     R12,R12,#0x400
        LDR.W    LR,??DataTable15_1
        LDR      LR,[LR, #+4]
        STR      R12,[LR, #+0]
// 2221   if( tage!=bottom_whitebase-3&&tage!=0)
        LDR.W    R12,??DataTable14
        LDRB     R12,[R12, #+0]
        SUBS     R12,R12,#+3
        CMP      R2,R12
        BEQ.N    ??across_smile_15
        CMP      R2,#+0
        BEQ.N    ??across_smile_15
// 2222   {
// 2223    for(i =bottom_whitebase; i<=control_top_whiteline;i++)
        LDR.W    R12,??DataTable14
        LDRB     R12,[R12, #+0]
        MOV      R4,R12
??across_smile_16:
        LDR.W    R12,??DataTable17_1
        LDRH     R12,[R12, #+0]
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R12,R4
        BCC.W    ??across_smile_17
// 2224          {                                                                    
// 2225           record =huanjie+center_white[bottom_whitebase] + (i -bottom_whitebase)*(left_black[tage+3]-center_white[bottom_whitebase])/( tage+3-bottom_whitebase );  
        LDR.W    R12,??DataTable21
        LDRB     R12,[R12, #+0]
        LDR.W    LR,??DataTable17
        LDR.W    R8,??DataTable14
        LDRB     R8,[R8, #+0]
        LDRB     LR,[R8, LR]
        ADDS     R12,LR,R12
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        LDR.W    LR,??DataTable14
        LDRB     LR,[LR, #+0]
        SUBS     LR,R4,LR
        LDR.W    R8,??DataTable15
        ADDS     R8,R2,R8
        LDRB     R8,[R8, #+3]
        LDR.W    R9,??DataTable17
        LDR.W    R10,??DataTable14
        LDRB     R10,[R10, #+0]
        LDRB     R9,[R10, R9]
        SUBS     R8,R8,R9
        MUL      LR,R8,LR
        ADDS     R8,R2,#+3
        LDR.W    R9,??DataTable14
        LDRB     R9,[R9, #+0]
        SUBS     R8,R8,R9
        SDIV     LR,LR,R8
        ADDS     R12,LR,R12
        MOV      R1,R12
// 2226           if( record<=0)
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R1,#+1
        BGE.N    ??across_smile_18
// 2227               record=0;
        MOVS     R12,#+0
        MOV      R1,R12
        B.N      ??across_smile_19
// 2228 
// 2229           else if( record>=MID)
??across_smile_18:
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R1,#+78
        BLT.N    ??across_smile_19
// 2230               record=MID;
        MOVS     R12,#+78
        MOV      R1,R12
// 2231           center_white[i]=(uint8)record;
??across_smile_19:
        LDR.W    R12,??DataTable17
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        STRB     R1,[R4, R12]
// 2232           
// 2233          }	
        ADDS     R4,R4,#+1
        B.N      ??across_smile_16
// 2234  
// 2235     
// 2236   
// 2237 }
// 2238  
// 2239   else if( tage==0 ) 
??across_smile_15:
        CMP      R2,#+0
        BNE.W    ??across_smile_17
// 2240 {
// 2241   for(i =bottom_whitebase; i<=control_top_whiteline;i++)
        LDR.W    R12,??DataTable14
        LDRB     R12,[R12, #+0]
        MOV      R4,R12
??across_smile_20:
        LDR.W    R12,??DataTable17_1
        LDRH     R12,[R12, #+0]
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R12,R4
        BCC.N    ??across_smile_21
// 2242   {
// 2243     if(Row_state[i]==0||left_black[i]<=1)//可能有问题
        LDR.W    R12,??DataTable17_4
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        LDRB     R12,[R4, R12]
        CMP      R12,#+0
        BEQ.N    ??across_smile_22
        LDR.W    R12,??DataTable15
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        LDRB     R12,[R4, R12]
        CMP      R12,#+2
        BGE.N    ??across_smile_23
// 2244     {
// 2245       count_tt++;
??across_smile_22:
        ADDS     R3,R3,#+1
// 2246     }
// 2247   }
??across_smile_23:
        ADDS     R4,R4,#+1
        B.N      ??across_smile_20
// 2248   
// 2249   if(count_tt>=(bottom_whitebase+control_top_whiteline)/3)
??across_smile_21:
        LDR.W    R12,??DataTable14
        LDRB     R12,[R12, #+0]
        LDR.W    LR,??DataTable17_1
        LDRH     LR,[LR, #+0]
        ADDS     R12,LR,R12
        MOVS     LR,#+3
        SDIV     R12,R12,LR
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        CMP      R3,R12
        BLT.W    ??across_smile_17
// 2250   {
// 2251   for(i =bottom_whitebase; i<=control_top_whiteline;i++)  
        LDR.W    R12,??DataTable14
        LDRB     R12,[R12, #+0]
        MOV      R4,R12
??across_smile_24:
        LDR.W    R12,??DataTable17_1
        LDRH     R12,[R12, #+0]
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R12,R4
        BCC.W    ??across_smile_17
// 2252     center_white[i] =huanjie;
        LDR.W    R12,??DataTable21
        LDRB     R12,[R12, #+0]
        LDR.W    LR,??DataTable17
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        STRB     R12,[R4, LR]
        ADDS     R4,R4,#+1
        B.N      ??across_smile_24
// 2253  /* {
// 2254       center_white[i] = right_black[i] - (right_black[bottom_whitebase]-center_white[bottom_whitebase]);
// 2255         left_black[i] = center_white[i] - (right_black[bottom_whitebase]-center_white[bottom_whitebase]);
// 2256         if( center_white[i] < 1)
// 2257           center_white[i] = 0;
// 2258         if(left_black[i] < 1)
// 2259           left_black[i] = 0;
// 2260   }*/
// 2261   }
// 2262   else
// 2263   {
// 2264     
// 2265   }
// 2266                                                                                       
// 2267 }
// 2268 }
// 2269 
// 2270 else if(turn_r==1)
??across_smile_14:
        LDR.W    R12,??DataTable17_3
        LDRB     R12,[R12, #+0]
        CMP      R12,#+0
        BEQ.W    ??across_smile_25
// 2271 { 
// 2272   GPIO_SET(PORTB, 10,0);
        LDR.W    R12,??DataTable15_1
        LDR      R12,[R12, #+4]
        LDR      R12,[R12, #+0]
        BICS     R12,R12,#0x400
        LDR.W    LR,??DataTable15_1
        LDR      LR,[LR, #+4]
        STR      R12,[LR, #+0]
// 2273   if( tage!=bottom_whitebase-3&&tage!=0)
        LDR.W    R12,??DataTable14
        LDRB     R12,[R12, #+0]
        SUBS     R12,R12,#+3
        CMP      R2,R12
        BEQ.N    ??across_smile_26
        CMP      R2,#+0
        BEQ.N    ??across_smile_26
// 2274   {
// 2275 
// 2276 for(i =bottom_whitebase; i<=control_top_whiteline;i++)
        LDR.W    R12,??DataTable14
        LDRB     R12,[R12, #+0]
        MOV      R4,R12
??across_smile_27:
        LDR.W    R12,??DataTable17_1
        LDRH     R12,[R12, #+0]
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R12,R4
        BCC.W    ??across_smile_17
// 2277          {                                                                    
// 2278           record =-huanjie+ center_white[bottom_whitebase] + (i -bottom_whitebase)*(right_black[tage+3]-center_white[bottom_whitebase])/( tage+3-bottom_whitebase );  
        LDR.W    R12,??DataTable17
        LDR.W    LR,??DataTable14
        LDRB     LR,[LR, #+0]
        LDRB     R12,[LR, R12]
        LDR.W    LR,??DataTable21
        LDRB     LR,[LR, #+0]
        SUBS     R12,R12,LR
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        LDR.W    LR,??DataTable14
        LDRB     LR,[LR, #+0]
        SUBS     LR,R4,LR
        LDR.W    R8,??DataTable17_5
        ADDS     R8,R2,R8
        LDRB     R8,[R8, #+3]
        LDR.W    R9,??DataTable17
        LDR.W    R10,??DataTable14
        LDRB     R10,[R10, #+0]
        LDRB     R9,[R10, R9]
        SUBS     R8,R8,R9
        MUL      LR,R8,LR
        ADDS     R8,R2,#+3
        LDR.W    R9,??DataTable14
        LDRB     R9,[R9, #+0]
        SUBS     R8,R8,R9
        SDIV     LR,LR,R8
        ADDS     R12,LR,R12
        MOV      R1,R12
// 2279           if( record<=MID)
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R1,#+79
        BGE.N    ??across_smile_28
// 2280               record=MID;
        MOVS     R12,#+78
        MOV      R1,R12
        B.N      ??across_smile_29
// 2281 
// 2282           else if( record>=COLUMN-1)
??across_smile_28:
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        CMP      R1,#+156
        BLT.N    ??across_smile_29
// 2283               record=COLUMN-1;
        MOVS     R12,#+156
        MOV      R1,R12
// 2284           center_white[i]=(uint8)record;
??across_smile_29:
        LDR.W    R12,??DataTable17
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        STRB     R1,[R4, R12]
// 2285          }	
        ADDS     R4,R4,#+1
        B.N      ??across_smile_27
// 2286 
// 2287 
// 2288 
// 2289 }
// 2290 else if(tage==0)
??across_smile_26:
        CMP      R2,#+0
        BNE.N    ??across_smile_17
// 2291 {
// 2292   for(i =bottom_whitebase; i<=control_top_whiteline;i++)
        LDR.W    R12,??DataTable14
        LDRB     R12,[R12, #+0]
        MOV      R4,R12
??across_smile_30:
        LDR.W    R12,??DataTable17_1
        LDRH     R12,[R12, #+0]
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R12,R4
        BCC.N    ??across_smile_31
// 2293   {
// 2294     if(Row_state[i]==1||right_black[i]>=COLUMN-2)
        LDR.W    R12,??DataTable17_4
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        LDRB     R12,[R4, R12]
        CMP      R12,#+1
        BEQ.N    ??across_smile_32
        LDR.W    R12,??DataTable17_5
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        LDRB     R12,[R4, R12]
        CMP      R12,#+155
        BLT.N    ??across_smile_33
// 2295     {
// 2296       count_tt++;
??across_smile_32:
        ADDS     R3,R3,#+1
// 2297     }
// 2298   }
??across_smile_33:
        ADDS     R4,R4,#+1
        B.N      ??across_smile_30
// 2299   
// 2300   if(count_tt>=(bottom_whitebase+control_top_whiteline)/3)
??across_smile_31:
        LDR.W    R12,??DataTable14
        LDRB     R12,[R12, #+0]
        LDR.W    LR,??DataTable17_1
        LDRH     LR,[LR, #+0]
        ADDS     R12,LR,R12
        MOVS     LR,#+3
        SDIV     R12,R12,LR
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        CMP      R3,R12
        BLT.N    ??across_smile_17
// 2301   {
// 2302     for(i =bottom_whitebase; i<=control_top_whiteline;i++)
        LDR.W    R12,??DataTable14
        LDRB     R12,[R12, #+0]
        MOV      R4,R12
??across_smile_34:
        LDR.W    R12,??DataTable17_1
        LDRH     R12,[R12, #+0]
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R12,R4
        BCC.N    ??across_smile_17
// 2303      center_white[i] =COLUMN-huanjie;
        LDR.W    R12,??DataTable21
        LDRB     R12,[R12, #+0]
        RSBS     R12,R12,#+157
        LDR.W    LR,??DataTable17
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        STRB     R12,[R4, LR]
        ADDS     R4,R4,#+1
        B.N      ??across_smile_34
// 2304     /*{
// 2305         center_white[i] = left_black[i] + (center_white[bottom_whitebase]-left_black[bottom_whitebase]);
// 2306         right_black[i] = center_white[i] + (center_white[bottom_whitebase]-left_black[bottom_whitebase]);
// 2307         if( center_white[i] > COLUMN - 1)
// 2308           center_white[i] = COLUMN - 1;
// 2309         if(right_black[i] > COLUMN - 1)
// 2310           right_black[i] = COLUMN - 1;
// 2311     }*/
// 2312   }
// 2313   else
// 2314   {
// 2315     
// 2316   }
// 2317   
// 2318   }
// 2319 }
// 2320 
// 2321 else
// 2322 {
// 2323     GPIO_SET(PORTB, 10,1);
??across_smile_25:
        LDR.W    R12,??DataTable15_1
        LDR      R12,[R12, #+4]
        LDR      R12,[R12, #+0]
        ORRS     R12,R12,#0x400
        LDR.W    LR,??DataTable15_1
        LDR      LR,[LR, #+4]
        STR      R12,[LR, #+0]
// 2324 }
// 2325 
// 2326 }
??across_smile_17:
        POP      {R4-R10,PC}      ;; return
// 2327  
// 2328 //--------------------------------------------------------------------------------------------------
// 2329 
// 2330 
// 2331 
// 2332 //-------------------------------------------------------------------------------------------------
// 2333 
// 2334  
// 2335 //--------------------------------------------------------------------------------------------------
// 2336 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2337 void GetPower()
// 2338 {
GetPower:
        PUSH     {R7,LR}
// 2339        
// 2340   adc_start(ADC0, AD14, ADC_10bit );
        MOVS     R2,#+2
        MOVS     R1,#+14
        MOVS     R0,#+0
        BL       adc_start
// 2341         
// 2342   V=ad_ave(ADC0, AD14, ADC_10bit,10 )*9.43/1024.0;
        MOVS     R3,#+10
        MOVS     R2,#+2
        MOVS     R1,#+14
        MOVS     R0,#+0
        BL       ad_ave
        BL       __aeabi_f2d
        LDR.W    R2,??DataTable24  ;; 0xf5c28f5c
        LDR.W    R3,??DataTable24_1  ;; 0x4022dc28
        BL       __aeabi_dmul
        MOVS     R2,#+0
        LDR.W    R3,??DataTable24_2  ;; 0x40900000
        BL       __aeabi_ddiv
        BL       __aeabi_d2f
        LDR.W    R1,??DataTable25
        STR      R0,[R1, #+0]
// 2343   
// 2344   adc_stop(ADC0);
        MOVS     R0,#+0
        BL       adc_stop
// 2345 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14:
        DC32     bottom_whitebase
// 2346 /*------------------------------------------------------------------------------
// 2347                                     AD采样，均值                                                     
// 2348 ------------------------------------------------------------------------------*/
// 2349 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 2350 void GetADValue(void) //查询方式,8位精度，右对齐，数据存放在ATDDRLx
// 2351 {  uint8 i=0; 
GetADValue:
        PUSH     {R4,LR}
        MOVS     R4,#+0
// 2352   adc_start(ADC1, AD10, ADC_10bit );
        MOVS     R2,#+2
        MOVS     R1,#+10
        MOVS     R0,#+1
        BL       adc_start
// 2353   
// 2354   AD_AngleData[0] = ad_ave(ADC1, AD10, ADC_10bit,30 );     //结果
        MOVS     R3,#+30
        MOVS     R2,#+2
        MOVS     R1,#+10
        MOVS     R0,#+1
        BL       ad_ave
        LDR.W    R1,??DataTable24_3
        STR      R0,[R1, #+0]
// 2355   
// 2356   adc_stop(ADC1);
        MOVS     R0,#+1
        BL       adc_stop
// 2357   
// 2358    for(i = 50; i > 0; i--)
        MOVS     R0,#+50
        MOVS     R4,R0
??GetADValue_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??GetADValue_1
// 2359         {
// 2360             asm("nop") ;
        nop
// 2361         }
        SUBS     R4,R4,#+1
        B.N      ??GetADValue_0
// 2362   
// 2363   
// 2364   adc_start(ADC1, AD11, ADC_10bit );
??GetADValue_1:
        MOVS     R2,#+2
        MOVS     R1,#+11
        MOVS     R0,#+1
        BL       adc_start
// 2365   
// 2366   AD_AngleData[1] = ad_ave(ADC1, AD11, ADC_10bit,50 );
        MOVS     R3,#+50
        MOVS     R2,#+2
        MOVS     R1,#+11
        MOVS     R0,#+1
        BL       ad_ave
        LDR.W    R1,??DataTable24_3
        STR      R0,[R1, #+4]
// 2367    adc_stop(ADC1);
        MOVS     R0,#+1
        BL       adc_stop
// 2368               
// 2369 }
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15:
        DC32     left_black

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_1:
        DC32     GPIOx
// 2370 /*------------------------------------------------------------------------------
// 2371                                          角度环控制                                                  
// 2372 ------------------------------------------------------------------------------*/
// 2373 
// 2374 
// 2375 /*2.计算角度*///0626改

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// 2376  float tmp=0;
tmp:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// 2377  float temp1[3]={0};
temp1:
        DS8 12

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// 2378  float temp2[3]={0};
temp2:
        DS8 12

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// 2379  float last_acce_angle=0;
last_acce_angle:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// 2380  float Angle[5]={0};
Angle:
        DS8 20

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// 2381  float  AcceData[3]={0};
AcceData:
        DS8 12
// 2382 //uint8 Rg=15; 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// 2383 float Rgr;
Rgr:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// 2384 float pre_Lastgyro=0,Lastgyro=0;                     //用于陀螺仪中值滤波的递推赋值
pre_Lastgyro:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
Lastgyro:
        DS8 4
// 2385 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2386 void GetAngle() 
// 2387 {         
GetAngle:
        PUSH     {R3-R11,LR}
// 2388           uint16 i=0;
        MOVS     R4,#+0
// 2389           float tempa,tempb,tempc,max,min;             //用于陀螺仪的均值滤波
// 2390           acce = AD_AngleData[1]*3.22265625;		                        //角度校正  //静态值 360    352
        LDR.W    R0,??DataTable24_3
        LDR      R0,[R0, #+4]
        BL       __aeabi_f2d
        MOVS     R2,#+0
        LDR.W    R3,??DataTable24_4  ;; 0x4009c800
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        LDR.W    R1,??DataTable24_5
        STR      R0,[R1, #+0]
// 2391           
// 2392           acce_offset=acce_static-acce;
        LDR.W    R0,??DataTable24_6
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable24_5
        LDR      R1,[R1, #+0]
        BL       __aeabi_fsub
        LDR.W    R1,??DataTable24_7
        STR      R0,[R1, #+0]
// 2393           acce_G = acce_offset/800;                                     //这里得到角度的正弦值
        LDR.W    R0,??DataTable24_7
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable24_8  ;; 0x44480000
        BL       __aeabi_fdiv
        LDR.W    R1,??DataTable24_9
        STR      R0,[R1, #+0]
// 2394           
// 2395            
// 2396           if(acce_G >1 ) acce_G = 1;                                    //算出的值可能大于1或小于-1，是错的，所以限下幅            
        LDR.W    R0,??DataTable24_9
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable24_10  ;; 0x3f800001
        BL       __aeabi_cfrcmple
        BHI.N    ??GetAngle_0
        MOVS     R0,#+1065353216
        LDR.W    R1,??DataTable24_9
        STR      R0,[R1, #+0]
// 2397           if(acce_G <-1) acce_G = -1;
??GetAngle_0:
        LDR.W    R0,??DataTable24_9
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable24_11  ;; 0xbf800000
        BL       __aeabi_cfcmple
        BCS.N    ??GetAngle_1
        LDR.W    R0,??DataTable24_11  ;; 0xbf800000
        LDR.W    R1,??DataTable24_9
        STR      R0,[R1, #+0]
// 2398                      
// 2399           acce_angle = 180/3.1416*asin(acce_G);                         //asin求反正弦，得出的单位是弧度，*180/pi得到角度值                                
??GetAngle_1:
        LDR.W    R0,??DataTable24_9
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        BL       asin
        LDR.W    R2,??DataTable24_12  ;; 0xb6774c14
        LDR.W    R3,??DataTable24_13  ;; 0x404ca5d7
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        LDR.W    R1,??DataTable24_14
        STR      R0,[R1, #+0]
// 2400      
// 2401           /*temp1[0]=temp1[1];
// 2402           temp1[1]=temp1[2];
// 2403           temp1[2]=acce_angle;*/
// 2404  
// 2405           //acce_angle=(last_acce_angle+acce_angle)/2.0;//考虑增大均值范围
// 2406           //last_acce_angle=acce_angle;
// 2407           
// 2408            for(i=2;i>=1;i--)                                                   //历史数据的处理
        MOVS     R0,#+2
        MOVS     R4,R0
??GetAngle_2:
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+0
        BEQ.N    ??GetAngle_3
// 2409             {   
// 2410                     AcceData[i] = AcceData[i-1];
        LDR.W    R0,??DataTable24_15
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        ADDS     R0,R0,R4, LSL #+2
        LDR      R0,[R0, #-4]
        LDR.W    R1,??DataTable24_15
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        STR      R0,[R1, R4, LSL #+2]
// 2411             }	
        SUBS     R4,R4,#+1
        B.N      ??GetAngle_2
// 2412           AcceData[0] = acce_angle;
??GetAngle_3:
        LDR.W    R0,??DataTable24_14
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable24_15
        STR      R0,[R1, #+0]
// 2413           
// 2414           acce_angle= (AcceData[ 0 ]+AcceData[ 1 ])/2.0; 
        LDR.W    R0,??DataTable24_15
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable24_15
        LDR      R0,[R0, #+4]
        BL       __aeabi_fadd
        BL       __aeabi_f2d
        MOVS     R2,#+0
        MOVS     R3,#+1073741824
        BL       __aeabi_ddiv
        BL       __aeabi_d2f
        LDR.W    R1,??DataTable24_14
        STR      R0,[R1, #+0]
// 2415        
// 2416 	  gyro =AD_AngleData[0]*3.22265625;
        LDR.W    R0,??DataTable24_3
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        MOVS     R2,#+0
        LDR.W    R3,??DataTable24_4  ;; 0x4009c800
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        LDR.W    R1,??DataTable24_16
        STR      R0,[R1, #+0]
// 2417           
// 2418           
// 2419           tempa=pre_Lastgyro;
        LDR.W    R0,??DataTable24_17
        LDR      R0,[R0, #+0]
        MOV      R9,R0
// 2420           tempb=Lastgyro;
        LDR.W    R0,??DataTable24_18
        LDR      R0,[R0, #+0]
        MOV      R8,R0
// 2421           tempc=gyro;  
        LDR.W    R0,??DataTable24_16
        LDR      R0,[R0, #+0]
        MOVS     R5,R0
// 2422           max = tempa > tempb ? tempa:tempb;//??????
        MOV      R0,R8
        MOV      R1,R9
        BL       __aeabi_cfcmple
        BCS.N    ??GetAngle_4
        MOV      R6,R9
        B.N      ??GetAngle_5
??GetAngle_4:
        MOV      R6,R8
// 2423           max = max > tempc ? max:tempc;
??GetAngle_5:
        MOVS     R0,R5
        MOVS     R1,R6
        BL       __aeabi_cfcmple
        BCC.N    ??GetAngle_6
??GetAngle_7:
        MOVS     R6,R5
// 2424           min = tempa < tempb ? tempa:tempb;
??GetAngle_6:
        MOV      R0,R9
        MOV      R1,R8
        BL       __aeabi_cfcmple
        BCS.N    ??GetAngle_8
        MOV      R7,R9
        B.N      ??GetAngle_9
??GetAngle_8:
        MOV      R7,R8
// 2425           min = min < tempc ? min:tempc;
??GetAngle_9:
        MOVS     R0,R7
        MOVS     R1,R5
        BL       __aeabi_cfcmple
        BCC.N    ??GetAngle_10
??GetAngle_11:
        MOVS     R7,R5
// 2426           if(tempa > min && tempa < max)  gyro = tempa;
??GetAngle_10:
        MOVS     R0,R7
        MOV      R1,R9
        BL       __aeabi_cfcmple
        BCS.N    ??GetAngle_12
        MOV      R0,R9
        MOVS     R1,R6
        BL       __aeabi_cfcmple
        BCS.N    ??GetAngle_12
        LDR.W    R0,??DataTable24_16
        STR      R9,[R0, #+0]
// 2427           if(tempb > min  && tempb < max )  gyro = tempb;
??GetAngle_12:
        MOVS     R0,R7
        MOV      R1,R8
        BL       __aeabi_cfcmple
        BCS.N    ??GetAngle_13
        MOV      R0,R8
        MOVS     R1,R6
        BL       __aeabi_cfcmple
        BCS.N    ??GetAngle_13
        LDR.W    R0,??DataTable24_16
        STR      R8,[R0, #+0]
// 2428           if(tempc > min  &&  tempc < max)  gyro = tempc;  
??GetAngle_13:
        MOVS     R0,R7
        MOVS     R1,R5
        BL       __aeabi_cfcmple
        BCS.N    ??GetAngle_14
        MOVS     R0,R5
        MOVS     R1,R6
        BL       __aeabi_cfcmple
        BCS.N    ??GetAngle_14
        LDR.W    R0,??DataTable24_16
        STR      R5,[R0, #+0]
// 2429           
// 2430           pre_Lastgyro = Lastgyro;                                //角速度递推赋值
??GetAngle_14:
        LDR.W    R0,??DataTable24_18
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable24_17
        STR      R0,[R1, #+0]
// 2431           Lastgyro = gyro;/**/
        LDR.W    R0,??DataTable24_16
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable24_18
        STR      R0,[R1, #+0]
// 2432           gyro_offset= gyro-GYRO_STATIC;                             //-GYRO_STATIC;
        LDR.W    R0,??DataTable24_16
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable24_19
        LDR      R1,[R1, #+0]
        BL       __aeabi_fsub
        LDR.W    R1,??DataTable24_20
        STR      R0,[R1, #+0]
// 2433           w= gyro_offset/3.417;     //0.67mv/g                                    //角速度值-静态值    w= ( gyro - GYRO_OFF )/6.7;  
        LDR.W    R0,??DataTable24_20
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        LDR.W    R2,??DataTable24_21  ;; 0x189374bc
        LDR.W    R3,??DataTable24_22  ;; 0x400b5604
        BL       __aeabi_ddiv
        BL       __aeabi_d2f
        LDR.W    R1,??DataTable24_23
        STR      R0,[R1, #+0]
// 2434      
// 2435           
// 2436          
// 2437           
// 2438          
// 2439             ////0.9////////////////////////////////////////////////////////////////////////
// 2440            g_nCarAngle+= ( ft*w +( acce_angle - g_nCarAngle ) )*0.00125;//0.9偏大  
        LDR.W    R0,??DataTable26
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        MOV      R10,R0
        MOV      R11,R1
        LDR.W    R0,??DataTable24_24
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable24_23
        LDR      R0,[R0, #+0]
        BL       __aeabi_fmul
        STR      R0,[SP, #+0]
        LDR.W    R0,??DataTable24_14
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable26
        LDR      R1,[R1, #+0]
        BL       __aeabi_fsub
        LDR      R1,[SP, #+0]
        BL       __aeabi_fadd
        BL       __aeabi_f2d
        LDR.W    R2,??DataTable25_1  ;; 0x47ae147b
        LDR.W    R3,??DataTable25_2  ;; 0x3f547ae1
        BL       __aeabi_dmul
        MOV      R2,R10
        MOV      R3,R11
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        LDR.W    R1,??DataTable26
        STR      R0,[R1, #+0]
// 2441            
// 2442          /*  for(i=4;i>=1;i--)                                                 //历史数据的处理
// 2443           {   
// 2444              Angle[i] = Angle[i-1];
// 2445           }
// 2446              Angle[0] = g_nCarAngle;
// 2447           
// 2448            g_nCarAngle=(Angle[0]+Angle[1])/2;*//* */                 
// 2449 }  
        POP      {R0,R4-R11,PC}   ;; return
// 2450 
// 2451     
// 2452 /*3.角度控制*/
// 2453 
// 2454   
// 2455 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2456 void  CarAngleAdjust()                                          //要调整输出值与周期之间的比例
// 2457 {last_anglePD = anglePD;
CarAngleAdjust:
        PUSH     {R4,LR}
        LDR.W    R0,??DataTable28
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable25_3
        STRH     R0,[R1, #+0]
// 2458 
// 2459 if(turn_l==1||turn_r==1)
        LDR.N    R0,??DataTable17_2
        LDRB     R0,[R0, #+0]
        LDR.N    R1,??DataTable17_3
        LDRB     R1,[R1, #+0]
        ORRS     R0,R1,R0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??CarAngleAdjust_0
// 2460 {
// 2461   angle_kp_set=angle_kp_across;
        LDR.W    R0,??DataTable25_4
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable25_5
        STR      R0,[R1, #+0]
// 2462   angle_kd_set=angle_kd_across;
        LDR.W    R0,??DataTable25_6
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable25_7
        STR      R0,[R1, #+0]
        B.N      ??CarAngleAdjust_1
// 2463 }
// 2464 
// 2465 else
// 2466 {
// 2467   angle_kp_set=angle_kp;
??CarAngleAdjust_0:
        LDR.W    R0,??DataTable25_8
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable25_5
        STR      R0,[R1, #+0]
// 2468   angle_kd_set=angle_kd;
        LDR.W    R0,??DataTable26_1
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable25_7
        STR      R0,[R1, #+0]
// 2469 }
// 2470   anglePD =(int16)(g_nCarAngle* angle_kp_set  +  angle_kd_set*w);   
??CarAngleAdjust_1:
        LDR.W    R0,??DataTable26
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable25_5
        LDR      R0,[R0, #+0]
        BL       __aeabi_fmul
        MOVS     R4,R0
        LDR.W    R0,??DataTable25_7
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable24_23
        LDR      R0,[R0, #+0]
        BL       __aeabi_fmul
        MOVS     R1,R4
        BL       __aeabi_fadd
        BL       __aeabi_f2iz
        LDR.W    R1,??DataTable28
        STRH     R0,[R1, #+0]
// 2471  // anglePD = (int16)(0.8*last_anglePD + anglePD*0.2);               //平滑输出，意义不太大吧                                                                                        
// 2472 }
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17:
        DC32     center_white

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_1:
        DC32     control_top_whiteline

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_2:
        DC32     turn_l

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_3:
        DC32     turn_r

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_4:
        DC32     Row_state

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_5:
        DC32     right_black

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_6:
        DC32     WHITE_BLACK_OT

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_7:
        DC32     VideoImage2
// 2473 
// 2474 
// 2475 /*------------------------------------------------------------------------------
// 2476                                         速度闭环控制                                                 
// 2477 ------------------------------------------------------------------------------*/ 
// 2478 
// 2479 /*速度闭环控制*/                                       
// 2480 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2481 void  SpeedControl(void)
// 2482 {
SpeedControl:
        PUSH     {R7,LR}
// 2483           g_nRightCount =FTM1_CNT;
        LDR.W    R0,??DataTable27  ;; 0x40039004
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable27_1
        STRH     R0,[R1, #+0]
// 2484           g_nLeftCount = ~FTM2_CNT+1;
        LDR.W    R0,??DataTable27_2  ;; 0x400b8004
        LDR      R0,[R0, #+0]
        MVNS     R0,R0
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable27_3
        STRH     R0,[R1, #+0]
// 2485           FTM1_CNT=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable27  ;; 0x40039004
        STR      R0,[R1, #+0]
// 2486           FTM2_CNT=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable27_2  ;; 0x400b8004
        STR      R0,[R1, #+0]
// 2487   
// 2488           LeftRealSpeed =g_nLeftCount*0.06;//+0.25*LeftRealSpeed;	0.08    //比例系数0.062属于经验,对应于200p     p.2125
        LDR.W    R0,??DataTable27_3
        LDRSH    R0,[R0, #+0]
        BL       __aeabi_i2d
        LDR.W    R2,??DataTable27_4  ;; 0xeb851eb8
        LDR.W    R3,??DataTable27_5  ;; 0x3faeb851
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        LDR.W    R1,??DataTable27_6
        STR      R0,[R1, #+0]
// 2489           RightRealSpeed=g_nRightCount*0.06;//+0.25*RightRealSpeed;      //比例系数0.025属于经验,对应于500p  
        LDR.W    R0,??DataTable27_1
        LDRSH    R0,[R0, #+0]
        BL       __aeabi_i2d
        LDR.W    R2,??DataTable27_4  ;; 0xeb851eb8
        LDR.W    R3,??DataTable27_5  ;; 0x3faeb851
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        LDR.W    R1,??DataTable27_7
        STR      R0,[R1, #+0]
// 2490                         	                             
// 2491           //RealSpeed=( LeftRealSpeed+ RightRealSpeed )/2 ;//
// 2492           RealSpeed=(RightRealSpeed+LeftRealSpeed)/2 ;//0624
        LDR.W    R0,??DataTable27_7
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable27_6
        LDR      R0,[R0, #+0]
        BL       __aeabi_fadd
        MOVS     R1,#+1073741824
        BL       __aeabi_fdiv
        LDR.W    R1,??DataTable27_8
        STR      R0,[R1, #+0]
// 2493           Speed_error = Speed-RealSpeed ;
        LDR.W    R0,??DataTable27_9
        LDRH     R0,[R0, #+0]
        BL       __aeabi_ui2f
        LDR.W    R1,??DataTable27_8
        LDR      R1,[R1, #+0]
        BL       __aeabi_fsub
        LDR.W    R1,??DataTable27_10
        STR      R0,[R1, #+0]
// 2494           
// 2495           if(Speed_error>Speed_limit)
        LDR.W    R0,??DataTable27_11
        LDRH     R0,[R0, #+0]
        BL       __aeabi_ui2f
        LDR.W    R1,??DataTable27_10
        LDR      R1,[R1, #+0]
        BL       __aeabi_cfcmple
        BCS.N    ??SpeedControl_0
// 2496                     Speed_error = Speed_limit;
        LDR.W    R0,??DataTable27_11
        LDRH     R0,[R0, #+0]
        BL       __aeabi_ui2f
        LDR.W    R1,??DataTable27_10
        STR      R0,[R1, #+0]
// 2497           if(Speed_error<-Speed_limit)
??SpeedControl_0:
        LDR.W    R0,??DataTable27_11
        LDRH     R0,[R0, #+0]
        RSBS     R0,R0,#+0
        BL       __aeabi_i2f
        MOVS     R1,R0
        LDR.W    R0,??DataTable27_10
        LDR      R0,[R0, #+0]
        BL       __aeabi_cfcmple
        BCS.N    ??SpeedControl_1
// 2498                     Speed_error = -Speed_limit;      
        LDR.W    R0,??DataTable27_11
        LDRH     R0,[R0, #+0]
        RSBS     R0,R0,#+0
        BL       __aeabi_i2f
        LDR.W    R1,??DataTable27_10
        STR      R0,[R1, #+0]
// 2499          
// 2500  //P控制//  
// 2501           
// 2502           motor_P = speed_kp*Speed_error;        
??SpeedControl_1:
        LDR.W    R0,??DataTable27_12
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable27_10
        LDR      R0,[R0, #+0]
        BL       __aeabi_fmul
        LDR.W    R1,??DataTable27_13
        STR      R0,[R1, #+0]
// 2503          
// 2504 //I控制
// 2505            if(motor_I<=500&&motor_I>=-500)
        LDR.W    R0,??DataTable27_14
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable27_15  ;; 0x43fa0001
        BL       __aeabi_cfcmple
        BCS.N    ??SpeedControl_2
        LDR.W    R0,??DataTable27_14
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable27_16  ;; 0xc3fa0000
        BL       __aeabi_cfrcmple
        BHI.N    ??SpeedControl_2
// 2506           motor_I +=  speed_ki*Speed_error;
        LDR.W    R0,??DataTable28_1
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable27_10
        LDR      R0,[R0, #+0]
        BL       __aeabi_fmul
        LDR.W    R1,??DataTable27_14
        LDR      R1,[R1, #+0]
        BL       __aeabi_fadd
        LDR.W    R1,??DataTable27_14
        STR      R0,[R1, #+0]
// 2507             
// 2508           SpeedPIDold=SpeedPID;
??SpeedControl_2:
        LDR.W    R0,??DataTable28_2
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable28_3
        STR      R0,[R1, #+0]
// 2509           SpeedPID = motor_P + motor_I;                
        LDR.W    R0,??DataTable27_13
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable27_14
        LDR      R0,[R0, #+0]
        BL       __aeabi_fadd
        LDR.W    R1,??DataTable28_2
        STR      R0,[R1, #+0]
// 2510 }
        POP      {R0,PC}          ;; return
// 2511 
// 2512  /*float LeftSpeed_filter=0,LeftSpeed_filter_last=0,  RightSpeed_filter=0,RightSpeed_filter_last=0 ;
// 2513 bool jifenflag=0;
// 2514 void  SpeedControl(void)
// 2515 {         
// 2516           bool jifenflag=0;
// 2517           g_nRightCount =FTM1_CNT;
// 2518           g_nLeftCount = ~FTM2_CNT+1;
// 2519           FTM1_CNT=0;
// 2520           FTM2_CNT=0;
// 2521           LeftSpeed_filter =LeftSpeed_filter_last;
// 2522           RightSpeed_filter  =RightSpeed_filter_last ;
// 2523           
// 2524           LeftSpeed_filter*=0.2;//0.35 	           
// 2525           LeftSpeed_filter+=g_nLeftCount*0.06;// 0.05;      //比例系数0.025属于经验,对应于500p
// 2526 
// 2527 
// 2528 
// 2529           RightSpeed_filter*=0.2;	// 0.35;  
// 2530           RightSpeed_filter+= g_nRightCount*0.06;//;0.05          
// 2531                  
// 2532   
// 2533          //LeftRealSpeed =g_nLeftCount*0.06;//+0.25*LeftRealSpeed;	0.08    //比例系数0.062属于经验,对应于200p     p.2125
// 2534           //RightRealSpeed=g_nRightCount*0.06;//+0.25*RightRealSpeed;      //比例系数0.025属于经验,对应于500p  
// 2535                         	                             
// 2536           RealSpeed=(  RightSpeed_filter+LeftSpeed_filter )/2 ;//
// 2537           
// 2538           LeftSpeed_filter =0;
// 2539           RightSpeed_filter =0;
// 2540           
// 2541           LeftSpeed_filter_last=LeftSpeed_filter;
// 2542           RightSpeed_filter_last = RightSpeed_filter;
// 2543           
// 2544           Speed_error = Speed_set-RealSpeed ;
// 2545           
// 2546           if(Speed_error>50)
// 2547                     Speed_error = 50;
// 2548           if(Speed_error<-50)
// 2549                     Speed_error = -50; 
// 2550           
// 2551           //ar_speed_kp();
// 2552           
// 2553           
// 2554            if(Speed_error<=10&&Speed_error>=-10)  //之前为10
// 2555          {
// 2556                     jifenflag = 1;
// 2557          }
// 2558          else 
// 2559          {
// 2560                     jifenflag =0;
// 2561          }
// 2562          if(jifenflag==1)
// 2563          {
// 2564              motor_I +=  speed_ki*Speed_error;
// 2565          }
// 2566           
// 2567           if(motor_I>500)    
// 2568           {
// 2569             motor_I=500;
// 2570           }
// 2571           
// 2572            if(motor_I<-500)    
// 2573           {
// 2574             motor_I=-500;
// 2575           }
// 2576          
// 2577  //P控制//  
// 2578           
// 2579           motor_P = speed_kp*Speed_error;        
// 2580          
// 2581 //I控制
// 2582            //if(motor_I<=500&&motor_I>=-500)
// 2583           //motor_I +=  speed_ki*Speed_error;
// 2584           
// 2585          
// 2586           
// 2587           SpeedPIDold=SpeedPID;
// 2588           SpeedPID = motor_P + motor_I;     
// 2589           
// 2590           
// 2591            if(SpeedPID>2500) 
// 2592                     SpeedPID = 2500;
// 2593           if(SpeedPID<-2500)
// 2594                     SpeedPID = -2500;   
// 2595 }*/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2596 void   SpeedControlOut()
// 2597 {
SpeedControlOut:
        PUSH     {R4,LR}
// 2598           float temp;
// 2599           temp = SpeedPID - SpeedPIDold;
        LDR.W    R0,??DataTable28_2
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable28_3
        LDR      R1,[R1, #+0]
        BL       __aeabi_fsub
        MOVS     R4,R0
// 2600           SpeedPIDout = (int16)(temp*(sumbe2 + 1)/50+ SpeedPIDold) ;//+  speeddiff*0;
        LDR.W    R0,??DataTable28_4
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        BL       __aeabi_i2f
        MOVS     R1,R4
        BL       __aeabi_fmul
        LDR.W    R1,??DataTable28_5  ;; 0x42480000
        BL       __aeabi_fdiv
        LDR.W    R1,??DataTable28_3
        LDR      R1,[R1, #+0]
        BL       __aeabi_fadd
        BL       __aeabi_f2iz
        LDR.W    R1,??DataTable28_6
        STRH     R0,[R1, #+0]
// 2601 }
        POP      {R4,PC}          ;; return
// 2602 
// 2603 /*------------------------------------------------------------------------------
// 2604                                   电机输出                                                    
// 2605                           ( 角度+速度+方向=pwm输出)                                          
// 2606 ------------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2607 void CarControlOut()
// 2608 {        
CarControlOut:
        PUSH     {R4,LR}
// 2609       if(jianshu==1)
        LDR.N    R0,??DataTable20
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??CarControlOut_0
// 2610         {
// 2611       /*   if( RealSpeed>Speed_set+20)   close=0.1;          
// 2612         else  if( RealSpeed>Speed_set+10)  close=0.15;
// 2613          else  if( RealSpeed>Speed_set-5)      close=0.2;
// 2614             else  if( RealSpeed>Speed_set-15)   close=0.25;
// 2615               else  if( RealSpeed>Speed_set-30)   close=0.3;
// 2616                  else     close=0.35;    
// 2617            */
// 2618           close=0.1;
        LDR.W    R0,??DataTable28_7  ;; 0x3dcccccd
        LDR.W    R1,??DataTable28_8
        STR      R0,[R1, #+0]
        B.N      ??CarControlOut_1
// 2619          }
// 2620          
// 2621          else
// 2622          {
// 2623             close=1.0;
??CarControlOut_0:
        MOVS     R0,#+1065353216
        LDR.W    R1,??DataTable28_8
        STR      R0,[R1, #+0]
// 2624          }
// 2625       
// 2626          if(lcd_debug==1||start1==0) angleout = 0;
??CarControlOut_1:
        LDR.W    R0,??DataTable28_9
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable28_10
        LDRB     R1,[R1, #+0]
        EORS     R1,R1,#0x1
        ORRS     R0,R1,R0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??CarControlOut_2
        MOVS     R0,#+0
        LDR.W    R1,??DataTable28_11
        STRH     R0,[R1, #+0]
// 2627          RightSpeedPwm =(int16)(anglePD-SpeedPIDout*close-angleout);        //150  -100
??CarControlOut_2:
        LDR.W    R0,??DataTable28
        LDRSH    R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R4,R0
        LDR.W    R0,??DataTable28_6
        LDRSH    R0,[R0, #+0]
        BL       __aeabi_i2f
        LDR.W    R1,??DataTable28_8
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        MOVS     R1,R0
        MOVS     R0,R4
        BL       __aeabi_fsub
        MOVS     R4,R0
        LDR.W    R0,??DataTable28_11
        LDRSH    R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R1,R0
        MOVS     R0,R4
        BL       __aeabi_fsub
        BL       __aeabi_f2iz
        LDR.W    R1,??DataTable28_12
        STRH     R0,[R1, #+0]
// 2628          LeftSpeedPwm = (int16)(anglePD-SpeedPIDout*close+angleout)+summ;
        LDR.W    R0,??DataTable28
        LDRSH    R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R4,R0
        LDR.W    R0,??DataTable28_6
        LDRSH    R0,[R0, #+0]
        BL       __aeabi_i2f
        LDR.W    R1,??DataTable28_8
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        MOVS     R1,R0
        MOVS     R0,R4
        BL       __aeabi_fsub
        MOVS     R4,R0
        LDR.W    R0,??DataTable28_11
        LDRSH    R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R1,R4
        BL       __aeabi_fadd
        BL       __aeabi_f2iz
        LDR.W    R1,??DataTable28_13
        LDRB     R1,[R1, #+0]
        ADDS     R0,R0,R1
        LDR.W    R1,??DataTable28_14
        STRH     R0,[R1, #+0]
// 2629           
// 2630           if( ting==1||ting_check_stop==1)
        LDR.W    R0,??DataTable28_15
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable28_16
        LDRB     R1,[R1, #+0]
        ORRS     R0,R1,R0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??CarControlOut_3
// 2631           {
// 2632        
// 2633             RightSpeedPwm = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable28_12
        STRH     R0,[R1, #+0]
// 2634             LeftSpeedPwm  = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable28_14
        STRH     R0,[R1, #+0]
// 2635           }
// 2636 
// 2637           if(RightSpeedPwm>2500)  RightSpeedPwm = 2500;
??CarControlOut_3:
        LDR.W    R0,??DataTable28_12
        LDRSH    R0,[R0, #+0]
        MOVW     R1,#+2501
        CMP      R0,R1
        BLT.N    ??CarControlOut_4
        MOVW     R0,#+2500
        LDR.W    R1,??DataTable28_12
        STRH     R0,[R1, #+0]
// 2638           if(RightSpeedPwm<-2500)  RightSpeedPwm = -2500 ;
??CarControlOut_4:
        LDR.W    R0,??DataTable28_12
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable28_17  ;; 0xfffff63c
        CMP      R0,R1
        BGE.N    ??CarControlOut_5
        LDR.W    R0,??DataTable28_17  ;; 0xfffff63c
        LDR.W    R1,??DataTable28_12
        STRH     R0,[R1, #+0]
// 2639           if(LeftSpeedPwm>2500)   LeftSpeedPwm =2500;
??CarControlOut_5:
        LDR.W    R0,??DataTable28_14
        LDRSH    R0,[R0, #+0]
        MOVW     R1,#+2501
        CMP      R0,R1
        BLT.N    ??CarControlOut_6
        MOVW     R0,#+2500
        LDR.W    R1,??DataTable28_14
        STRH     R0,[R1, #+0]
// 2640           if(LeftSpeedPwm<-2500)  LeftSpeedPwm = -2500;
??CarControlOut_6:
        LDR.W    R0,??DataTable28_14
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable28_17  ;; 0xfffff63c
        CMP      R0,R1
        BGE.N    ??CarControlOut_7
        LDR.W    R0,??DataTable28_17  ;; 0xfffff63c
        LDR.W    R1,??DataTable28_14
        STRH     R0,[R1, #+0]
// 2641       
// 2642           if(  RightSpeedPwm> 0 )
??CarControlOut_7:
        LDR.W    R0,??DataTable28_12
        LDRSH    R0,[R0, #+0]
        CMP      R0,#+1
        BLT.N    ??CarControlOut_8
// 2643           {
// 2644                    FTM0_C7V = RightSpeedPwm;                   
        LDR.W    R0,??DataTable28_12
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable28_18  ;; 0x40038048
        STR      R0,[R1, #+0]
// 2645                    FTM0_C6V = 0;            /////////////////////////////////////////////////////////////////////////////////////////////////////
        MOVS     R0,#+0
        LDR.W    R1,??DataTable28_19  ;; 0x40038040
        STR      R0,[R1, #+0]
// 2646                    
// 2647                     
// 2648           }
// 2649           if(  RightSpeedPwm<= 0)
??CarControlOut_8:
        LDR.W    R0,??DataTable28_12
        LDRSH    R0,[R0, #+0]
        CMP      R0,#+1
        BGE.N    ??CarControlOut_9
// 2650           {
// 2651                    FTM0_C7V = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable28_18  ;; 0x40038048
        STR      R0,[R1, #+0]
// 2652                    FTM0_C6V = -RightSpeedPwm;
        LDR.W    R0,??DataTable28_12
        LDRSH    R0,[R0, #+0]
        RSBS     R0,R0,#+0
        LDR.W    R1,??DataTable28_19  ;; 0x40038040
        STR      R0,[R1, #+0]
// 2653                  
// 2654           }
// 2655 //右轮
// 2656           if(  LeftSpeedPwm > 0 )
??CarControlOut_9:
        LDR.W    R0,??DataTable28_14
        LDRSH    R0,[R0, #+0]
        CMP      R0,#+1
        BLT.N    ??CarControlOut_10
// 2657           {
// 2658                    FTM0_C5V = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable28_20  ;; 0x40038038
        STR      R0,[R1, #+0]
// 2659                    FTM0_C4V = LeftSpeedPwm;
        LDR.W    R0,??DataTable28_14
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable29  ;; 0x40038030
        STR      R0,[R1, #+0]
// 2660            }
// 2661           if(  LeftSpeedPwm <= 0)
??CarControlOut_10:
        LDR.W    R0,??DataTable28_14
        LDRSH    R0,[R0, #+0]
        CMP      R0,#+1
        BGE.N    ??CarControlOut_11
// 2662           { 
// 2663                   
// 2664                    FTM0_C5V =-LeftSpeedPwm;
        LDR.W    R0,??DataTable28_14
        LDRSH    R0,[R0, #+0]
        RSBS     R0,R0,#+0
        LDR.W    R1,??DataTable28_20  ;; 0x40038038
        STR      R0,[R1, #+0]
// 2665                    FTM0_C4V = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable29  ;; 0x40038030
        STR      R0,[R1, #+0]
// 2666           }
// 2667 }
??CarControlOut_11:
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20:
        DC32     jianshu

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_1:
        DC32     qing
// 2668 
// 2669 
// 2670 
// 2671 /*------------------------------------------------------------------------------
// 2672                             串口部分              
// 2673 ------------------------------------------------------------------------------*/
// 2674 
// 2675 
// 2676 
// 2677 /*超级示波器*/
// 2678 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// 2679 float OutData[4] = { 0 };
OutData:
        DS8 16
// 2680 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2681 unsigned short CRC_CHECK(unsigned char *Buf, unsigned char CRC_CNT)
// 2682 {
CRC_CHECK:
        PUSH     {R4,R5}
        MOVS     R2,R0
// 2683     unsigned short CRC_Temp;
// 2684     unsigned char i,j;
// 2685     CRC_Temp = 0xffff;
        MOVW     R5,#+65535
        MOVS     R0,R5
// 2686 
// 2687     for (i=0;i<CRC_CNT; i++){      
        MOVS     R5,#+0
        MOVS     R3,R5
??CRC_CHECK_0:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R3,R1
        BCS.N    ??CRC_CHECK_1
// 2688         CRC_Temp ^= Buf[i];
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LDRB     R5,[R3, R2]
        EORS     R0,R5,R0
// 2689         for (j=0;j<8;j++) {
        MOVS     R5,#+0
        MOVS     R4,R5
??CRC_CHECK_2:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+8
        BGE.N    ??CRC_CHECK_3
// 2690             if (CRC_Temp & 0x01)
        LSLS     R5,R0,#+31
        BPL.N    ??CRC_CHECK_4
// 2691                 CRC_Temp = (CRC_Temp >>1 ) ^ 0xa001;
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LSRS     R0,R0,#+1
        EOR      R0,R0,#0xA000
        EORS     R0,R0,#0x1
        B.N      ??CRC_CHECK_5
// 2692             else
// 2693                 CRC_Temp = CRC_Temp >> 1;
??CRC_CHECK_4:
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LSRS     R0,R0,#+1
// 2694         }
??CRC_CHECK_5:
        ADDS     R4,R4,#+1
        B.N      ??CRC_CHECK_2
// 2695     }
??CRC_CHECK_3:
        ADDS     R3,R3,#+1
        B.N      ??CRC_CHECK_0
// 2696     return(CRC_Temp);
??CRC_CHECK_1:
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        POP      {R4,R5}
        BX       LR               ;; return
// 2697 }
// 2698 

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// 2699 uint8 j=0;
j:
        DS8 1

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2700 void OutPut_Data(void)
// 2701 {
OutPut_Data:
        PUSH     {R4,R5,LR}
        SUB      SP,SP,#+44
// 2702   int temp[4] = {0};
        ADD      R0,SP,#+28
        MOVS     R1,#+16
        BL       __aeabi_memclr4
// 2703   unsigned int temp1[4] = {0};
        ADD      R0,SP,#+12
        MOVS     R1,#+16
        BL       __aeabi_memclr4
// 2704   unsigned char databuf[10] = {0};
        ADD      R0,SP,#+0
        MOVS     R1,#+0
        MOVS     R2,#+0
        MOVS     R3,#+0
        STM      R0!,{R1-R3}
        SUBS     R0,R0,#+12
// 2705   unsigned char i;
// 2706   unsigned short CRC16 = 0;
        MOVS     R5,#+0
// 2707   for(i=0;i<4;i++)
        MOVS     R0,#+0
        MOVS     R4,R0
??OutPut_Data_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+4
        BGE.N    ??OutPut_Data_1
// 2708    {
// 2709     
// 2710     temp[i]  = (int)OutData[i];
        LDR.W    R0,??DataTable29_1
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        BL       __aeabi_f2iz
        ADD      R1,SP,#+28
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        STR      R0,[R1, R4, LSL #+2]
// 2711     temp1[i] = (unsigned int)temp[i];
        ADD      R0,SP,#+28
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        ADD      R1,SP,#+12
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        STR      R0,[R1, R4, LSL #+2]
// 2712     
// 2713    }
        ADDS     R4,R4,#+1
        B.N      ??OutPut_Data_0
// 2714    
// 2715   for(i=0;i<4;i++) 
??OutPut_Data_1:
        MOVS     R0,#+0
        MOVS     R4,R0
??OutPut_Data_2:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+4
        BGE.N    ??OutPut_Data_3
// 2716   {
// 2717     databuf[i*2]   = (unsigned char)(temp1[i]%256);
        ADD      R0,SP,#+12
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        MOV      R1,#+256
        UDIV     R2,R0,R1
        MLS      R2,R2,R1,R0
        ADD      R0,SP,#+0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        STRB     R2,[R0, R4, LSL #+1]
// 2718     databuf[i*2+1] = (unsigned char)(temp1[i]/256);
        ADD      R0,SP,#+12
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR      R0,[R0, R4, LSL #+2]
        LSRS     R0,R0,#+8
        ADD      R1,SP,#+0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADDS     R1,R1,R4, LSL #+1
        STRB     R0,[R1, #+1]
// 2719   }
        ADDS     R4,R4,#+1
        B.N      ??OutPut_Data_2
// 2720   
// 2721   CRC16 = CRC_CHECK(databuf,8);
??OutPut_Data_3:
        MOVS     R1,#+8
        ADD      R0,SP,#+0
        BL       CRC_CHECK
        MOVS     R5,R0
// 2722   databuf[8] = CRC16%256;
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        MOV      R0,#+256
        SDIV     R1,R5,R0
        MLS      R1,R1,R0,R5
        STRB     R1,[SP, #+8]
// 2723   databuf[9] = CRC16/256;
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        MOV      R0,#+256
        SDIV     R0,R5,R0
        STRB     R0,[SP, #+9]
// 2724   
// 2725   
// 2726   for(i=0;i<10;i++)
        MOVS     R0,#+0
        MOVS     R4,R0
??OutPut_Data_4:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+10
        BGE.N    ??OutPut_Data_5
// 2727     uart_putchar(UART0,databuf[i]);
        ADD      R0,SP,#+0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDRB     R1,[R4, R0]
        MOVS     R0,#+0
        BL       uart_putchar
        ADDS     R4,R4,#+1
        B.N      ??OutPut_Data_4
// 2728   
// 2729 }
??OutPut_Data_5:
        ADD      SP,SP,#+44
        POP      {R4,R5,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable21:
        DC32     huanjie
// 2730 
// 2731 

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// 2732 uint8 put_cnt=0;
put_cnt:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// 2733 uint8 put_date[11]={0};
put_date:
        DS8 12

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2734 void PutDate(){
PutDate:
        PUSH     {R7,LR}
// 2735   
// 2736    
// 2737   
// 2738    
// 2739     put_date[0]=255;
        MOVS     R0,#+255
        LDR.W    R1,??DataTable28_21
        STRB     R0,[R1, #+0]
// 2740     put_date[1]=(uint8)w*10;
        LDR.N    R0,??DataTable24_23
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2iz
        MOVS     R1,#+10
        MULS     R0,R1,R0
        LDR.W    R1,??DataTable28_21
        STRB     R0,[R1, #+1]
// 2741     put_date[2]=(uint16)acce& 0x00ff;
        LDR.N    R0,??DataTable24_5
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2iz
        LDR.W    R1,??DataTable28_21
        STRB     R0,[R1, #+2]
// 2742     put_date[3]=(uint16)acce>>8;
        LDR.N    R0,??DataTable24_5
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2iz
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LSRS     R0,R0,#+8
        LDR.W    R1,??DataTable28_21
        STRB     R0,[R1, #+3]
// 2743     put_date[4]=(uint8)GYRO_STATIC/10;
        LDR.N    R0,??DataTable24_19
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2iz
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R1,#+10
        SDIV     R0,R0,R1
        LDR.W    R1,??DataTable28_21
        STRB     R0,[R1, #+4]
// 2744  
// 2745   
// 2746   
// 2747     put_date[10]=254;
        MOVS     R0,#+254
        LDR.W    R1,??DataTable28_21
        STRB     R0,[R1, #+10]
// 2748     
// 2749     
// 2750 //    put_date[0]=255;
// 2751 //    put_date[1]=1;
// 2752 //    put_date[2]=2;
// 2753 //    put_date[3]=2;
// 2754 //    put_date[4]=3;
// 2755 //    put_date[5]=5;
// 2756 //    put_date[6]=6;
// 2757 //    put_date[7]=10;
// 2758 //    put_date[8]=0;
// 2759 //    put_date[9]=7;
// 2760 //    put_date[10]=254;
// 2761     
// 2762     
// 2763     
// 2764    UART_D_REG(UARTx[UART0])= put_date[put_cnt];
        LDR.W    R0,??DataTable28_21
        LDR.W    R1,??DataTable29_2
        LDRB     R1,[R1, #+0]
        LDRB     R0,[R1, R0]
        LDR.W    R1,??DataTable28_22
        LDR      R1,[R1, #+0]
        STRB     R0,[R1, #+7]
// 2765    //    uart_putchar(UART0,123);
// 2766      put_cnt++;
        LDR.W    R0,??DataTable29_2
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable29_2
        STRB     R0,[R1, #+0]
// 2767     
// 2768      if(put_cnt==11) put_cnt=0;
        LDR.W    R0,??DataTable29_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+11
        BNE.N    ??PutDate_0
        MOVS     R0,#+0
        LDR.W    R1,??DataTable29_2
        STRB     R0,[R1, #+0]
// 2769 
// 2770 }
??PutDate_0:
        POP      {R0,PC}          ;; return

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// 2771 uint8 send_date[9]={0};
send_date:
        DS8 12

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// 2772 uint8 send_cnt=0;
send_cnt:
        DS8 1

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2773 void SendDate(){
SendDate:
        PUSH     {R7,LR}
// 2774                
// 2775        speed_kp =send_date[1];
        LDR.W    R0,??DataTable28_23
        LDRB     R0,[R0, #+1]
        BL       __aeabi_ui2f
        LDR.W    R1,??DataTable27_12
        STR      R0,[R1, #+0]
// 2776                    
// 2777        speed_ki = send_date[2]/10.0;
        LDR.W    R0,??DataTable28_23
        LDRB     R0,[R0, #+2]
        BL       __aeabi_ui2d
        MOVS     R2,#+0
        LDR.W    R3,??DataTable28_24  ;; 0x40240000
        BL       __aeabi_ddiv
        BL       __aeabi_d2f
        LDR.W    R1,??DataTable28_1
        STR      R0,[R1, #+0]
// 2778        
// 2779      
// 2780                            
// 2781        
// 2782 //       Speed_set =  send_date[7];
// 2783  
// 2784 }
        POP      {R0,PC}          ;; return
// 2785 
// 2786 //----------------------------串口初始化-----------------------------//                       李靖康学长

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 2787 void UART0_Init(void)    //PTB16 RXD    PTB17 TXD
// 2788 {
UART0_Init:
        PUSH     {R4,R5}
// 2789     uint32 uartclk_khz = CORE_CLOCK*10 * BUS_CLOCK;//时钟180MHz    //随时更改
        LDR.W    R0,??DataTable28_25  ;; 0x2bf20
// 2790     uint32 baud = BAUD;
        MOV      R1,#+19200
// 2791     uint16 sbr,brfa;
// 2792     
// 2793     SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK; //开启B口时钟
        LDR.W    R4,??DataTable28_26  ;; 0x40048038
        LDR      R4,[R4, #+0]
        ORRS     R4,R4,#0x400
        LDR.W    R5,??DataTable28_26  ;; 0x40048038
        STR      R4,[R5, #+0]
// 2794     PORTB_PCR16|=PORT_PCR_MUX(3);//将PTB16引脚设置为模式3，即UART0_RX
        LDR.W    R4,??DataTable28_27  ;; 0x4004a040
        LDR      R4,[R4, #+0]
        ORRS     R4,R4,#0x300
        LDR.W    R5,??DataTable28_27  ;; 0x4004a040
        STR      R4,[R5, #+0]
// 2795     PORTB_PCR17|=PORT_PCR_MUX(3);//将PTB177引脚设置为模式3，即UART0_TX
        LDR.W    R4,??DataTable28_28  ;; 0x4004a044
        LDR      R4,[R4, #+0]
        ORRS     R4,R4,#0x300
        LDR.W    R5,??DataTable28_28  ;; 0x4004a044
        STR      R4,[R5, #+0]
// 2796     SIM_SCGC4|=SIM_SCGC4_UART0_MASK;//开启UART0时钟
        LDR.W    R4,??DataTable28_29  ;; 0x40048034
        LDR      R4,[R4, #+0]
        ORRS     R4,R4,#0x400
        LDR.W    R5,??DataTable28_29  ;; 0x40048034
        STR      R4,[R5, #+0]
// 2797     sbr = (uint16)((uartclk_khz*1000)/(baud*16));//计算并设置波特率
        MOV      R4,#+1000
        MUL      R4,R4,R0
        LSLS     R5,R1,#+4
        UDIV     R4,R4,R5
        MOVS     R2,R4
// 2798     
// 2799     UART0_BDH = (uint8)((sbr&0x1F00)>>8);//将波特率19200写入相应的寄存器然后进行使能，使其工作。前面的buad只是一个数字，而后面的计算是将19200写入这个寄存器，然后进行使能
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        ASRS     R4,R2,#+8
        ANDS     R4,R4,#0x1F
        LDR.W    R5,??DataTable28_30  ;; 0x4006a000
        STRB     R4,[R5, #+0]
// 2800     UART0_BDL=(uint8)(sbr&0x00FF);
        LDR.W    R4,??DataTable28_31  ;; 0x4006a001
        STRB     R2,[R4, #+0]
// 2801     brfa = (((uartclk_khz*32000)/(baud*16))-(sbr*32));
        MOV      R4,#+32000
        MUL      R4,R4,R0
        LSLS     R5,R1,#+4
        UDIV     R4,R4,R5
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        SUBS     R4,R4,R2, LSL #+5
        MOVS     R3,R4
// 2802     UART0_C4 = (uint8)(brfa & 0x001F);
        ANDS     R4,R3,#0x1F
        LDR.W    R5,??DataTable28_32  ;; 0x4006a00a
        STRB     R4,[R5, #+0]
// 2803     UART0_C2 |=(UART_C2_TE_MASK|UART_C2_RE_MASK);
        LDR.W    R4,??DataTable30  ;; 0x4006a003
        LDRB     R4,[R4, #+0]
        ORRS     R4,R4,#0xC
        LDR.W    R5,??DataTable30  ;; 0x4006a003
        STRB     R4,[R5, #+0]
// 2804     UART0_C1 = 0;	
        MOVS     R4,#+0
        LDR.W    R5,??DataTable28_33  ;; 0x4006a002
        STRB     R4,[R5, #+0]
// 2805     UART0_C2 |= UART_C2_RIE_MASK;   //开UART0接收中断
        LDR.W    R4,??DataTable30  ;; 0x4006a003
        LDRB     R4,[R4, #+0]
        ORRS     R4,R4,#0x20
        LDR.W    R5,??DataTable30  ;; 0x4006a003
        STRB     R4,[R5, #+0]
// 2806 }
        POP      {R4,R5}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24:
        DC32     0xf5c28f5c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_1:
        DC32     0x4022dc28

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_2:
        DC32     0x40900000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_3:
        DC32     AD_AngleData

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_4:
        DC32     0x4009c800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_5:
        DC32     acce

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_6:
        DC32     acce_static

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_7:
        DC32     acce_offset

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_8:
        DC32     0x44480000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_9:
        DC32     acce_G

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_10:
        DC32     0x3f800001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_11:
        DC32     0xbf800000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_12:
        DC32     0xb6774c14

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_13:
        DC32     0x404ca5d7

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_14:
        DC32     acce_angle

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_15:
        DC32     AcceData

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_16:
        DC32     gyro

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_17:
        DC32     pre_Lastgyro

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_18:
        DC32     Lastgyro

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_19:
        DC32     GYRO_STATIC

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_20:
        DC32     gyro_offset

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_21:
        DC32     0x189374bc

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_22:
        DC32     0x400b5604

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_23:
        DC32     w

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_24:
        DC32     ft
// 2807 
// 2808 //------------------------串口发送函数------------------------ //                           
// 2809 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 2810 void SCI0_send_mesage(void)
// 2811 {
SCI0_send_mesage:
        PUSH     {R3-R5,LR}
// 2812     //int i = 0;
// 2813     static bool sci_temp = 0,ts=0;
// 2814      int i = 0,j = 0;
        MOVS     R4,#+0
        MOVS     R5,#+0
// 2815     DisableInterrupts;  //发送图像数据时，要关闭所有中断，否则会出错    
        CPSID i
// 2816     if(send_mes == 1)  //参数 自己上位机
        LDR.W    R0,??DataTable30_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.W    ??SCI0_send_mesage_0
// 2817     {  
// 2818       
// 2819       while(!(UART0_S1&UART_S1_TDRE_MASK));   //等待数据到达0
??SCI0_send_mesage_1:
        LDR.W    R0,??DataTable29_3  ;; 0x4006a004
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??SCI0_send_mesage_1
// 2820         UART0_D =0x01;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable29_4  ;; 0x4006a007
        STRB     R0,[R1, #+0]
// 2821         
// 2822       while(!(UART0_S1&UART_S1_TDRE_MASK));   //等待数据到达1
??SCI0_send_mesage_2:
        LDR.W    R0,??DataTable29_3  ;; 0x4006a004
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??SCI0_send_mesage_2
// 2823         UART0_D =(uint8)((uint16)angle_kp>>8);
        LDR.N    R0,??DataTable25_8
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2iz
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LSRS     R0,R0,#+8
        LDR.W    R1,??DataTable29_4  ;; 0x4006a007
        STRB     R0,[R1, #+0]
// 2824       while(!(UART0_S1&UART_S1_TDRE_MASK));   //等待数据到达2
??SCI0_send_mesage_3:
        LDR.W    R0,??DataTable29_3  ;; 0x4006a004
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??SCI0_send_mesage_3
// 2825         UART0_D = (uint8)( (uint16)angle_kp&0x00ff);
        LDR.N    R0,??DataTable25_8
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2iz
        LDR.W    R1,??DataTable29_4  ;; 0x4006a007
        STRB     R0,[R1, #+0]
// 2826         
// 2827       while(!(UART0_S1&UART_S1_TDRE_MASK));   //等待数据到达3
??SCI0_send_mesage_4:
        LDR.W    R0,??DataTable29_3  ;; 0x4006a004
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??SCI0_send_mesage_4
// 2828         UART0_D =(uint8)(angle_kd);
        LDR.W    R0,??DataTable26_1
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2iz
        LDR.W    R1,??DataTable29_4  ;; 0x4006a007
        STRB     R0,[R1, #+0]
// 2829         
// 2830       while(!(UART0_S1&UART_S1_TDRE_MASK));   //等待数据到达4
??SCI0_send_mesage_5:
        LDR.W    R0,??DataTable29_3  ;; 0x4006a004
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??SCI0_send_mesage_5
// 2831         UART0_D = (uint8)( (uint16)error_servo_ref_d >>8 );
        LDR.W    R0,??DataTable29_5
        LDRH     R0,[R0, #+0]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LSRS     R0,R0,#+8
        LDR.W    R1,??DataTable29_4  ;; 0x4006a007
        STRB     R0,[R1, #+0]
// 2832       while(!(UART0_S1&UART_S1_TDRE_MASK));   //等待数据到达5
??SCI0_send_mesage_6:
        LDR.W    R0,??DataTable29_3  ;; 0x4006a004
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??SCI0_send_mesage_6
// 2833         UART0_D =(uint8)( (uint16)error_servo_ref_d  &0x00ff);
        LDR.W    R0,??DataTable29_5
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable29_4  ;; 0x4006a007
        STRB     R0,[R1, #+0]
// 2834         
// 2835        while(!(UART0_S1&UART_S1_TDRE_MASK));   //等待数据到达6
??SCI0_send_mesage_7:
        LDR.W    R0,??DataTable29_3  ;; 0x4006a004
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??SCI0_send_mesage_7
// 2836         UART0_D = (uint8)( (uint16)error_servo_ref_p >>8 );
        LDR.W    R0,??DataTable29_6
        LDRH     R0,[R0, #+0]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LSRS     R0,R0,#+8
        LDR.W    R1,??DataTable29_4  ;; 0x4006a007
        STRB     R0,[R1, #+0]
// 2837       while(!(UART0_S1&UART_S1_TDRE_MASK));   //等待数据到达7
??SCI0_send_mesage_8:
        LDR.W    R0,??DataTable29_3  ;; 0x4006a004
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??SCI0_send_mesage_8
// 2838         UART0_D =(uint8)( (uint16)error_servo_ref_p  &0x00ff);
        LDR.W    R0,??DataTable29_6
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable29_4  ;; 0x4006a007
        STRB     R0,[R1, #+0]
// 2839         
// 2840       while(!(UART0_S1&UART_S1_TDRE_MASK));   //等待数据到达8
??SCI0_send_mesage_9:
        LDR.W    R0,??DataTable29_3  ;; 0x4006a004
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??SCI0_send_mesage_9
// 2841         UART0_D = (uint8)( speed_kp );
        LDR.N    R0,??DataTable27_12
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2iz
        LDR.W    R1,??DataTable29_4  ;; 0x4006a007
        STRB     R0,[R1, #+0]
// 2842         
// 2843       while(!(UART0_S1&UART_S1_TDRE_MASK));   //等待数据到达9
??SCI0_send_mesage_10:
        LDR.W    R0,??DataTable29_3  ;; 0x4006a004
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??SCI0_send_mesage_10
// 2844         UART0_D = (uint8)( speed_ki*10);
        LDR.W    R0,??DataTable28_1
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable29_7  ;; 0x41200000
        BL       __aeabi_fmul
        BL       __aeabi_f2iz
        LDR.W    R1,??DataTable29_4  ;; 0x4006a007
        STRB     R0,[R1, #+0]
// 2845     //  while(!(UART0_S1&UART_S1_TDRE_MASK));   //等待数据到达10
// 2846      //   UART0_D = (uint8)( Speed_set );
// 2847       
// 2848       //while(!(UART0_S1&UART_S1_TDRE_MASK));   //等待数据到达11
// 2849         //UART0_D =( uint8 )(w);
// 2850       while(!(UART0_S1&UART_S1_TDRE_MASK));   //等待数据到达11
??SCI0_send_mesage_11:
        LDR.W    R0,??DataTable29_3  ;; 0x4006a004
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??SCI0_send_mesage_11
// 2851         UART0_D =(uint8)( RealSpeed );
        LDR.N    R0,??DataTable27_8
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2iz
        LDR.W    R1,??DataTable29_4  ;; 0x4006a007
        STRB     R0,[R1, #+0]
// 2852         
// 2853       //while(!(UART0_S1&UART_S1_TDRE_MASK));   //等待数据到达12
// 2854         //UART0_D =(uint8)( speed_ki);
// 2855       while(!(UART0_S1&UART_S1_TDRE_MASK));   //等待数据到达12
??SCI0_send_mesage_12:
        LDR.W    R0,??DataTable29_3  ;; 0x4006a004
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??SCI0_send_mesage_12
// 2856         UART0_D = (uint8)( (uint16)ACCE_STATIC>>8 );
        LDR.W    R0,??DataTable29_8
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2iz
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LSRS     R0,R0,#+8
        LDR.W    R1,??DataTable29_4  ;; 0x4006a007
        STRB     R0,[R1, #+0]
// 2857       while(!(UART0_S1&UART_S1_TDRE_MASK));   //等待数据到达13
??SCI0_send_mesage_13:
        LDR.W    R0,??DataTable29_3  ;; 0x4006a004
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??SCI0_send_mesage_13
// 2858         UART0_D =(uint8)( (uint16)ACCE_STATIC&0x00ff);  
        LDR.W    R0,??DataTable29_8
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2iz
        LDR.W    R1,??DataTable29_4  ;; 0x4006a007
        STRB     R0,[R1, #+0]
// 2859         
// 2860       while(!(UART0_S1&UART_S1_TDRE_MASK));   //等待数据到达14
??SCI0_send_mesage_14:
        LDR.W    R0,??DataTable29_3  ;; 0x4006a004
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??SCI0_send_mesage_14
// 2861         UART0_D =(uint8)(V*10);    
        LDR.N    R0,??DataTable25
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable29_7  ;; 0x41200000
        BL       __aeabi_fmul
        BL       __aeabi_f2iz
        LDR.W    R1,??DataTable29_4  ;; 0x4006a007
        STRB     R0,[R1, #+0]
// 2862         
// 2863         send_mes = 0;  //发送一次即可，所以要清零
        MOVS     R0,#+0
        LDR.W    R1,??DataTable30_1
        STRB     R0,[R1, #+0]
        B.N      ??SCI0_send_mesage_15
// 2864      }
// 2865    
// 2866     
// 2867     else if(send_mes == 2)
??SCI0_send_mesage_0:
        LDR.W    R0,??DataTable30_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+2
        BNE.N    ??SCI0_send_mesage_16
// 2868     {
// 2869       if(!ts)
        LDR.W    R0,??DataTable29_9
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??SCI0_send_mesage_17
// 2870       {
// 2871           while(!(UART0_S1&UART_S1_TDRE_MASK));//等待数据到达
??SCI0_send_mesage_18:
        LDR.W    R0,??DataTable29_3  ;; 0x4006a004
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??SCI0_send_mesage_18
// 2872           UART0_D =10;
        MOVS     R0,#+10
        LDR.W    R1,??DataTable29_4  ;; 0x4006a007
        STRB     R0,[R1, #+0]
        B.N      ??SCI0_send_mesage_19
// 2873       }
// 2874       
// 2875       else
// 2876       {
// 2877         
// 2878           while(!(UART0_S1&UART_S1_TDRE_MASK));//等待数据到达
??SCI0_send_mesage_17:
        LDR.W    R0,??DataTable29_3  ;; 0x4006a004
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??SCI0_send_mesage_17
// 2879           UART0_D =20;
        MOVS     R0,#+20
        LDR.W    R1,??DataTable29_4  ;; 0x4006a007
        STRB     R0,[R1, #+0]
// 2880       }
// 2881           //Delay_MS(80000);
// 2882       ts=!ts;
??SCI0_send_mesage_19:
        LDR.W    R0,??DataTable29_9
        LDRB     R0,[R0, #+0]
        EORS     R0,R0,#0x1
        LDR.W    R1,??DataTable29_9
        STRB     R0,[R1, #+0]
        B.N      ??SCI0_send_mesage_15
// 2883       
// 2884     }
// 2885  
// 2886    else if (send_mes == 3)  //便于调试
??SCI0_send_mesage_16:
        LDR.W    R0,??DataTable30_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+3
        BNE.N    ??SCI0_send_mesage_20
// 2887     {  
// 2888         if(!sci_temp)
        LDR.W    R0,??DataTable29_10
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??SCI0_send_mesage_21
// 2889         {
// 2890          while(!(UART0_S1&UART_S1_TDRE_MASK));
??SCI0_send_mesage_22:
        LDR.W    R0,??DataTable29_3  ;; 0x4006a004
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??SCI0_send_mesage_22
// 2891           UART0_D =Speed_set;//speed_feedback
        LDR.W    R0,??DataTable29_11
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable29_4  ;; 0x4006a007
        STRB     R0,[R1, #+0]
// 2892          sci_temp = !sci_temp; 
        LDR.W    R0,??DataTable29_10
        LDRB     R0,[R0, #+0]
        EORS     R0,R0,#0x1
        LDR.W    R1,??DataTable29_10
        STRB     R0,[R1, #+0]
        B.N      ??SCI0_send_mesage_15
// 2893            //Delay_MS(2000000); 
// 2894         }
// 2895         else
// 2896         {
// 2897            while(!(UART0_S1&UART_S1_TDRE_MASK));//等待数据到达
??SCI0_send_mesage_21:
        LDR.W    R0,??DataTable29_3  ;; 0x4006a004
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??SCI0_send_mesage_21
// 2898            UART0_D=(uint8)RealSpeed;
        LDR.N    R0,??DataTable27_8
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2iz
        LDR.W    R1,??DataTable29_4  ;; 0x4006a007
        STRB     R0,[R1, #+0]
// 2899            sci_temp = !sci_temp;
        LDR.W    R0,??DataTable29_10
        LDRB     R0,[R0, #+0]
        EORS     R0,R0,#0x1
        LDR.W    R1,??DataTable29_10
        STRB     R0,[R1, #+0]
        B.N      ??SCI0_send_mesage_15
// 2900            //Delay_MS(2000000); 
// 2901         }
// 2902         
// 2903         //       send_mes = 0;不清0是为了连续发送
// 2904       }
// 2905    
// 2906     else if(send_mes ==4)  //图像
??SCI0_send_mesage_20:
        LDR.W    R0,??DataTable30_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+4
        BNE.N    ??SCI0_send_mesage_15
// 2907     {  
// 2908       while(!(UART0_S1&UART_S1_TDRE_MASK));   //等待数据到达
??SCI0_send_mesage_23:
        LDR.W    R0,??DataTable29_3  ;; 0x4006a004
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??SCI0_send_mesage_23
// 2909         UART0_D = WHITE_BLACK_OT;//由于阀值的不存在，故这里只是随便填写的一个数字
        LDR.W    R0,??DataTable30_2
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable29_4  ;; 0x4006a007
        STRB     R0,[R1, #+0]
// 2910               while(!(UART0_S1&UART_S1_TDRE_MASK));   //等待数据到达
??SCI0_send_mesage_24:
        LDR.W    R0,??DataTable29_3  ;; 0x4006a004
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??SCI0_send_mesage_24
// 2911         UART0_D = (uint8)ROW;
        MOVS     R0,#+50
        LDR.W    R1,??DataTable29_4  ;; 0x4006a007
        STRB     R0,[R1, #+0]
// 2912               while(!(UART0_S1&UART_S1_TDRE_MASK));   //等待数据到达
??SCI0_send_mesage_25:
        LDR.W    R0,??DataTable29_3  ;; 0x4006a004
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??SCI0_send_mesage_25
// 2913         UART0_D = (uint8)COLUMN;
        MOVS     R0,#+157
        LDR.W    R1,??DataTable29_4  ;; 0x4006a007
        STRB     R0,[R1, #+0]
// 2914         
// 2915        // while(!(UART0_S1&UART_S1_TDRE_MASK));   //等待数据到达
// 2916         //UART0_D = (uint8)bottom_whitebase;
// 2917              // while(!(UART0_S1&UART_S1_TDRE_MASK));   //等待数据到达
// 2918         //UART0_D = (uint8)control_top_whiteline ;
// 2919         
// 2920       for(i =ROW-1;i>=0;i--)
        MOVS     R0,#+49
        MOVS     R4,R0
??SCI0_send_mesage_26:
        CMP      R4,#+0
        BMI.N    ??SCI0_send_mesage_27
// 2921       {
// 2922         for(j=0;j<COLUMN;j++)
        MOVS     R0,#+0
        MOVS     R5,R0
??SCI0_send_mesage_28:
        CMP      R5,#+157
        BGE.N    ??SCI0_send_mesage_29
// 2923         {
// 2924           while(!(UART0_S1&UART_S1_TDRE_MASK));//等待数据到达
??SCI0_send_mesage_30:
        LDR.W    R0,??DataTable29_3  ;; 0x4006a004
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??SCI0_send_mesage_30
// 2925           UART0_D =  VideoImage2[i][j];///见最后一个函数讲解
        LDR.W    R0,??DataTable30_3
        MOVS     R1,#+157
        MLA      R0,R1,R4,R0
        LDRB     R0,[R5, R0]
        LDR.W    R1,??DataTable29_4  ;; 0x4006a007
        STRB     R0,[R1, #+0]
// 2926           Delay_MS(80000);
        LDR.W    R0,??DataTable30_4  ;; 0x13880
        BL       Delay_MS
// 2927         }
        ADDS     R5,R5,#+1
        B.N      ??SCI0_send_mesage_28
// 2928       }  
??SCI0_send_mesage_29:
        SUBS     R4,R4,#+1
        B.N      ??SCI0_send_mesage_26
// 2929       for (i =ROW-1 ;i >=0 ; i--)
??SCI0_send_mesage_27:
        MOVS     R0,#+49
        MOVS     R4,R0
??SCI0_send_mesage_31:
        CMP      R4,#+0
        BMI.N    ??SCI0_send_mesage_32
// 2930       {
// 2931         while(!(UART0_S1&UART_S1_TDRE_MASK));//等待数据到达
??SCI0_send_mesage_33:
        LDR.W    R0,??DataTable29_3  ;; 0x4006a004
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??SCI0_send_mesage_33
// 2932            UART0_D = left_black[i];
        LDR.W    R0,??DataTable30_5
        LDRB     R0,[R4, R0]
        LDR.W    R1,??DataTable29_4  ;; 0x4006a007
        STRB     R0,[R1, #+0]
// 2933         Delay_MS(80000);
        LDR.W    R0,??DataTable30_4  ;; 0x13880
        BL       Delay_MS
// 2934       }
        SUBS     R4,R4,#+1
        B.N      ??SCI0_send_mesage_31
// 2935       for (i =ROW-1 ;i >=0 ; i--)
??SCI0_send_mesage_32:
        MOVS     R0,#+49
        MOVS     R4,R0
??SCI0_send_mesage_34:
        CMP      R4,#+0
        BMI.N    ??SCI0_send_mesage_35
// 2936       {
// 2937          while(!(UART0_S1&UART_S1_TDRE_MASK));//等待数据到达
??SCI0_send_mesage_36:
        LDR.W    R0,??DataTable29_3  ;; 0x4006a004
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??SCI0_send_mesage_36
// 2938          UART0_D = right_black[i];
        LDR.W    R0,??DataTable30_6
        LDRB     R0,[R4, R0]
        LDR.W    R1,??DataTable29_4  ;; 0x4006a007
        STRB     R0,[R1, #+0]
// 2939          Delay_MS(80000);
        LDR.W    R0,??DataTable30_4  ;; 0x13880
        BL       Delay_MS
// 2940       }
        SUBS     R4,R4,#+1
        B.N      ??SCI0_send_mesage_34
// 2941       for (i =ROW-1 ;i >=0 ; i--)
??SCI0_send_mesage_35:
        MOVS     R0,#+49
        MOVS     R4,R0
??SCI0_send_mesage_37:
        CMP      R4,#+0
        BMI.N    ??SCI0_send_mesage_38
// 2942       {
// 2943         while(!(UART0_S1&UART_S1_TDRE_MASK));//等待数据到达
??SCI0_send_mesage_39:
        LDR.W    R0,??DataTable29_3  ;; 0x4006a004
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??SCI0_send_mesage_39
// 2944         UART0_D = center_white[i];
        LDR.W    R0,??DataTable30_7
        LDRB     R0,[R4, R0]
        LDR.W    R1,??DataTable29_4  ;; 0x4006a007
        STRB     R0,[R1, #+0]
// 2945         Delay_MS(80000);
        LDR.W    R0,??DataTable30_4  ;; 0x13880
        BL       Delay_MS
// 2946       }
        SUBS     R4,R4,#+1
        B.N      ??SCI0_send_mesage_37
// 2947       send_mes = 0;  //发送一次即可，所以要清零
??SCI0_send_mesage_38:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable30_1
        STRB     R0,[R1, #+0]
// 2948      }               
// 2949    /* if( response )
// 2950     {
// 2951       while(!(UART0_S1&UART_S1_TDRE_MASK));
// 2952        UART0_D =0x01;
// 2953        response=0;
// 2954     }*/
// 2955     EnableInterrupts;
??SCI0_send_mesage_15:
        CPSIE i
// 2956 }
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable25:
        DC32     V

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable25_1:
        DC32     0x47ae147b

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable25_2:
        DC32     0x3f547ae1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable25_3:
        DC32     last_anglePD

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable25_4:
        DC32     angle_kp_across

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable25_5:
        DC32     angle_kp_set

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable25_6:
        DC32     angle_kd_across

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable25_7:
        DC32     angle_kd_set

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable25_8:
        DC32     angle_kp

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
??sci_temp:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
??ts:
        DS8 1
// 2957 
// 2958 /*void SCI0_send_mesage(void)
// 2959 {
// 2960     int i = 0,j = 0;
// 2961     static bool sci_temp = 0;
// 2962     DisableInterrupts;  //发送图像数据时，要关闭所有中断，否则会出错    
// 2963     if(send_mes==1)  //平哥改进后的上位机的图像
// 2964     {  
// 2965       while(!(UART0_S1&UART_S1_TDRE_MASK));   //等待数据到达
// 2966          UART0_D =1;
// 2967        while(!(UART0_S1&UART_S1_TDRE_MASK));   
// 2968            UART0_D = (uint8)WHITE_BLACK_OT;
// 2969          while(!(UART0_S1&UART_S1_TDRE_MASK));
// 2970         UART0_D = (uint8)(ROW);
// 2971          while(!(UART0_S1&UART_S1_TDRE_MASK));
// 2972            UART0_D = (uint8)(COLUMN); 
// 2973            
// 2974         while(!(UART0_S1&UART_S1_TDRE_MASK));
// 2975         UART0_D = 0;
// 2976         while(!(UART0_S1&UART_S1_TDRE_MASK));
// 2977         UART0_D = 0;
// 2978         while(!(UART0_S1&UART_S1_TDRE_MASK));
// 2979         UART0_D = 0;
// 2980         while(!(UART0_S1&UART_S1_TDRE_MASK));
// 2981         UART0_D = 0;
// 2982         while(!(UART0_S1&UART_S1_TDRE_MASK));
// 2983         UART0_D = 0;
// 2984         while(!(UART0_S1&UART_S1_TDRE_MASK));
// 2985         UART0_D = 0;
// 2986         while(!(UART0_S1&UART_S1_TDRE_MASK));
// 2987         UART0_D = 0;
// 2988         while(!(UART0_S1&UART_S1_TDRE_MASK));
// 2989         UART0_D = 0;
// 2990         while(!(UART0_S1&UART_S1_TDRE_MASK));
// 2991         UART0_D = 0;     
// 2992        
// 2993         //上位机显示的第一个点是左上角，所以我发的时候第一个点就发左上角的点
// 2994       for(i =0;i<=ROW-1;i++)
// 2995       {
// 2996         for(j=COLUMN-1;j>=0;j--)
// 2997         {
// 2998           while(!(UART0_S1&UART_S1_TDRE_MASK));//等待数据到达
// 2999           UART0_D =  VideoImage2[i][j];///见最后一个函数讲解
// 3000           //Delay_MS(80000);
// 3001         }
// 3002       } 
// 3003 
// 3004       for(i =0;i<=ROW-1;i++)
// 3005       {
// 3006         while(!(UART0_S1&UART_S1_TDRE_MASK));//等待数据到达
// 3007            UART0_D = COLUMN - 1 - left_black[i];
// 3008         //Delay_MS(80000);
// 3009       }
// 3010            for(i =0;i<=ROW-1;i++)
// 3011       {
// 3012          while(!(UART0_S1&UART_S1_TDRE_MASK));//等待数据到达
// 3013          UART0_D = COLUMN - 1 - right_black[i];
// 3014          //Delay_MS(80000);
// 3015       } 
// 3016       for(i =0;i<=ROW-1;i++)
// 3017       {
// 3018         while(!(UART0_S1&UART_S1_TDRE_MASK));//等待数据到达
// 3019         UART0_D = COLUMN - 1 - center_white[i];
// 3020         //Delay_MS(80000);
// 3021       }
// 3022       for(i =0;i<=ROW-1;i++)
// 3023       {
// 3024         while(!(UART0_S1&UART_S1_TDRE_MASK));//发送拟合出来的中线
// 3025         UART0_D = COLUMN - 1 - center_average;
// 3026         //Delay_MS(80000);
// 3027       }
// 3028       for(i =0;i<=control_top_whiteline;i++)
// 3029       {
// 3030         while(!(UART0_S1&UART_S1_TDRE_MASK));//发送拟合出来的中线
// 3031         UART0_D = MID;
// 3032         //Delay_MS(80000);
// 3033       }
// 3034       
// 3035       
// 3036       send_mes = 0;  //发送一次即可，所以要清零
// 3037      }
// 3038    // EnableInterrupts;  //重新开启所有中断
// 3039    else if(send_mes == 2) //用立哥上位机画出图像
// 3040    {
// 3041            while(!(UART0_S1&UART_S1_TDRE_MASK));   //等待数据到达
// 3042         UART0_D = WHITE_BLACK_OT;//由于阀值的不存在，故这里只是随便填写的一个数字
// 3043               while(!(UART0_S1&UART_S1_TDRE_MASK));   //等待数据到达
// 3044         UART0_D = (uint8)ROW;
// 3045               while(!(UART0_S1&UART_S1_TDRE_MASK));   //等待数据到达
// 3046         UART0_D = (uint8)COLUMN;
// 3047         
// 3048         
// 3049         //上位机显示的第一个点是左上角，所以我发的时候第一个点就发左上角的点
// 3050       for(i =ROW-1;i>=0;i--)
// 3051       {
// 3052         for(j=0;j<COLUMN;j++)
// 3053         {
// 3054           while(!(UART0_S1&UART_S1_TDRE_MASK));//等待数据到达
// 3055           UART0_D =  VideoImage2[i][j];///见最后一个函数讲解
// 3056           Delay_MS(80000);
// 3057         }
// 3058       }  
// 3059       for (i =ROW-1 ;i >=0 ; i--)
// 3060       {
// 3061         while(!(UART0_S1&UART_S1_TDRE_MASK));//等待数据到达
// 3062            UART0_D = left_black[i];
// 3063         Delay_MS(80000);
// 3064       }
// 3065       for (i =ROW-1 ;i >=0 ; i--)
// 3066       {
// 3067          while(!(UART0_S1&UART_S1_TDRE_MASK));//等待数据到达
// 3068          UART0_D = right_black[i];
// 3069          Delay_MS(80000);
// 3070       }
// 3071       for (i =ROW-1 ;i >=0 ; i--)
// 3072       {
// 3073         while(!(UART0_S1&UART_S1_TDRE_MASK));//等待数据到达
// 3074         UART0_D = center_white[i];
// 3075         Delay_MS(80000);
// 3076       }
// 3077       
// 3078      
// 3079         while(!(UART0_S1&UART_S1_TDRE_MASK));   //等待数据到达
// 3080         UART0_D = (uint8)bottom_whitebase;
// 3081         while(!(UART0_S1&UART_S1_TDRE_MASK));   //等待数据到达
// 3082         UART0_D = (uint8)control_top_whiteline;
// 3083       send_mes = 0;  //发送一次即可，所以要清零
// 3084    }
// 3085    else if (send_mes == 3)  //便于调试
// 3086     {  
// 3087         if(!sci_temp)    ////////////////////////////////////////////$$$$$$4$$$$$$$$$$$$$/////////////////////////////////////////////////////////////
// 3088         {
// 3089        while(!(UART0_S1&UART_S1_TDRE_MASK));
// 3090        UART0_D = (uint8)(RealSpeed); //speed_feedback
// 3091        sci_temp = !sci_temp;
// 3092         }
// 3093         else
// 3094         {
// 3095          while(!(UART0_S1&UART_S1_TDRE_MASK));//等待数据到达
// 3096          UART0_D= (uint8)( SpeedPIDout);
// 3097           sci_temp = !sci_temp;
// 3098         }
// 3099         //       send_mes = 0;不清0是为了连续发送
// 3100       }
// 3101        else if (send_mes == 4)  //便于调试
// 3102     {  
// 3103         if(!sci_temp)
// 3104         {
// 3105        while(!(UART0_S1&UART_S1_TDRE_MASK));
// 3106        UART0_D = (uint8)(f_abs16(0 - angle)/2);//speed_feedback  79---8d
// 3107        sci_temp = !sci_temp;
// 3108         }
// 3109         else
// 3110         {
// 3111          while(!(UART0_S1&UART_S1_TDRE_MASK));//等待数据到达
// 3112          UART0_D= (uint8)(direction);         //  37 -- 39
// 3113           sci_temp = !sci_temp;
// 3114         }
// 3115         //       send_mes = 0;不清0是为了连续发送
// 3116       }
// 3117            else if (send_mes == 5)  //便于调试
// 3118     {  
// 3119         if(!sci_temp)
// 3120         {
// 3121        while(!(UART0_S1&UART_S1_TDRE_MASK));
// 3122        UART0_D = (uint8)(top_whiteline);//speed_feedback  79---8d
// 3123        sci_temp = !sci_temp;
// 3124         }
// 3125         else
// 3126         {
// 3127          while(!(UART0_S1&UART_S1_TDRE_MASK));//等待数据到达
// 3128          UART0_D= (uint8)(control_top_whiteline);         //  37 -- 39
// 3129           sci_temp = !sci_temp;
// 3130         }
// 3131         //       send_mes = 0;不清0是为了连续发送
// 3132       }
// 3133     else if (send_mes =='p')  //停车
// 3134     {
// 3135        while(!(UART0_S1&UART_S1_TDRE_MASK));   //等待数据到达
// 3136        stopflag = 1;
// 3137        send_mes = 0;
// 3138     }
// 3139     else if (send_mes == 's')  //启动
// 3140     {
// 3141        while(!(UART0_S1&UART_S1_TDRE_MASK));   //等待数据到达
// 3142        stopflag = 0;
// 3143        send_mes = 0;  
// 3144     }
// 3145     EnableInterrupts;
// 3146 }*/
// 3147 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 3148 void scan_boma(void)
// 3149 {
// 3150   uint32 temp4=0;
scan_boma:
        MOVS     R0,#+0
// 3151   uint8 temp0=0;
        MOVS     R1,#+0
// 3152   //uint8 temp1=0;
// 3153  
// 3154   temp4 = GPIOA_PDIR;   //读PTD6~PTD13 
        LDR.W    R2,??DataTable30_8  ;; 0x400ff010
        LDR      R2,[R2, #+0]
        MOVS     R0,R2
// 3155   
// 3156   temp0 = (uint8)((temp4 >> 24) & 0x00000001);
        LSRS     R2,R0,#+24
        ANDS     R2,R2,#0x1
        MOVS     R1,R2
// 3157  
// 3158    if(temp0 == 1)   //对应的是拨码8
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+1
        BNE.N    ??scan_boma_0
// 3159    lcd_debug  = 1;  //点亮的状态为按键调节时间，若调节完毕，则拨码检测结束，程序向下运行
        MOVS     R2,#+1
        LDR.N    R3,??DataTable28_9
        STRB     R2,[R3, #+0]
        B.N      ??scan_boma_1
// 3160   else
// 3161      lcd_debug = 0;
??scan_boma_0:
        MOVS     R2,#+0
        LDR.N    R3,??DataTable28_9
        STRB     R2,[R3, #+0]
// 3162   
// 3163   temp0= (uint8)((temp4 >>27) & 0x00000001);
??scan_boma_1:
        LSRS     R2,R0,#+27
        ANDS     R2,R2,#0x1
        MOVS     R1,R2
// 3164   
// 3165   if(temp0==1)
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+1
        BNE.N    ??scan_boma_2
// 3166   {
// 3167     stop_special_flag=0;
        MOVS     R2,#+0
        LDR.W    R3,??DataTable30_9
        STRB     R2,[R3, #+0]
        B.N      ??scan_boma_3
// 3168   }
// 3169   
// 3170   else
// 3171   {
// 3172     stop_special_flag=1; 
??scan_boma_2:
        MOVS     R2,#+1
        LDR.W    R3,??DataTable30_9
        STRB     R2,[R3, #+0]
// 3173     
// 3174   }
// 3175    temp0= (uint8)((temp4 >>26) & 0x00000001);
??scan_boma_3:
        LSRS     R2,R0,#+26
        ANDS     R2,R2,#0x1
        MOVS     R1,R2
// 3176   
// 3177   if(temp0==1)
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+1
        BNE.N    ??scan_boma_4
// 3178   {
// 3179     bm3=0;
        MOVS     R2,#+0
        LDR.W    R3,??DataTable30_10
        STRB     R2,[R3, #+0]
        B.N      ??scan_boma_5
// 3180   }
// 3181   
// 3182   else
// 3183   {
// 3184     bm3=1; 
??scan_boma_4:
        MOVS     R2,#+1
        LDR.W    R3,??DataTable30_10
        STRB     R2,[R3, #+0]
// 3185     
// 3186   }
// 3187   
// 3188   
// 3189  /* temp0 = (uint8)((temp4 >> 1) & 0x00000001);//对应的是拨码7
// 3190   if(temp0 == 1)
// 3191      redraw_control=1;  //拨亮则刷屏
// 3192   else
// 3193       redraw_control=0; 
// 3194   
// 3195    //  start_stop_cs 起跑线检测的片选信号*/
// 3196     temp0 = (uint8)((temp4 >> 25) & 0x00000001);//0x00000800
??scan_boma_5:
        LSRS     R2,R0,#+25
        ANDS     R2,R2,#0x1
        MOVS     R1,R2
// 3197    if(temp0 == 1)
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+1
        BNE.N    ??scan_boma_6
// 3198     feng = 0;
        MOVS     R2,#+0
        LDR.W    R3,??DataTable31
        STRB     R2,[R3, #+0]
        B.N      ??scan_boma_7
// 3199    else
// 3200     feng = 1;
??scan_boma_6:
        MOVS     R2,#+1
        LDR.W    R3,??DataTable31
        STRB     R2,[R3, #+0]
// 3201    
// 3202   //  停车选择信号 默认状况下是用摄像头检测，当拨码拨上等亮了之后，则用干簧管检测
// 3203  /*  temp = !(uint8)((temp1 >> 3) & 0x00000001);//0x00000800
// 3204       if(temp == 1)
// 3205      stop_check_cs = 1;  //    用干簧管检测
// 3206       else
// 3207      stop_check_cs = 0;     //用摄像头检测  灯不亮*/
// 3208    
// 3209 }
??scan_boma_7:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26:
        DC32     g_nCarAngle

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_1:
        DC32     angle_kd

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 3210 void   FantingOut()
// 3211 {
// 3212           int16 temp4;
// 3213           temp4 = angle-re_angle;
FantingOut:
        LDR.W    R1,??DataTable30_11
        LDRH     R1,[R1, #+0]
        LDR.W    R2,??DataTable31_1
        LDRH     R2,[R2, #+0]
        SUBS     R1,R1,R2
        MOVS     R0,R1
// 3214           angleout = (int16)(temp4*(sumbe3 + 1)/16+ re_angle) ;//+  speeddiff*0;
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LDR.W    R1,??DataTable31_2
        LDRH     R1,[R1, #+0]
        ADDS     R1,R1,#+1
        MUL      R1,R1,R0
        MOVS     R2,#+16
        SDIV     R1,R1,R2
        LDR.W    R2,??DataTable31_1
        LDRH     R2,[R2, #+0]
        ADDS     R1,R2,R1
        LDR.W    R2,??DataTable31_3
        STRH     R1,[R2, #+0]
// 3215           
// 3216 }
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable27:
        DC32     0x40039004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable27_1:
        DC32     g_nRightCount

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable27_2:
        DC32     0x400b8004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable27_3:
        DC32     g_nLeftCount

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable27_4:
        DC32     0xeb851eb8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable27_5:
        DC32     0x3faeb851

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable27_6:
        DC32     LeftRealSpeed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable27_7:
        DC32     RightRealSpeed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable27_8:
        DC32     RealSpeed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable27_9:
        DC32     Speed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable27_10:
        DC32     Speed_error

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable27_11:
        DC32     Speed_limit

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable27_12:
        DC32     speed_kp

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable27_13:
        DC32     motor_P

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable27_14:
        DC32     motor_I

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable27_15:
        DC32     0x43fa0001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable27_16:
        DC32     0xc3fa0000
// 3217 
// 3218 /*------------------------------------------------------------------------------
// 3219                                主函数               
// 3220 ------------------------------------------------------------------------------*/
// 3221 

        SECTION `.data`:DATA:REORDER:NOROOT(1)
// 3222 uint16 set_up_time=50;
set_up_time:
        DATA
        DC16 50

        SECTION `.data`:DATA:REORDER:NOROOT(1)
// 3223 uint16 reset_count=50;
reset_count:
        DATA
        DC16 50

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
// 3224 uint16 lcd_ref_p1_record =0,lcd_ref_p2_record =0;
lcd_ref_p1_record:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
lcd_ref_p2_record:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// 3225 float speed_kp_record=0;
speed_kp_record:
        DS8 4
// 3226 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 3227 void car_set_start()
// 3228 {
car_set_start:
        PUSH     {R7,LR}
// 3229  
// 3230   if(set_up_time>0)
        LDR.W    R0,??DataTable31_4
        LDRH     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??car_set_start_0
// 3231               {                                         
// 3232                         
// 3233                         angle_kp_set=560;
        LDR.W    R0,??DataTable31_5  ;; 0x440c0000
        LDR.W    R1,??DataTable31_6
        STR      R0,[R1, #+0]
// 3234                         angle_kd_set=10.3;
        LDR.W    R0,??DataTable31_7  ;; 0x4124cccd
        LDR.W    R1,??DataTable31_8
        STR      R0,[R1, #+0]
// 3235                         speed_kp=speed_kp_record+30;
        LDR.W    R0,??DataTable31_9
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable31_10  ;; 0x41f00000
        BL       __aeabi_fadd
        LDR.W    R1,??DataTable31_11
        STR      R0,[R1, #+0]
// 3236                         speed_ki=0.5;
        MOVS     R0,#+1056964608
        LDR.N    R1,??DataTable28_1
        STR      R0,[R1, #+0]
// 3237                         Speed_limit=Speed_limit_record+70;    
        LDR.W    R0,??DataTable31_12
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+70
        LDR.W    R1,??DataTable31_13
        STRH     R0,[R1, #+0]
        B.N      ??car_set_start_1
// 3238               } 
// 3239               else if(set_up_time==0)  //
??car_set_start_0:
        LDR.W    R0,??DataTable31_4
        LDRH     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??car_set_start_1
// 3240               {
// 3241                         if(reset_count>0) 
        LDR.W    R0,??DataTable31_14
        LDRH     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??car_set_start_2
// 3242                         {
// 3243                                   reset_count--;  //
        LDR.W    R0,??DataTable31_14
        LDRH     R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.W    R1,??DataTable31_14
        STRH     R0,[R1, #+0]
// 3244                                   
// 3245                                   Speed_limit=10;
        MOVS     R0,#+10
        LDR.W    R1,??DataTable31_13
        STRH     R0,[R1, #+0]
// 3246                                   angle_kp_set=angle_kp;
        LDR.W    R0,??DataTable31_15
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable31_6
        STR      R0,[R1, #+0]
// 3247                                   angle_kd_set=angle_kd;
        LDR.W    R0,??DataTable31_16
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable31_8
        STR      R0,[R1, #+0]
// 3248                                   speed_kp=speed_kp_record;
        LDR.W    R0,??DataTable31_9
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable31_11
        STR      R0,[R1, #+0]
// 3249                                   speed_ki=0.3;
        LDR.W    R0,??DataTable31_17  ;; 0x3e99999a
        LDR.N    R1,??DataTable28_1
        STR      R0,[R1, #+0]
// 3250                                   lcd_ref_p1 =lcd_ref_p1_record-5;//
        LDR.W    R0,??DataTable31_18
        LDRSH    R0,[R0, #+0]
        SUBS     R0,R0,#+5
        LDR.W    R1,??DataTable31_19
        STRH     R0,[R1, #+0]
// 3251 
// 3252                                   lcd_ref_p2 =lcd_ref_p2_record-8;
        LDR.W    R0,??DataTable31_20
        LDRSH    R0,[R0, #+0]
        SUBS     R0,R0,#+8
        LDR.W    R1,??DataTable31_21
        STRH     R0,[R1, #+0]
// 3253                         } 
// 3254                          if(reset_count==0)
??car_set_start_2:
        LDR.W    R0,??DataTable31_14
        LDRH     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??car_set_start_1
// 3255                         {
// 3256                                   Speed_limit=Speed_limit_record;
        LDR.W    R0,??DataTable31_12
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable31_13
        STRH     R0,[R1, #+0]
// 3257                                   lcd_ref_p1 =lcd_ref_p1_record;
        LDR.W    R0,??DataTable31_18
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable31_19
        STRH     R0,[R1, #+0]
// 3258                                   lcd_ref_p2 =lcd_ref_p2_record;
        LDR.W    R0,??DataTable31_20
        LDRSH    R0,[R0, #+0]
        LDR.W    R1,??DataTable31_21
        STRH     R0,[R1, #+0]
// 3259                         }
// 3260           }
// 3261 
// 3262 }
??car_set_start_1:
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable28:
        DC32     anglePD

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable28_1:
        DC32     speed_ki

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable28_2:
        DC32     SpeedPID

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable28_3:
        DC32     SpeedPIDold

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable28_4:
        DC32     sumbe2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable28_5:
        DC32     0x42480000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable28_6:
        DC32     SpeedPIDout

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable28_7:
        DC32     0x3dcccccd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable28_8:
        DC32     close

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable28_9:
        DC32     lcd_debug

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable28_10:
        DC32     start1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable28_11:
        DC32     angleout

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable28_12:
        DC32     RightSpeedPwm

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable28_13:
        DC32     summ

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable28_14:
        DC32     LeftSpeedPwm

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable28_15:
        DC32     ting

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable28_16:
        DC32     ting_check_stop

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable28_17:
        DC32     0xfffff63c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable28_18:
        DC32     0x40038048

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable28_19:
        DC32     0x40038040

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable28_20:
        DC32     0x40038038

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable28_21:
        DC32     put_date

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable28_22:
        DC32     UARTx

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable28_23:
        DC32     send_date

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable28_24:
        DC32     0x40240000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable28_25:
        DC32     0x2bf20

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable28_26:
        DC32     0x40048038

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable28_27:
        DC32     0x4004a040

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable28_28:
        DC32     0x4004a044

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable28_29:
        DC32     0x40048034

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable28_30:
        DC32     0x4006a000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable28_31:
        DC32     0x4006a001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable28_32:
        DC32     0x4006a00a

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable28_33:
        DC32     0x4006a002
// 3263 

        SECTION `.data`:DATA:REORDER:NOROOT(1)
// 3264 uint16 stopcount=150;
stopcount:
        DATA
        DC16 150

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
// 3265 uint16 sumbe4=0,sumbe5=0,sumbe6=0,count_s=0;
sumbe4:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
sumbe5:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
sumbe6:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
count_s:
        DS8 2
// 3266 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 3267   void  main(void)
// 3268 {   
main:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
// 3269   volatile uint8 i;
// 3270   DisableInterrupts;               //禁止总中断 
        CPSID i
// 3271   delayms(40);
        MOVS     R0,#+40
        BL       delayms
// 3272   GIPO_init();
        BL       GIPO_init
// 3273   sensor_init();
        BL       sensor_init
// 3274   delayms(1000);
        MOV      R0,#+1000
        BL       delayms
// 3275   init_gyro();
        BL       init_gyro
// 3276    delayms(10);
        MOVS     R0,#+10
        BL       delayms
// 3277   pre_show();
        BL       pre_show
// 3278  
// 3279    FTM_PWM_init( );
        BL       FTM_PWM_init
// 3280    FTM_QUAD_init( ); 
        BL       FTM_QUAD_init
// 3281     
// 3282   GPIO_SET(PORTB, 10, 0);
        LDR.W    R0,??DataTable31_22
        LDR      R0,[R0, #+4]
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x400
        LDR.W    R1,??DataTable31_22
        LDR      R1,[R1, #+4]
        STR      R0,[R1, #+0]
// 3283   delayms(20);
        MOVS     R0,#+20
        BL       delayms
// 3284   GPIO_SET(PORTB, 10, 1);
        LDR.W    R0,??DataTable31_22
        LDR      R0,[R0, #+4]
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x400
        LDR.W    R1,??DataTable31_22
        LDR      R1,[R1, #+4]
        STR      R0,[R1, #+0]
// 3285   
// 3286   LCD_Init();
        BL       LCD_Init
// 3287   GetPower(); 
        BL       GetPower
// 3288   UART0_Init();                 //串口初始化   19200             PTB16 RXD    PTB17 TXD                           李靖康学长    
        BL       UART0_Init
// 3289   Initial();
        BL       Initial
// 3290   EXIT_Init();   
        BL       EXIT_Init
// 3291     OddEvenStatus = ODD_EVEN_STATUS;
        LDR.W    R0,??DataTable31_23  ;; 0x400ff050
        LDR      R0,[R0, #+0]
        UBFX     R0,R0,#+20,#+1
        ANDS     R0,R0,#0x1
        LDR.W    R1,??DataTable31_24
        STRB     R0,[R1, #+0]
// 3292     VIF = VIF_START;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable31_25
        STRB     R0,[R1, #+0]
// 3293  enable_irq(45);           //打开串口中断
        MOVS     R0,#+45
        BL       enable_irq
// 3294  enable_irq(88);           //打开行中断 
        MOVS     R0,#+88
        BL       enable_irq
// 3295   
// 3296   EnableInterrupts;			              //开总中断
        CPSIE i
// 3297   
// 3298   redraw();  
        BL       redraw
// 3299   while(1)
// 3300     {
// 3301       scan_boma();
??main_0:
        BL       scan_boma
// 3302       if(lcd_debug==1)
        LDR.W    R0,??DataTable31_26
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.W    ??main_1
// 3303     {  GPIO_SET(PORTB, 10,1);  
        LDR.W    R0,??DataTable31_22
        LDR      R0,[R0, #+4]
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x400
        LDR.W    R1,??DataTable31_22
        LDR      R1,[R1, #+4]
        STR      R0,[R1, #+0]
// 3304       if( sumbe2%10==0)
        LDR.W    R0,??DataTable31_27
        LDRH     R0,[R0, #+0]
        MOVS     R1,#+10
        SDIV     R2,R0,R1
        MLS      R0,R1,R2,R0
        CMP      R0,#+0
        BNE.N    ??main_2
// 3305        redraw();
        BL       redraw
// 3306       
// 3307        KeyScan(); 
??main_2:
        BL       KeyScan
// 3308        angle_kp_across=angle_kp+10;
        LDR.W    R0,??DataTable31_15
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable29_7  ;; 0x41200000
        BL       __aeabi_fadd
        LDR.W    R1,??DataTable31_28
        STR      R0,[R1, #+0]
// 3309        angle_kd_across=angle_kd+1;
        LDR.W    R0,??DataTable31_16
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1065353216
        BL       __aeabi_fadd
        LDR.W    R1,??DataTable31_29
        STR      R0,[R1, #+0]
// 3310        Speed_limit_record=Speed_limit;
        LDR.W    R0,??DataTable31_13
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable31_12
        STRH     R0,[R1, #+0]
// 3311        lcd_ref_p1_record=lcd_ref_p1;
        LDR.W    R0,??DataTable31_19
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable31_18
        STRH     R0,[R1, #+0]
// 3312        lcd_ref_p2_record=lcd_ref_p2;
        LDR.W    R0,??DataTable31_21
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable31_20
        STRH     R0,[R1, #+0]
// 3313        speed_kp_record=speed_kp;
        LDR.W    R0,??DataTable31_11
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable31_9
        STR      R0,[R1, #+0]
// 3314        BASE_OT=WHITE_BLACK_OT;
        LDR.W    R0,??DataTable30_2
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable31_30
        STRB     R0,[R1, #+0]
// 3315       begin=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable31_31
        STRB     R0,[R1, #+0]
// 3316       start1=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable31_32
        STRB     R0,[R1, #+0]
// 3317      angleout=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable31_3
        STRH     R0,[R1, #+0]
// 3318     
// 3319      sumbe4=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable31_33
        STRH     R0,[R1, #+0]
// 3320      sumbe5=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable31_34
        STRH     R0,[R1, #+0]
// 3321      sumbe6=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable31_35
        STRH     R0,[R1, #+0]
// 3322         if( stop_special_flag==1)
        LDR.W    R0,??DataTable30_9
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??main_3
// 3323         {
// 3324           Speed=Speed_set;
        LDR.N    R0,??DataTable29_11
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable31_36
        STRH     R0,[R1, #+0]
// 3325            stop_special(); 
        BL       stop_special
        B.N      ??main_4
// 3326        }
// 3327         else{
// 3328                Speed=0;
??main_3:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable31_36
        STRH     R0,[R1, #+0]
// 3329                 ting=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable31_37
        STRB     R0,[R1, #+0]
// 3330                ting1=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable31_38
        STRB     R0,[R1, #+0]
// 3331                ting_check_stop=0; 
        MOVS     R0,#+0
        LDR.W    R1,??DataTable31_39
        STRB     R0,[R1, #+0]
// 3332              } 
// 3333      set_up_time=50;
??main_4:
        MOVS     R0,#+50
        LDR.W    R1,??DataTable31_4
        STRH     R0,[R1, #+0]
// 3334      begin2=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable31_40
        STRB     R0,[R1, #+0]
// 3335      count_s=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable31_41
        STRH     R0,[R1, #+0]
// 3336      liu=1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable31_42
        STRB     R0,[R1, #+0]
// 3337     acce_static=ACCE_STATIC; 
        LDR.N    R0,??DataTable29_8
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable31_43
        STR      R0,[R1, #+0]
// 3338     }
// 3339 
// 3340        if(ImageReady==1&&lcd_debug==0)                                      //图像准备好，再决策
??main_1:
        LDR.W    R0,??DataTable31_44
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable31_26
        LDRB     R1,[R1, #+0]
        EORS     R1,R1,#0x1
        TST      R0,R1
        BEQ.W    ??main_0
// 3341        { TEST_TIME1(1);
        MOVS     R2,#+1
        MOVS     R1,#+6
        MOVS     R0,#+1
        BL       gpio_set
// 3342        
// 3343          if(start1==0)
        LDR.W    R0,??DataTable31_32
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??main_5
// 3344         {
// 3345           Speed=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable31_36
        STRH     R0,[R1, #+0]
// 3346          sumbe5++;
        LDR.W    R0,??DataTable31_34
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable31_34
        STRH     R0,[R1, #+0]
// 3347          if(sumbe5>150)
        LDR.W    R0,??DataTable31_34
        LDRH     R0,[R0, #+0]
        CMP      R0,#+151
        BLT.N    ??main_5
// 3348          {start1=1;sumbe5=0;Speed=Speed_set;}
        MOVS     R0,#+1
        LDR.W    R1,??DataTable31_32
        STRB     R0,[R1, #+0]
        MOVS     R0,#+0
        LDR.W    R1,??DataTable31_34
        STRH     R0,[R1, #+0]
        LDR.N    R0,??DataTable29_11
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable31_36
        STRH     R0,[R1, #+0]
// 3349         }
// 3350         
// 3351         if(start1==1)
??main_5:
        LDR.W    R0,??DataTable31_32
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.W    ??main_6
// 3352         {
// 3353            if(begin==0)
        LDR.W    R0,??DataTable31_31
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??main_7
// 3354          {
// 3355        
// 3356          if(sumbe4<100)
        LDR.W    R0,??DataTable31_33
        LDRH     R0,[R0, #+0]
        CMP      R0,#+100
        BGE.N    ??main_8
// 3357               { sumbe4++;begin=0;
        LDR.W    R0,??DataTable31_33
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable31_33
        STRH     R0,[R1, #+0]
        MOVS     R0,#+0
        LDR.W    R1,??DataTable31_31
        STRB     R0,[R1, #+0]
// 3358                 gpio_set (PORTB, 10,LOW );
        MOVS     R2,#+0
        MOVS     R1,#+10
        MOVS     R0,#+1
        BL       gpio_set
        B.N      ??main_7
// 3359               }
// 3360          else if(sumbe4>99)
??main_8:
        LDR.W    R0,??DataTable31_33
        LDRH     R0,[R0, #+0]
        CMP      R0,#+100
        BLT.N    ??main_7
// 3361            {
// 3362            begin=1;gpio_set (PORTB, 10,HIGH);
        MOVS     R0,#+1
        LDR.W    R1,??DataTable31_31
        STRB     R0,[R1, #+0]
        MOVS     R2,#+1
        MOVS     R1,#+10
        MOVS     R0,#+1
        BL       gpio_set
// 3363            }
// 3364          } 
// 3365            if(feng==1)
??main_7:
        LDR.W    R0,??DataTable31
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??main_9
// 3366            {
// 3367             if(set_up_time>0)   set_up_time--;
        LDR.W    R0,??DataTable31_4
        LDRH     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??main_10
        LDR.W    R0,??DataTable31_4
        LDRH     R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.W    R1,??DataTable31_4
        STRH     R0,[R1, #+0]
// 3368               car_set_start();
??main_10:
        BL       car_set_start
// 3369            }
// 3370         
// 3371          if(begin2==0)
??main_9:
        LDR.W    R0,??DataTable31_40
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??main_11
// 3372          {
// 3373           count_s++;
        LDR.W    R0,??DataTable31_41
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable31_41
        STRH     R0,[R1, #+0]
// 3374           if(count_s>stopcount)
        LDR.W    R0,??DataTable31_45
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable31_41
        LDRH     R1,[R1, #+0]
        CMP      R0,R1
        BCS.N    ??main_11
// 3375                   {begin2=1;count_s=0;}
        MOVS     R0,#+1
        LDR.W    R1,??DataTable31_40
        STRB     R0,[R1, #+0]
        MOVS     R0,#+0
        LDR.W    R1,??DataTable31_41
        STRH     R0,[R1, #+0]
// 3376          
// 3377          }
// 3378           
// 3379           
// 3380        for(i = 0;i< ROW ; i++)
??main_11:
        MOVS     R0,#+0
        STRB     R0,[SP, #+0]
??main_12:
        LDRB     R0,[SP, #+0]
        CMP      R0,#+50
        BGE.N    ??main_13
// 3381            for(j= 0;j<COLUMN;j++)
        MOVS     R0,#+0
        LDR.W    R1,??DataTable31_46
        STRB     R0,[R1, #+0]
??main_14:
        LDR.W    R0,??DataTable31_46
        LDRB     R0,[R0, #+0]
        CMP      R0,#+157
        BGE.N    ??main_15
// 3382            {
// 3383           /* 
// 3384              if(i>40&&VideoImage2[i][j]>30)
// 3385               {  
// 3386                VideoImage2[i][j]=VideoImage2[i][j]-2*(i-40);  
// 3387               }
// 3388            */
// 3389                if(i<10&&VideoImage2[i][j]<180)
        LDRB     R0,[SP, #+0]
        CMP      R0,#+10
        BGE.N    ??main_16
        LDR.W    R0,??DataTable30_3
        LDRB     R1,[SP, #+0]
        MOVS     R2,#+157
        MLA      R0,R2,R1,R0
        LDR.W    R1,??DataTable31_46
        LDRB     R1,[R1, #+0]
        LDRB     R0,[R1, R0]
        CMP      R0,#+180
        BGE.N    ??main_16
// 3390               {  
// 3391                VideoImage2[i][j]=VideoImage2[i][j]+15;  
        LDRB     R0,[SP, #+0]
        LDR.W    R1,??DataTable30_3
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R2,#+157
        MLA      R0,R2,R0,R1
        LDR.W    R1,??DataTable31_46
        LDRB     R1,[R1, #+0]
        LDR.W    R2,??DataTable30_3
        LDRB     R3,[SP, #+0]
        MOVS     R4,#+157
        MLA      R2,R4,R3,R2
        LDR.W    R3,??DataTable31_46
        LDRB     R3,[R3, #+0]
        LDRB     R2,[R3, R2]
        ADDS     R2,R2,#+15
        STRB     R2,[R1, R0]
// 3392               }
// 3393     
// 3394              if(VideoImage2[i][j] > WHITE_BLACK_OT)
??main_16:
        LDR.N    R0,??DataTable30_2
        LDRB     R0,[R0, #+0]
        LDR.N    R1,??DataTable30_3
        LDRB     R2,[SP, #+0]
        MOVS     R3,#+157
        MLA      R1,R3,R2,R1
        LDR.W    R2,??DataTable31_46
        LDRB     R2,[R2, #+0]
        LDRB     R1,[R2, R1]
        CMP      R0,R1
        BCS.N    ??main_17
// 3395              {
// 3396                  VideoImage1[i][j] = WHITE;
        LDR.W    R0,??DataTable31_47
        LDRB     R1,[SP, #+0]
        MOVS     R2,#+157
        MLA      R0,R2,R1,R0
        LDR.W    R1,??DataTable31_46
        LDRB     R1,[R1, #+0]
        MOVS     R2,#+255
        STRB     R2,[R1, R0]
        B.N      ??main_18
// 3397              }
// 3398              else
// 3399              {
// 3400                 VideoImage1[i][j] =BLACK;
??main_17:
        LDR.W    R0,??DataTable31_47
        LDRB     R1,[SP, #+0]
        MOVS     R2,#+157
        MLA      R0,R2,R1,R0
        LDR.W    R1,??DataTable31_46
        LDRB     R1,[R1, #+0]
        MOVS     R2,#+10
        STRB     R2,[R1, R0]
// 3401              }
// 3402            } 
??main_18:
        LDR.W    R0,??DataTable31_46
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable31_46
        STRB     R0,[R1, #+0]
        B.N      ??main_14
??main_15:
        LDRB     R0,[SP, #+0]
        ADDS     R0,R0,#+1
        STRB     R0,[SP, #+0]
        B.N      ??main_12
// 3403         
// 3404     
// 3405         Search_WhiteBase();
??main_13:
        BL       Search_WhiteBase
// 3406          
// 3407         if(find_whitebase_flag == 1)  
        LDR.W    R0,??DataTable31_48
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??main_19
// 3408         {
// 3409           Search_BlackEdge();
        BL       Search_BlackEdge
// 3410           Deal_BlackEdge();
        BL       Deal_BlackEdge
// 3411           get_line_information();
        BL       get_line_information
// 3412         }   
// 3413         
// 3414     //  if(feng==1)   gpio_set (PORTB, 10,LOW );       
// 3415      if(bm3==1)
??main_19:
        LDR.N    R0,??DataTable30_10
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??main_20
// 3416      {
// 3417       barrier();
        BL       barrier
// 3418       across_smile();
        BL       across_smile
// 3419       if(begin2==1)
        LDR.W    R0,??DataTable31_40
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??main_21
// 3420         check_start_stop_line();
        BL       check_start_stop_line
        B.N      ??main_21
// 3421      }
// 3422      
// 3423      else
// 3424      {
// 3425         ting_check_stop=0;
??main_20:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable31_39
        STRB     R0,[R1, #+0]
// 3426      }
// 3427      if(ting_check_stop==1)   gpio_set (PORTB, 10,LOW );
??main_21:
        LDR.W    R0,??DataTable31_39
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??main_22
        MOVS     R2,#+0
        MOVS     R1,#+10
        MOVS     R0,#+1
        BL       gpio_set
// 3428      
// 3429      Control();
??main_22:
        BL       Control
// 3430      
// 3431      if( stop_special_flag==1&&ting==0&&begin==1&&barrier_l==0&&barrier_r==0)
        LDR.N    R0,??DataTable30_9
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable31_37
        LDRB     R1,[R1, #+0]
        EORS     R1,R1,#0x1
        ANDS     R0,R1,R0
        LDR.W    R1,??DataTable31_31
        LDRB     R1,[R1, #+0]
        ANDS     R0,R1,R0
        LDR.W    R1,??DataTable31_49
        LDRB     R1,[R1, #+0]
        EORS     R1,R1,#0x1
        ANDS     R0,R1,R0
        LDR.W    R1,??DataTable31_50
        LDRB     R1,[R1, #+0]
        EORS     R1,R1,#0x1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        TST      R0,R1
        BEQ.N    ??main_23
// 3432      {
// 3433         stop_special(); 
        BL       stop_special
        B.N      ??main_24
// 3434      }
// 3435      else if(stop_special_flag==0)
??main_23:
        LDR.N    R0,??DataTable30_9
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??main_24
// 3436      {
// 3437          LCD_PrintImage((uint8 *)VideoImage1, 50, 157);     
        MOVS     R2,#+157
        MOVS     R1,#+50
        LDR.W    R0,??DataTable31_47
        BL       LCD_PrintImage
// 3438          ting=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable31_37
        STRB     R0,[R1, #+0]
// 3439       }
// 3440 
// 3441         SCI0_send_mesage();  
??main_24:
        BL       SCI0_send_mesage
// 3442       TEST_TIME1(0);         
        MOVS     R2,#+0
        MOVS     R1,#+6
        MOVS     R0,#+1
        BL       gpio_set
// 3443         }  
// 3444        while(ImageReady);   
??main_6:
        LDR.W    R0,??DataTable31_44
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??main_6
        B.N      ??main_0
// 3445      
// 3446        }
// 3447   
// 3448   } 
// 3449 
// 3450 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable29:
        DC32     0x40038030

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable29_1:
        DC32     OutData

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable29_2:
        DC32     put_cnt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable29_3:
        DC32     0x4006a004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable29_4:
        DC32     0x4006a007

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable29_5:
        DC32     error_servo_ref_d

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable29_6:
        DC32     error_servo_ref_p

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable29_7:
        DC32     0x41200000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable29_8:
        DC32     ACCE_STATIC

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable29_9:
        DC32     ??ts

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable29_10:
        DC32     ??sci_temp

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable29_11:
        DC32     Speed_set
// 3451 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 3452 void uart0_isr(void)          //串口中断
// 3453 {    
uart0_isr:
        PUSH     {R4,LR}
// 3454     DisableInterrupts;   // 关总中断也可以，但在有更高级中断存在里不推荐
        CPSID i
// 3455       uint8 ch;
// 3456      while(!(UART0_S1&UART_S1_RDRF_MASK));
??uart0_isr_0:
        LDR.W    R0,??DataTable31_51  ;; 0x4006a004
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+26
        BPL.N    ??uart0_isr_0
// 3457       ch = UART0_D;   
        LDR.W    R0,??DataTable31_52  ;; 0x4006a007
        LDRB     R0,[R0, #+0]
        MOVS     R4,R0
// 3458      if(deal_r_flag==1)
        LDR.W    R0,??DataTable31_53
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.W    ??uart0_isr_1
// 3459      {
// 3460       r_count++; 
        LDR.W    R0,??DataTable31_54
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable31_54
        STRH     R0,[R1, #+0]
// 3461       if(ch!=0)
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??uart0_isr_2
// 3462       {
// 3463         switch(r_count)
        LDR.W    R0,??DataTable31_54
        LDRH     R0,[R0, #+0]
        CMP      R0,#+1
        BEQ.N    ??uart0_isr_3
        CMP      R0,#+2
        BEQ.N    ??uart0_isr_4
        CMP      R0,#+3
        BEQ.N    ??uart0_isr_5
        CMP      R0,#+4
        BEQ.N    ??uart0_isr_6
        CMP      R0,#+5
        BEQ.N    ??uart0_isr_7
        CMP      R0,#+6
        BEQ.N    ??uart0_isr_8
        CMP      R0,#+7
        BEQ.N    ??uart0_isr_9
        CMP      R0,#+8
        BEQ.N    ??uart0_isr_10
        CMP      R0,#+9
        BEQ.N    ??uart0_isr_11
        CMP      R0,#+11
        BEQ.N    ??uart0_isr_12
        CMP      R0,#+12
        BEQ.N    ??uart0_isr_13
        B.N      ??uart0_isr_14
// 3464         {
// 3465         case 1:
// 3466               se1=ch;
??uart0_isr_3:
        LDR.W    R0,??DataTable31_55
        STRB     R4,[R0, #+0]
// 3467               break;
        B.N      ??uart0_isr_2
// 3468         case 2:
// 3469               angle_kp=( float)( (se1<<8)|ch );
??uart0_isr_4:
        LDR.W    R0,??DataTable31_55
        LDRB     R0,[R0, #+0]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ORRS     R0,R4,R0, LSL #+8
        BL       __aeabi_i2f
        LDR.W    R1,??DataTable31_15
        STR      R0,[R1, #+0]
// 3470               break;
        B.N      ??uart0_isr_2
// 3471         case 3:
// 3472               angle_kd=(float )( ch);
??uart0_isr_5:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R0,R4
        BL       __aeabi_ui2f
        LDR.W    R1,??DataTable31_16
        STR      R0,[R1, #+0]
// 3473               break;      
        B.N      ??uart0_isr_2
// 3474         case 4:
// 3475               se2=ch;
??uart0_isr_6:
        LDR.W    R0,??DataTable31_56
        STRB     R4,[R0, #+0]
// 3476               break;
        B.N      ??uart0_isr_2
// 3477         case 5:
// 3478              error_servo_ref_d =( uint16)( (se2<<8)|ch );
??uart0_isr_7:
        LDR.W    R0,??DataTable31_56
        LDRB     R0,[R0, #+0]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ORRS     R0,R4,R0, LSL #+8
        LDR.W    R1,??DataTable31_57
        STRH     R0,[R1, #+0]
// 3479               break;
        B.N      ??uart0_isr_2
// 3480         case 6:
// 3481               se2=(uint8)( ch);
??uart0_isr_8:
        LDR.W    R0,??DataTable31_56
        STRB     R4,[R0, #+0]
// 3482               break;
        B.N      ??uart0_isr_2
// 3483               
// 3484         case 7:
// 3485               error_servo_ref_p=( uint16)( (se2<<8)|ch );
??uart0_isr_9:
        LDR.W    R0,??DataTable31_56
        LDRB     R0,[R0, #+0]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ORRS     R0,R4,R0, LSL #+8
        LDR.W    R1,??DataTable31_58
        STRH     R0,[R1, #+0]
// 3486               break;
        B.N      ??uart0_isr_2
// 3487         case 8:
// 3488               speed_kp=(float )( ch);
??uart0_isr_10:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R0,R4
        BL       __aeabi_ui2f
        LDR.N    R1,??DataTable31_11
        STR      R0,[R1, #+0]
// 3489               break;
        B.N      ??uart0_isr_2
// 3490         case 9:
// 3491              speed_ki=(float)( ch )/10.0;
??uart0_isr_11:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R0,R4
        BL       __aeabi_ui2f
        BL       __aeabi_f2d
        MOVS     R2,#+0
        LDR.W    R3,??DataTable31_59  ;; 0x40240000
        BL       __aeabi_ddiv
        BL       __aeabi_d2f
        LDR.W    R1,??DataTable31_60
        STR      R0,[R1, #+0]
// 3492               break;
        B.N      ??uart0_isr_2
// 3493       //  case 10:
// 3494          //    Speed_set=(uint16 )( ch);
// 3495          //     break;
// 3496         case 11:
// 3497               se3=ch;
??uart0_isr_12:
        LDR.W    R0,??DataTable31_61
        STRB     R4,[R0, #+0]
// 3498               break;
        B.N      ??uart0_isr_2
// 3499         case 12:
// 3500               ACCE_STATIC=(float)( (se3<<8)|ch );
??uart0_isr_13:
        LDR.W    R0,??DataTable31_61
        LDRB     R0,[R0, #+0]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ORRS     R0,R4,R0, LSL #+8
        BL       __aeabi_i2f
        LDR.W    R1,??DataTable31_62
        STR      R0,[R1, #+0]
// 3501               break;
        B.N      ??uart0_isr_2
// 3502         /*case 12:
// 3503               se7=ch;
// 3504               break;   */   
// 3505         default:break;
// 3506         }
// 3507       }
// 3508       
// 3509       if(r_count==13)
??uart0_isr_14:
??uart0_isr_2:
        LDR.W    R0,??DataTable31_54
        LDRH     R0,[R0, #+0]
        CMP      R0,#+13
        BNE.N    ??uart0_isr_1
// 3510       {
// 3511         //response=1;
// 3512         deal_r_flag=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable31_53
        STRB     R0,[R1, #+0]
// 3513         r_count=0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable31_54
        STRH     R0,[R1, #+0]
// 3514       }
// 3515     }
// 3516    
// 3517       if(ch==0x40) //图像
??uart0_isr_1:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+64
        BNE.N    ??uart0_isr_15
// 3518       {
// 3519          send_mes=4;
        MOVS     R0,#+4
        LDR.N    R1,??DataTable30_1
        STRB     R0,[R1, #+0]
        B.N      ??uart0_isr_16
// 3520       }
// 3521      
// 3522       else if(ch==0x41)//fuwei
??uart0_isr_15:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+65
        BNE.N    ??uart0_isr_17
// 3523       {
// 3524          send_mes=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable30_1
        STRB     R0,[R1, #+0]
        B.N      ??uart0_isr_16
// 3525       }
// 3526       
// 3527       else if(ch==0x01)//停
??uart0_isr_17:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BNE.N    ??uart0_isr_18
// 3528       {
// 3529         ting=1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable31_37
        STRB     R0,[R1, #+0]
        B.N      ??uart0_isr_16
// 3530       }
// 3531       else if(ch==0x42)//参数获取
??uart0_isr_18:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+66
        BNE.N    ??uart0_isr_19
// 3532       {
// 3533         send_mes=1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable30_1
        STRB     R0,[R1, #+0]
        B.N      ??uart0_isr_16
// 3534         //SCI0_send_mesage(); 
// 3535       }
// 3536      
// 3537      else if( ch==0x43&&deal_r_flag==0 )//参数读取
??uart0_isr_19:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+67
        BNE.N    ??uart0_isr_20
        LDR.N    R0,??DataTable31_53
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??uart0_isr_20
// 3538      {
// 3539         deal_r_flag=1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable31_53
        STRB     R0,[R1, #+0]
// 3540         send_mes=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable30_1
        STRB     R0,[R1, #+0]
        B.N      ??uart0_isr_16
// 3541      }
// 3542      
// 3543       else if(ch==0x44) //直立波形
??uart0_isr_20:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+68
        BNE.N    ??uart0_isr_21
// 3544       {
// 3545         send_mes=2;
        MOVS     R0,#+2
        LDR.N    R1,??DataTable30_1
        STRB     R0,[R1, #+0]
        B.N      ??uart0_isr_16
// 3546         //SCI0_send_mesage(); 
// 3547       }
// 3548      
// 3549       else if(ch==0x45)//速度波形
??uart0_isr_21:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+69
        BNE.N    ??uart0_isr_22
// 3550       {
// 3551         send_mes=3;
        MOVS     R0,#+3
        LDR.N    R1,??DataTable30_1
        STRB     R0,[R1, #+0]
        B.N      ??uart0_isr_16
// 3552         //SCI0_send_mesage(); 
// 3553       }
// 3554      
// 3555      else if(ch==0x46) //待定
??uart0_isr_22:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+70
        BNE.N    ??uart0_isr_23
// 3556       {
// 3557         send_mes=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable30_1
        STRB     R0,[R1, #+0]
        B.N      ??uart0_isr_16
// 3558         //SCI0_send_mesage(); 
// 3559       }
// 3560      
// 3561      else if(ch==0x88)//低速发车
??uart0_isr_23:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+136
        BNE.N    ??uart0_isr_16
// 3562      {
// 3563         lcd_debug = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable31_26
        STRB     R0,[R1, #+0]
// 3564         stop_special_flag=1; 
        MOVS     R0,#+1
        LDR.N    R1,??DataTable30_9
        STRB     R0,[R1, #+0]
// 3565   //      Speed_set=20;
// 3566         
// 3567      }
// 3568    
// 3569     EnableInterrupts;
??uart0_isr_16:
        CPSIE i
// 3570 }
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30:
        DC32     0x4006a003

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_1:
        DC32     send_mes

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_2:
        DC32     WHITE_BLACK_OT

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_3:
        DC32     VideoImage2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_4:
        DC32     0x13880

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_5:
        DC32     left_black

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_6:
        DC32     right_black

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_7:
        DC32     center_white

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_8:
        DC32     0x400ff010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_9:
        DC32     stop_special_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_10:
        DC32     bm3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_11:
        DC32     angle
// 3571  
// 3572 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 3573 void PTB_isr(void)//对于场中断20ms和行中断63us都是摄像头的固有的频率，不需要用软件去定时
// 3574 {        
PTB_isr:
        PUSH     {R4,LR}
// 3575     uint16 i; 
// 3576    DisableInterrupts; 
        CPSID i
// 3577    PORTB_PCR22|=PORT_PCR_ISF_MASK;  //清除中断标志位/////////////////////////////////////////////////////////////////////////////////////////////////////  
        LDR.N    R0,??DataTable31_63  ;; 0x4004a058
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000000
        LDR.N    R1,??DataTable31_63  ;; 0x4004a058
        STR      R0,[R1, #+0]
// 3578    sumbel++;
        LDR.N    R0,??DataTable31_64
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable31_64
        STRH     R0,[R1, #+0]
// 3579     if(tingting==0)
        LDR.N    R0,??DataTable31_65
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.W    ??PTB_isr_0
// 3580   {
// 3581      if (VIF == VIF_START)                              //开始采样标志
        LDR.N    R0,??DataTable31_25
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??PTB_isr_1
// 3582       { 
// 3583         LineCount++;
        LDR.N    R0,??DataTable31_66
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable31_66
        STRH     R0,[R1, #+0]
// 3584         if(OddEvenStatus != ODD_EVEN_STATUS)         ///////////////////////////////////////////////////////////////////////////////////////////////
        LDR.N    R0,??DataTable31_24
        LDRB     R0,[R0, #+0]
        LDR.N    R1,??DataTable31_23  ;; 0x400ff050
        LDR      R1,[R1, #+0]
        LSRS     R1,R1,#+20
        ANDS     R1,R1,#0x1
        CMP      R0,R1
        BEQ.N    ??PTB_isr_2
// 3585         {
// 3586           OddEvenStatus = ODD_EVEN_STATUS;	//奇偶场标志
        LDR.N    R0,??DataTable31_23  ;; 0x400ff050
        LDR      R0,[R0, #+0]
        UBFX     R0,R0,#+20,#+1
        ANDS     R0,R0,#0x1
        LDR.N    R1,??DataTable31_24
        STRB     R0,[R1, #+0]
// 3587           VIF = VIF_WAITSAMPLE;   		//下一个状态为等待采样
        MOVS     R0,#+1
        LDR.N    R1,??DataTable31_25
        STRB     R0,[R1, #+0]
// 3588           VideoImageLine = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable31_67
        STRB     R0,[R1, #+0]
// 3589           LineCount = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable31_66
        STRH     R0,[R1, #+0]
// 3590           ImageReady = 0;   
        MOVS     R0,#+0
        LDR.N    R1,??DataTable31_44
        STRB     R0,[R1, #+0]
// 3591          }
// 3592           if( sumbel>= 16)    
??PTB_isr_2:
        LDR.N    R0,??DataTable31_64
        LDRH     R0,[R0, #+0]
        CMP      R0,#+16
        BLT.W    ??PTB_isr_3
// 3593        { 
// 3594         sumbel=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable31_64
        STRH     R0,[R1, #+0]
// 3595          tingting=1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable31_65
        STRB     R0,[R1, #+0]
        B.N      ??PTB_isr_3
// 3596        }  
// 3597        }
// 3598     else if (VIF == VIF_WAITSAMPLE)                 //等待采样,此时略去VIDEO_START_LINE行
??PTB_isr_1:
        LDR.N    R0,??DataTable31_25
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??PTB_isr_4
// 3599       { 
// 3600           LineCount++;
        LDR.N    R0,??DataTable31_66
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable31_66
        STRH     R0,[R1, #+0]
// 3601           if (LineCount >= VIDEO_START_LINE)
        LDR.N    R0,??DataTable31_66
        LDRH     R0,[R0, #+0]
        CMP      R0,#+80
        BLT.N    ??PTB_isr_5
// 3602           {
// 3603               VIF = VIF_SAMPLELINE;                 //下一个状态为采样状态
        MOVS     R0,#+2
        LDR.N    R1,??DataTable31_25
        STRB     R0,[R1, #+0]
// 3604           } 
// 3605             if( sumbel>= 16)    
??PTB_isr_5:
        LDR.N    R0,??DataTable31_64
        LDRH     R0,[R0, #+0]
        CMP      R0,#+16
        BLT.N    ??PTB_isr_3
// 3606        { 
// 3607         sumbel=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable31_64
        STRH     R0,[R1, #+0]
// 3608          tingting=1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable31_65
        STRB     R0,[R1, #+0]
        B.N      ??PTB_isr_3
// 3609        }  
// 3610       }
// 3611     else if (VIF == VIF_SAMPLELINE)              //开始采样
??PTB_isr_4:
        LDR.N    R0,??DataTable31_25
        LDRB     R0,[R0, #+0]
        CMP      R0,#+2
        BNE.N    ??PTB_isr_3
// 3612       {
// 3613           LineCount++;
        LDR.N    R0,??DataTable31_66
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable31_66
        STRH     R0,[R1, #+0]
// 3614           if (LineCount % 4== 0)                //每隔一行采一行
        LDR.N    R0,??DataTable31_66
        LDRH     R0,[R0, #+0]
        MOVS     R1,#+4
        SDIV     R2,R0,R1
        MLS      R2,R2,R1,R0
        CMP      R2,#+0
        BNE.N    ??PTB_isr_6
// 3615           {
// 3616               for (i = 0; i < COLUMN+PIANYI ; i++)        //每行扫描COLUMN+PIANYI个点(其中PIANYI个点需要被剔除掉，因为是行消隐点)
        MOVS     R0,#+0
        MOVS     R4,R0
??PTB_isr_7:
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+326
        BGT.N    ??PTB_isr_8
// 3617              {
// 3618                   if (i >=PIANYI )///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+170
        BLT.N    ??PTB_isr_9
// 3619                    {//采集的第一个点的坐标在真实的世界里是右下角，所以在数组中存储在第一行的最后一个位置
// 3620                      VideoImage2[VideoImageLine][COLUMN-1-i+PIANYI] = (uint8)(0x000000ff & GPIOE_PDIR);//将采集到的点直接放入到VideoImage2[][]中在init array（）中放到VideoImage1[][]中做处理
        LDR.N    R0,??DataTable31_68
        LDR.N    R1,??DataTable31_67
        LDRB     R1,[R1, #+0]
        MOVS     R2,#+157
        MLA      R0,R2,R1,R0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        SUBS     R0,R0,R4
        LDR.N    R1,??DataTable31_69  ;; 0x400ff110
        LDR      R1,[R1, #+0]
        STRB     R1,[R0, #+326]
// 3621                          Delay_MS(3);
        MOVS     R0,#+3
        BL       Delay_MS
// 3622                         asm("nop");
        nop
// 3623                         asm("nop");//汇编延时 
        nop
// 3624                   }
// 3625               }
??PTB_isr_9:
        ADDS     R4,R4,#+1
        B.N      ??PTB_isr_7
// 3626              VideoImageLine++;
??PTB_isr_8:
        LDR.N    R0,??DataTable31_67
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable31_67
        STRB     R0,[R1, #+0]
// 3627          if( sumbel>= 16)    
        LDR.N    R0,??DataTable31_64
        LDRH     R0,[R0, #+0]
        CMP      R0,#+16
        BLT.N    ??PTB_isr_6
// 3628        { 
// 3629         sumbel=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable31_64
        STRH     R0,[R1, #+0]
// 3630          tingting=1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable31_65
        STRB     R0,[R1, #+0]
// 3631        }  
// 3632           }
// 3633           
// 3634  
// 3635           if (VideoImageLine == ROW)      //采集行数大于设定的行数
??PTB_isr_6:
        LDR.N    R0,??DataTable31_67
        LDRB     R0,[R0, #+0]
        CMP      R0,#+50
        BNE.N    ??PTB_isr_3
// 3636           {
// 3637               ImageReady = 1;           //图像准备好
        MOVS     R0,#+1
        LDR.N    R1,??DataTable31_44
        STRB     R0,[R1, #+0]
// 3638               VIF = VIF_START;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable31_25
        STRB     R0,[R1, #+0]
        B.N      ??PTB_isr_3
// 3639           }
// 3640      }
// 3641   }
// 3642   
// 3643   else{ 
// 3644      sumbe2++;
??PTB_isr_0:
        LDR.N    R0,??DataTable31_27
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable31_27
        STRH     R0,[R1, #+0]
// 3645       sumbe3++;
        LDR.N    R0,??DataTable31_2
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable31_2
        STRH     R0,[R1, #+0]
// 3646      GetADValue();              
        BL       GetADValue
// 3647      GetAngle();                          
        BL       GetAngle
// 3648      CarAngleAdjust();            
        BL       CarAngleAdjust
// 3649        
// 3650       LineCount++;
        LDR.N    R0,??DataTable31_66
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable31_66
        STRH     R0,[R1, #+0]
// 3651        LineCount++;
        LDR.N    R0,??DataTable31_66
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable31_66
        STRH     R0,[R1, #+0]
// 3652      SpeedControlOut();
        BL       SpeedControlOut
// 3653      FantingOut();
        BL       FantingOut
// 3654      CarControlOut();    
        BL       CarControlOut
// 3655     tingting=0; 
        MOVS     R0,#+0
        LDR.N    R1,??DataTable31_65
        STRB     R0,[R1, #+0]
// 3656     
// 3657       }  
// 3658    if( sumbe2>=50)
??PTB_isr_3:
        LDR.N    R0,??DataTable31_27
        LDRH     R0,[R0, #+0]
        CMP      R0,#+50
        BLT.N    ??PTB_isr_10
// 3659    {  
// 3660       sumbe2=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable31_27
        STRH     R0,[R1, #+0]
// 3661       //SpeedControlCount = 0;
// 3662       SpeedControl();     
        BL       SpeedControl
// 3663    }  
// 3664   
// 3665  
// 3666  EnableInterrupts;   
??PTB_isr_10:
        CPSIE i
// 3667   
// 3668   
// 3669 }
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31:
        DC32     feng

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_1:
        DC32     re_angle

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_2:
        DC32     sumbe3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_3:
        DC32     angleout

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_4:
        DC32     set_up_time

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_5:
        DC32     0x440c0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_6:
        DC32     angle_kp_set

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_7:
        DC32     0x4124cccd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_8:
        DC32     angle_kd_set

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_9:
        DC32     speed_kp_record

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_10:
        DC32     0x41f00000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_11:
        DC32     speed_kp

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_12:
        DC32     Speed_limit_record

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_13:
        DC32     Speed_limit

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_14:
        DC32     reset_count

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_15:
        DC32     angle_kp

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_16:
        DC32     angle_kd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_17:
        DC32     0x3e99999a

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_18:
        DC32     lcd_ref_p1_record

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_19:
        DC32     lcd_ref_p1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_20:
        DC32     lcd_ref_p2_record

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_21:
        DC32     lcd_ref_p2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_22:
        DC32     GPIOx

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_23:
        DC32     0x400ff050

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_24:
        DC32     OddEvenStatus

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_25:
        DC32     Videoclo_Flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_26:
        DC32     lcd_debug

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_27:
        DC32     sumbe2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_28:
        DC32     angle_kp_across

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_29:
        DC32     angle_kd_across

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_30:
        DC32     BASE_OT

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_31:
        DC32     begin

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_32:
        DC32     start1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_33:
        DC32     sumbe4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_34:
        DC32     sumbe5

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_35:
        DC32     sumbe6

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_36:
        DC32     Speed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_37:
        DC32     ting

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_38:
        DC32     ting1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_39:
        DC32     ting_check_stop

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_40:
        DC32     begin2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_41:
        DC32     count_s

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_42:
        DC32     liu

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_43:
        DC32     acce_static

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_44:
        DC32     ImageReady

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_45:
        DC32     stopcount

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_46:
        DC32     j

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_47:
        DC32     VideoImage1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_48:
        DC32     find_whitebase_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_49:
        DC32     barrier_l

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_50:
        DC32     barrier_r

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_51:
        DC32     0x4006a004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_52:
        DC32     0x4006a007

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_53:
        DC32     deal_r_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_54:
        DC32     r_count

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_55:
        DC32     se1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_56:
        DC32     se2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_57:
        DC32     error_servo_ref_d

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_58:
        DC32     error_servo_ref_p

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_59:
        DC32     0x40240000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_60:
        DC32     speed_ki

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_61:
        DC32     se3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_62:
        DC32     ACCE_STATIC

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_63:
        DC32     0x4004a058

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_64:
        DC32     sumbel

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_65:
        DC32     tingting

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_66:
        DC32     LineCount

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_67:
        DC32     VideoImageLine

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_68:
        DC32     VideoImage2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_69:
        DC32     0x400ff110

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
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
// 3670 
// 3671 
// 
// 16 291 bytes in section .bss
//    154 bytes in section .data
//     44 bytes in section .rodata
// 23 090 bytes in section .text
// 
// 23 090 bytes of CODE  memory
//     44 bytes of CONST memory
// 16 445 bytes of DATA  memory
//
//Errors: none
//Warnings: 1
