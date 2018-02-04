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
extern char *IEEE_P_1242562249;
extern char *IEEE_P_2592010699;
extern char *IEEE_P_0774719531;

char *ieee_p_0774719531_sub_767632659_2162500114(char *, char *, char *, char *, char *, char *);
char *ieee_p_1242562249_sub_1547198987_1035706684(char *, char *, char *, char *, char *, char *);
char *ieee_p_1242562249_sub_2053728113_1035706684(char *, char *, char *, char *, char *, char *);
unsigned char ieee_p_1242562249_sub_3472088553_1035706684(char *, char *, char *, char *, char *);


static void work_a_0146206143_1516540902_p_0(char *t0)
{
    char t31[16];
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
    unsigned char t28;
    unsigned char t29;
    unsigned char t30;
    unsigned int t32;
    unsigned int t33;

LAB0:    xsi_set_current_line(125, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 992U);
    t4 = xsi_signal_has_event(t1);
    if (t4 == 1)
        goto LAB20;

LAB21:    t3 = (unsigned char)0;

LAB22:    if (t3 != 0)
        goto LAB18;

LAB19:
LAB3:    t1 = (t0 + 8088);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(126, ng0);
    t1 = (t0 + 12928);
    t6 = (t0 + 12931);
    t8 = xsi_mem_cmp(t6, t1, 3U);
    if (t8 == 1)
        goto LAB6;

LAB12:    t9 = (t0 + 12934);
    t11 = xsi_mem_cmp(t9, t1, 3U);
    if (t11 == 1)
        goto LAB7;

LAB13:    t12 = (t0 + 12937);
    t14 = xsi_mem_cmp(t12, t1, 3U);
    if (t14 == 1)
        goto LAB8;

LAB14:    t15 = (t0 + 12940);
    t17 = xsi_mem_cmp(t15, t1, 3U);
    if (t17 == 1)
        goto LAB9;

LAB15:    t18 = (t0 + 12943);
    t20 = xsi_mem_cmp(t18, t1, 3U);
    if (t20 == 1)
        goto LAB10;

LAB16:
LAB11:    xsi_set_current_line(132, ng0);
    t1 = xsi_get_transient_memory(10U);
    memset(t1, 0, 10U);
    t2 = t1;
    memset(t2, (unsigned char)2, 10U);
    t5 = (t0 + 8264);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 10U);
    xsi_driver_first_trans_fast(t5);

LAB5:    goto LAB3;

LAB6:    xsi_set_current_line(127, ng0);
    t21 = xsi_get_transient_memory(10U);
    memset(t21, 0, 10U);
    t22 = t21;
    memset(t22, (unsigned char)2, 10U);
    t23 = (t0 + 8264);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    memcpy(t27, t21, 10U);
    xsi_driver_first_trans_fast(t23);
    goto LAB5;

LAB7:    xsi_set_current_line(128, ng0);
    t1 = (t0 + 12946);
    t5 = (t0 + 8264);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 10U);
    xsi_driver_first_trans_fast(t5);
    goto LAB5;

LAB8:    xsi_set_current_line(129, ng0);
    t1 = (t0 + 12954);
    t5 = (t0 + 8264);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 10U);
    xsi_driver_first_trans_fast(t5);
    goto LAB5;

LAB9:    xsi_set_current_line(130, ng0);
    t1 = (t0 + 12962);
    t5 = (t0 + 8264);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 10U);
    xsi_driver_first_trans_fast(t5);
    goto LAB5;

LAB10:    xsi_set_current_line(131, ng0);
    t1 = (t0 + 12971);
    t5 = (t0 + 8264);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 10U);
    xsi_driver_first_trans_fast(t5);
    goto LAB5;

LAB17:;
LAB18:    xsi_set_current_line(135, ng0);
    t2 = (t0 + 2152U);
    t6 = *((char **)t2);
    t2 = (t0 + 12572U);
    t7 = (t0 + 12980);
    t10 = (t0 + 12300U);
    t30 = ieee_p_1242562249_sub_3472088553_1035706684(IEEE_P_1242562249, t6, t2, t7, t10);
    if (t30 != 0)
        goto LAB23;

