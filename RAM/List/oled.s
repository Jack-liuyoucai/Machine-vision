///////////////////////////////////////////////////////////////////////////////
//                                                                            /
//                                                      27/Apr/2013  13:44:42 /
// IAR ANSI C/C++ Compiler V6.30.4.23288/W32 EVALUATION for ARM               /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Users\Administrator\Desktop\4.25屏幕 下位机 发送     /
//                    接受 像素处理  死机\src\Sources\Drivers\oled\oled.c     /
//    Command line =  "C:\Users\Administrator\Desktop\4.25屏幕 下位机 发送    /
//                    接受 像素处理  死机\src\Sources\Drivers\oled\oled.c"    /
//                    -lCN "C:\Users\Administrator\Desktop\4.25屏幕 下位机    /
//                    发送 接受 像素处理  死机\RAM\List\" -lB                 /
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
//                    接受 像素处理  死机\RAM\List\oled.s                     /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME oled

        #define SHT_PROGBITS 0x1

        EXTERN ACCE_STATIC
        EXTERN LeftSpeedPwm
        EXTERN Left_cnt
        EXTERN Pixel
        EXTERN RealSpeed
        EXTERN RightSpeedPwm
        EXTERN Right_cnt
        EXTERN SpeedPID
        EXTERN Speed_set
        EXTERN V
        EXTERN WHITE_CENTER
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
        EXTERN black_latch
        EXTERN g_nCarAngle
        EXTERN g_nLeftCount
        EXTERN g_nRightCount
        EXTERN gpio_init
        EXTERN latch
        EXTERN p_distance
        EXTERN speed_ki
        EXTERN speed_kp
        EXTERN steer_kd
        EXTERN steer_kp
        EXTERN steerpwm
        EXTERN w
        EXTERN white_center
        EXTERN white_latch

        PUBLIC Draw_BMP
        PUBLIC F6x8
        PUBLIC F8X16
        PUBLIC KeyScan
        PUBLIC LCD_CLS
        PUBLIC LCD_DLY_ms
        PUBLIC LCD_Fill
        PUBLIC LCD_Init
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
        PUBLIC memset
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

// C:\Users\Administrator\Desktop\4.25屏幕 下位机 发送 接受 像素处理  死机\src\Sources\Drivers\oled\oled.c
//    1 #include "include.h"

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP memset
        THUMB
// __intrinsic __nounwind __interwork __softfp void *memset(void *, int, size_t)
memset:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R2,R5
        MOVS     R1,R6
        MOVS     R0,R4
        BL       __aeabi_memset
        MOVS     R0,R4
        POP      {R4-R6,PC}       ;; return
//    2 #include "oled.h"
//    3 
//    4 #define X_WIDTH 128
//    5 #define Y_WIDTH 64
//    6 
//    7 
//    8 extern float V;
//    9 extern uint8 WHITE_CENTER;
//   10 extern float angle_kp;
//   11 extern float angle_kd;
//   12 extern float RealSpeed;
//   13 extern float acce_angle;
//   14 extern float speed_kp;
//   15 extern float speed_ki;
//   16 extern int16 g_nLeftCount;
//   17 extern int16 g_nRightCount;
//   18 
//   19 extern uint8 Left_cnt;
//   20 extern uint8 Right_cnt;
//   21 
//   22 extern float steer_kp;
//   23 extern float steer_kd;
//   24 
//   25 extern float g_nCarAngle;
//   26 extern float acce,w;
//   27 extern float GYRO_STATIC,ACCE_STATIC;           //零点偏移量
//   28 
//   29 
//   30 extern uint16 latch;
//   31 extern float p_distance;
//   32 extern float white_center;
//   33 
//   34 extern int8 IntegrationTime;
//   35 extern int16 LeftSpeedPwm;
//   36 extern int16 RightSpeedPwm;
//   37 extern int16 anglePD;
//   38 extern int16 SpeedPID;
//   39 extern int16 steerpwm;
//   40 
//   41 extern uint16 black_latch;
//   42 extern uint16 white_latch;
//   43 
//   44 extern  uint16 Pixel[128];              //
//   45 extern  uint8 CCD_value[128];
//   46 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   47 uint8 g_aucImageTable[60][128]; //用于在OLED屏上显示的图片缓存
g_aucImageTable:
        DS8 7680
//   48 
//   49 
//   50 extern uint8 Speed_set;
//   51 extern char delaytime;
//   52 

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   53 unsigned char page_num=0;     //页序号
page_num:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   54 unsigned char line_num=0;     //行序号
line_num:
        DS8 1

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//   55 unsigned char re_display=1;   //预显示标志位 
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
        DATA
        DC8 "V:"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "W:"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "acce:">`:
        DATA
        DC8 "acce:"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "L_c:">`:
        DATA
        DC8 "L_c:"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "R_c:">`:
        DATA
        DC8 "R_c:"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "p_d:">`:
        DATA
        DC8 "p_d:"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "w_c:">`:
        DATA
        DC8 "w_c:"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "Sp:"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Rsp:">`:
        DATA
        DC8 "Rsp:"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "L_PWM:">`:
        DATA
        DC8 "L_PWM:"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "R_PWM:">`:
        DATA
        DC8 "R_PWM:"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "ACCE:">`:
        DATA
        DC8 "ACCE:"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "WHITE_C:">`:
        DATA
        DC8 "WHITE_C:"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "ang_kp:">`:
        DATA
        DC8 "ang_kp:"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "ang_kd:">`:
        DATA
        DC8 "ang_kd:"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "sped_kp:">`:
        DATA
        DC8 "sped_kp:"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "sped_ki:">`:
        DATA
        DC8 "sped_ki:"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "ster_kp:">`:
        DATA
        DC8 "ster_kp:"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "ster_kd:">`:
        DATA
        DC8 "ster_kd:"
        DC8 0, 0, 0
