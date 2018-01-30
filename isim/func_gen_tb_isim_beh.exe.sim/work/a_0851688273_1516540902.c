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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "D:/Xilinx/func_gen/func_gen.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3499444699;
extern char *IEEE_P_3620187407;

char *ieee_p_3499444699_sub_2213602152_3536714472(char *, char *, int , int );
unsigned char ieee_p_3620187407_sub_4060537613_3965413181(char *, char *, char *, char *, char *);
char *ieee_p_3620187407_sub_436351764_3965413181(char *, char *, char *, char *, int );
char *ieee_p_3620187407_sub_767632659_3965413181(char *, char *, char *, char *, char *, char *);
char *ieee_p_3620187407_sub_767668596_3965413181(char *, char *, char *, char *, char *, char *);


static void work_a_0851688273_1516540902_p_0(char *t0)
{
    char t4[16];
    char *t1;
    char *t3;
    char *t5;
    char *t6;
    unsigned int t7;
    unsigned char t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(115, ng0);

LAB3:    t1 = (t0 + 10608);
    t5 = ((IEEE_P_2592010699) + 4024);
    t6 = (t0 + 10140U);
    t3 = xsi_base_array_concat(t3, t4, t5, (char)99, (unsigned char)2, (char)97, t1, t6, (char)101);
    t7 = (1U + 15U);
    t8 = (16U != t7);
    if (t8 == 1)
        goto LAB5;

LAB6:    t9 = (t0 + 6832);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t3, 16U);
    xsi_driver_first_trans_fast(t9);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(16U, t7, 0);
    goto LAB6;

}

static void work_a_0851688273_1516540902_p_1(char *t0)
{
    char t28[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    char *t10;
    int t11;
    char *t12;
    char *t13;
    int t14;
    char *t15;
    char *t16;
    int t17;
    char *t18;
    char *t19;
    int t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    unsigned char t29;
    unsigned char t30;
    unsigned char t31;
    unsigned int t32;
    unsigned int t33;

LAB0:    xsi_set_current_line(121, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 992U);
    t4 = xsi_signal_has_event(t1);
    if (t4 == 1)
        goto LAB28;

LAB29:    t3 = (unsigned char)0;

LAB30:    if (t3 != 0)
        goto LAB26;

LAB27:
LAB3:    t1 = (t0 + 6704);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(122, ng0);
    t1 = (t0 + 10623);
    t6 = (t0 + 10626);
    t8 = xsi_mem_cmp(t6, t1, 3U);
    if (t8 == 1)
        goto LAB6;

LAB12:    t9 = (t0 + 10629);
    t11 = xsi_mem_cmp(t9, t1, 3U);
    if (t11 == 1)
        goto LAB7;

LAB13:    t12 = (t0 + 10632);
    t14 = xsi_mem_cmp(t12, t1, 3U);
    if (t14 == 1)
        goto LAB8;

LAB14:    t15 = (t0 + 10635);
    t17 = xsi_mem_cmp(t15, t1, 3U);
    if (t17 == 1)
        goto LAB9;

LAB15:    t18 = (t0 + 10638);
    t20 = xsi_mem_cmp(t18, t1, 3U);
    if (t20 == 1)
        goto LAB10;

LAB16:
LAB11:    xsi_set_current_line(128, ng0);
    t1 = xsi_get_transient_memory(10U);
    memset(t1, 0, 10U);
    t2 = t1;
    memset(t2, (unsigned char)2, 10U);
    t5 = (t0 + 6896);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 10U);
    xsi_driver_first_trans_fast(t5);

LAB5:    goto LAB3;

LAB6:    xsi_set_current_line(123, ng0);
    t21 = xsi_get_transient_memory(10U);
    memset(t21, 0, 10U);
    t22 = t21;
    memset(t22, (unsigned char)2, 10U);
    t23 = (t0 + 6896);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    memcpy(t27, t21, 10U);
    xsi_driver_first_trans_fast(t23);
    goto LAB5;

LAB7:    xsi_set_current_line(124, ng0);
    t8 = (1000 / 8);
    t11 = (t8 - 1);
    t1 = ieee_p_3499444699_sub_2213602152_3536714472(IEEE_P_3499444699, t28, t11, 10);
    t3 = (10U != 10U);
    if (t3 == 1)
        goto LAB18;

LAB19:    t2 = (t0 + 6896);
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    memcpy(t9, t1, 10U);
    xsi_driver_first_trans_fast(t2);
    goto LAB5;

LAB8:    xsi_set_current_line(125, ng0);
    t8 = (1000 / 4);
    t11 = (t8 - 1);
    t1 = ieee_p_3499444699_sub_2213602152_3536714472(IEEE_P_3499444699, t28, t11, 10);
    t3 = (10U != 10U);
    if (t3 == 1)
        goto LAB20;

LAB21:    t2 = (t0 + 6896);
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    memcpy(t9, t1, 10U);
    xsi_driver_first_trans_fast(t2);
    goto LAB5;

LAB9:    xsi_set_current_line(126, ng0);
    t8 = (3 * 1000);
    t11 = (t8 / 8);
    t14 = (t11 - 1);
    t1 = ieee_p_3499444699_sub_2213602152_3536714472(IEEE_P_3499444699, t28, t14, 10);
    t3 = (10U != 10U);
    if (t3 == 1)
        goto LAB22;

LAB23:    t2 = (t0 + 6896);
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    memcpy(t9, t1, 10U);
    xsi_driver_first_trans_fast(t2);
    goto LAB5;

LAB10:    xsi_set_current_line(127, ng0);
    t8 = (1000 / 2);
    t11 = (t8 - 1);
    t1 = ieee_p_3499444699_sub_2213602152_3536714472(IEEE_P_3499444699, t28, t11, 10);
    t3 = (10U != 10U);
    if (t3 == 1)
        goto LAB24;

LAB25:    t2 = (t0 + 6896);
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    memcpy(t9, t1, 10U);
    xsi_driver_first_trans_fast(t2);
    goto LAB5;

LAB17:;
LAB18:    xsi_size_not_matching(10U, 10U, 0);
    goto LAB19;

LAB20:    xsi_size_not_matching(10U, 10U, 0);
    goto LAB21;

LAB22:    xsi_size_not_matching(10U, 10U, 0);
    goto LAB23;

LAB24:    xsi_size_not_matching(10U, 10U, 0);
    goto LAB25;

LAB26:    xsi_set_current_line(131, ng0);
    t2 = (t0 + 2152U);
    t6 = *((char **)t2);
    t2 = (t0 + 10396U);
    t7 = (t0 + 10641);
    t10 = (t0 + 10124U);
    t12 = ieee_p_3620187407_sub_436351764_3965413181(IEEE_P_3620187407, t28, t7, t10, 1);
    t31 = ieee_p_3620187407_sub_4060537613_3965413181(IEEE_P_3620187407, t6, t2, t12, t28);
    if (t31 != 0)
        goto LAB31;

LAB33:    xsi_set_current_line(134, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t1 = (t0 + 10396U);
    t5 = (t0 + 10651);
    t7 = (t0 + 10156U);
    t9 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t28, t2, t1, t5, t7);
    t10 = (t28 + 12U);
    t32 = *((unsigned int *)t10);
    t33 = (1U * t32);
    t3 = (10U != t33);
    if (t3 == 1)
        goto LAB34;

LAB35:    t12 = (t0 + 6896);
    t13 = (t12 + 56U);
    t15 = *((char **)t13);
    t16 = (t15 + 56U);
    t18 = *((char **)t16);
    memcpy(t18, t9, 10U);
    xsi_driver_first_trans_fast(t12);

LAB32:    goto LAB3;

LAB28:    t2 = (t0 + 1032U);
    t5 = *((char **)t2);
    t29 = *((unsigned char *)t5);
    t30 = (t29 == (unsigned char)3);
    t3 = t30;
    goto LAB30;

LAB31:    xsi_set_current_line(132, ng0);
    t13 = xsi_get_transient_memory(10U);
    memset(t13, 0, 10U);
    t15 = t13;
    memset(t15, (unsigned char)2, 10U);
    t16 = (t0 + 6896);
    t18 = (t16 + 56U);
    t19 = *((char **)t18);
    t21 = (t19 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t13, 10U);
    xsi_driver_first_trans_fast(t16);
    goto LAB32;

LAB34:    xsi_size_not_matching(10U, t33, 0);
    goto LAB35;

}