LAB25:    xsi_set_current_line(138, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t1 = (t0 + 12572U);
    t5 = (t0 + 12990);
    t7 = (t0 + 12332U);
    t9 = ieee_p_1242562249_sub_1547198987_1035706684(IEEE_P_1242562249, t31, t2, t1, t5, t7);
    t10 = (t31 + 12U);
    t32 = *((unsigned int *)t10);
    t33 = (1U * t32);
    t3 = (10U != t33);
    if (t3 == 1)
        goto LAB26;

LAB27:    t12 = (t0 + 8264);
    t13 = (t12 + 56U);
    t15 = *((char **)t13);
    t16 = (t15 + 56U);
    t18 = *((char **)t16);
    memcpy(t18, t9, 10U);
    xsi_driver_first_trans_fast(t12);

LAB24:    goto LAB3;

LAB20:    t2 = (t0 + 1032U);
    t5 = *((char **)t2);
    t28 = *((unsigned char *)t5);
    t29 = (t28 == (unsigned char)3);
    t3 = t29;
    goto LAB22;

LAB23:    xsi_set_current_line(136, ng0);
    t12 = xsi_get_transient_memory(10U);
    memset(t12, 0, 10U);
    t13 = t12;
    memset(t13, (unsigned char)2, 10U);
    t15 = (t0 + 8264);
    t16 = (t15 + 56U);
    t18 = *((char **)t16);
    t19 = (t18 + 56U);
    t21 = *((char **)t19);
    memcpy(t21, t12, 10U);
    xsi_driver_first_trans_fast(t15);
    goto LAB24;

LAB26:    xsi_size_not_matching(10U, t33, 0);
    goto LAB27;

}

static void work_a_0146206143_1516540902_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(142, ng0);

LAB3:    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t1 = (t0 + 8328);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 10U);
    xsi_driver_first_trans_fast(t1);

LAB2:    t7 = (t0 + 8104);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0146206143_1516540902_p_2(char *t0)
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

LAB0:    xsi_set_current_line(146, ng0);

LAB3:    t1 = (t0 + 13000);
    t5 = ((IEEE_P_2592010699) + 4024);
    t6 = (t0 + 12316U);
    t3 = xsi_base_array_concat(t3, t4, t5, (char)99, (unsigned char)2, (char)97, t1, t6, (char)101);
    t7 = (1U + 15U);
    t8 = (16U != t7);
    if (t8 == 1)
        goto LAB5;

LAB6:    t9 = (t0 + 8392);
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

static void work_a_0146206143_1516540902_p_3(char *t0)
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

LAB0:    xsi_set_current_line(149, ng0);
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
LAB3:    t1 = (t0 + 8120);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(150, ng0);
    t1 = xsi_get_transient_memory(32U);
    memset(t1, 0, 32U);
    t5 = t1;
    memset(t5, (unsigned char)2, 32U);
    t6 = (t0 + 8456);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 32U);
    xsi_driver_first_trans_fast(t6);
    goto LAB3;

LAB5:    xsi_set_current_line(152, ng0);
    t2 = (t0 + 3112U);
    t6 = *((char **)t2);
    t2 = (t0 + 12668U);
    t7 = (t0 + 3272U);
    t8 = *((char **)t7);
    t7 = (t0 + 12684U);
    t9 = ieee_p_0774719531_sub_767632659_2162500114(IEEE_P_0774719531, t13, t6, t2, t8, t7);
    t10 = (t13 + 12U);
    t14 = *((unsigned int *)t10);
    t15 = (1U * t14);
    t16 = (32U != t15);
    if (t16 == 1)
        goto LAB10;

LAB11:    t17 = (t0 + 8456);
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

