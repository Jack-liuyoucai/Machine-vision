#ifndef	_LCD_H_
#define	_LCD_H_



/******������ɫ*****/
#define RED	  0XF800
#define GREEN 0X07E0
#define BLUE  0X001F  
#define BRED  0XF81F
#define GRED  0XFFE0
#define GBLUE 0X07FF
#define BLACK 0X0000
#define WHITE 0XFFFF

//ȷ��x�ķ�ΧΪ min~max
#define Range(x,max,min)				((uint8)((x)<(min) ? (min) : ( (x)>(max) ? (max):(x) )))			
		
//��ȡRGB��3Ԫ�أ�rgb565������16λ
#define RGB565_R(rgb565)				((uint8)(((rgb565)>>11) &0x1F))								
#define RGB565_G(rgb565)				((uint8)(((rgb565)>> 5) &0x3F))
#define RGB565_B(rgb565)				((uint8)( (rgb565)      &0x1F))


#define GRAY_2_RGB565(gray)				((uint16)((((uint8)(gray)>>3)<<11)&(((uint8)(gray)>>2)<<5)&((uint8)(gray)>>3)))

#define RGB565_2_GRAY(rgb565)   		((uint8)(((RGB565_R(rgb565)*235+RGB565_G(rgb565)*613+RGB565_B(rgb565)*625)+1)>>8))	//	31*235+63*613+31*625+1  = 255*256


#define RGB565_H(rgb565)        		((uint8)(((uint16)(rgb565))>>8))
#define RGB565_L(rgb565)        		(uint8)(rgb565))



void LCD_Init(uint16 colour);

/***************  LCD�滭  ***************/
void LCD_Point		(Site_type site                            ,uint16 rgb565);   	//����
void LCD_Rectangle  (Site_type site,Size_type size             ,uint16 rgb565);   	//������
uint8   LCD_Char       (Site_type site,const uint8 ascii , uint16 Color ,uint16 bkColor);  	//��ʾ�ַ�
void LCD_Str_8x16   (Site_type site,uint8 *Str        , uint16 Color ,uint16 bkColor);  	//��ʾ�ַ���
void LCD_Str_R      (Site_type site,const uint8 *str  , uint16 Color ,uint16 bkColor);  	//��ʾ�ַ������Ҷ��룩


void LCD_Num_8x16   (Site_type site,uint32 num        , uint16 Color ,uint16 bkColor);  	//��ʾ����
#define MAX_NUM_BIT 5                                                       	//���ֵ����λ������������������Ļ�������֣�
void LCD_Num_8x16_C (Site_type site,uint32 num        , uint16 Color ,uint16 bkColor);  	//��ʾ����(���� MAX_NUM_BIT ������������Ļ�������֣������������λ���������õ����λ��ֻ��ʾ��λ������Ҫ���ú�Ŷ)

void LCD_Img_RGB565		(Site_type site,Size_type size,uint16 *img);				//ͼ����ʾ
void LCD_Img_RGB565_Z	(Site_type site,Size_type size,uint16 *img,Size_type imgsize);//ͼ����ʾ����zoom���Ź���


#define	BINARY_BGCOLOR	WHITE		//�����ֵ��ͼ�񱳾���ɫ
#define	BINARY_COLOR	BLACK		//�����ֵ��ͼ��ǰ����ɫ

void LCD_Img_Binary     (Site_type site,Size_type size,uint16 *img);                   //��ʾ��ֵ��ͼ��
void LCD_Img_Binary_Z   (Site_type site,Size_type size,uint16 *img,Size_type imgsize); //��ʾ��ֵ��ͼ��(������)

#endif