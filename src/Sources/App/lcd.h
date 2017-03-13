#ifndef _LCD_H_
#define _LCD_H_

#include "flash.h" 

//--------------------IO引脚定义,注意更改InitLCD()中的引脚输入输出-----------------
#define SCLK  PTC7_OUT      //时钟
#define SDIN  PTC6_OUT      //数据
#define DC    PTC9_OUT       //1写数据，0写指令
#define SCE   PTC8_OUT       //片选
#define RES   PTC10_OUT      //复位,0复位

#define KEY1  PTC12_IN
#define KEY2  PTC11_IN
#define KEY3  PTC14_IN
#define KEY4  PTC13_IN

#define SHIFT   1  //移位
#define INC     2  //增加
#define DEC     3  //减少
#define ENTER   4  //确认

//--------------------- TYPE DEFINE ---------------------
typedef union {
	uint8 Byte;
	struct {
        uint8 B0         :1;                                       // Flag Bit 0
        uint8 B1         :1;                                       // Flag Bit 1
        uint8 B2         :1;                                       // Flag Bit 2
        uint8 B3         :1;                                       // Flag Bit 3
        uint8 B4         :1;                                       // Flag Bit 4
        uint8 B5         :1;                                       // Flag Bit 5
        uint8 B6         :1;                                       // Flag Bit 6
        uint8 B7         :1;                                       // Flag Bit 7
	} Bits;
} BYTE;

//需要设置的参数，定义或声明
int16 LCD_KP = 112, LCD_KD = 22, LCD_KI = 33, LCD_SetSpeed = 55, 
      LCD_Para1 = 66, LCD_Para2 = 77,FlashWrite_flag=0;
#define SecNum1 127
#define SecNum2 127

uint8 Key;     //=1 表示有键按下 , Key为键值  Keynum为按键后关按键中断延时计数
uint8 San_X,San_Y;  //闪烁光标的位置

uint8 const mask_table[8]={0x80,0x40,0x20,0x10,0x08,0x04,0x02,0x01};

int8 buf[16];
uint8 Xianbuf0[84];
uint8 LCDPage = 1;   //显示页面号
uint8 SetOK = 0, Set_b = 0;

void InitFlashLcd(void); 
void InitLCD(void);
void ClearLCD(void);
void ShowPage(void);
void SetPage1(void);
void SetPage2(void);
void SetPage3(void);
void SetPage4(void);

uint8 char_to_s(int8 zen,int8 *p);
uint8 uint_to_s(uint16 zen, int8 *p);
uint8 uchar_to_s(uint8 zen,int8 *p);
void write_char(uint8 x,uint8 y, uint8 dd);
void write_byte(uint8 dd,uint8 a);
//打印字符串，以\0结束
void Print(uint8 y,uint8 x,int8 *pstr);
//显示参数：需要更改变量(int16 or uint)的地址，显示的行位置(最多6行，0-5)，参数显示的名字(最多8字符)--
void ShowParameter(int16* para, uint8 LCD_Row, uint8* ParaName);
//修改参数：需要更改变量的地址，显示的行位置(最多6行，0-5)-------
void SetParameter(int16 *para, uint8 LCD_Row); //可设范围 0-9999

