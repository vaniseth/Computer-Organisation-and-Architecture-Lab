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
static const char *ng0 = "//fileserver1/201B299/Coa/lab 4/8x1 mux/MUX8x1_201b299/MUX2x1_201b299.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1605435078_2592010699(char *, unsigned char , unsigned char );
unsigned char ieee_p_2592010699_sub_1690584930_2592010699(char *, unsigned char );
unsigned char ieee_p_2592010699_sub_2545490612_2592010699(char *, unsigned char , unsigned char );


static void work_a_3195092986_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    char *t10;
    int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned char t15;
    unsigned char t16;
    char *t17;
    char *t18;
    int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned char t23;
    char *t24;
    char *t25;
    int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned char t30;
    unsigned char t31;
    unsigned char t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;

LAB0:    xsi_set_current_line(32, ng0);

LAB3:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = (0 - 0);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = ieee_p_2592010699_sub_1690584930_2592010699(IEEE_P_2592010699, t7);
    t9 = (t0 + 1032U);
    t10 = *((char **)t9);
    t11 = (0 - 1);
    t12 = (t11 * -1);
    t13 = (1U * t12);
    t14 = (0 + t13);
    t9 = (t10 + t14);
    t15 = *((unsigned char *)t9);
    t16 = ieee_p_2592010699_sub_1605435078_2592010699(IEEE_P_2592010699, t8, t15);
    t17 = (t0 + 1192U);
    t18 = *((char **)t17);
    t19 = (0 - 0);
    t20 = (t19 * -1);
    t21 = (1U * t20);
    t22 = (0 + t21);
    t17 = (t18 + t22);
    t23 = *((unsigned char *)t17);
    t24 = (t0 + 1032U);
    t25 = *((char **)t24);
    t26 = (1 - 1);
    t27 = (t26 * -1);
    t28 = (1U * t27);
    t29 = (0 + t28);
    t24 = (t25 + t29);
    t30 = *((unsigned char *)t24);
    t31 = ieee_p_2592010699_sub_1605435078_2592010699(IEEE_P_2592010699, t23, t30);
    t32 = ieee_p_2592010699_sub_2545490612_2592010699(IEEE_P_2592010699, t16, t31);
    t33 = (t0 + 2912);
    t34 = (t33 + 56U);
    t35 = *((char **)t34);
    t36 = (t35 + 56U);
    t37 = *((char **)t36);
    *((unsigned char *)t37) = t32;
    xsi_driver_first_trans_fast_port(t33);

LAB2:    t38 = (t0 + 2832);
    *((int *)t38) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_3195092986_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3195092986_3212880686_p_0};
	xsi_register_didat("work_a_3195092986_3212880686", "isim/mux8x1Test_201b299_isim_beh.exe.sim/work/a_3195092986_3212880686.didat");
	xsi_register_executes(pe);
}
