///////////////////////////////////////////////////////////////////////////////
//                                                                            /
//                                                      27/Apr/2013  13:44:43 /
// IAR ANSI C/C++ Compiler V6.30.4.23288/W32 EVALUATION for ARM               /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Users\Administrator\Desktop\4.25��Ļ ��λ�� ����     /
//                    ���� ���ش���  ����\src\Sources\Drivers\spi\spi.c       /
//    Command line =  "C:\Users\Administrator\Desktop\4.25��Ļ ��λ�� ����    /
//                    ���� ���ش���  ����\src\Sources\Drivers\spi\spi.c"      /
//                    -lCN "C:\Users\Administrator\Desktop\4.25��Ļ ��λ��    /
//                    ���� ���� ���ش���  ����\RAM\List\" -lB                 /
//                    "C:\Users\Administrator\Desktop\4.25��Ļ ��λ�� ����    /
//                    ���� ���ش���  ����\RAM\List\" -o                       /
//                    "C:\Users\Administrator\Desktop\4.25��Ļ ��λ�� ����    /
//                    ���� ���ش���  ����\RAM\Obj\" --no_cse --no_unroll      /
//                    --no_inline --no_code_motion --no_tbaa --no_clustering  /
//                    --no_scheduling --debug --endian=little                 /
//                    --cpu=Cortex-M4 -e --fpu=None --dlib_config             /
//                    "D:\Program Files\IAR Systems\Embedded Workbench 6.0    /
//                    Evaluation\arm\INC\c\DLib_Config_Normal.h" -I           /
//                    "C:\Users\Administrator\Desktop\4.25��Ļ ��λ�� ����    /
//                    ���� ���ش���  ����\src\Sources\Cpu\" -I                /
//                    "C:\Users\Administrator\Desktop\4.25��Ļ ��λ�� ����    /
//                    ���� ���ش���  ����\src\Sources\App\" -I                /
//                    "C:\Users\Administrator\Desktop\4.25��Ļ ��λ�� ����    /
//                    ���� ���ش���  ����\src\Sources\Drivers\adc\" -I        /
//                    "C:\Users\Administrator\Desktop\4.25��Ļ ��λ�� ����    /
//                    ���� ���ش���  ����\src\Sources\Drivers\delay\" -I      /
//                    "C:\Users\Administrator\Desktop\4.25��Ļ ��λ�� ����    /
//                    ���� ���ش���  ����\src\Sources\Drivers\FTM\" -I        /
//                    "C:\Users\Administrator\Desktop\4.25��Ļ ��λ�� ����    /
//                    ���� ���ش���  ����\src\Sources\Drivers\gpio\" -I       /
//                    "C:\Users\Administrator\Desktop\4.25��Ļ ��λ�� ����    /
//                    ���� ���ش���  ����\src\Sources\Drivers\lptmr\" -I      /
//                    "C:\Users\Administrator\Desktop\4.25��Ļ ��λ�� ����    /
//                    ���� ���ش���  ����\src\Sources\Drivers\mcg\" -I        /
//                    "C:\Users\Administrator\Desktop\4.25��Ļ ��λ�� ����    /
//                    ���� ���ش���  ����\src\Sources\Drivers\PIT\" -I        /
//                    "C:\Users\Administrator\Desktop\4.25��Ļ ��λ�� ����    /
//                    ���� ���ش���  ����\src\Sources\Drivers\uart\" -I       /
//                    "C:\Users\Administrator\Desktop\4.25��Ļ ��λ�� ����    /
//                    ���� ���ش���  ����\src\Sources\Drivers\oled\" -I       /
//                    "C:\Users\Administrator\Desktop\4.25��Ļ ��λ�� ����    /
//                    ���� ���ش���  ����\src\Sources\Drivers\spi\" -On       /
//                    --use_c++_inline                                        /
//    List file    =  C:\Users\Administrator\Desktop\4.25��Ļ ��λ�� ����     /
//                    ���� ���ش���  ����\RAM\List\spi.s                      /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME spi

        #define SHT_PROGBITS 0x1

        EXTERN disable_irq
        EXTERN enable_irq

        PUBLIC SPIN
        PUBLIC spi_WR
        PUBLIC spi_init
        PUBLIC spi_irq_DIS
        PUBLIC spi_irq_EN
        PUBLIC spi_re
        PUBLIC spi_re_max
        PUBLIC spi_send

// C:\Users\Administrator\Desktop\4.25��Ļ ��λ�� ���� ���� ���ش���  ����\src\Sources\Drivers\spi\spi.c
//    1 #include "common.h"
//    2 #include "spi.h"
//    3 #include "lptmr.h"
//    4 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//    5 volatile struct SPI_MemMap *SPIN[3]={SPI0_BASE_PTR,SPI1_BASE_PTR,SPI2_BASE_PTR}; //��������ָ�����鱣�� SPIx �ĵ�ַ
SPIN:
        DATA
        DC32 4002C000H, 4002D000H, 400AC000H
