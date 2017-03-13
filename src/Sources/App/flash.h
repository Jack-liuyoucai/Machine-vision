/******************** �人��ѧ ���ܳ� �ڰ˽� 2013 ********************
 * �ļ���       ��flash.h
 * ����         ��flash��������   

 * ����         �������
 * ��ע		�������ݴ�ѧ�����޸Ķ���
**********************************************************************************/

#ifndef _FLASH_H_
#define _FLASH_H_

//����ͷ�ļ�
#include "common.h" 

#define u32 uint32
#define u16 uint16  
#define u8  uint8   
typedef	union
{
  u32	DW;
  u16	W[2];
  u8	B[4];
  struct
  {
    u32 b0:1; u32 b1:1; u32 b2:1; u32 b3:1; u32 b4:1; u32 b5:1; u32 b6:1; u32 b7:1; 
    u32 b8:1; u32 b9:1; u32 b10:1;u32 b11:1;u32 b12:1;u32 b13:1;u32 b14:1;u32 b15:1;
    u32 b16:1;u32 b17:1;u32 b18:1;u32 b19:1;u32 b20:1;u32 b21:1;u32 b22:1;u32 b23:1;
    u32 b24:1;u32 b25:1;u32 b26:1;u32 b27:1;u32 b28:1;u32 b29:1;u32 b30:1;u32 b31:1;
  };
}Dtype;		//sizeof(Dtype)	Ϊ 4 

//Flash����궨�壬�ڲ�ʹ��
#define   RD1BLK    0x00   // ������Flash
#define   RD1SEC    0x01   // ����������
#define   PGMCHK    0x02   // д����
#define   RDRSRC    0x03   // ��Ŀ������
#define   PGM4      0x06   // д�볤��
#define   ERSBLK    0x08   // ��������Flash
#define   ERSSCR    0x09   // ����Flash����
#define   PGMSEC    0x0B   // д������
#define   RD1ALL    0x40   // �����еĿ�
#define   RDONCE    0x41   // ֻ��һ��
#define   PGMONCE   0x43   // ֻдһ��
#define   ERSALL    0x44   // �������п�
#define   VFYKEY    0x45   // ��֤���ŷ���Կ��
#define   PGMPART   0x80   // д�����
#define   SETRAM    0x81   // �趨FlexRAM����

//=================�ڲ�����ʵ��=============================================
void 	flash_init();//����ָ��flash����
uint8 	flash_erase_sector(uint16 sectorNo);//����ָ��flash����
uint8 	flash_write(uint16 sectorNo,uint16 offset,uint32 data);//д��flash����
#define	flash_read(sectorNo,offset,type)	(*(type *)((uint32)(((sectorNo)<<11) + (offset))))			//��ȡ����


//==========================================================================
//�������ƣ�flash_cmd_launch
//�������أ�0-�ɹ� 1-ʧ��
//����˵������
//���ܸ�Ҫ������Flash����
//==========================================================================
static uint32 flash_cmd_launch(void)
{
    
    FTFL_FSTAT = (0
              |	FTFL_FSTAT_CCIF_MASK 		// ��������
              |	FTFL_FSTAT_ACCERR_MASK 		// ������ʴ����־λ
              | FTFL_FSTAT_FPVIOL_MASK		// �Ƿ����ʱ�־λ
              );	
    									
    while(!(FTFL_FSTAT & FTFL_FSTAT_CCIF_MASK));	// �ȴ��������

    // �������־
    if( FTFL_FSTAT & (FTFL_FSTAT_ACCERR_MASK | FTFL_FSTAT_FPVIOL_MASK | FTFL_FSTAT_MGSTAT0_MASK))
        return 1 ; 	//ִ���������
  
    return 0; 	//ִ������ɹ�
}
//===========================================================================

//=================�ⲿ�ӿں���==============================================
//==========================================================================
//�������ƣ�flash_init
//�������أ���
//����˵������
//���ܸ�Ҫ����ʼ��flashģ��
//==========================================================================
void flash_init(void)
{
// ���FlashԤ��ȡ������
    FMC_PFB0CR |= FMC_PFB0CR_S_B_INV_MASK;
    FMC_PFB1CR |= FMC_PFB0CR_S_B_INV_MASK;
    
    while(!(FTFL_FSTAT & FTFL_FSTAT_CCIF_MASK));// �ȴ��������
    
    FTFL_FSTAT = (0
                  |FTFL_FSTAT_ACCERR_MASK 	// ������ʴ����־λ
                  |FTFL_FSTAT_FPVIOL_MASK	// �Ƿ����ʱ�־λ
                  );	
}

//==========================================================================
//�������ƣ�flash_erase_sector
//�������أ�����ִ��ִ��״̬��0=��������0=�쳣��
//����˵����sectorNo�������ţ�K60N512ʵ��ʹ��0~255��
//���ܸ�Ҫ������ָ��flash����
//==========================================================================
uint8 flash_erase_sector(uint16 sectorNo)
{
    Dtype	addr;	
    addr.DW = (uint32)(sectorNo<<11);	
    //ÿ������2KB������������ַ=������*2K �������� <<11 ��ʾ *2*1024 
    
    // ���ò�������
    FTFL_FCCOB0 = ERSSCR; // ������������
    
    // ����Ŀ���ַ
    FTFL_FCCOB1 = addr.B[2];
    FTFL_FCCOB2 = addr.B[1];
    FTFL_FCCOB3 = addr.B[0];
    
    // ִ����������
    if(1 == flash_cmd_launch())    //��ִ��������ִ���
        return 1;     //�����������
   
    // ������sector0ʱ��������豸
    if(sectorNo ==0)
    {
        // д��4�ֽ�
        FTFL_FCCOB0 = PGM4; 
        // ����Ŀ���ַ
        FTFL_FCCOB1 = 0x00;
        FTFL_FCCOB2 = 0x04;
        FTFL_FCCOB3 = 0x0C;
        // ����
        FTFL_FCCOB4 = 0xFF;
        FTFL_FCCOB5 = 0xFF;
        FTFL_FCCOB6 = 0xFF;
        FTFL_FCCOB7 = 0xFE;
        // ִ����������
        if(1 == flash_cmd_launch())  //��ִ��������ִ���
            return 2;   //�����������
    }  
    
    return 0;  //�ɹ�����
}

//==========================================================================
//�������ƣ�flash_write
//�������أ�����ִ��״̬��0=��������0=�쳣��
//����˵����sectorNo��Ŀ�������� ��K60N512ʵ��ʹ��0~255��
//         offset:д�������ڲ�ƫ�Ƶ�ַ��0~2043��
//         data����Ҫд��ı�����uint32�ͣ�
//���ܸ�Ҫ��flashд�����
//==========================================================================
uint8 flash_write(uint16 sectorNo,uint16 offset,uint32 data)
{
    Dtype	addr;	
    Dtype	Data;
		
    addr.DW = (uint32)((sectorNo<<11) + offset);//�����ַ
	Data.DW	= data;	
	    
    FTFL_FCCOB0 = PGM4;	// ����д������

    FTFL_FCCOB1 = addr.B[2];// ����Ŀ���ַ
    FTFL_FCCOB2 = addr.B[1];
    FTFL_FCCOB3 = addr.B[0];


    FTFL_FCCOB4 = Data.B[3];// ����д������
    FTFL_FCCOB5 = Data.B[2];
    FTFL_FCCOB6 = Data.B[1];
    FTFL_FCCOB7 = Data.B[0];
    
    if(1 == flash_cmd_launch()) 	
      return 2;  //д���������

    return 0;  //�ɹ�ִ��
}

#endif //_FLASH_H_ 