//   56 
//   57 
//   58 
//   59 
//   60 
//   61 //======================================
//   62 // 128X64I液晶底层驱动[6X8]字体库

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
//   63 const unsigned char F6x8[][6] =
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
//   64 {
//   65     { 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 },   // sp
//   66     { 0x00, 0x00, 0x00, 0x2f, 0x00, 0x00 },   // !
//   67     { 0x00, 0x00, 0x07, 0x00, 0x07, 0x00 },   // "
//   68     { 0x00, 0x14, 0x7f, 0x14, 0x7f, 0x14 },   // #
//   69     { 0x00, 0x24, 0x2a, 0x7f, 0x2a, 0x12 },   // $
//   70     { 0x00, 0x62, 0x64, 0x08, 0x13, 0x23 },   // %
//   71     { 0x00, 0x36, 0x49, 0x55, 0x22, 0x50 },   // &
//   72     { 0x00, 0x00, 0x05, 0x03, 0x00, 0x00 },   // '
//   73     { 0x00, 0x00, 0x1c, 0x22, 0x41, 0x00 },   // (
//   74     { 0x00, 0x00, 0x41, 0x22, 0x1c, 0x00 },   // )
//   75     { 0x00, 0x14, 0x08, 0x3E, 0x08, 0x14 },   // *
//   76     { 0x00, 0x08, 0x08, 0x3E, 0x08, 0x08 },   // +
//   77     { 0x00, 0x00, 0x00, 0xA0, 0x60, 0x00 },   // ,
//   78     { 0x00, 0x08, 0x08, 0x08, 0x08, 0x08 },   // -
//   79     { 0x00, 0x00, 0x60, 0x60, 0x00, 0x00 },   // .
//   80     { 0x00, 0x20, 0x10, 0x08, 0x04, 0x02 },   // /
//   81     { 0x00, 0x3E, 0x51, 0x49, 0x45, 0x3E },   // 0
//   82     { 0x00, 0x00, 0x42, 0x7F, 0x40, 0x00 },   // 1
//   83     { 0x00, 0x42, 0x61, 0x51, 0x49, 0x46 },   // 2
//   84     { 0x00, 0x21, 0x41, 0x45, 0x4B, 0x31 },   // 3
//   85     { 0x00, 0x18, 0x14, 0x12, 0x7F, 0x10 },   // 4
//   86     { 0x00, 0x27, 0x45, 0x45, 0x45, 0x39 },   // 5
//   87     { 0x00, 0x3C, 0x4A, 0x49, 0x49, 0x30 },   // 6
//   88     { 0x00, 0x01, 0x71, 0x09, 0x05, 0x03 },   // 7
//   89     { 0x00, 0x36, 0x49, 0x49, 0x49, 0x36 },   // 8
//   90     { 0x00, 0x06, 0x49, 0x49, 0x29, 0x1E },   // 9
//   91     { 0x00, 0x00, 0x36, 0x36, 0x00, 0x00 },   // :
//   92     { 0x00, 0x00, 0x56, 0x36, 0x00, 0x00 },   // ;
//   93     { 0x00, 0x08, 0x14, 0x22, 0x41, 0x00 },   // <
//   94     { 0x00, 0x14, 0x14, 0x14, 0x14, 0x14 },   // =
//   95     { 0x00, 0x00, 0x41, 0x22, 0x14, 0x08 },   // >
//   96     { 0x00, 0x02, 0x01, 0x51, 0x09, 0x06 },   // ?
//   97     { 0x00, 0x32, 0x49, 0x59, 0x51, 0x3E },   // @
//   98     { 0x00, 0x7C, 0x12, 0x11, 0x12, 0x7C },   // A
//   99     { 0x00, 0x7F, 0x49, 0x49, 0x49, 0x36 },   // B
//  100     { 0x00, 0x3E, 0x41, 0x41, 0x41, 0x22 },   // C
//  101     { 0x00, 0x7F, 0x41, 0x41, 0x22, 0x1C },   // D
//  102     { 0x00, 0x7F, 0x49, 0x49, 0x49, 0x41 },   // E
//  103     { 0x00, 0x7F, 0x09, 0x09, 0x09, 0x01 },   // F
//  104     { 0x00, 0x3E, 0x41, 0x49, 0x49, 0x7A },   // G
//  105     { 0x00, 0x7F, 0x08, 0x08, 0x08, 0x7F },   // H
//  106     { 0x00, 0x00, 0x41, 0x7F, 0x41, 0x00 },   // I
//  107     { 0x00, 0x20, 0x40, 0x41, 0x3F, 0x01 },   // J
//  108     { 0x00, 0x7F, 0x08, 0x14, 0x22, 0x41 },   // K
//  109     { 0x00, 0x7F, 0x40, 0x40, 0x40, 0x40 },   // L
//  110     { 0x00, 0x7F, 0x02, 0x0C, 0x02, 0x7F },   // M
//  111     { 0x00, 0x7F, 0x04, 0x08, 0x10, 0x7F },   // N
//  112     { 0x00, 0x3E, 0x41, 0x41, 0x41, 0x3E },   // O
//  113     { 0x00, 0x7F, 0x09, 0x09, 0x09, 0x06 },   // P
//  114     { 0x00, 0x3E, 0x41, 0x51, 0x21, 0x5E },   // Q
//  115     { 0x00, 0x7F, 0x09, 0x19, 0x29, 0x46 },   // R
//  116     { 0x00, 0x46, 0x49, 0x49, 0x49, 0x31 },   // S
//  117     { 0x00, 0x01, 0x01, 0x7F, 0x01, 0x01 },   // T
//  118     { 0x00, 0x3F, 0x40, 0x40, 0x40, 0x3F },   // U
//  119     { 0x00, 0x1F, 0x20, 0x40, 0x20, 0x1F },   // V
//  120     { 0x00, 0x3F, 0x40, 0x38, 0x40, 0x3F },   // W
//  121     { 0x00, 0x63, 0x14, 0x08, 0x14, 0x63 },   // X
//  122     { 0x00, 0x07, 0x08, 0x70, 0x08, 0x07 },   // Y
//  123     { 0x00, 0x61, 0x51, 0x49, 0x45, 0x43 },   // Z
//  124     { 0x00, 0x00, 0x7F, 0x41, 0x41, 0x00 },   // [
//  125     { 0x00, 0x55, 0x2A, 0x55, 0x2A, 0x55 },   // 55
//  126     { 0x00, 0x00, 0x41, 0x41, 0x7F, 0x00 },   // ]
//  127     { 0x00, 0x04, 0x02, 0x01, 0x02, 0x04 },   // ^
//  128     { 0x00, 0x40, 0x40, 0x40, 0x40, 0x40 },   // _
//  129     { 0x00, 0x00, 0x01, 0x02, 0x04, 0x00 },   // '
//  130     { 0x00, 0x20, 0x54, 0x54, 0x54, 0x78 },   // a
//  131     { 0x00, 0x7F, 0x48, 0x44, 0x44, 0x38 },   // b
//  132     { 0x00, 0x38, 0x44, 0x44, 0x44, 0x20 },   // c
//  133     { 0x00, 0x38, 0x44, 0x44, 0x48, 0x7F },   // d
//  134     { 0x00, 0x38, 0x54, 0x54, 0x54, 0x18 },   // e
//  135     { 0x00, 0x08, 0x7E, 0x09, 0x01, 0x02 },   // f
//  136     { 0x00, 0x18, 0xA4, 0xA4, 0xA4, 0x7C },   // g
//  137     { 0x00, 0x7F, 0x08, 0x04, 0x04, 0x78 },   // h
//  138     { 0x00, 0x00, 0x44, 0x7D, 0x40, 0x00 },   // i
//  139     { 0x00, 0x40, 0x80, 0x84, 0x7D, 0x00 },   // j
//  140     { 0x00, 0x7F, 0x10, 0x28, 0x44, 0x00 },   // k
//  141     { 0x00, 0x00, 0x41, 0x7F, 0x40, 0x00 },   // l
//  142     { 0x00, 0x7C, 0x04, 0x18, 0x04, 0x78 },   // m
//  143     { 0x00, 0x7C, 0x08, 0x04, 0x04, 0x78 },   // n
//  144     { 0x00, 0x38, 0x44, 0x44, 0x44, 0x38 },   // o
//  145     { 0x00, 0xFC, 0x24, 0x24, 0x24, 0x18 },   // p
//  146     { 0x00, 0x18, 0x24, 0x24, 0x18, 0xFC },   // q
//  147     { 0x00, 0x7C, 0x08, 0x04, 0x04, 0x08 },   // r
//  148     { 0x00, 0x48, 0x54, 0x54, 0x54, 0x20 },   // s
//  149     { 0x00, 0x04, 0x3F, 0x44, 0x40, 0x20 },   // t
//  150     { 0x00, 0x3C, 0x40, 0x40, 0x20, 0x7C },   // u
//  151     { 0x00, 0x1C, 0x20, 0x40, 0x20, 0x1C },   // v
//  152     { 0x00, 0x3C, 0x40, 0x30, 0x40, 0x3C },   // w
//  153     { 0x00, 0x44, 0x28, 0x10, 0x28, 0x44 },   // x
//  154     { 0x00, 0x1C, 0xA0, 0xA0, 0xA0, 0x7C },   // y
//  155     { 0x00, 0x44, 0x64, 0x54, 0x4C, 0x44 },   // z
//  156     { 0x14, 0x14, 0x14, 0x14, 0x14, 0x14 }    // horiz lines
//  157 };
//  158 //======================================================
//  159 // 128X64I液晶底层驱动[8X16]字体库
//  160 // 设计者: powerint
//  161 // 描  述: [8X16]西文字符的字模数据 (纵向取模,字节倒序)
//  162 // !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~
//  163 //======================================================

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
//  164 const unsigned char F8X16[]=
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
//  165 {
//  166   0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,// 0
//  167   0x00,0x00,0x00,0xF8,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x33,0x30,0x00,0x00,0x00,//!1
//  168   0x00,0x10,0x0C,0x06,0x10,0x0C,0x06,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,//"2
//  169   0x40,0xC0,0x78,0x40,0xC0,0x78,0x40,0x00,0x04,0x3F,0x04,0x04,0x3F,0x04,0x04,0x00,//#3
//  170   0x00,0x70,0x88,0xFC,0x08,0x30,0x00,0x00,0x00,0x18,0x20,0xFF,0x21,0x1E,0x00,0x00,//$4
//  171   0xF0,0x08,0xF0,0x00,0xE0,0x18,0x00,0x00,0x00,0x21,0x1C,0x03,0x1E,0x21,0x1E,0x00,//%5
//  172   0x00,0xF0,0x08,0x88,0x70,0x00,0x00,0x00,0x1E,0x21,0x23,0x24,0x19,0x27,0x21,0x10,//&6
//  173   0x10,0x16,0x0E,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,//'7
//  174   0x00,0x00,0x00,0xE0,0x18,0x04,0x02,0x00,0x00,0x00,0x00,0x07,0x18,0x20,0x40,0x00,//(8
//  175   0x00,0x02,0x04,0x18,0xE0,0x00,0x00,0x00,0x00,0x40,0x20,0x18,0x07,0x00,0x00,0x00,//)9
//  176   0x40,0x40,0x80,0xF0,0x80,0x40,0x40,0x00,0x02,0x02,0x01,0x0F,0x01,0x02,0x02,0x00,//*10
//  177   0x00,0x00,0x00,0xF0,0x00,0x00,0x00,0x00,0x01,0x01,0x01,0x1F,0x01,0x01,0x01,0x00,//+11
//  178   0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x80,0xB0,0x70,0x00,0x00,0x00,0x00,0x00,//,12
//  179   0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x01,0x01,0x01,0x01,0x01,0x01,0x01,//-13
//  180   0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x30,0x30,0x00,0x00,0x00,0x00,0x00,//.14
//  181   0x00,0x00,0x00,0x00,0x80,0x60,0x18,0x04,0x00,0x60,0x18,0x06,0x01,0x00,0x00,0x00,///15
//  182   0x00,0xE0,0x10,0x08,0x08,0x10,0xE0,0x00,0x00,0x0F,0x10,0x20,0x20,0x10,0x0F,0x00,//016
//  183   0x00,0x10,0x10,0xF8,0x00,0x00,0x00,0x00,0x00,0x20,0x20,0x3F,0x20,0x20,0x00,0x00,//117
//  184   0x00,0x70,0x08,0x08,0x08,0x88,0x70,0x00,0x00,0x30,0x28,0x24,0x22,0x21,0x30,0x00,//218
//  185   0x00,0x30,0x08,0x88,0x88,0x48,0x30,0x00,0x00,0x18,0x20,0x20,0x20,0x11,0x0E,0x00,//319
//  186   0x00,0x00,0xC0,0x20,0x10,0xF8,0x00,0x00,0x00,0x07,0x04,0x24,0x24,0x3F,0x24,0x00,//420
//  187   0x00,0xF8,0x08,0x88,0x88,0x08,0x08,0x00,0x00,0x19,0x21,0x20,0x20,0x11,0x0E,0x00,//521
//  188   0x00,0xE0,0x10,0x88,0x88,0x18,0x00,0x00,0x00,0x0F,0x11,0x20,0x20,0x11,0x0E,0x00,//622
//  189   0x00,0x38,0x08,0x08,0xC8,0x38,0x08,0x00,0x00,0x00,0x00,0x3F,0x00,0x00,0x00,0x00,//723
//  190   0x00,0x70,0x88,0x08,0x08,0x88,0x70,0x00,0x00,0x1C,0x22,0x21,0x21,0x22,0x1C,0x00,//824
//  191   0x00,0xE0,0x10,0x08,0x08,0x10,0xE0,0x00,0x00,0x00,0x31,0x22,0x22,0x11,0x0F,0x00,//925
//  192   0x00,0x00,0x00,0xC0,0xC0,0x00,0x00,0x00,0x00,0x00,0x00,0x30,0x30,0x00,0x00,0x00,//:26
//  193   0x00,0x00,0x00,0x80,0x00,0x00,0x00,0x00,0x00,0x00,0x80,0x60,0x00,0x00,0x00,0x00,//;27
//  194   0x00,0x00,0x80,0x40,0x20,0x10,0x08,0x00,0x00,0x01,0x02,0x04,0x08,0x10,0x20,0x00,//<28
//  195   0x40,0x40,0x40,0x40,0x40,0x40,0x40,0x00,0x04,0x04,0x04,0x04,0x04,0x04,0x04,0x00,//=29
//  196   0x00,0x08,0x10,0x20,0x40,0x80,0x00,0x00,0x00,0x20,0x10,0x08,0x04,0x02,0x01,0x00,//>30
//  197   0x00,0x70,0x48,0x08,0x08,0x08,0xF0,0x00,0x00,0x00,0x00,0x30,0x36,0x01,0x00,0x00,//?31
//  198   0xC0,0x30,0xC8,0x28,0xE8,0x10,0xE0,0x00,0x07,0x18,0x27,0x24,0x23,0x14,0x0B,0x00,//@32
//  199   0x00,0x00,0xC0,0x38,0xE0,0x00,0x00,0x00,0x20,0x3C,0x23,0x02,0x02,0x27,0x38,0x20,//A33
//  200   0x08,0xF8,0x88,0x88,0x88,0x70,0x00,0x00,0x20,0x3F,0x20,0x20,0x20,0x11,0x0E,0x00,//B34
//  201   0xC0,0x30,0x08,0x08,0x08,0x08,0x38,0x00,0x07,0x18,0x20,0x20,0x20,0x10,0x08,0x00,//C35
//  202   0x08,0xF8,0x08,0x08,0x08,0x10,0xE0,0x00,0x20,0x3F,0x20,0x20,0x20,0x10,0x0F,0x00,//D36
//  203   0x08,0xF8,0x88,0x88,0xE8,0x08,0x10,0x00,0x20,0x3F,0x20,0x20,0x23,0x20,0x18,0x00,//E37
//  204   0x08,0xF8,0x88,0x88,0xE8,0x08,0x10,0x00,0x20,0x3F,0x20,0x00,0x03,0x00,0x00,0x00,//F38
//  205   0xC0,0x30,0x08,0x08,0x08,0x38,0x00,0x00,0x07,0x18,0x20,0x20,0x22,0x1E,0x02,0x00,//G39
//  206   0x08,0xF8,0x08,0x00,0x00,0x08,0xF8,0x08,0x20,0x3F,0x21,0x01,0x01,0x21,0x3F,0x20,//H40
//  207   0x00,0x08,0x08,0xF8,0x08,0x08,0x00,0x00,0x00,0x20,0x20,0x3F,0x20,0x20,0x00,0x00,//I41
//  208   0x00,0x00,0x08,0x08,0xF8,0x08,0x08,0x00,0xC0,0x80,0x80,0x80,0x7F,0x00,0x00,0x00,//J42
//  209   0x08,0xF8,0x88,0xC0,0x28,0x18,0x08,0x00,0x20,0x3F,0x20,0x01,0x26,0x38,0x20,0x00,//K43
//  210   0x08,0xF8,0x08,0x00,0x00,0x00,0x00,0x00,0x20,0x3F,0x20,0x20,0x20,0x20,0x30,0x00,//L44
//  211   0x08,0xF8,0xF8,0x00,0xF8,0xF8,0x08,0x00,0x20,0x3F,0x00,0x3F,0x00,0x3F,0x20,0x00,//M45
//  212   0x08,0xF8,0x30,0xC0,0x00,0x08,0xF8,0x08,0x20,0x3F,0x20,0x00,0x07,0x18,0x3F,0x00,//N46
//  213   0xE0,0x10,0x08,0x08,0x08,0x10,0xE0,0x00,0x0F,0x10,0x20,0x20,0x20,0x10,0x0F,0x00,//O47
//  214   0x08,0xF8,0x08,0x08,0x08,0x08,0xF0,0x00,0x20,0x3F,0x21,0x01,0x01,0x01,0x00,0x00,//P48
//  215   0xE0,0x10,0x08,0x08,0x08,0x10,0xE0,0x00,0x0F,0x18,0x24,0x24,0x38,0x50,0x4F,0x00,//Q49
//  216   0x08,0xF8,0x88,0x88,0x88,0x88,0x70,0x00,0x20,0x3F,0x20,0x00,0x03,0x0C,0x30,0x20,//R50
//  217   0x00,0x70,0x88,0x08,0x08,0x08,0x38,0x00,0x00,0x38,0x20,0x21,0x21,0x22,0x1C,0x00,//S51
//  218   0x18,0x08,0x08,0xF8,0x08,0x08,0x18,0x00,0x00,0x00,0x20,0x3F,0x20,0x00,0x00,0x00,//T52
//  219   0x08,0xF8,0x08,0x00,0x00,0x08,0xF8,0x08,0x00,0x1F,0x20,0x20,0x20,0x20,0x1F,0x00,//U53
//  220   0x08,0x78,0x88,0x00,0x00,0xC8,0x38,0x08,0x00,0x00,0x07,0x38,0x0E,0x01,0x00,0x00,//V54
//  221   0xF8,0x08,0x00,0xF8,0x00,0x08,0xF8,0x00,0x03,0x3C,0x07,0x00,0x07,0x3C,0x03,0x00,//W55
//  222   0x08,0x18,0x68,0x80,0x80,0x68,0x18,0x08,0x20,0x30,0x2C,0x03,0x03,0x2C,0x30,0x20,//X56
//  223   0x08,0x38,0xC8,0x00,0xC8,0x38,0x08,0x00,0x00,0x00,0x20,0x3F,0x20,0x00,0x00,0x00,//Y57
//  224   0x10,0x08,0x08,0x08,0xC8,0x38,0x08,0x00,0x20,0x38,0x26,0x21,0x20,0x20,0x18,0x00,//Z58
//  225   0x00,0x00,0x00,0xFE,0x02,0x02,0x02,0x00,0x00,0x00,0x00,0x7F,0x40,0x40,0x40,0x00,//[59
//  226   0x00,0x0C,0x30,0xC0,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x01,0x06,0x38,0xC0,0x00,//\60
//  227   0x00,0x02,0x02,0x02,0xFE,0x00,0x00,0x00,0x00,0x40,0x40,0x40,0x7F,0x00,0x00,0x00,//]61
//  228   0x00,0x00,0x04,0x02,0x02,0x02,0x04,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,//^62
//  229   0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x80,//_63
//  230   0x00,0x02,0x02,0x04,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,//`64
//  231   0x00,0x00,0x80,0x80,0x80,0x80,0x00,0x00,0x00,0x19,0x24,0x22,0x22,0x22,0x3F,0x20,//a65
//  232   0x08,0xF8,0x00,0x80,0x80,0x00,0x00,0x00,0x00,0x3F,0x11,0x20,0x20,0x11,0x0E,0x00,//b66
//  233   0x00,0x00,0x00,0x80,0x80,0x80,0x00,0x00,0x00,0x0E,0x11,0x20,0x20,0x20,0x11,0x00,//c67
//  234   0x00,0x00,0x00,0x80,0x80,0x88,0xF8,0x00,0x00,0x0E,0x11,0x20,0x20,0x10,0x3F,0x20,//d68
//  235   0x00,0x00,0x80,0x80,0x80,0x80,0x00,0x00,0x00,0x1F,0x22,0x22,0x22,0x22,0x13,0x00,//e69
//  236   0x00,0x80,0x80,0xF0,0x88,0x88,0x88,0x18,0x00,0x20,0x20,0x3F,0x20,0x20,0x00,0x00,//f70
//  237   0x00,0x00,0x80,0x80,0x80,0x80,0x80,0x00,0x00,0x6B,0x94,0x94,0x94,0x93,0x60,0x00,//g71
//  238   0x08,0xF8,0x00,0x80,0x80,0x80,0x00,0x00,0x20,0x3F,0x21,0x00,0x00,0x20,0x3F,0x20,//h72
//  239   0x00,0x80,0x98,0x98,0x00,0x00,0x00,0x00,0x00,0x20,0x20,0x3F,0x20,0x20,0x00,0x00,//i73
//  240   0x00,0x00,0x00,0x80,0x98,0x98,0x00,0x00,0x00,0xC0,0x80,0x80,0x80,0x7F,0x00,0x00,//j74
//  241   0x08,0xF8,0x00,0x00,0x80,0x80,0x80,0x00,0x20,0x3F,0x24,0x02,0x2D,0x30,0x20,0x00,//k75
//  242   0x00,0x08,0x08,0xF8,0x00,0x00,0x00,0x00,0x00,0x20,0x20,0x3F,0x20,0x20,0x00,0x00,//l76
//  243   0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x00,0x20,0x3F,0x20,0x00,0x3F,0x20,0x00,0x3F,//m77
//  244   0x80,0x80,0x00,0x80,0x80,0x80,0x00,0x00,0x20,0x3F,0x21,0x00,0x00,0x20,0x3F,0x20,//n78
//  245   0x00,0x00,0x80,0x80,0x80,0x80,0x00,0x00,0x00,0x1F,0x20,0x20,0x20,0x20,0x1F,0x00,//o79
//  246   0x80,0x80,0x00,0x80,0x80,0x00,0x00,0x00,0x80,0xFF,0xA1,0x20,0x20,0x11,0x0E,0x00,//p80
//  247   0x00,0x00,0x00,0x80,0x80,0x80,0x80,0x00,0x00,0x0E,0x11,0x20,0x20,0xA0,0xFF,0x80,//q81
//  248   0x80,0x80,0x80,0x00,0x80,0x80,0x80,0x00,0x20,0x20,0x3F,0x21,0x20,0x00,0x01,0x00,//r82
//  249   0x00,0x00,0x80,0x80,0x80,0x80,0x80,0x00,0x00,0x33,0x24,0x24,0x24,0x24,0x19,0x00,//s83
//  250   0x00,0x80,0x80,0xE0,0x80,0x80,0x00,0x00,0x00,0x00,0x00,0x1F,0x20,0x20,0x00,0x00,//t84
//  251   0x80,0x80,0x00,0x00,0x00,0x80,0x80,0x00,0x00,0x1F,0x20,0x20,0x20,0x10,0x3F,0x20,//u85
//  252   0x80,0x80,0x80,0x00,0x00,0x80,0x80,0x80,0x00,0x01,0x0E,0x30,0x08,0x06,0x01,0x00,//v86
//  253   0x80,0x80,0x00,0x80,0x00,0x80,0x80,0x80,0x0F,0x30,0x0C,0x03,0x0C,0x30,0x0F,0x00,//w87
//  254   0x00,0x80,0x80,0x00,0x80,0x80,0x80,0x00,0x00,0x20,0x31,0x2E,0x0E,0x31,0x20,0x00,//x88
//  255   0x80,0x80,0x80,0x00,0x00,0x80,0x80,0x80,0x80,0x81,0x8E,0x70,0x18,0x06,0x01,0x00,//y89
//  256   0x00,0x80,0x80,0x80,0x80,0x80,0x80,0x00,0x00,0x21,0x30,0x2C,0x22,0x21,0x30,0x00,//z90
//  257   0x00,0x00,0x00,0x00,0x80,0x7C,0x02,0x02,0x00,0x00,0x00,0x00,0x00,0x3F,0x40,0x40,//{91
//  258   0x00,0x00,0x00,0x00,0xFF,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0xFF,0x00,0x00,0x00,//|92
//  259   0x00,0x02,0x02,0x7C,0x80,0x00,0x00,0x00,0x00,0x40,0x40,0x3F,0x00,0x00,0x00,0x00,//}93
//  260   0x00,0x06,0x01,0x01,0x02,0x02,0x04,0x04,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,//~94
//  261 
//  262 };
//  263 
//  264 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  265 void LCD_WrDat(byte data)
//  266 {
//  267         byte i=8;
LCD_WrDat:
        MOVS     R1,#+8
