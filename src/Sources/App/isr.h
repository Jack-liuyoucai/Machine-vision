#ifndef	__ISR_H
#define	__ISR_H 1

//#include  "include.h"
/*                          重新定义中断向量表
 *  先取消默认的中断向量元素宏定义       #undef  VECTOR_xxx
 *  在重新定义到自己编写的中断函数       #define VECTOR_xxx    xxx_IRQHandler
 *  例如：
 *       #undef  VECTOR_003
 *       #define VECTOR_003    HardFault_Handler    重新定义硬件上访中断服务函数
 */
//#undef	VECTOR_061
//#define	VECTOR_061 uart0_isr


//extern void uart0_isr();  //声明，在isr.c里面定义
//extern void PIT0_isr();       


#undef	VECTOR_061
#define	VECTOR_061 uart0_isr

//#undef	VECTOR_084
//#define VECTOR_084 PIT0_isr

//#undef	VECTOR_105
//#define VECTOR_105 PTC_isr

extern void uart0_isr();  //声明，在isr.c里面定义
//extern void PIT0_isr();
extern void PTB_isr();

#endif	//__ISR_H