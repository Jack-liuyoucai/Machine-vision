#include "include.h"
#include "oled.h"

#define X_WIDTH 128
#define Y_WIDTH 64

#define  LED_IMAGE_WHITE 255

extern float V;
extern float angle_kp;
extern float angle_kd;
extern float RealSpeed;
extern float acce_angle;
extern float speed_kp;
extern float speed_ki;
extern int16 g_nLeftCount;
extern int16 g_nRightCount;
extern int16 ft1;
extern float  GYRO_STATIC;

extern float steer_kp;
extern float steer_kd;

extern float g_nCarAngle;
extern float acce,w;
extern float GYRO_STATIC,ACCE_STATIC;           //零点偏移量
extern float LeftRealSpeed,RightRealSpeed;

extern int16 fanting;
extern int8 IntegrationTime;
extern int16 LeftSpeedPwm;
extern int16 RightSpeedPwm;
extern int16 anglePD;
extern int16 SpeedPIDout;
extern int16 steerpwmout;
extern uint8 control_top_whiteline;
//extern uint16 error_servo_ref_p; 
//extern uint16 error_servo_ref_d;   
extern int16 lcd_ref_p1 ; 
extern int16 lcd_ref_d1; 
extern int16 lcd_ref_p2 ; 
extern int16 lcd_ref_d2; 
extern int16 zhongjian;
//extern uint16 big;
extern int16 tingting_p;
extern int16 tingting_d;
extern uint8 huanjie;
extern uint8 qing;
extern  uint8 summ;
extern uint8 da;
extern uint8 fuxiao;
uint8 g_aucImageTable[60][128]; //用于在OLED屏上显示的图片缓存

//extern uint8  Rg;
extern uint16 Speed_set;
extern uint16 stopcount;
extern char delaytime;

extern uint8 WHITE_BLACK_OT;  
unsigned char page_num=0;     //页序号
unsigned char line_num=0;     //行序号
unsigned char re_display=1;   //预显示标志位