//  268 	GPIOC_PDOR |=  GPIO_PDOR_PDO(GPIO_PIN(7));
        LDR.W    R2,??DataTable8  ;; 0x400ff080
        LDR      R2,[R2, #+0]
        ORRS     R2,R2,#0x80
        LDR.W    R3,??DataTable8  ;; 0x400ff080
        STR      R2,[R3, #+0]
//  269         asm("nop");
        nop              
//  270         asm("nop");
        nop              
//  271         asm("nop");
        nop              
//  272         asm("nop");
        nop              
//  273         asm("nop");
        nop              
//  274         GPIOC_PDOR &= ~GPIO_PDOR_PDO(GPIO_PIN(10));
        LDR.W    R2,??DataTable8  ;; 0x400ff080
        LDR      R2,[R2, #+0]
        BICS     R2,R2,#0x400
        LDR.W    R3,??DataTable8  ;; 0x400ff080
        STR      R2,[R3, #+0]
//  275         asm("nop");
        nop              
//  276         asm("nop");
        nop              
//  277         asm("nop");
        nop              
//  278         asm("nop");
        nop              
//  279         asm("nop");    
        nop              
//  280         while(i--)
??LCD_WrDat_0:
        MOVS     R2,R1
        SUBS     R1,R2,#+1
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+0
        BEQ.N    ??LCD_WrDat_1
//  281         {
//  282         if(data&0x80){GPIOC_PDOR |=  GPIO_PDOR_PDO(GPIO_PIN(9));}
        LSLS     R2,R0,#+24
        BPL.N    ??LCD_WrDat_2
        LDR.W    R2,??DataTable8  ;; 0x400ff080
        LDR      R2,[R2, #+0]
        MOV      R3,#+512
        ORRS     R2,R3,R2
        LDR.W    R3,??DataTable8  ;; 0x400ff080
        STR      R2,[R3, #+0]
        B.N      ??LCD_WrDat_3
//  283         else{GPIOC_PDOR &= ~GPIO_PDOR_PDO(GPIO_PIN(9));}
??LCD_WrDat_2:
        LDR.W    R2,??DataTable8  ;; 0x400ff080
        LDR      R2,[R2, #+0]
        BICS     R2,R2,#0x200
        LDR.W    R3,??DataTable8  ;; 0x400ff080
        STR      R2,[R3, #+0]
//  284         GPIOC_PDOR |=  GPIO_PDOR_PDO(GPIO_PIN(10)); 
??LCD_WrDat_3:
        LDR.W    R2,??DataTable8  ;; 0x400ff080
        LDR      R2,[R2, #+0]
        ORRS     R2,R2,#0x400
        LDR.W    R3,??DataTable8  ;; 0x400ff080
        STR      R2,[R3, #+0]
//  285         asm("nop");
        nop              
//  286         asm("nop");
        nop              
//  287         asm("nop");
        nop              
//  288         asm("nop");
        nop              
//  289         asm("nop");           
        nop              
//  290         GPIOC_PDOR &= ~GPIO_PDOR_PDO(GPIO_PIN(10));   
        LDR.W    R2,??DataTable8  ;; 0x400ff080
        LDR      R2,[R2, #+0]
        BICS     R2,R2,#0x400
        LDR.W    R3,??DataTable8  ;; 0x400ff080
        STR      R2,[R3, #+0]
//  291         data<<=1;    
        LSLS     R0,R0,#+1
        B.N      ??LCD_WrDat_0
//  292   }
//  293 }
??LCD_WrDat_1:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  294 void LCD_WrCmd(byte cmd)
//  295 {
//  296      byte i=8;
LCD_WrCmd:
        MOVS     R1,#+8
//  297      GPIOC_PDOR &= ~GPIO_PDOR_PDO(GPIO_PIN(7));
        LDR.W    R2,??DataTable8  ;; 0x400ff080
        LDR      R2,[R2, #+0]
        BICS     R2,R2,#0x80
        LDR.W    R3,??DataTable8  ;; 0x400ff080
        STR      R2,[R3, #+0]
//  298      GPIOC_PDOR &= ~GPIO_PDOR_PDO(GPIO_PIN(10));
        LDR.W    R2,??DataTable8  ;; 0x400ff080
        LDR      R2,[R2, #+0]
        BICS     R2,R2,#0x400
        LDR.W    R3,??DataTable8  ;; 0x400ff080
        STR      R2,[R3, #+0]
//  299      while(i--)
??LCD_WrCmd_0:
        MOVS     R2,R1
        SUBS     R1,R2,#+1
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+0
        BEQ.N    ??LCD_WrCmd_1
//  300      {
//  301      if(cmd&0x80){GPIOC_PDOR |=  GPIO_PDOR_PDO(GPIO_PIN(9));}
        LSLS     R2,R0,#+24
        BPL.N    ??LCD_WrCmd_2
        LDR.W    R2,??DataTable8  ;; 0x400ff080
        LDR      R2,[R2, #+0]
        MOV      R3,#+512
        ORRS     R2,R3,R2
        LDR.W    R3,??DataTable8  ;; 0x400ff080
        STR      R2,[R3, #+0]
        B.N      ??LCD_WrCmd_3
//  302      else{GPIOC_PDOR &= ~GPIO_PDOR_PDO(GPIO_PIN(9));}
??LCD_WrCmd_2:
        LDR.W    R2,??DataTable8  ;; 0x400ff080
        LDR      R2,[R2, #+0]
        BICS     R2,R2,#0x200
        LDR.W    R3,??DataTable8  ;; 0x400ff080
        STR      R2,[R3, #+0]
//  303      GPIOC_PDOR |=  GPIO_PDOR_PDO(GPIO_PIN(10));
??LCD_WrCmd_3:
        LDR.W    R2,??DataTable8  ;; 0x400ff080
        LDR      R2,[R2, #+0]
        ORRS     R2,R2,#0x400
        LDR.W    R3,??DataTable8  ;; 0x400ff080
        STR      R2,[R3, #+0]
//  304       asm("nop");
        nop              
//  305       asm("nop");
        nop              
//  306       asm("nop");
        nop              
//  307       asm("nop");
        nop              
//  308       asm("nop");          
        nop              
//  309      GPIOC_PDOR &= ~GPIO_PDOR_PDO(GPIO_PIN(10));    
        LDR.W    R2,??DataTable8  ;; 0x400ff080
        LDR      R2,[R2, #+0]
        BICS     R2,R2,#0x400
        LDR.W    R3,??DataTable8  ;; 0x400ff080
        STR      R2,[R3, #+0]
//  310      cmd<<=1;   
        LSLS     R0,R0,#+1
        B.N      ??LCD_WrCmd_0
//  311    } 	
//  312 }
??LCD_WrCmd_1:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  313 void LCD_Set_Pos(byte x, byte y)
//  314 { 
LCD_Set_Pos:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//  315   LCD_WrCmd(0xb0+y);
        SUBS     R0,R5,#+80
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LCD_WrCmd
//  316   LCD_WrCmd(((x&0xf0)>>4)|0x10);
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LSRS     R0,R4,#+4
        ORRS     R0,R0,#0x10
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LCD_WrCmd
//  317   LCD_WrCmd((x&0x0f)|0x01); 
        ANDS     R0,R4,#0xF
        ORRS     R0,R0,#0x1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LCD_WrCmd
//  318 } 
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  319 void LCD_Fill(byte bmp_data)
//  320 {
LCD_Fill:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
//  321 	byte y,x;
//  322 	
//  323 	for(y=0;y<8;y++)
        MOVS     R0,#+0
        MOVS     R5,R0
??LCD_Fill_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+8
        BCS.N    ??LCD_Fill_1
//  324 	{
//  325 		LCD_WrCmd(0xb0+y);
        SUBS     R0,R5,#+80
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LCD_WrCmd
//  326 		LCD_WrCmd(0x01);
        MOVS     R0,#+1
        BL       LCD_WrCmd
//  327 		LCD_WrCmd(0x10);
        MOVS     R0,#+16
        BL       LCD_WrCmd
//  328 		for(x=0;x<X_WIDTH;x++)
        MOVS     R0,#+0
        MOVS     R6,R0
??LCD_Fill_2:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+128
        BCS.N    ??LCD_Fill_3
//  329 			LCD_WrDat(bmp_data);
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LCD_WrDat
        ADDS     R6,R6,#+1
        B.N      ??LCD_Fill_2
//  330 	}
??LCD_Fill_3:
        ADDS     R5,R5,#+1
        B.N      ??LCD_Fill_0
//  331 }
??LCD_Fill_1:
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  332 void LCD_CLS(void)
//  333 {
LCD_CLS:
        PUSH     {R3-R5,LR}
//  334 	byte y,x;	
//  335 	for(y=0;y<8;y++)
        MOVS     R0,#+0
        MOVS     R4,R0
??LCD_CLS_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+8
        BCS.N    ??LCD_CLS_1
//  336 	{
//  337 		LCD_WrCmd(0xb0+y);
        SUBS     R0,R4,#+80
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LCD_WrCmd
//  338 		LCD_WrCmd(0x01);
        MOVS     R0,#+1
        BL       LCD_WrCmd
//  339 		LCD_WrCmd(0x10); 
        MOVS     R0,#+16
        BL       LCD_WrCmd
//  340 		for(x=0;x<X_WIDTH;x++)
        MOVS     R0,#+0
        MOVS     R5,R0
??LCD_CLS_2:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+128
        BCS.N    ??LCD_CLS_3
//  341                 {   
//  342 			LCD_WrDat(0);
        MOVS     R0,#+0
        BL       LCD_WrDat
//  343 
//  344                 }
        ADDS     R5,R5,#+1
        B.N      ??LCD_CLS_2
//  345         }
??LCD_CLS_3:
        ADDS     R4,R4,#+1
        B.N      ??LCD_CLS_0
//  346 }
??LCD_CLS_1:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  347 void LCD_clear_L(unsigned char x,unsigned char y)
//  348 {
LCD_clear_L:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//  349 	LCD_WrCmd(0xb0+y);
        SUBS     R0,R5,#+80
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LCD_WrCmd
//  350 	LCD_WrCmd(0x01);
        MOVS     R0,#+1
        BL       LCD_WrCmd
//  351 	LCD_WrCmd(0x10); 
        MOVS     R0,#+16
        BL       LCD_WrCmd
//  352         LCD_Set_Pos(x,y);
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LCD_Set_Pos
//  353 	for(;x<X_WIDTH;x++)
??LCD_clear_L_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+128
        BCS.N    ??LCD_clear_L_1
//  354         {
//  355 		LCD_WrDat(0);	
        MOVS     R0,#+0
        BL       LCD_WrDat
//  356         }
        ADDS     R4,R4,#+1
        B.N      ??LCD_clear_L_0
//  357 }
??LCD_clear_L_1:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  358 void LCD_DLY_ms(word ms)
//  359 {                         
//  360   word a;
//  361   while(ms)
LCD_DLY_ms:
??LCD_DLY_ms_0:
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        CMP      R0,#+0
        BEQ.N    ??LCD_DLY_ms_1
//  362   {
//  363     a=10000;
        MOVW     R2,#+10000
        MOVS     R1,R2
//  364     while(a--);
??LCD_DLY_ms_2:
        MOVS     R2,R1
        SUBS     R1,R2,#+1
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        CMP      R2,#+0
        BNE.N    ??LCD_DLY_ms_2
//  365     ms--;
        SUBS     R0,R0,#+1
        B.N      ??LCD_DLY_ms_0
//  366   }
//  367   return;
??LCD_DLY_ms_1:
        BX       LR               ;; return
//  368 }
//  369 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  370 void LCD_Init(void)        
//  371 {
LCD_Init:
        PUSH     {R7,LR}
//  372         // pin10,pin9为GPIO口 
//  373 	PORTC_PCR10=(0|PORT_PCR_MUX(1));
        LDR.W    R0,??DataTable8_1  ;; 0x4004b028
        MOV      R1,#+256
        STR      R1,[R0, #+0]
//  374 	PORTC_PCR9=(0|PORT_PCR_MUX(1)); 
        LDR.W    R0,??DataTable8_2  ;; 0x4004b024
        MOV      R1,#+256
        STR      R1,[R0, #+0]
//  375 	PORTC_PCR8=(0|PORT_PCR_MUX(1));
        LDR.W    R0,??DataTable8_3  ;; 0x4004b020
        MOV      R1,#+256
        STR      R1,[R0, #+0]
//  376 	PORTC_PCR7=(0|PORT_PCR_MUX(1)); 
        LDR.W    R0,??DataTable8_4  ;; 0x4004b01c
        MOV      R1,#+256
        STR      R1,[R0, #+0]
//  377 	
//  378 	GPIOC_PDDR=GPIO_PDDR_PDD(GPIO_PIN(10)|GPIO_PIN(9)|GPIO_PIN(8)|GPIO_PIN(7));
        LDR.W    R0,??DataTable8_5  ;; 0x400ff094
        MOV      R1,#+1920
        STR      R1,[R0, #+0]
//  379 	
//  380 	GPIOC_PDOR |=  GPIO_PDOR_PDO(GPIO_PIN(10)); 	
        LDR.W    R0,??DataTable8  ;; 0x400ff080
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x400
        LDR.W    R1,??DataTable8  ;; 0x400ff080
        STR      R0,[R1, #+0]
//  381 	
//  382 	GPIOC_PDOR &= ~GPIO_PDOR_PDO(GPIO_PIN(8));
        LDR.W    R0,??DataTable8  ;; 0x400ff080
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x100
        LDR.W    R1,??DataTable8  ;; 0x400ff080
        STR      R0,[R1, #+0]
//  383 	LCD_DLY_ms(100);
        MOVS     R0,#+100
        BL       LCD_DLY_ms
//  384 	GPIOC_PDOR |=  GPIO_PDOR_PDO(GPIO_PIN(8));
        LDR.W    R0,??DataTable8  ;; 0x400ff080
        LDR      R0,[R0, #+0]
        MOV      R1,#+256
        ORRS     R0,R1,R0
        LDR.W    R1,??DataTable8  ;; 0x400ff080
        STR      R0,[R1, #+0]
//  385         
//  386            
//  387         gpio_init  (PORTD, 14, GPI_UP, HIGH);//按键扫描   
        MOVS     R3,#+1
        MOVS     R2,#+3
        MOVS     R1,#+14
        MOVS     R0,#+3
        BL       gpio_init
//  388         gpio_init  (PORTD, 15, GPI_UP, HIGH);//刷屏使能   
        MOVS     R3,#+1
        MOVS     R2,#+3
        MOVS     R1,#+15
        MOVS     R0,#+3
        BL       gpio_init
//  389         gpio_init  (PORTC, 12, GPI_UP, HIGH); //翻页   
        MOVS     R3,#+1
        MOVS     R2,#+3
        MOVS     R1,#+12
        MOVS     R0,#+2
        BL       gpio_init
//  390         gpio_init  (PORTC, 13, GPI_UP, HIGH);  
        MOVS     R3,#+1
        MOVS     R2,#+3
        MOVS     R1,#+13
        MOVS     R0,#+2
        BL       gpio_init
//  391         gpio_init  (PORTC, 14, GPI_UP, HIGH);   
        MOVS     R3,#+1
        MOVS     R2,#+3
        MOVS     R1,#+14
        MOVS     R0,#+2
        BL       gpio_init
//  392         gpio_init  (PORTC, 15, GPI_UP, HIGH);   
        MOVS     R3,#+1
        MOVS     R2,#+3
        MOVS     R1,#+15
        MOVS     R0,#+2
        BL       gpio_init
//  393         gpio_init  (PORTC, 16, GPI_UP, HIGH);
        MOVS     R3,#+1
        MOVS     R2,#+3
        MOVS     R1,#+16
        MOVS     R0,#+2
        BL       gpio_init
//  394         gpio_init  (PORTC, 17, GPI_UP, HIGH); 
        MOVS     R3,#+1
        MOVS     R2,#+3
        MOVS     R1,#+17
        MOVS     R0,#+2
        BL       gpio_init
//  395    
//  396 
//  397   LCD_WrCmd(0xae);//--turn off oled panel
        MOVS     R0,#+174
        BL       LCD_WrCmd
//  398   LCD_WrCmd(0x00);//---set low column address
        MOVS     R0,#+0
        BL       LCD_WrCmd
//  399   LCD_WrCmd(0x10);//---set high column address
        MOVS     R0,#+16
        BL       LCD_WrCmd
//  400   LCD_WrCmd(0x40);//--set start line address  Set Mapping RAM Display Start Line (0x00~0x3F)
        MOVS     R0,#+64
        BL       LCD_WrCmd
//  401   LCD_WrCmd(0x81);//--set contrast control register
        MOVS     R0,#+129
        BL       LCD_WrCmd
//  402   LCD_WrCmd(0xcf); // Set SEG Output Current Brightness
        MOVS     R0,#+207
        BL       LCD_WrCmd
//  403   LCD_WrCmd(0xa1);//--Set SEG/Column Mapping     0xa0左右反置 0xa1正常
        MOVS     R0,#+161
        BL       LCD_WrCmd
//  404   LCD_WrCmd(0xc8);//Set COM/Row Scan Direction   0xc0上下反置 0xc8正常
        MOVS     R0,#+200
        BL       LCD_WrCmd
//  405   LCD_WrCmd(0xa6);//--set normal display
        MOVS     R0,#+166
        BL       LCD_WrCmd
//  406   LCD_WrCmd(0xa8);//--set multiplex ratio(1 to 64)
        MOVS     R0,#+168
        BL       LCD_WrCmd
//  407   LCD_WrCmd(0x3f);//--1/64 duty
        MOVS     R0,#+63
        BL       LCD_WrCmd
//  408   LCD_WrCmd(0xd3);//-set display offset	Shift Mapping RAM Counter (0x00~0x3F)
        MOVS     R0,#+211
        BL       LCD_WrCmd
//  409   LCD_WrCmd(0x00);//-not offset
        MOVS     R0,#+0
        BL       LCD_WrCmd
//  410   LCD_WrCmd(0xd5);//--set display clock divide ratio/oscillator frequency
        MOVS     R0,#+213
        BL       LCD_WrCmd
//  411   LCD_WrCmd(0x80);//--set divide ratio, Set Clock as 100 Frames/Sec
        MOVS     R0,#+128
        BL       LCD_WrCmd
//  412   LCD_WrCmd(0xd9);//--set pre-charge period
        MOVS     R0,#+217
        BL       LCD_WrCmd
//  413   LCD_WrCmd(0xf1);//Set Pre-Charge as 15 Clocks & Discharge as 1 Clock
        MOVS     R0,#+241
        BL       LCD_WrCmd
//  414   LCD_WrCmd(0xda);//--set com pins hardware configuration
        MOVS     R0,#+218
        BL       LCD_WrCmd
//  415   LCD_WrCmd(0x12);
        MOVS     R0,#+18
        BL       LCD_WrCmd
//  416   LCD_WrCmd(0xdb);//--set vcomh
        MOVS     R0,#+219
        BL       LCD_WrCmd
//  417   LCD_WrCmd(0x40);//Set VCOM Deselect Level
        MOVS     R0,#+64
        BL       LCD_WrCmd
//  418   LCD_WrCmd(0x20);//-Set Page Addressing Mode (0x00/0x01/0x02)
        MOVS     R0,#+32
        BL       LCD_WrCmd
//  419   LCD_WrCmd(0x02);//
        MOVS     R0,#+2
        BL       LCD_WrCmd
//  420   LCD_WrCmd(0x8d);//--set Charge Pump enable/disable
        MOVS     R0,#+141
        BL       LCD_WrCmd
//  421   LCD_WrCmd(0x14);//--set(0x10) disable
        MOVS     R0,#+20
        BL       LCD_WrCmd
//  422   LCD_WrCmd(0xa4);// Disable Entire Display On (0xa4/0xa5)
        MOVS     R0,#+164
        BL       LCD_WrCmd
//  423   LCD_WrCmd(0xa6);// Disable Inverse Display On (0xa6/a7) 
        MOVS     R0,#+166
        BL       LCD_WrCmd
//  424   LCD_WrCmd(0xaf);//--turn on oled panel
        MOVS     R0,#+175
        BL       LCD_WrCmd
//  425   LCD_Fill(0x00);  //初始清屏
        MOVS     R0,#+0
        BL       LCD_Fill
//  426   LCD_Set_Pos(0,0);  
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       LCD_Set_Pos
//  427 	
//  428 } 
        POP      {R0,PC}          ;; return
//  429 //==============================================================
//  430 //函数名： void LCD_PutPixel(byte x,byte y)
//  431 //功能描述：绘制一个点（x,y）
//  432 //参数：真实坐标值(x,y),x的范围0～127，y的范围0～64
//  433 //返回：无
//  434 //==============================================================

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  435 void LCD_PutPixel(byte x,byte y)
//  436 {
LCD_PutPixel:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//  437 	byte data1;  //data1当前点的数据 
//  438 	 
//  439         LCD_Set_Pos(x,y); 
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LCD_Set_Pos
//  440 	data1 = 0x01<<(y%8); 	
        MOVS     R0,#+1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        MOVS     R1,#+8
        SDIV     R2,R5,R1
        MLS      R2,R2,R1,R5
        LSLS     R0,R0,R2
        MOVS     R6,R0
//  441 	LCD_WrCmd(0xb0+(y>>3));
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LSRS     R0,R5,#+3
        SUBS     R0,R0,#+80
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LCD_WrCmd
//  442 	LCD_WrCmd(((x&0xf0)>>4)|0x10);
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LSRS     R0,R4,#+4
        ORRS     R0,R0,#0x10
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LCD_WrCmd
//  443 	LCD_WrCmd((x&0x0f)|0x00);
        ANDS     R0,R4,#0xF
        BL       LCD_WrCmd
//  444 	LCD_WrDat(data1); 	 	
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LCD_WrDat
//  445 }
        POP      {R4-R6,PC}       ;; return
//  446 //==============================================================
//  447 //函数名： void LCD_Rectangle(byte x1,byte y1,
//  448 //                   byte x2,byte y2,byte color,byte gif)
//  449 //功能描述：绘制一个实心矩形
//  450 //参数：左上角坐标（x1,y1）,右下角坐标（x2，y2）
//  451 //      其中x1、x2的范围0～127，y1，y2的范围0～63，即真实坐标值
//  452 //返回：无
//  453 //==============================================================

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  454 void LCD_Rectangle(byte x1,byte y1,byte x2,byte y2,byte gif)
//  455 {
LCD_Rectangle:
        PUSH     {R3-R9,LR}
        MOVS     R5,R0
        MOVS     R6,R1
        MOVS     R7,R2
        MOV      R8,R3
        LDR      R4,[SP, #+32]
//  456 	byte n; 
//  457 		
//  458 	LCD_Set_Pos(x1,y1>>3);
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LSRS     R1,R6,#+3
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LCD_Set_Pos
//  459 	for(n=x1;n<=x2;n++)
        MOV      R9,R5
??LCD_Rectangle_0:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        CMP      R7,R9
        BCC.N    ??LCD_Rectangle_1
//  460 	{
//  461 		LCD_WrDat(0x01<<(y1%8)); 			
        MOVS     R0,#+1
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        MOVS     R1,#+8
        SDIV     R2,R6,R1
        MLS      R2,R2,R1,R6
        LSLS     R0,R0,R2
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LCD_WrDat
//  462 		if(gif == 1) 	LCD_DLY_ms(50);
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BNE.N    ??LCD_Rectangle_2
        MOVS     R0,#+50
        BL       LCD_DLY_ms
//  463 	}  
??LCD_Rectangle_2:
        ADDS     R9,R9,#+1
        B.N      ??LCD_Rectangle_0
//  464 	LCD_Set_Pos(x1,y2>>3);
??LCD_Rectangle_1:
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        LSRS     R1,R8,#+3
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LCD_Set_Pos
//  465         for(n=x1;n<=x2;n++)
        MOV      R9,R5
??LCD_Rectangle_3:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        CMP      R7,R9
        BCC.N    ??LCD_Rectangle_4
//  466 	{
//  467 		LCD_WrDat(0x01<<(y2%8)); 			
        MOVS     R0,#+1
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        MOVS     R1,#+8
        SDIV     R2,R8,R1
        MLS      R2,R2,R1,R8
        LSLS     R0,R0,R2
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LCD_WrDat
//  468 		if(gif == 1) 	LCD_DLY_ms(5);
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BNE.N    ??LCD_Rectangle_5
        MOVS     R0,#+5
        BL       LCD_DLY_ms
//  469 	}
??LCD_Rectangle_5:
        ADDS     R9,R9,#+1
        B.N      ??LCD_Rectangle_3
//  470 	
//  471 } 
??LCD_Rectangle_4:
        POP      {R0,R4-R9,PC}    ;; return
//  472 //==============================================================
//  473 //功能描述：写入一组标准ASCII字符
//  474 //参数：显示的位置（x,y），y为页范围0～7，要显示的字符串
//  475 //返回：无
//  476 //============================================================== 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  477 void write_6_8_char(byte x,byte y,byte ucData) 
//  478 {
write_6_8_char:
        PUSH     {R4-R8,LR}
        MOVS     R4,R0
        MOV      R8,R1
        MOVS     R5,R2
//  479     byte i, ucDataTmp;       
//  480     ucDataTmp = ucData-32;
        SUBS     R0,R5,#+32
        MOVS     R7,R0
//  481     if(x > 126)
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+127
        BCC.N    ??write_6_8_char_0
//  482     {
//  483         x= 0;
        MOVS     R0,#+0
        MOVS     R4,R0
//  484         y++;
        ADDS     R8,R8,#+1
//  485     }
//  486     
//  487     LCD_Set_Pos(x, y);
??write_6_8_char_0:
        MOV      R1,R8
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LCD_Set_Pos
//  488     
//  489     for(i = 0; i < 6; i++)
        MOVS     R0,#+0
        MOVS     R6,R0
??write_6_8_char_1:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+6
        BCS.N    ??write_6_8_char_2
//  490     {     
//  491         LCD_WrDat(F6x8[ucDataTmp][i]);  
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        MOVS     R0,#+6
        LDR.W    R1,??DataTable10
        MLA      R0,R0,R7,R1
        LDRB     R0,[R6, R0]
        BL       LCD_WrDat
//  492     }
        ADDS     R6,R6,#+1
        B.N      ??write_6_8_char_1
//  493 }
??write_6_8_char_2:
        POP      {R4-R8,PC}       ;; return
//  494 //==============================================================
//  495 //功能描述：写入一组标准ASCII字符串
//  496 //参数：显示的位置（x,y），y为页范围0～7，要显示的字符串
//  497 //返回：无
//  498 //==============================================================  

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  499 void write_6_8_string(byte x,byte y,byte ch[])
//  500 {
write_6_8_string:
        PUSH     {R3-R9,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//  501   byte c=0,i=0,j=0;      
        MOVS     R7,#+0
        MOVS     R8,#+0
        MOVS     R9,#+0
//  502   while (ch[j]!='\0')
??write_6_8_string_0:
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        LDRB     R0,[R9, R6]
        CMP      R0,#+0
        BEQ.N    ??write_6_8_string_1
//  503   {    
//  504     c =ch[j]-32;
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        LDRB     R0,[R9, R6]
        SUBS     R0,R0,#+32
        MOVS     R7,R0
//  505     if(x>126){x=0;y++;}
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+127
        BCC.N    ??write_6_8_string_2
        MOVS     R0,#+0
        MOVS     R4,R0
        ADDS     R5,R5,#+1
//  506     LCD_Set_Pos(x,y);    
??write_6_8_string_2:
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LCD_Set_Pos
//  507   	for(i=0;i<6;i++)     
        MOVS     R0,#+0
        MOV      R8,R0
??write_6_8_string_3:
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+6
        BCS.N    ??write_6_8_string_4
//  508   	  LCD_WrDat(F6x8[c][i]);  
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        MOVS     R0,#+6
        LDR.W    R1,??DataTable10
        MLA      R0,R0,R7,R1
        LDRB     R0,[R8, R0]
        BL       LCD_WrDat
        ADDS     R8,R8,#+1
        B.N      ??write_6_8_string_3
//  509   	x+=6;
??write_6_8_string_4:
        ADDS     R4,R4,#+6
//  510   	j++;
        ADDS     R9,R9,#+1
        B.N      ??write_6_8_string_0
//  511   }
//  512 }
??write_6_8_string_1:
        POP      {R0,R4-R9,PC}    ;; return
//  513 /****************************************************************
//  514                    写6*8点阵数字函数
//  515 ****************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  516 void write_6_8_number(unsigned char x,unsigned char y, float number)
//  517 {
write_6_8_number:
        PUSH     {R0-R10,LR}
        MOV      R8,R0
        MOVS     R4,R1
        MOV      R9,R2
//  518   unsigned char i=0;
        MOVS     R5,#+0
//  519   unsigned char temp[16];
//  520   unsigned char *point=temp;
        ADD      R6,SP,#+0
//  521   float decimal;
//  522   int data;
//  523   
//  524   if(number<0)
        MOV      R0,R9
        MOVS     R1,#+0
        BL       __aeabi_cfcmple
        BCS.N    ??write_6_8_number_0
//  525     {
//  526      temp[0]='-';
        MOVS     R0,#+45
        STRB     R0,[SP, #+0]
//  527      write_6_8_char(x,y,temp[0]);
        LDRB     R2,[SP, #+0]
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOV      R0,R8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       write_6_8_char
//  528      x+=6;
        ADDS     R8,R8,#+6
//  529      number=-number; 
        EORS     R9,R9,#0x80000000
//  530     }
//  531     
//  532   data=(int)number;
??write_6_8_number_0:
        MOV      R0,R9
        BL       __aeabi_f2iz
        MOV      R10,R0
//  533   decimal=number-data;     //得到小数部分
        MOV      R0,R10
        BL       __aeabi_i2f
        MOVS     R1,R0
        MOV      R0,R9
        BL       __aeabi_fsub
        MOVS     R7,R0
//  534   
//  535    
//  536   if(data>=1000)           //是否可被1000整除
        MOV      R0,#+1000
        CMP      R10,R0
        BLT.N    ??write_6_8_number_1
//  537     {
//  538      temp[i]=48+data/1000;
        MOV      R0,#+1000
        SDIV     R0,R10,R0
        ADDS     R0,R0,#+48
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADD      R1,SP,#+0
        STRB     R0,[R5, R1]
//  539      data=data%1000;
        MOV      R0,#+1000
        SDIV     R1,R10,R0
        MLS      R10,R0,R1,R10
//  540      i++;
        ADDS     R5,R5,#+1
//  541     }
//  542 
//  543    
//  544   if(data>=100)              //是否可被100整除
??write_6_8_number_1:
        CMP      R10,#+100
        BLT.N    ??write_6_8_number_2
//  545    {
//  546     temp[i]=48+data/100;
        MOVS     R0,#+100
        SDIV     R0,R10,R0
        ADDS     R0,R0,#+48
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADD      R1,SP,#+0
        STRB     R0,[R5, R1]
//  547     data=data%100;
        MOVS     R0,#+100
        SDIV     R1,R10,R0
        MLS      R10,R0,R1,R10
//  548     i++;
        ADDS     R5,R5,#+1
        B.N      ??write_6_8_number_3
//  549    }
//  550   else 
//  551     if(data<100&&i!=0)
??write_6_8_number_2:
        CMP      R10,#+100
        BGE.N    ??write_6_8_number_3
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??write_6_8_number_3
//  552      {
//  553      temp[i]=0+48;
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADD      R0,SP,#+0
        MOVS     R1,#+48
        STRB     R1,[R5, R0]
//  554      i++;
        ADDS     R5,R5,#+1
//  555      }
//  556    
//  557   if(data>=10)                  //是否可被10整除
??write_6_8_number_3:
        CMP      R10,#+10
        BLT.N    ??write_6_8_number_4
//  558     {
//  559      temp[i]=48+data/10;
        MOVS     R0,#+10
        SDIV     R0,R10,R0
        ADDS     R0,R0,#+48
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADD      R1,SP,#+0
        STRB     R0,[R5, R1]
//  560      data=data%10;
        MOVS     R0,#+10
        SDIV     R1,R10,R0
        MLS      R10,R0,R1,R10
//  561      i++;
        ADDS     R5,R5,#+1
        B.N      ??write_6_8_number_5
//  562     }
//  563   else 
//  564     if(data<10&&i!=0)
??write_6_8_number_4:
        CMP      R10,#+10
        BGE.N    ??write_6_8_number_5
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??write_6_8_number_5
//  565      {
//  566      temp[i]=48;
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADD      R0,SP,#+0
        MOVS     R1,#+48
        STRB     R1,[R5, R0]
//  567      i++;
        ADDS     R5,R5,#+1
//  568      }
//  569      
//  570   temp[i]=48+data;
??write_6_8_number_5:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADD      R0,SP,#+0
        ADDS     R1,R10,#+48
        STRB     R1,[R5, R0]
//  571    
//  572       
//  573   if(decimal>=0.0001)           //判断是否为小数
        MOVS     R0,R7
        LDR.W    R1,??DataTable10_1  ;; 0x38d1b718
        BL       __aeabi_cfrcmple
        BHI.N    ??write_6_8_number_6
//  574    {
//  575     i++;
        ADDS     R5,R5,#+1
//  576     temp[i]='.';                //加小数点
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADD      R0,SP,#+0
        MOVS     R1,#+46
        STRB     R1,[R5, R0]
//  577     i++;
        ADDS     R5,R5,#+1
//  578     
//  579     data=(int)(decimal*1000);
        LDR.W    R0,??DataTable11  ;; 0x447a0000
        MOVS     R1,R7
        BL       __aeabi_fmul
        BL       __aeabi_f2iz
        MOV      R10,R0
//  580    
//  581     temp[i]=48+data/100;
        MOVS     R0,#+100
        SDIV     R0,R10,R0
        ADDS     R0,R0,#+48
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADD      R1,SP,#+0
        STRB     R0,[R5, R1]
//  582     
//  583     data=data%100;
        MOVS     R0,#+100
        SDIV     R1,R10,R0
        MLS      R10,R0,R1,R10
//  584     i++;
        ADDS     R5,R5,#+1
//  585    
//  586     if(data>0)
        CMP      R10,#+1
        BLT.N    ??write_6_8_number_7
//  587       {
//  588        temp[i]=48+data/10;
        MOVS     R0,#+10
        SDIV     R0,R10,R0
        ADDS     R0,R0,#+48
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADD      R1,SP,#+0
        STRB     R0,[R5, R1]
//  589        data=data%10;
        MOVS     R0,#+10
        SDIV     R1,R10,R0
        MLS      R10,R0,R1,R10
//  590        
//  591        
//  592       }
//  593     if(data>=0)
??write_6_8_number_7:
        CMP      R10,#+0
        BMI.N    ??write_6_8_number_6
//  594       {
//  595        i++;
        ADDS     R5,R5,#+1
//  596        temp[i]=data+48; 
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADD      R0,SP,#+0
        ADDS     R1,R10,#+48
        STRB     R1,[R5, R0]
//  597       }
//  598     
//  599    }     
//  600 
//  601   i++;
??write_6_8_number_6:
        ADDS     R5,R5,#+1
//  602   temp[i]='\0';
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADD      R0,SP,#+0
        MOVS     R1,#+0
        STRB     R1,[R5, R0]
//  603     write_6_8_string(x,y,point); 
        MOVS     R2,R6
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOV      R0,R8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       write_6_8_string
//  604   
//  605 }
        POP      {R0-R10,PC}      ;; return
//  606 //==============================================================
//  607 //功能描述：写入一组标准ASCII字符
//  608 //参数：显示的位置（x,y），y为页范围0～7，要显示的字符
//  609 //返回：无
//  610 //==============================================================  

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  611 void write_8_16_char(byte x,byte y,byte ch)
//  612 {
write_8_16_char:
        PUSH     {R3-R9,LR}
        MOVS     R4,R0
        MOV      R9,R1
        MOVS     R5,R2
//  613     byte c=0,i=0,j=0;   
        MOVS     R6,#+0
        MOVS     R7,#+0
        MOVS     R8,#+0
//  614     c =ch-32;
        SUBS     R0,R5,#+32
        MOVS     R6,R0
//  615     if(x>120){x=0;y++;}
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+121
        BCC.N    ??write_8_16_char_0
        MOVS     R0,#+0
        MOVS     R4,R0
        ADDS     R9,R9,#+1
//  616     LCD_Set_Pos(x,y);    
??write_8_16_char_0:
        MOV      R1,R9
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LCD_Set_Pos
//  617   	for(i=0;i<8;i++)     
        MOVS     R0,#+0
        MOVS     R7,R0
??write_8_16_char_1:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+8
        BCS.N    ??write_8_16_char_2
//  618   	  LCD_WrDat(F8X16[c*16+i]);
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LSLS     R0,R6,#+4
        UXTAB    R0,R0,R7
        LDR.W    R1,??DataTable11_1
        LDRB     R0,[R0, R1]
        BL       LCD_WrDat
        ADDS     R7,R7,#+1
        B.N      ??write_8_16_char_1
//  619   	LCD_Set_Pos(x,y+1);    
??write_8_16_char_2:
        ADDS     R1,R9,#+1
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LCD_Set_Pos
//  620   	for(i=0;i<8;i++)     
        MOVS     R0,#+0
        MOVS     R7,R0
??write_8_16_char_3:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+8
        BCS.N    ??write_8_16_char_4
//  621   	  LCD_WrDat(F8X16[c*16+i+8]);  
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LSLS     R0,R6,#+4
        UXTAB    R0,R0,R7
        LDR.W    R1,??DataTable11_1
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+8]
        BL       LCD_WrDat
        ADDS     R7,R7,#+1
        B.N      ??write_8_16_char_3
//  622   	x+=8;
??write_8_16_char_4:
        ADDS     R4,R4,#+8
//  623   	j++;
        ADDS     R8,R8,#+1
//  624  
//  625 }
        POP      {R0,R4-R9,PC}    ;; return
//  626 //==============================================================
//  627 //功能描述：写入一组标准ASCII字符串
//  628 //参数：显示的位置（x,y），y为页范围0～7，要显示的字符串
//  629 //返回：无
//  630 //==============================================================  

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  631 void write_8_16_string(byte x,byte y,byte ch[])
//  632 {
write_8_16_string:
        PUSH     {R3-R9,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//  633   byte c=0,i=0,j=0;
        MOVS     R7,#+0
        MOVS     R8,#+0
        MOVS     R9,#+0
//  634         
//  635   while (ch[j]!='\0')
??write_8_16_string_0:
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        LDRB     R0,[R9, R6]
        CMP      R0,#+0
        BEQ.N    ??write_8_16_string_1
//  636   {    
//  637     c =ch[j]-32;
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        LDRB     R0,[R9, R6]
        SUBS     R0,R0,#+32
        MOVS     R7,R0
//  638     if(x>120){x=0;y++;}
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+121
        BCC.N    ??write_8_16_string_2
        MOVS     R0,#+0
        MOVS     R4,R0
        ADDS     R5,R5,#+1
//  639     LCD_Set_Pos(x,y);    
??write_8_16_string_2:
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LCD_Set_Pos
//  640   	for(i=0;i<8;i++)     
        MOVS     R0,#+0
        MOV      R8,R0
??write_8_16_string_3:
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+8
        BCS.N    ??write_8_16_string_4
//  641   	  LCD_WrDat(F8X16[c*16+i]);
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LSLS     R0,R7,#+4
        UXTAB    R0,R0,R8
        LDR.W    R1,??DataTable11_1
        LDRB     R0,[R0, R1]
        BL       LCD_WrDat
        ADDS     R8,R8,#+1
        B.N      ??write_8_16_string_3
//  642   	LCD_Set_Pos(x,y+1);    
??write_8_16_string_4:
        ADDS     R1,R5,#+1
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LCD_Set_Pos
//  643   	for(i=0;i<8;i++)     
        MOVS     R0,#+0
        MOV      R8,R0
??write_8_16_string_5:
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+8
        BCS.N    ??write_8_16_string_6
//  644   	  LCD_WrDat(F8X16[c*16+i+8]);  
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LSLS     R0,R7,#+4
        UXTAB    R0,R0,R8
        LDR.W    R1,??DataTable11_1
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+8]
        BL       LCD_WrDat
        ADDS     R8,R8,#+1
        B.N      ??write_8_16_string_5
//  645   	x+=8;
??write_8_16_string_6:
        ADDS     R4,R4,#+8
//  646   	j++;
        ADDS     R9,R9,#+1
        B.N      ??write_8_16_string_0
//  647   }
//  648 }
??write_8_16_string_1:
        POP      {R0,R4-R9,PC}    ;; return
//  649 /****************************************************************
//  650                    写8*16点阵数字函数
//  651 ****************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  652 void write_8_16_number(unsigned char x,unsigned char y, float number)
//  653 {
write_8_16_number:
        PUSH     {R0-R10,LR}
        MOV      R8,R0
        MOVS     R4,R1
        MOV      R9,R2
//  654   unsigned char i=0;
        MOVS     R5,#+0
//  655   unsigned char temp[16];
//  656   unsigned char *point=temp;
        ADD      R6,SP,#+0
//  657   float decimal;
//  658   int data;
//  659   
//  660   if(number<0)
        MOV      R0,R9
        MOVS     R1,#+0
        BL       __aeabi_cfcmple
        BCS.N    ??write_8_16_number_0
//  661     {
//  662      temp[0]='-';
        MOVS     R0,#+45
        STRB     R0,[SP, #+0]
//  663      write_8_16_char(x,y,temp[0]);
        LDRB     R2,[SP, #+0]
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOV      R0,R8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       write_8_16_char
//  664      x+=1;
        ADDS     R8,R8,#+1
//  665      number=-number; 
        EORS     R9,R9,#0x80000000
//  666     }
//  667     
//  668   data=(int)number;
??write_8_16_number_0:
        MOV      R0,R9
        BL       __aeabi_f2iz
        MOV      R10,R0
//  669   decimal=number-data;     //得到小数部分
        MOV      R0,R10
        BL       __aeabi_i2f
        MOVS     R1,R0
        MOV      R0,R9
        BL       __aeabi_fsub
        MOVS     R7,R0
//  670   
//  671    
//  672   if(data>=1000)           //是否可被1000整除
        MOV      R0,#+1000
        CMP      R10,R0
        BLT.N    ??write_8_16_number_1
//  673     {
//  674      temp[i]=48+data/1000;
        MOV      R0,#+1000
        SDIV     R0,R10,R0
        ADDS     R0,R0,#+48
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADD      R1,SP,#+0
        STRB     R0,[R5, R1]
//  675      data=data%1000;
        MOV      R0,#+1000
        SDIV     R1,R10,R0
        MLS      R10,R0,R1,R10
//  676      i++;
        ADDS     R5,R5,#+1
//  677     }
//  678 
//  679    
//  680   if(data>=100)              //是否可被100整除
??write_8_16_number_1:
        CMP      R10,#+100
        BLT.N    ??write_8_16_number_2
//  681    {
//  682     temp[i]=48+data/100;
        MOVS     R0,#+100
        SDIV     R0,R10,R0
        ADDS     R0,R0,#+48
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADD      R1,SP,#+0
        STRB     R0,[R5, R1]
//  683     data=data%100;
        MOVS     R0,#+100
        SDIV     R1,R10,R0
        MLS      R10,R0,R1,R10
//  684     i++;
        ADDS     R5,R5,#+1
        B.N      ??write_8_16_number_3
//  685    }
//  686   else 
//  687     if(data<100&&i!=0)
??write_8_16_number_2:
        CMP      R10,#+100
        BGE.N    ??write_8_16_number_3
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??write_8_16_number_3
//  688      {
//  689      temp[i]=0+48;
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADD      R0,SP,#+0
        MOVS     R1,#+48
        STRB     R1,[R5, R0]
//  690      i++;
        ADDS     R5,R5,#+1
//  691      }
//  692    
//  693   if(data>=10)                  //是否可被10整除
??write_8_16_number_3:
        CMP      R10,#+10
        BLT.N    ??write_8_16_number_4
//  694     {
//  695      temp[i]=48+data/10;
        MOVS     R0,#+10
        SDIV     R0,R10,R0
        ADDS     R0,R0,#+48
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADD      R1,SP,#+0
        STRB     R0,[R5, R1]
//  696      data=data%10;
        MOVS     R0,#+10
        SDIV     R1,R10,R0
        MLS      R10,R0,R1,R10
//  697      i++;
        ADDS     R5,R5,#+1
        B.N      ??write_8_16_number_5
//  698     }
//  699   else 
//  700     if(data<10&&i!=0)
??write_8_16_number_4:
        CMP      R10,#+10
        BGE.N    ??write_8_16_number_5
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??write_8_16_number_5
//  701      {
//  702      temp[i]=48;
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADD      R0,SP,#+0
        MOVS     R1,#+48
        STRB     R1,[R5, R0]
//  703      i++;
        ADDS     R5,R5,#+1
//  704      }
//  705      
//  706   temp[i]=48+data;
??write_8_16_number_5:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADD      R0,SP,#+0
        ADDS     R1,R10,#+48
        STRB     R1,[R5, R0]
//  707    
//  708       
//  709   if(decimal>=0.0001)           //判断是否为小数
        MOVS     R0,R7
        LDR.W    R1,??DataTable10_1  ;; 0x38d1b718
        BL       __aeabi_cfrcmple
        BHI.N    ??write_8_16_number_6
//  710    {
//  711     i++;
        ADDS     R5,R5,#+1
//  712     temp[i]='.';                //加小数点
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADD      R0,SP,#+0
        MOVS     R1,#+46
        STRB     R1,[R5, R0]
//  713     i++;
        ADDS     R5,R5,#+1
//  714     
//  715     data=(int)(decimal*1000);
        LDR.W    R0,??DataTable11  ;; 0x447a0000
        MOVS     R1,R7
        BL       __aeabi_fmul
        BL       __aeabi_f2iz
        MOV      R10,R0
//  716    
//  717     temp[i]=48+data/100;
        MOVS     R0,#+100
        SDIV     R0,R10,R0
        ADDS     R0,R0,#+48
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADD      R1,SP,#+0
        STRB     R0,[R5, R1]
//  718     
//  719     data=data%100;
        MOVS     R0,#+100
        SDIV     R1,R10,R0
        MLS      R10,R0,R1,R10
//  720     i++;
        ADDS     R5,R5,#+1
//  721    
//  722     if(data>0)
        CMP      R10,#+1
        BLT.N    ??write_8_16_number_7
//  723       {
//  724        temp[i]=48+data/10;
        MOVS     R0,#+10
        SDIV     R0,R10,R0
        ADDS     R0,R0,#+48
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADD      R1,SP,#+0
        STRB     R0,[R5, R1]
//  725        data=data%10;
        MOVS     R0,#+10
        SDIV     R1,R10,R0
        MLS      R10,R0,R1,R10
//  726        
//  727        
//  728       }
//  729     if(data>=0)
??write_8_16_number_7:
        CMP      R10,#+0
        BMI.N    ??write_8_16_number_6
//  730       {
//  731        i++;
        ADDS     R5,R5,#+1
//  732        temp[i]=data+48; 
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADD      R0,SP,#+0
        ADDS     R1,R10,#+48
        STRB     R1,[R5, R0]
//  733       }
//  734     
//  735    }     
//  736 
//  737   i++;
??write_8_16_number_6:
        ADDS     R5,R5,#+1
//  738   temp[i]='\0';
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADD      R0,SP,#+0
        MOVS     R1,#+0
        STRB     R1,[R5, R0]
//  739     write_8_16_string(x,y,point); 
        MOVS     R2,R6
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOV      R0,R8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       write_8_16_string
//  740   
//  741 }
        POP      {R0-R10,PC}      ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8:
        DC32     0x400ff080

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_1:
        DC32     0x4004b028

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_2:
        DC32     0x4004b024

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_3:
        DC32     0x4004b020

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_4:
        DC32     0x4004b01c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_5:
        DC32     0x400ff094
//  742 
//  743 //==============================================================
//  744 //函数名： void Draw_BMP(byte x,byte y)
//  745 //功能描述：显示BMP图片128×64
//  746 //参数：起始点坐标(x,y),x的范围0～127，y为页的范围0～7
//  747 //返回：无
//  748 //==============================================================

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  749 void Draw_BMP(byte x0,byte y0,byte x1,byte y1,byte bmp[])
//  750 { 	
Draw_BMP:
        PUSH     {R3-R11,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
        LDR      R8,[SP, #+40]
//  751   word ii=0;
        MOVS     R9,#+0
//  752   byte x,y;
//  753   
//  754   if(y1%8==0) y=y1/8;      
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
//  755   else y=y1/8+1;
??Draw_BMP_0:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        MOVS     R0,#+8
        SDIV     R0,R7,R0
        ADDS     R0,R0,#+1
        MOV      R11,R0
//  756 	for(y=y0;y<=y1;y++)
??Draw_BMP_1:
        MOV      R11,R5
??Draw_BMP_2:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        UXTB     R11,R11          ;; ZeroExt  R11,R11,#+24,#+24
        CMP      R7,R11
        BCC.N    ??Draw_BMP_3
//  757 	{
//  758 		LCD_Set_Pos(x0,y);				
        MOV      R1,R11
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LCD_Set_Pos
//  759     for(x=x0;x<x1;x++)
        MOV      R10,R4
??Draw_BMP_4:
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R10,R6
        BCS.N    ??Draw_BMP_5
//  760 	    {      
//  761 	    	LCD_WrDat(bmp[ii++]);	    	
        UXTH     R9,R9            ;; ZeroExt  R9,R9,#+16,#+16
        LDRB     R0,[R9, R8]
        BL       LCD_WrDat
        ADDS     R9,R9,#+1
//  762 	    }
        ADDS     R10,R10,#+1
        B.N      ??Draw_BMP_4
//  763 	}
??Draw_BMP_5:
        ADDS     R11,R11,#+1
        B.N      ??Draw_BMP_2
//  764 }
??Draw_BMP_3:
        POP      {R0,R4-R11,PC}   ;; return
//  765 /*****************************************************************************
//  766  函 数 名  : MAIN_ConvertData
//  767  功能描述  : 将数据转换为可以在OLED屏上显示的格式
//  768  输入参数  : UCHAR8 *pInputImageData  
//  769              UCHAR8 *pOutputImageBuf  
//  770  输出参数  : NONE
//  771  返 回 值  : NONE
//  772 *****************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  773 void MAIN_ConvertData(uint16 *pInputImageData, uint8 *pOutputImageBuf)
//  774 {
MAIN_ConvertData:
        PUSH     {R4-R7,LR}
        SUB      SP,SP,#+132
        MOVS     R4,R0
        MOVS     R5,R1
//  775  //   uint8 ucTmpData;
//  776     uint8 i, usRowIdx;
//  777     uint8 temp[128]={0};
        ADD      R0,SP,#+0
        MOVS     R1,#+128
        BL       __aeabi_memclr4
//  778 
//  779 	//清空pOutputImageBuf指向的缓存， memset库函数在string.h中
//  780     memset(pOutputImageBuf, 0x00, 128*60);
        MOV      R2,#+7680
        MOVS     R1,#+0
        MOVS     R0,R5
        BL       memset
//  781 
//  782     for (i = 0; i < 128; i++)
        MOVS     R0,#+0
        MOVS     R6,R0
??MAIN_ConvertData_0:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+128
        BCS.N    ??MAIN_ConvertData_1
//  783     {
//  784          temp[i]=(uint8)(pInputImageData[i]*60/800);
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDRH     R0,[R4, R6, LSL #+1]
        MOVS     R1,#+60
        MULS     R0,R1,R0
        MOV      R1,#+800
        SDIV     R0,R0,R1
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        ADD      R1,SP,#+0
        STRB     R0,[R6, R1]
//  785          
//  786        // ucTmpData = temp[i] < (60 - 1) ? temp[i] : (60 - 1);
//  787         
//  788          usRowIdx = (60 - 1) - temp[i];//ucTmpData;
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        ADD      R0,SP,#+0
        LDRB     R0,[R6, R0]
        RSBS     R0,R0,#+59
        MOVS     R7,R0
//  789 
//  790         (pOutputImageBuf + usRowIdx * 128)[i] = 1;
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        MOVS     R0,#+128
        MLA      R0,R0,R7,R5
        MOVS     R1,#+1
        STRB     R1,[R6, R0]
//  791     }
        ADDS     R6,R6,#+1
        B.N      ??MAIN_ConvertData_0
//  792 }
??MAIN_ConvertData_1:
        ADD      SP,SP,#+132
        POP      {R4-R7,PC}       ;; return
//  793 
//  794 /*****************************************************************************
//  795  函 数 名  : LED_PrintImage
//  796  功能描述  : 将图像显示出来
//  797  输入参数  : UCHAR8 *pucTable     二维图像数组的地址
//  798              USHORT16 usRowNum    二维图像的行数1~64
//  799              USHORT16 usColumnNum 二维图像的列数1~128
//  800  输出参数  : none
//  801  返 回 值  : none
//  802 *****************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  803 void LED_PrintImage(uint8 *pucTable, uint16 usRowNum, uint16 usColumnNum)
//  804 {
LED_PrintImage:
        PUSH     {R1,R4-R11,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOVS     R5,R2
//  805     uint8 ucData;
//  806     uint16 i,j,k,m,n;
//  807     uint16 usRowTmp;
//  808 
//  809     m = usRowNum >> 3;   //计算图片行数以8位为一组完整的组数
        LDRH     R0,[SP, #+8]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LSRS     R0,R0,#+3
        STRH     R0,[SP, #+0]
//  810     n = usRowNum % 8;    //计算分完组后剩下的行数
        LDRH     R0,[SP, #+8]
        MOVS     R1,#+8
        SDIV     R2,R0,R1
        MLS      R2,R2,R1,R0
        MOV      R10,R2
//  811     
//  812     for(i = 0; i < m; i++) //完整组行扫描
        MOVS     R0,#+0
        MOVS     R7,R0
??LED_PrintImage_0:
        LDRH     R0,[SP, #+0]
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        CMP      R7,R0
        BCS.N    ??LED_PrintImage_1
//  813     {
//  814         LCD_Set_Pos(0,(uint8) i);
        MOVS     R1,R7
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+0
        BL       LCD_Set_Pos
//  815         usRowTmp = i << 3;    //计算当前所在行的下标                  
        LSLS     R0,R7,#+3
        MOV      R11,R0
//  816         for(j = 0; j < usColumnNum; j++) //列扫描        
        MOVS     R0,#+0
        MOV      R8,R0
??LED_PrintImage_2:
        UXTH     R8,R8            ;; ZeroExt  R8,R8,#+16,#+16
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R8,R5
        BCS.N    ??LED_PrintImage_3
//  817         {
//  818             ucData = 0;
        MOVS     R0,#+0
        MOVS     R6,R0
//  819             for(k = 0; k < 8; k++) //在i组中对这8行扫描
        MOVS     R0,#+0
        MOV      R9,R0
??LED_PrintImage_4:
        UXTH     R9,R9            ;; ZeroExt  R9,R9,#+16,#+16
        CMP      R9,#+8
        BCS.N    ??LED_PrintImage_5
//  820             {
//  821                 ucData = ucData >> 1;
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LSRS     R6,R6,#+1
//  822                 if((pucTable + (usRowTmp + k) * usColumnNum)[j] == 1)
        UXTH     R8,R8            ;; ZeroExt  R8,R8,#+16,#+16
        UXTH     R9,R9            ;; ZeroExt  R9,R9,#+16,#+16
        UXTAH    R0,R9,R11
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        MLA      R0,R5,R0,R4
        LDRB     R0,[R8, R0]
        CMP      R0,#+1
        BNE.N    ??LED_PrintImage_6
//  823                 {
//  824                     ucData = ucData | 0x80;
        ORRS     R6,R6,#0x80
//  825                 }
//  826                 
//  827             }
??LED_PrintImage_6:
        ADDS     R9,R9,#+1
        B.N      ??LED_PrintImage_4
//  828             LCD_WrDat(ucData);
??LED_PrintImage_5:
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LCD_WrDat
//  829         }
        ADDS     R8,R8,#+1
        B.N      ??LED_PrintImage_2
//  830     }
??LED_PrintImage_3:
        ADDS     R7,R7,#+1
        B.N      ??LED_PrintImage_0
//  831     
//  832     LCD_Set_Pos(0,(uint8) i); //设置剩下的行显示的起始坐标
??LED_PrintImage_1:
        MOVS     R1,R7
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+0
        BL       LCD_Set_Pos
//  833     usRowTmp = i << 3;       //计算当前所在行的下标                  
        LSLS     R0,R7,#+3
        MOV      R11,R0
//  834     for(j = 0; j < usColumnNum; j++) //列扫描        
        MOVS     R0,#+0
        MOV      R8,R0
??LED_PrintImage_7:
        UXTH     R8,R8            ;; ZeroExt  R8,R8,#+16,#+16
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R8,R5
        BCS.N    ??LED_PrintImage_8
//  835     {
//  836         ucData = 0;
        MOVS     R0,#+0
        MOVS     R6,R0
//  837         for(k = 0; k < n; k++) //对剩下的行扫描
        MOVS     R0,#+0
        MOV      R9,R0
??LED_PrintImage_9:
        UXTH     R9,R9            ;; ZeroExt  R9,R9,#+16,#+16
        UXTH     R10,R10          ;; ZeroExt  R10,R10,#+16,#+16
        CMP      R9,R10
        BCS.N    ??LED_PrintImage_10
//  838         {
//  839             ucData = ucData >> 1;
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LSRS     R6,R6,#+1
//  840             if((pucTable + (usRowTmp + k) * usColumnNum)[j] ==1)
        UXTH     R8,R8            ;; ZeroExt  R8,R8,#+16,#+16
        UXTH     R9,R9            ;; ZeroExt  R9,R9,#+16,#+16
        UXTAH    R0,R9,R11
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        MLA      R0,R5,R0,R4
        LDRB     R0,[R8, R0]
        CMP      R0,#+1
        BNE.N    ??LED_PrintImage_11
//  841             {
//  842                 ucData = ucData | 0x80;
        ORRS     R6,R6,#0x80
//  843             }
//  844             
//  845         }
??LED_PrintImage_11:
        ADDS     R9,R9,#+1
        B.N      ??LED_PrintImage_9
//  846         ucData = ucData >> (8 - n);
??LED_PrintImage_10:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        RSBS     R0,R10,#+8
        ASRS     R6,R6,R0
//  847         LCD_WrDat(ucData);
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LCD_WrDat
//  848     }
        ADDS     R8,R8,#+1
        B.N      ??LED_PrintImage_7
//  849 
//  850     return;
??LED_PrintImage_8:
        POP      {R0-R2,R4-R11,PC}  ;; return
//  851 }
//  852 
//  853 
//  854 ///////////////////////////////////////////////////////////////////////////////////
//  855 /***********************************预显示**********************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  856 void pre_show(void)
//  857 {  
pre_show:
        PUSH     {R7,LR}
//  858    //int8 i;
//  859    LCD_CLS();
        BL       LCD_CLS
//  860    switch(page_num)
        LDR.W    R0,??DataTable12
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??pre_show_0
        CMP      R0,#+2
        BEQ.W    ??pre_show_1
        BCC.W    ??pre_show_2
        CMP      R0,#+4
        BEQ.W    ??pre_show_3
        BCC.W    ??pre_show_4
        B.N      ??pre_show_5
//  861      {
//  862      case 0: 
//  863             write_6_8_number(0,0,Pixel[15]); 
??pre_show_0:
        LDR.W    R0,??DataTable12_1
        LDRH     R0,[R0, #+30]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       write_6_8_number
//  864             write_6_8_number(50,0,Pixel[64]); 
        LDR.W    R0,??DataTable12_1
        LDRH     R0,[R0, #+128]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+0
        MOVS     R0,#+50
        BL       write_6_8_number
//  865             write_6_8_number(100,0,Pixel[105]); 
        LDR.W    R0,??DataTable12_1
        LDRH     R0,[R0, #+210]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+0
        MOVS     R0,#+100
        BL       write_6_8_number
//  866         
//  867             
//  868             write_6_8_string(0,1,"V:");     
        ADR.N    R2,??DataTable9  ;; 0x56, 0x3A, 0x00, 0x00
        MOVS     R1,#+1
        MOVS     R0,#+0
        BL       write_6_8_string
//  869             write_6_8_number(20,1,V);
        LDR.W    R0,??DataTable12_2
        LDR      R2,[R0, #+0]
        MOVS     R1,#+1
        MOVS     R0,#+20
        BL       write_6_8_number
//  870            
//  871             write_6_8_string(50,1,"W:");     //第二行，角速度
        ADR.N    R2,??DataTable9_1  ;; 0x57, 0x3A, 0x00, 0x00
        MOVS     R1,#+1
        MOVS     R0,#+50
        BL       write_6_8_string
//  872             write_6_8_number(70,1,w); 
        LDR.W    R0,??DataTable12_3
        LDR      R2,[R0, #+0]
        MOVS     R1,#+1
        MOVS     R0,#+70
        BL       write_6_8_number
//  873  
//  874            
//  875             write_6_8_string(0,2,"acce:");      //第三行，加速度计值
        LDR.W    R2,??DataTable12_4
        MOVS     R1,#+2
        MOVS     R0,#+0
        BL       write_6_8_string
//  876             write_6_8_number(50,2,acce);
        LDR.W    R0,??DataTable12_5
        LDR      R2,[R0, #+0]
        MOVS     R1,#+2
        MOVS     R0,#+50
        BL       write_6_8_number
//  877   
//  878             write_6_8_string(0,3,"L_c:");
        LDR.W    R2,??DataTable12_6
        MOVS     R1,#+3
        MOVS     R0,#+0
        BL       write_6_8_string
//  879             write_6_8_number(24,3,Left_cnt);   
        LDR.W    R0,??DataTable12_7
        LDRB     R0,[R0, #+0]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+3
        MOVS     R0,#+24
        BL       write_6_8_number
//  880             write_6_8_string(50,3,"R_c:");      
        LDR.W    R2,??DataTable12_8
        MOVS     R1,#+3
        MOVS     R0,#+50
        BL       write_6_8_string
//  881             write_6_8_number(74,3,Right_cnt);
        LDR.W    R0,??DataTable12_9
        LDRB     R0,[R0, #+0]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+3
        MOVS     R0,#+74
        BL       write_6_8_number
//  882             
//  883             write_6_8_string(0,4,"p_d:");    //
        LDR.W    R2,??DataTable12_10
        MOVS     R1,#+4
        MOVS     R0,#+0
        BL       write_6_8_string
//  884             write_6_8_number(24,4,p_distance);
        LDR.W    R0,??DataTable12_11
        LDR      R2,[R0, #+0]
        MOVS     R1,#+4
        MOVS     R0,#+24
        BL       write_6_8_number
//  885         
//  886             write_6_8_string(50,4,"w_c:");    //
        LDR.W    R2,??DataTable12_12
        MOVS     R1,#+4
        MOVS     R0,#+50
        BL       write_6_8_string
//  887             write_6_8_number(74,4,white_center);
        LDR.W    R0,??DataTable12_13
        LDR      R2,[R0, #+0]
        MOVS     R1,#+4
        MOVS     R0,#+74
        BL       write_6_8_number
//  888         
//  889              
//  890             write_6_8_string(0,5,"Sp:");     
        ADR.N    R2,??DataTable9_2  ;; "Sp:"
        MOVS     R1,#+5
        MOVS     R0,#+0
        BL       write_6_8_string
//  891             write_6_8_number(50,5,Speed_set);
        LDR.W    R0,??DataTable12_14
        LDRB     R0,[R0, #+0]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+5
        MOVS     R0,#+50
        BL       write_6_8_number
//  892 
//  893         
//  894             write_6_8_number(0,6,g_nCarAngle); 
        LDR.W    R0,??DataTable12_15
        LDR      R2,[R0, #+0]
        MOVS     R1,#+6
        MOVS     R0,#+0
        BL       write_6_8_number
//  895             write_6_8_number(50,6,acce_angle);
        LDR.W    R0,??DataTable12_16
        LDR      R2,[R0, #+0]
        MOVS     R1,#+6
        MOVS     R0,#+50
        BL       write_6_8_number
//  896         
//  897         
//  898         
//  899             write_6_8_number(0,7,white_latch);
        LDR.W    R0,??DataTable12_17
        LDRH     R0,[R0, #+0]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+7
        MOVS     R0,#+0
        BL       write_6_8_number
//  900         
//  901             write_6_8_number(50,7,latch);
        LDR.W    R0,??DataTable12_18
        LDRH     R0,[R0, #+0]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+7
        MOVS     R0,#+50
        BL       write_6_8_number
//  902         
//  903             write_6_8_number(100,7,black_latch);
        LDR.W    R0,??DataTable12_19
        LDRH     R0,[R0, #+0]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+7
        MOVS     R0,#+100
        BL       write_6_8_number
//  904         
//  905        
//  906             
//  907             break;
        B.N      ??pre_show_5
//  908              
//  909       case 1:
//  910              
//  911              write_6_8_number(0,0,g_nLeftCount);
??pre_show_2:
        LDR.W    R0,??DataTable12_20
        LDRSH    R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R2,R0
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       write_6_8_number
//  912              write_6_8_number(60,0,g_nRightCount);
        LDR.W    R0,??DataTable12_21
        LDRSH    R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R2,R0
        MOVS     R1,#+0
        MOVS     R0,#+60
        BL       write_6_8_number
//  913              
//  914              write_6_8_string(0,1,"Rsp:");     
        LDR.W    R2,??DataTable12_22
        MOVS     R1,#+1
        MOVS     R0,#+0
        BL       write_6_8_string
//  915              write_6_8_number(60,1,RealSpeed);
        LDR.W    R0,??DataTable12_23
        LDR      R2,[R0, #+0]
        MOVS     R1,#+1
        MOVS     R0,#+60
        BL       write_6_8_number
//  916 
//  917              
//  918              write_6_8_string(0,2,"L_PWM:");    //
        LDR.W    R2,??DataTable12_24
        MOVS     R1,#+2
        MOVS     R0,#+0
        BL       write_6_8_string
//  919              write_6_8_number(60,2,LeftSpeedPwm);
        LDR.W    R0,??DataTable12_25
        LDRSH    R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R2,R0
        MOVS     R1,#+2
        MOVS     R0,#+60
        BL       write_6_8_number
//  920              
//  921              write_6_8_string(0,3,"R_PWM:");    //
        LDR.W    R2,??DataTable12_26
        MOVS     R1,#+3
        MOVS     R0,#+0
        BL       write_6_8_string
//  922              write_6_8_number(60,3,RightSpeedPwm);
        LDR.W    R0,??DataTable12_27
        LDRSH    R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R2,R0
        MOVS     R1,#+3
        MOVS     R0,#+60
        BL       write_6_8_number
//  923              
//  924              write_6_8_number(0,4,anglePD);
        LDR.W    R0,??DataTable12_28
        LDRSH    R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R2,R0
        MOVS     R1,#+4
        MOVS     R0,#+0
        BL       write_6_8_number
//  925              write_6_8_number(50,4,steerpwm);
        LDR.W    R0,??DataTable12_29
        LDRSH    R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R2,R0
        MOVS     R1,#+4
        MOVS     R0,#+50
        BL       write_6_8_number
//  926              write_6_8_number(100,4,SpeedPID);
        LDR.W    R0,??DataTable12_30
        LDRSH    R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R2,R0
        MOVS     R1,#+4
        MOVS     R0,#+100
        BL       write_6_8_number
//  927              
//  928              
//  929              break;
        B.N      ??pre_show_5
//  930              
//  931              
//  932        
//  933       case 2:write_6_8_char(0,line_num,'*');
??pre_show_1:
        MOVS     R2,#+42
        LDR.W    R0,??DataTable12_31
        LDRB     R1,[R0, #+0]
        MOVS     R0,#+0
        BL       write_6_8_char
//  934       
//  935              write_6_8_string(6,0,"ACCE:");    //加速度计静态值
        LDR.W    R2,??DataTable12_32
        MOVS     R1,#+0
        MOVS     R0,#+6
        BL       write_6_8_string
//  936              write_6_8_number(60,0,ACCE_STATIC); 
        LDR.W    R0,??DataTable12_33
        LDR      R2,[R0, #+0]
        MOVS     R1,#+0
        MOVS     R0,#+60
        BL       write_6_8_number
//  937                
//  938              write_6_8_string(6,1,"Sp:");    //
        ADR.N    R2,??DataTable9_2  ;; "Sp:"
        MOVS     R1,#+1
        MOVS     R0,#+6
        BL       write_6_8_string
//  939              write_6_8_number(60,1,Speed_set);
        LDR.W    R0,??DataTable12_14
        LDRB     R0,[R0, #+0]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+1
        MOVS     R0,#+60
        BL       write_6_8_number
//  940                
//  941              write_6_8_string(6,2,"WHITE_C:");    //
        LDR.W    R2,??DataTable12_34
        MOVS     R1,#+2
        MOVS     R0,#+6
        BL       write_6_8_string
//  942              write_6_8_number(60,2,WHITE_CENTER);
        LDR.W    R0,??DataTable12_35
        LDRB     R0,[R0, #+0]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+2
        MOVS     R0,#+60
        BL       write_6_8_number
//  943              
//  944            //  LCD_Set_Pos(0, 5) ;
//  945              //for(i=22;i<106;i++){
//  946                //if(CCD_value[i])  LCD_write_byte(0xfe,1);       
//  947                //else LCD_write_byte(0x80,1);      
//  948              //}
//  949              break;
        B.N      ??pre_show_5
//  950              
//  951              
//  952       case 3:write_6_8_char(0,line_num,'*');
??pre_show_4:
        MOVS     R2,#+42
        LDR.W    R0,??DataTable12_31
        LDRB     R1,[R0, #+0]
        MOVS     R0,#+0
        BL       write_6_8_char
//  953              
//  954              write_6_8_string(6,0,"ang_kp:");    //
        LDR.W    R2,??DataTable12_36
        MOVS     R1,#+0
        MOVS     R0,#+6
        BL       write_6_8_string
//  955              write_6_8_number(60,0,angle_kp); 
        LDR.W    R0,??DataTable12_37
        LDR      R2,[R0, #+0]
        MOVS     R1,#+0
        MOVS     R0,#+60
        BL       write_6_8_number
//  956              
//  957              write_6_8_string(6,1,"ang_kd:");    //
        LDR.W    R2,??DataTable12_38
        MOVS     R1,#+1
        MOVS     R0,#+6
        BL       write_6_8_string
//  958              write_6_8_number(60,1,angle_kd);
        LDR.W    R0,??DataTable12_39
        LDR      R2,[R0, #+0]
        MOVS     R1,#+1
        MOVS     R0,#+60
        BL       write_6_8_number
//  959 
//  960              write_6_8_string(6,2,"sped_kp:");    //
        LDR.W    R2,??DataTable12_40
        MOVS     R1,#+2
        MOVS     R0,#+6
        BL       write_6_8_string
//  961              write_6_8_number(60,2,speed_kp); 
        LDR.W    R0,??DataTable12_41
        LDR      R2,[R0, #+0]
        MOVS     R1,#+2
        MOVS     R0,#+60
        BL       write_6_8_number
//  962              
//  963              write_6_8_string(6,3,"sped_ki:");    //
        LDR.W    R2,??DataTable12_42
        MOVS     R1,#+3
        MOVS     R0,#+6
        BL       write_6_8_string
//  964              write_6_8_number(60,3,speed_ki); 
        LDR.W    R0,??DataTable12_43
        LDR      R2,[R0, #+0]
        MOVS     R1,#+3
        MOVS     R0,#+60
        BL       write_6_8_number
//  965              
//  966              write_6_8_string(6,4,"ster_kp:");    //
        LDR.W    R2,??DataTable12_44
        MOVS     R1,#+4
        MOVS     R0,#+6
        BL       write_6_8_string
//  967              write_6_8_number(60,4,steer_kp);
        LDR.W    R0,??DataTable12_45
        LDR      R2,[R0, #+0]
        MOVS     R1,#+4
        MOVS     R0,#+60
        BL       write_6_8_number
//  968              
//  969              write_6_8_string(6,5,"ster_kd:");    //
        LDR.W    R2,??DataTable12_46
        MOVS     R1,#+5
        MOVS     R0,#+6
        BL       write_6_8_string
//  970              write_6_8_number(60,5,steer_kd);  
        LDR.W    R0,??DataTable12_47
        LDR      R2,[R0, #+0]
        MOVS     R1,#+5
        MOVS     R0,#+60
        BL       write_6_8_number
//  971              
//  972              break;
        B.N      ??pre_show_5
//  973              
//  974      case 4:
//  975             MAIN_ConvertData(Pixel, *g_aucImageTable); //将数据转换为可以在OLED屏上显示的格式
??pre_show_3:
        LDR.W    R1,??DataTable12_48
        LDR.W    R0,??DataTable12_1
        BL       MAIN_ConvertData
//  976         
//  977             LED_PrintImage(*g_aucImageTable, 60, 128); //在OLED上显示图像波形图
        MOVS     R2,#+128
        MOVS     R1,#+60
        LDR.W    R0,??DataTable12_48
        BL       LED_PrintImage
//  978             break;
//  979              
//  980      }
//  981 
//  982 }
??pre_show_5:
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9:
        DC8      0x56, 0x3A, 0x00, 0x00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_1:
        DC8      0x57, 0x3A, 0x00, 0x00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_2:
        DC8      "Sp:"
//  983 
//  984 /**************************************刷屏，显示时变变量*********************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  985 void redraw()
//  986 {
redraw:
        PUSH     {R7,LR}
//  987      
//  988   //if(page_num==0&&redraw_control==0)     //第一页
//  989   switch(page_num)
        LDR.W    R0,??DataTable12
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??redraw_0
        CMP      R0,#+1
        BEQ.W    ??redraw_1
        CMP      R0,#+4
        BEQ.W    ??redraw_2
        B.N      ??redraw_3
//  990   {
//  991   case 0:
//  992         LCD_clear_L(0,0);
??redraw_0:
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       LCD_clear_L
//  993         write_6_8_number(0,0,Pixel[10]); 
        LDR.W    R0,??DataTable12_1
        LDRH     R0,[R0, #+20]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       write_6_8_number
//  994         write_6_8_number(50,0,Pixel[64]); 
        LDR.W    R0,??DataTable12_1
        LDRH     R0,[R0, #+128]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+0
        MOVS     R0,#+50
        BL       write_6_8_number
//  995         write_6_8_number(100,0,Pixel[115]);
        LDR.W    R0,??DataTable12_1
        LDRH     R0,[R0, #+230]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+0
        MOVS     R0,#+100
        BL       write_6_8_number
//  996         
//  997         LCD_clear_L(70,1);
        MOVS     R1,#+1
        MOVS     R0,#+70
        BL       LCD_clear_L
//  998         
//  999         write_6_8_number(70,1,w); 
        LDR.W    R0,??DataTable12_3
        LDR      R2,[R0, #+0]
        MOVS     R1,#+1
        MOVS     R0,#+70
        BL       write_6_8_number
// 1000            
// 1001         LCD_clear_L(50,2);
        MOVS     R1,#+2
        MOVS     R0,#+50
        BL       LCD_clear_L
// 1002         write_6_8_number(50,2,acce);
        LDR.W    R0,??DataTable12_5
        LDR      R2,[R0, #+0]
        MOVS     R1,#+2
        MOVS     R0,#+50
        BL       write_6_8_number
// 1003         
// 1004         LCD_clear_L(0,3);
        MOVS     R1,#+3
        MOVS     R0,#+0
        BL       LCD_clear_L
// 1005         write_6_8_string(0,3,"L_c:");
        LDR.W    R2,??DataTable12_6
        MOVS     R1,#+3
        MOVS     R0,#+0
        BL       write_6_8_string
// 1006         write_6_8_number(24,3,Left_cnt);   
        LDR.W    R0,??DataTable12_7
        LDRB     R0,[R0, #+0]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+3
        MOVS     R0,#+24
        BL       write_6_8_number
// 1007         write_6_8_string(50,3,"R_c:");      
        LDR.W    R2,??DataTable12_8
        MOVS     R1,#+3
        MOVS     R0,#+50
        BL       write_6_8_string
// 1008         write_6_8_number(74,3,Right_cnt);
        LDR.W    R0,??DataTable12_9
        LDRB     R0,[R0, #+0]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+3
        MOVS     R0,#+74
        BL       write_6_8_number
// 1009         
// 1010        
// 1011         
// 1012         LCD_clear_L(30,4);     
        MOVS     R1,#+4
        MOVS     R0,#+30
        BL       LCD_clear_L
// 1013         write_6_8_string(0,4,"p_d:");    //
        LDR.W    R2,??DataTable12_10
        MOVS     R1,#+4
        MOVS     R0,#+0
        BL       write_6_8_string
// 1014         write_6_8_number(30,4,p_distance);
        LDR.W    R0,??DataTable12_11
        LDR      R2,[R0, #+0]
        MOVS     R1,#+4
        MOVS     R0,#+30
        BL       write_6_8_number
// 1015         
// 1016         write_6_8_string(60,4,"w_c:");    //
        LDR.W    R2,??DataTable12_12
        MOVS     R1,#+4
        MOVS     R0,#+60
        BL       write_6_8_string
// 1017         write_6_8_number(80,4,(uint16) white_center);
        LDR.W    R0,??DataTable12_13
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2iz
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+4
        MOVS     R0,#+80
        BL       write_6_8_number
// 1018         
// 1019         
// 1020         LCD_clear_L(50,5);
        MOVS     R1,#+5
        MOVS     R0,#+50
        BL       LCD_clear_L
// 1021 
// 1022        // write_6_8_string(0,5,"Sp:");     
// 1023         write_6_8_number(50,5,Speed_set);
        LDR.W    R0,??DataTable12_14
        LDRB     R0,[R0, #+0]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+5
        MOVS     R0,#+50
        BL       write_6_8_number
// 1024 
// 1025         
// 1026         LCD_clear_L(0,6);
        MOVS     R1,#+6
        MOVS     R0,#+0
        BL       LCD_clear_L
// 1027         write_6_8_number(0,6,g_nCarAngle); 
        LDR.W    R0,??DataTable12_15
        LDR      R2,[R0, #+0]
        MOVS     R1,#+6
        MOVS     R0,#+0
        BL       write_6_8_number
// 1028         write_6_8_number(50,6,acce_angle);
        LDR.W    R0,??DataTable12_16
        LDR      R2,[R0, #+0]
        MOVS     R1,#+6
        MOVS     R0,#+50
        BL       write_6_8_number
// 1029         
// 1030         LCD_clear_L(0,7);
        MOVS     R1,#+7
        MOVS     R0,#+0
        BL       LCD_clear_L
// 1031         write_6_8_number(0,7,white_latch);
        LDR.W    R0,??DataTable12_17
        LDRH     R0,[R0, #+0]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+7
        MOVS     R0,#+0
        BL       write_6_8_number
// 1032         
// 1033         write_6_8_number(50,7,latch);
        LDR.W    R0,??DataTable12_18
        LDRH     R0,[R0, #+0]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+7
        MOVS     R0,#+50
        BL       write_6_8_number
// 1034         
// 1035         write_6_8_number(100,7,black_latch);
        LDR.W    R0,??DataTable12_19
        LDRH     R0,[R0, #+0]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+7
        MOVS     R0,#+100
        BL       write_6_8_number
// 1036         
// 1037         break;
        B.N      ??redraw_3
// 1038         
// 1039   case 1:     //第二页
// 1040         LCD_clear_L(0,0);
??redraw_1:
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       LCD_clear_L
// 1041         write_6_8_number(0,0,g_nLeftCount);
        LDR.W    R0,??DataTable12_20
        LDRSH    R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R2,R0
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       write_6_8_number
// 1042         write_6_8_number(60,0,g_nRightCount);
        LDR.W    R0,??DataTable12_21
        LDRSH    R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R2,R0
        MOVS     R1,#+0
        MOVS     R0,#+60
        BL       write_6_8_number
// 1043         
// 1044         LCD_clear_L(60,1);     
        MOVS     R1,#+1
        MOVS     R0,#+60
        BL       LCD_clear_L
// 1045         write_6_8_number(60,1,RealSpeed);
        LDR.W    R0,??DataTable12_23
        LDR      R2,[R0, #+0]
        MOVS     R1,#+1
        MOVS     R0,#+60
        BL       write_6_8_number
// 1046 
// 1047         
// 1048         LCD_clear_L(60,2);
        MOVS     R1,#+2
        MOVS     R0,#+60
        BL       LCD_clear_L
// 1049         write_6_8_number(60,2,LeftSpeedPwm);
        LDR.W    R0,??DataTable12_25
        LDRSH    R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R2,R0
        MOVS     R1,#+2
        MOVS     R0,#+60
        BL       write_6_8_number
// 1050         
// 1051         LCD_clear_L(60,3);
        MOVS     R1,#+3
        MOVS     R0,#+60
        BL       LCD_clear_L
// 1052         write_6_8_number(60,3,RightSpeedPwm);
        LDR.W    R0,??DataTable12_27
        LDRSH    R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R2,R0
        MOVS     R1,#+3
        MOVS     R0,#+60
        BL       write_6_8_number
// 1053         
// 1054         LCD_clear_L(60,4);        
        MOVS     R1,#+4
        MOVS     R0,#+60
        BL       LCD_clear_L
// 1055         write_6_8_number(0,4,anglePD);
        LDR.W    R0,??DataTable12_28
        LDRSH    R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R2,R0
        MOVS     R1,#+4
        MOVS     R0,#+0
        BL       write_6_8_number
// 1056         write_6_8_number(50,4,steerpwm);
        LDR.W    R0,??DataTable12_29
        LDRSH    R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R2,R0
        MOVS     R1,#+4
        MOVS     R0,#+50
        BL       write_6_8_number
// 1057         write_6_8_number(100,4,SpeedPID);
        LDR.W    R0,??DataTable12_30
        LDRSH    R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R2,R0
        MOVS     R1,#+4
        MOVS     R0,#+100
        BL       write_6_8_number
// 1058         
// 1059         
// 1060         break;
        B.N      ??redraw_3
// 1061      
// 1062   case 4:
// 1063         MAIN_ConvertData(Pixel, *g_aucImageTable); //将数据转换为可以在OLED屏上显示的格式
??redraw_2:
        LDR.W    R1,??DataTable12_48
        LDR.W    R0,??DataTable12_1
        BL       MAIN_ConvertData
// 1064         
// 1065         LED_PrintImage(*g_aucImageTable, 60, 128); //在OLED上显示图像波形图
        MOVS     R2,#+128
        MOVS     R1,#+60
        LDR.W    R0,??DataTable12_48
        BL       LED_PrintImage
// 1066         break;
// 1067   } 
// 1068 }
??redraw_3:
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10:
        DC32     F6x8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_1:
        DC32     0x38d1b718
// 1069 
// 1070 
// 1071 
// 1072 /*********************************修改变量数值***********************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1073 void change_value(unsigned char page,unsigned char m,float i)
// 1074 {  
change_value:
        PUSH     {R4-R8,LR}
        MOV      R8,R0
        MOVS     R7,R1
        MOVS     R6,R2
// 1075   switch (page)
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        MOV      R0,R8
        CMP      R0,#+2
        BEQ.N    ??change_value_0
        CMP      R0,#+3
        BEQ.N    ??change_value_1
        B.N      ??change_value_2
// 1076   {  
// 1077   case 2:
// 1078      switch(m)
??change_value_0:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+0
        BEQ.N    ??change_value_3
        CMP      R7,#+2
        BEQ.N    ??change_value_4
        BCC.N    ??change_value_5
        B.N      ??change_value_6
// 1079         {         
// 1080              
// 1081          case 0:ACCE_STATIC+=i;       
??change_value_3:
        LDR.W    R0,??DataTable12_33
        LDR      R0,[R0, #+0]
        MOVS     R1,R6
        BL       __aeabi_fadd
        LDR.W    R1,??DataTable12_33
        STR      R0,[R1, #+0]
// 1082                 LCD_clear_L(60,0);
        MOVS     R1,#+0
        MOVS     R0,#+60
        BL       LCD_clear_L
// 1083                 write_6_8_char(0,0,'*');
        MOVS     R2,#+42
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       write_6_8_char
// 1084                 write_6_8_number(60,0,ACCE_STATIC);  
        LDR.W    R0,??DataTable12_33
        LDR      R2,[R0, #+0]
        MOVS     R1,#+0
        MOVS     R0,#+60
        BL       write_6_8_number
// 1085                 break;
        B.N      ??change_value_6
// 1086          case 1:Speed_set+=i;
??change_value_5:
        LDR.W    R0,??DataTable12_14
        LDRB     R0,[R0, #+0]
        BL       __aeabi_ui2f
        MOVS     R1,R6
        BL       __aeabi_fadd
        BL       __aeabi_f2iz
        LDR.W    R1,??DataTable12_14
        STRB     R0,[R1, #+0]
// 1087                 LCD_clear_L(60,1);
        MOVS     R1,#+1
        MOVS     R0,#+60
        BL       LCD_clear_L
// 1088                 write_6_8_char(0,1,'*');
        MOVS     R2,#+42
        MOVS     R1,#+1
        MOVS     R0,#+0
        BL       write_6_8_char
// 1089                 write_6_8_number(60,1,Speed_set);
        LDR.W    R0,??DataTable12_14
        LDRB     R0,[R0, #+0]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+1
        MOVS     R0,#+60
        BL       write_6_8_number
// 1090                 break;
        B.N      ??change_value_6
// 1091           case 2:WHITE_CENTER+=i;
??change_value_4:
        LDR.W    R0,??DataTable12_35
        LDRB     R0,[R0, #+0]
        BL       __aeabi_ui2f
        MOVS     R1,R6
        BL       __aeabi_fadd
        BL       __aeabi_f2iz
        LDR.W    R1,??DataTable12_35
        STRB     R0,[R1, #+0]
// 1092                 LCD_clear_L(60,2);
        MOVS     R1,#+2
        MOVS     R0,#+60
        BL       LCD_clear_L
// 1093                 write_6_8_char(0,2,'*');
        MOVS     R2,#+42
        MOVS     R1,#+2
        MOVS     R0,#+0
        BL       write_6_8_char
// 1094                 write_6_8_number(60,2,WHITE_CENTER);
        LDR.W    R0,??DataTable12_35
        LDRB     R0,[R0, #+0]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+2
        MOVS     R0,#+60
        BL       write_6_8_number
// 1095                 break;
// 1096          /*
// 1097         case 3:pixel_max+=i;
// 1098                 LCD_clear_L(9,3);
// 1099                 write_6_8_char(0,3,'*');
// 1100                 write_6_8_number(11,3,pixel_max);
// 1101                 break;
// 1102                 
// 1103          case 4:angle_kp+=i;
// 1104                 LCD_clear_L(8,4);
// 1105                 write_6_8_char(0,4,'*');
// 1106                 write_6_8_number(8,4,angle_kp);
// 1107                 break;   
// 1108          case 5:angle_kd+=0.1*i;
// 1109                 LCD_clear_L(8,5);
// 1110                 write_6_8_char(0,5,'*');
// 1111                 write_6_8_number(8,5,angle_kd);
// 1112                 break;
// 1113            */
// 1114 	      }
// 1115      break;
??change_value_6:
        B.N      ??change_value_2
// 1116   case 3:
// 1117      switch(m)
??change_value_1:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+0
        BEQ.N    ??change_value_7
        CMP      R7,#+2
        BEQ.N    ??change_value_8
        BCC.N    ??change_value_9
        CMP      R7,#+4
        BEQ.W    ??change_value_10
        BCC.N    ??change_value_11
        CMP      R7,#+5
        BEQ.W    ??change_value_12
        B.N      ??change_value_13
// 1118         {
// 1119           
// 1120          case 0:angle_kp+=i;       
??change_value_7:
        LDR.W    R0,??DataTable12_37
        LDR      R0,[R0, #+0]
        MOVS     R1,R6
        BL       __aeabi_fadd
        LDR.W    R1,??DataTable12_37
        STR      R0,[R1, #+0]
// 1121                 LCD_clear_L(60,0);
        MOVS     R1,#+0
        MOVS     R0,#+60
        BL       LCD_clear_L
// 1122                 write_6_8_char(0,0,'*');
        MOVS     R2,#+42
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       write_6_8_char
// 1123                 write_6_8_number(60,0,angle_kp); 
        LDR.W    R0,??DataTable12_37
        LDR      R2,[R0, #+0]
        MOVS     R1,#+0
        MOVS     R0,#+60
        BL       write_6_8_number
// 1124                 break;
        B.N      ??change_value_13
// 1125          case 1:angle_kd+=0.1*i;
??change_value_9:
        LDR.W    R0,??DataTable12_39
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R0,R6
        BL       __aeabi_f2d
        MOVS     R2,R0
        MOVS     R3,R1
        LDR.W    R0,??DataTable12_49  ;; 0x9999999a
        LDR.W    R1,??DataTable12_50  ;; 0x3fb99999
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        LDR.W    R1,??DataTable12_39
        STR      R0,[R1, #+0]
// 1126                 LCD_clear_L(60,1);
        MOVS     R1,#+1
        MOVS     R0,#+60
        BL       LCD_clear_L
// 1127                 write_6_8_char(0,1,'*');
        MOVS     R2,#+42
        MOVS     R1,#+1
        MOVS     R0,#+0
        BL       write_6_8_char
// 1128                 write_6_8_number(60,1,angle_kd); 
        LDR.W    R0,??DataTable12_39
        LDR      R2,[R0, #+0]
        MOVS     R1,#+1
        MOVS     R0,#+60
        BL       write_6_8_number
// 1129                 break;
        B.N      ??change_value_13
// 1130                 
// 1131          case 2:speed_kp+=i;
??change_value_8:
        LDR.N    R0,??DataTable12_41
        LDR      R0,[R0, #+0]
        MOVS     R1,R6
        BL       __aeabi_fadd
        LDR.N    R1,??DataTable12_41
        STR      R0,[R1, #+0]
// 1132                 LCD_clear_L(60,2);
        MOVS     R1,#+2
        MOVS     R0,#+60
        BL       LCD_clear_L
// 1133                 write_6_8_char(0,2,'*');
        MOVS     R2,#+42
        MOVS     R1,#+2
        MOVS     R0,#+0
        BL       write_6_8_char
// 1134                 write_6_8_number(60,2,speed_kp); 
        LDR.N    R0,??DataTable12_41
        LDR      R2,[R0, #+0]
        MOVS     R1,#+2
        MOVS     R0,#+60
        BL       write_6_8_number
// 1135                 break;
        B.N      ??change_value_13
// 1136                 
// 1137          case 3:speed_ki+=0.01*i;
??change_value_11:
        LDR.N    R0,??DataTable12_43
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R0,R6
        BL       __aeabi_f2d
        MOVS     R2,R0
        MOVS     R3,R1
        LDR.N    R0,??DataTable12_51  ;; 0x47ae147b
        LDR.N    R1,??DataTable12_52  ;; 0x3f847ae1
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable12_43
        STR      R0,[R1, #+0]
// 1138                 LCD_clear_L(60,3);
        MOVS     R1,#+3
        MOVS     R0,#+60
        BL       LCD_clear_L
// 1139                 write_6_8_char(0,3,'*');
        MOVS     R2,#+42
        MOVS     R1,#+3
        MOVS     R0,#+0
        BL       write_6_8_char
// 1140                 write_6_8_number(60,3,speed_ki); 
        LDR.N    R0,??DataTable12_43
        LDR      R2,[R0, #+0]
        MOVS     R1,#+3
        MOVS     R0,#+60
        BL       write_6_8_number
// 1141                 break; 
        B.N      ??change_value_13
// 1142                 
// 1143          case 4:steer_kp+=0.1*i;
??change_value_10:
        LDR.N    R0,??DataTable12_45
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R0,R6
        BL       __aeabi_f2d
        MOVS     R2,R0
        MOVS     R3,R1
        LDR.N    R0,??DataTable12_49  ;; 0x9999999a
        LDR.N    R1,??DataTable12_50  ;; 0x3fb99999
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable12_45
        STR      R0,[R1, #+0]
// 1144                 LCD_clear_L(60,4);
        MOVS     R1,#+4
        MOVS     R0,#+60
        BL       LCD_clear_L
// 1145                 write_6_8_char(0,4,'*');
        MOVS     R2,#+42
        MOVS     R1,#+4
        MOVS     R0,#+0
        BL       write_6_8_char
// 1146                 write_6_8_number(60,4,steer_kp); 
        LDR.N    R0,??DataTable12_45
        LDR      R2,[R0, #+0]
        MOVS     R1,#+4
        MOVS     R0,#+60
        BL       write_6_8_number
// 1147                 break;
        B.N      ??change_value_13
// 1148                 
// 1149          case 5:steer_kd+=0.1*i;
??change_value_12:
        LDR.N    R0,??DataTable12_47
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R0,R6
        BL       __aeabi_f2d
        MOVS     R2,R0
        MOVS     R3,R1
        LDR.N    R0,??DataTable12_49  ;; 0x9999999a
        LDR.N    R1,??DataTable12_50  ;; 0x3fb99999
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable12_47
        STR      R0,[R1, #+0]
// 1150                 LCD_clear_L(60,5);
        MOVS     R1,#+5
        MOVS     R0,#+60
        BL       LCD_clear_L
// 1151                 write_6_8_char(0,5,'*');
        MOVS     R2,#+42
        MOVS     R1,#+5
        MOVS     R0,#+0
        BL       write_6_8_char
// 1152                 write_6_8_number(60,5,steer_kd); 
        LDR.N    R0,??DataTable12_47
        LDR      R2,[R0, #+0]
        MOVS     R1,#+5
        MOVS     R0,#+60
        BL       write_6_8_number
// 1153                 break; 
// 1154         }
// 1155    break;
// 1156   }
// 1157 }	 		    
??change_value_13:
??change_value_2:
        POP      {R4-R8,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11:
        DC32     0x447a0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_1:
        DC32     F8X16
// 1158   
// 1159 /****************************************************
// 1160                      按键扫描函数
// 1161 *****************************************************/
// 1162 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1163 void KeyScan(void)
// 1164 {                  
KeyScan:
        PUSH     {R7,LR}
// 1165  //if(scan_control==0)        //循环扫描
// 1166   //{
// 1167   
// 1168   /////////////////////////////////////////////////////切屏
// 1169   if(!change_page)  //如果检测到低电平，说明按键按下
        LDR.N    R0,??DataTable12_53  ;; 0x400ff090
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+19
        BMI.N    ??KeyScan_0
// 1170     {
// 1171       LCD_DLY_ms(10); //延时去抖，一般10-20ms
        MOVS     R0,#+10
        BL       LCD_DLY_ms
// 1172       if(!change_page)     //再次确认按键是否按下，没有按下则退出
        LDR.N    R0,??DataTable12_53  ;; 0x400ff090
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+19
        BMI.N    ??KeyScan_0
// 1173 	     {
// 1174        while(!change_page);//如果确认按下按键等待按键释放，没有释放则一直等待
??KeyScan_1:
        LDR.N    R0,??DataTable12_53  ;; 0x400ff090
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+19
        BPL.N    ??KeyScan_1
// 1175 	           
// 1176 		   if(page_num<4)    //页序号加操作
        LDR.N    R0,??DataTable12
        LDRB     R0,[R0, #+0]
        CMP      R0,#+4
        BCS.N    ??KeyScan_2
// 1177 	         page_num++;
        LDR.N    R0,??DataTable12
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable12
        STRB     R0,[R1, #+0]
        B.N      ??KeyScan_3
// 1178 		   else
// 1179 		       page_num=0;
??KeyScan_2:
        LDR.N    R0,??DataTable12
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
// 1180 		   
// 1181 		   line_num=0;
??KeyScan_3:
        LDR.N    R0,??DataTable12_31
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
// 1182 		   pre_show();
        BL       pre_show
// 1183 
// 1184 	     }  
// 1185      }
// 1186     
// 1187 
// 1188  if(page_num==2||page_num==3)     //如不为第一页，则进行下一步扫描
??KeyScan_0:
        LDR.N    R0,??DataTable12
        LDRB     R0,[R0, #+0]
        CMP      R0,#+2
        BEQ.N    ??KeyScan_4
        LDR.N    R0,??DataTable12
        LDRB     R0,[R0, #+0]
        CMP      R0,#+3
        BNE.W    ??KeyScan_5
// 1189  {
// 1190   /////////////////////////////////////////////////////切行
// 1191   if(!change_line)  //如果检测到低电平，说明按键按下
??KeyScan_4:
        LDR.N    R0,??DataTable12_53  ;; 0x400ff090
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+16
        BMI.N    ??KeyScan_6
// 1192     {
// 1193       LCD_DLY_ms(10); //延时去抖，一般10-20ms
        MOVS     R0,#+10
        BL       LCD_DLY_ms
// 1194      if(!change_line)     //再次确认按键是否按下，没有按下则退出
        LDR.N    R0,??DataTable12_53  ;; 0x400ff090
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+16
        BMI.N    ??KeyScan_6
// 1195 	     {
// 1196        while(!change_line);//如果确认按下按键等待按键释放，没有释放则一直等待
??KeyScan_7:
        LDR.N    R0,??DataTable12_53  ;; 0x400ff090
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+16
        BPL.N    ??KeyScan_7
// 1197 	     
// 1198 	     if(page_num!=0)
        LDR.N    R0,??DataTable12
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??KeyScan_8
// 1199 	        write_6_8_char(0,line_num,' ');
        MOVS     R2,#+32
        LDR.N    R0,??DataTable12_31
        LDRB     R1,[R0, #+0]
        MOVS     R0,#+0
        BL       write_6_8_char
// 1200 	           
// 1201 		   if(line_num<6)    //行序号加操作
??KeyScan_8:
        LDR.N    R0,??DataTable12_31
        LDRB     R0,[R0, #+0]
        CMP      R0,#+6
        BCS.N    ??KeyScan_9
// 1202 	         line_num++;
        LDR.N    R0,??DataTable12_31
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable12_31
        STRB     R0,[R1, #+0]
        B.N      ??KeyScan_10
// 1203 		   else
// 1204 		       line_num=0;
??KeyScan_9:
        LDR.N    R0,??DataTable12_31
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
// 1205 		   
// 1206 		   if(page_num!=0)
??KeyScan_10:
        LDR.N    R0,??DataTable12
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??KeyScan_6
// 1207 	        write_6_8_char(0,line_num,'*');
        MOVS     R2,#+42
        LDR.N    R0,??DataTable12_31
        LDRB     R1,[R0, #+0]
        MOVS     R0,#+0
        BL       write_6_8_char
// 1208 	     } 
// 1209 	     
// 1210    }
// 1211 /*对应参数加十*/
// 1212 
// 1213  if(!Add_10)  //如果检测到低电平，说明按键按下
??KeyScan_6:
        LDR.N    R0,??DataTable12_53  ;; 0x400ff090
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+18
        BMI.N    ??KeyScan_11
// 1214     {
// 1215        LCD_DLY_ms(10); //延时去抖，一般10-20ms
        MOVS     R0,#+10
        BL       LCD_DLY_ms
// 1216      if(!Add_10)     //再次确认按键是否按下，没有按下则退出
        LDR.N    R0,??DataTable12_53  ;; 0x400ff090
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+18
        BMI.N    ??KeyScan_11
// 1217 	   {
// 1218       while(!Add_10);//如果确认按下按键等待按键释放，没有释放则一直等待
??KeyScan_12:
        LDR.N    R0,??DataTable12_53  ;; 0x400ff090
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+18
        BPL.N    ??KeyScan_12
// 1219         change_value(page_num,line_num,10);
        LDR.N    R2,??DataTable12_54  ;; 0x41200000
        LDR.N    R0,??DataTable12_31
        LDRB     R1,[R0, #+0]
        LDR.N    R0,??DataTable12
        LDRB     R0,[R0, #+0]
        BL       change_value
// 1220 	   }
// 1221 	  }
// 1222 /*对应参数加一*/
// 1223 if(!Add_1)  
??KeyScan_11:
        LDR.N    R0,??DataTable12_53  ;; 0x400ff090
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+15
        BMI.N    ??KeyScan_13
// 1224     {
// 1225 	 LCD_DLY_ms(10); 
        MOVS     R0,#+10
        BL       LCD_DLY_ms
// 1226      if(!Add_1)
        LDR.N    R0,??DataTable12_53  ;; 0x400ff090
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+15
        BMI.N    ??KeyScan_13
// 1227 	   {
// 1228         while(!Add_1);
??KeyScan_14:
        LDR.N    R0,??DataTable12_53  ;; 0x400ff090
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+15
        BPL.N    ??KeyScan_14
// 1229         change_value(page_num,line_num,1);  
        MOVS     R2,#+1065353216
        LDR.N    R0,??DataTable12_31
        LDRB     R1,[R0, #+0]
        LDR.N    R0,??DataTable12
        LDRB     R0,[R0, #+0]
        BL       change_value
// 1230 	   }
// 1231 	  }
// 1232 /*对应参数减一*/
// 1233 if(!Sub_1)
??KeyScan_13:
        LDR.N    R0,??DataTable12_53  ;; 0x400ff090
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+14
        BMI.N    ??KeyScan_15
// 1234    {
// 1235   	 LCD_DLY_ms(10);  
        MOVS     R0,#+10
        BL       LCD_DLY_ms
// 1236      if(!Sub_1)     
        LDR.N    R0,??DataTable12_53  ;; 0x400ff090
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+14
        BMI.N    ??KeyScan_15
// 1237 	   {
// 1238         while(!Sub_1);
??KeyScan_16:
        LDR.N    R0,??DataTable12_53  ;; 0x400ff090
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+14
        BPL.N    ??KeyScan_16
// 1239         change_value(page_num,line_num,-1);
        LDR.N    R2,??DataTable12_55  ;; 0xbf800000
        LDR.N    R0,??DataTable12_31
        LDRB     R1,[R0, #+0]
        LDR.N    R0,??DataTable12
        LDRB     R0,[R0, #+0]
        BL       change_value
// 1240 	 	 }
// 1241 	  }
// 1242 /*对应参数减十*/
// 1243 if(!Sub_10){
??KeyScan_15:
        LDR.N    R0,??DataTable12_53  ;; 0x400ff090
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+17
        BMI.N    ??KeyScan_5
// 1244   LCD_DLY_ms(10); 
        MOVS     R0,#+10
        BL       LCD_DLY_ms
// 1245   if(!Sub_10){
        LDR.N    R0,??DataTable12_53  ;; 0x400ff090
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+17
        BMI.N    ??KeyScan_5
// 1246     while(!Sub_10);
??KeyScan_17:
        LDR.N    R0,??DataTable12_53  ;; 0x400ff090
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+17
        BPL.N    ??KeyScan_17
// 1247     change_value(page_num,line_num,-10);
        LDR.N    R2,??DataTable12_56  ;; 0xc1200000
        LDR.N    R0,??DataTable12_31
        LDRB     R1,[R0, #+0]
        LDR.N    R0,??DataTable12
        LDRB     R0,[R0, #+0]
        BL       change_value
// 1248   }
// 1249  }
// 1250 	  
// 1251 
// 1252  }
// 1253 }
??KeyScan_5:
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12:
        DC32     page_num

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_1:
        DC32     Pixel

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_2:
        DC32     V

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_3:
        DC32     w

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_4:
        DC32     `?<Constant "acce:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_5:
        DC32     acce

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_6:
        DC32     `?<Constant "L_c:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_7:
        DC32     Left_cnt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_8:
        DC32     `?<Constant "R_c:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_9:
        DC32     Right_cnt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_10:
        DC32     `?<Constant "p_d:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_11:
        DC32     p_distance

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_12:
        DC32     `?<Constant "w_c:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_13:
        DC32     white_center

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_14:
        DC32     Speed_set

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_15:
        DC32     g_nCarAngle

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_16:
        DC32     acce_angle

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_17:
        DC32     white_latch

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_18:
        DC32     latch

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_19:
        DC32     black_latch

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_20:
        DC32     g_nLeftCount

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_21:
        DC32     g_nRightCount

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_22:
        DC32     `?<Constant "Rsp:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_23:
        DC32     RealSpeed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_24:
        DC32     `?<Constant "L_PWM:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_25:
        DC32     LeftSpeedPwm

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_26:
        DC32     `?<Constant "R_PWM:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_27:
        DC32     RightSpeedPwm

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_28:
        DC32     anglePD

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_29:
        DC32     steerpwm

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_30:
        DC32     SpeedPID

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_31:
        DC32     line_num

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_32:
        DC32     `?<Constant "ACCE:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_33:
        DC32     ACCE_STATIC

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_34:
        DC32     `?<Constant "WHITE_C:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_35:
        DC32     WHITE_CENTER

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_36:
        DC32     `?<Constant "ang_kp:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_37:
        DC32     angle_kp

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_38:
        DC32     `?<Constant "ang_kd:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_39:
        DC32     angle_kd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_40:
        DC32     `?<Constant "sped_kp:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_41:
        DC32     speed_kp

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_42:
        DC32     `?<Constant "sped_ki:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_43:
        DC32     speed_ki

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_44:
        DC32     `?<Constant "ster_kp:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_45:
        DC32     steer_kp

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_46:
        DC32     `?<Constant "ster_kd:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_47:
        DC32     steer_kd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_48:
        DC32     g_aucImageTable

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_49:
        DC32     0x9999999a

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_50:
        DC32     0x3fb99999

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_51:
        DC32     0x47ae147b

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_52:
        DC32     0x3f847ae1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_53:
        DC32     0x400ff090

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_54:
        DC32     0x41200000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_55:
        DC32     0xbf800000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_56:
        DC32     0xc1200000

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
// 
// 7 682 bytes in section .bss
//     1 byte  in section .data
// 2 360 bytes in section .rodata
// 5 842 bytes in section .text
// 
// 5 820 bytes of CODE  memory (+ 22 bytes shared)
// 2 360 bytes of CONST memory
// 7 683 bytes of DATA  memory
//
//Errors: none
//Warnings: none