uint8 const dal1[][6]={
{0x00,0x00,0x00,0x00,0x00,0x00}, //   0
{0x00,0x00,0x00,0x00,0x00,0x00}, //   1
{0x00,0x00,0x00,0x00,0x00,0x00}, //    2
{0x00,0x00,0x00,0x00,0x00,0x00}, //   3
{0x00,0x00,0x00,0x00,0x00,0x00}, //   4
{0x00,0x00,0x00,0x00,0x00,0x00}, //   5
{0x00,0x00,0x00,0x00,0x00,0x00}, //   6
{0x00,0x00,0x00,0x00,0x00,0x00}, //   7
{0x00,0x00,0x00,0x00,0x00,0x00}, //   8
{0x00,0x00,0x00,0x00,0x00,0x00}, //   9
{0x00,0x00,0x00,0x00,0x00,0x00}, //   10
{0x00,0x00,0x00,0x00,0x00,0x00}, //   11
{0x00,0x00,0x00,0x00,0x00,0x00}, //   12
{0x00,0x00,0x00,0x00,0x00,0x00}, //   13
{0x00,0x00,0x00,0x00,0x00,0x00}, //   14
{0x00,0x00,0x00,0x00,0x00,0x00}, //   15
{0x00,0x00,0x00,0x00,0x00,0x00}, //   16
{0x00,0x00,0x00,0x00,0x00,0x00}, //   17
{0x00,0x00,0x00,0x00,0x00,0x00}, //   18
{0x00,0x00,0x00,0x00,0x00,0x00}, //   19
{0x00,0x00,0x00,0x00,0x00,0x00}, //   20
{0x00,0x00,0x00,0x00,0x00,0x00}, //   21
{0x00,0x00,0x00,0x00,0x00,0x00}, //   22
{0x00,0x00,0x00,0x00,0x00,0x00}, //   23
{0x00,0x00,0x00,0x00,0x00,0x00}, //   24
{0x00,0x00,0x00,0x00,0x00,0x00}, //   25
{0x00,0x00,0x00,0x00,0x00,0x00}, //   26
{0x00,0x00,0x00,0x00,0x00,0x00}, //   27
{0x00,0x00,0x00,0x00,0x00,0x00}, //   28
{0x00,0x00,0x00,0x00,0x00,0x00}, //   29
{0x00,0x00,0x00,0x00,0x00,0x00}, //   30
{0x00,0x00,0x00,0x00,0x00,0x00}, //   31
{0x00,0x00,0x00,0x00,0x00,0x00}, // sp 32
{0x00,0x00,0x2f,0x00,0x00,0x00},   // ! 33
{0x00,0x07,0x00,0x07,0x00,0x00},   // " 34
{0x14,0x7f,0x14,0x7f,0x14,0x00},   // # 35
{0x24,0x2a,0x7f,0x2a,0x12,0x00},   // $ 36
{0xc4,0xc8,0x10,0x26,0x46,0x00},   // % 37
{0x36,0x49,0x55,0x22,0x50,0x00},   // & 38
{0x00,0x05,0x03,0x00,0x00,0x00},   // ' 39
{0x00,0x1c,0x22,0x41,0x00,0x00},   // ( 40
{0x00,0x41,0x22,0x1c,0x00,0x00},   // ) 41
{0x14,0x08,0x3E,0x08,0x14,0x00},   // * 42
{0x08,0x08,0x3E,0x08,0x08,0x00},   // + 43
{0x00,0x00,0x50,0x30,0x00,0x00},   // , 44
{0x10,0x10,0x10,0x10,0x10,0x00},   // - 45
{0x00,0x60,0x60,0x00,0x00,0x00},   // . 46
{0x20,0x10,0x08,0x04,0x02,0x00},   // / 47
{0x3E,0x51,0x49,0x45,0x3E,0x00},   // 0 48
{0x00,0x42,0x7F,0x40,0x00,0x00},   // 1 49
{0x42,0x61,0x51,0x49,0x46,0x00},   // 2 50
{0x21,0x41,0x45,0x4B,0x31,0x00},   // 3 51
{0x18,0x14,0x12,0x7F,0x10,0x00},   // 4 52
{0x27,0x45,0x45,0x45,0x39,0x00},   // 5 53
{0x3C,0x4A,0x49,0x49,0x30,0x00},   // 6 54
{0x01,0x71,0x09,0x05,0x03,0x00},   // 7 55
{0x36,0x49,0x49,0x49,0x36,0x00},   // 8 56
{0x06,0x49,0x49,0x29,0x1E,0x00},   // 9 57
{0x00,0x36,0x36,0x00,0x00,0x00},   // : 58
{0x00,0x56,0x36,0x00,0x00,0x00},   // ; 59
{0x08,0x14,0x22,0x41,0x00,0x00},   // < 60
{0x14,0x14,0x14,0x14,0x14,0x00},   // = 61
{0x00,0x41,0x22,0x14,0x08,0x00},   // > 62
{0x02,0x01,0x51,0x09,0x06,0x00},   // ? 63
{0x32,0x49,0x59,0x51,0x3E,0x00},   // @ 64
{0x7E,0x11,0x11,0x11,0x7E,0x00},   // A 65
{0x7F,0x49,0x49,0x49,0x36,0x00},   // B 66
{0x3E,0x41,0x41,0x41,0x22,0x00},   // C 67
{0x7F,0x41,0x41,0x22,0x1C,0x00},   // D 68
{0x7F,0x49,0x49,0x49,0x41,0x00},   // E 69
{0x7F,0x09,0x09,0x09,0x01,0x00},   // F 70
{0x3E,0x41,0x49,0x49,0x7A,0x00},   // G 71
{0x7F,0x08,0x08,0x08,0x7F,0x00},   // H 72
{0x00,0x41,0x7F,0x41,0x00,0x00},   // I 73
{0x20,0x40,0x41,0x3F,0x01,0x00},   // J 74
{0x7F,0x08,0x14,0x22,0x41,0x00},   // K 75
{0x7F,0x40,0x40,0x40,0x40,0x00},   // L 76
{0x7F,0x02,0x0C,0x02,0x7F,0x00},   // M 77
{0x7F,0x04,0x08,0x10,0x7F,0x00},   // N 78
{0x3E,0x41,0x41,0x41,0x3E,0x00},   // O 79
{0x7F,0x09,0x09,0x09,0x06,0x00},   // P 80
{0x3E,0x41,0x51,0x21,0x5E,0x00},   // Q 81
{0x7F,0x09,0x19,0x29,0x46,0x00},   // R 82
{0x46,0x49,0x49,0x49,0x31,0x00},   // S 83
{0x01,0x01,0x7F,0x01,0x01,0x00},   // T 84
{0x3F,0x40,0x40,0x40,0x3F,0x00},   // U 85
{0x1F,0x20,0x40,0x20,0x1F,0x00},   // V 86
{0x3F,0x40,0x38,0x40,0x3F,0x00},   // W 87
{0x63,0x14,0x08,0x14,0x63,0x00},   // X 88
{0x07,0x08,0x70,0x08,0x07,0x00},   // Y 89
{0x61,0x51,0x49,0x45,0x43,0x00},   // Z 90
{0x00,0x7F,0x41,0x41,0x00,0x00},   // [ 91
{0x55,0x2A,0x55,0x2A,0x55,0x00},   //55 92
{0x00,0x41,0x41,0x7F,0x00,0x00},   // ] 93
{0x04,0x02,0x01,0x02,0x04,0x00},   // ^ 94
{0x40,0x40,0x40,0x40,0x40,0x00},   // _ 95
{0x00,0x01,0x02,0x04,0x00,0x00},   // ' 96
{0x20,0x54,0x54,0x54,0x78,0x00},   // a 97
{0x7F,0x48,0x44,0x44,0x38,0x00},   // b 98
{0x38,0x44,0x44,0x44,0x20,0x00},   // c 99
{0x38,0x44,0x44,0x48,0x7F,0x00},   // d 100
{0x38,0x54,0x54,0x54,0x18,0x00},   // e 101
{0x08,0x7E,0x09,0x01,0x02,0x00},   // f 102
{0x0C,0x52,0x52,0x52,0x3E,0x00},   // g 103
{0x7F,0x08,0x04,0x04,0x78,0x00},   // h 104
{0x00,0x44,0x7D,0x40,0x00,0x00},   // i 105
{0x20,0x40,0x44,0x3D,0x00,0x00},   // j 106
{0x7F,0x10,0x28,0x44,0x00,0x00},   // k 107
{0x00,0x41,0x7F,0x40,0x00,0x00},   // l 108
{0x7C,0x04,0x18,0x04,0x78,0x00},   // m 109
{0x7C,0x08,0x04,0x04,0x78,0x00},   // n 110
{0x38,0x44,0x44,0x44,0x38,0x00},   // o 111
{0x7C,0x14,0x14,0x14,0x08,0x00},   // p 112
{0x08,0x14,0x14,0x18,0x7C,0x00},   // q 113
{0x7C,0x08,0x04,0x04,0x08,0x00},   // r 114
{0x48,0x54,0x54,0x54,0x20,0x00},   // s 115
{0x04,0x3F,0x44,0x40,0x20,0x00},   // t 116
{0x3C,0x40,0x40,0x20,0x7C,0x00},   // u 117
{0x1C,0x20,0x40,0x20,0x1C,0x00},   // v 118
{0x3C,0x40,0x30,0x40,0x3C,0x00},   // w 119
{0x44,0x28,0x10,0x28,0x44,0x00},   // x 120
{0x0C,0x50,0x50,0x50,0x3C,0x00},   // y 121
{0x44,0x64,0x54,0x4C,0x44,0x00},   // z 122
{0xD5,0x01,0x80,0x01,0x80,0xAB},  // <50        123
{0xFF,0x81,0x81,0x81,0x81,0xFF},  //50<= <100   124
{0xFF,0x81,0xBD,0xBD,0x81,0xFF},  //100<= <150  125
{0xFF,0xFF,0xFF,0xFF,0xFF,0xFF},  //>=150       126
{0x00,0x00,0x00,0x00,0x00,0x00}   // sp         127

};