//======================================
// 128X64I液晶底层驱动[6X8]字体库
const unsigned char F6x8[][6] =
{
    { 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 },   // sp
    { 0x00, 0x00, 0x00, 0x2f, 0x00, 0x00 },   // !
    { 0x00, 0x00, 0x07, 0x00, 0x07, 0x00 },   // "
    { 0x00, 0x14, 0x7f, 0x14, 0x7f, 0x14 },   // #
    { 0x00, 0x24, 0x2a, 0x7f, 0x2a, 0x12 },   // $
    { 0x00, 0x62, 0x64, 0x08, 0x13, 0x23 },   // %
    { 0x00, 0x36, 0x49, 0x55, 0x22, 0x50 },   // &
    { 0x00, 0x00, 0x05, 0x03, 0x00, 0x00 },   // '
    { 0x00, 0x00, 0x1c, 0x22, 0x41, 0x00 },   // (
    { 0x00, 0x00, 0x41, 0x22, 0x1c, 0x00 },   // )
    { 0x00, 0x14, 0x08, 0x3E, 0x08, 0x14 },   // *
    { 0x00, 0x08, 0x08, 0x3E, 0x08, 0x08 },   // +
    { 0x00, 0x00, 0x00, 0xA0, 0x60, 0x00 },   // ,
    { 0x00, 0x08, 0x08, 0x08, 0x08, 0x08 },   // -
    { 0x00, 0x00, 0x60, 0x60, 0x00, 0x00 },   // .
    { 0x00, 0x20, 0x10, 0x08, 0x04, 0x02 },   // /
    { 0x00, 0x3E, 0x51, 0x49, 0x45, 0x3E },   // 0
    { 0x00, 0x00, 0x42, 0x7F, 0x40, 0x00 },   // 1
    { 0x00, 0x42, 0x61, 0x51, 0x49, 0x46 },   // 2
    { 0x00, 0x21, 0x41, 0x45, 0x4B, 0x31 },   // 3
    { 0x00, 0x18, 0x14, 0x12, 0x7F, 0x10 },   // 4
    { 0x00, 0x27, 0x45, 0x45, 0x45, 0x39 },   // 5
    { 0x00, 0x3C, 0x4A, 0x49, 0x49, 0x30 },   // 6
    { 0x00, 0x01, 0x71, 0x09, 0x05, 0x03 },   // 7
    { 0x00, 0x36, 0x49, 0x49, 0x49, 0x36 },   // 8
    { 0x00, 0x06, 0x49, 0x49, 0x29, 0x1E },   // 9
    { 0x00, 0x00, 0x36, 0x36, 0x00, 0x00 },   // :
    { 0x00, 0x00, 0x56, 0x36, 0x00, 0x00 },   // ;
    { 0x00, 0x08, 0x14, 0x22, 0x41, 0x00 },   // <
    { 0x00, 0x14, 0x14, 0x14, 0x14, 0x14 },   // =
    { 0x00, 0x00, 0x41, 0x22, 0x14, 0x08 },   // >
    { 0x00, 0x02, 0x01, 0x51, 0x09, 0x06 },   // ?
    { 0x00, 0x32, 0x49, 0x59, 0x51, 0x3E },   // @
    { 0x00, 0x7C, 0x12, 0x11, 0x12, 0x7C },   // A
    { 0x00, 0x7F, 0x49, 0x49, 0x49, 0x36 },   // B
    { 0x00, 0x3E, 0x41, 0x41, 0x41, 0x22 },   // C
    { 0x00, 0x7F, 0x41, 0x41, 0x22, 0x1C },   // D
    { 0x00, 0x7F, 0x49, 0x49, 0x49, 0x41 },   // E
    { 0x00, 0x7F, 0x09, 0x09, 0x09, 0x01 },   // F
    { 0x00, 0x3E, 0x41, 0x49, 0x49, 0x7A },   // G
    { 0x00, 0x7F, 0x08, 0x08, 0x08, 0x7F },   // H
    { 0x00, 0x00, 0x41, 0x7F, 0x41, 0x00 },   // I
    { 0x00, 0x20, 0x40, 0x41, 0x3F, 0x01 },   // J
    { 0x00, 0x7F, 0x08, 0x14, 0x22, 0x41 },   // K
    { 0x00, 0x7F, 0x40, 0x40, 0x40, 0x40 },   // L
    { 0x00, 0x7F, 0x02, 0x0C, 0x02, 0x7F },   // M
    { 0x00, 0x7F, 0x04, 0x08, 0x10, 0x7F },   // N
    { 0x00, 0x3E, 0x41, 0x41, 0x41, 0x3E },   // O
    { 0x00, 0x7F, 0x09, 0x09, 0x09, 0x06 },   // P
    { 0x00, 0x3E, 0x41, 0x51, 0x21, 0x5E },   // Q
    { 0x00, 0x7F, 0x09, 0x19, 0x29, 0x46 },   // R
    { 0x00, 0x46, 0x49, 0x49, 0x49, 0x31 },   // S
    { 0x00, 0x01, 0x01, 0x7F, 0x01, 0x01 },   // T
    { 0x00, 0x3F, 0x40, 0x40, 0x40, 0x3F },   // U
    { 0x00, 0x1F, 0x20, 0x40, 0x20, 0x1F },   // V
    { 0x00, 0x3F, 0x40, 0x38, 0x40, 0x3F },   // W
    { 0x00, 0x63, 0x14, 0x08, 0x14, 0x63 },   // X
    { 0x00, 0x07, 0x08, 0x70, 0x08, 0x07 },   // Y
    { 0x00, 0x61, 0x51, 0x49, 0x45, 0x43 },   // Z
    { 0x00, 0x00, 0x7F, 0x41, 0x41, 0x00 },   // [
    { 0x00, 0x55, 0x2A, 0x55, 0x2A, 0x55 },   // 55
    { 0x00, 0x00, 0x41, 0x41, 0x7F, 0x00 },   // ]
    { 0x00, 0x04, 0x02, 0x01, 0x02, 0x04 },   // ^
    { 0x00, 0x40, 0x40, 0x40, 0x40, 0x40 },   // _
    { 0x00, 0x00, 0x01, 0x02, 0x04, 0x00 },   // '
    { 0x00, 0x20, 0x54, 0x54, 0x54, 0x78 },   // a
    { 0x00, 0x7F, 0x48, 0x44, 0x44, 0x38 },   // b
    { 0x00, 0x38, 0x44, 0x44, 0x44, 0x20 },   // c
    { 0x00, 0x38, 0x44, 0x44, 0x48, 0x7F },   // d
    { 0x00, 0x38, 0x54, 0x54, 0x54, 0x18 },   // e
    { 0x00, 0x08, 0x7E, 0x09, 0x01, 0x02 },   // f
    { 0x00, 0x18, 0xA4, 0xA4, 0xA4, 0x7C },   // g
    { 0x00, 0x7F, 0x08, 0x04, 0x04, 0x78 },   // h
    { 0x00, 0x00, 0x44, 0x7D, 0x40, 0x00 },   // i
    { 0x00, 0x40, 0x80, 0x84, 0x7D, 0x00 },   // j
    { 0x00, 0x7F, 0x10, 0x28, 0x44, 0x00 },   // k
    { 0x00, 0x00, 0x41, 0x7F, 0x40, 0x00 },   // l
    { 0x00, 0x7C, 0x04, 0x18, 0x04, 0x78 },   // m
    { 0x00, 0x7C, 0x08, 0x04, 0x04, 0x78 },   // n
    { 0x00, 0x38, 0x44, 0x44, 0x44, 0x38 },   // o
    { 0x00, 0xFC, 0x24, 0x24, 0x24, 0x18 },   // p
    { 0x00, 0x18, 0x24, 0x24, 0x18, 0xFC },   // q
    { 0x00, 0x7C, 0x08, 0x04, 0x04, 0x08 },   // r
    { 0x00, 0x48, 0x54, 0x54, 0x54, 0x20 },   // s
    { 0x00, 0x04, 0x3F, 0x44, 0x40, 0x20 },   // t
    { 0x00, 0x3C, 0x40, 0x40, 0x20, 0x7C },   // u
    { 0x00, 0x1C, 0x20, 0x40, 0x20, 0x1C },   // v
    { 0x00, 0x3C, 0x40, 0x30, 0x40, 0x3C },   // w
    { 0x00, 0x44, 0x28, 0x10, 0x28, 0x44 },   // x
    { 0x00, 0x1C, 0xA0, 0xA0, 0xA0, 0x7C },   // y
    { 0x00, 0x44, 0x64, 0x54, 0x4C, 0x44 },   // z
    { 0x14, 0x14, 0x14, 0x14, 0x14, 0x14 }    // horiz lines
};
//======================================================
// 128X64I液晶底层驱动[8X16]字体库
// 设计者: powerint
// 描  述: [8X16]西文字符的字模数据 (纵向取模,字节倒序)
// !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~
//======================================================
const unsigned char F8X16[]=
{
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,// 0
  0x00,0x00,0x00,0xF8,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x33,0x30,0x00,0x00,0x00,//!1
  0x00,0x10,0x0C,0x06,0x10,0x0C,0x06,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,//"2
  0x40,0xC0,0x78,0x40,0xC0,0x78,0x40,0x00,0x04,0x3F,0x04,0x04,0x3F,0x04,0x04,0x00,//#3
  0x00,0x70,0x88,0xFC,0x08,0x30,0x00,0x00,0x00,0x18,0x20,0xFF,0x21,0x1E,0x00,0x00,//$4
  0xF0,0x08,0xF0,0x00,0xE0,0x18,0x00,0x00,0x00,0x21,0x1C,0x03,0x1E,0x21,0x1E,0x00,//%5
  0x00,0xF0,0x08,0x88,0x70,0x00,0x00,0x00,0x1E,0x21,0x23,0x24,0x19,0x27,0x21,0x10,//&6
  0x10,0x16,0x0E,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,//'7
  0x00,0x00,0x00,0xE0,0x18,0x04,0x02,0x00,0x00,0x00,0x00,0x07,0x18,0x20,0x40,0x00,//(8
  0x00,0x02,0x04,0x18,0xE0,0x00,0x00,0x00,0x00,0x40,0x20,0x18,0x07,0x00,0x00,0x00,//)9
  0x40,0x40,0x80,0xF0,0x80,0x40,0x40,0x00,0x02,0x02,0x01,0x0F,0x01,0x02,0x02,0x00,//*10
  0x00,0x00,0x00,0xF0,0x00,0x00,0x00,0x00,0x01,0x01,0x01,0x1F,0x01,0x01,0x01,0x00,//+11
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x80,0xB0,0x70,0x00,0x00,0x00,0x00,0x00,//,12
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x01,0x01,0x01,0x01,0x01,0x01,0x01,//-13
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x30,0x30,0x00,0x00,0x00,0x00,0x00,//.14
  0x00,0x00,0x00,0x00,0x80,0x60,0x18,0x04,0x00,0x60,0x18,0x06,0x01,0x00,0x00,0x00,///15
  0x00,0xE0,0x10,0x08,0x08,0x10,0xE0,0x00,0x00,0x0F,0x10,0x20,0x20,0x10,0x0F,0x00,//016
  0x00,0x10,0x10,0xF8,0x00,0x00,0x00,0x00,0x00,0x20,0x20,0x3F,0x20,0x20,0x00,0x00,//117
  0x00,0x70,0x08,0x08,0x08,0x88,0x70,0x00,0x00,0x30,0x28,0x24,0x22,0x21,0x30,0x00,//218
  0x00,0x30,0x08,0x88,0x88,0x48,0x30,0x00,0x00,0x18,0x20,0x20,0x20,0x11,0x0E,0x00,//319
  0x00,0x00,0xC0,0x20,0x10,0xF8,0x00,0x00,0x00,0x07,0x04,0x24,0x24,0x3F,0x24,0x00,//420
  0x00,0xF8,0x08,0x88,0x88,0x08,0x08,0x00,0x00,0x19,0x21,0x20,0x20,0x11,0x0E,0x00,//521
  0x00,0xE0,0x10,0x88,0x88,0x18,0x00,0x00,0x00,0x0F,0x11,0x20,0x20,0x11,0x0E,0x00,//622
  0x00,0x38,0x08,0x08,0xC8,0x38,0x08,0x00,0x00,0x00,0x00,0x3F,0x00,0x00,0x00,0x00,//723
  0x00,0x70,0x88,0x08,0x08,0x88,0x70,0x00,0x00,0x1C,0x22,0x21,0x21,0x22,0x1C,0x00,//824
  0x00,0xE0,0x10,0x08,0x08,0x10,0xE0,0x00,0x00,0x00,0x31,0x22,0x22,0x11,0x0F,0x00,//925
  0x00,0x00,0x00,0xC0,0xC0,0x00,0x00,0x00,0x00,0x00,0x00,0x30,0x30,0x00,0x00,0x00,//:26
  0x00,0x00,0x00,0x80,0x00,0x00,0x00,0x00,0x00,0x00,0x80,0x60,0x00,0x00,0x00,0x00,//;27
  0x00,0x00,0x80,0x40,0x20,0x10,0x08,0x00,0x00,0x01,0x02,0x04,0x08,0x10,0x20,0x00,//<28
  0x40,0x40,0x40,0x40,0x40,0x40,0x40,0x00,0x04,0x04,0x04,0x04,0x04,0x04,0x04,0x00,//=29
  0x00,0x08,0x10,0x20,0x40,0x80,0x00,0x00,0x00,0x20,0x10,0x08,0x04,0x02,0x01,0x00,//>30
  0x00,0x70,0x48,0x08,0x08,0x08,0xF0,0x00,0x00,0x00,0x00,0x30,0x36,0x01,0x00,0x00,//?31
  0xC0,0x30,0xC8,0x28,0xE8,0x10,0xE0,0x00,0x07,0x18,0x27,0x24,0x23,0x14,0x0B,0x00,//@32
  0x00,0x00,0xC0,0x38,0xE0,0x00,0x00,0x00,0x20,0x3C,0x23,0x02,0x02,0x27,0x38,0x20,//A33
  0x08,0xF8,0x88,0x88,0x88,0x70,0x00,0x00,0x20,0x3F,0x20,0x20,0x20,0x11,0x0E,0x00,//B34
  0xC0,0x30,0x08,0x08,0x08,0x08,0x38,0x00,0x07,0x18,0x20,0x20,0x20,0x10,0x08,0x00,//C35
  0x08,0xF8,0x08,0x08,0x08,0x10,0xE0,0x00,0x20,0x3F,0x20,0x20,0x20,0x10,0x0F,0x00,//D36
  0x08,0xF8,0x88,0x88,0xE8,0x08,0x10,0x00,0x20,0x3F,0x20,0x20,0x23,0x20,0x18,0x00,//E37
  0x08,0xF8,0x88,0x88,0xE8,0x08,0x10,0x00,0x20,0x3F,0x20,0x00,0x03,0x00,0x00,0x00,//F38
  0xC0,0x30,0x08,0x08,0x08,0x38,0x00,0x00,0x07,0x18,0x20,0x20,0x22,0x1E,0x02,0x00,//G39
  0x08,0xF8,0x08,0x00,0x00,0x08,0xF8,0x08,0x20,0x3F,0x21,0x01,0x01,0x21,0x3F,0x20,//H40
  0x00,0x08,0x08,0xF8,0x08,0x08,0x00,0x00,0x00,0x20,0x20,0x3F,0x20,0x20,0x00,0x00,//I41
  0x00,0x00,0x08,0x08,0xF8,0x08,0x08,0x00,0xC0,0x80,0x80,0x80,0x7F,0x00,0x00,0x00,//J42
  0x08,0xF8,0x88,0xC0,0x28,0x18,0x08,0x00,0x20,0x3F,0x20,0x01,0x26,0x38,0x20,0x00,//K43
  0x08,0xF8,0x08,0x00,0x00,0x00,0x00,0x00,0x20,0x3F,0x20,0x20,0x20,0x20,0x30,0x00,//L44
  0x08,0xF8,0xF8,0x00,0xF8,0xF8,0x08,0x00,0x20,0x3F,0x00,0x3F,0x00,0x3F,0x20,0x00,//M45
  0x08,0xF8,0x30,0xC0,0x00,0x08,0xF8,0x08,0x20,0x3F,0x20,0x00,0x07,0x18,0x3F,0x00,//N46
  0xE0,0x10,0x08,0x08,0x08,0x10,0xE0,0x00,0x0F,0x10,0x20,0x20,0x20,0x10,0x0F,0x00,//O47
  0x08,0xF8,0x08,0x08,0x08,0x08,0xF0,0x00,0x20,0x3F,0x21,0x01,0x01,0x01,0x00,0x00,//P48
  0xE0,0x10,0x08,0x08,0x08,0x10,0xE0,0x00,0x0F,0x18,0x24,0x24,0x38,0x50,0x4F,0x00,//Q49
  0x08,0xF8,0x88,0x88,0x88,0x88,0x70,0x00,0x20,0x3F,0x20,0x00,0x03,0x0C,0x30,0x20,//R50
  0x00,0x70,0x88,0x08,0x08,0x08,0x38,0x00,0x00,0x38,0x20,0x21,0x21,0x22,0x1C,0x00,//S51
  0x18,0x08,0x08,0xF8,0x08,0x08,0x18,0x00,0x00,0x00,0x20,0x3F,0x20,0x00,0x00,0x00,//T52
  0x08,0xF8,0x08,0x00,0x00,0x08,0xF8,0x08,0x00,0x1F,0x20,0x20,0x20,0x20,0x1F,0x00,//U53
  0x08,0x78,0x88,0x00,0x00,0xC8,0x38,0x08,0x00,0x00,0x07,0x38,0x0E,0x01,0x00,0x00,//V54
  0xF8,0x08,0x00,0xF8,0x00,0x08,0xF8,0x00,0x03,0x3C,0x07,0x00,0x07,0x3C,0x03,0x00,//W55
  0x08,0x18,0x68,0x80,0x80,0x68,0x18,0x08,0x20,0x30,0x2C,0x03,0x03,0x2C,0x30,0x20,//X56
  0x08,0x38,0xC8,0x00,0xC8,0x38,0x08,0x00,0x00,0x00,0x20,0x3F,0x20,0x00,0x00,0x00,//Y57
  0x10,0x08,0x08,0x08,0xC8,0x38,0x08,0x00,0x20,0x38,0x26,0x21,0x20,0x20,0x18,0x00,//Z58
  0x00,0x00,0x00,0xFE,0x02,0x02,0x02,0x00,0x00,0x00,0x00,0x7F,0x40,0x40,0x40,0x00,//[59
  0x00,0x0C,0x30,0xC0,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x01,0x06,0x38,0xC0,0x00,//\60
  0x00,0x02,0x02,0x02,0xFE,0x00,0x00,0x00,0x00,0x40,0x40,0x40,0x7F,0x00,0x00,0x00,//]61
  0x00,0x00,0x04,0x02,0x02,0x02,0x04,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,//^62
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x80,//_63
  0x00,0x02,0x02,0x04,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,//`64
  0x00,0x00,0x80,0x80,0x80,0x80,0x00,0x00,0x00,0x19,0x24,0x22,0x22,0x22,0x3F,0x20,//a65
  0x08,0xF8,0x00,0x80,0x80,0x00,0x00,0x00,0x00,0x3F,0x11,0x20,0x20,0x11,0x0E,0x00,//b66
  0x00,0x00,0x00,0x80,0x80,0x80,0x00,0x00,0x00,0x0E,0x11,0x20,0x20,0x20,0x11,0x00,//c67
  0x00,0x00,0x00,0x80,0x80,0x88,0xF8,0x00,0x00,0x0E,0x11,0x20,0x20,0x10,0x3F,0x20,//d68
  0x00,0x00,0x80,0x80,0x80,0x80,0x00,0x00,0x00,0x1F,0x22,0x22,0x22,0x22,0x13,0x00,//e69
  0x00,0x80,0x80,0xF0,0x88,0x88,0x88,0x18,0x00,0x20,0x20,0x3F,0x20,0x20,0x00,0x00,//f70
  0x00,0x00,0x80,0x80,0x80,0x80,0x80,0x00,0x00,0x6B,0x94,0x94,0x94,0x93,0x60,0x00,//g71
  0x08,0xF8,0x00,0x80,0x80,0x80,0x00,0x00,0x20,0x3F,0x21,0x00,0x00,0x20,0x3F,0x20,//h72
  0x00,0x80,0x98,0x98,0x00,0x00,0x00,0x00,0x00,0x20,0x20,0x3F,0x20,0x20,0x00,0x00,//i73
  0x00,0x00,0x00,0x80,0x98,0x98,0x00,0x00,0x00,0xC0,0x80,0x80,0x80,0x7F,0x00,0x00,//j74
  0x08,0xF8,0x00,0x00,0x80,0x80,0x80,0x00,0x20,0x3F,0x24,0x02,0x2D,0x30,0x20,0x00,//k75
  0x00,0x08,0x08,0xF8,0x00,0x00,0x00,0x00,0x00,0x20,0x20,0x3F,0x20,0x20,0x00,0x00,//l76
  0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x00,0x20,0x3F,0x20,0x00,0x3F,0x20,0x00,0x3F,//m77
  0x80,0x80,0x00,0x80,0x80,0x80,0x00,0x00,0x20,0x3F,0x21,0x00,0x00,0x20,0x3F,0x20,//n78
  0x00,0x00,0x80,0x80,0x80,0x80,0x00,0x00,0x00,0x1F,0x20,0x20,0x20,0x20,0x1F,0x00,//o79
  0x80,0x80,0x00,0x80,0x80,0x00,0x00,0x00,0x80,0xFF,0xA1,0x20,0x20,0x11,0x0E,0x00,//p80
  0x00,0x00,0x00,0x80,0x80,0x80,0x80,0x00,0x00,0x0E,0x11,0x20,0x20,0xA0,0xFF,0x80,//q81
  0x80,0x80,0x80,0x00,0x80,0x80,0x80,0x00,0x20,0x20,0x3F,0x21,0x20,0x00,0x01,0x00,//r82
  0x00,0x00,0x80,0x80,0x80,0x80,0x80,0x00,0x00,0x33,0x24,0x24,0x24,0x24,0x19,0x00,//s83
  0x00,0x80,0x80,0xE0,0x80,0x80,0x00,0x00,0x00,0x00,0x00,0x1F,0x20,0x20,0x00,0x00,//t84
  0x80,0x80,0x00,0x00,0x00,0x80,0x80,0x00,0x00,0x1F,0x20,0x20,0x20,0x10,0x3F,0x20,//u85
  0x80,0x80,0x80,0x00,0x00,0x80,0x80,0x80,0x00,0x01,0x0E,0x30,0x08,0x06,0x01,0x00,//v86
  0x80,0x80,0x00,0x80,0x00,0x80,0x80,0x80,0x0F,0x30,0x0C,0x03,0x0C,0x30,0x0F,0x00,//w87
  0x00,0x80,0x80,0x00,0x80,0x80,0x80,0x00,0x00,0x20,0x31,0x2E,0x0E,0x31,0x20,0x00,//x88
  0x80,0x80,0x80,0x00,0x00,0x80,0x80,0x80,0x80,0x81,0x8E,0x70,0x18,0x06,0x01,0x00,//y89
  0x00,0x80,0x80,0x80,0x80,0x80,0x80,0x00,0x00,0x21,0x30,0x2C,0x22,0x21,0x30,0x00,//z90
  0x00,0x00,0x00,0x00,0x80,0x7C,0x02,0x02,0x00,0x00,0x00,0x00,0x00,0x3F,0x40,0x40,//{91
  0x00,0x00,0x00,0x00,0xFF,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0xFF,0x00,0x00,0x00,//|92
  0x00,0x02,0x02,0x7C,0x80,0x00,0x00,0x00,0x00,0x40,0x40,0x3F,0x00,0x00,0x00,0x00,//}93
  0x00,0x06,0x01,0x01,0x02,0x02,0x04,0x04,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,//~94

};


