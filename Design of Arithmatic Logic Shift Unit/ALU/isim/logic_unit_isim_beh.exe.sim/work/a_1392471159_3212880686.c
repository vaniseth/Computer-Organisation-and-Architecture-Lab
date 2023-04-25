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
static const char *ng0 = "//fileserver1/201B299/Coa/LAB 6/ALU/logic_unit.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;

char *ieee_p_2592010699_sub_1697423399_2592010699(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_1837678034_2592010699(char *, char *, char *, char *);
char *ieee_p_3620187407_sub_674691591_3620187407(char *, char *, char *, char *, unsigned char );


static void work_a_1392471159_3212880686_p_0(char *t0)
{
    char t5[16];
    char t15[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;

LAB0:    xsi_set_current_line(38, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(41, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 4916U);
    t6 = ieee_p_2592010699_sub_1837678034_2592010699(IEEE_P_2592010699, t15, t2, t1);
    t7 = ieee_p_3620187407_sub_674691591_3620187407(IEEE_P_3620187407, t5, t6, t15, (unsigned char)3);
    t8 = (t0 + 3192);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t7, 4U);
    xsi_driver_first_trans_fast_port(t8);

LAB3:    t1 = (t0 + 3112);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(39, ng0);
    t1 = (t0 + 1032U);
    t6 = *((char **)t1);
    t1 = (t0 + 4916U);
    t7 = (t0 + 1192U);
    t8 = *((char **)t7);
    t7 = (t0 + 4932U);
    t9 = ieee_p_2592010699_sub_1697423399_2592010699(IEEE_P_2592010699, t5, t6, t1, t8, t7);
    t10 = (t0 + 3192);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t9, 4U);
    xsi_driver_first_trans_fast_port(t10);
    goto LAB3;

}


extern void work_a_1392471159_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1392471159_3212880686_p_0};
	xsi_register_didat("work_a_1392471159_3212880686", "isim/logic_unit_isim_beh.exe.sim/work/a_1392471159_3212880686.didat");
	xsi_register_executes(pe);
}
