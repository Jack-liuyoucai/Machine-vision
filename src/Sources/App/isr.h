#ifndef	__ISR_H
#define	__ISR_H 1

//#include  "include.h"
/*                          ���¶����ж�������
 *  ��ȡ��Ĭ�ϵ��ж�����Ԫ�غ궨��       #undef  VECTOR_xxx
 *  �����¶��嵽�Լ���д���жϺ���       #define VECTOR_xxx    xxx_IRQHandler
 *  ���磺
 *       #undef  VECTOR_003
 *       #define VECTOR_003    HardFault_Handler    ���¶���Ӳ���Ϸ��жϷ�����
 */
//#undef	VECTOR_061
//#define	VECTOR_061 uart0_isr


//extern void uart0_isr();  //��������isr.c���涨��
//extern void PIT0_isr();       


#undef	VECTOR_061
#define	VECTOR_061 uart0_isr

//#undef	VECTOR_084
//#define VECTOR_084 PIT0_isr

//#undef	VECTOR_105
//#define VECTOR_105 PTC_isr

extern void uart0_isr();  //��������isr.c���涨��
//extern void PIT0_isr();
extern void PTB_isr();

#endif	//__ISR_H