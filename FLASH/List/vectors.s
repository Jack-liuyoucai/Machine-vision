///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.1.7305/W32 for ARM       21/Jun/2014  20:40:02
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  L:\6.21\src\Sources\Cpu\vectors.c
//    Command line =  
//        L:\6.21\src\Sources\Cpu\vectors.c -D IAR -D TWR_K60N512 -D DEBUG -lCN
//        L:\6.21\FLASH\List\ -lB L:\6.21\FLASH\List\ -o L:\6.21\FLASH\Obj\
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4 -e --fpu=None --dlib_config
//        D:\dowload\iark60\arm\INC\c\DLib_Config_Normal.h -I
//        L:\6.21\src\Sources\Cpu\ -I L:\6.21\src\Sources\App\ -I
//        L:\6.21\src\Sources\Drivers\adc\ -I
//        L:\6.21\src\Sources\Drivers\delay\ -I
//        L:\6.21\src\Sources\Drivers\FTM\ -I L:\6.21\src\Sources\Drivers\gpio\
//        -I L:\6.21\src\Sources\Drivers\lptmr\ -I
//        L:\6.21\src\Sources\Drivers\mcg\ -I L:\6.21\src\Sources\Drivers\PIT\
//        -I L:\6.21\src\Sources\Drivers\uart\ -I
//        L:\6.21\src\Sources\Drivers\oled\ -I L:\6.21\src\Sources\Drivers\spi\
//        -On --use_c++_inline
//    List file    =  L:\6.21\FLASH\List\vectors.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN PTB_isr
        EXTERN __BOOT_STACK_ADDRESS
        EXTERN __startup
        EXTERN uart0_isr

        PUBLIC __vector_table
        PUBLIC default_isr

// L:\6.21\src\Sources\Cpu\vectors.c
//    1 //-------------------------------------------------------------------------*
//    2 // 文件名: vectors.h                                                       *
//    3 // 说  明: 中断向量表                                                      *
//    4 //-------------------------------------------------------------------------*
//    5 
//    6 #include "vectors.h"
//    7 #include "isr.h"   //只能在vectors.c中包含，而且只能在#include "vectors.h"之后
//    8 #include "common.h"
//    9 
//   10 //中断向量表
//   11 typedef void (*vector_entry)(void);
//   12 
//   13 #pragma location = ".intvec"

        SECTION `.intvec`:CONST:REORDER:NOROOT(2)
//   14 const vector_entry  __vector_table[] = //@ ".intvec" =
__vector_table:
        DATA
        DC32 __BOOT_STACK_ADDRESS, __startup, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, uart0_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 PTB_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, default_isr, default_isr, default_isr
        DC32 default_isr, default_isr, 0FFFFFFFFH, 0FFFFFFFFH, 0FFFFFFFFH
        DC32 0FFFFFFFEH
