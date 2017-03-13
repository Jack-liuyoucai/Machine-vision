///////////////////////////////////////////////////////////////////////////////
//                                                                            /
//                                                      19/Apr/2013  20:51:20 /
// IAR ANSI C/C++ Compiler V6.30.4.23288/W32 EVALUATION for ARM               /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Users\Administrator\Desktop\4.16晚\src\Sources\Drive /
//                    rs\nokia\nokia.c                                        /
//    Command line =  C:\Users\Administrator\Desktop\4.16晚\src\Sources\Drive /
//                    rs\nokia\nokia.c -D IAR -D TWR_K60N512 -D DEBUG -lCN    /
//                    C:\Users\Administrator\Desktop\4.16晚\FLASH\List\ -lB   /
//                    C:\Users\Administrator\Desktop\4.16晚\FLASH\List\ -o    /
//                    C:\Users\Administrator\Desktop\4.16晚\FLASH\Obj\        /
//                    --no_cse --no_unroll --no_inline --no_code_motion       /
//                    --no_tbaa --no_clustering --no_scheduling --debug       /
//                    --endian=little --cpu=Cortex-M4 -e --fpu=None           /
//                    --dlib_config "D:\Program Files\IAR Systems\Embedded    /
//                    Workbench 6.0 Evaluation\arm\INC\c\DLib_Config_Normal.h /
//                    " -I C:\Users\Administrator\Desktop\4.16晚\src\Sources\ /
//                    Cpu\ -I C:\Users\Administrator\Desktop\4.16晚\src\Sourc /
//                    es\App\ -I C:\Users\Administrator\Desktop\4.16晚\src\So /
//                    urces\Drivers\adc\ -I C:\Users\Administrator\Desktop\4. /
//                    16晚\src\Sources\Drivers\delay\ -I                      /
//                    C:\Users\Administrator\Desktop\4.16晚\src\Sources\Drive /
//                    rs\FTM\ -I C:\Users\Administrator\Desktop\4.16晚\src\So /
//                    urces\Drivers\gpio\ -I C:\Users\Administrator\Desktop\4 /
//                    .16晚\src\Sources\Drivers\lptmr\ -I                     /
//                    C:\Users\Administrator\Desktop\4.16晚\src\Sources\Drive /
//                    rs\mcg\ -I C:\Users\Administrator\Desktop\4.16晚\src\So /
//                    urces\Drivers\PIT\ -I C:\Users\Administrator\Desktop\4. /
//                    16晚\src\Sources\Drivers\uart\ -I                       /
//                    C:\Users\Administrator\Desktop\4.16晚\src\Sources\Drive /
//                    rs\nokia\ -I C:\Users\Administrator\Desktop\4.16晚\src\ /
//                    Sources\Drivers\spi\ -On --use_c++_inline               /
//    List file    =  C:\Users\Administrator\Desktop\4.16晚\FLASH\List\nokia. /
//                    s                                                       /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME nokia

        #define SHT_PROGBITS 0x1

        EXTERN ACCE_STATIC
        EXTERN CCD_value
        EXTERN IntegrationTime
        EXTERN LeftSpeedPwm
        EXTERN Left_cnt
        EXTERN Pixel
        EXTERN RealSpeed
        EXTERN RightSpeedPwm
        EXTERN Right_cnt
        EXTERN SpeedPID
        EXTERN Speed_set
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
        EXTERN __aeabi_ui2f
        EXTERN acce
        EXTERN acce_angle
        EXTERN anglePD
        EXTERN angle_kd
        EXTERN angle_kp
        EXTERN g_nCarAngle
        EXTERN g_nLeftCount
        EXTERN g_nRightCount
        EXTERN gpio_init
        EXTERN gpio_set
        EXTERN latch
        EXTERN p_distance
        EXTERN speed_ki
        EXTERN speed_kp
        EXTERN steer_kd
        EXTERN steer_kp
        EXTERN steerpwm
        EXTERN w

        PUBLIC DelayMs
        PUBLIC Init_LCD
        PUBLIC Init_LCD5110
        PUBLIC Init_port
        PUBLIC KeyScan
        PUBLIC LCD_clear
        PUBLIC LCD_clear_L
        PUBLIC LCD_delay
        PUBLIC LCD_draw_bmp
        PUBLIC LCD_set_XY
        PUBLIC LCD_write_byte
        PUBLIC change_value
        PUBLIC chinese
        PUBLIC fontCode6_8
        PUBLIC fontCode8_16
        PUBLIC line_num
        PUBLIC longdelay
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
        PUBLIC write_chinese_char


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
`?<Constant "Sp :">`:
        DATA
        DC8 "Sp :"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "RSp:">`:
        DATA
        DC8 "RSp:"
        DC8 0, 0, 0

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
`?<Constant "latch:">`:
        DATA
        DC8 "latch:"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "p_d:">`:
        DATA
        DC8 "p_d:"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "tm:"

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
        DATA
        DC8 "Sp:"

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

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "Rsp:">`:
        DATA
        DC8 "Rsp:"
        DC8 0, 0, 0
// C:\Users\Administrator\Desktop\4.16晚\src\Sources\Drivers\nokia\nokia.c
//    1 #include "common.h"
//    2 #include "nokia.h"
//    3 #include "gpio.h"
//    4 #include "ASC_FONT.h"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const fontCode8_16[95][16]
fontCode8_16:
        DATA
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 112, 248, 248
        DC8 112, 0, 0, 0, 0, 0, 13, 13, 0, 0, 0, 0, 56, 56, 0, 0, 56, 56, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 32, 248, 248, 32, 248, 248, 32, 0, 2, 15
        DC8 15, 2, 15, 15, 2, 0, 48, 120, 206, 142, 24, 16, 0, 0, 4, 12, 56, 57
        DC8 15, 6, 0, 24, 60, 36, 188, 216, 96, 48, 0, 0, 6, 3, 13, 30, 18, 30
        DC8 12, 0, 176, 248, 72, 120, 48, 0, 0, 0, 7, 15, 8, 9, 7, 15, 9, 0, 0
        DC8 0, 56, 56, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 192, 240, 56, 8
        DC8 0, 0, 0, 0, 7, 31, 56, 32, 0, 0, 0, 0, 8, 56, 240, 192, 0, 0, 0, 0
        DC8 32, 56, 31, 7, 0, 0, 0, 128, 160, 224, 192, 224, 160, 128, 0, 0, 2
        DC8 3, 1, 3, 2, 0, 0, 128, 128, 224, 224, 128, 128, 0, 0, 0, 0, 3, 3, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 44, 60, 28, 0, 0, 0, 128
        DC8 128, 128, 128, 128, 128, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 12, 12, 12, 0, 0, 0, 0, 0, 128, 224, 120, 24, 0
        DC8 0, 24, 30, 7, 1, 0, 0, 0, 0, 0, 240, 248, 8, 104, 248, 240, 0, 0, 7
        DC8 15, 11, 8, 15, 7, 0, 32, 32, 48, 248, 248, 0, 0, 0, 0, 0, 0, 15, 15
        DC8 0, 0, 0, 48, 56, 8, 136, 248, 112, 0, 0, 12, 14, 11, 9, 8, 8, 0, 0
        DC8 48, 56, 136, 136, 248, 112, 0, 0, 6, 14, 8, 8, 15, 7, 0, 0, 0, 248
        DC8 248, 0, 224, 224, 0, 0, 3, 3, 2, 2, 15, 15, 2, 0, 248, 248, 136
        DC8 136, 136, 8, 0, 0, 8, 8, 8, 12, 7, 3, 0, 0, 192, 224, 120, 88, 200
        DC8 128, 0, 0, 7, 15, 8, 8, 15, 7, 0, 0, 8, 8, 136, 232, 120, 24, 0, 0
        DC8 0, 14, 15, 1, 0, 0, 0, 0, 112, 248, 200, 136, 248, 112, 0, 0, 7, 15
        DC8 8, 9, 15, 7, 0, 0, 240, 248, 8, 8, 248, 240, 0, 0, 0, 9, 13, 15, 3
        DC8 1, 0, 0, 0, 0, 96, 96, 96, 0, 0, 0, 0, 0, 12, 12, 12, 0, 0, 0, 0, 0
        DC8 96, 96, 96, 0, 0, 0, 0, 0, 44, 60, 28, 0, 0, 0, 128, 192, 96, 48
        DC8 24, 8, 0, 0, 0, 1, 3, 6, 12, 8, 0, 0, 64, 64, 64, 64, 64, 64, 0, 0
        DC8 1, 1, 1, 1, 1, 1, 0, 0, 8, 24, 48, 96, 192, 128, 0, 0, 8, 12, 6, 3
        DC8 1, 0, 0, 0, 48, 56, 136, 200, 120, 48, 0, 0, 0, 0, 13, 13, 0, 0, 0
        DC8 240, 248, 8, 136, 200, 72, 248, 240, 7, 15, 8, 9, 11, 10, 11, 11, 0
        DC8 224, 240, 24, 24, 240, 224, 0, 0, 15, 15, 1, 1, 15, 15, 0, 0, 248
        DC8 248, 136, 136, 248, 112, 0, 0, 15, 15, 8, 8, 15, 7, 0, 0, 240, 248
        DC8 8, 8, 56, 48, 0, 0, 7, 15, 8, 8, 14, 6, 0, 0, 248, 248, 8, 24, 240
        DC8 224, 0, 0, 15, 15, 8, 12, 7, 3, 0, 0, 248, 248, 136, 136, 136, 8, 0
        DC8 0, 15, 15, 8, 8, 8, 8, 0, 0, 248, 248, 136, 136, 136, 8, 0, 0, 15
        DC8 15, 0, 0, 0, 0, 0, 0, 240, 248, 8, 8, 56, 48, 0, 0, 7, 15, 8, 9, 15
        DC8 15, 0, 0, 248, 248, 128, 128, 248, 248, 0, 0, 15, 15, 0, 0, 15, 15
        DC8 0, 0, 0, 8, 248, 248, 8, 0, 0, 0, 0, 8, 15, 15, 8, 0, 0, 0, 0, 0, 0
        DC8 0, 248, 248, 0, 0, 6, 14, 8, 8, 15, 7, 0, 0, 248, 248, 128, 224
        DC8 120, 24, 0, 0, 15, 15, 0, 3, 15, 12, 0, 0, 248, 248, 0, 0, 0, 0, 0
        DC8 0, 15, 15, 8, 8, 8, 8, 0, 0, 248, 248, 32, 192, 32, 248, 248, 0, 15
        DC8 15, 0, 1, 0, 15, 15, 0, 248, 248, 96, 192, 128, 248, 248, 0, 15, 15
        DC8 0, 0, 1, 15, 15, 0, 240, 248, 8, 8, 248, 240, 0, 0, 7, 15, 8, 8, 15
        DC8 7, 0, 0, 248, 248, 136, 136, 248, 112, 0, 0, 15, 15, 0, 0, 0, 0, 0
        DC8 0, 240, 248, 8, 8, 248, 240, 0, 0, 7, 15, 8, 24, 63, 39, 0, 0, 248
        DC8 248, 136, 136, 248, 112, 0, 0, 15, 15, 0, 1, 15, 14, 0, 0, 48, 120
        DC8 200, 136, 24, 16, 0, 0, 4, 12, 8, 9, 15, 6, 0, 0, 8, 8, 248, 248, 8
        DC8 8, 0, 0, 0, 0, 15, 15, 0, 0, 0, 0, 248, 248, 0, 0, 248, 248, 0, 0
        DC8 7, 15, 8, 8, 15, 7, 0, 0, 248, 248, 0, 0, 248, 248, 0, 0, 3, 7, 12
        DC8 12, 7, 3, 0, 0, 248, 248, 0, 192, 0, 248, 248, 0, 1, 15, 14, 1, 14
        DC8 15, 1, 0, 24, 56, 224, 192, 56, 24, 0, 0, 14, 15, 0, 1, 15, 14, 0
        DC8 0, 120, 248, 128, 128, 248, 120, 0, 0, 0, 0, 15, 15, 0, 0, 0, 0, 8
        DC8 8, 136, 200, 120, 56, 0, 0, 14, 15, 9, 8, 8, 8, 0, 0, 0, 248, 248
        DC8 8, 8, 0, 0, 0, 0, 127, 127, 64, 64, 0, 0, 0, 24, 120, 224, 128, 0
        DC8 0, 0, 0, 0, 0, 1, 7, 30, 24, 0, 0, 0, 8, 8, 248, 248, 0, 0, 0, 0
        DC8 64, 64, 127, 127, 0, 0, 0, 8, 12, 6, 6, 12, 8, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 64, 64, 64, 64, 64, 64, 64, 64, 0, 0
        DC8 2, 6, 14, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32, 32, 32, 224
        DC8 192, 0, 0, 6, 15, 9, 9, 15, 15, 0, 0, 248, 248, 32, 32, 224, 192, 0
        DC8 0, 15, 15, 8, 8, 15, 7, 0, 0, 192, 224, 32, 32, 96, 64, 0, 0, 7, 15
        DC8 8, 8, 12, 4, 0, 0, 192, 224, 32, 32, 248, 248, 0, 0, 7, 15, 8, 8
        DC8 15, 15, 0, 0, 192, 224, 32, 32, 224, 192, 0, 0, 7, 15, 9, 9, 9, 1
        DC8 0, 0, 128, 240, 248, 136, 136, 136, 0, 0, 0, 15, 15, 0, 0, 0, 0, 0
        DC8 192, 224, 32, 32, 224, 224, 0, 0, 71, 79, 72, 72, 127, 63, 0, 0
        DC8 248, 248, 32, 32, 224, 192, 0, 0, 15, 15, 0, 0, 15, 15, 0, 0, 32
        DC8 32, 236, 236, 0, 0, 0, 0, 8, 8, 15, 15, 8, 8, 0, 0, 0, 32, 32, 236
        DC8 236, 0, 0, 0, 64, 64, 64, 127, 63, 0, 0, 0, 248, 248, 0, 128, 224
        DC8 96, 0, 0, 15, 15, 1, 3, 14, 12, 0, 0, 8, 8, 248, 248, 0, 0, 0, 0, 8
        DC8 8, 15, 15, 8, 8, 0, 0, 224, 224, 32, 224, 32, 224, 192, 0, 15, 15
        DC8 0, 7, 0, 15, 15, 0, 224, 224, 32, 32, 224, 192, 0, 0, 15, 15, 0, 0
        DC8 15, 15, 0, 0, 192, 224, 32, 32, 224, 192, 0, 0, 7, 15, 8, 8, 15, 7
        DC8 0, 0, 224, 224, 32, 32, 224, 192, 0, 0, 127, 127, 8, 8, 15, 7, 0, 0
        DC8 192, 224, 32, 32, 224, 224, 0, 0, 7, 15, 8, 8, 127, 127, 0, 0, 224
        DC8 224, 128, 64, 96, 96, 0, 0, 15, 15, 0, 0, 0, 0, 0, 0, 192, 224, 32
        DC8 32, 32, 32, 0, 0, 8, 9, 9, 9, 15, 6, 0, 0, 32, 248, 248, 32, 32, 32
        DC8 0, 0, 0, 7, 15, 8, 8, 8, 0, 0, 224, 224, 0, 0, 224, 224, 0, 0, 7
        DC8 15, 8, 8, 15, 15, 0, 0, 224, 224, 0, 0, 224, 224, 0, 0, 3, 7, 12
        DC8 12, 7, 3, 0, 0, 224, 224, 0, 192, 0, 224, 224, 0, 3, 15, 12, 3, 12
        DC8 15, 3, 0, 96, 224, 128, 128, 224, 96, 0, 0, 12, 14, 3, 3, 14, 12, 0
        DC8 0, 224, 224, 0, 0, 224, 224, 0, 64, 71, 79, 104, 56, 31, 7, 0, 0
        DC8 32, 32, 32, 160, 224, 96, 0, 0, 12, 14, 11, 9, 8, 8, 0, 0, 0, 128
        DC8 240, 120, 8, 0, 0, 0, 1, 3, 30, 60, 32, 0, 0, 0, 0, 0, 248, 248, 0
        DC8 0, 0, 0, 0, 0, 127, 127, 0, 0, 0, 0, 0, 8, 120, 240, 128, 0, 0, 0
        DC8 0, 32, 60, 30, 3, 1, 0, 48, 24, 8, 24, 48, 32, 48, 24, 0, 0, 0, 0
        DC8 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const fontCode6_8[95][6]
fontCode6_8:
        DATA
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 79, 0, 0, 0, 0, 7, 0, 7, 0, 0, 20, 127
        DC8 20, 127, 20, 0, 36, 42, 127, 42, 18, 0, 35, 19, 8, 100, 98, 0, 54
        DC8 73, 85, 34, 80, 0, 0, 5, 3, 0, 0, 0, 0, 28, 34, 65, 0, 0, 0, 65, 34
        DC8 28, 0, 0, 20, 8, 62, 8, 20, 0, 8, 8, 62, 8, 8, 0, 0, 80, 48, 0, 0
        DC8 0, 8, 8, 8, 8, 8, 0, 0, 96, 96, 0, 0, 0, 32, 16, 8, 4, 2, 0, 62, 81
        DC8 73, 69, 62, 0, 0, 66, 127, 64, 0, 0, 66, 97, 81, 73, 70, 0, 33, 65
        DC8 69, 75, 49, 0, 24, 20, 18, 127, 16, 0, 39, 69, 69, 69, 57, 0, 60
        DC8 74, 73, 73, 48, 0, 1, 113, 9, 5, 3, 0, 54, 73, 73, 73, 54, 0, 6, 73
        DC8 73, 41, 30, 0, 0, 54, 54, 0, 0, 0, 0, 86, 54, 0, 0, 0, 8, 20, 34
        DC8 65, 0, 0, 20, 20, 20, 20, 20, 0, 0, 65, 34, 20, 8, 0, 2, 1, 81, 9
        DC8 6, 0, 50, 73, 121, 65, 62, 0, 126, 17, 17, 17, 126, 0, 127, 73, 73
        DC8 73, 62, 0, 62, 65, 65, 65, 34, 0, 127, 65, 65, 34, 28, 0, 127, 73
        DC8 73, 73, 65, 0, 127, 9, 9, 9, 1, 0, 62, 65, 73, 73, 122, 0, 127, 8
        DC8 8, 8, 127, 0, 0, 65, 127, 65, 0, 0, 32, 64, 65, 63, 1, 0, 127, 8
        DC8 20, 34, 65, 0, 127, 64, 64, 64, 64, 0, 127, 2, 4, 2, 127, 0, 127, 4
        DC8 8, 16, 127, 0, 62, 65, 65, 65, 62, 0, 127, 9, 9, 9, 6, 0, 62, 65
        DC8 81, 33, 94, 0, 127, 9, 25, 41, 70, 0, 70, 73, 73, 73, 49, 0, 1, 1
        DC8 127, 1, 1, 0, 63, 64, 64, 64, 63, 0, 31, 32, 64, 32, 31, 0, 63, 64
        DC8 56, 64, 63, 0, 99, 20, 8, 20, 99, 0, 3, 4, 120, 4, 3, 0, 97, 81, 73
        DC8 69, 67, 0, 0, 127, 65, 65, 0, 0, 21, 22, 124, 22, 21, 0, 0, 65, 65
        DC8 127, 0, 0, 4, 2, 1, 2, 4, 0, 64, 64, 64, 64, 64, 0, 0, 1, 2, 4, 0
        DC8 0, 32, 84, 84, 84, 120, 0, 127, 72, 68, 68, 56, 0, 56, 68, 68, 68
        DC8 32, 0, 56, 68, 68, 72, 127, 0, 56, 84, 84, 84, 24, 0, 8, 126, 9, 1
        DC8 2, 0, 12, 82, 82, 82, 62, 0, 127, 8, 4, 4, 120, 0, 0, 68, 125, 64
        DC8 0, 0, 32, 64, 68, 61, 0, 0, 127, 16, 40, 68, 0, 0, 0, 65, 127, 64
        DC8 0, 0, 126, 2, 12, 2, 124, 0, 126, 4, 2, 2, 124, 0, 56, 68, 68, 68
        DC8 56, 0, 124, 20, 20, 20, 8, 0, 8, 20, 20, 24, 124, 0, 124, 8, 4, 4
        DC8 8, 0, 72, 84, 84, 84, 32, 0, 4, 63, 68, 64, 32, 0, 60, 64, 64, 32
        DC8 124, 0, 28, 32, 64, 32, 28, 0, 60, 64, 48, 64, 60, 0, 68, 40, 16
        DC8 40, 68, 0, 12, 80, 80, 80, 60, 0, 68, 100, 84, 76, 68, 0, 0, 8, 54
        DC8 65, 0, 0, 0, 0, 127, 0, 0, 0, 0, 65, 54, 8, 0, 0, 8, 4, 8, 16, 8
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const chinese[4][24]
chinese:
        DATA
        DC8 4, 4, 244, 85, 94, 84, 86, 85, 244, 6, 4, 0, 0, 0, 7, 5, 5, 5, 5, 5
        DC8 7, 0, 0, 0, 40, 38, 34, 226, 186, 35, 34, 226, 34, 42, 38, 0, 4, 4
        DC8 4, 4, 2, 3, 1, 2, 2, 4, 4, 0, 0, 17, 17, 145, 127, 17, 17, 17, 241
        DC8 1, 0, 0, 4, 4, 4, 7, 4, 4, 4, 4, 7, 4, 4, 0, 255, 1, 25, 231, 0, 0
        DC8 192, 63, 192, 0, 0, 0, 7, 1, 1, 5, 2, 1, 0, 0, 0, 3, 4, 0
//    5 
//    6 
//    7 /*修改参数全局变量*/
//    8 extern uint8 WHITE_CENTER;
//    9 extern float angle_kp;
//   10 extern float angle_kd;
//   11 extern float RealSpeed;
//   12 extern float acce_angle;
//   13 extern float speed_kp;
//   14 extern float speed_ki;
//   15 extern int16 g_nLeftCount;
//   16 extern int16 g_nRightCount;
//   17 
//   18 extern uint8 Left_cnt;
//   19 extern uint8 Right_cnt;
//   20 
//   21 extern float steer_kp;
//   22 extern float steer_kd;
//   23 
//   24 extern float g_nCarAngle;
//   25 extern float acce,w;
//   26 extern float GYRO_STATIC,ACCE_STATIC;           //零点偏移量
//   27 
//   28 
//   29 extern uint16 latch;
//   30 extern float p_distance;
//   31 extern int8 IntegrationTime;
//   32 extern int16 LeftSpeedPwm;
//   33 extern int16 RightSpeedPwm;
//   34 extern int16 anglePD;
//   35 extern int16 SpeedPID;
//   36 extern int16 steerpwm;
//   37 
//   38 
//   39 extern  uint16 Pixel[128];              //
//   40 extern  uint8 CCD_value[128];
//   41 
//   42 
//   43 extern uint8 Speed_set;
//   44 extern char delaytime;
//   45 

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   46 unsigned char page_num=0;     //页序号
page_num:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   47 unsigned char line_num=0;     //行序号
line_num:
        DS8 1

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//   48 unsigned char re_display=1;   //预显示标志位 
re_display:
        DATA
        DC8 1
//   49 /*************************************************************/
//   50 /*                        延时函数                           */
//   51 /*************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   52 void LCD_delay(void) 
//   53 {
//   54  unsigned int i;
//   55  for(i=0;i<16;i++);
LCD_delay:
        MOVS     R1,#+0
        MOVS     R0,R1
??LCD_delay_0:
        CMP      R0,#+16
        BCS.N    ??LCD_delay_1
        ADDS     R0,R0,#+1
        B.N      ??LCD_delay_0
//   56 }
??LCD_delay_1:
        BX       LR               ;; return
//   57 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   58 void longdelay(void) 
//   59 {
//   60  unsigned int i;
//   61  for(i=0;i<4000;i++);
longdelay:
        MOVS     R1,#+0
        MOVS     R0,R1
??longdelay_0:
        CMP      R0,#+4000
        BCS.N    ??longdelay_1
        ADDS     R0,R0,#+1
        B.N      ??longdelay_0
//   62 }
??longdelay_1:
        BX       LR               ;; return
//   63 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   64 void  DelayMs(uint32  ms)
//   65 {
//   66 
//   67     uint32  i, j;
//   68     for(i = 0; i < ms; i++)
DelayMs:
        MOVS     R3,#+0
        MOVS     R1,R3
??DelayMs_0:
        CMP      R1,R0
        BCS.N    ??DelayMs_1
//   69     {
//   70         for(j = 100000; j > 0; j--)
        LDR.W    R3,??DataTable9  ;; 0x186a0
        MOVS     R2,R3
??DelayMs_2:
        CMP      R2,#+0
        BEQ.N    ??DelayMs_3
//   71         {
//   72             asm("nop");
        nop              
//   73         }
        SUBS     R2,R2,#+1
        B.N      ??DelayMs_2
//   74     }
??DelayMs_3:
        ADDS     R1,R1,#+1
        B.N      ??DelayMs_0
//   75 }
??DelayMs_1:
        BX       LR               ;; return
//   76 
//   77 /************************************************************
//   78                   初始化端口
//   79 ***********************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   80  void Init_port(void) 
//   81  
//   82  {
Init_port:
        PUSH     {R7,LR}
//   83    gpio_init  (PORTC, 6, GPO_HDS, LOW); 
        MOVS     R3,#+0
        MOVS     R2,#+65
        MOVS     R1,#+6
        MOVS     R0,#+2
        BL       gpio_init
//   84  
//   85    gpio_init  (PORTC, 7, GPO_HDS, LOW);
        MOVS     R3,#+0
        MOVS     R2,#+65
        MOVS     R1,#+7
        MOVS     R0,#+2
        BL       gpio_init
//   86          
//   87    gpio_init  (PORTC, 8, GPO_HDS, LOW);
        MOVS     R3,#+0
        MOVS     R2,#+65
        MOVS     R1,#+8
        MOVS     R0,#+2
        BL       gpio_init
//   88    
//   89    gpio_init  (PORTC, 9, GPO_HDS, LOW);
        MOVS     R3,#+0
        MOVS     R2,#+65
        MOVS     R1,#+9
        MOVS     R0,#+2
        BL       gpio_init
//   90    
//   91    gpio_init  (PORTC, 10, GPO_HDS, LOW);
        MOVS     R3,#+0
        MOVS     R2,#+65
        MOVS     R1,#+10
        MOVS     R0,#+2
        BL       gpio_init
//   92    
//   93    gpio_init  (PORTD, 14, GPI_UP, HIGH);//按键扫描
        MOVS     R3,#+1
        MOVS     R2,#+3
        MOVS     R1,#+14
        MOVS     R0,#+3
        BL       gpio_init
//   94    
//   95    gpio_init  (PORTD, 15, GPI_UP, HIGH);//刷屏使能
        MOVS     R3,#+1
        MOVS     R2,#+3
        MOVS     R1,#+15
        MOVS     R0,#+3
        BL       gpio_init
//   96    
//   97    gpio_init  (PORTC, 12, GPI_UP, HIGH); //翻页 
        MOVS     R3,#+1
        MOVS     R2,#+3
        MOVS     R1,#+12
        MOVS     R0,#+2
        BL       gpio_init
//   98   
//   99    gpio_init  (PORTC, 13, GPI_UP, HIGH);
        MOVS     R3,#+1
        MOVS     R2,#+3
        MOVS     R1,#+13
        MOVS     R0,#+2
        BL       gpio_init
//  100   
//  101    gpio_init  (PORTC, 14, GPI_UP, HIGH);
        MOVS     R3,#+1
        MOVS     R2,#+3
        MOVS     R1,#+14
        MOVS     R0,#+2
        BL       gpio_init
//  102    
//  103    gpio_init  (PORTC, 15, GPI_UP, HIGH);
        MOVS     R3,#+1
        MOVS     R2,#+3
        MOVS     R1,#+15
        MOVS     R0,#+2
        BL       gpio_init
//  104    
//  105    gpio_init  (PORTC, 16, GPI_UP, HIGH);
        MOVS     R3,#+1
        MOVS     R2,#+3
        MOVS     R1,#+16
        MOVS     R0,#+2
        BL       gpio_init
//  106 
//  107    gpio_init  (PORTC, 17, GPI_UP, HIGH); 
        MOVS     R3,#+1
        MOVS     R2,#+3
        MOVS     R1,#+17
        MOVS     R0,#+2
        BL       gpio_init
//  108    
//  109  }
        POP      {R0,PC}          ;; return
//  110  
//  111 
//  112 //--------------------------LCD写字节命令---------------------//

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  113 void LCD_write_byte(uint8 dat, uint8 command)
//  114 {
LCD_write_byte:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//  115      uint16 i;
//  116      SCE(0);           
        MOVS     R2,#+0
        MOVS     R1,#+7
        MOVS     R0,#+2
        BL       gpio_set
//  117 
//  118     if (command == 0)
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BNE.N    ??LCD_write_byte_0
//  119       DC(0);                     
        MOVS     R2,#+0
        MOVS     R1,#+8
        MOVS     R0,#+2
        BL       gpio_set
        B.N      ??LCD_write_byte_1
//  120     else
//  121       DC(1);               
??LCD_write_byte_0:
        MOVS     R2,#+1
        MOVS     R1,#+8
        MOVS     R0,#+2
        BL       gpio_set
//  122       for(i=0 ;i < 8; i++)
??LCD_write_byte_1:
        MOVS     R0,#+0
        MOVS     R6,R0
??LCD_write_byte_2:
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,#+8
        BCS.N    ??LCD_write_byte_3
//  123       {
//  124               if(dat&0x80)
        LSLS     R0,R4,#+24
        BPL.N    ??LCD_write_byte_4
//  125                   SDIN(1); 
        MOVS     R2,#+1
        MOVS     R1,#+9
        MOVS     R0,#+2
        BL       gpio_set
        B.N      ??LCD_write_byte_5
//  126               else
//  127                   SDIN(0); 
??LCD_write_byte_4:
        MOVS     R2,#+0
        MOVS     R1,#+9
        MOVS     R0,#+2
        BL       gpio_set
//  128               SCLK(0);     
??LCD_write_byte_5:
        MOVS     R2,#+0
        MOVS     R1,#+10
        MOVS     R0,#+2
        BL       gpio_set
//  129               dat = dat << 1;
        LSLS     R4,R4,#+1
//  130               SCLK(1);      
        MOVS     R2,#+1
        MOVS     R1,#+10
        MOVS     R0,#+2
        BL       gpio_set
//  131       }
        ADDS     R6,R6,#+1
        B.N      ??LCD_write_byte_2
//  132      SCE(1);             
??LCD_write_byte_3:
        MOVS     R2,#+1
        MOVS     R1,#+7
        MOVS     R0,#+2
        BL       gpio_set
//  133 }
        POP      {R4-R6,PC}       ;; return
//  134 /****************************************************
//  135                  设置LCD坐标函数
//  136 *****************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  137 void LCD_set_XY(unsigned char X, unsigned char Y)
//  138 {
LCD_set_XY:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//  139 	LCD_write_byte(0x40 | Y, 0);// column
        MOVS     R1,#+0
        ORRS     R0,R5,#0x40
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LCD_write_byte
//  140 	LCD_write_byte(0x80 | X, 0);// row
        MOVS     R1,#+0
        ORRS     R0,R4,#0x80
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LCD_write_byte
//  141 }
        POP      {R0,R4,R5,PC}    ;; return
//  142 /*******************************************************
//  143              LCD_clear: LCD清屏函数
//  144 *********************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  145 void LCD_clear(void)
//  146 {
LCD_clear:
        PUSH     {R3-R5,LR}
//  147 	unsigned char t;
//  148 	unsigned char k;
//  149 	LCD_set_XY(0,0);
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       LCD_set_XY
//  150 	for(t=0;t<6;t++)
        MOVS     R0,#+0
        MOVS     R4,R0
??LCD_clear_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+6
        BCS.N    ??LCD_clear_1
//  151 	{ 
//  152 		for(k=0;k<84;k++)
        MOVS     R0,#+0
        MOVS     R5,R0
??LCD_clear_2:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+84
        BCS.N    ??LCD_clear_3
//  153 		{ 
//  154 		LCD_write_byte(0x00,1);
        MOVS     R1,#+1
        MOVS     R0,#+0
        BL       LCD_write_byte
//  155 				
//  156 		} 
        ADDS     R5,R5,#+1
        B.N      ??LCD_clear_2
//  157 	}
??LCD_clear_3:
        ADDS     R4,R4,#+1
        B.N      ??LCD_clear_0
//  158 }
??LCD_clear_1:
        POP      {R0,R4,R5,PC}    ;; return
//  159 
//  160 
//  161 /*******************************************************
//  162              LCD_clear_L: LCD清行函数
//  163 *********************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  164 void LCD_clear_L(unsigned char x,unsigned char y)
//  165 {
LCD_clear_L:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//  166 	unsigned char k;
//  167 	x=x*6;
        MOVS     R0,#+6
        MULS     R4,R0,R4
//  168 	LCD_set_XY(x,y);
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LCD_set_XY
//  169 	
//  170 	for(k=x;k<84;k++)
        MOVS     R6,R4
??LCD_clear_L_0:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+84
        BCS.N    ??LCD_clear_L_1
//  171 		LCD_write_byte(0x00,1);
        MOVS     R1,#+1
        MOVS     R0,#+0
        BL       LCD_write_byte
        ADDS     R6,R6,#+1
        B.N      ??LCD_clear_L_0
//  172 					
//  173 }
??LCD_clear_L_1:
        POP      {R4-R6,PC}       ;; return
//  174 //------------------------------------5110初始化----------------------------------//

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  175 void Init_LCD5110()
//  176 {
Init_LCD5110:
        PUSH     {R7,LR}
//  177     // 产生一个让LCD复位的低电平脉冲
//  178     RES(0);       // BCLR(6,GPIOC_PDOR);         //LCD_RST = 0;
        MOVS     R2,#+0
        MOVS     R1,#+6
        MOVS     R0,#+2
        BL       gpio_set
//  179     DelayMs(280);    //7us
        MOV      R0,#+280
        BL       DelayMs
//  180     RES(1);             // BSET(6,GPIOC_PDOR);         //LCD_RST = 1;
        MOVS     R2,#+1
        MOVS     R1,#+6
        MOVS     R0,#+2
        BL       gpio_set
//  181 
//  182     SCE(0);              // BCLR(0,GPIOD_PDOR);      //LCD_CE = 0;
        MOVS     R2,#+0
        MOVS     R1,#+7
        MOVS     R0,#+2
        BL       gpio_set
//  183     DelayMs(280);    //7us
        MOV      R0,#+280
        BL       DelayMs
//  184 
//  185     SCE(1);   //BSET(0,GPIOD_PDOR);   //LCD_CE = 1;
        MOVS     R2,#+1
        MOVS     R1,#+7
        MOVS     R0,#+2
        BL       gpio_set
//  186     DelayMs(280);   //7us
        MOV      R0,#+280
        BL       DelayMs
//  187 
//  188     LCD_write_byte(0x21, 0);	// 使用扩展命令设置LCD模式
        MOVS     R1,#+0
        MOVS     R0,#+33
        BL       LCD_write_byte
//  189     LCD_write_byte(0xc2, 0);	// 设置偏置电压
        MOVS     R1,#+0
        MOVS     R0,#+194
        BL       LCD_write_byte
//  190     LCD_write_byte(0x06, 0);	// 温度校正
        MOVS     R1,#+0
        MOVS     R0,#+6
        BL       LCD_write_byte
//  191     LCD_write_byte(0x13, 0);	// 1:48
        MOVS     R1,#+0
        MOVS     R0,#+19
        BL       LCD_write_byte
//  192     LCD_write_byte(0x20, 0);	// 使用基本命令
        MOVS     R1,#+0
        MOVS     R0,#+32
        BL       LCD_write_byte
//  193     LCD_clear();	        // 清屏
        BL       LCD_clear
//  194     LCD_write_byte(0x0c, 0);	// 设定显示模式，正常显示
        MOVS     R1,#+0
        MOVS     R0,#+12
        BL       LCD_write_byte
//  195 
//  196     SCE(0);        // BCLR(0,GPIOD_PDOR);          //LCD_CE = 0;
        MOVS     R2,#+0
        MOVS     R1,#+7
        MOVS     R0,#+2
        BL       gpio_set
//  197 }
        POP      {R0,PC}          ;; return
//  198 //------------------------------------LCD初始化----------------------------------//

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  199 void Init_LCD(void) 
//  200 {
Init_LCD:
        PUSH     {R7,LR}
//  201 
//  202   Init_port();
        BL       Init_port
//  203   
//  204   Init_LCD5110(); 
        BL       Init_LCD5110
//  205   
//  206 }
        POP      {R0,PC}          ;; return
//  207 /*********************************************************/
//  208 /*               写8*16字符函数                          */
//  209 /*********************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  210 void write_8_16_char(unsigned char x,unsigned char y,unsigned char data)     //X为列，Y为行
//  211 {
write_8_16_char:
        PUSH     {R3-R7,LR}
        MOVS     R5,R0
        MOVS     R6,R1
        MOVS     R4,R2
//  212   unsigned char i;    
//  213   data=data-32;
        SUBS     R4,R4,#+32
//  214   x=x<<3;
        LSLS     R5,R5,#+3
//  215   y=y<<1;
        LSLS     R6,R6,#+1
//  216   LCD_set_XY(x, y) ;
        MOVS     R1,R6
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LCD_set_XY
//  217   
//  218   for(i=0;i<8;i++)
        MOVS     R0,#+0
        MOVS     R7,R0
??write_8_16_char_0:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+8
        BCS.N    ??write_8_16_char_1
//  219    {    
//  220     LCD_write_byte(fontCode8_16[data][i],1);
        MOVS     R1,#+1
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R0,??DataTable9_1
        ADDS     R0,R0,R4, LSL #+4
        LDRB     R0,[R7, R0]
        BL       LCD_write_byte
//  221    }
        ADDS     R7,R7,#+1
        B.N      ??write_8_16_char_0
//  222    
//  223   LCD_set_XY(x, y+1) ;
??write_8_16_char_1:
        ADDS     R1,R6,#+1
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LCD_set_XY
//  224   
//  225   for(i=8;i<16;i++)
        MOVS     R0,#+8
        MOVS     R7,R0
??write_8_16_char_2:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+16
        BCS.N    ??write_8_16_char_3
//  226    {    
//  227     LCD_write_byte(fontCode8_16[data][i],1);
        MOVS     R1,#+1
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R0,??DataTable9_1
        ADDS     R0,R0,R4, LSL #+4
        LDRB     R0,[R7, R0]
        BL       LCD_write_byte
//  228    }        
        ADDS     R7,R7,#+1
        B.N      ??write_8_16_char_2
//  229     
//  230 }
??write_8_16_char_3:
        POP      {R0,R4-R7,PC}    ;; return
//  231 
//  232 /*********************************************************/
//  233 /*               写8*16字符串函数                          */
//  234 /*********************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  235 void write_8_16_string(unsigned char x,unsigned char y,unsigned char * data)
//  236 {
write_8_16_string:
        PUSH     {R3-R7,LR}
        MOVS     R6,R0
        MOVS     R7,R1
        MOVS     R4,R2
//  237   unsigned char i;    
//  238   x=x<<3;
        LSLS     R6,R6,#+3
//  239   y=y<<1;
        LSLS     R7,R7,#+1
//  240   while(*data!='\0')
??write_8_16_string_0:
        LDRB     R0,[R4, #+0]
        CMP      R0,#+0
        BEQ.N    ??write_8_16_string_1
//  241   {
//  242     LCD_set_XY(x, y);
        MOVS     R1,R7
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LCD_set_XY
//  243      for(i=0;i<8;i++)
        MOVS     R0,#+0
        MOVS     R5,R0
??write_8_16_string_2:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+8
        BCS.N    ??write_8_16_string_3
//  244      {    
//  245       LCD_write_byte(fontCode8_16[*data-32][i],1);
        MOVS     R1,#+1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LDRB     R0,[R4, #+0]
        LDR.W    R2,??DataTable9_1
        ADDS     R0,R2,R0, LSL #+4
        ADDS     R0,R5,R0
        SUBS     R0,R0,#+512
        LDRB     R0,[R0, #+0]
        BL       LCD_write_byte
//  246      }
        ADDS     R5,R5,#+1
        B.N      ??write_8_16_string_2
//  247      LCD_set_XY(x, y+1) ;
??write_8_16_string_3:
        ADDS     R1,R7,#+1
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LCD_set_XY
//  248      for(i=8;i<16;i++)
        MOVS     R0,#+8
        MOVS     R5,R0
??write_8_16_string_4:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+16
        BCS.N    ??write_8_16_string_5
//  249      {    
//  250       LCD_write_byte(fontCode8_16[*data-32][i],1);
        MOVS     R1,#+1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LDRB     R0,[R4, #+0]
        LDR.W    R2,??DataTable9_1
        ADDS     R0,R2,R0, LSL #+4
        ADDS     R0,R5,R0
        SUBS     R0,R0,#+512
        LDRB     R0,[R0, #+0]
        BL       LCD_write_byte
//  251      } 
        ADDS     R5,R5,#+1
        B.N      ??write_8_16_string_4
//  252      x=x+8;
??write_8_16_string_5:
        ADDS     R6,R6,#+8
//  253      data++;      
        ADDS     R4,R4,#+1
        B.N      ??write_8_16_string_0
//  254    } 
//  255 }
??write_8_16_string_1:
        POP      {R0,R4-R7,PC}    ;; return
//  256 /******************************************************************
//  257                   写6*8字符函数
//  258 ******************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  259 void write_6_8_char(unsigned char x,unsigned char y,unsigned char data)
//  260 {
write_6_8_char:
        PUSH     {R3-R7,LR}
        MOVS     R7,R0
        MOVS     R4,R1
        MOVS     R6,R2
//  261   unsigned char i;    
//  262   data=data-32;
        SUBS     R6,R6,#+32
//  263   x=x*6;
        MOVS     R0,#+6
        MULS     R7,R0,R7
//  264   LCD_set_XY(x, y) ;
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LCD_set_XY
//  265    for(i=0;i<6;i++)
        MOVS     R0,#+0
        MOVS     R5,R0
??write_6_8_char_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+6
        BCS.N    ??write_6_8_char_1
//  266    {    
//  267     LCD_write_byte(fontCode6_8[data][i],1);
        MOVS     R1,#+1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        MOVS     R0,#+6
        LDR.W    R2,??DataTable10
        MLA      R0,R0,R6,R2
        LDRB     R0,[R5, R0]
        BL       LCD_write_byte
//  268    }
        ADDS     R5,R5,#+1
        B.N      ??write_6_8_char_0
//  269 }
??write_6_8_char_1:
        POP      {R0,R4-R7,PC}    ;; return
//  270 /****************************************************************
//  271                    写6*8字符串函数
//  272 ****************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  273 void write_6_8_string(unsigned char x,unsigned char y,unsigned char * data)
//  274 {
write_6_8_string:
        PUSH     {R3-R7,LR}
        MOVS     R7,R0
        MOVS     R4,R1
        MOVS     R5,R2
//  275   unsigned char i;
//  276   x=x*6;
        MOVS     R0,#+6
        MULS     R7,R0,R7
//  277   LCD_set_XY(x, y) ;
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LCD_set_XY
//  278   while(*data !='\0')
??write_6_8_string_0:
        LDRB     R0,[R5, #+0]
        CMP      R0,#+0
        BEQ.N    ??write_6_8_string_1
//  279   {
//  280    for(i=0;i<6;i++)
        MOVS     R0,#+0
        MOVS     R6,R0
??write_6_8_string_2:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+6
        BCS.N    ??write_6_8_string_3
//  281    {    
//  282     LCD_write_byte(fontCode6_8[*data-32][i],1);
        MOVS     R1,#+1
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDRB     R0,[R5, #+0]
        MOVS     R2,#+6
        LDR.W    R3,??DataTable10
        MLA      R0,R2,R0,R3
        ADDS     R0,R6,R0
        LDRB     R0,[R0, #-192]
        BL       LCD_write_byte
//  283    } 
        ADDS     R6,R6,#+1
        B.N      ??write_6_8_string_2
//  284    data++;
??write_6_8_string_3:
        ADDS     R5,R5,#+1
        B.N      ??write_6_8_string_0
//  285   }
//  286 }
??write_6_8_string_1:
        POP      {R0,R4-R7,PC}    ;; return
//  287 
//  288 /****************************************************************
//  289                    写6*8点阵数字函数
//  290 ****************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  291 void write_6_8_number(unsigned char x,unsigned char y, float number)
//  292 {
write_6_8_number:
        PUSH     {R0-R10,LR}
        MOV      R8,R0
        MOVS     R4,R1
        MOV      R9,R2
//  293   unsigned char i=0;
        MOVS     R5,#+0
//  294   unsigned char temp[16];
//  295   unsigned char *point=temp;
        ADD      R6,SP,#+0
//  296   float decimal;
//  297   int data;
//  298   
//  299   if(number<0)
        MOV      R0,R9
        MOVS     R1,#+0
        BL       __aeabi_cfcmple
        BCS.N    ??write_6_8_number_0
//  300     {
//  301      temp[0]='-';
        MOVS     R0,#+45
        STRB     R0,[SP, #+0]
//  302      write_6_8_char(x,y,temp[0]);
        LDRB     R2,[SP, #+0]
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOV      R0,R8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       write_6_8_char
//  303      x+=1;
        ADDS     R8,R8,#+1
//  304      number=-number; 
        EORS     R9,R9,#0x80000000
//  305     }
//  306     
//  307   data=(int)number;
??write_6_8_number_0:
        MOV      R0,R9
        BL       __aeabi_f2iz
        MOV      R10,R0
//  308   decimal=number-data;     //得到小数部分
        MOV      R0,R10
        BL       __aeabi_i2f
        MOVS     R1,R0
        MOV      R0,R9
        BL       __aeabi_fsub
        MOVS     R7,R0
//  309   
//  310    
//  311   if(data>=1000)           //是否可被1000整除
        MOV      R0,#+1000
        CMP      R10,R0
        BLT.N    ??write_6_8_number_1
//  312     {
//  313      temp[i]=48+data/1000;
        MOV      R0,#+1000
        SDIV     R0,R10,R0
        ADDS     R0,R0,#+48
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADD      R1,SP,#+0
        STRB     R0,[R5, R1]
//  314      data=data%1000;
        MOV      R0,#+1000
        SDIV     R1,R10,R0
        MLS      R10,R0,R1,R10
//  315      i++;
        ADDS     R5,R5,#+1
//  316     }
//  317 
//  318    
//  319   if(data>=100)              //是否可被100整除
??write_6_8_number_1:
        CMP      R10,#+100
        BLT.N    ??write_6_8_number_2
//  320    {
//  321     temp[i]=48+data/100;
        MOVS     R0,#+100
        SDIV     R0,R10,R0
        ADDS     R0,R0,#+48
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADD      R1,SP,#+0
        STRB     R0,[R5, R1]
//  322     data=data%100;
        MOVS     R0,#+100
        SDIV     R1,R10,R0
        MLS      R10,R0,R1,R10
//  323     i++;
        ADDS     R5,R5,#+1
        B.N      ??write_6_8_number_3
//  324    }
//  325   else 
//  326     if(data<100&&i!=0)
??write_6_8_number_2:
        CMP      R10,#+100
        BGE.N    ??write_6_8_number_3
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??write_6_8_number_3
//  327      {
//  328      temp[i]=0+48;
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADD      R0,SP,#+0
        MOVS     R1,#+48
        STRB     R1,[R5, R0]
//  329      i++;
        ADDS     R5,R5,#+1
//  330      }
//  331    
//  332   if(data>=10)                  //是否可被10整除
??write_6_8_number_3:
        CMP      R10,#+10
        BLT.N    ??write_6_8_number_4
//  333     {
//  334      temp[i]=48+data/10;
        MOVS     R0,#+10
        SDIV     R0,R10,R0
        ADDS     R0,R0,#+48
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADD      R1,SP,#+0
        STRB     R0,[R5, R1]
//  335      data=data%10;
        MOVS     R0,#+10
        SDIV     R1,R10,R0
        MLS      R10,R0,R1,R10
//  336      i++;
        ADDS     R5,R5,#+1
        B.N      ??write_6_8_number_5
//  337     }
//  338   else 
//  339     if(data<10&&i!=0)
??write_6_8_number_4:
        CMP      R10,#+10
        BGE.N    ??write_6_8_number_5
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??write_6_8_number_5
//  340      {
//  341      temp[i]=48;
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADD      R0,SP,#+0
        MOVS     R1,#+48
        STRB     R1,[R5, R0]
//  342      i++;
        ADDS     R5,R5,#+1
//  343      }
//  344      
//  345   temp[i]=48+data;
??write_6_8_number_5:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADD      R0,SP,#+0
        ADDS     R1,R10,#+48
        STRB     R1,[R5, R0]
//  346    
//  347       
//  348   if(decimal>=0.0001)           //判断是否为小数
        MOVS     R0,R7
        LDR.W    R1,??DataTable9_3  ;; 0x38d1b718
        BL       __aeabi_cfrcmple
        BHI.N    ??write_6_8_number_6
//  349    {
//  350     i++;
        ADDS     R5,R5,#+1
//  351     temp[i]='.';                //加小数点
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADD      R0,SP,#+0
        MOVS     R1,#+46
        STRB     R1,[R5, R0]
//  352     i++;
        ADDS     R5,R5,#+1
//  353     
//  354     data=(int)(decimal*1000);
        LDR.W    R0,??DataTable10_1  ;; 0x447a0000
        MOVS     R1,R7
        BL       __aeabi_fmul
        BL       __aeabi_f2iz
        MOV      R10,R0
//  355    
//  356     temp[i]=48+data/100;
        MOVS     R0,#+100
        SDIV     R0,R10,R0
        ADDS     R0,R0,#+48
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADD      R1,SP,#+0
        STRB     R0,[R5, R1]
//  357     
//  358     data=data%100;
        MOVS     R0,#+100
        SDIV     R1,R10,R0
        MLS      R10,R0,R1,R10
//  359     i++;
        ADDS     R5,R5,#+1
//  360    
//  361     if(data>0)
        CMP      R10,#+1
        BLT.N    ??write_6_8_number_7
//  362       {
//  363        temp[i]=48+data/10;
        MOVS     R0,#+10
        SDIV     R0,R10,R0
        ADDS     R0,R0,#+48
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADD      R1,SP,#+0
        STRB     R0,[R5, R1]
//  364        data=data%10;
        MOVS     R0,#+10
        SDIV     R1,R10,R0
        MLS      R10,R0,R1,R10
//  365        
//  366        
//  367       }
//  368     if(data>=0)
??write_6_8_number_7:
        CMP      R10,#+0
        BMI.N    ??write_6_8_number_6
//  369       {
//  370        i++;
        ADDS     R5,R5,#+1
//  371        temp[i]=data+48; 
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADD      R0,SP,#+0
        ADDS     R1,R10,#+48
        STRB     R1,[R5, R0]
//  372       }
//  373     
//  374    }     
//  375 
//  376   i++;
??write_6_8_number_6:
        ADDS     R5,R5,#+1
//  377   temp[i]='\0';
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADD      R0,SP,#+0
        MOVS     R1,#+0
        STRB     R1,[R5, R0]
//  378     write_6_8_string(x,y,point); 
        MOVS     R2,R6
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOV      R0,R8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       write_6_8_string
//  379   
//  380 }
        POP      {R0-R10,PC}      ;; return
//  381 /****************************************************************
//  382                    写8*16点阵数字函数
//  383 ****************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  384 void write_8_16_number(unsigned char x,unsigned char y, float number)
//  385 {
write_8_16_number:
        PUSH     {R0-R10,LR}
        MOV      R8,R0
        MOVS     R4,R1
        MOV      R9,R2
//  386   unsigned char i=0;
        MOVS     R5,#+0
//  387   unsigned char temp[16];
//  388   unsigned char *point=temp;
        ADD      R6,SP,#+0
//  389   float decimal;
//  390   int data;
//  391   
//  392   if(number<0)
        MOV      R0,R9
        MOVS     R1,#+0
        BL       __aeabi_cfcmple
        BCS.N    ??write_8_16_number_0
//  393     {
//  394      temp[0]='-';
        MOVS     R0,#+45
        STRB     R0,[SP, #+0]
//  395      write_8_16_char(x,y,temp[0]);
        LDRB     R2,[SP, #+0]
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOV      R0,R8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       write_8_16_char
//  396      x+=1;
        ADDS     R8,R8,#+1
//  397      number=-number; 
        EORS     R9,R9,#0x80000000
//  398     }
//  399     
//  400   data=(int)number;
??write_8_16_number_0:
        MOV      R0,R9
        BL       __aeabi_f2iz
        MOV      R10,R0
//  401   decimal=number-data;     //得到小数部分
        MOV      R0,R10
        BL       __aeabi_i2f
        MOVS     R1,R0
        MOV      R0,R9
        BL       __aeabi_fsub
        MOVS     R7,R0
//  402   
//  403    
//  404   if(data>=1000)           //是否可被1000整除
        MOV      R0,#+1000
        CMP      R10,R0
        BLT.N    ??write_8_16_number_1
//  405     {
//  406      temp[i]=48+data/1000;
        MOV      R0,#+1000
        SDIV     R0,R10,R0
        ADDS     R0,R0,#+48
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADD      R1,SP,#+0
        STRB     R0,[R5, R1]
//  407      data=data%1000;
        MOV      R0,#+1000
        SDIV     R1,R10,R0
        MLS      R10,R0,R1,R10
//  408      i++;
        ADDS     R5,R5,#+1
//  409     }
//  410 
//  411    
//  412   if(data>=100)              //是否可被100整除
??write_8_16_number_1:
        CMP      R10,#+100
        BLT.N    ??write_8_16_number_2
//  413    {
//  414     temp[i]=48+data/100;
        MOVS     R0,#+100
        SDIV     R0,R10,R0
        ADDS     R0,R0,#+48
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADD      R1,SP,#+0
        STRB     R0,[R5, R1]
//  415     data=data%100;
        MOVS     R0,#+100
        SDIV     R1,R10,R0
        MLS      R10,R0,R1,R10
//  416     i++;
        ADDS     R5,R5,#+1
        B.N      ??write_8_16_number_3
//  417    }
//  418   else 
//  419     if(data<100&&i!=0)
??write_8_16_number_2:
        CMP      R10,#+100
        BGE.N    ??write_8_16_number_3
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??write_8_16_number_3
//  420      {
//  421      temp[i]=0+48;
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADD      R0,SP,#+0
        MOVS     R1,#+48
        STRB     R1,[R5, R0]
//  422      i++;
        ADDS     R5,R5,#+1
//  423      }
//  424    
//  425   if(data>=10)                  //是否可被10整除
??write_8_16_number_3:
        CMP      R10,#+10
        BLT.N    ??write_8_16_number_4
//  426     {
//  427      temp[i]=48+data/10;
        MOVS     R0,#+10
        SDIV     R0,R10,R0
        ADDS     R0,R0,#+48
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADD      R1,SP,#+0
        STRB     R0,[R5, R1]
//  428      data=data%10;
        MOVS     R0,#+10
        SDIV     R1,R10,R0
        MLS      R10,R0,R1,R10
//  429      i++;
        ADDS     R5,R5,#+1
        B.N      ??write_8_16_number_5
//  430     }
//  431   else 
//  432     if(data<10&&i!=0)
??write_8_16_number_4:
        CMP      R10,#+10
        BGE.N    ??write_8_16_number_5
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??write_8_16_number_5
//  433      {
//  434      temp[i]=48;
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADD      R0,SP,#+0
        MOVS     R1,#+48
        STRB     R1,[R5, R0]
//  435      i++;
        ADDS     R5,R5,#+1
//  436      }
//  437      
//  438   temp[i]=48+data;
??write_8_16_number_5:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADD      R0,SP,#+0
        ADDS     R1,R10,#+48
        STRB     R1,[R5, R0]
//  439    
//  440       
//  441   if(decimal>=0.0001)           //判断是否为小数
        MOVS     R0,R7
        LDR.W    R1,??DataTable9_3  ;; 0x38d1b718
        BL       __aeabi_cfrcmple
        BHI.N    ??write_8_16_number_6
//  442    {
//  443     i++;
        ADDS     R5,R5,#+1
//  444     temp[i]='.';                //加小数点
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADD      R0,SP,#+0
        MOVS     R1,#+46
        STRB     R1,[R5, R0]
//  445     i++;
        ADDS     R5,R5,#+1
//  446     
//  447     data=(int)(decimal*1000);
        LDR.W    R0,??DataTable10_1  ;; 0x447a0000
        MOVS     R1,R7
        BL       __aeabi_fmul
        BL       __aeabi_f2iz
        MOV      R10,R0
//  448    
//  449     temp[i]=48+data/100;
        MOVS     R0,#+100
        SDIV     R0,R10,R0
        ADDS     R0,R0,#+48
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADD      R1,SP,#+0
        STRB     R0,[R5, R1]
//  450     
//  451     data=data%100;
        MOVS     R0,#+100
        SDIV     R1,R10,R0
        MLS      R10,R0,R1,R10
//  452     i++;
        ADDS     R5,R5,#+1
//  453    
//  454     if(data>0)
        CMP      R10,#+1
        BLT.N    ??write_8_16_number_7
//  455       {
//  456        temp[i]=48+data/10;
        MOVS     R0,#+10
        SDIV     R0,R10,R0
        ADDS     R0,R0,#+48
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADD      R1,SP,#+0
        STRB     R0,[R5, R1]
//  457        data=data%10;
        MOVS     R0,#+10
        SDIV     R1,R10,R0
        MLS      R10,R0,R1,R10
//  458        
//  459        
//  460       }
//  461     if(data>=0)
??write_8_16_number_7:
        CMP      R10,#+0
        BMI.N    ??write_8_16_number_6
//  462       {
//  463        i++;
        ADDS     R5,R5,#+1
//  464        temp[i]=data+48; 
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADD      R0,SP,#+0
        ADDS     R1,R10,#+48
        STRB     R1,[R5, R0]
//  465       }
//  466     
//  467    }     
//  468 
//  469   i++;
??write_8_16_number_6:
        ADDS     R5,R5,#+1
//  470   temp[i]='\0';
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADD      R0,SP,#+0
        MOVS     R1,#+0
        STRB     R1,[R5, R0]
//  471     write_8_16_string(x,y,point); 
        MOVS     R2,R6
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOV      R0,R8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       write_8_16_string
//  472   
//  473 }
        POP      {R0-R10,PC}      ;; return
//  474 /****************************************************************
//  475                    写12*16中文函数
//  476 ****************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  477 void write_chinese_char(unsigned char x,unsigned char y,unsigned char data_code)
//  478 {
write_chinese_char:
        PUSH     {R3-R7,LR}
        MOVS     R6,R0
        MOVS     R7,R1
        MOVS     R4,R2
//  479 	unsigned char i;  	
//  480 	x=x*12;
        MOVS     R0,#+12
        MULS     R6,R0,R6
//  481   y=y<<1;
        LSLS     R7,R7,#+1
//  482 	LCD_set_XY(x, y);// 列，页 
        MOVS     R1,R7
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LCD_set_XY
//  483 	for(i=0; i<12;i++) 
        MOVS     R0,#+0
        MOVS     R5,R0
??write_chinese_char_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+12
        BCS.N    ??write_chinese_char_1
//  484 	{
//  485 		LCD_write_byte(chinese[data_code][i],1); 
        MOVS     R1,#+1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R0,#+24
        LDR.W    R2,??DataTable11
        MLA      R0,R0,R4,R2
        LDRB     R0,[R5, R0]
        BL       LCD_write_byte
//  486 	}
        ADDS     R5,R5,#+1
        B.N      ??write_chinese_char_0
//  487 	
//  488   LCD_set_XY(x, y+1);// 列，页 
??write_chinese_char_1:
        ADDS     R1,R7,#+1
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LCD_set_XY
//  489 	for(i=12; i<24;i++) 
        MOVS     R0,#+12
        MOVS     R5,R0
??write_chinese_char_2:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+24
        BCS.N    ??write_chinese_char_3
//  490 	{
//  491 		LCD_write_byte(chinese[data_code][i],1);
        MOVS     R1,#+1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R0,#+24
        LDR.W    R2,??DataTable11
        MLA      R0,R0,R4,R2
        LDRB     R0,[R5, R0]
        BL       LCD_write_byte
//  492 	}	
        ADDS     R5,R5,#+1
        B.N      ??write_chinese_char_2
//  493 }
??write_chinese_char_3:
        POP      {R0,R4-R7,PC}    ;; return
//  494 
//  495 
//  496 /****************************************************************************
//  497 LCD_draw_bmp     : 位图绘制函数
//  498 
//  499 输入参数：X、Y    ：位图绘制的起始X、Y坐标；
//  500           *map    ：位图点阵数据；
//  501           Pix_x   ：位图像素（长）
//  502           Pix_y   ：位图像素（宽）
//  503 
//  504 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  505 void LCD_draw_bmp(unsigned char x,unsigned char y,unsigned char *map,
//  506                   unsigned char Pix_x,unsigned char Pix_y)
//  507   {
LCD_draw_bmp:
        PUSH     {R3-R11,LR}
        MOVS     R5,R0
        MOVS     R6,R1
        MOVS     R7,R2
        MOV      R8,R3
        LDR      R4,[SP, #+40]
//  508     unsigned int i,n;
//  509     unsigned char row;
//  510     
//  511     if (Pix_y%8==0) row=Pix_y/8;      //计算位图所占行数
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R0,#+8
        SDIV     R1,R4,R0
        MLS      R1,R1,R0,R4
        CMP      R1,#+0
        BNE.N    ??LCD_draw_bmp_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R0,#+8
        SDIV     R0,R4,R0
        MOV      R11,R0
        B.N      ??LCD_draw_bmp_1
//  512       else
//  513         row=Pix_y/8+1;
??LCD_draw_bmp_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R0,#+8
        SDIV     R0,R4,R0
        ADDS     R0,R0,#+1
        MOV      R11,R0
//  514     
//  515     for (n=0;n<row;n++)
??LCD_draw_bmp_1:
        MOVS     R0,#+0
        MOV      R10,R0
??LCD_draw_bmp_2:
        UXTB     R11,R11          ;; ZeroExt  R11,R11,#+24,#+24
        CMP      R10,R11
        BCS.N    ??LCD_draw_bmp_3
//  516       {
//  517       	LCD_set_XY(x,y);
        MOVS     R1,R6
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LCD_set_XY
//  518         for(i=0; i<Pix_x; i++)
        MOVS     R0,#+0
        MOV      R9,R0
??LCD_draw_bmp_4:
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R9,R8
        BCS.N    ??LCD_draw_bmp_5
//  519           {
//  520             LCD_write_byte(map[i+n*Pix_x], 1);
        MOVS     R1,#+1
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        MLA      R0,R8,R10,R9
        LDRB     R0,[R0, R7]
        BL       LCD_write_byte
//  521           }
        ADDS     R9,R9,#+1
        B.N      ??LCD_draw_bmp_4
//  522         y++;                         //换行
??LCD_draw_bmp_5:
        ADDS     R6,R6,#+1
//  523       }      
        ADDS     R10,R10,#+1
        B.N      ??LCD_draw_bmp_2
//  524   }
??LCD_draw_bmp_3:
        POP      {R0,R4-R11,PC}   ;; return
//  525 
//  526 
//  527 
//  528 ///////////////////////////////////////////////////////////////////////////////////
//  529 /***********************************预显示**********************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  530 void pre_show(void)
//  531 {  
pre_show:
        PUSH     {R4,LR}
//  532    int8 i;
//  533    LCD_clear();
        BL       LCD_clear
//  534    switch(page_num)
        LDR.W    R0,??DataTable11_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??pre_show_0
        CMP      R0,#+2
        BEQ.W    ??pre_show_1
        BCC.W    ??pre_show_2
        CMP      R0,#+3
        BEQ.W    ??pre_show_3
        B.N      ??pre_show_4
//  535      {
//  536      case 0: 
//  537 
//  538              
//  539             write_6_8_number(0,0,Pixel[15]); 
??pre_show_0:
        LDR.W    R0,??DataTable11_2
        LDRH     R0,[R0, #+30]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       write_6_8_number
//  540             write_6_8_number(5,0,Pixel[64]); 
        LDR.W    R0,??DataTable11_2
        LDRH     R0,[R0, #+128]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+0
        MOVS     R0,#+5
        BL       write_6_8_number
//  541             write_6_8_number(10,0,Pixel[120]); 
        LDR.W    R0,??DataTable11_2
        LDRH     R0,[R0, #+240]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+0
        MOVS     R0,#+10
        BL       write_6_8_number
//  542         
//  543             
//  544             write_6_8_string(0,1,"V:");     
        ADR.N    R2,??DataTable8  ;; 0x56, 0x3A, 0x00, 0x00
        MOVS     R1,#+1
        MOVS     R0,#+0
        BL       write_6_8_string
//  545            //write_6_8_number(2,0,v);
//  546            
//  547             write_6_8_string(5,1,"W:");     //第二行，角速度
        ADR.N    R2,??DataTable8_1  ;; 0x57, 0x3A, 0x00, 0x00
        MOVS     R1,#+1
        MOVS     R0,#+5
        BL       write_6_8_string
//  548             write_6_8_number(7,1,w); 
        LDR.W    R0,??DataTable11_3
        LDR      R2,[R0, #+0]
        MOVS     R1,#+1
        MOVS     R0,#+7
        BL       write_6_8_number
//  549 
//  550             write_6_8_string(0,2,"acce:");      //第三行，加速度计值
        LDR.W    R2,??DataTable11_4
        MOVS     R1,#+2
        MOVS     R0,#+0
        BL       write_6_8_string
//  551             write_6_8_number(5,2,acce);
        LDR.W    R0,??DataTable11_5
        LDR      R2,[R0, #+0]
        MOVS     R1,#+2
        MOVS     R0,#+5
        BL       write_6_8_number
//  552             
//  553              
//  554             write_6_8_string(0,3,"Sp :");     
        LDR.W    R2,??DataTable11_6
        MOVS     R1,#+3
        MOVS     R0,#+0
        BL       write_6_8_string
//  555             write_6_8_number(4,3,Speed_set);
        LDR.W    R0,??DataTable11_7
        LDRB     R0,[R0, #+0]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+3
        MOVS     R0,#+4
        BL       write_6_8_number
//  556             
//  557             write_6_8_string(7,3,"RSp:");     
        LDR.W    R2,??DataTable11_8
        MOVS     R1,#+3
        MOVS     R0,#+7
        BL       write_6_8_string
//  558             write_6_8_number(11,3,RealSpeed);
        LDR.W    R0,??DataTable11_9
        LDR      R2,[R0, #+0]
        MOVS     R1,#+3
        MOVS     R0,#+11
        BL       write_6_8_number
//  559            
//  560             write_6_8_string(0,4,"L_c:");   
        LDR.W    R2,??DataTable11_10
        MOVS     R1,#+4
        MOVS     R0,#+0
        BL       write_6_8_string
//  561             write_6_8_number(4,4,Left_cnt);
        LDR.W    R0,??DataTable11_11
        LDRB     R0,[R0, #+0]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+4
        MOVS     R0,#+4
        BL       write_6_8_number
//  562             
//  563             write_6_8_string(7,4,"R_c:");      //第三行，加速度计值
        LDR.W    R2,??DataTable11_12
        MOVS     R1,#+4
        MOVS     R0,#+7
        BL       write_6_8_string
//  564             write_6_8_number(11,4,Right_cnt);
        LDR.W    R0,??DataTable11_13
        LDRB     R0,[R0, #+0]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+4
        MOVS     R0,#+11
        BL       write_6_8_number
//  565             
//  566             write_6_8_number(0,5,g_nCarAngle); 
        LDR.W    R0,??DataTable11_14
        LDR      R2,[R0, #+0]
        MOVS     R1,#+5
        MOVS     R0,#+0
        BL       write_6_8_number
//  567             write_6_8_number(8,5,acce_angle); 
        LDR.W    R0,??DataTable11_15
        LDR      R2,[R0, #+0]
        MOVS     R1,#+5
        MOVS     R0,#+8
        BL       write_6_8_number
//  568             break;
        B.N      ??pre_show_4
//  569              
//  570       case 1:
//  571              
//  572              write_6_8_number(0,0,g_nLeftCount);
??pre_show_2:
        LDR.W    R0,??DataTable11_16
        LDRSH    R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R2,R0
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       write_6_8_number
//  573              write_6_8_number(7,0,g_nRightCount);
        LDR.W    R0,??DataTable11_17
        LDRSH    R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R2,R0
        MOVS     R1,#+0
        MOVS     R0,#+7
        BL       write_6_8_number
//  574              
//  575              
//  576              write_6_8_string(0,1,"latch:");    //
        LDR.W    R2,??DataTable11_18
        MOVS     R1,#+1
        MOVS     R0,#+0
        BL       write_6_8_string
//  577              write_6_8_number(6,1,latch); 
        LDR.W    R0,??DataTable11_19
        LDRH     R0,[R0, #+0]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+1
        MOVS     R0,#+6
        BL       write_6_8_number
//  578              
//  579              write_6_8_string(0,2,"p_d:");    //
        LDR.W    R2,??DataTable11_20
        MOVS     R1,#+2
        MOVS     R0,#+0
        BL       write_6_8_string
//  580              write_6_8_number(4,2,p_distance);
        LDR.W    R0,??DataTable11_21
        LDR      R2,[R0, #+0]
        MOVS     R1,#+2
        MOVS     R0,#+4
        BL       write_6_8_number
//  581              
//  582              write_6_8_string(9,2,"tm:");    //
        ADR.N    R2,??DataTable8_2  ;; "tm:"
        MOVS     R1,#+2
        MOVS     R0,#+9
        BL       write_6_8_string
//  583              write_6_8_number(12,2, IntegrationTime);
        LDR.W    R0,??DataTable11_22
        LDRSB    R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R2,R0
        MOVS     R1,#+2
        MOVS     R0,#+12
        BL       write_6_8_number
//  584              
//  585              write_6_8_string(0,3,"L_PWM:");    //
        LDR.W    R2,??DataTable11_23
        MOVS     R1,#+3
        MOVS     R0,#+0
        BL       write_6_8_string
//  586              write_6_8_number(6,3,LeftSpeedPwm);
        LDR.W    R0,??DataTable11_24
        LDRSH    R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R2,R0
        MOVS     R1,#+3
        MOVS     R0,#+6
        BL       write_6_8_number
//  587              
//  588              write_6_8_string(0,4,"R_PWM:");    //
        LDR.W    R2,??DataTable11_25
        MOVS     R1,#+4
        MOVS     R0,#+0
        BL       write_6_8_string
//  589              write_6_8_number(6,4,RightSpeedPwm);
        LDR.W    R0,??DataTable11_26
        LDRSH    R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R2,R0
        MOVS     R1,#+4
        MOVS     R0,#+6
        BL       write_6_8_number
//  590              
//  591              write_6_8_number(0,5,anglePD);
        LDR.W    R0,??DataTable11_27
        LDRSH    R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R2,R0
        MOVS     R1,#+5
        MOVS     R0,#+0
        BL       write_6_8_number
//  592              write_6_8_number(5,5,SpeedPID);
        LDR.W    R0,??DataTable11_28
        LDRSH    R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R2,R0
        MOVS     R1,#+5
        MOVS     R0,#+5
        BL       write_6_8_number
//  593              write_6_8_number(10,5,steerpwm);
        LDR.W    R0,??DataTable11_29
        LDRSH    R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R2,R0
        MOVS     R1,#+5
        MOVS     R0,#+10
        BL       write_6_8_number
//  594              
//  595              break;
        B.N      ??pre_show_4
//  596              
//  597              
//  598        
//  599       case 2:write_6_8_char(0,line_num,'*');
??pre_show_1:
        MOVS     R2,#+42
        LDR.W    R0,??DataTable11_30
        LDRB     R1,[R0, #+0]
        MOVS     R0,#+0
        BL       write_6_8_char
//  600       
//  601              write_6_8_string(1,0,"ACCE:");    //加速度计静态值
        LDR.W    R2,??DataTable11_31
        MOVS     R1,#+0
        MOVS     R0,#+1
        BL       write_6_8_string
//  602              write_6_8_number(6,0,ACCE_STATIC); 
        LDR.W    R0,??DataTable11_32
        LDR      R2,[R0, #+0]
        MOVS     R1,#+0
        MOVS     R0,#+6
        BL       write_6_8_number
//  603                
//  604              write_6_8_string(1,1,"Sp:");    //
        ADR.N    R2,??DataTable8_3  ;; "Sp:"
        MOVS     R1,#+1
        MOVS     R0,#+1
        BL       write_6_8_string
//  605              write_6_8_number(4,1,Speed_set);
        LDR.W    R0,??DataTable11_7
        LDRB     R0,[R0, #+0]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+1
        MOVS     R0,#+4
        BL       write_6_8_number
//  606                
//  607              write_6_8_string(1,2,"WHITE_C:");    //
        LDR.W    R2,??DataTable11_33
        MOVS     R1,#+2
        MOVS     R0,#+1
        BL       write_6_8_string
//  608              write_6_8_number(9,2,WHITE_CENTER);
        LDR.W    R0,??DataTable11_34
        LDRB     R0,[R0, #+0]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+2
        MOVS     R0,#+9
        BL       write_6_8_number
//  609              
//  610              LCD_set_XY(0, 5) ;
        MOVS     R1,#+5
        MOVS     R0,#+0
        BL       LCD_set_XY
//  611              for(i=10;i<52;i++){
        MOVS     R0,#+10
        MOVS     R4,R0
??pre_show_5:
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        CMP      R4,#+52
        BGE.N    ??pre_show_6
//  612                if(CCD_value[i])  LCD_write_byte(0xfe,1);       
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR.W    R0,??DataTable11_35
        LDRB     R0,[R4, R0]
        CMP      R0,#+0
        BEQ.N    ??pre_show_7
        MOVS     R1,#+1
        MOVS     R0,#+254
        BL       LCD_write_byte
        B.N      ??pre_show_8
//  613                else LCD_write_byte(0x80,1);      
??pre_show_7:
        MOVS     R1,#+1
        MOVS     R0,#+128
        BL       LCD_write_byte
//  614              }
??pre_show_8:
        ADDS     R4,R4,#+1
        B.N      ??pre_show_5
//  615              for(i=78;i<120;i++){
??pre_show_6:
        MOVS     R0,#+78
        MOVS     R4,R0
??pre_show_9:
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        CMP      R4,#+120
        BGE.N    ??pre_show_10
//  616                if(CCD_value[i])  LCD_write_byte(0xfe,1);       
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        LDR.W    R0,??DataTable11_35
        LDRB     R0,[R4, R0]
        CMP      R0,#+0
        BEQ.N    ??pre_show_11
        MOVS     R1,#+1
        MOVS     R0,#+254
        BL       LCD_write_byte
        B.N      ??pre_show_12
//  617                else LCD_write_byte(0x80,1);      
??pre_show_11:
        MOVS     R1,#+1
        MOVS     R0,#+128
        BL       LCD_write_byte
//  618              }
??pre_show_12:
        ADDS     R4,R4,#+1
        B.N      ??pre_show_9
//  619              break;
??pre_show_10:
        B.N      ??pre_show_4
//  620              
//  621              
//  622       case 3:write_6_8_char(0,line_num,'*');
??pre_show_3:
        MOVS     R2,#+42
        LDR.W    R0,??DataTable11_30
        LDRB     R1,[R0, #+0]
        MOVS     R0,#+0
        BL       write_6_8_char
//  623              
//  624              write_6_8_string(1,0,"ang_kp:");    //
        LDR.W    R2,??DataTable11_36
        MOVS     R1,#+0
        MOVS     R0,#+1
        BL       write_6_8_string
//  625              write_6_8_number(8,0,angle_kp); 
        LDR.W    R0,??DataTable11_37
        LDR      R2,[R0, #+0]
        MOVS     R1,#+0
        MOVS     R0,#+8
        BL       write_6_8_number
//  626              
//  627              write_6_8_string(1,1,"ang_kd:");    //
        LDR.W    R2,??DataTable11_38
        MOVS     R1,#+1
        MOVS     R0,#+1
        BL       write_6_8_string
//  628              write_6_8_number(8,1,angle_kd);
        LDR.W    R0,??DataTable11_39
        LDR      R2,[R0, #+0]
        MOVS     R1,#+1
        MOVS     R0,#+8
        BL       write_6_8_number
//  629 
//  630              write_6_8_string(1,2,"sped_kp:");    //
        LDR.W    R2,??DataTable11_40
        MOVS     R1,#+2
        MOVS     R0,#+1
        BL       write_6_8_string
//  631              write_6_8_number(9,2,speed_kp); 
        LDR.W    R0,??DataTable11_41
        LDR      R2,[R0, #+0]
        MOVS     R1,#+2
        MOVS     R0,#+9
        BL       write_6_8_number
//  632              
//  633              write_6_8_string(1,3,"sped_ki:");    //
        LDR.W    R2,??DataTable11_42
        MOVS     R1,#+3
        MOVS     R0,#+1
        BL       write_6_8_string
//  634              write_6_8_number(9,3,speed_ki); 
        LDR.W    R0,??DataTable11_43
        LDR      R2,[R0, #+0]
        MOVS     R1,#+3
        MOVS     R0,#+9
        BL       write_6_8_number
//  635              
//  636              write_6_8_string(1,4,"ster_kp:");    //
        LDR.W    R2,??DataTable11_44
        MOVS     R1,#+4
        MOVS     R0,#+1
        BL       write_6_8_string
//  637              write_6_8_number(9,4,steer_kp);
        LDR.W    R0,??DataTable11_45
        LDR      R2,[R0, #+0]
        MOVS     R1,#+4
        MOVS     R0,#+9
        BL       write_6_8_number
//  638              
//  639              write_6_8_string(1,5,"ster_kd:");    //
        LDR.W    R2,??DataTable11_46
        MOVS     R1,#+5
        MOVS     R0,#+1
        BL       write_6_8_string
//  640              write_6_8_number(9,5,steer_kd);  
        LDR.W    R0,??DataTable11_47
        LDR      R2,[R0, #+0]
        MOVS     R1,#+5
        MOVS     R0,#+9
        BL       write_6_8_number
//  641              
//  642              break;
//  643              
//  644      }
//  645 
//  646 }
??pre_show_4:
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8:
        DC8      0x56, 0x3A, 0x00, 0x00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_1:
        DC8      0x57, 0x3A, 0x00, 0x00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_2:
        DC8      "tm:"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_3:
        DC8      "Sp:"
//  647 
//  648 /**************************************刷屏，显示时变变量*********************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  649 void redraw()
//  650 {    uint8 i;
redraw:
        PUSH     {R4,LR}
//  651 
//  652   //if(page_num==0&&redraw_control==0)     //第一页
//  653      if(page_num==0)     //第一页
        LDR.W    R0,??DataTable11_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.W    ??redraw_0
//  654      {
//  655         LCD_clear_L(0,0);
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       LCD_clear_L
//  656         write_6_8_number(0,0,Pixel[15]); 
        LDR.W    R0,??DataTable11_2
        LDRH     R0,[R0, #+30]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       write_6_8_number
//  657         write_6_8_number(5,0,Pixel[64]); 
        LDR.W    R0,??DataTable11_2
        LDRH     R0,[R0, #+128]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+0
        MOVS     R0,#+5
        BL       write_6_8_number
//  658         write_6_8_number(10,0,Pixel[120]);
        LDR.W    R0,??DataTable11_2
        LDRH     R0,[R0, #+240]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+0
        MOVS     R0,#+10
        BL       write_6_8_number
//  659         
//  660         LCD_clear_L(8,1);
        MOVS     R1,#+1
        MOVS     R0,#+8
        BL       LCD_clear_L
//  661         write_6_8_number(7,1,w);    //第二行，角速度 
        LDR.W    R0,??DataTable11_3
        LDR      R2,[R0, #+0]
        MOVS     R1,#+1
        MOVS     R0,#+7
        BL       write_6_8_number
//  662            
//  663         LCD_clear_L(5,2);
        MOVS     R1,#+2
        MOVS     R0,#+5
        BL       LCD_clear_L
//  664         write_6_8_number(5,2,acce);  
        LDR.W    R0,??DataTable11_5
        LDR      R2,[R0, #+0]
        MOVS     R1,#+2
        MOVS     R0,#+5
        BL       write_6_8_number
//  665  
//  666         LCD_clear_L(0,3);    
        MOVS     R1,#+3
        MOVS     R0,#+0
        BL       LCD_clear_L
//  667         write_6_8_string(0,3,"Sp :");     
        LDR.W    R2,??DataTable11_6
        MOVS     R1,#+3
        MOVS     R0,#+0
        BL       write_6_8_string
//  668         write_6_8_number(4,3,Speed_set);
        LDR.W    R0,??DataTable11_7
        LDRB     R0,[R0, #+0]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+3
        MOVS     R0,#+4
        BL       write_6_8_number
//  669         write_6_8_string(7,3,"Rsp:");     
        LDR.W    R2,??DataTable11_48
        MOVS     R1,#+3
        MOVS     R0,#+7
        BL       write_6_8_string
//  670         write_6_8_number(11,3,RealSpeed);
        LDR.W    R0,??DataTable11_9
        LDR      R2,[R0, #+0]
        MOVS     R1,#+3
        MOVS     R0,#+11
        BL       write_6_8_number
//  671         
//  672         LCD_clear_L(0,4);
        MOVS     R1,#+4
        MOVS     R0,#+0
        BL       LCD_clear_L
//  673         write_6_8_string(0,4,"L_c:");
        LDR.W    R2,??DataTable11_10
        MOVS     R1,#+4
        MOVS     R0,#+0
        BL       write_6_8_string
//  674         write_6_8_number(4,4,Left_cnt);   
        LDR.W    R0,??DataTable11_11
        LDRB     R0,[R0, #+0]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+4
        MOVS     R0,#+4
        BL       write_6_8_number
//  675         write_6_8_string(7,4,"R_c:");      
        LDR.W    R2,??DataTable11_12
        MOVS     R1,#+4
        MOVS     R0,#+7
        BL       write_6_8_string
//  676         write_6_8_number(11,4,Right_cnt);
        LDR.W    R0,??DataTable11_13
        LDRB     R0,[R0, #+0]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+4
        MOVS     R0,#+11
        BL       write_6_8_number
//  677         
//  678         LCD_clear_L(0,5);
        MOVS     R1,#+5
        MOVS     R0,#+0
        BL       LCD_clear_L
//  679         write_6_8_number(0,5,g_nCarAngle); 
        LDR.W    R0,??DataTable11_14
        LDR      R2,[R0, #+0]
        MOVS     R1,#+5
        MOVS     R0,#+0
        BL       write_6_8_number
//  680         write_6_8_number(8,5,acce_angle);
        LDR.W    R0,??DataTable11_15
        LDR      R2,[R0, #+0]
        MOVS     R1,#+5
        MOVS     R0,#+8
        BL       write_6_8_number
//  681      }
//  682      if(page_num==1)     //第二页
??redraw_0:
        LDR.W    R0,??DataTable11_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.W    ??redraw_1
//  683      {
//  684         LCD_clear_L(0,0);
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       LCD_clear_L
//  685         write_6_8_number(0,0,g_nLeftCount);
        LDR.W    R0,??DataTable11_16
        LDRSH    R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R2,R0
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       write_6_8_number
//  686         write_6_8_number(7,0,g_nRightCount);
        LDR.W    R0,??DataTable11_17
        LDRSH    R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R2,R0
        MOVS     R1,#+0
        MOVS     R0,#+7
        BL       write_6_8_number
//  687              
//  688         LCD_clear_L(6,1);
        MOVS     R1,#+1
        MOVS     R0,#+6
        BL       LCD_clear_L
//  689         write_6_8_number(6,1,latch);
        LDR.W    R0,??DataTable11_19
        LDRH     R0,[R0, #+0]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+1
        MOVS     R0,#+6
        BL       write_6_8_number
//  690         
//  691         LCD_clear_L(0,2);     
        MOVS     R1,#+2
        MOVS     R0,#+0
        BL       LCD_clear_L
//  692         write_6_8_string(0,2,"p_d:");    //
        LDR.W    R2,??DataTable11_20
        MOVS     R1,#+2
        MOVS     R0,#+0
        BL       write_6_8_string
//  693         write_6_8_number(4,2,p_distance);
        LDR.W    R0,??DataTable11_21
        LDR      R2,[R0, #+0]
        MOVS     R1,#+2
        MOVS     R0,#+4
        BL       write_6_8_number
//  694         
//  695         
//  696         write_6_8_string(9,2,"tm:");    //
        ADR.N    R2,??DataTable9_2  ;; "tm:"
        MOVS     R1,#+2
        MOVS     R0,#+9
        BL       write_6_8_string
//  697         write_6_8_number(12,2, IntegrationTime);
        LDR.W    R0,??DataTable11_22
        LDRSB    R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R2,R0
        MOVS     R1,#+2
        MOVS     R0,#+12
        BL       write_6_8_number
//  698         
//  699         LCD_clear_L(6,3);
        MOVS     R1,#+3
        MOVS     R0,#+6
        BL       LCD_clear_L
//  700         write_6_8_number(6,3,LeftSpeedPwm);
        LDR.W    R0,??DataTable11_24
        LDRSH    R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R2,R0
        MOVS     R1,#+3
        MOVS     R0,#+6
        BL       write_6_8_number
//  701         
//  702         LCD_clear_L(6,4);
        MOVS     R1,#+4
        MOVS     R0,#+6
        BL       LCD_clear_L
//  703         write_6_8_number(6,4,RightSpeedPwm);
        LDR.W    R0,??DataTable11_26
        LDRSH    R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R2,R0
        MOVS     R1,#+4
        MOVS     R0,#+6
        BL       write_6_8_number
//  704         
//  705         LCD_clear_L(0,5);
        MOVS     R1,#+5
        MOVS     R0,#+0
        BL       LCD_clear_L
//  706         
//  707         write_6_8_number(0,5,anglePD);
        LDR.W    R0,??DataTable11_27
        LDRSH    R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R2,R0
        MOVS     R1,#+5
        MOVS     R0,#+0
        BL       write_6_8_number
//  708         write_6_8_number(5,5,SpeedPID);
        LDR.W    R0,??DataTable11_28
        LDRSH    R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R2,R0
        MOVS     R1,#+5
        MOVS     R0,#+5
        BL       write_6_8_number
//  709         write_6_8_number(10,5,steerpwm);
        LDR.W    R0,??DataTable11_29
        LDRSH    R0,[R0, #+0]
        BL       __aeabi_i2f
        MOVS     R2,R0
        MOVS     R1,#+5
        MOVS     R0,#+10
        BL       write_6_8_number
//  710        
//  711      }
//  712      if(page_num==2)     //第三页
??redraw_1:
        LDR.W    R0,??DataTable11_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+2
        BNE.N    ??redraw_2
//  713      {
//  714         LCD_set_XY(0, 5) ;
        MOVS     R1,#+5
        MOVS     R0,#+0
        BL       LCD_set_XY
//  715         for(i=20;i<62;i++){
        MOVS     R0,#+20
        MOVS     R4,R0
??redraw_3:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+62
        BCS.N    ??redraw_4
//  716         if(CCD_value[i])  LCD_write_byte(0xfe,1);       
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R0,??DataTable11_35
        LDRB     R0,[R4, R0]
        CMP      R0,#+0
        BEQ.N    ??redraw_5
        MOVS     R1,#+1
        MOVS     R0,#+254
        BL       LCD_write_byte
        B.N      ??redraw_6
//  717         else LCD_write_byte(0x80,1);      
??redraw_5:
        MOVS     R1,#+1
        MOVS     R0,#+128
        BL       LCD_write_byte
//  718         }
??redraw_6:
        ADDS     R4,R4,#+1
        B.N      ??redraw_3
//  719         for(i=78;i<120;i++){
??redraw_4:
        MOVS     R0,#+78
        MOVS     R4,R0
??redraw_7:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+120
        BCS.N    ??redraw_2
//  720         if(CCD_value[i])  LCD_write_byte(0xfe,1);       
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R0,??DataTable11_35
        LDRB     R0,[R4, R0]
        CMP      R0,#+0
        BEQ.N    ??redraw_8
        MOVS     R1,#+1
        MOVS     R0,#+254
        BL       LCD_write_byte
        B.N      ??redraw_9
//  721         else LCD_write_byte(0x80,1);      
??redraw_8:
        MOVS     R1,#+1
        MOVS     R0,#+128
        BL       LCD_write_byte
//  722         }       
??redraw_9:
        ADDS     R4,R4,#+1
        B.N      ??redraw_7
//  723        
//  724      }
//  725      
//  726 }
??redraw_2:
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9:
        DC32     0x186a0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_1:
        DC32     fontCode8_16

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_2:
        DC8      "tm:"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_3:
        DC32     0x38d1b718
//  727 
//  728 
//  729 
//  730 /*********************************修改变量数值***********************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  731 void change_value(unsigned char page,unsigned char m,float i)
//  732 {  
change_value:
        PUSH     {R4-R8,LR}
        MOV      R8,R0
        MOVS     R7,R1
        MOVS     R6,R2
//  733 
//  734   if(page==2)
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+2
        BNE.N    ??change_value_0
//  735    { 
//  736      switch(m)
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+0
        BEQ.N    ??change_value_1
        CMP      R7,#+2
        BEQ.N    ??change_value_2
        BCC.N    ??change_value_3
        B.N      ??change_value_0
//  737         {         
//  738              
//  739          case 0:ACCE_STATIC+=i;       
??change_value_1:
        LDR.W    R0,??DataTable11_32
        LDR      R0,[R0, #+0]
        MOVS     R1,R6
        BL       __aeabi_fadd
        LDR.W    R1,??DataTable11_32
        STR      R0,[R1, #+0]
//  740                 LCD_clear_L(6,0);
        MOVS     R1,#+0
        MOVS     R0,#+6
        BL       LCD_clear_L
//  741                 write_6_8_char(0,0,'*');
        MOVS     R2,#+42
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       write_6_8_char
//  742                 write_6_8_number(6,0,ACCE_STATIC);  
        LDR.W    R0,??DataTable11_32
        LDR      R2,[R0, #+0]
        MOVS     R1,#+0
        MOVS     R0,#+6
        BL       write_6_8_number
//  743                 break;
        B.N      ??change_value_0
//  744          case 1:Speed_set+=i;
??change_value_3:
        LDR.W    R0,??DataTable11_7
        LDRB     R0,[R0, #+0]
        BL       __aeabi_ui2f
        MOVS     R1,R6
        BL       __aeabi_fadd
        BL       __aeabi_f2iz
        LDR.W    R1,??DataTable11_7
        STRB     R0,[R1, #+0]
//  745                 LCD_clear_L(4,1);
        MOVS     R1,#+1
        MOVS     R0,#+4
        BL       LCD_clear_L
//  746                 write_6_8_char(0,1,'*');
        MOVS     R2,#+42
        MOVS     R1,#+1
        MOVS     R0,#+0
        BL       write_6_8_char
//  747                 write_6_8_number(4,1,Speed_set);
        LDR.W    R0,??DataTable11_7
        LDRB     R0,[R0, #+0]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+1
        MOVS     R0,#+4
        BL       write_6_8_number
//  748                 break;
        B.N      ??change_value_0
//  749           case 2:WHITE_CENTER+=i;
??change_value_2:
        LDR.W    R0,??DataTable11_34
        LDRB     R0,[R0, #+0]
        BL       __aeabi_ui2f
        MOVS     R1,R6
        BL       __aeabi_fadd
        BL       __aeabi_f2iz
        LDR.W    R1,??DataTable11_34
        STRB     R0,[R1, #+0]
//  750                 LCD_clear_L(9,2);
        MOVS     R1,#+2
        MOVS     R0,#+9
        BL       LCD_clear_L
//  751                 write_6_8_char(0,2,'*');
        MOVS     R2,#+42
        MOVS     R1,#+2
        MOVS     R0,#+0
        BL       write_6_8_char
//  752                 write_6_8_number(9,2,WHITE_CENTER);
        LDR.W    R0,??DataTable11_34
        LDRB     R0,[R0, #+0]
        BL       __aeabi_ui2f
        MOVS     R2,R0
        MOVS     R1,#+2
        MOVS     R0,#+9
        BL       write_6_8_number
//  753                 break;
//  754          /*
//  755         case 3:pixel_max+=i;
//  756                 LCD_clear_L(9,3);
//  757                 write_6_8_char(0,3,'*');
//  758                 write_6_8_number(11,3,pixel_max);
//  759                 break;
//  760                 
//  761          case 4:angle_kp+=i;
//  762                 LCD_clear_L(8,4);
//  763                 write_6_8_char(0,4,'*');
//  764                 write_6_8_number(8,4,angle_kp);
//  765                 break;   
//  766          case 5:angle_kd+=0.1*i;
//  767                 LCD_clear_L(8,5);
//  768                 write_6_8_char(0,5,'*');
//  769                 write_6_8_number(8,5,angle_kd);
//  770                 break;
//  771            */
//  772 	      }
//  773    }
//  774   if(page==3)
??change_value_0:
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+3
        BNE.W    ??change_value_4
//  775    {
//  776      switch(m)
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+0
        BEQ.N    ??change_value_5
        CMP      R7,#+2
        BEQ.N    ??change_value_6
        BCC.N    ??change_value_7
        CMP      R7,#+4
        BEQ.W    ??change_value_8
        BCC.N    ??change_value_9
        CMP      R7,#+5
        BEQ.W    ??change_value_10
        B.N      ??change_value_4
//  777         {
//  778           
//  779          case 0:angle_kp+=i;       
??change_value_5:
        LDR.W    R0,??DataTable11_37
        LDR      R0,[R0, #+0]
        MOVS     R1,R6
        BL       __aeabi_fadd
        LDR.W    R1,??DataTable11_37
        STR      R0,[R1, #+0]
//  780                 LCD_clear_L(8,0);
        MOVS     R1,#+0
        MOVS     R0,#+8
        BL       LCD_clear_L
//  781                 write_6_8_char(0,0,'*');
        MOVS     R2,#+42
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       write_6_8_char
//  782                 write_6_8_number(8,0,angle_kp); 
        LDR.W    R0,??DataTable11_37
        LDR      R2,[R0, #+0]
        MOVS     R1,#+0
        MOVS     R0,#+8
        BL       write_6_8_number
//  783                 break;
        B.N      ??change_value_4
//  784          case 1:angle_kd+=0.1*i;
??change_value_7:
        LDR.W    R0,??DataTable11_39
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R0,R6
        BL       __aeabi_f2d
        MOVS     R2,R0
        MOVS     R3,R1
        LDR.W    R0,??DataTable11_49  ;; 0x9999999a
        LDR.W    R1,??DataTable11_50  ;; 0x3fb99999
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        LDR.W    R1,??DataTable11_39
        STR      R0,[R1, #+0]
//  785                 LCD_clear_L(8,1);
        MOVS     R1,#+1
        MOVS     R0,#+8
        BL       LCD_clear_L
//  786                 write_6_8_char(0,1,'*');
        MOVS     R2,#+42
        MOVS     R1,#+1
        MOVS     R0,#+0
        BL       write_6_8_char
//  787                 write_6_8_number(8,1,angle_kd); 
        LDR.W    R0,??DataTable11_39
        LDR      R2,[R0, #+0]
        MOVS     R1,#+1
        MOVS     R0,#+8
        BL       write_6_8_number
//  788                 break;
        B.N      ??change_value_4
//  789                 
//  790          case 2:speed_kp+=i;
??change_value_6:
        LDR.N    R0,??DataTable11_41
        LDR      R0,[R0, #+0]
        MOVS     R1,R6
        BL       __aeabi_fadd
        LDR.N    R1,??DataTable11_41
        STR      R0,[R1, #+0]
//  791                 LCD_clear_L(9,2);
        MOVS     R1,#+2
        MOVS     R0,#+9
        BL       LCD_clear_L
//  792                 write_6_8_char(0,2,'*');
        MOVS     R2,#+42
        MOVS     R1,#+2
        MOVS     R0,#+0
        BL       write_6_8_char
//  793                 write_6_8_number(9,2,speed_kp); 
        LDR.N    R0,??DataTable11_41
        LDR      R2,[R0, #+0]
        MOVS     R1,#+2
        MOVS     R0,#+9
        BL       write_6_8_number
//  794                 break;
        B.N      ??change_value_4
//  795                 
//  796          case 3:speed_ki+=0.01*i;
??change_value_9:
        LDR.N    R0,??DataTable11_43
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R0,R6
        BL       __aeabi_f2d
        MOVS     R2,R0
        MOVS     R3,R1
        LDR.N    R0,??DataTable11_51  ;; 0x47ae147b
        LDR.N    R1,??DataTable11_52  ;; 0x3f847ae1
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable11_43
        STR      R0,[R1, #+0]
//  797                 LCD_clear_L(9,3);
        MOVS     R1,#+3
        MOVS     R0,#+9
        BL       LCD_clear_L
//  798                 write_6_8_char(0,3,'*');
        MOVS     R2,#+42
        MOVS     R1,#+3
        MOVS     R0,#+0
        BL       write_6_8_char
//  799                 write_6_8_number(9,3,speed_ki); 
        LDR.N    R0,??DataTable11_43
        LDR      R2,[R0, #+0]
        MOVS     R1,#+3
        MOVS     R0,#+9
        BL       write_6_8_number
//  800                 break; 
        B.N      ??change_value_4
//  801                 
//  802          case 4:steer_kp+=0.1*i;
??change_value_8:
        LDR.N    R0,??DataTable11_45
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R0,R6
        BL       __aeabi_f2d
        MOVS     R2,R0
        MOVS     R3,R1
        LDR.N    R0,??DataTable11_49  ;; 0x9999999a
        LDR.N    R1,??DataTable11_50  ;; 0x3fb99999
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable11_45
        STR      R0,[R1, #+0]
//  803                 LCD_clear_L(9,4);
        MOVS     R1,#+4
        MOVS     R0,#+9
        BL       LCD_clear_L
//  804                 write_6_8_char(0,4,'*');
        MOVS     R2,#+42
        MOVS     R1,#+4
        MOVS     R0,#+0
        BL       write_6_8_char
//  805                 write_6_8_number(9,4,steer_kp); 
        LDR.N    R0,??DataTable11_45
        LDR      R2,[R0, #+0]
        MOVS     R1,#+4
        MOVS     R0,#+9
        BL       write_6_8_number
//  806                 break;
        B.N      ??change_value_4
//  807                 
//  808          case 5:steer_kd+=0.1*i;
??change_value_10:
        LDR.N    R0,??DataTable11_47
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R0,R6
        BL       __aeabi_f2d
        MOVS     R2,R0
        MOVS     R3,R1
        LDR.N    R0,??DataTable11_49  ;; 0x9999999a
        LDR.N    R1,??DataTable11_50  ;; 0x3fb99999
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable11_47
        STR      R0,[R1, #+0]
//  809                 LCD_clear_L(9,5);
        MOVS     R1,#+5
        MOVS     R0,#+9
        BL       LCD_clear_L
//  810                 write_6_8_char(0,5,'*');
        MOVS     R2,#+42
        MOVS     R1,#+5
        MOVS     R0,#+0
        BL       write_6_8_char
//  811                 write_6_8_number(9,5,steer_kd); 
        LDR.N    R0,??DataTable11_47
        LDR      R2,[R0, #+0]
        MOVS     R1,#+5
        MOVS     R0,#+9
        BL       write_6_8_number
//  812                 break; 
//  813          
//  814          
//  815         
//  816                 
//  817 	      }
//  818    
//  819    
//  820    }
//  821 }	 		    
??change_value_4:
        POP      {R4-R8,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10:
        DC32     fontCode6_8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_1:
        DC32     0x447a0000
//  822   
//  823 /****************************************************
//  824                      按键扫描函数
//  825 *****************************************************/
//  826 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  827 void KeyScan(void)
//  828 {                  
KeyScan:
        PUSH     {R7,LR}
//  829  //if(scan_control==0)        //循环扫描
//  830   //{
//  831   
//  832   /////////////////////////////////////////////////////切屏
//  833   if(!change_page)  //如果检测到低电平，说明按键按下
        LDR.N    R0,??DataTable11_53  ;; 0x400ff090
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+19
        BMI.N    ??KeyScan_0
//  834     {
//  835       DelayMs(10); //延时去抖，一般10-20ms
        MOVS     R0,#+10
        BL       DelayMs
//  836      if(!change_page)     //再次确认按键是否按下，没有按下则退出
        LDR.N    R0,??DataTable11_53  ;; 0x400ff090
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+19
        BMI.N    ??KeyScan_0
//  837 	     {
//  838        while(!change_page);//如果确认按下按键等待按键释放，没有释放则一直等待
??KeyScan_1:
        LDR.N    R0,??DataTable11_53  ;; 0x400ff090
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+19
        BPL.N    ??KeyScan_1
//  839 	           
//  840 		   if(page_num<3)    //页序号加操作
        LDR.N    R0,??DataTable11_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+3
        BCS.N    ??KeyScan_2
//  841 	         page_num++;
        LDR.N    R0,??DataTable11_1
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable11_1
        STRB     R0,[R1, #+0]
        B.N      ??KeyScan_3
//  842 		   else
//  843 		       page_num=0;
??KeyScan_2:
        LDR.N    R0,??DataTable11_1
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  844 		   
//  845 		   line_num=0;
??KeyScan_3:
        LDR.N    R0,??DataTable11_30
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  846 		   pre_show();
        BL       pre_show
//  847 
//  848 	     }  
//  849      }
//  850     
//  851 
//  852  if(page_num!=0&&page_num!=1)     //如不为第一页，则进行下一步扫描
??KeyScan_0:
        LDR.N    R0,??DataTable11_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.W    ??KeyScan_4
        LDR.N    R0,??DataTable11_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BEQ.W    ??KeyScan_4
//  853  {
//  854   /////////////////////////////////////////////////////切行
//  855   if(!change_line)  //如果检测到低电平，说明按键按下
        LDR.N    R0,??DataTable11_53  ;; 0x400ff090
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+16
        BMI.N    ??KeyScan_5
//  856     {
//  857 	   DelayMs(10); //延时去抖，一般10-20ms
        MOVS     R0,#+10
        BL       DelayMs
//  858      if(!change_line)     //再次确认按键是否按下，没有按下则退出
        LDR.N    R0,??DataTable11_53  ;; 0x400ff090
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+16
        BMI.N    ??KeyScan_5
//  859 	     {
//  860        while(!change_line);//如果确认按下按键等待按键释放，没有释放则一直等待
??KeyScan_6:
        LDR.N    R0,??DataTable11_53  ;; 0x400ff090
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+16
        BPL.N    ??KeyScan_6
//  861 	     
//  862 	     if(page_num!=0)
        LDR.N    R0,??DataTable11_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??KeyScan_7
//  863 	        write_6_8_char(0,line_num,' ');
        MOVS     R2,#+32
        LDR.N    R0,??DataTable11_30
        LDRB     R1,[R0, #+0]
        MOVS     R0,#+0
        BL       write_6_8_char
//  864 	           
//  865 		   if(line_num<5)    //行序号加操作
??KeyScan_7:
        LDR.N    R0,??DataTable11_30
        LDRB     R0,[R0, #+0]
        CMP      R0,#+5
        BCS.N    ??KeyScan_8
//  866 	         line_num++;
        LDR.N    R0,??DataTable11_30
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable11_30
        STRB     R0,[R1, #+0]
        B.N      ??KeyScan_9
//  867 		   else
//  868 		       line_num=0;
??KeyScan_8:
        LDR.N    R0,??DataTable11_30
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  869 		   
//  870 		   if(page_num!=0)
??KeyScan_9:
        LDR.N    R0,??DataTable11_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??KeyScan_5
//  871 	        write_6_8_char(0,line_num,'*');
        MOVS     R2,#+42
        LDR.N    R0,??DataTable11_30
        LDRB     R1,[R0, #+0]
        MOVS     R0,#+0
        BL       write_6_8_char
//  872 	     } 
//  873 	     
//  874    }
//  875 /*对应参数加十*/
//  876 
//  877  if(!Add_10)  //如果检测到低电平，说明按键按下
??KeyScan_5:
        LDR.N    R0,??DataTable11_53  ;; 0x400ff090
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+18
        BMI.N    ??KeyScan_10
//  878     {
//  879 	 DelayMs(10); //延时去抖，一般10-20ms
        MOVS     R0,#+10
        BL       DelayMs
//  880      if(!Add_10)     //再次确认按键是否按下，没有按下则退出
        LDR.N    R0,??DataTable11_53  ;; 0x400ff090
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+18
        BMI.N    ??KeyScan_10
//  881 	   {
//  882       while(!Add_10);//如果确认按下按键等待按键释放，没有释放则一直等待
??KeyScan_11:
        LDR.N    R0,??DataTable11_53  ;; 0x400ff090
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+18
        BPL.N    ??KeyScan_11
//  883         change_value(page_num,line_num,10);
        LDR.N    R2,??DataTable11_54  ;; 0x41200000
        LDR.N    R0,??DataTable11_30
        LDRB     R1,[R0, #+0]
        LDR.N    R0,??DataTable11_1
        LDRB     R0,[R0, #+0]
        BL       change_value
//  884 	   }
//  885 	  }
//  886 /*对应参数加一*/
//  887 if(!Add_1)  
??KeyScan_10:
        LDR.N    R0,??DataTable11_53  ;; 0x400ff090
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+15
        BMI.N    ??KeyScan_12
//  888     {
//  889 	 DelayMs(10); 
        MOVS     R0,#+10
        BL       DelayMs
//  890      if(!Add_1)
        LDR.N    R0,??DataTable11_53  ;; 0x400ff090
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+15
        BMI.N    ??KeyScan_12
//  891 	   {
//  892         while(!Add_1);
??KeyScan_13:
        LDR.N    R0,??DataTable11_53  ;; 0x400ff090
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+15
        BPL.N    ??KeyScan_13
//  893         change_value(page_num,line_num,1);  
        MOVS     R2,#+1065353216
        LDR.N    R0,??DataTable11_30
        LDRB     R1,[R0, #+0]
        LDR.N    R0,??DataTable11_1
        LDRB     R0,[R0, #+0]
        BL       change_value
//  894 	   }
//  895 	  }
//  896 /*对应参数减一*/
//  897 if(!Sub_1)
??KeyScan_12:
        LDR.N    R0,??DataTable11_53  ;; 0x400ff090
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+14
        BMI.N    ??KeyScan_14
//  898    {
//  899   	 DelayMs(10);  
        MOVS     R0,#+10
        BL       DelayMs
//  900      if(!Sub_1)     
        LDR.N    R0,??DataTable11_53  ;; 0x400ff090
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+14
        BMI.N    ??KeyScan_14
//  901 	   {
//  902         while(!Sub_1);
??KeyScan_15:
        LDR.N    R0,??DataTable11_53  ;; 0x400ff090
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+14
        BPL.N    ??KeyScan_15
//  903         change_value(page_num,line_num,-1);
        LDR.N    R2,??DataTable11_55  ;; 0xbf800000
        LDR.N    R0,??DataTable11_30
        LDRB     R1,[R0, #+0]
        LDR.N    R0,??DataTable11_1
        LDRB     R0,[R0, #+0]
        BL       change_value
//  904 	 	 }
//  905 	  }
//  906 /*对应参数减十*/
//  907 if(!Sub_10){
??KeyScan_14:
        LDR.N    R0,??DataTable11_53  ;; 0x400ff090
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+17
        BMI.N    ??KeyScan_4
//  908   DelayMs(10); 
        MOVS     R0,#+10
        BL       DelayMs
//  909   if(!Sub_10){
        LDR.N    R0,??DataTable11_53  ;; 0x400ff090
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+17
        BMI.N    ??KeyScan_4
//  910     while(!Sub_10);
??KeyScan_16:
        LDR.N    R0,??DataTable11_53  ;; 0x400ff090
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+17
        BPL.N    ??KeyScan_16
//  911     change_value(page_num,line_num,-10);
        LDR.N    R2,??DataTable11_56  ;; 0xc1200000
        LDR.N    R0,??DataTable11_30
        LDRB     R1,[R0, #+0]
        LDR.N    R0,??DataTable11_1
        LDRB     R0,[R0, #+0]
        BL       change_value
//  912   }
//  913  }
//  914 	  
//  915 
//  916  }
//  917 }
??KeyScan_4:
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11:
        DC32     chinese

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_1:
        DC32     page_num

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_2:
        DC32     Pixel

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_3:
        DC32     w

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_4:
        DC32     `?<Constant "acce:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_5:
        DC32     acce

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_6:
        DC32     `?<Constant "Sp :">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_7:
        DC32     Speed_set

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_8:
        DC32     `?<Constant "RSp:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_9:
        DC32     RealSpeed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_10:
        DC32     `?<Constant "L_c:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_11:
        DC32     Left_cnt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_12:
        DC32     `?<Constant "R_c:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_13:
        DC32     Right_cnt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_14:
        DC32     g_nCarAngle

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_15:
        DC32     acce_angle

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_16:
        DC32     g_nLeftCount

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_17:
        DC32     g_nRightCount

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_18:
        DC32     `?<Constant "latch:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_19:
        DC32     latch

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_20:
        DC32     `?<Constant "p_d:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_21:
        DC32     p_distance

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_22:
        DC32     IntegrationTime

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_23:
        DC32     `?<Constant "L_PWM:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_24:
        DC32     LeftSpeedPwm

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_25:
        DC32     `?<Constant "R_PWM:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_26:
        DC32     RightSpeedPwm

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_27:
        DC32     anglePD

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_28:
        DC32     SpeedPID

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_29:
        DC32     steerpwm

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_30:
        DC32     line_num

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_31:
        DC32     `?<Constant "ACCE:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_32:
        DC32     ACCE_STATIC

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_33:
        DC32     `?<Constant "WHITE_C:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_34:
        DC32     WHITE_CENTER

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_35:
        DC32     CCD_value

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_36:
        DC32     `?<Constant "ang_kp:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_37:
        DC32     angle_kp

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_38:
        DC32     `?<Constant "ang_kd:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_39:
        DC32     angle_kd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_40:
        DC32     `?<Constant "sped_kp:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_41:
        DC32     speed_kp

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_42:
        DC32     `?<Constant "sped_ki:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_43:
        DC32     speed_ki

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_44:
        DC32     `?<Constant "ster_kp:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_45:
        DC32     steer_kp

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_46:
        DC32     `?<Constant "ster_kd:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_47:
        DC32     steer_kd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_48:
        DC32     `?<Constant "Rsp:">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_49:
        DC32     0x9999999a

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_50:
        DC32     0x3fb99999

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_51:
        DC32     0x47ae147b

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_52:
        DC32     0x3f847ae1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_53:
        DC32     0x400ff090

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_54:
        DC32     0x41200000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_55:
        DC32     0xbf800000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_56:
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
//     2 bytes in section .bss
//     1 byte  in section .data
// 2 368 bytes in section .rodata
// 4 944 bytes in section .text
// 
// 4 944 bytes of CODE  memory
// 2 368 bytes of CONST memory
//     3 bytes of DATA  memory
//
//Errors: none
//Warnings: none