//------------------Delay 1ms--------------------
void	DelaymS_LCD(uint16 delay)     //1.00005ms
{
	uint16	i, j;
	for ( i = delay; i != 0; i -- )
	{
		for ( j = 7000; j != 0; j -- ) ;
		for ( j = 6320; j != 0; j -- ) ;
	}
}

void InitLCD(void)
{
  //-------注意更改输入输出------------
  PORTC_PCR6 = ( PORT_PCR_MUX(1) );
  PORTC_PCR7 = ( PORT_PCR_MUX(1) );
  PORTC_PCR8 = ( PORT_PCR_MUX(1) );
  PORTC_PCR9 = ( PORT_PCR_MUX(1) );
  PORTC_PCR10 = ( PORT_PCR_MUX(1) );
  PORTC_PCR11 = ( PORT_PCR_MUX(1) );
  PORTC_PCR12 = ( PORT_PCR_MUX(1) );
  PORTC_PCR13 = ( PORT_PCR_MUX(1) );
  PORTC_PCR14 = ( PORT_PCR_MUX(1) );

  DDRC6 = 1;
  DDRC7 = 1;
  DDRC8 = 1;
  DDRC9 = 1;
  DDRC10 = 1;

  DDRC11 = 0;
  DDRC12 = 0;
  DDRC13 = 0;
  DDRC14 = 0;
  //-------注意更改输入输出------------

  RES=0;
  DelaymS_LCD(10);
  RES=1;
  SCE=0;
  DelaymS_LCD(10);
  SCE=1;
  SDIN=1;
  SCLK=1;
  write_byte(0x21,0);//初始化Lcd,功能设定使用扩充指令
  write_byte(0xcc,0);//设定液晶偏置电压(高--低）
  write_byte(0x20,0);//使用基本指令
  ClearLCD();//清屏
  write_byte(0x0c,0);	// 设定显示模式，正常显示
  SCE=0;

  ShowPage();
}


