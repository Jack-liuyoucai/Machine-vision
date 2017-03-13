#include "common.h"
#include "nokia.h"
#include "gpio.h"
#include "ASC_FONT.h"


/*修改参数全局变量*/
extern uint8 WHITE_CENTER;
extern float angle_kp;
extern float angle_kd;
extern float RealSpeed;
extern float acce_angle;
extern float speed_kp;
extern float speed_ki;
extern int16 g_nLeftCount;
extern int16 g_nRightCount;

extern uint8 Left_cnt;
extern uint8 Right_cnt;

extern float steer_kp;
extern float steer_kd;

extern float g_nCarAngle;
extern float acce,w;
extern float GYRO_STATIC,ACCE_STATIC;           //零点偏移量


extern uint16 latch;
extern float p_distance;
extern int8 IntegrationTime;
extern int16 LeftSpeedPwm;
extern int16 RightSpeedPwm;
extern int16 anglePD;
extern int16 SpeedPID;
extern int16 steerpwm;


extern  uint16 Pixel[128];              //
extern  uint8 CCD_value[128];


extern uint8 Speed_set;
extern char delaytime;

unsigned char page_num=0;     //页序号
unsigned char line_num=0;     //行序号
unsigned char re_display=1;   //预显示标志位 
/*************************************************************/
/*                        延时函数                           */
/*************************************************************/
void LCD_delay(void) 
{
 unsigned int i;
 for(i=0;i<16;i++);
}

void longdelay(void) 
{
 unsigned int i;
 for(i=0;i<4000;i++);
}

void  DelayMs(uint32  ms)
{

    uint32  i, j;
    for(i = 0; i < ms; i++)
    {
        for(j = 100000; j > 0; j--)
        {
            asm("nop");
        }
    }
}

/************************************************************
                  初始化端口
***********************************************************/
 void Init_port(void) 
 
 {
   gpio_init  (PORTC, 6, GPO_HDS, LOW); 
 
   gpio_init  (PORTC, 7, GPO_HDS, LOW);
         
   gpio_init  (PORTC, 8, GPO_HDS, LOW);
   
   gpio_init  (PORTC, 9, GPO_HDS, LOW);
   
   gpio_init  (PORTC, 10, GPO_HDS, LOW);
   
   gpio_init  (PORTD, 14, GPI_UP, HIGH);//按键扫描
   
   gpio_init  (PORTD, 15, GPI_UP, HIGH);//刷屏使能
   
   gpio_init  (PORTC, 12, GPI_UP, HIGH); //翻页 
  
   gpio_init  (PORTC, 13, GPI_UP, HIGH);
  
   gpio_init  (PORTC, 14, GPI_UP, HIGH);
   
   gpio_init  (PORTC, 15, GPI_UP, HIGH);
   
   gpio_init  (PORTC, 16, GPI_UP, HIGH);

   gpio_init  (PORTC, 17, GPI_UP, HIGH); 
   
 }
 

//--------------------------LCD写字节命令---------------------//
void LCD_write_byte(uint8 dat, uint8 command)
{
     uint16 i;
     SCE(0);           

    if (command == 0)
      DC(0);                     
    else
      DC(1);               
      for(i=0 ;i < 8; i++)
      {
              if(dat&0x80)
                  SDIN(1); 
              else
                  SDIN(0); 
              SCLK(0);     
              dat = dat << 1;
              SCLK(1);      
      }
     SCE(1);             
}
/****************************************************
                 设置LCD坐标函数
*****************************************************/
void LCD_set_XY(unsigned char X, unsigned char Y)
{
	LCD_write_byte(0x40 | Y, 0);// column
	LCD_write_byte(0x80 | X, 0);// row
}
/*******************************************************
             LCD_clear: LCD清屏函数
*********************************************************/
void LCD_clear(void)
{
	unsigned char t;
	unsigned char k;
	LCD_set_XY(0,0);
	for(t=0;t<6;t++)
	{ 
		for(k=0;k<84;k++)
		{ 
		LCD_write_byte(0x00,1);
				
		} 
	}
}


