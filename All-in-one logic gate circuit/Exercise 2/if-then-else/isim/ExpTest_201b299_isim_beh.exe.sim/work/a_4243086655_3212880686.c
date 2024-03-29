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
static const char *ng0 = "//fileserver1/201B299/Coa/lab2/exp2_201b299.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1605435078_2592010699(char *, unsigned char , unsigned char );
unsigned char ieee_p_2592010699_sub_2115884226_2592010699(char *, unsigned char , unsigned char );
unsigned char ieee_p_2592010699_sub_2545490612_2592010699(char *, unsigned char , unsigned char );
unsigned char ieee_p_2592010699_sub_313326228_2592010699(char *, unsigned char , unsigned char );


static void work_a_4243086655_3212880686_p_0(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    char *t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    unsigned char t10;
    char *t11;
    unsigned char t12;
    unsigned char t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;

LAB0:    xsi_set_current_line(36, ng0);
    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)2);
    if (t5 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)3);
    if (t5 == 1)
        goto LAB10;

LAB11:    t1 = (unsigned char)0;

LAB12:    if (t1 != 0)
        goto LAB8;

LAB9:    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)2);
    if (t5 == 1)
        goto LAB15;

LAB16:    t1 = (unsigned char)0;

LAB17:    if (t1 != 0)
        goto LAB13;

LAB14:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t1 = *((unsigned char *)t3);
    t2 = (t0 + 1192U);
    t6 = *((char **)t2);
    t4 = *((unsigned char *)t6);
    t5 = ieee_p_2592010699_sub_313326228_2592010699(IEEE_P_2592010699, t1, t4);
    t2 = (t0 + 3232);
    t9 = (t2 + 56U);
    t11 = *((char **)t9);
    t14 = (t11 + 56U);
    t15 = *((char **)t14);
    *((unsigned char *)t15) = t5;
    xsi_driver_first_trans_fast_port(t2);

LAB3:    t2 = (t0 + 3152);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(37, ng0);
    t2 = (t0 + 1032U);
    t9 = *((char **)t2);
    t10 = *((unsigned char *)t9);
    t2 = (t0 + 1192U);
    t11 = *((char **)t2);
    t12 = *((unsigned char *)t11);
    t13 = ieee_p_2592010699_sub_1605435078_2592010699(IEEE_P_2592010699, t10, t12);
    t2 = (t0 + 3232);
    t14 = (t2 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    *((unsigned char *)t17) = t13;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB3;

LAB5:    t2 = (t0 + 1672U);
    t6 = *((char **)t2);
    t7 = *((unsigned char *)t6);
    t8 = (t7 == (unsigned char)2);
    t1 = t8;
    goto LAB7;

LAB8:    xsi_set_current_line(39, ng0);
    t2 = (t0 + 1032U);
    t9 = *((char **)t2);
    t10 = *((unsigned char *)t9);
    t2 = (t0 + 1192U);
    t11 = *((char **)t2);
    t12 = *((unsigned char *)t11);
    t13 = ieee_p_2592010699_sub_2545490612_2592010699(IEEE_P_2592010699, t10, t12);
    t2 = (t0 + 3232);
    t14 = (t2 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    *((unsigned char *)t17) = t13;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB3;

LAB10:    t2 = (t0 + 1672U);
    t6 = *((char **)t2);
    t7 = *((unsigned char *)t6);
    t8 = (t7 == (unsigned char)2);
    t1 = t8;
    goto LAB12;

LAB13:    xsi_set_current_line(41, ng0);
    t2 = (t0 + 1032U);
    t9 = *((char **)t2);
    t10 = *((unsigned char *)t9);
    t2 = (t0 + 1192U);
    t11 = *((char **)t2);
    t12 = *((unsigned char *)t11);
    t13 = ieee_p_2592010699_sub_2115884226_2592010699(IEEE_P_2592010699, t10, t12);
    t2 = (t0 + 3232);
    t14 = (t2 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    *((unsigned char *)t17) = t13;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB3;

LAB15:    t2 = (t0 + 1672U);
    t6 = *((char **)t2);
    t7 = *((unsigned char *)t6);
    t8 = (t7 == (unsigned char)3);
    t1 = t8;
    goto LAB17;

}


extern void work_a_4243086655_3212880686_init()
{
	static char *pe[] = {(void *)work_a_4243086655_3212880686_p_0};
	xsi_register_didat("work_a_4243086655_3212880686", "isim/ExpTest_201b299_isim_beh.exe.sim/work/a_4243086655_3212880686.didat");
	xsi_register_executes(pe);
}
