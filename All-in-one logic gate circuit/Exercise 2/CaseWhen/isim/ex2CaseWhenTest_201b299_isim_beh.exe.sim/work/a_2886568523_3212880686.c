/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7dea747 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "//fileserver1/201B299/Coa/ex2CaseWhen/ex2_201b299/ex2Casewhen_201b299.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1605435078_2592010699(char *, unsigned char , unsigned char );
unsigned char ieee_p_2592010699_sub_2115884226_2592010699(char *, unsigned char , unsigned char );
unsigned char ieee_p_2592010699_sub_2545490612_2592010699(char *, unsigned char , unsigned char );
unsigned char ieee_p_2592010699_sub_313326228_2592010699(char *, unsigned char , unsigned char );


static void work_a_2886568523_3212880686_p_0(char *t0)
{
    char t6[16];
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    unsigned char t5;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t10;
    int t11;
    int t12;
    char *t13;
    int t14;
    char *t15;
    char *t16;
    char *t17;
    unsigned char t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;

LAB0:    xsi_set_current_line(46, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 1672U);
    t4 = *((char **)t1);
    t5 = *((unsigned char *)t4);
    t7 = ((IEEE_P_2592010699) + 4024);
    t1 = xsi_base_array_concat(t1, t6, t7, (char)99, t3, (char)99, t5, (char)101);
    t8 = (t0 + 1968U);
    t9 = *((char **)t8);
    t8 = (t9 + 0);
    t10 = (1U + 1U);
    memcpy(t8, t1, t10);
    xsi_set_current_line(47, ng0);
    t1 = (t0 + 1968U);
    t2 = *((char **)t1);
    t1 = (t0 + 5350);
    t11 = xsi_mem_cmp(t1, t2, 2U);
    if (t11 == 1)
        goto LAB3;

LAB7:    t7 = (t0 + 5352);
    t12 = xsi_mem_cmp(t7, t2, 2U);
    if (t12 == 1)
        goto LAB4;

LAB8:    t9 = (t0 + 5354);
    t14 = xsi_mem_cmp(t9, t2, 2U);
    if (t14 == 1)
        goto LAB5;

LAB9:
LAB6:    xsi_set_current_line(51, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 1192U);
    t4 = *((char **)t1);
    t5 = *((unsigned char *)t4);
    t18 = ieee_p_2592010699_sub_2115884226_2592010699(IEEE_P_2592010699, t3, t5);
    t1 = (t0 + 3352);
    t7 = (t1 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t13 = *((char **)t9);
    *((unsigned char *)t13) = t18;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t1 = (t0 + 3272);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(48, ng0);
    t15 = (t0 + 1032U);
    t16 = *((char **)t15);
    t3 = *((unsigned char *)t16);
    t15 = (t0 + 1192U);
    t17 = *((char **)t15);
    t5 = *((unsigned char *)t17);
    t18 = ieee_p_2592010699_sub_1605435078_2592010699(IEEE_P_2592010699, t3, t5);
    t15 = (t0 + 3352);
    t19 = (t15 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    *((unsigned char *)t22) = t18;
    xsi_driver_first_trans_fast_port(t15);
    goto LAB2;

LAB4:    xsi_set_current_line(49, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 1192U);
    t4 = *((char **)t1);
    t5 = *((unsigned char *)t4);
    t18 = ieee_p_2592010699_sub_2545490612_2592010699(IEEE_P_2592010699, t3, t5);
    t1 = (t0 + 3352);
    t7 = (t1 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t13 = *((char **)t9);
    *((unsigned char *)t13) = t18;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB5:    xsi_set_current_line(50, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 1192U);
    t4 = *((char **)t1);
    t5 = *((unsigned char *)t4);
    t18 = ieee_p_2592010699_sub_313326228_2592010699(IEEE_P_2592010699, t3, t5);
    t1 = (t0 + 3352);
    t7 = (t1 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t13 = *((char **)t9);
    *((unsigned char *)t13) = t18;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB10:;
}


extern void work_a_2886568523_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2886568523_3212880686_p_0};
	xsi_register_didat("work_a_2886568523_3212880686", "isim/ex2CaseWhenTest_201b299_isim_beh.exe.sim/work/a_2886568523_3212880686.didat");
	xsi_register_executes(pe);
}