static void work_a_0851688273_1516540902_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(138, ng0);

LAB3:    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t1 = (t0 + 6960);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 10U);
    xsi_driver_first_trans_fast(t1);

LAB2:    t7 = (t0 + 6720);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0851688273_1516540902_p_3(char *t0)
{
    char t13[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned char t11;
    unsigned char t12;
    unsigned int t14;
    unsigned int t15;
    unsigned char t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;

LAB0:    xsi_set_current_line(144, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 992U);
    t4 = xsi_signal_has_event(t1);
    if (t4 == 1)
        goto LAB7;

LAB8:    t3 = (unsigned char)0;

LAB9:    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 6736);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(145, ng0);
    t1 = xsi_get_transient_memory(32U);
    memset(t1, 0, 32U);
    t5 = t1;
    memset(t5, (unsigned char)2, 32U);
    t6 = (t0 + 7024);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 32U);
    xsi_driver_first_trans_fast(t6);
    goto LAB3;

LAB5:    xsi_set_current_line(147, ng0);
    t2 = (t0 + 2632U);
    t6 = *((char **)t2);
    t2 = (t0 + 10444U);
    t7 = (t0 + 2792U);
    t8 = *((char **)t7);
    t7 = (t0 + 10460U);
    t9 = ieee_p_3620187407_sub_767632659_3965413181(IEEE_P_3620187407, t13, t6, t2, t8, t7);
    t10 = (t13 + 12U);
    t14 = *((unsigned int *)t10);
    t15 = (1U * t14);
    t16 = (32U != t15);
    if (t16 == 1)
        goto LAB10;

LAB11:    t17 = (t0 + 7024);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t9, 32U);
    xsi_driver_first_trans_fast(t17);
    goto LAB3;

LAB7:    t2 = (t0 + 1032U);
    t5 = *((char **)t2);
    t11 = *((unsigned char *)t5);
    t12 = (t11 == (unsigned char)3);
    t3 = t12;
    goto LAB9;

LAB10:    xsi_size_not_matching(32U, t15, 0);
    goto LAB11;

}

static void work_a_0851688273_1516540902_p_4(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    unsigned int t4;
    unsigned int t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:    xsi_set_current_line(150, ng0);

LAB3:    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t3 = (31 - 31);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 7088);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 16U);
    xsi_driver_first_trans_fast_port(t6);

LAB2:    t11 = (t0 + 6752);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_0851688273_1516540902_init()
{
	static char *pe[] = {(void *)work_a_0851688273_1516540902_p_0,(void *)work_a_0851688273_1516540902_p_1,(void *)work_a_0851688273_1516540902_p_2,(void *)work_a_0851688273_1516540902_p_3,(void *)work_a_0851688273_1516540902_p_4};
	xsi_register_didat("work_a_0851688273_1516540902", "isim/func_gen_tb_isim_beh.exe.sim/work/a_0851688273_1516540902.didat");
	xsi_register_executes(pe);
}