uint8 ScanKey(void)
{
  BYTE key;
  key.Byte=0xff;
  key.Bits.B0=KEY1;
  key.Bits.B1=KEY2;
  key.Bits.B2=KEY3;
  key.Bits.B3=KEY4;
  if((key.Byte  & 0x0f)!=0x0f)
  {
    DelaymS_LCD(10);
    if (KEY4==0) Key=ENTER;
    else if (KEY3==0)Key=DEC;
    else if (KEY2==0)Key=INC;
    else Key=SHIFT;
    while((key.Byte  & 0x0f)!=0x0f)
    {
      key.Bits.B0=KEY1;
      key.Bits.B1=KEY2;
      key.Bits.B2=KEY3;
      key.Bits.B3=KEY4;
    }
    DelaymS_LCD(10);
  }
  else Key=0;
  return(Key);
}

int16 intabs2(int16 a)
{
	return (a>0)?a:-a;
}

uint8 byteabs(int8 x){
  uint8 i;
  if (x>=0) return(x);
  else{
    i=-x;
    return(i);
  }
}

//写一字节给5110
void write_byte(uint8 dd,uint8 a)
{
  int8 i;
  SCE=0;
  DC=a;
  for(i=0;i<8;i++)
  {
    if(dd&mask_table[i])
      SDIN=1;
    else
      SDIN=0;
    SCLK=0;
    SCLK=1;
  }
  DC=1;
  SCE=1;
  SDIN=1;
}

//设定地址
void setadd(uint8 a,uint8 d)
{
  write_byte((d|0x40),0);
  write_byte((a|0x80),0);
}

