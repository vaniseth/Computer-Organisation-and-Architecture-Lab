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
static const char *ng0 = "//fileserver1/201B299/Coa/LAB 6/ALU/shift_unit.vhd";
extern char *IEEE_P_2592010699;



static void work_a_2116438073_3212880686_p_0(char *t0)
{
    char t18[16];
    char t20[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned char t10;
    char *t11;
    char *t12;
    int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    char *t17;
    char *t19;
    char *t21;
    char *t22;
    int t23;
    unsigned int t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;

LAB0:    xsi_set_current_line(38, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(41, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t6 = (4 - 2);
    t7 = (3 - t6);
    t8 = (t7 * 1U);
    t9 = (0 + t8);
    t1 = (t2 + t9);
    t11 = ((IEEE_P_2592010699) + 4024);
    t12 = (t20 + 0U);
    t17 = (t12 + 0U);
    *((int *)t17) = 2;
    t17 = (t12 + 4U);
    *((int *)t17) = 0;
    t17 = (t12 + 8U);
    *((int *)t17) = -1;
    t13 = (0 - 2);
    t14 = (t13 * -1);
    t14 = (t14 + 1);
    t17 = (t12 + 12U);
    *((unsigned int *)t17) = t14;
    t5 = xsi_base_array_concat(t5, t18, t11, (char)97, t1, t20, (char)99, (unsigned char)2, (char)101);
    t17 = (t0 + 3192);
    t19 = (t17 + 56U);
    t21 = *((char **)t19);
    t22 = (t21 + 56U);
    t25 = *((char **)t22);
    memcpy(t25, t5, 4U);
    xsi_driver_first_trans_fast_port(t17);

LAB3:    t1 = (t0 + 3112);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(39, ng0);
    t1 = (t0 + 1032U);
    t5 = *((char **)t1);
    t6 = (0 - 3);
    t7 = (t6 * -1);
    t8 = (1U * t7);
    t9 = (0 + t8);
    t1 = (t5 + t9);
    t10 = *((unsigned char *)t1);
    t11 = (t0 + 1032U);
    t12 = *((char **)t11);
    t13 = (4 - 1);
    t14 = (3 - t13);
    t15 = (t14 * 1U);
    t16 = (0 + t15);
    t11 = (t12 + t16);
    t19 = ((IEEE_P_2592010699) + 4024);
    t21 = (t20 + 0U);
    t22 = (t21 + 0U);
    *((int *)t22) = 3;
    t22 = (t21 + 4U);
    *((int *)t22) = 1;
    t22 = (t21 + 8U);
    *((int *)t22) = -1;
    t23 = (1 - 3);
    t24 = (t23 * -1);
    t24 = (t24 + 1);
    t22 = (t21 + 12U);
    *((unsigned int *)t22) = t24;
    t17 = xsi_base_array_concat(t17, t18, t19, (char)99, t10, (char)97, t11, t20, (char)101);
    t22 = (t0 + 3192);
    t25 = (t22 + 56U);
    t26 = *((char **)t25);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    memcpy(t28, t17, 4U);
    xsi_driver_first_trans_fast_port(t22);
    goto LAB3;

}


extern void work_a_2116438073_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2116438073_3212880686_p_0};
	xsi_register_didat("work_a_2116438073_3212880686", "isim/ALU_Test_isim_beh.exe.sim/work/a_2116438073_3212880686.didat");
	xsi_register_executes(pe);
}