void LCD_WrDat(byte data)
{
        byte i=8;
	GPIOC_PDOR |=  GPIO_PDOR_PDO(GPIO_PIN(7));
        asm("nop");
        asm("nop");
        asm("nop");
        asm("nop");
        asm("nop");
        GPIOC_PDOR &= ~GPIO_PDOR_PDO(GPIO_PIN(10));
        asm("nop");
        asm("nop");
        asm("nop");
        asm("nop");
        asm("nop");    
        while(i--)
        {
        if(data&0x80){GPIOC_PDOR |=  GPIO_PDOR_PDO(GPIO_PIN(9));}
        else{GPIOC_PDOR &= ~GPIO_PDOR_PDO(GPIO_PIN(9));}
        GPIOC_PDOR |=  GPIO_PDOR_PDO(GPIO_PIN(10)); 
        asm("nop");
        asm("nop");
        asm("nop");
        asm("nop");
        asm("nop");           
        GPIOC_PDOR &= ~GPIO_PDOR_PDO(GPIO_PIN(10));   
        data<<=1;    
  }
}
void LCD_WrCmd(byte cmd)
{
     byte i=8;
     GPIOC_PDOR &= ~GPIO_PDOR_PDO(GPIO_PIN(7));
     GPIOC_PDOR &= ~GPIO_PDOR_PDO(GPIO_PIN(10));
     while(i--)
     {
     if(cmd&0x80){GPIOC_PDOR |=  GPIO_PDOR_PDO(GPIO_PIN(9));}
     else{GPIOC_PDOR &= ~GPIO_PDOR_PDO(GPIO_PIN(9));}
     GPIOC_PDOR |=  GPIO_PDOR_PDO(GPIO_PIN(10));
      asm("nop");
      asm("nop");
      asm("nop");
      asm("nop");
      asm("nop");          
     GPIOC_PDOR &= ~GPIO_PDOR_PDO(GPIO_PIN(10));    
     cmd<<=1;   
   } 	
}
void LCD_Set_Pos(byte x, byte y)
{ 
  LCD_WrCmd(0xb0+y);
  LCD_WrCmd(((x&0xf0)>>4)|0x10);
  LCD_WrCmd((x&0x0f)|0x01); 
} 
void LCD_Fill(byte bmp_data)
{
	byte y,x;
	
	for(y=0;y<8;y++)
	{
		LCD_WrCmd(0xb0+y);
		LCD_WrCmd(0x01);
		LCD_WrCmd(0x10);
		for(x=0;x<X_WIDTH;x++)
			LCD_WrDat(bmp_data);
	}
}
void LCD_CLS(void)
{
	byte y,x;	
	for(y=0;y<8;y++)
	{
		LCD_WrCmd(0xb0+y);
		LCD_WrCmd(0x01);
		LCD_WrCmd(0x10); 
		for(x=0;x<X_WIDTH;x++)
                {   
			LCD_WrDat(0);

                }
        }
}
void LCD_clear_L(unsigned char x,unsigned char y)
{
	LCD_WrCmd(0xb0+y);
	LCD_WrCmd(0x01);
	LCD_WrCmd(0x10); 
        LCD_Set_Pos(x,y);
	for(;x<X_WIDTH;x++)
        {
		LCD_WrDat(0);	
        }
}
void LCD_DLY_ms(word ms)
{                         
  word a;
  while(ms)
  {
    a=10000;
    while(a--);
    ms--;
  }
  return;
}

