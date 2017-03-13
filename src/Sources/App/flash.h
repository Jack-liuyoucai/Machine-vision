/******************** 武汉大学 智能车 第八届 2013 ********************
 * 文件名       ：flash.h
 * 描述         ：flash驱动函数   

 * 作者         ：贺凌昊
 * 备注		：从苏州大学例程修改而成
**********************************************************************************/

#ifndef _FLASH_H_
#define _FLASH_H_

//包含头文件
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
}Dtype;		//sizeof(Dtype)	为 4 

//Flash命令宏定义，内部使用
#define   RD1BLK    0x00   // 读整块Flash
#define   RD1SEC    0x01   // 读整个扇区
#define   PGMCHK    0x02   // 写入检查
#define   RDRSRC    0x03   // 读目标数据
#define   PGM4      0x06   // 写入长字
#define   ERSBLK    0x08   // 擦除整块Flash
#define   ERSSCR    0x09   // 擦除Flash扇区
#define   PGMSEC    0x0B   // 写入扇区
#define   RD1ALL    0x40   // 读所有的块
#define   RDONCE    0x41   // 只读一次
#define   PGMONCE   0x43   // 只写一次
#define   ERSALL    0x44   // 擦除所有块
#define   VFYKEY    0x45   // 验证后门访问钥匙
#define   PGMPART   0x80   // 写入分区
#define   SETRAM    0x81   // 设定FlexRAM功能

//=================内部函数实现=============================================
void 	flash_init();//擦除指定flash扇区
uint8 	flash_erase_sector(uint16 sectorNo);//擦除指定flash扇区
uint8 	flash_write(uint16 sectorNo,uint16 offset,uint32 data);//写入flash操作
#define	flash_read(sectorNo,offset,type)	(*(type *)((uint32)(((sectorNo)<<11) + (offset))))			//读取扇区


//==========================================================================
//函数名称：flash_cmd_launch
//函数返回：0-成功 1-失败
//参数说明：无
//功能概要：启动Flash命令
//==========================================================================
static uint32 flash_cmd_launch(void)
{
    
    FTFL_FSTAT = (0
              |	FTFL_FSTAT_CCIF_MASK 		// 启动命令
              |	FTFL_FSTAT_ACCERR_MASK 		// 清除访问错误标志位
              | FTFL_FSTAT_FPVIOL_MASK		// 非法访问标志位
              );	
    									
    while(!(FTFL_FSTAT & FTFL_FSTAT_CCIF_MASK));	// 等待命令完成

    // 检查错误标志
    if( FTFL_FSTAT & (FTFL_FSTAT_ACCERR_MASK | FTFL_FSTAT_FPVIOL_MASK | FTFL_FSTAT_MGSTAT0_MASK))
        return 1 ; 	//执行命令出错
  
    return 0; 	//执行命令成功
}
//===========================================================================

//=================外部接口函数==============================================
//==========================================================================
//函数名称：flash_init
//函数返回：无
//参数说明：无
//功能概要：初始化flash模块
//==========================================================================
void flash_init(void)
{
// 清除Flash预读取缓冲区
    FMC_PFB0CR |= FMC_PFB0CR_S_B_INV_MASK;
    FMC_PFB1CR |= FMC_PFB0CR_S_B_INV_MASK;
    
    while(!(FTFL_FSTAT & FTFL_FSTAT_CCIF_MASK));// 等待命令完成
    
    FTFL_FSTAT = (0
                  |FTFL_FSTAT_ACCERR_MASK 	// 清除访问错误标志位
                  |FTFL_FSTAT_FPVIOL_MASK	// 非法访问标志位
                  );	
}

//==========================================================================
//函数名称：flash_erase_sector
//函数返回：函数执行执行状态：0=正常；非0=异常。
//参数说明：sectorNo：扇区号（K60N512实际使用0~255）
//功能概要：擦除指定flash扇区
//==========================================================================
uint8 flash_erase_sector(uint16 sectorNo)
{
    Dtype	addr;	
    addr.DW = (uint32)(sectorNo<<11);	
    //每个扇区2KB，所以扇区地址=扇区号*2K ，这里用 <<11 表示 *2*1024 
    
    // 设置擦除命令
    FTFL_FCCOB0 = ERSSCR; // 擦除扇区命令
    
    // 设置目标地址
    FTFL_FCCOB1 = addr.B[2];
    FTFL_FCCOB2 = addr.B[1];
    FTFL_FCCOB3 = addr.B[0];
    
    // 执行命令序列
    if(1 == flash_cmd_launch())    //若执行命令出现错误
        return 1;     //擦除命令错误
   
    // 若擦除sector0时，则解锁设备
    if(sectorNo ==0)
    {
        // 写入4字节
        FTFL_FCCOB0 = PGM4; 
        // 设置目标地址
        FTFL_FCCOB1 = 0x00;
        FTFL_FCCOB2 = 0x04;
        FTFL_FCCOB3 = 0x0C;
        // 数据
        FTFL_FCCOB4 = 0xFF;
        FTFL_FCCOB5 = 0xFF;
        FTFL_FCCOB6 = 0xFF;
        FTFL_FCCOB7 = 0xFE;
        // 执行命令序列
        if(1 == flash_cmd_launch())  //若执行命令出现错误
            return 2;   //解锁命令错误
    }  
    
    return 0;  //成功返回
}

//==========================================================================
//函数名称：flash_write
//函数返回：函数执行状态：0=正常；非0=异常。
//参数说明：sectorNo：目标扇区号 （K60N512实际使用0~255）
//         offset:写入扇区内部偏移地址（0~2043）
//         data：需要写入的变量（uint32型）
//功能概要：flash写入操作
//==========================================================================
uint8 flash_write(uint16 sectorNo,uint16 offset,uint32 data)
{
    Dtype	addr;	
    Dtype	Data;
		
    addr.DW = (uint32)((sectorNo<<11) + offset);//计算地址
	Data.DW	= data;	
	    
    FTFL_FCCOB0 = PGM4;	// 设置写入命令

    FTFL_FCCOB1 = addr.B[2];// 设置目标地址
    FTFL_FCCOB2 = addr.B[1];
    FTFL_FCCOB3 = addr.B[0];


    FTFL_FCCOB4 = Data.B[3];// 设置写入数据
    FTFL_FCCOB5 = Data.B[2];
    FTFL_FCCOB6 = Data.B[1];
    FTFL_FCCOB7 = Data.B[0];
    
    if(1 == flash_cmd_launch()) 	
      return 2;  //写入命令错误

    return 0;  //成功执行
}

#endif //_FLASH_H_ 