//   15 {
//   16    VECTOR_000,           //初始化SP
//   17    VECTOR_001,           //初始化PC
//   18    VECTOR_002,
//   19    VECTOR_003,
//   20    VECTOR_004,
//   21    VECTOR_005,
//   22    VECTOR_006,
//   23    VECTOR_007,
//   24    VECTOR_008,
//   25    VECTOR_009,
//   26    VECTOR_010,
//   27    VECTOR_011,
//   28    VECTOR_012,
//   29    VECTOR_013,
//   30    VECTOR_014,
//   31    VECTOR_015,
//   32    VECTOR_016,
//   33    VECTOR_017,
//   34    VECTOR_018,
//   35    VECTOR_019,
//   36    VECTOR_020,
//   37    VECTOR_021,
//   38    VECTOR_022,
//   39    VECTOR_023,
//   40    VECTOR_024,
//   41    VECTOR_025,
//   42    VECTOR_026,
//   43    VECTOR_027,
//   44    VECTOR_028,
//   45    VECTOR_029,
//   46    VECTOR_030,
//   47    VECTOR_031,
//   48    VECTOR_032,
//   49    VECTOR_033,
//   50    VECTOR_034,
//   51    VECTOR_035,
//   52    VECTOR_036,
//   53    VECTOR_037,
//   54    VECTOR_038,
//   55    VECTOR_039,
//   56    VECTOR_040,
//   57    VECTOR_041,
//   58    VECTOR_042,
//   59    VECTOR_043,
//   60    VECTOR_044,
//   61    VECTOR_045,
//   62    VECTOR_046,
//   63    VECTOR_047,
//   64    VECTOR_048,
//   65    VECTOR_049,
//   66    VECTOR_050,
//   67    VECTOR_051,
//   68    VECTOR_052,
//   69    VECTOR_053,
//   70    VECTOR_054,
//   71    VECTOR_055,
//   72    VECTOR_056,
//   73    VECTOR_057,
//   74    VECTOR_058,
//   75    VECTOR_059,
//   76    VECTOR_060,
//   77    VECTOR_061,
//   78    VECTOR_062,
//   79    VECTOR_063,
//   80    VECTOR_064,
//   81    VECTOR_065,
//   82    VECTOR_066,
//   83    VECTOR_067,
//   84    VECTOR_068,
//   85    VECTOR_069,
//   86    VECTOR_070,
//   87    VECTOR_071,
//   88    VECTOR_072,
//   89    VECTOR_073,
//   90    VECTOR_074,
//   91    VECTOR_075,
//   92    VECTOR_076,
//   93    VECTOR_077,
//   94    VECTOR_078,
//   95    VECTOR_079,
//   96    VECTOR_080,
//   97    VECTOR_081,
//   98    VECTOR_082,
//   99    VECTOR_083,
//  100    VECTOR_084,
//  101    VECTOR_085,
//  102    VECTOR_086,
//  103    VECTOR_087,
//  104    VECTOR_088,
//  105    VECTOR_089,
//  106    VECTOR_090,
//  107    VECTOR_091,
//  108    VECTOR_092,
//  109    VECTOR_093,
//  110    VECTOR_094,
//  111    VECTOR_095,
//  112    VECTOR_096,
//  113    VECTOR_097,
//  114    VECTOR_098,
//  115    VECTOR_099,
//  116    VECTOR_100,
//  117    VECTOR_101,
//  118    VECTOR_102,
//  119    VECTOR_103,
//  120    VECTOR_104,
//  121    VECTOR_105,
//  122    VECTOR_106,
//  123    VECTOR_107,
//  124    VECTOR_108,
//  125    VECTOR_109,
//  126    VECTOR_110,
//  127    VECTOR_111,
//  128    VECTOR_112,
//  129    VECTOR_113,
//  130    VECTOR_114,
//  131    VECTOR_115,
//  132    VECTOR_116,
//  133    VECTOR_117,
//  134    VECTOR_118,
//  135    VECTOR_119,
//  136    VECTOR_120,
//  137    VECTOR_121,
//  138    VECTOR_122,
//  139    VECTOR_123,
//  140    VECTOR_124,
//  141    VECTOR_125,
//  142    VECTOR_126,
//  143    VECTOR_127,
//  144    VECTOR_128,
//  145    VECTOR_129,
//  146    VECTOR_130,
//  147    VECTOR_131,
//  148    VECTOR_132,
//  149    VECTOR_133,
//  150    VECTOR_134,
//  151    VECTOR_135,
//  152    VECTOR_136,
//  153    VECTOR_137,
//  154    VECTOR_138,
//  155    VECTOR_139,
//  156    VECTOR_140,
//  157    VECTOR_141,
//  158    VECTOR_142,
//  159    VECTOR_143,
//  160    VECTOR_144,
//  161    VECTOR_145,
//  162    VECTOR_146,
//  163    VECTOR_147,
//  164    VECTOR_148,
//  165    VECTOR_149,
//  166    VECTOR_150,
//  167    VECTOR_151,
//  168    VECTOR_152,
//  169    VECTOR_153,
//  170    VECTOR_154,
//  171    VECTOR_155,
//  172    VECTOR_156,
//  173    VECTOR_157,
//  174    VECTOR_158,
//  175    VECTOR_159,
//  176    VECTOR_160,
//  177    VECTOR_161,
//  178    VECTOR_162,
//  179    VECTOR_163,
//  180    VECTOR_164,
//  181    VECTOR_165,
//  182    VECTOR_166,
//  183    VECTOR_167,
//  184    VECTOR_168,
//  185    VECTOR_169,
//  186    VECTOR_170,
//  187    VECTOR_171,
//  188    VECTOR_172,
//  189    VECTOR_173,
//  190    VECTOR_174,
//  191    VECTOR_175,
//  192    VECTOR_176,
//  193    VECTOR_177,
//  194    VECTOR_178,
//  195    VECTOR_179,
//  196    VECTOR_180,
//  197    VECTOR_181,
//  198    VECTOR_182,
//  199    VECTOR_183,
//  200    VECTOR_184,
//  201    VECTOR_185,
//  202    VECTOR_186,
//  203    VECTOR_187,
//  204    VECTOR_188,
//  205    VECTOR_189,
//  206    VECTOR_190,
//  207    VECTOR_191,
//  208    VECTOR_192,
//  209    VECTOR_193,
//  210    VECTOR_194,
//  211    VECTOR_195,
//  212    VECTOR_196,
//  213    VECTOR_197,
//  214    VECTOR_198,
//  215    VECTOR_199,
//  216    VECTOR_200,
//  217    VECTOR_201,
//  218    VECTOR_202,
//  219    VECTOR_203,
//  220    VECTOR_204,
//  221    VECTOR_205,
//  222    VECTOR_206,
//  223    VECTOR_207,
//  224    VECTOR_208,
//  225    VECTOR_209,
//  226    VECTOR_210,
//  227    VECTOR_211,
//  228    VECTOR_212,
//  229    VECTOR_213,
//  230    VECTOR_214,
//  231    VECTOR_215,
//  232    VECTOR_216,
//  233    VECTOR_217,
//  234    VECTOR_218,
//  235    VECTOR_219,
//  236    VECTOR_220,
//  237    VECTOR_221,
//  238    VECTOR_222,
//  239    VECTOR_223,
//  240    VECTOR_224,
//  241    VECTOR_225,
//  242    VECTOR_226,
//  243    VECTOR_227,
//  244    VECTOR_228,
//  245    VECTOR_229,
//  246    VECTOR_230,
//  247    VECTOR_231,
//  248    VECTOR_232,
//  249    VECTOR_233,
//  250    VECTOR_234,
//  251    VECTOR_235,
//  252    VECTOR_236,
//  253    VECTOR_237,
//  254    VECTOR_238,
//  255    VECTOR_239,
//  256    VECTOR_240,
//  257    VECTOR_241,
//  258    VECTOR_242,
//  259    VECTOR_243,
//  260    VECTOR_244,
//  261    VECTOR_245,
//  262    VECTOR_246,
//  263    VECTOR_247,
//  264    VECTOR_248,
//  265    VECTOR_249,
//  266    VECTOR_250,
//  267    VECTOR_251,
//  268    VECTOR_252,
//  269    VECTOR_253,
//  270    VECTOR_254,
//  271    VECTOR_255,
//  272    CONFIG_1,
//  273    CONFIG_2,
//  274    CONFIG_3,
//  275    CONFIG_4,
//  276 };
//  277 //默认中断服务例程函数
//  278 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  279 void default_isr(void)
//  280 {
//  281    #define VECTORNUM                     (*(volatile uint8_t*)(0xE000ED04))
//  282    return;
default_isr:
        BX       LR               ;; return
//  283 }

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
// 
// 1 040 bytes in section .intvec
//     2 bytes in section .text
// 
//     2 bytes of CODE  memory
// 1 040 bytes of CONST memory
//
//Errors: none
//Warnings: none