void LCD_Init(void)        
{
        // pin10,pin9为GPIO口 
	PORTC_PCR10=(0|PORT_PCR_MUX(1));
	PORTC_PCR9=(0|PORT_PCR_MUX(1)); 
	PORTC_PCR8=(0|PORT_PCR_MUX(1));
	PORTC_PCR7=(0|PORT_PCR_MUX(1)); 
	
	GPIOC_PDDR=GPIO_PDDR_PDD(GPIO_PIN(10)|GPIO_PIN(9)|GPIO_PIN(8)|GPIO_PIN(7));
	
	GPIOC_PDOR |=  GPIO_PDOR_PDO(GPIO_PIN(10)); 	
	
	GPIOC_PDOR &= ~GPIO_PDOR_PDO(GPIO_PIN(8));
	LCD_DLY_ms(100);
	GPIOC_PDOR |=  GPIO_PDOR_PDO(GPIO_PIN(8));
        
           
        gpio_init  (PORTA, 19, GPI_UP, HIGH); //翻页   
        gpio_init  (PORTA, 17, GPI_UP, HIGH);  
        gpio_init  (PORTB, 0, GPI_UP, HIGH);   
        gpio_init  (PORTA, 28, GPI_UP, HIGH);   
        gpio_init  (PORTB, 1, GPI_UP, HIGH);
        gpio_init  (PORTA, 29, GPI_UP, HIGH); 
   

  LCD_WrCmd(0xae);//--turn off oled panel
  LCD_WrCmd(0x00);//---set low column address
  LCD_WrCmd(0x10);//---set high column address
  LCD_WrCmd(0x40);//--set start line address  Set Mapping RAM Display Start Line (0x00~0x3F)
  LCD_WrCmd(0x81);//--set contrast control register
  LCD_WrCmd(0xcf); // Set SEG Output Current Brightness
  LCD_WrCmd(0xa1);//--Set SEG/Column Mapping     0xa0左右反置 0xa1正常
  LCD_WrCmd(0xc8);//Set COM/Row Scan Direction   0xc0上下反置 0xc8正常
  LCD_WrCmd(0xa6);//--set normal display
  LCD_WrCmd(0xa8);//--set multiplex ratio(1 to 64)
  LCD_WrCmd(0x3f);//--1/64 duty
  LCD_WrCmd(0xd3);//-set display offset	Shift Mapping RAM Counter (0x00~0x3F)
  LCD_WrCmd(0x00);//-not offset
  LCD_WrCmd(0xd5);//--set display clock divide ratio/oscillator frequency
  LCD_WrCmd(0x80);//--set divide ratio, Set Clock as 100 Frames/Sec
  LCD_WrCmd(0xd9);//--set pre-charge period
  LCD_WrCmd(0xf1);//Set Pre-Charge as 15 Clocks & Discharge as 1 Clock
  LCD_WrCmd(0xda);//--set com pins hardware configuration
  LCD_WrCmd(0x12);
  LCD_WrCmd(0xdb);//--set vcomh
  LCD_WrCmd(0x40);//Set VCOM Deselect Level
  LCD_WrCmd(0x20);//-Set Page Addressing Mode (0x00/0x01/0x02)
  LCD_WrCmd(0x02);//
  LCD_WrCmd(0x8d);//--set Charge Pump enable/disable
  LCD_WrCmd(0x14);//--set(0x10) disable
  LCD_WrCmd(0xa4);// Disable Entire Display On (0xa4/0xa5)
  LCD_WrCmd(0xa6);// Disable Inverse Display On (0xa6/a7) 
  LCD_WrCmd(0xaf);//--turn on oled panel
  LCD_Fill(0x00);  //初始清屏
  LCD_Set_Pos(0,0);  
	
} 
//==============================================================
//函数名： void LCD_PutPixel(byte x,byte y)
//功能描述：绘制一个点（x,y）
//参数：真实坐标值(x,y),x的范围0～127，y的范围0～64
//返回：无
//==============================================================
void LCD_PutPixel(byte x,byte y)
{
	byte data1;  //data1当前点的数据 
	 
        LCD_Set_Pos(x,y); 
	data1 = 0x01<<(y%8); 	
	LCD_WrCmd(0xb0+(y>>3));
	LCD_WrCmd(((x&0xf0)>>4)|0x10);
	LCD_WrCmd((x&0x0f)|0x00);
	LCD_WrDat(data1); 	 	
}
//==============================================================
//函数名： void LCD_Rectangle(byte x1,byte y1,
//                   byte x2,byte y2,byte color,byte gif)
//功能描述：绘制一个实心矩形
//参数：左上角坐标（x1,y1）,右下角坐标（x2，y2）
//      其中x1、x2的范围0～127，y1，y2的范围0～63，即真实坐标值
//返回：无
//==============================================================
void LCD_Rectangle(byte x1,byte y1,byte x2,byte y2,byte gif)
{
	byte n; 
		
	LCD_Set_Pos(x1,y1>>3);
	for(n=x1;n<=x2;n++)
	{
		LCD_WrDat(0x01<<(y1%8)); 			
		if(gif == 1) 	LCD_DLY_ms(50);
	}  
	LCD_Set_Pos(x1,y2>>3);
        for(n=x1;n<=x2;n++)
	{
		LCD_WrDat(0x01<<(y2%8)); 			
		if(gif == 1) 	LCD_DLY_ms(5);
	}
	
} 
//==============================================================
//功能描述：写入一组标准ASCII字符
//参数：显示的位置（x,y），y为页范围0～7，要显示的字符串
//返回：无
//============================================================== 
void write_6_8_char(byte x,byte y,byte ucData) 
{
    byte i, ucDataTmp;       
    ucDataTmp = ucData-32;
    if(x > 126)
    {
        x= 0;
        y++;
    }
    
    LCD_Set_Pos(x, y);
    
    for(i = 0; i < 6; i++)
    {     
        LCD_WrDat(F6x8[ucDataTmp][i]);  
    }
}
//==============================================================
//功能描述：写入一组标准ASCII字符串
//参数：显示的位置（x,y），y为页范围0～7，要显示的字符串
//返回：无
//==============================================================  
void write_6_8_string(byte x,byte y,byte ch[])
{
  byte c=0,i=0,j=0;      
  while (ch[j]!='\0')
  {    
    c =ch[j]-32;
    if(x>126){x=0;y++;}
    LCD_Set_Pos(x,y);    
  	for(i=0;i<6;i++)     
  	  LCD_WrDat(F6x8[c][i]);  
  	x+=6;
  	j++;
  }
}
/****************************************************************
                   写6*8点阵数字函数
****************************************************************/
void write_6_8_number(unsigned char x,unsigned char y, float number)
{
  unsigned char i=0;
  unsigned char temp[16];
  unsigned char *point=temp;
  float decimal;
  int data;
  
  if(number<0)
    {
     temp[0]='-';
     write_6_8_char(x,y,temp[0]);
     x+=6;
     number=-number; 
    }
    
  data=(int)number;
  decimal=number-data;     //得到小数部分
  
   
  if(data>=1000)           //是否可被1000整除
    {
     temp[i]=48+data/1000;
     data=data%1000;
     i++;
    }

   
  if(data>=100)              //是否可被100整除
   {
    temp[i]=48+data/100;
    data=data%100;
    i++;
   }
  else 
    if(data<100&&i!=0)
     {
     temp[i]=0+48;
     i++;
     }
   
  if(data>=10)                  //是否可被10整除
    {
     temp[i]=48+data/10;
     data=data%10;
     i++;
    }
  else 
    if(data<10&&i!=0)
     {
     temp[i]=48;
     i++;
     }
     
  temp[i]=48+data;
   
      
  if(decimal>=0.0001)           //判断是否为小数
   {
    i++;
    temp[i]='.';                //加小数点
    i++;
    
    data=(int)(decimal*1000);
   
    temp[i]=48+data/100;
    
    data=data%100;
    i++;
   
    if(data>0)
      {
       temp[i]=48+data/10;
       data=data%10;
       
       
      }
    if(data>=0)
      {
       i++;
       temp[i]=data+48; 
      }
    
   }     

  i++;
  temp[i]='\0';
    write_6_8_string(x,y,point); 
  
}
//==============================================================
//功能描述：写入一组标准ASCII字符
//参数：显示的位置（x,y），y为页范围0～7，要显示的字符
//返回：无
//==============================================================  
void write_8_16_char(byte x,byte y,byte ch)
{
    byte c=0,i=0,j=0;   
    c =ch-32;
    if(x>120){x=0;y++;}
    LCD_Set_Pos(x,y);    
  	for(i=0;i<8;i++)     
  	  LCD_WrDat(F8X16[c*16+i]);
  	LCD_Set_Pos(x,y+1);    
  	for(i=0;i<8;i++)     
  	  LCD_WrDat(F8X16[c*16+i+8]);  
  	x+=8;
  	j++;
 
}
//==============================================================
//功能描述：写入一组标准ASCII字符串
//参数：显示的位置（x,y），y为页范围0～7，要显示的字符串
//返回：无
//==============================================================  
void write_8_16_string(byte x,byte y,byte ch[])
{
  byte c=0,i=0,j=0;
        
  while (ch[j]!='\0')
  {    
    c =ch[j]-32;
    if(x>120){x=0;y++;}
    LCD_Set_Pos(x,y);    
  	for(i=0;i<8;i++)     
  	  LCD_WrDat(F8X16[c*16+i]);
  	LCD_Set_Pos(x,y+1);    
  	for(i=0;i<8;i++)     
  	  LCD_WrDat(F8X16[c*16+i+8]);  
  	x+=8;
  	j++;
  }
}
/****************************************************************
                   写8*16点阵数字函数
****************************************************************/
void write_8_16_number(unsigned char x,unsigned char y, float number)
{
  unsigned char i=0;
  unsigned char temp[16];
  unsigned char *point=temp;
  float decimal;
  int data;
  
  if(number<0)
    {
     temp[0]='-';
     write_8_16_char(x,y,temp[0]);
     x+=1;
     number=-number; 
    }
    
  data=(int)number;
  decimal=number-data;     //得到小数部分
  
   
  if(data>=1000)           //是否可被1000整除
    {
     temp[i]=48+data/1000;
     data=data%1000;
     i++;
    }

   
  if(data>=100)              //是否可被100整除
   {
    temp[i]=48+data/100;
    data=data%100;
    i++;
   }
  else 
    if(data<100&&i!=0)
     {
     temp[i]=0+48;
     i++;
     }
   
  if(data>=10)                  //是否可被10整除
    {
     temp[i]=48+data/10;
     data=data%10;
     i++;
    }
  else 
    if(data<10&&i!=0)
     {
     temp[i]=48;
     i++;
     }
     
  temp[i]=48+data;
   
      
  if(decimal>=0.0001)           //判断是否为小数
   {
    i++;
    temp[i]='.';                //加小数点
    i++;
    
    data=(int)(decimal*1000);
   
    temp[i]=48+data/100;
    
    data=data%100;
    i++;
   
    if(data>0)
      {
       temp[i]=48+data/10;
       data=data%10;
       
       
      }
    if(data>=0)
      {
       i++;
       temp[i]=data+48; 
      }
    
   }     

  i++;
  temp[i]='\0';
    write_8_16_string(x,y,point); 
  
}