//    6 
//    7 
//    8 //=========================================================================
//    9 //�������ƣ�spi_init
//   10 //����������spin��SPIͨ���š�
//   11 //          Master:�Ƿ���������
//   12 //�������أ���
//   13 //���ܸ�Ҫ��SPI��ʼ����
//   14 //=========================================================================

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   15 void spi_init(SPIn spin,SPI_CFG master)
//   16 {
//   17     
//   18     //ʹ��SPIģ��ʱ�ӣ�����SPI���Ź���
//   19     if(spin == 0)
spi_init:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??spi_init_0
//   20     {
//   21         SIM_SCGC6 |= SIM_SCGC6_DSPI0_MASK;
        LDR.W    R2,??DataTable6  ;; 0x4004803c
        LDR      R2,[R2, #+0]
        ORRS     R2,R2,#0x1000
        LDR.W    R3,??DataTable6  ;; 0x4004803c
        STR      R2,[R3, #+0]
//   22         //PORTA_PCR14 = 0 | PORT_PCR_MUX(0x2) | PORT_PCR_DSE_MASK;//PCS0   //DSE=1:���ʱ����������
//   23         PORTA_PCR15 = 0 | PORT_PCR_MUX(0x2) | PORT_PCR_DSE_MASK;//SCK
        LDR.W    R2,??DataTable6_1  ;; 0x4004903c
        MOV      R3,#+576
        STR      R3,[R2, #+0]
//   24         PORTA_PCR16 = 0 | PORT_PCR_MUX(0x2) | PORT_PCR_DSE_MASK;//SOUT
        LDR.W    R2,??DataTable6_2  ;; 0x40049040
        MOV      R3,#+576
        STR      R3,[R2, #+0]
//   25         PORTA_PCR17 = 0 | PORT_PCR_MUX(0x2);//SIN
        LDR.W    R2,??DataTable6_3  ;; 0x40049044
        MOV      R3,#+512
        STR      R3,[R2, #+0]
        B.N      ??spi_init_1
//   26     }
//   27     else if(spin == 1)
??spi_init_0:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+1
        BNE.N    ??spi_init_2
//   28     {
//   29         SIM_SCGC6 |= SIM_SCGC6_SPI1_MASK;
        LDR.W    R2,??DataTable6  ;; 0x4004803c
        LDR      R2,[R2, #+0]
        ORRS     R2,R2,#0x2000
        LDR.W    R3,??DataTable6  ;; 0x4004803c
        STR      R2,[R3, #+0]
//   30         PORTE_PCR1 = 0 | PORT_PCR_MUX(0x2) | PORT_PCR_DSE_MASK; //SOUT
        LDR.W    R2,??DataTable6_4  ;; 0x4004d004
        MOV      R3,#+576
        STR      R3,[R2, #+0]
//   31         PORTE_PCR2 = 0 | PORT_PCR_MUX(0x2) | PORT_PCR_DSE_MASK; //SCK
        LDR.W    R2,??DataTable6_5  ;; 0x4004d008
        MOV      R3,#+576
        STR      R3,[R2, #+0]
//   32         PORTE_PCR3 = 0 | PORT_PCR_MUX(0x2);                     //SIN
        LDR.W    R2,??DataTable6_6  ;; 0x4004d00c
        MOV      R3,#+512
        STR      R3,[R2, #+0]
//   33         PORTE_PCR4 = 0 | PORT_PCR_MUX(0x2) | PORT_PCR_DSE_MASK; //PCS0
        LDR.W    R2,??DataTable6_7  ;; 0x4004d010
        MOV      R3,#+576
        STR      R3,[R2, #+0]
        B.N      ??spi_init_1
//   34     }
//   35     else 
//   36     {   
//   37         SIM_SCGC3 |= SIM_SCGC3_SPI2_MASK;
??spi_init_2:
        LDR.W    R2,??DataTable6_8  ;; 0x40048030
        LDR      R2,[R2, #+0]
        ORRS     R2,R2,#0x1000
        LDR.W    R3,??DataTable6_8  ;; 0x40048030
        STR      R2,[R3, #+0]
//   38         PORTD_PCR13 = 0 | PORT_PCR_MUX(0x2) | PORT_PCR_DSE_MASK; //SOUT
        LDR.W    R2,??DataTable6_9  ;; 0x4004c034
        MOV      R3,#+576
        STR      R3,[R2, #+0]
//   39         PORTD_PCR12 = 0 | PORT_PCR_MUX(0x2) | PORT_PCR_DSE_MASK; //SCK
        LDR.W    R2,??DataTable6_10  ;; 0x4004c030
        MOV      R3,#+576
        STR      R3,[R2, #+0]
//   40         PORTD_PCR14 = 0 | PORT_PCR_MUX(0x2)/* | PORT_PCR_DSE_MASK*/;                     //SIN
        LDR.W    R2,??DataTable6_11  ;; 0x4004c038
        MOV      R3,#+512
        STR      R3,[R2, #+0]
//   41         //PORTD_PCR15 = 0 | PORT_PCR_MUX(0x2)/* | PORT_PCR_DSE_MASK*/; //PCS1     
//   42     }
//   43     
//   44     SPI_MCR_REG(SPIN[spin]) = 0 
//   45                  | SPI_MCR_CLR_TXF_MASK     //Clear the Tx FIFO counter.
//   46                  | SPI_MCR_CLR_RXF_MASK     //Clear the Rx FIFO counter.
//   47                  //| SPI_MCR_PCSIS_MASK
//   48                  | SPI_MCR_HALT_MASK;
??spi_init_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R2,??DataTable6_12
        LDR      R2,[R2, R0, LSL #+2]
        MOVW     R3,#+3073
        STR      R3,[R2, #+0]
//   49 
//   50     
//   51     //�������ӻ�ģʽ���ù���ģʽ��MCU�ṩ�������Ƶ����1/2��Ƶ�����ӻ�Ƶ����1/4��Ƶ
//   52     if(master == MASTER)
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BNE.N    ??spi_init_3
//   53     {
//   54         SPI_MCR_REG(SPIN[spin]) =  (0
//   55                                     |  SPI_MCR_MSTR_MASK //Master,����ģʽ
//   56                                    // |   SPI_MCR_PCSIS(2) //PCS1
//   57                                     );      
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R2,??DataTable6_12
        LDR      R2,[R2, R0, LSL #+2]
        MOVS     R3,#-2147483648
        STR      R3,[R2, #+0]
//   58         SPI_CTAR_REG(SPIN[spin],0) = (0
//   59                        //| SPI_CTAR_DBR_MASK          //˫������ �������� DBR=1��CPHA=1��PBR=00����SCK Duty Cycle Ϊ 50/50
//   60                        //| SPI_CTAR_CPHA_MASK         //������SCK�����ظı䣨����������½��ر���׽�������ȡ���������0����֮��  w25x16�������ض�ȡ���ݣ�NRF24L01�������ض�ȡ����
//   61                         | SPI_CTAR_PBR(1)            //�����ʷ�Ƶ�� ��0~3 ��Ӧ�ķ�ƵֵPrescalerΪ 2��3��5��7
//   62                          
//   63                         | SPI_CTAR_PDT(0x00)         //��ʱ����Ϊ PDT*2+1 ������PDTΪ3������ʱ����Ϊ7��PDTΪ2bit
//   64                         | SPI_CTAR_BR(0)             //�����ʼ�����ֵ ,��BR<=3,��ƵScaler Ϊ 2*��BR+1�� ����BR>=3����ƵScaler Ϊ 2^BR  ��BRΪ4bit
//   65                                                     //SCK ������ = (fSYS/Prescaler) x [(1+DBR)/Scaler ]          fSYS Ϊ Bus clock
//   66                                                     //              100M  2          1    2   = 50M   ��������������
//   67                                                     //              100M   5          1    2   =20M
//   68                          
//   69                        //| SPI_CTAR_CPOL_MASK         //ʱ�Ӽ��ԣ�1��ʾ SCK ����Ծ״̬Ϊ�ߵ�ƽ,   NRF24L01 ����ԾΪ�͵�ƽ
//   70                         | SPI_CTAR_FMSZ(0x07)        //ÿ֡���� 7bit+1 ����8bit ��FMSZĬ�Ͼ���8��  
//   71                       // | SPI_CTAR_LSBFE_MASK        //1Ϊ��λ��ǰ��
//   72                         //| SPI_CTAR_CSSCK(1)          //
//   73                         //|SPI_CTAR_PCSSCK(2)         //����Ƭѡ�ź���Ч��ʱ�ӵ�һ�����س��ֵ���ʱ��Ԥ��Ƶֵ��tcsc��ʱԤ��Ƶ 2*x+1��
//   74                        ); 
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R2,??DataTable6_12
        LDR      R2,[R2, R0, LSL #+2]
        LDR.N    R3,??DataTable6_13  ;; 0x38010000
        STR      R3,[R2, #+12]
        B.N      ??spi_init_4
//   75                         //LSBFE Ϊ 0 ��������ǰ
//   76     }
//   77     else
//   78     {
//   79         //Ĭ�ϴӻ�ģʽ
//   80         SPI_CTAR_SLAVE_REG(SPIN[spin],0) = 0 
//   81                             | SPI_CTAR_SLAVE_FMSZ(0x07)
//   82                             | SPI_CTAR_SLAVE_CPOL_MASK 
//   83                             | SPI_CTAR_SLAVE_CPHA_MASK; 
??spi_init_3:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R2,??DataTable6_12
        LDR      R2,[R2, R0, LSL #+2]
        MOVS     R3,#+1040187392
        STR      R3,[R2, #+12]
//   84    }
//   85     //DELAY_MS(100);
//   86    /*************  ���־λ  ***************/
//   87     SPI_SR_REG(SPIN[spin]) = (SPI_SR_EOQF_MASK     //End of Queue Flag�����Ͷ��п��ˣ��������
//   88                          | SPI_SR_TFUF_MASK     //Transmit FIFO Underflow Flag������FIFO�����־λ��SPIΪ�ӻ�ģʽ��Tx FIFOΪ�գ����ⲿSPI����ģʽ�������䣬��־λ�ͻ���1��д1��0
//   89                          | SPI_SR_TFFF_MASK     //Transmit FIFO Fill Flag������FIFO����־λ�� д1����DMA���������ִ���FIFO���˾ͻ���0�� 0��ʾTx FIFO����
//   90                          | SPI_SR_RFOF_MASK     //Receive FIFO Overflow Flag������FIFO�����־λ��
//   91                          | SPI_SR_RFDF_MASK);   //Receive FIFO Drain Flag������FIFO��ı�־λ��д1����DMA���������ִ���FIFO���˾ͻ���0��0��ʾRx FIFO��
??spi_init_4:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R2,??DataTable6_12
        LDR      R2,[R2, R0, LSL #+2]
        LDR.N    R3,??DataTable6_14  ;; 0x1a0a0000
        STR      R3,[R2, #+44]
//   92     
//   93     
//   94     SPI_MCR_REG(SPIN[spin]) &= ~SPI_MCR_HALT_MASK;     //����SPI���䡣1Ϊ��ͣ��0Ϊ����
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R2,??DataTable6_12
        LDR      R2,[R2, R0, LSL #+2]
        LDR      R2,[R2, #+0]
        LSRS     R2,R2,#+1
        LSLS     R2,R2,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R3,??DataTable6_12
        LDR      R3,[R3, R0, LSL #+2]
        STR      R2,[R3, #+0]
//   95     
//   96 //    DELAY_MS(1);
//   97 }
        BX       LR               ;; return
//   98 
//   99 
//  100 //=========================================================================
//  101 //�������ƣ�spi_send
//  102 //����������spin��SPIͨ���š�
//  103 //          data[]����Ҫ���͵����ݡ�
//  104 //          len�����ݳ��ȡ�
//  105 //�������أ���
//  106 //���ܸ�Ҫ��SPI�������ݡ�
//  107 //=========================================================================

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  108 void spi_send(SPIn spin,uint8 data[],uint32 len)
//  109 {
spi_send:
        PUSH     {R4-R6}
//  110     uint32 i = 0;
        MOVS     R3,#+0
//  111     uint8 temp;
//  112     SPI_TX_WAIT(spin);
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R5,??DataTable6_12
        LDR      R5,[R5, R0, LSL #+2]
        LDR      R5,[R5, #+44]
//  113 
//  114     do
//  115     {
//  116         /*************  ���־λ  ***************/
//  117         SPI_SR_REG(SPIN[spin]) = (SPI_SR_EOQF_MASK
//  118                                 | SPI_SR_TFUF_MASK
//  119                                 | SPI_SR_TFFF_MASK
//  120                                 | SPI_SR_RFOF_MASK
//  121                                 | SPI_SR_RFDF_MASK
//  122                                 );
??spi_send_0:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R5,??DataTable6_12
        LDR      R5,[R5, R0, LSL #+2]
        LDR.N    R6,??DataTable6_14  ;; 0x1a0a0000
        STR      R6,[R5, #+44]
//  123     
//  124         /************** ��FIFO������ **************/
//  125         SPI_MCR_REG(SPIN[spin])    |=  (SPI_MCR_CLR_TXF_MASK     //Clear TX FIFO.д1�� Tx FIFO counter
//  126                                    |SPI_MCR_CLR_RXF_MASK     //Clear RX FIFO. д1�� the Rx FIFO counter.
//  127                                    );
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R5,??DataTable6_12
        LDR      R5,[R5, R0, LSL #+2]
        LDR      R5,[R5, #+0]
        ORRS     R5,R5,#0xC00
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R6,??DataTable6_12
        LDR      R6,[R6, R0, LSL #+2]
        STR      R5,[R6, #+0]
//  128         //SPI_SR_REG(SPIN[spin]) |= SPI_SR_RFDF_MASK;
//  129     }while( (SPI_SR_REG(SPIN[spin]) & SPI_SR_RFDF_MASK));   //��� Rx FIFO �ǿգ�����FIFO.
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R5,??DataTable6_12
        LDR      R5,[R5, R0, LSL #+2]
        LDR      R5,[R5, #+44]
        LSLS     R5,R5,#+14
        BMI.N    ??spi_send_0
//  130 
//  131     /***************** ����len-1������ *******************/                                                ;
//  132     for(i = 0;i < (len-1);i++)
        MOVS     R5,#+0
        MOVS     R3,R5
??spi_send_1:
        SUBS     R5,R2,#+1
        CMP      R3,R5
        BCS.N    ??spi_send_2
//  133     {
//  134         //DELAY_MS(1); 
//  135         SPI_PUSHR_REG(SPIN[spin]) = 0 
//  136                                 | SPI_PUSHR_CONT_MASK   //Continuous Peripheral Chip Select Enable��1Ϊ �����ڼ䱣��PCSn�ź� ����������������
//  137                                 | SPI_PUSHR_CTAS(0)
//  138                                 | SPI_PUSHR_TXDATA(data[i]);    //Ҫ���������
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R5,??DataTable6_12
        LDR      R5,[R5, R0, LSL #+2]
        LDRB     R6,[R3, R1]
        ORRS     R6,R6,#0x80000000
        STR      R6,[R5, #+52]
//  139         
//  140         while( !(SPI_SR_REG(SPIN[spin]) & SPI_SR_RFDF_MASK));    //RFDFΪ1��Rx FIFO is not empty.
??spi_send_3:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R5,??DataTable6_12
        LDR      R5,[R5, R0, LSL #+2]
        LDR      R5,[R5, #+44]
        LSLS     R5,R5,#+14
        BPL.N    ??spi_send_3
//  141         temp = (uint8)SPI_POPR_REG(SPIN[spin]);    //��ȡһ�ν��յ�����    
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R5,??DataTable6_12
        LDR      R5,[R5, R0, LSL #+2]
        LDR      R5,[R5, #+56]
        MOVS     R4,R5
//  142         SPI_SR_REG(SPIN[spin]) |= SPI_SR_RFDF_MASK;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R5,??DataTable6_12
        LDR      R5,[R5, R0, LSL #+2]
        LDR      R5,[R5, #+44]
        ORRS     R5,R5,#0x20000
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R6,??DataTable6_12
        LDR      R6,[R6, R0, LSL #+2]
        STR      R5,[R6, #+44]
//  143     }
        ADDS     R3,R3,#+1
        B.N      ??spi_send_1
//  144 
//  145     /***************** �������һ������ *******************/    
//  146     SPI_PUSHR_REG(SPIN[spin]) = 0 
//  147                    | SPI_PUSHR_CTAS(0)
//  148                    | SPI_PUSHR_EOQ_MASK         //End Of Queue��1Ϊ ����SPI��������
//  149                    | SPI_PUSHR_TXDATA(data[i]); 
??spi_send_2:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R5,??DataTable6_12
        LDR      R5,[R5, R0, LSL #+2]
        LDRB     R6,[R3, R1]
        ORRS     R6,R6,#0x8000000
        STR      R6,[R5, #+52]
//  150     
//  151     SPI_EOQF_WAIT(spin);    //Ҫ��ʱ��RX FIFO�Ķ����������Ȼ��������޵ȴ�
??spi_send_4:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R5,??DataTable6_12
        LDR      R5,[R5, R0, LSL #+2]
        LDR      R5,[R5, #+44]
        LSLS     R5,R5,#+3
        BPL.N    ??spi_send_4
//  152     
//  153     while( !(SPI_SR_REG(SPIN[spin]) & SPI_SR_RFDF_MASK));    //RFDFΪ1��Rx FIFO is not empty.
??spi_send_5:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R5,??DataTable6_12
        LDR      R5,[R5, R0, LSL #+2]
        LDR      R5,[R5, #+44]
        LSLS     R5,R5,#+14
        BPL.N    ??spi_send_5
//  154     temp = (uint8)SPI_POPR_REG(SPIN[spin]);    //��ȡһ�ν��յ�����          
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R5,??DataTable6_12
        LDR      R5,[R5, R0, LSL #+2]
        LDR      R5,[R5, #+56]
        MOVS     R4,R5
//  155     //SPI_SR_REG(SPIN[spin]) |= SPI_SR_RFDF_MASK;
//  156     
//  157 
//  158 }
        POP      {R4-R6}
        BX       LR               ;; return
//  159 
//  160 //=========================================================================
//  161 //�������ƣ�spi_send
//  162 //����������spin��SPIͨ���š�
//  163 //          data[]����Ҫ���͵����ݡ�
//  164 //          len�����ݳ��ȡ�
//  165 //�������أ���
//  166 //���ܸ�Ҫ��SPI�������ݡ�
//  167 //=========================================================================

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  168 void spi_WR(SPIn spin,uint8* data,uint32 len)
//  169 {
spi_WR:
        PUSH     {R4,R5}
//  170     uint32 i = 0;
        MOVS     R3,#+0
//  171 
//  172     SPI_TX_WAIT(spin);
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R4,??DataTable6_12
        LDR      R4,[R4, R0, LSL #+2]
        LDR      R4,[R4, #+44]
//  173     
//  174     do
//  175     {
//  176         /*************  ���־λ  ***************/
//  177         SPI_SR_REG(SPIN[spin]) = (SPI_SR_EOQF_MASK
//  178                                 | SPI_SR_TFUF_MASK
//  179                                 | SPI_SR_TFFF_MASK
//  180                                 | SPI_SR_RFOF_MASK
//  181                                 | SPI_SR_RFDF_MASK
//  182                                 );
??spi_WR_0:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R4,??DataTable6_12
        LDR      R4,[R4, R0, LSL #+2]
        LDR.N    R5,??DataTable6_14  ;; 0x1a0a0000
        STR      R5,[R4, #+44]
//  183     
//  184         /************** ��FIFO������ **************/
//  185         SPI_MCR_REG(SPIN[spin])    |=  (SPI_MCR_CLR_TXF_MASK     //Clear TX FIFO.д1�� Tx FIFO counter
//  186                                    |SPI_MCR_CLR_RXF_MASK     //Clear RX FIFO. д1�� the Rx FIFO counter.
//  187                                    );        
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R4,??DataTable6_12
        LDR      R4,[R4, R0, LSL #+2]
        LDR      R4,[R4, #+0]
        ORRS     R4,R4,#0xC00
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R5,??DataTable6_12
        LDR      R5,[R5, R0, LSL #+2]
        STR      R4,[R5, #+0]
//  188     }while( (SPI_SR_REG(SPIN[spin]) & SPI_SR_RFDF_MASK));   //��� Rx FIFO �ǿգ�����FIFO.
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R4,??DataTable6_12
        LDR      R4,[R4, R0, LSL #+2]
        LDR      R4,[R4, #+44]
        LSLS     R4,R4,#+14
        BMI.N    ??spi_WR_0
//  189     
//  190     
//  191     /***************** ����len-1������ *******************/  
//  192     for(i = 0;i < (len-1);i++)
        MOVS     R4,#+0
        MOVS     R3,R4
??spi_WR_1:
        SUBS     R4,R2,#+1
        CMP      R3,R4
        BCS.N    ??spi_WR_2
//  193     {
//  194         SPI_PUSHR_REG(SPIN[spin]) = 0 
//  195                                 | SPI_PUSHR_CONT_MASK   //Continuous Peripheral Chip Select Enable��1Ϊ �����ڼ䱣��PCSn�ź� ����������������
//  196                                 | SPI_PUSHR_CTAS(0)
//  197                                 | SPI_PUSHR_TXDATA(data[i]);    //Ҫ���������
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R4,??DataTable6_12
        LDR      R4,[R4, R0, LSL #+2]
        LDRB     R5,[R3, R1]
        ORRS     R5,R5,#0x80000000
        STR      R5,[R4, #+52]
//  198         
//  199         while( !(SPI_SR_REG(SPIN[spin]) & SPI_SR_RFDF_MASK));    //RFDFΪ1��Rx FIFO is not empty.
??spi_WR_3:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R4,??DataTable6_12
        LDR      R4,[R4, R0, LSL #+2]
        LDR      R4,[R4, #+44]
        LSLS     R4,R4,#+14
        BPL.N    ??spi_WR_3
//  200         data[i] = (uint8)SPI_POPR_REG(SPIN[spin]);    //������յ������� 
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R4,??DataTable6_12
        LDR      R4,[R4, R0, LSL #+2]
        LDR      R4,[R4, #+56]
        STRB     R4,[R3, R1]
//  201         SPI_SR_REG(SPIN[spin]) |= SPI_SR_RFDF_MASK;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R4,??DataTable6_12
        LDR      R4,[R4, R0, LSL #+2]
        LDR      R4,[R4, #+44]
        ORRS     R4,R4,#0x20000
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R5,??DataTable6_12
        LDR      R5,[R5, R0, LSL #+2]
        STR      R4,[R5, #+44]
//  202     }
        ADDS     R3,R3,#+1
        B.N      ??spi_WR_1
//  203     
//  204     /***************** �������һ������ *******************/    
//  205     SPI_PUSHR_REG(SPIN[spin]) = 0 
//  206                    | SPI_PUSHR_CTAS(0)
//  207                    | SPI_PUSHR_EOQ_MASK         //End Of Queue��1Ϊ ����SPI��������
//  208                    | SPI_PUSHR_TXDATA(data[i]); 
??spi_WR_2:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R4,??DataTable6_12
        LDR      R4,[R4, R0, LSL #+2]
        LDRB     R5,[R3, R1]
        ORRS     R5,R5,#0x8000000
        STR      R5,[R4, #+52]
//  209     
//  210     while( !(SPI_SR_REG(SPIN[spin]) & SPI_SR_RFDF_MASK));    //RFDFΪ1��Rx FIFO is not empty.
??spi_WR_4:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R4,??DataTable6_12
        LDR      R4,[R4, R0, LSL #+2]
        LDR      R4,[R4, #+44]
        LSLS     R4,R4,#+14
        BPL.N    ??spi_WR_4
//  211     data[i] = (uint8)SPI_POPR_REG(SPIN[spin]);    //������յ�������            
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R4,??DataTable6_12
        LDR      R4,[R4, R0, LSL #+2]
        LDR      R4,[R4, #+56]
        STRB     R4,[R3, R1]
//  212 
//  213     SPI_EOQF_WAIT(spin);        //Ҫ��ʱ��RX FIFO�Ķ����������Ȼ��������޵ȴ�
??spi_WR_5:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R4,??DataTable6_12
        LDR      R4,[R4, R0, LSL #+2]
        LDR      R4,[R4, #+44]
        LSLS     R4,R4,#+3
        BPL.N    ??spi_WR_5
//  214 }
        POP      {R4,R5}
        BX       LR               ;; return
//  215 
//  216 //=========================================================================
//  217 //�������ƣ�spi_re
//  218 //����������spin��SPIͨ���š�
//  219 //          data[]����Ҫ���յ����ݡ�
//  220 //�������أ����ؽ��յ��ֽڵĳ���
//  221 //���ܸ�Ҫ��SPI�������ݡ�
//  222 //=========================================================================

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  223 uint32 spi_re_max(SPIn spin,uint8 data[],uint32 maxlen)
//  224 {
spi_re_max:
        PUSH     {R4,R5}
        MOVS     R3,R0
//  225     uint32   n=0;
        MOVS     R0,#+0
//  226 
//  227     while(SPI_SR_REG(SPIN[spin]) & SPI_SR_RFDF_MASK)    //RFDFΪ1��Rx FIFO is not empty.
??spi_re_max_0:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LDR.N    R4,??DataTable6_12
        LDR      R4,[R4, R3, LSL #+2]
        LDR      R4,[R4, #+44]
        LSLS     R4,R4,#+14
        BPL.N    ??spi_re_max_1
//  228     {
//  229         data[n++] = (uint8)SPI_POPR_REG(SPIN[spin]);    //������յ�������            
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LDR.N    R4,??DataTable6_12
        LDR      R4,[R4, R3, LSL #+2]
        LDR      R4,[R4, #+56]
        STRB     R4,[R0, R1]
        ADDS     R0,R0,#+1
//  230         SPI_SR_REG(SPIN[spin]) |= SPI_SR_RFDF_MASK;
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LDR.N    R4,??DataTable6_12
        LDR      R4,[R4, R3, LSL #+2]
        LDR      R4,[R4, #+44]
        ORRS     R4,R4,#0x20000
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LDR.N    R5,??DataTable6_12
        LDR      R5,[R5, R3, LSL #+2]
        STR      R4,[R5, #+44]
//  231         if(n>=maxlen)
        CMP      R0,R2
        BCC.N    ??spi_re_max_0
//  232         {
//  233             break;
//  234         }
//  235     }
//  236 #if 1      
//  237     /*************  ���־λ  ***************/
//  238     SPI_SR_REG(SPIN[spin]) = (  SPI_SR_EOQF_MASK
//  239                                | SPI_SR_TFUF_MASK
//  240                                | SPI_SR_TFFF_MASK
//  241                                | SPI_SR_RFOF_MASK
//  242                                | SPI_SR_RFDF_MASK
//  243                                );
??spi_re_max_1:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LDR.N    R4,??DataTable6_12
        LDR      R4,[R4, R3, LSL #+2]
        LDR.N    R5,??DataTable6_14  ;; 0x1a0a0000
        STR      R5,[R4, #+44]
//  244     
//  245     /************** ��FIFO������ **************/
//  246     SPI_MCR_REG(SPIN[spin])  |=  (SPI_MCR_CLR_TXF_MASK     //Clear the Tx FIFO counter.
//  247                                 |SPI_MCR_CLR_RXF_MASK     //Clear the Rx FIFO counter.
//  248                                 );
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LDR.N    R4,??DataTable6_12
        LDR      R4,[R4, R3, LSL #+2]
        LDR      R4,[R4, #+0]
        ORRS     R4,R4,#0xC00
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LDR.N    R5,??DataTable6_12
        LDR      R5,[R5, R3, LSL #+2]
        STR      R4,[R5, #+0]
//  249 #endif
//  250     return n; //nΪ0����û���յ�����
        POP      {R4,R5}
        BX       LR               ;; return
//  251 }
//  252 
//  253 //=========================================================================
//  254 //�������ƣ�spi_re
//  255 //����������spin��SPIͨ���š�
//  256 //          data[]����Ҫ���յ����ݡ�
//  257 //�������أ����ؽ��յ��ֽڵĳ���
//  258 //���ܸ�Ҫ��SPI�������ݡ�
//  259 //=========================================================================

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  260 uint32 spi_re(SPIn spin,uint8 data[])
//  261 {
spi_re:
        PUSH     {R4}
        MOVS     R2,R0
//  262     uint32   n=0;
        MOVS     R0,#+0
//  263 
//  264     while(SPI_SR_REG(SPIN[spin]) & SPI_SR_RFDF_MASK)    //RFDFΪ1��Rx FIFO is not empty.
??spi_re_0:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LDR.N    R3,??DataTable6_12
        LDR      R3,[R3, R2, LSL #+2]
        LDR      R3,[R3, #+44]
        LSLS     R3,R3,#+14
        BPL.N    ??spi_re_1
//  265     {
//  266         data[n++] = (uint8)SPI_POPR_REG(SPIN[spin]);    //������յ�������            
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LDR.N    R3,??DataTable6_12
        LDR      R3,[R3, R2, LSL #+2]
        LDR      R3,[R3, #+56]
        STRB     R3,[R0, R1]
        ADDS     R0,R0,#+1
//  267         SPI_SR_REG(SPIN[spin]) |= SPI_SR_RFDF_MASK;
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LDR.N    R3,??DataTable6_12
        LDR      R3,[R3, R2, LSL #+2]
        LDR      R3,[R3, #+44]
        ORRS     R3,R3,#0x20000
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LDR.N    R4,??DataTable6_12
        LDR      R4,[R4, R2, LSL #+2]
        STR      R3,[R4, #+44]
        B.N      ??spi_re_0
//  268     }
//  269      
//  270     /*************  ���־λ  ***************/
//  271     SPI_SR_REG(SPIN[spin]) = (SPI_SR_EOQF_MASK
//  272                        | SPI_SR_TFUF_MASK
//  273                        | SPI_SR_TFFF_MASK
//  274                        | SPI_SR_RFOF_MASK
//  275                        | SPI_SR_RFDF_MASK
//  276                        );
??spi_re_1:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LDR.N    R3,??DataTable6_12
        LDR      R3,[R3, R2, LSL #+2]
        LDR.N    R4,??DataTable6_14  ;; 0x1a0a0000
        STR      R4,[R3, #+44]
//  277     
//  278     /************** ��FIFO������ **************/
//  279     SPI_MCR_REG(SPIN[spin])  |=  (SPI_MCR_CLR_TXF_MASK     //Clear the Tx FIFO counter.
//  280                                 |SPI_MCR_CLR_RXF_MASK     //Clear the Rx FIFO counter.
//  281                                 );
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LDR.N    R3,??DataTable6_12
        LDR      R3,[R3, R2, LSL #+2]
        LDR      R3,[R3, #+0]
        ORRS     R3,R3,#0xC00
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LDR.N    R4,??DataTable6_12
        LDR      R4,[R4, R2, LSL #+2]
        STR      R3,[R4, #+0]
//  282 
//  283     return n; //nΪ0����û���յ�����
        POP      {R4}
        BX       LR               ;; return
//  284 }
//  285     
//  286 
//  287 /*************************************************************************
//  288 *                             Ұ��Ƕ��ʽ����������
//  289 *  
//  290 *  �������ƣ�spi_irq_EN
//  291 *  ����˵������SPI�ж�
//  292 *  ����˵����SPIn       ģ��ţ�SPI0~SPI2��
//  293 *  �������أ���
//  294 *  �޸�ʱ�䣺2012-1-20
//  295 *  ��    ע��
//  296 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  297 void spi_irq_EN(SPIn spin)
//  298 {
spi_irq_EN:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  299   SPI_RSER_REG(SPIN[spin]) |=SPI_RSER_RFDF_RE_MASK;     //����SPI�����ж� 
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable6_12
        LDR      R0,[R0, R4, LSL #+2]
        LDR      R0,[R0, #+48]
        ORRS     R0,R0,#0x20000
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R1,??DataTable6_12
        LDR      R1,[R1, R4, LSL #+2]
        STR      R0,[R1, #+48]
//  300   enable_irq(spin+26);			                //���������ŵ�IRQ�ж�
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADDS     R0,R4,#+26
        BL       enable_irq
//  301 }
        POP      {R4,PC}          ;; return
//  302 
//  303 /*************************************************************************
//  304 *                             Ұ��Ƕ��ʽ����������
//  305 *  
//  306 *  �������ƣ�spi_irq_DIS
//  307 *  ����˵���������ڽ����ж�
//  308 *  ����˵����UARTn       ģ��ţ�UART0~UART5��
//  309 *  �������أ���
//  310 *  �޸�ʱ�䣺2012-1-20
//  311 *  ��    ע��
//  312 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  313 void spi_irq_DIS(SPIn spin)
//  314 {
spi_irq_DIS:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  315   SPI_RSER_REG(SPIN[spin]) &=~SPI_RSER_RFDF_RE_MASK;    //�ر�SPI�����ж�  
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable6_12
        LDR      R0,[R0, R4, LSL #+2]
        LDR      R0,[R0, #+48]
        BICS     R0,R0,#0x20000
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R1,??DataTable6_12
        LDR      R1,[R1, R4, LSL #+2]
        STR      R0,[R1, #+48]
//  316   disable_irq(spin+26);			                //���������ŵ�IRQ�ж�
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADDS     R0,R4,#+26
        BL       disable_irq
//  317 }
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6:
        DC32     0x4004803c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_1:
        DC32     0x4004903c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_2:
        DC32     0x40049040

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_3:
        DC32     0x40049044

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_4:
        DC32     0x4004d004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_5:
        DC32     0x4004d008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_6:
        DC32     0x4004d00c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_7:
        DC32     0x4004d010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_8:
        DC32     0x40048030

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_9:
        DC32     0x4004c034

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_10:
        DC32     0x4004c030

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_11:
        DC32     0x4004c038

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_12:
        DC32     SPIN

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_13:
        DC32     0x38010000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_14:
        DC32     0x1a0a0000

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
// 
//    12 bytes in section .data
// 1 014 bytes in section .text
// 
// 1 014 bytes of CODE memory
//    12 bytes of DATA memory
//
//Errors: none
//Warnings: 1