//清屏
void ClearLCD(void)
{
  uint8 t;
  uint8 k;
  uint16 d;
  d=0;
  for(t=0;t<7;t++)
    for(k=0;k<0x85;k++)
    {
      write_byte(0,1);
      d=d+1;
    }
}

void write_char(uint8 x,uint8 y, uint8 dd)//写一字符   6行 14列
{ uint8 i,k;
  k=x*6;
  for(i=0;i<6;i++)
      {
        setadd(k+i,y);//写地址
        write_byte(dal1[dd][i],1);//写数据
      }
}

void write_charF(uint8 x,uint8 y, uint8 dd)//写一字符   6行 84列
{ uint8 i,k;
  k=x*6;
  for(i=0;i<6;i++)
      {
        setadd(k+i,y);//写地址
        write_byte(~dal1[dd][i],1);//写数据
      }
}

void PrintF(uint8 x,uint8 y,int8 *pstr){  //打印字母和数字   y:列 0-13  x:行 0-5
  while(*pstr>0){
    write_charF(y, x,*pstr);
    pstr++; y++;
  }
}

void bei_san(uint8 x,uint8 y) {		//显示光标
  int8 buf[2];
  buf[0]=Xianbuf0[x*14+y];buf[1]='\0';
  PrintF(x,y,&buf[0]);
}

void clr_san(uint8 x,uint8 y) {		//清除光标
  int8 buf[2];
  buf[0]=Xianbuf0[x*14+y];buf[1]='\0';
  Print(x,y,&buf[0]);
}

uint8 uint_to_s(uint16 zen, int8 *p)
{ //整形变字符串
   uint8 i,j;
   for (i=5;i>0;i--) {
        *(p+i-1)=zen%10+0x30; zen/=10;
       }
      *(p+5)='\0';
    for (i=0;i<4;i++){
     if (*p==0x30) {
       for (j=0;j<(5-i);j++)
        *(p+j)=*(p+j+1);
     }
       else
        break;
    }
    return(5-i);
}

uint8 uchar_to_s(uint8 zen,int8 *p) {
  uint8 i,j;
   for (i=3;i>0;i--) {
        *(p+i-1)=zen%10+0x30; zen/=10;
       }
      *(p+3)='\0';
    for (i=0;i<2;i++){
     if (*p==0x30) {
       for (j=0;j<(3-i);j++)
        *(p+j)=*(p+j+1);
     }
       else
        break;
    }
    return(3-i);
}

uint8 int_to_s(int16 zen,int8 *p) {
  uint8 i,j;
  if (zen<0) *p='-';
      else *p='+';
      zen=intabs2(zen);
  for (i=5;i>0;i--) {
        *(p+i)=zen%10+0x30; zen/=10;
       }
      *(p+6)='\0';
    for (i=0;i<1;i++){
     if (*(p+1)==0x30) {
       for (j=1;j<(6-i);j++)
        *(p+j)=*(p+j+1);
     }
       else
        break;
    }
    return(6-i);
}

uint8 int2string(int16 zen,int8 *p)
{
  uint8 i,j;
  zen=intabs2(zen);
  for(i=5;i>0;i--)
  {
    *(p+i)=zen%10+0x30;
    zen=zen/10;
  }
  *(p+6)='\0';
    for (i=0;i<1;i++){
   if (*(p+1)==0x30) {
     for (j=1;j<(6-i);j++)
      *(p+j)=*(p+j+1);
   }
     else
      break;
  }
  return (6-i);
}

uint8 int_to_s2(int16 zen,int8 *p) {
  uint8 i,j;
  if (zen<0) *p='-';
      else *p='+';
      zen=intabs2(zen);
  for (i=5;i>0;i--) {
        *(p+i)=zen%10+0x30; zen/=10;
       }
      *(p+6)='\0';
    for (i=0;i<4;i++){
     if (*(p+1)==0x30) {
       for (j=1;j<(5-i);j++)
        *(p+j)=*(p+j+1);
       *(p+(5-i))=' ';
     }
       else
        break;
    }
    return(6-i);
}