//==============================================================
//函数名： void Draw_BMP(byte x,byte y)
//功能描述：显示BMP图片128×64
//参数：起始点坐标(x,y),x的范围0～127，y为页的范围0～7
//返回：无
//==============================================================
void Draw_BMP(byte x0,byte y0,byte x1,byte y1,byte bmp[])
{ 	
  word ii=0;
  byte x,y;
  
  if(y1%8==0) y=y1/8;      
  else y=y1/8+1;
	for(y=y0;y<=y1;y++)
	{
		LCD_Set_Pos(x0,y);				
    for(x=x0;x<x1;x++)
	    {      
	    	LCD_WrDat(bmp[ii++]);	    	
	    }
	}
}
/*****************************************************************************
 函 数 名  : MAIN_ConvertData
 功能描述  : 将数据转换为可以在OLED屏上显示的格式
 输入参数  : UCHAR8 *pInputImageData  
             UCHAR8 *pOutputImageBuf  
 输出参数  : NONE
 返 回 值  : NONE
*****************************************************************************/
void MAIN_ConvertData(uint16 *pInputImageData, uint8 *pOutputImageBuf)
{
 //   uint8 ucTmpData;
    uint8 i, usRowIdx;
    uint8 temp[128]={0};

	//清空pOutputImageBuf指向的缓存， memset库函数在string.h中
    memset(pOutputImageBuf, 0x00, 128*60);

    for (i = 0; i < 128; i++)
    {
         temp[i]=(uint8)(pInputImageData[i]*60/1024);
         
       // ucTmpData = temp[i] < (60 - 1) ? temp[i] : (60 - 1);
        
         usRowIdx = (60 - 1) - temp[i];//ucTmpData;

        (pOutputImageBuf + usRowIdx * 128)[i] = 1;
    }
}

