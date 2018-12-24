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
static const char *ng0 = "C:/Users/MirAdnan/Documents/DSD/VHDL/ALU4bit/alu4bit.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_1922276087_1035706684(char *, char *, char *, char *, char *, char *);


static void work_a_3282054447_1142133938_p_0(char *t0)
{
    char t13[16];
    char t15[16];
    char t21[16];
    char t31[16];
    char t32[16];
    char *t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned int t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    unsigned char t12;
    char *t14;
    char *t16;
    char *t17;
    int t18;
    unsigned int t19;
    char *t20;
    char *t22;
    char *t23;
    unsigned int t24;
    unsigned char t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    int t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;

LAB0:    xsi_set_current_line(34, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 7154);
    t4 = 1;
    if (2U == 2U)
        goto LAB5;

LAB6:    t4 = 0;

LAB7:    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 7159);
    t4 = 1;
    if (2U == 2U)
        goto LAB15;

LAB16:    t4 = 0;

LAB17:    if (t4 != 0)
        goto LAB13;

LAB14:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 7164);
    t4 = 1;
    if (2U == 2U)
        goto LAB25;

LAB26:    t4 = 0;

LAB27:    if (t4 != 0)
        goto LAB23;

LAB24:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 7166);
    t4 = 1;
    if (2U == 2U)
        goto LAB33;

LAB34:    t4 = 0;

LAB35:    if (t4 != 0)
        goto LAB31;

LAB32:    xsi_set_current_line(43, ng0);
    t1 = (t0 + 7176);
    t3 = (t0 + 4352);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 8U);
    xsi_driver_first_trans_fast_port(t3);

LAB3:    t1 = (t0 + 4272);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(35, ng0);
    t8 = (t0 + 7156);
    t10 = (t0 + 2312U);
    t11 = *((char **)t10);
    t12 = *((unsigned char *)t11);
    t14 = ((IEEE_P_2592010699) + 4024);
    t16 = (t15 + 0U);
    t17 = (t16 + 0U);
    *((int *)t17) = 0;
    t17 = (t16 + 4U);
    *((int *)t17) = 2;
    t17 = (t16 + 8U);
    *((int *)t17) = 1;
    t18 = (2 - 0);
    t19 = (t18 * 1);
    t19 = (t19 + 1);
    t17 = (t16 + 12U);
    *((unsigned int *)t17) = t19;
    t10 = xsi_base_array_concat(t10, t13, t14, (char)97, t8, t15, (char)99, t12, (char)101);
    t17 = (t0 + 1832U);
    t20 = *((char **)t17);
    t22 = ((IEEE_P_2592010699) + 4024);
    t23 = (t0 + 7084U);
    t17 = xsi_base_array_concat(t17, t21, t22, (char)97, t10, t13, (char)97, t20, t23, (char)101);
    t19 = (3U + 1U);
    t24 = (t19 + 4U);
    t25 = (8U != t24);
    if (t25 == 1)
        goto LAB11;

LAB12:    t26 = (t0 + 4352);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    memcpy(t30, t17, 8U);
    xsi_driver_first_trans_fast_port(t26);
    goto LAB3;

LAB5:    t5 = 0;

LAB8:    if (t5 < 2U)
        goto LAB9;
    else
        goto LAB7;

LAB9:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB6;

LAB10:    t5 = (t5 + 1);
    goto LAB8;

LAB11:    xsi_size_not_matching(8U, t24, 0);
    goto LAB12;

LAB13:    xsi_set_current_line(37, ng0);
    t8 = (t0 + 7161);
    t10 = (t0 + 2472U);
    t11 = *((char **)t10);
    t12 = *((unsigned char *)t11);
    t14 = ((IEEE_P_2592010699) + 4024);
    t16 = (t15 + 0U);
    t17 = (t16 + 0U);
    *((int *)t17) = 0;
    t17 = (t16 + 4U);
    *((int *)t17) = 2;
    t17 = (t16 + 8U);
    *((int *)t17) = 1;
    t18 = (2 - 0);
    t19 = (t18 * 1);
    t19 = (t19 + 1);
    t17 = (t16 + 12U);
    *((unsigned int *)t17) = t19;
    t10 = xsi_base_array_concat(t10, t13, t14, (char)97, t8, t15, (char)99, t12, (char)101);
    t17 = (t0 + 1992U);
    t20 = *((char **)t17);
    t22 = ((IEEE_P_2592010699) + 4024);
    t23 = (t0 + 7084U);
    t17 = xsi_base_array_concat(t17, t21, t22, (char)97, t10, t13, (char)97, t20, t23, (char)101);
    t19 = (3U + 1U);
    t24 = (t19 + 4U);
    t25 = (8U != t24);
    if (t25 == 1)
        goto LAB21;

