#ifndef _OLED_H
#define _OLED_H
#include "stdbool.h"   
#include "oled.h"
#include "include.h"

#define byte uint8
#define word uint16
#define GPIO_PIN_MASK      0x1Fu    //0x1f=31,限制位数为0--31有效
#define GPIO_PIN(x)        (((1)<<(x & GPIO_PIN_MASK)))  //把当前位置1

#define change_page    (bool)(GPIOA_PDIR >> 19 & 0x00000001)
#define change_line    (bool)(GPIOA_PDIR >> 17 & 0x00000001)
#define Add_10         (bool)(GPIOB_PDIR >> 0 & 0x00000001)
#define Add_1          (bool)(GPIOA_PDIR >>28 & 0x00000001)
#define Sub_10         (bool)(GPIOB_PDIR >> 1 & 0x00000001)
#define Sub_1          (bool)(GPIOA_PDIR >> 29 & 0x00000001)
//#define scan_control   (bool)(GPIOD_PDIR >> 14 & 0x00000001)        //键盘扫描开关
//#define redraw_control (bool)(GPIOD_PDIR >> 15 & 0x00000001)       //刷屏

void pre_show(void);
void redraw();
void KeyScan(void); 
void LCD_Init(void);
void LCD_CLS(void);
void write_6_8_char(byte x,byte y,byte ch);
void write_6_8_string(byte x,byte y,byte ch[]);
void write_6_8_number(unsigned char x,unsigned char y, float number);
void write_8_16_char(byte x,byte y,byte ch);
void write_8_16_string(byte x,byte y,byte ch[]);
void write_8_16_number(unsigned char x,unsigned char y, float number);
void LCD_PutPixel(byte x,byte y);
void LCD_Rectangle(byte x1,byte y1,byte x2,byte y2,byte gif);
void Draw_BMP(byte x0,byte y0,byte x1,byte y1,byte bmp[]); 
void LCD_Fill(byte dat);
void LCD_DLY_ms(word ms);
void change_value(unsigned char page,unsigned char m,float i);
void KeyScan(void);
void LCD_Set_Pos(byte x, byte y);
void LCD_WrCmd(byte cmd);
void LCD_WrDat(byte data);
void LCD_PrintImage(uint8 *pucTable, uint16 usRowNum, uint16 usColumnNum);
#endif