/*****************************************************************************
 函 数 名  : LED_PrintImage
 功能描述  : 将图像显示出来
 输入参数  : UCHAR8 *pucTable     二维图像数组的地址
             USHORT16 usRowNum    二维图像的行数1~64
             USHORT16 usColumnNum 二维图像的列数1~128
 输出参数  : none
 返 回 值  : none
*****************************************************************************/
void LED_PrintImage(uint8 *pucTable, uint16 usRowNum, uint16 usColumnNum)
{
    uint8 ucData;
    uint16 i,j,k,m,n;
    uint16 usRowTmp;

    m = usRowNum >> 3;   //计算图片行数以8位为一组完整的组数
    n = usRowNum % 8;    //计算分完组后剩下的行数
    
    for(i = 0; i < m; i++) //完整组行扫描
    {
        LCD_Set_Pos(0,(uint8) i);
        usRowTmp = i << 3;    //计算当前所在行的下标                  
        for(j = 0; j < usColumnNum; j++) //列扫描        
        {
            ucData = 0;
            for(k = 0; k < 8; k++) //在i组中对这8行扫描
            {
                ucData = ucData >> 1;
                if((pucTable + (usRowTmp + k) * usColumnNum)[j] == 1)
                {
                    ucData = ucData | 0x80;
                }
                
            }
            LCD_WrDat(ucData);
        }
    }
    
    LCD_Set_Pos(0,(uint8) i); //设置剩下的行显示的起始坐标
    usRowTmp = i << 3;       //计算当前所在行的下标                  
    for(j = 0; j < usColumnNum; j++) //列扫描        
    {
        ucData = 0;
        for(k = 0; k < n; k++) //对剩下的行扫描
        {
            ucData = ucData >> 1;
            if((pucTable + (usRowTmp + k) * usColumnNum)[j] ==1)
            {
                ucData = ucData | 0x80;
            }
            
        }
        ucData = ucData >> (8 - n);
        LCD_WrDat(ucData);
    }

    return;
}