LAB22:    t26 = (t0 + 4352);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    memcpy(t30, t17, 8U);
    xsi_driver_first_trans_fast_port(t26);
    goto LAB3;

LAB15:    t5 = 0;

LAB18:    if (t5 < 2U)
        goto LAB19;
    else
        goto LAB17;

LAB19:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB16;

LAB20:    t5 = (t5 + 1);
    goto LAB18;

LAB21:    xsi_size_not_matching(8U, t24, 0);
    goto LAB22;

LAB23:    xsi_set_current_line(39, ng0);
    t8 = (t0 + 2152U);
    t9 = *((char **)t8);
    t8 = (t0 + 4352);
    t10 = (t8 + 56U);
    t11 = *((char **)t10);
    t14 = (t11 + 56U);
    t16 = *((char **)t14);
    memcpy(t16, t9, 8U);
    xsi_driver_first_trans_fast_port(t8);
    goto LAB3;

LAB25:    t5 = 0;

LAB28:    if (t5 < 2U)
        goto LAB29;
    else
        goto LAB27;

LAB29:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB26;

LAB30:    t5 = (t5 + 1);
    goto LAB28;

LAB31:    xsi_set_current_line(41, ng0);
    t8 = (t0 + 7168);
    t10 = (t0 + 1032U);
    t11 = *((char **)t10);
    t14 = ((IEEE_P_1242562249) + 3000);
    t16 = (t21 + 0U);
    t17 = (t16 + 0U);
    *((int *)t17) = 0;
    t17 = (t16 + 4U);
    *((int *)t17) = 3;
    t17 = (t16 + 8U);
    *((int *)t17) = 1;
    t18 = (3 - 0);
    t19 = (t18 * 1);
    t19 = (t19 + 1);
    t17 = (t16 + 12U);
    *((unsigned int *)t17) = t19;
    t17 = (t0 + 7004U);
    t10 = xsi_base_array_concat(t10, t15, t14, (char)97, t8, t21, (char)97, t11, t17, (char)101);
    t20 = (t0 + 7172);
    t23 = (t0 + 1192U);
    t26 = *((char **)t23);
    t27 = ((IEEE_P_1242562249) + 3000);
    t28 = (t32 + 0U);
    t29 = (t28 + 0U);
    *((int *)t29) = 0;
    t29 = (t28 + 4U);
    *((int *)t29) = 3;
    t29 = (t28 + 8U);
    *((int *)t29) = 1;
    t33 = (3 - 0);
    t19 = (t33 * 1);
    t19 = (t19 + 1);
    t29 = (t28 + 12U);
    *((unsigned int *)t29) = t19;
    t29 = (t0 + 7020U);
    t23 = xsi_base_array_concat(t23, t31, t27, (char)97, t20, t32, (char)97, t26, t29, (char)101);
    t30 = ieee_p_1242562249_sub_1922276087_1035706684(IEEE_P_1242562249, t13, t10, t15, t23, t31);
    t34 = (t0 + 4352);
    t35 = (t34 + 56U);
    t36 = *((char **)t35);
    t37 = (t36 + 56U);
    t38 = *((char **)t37);
    memcpy(t38, t30, 8U);
    xsi_driver_first_trans_fast_port(t34);
    goto LAB3;

LAB33:    t5 = 0;

LAB36:    if (t5 < 2U)
        goto LAB37;
    else
        goto LAB35;

LAB37:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB34;

LAB38:    t5 = (t5 + 1);
    goto LAB36;

}


extern void work_a_3282054447_1142133938_init()
{
	static char *pe[] = {(void *)work_a_3282054447_1142133938_p_0};
	xsi_register_didat("work_a_3282054447_1142133938", "isim/tb_isim_beh.exe.sim/work/a_3282054447_1142133938.didat");
	xsi_register_executes(pe);
}
