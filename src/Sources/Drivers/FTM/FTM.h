/******************** (C) COPYRIGHT 2011 野火嵌入式开发工作室 ********************
 * 文件名       ：FTM.h
 * 描述         ：包含PWM、输入捕捉函数配置头文件
 *                                                                
**********************************************************************************/

#ifndef _FTM_H_
#define _FTM_H_


void  FTM_PWM_init(void);  

void  FTM_QUAD_init(void);

void FTM1_QUAD_Iint();
void FTM2_QUAD_Iint();



#endif  //_FTM_H_