//-----------------------------------------------------------------------------------
void LCD_PrintImage(uint8 *pucTable, uint16 usRowNum, uint16 usColumnNum)
{
    uint8 ucData;
    uint16 i,j,k,m,n;
    uint16 usRowTmp;

    m = usRowNum >> 3;   //计算图片行数以8位为一组完整的组数
    n = usRowNum % 8;    //计算分完组后剩下的行数
    
    for(i = 0; i < m; i++) //完整组行扫描
    {
        LCD_Set_Pos(0,(uint8)i);
        usRowTmp = i << 3;    //计算当前所在行的下标                  
        for(j = 142; j >14; j--) //列扫描        
        {
            ucData = 0;
            for(k = 0; k < 8; k++) //在i组中对这8行扫描
            {
                ucData = ucData >> 1;
                if((pucTable + (usRowTmp + k) * usColumnNum)[j] == LED_IMAGE_WHITE)
                {
                    ucData = ucData | 0x80;
                }
                
            }
            LCD_WrDat(ucData);
        }
    }
    
    LCD_Set_Pos(0,(uint8)i); //设置剩下的行显示的起始坐标
    usRowTmp = i << 3;       //计算当前所在行的下标                  
    for(j = 143; j >15; j--) //列扫描        
    {
        ucData = 0;
        for(k = 0; k < n; k++) //对剩下的行扫描
        {
            ucData = ucData >> 1;
            if((pucTable + (usRowTmp + k) * usColumnNum)[j] == LED_IMAGE_WHITE)
            {
                ucData = ucData | 0x80;
            }
            
        }
        ucData = ucData >> (8 - n);
        LCD_WrDat(ucData);
    }
        LCD_clear_L(0,7);
        write_6_8_string(0,7,"top:");     
        write_6_8_number(50,7,control_top_whiteline);
    return;
}
//-----------------------------------------------------------------------------------
///////////////////////////////////////////////////////////////////////////////////
/***********************************预显示**********************************/
void pre_show(void)
{  
   //int8 i;
   LCD_CLS();
   switch(page_num)
     {
     case 0: 
          
        
            
            write_6_8_string(0,1,"V:");     
            write_6_8_number(20,1,V);
           
            write_6_8_string(50,1,"W:");     //第二行，角速度
            write_6_8_number(70,1,w); 
 
           
            write_6_8_string(0,2,"acce:");      //第三行，加速度计值
            write_6_8_number(50,2,acce);
  
          
            
         
        
  
        
             
            write_6_8_string(0,5,"Sp:");     
            write_6_8_number(50,5,Speed_set);

        
            write_6_8_number(0,6,g_nCarAngle); 
            write_6_8_number(50,6,acce_angle);
        
          
            
            break;
             
      case 1:
             
             write_6_8_number(0,0,LeftRealSpeed);
             write_6_8_number(60,0,RightRealSpeed);
             
             write_6_8_string(0,1,"Rsp:");     
             write_6_8_number(60,1,RealSpeed);

             
             write_6_8_string(0,2,"L_PWM:");    //
             write_6_8_number(60,2,LeftSpeedPwm);
             
             write_6_8_string(0,3,"R_PWM:");    //
             write_6_8_number(60,3,RightSpeedPwm);
             
             write_6_8_number(0,4,anglePD);
             write_6_8_number(50,4,steerpwmout);
             write_6_8_number(100,4,SpeedPIDout);
             
             
             break;
             
             
       
      case 2:write_6_8_char(0,line_num,'*');
      
             write_6_8_string(6,0,"ACCE:");    //加速度计静态值
             write_6_8_number(60,0,ACCE_STATIC); 
               
            
                 write_6_8_string(6,1,"S_P_C:");   
             write_6_8_number(60,1,stopcount);  
           
              write_6_8_string(6,2,"set_d:");   
             write_6_8_number(60,2,Speed_set);
               write_6_8_string(6,3,"lcd_p1:");   
             write_6_8_number(60,3,lcd_ref_p1);
              write_6_8_string(6,4,"lcd_d1:");   
             write_6_8_number(60,4,lcd_ref_d1);
              write_6_8_string(6,5,"lcd_p2:");   
             write_6_8_number(60,5,lcd_ref_p2);
              write_6_8_string(6,6,"lcd_d2:");   
             write_6_8_number(60,6,lcd_ref_d2);
               // write_6_8_string(6,4,"Rg:");    //
            // write_6_8_number(60,4,Rg);
           //  LCD_Set_Pos(0, 5) ;
             //for(i=22;i<106;i++){
               //if(CCD_value[i])  LCD_write_byte(0xfe,1);       
               //else LCD_write_byte(0x80,1);      
             //}
             break;
             
             
      case 3:write_6_8_char(0,line_num,'*');
             
             write_6_8_string(6,0,"ang_kp:");    //
             write_6_8_number(60,0,angle_kp); 
             
             write_6_8_string(6,1,"ang_kd:");    //
             write_6_8_number(60,1,angle_kd);

             write_6_8_string(6,2,"sped_kp:");    //
             write_6_8_number(60,2,speed_kp); 
             
             write_6_8_string(6,3,"sped_ki:");    //
             write_6_8_number(60,3,speed_ki); 
             
             write_6_8_string(6,4,"zhongj:");    //
             write_6_8_number(60,4,zhongjian );
             
            write_6_8_string(6,5,"W_B_O:");    //
             write_6_8_number(60,5,WHITE_BLACK_OT );
               write_6_8_string(6,6,"ft1:");    //
             write_6_8_number(60,6,ft1);  
             
             break;
       case 4:write_6_8_char(0,line_num,'*');
             
             write_6_8_string(6,0,"ting_p:");    //
             write_6_8_number(60,0,tingting_p); 
             
             write_6_8_string(6,1,"ting_d:");    //
             write_6_8_number(60,1,tingting_d);
              
             write_6_8_string(6,2,"huanjie:");    //
             write_6_8_number(60,2,huanjie);

             write_6_8_string(6,3,"qing:");    //
             write_6_8_number(60,3,qing);
             
               write_6_8_string(6,4,"summ:");    //
             write_6_8_number(60,4,summ);
             
             write_6_8_string(6,5,"da:");    //
             write_6_8_number(60,5,da);
             
             write_6_8_string(6,6,"fuxiao:");    //
             write_6_8_number(60,6,fuxiao);
              break;            
    
                      
     }

}
//-------------------------------------------------------------------------------------------


/**************************************刷屏，显示时变变量*********************************/
void redraw()
{
  
     
  //if(page_num==0&&redraw_control==0)     //第一页
  switch(page_num)
  {
  case 0:
    
        write_6_8_string(0,1,"V:");     
        write_6_8_number(20,1,V);
        /*LCD_clear_L(70,1);
        
        write_6_8_number(70,1,w);*/
       
        LCD_clear_L(70,1);
        
        write_6_8_number(70,1,w); 
           
        LCD_clear_L(50,2);
        write_6_8_number(50,2,acce);
        
        LCD_clear_L(0,3);
        write_6_8_string(0,3,"L_c:");
        write_6_8_number(24,3,LeftRealSpeed);   
        write_6_8_string(65,3,"R_c:");      
        write_6_8_number(89,3,RightRealSpeed);
        
        
        
      
        /*LCD_clear_L(0,4);
        write_6_8_string(0,4,"g_Angle：");
        write_6_8_number(50,4,g_nCarAngle);*/
     
      
        
        
        LCD_clear_L(50,5);

        write_6_8_string(0,5,"Sp:");     
        write_6_8_number(50,5,Speed_set);

        
        LCD_clear_L(0,6);
        write_6_8_number(0,6,g_nCarAngle); 
        write_6_8_number(50,6,acce_angle);
        
        LCD_clear_L(0,7);
        write_6_8_string(0,7,"top:");     
        write_6_8_number(50,7,control_top_whiteline);
    
        
        break;
        
  case 1:     //第二页
        LCD_clear_L(0,0);
        write_6_8_number(0,0,g_nLeftCount);
        write_6_8_number(60,0,g_nRightCount);
        
        LCD_clear_L(60,1);     
        write_6_8_number(60,1,RealSpeed);

        
        LCD_clear_L(60,2);
        write_6_8_number(60,2,LeftSpeedPwm);
        
        LCD_clear_L(60,3);
        write_6_8_number(60,3,RightSpeedPwm);
        
        LCD_clear_L(0,4);        
        write_6_8_number(0,4,anglePD);
        write_6_8_number(50,4,steerpwmout);
        write_6_8_number(100,4,SpeedPIDout);
        break;
        
 /*  case 2:     //第二页
           LCD_PrintImage((uint8 *)VideoImage1, 50, 157);
             
        
        break;*/
        
        
        
     
 
  } 
}