uint8 ulong_to_s(uint32 zen, int8 *p){ //长整形变字符串
   uint8 i,j;
   for (i=10;i>0;i--) {
        *(p+i-1)=zen%10+0x30; zen/=10;
       }
      *(p+10)=' ';  //加个空格，
      *(p+11)='\0';
    for (i=0;i<9;i++){
     if (*p==0x30) {
       for (j=0;j<(11-i);j++)
        *(p+j)=*(p+j+1);
     }
       else
        break;
    }
    return(11-i);
}


uint8 char_to_s(int8 zen,int8 *p) {
  uint8 i,j;
  if (zen<0) {
    *p='-';  zen=-zen;
  }
    else *p='+';
  for (i=3;i>0;i--) {

        *(p+i)=zen%10+0x30; zen/=10;
       }
      *(p+4)='\0';
    for (i=0;i<2;i++){
     if (*(p+1)==0x30) {
       for (j=1;j<(4-i);j++)
        *(p+j)=*(p+j+1);
     }
       else
        break;
    }
    return(4-i);
}

//打印字母和数字   y:列 0-13  x:行 0-5
void Print(uint8 x, uint8 y, int8 *pstr)
{
  while(*pstr>0)
  {
      write_char(y, x,*pstr);
      pstr++; y++;
  }
}

//打印字母和数字   y:列 0-13  x:行 0-5
void PrintC(uint8 y,uint8 x,int8 *pstr)
{
  while(*pstr>0)
  {
    if(*pstr=='0' ||  *pstr=='+')
    {
      pstr++;
      continue;
    }
    else
    {
      write_char(y, x,*pstr);
      pstr++; y++;
    }
  }
}

void jiao0(int8 *p,uint8 beg,uint8 num) {
 uint8 i,j;
 for (i=0;i<num-beg;i++){
   for (j=beg+i+1;j>0;j--){
    *(p+j)=*(p+j-1);
   }
    *p='0';
 }
}

void SetLCD()
{
  uint8 k;
  while(SetOK == 0)
  {
    k = ScanKey();
    switch(k)
    {
      case SHIFT:
        ShowPage();
        break;

      case INC:
        if (LCDPage < 4)//向前翻
          LCDPage++;
        else
          LCDPage = 1;
        ShowPage();
        break;

      case DEC:
        if (LCDPage > 1)   //向后翻
          LCDPage--;
        else
          LCDPage = 4;
        ShowPage();
        break;

      case ENTER:
        Set_b=1;  //进入画面操作
        ShowPage();
        break;

      default :   break;
    }
  }
}

void ShowPage(void)
{
  switch (LCDPage)
  {
    case 1: SetPage1();
            break;
    case 2: SetPage2();
            break;
    case 3: SetPage3();
            break;
    case 4: SetPage4();
            break;
    default :    break;
  }

}

void SetPage1(void) //程序运行页
{

  if (Set_b==0){
   ClearLCD();
   Print(0,0," WHU SmartCar");
   Print(1,0,"     2012    ");
   Print(4,0," Press Enter ");
   Print(5,0,"   and go!   ");
  }else
     SetOK = 1;
}