/*******************************************************
             LCD_clear_L: LCD清行函数
*********************************************************/
void LCD_clear_L(unsigned char x,unsigned char y)
{
	unsigned char k;
	x=x*6;
	LCD_set_XY(x,y);
	
	for(k=x;k<84;k++)
		LCD_write_byte(0x00,1);
					
}
//------------------------------------5110初始化----------------------------------//
void Init_LCD5110()
{
    // 产生一个让LCD复位的低电平脉冲
    RES(0);       // BCLR(6,GPIOC_PDOR);         //LCD_RST = 0;
    DelayMs(280);    //7us
    RES(1);             // BSET(6,GPIOC_PDOR);         //LCD_RST = 1;

    SCE(0);              // BCLR(0,GPIOD_PDOR);      //LCD_CE = 0;
    DelayMs(280);    //7us

    SCE(1);   //BSET(0,GPIOD_PDOR);   //LCD_CE = 1;
    DelayMs(280);   //7us

    LCD_write_byte(0x21, 0);	// 使用扩展命令设置LCD模式
    LCD_write_byte(0xc2, 0);	// 设置偏置电压
    LCD_write_byte(0x06, 0);	// 温度校正
    LCD_write_byte(0x13, 0);	// 1:48
    LCD_write_byte(0x20, 0);	// 使用基本命令
    LCD_clear();	        // 清屏
    LCD_write_byte(0x0c, 0);	// 设定显示模式，正常显示

    SCE(0);        // BCLR(0,GPIOD_PDOR);          //LCD_CE = 0;
}
//------------------------------------LCD初始化----------------------------------//
void Init_LCD(void) 
{

  Init_port();
  
  Init_LCD5110(); 
  
}
/*********************************************************/
/*               写8*16字符函数                          */
/*********************************************************/
void write_8_16_char(unsigned char x,unsigned char y,unsigned char data)     //X为列，Y为行
{
  unsigned char i;    
  data=data-32;
  x=x<<3;
  y=y<<1;
  LCD_set_XY(x, y) ;
  
  for(i=0;i<8;i++)
   {    
    LCD_write_byte(fontCode8_16[data][i],1);
   }
   
  LCD_set_XY(x, y+1) ;
  
  for(i=8;i<16;i++)
   {    
    LCD_write_byte(fontCode8_16[data][i],1);
   }        
    
}

