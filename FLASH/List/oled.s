///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.1.7305/W32 for ARM       11/Jul/2014  10:44:34
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        F:\刘友才 (H)\飞思卡尔\liuyoucai\7.11\src\Sources\Drivers\oled\oled.c
//    Command line =  
//        "F:\刘友才
//        (H)\飞思卡尔\liuyoucai\7.11\src\Sources\Drivers\oled\oled.c" -D IAR
//        -D TWR_K60N512 -D DEBUG -lCN "F:\刘友才
//        (H)\飞思卡尔\liuyoucai\7.11\FLASH\List\" -lB "F:\刘友才
//        (H)\飞思卡尔\liuyoucai\7.11\FLASH\List\" -o "F:\刘友才
//        (H)\飞思卡尔\liuyoucai\7.11\FLASH\Obj\" --no_cse --no_unroll
//        --no_inline --no_code_motion --no_tbaa --no_clustering
//        --no_scheduling --debug --endian=little --cpu=Cortex-M4 -e --fpu=None
//        --dlib_config D:\IAR\arm\INC\c\DLib_Config_Normal.h -I "F:\刘友才
//        (H)\飞思卡尔\liuyoucai\7.11\src\Sources\Cpu\" -I "F:\刘友才
//        (H)\飞思卡尔\liuyoucai\7.11\src\Sources\App\" -I "F:\刘友才
//        (H)\飞思卡尔\liuyoucai\7.11\src\Sources\Drivers\adc\" -I "F:\刘友才
//        (H)\飞思卡尔\liuyoucai\7.11\src\Sources\Drivers\delay\" -I "F:\刘友才
//        (H)\飞思卡尔\liuyoucai\7.11\src\Sources\Drivers\FTM\" -I "F:\刘友才
//        (H)\飞思卡尔\liuyoucai\7.11\src\Sources\Drivers\gpio\" -I "F:\刘友才
//        (H)\飞思卡尔\liuyoucai\7.11\src\Sources\Drivers\lptmr\" -I "F:\刘友才
//        (H)\飞思卡尔\liuyoucai\7.11\src\Sources\Drivers\mcg\" -I "F:\刘友才
//        (H)\飞思卡尔\liuyoucai\7.11\src\Sources\Drivers\PIT\" -I "F:\刘友才
//        (H)\飞思卡尔\liuyoucai\7.11\src\Sources\Drivers\uart\" -I "F:\刘友才
//        (H)\飞思卡尔\liuyoucai\7.11\src\Sources\Drivers\oled\" -I "F:\刘友才
//        (H)\飞思卡尔\liuyoucai\7.11\src\Sources\Drivers\spi\" -On
//        --use_c++_inline
//    List file    =  F:\刘友才 (H)\飞思卡尔\liuyoucai\7.11\FLASH\List\oled.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN ACCE_STATIC
        EXTERN LeftRealSpeed
        EXTERN LeftSpeedPwm
        EXTERN RealSpeed
        EXTERN RightRealSpeed
        EXTERN RightSpeedPwm
        EXTERN SpeedPIDout
        EXTERN Speed_set
        EXTERN V
        EXTERN WHITE_BLACK_OT
        EXTERN __aeabi_cfcmple
        EXTERN __aeabi_cfrcmple
        EXTERN __aeabi_d2f
        EXTERN __aeabi_dadd
        EXTERN __aeabi_dmul
        EXTERN __aeabi_f2d
        EXTERN __aeabi_f2iz
        EXTERN __aeabi_fadd
        EXTERN __aeabi_fmul
        EXTERN __aeabi_fsub
        EXTERN __aeabi_i2f
        EXTERN __aeabi_memclr4
        EXTERN __aeabi_memset
        EXTERN __aeabi_ui2f
        EXTERN acce
        EXTERN acce_angle
        EXTERN anglePD
        EXTERN angle_kd
        EXTERN angle_kp
        EXTERN control_top_whiteline
        EXTERN da
        EXTERN ft1
        EXTERN fuxiao
        EXTERN g_nCarAngle
        EXTERN g_nLeftCount
        EXTERN g_nRightCount
        EXTERN gpio_init
        EXTERN huanjie
        EXTERN lcd_ref_d1
        EXTERN lcd_ref_d2
        EXTERN lcd_ref_p1
        EXTERN lcd_ref_p2
        EXTERN qing
        EXTERN speed_ki
        EXTERN speed_kp
        EXTERN steerpwmout
        EXTERN stopcount
        EXTERN summ
        EXTERN tingting_d
        EXTERN tingting_p
        EXTERN w
        EXTERN zhongjian

        PUBLIC Draw_BMP
        PUBLIC F6x8
        PUBLIC F8X16
        PUBLIC KeyScan
        PUBLIC LCD_CLS
        PUBLIC LCD_DLY_ms
        PUBLIC LCD_Fill
        PUBLIC LCD_Init
        PUBLIC LCD_PrintImage
        PUBLIC LCD_PutPixel
        PUBLIC LCD_Rectangle
        PUBLIC LCD_Set_Pos
        PUBLIC LCD_WrCmd
        PUBLIC LCD_WrDat
        PUBLIC LCD_clear_L
        PUBLIC LED_PrintImage
        PUBLIC MAIN_ConvertData
        PUBLIC change_value
        PUBLIC g_aucImageTable
        PUBLIC line_num
        PUBLIC page_num
        PUBLIC pre_show
        PUBLIC re_display
        PUBLIC redraw
        PUBLIC write_6_8_char
        PUBLIC write_6_8_number
        PUBLIC write_6_8_string
        PUBLIC write_8_16_char
        PUBLIC write_8_16_number
        PUBLIC write_8_16_string

// F:\刘友才 (H)\飞思卡尔\liuyoucai\7.11\src\Sources\Drivers\oled\oled.c
//    1 #include "include.h"
//    2 #include "oled.h"
//    3 
//    4 #define X_WIDTH 128
//    5 #define Y_WIDTH 64
//    6 
//    7 #define  LED_IMAGE_WHITE 255
//    8 
//    9 extern float V;
//   10 extern float angle_kp;
//   11 extern float angle_kd;
//   12 extern float RealSpeed;
//   13 extern float acce_angle;
//   14 extern float speed_kp;
//   15 extern float speed_ki;
//   16 extern int16 g_nLeftCount;
//   17 extern int16 g_nRightCount;
//   18 extern int16 ft1;
//   19 extern float  GYRO_STATIC;
//   20 
//   21 extern float steer_kp;
//   22 extern float steer_kd;
//   23 
//   24 extern float g_nCarAngle;
//   25 extern float acce,w;
//   26 extern float GYRO_STATIC,ACCE_STATIC;           //零点偏移量
//   27 extern float LeftRealSpeed,RightRealSpeed;
//   28 
//   29 extern int16 fanting;
//   30 extern int8 IntegrationTime;
//   31 extern int16 LeftSpeedPwm;
//   32 extern int16 RightSpeedPwm;
//   33 extern int16 anglePD;
//   34 extern int16 SpeedPIDout;
//   35 extern int16 steerpwmout;
//   36 extern uint8 control_top_whiteline;
//   37 //extern uint16 error_servo_ref_p; 
//   38 //extern uint16 error_servo_ref_d;   
//   39 extern int16 lcd_ref_p1 ; 
//   40 extern int16 lcd_ref_d1; 
//   41 extern int16 lcd_ref_p2 ; 
//   42 extern int16 lcd_ref_d2; 
//   43 extern int16 zhongjian;
//   44 //extern uint16 big;
//   45 extern int16 tingting_p;
//   46 extern int16 tingting_d;
//   47 extern uint8 huanjie;
//   48 extern uint8 qing;
//   49 extern  uint8 summ;
//   50 extern uint8 da;
//   51 extern uint8 fuxiao;

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   52 uint8 g_aucImageTable[60][128]; //用于在OLED屏上显示的图片缓存
g_aucImageTable:
        DS8 7680
//   53 
//   54 //extern uint8  Rg;
//   55 extern uint16 Speed_set;
//   56 extern uint16 stopcount;
//   57 extern char delaytime;
//   58 
//   59 extern uint8 WHITE_BLACK_OT;  

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   60 unsigned char page_num=0;     //页序号
page_num:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   61 unsigned char line_num=0;     //行序号
line_num:
        DS8 1

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//   62 unsigned char re_display=1;   //预显示标志位
re_display:
        DATA
        DC8 1

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_1:
        DATA
        DC8 "top:"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "V:"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "W:"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_4:
        DATA
        DC8 "acce:"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "Sp:"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_6:
        DATA
        DC8 "Rsp:"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_7:
        DATA
        DC8 "L_PWM:"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_8:
        DATA
        DC8 "R_PWM:"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_9:
        DATA
        DC8 "ACCE:"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_10:
        DATA
        DC8 "S_P_C:"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_11:
        DATA
        DC8 "set_d:"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_12:
        DATA
        DC8 "lcd_p1:"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_13:
        DATA
        DC8 "lcd_d1:"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_14:
        DATA
        DC8 "lcd_p2:"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_15:
        DATA
        DC8 "lcd_d2:"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_16:
        DATA
        DC8 "ang_kp:"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_17:
        DATA
        DC8 "ang_kd:"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_18:
        DATA
        DC8 "sped_kp:"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_19:
        DATA
        DC8 "sped_ki:"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_20:
        DATA
        DC8 "zhongj:"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_21:
        DATA
        DC8 "W_B_O:"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_22:
        DATA
        DC8 "ft1:"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_23:
        DATA
        DC8 "ting_p:"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_24:
        DATA
        DC8 "ting_d:"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_25:
        DATA
        DC8 "huanjie:"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_26:
        DATA
        DC8 "qing:"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_27:
        DATA
        DC8 "summ:"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "da:"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_29:
        DATA
        DC8 "fuxiao:"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_30:
        DATA
        DC8 "L_c:"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_31:
        DATA
        DC8 "R_c:"
        DC8 0, 0, 0
//   63 
//   64 
//   65 
//   66 
//   67 
//   68 //======================================
//   69 // 128X64I液晶底层驱动[6X8]字体库

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
//   70 const unsigned char F6x8[][6] =
F6x8:
        DATA
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 47, 0, 0, 0, 0, 7, 0, 7, 0, 0, 20, 127
        DC8 20, 127, 20, 0, 36, 42, 127, 42, 18, 0, 98, 100, 8, 19, 35, 0, 54
        DC8 73, 85, 34, 80, 0, 0, 5, 3, 0, 0, 0, 0, 28, 34, 65, 0, 0, 0, 65, 34
        DC8 28, 0, 0, 20, 8, 62, 8, 20, 0, 8, 8, 62, 8, 8, 0, 0, 0, 160, 96, 0
        DC8 0, 8, 8, 8, 8, 8, 0, 0, 96, 96, 0, 0, 0, 32, 16, 8, 4, 2, 0, 62, 81
        DC8 73, 69, 62, 0, 0, 66, 127, 64, 0, 0, 66, 97, 81, 73, 70, 0, 33, 65
        DC8 69, 75, 49, 0, 24, 20, 18, 127, 16, 0, 39, 69, 69, 69, 57, 0, 60
        DC8 74, 73, 73, 48, 0, 1, 113, 9, 5, 3, 0, 54, 73, 73, 73, 54, 0, 6, 73
        DC8 73, 41, 30, 0, 0, 54, 54, 0, 0, 0, 0, 86, 54, 0, 0, 0, 8, 20, 34
        DC8 65, 0, 0, 20, 20, 20, 20, 20, 0, 0, 65, 34, 20, 8, 0, 2, 1, 81, 9
        DC8 6, 0, 50, 73, 89, 81, 62, 0, 124, 18, 17, 18, 124, 0, 127, 73, 73
        DC8 73, 54, 0, 62, 65, 65, 65, 34, 0, 127, 65, 65, 34, 28, 0, 127, 73
        DC8 73, 73, 65, 0, 127, 9, 9, 9, 1, 0, 62, 65, 73, 73, 122, 0, 127, 8
        DC8 8, 8, 127, 0, 0, 65, 127, 65, 0, 0, 32, 64, 65, 63, 1, 0, 127, 8
        DC8 20, 34, 65, 0, 127, 64, 64, 64, 64, 0, 127, 2, 12, 2, 127, 0, 127
        DC8 4, 8, 16, 127, 0, 62, 65, 65, 65, 62, 0, 127, 9, 9, 9, 6, 0, 62, 65
        DC8 81, 33, 94, 0, 127, 9, 25, 41, 70, 0, 70, 73, 73, 73, 49, 0, 1, 1
        DC8 127, 1, 1, 0, 63, 64, 64, 64, 63, 0, 31, 32, 64, 32, 31, 0, 63, 64
        DC8 56, 64, 63, 0, 99, 20, 8, 20, 99, 0, 7, 8, 112, 8, 7, 0, 97, 81, 73
        DC8 69, 67, 0, 0, 127, 65, 65, 0, 0, 85, 42, 85, 42, 85, 0, 0, 65, 65
        DC8 127, 0, 0, 4, 2, 1, 2, 4, 0, 64, 64, 64, 64, 64, 0, 0, 1, 2, 4, 0
        DC8 0, 32, 84, 84, 84, 120, 0, 127, 72, 68, 68, 56, 0, 56, 68, 68, 68
        DC8 32, 0, 56, 68, 68, 72, 127, 0, 56, 84, 84, 84, 24, 0, 8, 126, 9, 1
        DC8 2, 0, 24, 164, 164, 164, 124, 0, 127, 8, 4, 4, 120, 0, 0, 68, 125
        DC8 64, 0, 0, 64, 128, 132, 125, 0, 0, 127, 16, 40, 68, 0, 0, 0, 65
        DC8 127, 64, 0, 0, 124, 4, 24, 4, 120, 0, 124, 8, 4, 4, 120, 0, 56, 68
        DC8 68, 68, 56, 0, 252, 36, 36, 36, 24, 0, 24, 36, 36, 24, 252, 0, 124
        DC8 8, 4, 4, 8, 0, 72, 84, 84, 84, 32, 0, 4, 63, 68, 64, 32, 0, 60, 64
        DC8 64, 32, 124, 0, 28, 32, 64, 32, 28, 0, 60, 64, 48, 64, 60, 0, 68
        DC8 40, 16, 40, 68, 0, 28, 160, 160, 160, 124, 0, 68, 100, 84, 76, 68
        DC8 20, 20, 20, 20, 20, 20