void SetPage2(void){    //参数设置2
  uint8 i;
  if (Set_b==0){
   ClearLCD();
   for (i=0;i<128;i++)
     Xianbuf0[i]='\0';

   /*----------------------修改这里-----------------------------------*/
   /*参数：需要更改变量(int16 or uint)的地址，显示的行位置(最多7行)，参数显示的名字(最多8字符)--*/
   ShowParameter(&LCD_KP, 0, "KP:");
   ShowParameter(&LCD_KI, 1, "KI:");
   ShowParameter(&LCD_KD, 2, "KD:");
   ShowParameter(&LCD_SetSpeed, 3, "Speed:");
   ShowParameter(&LCD_Para1, 4, "Para1:");
   ShowParameter(&LCD_Para2, 5, "Para2:");
   /*----------------------修改这里--------------------------*/

  }
  if (Set_b==1){   //如果进入设置
    San_X=0;		San_Y=9;   //光标位置
    bei_san(San_X,San_Y);  //光标

   for (;;){
    i = ScanKey();
     switch(i){
      case SHIFT: //移位
                 clr_san(San_X,San_Y);
                 San_Y++;
                 if (San_Y>12) {
                  San_Y=9; San_X++;
                 }
                 if (San_X>5) San_X=0;
                 bei_san(San_X,San_Y);  //光标
                 break;

      case INC: //加1
                 Xianbuf0[San_X*14+San_Y]++;
                 if (Xianbuf0[San_X*14+San_Y]>0x39){
                  Xianbuf0[San_X*14+San_Y]=0x30;
                 }
                 buf[0]= Xianbuf0[San_X*14+San_Y];
                 buf[1]='\0';
                 bei_san(San_X,San_Y);
                 break;

      case DEC: //减1
                 Xianbuf0[San_X*14+San_Y]--;
                 if (Xianbuf0[San_X*14+San_Y]<0x30){
                  Xianbuf0[San_X*14+San_Y]=0x39;
                 }
                 buf[0]= Xianbuf0[San_X*14+San_Y];
                 buf[1]='\0';
                 bei_san(San_X,San_Y);
                 break;

      case ENTER: //确定
                 /*----------------------修改这里------------------------*/
                 /*参数：需要更改变量的地址，显示的行位置(最多7行)-------*/
                 SetParameter(&LCD_KP, 0);
                 SetParameter(&LCD_KI, 1);
                 SetParameter(&LCD_KD, 2);
                 SetParameter(&LCD_SetSpeed, 3);
                 SetParameter(&LCD_Para1, 4);
                 SetParameter(&LCD_Para2, 5);

                 flash_erase_sector(127);//清除扇区

                 flash_write(SecNum1,0,LCD_KP);
                 flash_write(SecNum1,32,LCD_KI);
                 flash_write(SecNum1,64,LCD_KD);
                 flash_write(SecNum1,96,LCD_SetSpeed);  
                /*----------------------修改这里--------------------------*/

                 clr_san(San_X, San_Y);  //取消光标
                 Set_b=0;   //退出设置状态
                 return;
                 break;

      default :  break;
     }
   }
  }
 }

void SetPage3(void)      //参数设置3 ,预留
{
  ClearLCD();
  Print(0,0,"   Page 3");
  Print(3,0,"  Reserved ");

}
void SetPage4(void) //手动清除扇区页，清除后存在flash里的数据将全部删除
{
  int i=0;
  if (Set_b==0){
   ClearLCD();
   Print(0,0," Flash  Erase");
   Print(2,0," sector:5-255");
   Print(4,0," Press  Enter ");
   Print(5,0,"   and erase   ");
  }
  else
  {
     for(i=5;i<256;i++)
       flash_erase_sector(i);
     SetOK = 1;
  }
}

/*参数：需要更改变量(int16 or uint)的地址，显示的行位置(最多6行)，参数显示的名字(最多8字符)--*/
void ShowParameter(int16* para, uint8 LCD_Row, uint8* ParaName)
{
  uint8 i;
  Print(LCD_Row, 1, ParaName);
  i=uint_to_s((uint16)*para,&buf[0]);
  jiao0(&buf[0],i,4);
  Print(LCD_Row,9,&buf[0]);
  Xianbuf0[LCD_Row*14+9]=buf[0];
  Xianbuf0[LCD_Row*14+10]=buf[1];
  Xianbuf0[LCD_Row*14+11]=buf[2];
  Xianbuf0[LCD_Row*14+12]=buf[3];
}

/*参数：需要更改变量的地址，显示的行位置(最多6行)-------*/
void SetParameter(int16 *para, uint8 LCD_Row) //可设范围 0-9999
{
  *para = Xianbuf0[LCD_Row*14+9]-0x30; 	
  *para = *para * 10+(Xianbuf0[LCD_Row*14+10]-0x30);
  *para = *para * 10+(Xianbuf0[LCD_Row*14+11]-0x30);
  *para = *para * 10+(Xianbuf0[LCD_Row*14+12]-0x30);
}

void InitFlashLcd(void) 
{
  flash_init();
  FlashWrite_flag=flash_read(SecNum1,0,uint32);
  if(FlashWrite_flag!=0xffffffff)//flash若全部清除，则不读取flash，变量使用程序本身的变量值
  {
    LCD_KP=flash_read(SecNum1,0,uint32);
    LCD_KI=flash_read(SecNum1,32,uint32);
    LCD_KD=flash_read(SecNum1,64,uint32);
    LCD_SetSpeed=flash_read(SecNum1,96,uint32);
  }

}

#endif

