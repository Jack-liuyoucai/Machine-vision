#include "common.h"
#include "nokia.h"
#include "gpio.h"
#include "ASC_FONT.h"


/*�޸Ĳ���ȫ�ֱ���*/
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
extern float GYRO_STATIC,ACCE_STATIC;           //���ƫ����


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

unsigned char page_num=0;     //ҳ���
unsigned char line_num=0;     //�����
unsigned char re_display=1;   //Ԥ��ʾ��־λ 
/*************************************************************/
/*                        ��ʱ����                           */
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
                  ��ʼ���˿�
***********************************************************/
 void Init_port(void) 
 
 {
   gpio_init  (PORTC, 6, GPO_HDS, LOW); 
 
   gpio_init  (PORTC, 7, GPO_HDS, LOW);
         
   gpio_init  (PORTC, 8, GPO_HDS, LOW);
   
   gpio_init  (PORTC, 9, GPO_HDS, LOW);
   
   gpio_init  (PORTC, 10, GPO_HDS, LOW);
   
   gpio_init  (PORTD, 14, GPI_UP, HIGH);//����ɨ��
   
   gpio_init  (PORTD, 15, GPI_UP, HIGH);//ˢ��ʹ��
   
   gpio_init  (PORTC, 12, GPI_UP, HIGH); //��ҳ 
  
   gpio_init  (PORTC, 13, GPI_UP, HIGH);
  
   gpio_init  (PORTC, 14, GPI_UP, HIGH);
   
   gpio_init  (PORTC, 15, GPI_UP, HIGH);
   
   gpio_init  (PORTC, 16, GPI_UP, HIGH);

   gpio_init  (PORTC, 17, GPI_UP, HIGH); 
   
 }
 

//--------------------------LCDд�ֽ�����---------------------//
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
                 ����LCD���꺯��
*****************************************************/
void LCD_set_XY(unsigned char X, unsigned char Y)
{
	LCD_write_byte(0x40 | Y, 0);// column
	LCD_write_byte(0x80 | X, 0);// row
}
/*******************************************************
             LCD_clear: LCD��������
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
             LCD_clear_L: LCD���к���
*********************************************************/
void LCD_clear_L(unsigned char x,unsigned char y)
{
	unsigned char k;
	x=x*6;
	LCD_set_XY(x,y);
	
	for(k=x;k<84;k++)
		LCD_write_byte(0x00,1);
					
}
//------------------------------------5110��ʼ��----------------------------------//
void Init_LCD5110()
{
    // ����һ����LCD��λ�ĵ͵�ƽ����
    RES(0);       // BCLR(6,GPIOC_PDOR);         //LCD_RST = 0;
    DelayMs(280);    //7us
    RES(1);             // BSET(6,GPIOC_PDOR);         //LCD_RST = 1;

    SCE(0);              // BCLR(0,GPIOD_PDOR);      //LCD_CE = 0;
    DelayMs(280);    //7us

    SCE(1);   //BSET(0,GPIOD_PDOR);   //LCD_CE = 1;
    DelayMs(280);   //7us

    LCD_write_byte(0x21, 0);	// ʹ����չ��������LCDģʽ
    LCD_write_byte(0xc2, 0);	// ����ƫ�õ�ѹ
    LCD_write_byte(0x06, 0);	// �¶�У��
    LCD_write_byte(0x13, 0);	// 1:48
    LCD_write_byte(0x20, 0);	// ʹ�û�������
    LCD_clear();	        // ����
    LCD_write_byte(0x0c, 0);	// �趨��ʾģʽ��������ʾ

    SCE(0);        // BCLR(0,GPIOD_PDOR);          //LCD_CE = 0;
}
//------------------------------------LCD��ʼ��----------------------------------//
void Init_LCD(void) 
{

  Init_port();
  
  Init_LCD5110(); 
  
}
/*********************************************************/
/*               д8*16�ַ�����                          */
/*********************************************************/
void write_8_16_char(unsigned char x,unsigned char y,unsigned char data)     //XΪ�У�YΪ��
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
/*               д8*16�ַ�������                          */
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
                  д6*8�ַ�����
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
                   д6*8�ַ�������
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
                   д6*8�������ֺ���
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
  decimal=number-data;     //�õ�С������
  
   
  if(data>=1000)           //�Ƿ�ɱ�1000����
    {
     temp[i]=48+data/1000;
     data=data%1000;
     i++;
    }

   
  if(data>=100)              //�Ƿ�ɱ�100����
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
   
  if(data>=10)                  //�Ƿ�ɱ�10����
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
   
      
  if(decimal>=0.0001)           //�ж��Ƿ�ΪС��
   {
    i++;
    temp[i]='.';                //��С����
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
                   д8*16�������ֺ���
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
  decimal=number-data;     //�õ�С������
  
   
  if(data>=1000)           //�Ƿ�ɱ�1000����
    {
     temp[i]=48+data/1000;
     data=data%1000;
     i++;
    }

   
  if(data>=100)              //�Ƿ�ɱ�100����
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
   
  if(data>=10)                  //�Ƿ�ɱ�10����
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
   
      
  if(decimal>=0.0001)           //�ж��Ƿ�ΪС��
   {
    i++;
    temp[i]='.';                //��С����
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
                   д12*16���ĺ���
****************************************************************/
void write_chinese_char(unsigned char x,unsigned char y,unsigned char data_code)
{
	unsigned char i;  	
	x=x*12;
  y=y<<1;
	LCD_set_XY(x, y);// �У�ҳ 
	for(i=0; i<12;i++) 
	{
		LCD_write_byte(chinese[data_code][i],1); 
	}
	
  LCD_set_XY(x, y+1);// �У�ҳ 
	for(i=12; i<24;i++) 
	{
		LCD_write_byte(chinese[data_code][i],1);
	}	
}


/****************************************************************************
LCD_draw_bmp     : λͼ���ƺ���

���������X��Y    ��λͼ���Ƶ���ʼX��Y���ꣻ
          *map    ��λͼ�������ݣ�
          Pix_x   ��λͼ���أ�����
          Pix_y   ��λͼ���أ���

*******************************************************************************/
void LCD_draw_bmp(unsigned char x,unsigned char y,unsigned char *map,
                  unsigned char Pix_x,unsigned char Pix_y)
  {
    unsigned int i,n;
    unsigned char row;
    
    if (Pix_y%8==0) row=Pix_y/8;      //����λͼ��ռ����
      else
        row=Pix_y/8+1;
    
    for (n=0;n<row;n++)
      {
      	LCD_set_XY(x,y);
        for(i=0; i<Pix_x; i++)
          {
            LCD_write_byte(map[i+n*Pix_x], 1);
          }
        y++;                         //����
      }      
  }



///////////////////////////////////////////////////////////////////////////////////
/***********************************Ԥ��ʾ**********************************/
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
           
            write_6_8_string(5,1,"W:");     //�ڶ��У����ٶ�
            write_6_8_number(7,1,w); 

            write_6_8_string(0,2,"acce:");      //�����У����ٶȼ�ֵ
            write_6_8_number(5,2,acce);
            
             
            write_6_8_string(0,3,"Sp :");     
            write_6_8_number(4,3,Speed_set);
            
            write_6_8_string(7,3,"RSp:");     
            write_6_8_number(11,3,RealSpeed);
           
            write_6_8_string(0,4,"L_c:");   
            write_6_8_number(4,4,Left_cnt);
            
            write_6_8_string(7,4,"R_c:");      //�����У����ٶȼ�ֵ
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
      
             write_6_8_string(1,0,"ACCE:");    //���ٶȼƾ�ֵ̬
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

/**************************************ˢ������ʾʱ�����*********************************/
void redraw()
{    uint8 i;

  //if(page_num==0&&redraw_control==0)     //��һҳ
     if(page_num==0)     //��һҳ
     {
        LCD_clear_L(0,0);
        write_6_8_number(0,0,Pixel[15]); 
        write_6_8_number(5,0,Pixel[64]); 
        write_6_8_number(10,0,Pixel[120]);
        
        LCD_clear_L(8,1);
        write_6_8_number(7,1,w);    //�ڶ��У����ٶ� 
           
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
     if(page_num==1)     //�ڶ�ҳ
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
     if(page_num==2)     //����ҳ
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



/*********************************�޸ı�����ֵ***********************************/
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
                     ����ɨ�躯��
*****************************************************/

void KeyScan(void)
{                  
 //if(scan_control==0)        //ѭ��ɨ��
  //{
  
  /////////////////////////////////////////////////////����
  if(!change_page)  //�����⵽�͵�ƽ��˵����������
    {
      DelayMs(10); //��ʱȥ����һ��10-20ms
     if(!change_page)     //�ٴ�ȷ�ϰ����Ƿ��£�û�а������˳�
	     {
       while(!change_page);//���ȷ�ϰ��°����ȴ������ͷţ�û���ͷ���һֱ�ȴ�
	           
		   if(page_num<3)    //ҳ��żӲ���
	         page_num++;
		   else
		       page_num=0;
		   
		   line_num=0;
		   pre_show();

	     }  
     }
    

 if(page_num!=0&&page_num!=1)     //�粻Ϊ��һҳ���������һ��ɨ��
 {
  /////////////////////////////////////////////////////����
  if(!change_line)  //�����⵽�͵�ƽ��˵����������
    {
	   DelayMs(10); //��ʱȥ����һ��10-20ms
     if(!change_line)     //�ٴ�ȷ�ϰ����Ƿ��£�û�а������˳�
	     {
       while(!change_line);//���ȷ�ϰ��°����ȴ������ͷţ�û���ͷ���һֱ�ȴ�
	     
	     if(page_num!=0)
	        write_6_8_char(0,line_num,' ');
	           
		   if(line_num<5)    //����żӲ���
	         line_num++;
		   else
		       line_num=0;
		   
		   if(page_num!=0)
	        write_6_8_char(0,line_num,'*');
	     } 
	     
   }
/*��Ӧ������ʮ*/

 if(!Add_10)  //�����⵽�͵�ƽ��˵����������
    {
	 DelayMs(10); //��ʱȥ����һ��10-20ms
     if(!Add_10)     //�ٴ�ȷ�ϰ����Ƿ��£�û�а������˳�
	   {
      while(!Add_10);//���ȷ�ϰ��°����ȴ������ͷţ�û���ͷ���һֱ�ȴ�
        change_value(page_num,line_num,10);
	   }
	  }
/*��Ӧ������һ*/
if(!Add_1)  
    {
	 DelayMs(10); 
     if(!Add_1)
	   {
        while(!Add_1);
        change_value(page_num,line_num,1);  
	   }
	  }
/*��Ӧ������һ*/
if(!Sub_1)
   {
  	 DelayMs(10);  
     if(!Sub_1)     
	   {
        while(!Sub_1);
        change_value(page_num,line_num,-1);
	 	 }
	  }
/*��Ӧ������ʮ*/
if(!Sub_10){
  DelayMs(10); 
  if(!Sub_10){
    while(!Sub_10);
    change_value(page_num,line_num,-10);
  }
 }
	  

 }
}