//   71 {
//   72     { 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 },   // sp
//   73     { 0x00, 0x00, 0x00, 0x2f, 0x00, 0x00 },   // !
//   74     { 0x00, 0x00, 0x07, 0x00, 0x07, 0x00 },   // "
//   75     { 0x00, 0x14, 0x7f, 0x14, 0x7f, 0x14 },   // #
//   76     { 0x00, 0x24, 0x2a, 0x7f, 0x2a, 0x12 },   // $
//   77     { 0x00, 0x62, 0x64, 0x08, 0x13, 0x23 },   // %
//   78     { 0x00, 0x36, 0x49, 0x55, 0x22, 0x50 },   // &
//   79     { 0x00, 0x00, 0x05, 0x03, 0x00, 0x00 },   // '
//   80     { 0x00, 0x00, 0x1c, 0x22, 0x41, 0x00 },   // (
//   81     { 0x00, 0x00, 0x41, 0x22, 0x1c, 0x00 },   // )
//   82     { 0x00, 0x14, 0x08, 0x3E, 0x08, 0x14 },   // *
//   83     { 0x00, 0x08, 0x08, 0x3E, 0x08, 0x08 },   // +
//   84     { 0x00, 0x00, 0x00, 0xA0, 0x60, 0x00 },   // ,
//   85     { 0x00, 0x08, 0x08, 0x08, 0x08, 0x08 },   // -
//   86     { 0x00, 0x00, 0x60, 0x60, 0x00, 0x00 },   // .
//   87     { 0x00, 0x20, 0x10, 0x08, 0x04, 0x02 },   // /
//   88     { 0x00, 0x3E, 0x51, 0x49, 0x45, 0x3E },   // 0
//   89     { 0x00, 0x00, 0x42, 0x7F, 0x40, 0x00 },   // 1
//   90     { 0x00, 0x42, 0x61, 0x51, 0x49, 0x46 },   // 2
//   91     { 0x00, 0x21, 0x41, 0x45, 0x4B, 0x31 },   // 3
//   92     { 0x00, 0x18, 0x14, 0x12, 0x7F, 0x10 },   // 4
//   93     { 0x00, 0x27, 0x45, 0x45, 0x45, 0x39 },   // 5
//   94     { 0x00, 0x3C, 0x4A, 0x49, 0x49, 0x30 },   // 6
//   95     { 0x00, 0x01, 0x71, 0x09, 0x05, 0x03 },   // 7
//   96     { 0x00, 0x36, 0x49, 0x49, 0x49, 0x36 },   // 8
//   97     { 0x00, 0x06, 0x49, 0x49, 0x29, 0x1E },   // 9
//   98     { 0x00, 0x00, 0x36, 0x36, 0x00, 0x00 },   // :
//   99     { 0x00, 0x00, 0x56, 0x36, 0x00, 0x00 },   // ;
//  100     { 0x00, 0x08, 0x14, 0x22, 0x41, 0x00 },   // <
//  101     { 0x00, 0x14, 0x14, 0x14, 0x14, 0x14 },   // =
//  102     { 0x00, 0x00, 0x41, 0x22, 0x14, 0x08 },   // >
//  103     { 0x00, 0x02, 0x01, 0x51, 0x09, 0x06 },   // ?
//  104     { 0x00, 0x32, 0x49, 0x59, 0x51, 0x3E },   // @
//  105     { 0x00, 0x7C, 0x12, 0x11, 0x12, 0x7C },   // A
//  106     { 0x00, 0x7F, 0x49, 0x49, 0x49, 0x36 },   // B
//  107     { 0x00, 0x3E, 0x41, 0x41, 0x41, 0x22 },   // C
//  108     { 0x00, 0x7F, 0x41, 0x41, 0x22, 0x1C },   // D
//  109     { 0x00, 0x7F, 0x49, 0x49, 0x49, 0x41 },   // E
//  110     { 0x00, 0x7F, 0x09, 0x09, 0x09, 0x01 },   // F
//  111     { 0x00, 0x3E, 0x41, 0x49, 0x49, 0x7A },   // G
//  112     { 0x00, 0x7F, 0x08, 0x08, 0x08, 0x7F },   // H
//  113     { 0x00, 0x00, 0x41, 0x7F, 0x41, 0x00 },   // I
//  114     { 0x00, 0x20, 0x40, 0x41, 0x3F, 0x01 },   // J
//  115     { 0x00, 0x7F, 0x08, 0x14, 0x22, 0x41 },   // K
//  116     { 0x00, 0x7F, 0x40, 0x40, 0x40, 0x40 },   // L
//  117     { 0x00, 0x7F, 0x02, 0x0C, 0x02, 0x7F },   // M
//  118     { 0x00, 0x7F, 0x04, 0x08, 0x10, 0x7F },   // N
//  119     { 0x00, 0x3E, 0x41, 0x41, 0x41, 0x3E },   // O
//  120     { 0x00, 0x7F, 0x09, 0x09, 0x09, 0x06 },   // P
//  121     { 0x00, 0x3E, 0x41, 0x51, 0x21, 0x5E },   // Q
//  122     { 0x00, 0x7F, 0x09, 0x19, 0x29, 0x46 },   // R
//  123     { 0x00, 0x46, 0x49, 0x49, 0x49, 0x31 },   // S
//  124     { 0x00, 0x01, 0x01, 0x7F, 0x01, 0x01 },   // T
//  125     { 0x00, 0x3F, 0x40, 0x40, 0x40, 0x3F },   // U
//  126     { 0x00, 0x1F, 0x20, 0x40, 0x20, 0x1F },   // V
//  127     { 0x00, 0x3F, 0x40, 0x38, 0x40, 0x3F },   // W
//  128     { 0x00, 0x63, 0x14, 0x08, 0x14, 0x63 },   // X
//  129     { 0x00, 0x07, 0x08, 0x70, 0x08, 0x07 },   // Y
//  130     { 0x00, 0x61, 0x51, 0x49, 0x45, 0x43 },   // Z
//  131     { 0x00, 0x00, 0x7F, 0x41, 0x41, 0x00 },   // [
//  132     { 0x00, 0x55, 0x2A, 0x55, 0x2A, 0x55 },   // 55
//  133     { 0x00, 0x00, 0x41, 0x41, 0x7F, 0x00 },   // ]
//  134     { 0x00, 0x04, 0x02, 0x01, 0x02, 0x04 },   // ^
//  135     { 0x00, 0x40, 0x40, 0x40, 0x40, 0x40 },   // _
//  136     { 0x00, 0x00, 0x01, 0x02, 0x04, 0x00 },   // '
//  137     { 0x00, 0x20, 0x54, 0x54, 0x54, 0x78 },   // a
//  138     { 0x00, 0x7F, 0x48, 0x44, 0x44, 0x38 },   // b
//  139     { 0x00, 0x38, 0x44, 0x44, 0x44, 0x20 },   // c
//  140     { 0x00, 0x38, 0x44, 0x44, 0x48, 0x7F },   // d
//  141     { 0x00, 0x38, 0x54, 0x54, 0x54, 0x18 },   // e
//  142     { 0x00, 0x08, 0x7E, 0x09, 0x01, 0x02 },   // f
//  143     { 0x00, 0x18, 0xA4, 0xA4, 0xA4, 0x7C },   // g
//  144     { 0x00, 0x7F, 0x08, 0x04, 0x04, 0x78 },   // h
//  145     { 0x00, 0x00, 0x44, 0x7D, 0x40, 0x00 },   // i
//  146     { 0x00, 0x40, 0x80, 0x84, 0x7D, 0x00 },   // j
//  147     { 0x00, 0x7F, 0x10, 0x28, 0x44, 0x00 },   // k
//  148     { 0x00, 0x00, 0x41, 0x7F, 0x40, 0x00 },   // l
//  149     { 0x00, 0x7C, 0x04, 0x18, 0x04, 0x78 },   // m
//  150     { 0x00, 0x7C, 0x08, 0x04, 0x04, 0x78 },   // n
//  151     { 0x00, 0x38, 0x44, 0x44, 0x44, 0x38 },   // o
//  152     { 0x00, 0xFC, 0x24, 0x24, 0x24, 0x18 },   // p
//  153     { 0x00, 0x18, 0x24, 0x24, 0x18, 0xFC },   // q
//  154     { 0x00, 0x7C, 0x08, 0x04, 0x04, 0x08 },   // r
//  155     { 0x00, 0x48, 0x54, 0x54, 0x54, 0x20 },   // s
//  156     { 0x00, 0x04, 0x3F, 0x44, 0x40, 0x20 },   // t
//  157     { 0x00, 0x3C, 0x40, 0x40, 0x20, 0x7C },   // u
//  158     { 0x00, 0x1C, 0x20, 0x40, 0x20, 0x1C },   // v
//  159     { 0x00, 0x3C, 0x40, 0x30, 0x40, 0x3C },   // w
//  160     { 0x00, 0x44, 0x28, 0x10, 0x28, 0x44 },   // x
//  161     { 0x00, 0x1C, 0xA0, 0xA0, 0xA0, 0x7C },   // y
//  162     { 0x00, 0x44, 0x64, 0x54, 0x4C, 0x44 },   // z
//  163     { 0x14, 0x14, 0x14, 0x14, 0x14, 0x14 }    // horiz lines
//  164 };
//  165 //======================================================
//  166 // 128X64I液晶底层驱动[8X16]字体库
//  167 // 设计者: powerint
//  168 // 描  述: [8X16]西文字符的字模数据 (纵向取模,字节倒序)
//  169 // !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~
//  170 //======================================================

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
//  171 const unsigned char F8X16[]=
F8X16:
        DATA
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 248, 0, 0
        DC8 0, 0, 0, 0, 0, 51, 48, 0, 0, 0, 0, 16, 12, 6, 16, 12, 6, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 64, 192, 120, 64, 192, 120, 64, 0, 4, 63, 4, 4, 63
        DC8 4, 4, 0, 0, 112, 136, 252, 8, 48, 0, 0, 0, 24, 32, 255, 33, 30, 0
        DC8 0, 240, 8, 240, 0, 224, 24, 0, 0, 0, 33, 28, 3, 30, 33, 30, 0, 0
        DC8 240, 8, 136, 112, 0, 0, 0, 30, 33, 35, 36, 25, 39, 33, 16, 16, 22
        DC8 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 224, 24, 4, 2
        DC8 0, 0, 0, 0, 7, 24, 32, 64, 0, 0, 2, 4, 24, 224, 0, 0, 0, 0, 64, 32
        DC8 24, 7, 0, 0, 0, 64, 64, 128, 240, 128, 64, 64, 0, 2, 2, 1, 15, 1, 2
        DC8 2, 0, 0, 0, 0, 240, 0, 0, 0, 0, 1, 1, 1, 31, 1, 1, 1, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 128, 176, 112, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 48, 48, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 128, 96, 24, 4, 0, 96, 24, 6, 1, 0, 0, 0, 0, 224, 16
        DC8 8, 8, 16, 224, 0, 0, 15, 16, 32, 32, 16, 15, 0, 0, 16, 16, 248, 0
        DC8 0, 0, 0, 0, 32, 32, 63, 32, 32, 0, 0, 0, 112, 8, 8, 8, 136, 112, 0
        DC8 0, 48, 40, 36, 34, 33, 48, 0, 0, 48, 8, 136, 136, 72, 48, 0, 0, 24
        DC8 32, 32, 32, 17, 14, 0, 0, 0, 192, 32, 16, 248, 0, 0, 0, 7, 4, 36
        DC8 36, 63, 36, 0, 0, 248, 8, 136, 136, 8, 8, 0, 0, 25, 33, 32, 32, 17
        DC8 14, 0, 0, 224, 16, 136, 136, 24, 0, 0, 0, 15, 17, 32, 32, 17, 14, 0
        DC8 0, 56, 8, 8, 200, 56, 8, 0, 0, 0, 0, 63, 0, 0, 0, 0, 0, 112, 136, 8
        DC8 8, 136, 112, 0, 0, 28, 34, 33, 33, 34, 28, 0, 0, 224, 16, 8, 8, 16
        DC8 224, 0, 0, 0, 49, 34, 34, 17, 15, 0, 0, 0, 0, 192, 192, 0, 0, 0, 0
        DC8 0, 0, 48, 48, 0, 0, 0, 0, 0, 0, 128, 0, 0, 0, 0, 0, 0, 128, 96, 0
        DC8 0, 0, 0, 0, 0, 128, 64, 32, 16, 8, 0, 0, 1, 2, 4, 8, 16, 32, 0, 64
        DC8 64, 64, 64, 64, 64, 64, 0, 4, 4, 4, 4, 4, 4, 4, 0, 0, 8, 16, 32, 64
        DC8 128, 0, 0, 0, 32, 16, 8, 4, 2, 1, 0, 0, 112, 72, 8, 8, 8, 240, 0, 0
        DC8 0, 0, 48, 54, 1, 0, 0, 192, 48, 200, 40, 232, 16, 224, 0, 7, 24, 39
        DC8 36, 35, 20, 11, 0, 0, 0, 192, 56, 224, 0, 0, 0, 32, 60, 35, 2, 2
        DC8 39, 56, 32, 8, 248, 136, 136, 136, 112, 0, 0, 32, 63, 32, 32, 32
        DC8 17, 14, 0, 192, 48, 8, 8, 8, 8, 56, 0, 7, 24, 32, 32, 32, 16, 8, 0
        DC8 8, 248, 8, 8, 8, 16, 224, 0, 32, 63, 32, 32, 32, 16, 15, 0, 8, 248
        DC8 136, 136, 232, 8, 16, 0, 32, 63, 32, 32, 35, 32, 24, 0, 8, 248, 136
        DC8 136, 232, 8, 16, 0, 32, 63, 32, 0, 3, 0, 0, 0, 192, 48, 8, 8, 8, 56
        DC8 0, 0, 7, 24, 32, 32, 34, 30, 2, 0, 8, 248, 8, 0, 0, 8, 248, 8, 32
        DC8 63, 33, 1, 1, 33, 63, 32, 0, 8, 8, 248, 8, 8, 0, 0, 0, 32, 32, 63
        DC8 32, 32, 0, 0, 0, 0, 8, 8, 248, 8, 8, 0, 192, 128, 128, 128, 127, 0
        DC8 0, 0, 8, 248, 136, 192, 40, 24, 8, 0, 32, 63, 32, 1, 38, 56, 32, 0
        DC8 8, 248, 8, 0, 0, 0, 0, 0, 32, 63, 32, 32, 32, 32, 48, 0, 8, 248
        DC8 248, 0, 248, 248, 8, 0, 32, 63, 0, 63, 0, 63, 32, 0, 8, 248, 48
        DC8 192, 0, 8, 248, 8, 32, 63, 32, 0, 7, 24, 63, 0, 224, 16, 8, 8, 8
        DC8 16, 224, 0, 15, 16, 32, 32, 32, 16, 15, 0, 8, 248, 8, 8, 8, 8, 240
        DC8 0, 32, 63, 33, 1, 1, 1, 0, 0, 224, 16, 8, 8, 8, 16, 224, 0, 15, 24
        DC8 36, 36, 56, 80, 79, 0, 8, 248, 136, 136, 136, 136, 112, 0, 32, 63
        DC8 32, 0, 3, 12, 48, 32, 0, 112, 136, 8, 8, 8, 56, 0, 0, 56, 32, 33
        DC8 33, 34, 28, 0, 24, 8, 8, 248, 8, 8, 24, 0, 0, 0, 32, 63, 32, 0, 0
        DC8 0, 8, 248, 8, 0, 0, 8, 248, 8, 0, 31, 32, 32, 32, 32, 31, 0, 8, 120
        DC8 136, 0, 0, 200, 56, 8, 0, 0, 7, 56, 14, 1, 0, 0, 248, 8, 0, 248, 0
        DC8 8, 248, 0, 3, 60, 7, 0, 7, 60, 3, 0, 8, 24, 104, 128, 128, 104, 24
        DC8 8, 32, 48, 44, 3, 3, 44, 48, 32, 8, 56, 200, 0, 200, 56, 8, 0, 0, 0
        DC8 32, 63, 32, 0, 0, 0, 16, 8, 8, 8, 200, 56, 8, 0, 32, 56, 38, 33, 32
        DC8 32, 24, 0, 0, 0, 0, 254, 2, 2, 2, 0, 0, 0, 0, 127, 64, 64, 64, 0, 0
        DC8 12, 48, 192, 0, 0, 0, 0, 0, 0, 0, 1, 6, 56, 192, 0, 0, 2, 2, 2, 254
        DC8 0, 0, 0, 0, 64, 64, 64, 127, 0, 0, 0, 0, 0, 4, 2, 2, 2, 4, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 128, 128, 128, 128, 128
        DC8 128, 128, 128, 0, 2, 2, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 128, 128, 128, 128, 0, 0, 0, 25, 36, 34, 34, 34, 63, 32, 8, 248, 0
        DC8 128, 128, 0, 0, 0, 0, 63, 17, 32, 32, 17, 14, 0, 0, 0, 0, 128, 128
        DC8 128, 0, 0, 0, 14, 17, 32, 32, 32, 17, 0, 0, 0, 0, 128, 128, 136
        DC8 248, 0, 0, 14, 17, 32, 32, 16, 63, 32, 0, 0, 128, 128, 128, 128, 0
        DC8 0, 0, 31, 34, 34, 34, 34, 19, 0, 0, 128, 128, 240, 136, 136, 136
        DC8 24, 0, 32, 32, 63, 32, 32, 0, 0, 0, 0, 128, 128, 128, 128, 128, 0
        DC8 0, 107, 148, 148, 148, 147, 96, 0, 8, 248, 0, 128, 128, 128, 0, 0
        DC8 32, 63, 33, 0, 0, 32, 63, 32, 0, 128, 152, 152, 0, 0, 0, 0, 0, 32
        DC8 32, 63, 32, 32, 0, 0, 0, 0, 0, 128, 152, 152, 0, 0, 0, 192, 128
        DC8 128, 128, 127, 0, 0, 8, 248, 0, 0, 128, 128, 128, 0, 32, 63, 36, 2
        DC8 45, 48, 32, 0, 0, 8, 8, 248, 0, 0, 0, 0, 0, 32, 32, 63, 32, 32, 0
        DC8 0, 128, 128, 128, 128, 128, 128, 128, 0, 32, 63, 32, 0, 63, 32, 0
        DC8 63, 128, 128, 0, 128, 128, 128, 0, 0, 32, 63, 33, 0, 0, 32, 63, 32
        DC8 0, 0, 128, 128, 128, 128, 0, 0, 0, 31, 32, 32, 32, 32, 31, 0, 128
        DC8 128, 0, 128, 128, 0, 0, 0, 128, 255, 161, 32, 32, 17, 14, 0, 0, 0
        DC8 0, 128, 128, 128, 128, 0, 0, 14, 17, 32, 32, 160, 255, 128, 128
        DC8 128, 128, 0, 128, 128, 128, 0, 32, 32, 63, 33, 32, 0, 1, 0, 0, 0
        DC8 128, 128, 128, 128, 128, 0, 0, 51, 36, 36, 36, 36, 25, 0, 0, 128
        DC8 128, 224, 128, 128, 0, 0, 0, 0, 0, 31, 32, 32, 0, 0, 128, 128, 0, 0
        DC8 0, 128, 128, 0, 0, 31, 32, 32, 32, 16, 63, 32, 128, 128, 128, 0, 0
        DC8 128, 128, 128, 0, 1, 14, 48, 8, 6, 1, 0, 128, 128, 0, 128, 0, 128
        DC8 128, 128, 15, 48, 12, 3, 12, 48, 15, 0, 0, 128, 128, 0, 128, 128
        DC8 128, 0, 0, 32, 49, 46, 14, 49, 32, 0, 128, 128, 128, 0, 0, 128, 128
        DC8 128, 128, 129, 142, 112, 24, 6, 1, 0, 0, 128, 128, 128, 128, 128
        DC8 128, 0, 0, 33, 48, 44, 34, 33, 48, 0, 0, 0, 0, 0, 128, 124, 2, 2, 0
        DC8 0, 0, 0, 0, 63, 64, 64, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 255
        DC8 0, 0, 0, 0, 2, 2, 124, 128, 0, 0, 0, 0, 64, 64, 63, 0, 0, 0, 0, 0
        DC8 6, 1, 1, 2, 2, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0
//  172 {
//  173   0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,// 0
//  174   0x00,0x00,0x00,0xF8,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x33,0x30,0x00,0x00,0x00,//!1
//  175   0x00,0x10,0x0C,0x06,0x10,0x0C,0x06,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,//"2
//  176   0x40,0xC0,0x78,0x40,0xC0,0x78,0x40,0x00,0x04,0x3F,0x04,0x04,0x3F,0x04,0x04,0x00,//#3
//  177   0x00,0x70,0x88,0xFC,0x08,0x30,0x00,0x00,0x00,0x18,0x20,0xFF,0x21,0x1E,0x00,0x00,//$4
//  178   0xF0,0x08,0xF0,0x00,0xE0,0x18,0x00,0x00,0x00,0x21,0x1C,0x03,0x1E,0x21,0x1E,0x00,//%5
//  179   0x00,0xF0,0x08,0x88,0x70,0x00,0x00,0x00,0x1E,0x21,0x23,0x24,0x19,0x27,0x21,0x10,//&6
//  180   0x10,0x16,0x0E,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,//'7
//  181   0x00,0x00,0x00,0xE0,0x18,0x04,0x02,0x00,0x00,0x00,0x00,0x07,0x18,0x20,0x40,0x00,//(8
//  182   0x00,0x02,0x04,0x18,0xE0,0x00,0x00,0x00,0x00,0x40,0x20,0x18,0x07,0x00,0x00,0x00,//)9
//  183   0x40,0x40,0x80,0xF0,0x80,0x40,0x40,0x00,0x02,0x02,0x01,0x0F,0x01,0x02,0x02,0x00,//*10
//  184   0x00,0x00,0x00,0xF0,0x00,0x00,0x00,0x00,0x01,0x01,0x01,0x1F,0x01,0x01,0x01,0x00,//+11
//  185   0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x80,0xB0,0x70,0x00,0x00,0x00,0x00,0x00,//,12
//  186   0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x01,0x01,0x01,0x01,0x01,0x01,0x01,//-13
//  187   0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x30,0x30,0x00,0x00,0x00,0x00,0x00,//.14
//  188   0x00,0x00,0x00,0x00,0x80,0x60,0x18,0x04,0x00,0x60,0x18,0x06,0x01,0x00,0x00,0x00,///15
//  189   0x00,0xE0,0x10,0x08,0x08,0x10,0xE0,0x00,0x00,0x0F,0x10,0x20,0x20,0x10,0x0F,0x00,//016
//  190   0x00,0x10,0x10,0xF8,0x00,0x00,0x00,0x00,0x00,0x20,0x20,0x3F,0x20,0x20,0x00,0x00,//117
//  191   0x00,0x70,0x08,0x08,0x08,0x88,0x70,0x00,0x00,0x30,0x28,0x24,0x22,0x21,0x30,0x00,//218
//  192   0x00,0x30,0x08,0x88,0x88,0x48,0x30,0x00,0x00,0x18,0x20,0x20,0x20,0x11,0x0E,0x00,//319
//  193   0x00,0x00,0xC0,0x20,0x10,0xF8,0x00,0x00,0x00,0x07,0x04,0x24,0x24,0x3F,0x24,0x00,//420
//  194   0x00,0xF8,0x08,0x88,0x88,0x08,0x08,0x00,0x00,0x19,0x21,0x20,0x20,0x11,0x0E,0x00,//521
//  195   0x00,0xE0,0x10,0x88,0x88,0x18,0x00,0x00,0x00,0x0F,0x11,0x20,0x20,0x11,0x0E,0x00,//622
//  196   0x00,0x38,0x08,0x08,0xC8,0x38,0x08,0x00,0x00,0x00,0x00,0x3F,0x00,0x00,0x00,0x00,//723
//  197   0x00,0x70,0x88,0x08,0x08,0x88,0x70,0x00,0x00,0x1C,0x22,0x21,0x21,0x22,0x1C,0x00,//824
//  198   0x00,0xE0,0x10,0x08,0x08,0x10,0xE0,0x00,0x00,0x00,0x31,0x22,0x22,0x11,0x0F,0x00,//925
//  199   0x00,0x00,0x00,0xC0,0xC0,0x00,0x00,0x00,0x00,0x00,0x00,0x30,0x30,0x00,0x00,0x00,//:26
//  200   0x00,0x00,0x00,0x80,0x00,0x00,0x00,0x00,0x00,0x00,0x80,0x60,0x00,0x00,0x00,0x00,//;27
//  201   0x00,0x00,0x80,0x40,0x20,0x10,0x08,0x00,0x00,0x01,0x02,0x04,0x08,0x10,0x20,0x00,//<28
//  202   0x40,0x40,0x40,0x40,0x40,0x40,0x40,0x00,0x04,0x04,0x04,0x04,0x04,0x04,0x04,0x00,//=29
//  203   0x00,0x08,0x10,0x20,0x40,0x80,0x00,0x00,0x00,0x20,0x10,0x08,0x04,0x02,0x01,0x00,//>30
//  204   0x00,0x70,0x48,0x08,0x08,0x08,0xF0,0x00,0x00,0x00,0x00,0x30,0x36,0x01,0x00,0x00,//?31
//  205   0xC0,0x30,0xC8,0x28,0xE8,0x10,0xE0,0x00,0x07,0x18,0x27,0x24,0x23,0x14,0x0B,0x00,//@32
//  206   0x00,0x00,0xC0,0x38,0xE0,0x00,0x00,0x00,0x20,0x3C,0x23,0x02,0x02,0x27,0x38,0x20,//A33
//  207   0x08,0xF8,0x88,0x88,0x88,0x70,0x00,0x00,0x20,0x3F,0x20,0x20,0x20,0x11,0x0E,0x00,//B34
//  208   0xC0,0x30,0x08,0x08,0x08,0x08,0x38,0x00,0x07,0x18,0x20,0x20,0x20,0x10,0x08,0x00,//C35
//  209   0x08,0xF8,0x08,0x08,0x08,0x10,0xE0,0x00,0x20,0x3F,0x20,0x20,0x20,0x10,0x0F,0x00,//D36
//  210   0x08,0xF8,0x88,0x88,0xE8,0x08,0x10,0x00,0x20,0x3F,0x20,0x20,0x23,0x20,0x18,0x00,//E37
//  211   0x08,0xF8,0x88,0x88,0xE8,0x08,0x10,0x00,0x20,0x3F,0x20,0x00,0x03,0x00,0x00,0x00,//F38
//  212   0xC0,0x30,0x08,0x08,0x08,0x38,0x00,0x00,0x07,0x18,0x20,0x20,0x22,0x1E,0x02,0x00,//G39
//  213   0x08,0xF8,0x08,0x00,0x00,0x08,0xF8,0x08,0x20,0x3F,0x21,0x01,0x01,0x21,0x3F,0x20,//H40
//  214   0x00,0x08,0x08,0xF8,0x08,0x08,0x00,0x00,0x00,0x20,0x20,0x3F,0x20,0x20,0x00,0x00,//I41
//  215   0x00,0x00,0x08,0x08,0xF8,0x08,0x08,0x00,0xC0,0x80,0x80,0x80,0x7F,0x00,0x00,0x00,//J42
//  216   0x08,0xF8,0x88,0xC0,0x28,0x18,0x08,0x00,0x20,0x3F,0x20,0x01,0x26,0x38,0x20,0x00,//K43
//  217   0x08,0xF8,0x08,0x00,0x00,0x00,0x00,0x00,0x20,0x3F,0x20,0x20,0x20,0x20,0x30,0x00,//L44
//  218   0x08,0xF8,0xF8,0x00,0xF8,0xF8,0x08,0x00,0x20,0x3F,0x00,0x3F,0x00,0x3F,0x20,0x00,//M45
//  219   0x08,0xF8,0x30,0xC0,0x00,0x08,0xF8,0x08,0x20,0x3F,0x20,0x00,0x07,0x18,0x3F,0x00,//N46
//  220   0xE0,0x10,0x08,0x08,0x08,0x10,0xE0,0x00,0x0F,0x10,0x20,0x20,0x20,0x10,0x0F,0x00,//O47
//  221   0x08,0xF8,0x08,0x08,0x08,0x08,0xF0,0x00,0x20,0x3F,0x21,0x01,0x01,0x01,0x00,0x00,//P48
//  222   0xE0,0x10,0x08,0x08,0x08,0x10,0xE0,0x00,0x0F,0x18,0x24,0x24,0x38,0x50,0x4F,0x00,//Q49
//  223   0x08,0xF8,0x88,0x88,0x88,0x88,0x70,0x00,0x20,0x3F,0x20,0x00,0x03,0x0C,0x30,0x20,//R50
//  224   0x00,0x70,0x88,0x08,0x08,0x08,0x38,0x00,0x00,0x38,0x20,0x21,0x21,0x22,0x1C,0x00,//S51
//  225   0x18,0x08,0x08,0xF8,0x08,0x08,0x18,0x00,0x00,0x00,0x20,0x3F,0x20,0x00,0x00,0x00,//T52
//  226   0x08,0xF8,0x08,0x00,0x00,0x08,0xF8,0x08,0x00,0x1F,0x20,0x20,0x20,0x20,0x1F,0x00,//U53
//  227   0x08,0x78,0x88,0x00,0x00,0xC8,0x38,0x08,0x00,0x00,0x07,0x38,0x0E,0x01,0x00,0x00,//V54
//  228   0xF8,0x08,0x00,0xF8,0x00,0x08,0xF8,0x00,0x03,0x3C,0x07,0x00,0x07,0x3C,0x03,0x00,//W55
//  229   0x08,0x18,0x68,0x80,0x80,0x68,0x18,0x08,0x20,0x30,0x2C,0x03,0x03,0x2C,0x30,0x20,//X56
//  230   0x08,0x38,0xC8,0x00,0xC8,0x38,0x08,0x00,0x00,0x00,0x20,0x3F,0x20,0x00,0x00,0x00,//Y57
//  231   0x10,0x08,0x08,0x08,0xC8,0x38,0x08,0x00,0x20,0x38,0x26,0x21,0x20,0x20,0x18,0x00,//Z58
//  232   0x00,0x00,0x00,0xFE,0x02,0x02,0x02,0x00,0x00,0x00,0x00,0x7F,0x40,0x40,0x40,0x00,//[59
//  233   0x00,0x0C,0x30,0xC0,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x01,0x06,0x38,0xC0,0x00,//\60
//  234   0x00,0x02,0x02,0x02,0xFE,0x00,0x00,0x00,0x00,0x40,0x40,0x40,0x7F,0x00,0x00,0x00,//]61
//  235   0x00,0x00,0x04,0x02,0x02,0x02,0x04,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,//^62
//  236   0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x80,//_63
//  237   0x00,0x02,0x02,0x04,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,//`64
//  238   0x00,0x00,0x80,0x80,0x80,0x80,0x00,0x00,0x00,0x19,0x24,0x22,0x22,0x22,0x3F,0x20,//a65
//  239   0x08,0xF8,0x00,0x80,0x80,0x00,0x00,0x00,0x00,0x3F,0x11,0x20,0x20,0x11,0x0E,0x00,//b66
//  240   0x00,0x00,0x00,0x80,0x80,0x80,0x00,0x00,0x00,0x0E,0x11,0x20,0x20,0x20,0x11,0x00,//c67
//  241   0x00,0x00,0x00,0x80,0x80,0x88,0xF8,0x00,0x00,0x0E,0x11,0x20,0x20,0x10,0x3F,0x20,//d68
//  242   0x00,0x00,0x80,0x80,0x80,0x80,0x00,0x00,0x00,0x1F,0x22,0x22,0x22,0x22,0x13,0x00,//e69
//  243   0x00,0x80,0x80,0xF0,0x88,0x88,0x88,0x18,0x00,0x20,0x20,0x3F,0x20,0x20,0x00,0x00,//f70
//  244   0x00,0x00,0x80,0x80,0x80,0x80,0x80,0x00,0x00,0x6B,0x94,0x94,0x94,0x93,0x60,0x00,//g71
//  245   0x08,0xF8,0x00,0x80,0x80,0x80,0x00,0x00,0x20,0x3F,0x21,0x00,0x00,0x20,0x3F,0x20,//h72
//  246   0x00,0x80,0x98,0x98,0x00,0x00,0x00,0x00,0x00,0x20,0x20,0x3F,0x20,0x20,0x00,0x00,//i73
//  247   0x00,0x00,0x00,0x80,0x98,0x98,0x00,0x00,0x00,0xC0,0x80,0x80,0x80,0x7F,0x00,0x00,//j74
//  248   0x08,0xF8,0x00,0x00,0x80,0x80,0x80,0x00,0x20,0x3F,0x24,0x02,0x2D,0x30,0x20,0x00,//k75
//  249   0x00,0x08,0x08,0xF8,0x00,0x00,0x00,0x00,0x00,0x20,0x20,0x3F,0x20,0x20,0x00,0x00,//l76
//  250   0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x00,0x20,0x3F,0x20,0x00,0x3F,0x20,0x00,0x3F,//m77
//  251   0x80,0x80,0x00,0x80,0x80,0x80,0x00,0x00,0x20,0x3F,0x21,0x00,0x00,0x20,0x3F,0x20,//n78
//  252   0x00,0x00,0x80,0x80,0x80,0x80,0x00,0x00,0x00,0x1F,0x20,0x20,0x20,0x20,0x1F,0x00,//o79
//  253   0x80,0x80,0x00,0x80,0x80,0x00,0x00,0x00,0x80,0xFF,0xA1,0x20,0x20,0x11,0x0E,0x00,//p80
//  254   0x00,0x00,0x00,0x80,0x80,0x80,0x80,0x00,0x00,0x0E,0x11,0x20,0x20,0xA0,0xFF,0x80,//q81
//  255   0x80,0x80,0x80,0x00,0x80,0x80,0x80,0x00,0x20,0x20,0x3F,0x21,0x20,0x00,0x01,0x00,//r82
//  256   0x00,0x00,0x80,0x80,0x80,0x80,0x80,0x00,0x00,0x33,0x24,0x24,0x24,0x24,0x19,0x00,//s83
//  257   0x00,0x80,0x80,0xE0,0x80,0x80,0x00,0x00,0x00,0x00,0x00,0x1F,0x20,0x20,0x00,0x00,//t84
//  258   0x80,0x80,0x00,0x00,0x00,0x80,0x80,0x00,0x00,0x1F,0x20,0x20,0x20,0x10,0x3F,0x20,//u85
//  259   0x80,0x80,0x80,0x00,0x00,0x80,0x80,0x80,0x00,0x01,0x0E,0x30,0x08,0x06,0x01,0x00,//v86
//  260   0x80,0x80,0x00,0x80,0x00,0x80,0x80,0x80,0x0F,0x30,0x0C,0x03,0x0C,0x30,0x0F,0x00,//w87
//  261   0x00,0x80,0x80,0x00,0x80,0x80,0x80,0x00,0x00,0x20,0x31,0x2E,0x0E,0x31,0x20,0x00,//x88
//  262   0x80,0x80,0x80,0x00,0x00,0x80,0x80,0x80,0x80,0x81,0x8E,0x70,0x18,0x06,0x01,0x00,//y89
//  263   0x00,0x80,0x80,0x80,0x80,0x80,0x80,0x00,0x00,0x21,0x30,0x2C,0x22,0x21,0x30,0x00,//z90
//  264   0x00,0x00,0x00,0x00,0x80,0x7C,0x02,0x02,0x00,0x00,0x00,0x00,0x00,0x3F,0x40,0x40,//{91
//  265   0x00,0x00,0x00,0x00,0xFF,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0xFF,0x00,0x00,0x00,//|92
//  266   0x00,0x02,0x02,0x7C,0x80,0x00,0x00,0x00,0x00,0x40,0x40,0x3F,0x00,0x00,0x00,0x00,//}93
//  267   0x00,0x06,0x01,0x01,0x02,0x02,0x04,0x04,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,//~94
//  268 
//  269 };
//  270 
//  271 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  272 void LCD_WrDat(byte data)
//  273 {
//  274         byte i=8;
LCD_WrDat:
        MOVS     R1,#+8