static void work_a_0146206143_1516540902_p_4(char *t0)
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

LAB0:    xsi_set_current_line(155, ng0);

LAB3:    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t3 = (31 - 31);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 8520);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 16U);
    xsi_driver_first_trans_fast_port(t6);

LAB2:    t11 = (t0 + 8136);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0146206143_1516540902_p_5(char *t0)
{
    char t11[16];
    char t23[16];
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
    unsigned int t12;
    char *t13;
    char *t14;
    unsigned char t15;
    unsigned char t16;
    unsigned char t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    unsigned int t22;
    int t24;

LAB0:    xsi_set_current_line(162, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 992U);
    t4 = xsi_signal_has_event(t1);
    if (t4 == 1)
        goto LAB9;

LAB10:    t3 = (unsigned char)0;

LAB11:    if (t3 != 0)
        goto LAB7;

LAB8:
LAB3:    t1 = (t0 + 8152);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(163, ng0);
    t1 = xsi_get_transient_memory(10U);
    memset(t1, 0, 10U);
    t5 = t1;
    memset(t5, (unsigned char)2, 10U);
    t6 = (t0 + 8584);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 10U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(164, ng0);
    t1 = xsi_get_transient_memory(12U);
    memset(t1, 0, 12U);
    t2 = t1;
    memset(t2, (unsigned char)3, 12U);
    t5 = (t0 + 8648);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 12U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(165, ng0);
    t1 = (t0 + 13015);
    t6 = ((IEEE_P_2592010699) + 4024);
    t7 = (t0 + 12364U);
    t5 = xsi_base_array_concat(t5, t11, t6, (char)99, (unsigned char)2, (char)97, t1, t7, (char)101);
    t12 = (1U + 15U);
    t3 = (16U != t12);
    if (t3 == 1)
        goto LAB5;

LAB6:    t8 = (t0 + 8712);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t13 = (t10 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t5, 16U);
    xsi_driver_first_trans_fast(t8);
    goto LAB3;

LAB5:    xsi_size_not_matching(16U, t12, 0);
    goto LAB6;

LAB7:    xsi_set_current_line(167, ng0);
    t2 = (t0 + 2312U);
    t6 = *((char **)t2);
    t2 = (t0 + 12588U);
    t7 = (t0 + 13030);
    t9 = (t0 + 12300U);
    t17 = ieee_p_1242562249_sub_3472088553_1035706684(IEEE_P_1242562249, t6, t2, t7, t9);
    if (t17 != 0)
        goto LAB12;

LAB14:    xsi_set_current_line(171, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t1 = (t0 + 12588U);
    t5 = (t0 + 13055);
    t7 = (t0 + 12380U);
    t8 = ieee_p_1242562249_sub_1547198987_1035706684(IEEE_P_1242562249, t11, t2, t1, t5, t7);
    t9 = (t11 + 12U);
    t12 = *((unsigned int *)t9);
    t22 = (1U * t12);
    t3 = (10U != t22);
    if (t3 == 1)
        goto LAB17;

LAB18:    t10 = (t0 + 8584);
    t13 = (t10 + 56U);
    t14 = *((char **)t13);
    t18 = (t14 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t8, 10U);
    xsi_driver_first_trans_fast(t10);
    xsi_set_current_line(172, ng0);
    t1 = (t0 + 13065);
    t5 = (t0 + 12396U);
    t6 = (t0 + 13072);
    t8 = (t23 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 0;
    t9 = (t8 + 4U);
    *((int *)t9) = 4;
    t9 = (t8 + 8U);
    *((int *)t9) = 1;
    t24 = (4 - 0);
    t12 = (t24 * 1);
    t12 = (t12 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t12;
    t9 = ieee_p_1242562249_sub_2053728113_1035706684(IEEE_P_1242562249, t11, t1, t5, t6, t23);
    t10 = (t11 + 12U);
    t12 = *((unsigned int *)t10);
    t22 = (1U * t12);
    t3 = (12U != t22);
    if (t3 == 1)
        goto LAB19;

LAB20:    t13 = (t0 + 8648);
    t14 = (t13 + 56U);
    t18 = *((char **)t14);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t9, 12U);
    xsi_driver_first_trans_fast(t13);
    xsi_set_current_line(173, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t1 = (t0 + 12588U);
    t5 = (t0 + 2632U);
    t6 = *((char **)t5);
    t5 = (t0 + 12620U);
    t3 = ieee_p_1242562249_sub_3472088553_1035706684(IEEE_P_1242562249, t2, t1, t6, t5);
    if (t3 != 0)
        goto LAB21;

LAB23:
LAB22:
LAB13:    goto LAB3;

LAB9:    t2 = (t0 + 1032U);
    t5 = *((char **)t2);
    t15 = *((unsigned char *)t5);
    t16 = (t15 == (unsigned char)3);
    t3 = t16;
    goto LAB11;

LAB12:    xsi_set_current_line(168, ng0);
    t10 = xsi_get_transient_memory(10U);
    memset(t10, 0, 10U);
    t13 = t10;
    memset(t13, (unsigned char)2, 10U);
    t14 = (t0 + 8584);
    t18 = (t14 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t10, 10U);
    xsi_driver_first_trans_fast(t14);
    xsi_set_current_line(169, ng0);
    t1 = (t0 + 13040);
    t6 = ((IEEE_P_2592010699) + 4024);
    t7 = (t0 + 12364U);
    t5 = xsi_base_array_concat(t5, t11, t6, (char)99, (unsigned char)2, (char)97, t1, t7, (char)101);
    t12 = (1U + 15U);
    t3 = (16U != t12);
    if (t3 == 1)
        goto LAB15;

LAB16:    t8 = (t0 + 8712);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t13 = (t10 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t5, 16U);
    xsi_driver_first_trans_fast(t8);
    goto LAB13;

LAB15:    xsi_size_not_matching(16U, t12, 0);
    goto LAB16;

LAB17:    xsi_size_not_matching(10U, t22, 0);
    goto LAB18;

LAB19:    xsi_size_not_matching(12U, t22, 0);
    goto LAB20;

LAB21:    xsi_set_current_line(174, ng0);
    t7 = xsi_get_transient_memory(16U);
    memset(t7, 0, 16U);
    t8 = t7;
    memset(t8, (unsigned char)2, 16U);
    t9 = (t0 + 8712);
    t10 = (t9 + 56U);
    t13 = *((char **)t10);
    t14 = (t13 + 56U);
    t18 = *((char **)t14);
    memcpy(t18, t7, 16U);
    xsi_driver_first_trans_fast(t9);
    goto LAB22;

}

static void work_a_0146206143_1516540902_p_6(char *t0)
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

LAB0:    xsi_set_current_line(179, ng0);

LAB3:    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t3 = (11 - 10);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 8776);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 10U);
    xsi_driver_first_trans_fast(t6);

LAB2:    t11 = (t0 + 8168);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0146206143_1516540902_p_7(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(180, ng0);

LAB3:    t1 = (t0 + 3432U);
    t2 = *((char **)t1);
    t1 = (t0 + 8840);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 16U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 8184);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_0146206143_1516540902_init()
{
	static char *pe[] = {(void *)work_a_0146206143_1516540902_p_0,(void *)work_a_0146206143_1516540902_p_1,(void *)work_a_0146206143_1516540902_p_2,(void *)work_a_0146206143_1516540902_p_3,(void *)work_a_0146206143_1516540902_p_4,(void *)work_a_0146206143_1516540902_p_5,(void *)work_a_0146206143_1516540902_p_6,(void *)work_a_0146206143_1516540902_p_7};
	xsi_register_didat("work_a_0146206143_1516540902", "isim/func_gen_tb_isim_beh.exe.sim/work/a_0146206143_1516540902.didat");
	xsi_register_executes(pe);
}
