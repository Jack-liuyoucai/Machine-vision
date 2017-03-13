#ifndef _NOKIA_H
#define _NOKIA_H
#include "gpio.h"
#include "common.h"
#include "stdbool.h"        //布尔变量

#define RES(x)        gpio_set(PORTC, 6, x)
#define SCE(x)        gpio_set(PORTC, 7, x)//片选
#define DC(x)         gpio_set(PORTC, 8, x)       //1写数据，0写指令
#define SDIN(x)       gpio_set(PORTC, 9, x)
#define SCLK(x)       gpio_set(PORTC, 10, x)

#define change_page    (bool)(GPIOC_PDIR >> 12 & 0x00000001)
#define change_line    (bool)(GPIOC_PDIR >> 15 & 0x00000001)
#define Add_10         (bool)(GPIOC_PDIR >> 13 & 0x00000001)
#define Add_1          (bool)(GPIOC_PDIR >> 16 & 0x00000001)
#define Sub_10         (bool)(GPIOC_PDIR >> 14 & 0x00000001)
#define Sub_1          (bool)(GPIOC_PDIR >> 17 & 0x00000001)
#define scan_control   (bool)(GPIOD_PDIR >> 14 & 0x00000001)        //键盘扫描开关
#define redraw_control (bool)(GPIOD_PDIR >> 15 & 0x00000001)       //刷屏

void LCD_delay(void);
void LCD_write_byte(unsigned char data, unsigned char command) ;
void LCD_set_XY(unsigned char X, unsigned char Y);
void LCD_clear(void);
void LCD_clear_L(unsigned char x,unsigned char y);

void write_8_16_char(unsigned char x,unsigned char y,unsigned char data);     //X为列，Y为行 
void write_8_16_string(unsigned char x,unsigned char y,unsigned char * data);
void write_8_16_number(unsigned char x,unsigned char y, float number);

void write_6_8_char(unsigned char x,unsigned char y,unsigned char data);
extern void write_6_8_string(unsigned char x,unsigned char y,unsigned char * data);
void write_6_8_number(unsigned char x,unsigned char y, float number);
void write_chinese_char(unsigned char x,unsigned char y,unsigned char data_code);
void LCD_draw_bmp(unsigned char x,unsigned char y,unsigned char *map,
                  unsigned char Pix_x,unsigned char Pix_y);
void pre_show(void);
void redraw();
void change_value(unsigned char page,unsigned char m,float i);                  
void KeyScan(void);
void Init_LCD(void);     


#endif