//  275 	GPIOC_PDOR |=  GPIO_PDOR_PDO(GPIO_PIN(7));
        LDR.W    R2,??DataTable9  ;; 0x400ff080
        LDR      R2,[R2, #+0]
        ORRS     R2,R2,#0x80
        LDR.W    R3,??DataTable9  ;; 0x400ff080
        STR      R2,[R3, #+0]
//  276         asm("nop");
        nop
//  277         asm("nop");
        nop
//  278         asm("nop");
        nop
//  279         asm("nop");
        nop
//  280         asm("nop");
        nop
//  281         GPIOC_PDOR &= ~GPIO_PDOR_PDO(GPIO_PIN(10));
        LDR.W    R2,??DataTable9  ;; 0x400ff080
        LDR      R2,[R2, #+0]
        BICS     R2,R2,#0x400
        LDR.W    R3,??DataTable9  ;; 0x400ff080
        STR      R2,[R3, #+0]
//  282         asm("nop");
        nop
//  283         asm("nop");
        nop
//  284         asm("nop");
        nop
//  285         asm("nop");
        nop
//  286         asm("nop");    
        nop
//  287         while(i--)
??LCD_WrDat_0:
        MOVS     R2,R1
        SUBS     R1,R2,#+1
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+0
        BEQ.N    ??LCD_WrDat_1
//  288         {
//  289         if(data&0x80){GPIOC_PDOR |=  GPIO_PDOR_PDO(GPIO_PIN(9));}
        LSLS     R2,R0,#+24
        BPL.N    ??LCD_WrDat_2
        LDR.W    R2,??DataTable9  ;; 0x400ff080
        LDR      R2,[R2, #+0]
        ORRS     R2,R2,#0x200
        LDR.W    R3,??DataTable9  ;; 0x400ff080
        STR      R2,[R3, #+0]
        B.N      ??LCD_WrDat_3
//  290         else{GPIOC_PDOR &= ~GPIO_PDOR_PDO(GPIO_PIN(9));}
??LCD_WrDat_2:
        LDR.W    R2,??DataTable9  ;; 0x400ff080
        LDR      R2,[R2, #+0]
        BICS     R2,R2,#0x200
        LDR.W    R3,??DataTable9  ;; 0x400ff080
        STR      R2,[R3, #+0]
//  291         GPIOC_PDOR |=  GPIO_PDOR_PDO(GPIO_PIN(10)); 
??LCD_WrDat_3:
        LDR.W    R2,??DataTable9  ;; 0x400ff080
        LDR      R2,[R2, #+0]
        ORRS     R2,R2,#0x400
        LDR.W    R3,??DataTable9  ;; 0x400ff080
        STR      R2,[R3, #+0]
//  292         asm("nop");
        nop
//  293         asm("nop");
        nop
//  294         asm("nop");
        nop
//  295         asm("nop");
        nop
//  296         asm("nop");           
        nop
//  297         GPIOC_PDOR &= ~GPIO_PDOR_PDO(GPIO_PIN(10));   
        LDR.W    R2,??DataTable9  ;; 0x400ff080
        LDR      R2,[R2, #+0]
        BICS     R2,R2,#0x400
        LDR.W    R3,??DataTable9  ;; 0x400ff080
        STR      R2,[R3, #+0]
//  298         data<<=1;    
        LSLS     R0,R0,#+1
        B.N      ??LCD_WrDat_0
//  299   }
//  300 }
??LCD_WrDat_1:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  301 void LCD_WrCmd(byte cmd)
//  302 {
//  303      byte i=8;
LCD_WrCmd:
        MOVS     R1,#+8
//  304      GPIOC_PDOR &= ~GPIO_PDOR_PDO(GPIO_PIN(7));
        LDR.W    R2,??DataTable9  ;; 0x400ff080
        LDR      R2,[R2, #+0]
        BICS     R2,R2,#0x80
        LDR.W    R3,??DataTable9  ;; 0x400ff080
        STR      R2,[R3, #+0]
//  305      GPIOC_PDOR &= ~GPIO_PDOR_PDO(GPIO_PIN(10));
        LDR.W    R2,??DataTable9  ;; 0x400ff080
        LDR      R2,[R2, #+0]
        BICS     R2,R2,#0x400
        LDR.W    R3,??DataTable9  ;; 0x400ff080
        STR      R2,[R3, #+0]
//  306      while(i--)
??LCD_WrCmd_0:
        MOVS     R2,R1
        SUBS     R1,R2,#+1
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+0
        BEQ.N    ??LCD_WrCmd_1
//  307      {
//  308      if(cmd&0x80){GPIOC_PDOR |=  GPIO_PDOR_PDO(GPIO_PIN(9));}
        LSLS     R2,R0,#+24
        BPL.N    ??LCD_WrCmd_2
        LDR.W    R2,??DataTable9  ;; 0x400ff080
        LDR      R2,[R2, #+0]
        ORRS     R2,R2,#0x200
        LDR.W    R3,??DataTable9  ;; 0x400ff080
        STR      R2,[R3, #+0]
        B.N      ??LCD_WrCmd_3
//  309      else{GPIOC_PDOR &= ~GPIO_PDOR_PDO(GPIO_PIN(9));}
??LCD_WrCmd_2:
        LDR.W    R2,??DataTable9  ;; 0x400ff080
        LDR      R2,[R2, #+0]
        BICS     R2,R2,#0x200
        LDR.W    R3,??DataTable9  ;; 0x400ff080
        STR      R2,[R3, #+0]
//  310      GPIOC_PDOR |=  GPIO_PDOR_PDO(GPIO_PIN(10));
??LCD_WrCmd_3:
        LDR.W    R2,??DataTable9  ;; 0x400ff080
        LDR      R2,[R2, #+0]
        ORRS     R2,R2,#0x400
        LDR.W    R3,??DataTable9  ;; 0x400ff080
        STR      R2,[R3, #+0]
//  311       asm("nop");
        nop
//  312       asm("nop");
        nop
//  313       asm("nop");
        nop
//  314       asm("nop");
        nop
//  315       asm("nop");          
        nop
//  316      GPIOC_PDOR &= ~GPIO_PDOR_PDO(GPIO_PIN(10));    
        LDR.W    R2,??DataTable9  ;; 0x400ff080
        LDR      R2,[R2, #+0]
        BICS     R2,R2,#0x400
        LDR.W    R3,??DataTable9  ;; 0x400ff080
        STR      R2,[R3, #+0]
//  317      cmd<<=1;   
        LSLS     R0,R0,#+1
        B.N      ??LCD_WrCmd_0
//  318    } 	
//  319 }
??LCD_WrCmd_1:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  320 void LCD_Set_Pos(byte x, byte y)
//  321 { 
LCD_Set_Pos:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//  322   LCD_WrCmd(0xb0+y);
        SUBS     R0,R5,#+80
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LCD_WrCmd
//  323   LCD_WrCmd(((x&0xf0)>>4)|0x10);
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LSRS     R0,R4,#+4
        ORRS     R0,R0,#0x10
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LCD_WrCmd
//  324   LCD_WrCmd((x&0x0f)|0x01); 
        ANDS     R0,R4,#0xF
        ORRS     R0,R0,#0x1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LCD_WrCmd
//  325 } 
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  326 void LCD_Fill(byte bmp_data)
//  327 {
LCD_Fill:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
//  328 	byte y,x;
//  329 	
//  330 	for(y=0;y<8;y++)
        MOVS     R0,#+0
        MOVS     R5,R0
??LCD_Fill_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+8
        BGE.N    ??LCD_Fill_1
//  331 	{
//  332 		LCD_WrCmd(0xb0+y);
        SUBS     R0,R5,#+80
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LCD_WrCmd
//  333 		LCD_WrCmd(0x01);
        MOVS     R0,#+1
        BL       LCD_WrCmd
//  334 		LCD_WrCmd(0x10);
        MOVS     R0,#+16
        BL       LCD_WrCmd
//  335 		for(x=0;x<X_WIDTH;x++)
        MOVS     R0,#+0
        MOVS     R6,R0
??LCD_Fill_2:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+128
        BGE.N    ??LCD_Fill_3
//  336 			LCD_WrDat(bmp_data);
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LCD_WrDat
        ADDS     R6,R6,#+1
        B.N      ??LCD_Fill_2
//  337 	}
??LCD_Fill_3:
        ADDS     R5,R5,#+1
        B.N      ??LCD_Fill_0
//  338 }
??LCD_Fill_1:
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  339 void LCD_CLS(void)
//  340 {
LCD_CLS:
        PUSH     {R3-R5,LR}
//  341 	byte y,x;	
//  342 	for(y=0;y<8;y++)
        MOVS     R0,#+0
        MOVS     R4,R0
??LCD_CLS_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+8
        BGE.N    ??LCD_CLS_1
//  343 	{
//  344 		LCD_WrCmd(0xb0+y);
        SUBS     R0,R4,#+80
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LCD_WrCmd
//  345 		LCD_WrCmd(0x01);
        MOVS     R0,#+1
        BL       LCD_WrCmd
//  346 		LCD_WrCmd(0x10); 
        MOVS     R0,#+16
        BL       LCD_WrCmd
//  347 		for(x=0;x<X_WIDTH;x++)
        MOVS     R0,#+0
        MOVS     R5,R0
??LCD_CLS_2:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+128
        BGE.N    ??LCD_CLS_3
//  348                 {   
//  349 			LCD_WrDat(0);
        MOVS     R0,#+0
        BL       LCD_WrDat
//  350 
//  351                 }
        ADDS     R5,R5,#+1
        B.N      ??LCD_CLS_2
//  352         }
??LCD_CLS_3:
        ADDS     R4,R4,#+1
        B.N      ??LCD_CLS_0
//  353 }
??LCD_CLS_1:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  354 void LCD_clear_L(unsigned char x,unsigned char y)
//  355 {
LCD_clear_L:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//  356 	LCD_WrCmd(0xb0+y);
        SUBS     R0,R5,#+80
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LCD_WrCmd
//  357 	LCD_WrCmd(0x01);
        MOVS     R0,#+1
        BL       LCD_WrCmd
//  358 	LCD_WrCmd(0x10); 
        MOVS     R0,#+16
        BL       LCD_WrCmd
//  359         LCD_Set_Pos(x,y);
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LCD_Set_Pos
//  360 	for(;x<X_WIDTH;x++)
??LCD_clear_L_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+128
        BGE.N    ??LCD_clear_L_1
//  361         {
//  362 		LCD_WrDat(0);	
        MOVS     R0,#+0
        BL       LCD_WrDat
//  363         }
        ADDS     R4,R4,#+1
        B.N      ??LCD_clear_L_0
//  364 }
??LCD_clear_L_1:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  365 void LCD_DLY_ms(word ms)
//  366 {                         
//  367   word a;
//  368   while(ms)
LCD_DLY_ms:
??LCD_DLY_ms_0:
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        CMP      R0,#+0
        BEQ.N    ??LCD_DLY_ms_1
//  369   {
//  370     a=10000;
        MOVW     R2,#+10000
        MOVS     R1,R2
//  371     while(a--);
??LCD_DLY_ms_2:
        MOVS     R2,R1
        SUBS     R1,R2,#+1
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        CMP      R2,#+0
        BNE.N    ??LCD_DLY_ms_2
//  372     ms--;
        SUBS     R0,R0,#+1
        B.N      ??LCD_DLY_ms_0
//  373   }
//  374   return;
??LCD_DLY_ms_1:
        BX       LR               ;; return
//  375 }
//  376 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  377 void LCD_Init(void)        
//  378 {
LCD_Init:
        PUSH     {R7,LR}
//  379         // pin10,pin9为GPIO口 
//  380 	PORTC_PCR10=(0|PORT_PCR_MUX(1));
        MOV      R0,#+256
        LDR.W    R1,??DataTable9_1  ;; 0x4004b028
        STR      R0,[R1, #+0]
//  381 	PORTC_PCR9=(0|PORT_PCR_MUX(1)); 
        MOV      R0,#+256
        LDR.W    R1,??DataTable9_2  ;; 0x4004b024
        STR      R0,[R1, #+0]
//  382 	PORTC_PCR8=(0|PORT_PCR_MUX(1));
        MOV      R0,#+256
        LDR.W    R1,??DataTable9_3  ;; 0x4004b020
        STR      R0,[R1, #+0]
//  383 	PORTC_PCR7=(0|PORT_PCR_MUX(1)); 
        MOV      R0,#+256
        LDR.W    R1,??DataTable9_4  ;; 0x4004b01c
        STR      R0,[R1, #+0]
//  384 	
//  385 	GPIOC_PDDR=GPIO_PDDR_PDD(GPIO_PIN(10)|GPIO_PIN(9)|GPIO_PIN(8)|GPIO_PIN(7));
        MOV      R0,#+1920
        LDR.W    R1,??DataTable9_5  ;; 0x400ff094
        STR      R0,[R1, #+0]
//  386 	
//  387 	GPIOC_PDOR |=  GPIO_PDOR_PDO(GPIO_PIN(10)); 	
        LDR.W    R0,??DataTable9  ;; 0x400ff080
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x400
        LDR.W    R1,??DataTable9  ;; 0x400ff080
        STR      R0,[R1, #+0]
//  388 	
//  389 	GPIOC_PDOR &= ~GPIO_PDOR_PDO(GPIO_PIN(8));
        LDR.W    R0,??DataTable9  ;; 0x400ff080
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x100
        LDR.W    R1,??DataTable9  ;; 0x400ff080
        STR      R0,[R1, #+0]
//  390 	LCD_DLY_ms(100);
        MOVS     R0,#+100
        BL       LCD_DLY_ms
//  391 	GPIOC_PDOR |=  GPIO_PDOR_PDO(GPIO_PIN(8));
        LDR.W    R0,??DataTable9  ;; 0x400ff080
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x100
        LDR.W    R1,??DataTable9  ;; 0x400ff080
        STR      R0,[R1, #+0]
//  392         
//  393            
//  394         gpio_init  (PORTA, 19, GPI_UP, HIGH); //翻页   
        MOVS     R3,#+1
        MOVS     R2,#+3
        MOVS     R1,#+19
        MOVS     R0,#+0
        BL       gpio_init
//  395         gpio_init  (PORTA, 17, GPI_UP, HIGH);  
        MOVS     R3,#+1
        MOVS     R2,#+3
        MOVS     R1,#+17
        MOVS     R0,#+0
        BL       gpio_init
//  396         gpio_init  (PORTB, 0, GPI_UP, HIGH);   
        MOVS     R3,#+1
        MOVS     R2,#+3
        MOVS     R1,#+0
        MOVS     R0,#+1
        BL       gpio_init
//  397         gpio_init  (PORTA, 28, GPI_UP, HIGH);   
        MOVS     R3,#+1
        MOVS     R2,#+3
        MOVS     R1,#+28
        MOVS     R0,#+0
        BL       gpio_init
//  398         gpio_init  (PORTB, 1, GPI_UP, HIGH);
        MOVS     R3,#+1
        MOVS     R2,#+3
        MOVS     R1,#+1
        MOVS     R0,#+1
        BL       gpio_init
//  399         gpio_init  (PORTA, 29, GPI_UP, HIGH); 
        MOVS     R3,#+1
        MOVS     R2,#+3
        MOVS     R1,#+29
        MOVS     R0,#+0
        BL       gpio_init
//  400    
//  401 
//  402   LCD_WrCmd(0xae);//--turn off oled panel
        MOVS     R0,#+174
        BL       LCD_WrCmd
//  403   LCD_WrCmd(0x00);//---set low column address
        MOVS     R0,#+0
        BL       LCD_WrCmd
//  404   LCD_WrCmd(0x10);//---set high column address
        MOVS     R0,#+16
        BL       LCD_WrCmd
//  405   LCD_WrCmd(0x40);//--set start line address  Set Mapping RAM Display Start Line (0x00~0x3F)
        MOVS     R0,#+64
        BL       LCD_WrCmd
//  406   LCD_WrCmd(0x81);//--set contrast control register
        MOVS     R0,#+129
        BL       LCD_WrCmd
//  407   LCD_WrCmd(0xcf); // Set SEG Output Current Brightness
        MOVS     R0,#+207
        BL       LCD_WrCmd
//  408   LCD_WrCmd(0xa1);//--Set SEG/Column Mapping     0xa0左右反置 0xa1正常
        MOVS     R0,#+161
        BL       LCD_WrCmd
//  409   LCD_WrCmd(0xc8);//Set COM/Row Scan Direction   0xc0上下反置 0xc8正常
        MOVS     R0,#+200
        BL       LCD_WrCmd
//  410   LCD_WrCmd(0xa6);//--set normal display
        MOVS     R0,#+166
        BL       LCD_WrCmd
//  411   LCD_WrCmd(0xa8);//--set multiplex ratio(1 to 64)
        MOVS     R0,#+168
        BL       LCD_WrCmd
//  412   LCD_WrCmd(0x3f);//--1/64 duty
        MOVS     R0,#+63
        BL       LCD_WrCmd
//  413   LCD_WrCmd(0xd3);//-set display offset	Shift Mapping RAM Counter (0x00~0x3F)
        MOVS     R0,#+211
        BL       LCD_WrCmd
//  414   LCD_WrCmd(0x00);//-not offset
        MOVS     R0,#+0
        BL       LCD_WrCmd
//  415   LCD_WrCmd(0xd5);//--set display clock divide ratio/oscillator frequency
        MOVS     R0,#+213
        BL       LCD_WrCmd
//  416   LCD_WrCmd(0x80);//--set divide ratio, Set Clock as 100 Frames/Sec
        MOVS     R0,#+128
        BL       LCD_WrCmd
//  417   LCD_WrCmd(0xd9);//--set pre-charge period
        MOVS     R0,#+217
        BL       LCD_WrCmd
//  418   LCD_WrCmd(0xf1);//Set Pre-Charge as 15 Clocks & Discharge as 1 Clock
        MOVS     R0,#+241
        BL       LCD_WrCmd
//  419   LCD_WrCmd(0xda);//--set com pins hardware configuration
        MOVS     R0,#+218
        BL       LCD_WrCmd
//  420   LCD_WrCmd(0x12);
        MOVS     R0,#+18
        BL       LCD_WrCmd
//  421   LCD_WrCmd(0xdb);//--set vcomh
        MOVS     R0,#+219
        BL       LCD_WrCmd
//  422   LCD_WrCmd(0x40);//Set VCOM Deselect Level
        MOVS     R0,#+64
        BL       LCD_WrCmd
//  423   LCD_WrCmd(0x20);//-Set Page Addressing Mode (0x00/0x01/0x02)
        MOVS     R0,#+32
        BL       LCD_WrCmd
//  424   LCD_WrCmd(0x02);//
        MOVS     R0,#+2
        BL       LCD_WrCmd
//  425   LCD_WrCmd(0x8d);//--set Charge Pump enable/disable
        MOVS     R0,#+141
        BL       LCD_WrCmd
//  426   LCD_WrCmd(0x14);//--set(0x10) disable
        MOVS     R0,#+20
        BL       LCD_WrCmd
//  427   LCD_WrCmd(0xa4);// Disable Entire Display On (0xa4/0xa5)
        MOVS     R0,#+164
        BL       LCD_WrCmd
//  428   LCD_WrCmd(0xa6);// Disable Inverse Display On (0xa6/a7) 
        MOVS     R0,#+166
        BL       LCD_WrCmd
//  429   LCD_WrCmd(0xaf);//--turn on oled panel
        MOVS     R0,#+175
        BL       LCD_WrCmd
//  430   LCD_Fill(0x00);  //初始清屏
        MOVS     R0,#+0
        BL       LCD_Fill
//  431   LCD_Set_Pos(0,0);  
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       LCD_Set_Pos
//  432 	
//  433 } 
        POP      {R0,PC}          ;; return
//  434 //==============================================================
//  435 //函数名： void LCD_PutPixel(byte x,byte y)
//  436 //功能描述：绘制一个点（x,y）
//  437 //参数：真实坐标值(x,y),x的范围0～127，y的范围0～64
//  438 //返回：无
//  439 //==============================================================

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  440 void LCD_PutPixel(byte x,byte y)
//  441 {
LCD_PutPixel:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//  442 	byte data1;  //data1当前点的数据 
//  443 	 
//  444         LCD_Set_Pos(x,y); 
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LCD_Set_Pos
//  445 	data1 = 0x01<<(y%8); 	
        MOVS     R0,#+1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        MOVS     R1,#+8
        SDIV     R2,R5,R1
        MLS      R2,R2,R1,R5
        LSLS     R0,R0,R2
        MOVS     R6,R0
//  446 	LCD_WrCmd(0xb0+(y>>3));
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LSRS     R0,R5,#+3
        SUBS     R0,R0,#+80
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LCD_WrCmd
//  447 	LCD_WrCmd(((x&0xf0)>>4)|0x10);
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LSRS     R0,R4,#+4
        ORRS     R0,R0,#0x10
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LCD_WrCmd
//  448 	LCD_WrCmd((x&0x0f)|0x00);
        ANDS     R0,R4,#0xF
        BL       LCD_WrCmd
//  449 	LCD_WrDat(data1); 	 	
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LCD_WrDat
//  450 }
        POP      {R4-R6,PC}       ;; return
//  451 //==============================================================
//  452 //函数名： void LCD_Rectangle(byte x1,byte y1,
//  453 //                   byte x2,byte y2,byte color,byte gif)
//  454 //功能描述：绘制一个实心矩形
//  455 //参数：左上角坐标（x1,y1）,右下角坐标（x2，y2）
//  456 //      其中x1、x2的范围0～127，y1，y2的范围0～63，即真实坐标值
//  457 //返回：无
//  458 //==============================================================

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  459 void LCD_Rectangle(byte x1,byte y1,byte x2,byte y2,byte gif)
//  460 {
LCD_Rectangle:
        PUSH     {R3-R9,LR}
        MOVS     R5,R0
        MOVS     R6,R1
        MOVS     R7,R2
        MOV      R8,R3
        LDR      R4,[SP, #+32]
//  461 	byte n; 
//  462 		
//  463 	LCD_Set_Pos(x1,y1>>3);
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LSRS     R1,R6,#+3
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LCD_Set_Pos
//  464 	for(n=x1;n<=x2;n++)
        MOV      R9,R5
??LCD_Rectangle_0:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        CMP      R7,R9
        BCC.N    ??LCD_Rectangle_1
//  465 	{
//  466 		LCD_WrDat(0x01<<(y1%8)); 			
        MOVS     R0,#+1
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        MOVS     R1,#+8
        SDIV     R2,R6,R1
        MLS      R2,R2,R1,R6
        LSLS     R0,R0,R2
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LCD_WrDat
//  467 		if(gif == 1) 	LCD_DLY_ms(50);
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BNE.N    ??LCD_Rectangle_2
        MOVS     R0,#+50
        BL       LCD_DLY_ms
//  468 	}  
??LCD_Rectangle_2:
        ADDS     R9,R9,#+1
        B.N      ??LCD_Rectangle_0
//  469 	LCD_Set_Pos(x1,y2>>3);
??LCD_Rectangle_1:
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        LSRS     R1,R8,#+3
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LCD_Set_Pos
//  470         for(n=x1;n<=x2;n++)
        MOV      R9,R5
??LCD_Rectangle_3:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        CMP      R7,R9
        BCC.N    ??LCD_Rectangle_4
//  471 	{
//  472 		LCD_WrDat(0x01<<(y2%8)); 			
        MOVS     R0,#+1
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        MOVS     R1,#+8
        SDIV     R2,R8,R1
        MLS      R2,R2,R1,R8
        LSLS     R0,R0,R2
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LCD_WrDat
//  473 		if(gif == 1) 	LCD_DLY_ms(5);
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BNE.N    ??LCD_Rectangle_5
        MOVS     R0,#+5
        BL       LCD_DLY_ms
//  474 	}
??LCD_Rectangle_5:
        ADDS     R9,R9,#+1
        B.N      ??LCD_Rectangle_3
//  475 	
//  476 } 
??LCD_Rectangle_4:
        POP      {R0,R4-R9,PC}    ;; return
//  477 //==============================================================
//  478 //功能描述：写入一组标准ASCII字符
//  479 //参数：显示的位置（x,y），y为页范围0～7，要显示的字符串
//  480 //返回：无
//  481 //============================================================== 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  482 void write_6_8_char(byte x,byte y,byte ucData) 
//  483 {
write_6_8_char:
        PUSH     {R4-R8,LR}
        MOVS     R4,R0
        MOV      R8,R1
        MOVS     R5,R2
//  484     byte i, ucDataTmp;       
//  485     ucDataTmp = ucData-32;
        SUBS     R0,R5,#+32
        MOVS     R7,R0
//  486     if(x > 126)
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+127
        BLT.N    ??write_6_8_char_0
//  487     {
//  488         x= 0;
        MOVS     R0,#+0
        MOVS     R4,R0
//  489         y++;
        ADDS     R8,R8,#+1
//  490     }
//  491     
//  492     LCD_Set_Pos(x, y);
??write_6_8_char_0:
        MOV      R1,R8
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LCD_Set_Pos
//  493     
//  494     for(i = 0; i < 6; i++)
        MOVS     R0,#+0
        MOVS     R6,R0
??write_6_8_char_1:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+6
        BGE.N    ??write_6_8_char_2
//  495     {     
//  496         LCD_WrDat(F6x8[ucDataTmp][i]);  
        LDR.W    R0,??DataTable11
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        MOVS     R1,#+6
        MLA      R0,R1,R7,R0
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDRB     R0,[R6, R0]
        BL       LCD_WrDat
//  497     }
        ADDS     R6,R6,#+1
        B.N      ??write_6_8_char_1
//  498 }
??write_6_8_char_2:
        POP      {R4-R8,PC}       ;; return
//  499 //==============================================================
//  500 //功能描述：写入一组标准ASCII字符串
//  501 //参数：显示的位置（x,y），y为页范围0～7，要显示的字符串
//  502 //返回：无
//  503 //==============================================================  

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  504 void write_6_8_string(byte x,byte y,byte ch[])
//  505 {
write_6_8_string:
        PUSH     {R3-R9,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//  506   byte c=0,i=0,j=0;      
        MOVS     R7,#+0
        MOVS     R8,#+0
        MOVS     R9,#+0
//  507   while (ch[j]!='\0')
??write_6_8_string_0:
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        LDRB     R0,[R9, R6]
        CMP      R0,#+0
        BEQ.N    ??write_6_8_string_1
//  508   {    
//  509     c =ch[j]-32;
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        LDRB     R0,[R9, R6]
        SUBS     R0,R0,#+32
        MOVS     R7,R0
//  510     if(x>126){x=0;y++;}
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+127
        BLT.N    ??write_6_8_string_2
        MOVS     R0,#+0
        MOVS     R4,R0
        ADDS     R5,R5,#+1
//  511     LCD_Set_Pos(x,y);    
??write_6_8_string_2:
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LCD_Set_Pos
//  512   	for(i=0;i<6;i++)     
        MOVS     R0,#+0
        MOV      R8,R0
??write_6_8_string_3:
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+6
        BGE.N    ??write_6_8_string_4
//  513   	  LCD_WrDat(F6x8[c][i]);  
        LDR.W    R0,??DataTable11
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        MOVS     R1,#+6
        MLA      R0,R1,R7,R0
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        LDRB     R0,[R8, R0]
        BL       LCD_WrDat
        ADDS     R8,R8,#+1
        B.N      ??write_6_8_string_3
//  514   	x+=6;
??write_6_8_string_4:
        ADDS     R4,R4,#+6
//  515   	j++;
        ADDS     R9,R9,#+1
        B.N      ??write_6_8_string_0
//  516   }
//  517 }
??write_6_8_string_1:
        POP      {R0,R4-R9,PC}    ;; return
//  518 /****************************************************************
//  519                    写6*8点阵数字函数
//  520 ****************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  521 void write_6_8_number(unsigned char x,unsigned char y, float number)
//  522 {
write_6_8_number:
        PUSH     {R0-R10,LR}
        MOV      R9,R0
        MOVS     R4,R1
        MOV      R10,R2
//  523   unsigned char i=0;
        MOVS     R5,#+0
//  524   unsigned char temp[16];
//  525   unsigned char *point=temp;
        ADD      R6,SP,#+0
//  526   float decimal;
//  527   int data;
//  528   
//  529   if(number<0)
        MOV      R0,R10
        MOVS     R1,#+0
        BL       __aeabi_cfcmple
        BCS.N    ??write_6_8_number_0
//  530     {
//  531      temp[0]='-';
        MOVS     R0,#+45
        STRB     R0,[SP, #+0]
//  532      write_6_8_char(x,y,temp[0]);
        LDRB     R2,[SP, #+0]
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOV      R0,R9
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       write_6_8_char
//  533      x+=6;
        ADDS     R9,R9,#+6
//  534      number=-number; 
        EORS     R10,R10,#0x80000000
//  535     }
//  536     
//  537   data=(int)number;
??write_6_8_number_0:
        MOV      R0,R10
        BL       __aeabi_f2iz
        MOV      R8,R0
//  538   decimal=number-data;     //得到小数部分
        MOV      R0,R8
        BL       __aeabi_i2f
        MOVS     R1,R0
        MOV      R0,R10
        BL       __aeabi_fsub
        MOVS     R7,R0
//  539   
//  540    
//  541   if(data>=1000)           //是否可被1000整除
        CMP      R8,#+1000
        BLT.N    ??write_6_8_number_1
//  542     {
//  543      temp[i]=48+data/1000;
        MOV      R0,#+1000
        SDIV     R0,R8,R0
        ADDS     R0,R0,#+48
        ADD      R1,SP,#+0
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        STRB     R0,[R5, R1]
//  544      data=data%1000;
        MOV      R0,#+1000
        SDIV     R1,R8,R0
        MLS      R8,R0,R1,R8
//  545      i++;
        ADDS     R5,R5,#+1
//  546     }
//  547 
//  548    
//  549   if(data>=100)              //是否可被100整除
??write_6_8_number_1:
        CMP      R8,#+100
        BLT.N    ??write_6_8_number_2
//  550    {
//  551     temp[i]=48+data/100;
        MOVS     R0,#+100
        SDIV     R0,R8,R0
        ADDS     R0,R0,#+48
        ADD      R1,SP,#+0
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        STRB     R0,[R5, R1]
//  552     data=data%100;
        MOVS     R0,#+100
        SDIV     R1,R8,R0
        MLS      R8,R0,R1,R8
//  553     i++;
        ADDS     R5,R5,#+1
        B.N      ??write_6_8_number_3
//  554    }
//  555   else 
//  556     if(data<100&&i!=0)
??write_6_8_number_2:
        CMP      R8,#+100
        BGE.N    ??write_6_8_number_3
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??write_6_8_number_3
//  557      {
//  558      temp[i]=0+48;
        MOVS     R0,#+48
        ADD      R1,SP,#+0
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        STRB     R0,[R5, R1]
//  559      i++;
        ADDS     R5,R5,#+1
//  560      }
//  561    
//  562   if(data>=10)                  //是否可被10整除
??write_6_8_number_3:
        CMP      R8,#+10
        BLT.N    ??write_6_8_number_4
//  563     {
//  564      temp[i]=48+data/10;
        MOVS     R0,#+10
        SDIV     R0,R8,R0
        ADDS     R0,R0,#+48
        ADD      R1,SP,#+0
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        STRB     R0,[R5, R1]
//  565      data=data%10;
        MOVS     R0,#+10
        SDIV     R1,R8,R0
        MLS      R8,R0,R1,R8
//  566      i++;
        ADDS     R5,R5,#+1
        B.N      ??write_6_8_number_5
//  567     }
//  568   else 
//  569     if(data<10&&i!=0)
??write_6_8_number_4:
        CMP      R8,#+10
        BGE.N    ??write_6_8_number_5
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??write_6_8_number_5
//  570      {
//  571      temp[i]=48;
        MOVS     R0,#+48
        ADD      R1,SP,#+0
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        STRB     R0,[R5, R1]
//  572      i++;
        ADDS     R5,R5,#+1
//  573      }
//  574      
//  575   temp[i]=48+data;
??write_6_8_number_5:
        ADDS     R0,R8,#+48
        ADD      R1,SP,#+0
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        STRB     R0,[R5, R1]
//  576    
//  577       
//  578   if(decimal>=0.0001)           //判断是否为小数
        MOVS     R0,R7
        LDR.W    R1,??DataTable10_1  ;; 0x38d1b718
        BL       __aeabi_cfrcmple
        BHI.N    ??write_6_8_number_6
//  579    {
//  580     i++;
        ADDS     R5,R5,#+1
//  581     temp[i]='.';                //加小数点
        MOVS     R0,#+46
        ADD      R1,SP,#+0
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        STRB     R0,[R5, R1]
//  582     i++;
        ADDS     R5,R5,#+1
//  583     
//  584     data=(int)(decimal*1000);
        LDR.W    R0,??DataTable11_3  ;; 0x447a0000
        MOVS     R1,R7
        BL       __aeabi_fmul
        BL       __aeabi_f2iz
        MOV      R8,R0
//  585    
//  586     temp[i]=48+data/100;
        MOVS     R0,#+100
        SDIV     R0,R8,R0
        ADDS     R0,R0,#+48
        ADD      R1,SP,#+0
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        STRB     R0,[R5, R1]
//  587     
//  588     data=data%100;
        MOVS     R0,#+100
        SDIV     R1,R8,R0
        MLS      R8,R0,R1,R8
//  589     i++;
        ADDS     R5,R5,#+1
//  590    
//  591     if(data>0)
        CMP      R8,#+1
        BLT.N    ??write_6_8_number_7
//  592       {
//  593        temp[i]=48+data/10;
        MOVS     R0,#+10
        SDIV     R0,R8,R0
        ADDS     R0,R0,#+48
        ADD      R1,SP,#+0
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        STRB     R0,[R5, R1]
//  594        data=data%10;
        MOVS     R0,#+10
        SDIV     R1,R8,R0
        MLS      R8,R0,R1,R8
//  595        
//  596        
//  597       }
//  598     if(data>=0)
??write_6_8_number_7:
        CMP      R8,#+0
        BMI.N    ??write_6_8_number_6
//  599       {
//  600        i++;
        ADDS     R5,R5,#+1
//  601        temp[i]=data+48; 
        ADDS     R0,R8,#+48
        ADD      R1,SP,#+0
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        STRB     R0,[R5, R1]
//  602       }
//  603     
//  604    }     
//  605 
//  606   i++;
??write_6_8_number_6:
        ADDS     R5,R5,#+1
//  607   temp[i]='\0';
        MOVS     R0,#+0
        ADD      R1,SP,#+0
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        STRB     R0,[R5, R1]
//  608     write_6_8_string(x,y,point); 
        MOVS     R2,R6
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOV      R0,R9
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       write_6_8_string
//  609   
//  610 }
        POP      {R0-R10,PC}      ;; return
//  611 //==============================================================
//  612 //功能描述：写入一组标准ASCII字符
//  613 //参数：显示的位置（x,y），y为页范围0～7，要显示的字符
//  614 //返回：无
//  615 //==============================================================  

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  616 void write_8_16_char(byte x,byte y,byte ch)
//  617 {
write_8_16_char:
        PUSH     {R3-R9,LR}
        MOVS     R4,R0
        MOV      R9,R1
        MOVS     R5,R2
//  618     byte c=0,i=0,j=0;   
        MOVS     R6,#+0
        MOVS     R7,#+0
        MOVS     R8,#+0
//  619     c =ch-32;
        SUBS     R0,R5,#+32
        MOVS     R6,R0
//  620     if(x>120){x=0;y++;}
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+121
        BLT.N    ??write_8_16_char_0
        MOVS     R0,#+0
        MOVS     R4,R0
        ADDS     R9,R9,#+1
//  621     LCD_Set_Pos(x,y);    
??write_8_16_char_0:
        MOV      R1,R9
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LCD_Set_Pos
//  622   	for(i=0;i<8;i++)     
        MOVS     R0,#+0
        MOVS     R7,R0
??write_8_16_char_1:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+8
        BGE.N    ??write_8_16_char_2
//  623   	  LCD_WrDat(F8X16[c*16+i]);
        LDR.W    R0,??DataTable11_5
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LSLS     R1,R6,#+4
        UXTAB    R1,R1,R7
        LDRB     R0,[R1, R0]
        BL       LCD_WrDat
        ADDS     R7,R7,#+1
        B.N      ??write_8_16_char_1
//  624   	LCD_Set_Pos(x,y+1);    
??write_8_16_char_2:
        ADDS     R1,R9,#+1
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LCD_Set_Pos
//  625   	for(i=0;i<8;i++)     
        MOVS     R0,#+0
        MOVS     R7,R0
??write_8_16_char_3:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+8
        BGE.N    ??write_8_16_char_4
//  626   	  LCD_WrDat(F8X16[c*16+i+8]);  
        LDR.W    R0,??DataTable11_5
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LSLS     R1,R6,#+4
        UXTAB    R1,R1,R7
        ADDS     R0,R1,R0
        LDRB     R0,[R0, #+8]
        BL       LCD_WrDat
        ADDS     R7,R7,#+1
        B.N      ??write_8_16_char_3
//  627   	x+=8;
??write_8_16_char_4:
        ADDS     R4,R4,#+8
//  628   	j++;
        ADDS     R8,R8,#+1
//  629  
//  630 }
        POP      {R0,R4-R9,PC}    ;; return
//  631 //==============================================================
//  632 //功能描述：写入一组标准ASCII字符串
//  633 //参数：显示的位置（x,y），y为页范围0～7，要显示的字符串
//  634 //返回：无
//  635 //==============================================================  

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  636 void write_8_16_string(byte x,byte y,byte ch[])
//  637 {
write_8_16_string:
        PUSH     {R3-R9,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//  638   byte c=0,i=0,j=0;
        MOVS     R7,#+0
        MOVS     R8,#+0
        MOVS     R9,#+0
//  639         
//  640   while (ch[j]!='\0')
??write_8_16_string_0:
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        LDRB     R0,[R9, R6]
        CMP      R0,#+0
        BEQ.N    ??write_8_16_string_1
//  641   {    
//  642     c =ch[j]-32;
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        LDRB     R0,[R9, R6]
        SUBS     R0,R0,#+32
        MOVS     R7,R0
//  643     if(x>120){x=0;y++;}
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+121
        BLT.N    ??write_8_16_string_2
        MOVS     R0,#+0
        MOVS     R4,R0
        ADDS     R5,R5,#+1
//  644     LCD_Set_Pos(x,y);    
??write_8_16_string_2:
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LCD_Set_Pos
//  645   	for(i=0;i<8;i++)     
        MOVS     R0,#+0
        MOV      R8,R0
??write_8_16_string_3:
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+8
        BGE.N    ??write_8_16_string_4
//  646   	  LCD_WrDat(F8X16[c*16+i]);
        LDR.W    R0,??DataTable11_5
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LSLS     R1,R7,#+4
        UXTAB    R1,R1,R8
        LDRB     R0,[R1, R0]
        BL       LCD_WrDat
        ADDS     R8,R8,#+1
        B.N      ??write_8_16_string_3
//  647   	LCD_Set_Pos(x,y+1);    
??write_8_16_string_4:
        ADDS     R1,R5,#+1
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LCD_Set_Pos
//  648   	for(i=0;i<8;i++)     
        MOVS     R0,#+0
        MOV      R8,R0
??write_8_16_string_5:
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+8
        BGE.N    ??write_8_16_string_6
//  649   	  LCD_WrDat(F8X16[c*16+i+8]);  
        LDR.W    R0,??DataTable11_5
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LSLS     R1,R7,#+4
        UXTAB    R1,R1,R8
        ADDS     R0,R1,R0
        LDRB     R0,[R0, #+8]
        BL       LCD_WrDat
        ADDS     R8,R8,#+1
        B.N      ??write_8_16_string_5
//  650   	x+=8;
??write_8_16_string_6:
        ADDS     R4,R4,#+8
//  651   	j++;
        ADDS     R9,R9,#+1
        B.N      ??write_8_16_string_0
//  652   }
//  653 }
??write_8_16_string_1:
        POP      {R0,R4-R9,PC}    ;; return
//  654 /****************************************************************
//  655                    写8*16点阵数字函数
//  656 ****************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  657 void write_8_16_number(unsigned char x,unsigned char y, float number)
//  658 {
write_8_16_number:
        PUSH     {R0-R10,LR}
        MOV      R9,R0
        MOVS     R4,R1
        MOV      R10,R2
//  659   unsigned char i=0;
        MOVS     R5,#+0
//  660   unsigned char temp[16];
//  661   unsigned char *point=temp;
        ADD      R6,SP,#+0
//  662   float decimal;
//  663   int data;
//  664   
//  665   if(number<0)
        MOV      R0,R10
        MOVS     R1,#+0
        BL       __aeabi_cfcmple
        BCS.N    ??write_8_16_number_0
//  666     {
//  667      temp[0]='-';
        MOVS     R0,#+45
        STRB     R0,[SP, #+0]
//  668      write_8_16_char(x,y,temp[0]);
        LDRB     R2,[SP, #+0]
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOV      R0,R9
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       write_8_16_char
//  669      x+=1;
        ADDS     R9,R9,#+1
//  670      number=-number; 
        EORS     R10,R10,#0x80000000
//  671     }
//  672     
//  673   data=(int)number;
??write_8_16_number_0:
        MOV      R0,R10
        BL       __aeabi_f2iz
        MOV      R8,R0
//  674   decimal=number-data;     //得到小数部分
        MOV      R0,R8
        BL       __aeabi_i2f
        MOVS     R1,R0
        MOV      R0,R10
        BL       __aeabi_fsub
        MOVS     R7,R0
//  675   
//  676    
//  677   if(data>=1000)           //是否可被1000整除
        CMP      R8,#+1000
        BLT.N    ??write_8_16_number_1
//  678     {
//  679      temp[i]=48+data/1000;
        MOV      R0,#+1000
        SDIV     R0,R8,R0
        ADDS     R0,R0,#+48
        ADD      R1,SP,#+0
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        STRB     R0,[R5, R1]
//  680      data=data%1000;
        MOV      R0,#+1000
        SDIV     R1,R8,R0
        MLS      R8,R0,R1,R8
//  681      i++;
        ADDS     R5,R5,#+1
//  682     }
//  683 
//  684    
//  685   if(data>=100)              //是否可被100整除
??write_8_16_number_1:
        CMP      R8,#+100
        BLT.N    ??write_8_16_number_2
//  686    {
//  687     temp[i]=48+data/100;
        MOVS     R0,#+100
        SDIV     R0,R8,R0
        ADDS     R0,R0,#+48
        ADD      R1,SP,#+0
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        STRB     R0,[R5, R1]
//  688     data=data%100;
        MOVS     R0,#+100
        SDIV     R1,R8,R0
        MLS      R8,R0,R1,R8
//  689     i++;
        ADDS     R5,R5,#+1
        B.N      ??write_8_16_number_3
//  690    }
//  691   else 
//  692     if(data<100&&i!=0)
??write_8_16_number_2:
        CMP      R8,#+100
        BGE.N    ??write_8_16_number_3
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??write_8_16_number_3
//  693      {
//  694      temp[i]=0+48;
        MOVS     R0,#+48
        ADD      R1,SP,#+0
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        STRB     R0,[R5, R1]
//  695      i++;
        ADDS     R5,R5,#+1
//  696      }
//  697    
//  698   if(data>=10)                  //是否可被10整除
??write_8_16_number_3:
        CMP      R8,#+10
        BLT.N    ??write_8_16_number_4
//  699     {
//  700      temp[i]=48+data/10;
        MOVS     R0,#+10
        SDIV     R0,R8,R0
        ADDS     R0,R0,#+48
        ADD      R1,SP,#+0
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        STRB     R0,[R5, R1]
//  701      data=data%10;
        MOVS     R0,#+10
        SDIV     R1,R8,R0
        MLS      R8,R0,R1,R8
//  702      i++;
        ADDS     R5,R5,#+1
        B.N      ??write_8_16_number_5
//  703     }
//  704   else 
//  705     if(data<10&&i!=0)
??write_8_16_number_4:
        CMP      R8,#+10
        BGE.N    ??write_8_16_number_5
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??write_8_16_number_5
//  706      {
//  707      temp[i]=48;
        MOVS     R0,#+48
        ADD      R1,SP,#+0
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        STRB     R0,[R5, R1]
//  708      i++;
        ADDS     R5,R5,#+1
//  709      }
//  710      
//  711   temp[i]=48+data;
??write_8_16_number_5:
        ADDS     R0,R8,#+48
        ADD      R1,SP,#+0
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        STRB     R0,[R5, R1]
//  712    
//  713       
//  714   if(decimal>=0.0001)           //判断是否为小数
        MOVS     R0,R7
        LDR.W    R1,??DataTable10_1  ;; 0x38d1b718
        BL       __aeabi_cfrcmple
        BHI.N    ??write_8_16_number_6
//  715    {
//  716     i++;
        ADDS     R5,R5,#+1
//  717     temp[i]='.';                //加小数点
        MOVS     R0,#+46
        ADD      R1,SP,#+0
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        STRB     R0,[R5, R1]
//  718     i++;
        ADDS     R5,R5,#+1
//  719     
//  720     data=(int)(decimal*1000);
        LDR.W    R0,??DataTable11_3  ;; 0x447a0000
        MOVS     R1,R7
        BL       __aeabi_fmul
        BL       __aeabi_f2iz
        MOV      R8,R0
//  721    
//  722     temp[i]=48+data/100;
        MOVS     R0,#+100
        SDIV     R0,R8,R0
        ADDS     R0,R0,#+48
        ADD      R1,SP,#+0
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        STRB     R0,[R5, R1]
//  723     
//  724     data=data%100;
        MOVS     R0,#+100
        SDIV     R1,R8,R0
        MLS      R8,R0,R1,R8
//  725     i++;
        ADDS     R5,R5,#+1
//  726    
//  727     if(data>0)
        CMP      R8,#+1
        BLT.N    ??write_8_16_number_7
//  728       {
//  729        temp[i]=48+data/10;
        MOVS     R0,#+10
        SDIV     R0,R8,R0
        ADDS     R0,R0,#+48
        ADD      R1,SP,#+0
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        STRB     R0,[R5, R1]
//  730        data=data%10;
        MOVS     R0,#+10
        SDIV     R1,R8,R0
        MLS      R8,R0,R1,R8
//  731        
//  732        
//  733       }
//  734     if(data>=0)
??write_8_16_number_7:
        CMP      R8,#+0
        BMI.N    ??write_8_16_number_6
//  735       {
//  736        i++;
        ADDS     R5,R5,#+1
//  737        temp[i]=data+48; 
        ADDS     R0,R8,#+48
        ADD      R1,SP,#+0
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        STRB     R0,[R5, R1]
//  738       }
//  739     
//  740    }     
//  741 
//  742   i++;
??write_8_16_number_6:
        ADDS     R5,R5,#+1
//  743   temp[i]='\0';
        MOVS     R0,#+0
        ADD      R1,SP,#+0
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        STRB     R0,[R5, R1]
//  744     write_8_16_string(x,y,point); 
        MOVS     R2,R6
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOV      R0,R9
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       write_8_16_string
//  745   
//  746 }
        POP      {R0-R10,PC}      ;; return
//  747 
//  748 //==============================================================
//  749 //函数名： void Draw_BMP(byte x,byte y)
//  750 //功能描述：显示BMP图片128×64
//  751 //参数：起始点坐标(x,y),x的范围0～127，y为页的范围0～7
//  752 //返回：无
//  753 //==============================================================

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  754 void Draw_BMP(byte x0,byte y0,byte x1,byte y1,byte bmp[])
//  755 { 	
Draw_BMP:
        PUSH     {R3-R11,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
        LDR      R8,[SP, #+40]
//  756   word ii=0;
        MOVS     R9,#+0
//  757   byte x,y;
//  758   
//  759   if(y1%8==0) y=y1/8;      
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        MOVS     R0,#+8
        SDIV     R1,R7,R0
        MLS      R1,R1,R0,R7
        CMP      R1,#+0
        BNE.N    ??Draw_BMP_0
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        MOVS     R0,#+8
        SDIV     R0,R7,R0
        MOV      R11,R0
        B.N      ??Draw_BMP_1
//  760   else y=y1/8+1;
??Draw_BMP_0:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        MOVS     R0,#+8
        SDIV     R0,R7,R0
        ADDS     R0,R0,#+1
        MOV      R11,R0
//  761 	for(y=y0;y<=y1;y++)
??Draw_BMP_1:
        MOV      R11,R5
??Draw_BMP_2:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        UXTB     R11,R11          ;; ZeroExt  R11,R11,#+24,#+24
        CMP      R7,R11
        BCC.N    ??Draw_BMP_3
//  762 	{
//  763 		LCD_Set_Pos(x0,y);				
        MOV      R1,R11
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LCD_Set_Pos
//  764     for(x=x0;x<x1;x++)
        MOV      R10,R4
??Draw_BMP_4:
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R10,R6
        BCS.N    ??Draw_BMP_5
//  765 	    {      
//  766 	    	LCD_WrDat(bmp[ii++]);	    	
        UXTH     R9,R9            ;; ZeroExt  R9,R9,#+16,#+16
        LDRB     R0,[R9, R8]
        BL       LCD_WrDat
        ADDS     R9,R9,#+1
//  767 	    }
        ADDS     R10,R10,#+1
        B.N      ??Draw_BMP_4
//  768 	}
??Draw_BMP_5:
        ADDS     R11,R11,#+1
        B.N      ??Draw_BMP_2
//  769 }
??Draw_BMP_3:
        POP      {R0,R4-R11,PC}   ;; return
//  770 /*****************************************************************************
//  771  函 数 名  : MAIN_ConvertData
//  772  功能描述  : 将数据转换为可以在OLED屏上显示的格式
//  773  输入参数  : UCHAR8 *pInputImageData  
//  774              UCHAR8 *pOutputImageBuf  
//  775  输出参数  : NONE
//  776  返 回 值  : NONE
//  777 *****************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  778 void MAIN_ConvertData(uint16 *pInputImageData, uint8 *pOutputImageBuf)
//  779 {
MAIN_ConvertData:
        PUSH     {R4-R9,LR}
        SUB      SP,SP,#+132
        MOVS     R4,R0
        MOVS     R5,R1
//  780  //   uint8 ucTmpData;
//  781     uint8 i, usRowIdx;
//  782     uint8 temp[128]={0};
        ADD      R0,SP,#+0
        MOVS     R1,#+128
        BL       __aeabi_memclr4
//  783 
//  784 	//清空pOutputImageBuf指向的缓存， memset库函数在string.h中
//  785     memset(pOutputImageBuf, 0x00, 128*60);
        MOV      R8,#+7680
        MOVS     R9,#+0
        MOV      R2,R9
        MOV      R1,R8
        MOVS     R0,R5
        BL       __aeabi_memset
//  786 
//  787     for (i = 0; i < 128; i++)
        MOVS     R0,#+0
        MOVS     R6,R0
??MAIN_ConvertData_0:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+128
        BGE.N    ??MAIN_ConvertData_1
//  788     {
//  789          temp[i]=(uint8)(pInputImageData[i]*60/1024);
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDRH     R0,[R4, R6, LSL #+1]
        MOVS     R1,#+60
        MULS     R0,R1,R0
        MOV      R1,#+1024
        SDIV     R0,R0,R1
        ADD      R1,SP,#+0
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        STRB     R0,[R6, R1]
//  790          
//  791        // ucTmpData = temp[i] < (60 - 1) ? temp[i] : (60 - 1);
//  792         
//  793          usRowIdx = (60 - 1) - temp[i];//ucTmpData;
        ADD      R0,SP,#+0
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDRB     R0,[R6, R0]
        RSBS     R0,R0,#+59
        MOVS     R7,R0
//  794 
//  795         (pOutputImageBuf + usRowIdx * 128)[i] = 1;
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        MOVS     R0,#+128
        MLA      R0,R0,R7,R5
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        MOVS     R1,#+1
        STRB     R1,[R6, R0]
//  796     }
        ADDS     R6,R6,#+1
        B.N      ??MAIN_ConvertData_0
//  797 }
??MAIN_ConvertData_1:
        ADD      SP,SP,#+132
        POP      {R4-R9,PC}       ;; return
//  798 
//  799 /*****************************************************************************
//  800  函 数 名  : LED_PrintImage
//  801  功能描述  : 将图像显示出来
//  802  输入参数  : UCHAR8 *pucTable     二维图像数组的地址
//  803              USHORT16 usRowNum    二维图像的行数1~64
//  804              USHORT16 usColumnNum 二维图像的列数1~128
//  805  输出参数  : none
//  806  返 回 值  : none
//  807 *****************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  808 void LED_PrintImage(uint8 *pucTable, uint16 usRowNum, uint16 usColumnNum)
//  809 {
LED_PrintImage:
        PUSH     {R3-R11,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//  810     uint8 ucData;
//  811     uint16 i,j,k,m,n;
//  812     uint16 usRowTmp;
//  813 
//  814     m = usRowNum >> 3;   //计算图片行数以8位为一组完整的组数
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        LSRS     R0,R5,#+3
        STRH     R0,[SP, #+2]
//  815     n = usRowNum % 8;    //计算分完组后剩下的行数
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        MOVS     R0,#+8
        SDIV     R1,R5,R0
        MLS      R1,R1,R0,R5
        STRH     R1,[SP, #+0]
//  816     
//  817     for(i = 0; i < m; i++) //完整组行扫描
        MOVS     R0,#+0
        MOV      R8,R0
??LED_PrintImage_0:
        LDRH     R0,[SP, #+2]
        UXTH     R8,R8            ;; ZeroExt  R8,R8,#+16,#+16
        CMP      R8,R0
        BCS.N    ??LED_PrintImage_1
//  818     {
//  819         LCD_Set_Pos(0,(uint8) i);
        MOV      R1,R8
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+0
        BL       LCD_Set_Pos
//  820         usRowTmp = i << 3;    //计算当前所在行的下标                  
        LSLS     R0,R8,#+3
        MOV      R11,R0
//  821         for(j = 0; j < usColumnNum; j++) //列扫描        
        MOVS     R0,#+0
        MOV      R9,R0
??LED_PrintImage_2:
        UXTH     R9,R9            ;; ZeroExt  R9,R9,#+16,#+16
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R9,R6
        BCS.N    ??LED_PrintImage_3
//  822         {
//  823             ucData = 0;
        MOVS     R0,#+0
        MOVS     R7,R0
//  824             for(k = 0; k < 8; k++) //在i组中对这8行扫描
        MOVS     R0,#+0
        MOV      R10,R0
??LED_PrintImage_4:
        UXTH     R10,R10          ;; ZeroExt  R10,R10,#+16,#+16
        CMP      R10,#+8
        BGE.N    ??LED_PrintImage_5
//  825             {
//  826                 ucData = ucData >> 1;
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LSRS     R7,R7,#+1
//  827                 if((pucTable + (usRowTmp + k) * usColumnNum)[j] == 1)
        UXTH     R10,R10          ;; ZeroExt  R10,R10,#+16,#+16
        UXTAH    R0,R10,R11
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        MLA      R0,R6,R0,R4
        UXTH     R9,R9            ;; ZeroExt  R9,R9,#+16,#+16
        LDRB     R0,[R9, R0]
        CMP      R0,#+1
        BNE.N    ??LED_PrintImage_6
//  828                 {
//  829                     ucData = ucData | 0x80;
        ORRS     R7,R7,#0x80
//  830                 }
//  831                 
//  832             }
??LED_PrintImage_6:
        ADDS     R10,R10,#+1
        B.N      ??LED_PrintImage_4
//  833             LCD_WrDat(ucData);
??LED_PrintImage_5:
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LCD_WrDat
//  834         }
        ADDS     R9,R9,#+1
        B.N      ??LED_PrintImage_2
//  835     }
??LED_PrintImage_3:
        ADDS     R8,R8,#+1
        B.N      ??LED_PrintImage_0
//  836     
//  837     LCD_Set_Pos(0,(uint8) i); //设置剩下的行显示的起始坐标
??LED_PrintImage_1:
        MOV      R1,R8
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+0
        BL       LCD_Set_Pos
//  838     usRowTmp = i << 3;       //计算当前所在行的下标                  
        LSLS     R0,R8,#+3
        MOV      R11,R0
//  839     for(j = 0; j < usColumnNum; j++) //列扫描        
        MOVS     R0,#+0
        MOV      R9,R0
??LED_PrintImage_7:
        UXTH     R9,R9            ;; ZeroExt  R9,R9,#+16,#+16
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R9,R6
        BCS.N    ??LED_PrintImage_8
//  840     {
//  841         ucData = 0;
        MOVS     R0,#+0
        MOVS     R7,R0
//  842         for(k = 0; k < n; k++) //对剩下的行扫描
        MOVS     R0,#+0
        MOV      R10,R0
??LED_PrintImage_9:
        LDRH     R0,[SP, #+0]
        UXTH     R10,R10          ;; ZeroExt  R10,R10,#+16,#+16
        CMP      R10,R0
        BCS.N    ??LED_PrintImage_10
//  843         {
//  844             ucData = ucData >> 1;
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LSRS     R7,R7,#+1
//  845             if((pucTable + (usRowTmp + k) * usColumnNum)[j] ==1)
        UXTH     R10,R10          ;; ZeroExt  R10,R10,#+16,#+16
        UXTAH    R0,R10,R11
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        MLA      R0,R6,R0,R4
        UXTH     R9,R9            ;; ZeroExt  R9,R9,#+16,#+16
        LDRB     R0,[R9, R0]
        CMP      R0,#+1
        BNE.N    ??LED_PrintImage_11
//  846             {
//  847                 ucData = ucData | 0x80;
        ORRS     R7,R7,#0x80
//  848             }
//  849             
//  850         }
??LED_PrintImage_11:
        ADDS     R10,R10,#+1
        B.N      ??LED_PrintImage_9
//  851         ucData = ucData >> (8 - n);
??LED_PrintImage_10:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDRH     R0,[SP, #+0]
        RSBS     R0,R0,#+8
        ASRS     R7,R7,R0
//  852         LCD_WrDat(ucData);
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LCD_WrDat
//  853     }
        ADDS     R9,R9,#+1
        B.N      ??LED_PrintImage_7
//  854 
//  855     return;
??LED_PrintImage_8:
        POP      {R0,R4-R11,PC}   ;; return
//  856 }
//  857 
//  858 //-----------------------------------------------------------------------------------

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  859 void LCD_PrintImage(uint8 *pucTable, uint16 usRowNum, uint16 usColumnNum)
//  860 {
LCD_PrintImage:
        PUSH     {R3-R11,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//  861     uint8 ucData;
//  862     uint16 i,j,k,m,n;
//  863     uint16 usRowTmp;
//  864 
//  865     m = usRowNum >> 3;   //计算图片行数以8位为一组完整的组数
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        LSRS     R0,R5,#+3
        STRH     R0,[SP, #+2]
//  866     n = usRowNum % 8;    //计算分完组后剩下的行数
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        MOVS     R0,#+8
        SDIV     R1,R5,R0
        MLS      R1,R1,R0,R5
        STRH     R1,[SP, #+0]
//  867     
//  868     for(i = 0; i < m; i++) //完整组行扫描
        MOVS     R0,#+0
        MOV      R8,R0
??LCD_PrintImage_0:
        LDRH     R0,[SP, #+2]
        UXTH     R8,R8            ;; ZeroExt  R8,R8,#+16,#+16
        CMP      R8,R0
        BCS.N    ??LCD_PrintImage_1
//  869     {
//  870         LCD_Set_Pos(0,(uint8)i);
        MOV      R1,R8
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+0
        BL       LCD_Set_Pos
//  871         usRowTmp = i << 3;    //计算当前所在行的下标                  
        LSLS     R0,R8,#+3
        MOV      R11,R0
//  872         for(j = 142; j >14; j--) //列扫描        
        MOVS     R0,#+142
        MOV      R9,R0
??LCD_PrintImage_2:
        UXTH     R9,R9            ;; ZeroExt  R9,R9,#+16,#+16
        CMP      R9,#+15
        BLT.N    ??LCD_PrintImage_3
//  873         {
//  874             ucData = 0;
        MOVS     R0,#+0
        MOVS     R7,R0
//  875             for(k = 0; k < 8; k++) //在i组中对这8行扫描
        MOVS     R0,#+0
        MOV      R10,R0
??LCD_PrintImage_4:
        UXTH     R10,R10          ;; ZeroExt  R10,R10,#+16,#+16
        CMP      R10,#+8
        BGE.N    ??LCD_PrintImage_5
//  876             {
//  877                 ucData = ucData >> 1;
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LSRS     R7,R7,#+1
//  878                 if((pucTable + (usRowTmp + k) * usColumnNum)[j] == LED_IMAGE_WHITE)
        UXTH     R10,R10          ;; ZeroExt  R10,R10,#+16,#+16
        UXTAH    R0,R10,R11
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        MLA      R0,R6,R0,R4
        UXTH     R9,R9            ;; ZeroExt  R9,R9,#+16,#+16
        LDRB     R0,[R9, R0]
        CMP      R0,#+255
        BNE.N    ??LCD_PrintImage_6
//  879                 {
//  880                     ucData = ucData | 0x80;
        ORRS     R7,R7,#0x80
//  881                 }
//  882                 
//  883             }
??LCD_PrintImage_6:
        ADDS     R10,R10,#+1
        B.N      ??LCD_PrintImage_4
//  884             LCD_WrDat(ucData);
??LCD_PrintImage_5:
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LCD_WrDat
//  885         }
        SUBS     R9,R9,#+1
        B.N      ??LCD_PrintImage_2
//  886     }
??LCD_PrintImage_3:
        ADDS     R8,R8,#+1
        B.N      ??LCD_PrintImage_0
//  887     
//  888     LCD_Set_Pos(0,(uint8)i); //设置剩下的行显示的起始坐标
??LCD_PrintImage_1:
        MOV      R1,R8
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+0
        BL       LCD_Set_Pos
//  889     usRowTmp = i << 3;       //计算当前所在行的下标                  
        LSLS     R0,R8,#+3
        MOV      R11,R0
//  890     for(j = 143; j >15; j--) //列扫描        
        MOVS     R0,#+143
        MOV      R9,R0
??LCD_PrintImage_7:
        UXTH     R9,R9            ;; ZeroExt  R9,R9,#+16,#+16
        CMP      R9,#+16
        BLT.N    ??LCD_PrintImage_8
//  891     {
//  892         ucData = 0;
        MOVS     R0,#+0
        MOVS     R7,R0
//  893         for(k = 0; k < n; k++) //对剩下的行扫描
        MOVS     R0,#+0
        MOV      R10,R0
??LCD_PrintImage_9:
        LDRH     R0,[SP, #+0]
        UXTH     R10,R10          ;; ZeroExt  R10,R10,#+16,#+16
        CMP      R10,R0
        BCS.N    ??LCD_PrintImage_10
//  894         {
//  895             ucData = ucData >> 1;
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LSRS     R7,R7,#+1
//  896             if((pucTable + (usRowTmp + k) * usColumnNum)[j] == LED_IMAGE_WHITE)
        UXTH     R10,R10          ;; ZeroExt  R10,R10,#+16,#+16
        UXTAH    R0,R10,R11
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        MLA      R0,R6,R0,R4
        UXTH     R9,R9            ;; ZeroExt  R9,R9,#+16,#+16
        LDRB     R0,[R9, R0]
        CMP      R0,#+255
        BNE.N    ??LCD_PrintImage_11
//  897             {
//  898                 ucData = ucData | 0x80;
        ORRS     R7,R7,#0x80
//  899             }
//  900             
//  901         }
??LCD_PrintImage_11:
        ADDS     R10,R10,#+1
        B.N      ??LCD_PrintImage_9
//  902         ucData = ucData >> (8 - n);
??LCD_PrintImage_10:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDRH     R0,[SP, #+0]
        RSBS     R0,R0,#+8
        ASRS     R7,R7,R0
//  903         LCD_WrDat(ucData);
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LCD_WrDat
//  904     }
        SUBS     R9,R9,#+1
        B.N      ??LCD_PrintImage_7
//  905         LCD_clear_L(0,7);
??LCD_PrintImage_8:
        MOVS     R1,#+7
        MOVS     R0,#+0
        BL       LCD_clear_L
//  906         write_6_8_string(0,7,"top:");     
        LDR.W    R2,??DataTable11_6
        MOVS     R1,#+7
        MOVS     R0,#+0
        BL       write_6_8_string
//  907         write_6_8_number(50,7,control_top_whiteline);
        LDR.W    R0,??DataTable12
        LDRB     R0,[R0, #+0]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+7
        MOVS     R0,#+50
        BL       write_6_8_number
//  908     return;
        POP      {R0,R4-R11,PC}   ;; return
//  909 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9:
        DC32     0x400ff080

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_1:
        DC32     0x4004b028

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_2:
        DC32     0x4004b024

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_3:
        DC32     0x4004b020

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_4:
        DC32     0x4004b01c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_5:
        DC32     0x400ff094
//  910 //-----------------------------------------------------------------------------------
//  911 ///////////////////////////////////////////////////////////////////////////////////
//  912 /***********************************预显示**********************************/

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  913 void pre_show(void)
//  914 {  
pre_show:
        PUSH     {R7,LR}
//  915    //int8 i;
//  916    LCD_CLS();
        BL       LCD_CLS
//  917    switch(page_num)
        LDR.W    R0,??DataTable11_7
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??pre_show_0
        CMP      R0,#+2
        BEQ.W    ??pre_show_1
        BCC.N    ??pre_show_2
        CMP      R0,#+4
        BEQ.W    ??pre_show_3
        BCC.W    ??pre_show_4
        B.N      ??pre_show_5
//  918      {
//  919      case 0: 
//  920           
//  921         
//  922             
//  923             write_6_8_string(0,1,"V:");     
??pre_show_0:
        ADR.N    R2,??pre_show_6  ;; 0x56, 0x3A, 0x00, 0x00
        MOVS     R1,#+1
        MOVS     R0,#+0
        BL       write_6_8_string
//  924             write_6_8_number(20,1,V);
        LDR.W    R0,??DataTable11_8
        LDR      R2,[R0, #+0]
        MOVS     R1,#+1
        MOVS     R0,#+20
        BL       write_6_8_number
//  925            
//  926             write_6_8_string(50,1,"W:");     //第二行，角速度
        ADR.N    R2,??pre_show_6+0x4  ;; 0x57, 0x3A, 0x00, 0x00
        MOVS     R1,#+1
        MOVS     R0,#+50
        BL       write_6_8_string
//  927             write_6_8_number(70,1,w); 
        LDR.W    R0,??DataTable11_9
        LDR      R2,[R0, #+0]
        MOVS     R1,#+1
        MOVS     R0,#+70
        BL       write_6_8_number
//  928  
//  929            
//  930             write_6_8_string(0,2,"acce:");      //第三行，加速度计值
        LDR.W    R2,??DataTable11_10
        MOVS     R1,#+2
        MOVS     R0,#+0
        BL       write_6_8_string
//  931             write_6_8_number(50,2,acce);
        LDR.W    R0,??DataTable11_11
        LDR      R2,[R0, #+0]
        MOVS     R1,#+2
        MOVS     R0,#+50
        BL       write_6_8_number
//  932   
//  933           
//  934             
//  935          
//  936         
//  937   
//  938         
//  939              
//  940             write_6_8_string(0,5,"Sp:");     
        ADR.N    R2,??DataTable10  ;; "Sp:"
        MOVS     R1,#+5
        MOVS     R0,#+0
        BL       write_6_8_string
//  941             write_6_8_number(50,5,Speed_set);
        LDR.W    R0,??DataTable12_1
        LDRH     R0,[R0, #+0]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+5
        MOVS     R0,#+50
        BL       write_6_8_number
//  942 
//  943         
//  944             write_6_8_number(0,6,g_nCarAngle); 
        LDR.W    R0,??DataTable11_12
        LDR      R2,[R0, #+0]
        MOVS     R1,#+6
        MOVS     R0,#+0
        BL       write_6_8_number
//  945             write_6_8_number(50,6,acce_angle);
        LDR.W    R0,??DataTable11_13
        LDR      R2,[R0, #+0]
        MOVS     R1,#+6
        MOVS     R0,#+50
        BL       write_6_8_number
//  946         
//  947           
//  948             
//  949             break;
        B.N      ??pre_show_5
//  950              
//  951       case 1:
//  952              
//  953              write_6_8_number(0,0,LeftRealSpeed);
??pre_show_2:
        LDR.W    R0,??DataTable12_2
        LDR      R2,[R0, #+0]
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       write_6_8_number
//  954              write_6_8_number(60,0,RightRealSpeed);
        LDR.W    R0,??DataTable12_3
        LDR      R2,[R0, #+0]
        MOVS     R1,#+0
        MOVS     R0,#+60
        BL       write_6_8_number
//  955              
//  956              write_6_8_string(0,1,"Rsp:");     
        LDR.W    R2,??DataTable12_4
        MOVS     R1,#+1
        MOVS     R0,#+0
        BL       write_6_8_string
//  957              write_6_8_number(60,1,RealSpeed);
        LDR.W    R0,??DataTable12_5
        LDR      R2,[R0, #+0]
        MOVS     R1,#+1
        MOVS     R0,#+60
        BL       write_6_8_number
//  958 
//  959              
//  960              write_6_8_string(0,2,"L_PWM:");    //
        LDR.W    R2,??DataTable12_6
        MOVS     R1,#+2
        MOVS     R0,#+0
        BL       write_6_8_string
//  961              write_6_8_number(60,2,LeftSpeedPwm);
        LDR.W    R0,??DataTable12_7
        LDRSH    R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R2,R0
        MOVS     R1,#+2
        MOVS     R0,#+60
        BL       write_6_8_number
//  962              
//  963              write_6_8_string(0,3,"R_PWM:");    //
        LDR.W    R2,??DataTable12_8
        MOVS     R1,#+3
        MOVS     R0,#+0
        BL       write_6_8_string
//  964              write_6_8_number(60,3,RightSpeedPwm);
        LDR.W    R0,??DataTable12_9
        LDRSH    R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R2,R0
        MOVS     R1,#+3
        MOVS     R0,#+60
        BL       write_6_8_number
//  965              
//  966              write_6_8_number(0,4,anglePD);
        LDR.W    R0,??DataTable12_10
        LDRSH    R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R2,R0
        MOVS     R1,#+4
        MOVS     R0,#+0
        BL       write_6_8_number
//  967              write_6_8_number(50,4,steerpwmout);
        LDR.W    R0,??DataTable12_11
        LDRSH    R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R2,R0
        MOVS     R1,#+4
        MOVS     R0,#+50
        BL       write_6_8_number
//  968              write_6_8_number(100,4,SpeedPIDout);
        LDR.W    R0,??DataTable12_12
        LDRSH    R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R2,R0
        MOVS     R1,#+4
        MOVS     R0,#+100
        BL       write_6_8_number
//  969              
//  970              
//  971              break;
        B.N      ??pre_show_5
//  972              
//  973              
//  974        
//  975       case 2:write_6_8_char(0,line_num,'*');
??pre_show_1:
        MOVS     R2,#+42
        LDR.W    R0,??DataTable12_13
        LDRB     R1,[R0, #+0]
        MOVS     R0,#+0
        BL       write_6_8_char
//  976       
//  977              write_6_8_string(6,0,"ACCE:");    //加速度计静态值
        LDR.W    R2,??DataTable12_14
        MOVS     R1,#+0
        MOVS     R0,#+6
        BL       write_6_8_string
//  978              write_6_8_number(60,0,ACCE_STATIC); 
        LDR.W    R0,??DataTable12_15
        LDR      R2,[R0, #+0]
        MOVS     R1,#+0
        MOVS     R0,#+60
        BL       write_6_8_number
//  979                
//  980             
//  981                  write_6_8_string(6,1,"S_P_C:");   
        LDR.W    R2,??DataTable12_16
        MOVS     R1,#+1
        MOVS     R0,#+6
        BL       write_6_8_string
//  982              write_6_8_number(60,1,stopcount);  
        LDR.W    R0,??DataTable12_17
        LDRH     R0,[R0, #+0]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+1
        MOVS     R0,#+60
        BL       write_6_8_number
//  983            
//  984               write_6_8_string(6,2,"set_d:");   
        LDR.W    R2,??DataTable12_18
        MOVS     R1,#+2
        MOVS     R0,#+6
        BL       write_6_8_string
//  985              write_6_8_number(60,2,Speed_set);
        LDR.W    R0,??DataTable12_1
        LDRH     R0,[R0, #+0]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+2
        MOVS     R0,#+60
        BL       write_6_8_number
//  986                write_6_8_string(6,3,"lcd_p1:");   
        LDR.W    R2,??DataTable12_19
        MOVS     R1,#+3
        MOVS     R0,#+6
        BL       write_6_8_string
//  987              write_6_8_number(60,3,lcd_ref_p1);
        LDR.W    R0,??DataTable12_20
        LDRSH    R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R2,R0
        MOVS     R1,#+3
        MOVS     R0,#+60
        BL       write_6_8_number
//  988               write_6_8_string(6,4,"lcd_d1:");   
        LDR.W    R2,??DataTable12_21
        MOVS     R1,#+4
        MOVS     R0,#+6
        BL       write_6_8_string
//  989              write_6_8_number(60,4,lcd_ref_d1);
        LDR.W    R0,??DataTable12_22
        LDRSH    R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R2,R0
        MOVS     R1,#+4
        MOVS     R0,#+60
        BL       write_6_8_number
//  990               write_6_8_string(6,5,"lcd_p2:");   
        LDR.W    R2,??DataTable12_23
        MOVS     R1,#+5
        MOVS     R0,#+6
        BL       write_6_8_string
//  991              write_6_8_number(60,5,lcd_ref_p2);
        LDR.W    R0,??DataTable12_24
        LDRSH    R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R2,R0
        MOVS     R1,#+5
        MOVS     R0,#+60
        BL       write_6_8_number
//  992               write_6_8_string(6,6,"lcd_d2:");   
        LDR.W    R2,??DataTable12_25
        MOVS     R1,#+6
        MOVS     R0,#+6
        BL       write_6_8_string
//  993              write_6_8_number(60,6,lcd_ref_d2);
        LDR.W    R0,??DataTable12_26
        LDRSH    R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R2,R0
        MOVS     R1,#+6
        MOVS     R0,#+60
        BL       write_6_8_number
//  994                // write_6_8_string(6,4,"Rg:");    //
//  995             // write_6_8_number(60,4,Rg);
//  996            //  LCD_Set_Pos(0, 5) ;
//  997              //for(i=22;i<106;i++){
//  998                //if(CCD_value[i])  LCD_write_byte(0xfe,1);       
//  999                //else LCD_write_byte(0x80,1);      
// 1000              //}
// 1001              break;
        B.N      ??pre_show_5
// 1002              
// 1003              
// 1004       case 3:write_6_8_char(0,line_num,'*');
??pre_show_4:
        MOVS     R2,#+42
        LDR.W    R0,??DataTable12_13
        LDRB     R1,[R0, #+0]
        MOVS     R0,#+0
        BL       write_6_8_char
// 1005              
// 1006              write_6_8_string(6,0,"ang_kp:");    //
        LDR.W    R2,??DataTable12_27
        MOVS     R1,#+0
        MOVS     R0,#+6
        BL       write_6_8_string
// 1007              write_6_8_number(60,0,angle_kp); 
        LDR.W    R0,??DataTable12_28
        LDR      R2,[R0, #+0]
        MOVS     R1,#+0
        MOVS     R0,#+60
        BL       write_6_8_number
// 1008              
// 1009              write_6_8_string(6,1,"ang_kd:");    //
        LDR.W    R2,??DataTable13
        MOVS     R1,#+1
        MOVS     R0,#+6
        BL       write_6_8_string
// 1010              write_6_8_number(60,1,angle_kd);
        LDR.W    R0,??DataTable13_1
        LDR      R2,[R0, #+0]
        MOVS     R1,#+1
        MOVS     R0,#+60
        BL       write_6_8_number
// 1011 
// 1012              write_6_8_string(6,2,"sped_kp:");    //
        LDR.W    R2,??DataTable13_2
        MOVS     R1,#+2
        MOVS     R0,#+6
        BL       write_6_8_string
// 1013              write_6_8_number(60,2,speed_kp); 
        LDR.W    R0,??DataTable13_3
        LDR      R2,[R0, #+0]
        MOVS     R1,#+2
        MOVS     R0,#+60
        BL       write_6_8_number
// 1014              
// 1015              write_6_8_string(6,3,"sped_ki:");    //
        LDR.W    R2,??DataTable13_4
        MOVS     R1,#+3
        MOVS     R0,#+6
        BL       write_6_8_string
// 1016              write_6_8_number(60,3,speed_ki); 
        LDR.W    R0,??DataTable13_5
        LDR      R2,[R0, #+0]
        MOVS     R1,#+3
        MOVS     R0,#+60
        BL       write_6_8_number
// 1017              
// 1018              write_6_8_string(6,4,"zhongj:");    //
        LDR.W    R2,??DataTable13_6
        MOVS     R1,#+4
        MOVS     R0,#+6
        BL       write_6_8_string
// 1019              write_6_8_number(60,4,zhongjian );
        LDR.W    R0,??DataTable13_7
        LDRSH    R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R2,R0
        MOVS     R1,#+4
        MOVS     R0,#+60
        BL       write_6_8_number
// 1020              
// 1021             write_6_8_string(6,5,"W_B_O:");    //
        LDR.W    R2,??DataTable13_8
        MOVS     R1,#+5
        MOVS     R0,#+6
        BL       write_6_8_string
// 1022              write_6_8_number(60,5,WHITE_BLACK_OT );
        LDR.W    R0,??DataTable13_9
        LDRB     R0,[R0, #+0]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+5
        MOVS     R0,#+60
        BL       write_6_8_number
// 1023                write_6_8_string(6,6,"ft1:");    //
        LDR.W    R2,??DataTable13_10
        MOVS     R1,#+6
        MOVS     R0,#+6
        BL       write_6_8_string
// 1024              write_6_8_number(60,6,ft1);  
        LDR.W    R0,??DataTable13_11
        LDRSH    R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R2,R0
        MOVS     R1,#+6
        MOVS     R0,#+60
        BL       write_6_8_number
// 1025              
// 1026              break;
        B.N      ??pre_show_5
        Nop      
        DATA
??pre_show_6:
        DC8      0x56, 0x3A, 0x00, 0x00
        DC8      0x57, 0x3A, 0x00, 0x00
        THUMB
// 1027        case 4:write_6_8_char(0,line_num,'*');
??pre_show_3:
        MOVS     R2,#+42
        LDR.W    R0,??DataTable12_13
        LDRB     R1,[R0, #+0]
        MOVS     R0,#+0
        BL       write_6_8_char
// 1028              
// 1029              write_6_8_string(6,0,"ting_p:");    //
        LDR.W    R2,??DataTable13_12
        MOVS     R1,#+0
        MOVS     R0,#+6
        BL       write_6_8_string
// 1030              write_6_8_number(60,0,tingting_p); 
        LDR.W    R0,??DataTable13_13
        LDRSH    R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R2,R0
        MOVS     R1,#+0
        MOVS     R0,#+60
        BL       write_6_8_number
// 1031              
// 1032              write_6_8_string(6,1,"ting_d:");    //
        LDR.W    R2,??DataTable13_14
        MOVS     R1,#+1
        MOVS     R0,#+6
        BL       write_6_8_string
// 1033              write_6_8_number(60,1,tingting_d);
        LDR.W    R0,??DataTable13_15
        LDRSH    R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R2,R0
        MOVS     R1,#+1
        MOVS     R0,#+60
        BL       write_6_8_number
// 1034               
// 1035              write_6_8_string(6,2,"huanjie:");    //
        LDR.W    R2,??DataTable13_16
        MOVS     R1,#+2
        MOVS     R0,#+6
        BL       write_6_8_string
// 1036              write_6_8_number(60,2,huanjie);
        LDR.W    R0,??DataTable13_17
        LDRB     R0,[R0, #+0]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+2
        MOVS     R0,#+60
        BL       write_6_8_number
// 1037 
// 1038              write_6_8_string(6,3,"qing:");    //
        LDR.W    R2,??DataTable13_18
        MOVS     R1,#+3
        MOVS     R0,#+6
        BL       write_6_8_string
// 1039              write_6_8_number(60,3,qing);
        LDR.W    R0,??DataTable13_19
        LDRB     R0,[R0, #+0]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+3
        MOVS     R0,#+60
        BL       write_6_8_number
// 1040              
// 1041                write_6_8_string(6,4,"summ:");    //
        LDR.W    R2,??DataTable13_20
        MOVS     R1,#+4
        MOVS     R0,#+6
        BL       write_6_8_string
// 1042              write_6_8_number(60,4,summ);
        LDR.W    R0,??DataTable13_21
        LDRB     R0,[R0, #+0]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+4
        MOVS     R0,#+60
        BL       write_6_8_number
// 1043              
// 1044              write_6_8_string(6,5,"da:");    //
        ADR.N    R2,??DataTable11_1  ;; "da:"
        MOVS     R1,#+5
        MOVS     R0,#+6
        BL       write_6_8_string
// 1045              write_6_8_number(60,5,da);
        LDR.W    R0,??DataTable13_22
        LDRB     R0,[R0, #+0]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+5
        MOVS     R0,#+60
        BL       write_6_8_number
// 1046              
// 1047              write_6_8_string(6,6,"fuxiao:");    //
        LDR.W    R2,??DataTable13_23
        MOVS     R1,#+6
        MOVS     R0,#+6
        BL       write_6_8_string
// 1048              write_6_8_number(60,6,fuxiao);
        LDR.W    R0,??DataTable13_24
        LDRB     R0,[R0, #+0]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+6
        MOVS     R0,#+60
        BL       write_6_8_number
// 1049               break;            
// 1050     
// 1051                       
// 1052      }
// 1053 
// 1054 }
??pre_show_5:
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10:
        DC8      "Sp:"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_1:
        DC32     0x38d1b718
// 1055 //-------------------------------------------------------------------------------------------
// 1056 
// 1057 
// 1058 /**************************************刷屏，显示时变变量*********************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1059 void redraw()
// 1060 {
redraw:
        PUSH     {R7,LR}
// 1061   
// 1062      
// 1063   //if(page_num==0&&redraw_control==0)     //第一页
// 1064   switch(page_num)
        LDR.N    R0,??DataTable11_7
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??redraw_0
        CMP      R0,#+1
        BEQ.N    ??redraw_1
        B.N      ??redraw_2
// 1065   {
// 1066   case 0:
// 1067     
// 1068         write_6_8_string(0,1,"V:");     
??redraw_0:
        ADR.N    R2,??DataTable11_2  ;; 0x56, 0x3A, 0x00, 0x00
        MOVS     R1,#+1
        MOVS     R0,#+0
        BL       write_6_8_string
// 1069         write_6_8_number(20,1,V);
        LDR.N    R0,??DataTable11_8
        LDR      R2,[R0, #+0]
        MOVS     R1,#+1
        MOVS     R0,#+20
        BL       write_6_8_number
// 1070         /*LCD_clear_L(70,1);
// 1071         
// 1072         write_6_8_number(70,1,w);*/
// 1073        
// 1074         LCD_clear_L(70,1);
        MOVS     R1,#+1
        MOVS     R0,#+70
        BL       LCD_clear_L
// 1075         
// 1076         write_6_8_number(70,1,w); 
        LDR.N    R0,??DataTable11_9
        LDR      R2,[R0, #+0]
        MOVS     R1,#+1
        MOVS     R0,#+70
        BL       write_6_8_number
// 1077            
// 1078         LCD_clear_L(50,2);
        MOVS     R1,#+2
        MOVS     R0,#+50
        BL       LCD_clear_L
// 1079         write_6_8_number(50,2,acce);
        LDR.N    R0,??DataTable11_11
        LDR      R2,[R0, #+0]
        MOVS     R1,#+2
        MOVS     R0,#+50
        BL       write_6_8_number
// 1080         
// 1081         LCD_clear_L(0,3);
        MOVS     R1,#+3
        MOVS     R0,#+0
        BL       LCD_clear_L
// 1082         write_6_8_string(0,3,"L_c:");
        LDR.W    R2,??DataTable13_25
        MOVS     R1,#+3
        MOVS     R0,#+0
        BL       write_6_8_string
// 1083         write_6_8_number(24,3,LeftRealSpeed);   
        LDR.W    R0,??DataTable12_2
        LDR      R2,[R0, #+0]
        MOVS     R1,#+3
        MOVS     R0,#+24
        BL       write_6_8_number
// 1084         write_6_8_string(65,3,"R_c:");      
        LDR.W    R2,??DataTable13_26
        MOVS     R1,#+3
        MOVS     R0,#+65
        BL       write_6_8_string
// 1085         write_6_8_number(89,3,RightRealSpeed);
        LDR.W    R0,??DataTable12_3
        LDR      R2,[R0, #+0]
        MOVS     R1,#+3
        MOVS     R0,#+89
        BL       write_6_8_number
// 1086         
// 1087         
// 1088         
// 1089       
// 1090         /*LCD_clear_L(0,4);
// 1091         write_6_8_string(0,4,"g_Angle：");
// 1092         write_6_8_number(50,4,g_nCarAngle);*/
// 1093      
// 1094       
// 1095         
// 1096         
// 1097         LCD_clear_L(50,5);
        MOVS     R1,#+5
        MOVS     R0,#+50
        BL       LCD_clear_L
// 1098 
// 1099         write_6_8_string(0,5,"Sp:");     
        ADR.N    R2,??DataTable11_4  ;; "Sp:"
        MOVS     R1,#+5
        MOVS     R0,#+0
        BL       write_6_8_string
// 1100         write_6_8_number(50,5,Speed_set);
        LDR.W    R0,??DataTable12_1
        LDRH     R0,[R0, #+0]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+5
        MOVS     R0,#+50
        BL       write_6_8_number
// 1101 
// 1102         
// 1103         LCD_clear_L(0,6);
        MOVS     R1,#+6
        MOVS     R0,#+0
        BL       LCD_clear_L
// 1104         write_6_8_number(0,6,g_nCarAngle); 
        LDR.N    R0,??DataTable11_12
        LDR      R2,[R0, #+0]
        MOVS     R1,#+6
        MOVS     R0,#+0
        BL       write_6_8_number
// 1105         write_6_8_number(50,6,acce_angle);
        LDR.N    R0,??DataTable11_13
        LDR      R2,[R0, #+0]
        MOVS     R1,#+6
        MOVS     R0,#+50
        BL       write_6_8_number
// 1106         
// 1107         LCD_clear_L(0,7);
        MOVS     R1,#+7
        MOVS     R0,#+0
        BL       LCD_clear_L
// 1108         write_6_8_string(0,7,"top:");     
        LDR.N    R2,??DataTable11_6
        MOVS     R1,#+7
        MOVS     R0,#+0
        BL       write_6_8_string
// 1109         write_6_8_number(50,7,control_top_whiteline);
        LDR.W    R0,??DataTable12
        LDRB     R0,[R0, #+0]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+7
        MOVS     R0,#+50
        BL       write_6_8_number
// 1110     
// 1111         
// 1112         break;
        B.N      ??redraw_2
// 1113         
// 1114   case 1:     //第二页
// 1115         LCD_clear_L(0,0);
??redraw_1:
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       LCD_clear_L
// 1116         write_6_8_number(0,0,g_nLeftCount);
        LDR.W    R0,??DataTable13_27
        LDRSH    R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R2,R0
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       write_6_8_number
// 1117         write_6_8_number(60,0,g_nRightCount);
        LDR.W    R0,??DataTable13_28
        LDRSH    R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R2,R0
        MOVS     R1,#+0
        MOVS     R0,#+60
        BL       write_6_8_number
// 1118         
// 1119         LCD_clear_L(60,1);     
        MOVS     R1,#+1
        MOVS     R0,#+60
        BL       LCD_clear_L
// 1120         write_6_8_number(60,1,RealSpeed);
        LDR.W    R0,??DataTable12_5
        LDR      R2,[R0, #+0]
        MOVS     R1,#+1
        MOVS     R0,#+60
        BL       write_6_8_number
// 1121 
// 1122         
// 1123         LCD_clear_L(60,2);
        MOVS     R1,#+2
        MOVS     R0,#+60
        BL       LCD_clear_L
// 1124         write_6_8_number(60,2,LeftSpeedPwm);
        LDR.W    R0,??DataTable12_7
        LDRSH    R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R2,R0
        MOVS     R1,#+2
        MOVS     R0,#+60
        BL       write_6_8_number
// 1125         
// 1126         LCD_clear_L(60,3);
        MOVS     R1,#+3
        MOVS     R0,#+60
        BL       LCD_clear_L
// 1127         write_6_8_number(60,3,RightSpeedPwm);
        LDR.W    R0,??DataTable12_9
        LDRSH    R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R2,R0
        MOVS     R1,#+3
        MOVS     R0,#+60
        BL       write_6_8_number
// 1128         
// 1129         LCD_clear_L(0,4);        
        MOVS     R1,#+4
        MOVS     R0,#+0
        BL       LCD_clear_L
// 1130         write_6_8_number(0,4,anglePD);
        LDR.W    R0,??DataTable12_10
        LDRSH    R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R2,R0
        MOVS     R1,#+4
        MOVS     R0,#+0
        BL       write_6_8_number
// 1131         write_6_8_number(50,4,steerpwmout);
        LDR.W    R0,??DataTable12_11
        LDRSH    R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R2,R0
        MOVS     R1,#+4
        MOVS     R0,#+50
        BL       write_6_8_number
// 1132         write_6_8_number(100,4,SpeedPIDout);
        LDR.W    R0,??DataTable12_12
        LDRSH    R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R2,R0
        MOVS     R1,#+4
        MOVS     R0,#+100
        BL       write_6_8_number
// 1133         break;
// 1134         
// 1135  /*  case 2:     //第二页
// 1136            LCD_PrintImage((uint8 *)VideoImage1, 50, 157);
// 1137              
// 1138         
// 1139         break;*/
// 1140         
// 1141         
// 1142         
// 1143      
// 1144  
// 1145   } 
// 1146 }
??redraw_2:
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11:
        DC32     F6x8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_1:
        DC8      "da:"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_2:
        DC8      0x56, 0x3A, 0x00, 0x00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_3:
        DC32     0x447a0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_4:
        DC8      "Sp:"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_5:
        DC32     F8X16

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_6:
        DC32     ?_1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_7:
        DC32     page_num

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_8:
        DC32     V

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_9:
        DC32     w

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_10:
        DC32     ?_4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_11:
        DC32     acce

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_12:
        DC32     g_nCarAngle

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_13:
        DC32     acce_angle
// 1147 
// 1148 
// 1149 
// 1150 /*********************************修改变量数值***********************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1151 void change_value(unsigned char page,unsigned char m,float i)
// 1152 {  
change_value:
        PUSH     {R3-R9,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
// 1153   switch (page)
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+2
        BEQ.N    ??change_value_0
        BCC.W    ??change_value_1
        CMP      R4,#+4
        BEQ.W    ??change_value_2
        BCC.W    ??change_value_3
        B.N      ??change_value_1
// 1154   {  
// 1155   case 2:
// 1156      switch(m)
??change_value_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??change_value_4
        CMP      R5,#+2
        BEQ.N    ??change_value_5
        BCC.N    ??change_value_6
        CMP      R5,#+4
        BEQ.W    ??change_value_7
        BCC.N    ??change_value_8
        CMP      R5,#+6
        BEQ.W    ??change_value_9
        BCC.W    ??change_value_10
        B.N      ??change_value_11
// 1157         {         
// 1158              
// 1159          case 0:ACCE_STATIC+=i;       
??change_value_4:
        LDR.W    R0,??DataTable12_15
        LDR      R0,[R0, #+0]
        MOVS     R1,R6
        BL       __aeabi_fadd
        LDR.W    R1,??DataTable12_15
        STR      R0,[R1, #+0]
// 1160                 LCD_clear_L(60,0);
        MOVS     R1,#+0
        MOVS     R0,#+60
        BL       LCD_clear_L
// 1161                 write_6_8_char(0,0,'*');
        MOVS     R2,#+42
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       write_6_8_char
// 1162                 write_6_8_number(60,0,ACCE_STATIC);  
        LDR.W    R0,??DataTable12_15
        LDR      R2,[R0, #+0]
        MOVS     R1,#+0
        MOVS     R0,#+60
        BL       write_6_8_number
// 1163                 break;
        B.N      ??change_value_11
// 1164          case 1:stopcount+=10*i;
??change_value_6:
        LDR.W    R0,??DataTable12_17
        LDRH     R0,[R0, #+0]
        BL       __aeabi_ui2f
        MOVS     R7,R0
        LDR.W    R0,??DataTable13_29  ;; 0x41200000
        MOVS     R1,R6
        BL       __aeabi_fmul
        MOVS     R1,R7
        BL       __aeabi_fadd
        BL       __aeabi_f2iz
        LDR.W    R1,??DataTable12_17
        STRH     R0,[R1, #+0]
// 1165                 LCD_clear_L(60,1);
        MOVS     R1,#+1
        MOVS     R0,#+60
        BL       LCD_clear_L
// 1166                 write_6_8_char(0,1,'*');
        MOVS     R2,#+42
        MOVS     R1,#+1
        MOVS     R0,#+0
        BL       write_6_8_char
// 1167                 write_6_8_number(60,1,stopcount);
        LDR.W    R0,??DataTable12_17
        LDRH     R0,[R0, #+0]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+1
        MOVS     R0,#+60
        BL       write_6_8_number
// 1168                 break;
        B.N      ??change_value_11
// 1169         
// 1170         case 2:Speed_set+=i;
??change_value_5:
        LDR.W    R0,??DataTable12_1
        LDRH     R0,[R0, #+0]
        BL       __aeabi_ui2f
        MOVS     R1,R6
        BL       __aeabi_fadd
        BL       __aeabi_f2iz
        LDR.W    R1,??DataTable12_1
        STRH     R0,[R1, #+0]
// 1171                 LCD_clear_L(60,2);
        MOVS     R1,#+2
        MOVS     R0,#+60
        BL       LCD_clear_L
// 1172                 write_6_8_char(0,2,'*');
        MOVS     R2,#+42
        MOVS     R1,#+2
        MOVS     R0,#+0
        BL       write_6_8_char
// 1173                 write_6_8_number(60,2,Speed_set);
        LDR.W    R0,??DataTable12_1
        LDRH     R0,[R0, #+0]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+2
        MOVS     R0,#+60
        BL       write_6_8_number
// 1174                 break; 
        B.N      ??change_value_11
// 1175                 //lcd_ref_p1
// 1176         case 3:lcd_ref_p1+=i;
??change_value_8:
        LDR.W    R0,??DataTable12_20
        LDRSH    R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R1,R6
        BL       __aeabi_fadd
        BL       __aeabi_f2iz
        LDR.W    R1,??DataTable12_20
        STRH     R0,[R1, #+0]
// 1177                 LCD_clear_L(60,3);
        MOVS     R1,#+3
        MOVS     R0,#+60
        BL       LCD_clear_L
// 1178                 write_6_8_char(0,3,'*');
        MOVS     R2,#+42
        MOVS     R1,#+3
        MOVS     R0,#+0
        BL       write_6_8_char
// 1179                 write_6_8_number(60,3,lcd_ref_p1);
        LDR.W    R0,??DataTable12_20
        LDRSH    R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R2,R0
        MOVS     R1,#+3
        MOVS     R0,#+60
        BL       write_6_8_number
// 1180                 break;
        B.N      ??change_value_11
// 1181         case 4:lcd_ref_d1+=i;
??change_value_7:
        LDR.W    R0,??DataTable12_22
        LDRSH    R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R1,R6
        BL       __aeabi_fadd
        BL       __aeabi_f2iz
        LDR.W    R1,??DataTable12_22
        STRH     R0,[R1, #+0]
// 1182                 LCD_clear_L(60,4);
        MOVS     R1,#+4
        MOVS     R0,#+60
        BL       LCD_clear_L
// 1183                 write_6_8_char(0,4,'*');
        MOVS     R2,#+42
        MOVS     R1,#+4
        MOVS     R0,#+0
        BL       write_6_8_char
// 1184                 write_6_8_number(60,4,lcd_ref_d1);
        LDR.W    R0,??DataTable12_22
        LDRSH    R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R2,R0
        MOVS     R1,#+4
        MOVS     R0,#+60
        BL       write_6_8_number
// 1185                 break;
        B.N      ??change_value_11
// 1186         case 5:lcd_ref_p2+=i;
??change_value_10:
        LDR.W    R0,??DataTable12_24
        LDRSH    R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R1,R6
        BL       __aeabi_fadd
        BL       __aeabi_f2iz
        LDR.W    R1,??DataTable12_24
        STRH     R0,[R1, #+0]
// 1187                 LCD_clear_L(60,5);
        MOVS     R1,#+5
        MOVS     R0,#+60
        BL       LCD_clear_L
// 1188                 write_6_8_char(0,5,'*');
        MOVS     R2,#+42
        MOVS     R1,#+5
        MOVS     R0,#+0
        BL       write_6_8_char
// 1189                 write_6_8_number(60,5,lcd_ref_p2);
        LDR.W    R0,??DataTable12_24
        LDRSH    R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R2,R0
        MOVS     R1,#+5
        MOVS     R0,#+60
        BL       write_6_8_number
// 1190                 break;
        B.N      ??change_value_11
// 1191         case 6:lcd_ref_d2+=i;
??change_value_9:
        LDR.W    R0,??DataTable12_26
        LDRSH    R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R1,R6
        BL       __aeabi_fadd
        BL       __aeabi_f2iz
        LDR.W    R1,??DataTable12_26
        STRH     R0,[R1, #+0]
// 1192                 LCD_clear_L(60,6);
        MOVS     R1,#+6
        MOVS     R0,#+60
        BL       LCD_clear_L
// 1193                 write_6_8_char(0,6,'*');
        MOVS     R2,#+42
        MOVS     R1,#+6
        MOVS     R0,#+0
        BL       write_6_8_char
// 1194                 write_6_8_number(60,6,lcd_ref_d2);
        LDR.W    R0,??DataTable12_26
        LDRSH    R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R2,R0
        MOVS     R1,#+6
        MOVS     R0,#+60
        BL       write_6_8_number
// 1195                 break;        
// 1196       /*   case 4:Rg+=i;
// 1197                 LCD_clear_L(60,4);
// 1198                 write_6_8_char(0,4,'*');
// 1199                 write_6_8_number(60,4,Rg);
// 1200                 break;
// 1201         */ /*        
// 1202          case 4:angle_kp+=i;
// 1203                 LCD_clear_L(8,4);
// 1204                 write_6_8_char(0,4,'*');
// 1205                 write_6_8_number(8,4,angle_kp);
// 1206                 break;   
// 1207          case 5:angle_kd+=0.1*i;
// 1208                 LCD_clear_L(8,5);
// 1209                 write_6_8_char(0,5,'*');
// 1210                 write_6_8_number(8,5,angle_kd);
// 1211                 break;
// 1212            */
// 1213 	      }
// 1214      break;
??change_value_11:
        B.N      ??change_value_1
// 1215   case 3:
// 1216      switch(m)
??change_value_3:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??change_value_12
        CMP      R5,#+2
        BEQ.N    ??change_value_13
        BCC.N    ??change_value_14
        CMP      R5,#+4
        BEQ.W    ??change_value_15
        BCC.N    ??change_value_16
        CMP      R5,#+6
        BEQ.W    ??change_value_17
        BCC.W    ??change_value_18
        B.N      ??change_value_19
// 1217         {
// 1218           
// 1219          case 0:angle_kp+=i;       
??change_value_12:
        LDR.W    R0,??DataTable12_28
        LDR      R0,[R0, #+0]
        MOVS     R1,R6
        BL       __aeabi_fadd
        LDR.W    R1,??DataTable12_28
        STR      R0,[R1, #+0]
// 1220                 LCD_clear_L(60,0);
        MOVS     R1,#+0
        MOVS     R0,#+60
        BL       LCD_clear_L
// 1221                 write_6_8_char(0,0,'*');
        MOVS     R2,#+42
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       write_6_8_char
// 1222                 write_6_8_number(60,0,angle_kp); 
        LDR.W    R0,??DataTable12_28
        LDR      R2,[R0, #+0]
        MOVS     R1,#+0
        MOVS     R0,#+60
        BL       write_6_8_number
// 1223                 break;
        B.N      ??change_value_19
// 1224          case 1:angle_kd+=0.1*i;
??change_value_14:
        LDR.W    R0,??DataTable13_1
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        MOV      R8,R0
        MOV      R9,R1
        MOVS     R0,R6
        BL       __aeabi_f2d
        LDR.W    R2,??DataTable13_30  ;; 0x9999999a
        LDR.W    R3,??DataTable13_31  ;; 0x3fb99999
        BL       __aeabi_dmul
        MOV      R2,R8
        MOV      R3,R9
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        LDR.W    R1,??DataTable13_1
        STR      R0,[R1, #+0]
// 1225                 LCD_clear_L(60,1);
        MOVS     R1,#+1
        MOVS     R0,#+60
        BL       LCD_clear_L
// 1226                 write_6_8_char(0,1,'*');
        MOVS     R2,#+42
        MOVS     R1,#+1
        MOVS     R0,#+0
        BL       write_6_8_char
// 1227                 write_6_8_number(60,1,angle_kd); 
        LDR.W    R0,??DataTable13_1
        LDR      R2,[R0, #+0]
        MOVS     R1,#+1
        MOVS     R0,#+60
        BL       write_6_8_number
// 1228                 break;
        B.N      ??change_value_19
// 1229                 
// 1230          case 2:speed_kp+=i;
??change_value_13:
        LDR.W    R0,??DataTable13_3
        LDR      R0,[R0, #+0]
        MOVS     R1,R6
        BL       __aeabi_fadd
        LDR.W    R1,??DataTable13_3
        STR      R0,[R1, #+0]
// 1231                 LCD_clear_L(60,2);
        MOVS     R1,#+2
        MOVS     R0,#+60
        BL       LCD_clear_L
// 1232                 write_6_8_char(0,2,'*');
        MOVS     R2,#+42
        MOVS     R1,#+2
        MOVS     R0,#+0
        BL       write_6_8_char
// 1233                 write_6_8_number(60,2,speed_kp); 
        LDR.W    R0,??DataTable13_3
        LDR      R2,[R0, #+0]
        MOVS     R1,#+2
        MOVS     R0,#+60
        BL       write_6_8_number
// 1234                 break;
        B.N      ??change_value_19
// 1235                 
// 1236          case 3:speed_ki+=0.01*i;
??change_value_16:
        LDR.W    R0,??DataTable13_5
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        MOV      R8,R0
        MOV      R9,R1
        MOVS     R0,R6
        BL       __aeabi_f2d
        LDR.W    R2,??DataTable13_32  ;; 0x47ae147b
        LDR.W    R3,??DataTable13_33  ;; 0x3f847ae1
        BL       __aeabi_dmul
        MOV      R2,R8
        MOV      R3,R9
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        LDR.W    R1,??DataTable13_5
        STR      R0,[R1, #+0]
// 1237                 LCD_clear_L(60,3);
        MOVS     R1,#+3
        MOVS     R0,#+60
        BL       LCD_clear_L
// 1238                 write_6_8_char(0,3,'*');
        MOVS     R2,#+42
        MOVS     R1,#+3
        MOVS     R0,#+0
        BL       write_6_8_char
// 1239                 write_6_8_number(60,3,speed_ki); 
        LDR.W    R0,??DataTable13_5
        LDR      R2,[R0, #+0]
        MOVS     R1,#+3
        MOVS     R0,#+60
        BL       write_6_8_number
// 1240                 break; 
        B.N      ??change_value_19
// 1241                 
// 1242          case 4: zhongjian+=i;
??change_value_15:
        LDR.W    R0,??DataTable13_7
        LDRSH    R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R1,R6
        BL       __aeabi_fadd
        BL       __aeabi_f2iz
        LDR.W    R1,??DataTable13_7
        STRH     R0,[R1, #+0]
// 1243                 LCD_clear_L(60,4);
        MOVS     R1,#+4
        MOVS     R0,#+60
        BL       LCD_clear_L
// 1244                 write_6_8_char(0,4,'*');
        MOVS     R2,#+42
        MOVS     R1,#+4
        MOVS     R0,#+0
        BL       write_6_8_char
// 1245                 write_6_8_number(60,4,zhongjian); 
        LDR.W    R0,??DataTable13_7
        LDRSH    R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R2,R0
        MOVS     R1,#+4
        MOVS     R0,#+60
        BL       write_6_8_number
// 1246                 break;
        B.N      ??change_value_19
// 1247            case 5: WHITE_BLACK_OT+=i;
??change_value_18:
        LDR.W    R0,??DataTable13_9
        LDRB     R0,[R0, #+0]
        BL       __aeabi_ui2f
        MOVS     R1,R6
        BL       __aeabi_fadd
        BL       __aeabi_f2iz
        LDR.W    R1,??DataTable13_9
        STRB     R0,[R1, #+0]
// 1248                 LCD_clear_L(60,5);
        MOVS     R1,#+5
        MOVS     R0,#+60
        BL       LCD_clear_L
// 1249                 write_6_8_char(0,5,'*');
        MOVS     R2,#+42
        MOVS     R1,#+5
        MOVS     R0,#+0
        BL       write_6_8_char
// 1250                 write_6_8_number(60,5,WHITE_BLACK_OT); 
        LDR.W    R0,??DataTable13_9
        LDRB     R0,[R0, #+0]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+5
        MOVS     R0,#+60
        BL       write_6_8_number
// 1251                 break;
        B.N      ??change_value_19
// 1252                       
// 1253        
// 1254          case 6: ft1+=i;
??change_value_17:
        LDR.W    R0,??DataTable13_11
        LDRSH    R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R1,R6
        BL       __aeabi_fadd
        BL       __aeabi_f2iz
        LDR.W    R1,??DataTable13_11
        STRH     R0,[R1, #+0]
// 1255                 LCD_clear_L(60,6);
        MOVS     R1,#+6
        MOVS     R0,#+60
        BL       LCD_clear_L
// 1256                 write_6_8_char(0,6,'*');
        MOVS     R2,#+42
        MOVS     R1,#+6
        MOVS     R0,#+0
        BL       write_6_8_char
// 1257                 write_6_8_number(60,6,ft1); 
        LDR.W    R0,??DataTable13_11
        LDRSH    R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R2,R0
        MOVS     R1,#+6
        MOVS     R0,#+60
        BL       write_6_8_number
// 1258                 break; 
// 1259         }
// 1260        break; 
??change_value_19:
        B.N      ??change_value_1
// 1261       case 4:
// 1262      switch(m)
??change_value_2:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??change_value_20
        CMP      R5,#+2
        BEQ.N    ??change_value_21
        BCC.N    ??change_value_22
        CMP      R5,#+4
        BEQ.W    ??change_value_23
        BCC.N    ??change_value_24
        CMP      R5,#+6
        BEQ.W    ??change_value_25
        BCC.W    ??change_value_26
        B.N      ??change_value_27
// 1263         {
// 1264           
// 1265          case 0:tingting_p+=i;       
??change_value_20:
        LDR.W    R0,??DataTable13_13
        LDRSH    R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R1,R6
        BL       __aeabi_fadd
        BL       __aeabi_f2iz
        LDR.W    R1,??DataTable13_13
        STRH     R0,[R1, #+0]
// 1266                 LCD_clear_L(60,0);
        MOVS     R1,#+0
        MOVS     R0,#+60
        BL       LCD_clear_L
// 1267                 write_6_8_char(0,0,'*');
        MOVS     R2,#+42
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       write_6_8_char
// 1268                 write_6_8_number(60,0,tingting_p); 
        LDR.W    R0,??DataTable13_13
        LDRSH    R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R2,R0
        MOVS     R1,#+0
        MOVS     R0,#+60
        BL       write_6_8_number
// 1269                 break;
        B.N      ??change_value_27
// 1270          case 1:tingting_d+=i;
??change_value_22:
        LDR.W    R0,??DataTable13_15
        LDRSH    R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R1,R6
        BL       __aeabi_fadd
        BL       __aeabi_f2iz
        LDR.W    R1,??DataTable13_15
        STRH     R0,[R1, #+0]
// 1271                 LCD_clear_L(60,1);
        MOVS     R1,#+1
        MOVS     R0,#+60
        BL       LCD_clear_L
// 1272                 write_6_8_char(0,1,'*');
        MOVS     R2,#+42
        MOVS     R1,#+1
        MOVS     R0,#+0
        BL       write_6_8_char
// 1273                 write_6_8_number(60,1,tingting_d); 
        LDR.W    R0,??DataTable13_15
        LDRSH    R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R2,R0
        MOVS     R1,#+1
        MOVS     R0,#+60
        BL       write_6_8_number
// 1274                 break;
        B.N      ??change_value_27
// 1275         case 2:huanjie+=i;
??change_value_21:
        LDR.W    R0,??DataTable13_17
        LDRB     R0,[R0, #+0]
        BL       __aeabi_ui2f
        MOVS     R1,R6
        BL       __aeabi_fadd
        BL       __aeabi_f2iz
        LDR.W    R1,??DataTable13_17
        STRB     R0,[R1, #+0]
// 1276                 LCD_clear_L(60,2);
        MOVS     R1,#+2
        MOVS     R0,#+60
        BL       LCD_clear_L
// 1277                 write_6_8_char(0,2,'*');
        MOVS     R2,#+42
        MOVS     R1,#+2
        MOVS     R0,#+0
        BL       write_6_8_char
// 1278                 write_6_8_number(60,2,huanjie); 
        LDR.W    R0,??DataTable13_17
        LDRB     R0,[R0, #+0]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+2
        MOVS     R0,#+60
        BL       write_6_8_number
// 1279                 break;
        B.N      ??change_value_27
// 1280            case 3:qing+=i;
??change_value_24:
        LDR.W    R0,??DataTable13_19
        LDRB     R0,[R0, #+0]
        BL       __aeabi_ui2f
        MOVS     R1,R6
        BL       __aeabi_fadd
        BL       __aeabi_f2iz
        LDR.W    R1,??DataTable13_19
        STRB     R0,[R1, #+0]
// 1281                 LCD_clear_L(60,3);
        MOVS     R1,#+3
        MOVS     R0,#+60
        BL       LCD_clear_L
// 1282                 write_6_8_char(0,3,'*');
        MOVS     R2,#+42
        MOVS     R1,#+3
        MOVS     R0,#+0
        BL       write_6_8_char
// 1283                 write_6_8_number(60,3,qing); 
        LDR.N    R0,??DataTable13_19
        LDRB     R0,[R0, #+0]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+3
        MOVS     R0,#+60
        BL       write_6_8_number
// 1284                 break;
        B.N      ??change_value_27
// 1285            case 4:summ+=i;
??change_value_23:
        LDR.N    R0,??DataTable13_21
        LDRB     R0,[R0, #+0]
        BL       __aeabi_ui2f
        MOVS     R1,R6
        BL       __aeabi_fadd
        BL       __aeabi_f2iz
        LDR.N    R1,??DataTable13_21
        STRB     R0,[R1, #+0]
// 1286                 LCD_clear_L(60,4);
        MOVS     R1,#+4
        MOVS     R0,#+60
        BL       LCD_clear_L
// 1287                 write_6_8_char(0,4,'*');
        MOVS     R2,#+42
        MOVS     R1,#+4
        MOVS     R0,#+0
        BL       write_6_8_char
// 1288                 write_6_8_number(60,4,summ); 
        LDR.N    R0,??DataTable13_21
        LDRB     R0,[R0, #+0]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+4
        MOVS     R0,#+60
        BL       write_6_8_number
// 1289                 break;
        B.N      ??change_value_27
// 1290         case 5:da+=i;
??change_value_26:
        LDR.N    R0,??DataTable13_22
        LDRB     R0,[R0, #+0]
        BL       __aeabi_ui2f
        MOVS     R1,R6
        BL       __aeabi_fadd
        BL       __aeabi_f2iz
        LDR.N    R1,??DataTable13_22
        STRB     R0,[R1, #+0]
// 1291                 LCD_clear_L(60,5);
        MOVS     R1,#+5
        MOVS     R0,#+60
        BL       LCD_clear_L
// 1292                 write_6_8_char(0,5,'*');
        MOVS     R2,#+42
        MOVS     R1,#+5
        MOVS     R0,#+0
        BL       write_6_8_char
// 1293                 write_6_8_number(60,5,da); 
        LDR.N    R0,??DataTable13_22
        LDRB     R0,[R0, #+0]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+5
        MOVS     R0,#+60
        BL       write_6_8_number
// 1294                 break;
        B.N      ??change_value_27
// 1295       case 6:fuxiao+=i;
??change_value_25:
        LDR.N    R0,??DataTable13_24
        LDRB     R0,[R0, #+0]
        BL       __aeabi_ui2f
        MOVS     R1,R6
        BL       __aeabi_fadd
        BL       __aeabi_f2iz
        LDR.N    R1,??DataTable13_24
        STRB     R0,[R1, #+0]
// 1296                 LCD_clear_L(60,6);
        MOVS     R1,#+6
        MOVS     R0,#+60
        BL       LCD_clear_L
// 1297                 write_6_8_char(0,6,'*');
        MOVS     R2,#+42
        MOVS     R1,#+6
        MOVS     R0,#+0
        BL       write_6_8_char
// 1298                 write_6_8_number(60,6,fuxiao); 
        LDR.N    R0,??DataTable13_24
        LDRB     R0,[R0, #+0]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+6
        MOVS     R0,#+60
        BL       write_6_8_number
// 1299                 break;
// 1300         }
// 1301    
// 1302    break;
// 1303   }
// 1304  
// 1305 }	 		    
??change_value_27:
??change_value_1:
        POP      {R0,R4-R9,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12:
        DC32     control_top_whiteline

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_1:
        DC32     Speed_set

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_2:
        DC32     LeftRealSpeed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_3:
        DC32     RightRealSpeed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_4:
        DC32     ?_6

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_5:
        DC32     RealSpeed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_6:
        DC32     ?_7

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_7:
        DC32     LeftSpeedPwm

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_8:
        DC32     ?_8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_9:
        DC32     RightSpeedPwm

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_10:
        DC32     anglePD

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_11:
        DC32     steerpwmout

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_12:
        DC32     SpeedPIDout

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_13:
        DC32     line_num

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_14:
        DC32     ?_9

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_15:
        DC32     ACCE_STATIC

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_16:
        DC32     ?_10

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_17:
        DC32     stopcount

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_18:
        DC32     ?_11

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_19:
        DC32     ?_12

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_20:
        DC32     lcd_ref_p1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_21:
        DC32     ?_13

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_22:
        DC32     lcd_ref_d1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_23:
        DC32     ?_14

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_24:
        DC32     lcd_ref_p2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_25:
        DC32     ?_15

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_26:
        DC32     lcd_ref_d2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_27:
        DC32     ?_16

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_28:
        DC32     angle_kp
// 1306   
// 1307 /****************************************************
// 1308                      按键扫描函数
// 1309 *****************************************************/
// 1310 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1311 void KeyScan(void)
// 1312 {                  
KeyScan:
        PUSH     {R7,LR}
// 1313  //if(scan_control==0)        //循环扫描
// 1314   //{
// 1315   
// 1316   /////////////////////////////////////////////////////切屏
// 1317   if(!change_page)  //如果检测到低电平，说明按键按下
        LDR.N    R0,??DataTable13_34  ;; 0x400ff010
        LDR      R0,[R0, #+0]
        UBFX     R0,R0,#+19,#+1
        CMP      R0,#+0
        BNE.N    ??KeyScan_0
// 1318     {
// 1319       LCD_DLY_ms(30); //延时去抖，一般10-20ms
        MOVS     R0,#+30
        BL       LCD_DLY_ms
// 1320       if(!change_page)     //再次确认按键是否按下，没有按下则退出
        LDR.N    R0,??DataTable13_34  ;; 0x400ff010
        LDR      R0,[R0, #+0]
        UBFX     R0,R0,#+19,#+1
        CMP      R0,#+0
        BNE.N    ??KeyScan_0
// 1321 	     {
// 1322        while(!change_page);//如果确认按下按键等待按键释放，没有释放则一直等待
??KeyScan_1:
        LDR.N    R0,??DataTable13_34  ;; 0x400ff010
        LDR      R0,[R0, #+0]
        UBFX     R0,R0,#+19,#+1
        CMP      R0,#+0
        BEQ.N    ??KeyScan_1
// 1323 	           
// 1324 		   if(page_num<5)    //页序号加操作
        LDR.N    R0,??DataTable13_35
        LDRB     R0,[R0, #+0]
        CMP      R0,#+5
        BGE.N    ??KeyScan_2
// 1325 	         page_num++;
        LDR.N    R0,??DataTable13_35
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable13_35
        STRB     R0,[R1, #+0]
        B.N      ??KeyScan_3
// 1326 		   else
// 1327 		       page_num=0;
??KeyScan_2:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable13_35
        STRB     R0,[R1, #+0]
// 1328 		   
// 1329 		   line_num=0;
??KeyScan_3:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable13_36
        STRB     R0,[R1, #+0]
// 1330 		   pre_show();
        BL       pre_show
// 1331 
// 1332 	     }
// 1333       // fanting=1;
// 1334      
// 1335      }
// 1336     
// 1337 
// 1338  if(page_num==2||page_num==3||page_num==4)     //如不为第一页，则进行下一步扫描
??KeyScan_0:
        LDR.N    R0,??DataTable13_35
        LDRB     R0,[R0, #+0]
        CMP      R0,#+2
        BEQ.N    ??KeyScan_4
        LDR.N    R0,??DataTable13_35
        LDRB     R0,[R0, #+0]
        CMP      R0,#+3
        BEQ.N    ??KeyScan_4
        LDR.N    R0,??DataTable13_35
        LDRB     R0,[R0, #+0]
        CMP      R0,#+4
        BNE.W    ??KeyScan_5
// 1339  {
// 1340   /////////////////////////////////////////////////////切行
// 1341   if(!change_line)  //如果检测到低电平，说明按键按下
??KeyScan_4:
        LDR.N    R0,??DataTable13_34  ;; 0x400ff010
        LDR      R0,[R0, #+0]
        UBFX     R0,R0,#+17,#+1
        CMP      R0,#+0
        BNE.N    ??KeyScan_6
// 1342     {
// 1343       LCD_DLY_ms(30); //延时去抖，一般10-20ms
        MOVS     R0,#+30
        BL       LCD_DLY_ms
// 1344      if(!change_line)     //再次确认按键是否按下，没有按下则退出
        LDR.N    R0,??DataTable13_34  ;; 0x400ff010
        LDR      R0,[R0, #+0]
        UBFX     R0,R0,#+17,#+1
        CMP      R0,#+0
        BNE.N    ??KeyScan_6
// 1345 	     {
// 1346        while(!change_line);//如果确认按下按键等待按键释放，没有释放则一直等待
??KeyScan_7:
        LDR.N    R0,??DataTable13_34  ;; 0x400ff010
        LDR      R0,[R0, #+0]
        UBFX     R0,R0,#+17,#+1
        CMP      R0,#+0
        BEQ.N    ??KeyScan_7
// 1347 	     
// 1348 	     if(page_num!=0)
        LDR.N    R0,??DataTable13_35
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??KeyScan_8
// 1349 	        write_6_8_char(0,line_num,' ');
        MOVS     R2,#+32
        LDR.N    R0,??DataTable13_36
        LDRB     R1,[R0, #+0]
        MOVS     R0,#+0
        BL       write_6_8_char
// 1350 	           
// 1351 		   if(line_num<6)    //行序号加操作
??KeyScan_8:
        LDR.N    R0,??DataTable13_36
        LDRB     R0,[R0, #+0]
        CMP      R0,#+6
        BGE.N    ??KeyScan_9
// 1352 	         line_num++;
        LDR.N    R0,??DataTable13_36
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable13_36
        STRB     R0,[R1, #+0]
        B.N      ??KeyScan_10
// 1353 		   else
// 1354 		       line_num=0;
??KeyScan_9:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable13_36
        STRB     R0,[R1, #+0]
// 1355 		   
// 1356 		   if(page_num!=0)
??KeyScan_10:
        LDR.N    R0,??DataTable13_35
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??KeyScan_6
// 1357 	        write_6_8_char(0,line_num,'*');
        MOVS     R2,#+42
        LDR.N    R0,??DataTable13_36
        LDRB     R1,[R0, #+0]
        MOVS     R0,#+0
        BL       write_6_8_char
// 1358                 
// 1359 	     } 
// 1360 	     
// 1361    }
// 1362 /*对应参数加十*/
// 1363 
// 1364  if(!Add_10)  //如果检测到低电平，说明按键按下
??KeyScan_6:
        LDR.N    R0,??DataTable13_37  ;; 0x400ff050
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+31
        BMI.N    ??KeyScan_11
// 1365     {
// 1366        LCD_DLY_ms(30); //延时去抖，一般10-20ms
        MOVS     R0,#+30
        BL       LCD_DLY_ms
// 1367      if(!Add_10)     //再次确认按键是否按下，没有按下则退出
        LDR.N    R0,??DataTable13_37  ;; 0x400ff050
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+31
        BMI.N    ??KeyScan_11
// 1368 	   {
// 1369       while(!Add_10);//如果确认按下按键等待按键释放，没有释放则一直等待
??KeyScan_12:
        LDR.N    R0,??DataTable13_37  ;; 0x400ff050
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+31
        BPL.N    ??KeyScan_12
// 1370         change_value(page_num,line_num,10);
        LDR.N    R2,??DataTable13_29  ;; 0x41200000
        LDR.N    R0,??DataTable13_36
        LDRB     R1,[R0, #+0]
        LDR.N    R0,??DataTable13_35
        LDRB     R0,[R0, #+0]
        BL       change_value
// 1371 	   }
// 1372 	  }
// 1373 /*对应参数加一*/
// 1374 if(!Add_1)  
??KeyScan_11:
        LDR.N    R0,??DataTable13_34  ;; 0x400ff010
        LDR      R0,[R0, #+0]
        UBFX     R0,R0,#+28,#+1
        CMP      R0,#+0
        BNE.N    ??KeyScan_13
// 1375     {
// 1376 	 LCD_DLY_ms(30); 
        MOVS     R0,#+30
        BL       LCD_DLY_ms
// 1377      if(!Add_1)
        LDR.N    R0,??DataTable13_34  ;; 0x400ff010
        LDR      R0,[R0, #+0]
        UBFX     R0,R0,#+28,#+1
        CMP      R0,#+0
        BNE.N    ??KeyScan_13
// 1378 	   {
// 1379         while(!Add_1);
??KeyScan_14:
        LDR.N    R0,??DataTable13_34  ;; 0x400ff010
        LDR      R0,[R0, #+0]
        UBFX     R0,R0,#+28,#+1
        CMP      R0,#+0
        BEQ.N    ??KeyScan_14
// 1380         change_value(page_num,line_num,1);  
        MOVS     R2,#+1065353216
        LDR.N    R0,??DataTable13_36
        LDRB     R1,[R0, #+0]
        LDR.N    R0,??DataTable13_35
        LDRB     R0,[R0, #+0]
        BL       change_value
// 1381 	   }
// 1382 	  }
// 1383 /*对应参数减一*/
// 1384 if(!Sub_1)
??KeyScan_13:
        LDR.N    R0,??DataTable13_34  ;; 0x400ff010
        LDR      R0,[R0, #+0]
        UBFX     R0,R0,#+29,#+1
        CMP      R0,#+0
        BNE.N    ??KeyScan_15
// 1385    {
// 1386   	 LCD_DLY_ms(30);  
        MOVS     R0,#+30
        BL       LCD_DLY_ms
// 1387      if(!Sub_1)     
        LDR.N    R0,??DataTable13_34  ;; 0x400ff010
        LDR      R0,[R0, #+0]
        UBFX     R0,R0,#+29,#+1
        CMP      R0,#+0
        BNE.N    ??KeyScan_15
// 1388 	   {
// 1389         while(!Sub_1);
??KeyScan_16:
        LDR.N    R0,??DataTable13_34  ;; 0x400ff010
        LDR      R0,[R0, #+0]
        UBFX     R0,R0,#+29,#+1
        CMP      R0,#+0
        BEQ.N    ??KeyScan_16
// 1390         change_value(page_num,line_num,-1);
        LDR.N    R2,??DataTable13_38  ;; 0xbf800000
        LDR.N    R0,??DataTable13_36
        LDRB     R1,[R0, #+0]
        LDR.N    R0,??DataTable13_35
        LDRB     R0,[R0, #+0]
        BL       change_value
// 1391 	 	 }
// 1392 	  }
// 1393 /*对应参数减十*/
// 1394 if(!Sub_10){
??KeyScan_15:
        LDR.N    R0,??DataTable13_37  ;; 0x400ff050
        LDR      R0,[R0, #+0]
        UBFX     R0,R0,#+1,#+1
        CMP      R0,#+0
        BNE.N    ??KeyScan_5
// 1395   LCD_DLY_ms(30); 
        MOVS     R0,#+30
        BL       LCD_DLY_ms
// 1396   if(!Sub_10){
        LDR.N    R0,??DataTable13_37  ;; 0x400ff050
        LDR      R0,[R0, #+0]
        UBFX     R0,R0,#+1,#+1
        CMP      R0,#+0
        BNE.N    ??KeyScan_5
// 1397     while(!Sub_10);
??KeyScan_17:
        LDR.N    R0,??DataTable13_37  ;; 0x400ff050
        LDR      R0,[R0, #+0]
        UBFX     R0,R0,#+1,#+1
        CMP      R0,#+0
        BEQ.N    ??KeyScan_17
// 1398     change_value(page_num,line_num,-10);
        LDR.N    R2,??DataTable13_39  ;; 0xc1200000
        LDR.N    R0,??DataTable13_36
        LDRB     R1,[R0, #+0]
        LDR.N    R0,??DataTable13_35
        LDRB     R0,[R0, #+0]
        BL       change_value
// 1399   }
// 1400  }
// 1401 	  
// 1402 
// 1403  }
// 1404  
// 1405 }
??KeyScan_5:
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13:
        DC32     ?_17

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_1:
        DC32     angle_kd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_2:
        DC32     ?_18

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_3:
        DC32     speed_kp

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_4:
        DC32     ?_19

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_5:
        DC32     speed_ki

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_6:
        DC32     ?_20

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_7:
        DC32     zhongjian

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_8:
        DC32     ?_21

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_9:
        DC32     WHITE_BLACK_OT

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_10:
        DC32     ?_22

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_11:
        DC32     ft1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_12:
        DC32     ?_23

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_13:
        DC32     tingting_p

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_14:
        DC32     ?_24

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_15:
        DC32     tingting_d

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_16:
        DC32     ?_25

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_17:
        DC32     huanjie

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_18:
        DC32     ?_26

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_19:
        DC32     qing

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_20:
        DC32     ?_27

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_21:
        DC32     summ

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_22:
        DC32     da

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_23:
        DC32     ?_29

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_24:
        DC32     fuxiao

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_25:
        DC32     ?_30

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_26:
        DC32     ?_31

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_27:
        DC32     g_nLeftCount

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_28:
        DC32     g_nRightCount

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_29:
        DC32     0x41200000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_30:
        DC32     0x9999999a

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_31:
        DC32     0x3fb99999

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_32:
        DC32     0x47ae147b

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_33:
        DC32     0x3f847ae1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_34:
        DC32     0x400ff010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_35:
        DC32     page_num

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_36:
        DC32     line_num

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_37:
        DC32     0x400ff050

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_38:
        DC32     0xbf800000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_39:
        DC32     0xc1200000

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
// 1406 
// 1407 
// 
// 7 682 bytes in section .bss
//     1 byte  in section .data
// 2 444 bytes in section .rodata
// 7 090 bytes in section .text
// 
// 7 090 bytes of CODE  memory
// 2 444 bytes of CONST memory
// 7 683 bytes of DATA  memory
//
//Errors: none
//Warnings: none