/*********************************修改变量数值***********************************/
void change_value(unsigned char page,unsigned char m,float i)
{  
  switch (page)
  {  
  case 2:
     switch(m)
        {         
             
         case 0:ACCE_STATIC+=i;       
                LCD_clear_L(60,0);
                write_6_8_char(0,0,'*');
                write_6_8_number(60,0,ACCE_STATIC);  
                break;
         case 1:stopcount+=10*i;
                LCD_clear_L(60,1);
                write_6_8_char(0,1,'*');
                write_6_8_number(60,1,stopcount);
                break;
        
        case 2:Speed_set+=i;
                LCD_clear_L(60,2);
                write_6_8_char(0,2,'*');
                write_6_8_number(60,2,Speed_set);
                break; 
                //lcd_ref_p1
        case 3:lcd_ref_p1+=i;
                LCD_clear_L(60,3);
                write_6_8_char(0,3,'*');
                write_6_8_number(60,3,lcd_ref_p1);
                break;
        case 4:lcd_ref_d1+=i;
                LCD_clear_L(60,4);
                write_6_8_char(0,4,'*');
                write_6_8_number(60,4,lcd_ref_d1);
                break;
        case 5:lcd_ref_p2+=i;
                LCD_clear_L(60,5);
                write_6_8_char(0,5,'*');
                write_6_8_number(60,5,lcd_ref_p2);
                break;
        case 6:lcd_ref_d2+=i;
                LCD_clear_L(60,6);
                write_6_8_char(0,6,'*');
                write_6_8_number(60,6,lcd_ref_d2);
                break;        
      /*   case 4:Rg+=i;
                LCD_clear_L(60,4);
                write_6_8_char(0,4,'*');
                write_6_8_number(60,4,Rg);
                break;
        */ /*        
         case 4:angle_kp+=i;
                LCD_clear_L(8,4);
                write_6_8_char(0,4,'*');
                write_6_8_number(8,4,angle_kp);
                break;   
         case 5:angle_kd+=0.1*i;
                LCD_clear_L(8,5);
                write_6_8_char(0,5,'*');
                write_6_8_number(8,5,angle_kd);
                break;
           */
	      }
     break;
  case 3:
     switch(m)
        {
          
         case 0:angle_kp+=i;       
                LCD_clear_L(60,0);
                write_6_8_char(0,0,'*');
                write_6_8_number(60,0,angle_kp); 
                break;
         case 1:angle_kd+=0.1*i;
                LCD_clear_L(60,1);
                write_6_8_char(0,1,'*');
                write_6_8_number(60,1,angle_kd); 
                break;
                
         case 2:speed_kp+=i;
                LCD_clear_L(60,2);
                write_6_8_char(0,2,'*');
                write_6_8_number(60,2,speed_kp); 
                break;
                
         case 3:speed_ki+=0.01*i;
                LCD_clear_L(60,3);
                write_6_8_char(0,3,'*');
                write_6_8_number(60,3,speed_ki); 
                break; 
                
         case 4: zhongjian+=i;
                LCD_clear_L(60,4);
                write_6_8_char(0,4,'*');
                write_6_8_number(60,4,zhongjian); 
                break;
           case 5: WHITE_BLACK_OT+=i;
                LCD_clear_L(60,5);
                write_6_8_char(0,5,'*');
                write_6_8_number(60,5,WHITE_BLACK_OT); 
                break;
                      
       
         case 6: ft1+=i;
                LCD_clear_L(60,6);
                write_6_8_char(0,6,'*');
                write_6_8_number(60,6,ft1); 
                break; 
        }
       break; 
      case 4:
     switch(m)
        {
          
         case 0:tingting_p+=i;       
                LCD_clear_L(60,0);
                write_6_8_char(0,0,'*');
                write_6_8_number(60,0,tingting_p); 
                break;
         case 1:tingting_d+=i;
                LCD_clear_L(60,1);
                write_6_8_char(0,1,'*');
                write_6_8_number(60,1,tingting_d); 
                break;
        case 2:huanjie+=i;
                LCD_clear_L(60,2);
                write_6_8_char(0,2,'*');
                write_6_8_number(60,2,huanjie); 
                break;
           case 3:qing+=i;
                LCD_clear_L(60,3);
                write_6_8_char(0,3,'*');
                write_6_8_number(60,3,qing); 
                break;
           case 4:summ+=i;
                LCD_clear_L(60,4);
                write_6_8_char(0,4,'*');
                write_6_8_number(60,4,summ); 
                break;
        case 5:da+=i;
                LCD_clear_L(60,5);
                write_6_8_char(0,5,'*');
                write_6_8_number(60,5,da); 
                break;
      case 6:fuxiao+=i;
                LCD_clear_L(60,6);
                write_6_8_char(0,6,'*');
                write_6_8_number(60,6,fuxiao); 
                break;
        }
   
   break;
  }
 
}	 		    
  
/****************************************************
                     按键扫描函数
*****************************************************/

void KeyScan(void)
{                  
 //if(scan_control==0)        //循环扫描
  //{
  
  /////////////////////////////////////////////////////切屏
  if(!change_page)  //如果检测到低电平，说明按键按下
    {
      LCD_DLY_ms(30); //延时去抖，一般10-20ms
      if(!change_page)     //再次确认按键是否按下，没有按下则退出
	     {
       while(!change_page);//如果确认按下按键等待按键释放，没有释放则一直等待
	           
		   if(page_num<5)    //页序号加操作
	         page_num++;
		   else
		       page_num=0;
		   
		   line_num=0;
		   pre_show();

	     }
      // fanting=1;
     
     }
    

 if(page_num==2||page_num==3||page_num==4)     //如不为第一页，则进行下一步扫描
 {
  /////////////////////////////////////////////////////切行
  if(!change_line)  //如果检测到低电平，说明按键按下
    {
      LCD_DLY_ms(30); //延时去抖，一般10-20ms
     if(!change_line)     //再次确认按键是否按下，没有按下则退出
	     {
       while(!change_line);//如果确认按下按键等待按键释放，没有释放则一直等待
	     
	     if(page_num!=0)
	        write_6_8_char(0,line_num,' ');
	           
		   if(line_num<6)    //行序号加操作
	         line_num++;
		   else
		       line_num=0;
		   
		   if(page_num!=0)
	        write_6_8_char(0,line_num,'*');
                
	     } 
	     
   }
/*对应参数加十*/

 if(!Add_10)  //如果检测到低电平，说明按键按下
    {
       LCD_DLY_ms(30); //延时去抖，一般10-20ms
     if(!Add_10)     //再次确认按键是否按下，没有按下则退出
	   {
      while(!Add_10);//如果确认按下按键等待按键释放，没有释放则一直等待
        change_value(page_num,line_num,10);
	   }
	  }
/*对应参数加一*/
if(!Add_1)  
    {
	 LCD_DLY_ms(30); 
     if(!Add_1)
	   {
        while(!Add_1);
        change_value(page_num,line_num,1);  
	   }
	  }
/*对应参数减一*/
if(!Sub_1)
   {
  	 LCD_DLY_ms(30);  
     if(!Sub_1)     
	   {
        while(!Sub_1);
        change_value(page_num,line_num,-1);
	 	 }
	  }
/*对应参数减十*/
if(!Sub_10){
  LCD_DLY_ms(30); 
  if(!Sub_10){
    while(!Sub_10);
    change_value(page_num,line_num,-10);
  }
 }
	  

 }
 
}