/*********************************************************/
/*               写8*16字符串函数                          */
/*********************************************************/
void write_8_16_string(unsigned char x,unsigned char y,unsigned char * data)
{
  unsigned char i;    
  x=x<<3;
  y=y<<1;
  while(*data!='\0')
  {
    LCD_set_XY(x, y);
     for(i=0;i<8;i++)
     {    
      LCD_write_byte(fontCode8_16[*data-32][i],1);
     }
     LCD_set_XY(x, y+1) ;
     for(i=8;i<16;i++)
     {    
      LCD_write_byte(fontCode8_16[*data-32][i],1);
     } 
     x=x+8;
     data++;      
   } 
}
/******************************************************************
                  写6*8字符函数
******************************************************************/
void write_6_8_char(unsigned char x,unsigned char y,unsigned char data)
{
  unsigned char i;    
  data=data-32;
  x=x*6;
  LCD_set_XY(x, y) ;
   for(i=0;i<6;i++)
   {    
    LCD_write_byte(fontCode6_8[data][i],1);
   }
}
/****************************************************************
                   写6*8字符串函数
****************************************************************/
void write_6_8_string(unsigned char x,unsigned char y,unsigned char * data)
{
  unsigned char i;
  x=x*6;
  LCD_set_XY(x, y) ;
  while(*data !='\0')
  {
   for(i=0;i<6;i++)
   {    
    LCD_write_byte(fontCode6_8[*data-32][i],1);
   } 
   data++;
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
    write_6_8_string(x,y,point); 
  
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
/****************************************************************
                   写12*16中文函数
****************************************************************/
void write_chinese_char(unsigned char x,unsigned char y,unsigned char data_code)
{
	unsigned char i;  	
	x=x*12;
  y=y<<1;
	LCD_set_XY(x, y);// 列，页 
	for(i=0; i<12;i++) 
	{
		LCD_write_byte(chinese[data_code][i],1); 
	}
	
  LCD_set_XY(x, y+1);// 列，页 
	for(i=12; i<24;i++) 
	{
		LCD_write_byte(chinese[data_code][i],1);
	}	
}


/****************************************************************************
LCD_draw_bmp     : 位图绘制函数

输入参数：X、Y    ：位图绘制的起始X、Y坐标；
          *map    ：位图点阵数据；
          Pix_x   ：位图像素（长）
          Pix_y   ：位图像素（宽）

*******************************************************************************/
void LCD_draw_bmp(unsigned char x,unsigned char y,unsigned char *map,
                  unsigned char Pix_x,unsigned char Pix_y)
  {
    unsigned int i,n;
    unsigned char row;
    
    if (Pix_y%8==0) row=Pix_y/8;      //计算位图所占行数
      else
        row=Pix_y/8+1;
    
    for (n=0;n<row;n++)
      {
      	LCD_set_XY(x,y);
        for(i=0; i<Pix_x; i++)
          {
            LCD_write_byte(map[i+n*Pix_x], 1);
          }
        y++;                         //换行
      }      
  }



///////////////////////////////////////////////////////////////////////////////////
/***********************************预显示**********************************/
void pre_show(void)
{  
   int8 i;
   LCD_clear();
   switch(page_num)
     {
     case 0: 

             
            write_6_8_number(0,0,Pixel[15]); 
            write_6_8_number(5,0,Pixel[64]); 
            write_6_8_number(10,0,Pixel[120]); 
        
            
            write_6_8_string(0,1,"V:");     
           //write_6_8_number(2,0,v);
           
            write_6_8_string(5,1,"W:");     //第二行，角速度
            write_6_8_number(7,1,w); 

            write_6_8_string(0,2,"acce:");      //第三行，加速度计值
            write_6_8_number(5,2,acce);
            
             
            write_6_8_string(0,3,"Sp :");     
            write_6_8_number(4,3,Speed_set);
            
            write_6_8_string(7,3,"RSp:");     
            write_6_8_number(11,3,RealSpeed);
           
            write_6_8_string(0,4,"L_c:");   
            write_6_8_number(4,4,Left_cnt);
            
            write_6_8_string(7,4,"R_c:");      //第三行，加速度计值
            write_6_8_number(11,4,Right_cnt);
            
            write_6_8_number(0,5,g_nCarAngle); 
            write_6_8_number(8,5,acce_angle); 
            break;
             
      case 1:
             
             write_6_8_number(0,0,g_nLeftCount);
             write_6_8_number(7,0,g_nRightCount);
             
             
             write_6_8_string(0,1,"latch:");    //
             write_6_8_number(6,1,latch); 
             
             write_6_8_string(0,2,"p_d:");    //
             write_6_8_number(4,2,p_distance);
             
             write_6_8_string(9,2,"tm:");    //
             write_6_8_number(12,2, IntegrationTime);
             
             write_6_8_string(0,3,"L_PWM:");    //
             write_6_8_number(6,3,LeftSpeedPwm);
             
             write_6_8_string(0,4,"R_PWM:");    //
             write_6_8_number(6,4,RightSpeedPwm);
             
             write_6_8_number(0,5,anglePD);
             write_6_8_number(5,5,SpeedPID);
             write_6_8_number(10,5,steerpwm);
             
             break;
             
             
       
      case 2:write_6_8_char(0,line_num,'*');
      
             write_6_8_string(1,0,"ACCE:");    //加速度计静态值
             write_6_8_number(6,0,ACCE_STATIC); 
               
             write_6_8_string(1,1,"Sp:");    //
             write_6_8_number(4,1,Speed_set);
               
             write_6_8_string(1,2,"WHITE_C:");    //
             write_6_8_number(9,2,WHITE_CENTER);
             
             LCD_set_XY(0, 5) ;
             for(i=10;i<52;i++){
               if(CCD_value[i])  LCD_write_byte(0xfe,1);       
               else LCD_write_byte(0x80,1);      
             }
             for(i=78;i<120;i++){
               if(CCD_value[i])  LCD_write_byte(0xfe,1);       
               else LCD_write_byte(0x80,1);      
             }
             break;
             
             
      case 3:write_6_8_char(0,line_num,'*');
             
             write_6_8_string(1,0,"ang_kp:");    //
             write_6_8_number(8,0,angle_kp); 
             
             write_6_8_string(1,1,"ang_kd:");    //
             write_6_8_number(8,1,angle_kd);

             write_6_8_string(1,2,"sped_kp:");    //
             write_6_8_number(9,2,speed_kp); 
             
             write_6_8_string(1,3,"sped_ki:");    //
             write_6_8_number(9,3,speed_ki); 
             
             write_6_8_string(1,4,"ster_kp:");    //
             write_6_8_number(9,4,steer_kp);
             
             write_6_8_string(1,5,"ster_kd:");    //
             write_6_8_number(9,5,steer_kd);  
             
             break;
             
     }

}

/**************************************刷屏，显示时变变量*********************************/
void redraw()
{    uint8 i;

  //if(page_num==0&&redraw_control==0)     //第一页
     if(page_num==0)     //第一页
     {
        LCD_clear_L(0,0);
        write_6_8_number(0,0,Pixel[15]); 
        write_6_8_number(5,0,Pixel[64]); 
        write_6_8_number(10,0,Pixel[120]);
        
        LCD_clear_L(8,1);
        write_6_8_number(7,1,w);    //第二行，角速度 
           
        LCD_clear_L(5,2);
        write_6_8_number(5,2,acce);  
 
        LCD_clear_L(0,3);    
        write_6_8_string(0,3,"Sp :");     
        write_6_8_number(4,3,Speed_set);
        write_6_8_string(7,3,"Rsp:");     
        write_6_8_number(11,3,RealSpeed);
        
        LCD_clear_L(0,4);
        write_6_8_string(0,4,"L_c:");
        write_6_8_number(4,4,Left_cnt);   
        write_6_8_string(7,4,"R_c:");      
        write_6_8_number(11,4,Right_cnt);
        
        LCD_clear_L(0,5);
        write_6_8_number(0,5,g_nCarAngle); 
        write_6_8_number(8,5,acce_angle);
     }
     if(page_num==1)     //第二页
     {
        LCD_clear_L(0,0);
        write_6_8_number(0,0,g_nLeftCount);
        write_6_8_number(7,0,g_nRightCount);
             
        LCD_clear_L(6,1);
        write_6_8_number(6,1,latch);
        
        LCD_clear_L(0,2);     
        write_6_8_string(0,2,"p_d:");    //
        write_6_8_number(4,2,p_distance);
        
        
        write_6_8_string(9,2,"tm:");    //
        write_6_8_number(12,2, IntegrationTime);
        
        LCD_clear_L(6,3);
        write_6_8_number(6,3,LeftSpeedPwm);
        
        LCD_clear_L(6,4);
        write_6_8_number(6,4,RightSpeedPwm);
        
        LCD_clear_L(0,5);
        
        write_6_8_number(0,5,anglePD);
        write_6_8_number(5,5,SpeedPID);
        write_6_8_number(10,5,steerpwm);
       
     }
     if(page_num==2)     //第三页
     {
        LCD_set_XY(0, 5) ;
        for(i=20;i<62;i++){
        if(CCD_value[i])  LCD_write_byte(0xfe,1);       
        else LCD_write_byte(0x80,1);      
        }
        for(i=78;i<120;i++){
        if(CCD_value[i])  LCD_write_byte(0xfe,1);       
        else LCD_write_byte(0x80,1);      
        }       
       
     }
     
}



/*********************************修改变量数值***********************************/
void change_value(unsigned char page,unsigned char m,float i)
{  

  if(page==2)
   { 
     switch(m)
        {         
             
         case 0:ACCE_STATIC+=i;       
                LCD_clear_L(6,0);
                write_6_8_char(0,0,'*');
                write_6_8_number(6,0,ACCE_STATIC);  
                break;
         case 1:Speed_set+=i;
                LCD_clear_L(4,1);
                write_6_8_char(0,1,'*');
                write_6_8_number(4,1,Speed_set);
                break;
          case 2:WHITE_CENTER+=i;
                LCD_clear_L(9,2);
                write_6_8_char(0,2,'*');
                write_6_8_number(9,2,WHITE_CENTER);
                break;
         /*
        case 3:pixel_max+=i;
                LCD_clear_L(9,3);
                write_6_8_char(0,3,'*');
                write_6_8_number(11,3,pixel_max);
                break;
                
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
   }
  if(page==3)
   {
     switch(m)
        {
          
         case 0:angle_kp+=i;       
                LCD_clear_L(8,0);
                write_6_8_char(0,0,'*');
                write_6_8_number(8,0,angle_kp); 
                break;
         case 1:angle_kd+=0.1*i;
                LCD_clear_L(8,1);
                write_6_8_char(0,1,'*');
                write_6_8_number(8,1,angle_kd); 
                break;
                
         case 2:speed_kp+=i;
                LCD_clear_L(9,2);
                write_6_8_char(0,2,'*');
                write_6_8_number(9,2,speed_kp); 
                break;
                
         case 3:speed_ki+=0.01*i;
                LCD_clear_L(9,3);
                write_6_8_char(0,3,'*');
                write_6_8_number(9,3,speed_ki); 
                break; 
                
         case 4:steer_kp+=0.1*i;
                LCD_clear_L(9,4);
                write_6_8_char(0,4,'*');
                write_6_8_number(9,4,steer_kp); 
                break;
                
         case 5:steer_kd+=0.1*i;
                LCD_clear_L(9,5);
                write_6_8_char(0,5,'*');
                write_6_8_number(9,5,steer_kd); 
                break; 
         
         
        
                
	      }
   
   
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
      DelayMs(10); //延时去抖，一般10-20ms
     if(!change_page)     //再次确认按键是否按下，没有按下则退出
	     {
       while(!change_page);//如果确认按下按键等待按键释放，没有释放则一直等待
	           
		   if(page_num<3)    //页序号加操作
	         page_num++;
		   else
		       page_num=0;
		   
		   line_num=0;
		   pre_show();

	     }  
     }
    

 if(page_num!=0&&page_num!=1)     //如不为第一页，则进行下一步扫描
 {
  /////////////////////////////////////////////////////切行
  if(!change_line)  //如果检测到低电平，说明按键按下
    {
	   DelayMs(10); //延时去抖，一般10-20ms
     if(!change_line)     //再次确认按键是否按下，没有按下则退出
	     {
       while(!change_line);//如果确认按下按键等待按键释放，没有释放则一直等待
	     
	     if(page_num!=0)
	        write_6_8_char(0,line_num,' ');
	           
		   if(line_num<5)    //行序号加操作
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
	 DelayMs(10); //延时去抖，一般10-20ms
     if(!Add_10)     //再次确认按键是否按下，没有按下则退出
	   {
      while(!Add_10);//如果确认按下按键等待按键释放，没有释放则一直等待
        change_value(page_num,line_num,10);
	   }
	  }
/*对应参数加一*/
if(!Add_1)  
    {
	 DelayMs(10); 
     if(!Add_1)
	   {
        while(!Add_1);
        change_value(page_num,line_num,1);  
	   }
	  }
/*对应参数减一*/
if(!Sub_1)
   {
  	 DelayMs(10);  
     if(!Sub_1)     
	   {
        while(!Sub_1);
        change_value(page_num,line_num,-1);
	 	 }
	  }
/*对应参数减十*/
if(!Sub_10){
  DelayMs(10); 
  if(!Sub_10){
    while(!Sub_10);
    change_value(page_num,line_num,-10);
  }
 }
	  

 }
}