%% Source codes for My_percentiles_Corr_Coefficient_ab_c1_Asian.mat
%
%% The cut-off age divides the data into two parts.
% <= Cut_off_Age: nonlinear model; 
% > Cut_off_Age: linear model
Cut_off_Age = 19; 
Window = 3;
%% Parameter information for drawing
My_mark_type = '.';
My_LineWidth = 0.5;
My_LineWidth_1 = 1.5;
My_FontName = 'Times New Roman';
My_fontSize = 12;
My_Alpha = 1; % transparency of the filled area
My_MarkerSize = 4;
Edgealpha = 0;
Alpha = 1;
My_Percentile = [5 50 95]; % quantile distribution
%% Colors
load('My_Colors.mat')
%% Loading the correlation coefficients
% 03-Asian
load('./03-Asian/Coefficients_a_and_b_c1_Asia.mat')
%% We merge them.
Age_All_Female = [Age_25_Israel Age_BCCPDS_7_21_China Age_Chongqing_6_21_China Age_Japanese_1_8 Age_Jilin_China ...
    Age_KSPF_Korea Age_Bangladesh_2011_14];

Age_All_Male = [Age_25_Israel Age_BCCPDS_7_21_China Age_Chongqing_6_21_China Age_Japanese_1_8 Age_Jilin_China ...
    Age_KSPF_Korea];

Coefficient_a_All_Female = [Coefficient_a_Female_1_25_Israel Coefficient_a_Female_1_BCCPDS_7_21_China Coefficient_a_Female_1_Chongqing_6_21_China ...
    Coefficient_a_Female_1_Japanese_1_8 Coefficient_a_Female_1_Jilin_China Coefficient_a_Female_1_KSPF_Korea ...
    Coefficient_a_Female_1_Bangladesh_2011_14];

Coefficient_b_All_Female = [Coefficient_b_Female_1_25_Israel Coefficient_b_Female_1_BCCPDS_7_21_China Coefficient_b_Female_1_Chongqing_6_21_China ...
    Coefficient_b_Female_1_Japanese_1_8 Coefficient_b_Female_1_Jilin_China Coefficient_b_Female_1_KSPF_Korea ...
    Coefficient_b_Female_1_Bangladesh_2011_14];

Coefficient_a_All_Male = [Coefficient_a_Male_1_25_Israel Coefficient_a_Male_1_BCCPDS_7_21_China Coefficient_a_Male_1_Chongqing_6_21_China ...
    Coefficient_a_Male_1_Japanese_1_8 Coefficient_a_Male_1_Jilin_China Coefficient_a_Male_1_KSPF_Korea];

Coefficient_b_All_Male = [Coefficient_b_Male_1_25_Israel Coefficient_b_Male_1_BCCPDS_7_21_China Coefficient_b_Male_1_Chongqing_6_21_China ...
    Coefficient_b_Male_1_Japanese_1_8 Coefficient_b_Male_1_Jilin_China Coefficient_b_Male_1_KSPF_Korea];

%%
Coefficient_a_Age_1_Female = [];
Coefficient_a_Age_2_Female = [];
Coefficient_a_Age_3_Female = [];
Coefficient_a_Age_4_Female = [];
Coefficient_a_Age_5_Female = [];
Coefficient_a_Age_6_Female = [];
Coefficient_a_Age_7_Female = [];
Coefficient_a_Age_8_Female = [];
Coefficient_a_Age_9_Female = [];
Coefficient_a_Age_10_Female = [];
Coefficient_a_Age_11_Female = [];
Coefficient_a_Age_12_Female = [];
Coefficient_a_Age_13_Female = [];
Coefficient_a_Age_14_Female = [];
Coefficient_a_Age_15_Female = [];
Coefficient_a_Age_16_Female = [];
Coefficient_a_Age_17_Female = [];
Coefficient_a_Age_18_Female = [];
Coefficient_a_Age_19_Female = [];
Coefficient_a_Age_20_Female = [];
Coefficient_a_Age_21_Female = [];
Coefficient_a_Age_22_Female = [];
Coefficient_a_Age_23_Female = [];
Coefficient_a_Age_24_Female = [];
Coefficient_a_Age_25_Female = [];
Coefficient_a_Age_26_Female = [];
Coefficient_a_Age_27_Female = [];
Coefficient_a_Age_28_Female = [];
Coefficient_a_Age_29_Female = [];
Coefficient_a_Age_30_Female = [];
Coefficient_a_Age_31_Female = [];
Coefficient_a_Age_32_Female = [];
Coefficient_a_Age_33_Female = [];
Coefficient_a_Age_34_Female = [];
Coefficient_a_Age_35_Female = [];
Coefficient_a_Age_36_Female = [];
Coefficient_a_Age_37_Female = [];
Coefficient_a_Age_38_Female = [];
Coefficient_a_Age_39_Female = [];
Coefficient_a_Age_40_Female = [];
Coefficient_a_Age_41_Female = [];
Coefficient_a_Age_42_Female = [];
Coefficient_a_Age_43_Female = [];
Coefficient_a_Age_44_Female = [];
Coefficient_a_Age_45_Female = [];
Coefficient_a_Age_46_Female = [];
Coefficient_a_Age_47_Female = [];
Coefficient_a_Age_48_Female = [];
Coefficient_a_Age_49_Female = [];
Coefficient_a_Age_50_Female = [];
Coefficient_a_Age_51_Female = [];
Coefficient_a_Age_52_Female = [];
Coefficient_a_Age_53_Female = [];
Coefficient_a_Age_54_Female = [];
Coefficient_a_Age_55_Female = [];
Coefficient_a_Age_56_Female = [];
Coefficient_a_Age_57_Female = [];
Coefficient_a_Age_58_Female = [];
Coefficient_a_Age_59_Female = [];
Coefficient_a_Age_60_Female = [];
Coefficient_a_Age_61_Female = [];
Coefficient_a_Age_62_Female = [];
Coefficient_a_Age_63_Female = [];
Coefficient_a_Age_64_Female = [];
Coefficient_a_Age_65_Female = [];
Coefficient_a_Age_66_Female = [];
Coefficient_a_Age_67_Female = [];
Coefficient_a_Age_68_Female = [];
Coefficient_a_Age_69_Female = [];
Coefficient_a_Age_70_Female = [];
Coefficient_a_Age_71_Female = [];
Coefficient_a_Age_72_Female = [];
Coefficient_a_Age_73_Female = [];
Coefficient_a_Age_74_Female = [];
Coefficient_a_Age_75_Female = [];
Coefficient_a_Age_76_Female = [];
Coefficient_a_Age_77_Female = [];
Coefficient_a_Age_78_Female = [];
Coefficient_a_Age_79_Female = [];
Coefficient_a_Age_80_Female = [];
Coefficient_a_Age_81_Female = [];
Coefficient_a_Age_82_Female = [];
Coefficient_a_Age_83_Female = [];
Coefficient_a_Age_84_Female = [];
Coefficient_a_Age_85_Female = [];
Coefficient_a_Age_86_Female = [];
Coefficient_a_Age_87_Female = [];
Coefficient_a_Age_88_Female = [];
Coefficient_a_Age_89_Female = [];
Coefficient_a_Age_90_Female = [];

Coefficient_b_Age_1_Female = [];
Coefficient_b_Age_2_Female = [];
Coefficient_b_Age_3_Female = [];
Coefficient_b_Age_4_Female = [];
Coefficient_b_Age_5_Female = [];
Coefficient_b_Age_6_Female = [];
Coefficient_b_Age_7_Female = [];
Coefficient_b_Age_8_Female = [];
Coefficient_b_Age_9_Female = [];
Coefficient_b_Age_10_Female = [];
Coefficient_b_Age_11_Female = [];
Coefficient_b_Age_12_Female = [];
Coefficient_b_Age_13_Female = [];
Coefficient_b_Age_14_Female = [];
Coefficient_b_Age_15_Female = [];
Coefficient_b_Age_16_Female = [];
Coefficient_b_Age_17_Female = [];
Coefficient_b_Age_18_Female = [];
Coefficient_b_Age_19_Female = [];
Coefficient_b_Age_20_Female = [];
Coefficient_b_Age_21_Female = [];
Coefficient_b_Age_22_Female = [];
Coefficient_b_Age_23_Female = [];
Coefficient_b_Age_24_Female = [];
Coefficient_b_Age_25_Female = [];
Coefficient_b_Age_26_Female = [];
Coefficient_b_Age_27_Female = [];
Coefficient_b_Age_28_Female = [];
Coefficient_b_Age_29_Female = [];
Coefficient_b_Age_30_Female = [];
Coefficient_b_Age_31_Female = [];
Coefficient_b_Age_32_Female = [];
Coefficient_b_Age_33_Female = [];
Coefficient_b_Age_34_Female = [];
Coefficient_b_Age_35_Female = [];
Coefficient_b_Age_36_Female = [];
Coefficient_b_Age_37_Female = [];
Coefficient_b_Age_38_Female = [];
Coefficient_b_Age_39_Female = [];
Coefficient_b_Age_40_Female = [];
Coefficient_b_Age_41_Female = [];
Coefficient_b_Age_42_Female = [];
Coefficient_b_Age_43_Female = [];
Coefficient_b_Age_44_Female = [];
Coefficient_b_Age_45_Female = [];
Coefficient_b_Age_46_Female = [];
Coefficient_b_Age_47_Female = [];
Coefficient_b_Age_48_Female = [];
Coefficient_b_Age_49_Female = [];
Coefficient_b_Age_50_Female = [];
Coefficient_b_Age_51_Female = [];
Coefficient_b_Age_52_Female = [];
Coefficient_b_Age_53_Female = [];
Coefficient_b_Age_54_Female = [];
Coefficient_b_Age_55_Female = [];
Coefficient_b_Age_56_Female = [];
Coefficient_b_Age_57_Female = [];
Coefficient_b_Age_58_Female = [];
Coefficient_b_Age_59_Female = [];
Coefficient_b_Age_60_Female = [];
Coefficient_b_Age_61_Female = [];
Coefficient_b_Age_62_Female = [];
Coefficient_b_Age_63_Female = [];
Coefficient_b_Age_64_Female = [];
Coefficient_b_Age_65_Female = [];
Coefficient_b_Age_66_Female = [];
Coefficient_b_Age_67_Female = [];
Coefficient_b_Age_68_Female = [];
Coefficient_b_Age_69_Female = [];
Coefficient_b_Age_70_Female = [];
Coefficient_b_Age_71_Female = [];
Coefficient_b_Age_72_Female = [];
Coefficient_b_Age_73_Female = [];
Coefficient_b_Age_74_Female = [];
Coefficient_b_Age_75_Female = [];
Coefficient_b_Age_76_Female = [];
Coefficient_b_Age_77_Female = [];
Coefficient_b_Age_78_Female = [];
Coefficient_b_Age_79_Female = [];
Coefficient_b_Age_80_Female = [];
Coefficient_b_Age_81_Female = [];
Coefficient_b_Age_82_Female = [];
Coefficient_b_Age_83_Female = [];
Coefficient_b_Age_84_Female = [];
Coefficient_b_Age_85_Female = [];
Coefficient_b_Age_86_Female = [];
Coefficient_b_Age_87_Female = [];
Coefficient_b_Age_88_Female = [];
Coefficient_b_Age_89_Female = [];
Coefficient_b_Age_90_Female = [];

Coefficient_a_Age_1_Male = [];
Coefficient_a_Age_2_Male = [];
Coefficient_a_Age_3_Male = [];
Coefficient_a_Age_4_Male = [];
Coefficient_a_Age_5_Male = [];
Coefficient_a_Age_6_Male = [];
Coefficient_a_Age_7_Male = [];
Coefficient_a_Age_8_Male = [];
Coefficient_a_Age_9_Male = [];
Coefficient_a_Age_10_Male = [];
Coefficient_a_Age_11_Male = [];
Coefficient_a_Age_12_Male = [];
Coefficient_a_Age_13_Male = [];
Coefficient_a_Age_14_Male = [];
Coefficient_a_Age_15_Male = [];
Coefficient_a_Age_16_Male = [];
Coefficient_a_Age_17_Male = [];
Coefficient_a_Age_18_Male = [];
Coefficient_a_Age_19_Male = [];
Coefficient_a_Age_20_Male = [];
Coefficient_a_Age_21_Male = [];
Coefficient_a_Age_22_Male = [];
Coefficient_a_Age_23_Male = [];
Coefficient_a_Age_24_Male = [];
Coefficient_a_Age_25_Male = [];
Coefficient_a_Age_26_Male = [];
Coefficient_a_Age_27_Male = [];
Coefficient_a_Age_28_Male = [];
Coefficient_a_Age_29_Male = [];
Coefficient_a_Age_30_Male = [];
Coefficient_a_Age_31_Male = [];
Coefficient_a_Age_32_Male = [];
Coefficient_a_Age_33_Male = [];
Coefficient_a_Age_34_Male = [];
Coefficient_a_Age_35_Male = [];
Coefficient_a_Age_36_Male = [];
Coefficient_a_Age_37_Male = [];
Coefficient_a_Age_38_Male = [];
Coefficient_a_Age_39_Male = [];
Coefficient_a_Age_40_Male = [];
Coefficient_a_Age_41_Male = [];
Coefficient_a_Age_42_Male = [];
Coefficient_a_Age_43_Male = [];
Coefficient_a_Age_44_Male = [];
Coefficient_a_Age_45_Male = [];
Coefficient_a_Age_46_Male = [];
Coefficient_a_Age_47_Male = [];
Coefficient_a_Age_48_Male = [];
Coefficient_a_Age_49_Male = [];
Coefficient_a_Age_50_Male = [];
Coefficient_a_Age_51_Male = [];
Coefficient_a_Age_52_Male = [];
Coefficient_a_Age_53_Male = [];
Coefficient_a_Age_54_Male = [];
Coefficient_a_Age_55_Male = [];
Coefficient_a_Age_56_Male = [];
Coefficient_a_Age_57_Male = [];
Coefficient_a_Age_58_Male = [];
Coefficient_a_Age_59_Male = [];
Coefficient_a_Age_60_Male = [];
Coefficient_a_Age_61_Male = [];
Coefficient_a_Age_62_Male = [];
Coefficient_a_Age_63_Male = [];
Coefficient_a_Age_64_Male = [];
Coefficient_a_Age_65_Male = [];
Coefficient_a_Age_66_Male = [];
Coefficient_a_Age_67_Male = [];
Coefficient_a_Age_68_Male = [];
Coefficient_a_Age_69_Male = [];
Coefficient_a_Age_70_Male = [];
Coefficient_a_Age_71_Male = [];
Coefficient_a_Age_72_Male = [];
Coefficient_a_Age_73_Male = [];
Coefficient_a_Age_74_Male = [];
Coefficient_a_Age_75_Male = [];
Coefficient_a_Age_76_Male = [];
Coefficient_a_Age_77_Male = [];
Coefficient_a_Age_78_Male = [];
Coefficient_a_Age_79_Male = [];
Coefficient_a_Age_80_Male = [];
Coefficient_a_Age_81_Male = [];
Coefficient_a_Age_82_Male = [];
Coefficient_a_Age_83_Male = [];
Coefficient_a_Age_84_Male = [];
Coefficient_a_Age_85_Male = [];
Coefficient_a_Age_86_Male = [];
Coefficient_a_Age_87_Male = [];
Coefficient_a_Age_88_Male = [];
Coefficient_a_Age_89_Male = [];
Coefficient_a_Age_90_Male = [];

Coefficient_b_Age_1_Male = [];
Coefficient_b_Age_2_Male = [];
Coefficient_b_Age_3_Male = [];
Coefficient_b_Age_4_Male = [];
Coefficient_b_Age_5_Male = [];
Coefficient_b_Age_6_Male = [];
Coefficient_b_Age_7_Male = [];
Coefficient_b_Age_8_Male = [];
Coefficient_b_Age_9_Male = [];
Coefficient_b_Age_10_Male = [];
Coefficient_b_Age_11_Male = [];
Coefficient_b_Age_12_Male = [];
Coefficient_b_Age_13_Male = [];
Coefficient_b_Age_14_Male = [];
Coefficient_b_Age_15_Male = [];
Coefficient_b_Age_16_Male = [];
Coefficient_b_Age_17_Male = [];
Coefficient_b_Age_18_Male = [];
Coefficient_b_Age_19_Male = [];
Coefficient_b_Age_20_Male = [];
Coefficient_b_Age_21_Male = [];
Coefficient_b_Age_22_Male = [];
Coefficient_b_Age_23_Male = [];
Coefficient_b_Age_24_Male = [];
Coefficient_b_Age_25_Male = [];
Coefficient_b_Age_26_Male = [];
Coefficient_b_Age_27_Male = [];
Coefficient_b_Age_28_Male = [];
Coefficient_b_Age_29_Male = [];
Coefficient_b_Age_30_Male = [];
Coefficient_b_Age_31_Male = [];
Coefficient_b_Age_32_Male = [];
Coefficient_b_Age_33_Male = [];
Coefficient_b_Age_34_Male = [];
Coefficient_b_Age_35_Male = [];
Coefficient_b_Age_36_Male = [];
Coefficient_b_Age_37_Male = [];
Coefficient_b_Age_38_Male = [];
Coefficient_b_Age_39_Male = [];
Coefficient_b_Age_40_Male = [];
Coefficient_b_Age_41_Male = [];
Coefficient_b_Age_42_Male = [];
Coefficient_b_Age_43_Male = [];
Coefficient_b_Age_44_Male = [];
Coefficient_b_Age_45_Male = [];
Coefficient_b_Age_46_Male = [];
Coefficient_b_Age_47_Male = [];
Coefficient_b_Age_48_Male = [];
Coefficient_b_Age_49_Male = [];
Coefficient_b_Age_50_Male = [];
Coefficient_b_Age_51_Male = [];
Coefficient_b_Age_52_Male = [];
Coefficient_b_Age_53_Male = [];
Coefficient_b_Age_54_Male = [];
Coefficient_b_Age_55_Male = [];
Coefficient_b_Age_56_Male = [];
Coefficient_b_Age_57_Male = [];
Coefficient_b_Age_58_Male = [];
Coefficient_b_Age_59_Male = [];
Coefficient_b_Age_60_Male = [];
Coefficient_b_Age_61_Male = [];
Coefficient_b_Age_62_Male = [];
Coefficient_b_Age_63_Male = [];
Coefficient_b_Age_64_Male = [];
Coefficient_b_Age_65_Male = [];
Coefficient_b_Age_66_Male = [];
Coefficient_b_Age_67_Male = [];
Coefficient_b_Age_68_Male = [];
Coefficient_b_Age_69_Male = [];
Coefficient_b_Age_70_Male = [];
Coefficient_b_Age_71_Male = [];
Coefficient_b_Age_72_Male = [];
Coefficient_b_Age_73_Male = [];
Coefficient_b_Age_74_Male = [];
Coefficient_b_Age_75_Male = [];
Coefficient_b_Age_76_Male = [];
Coefficient_b_Age_77_Male = [];
Coefficient_b_Age_78_Male = [];
Coefficient_b_Age_79_Male = [];
Coefficient_b_Age_80_Male = [];
Coefficient_b_Age_81_Male = [];
Coefficient_b_Age_82_Male = [];
Coefficient_b_Age_83_Male = [];
Coefficient_b_Age_84_Male = [];
Coefficient_b_Age_85_Male = [];
Coefficient_b_Age_86_Male = [];
Coefficient_b_Age_87_Male = [];
Coefficient_b_Age_88_Male = [];
Coefficient_b_Age_89_Male = [];
Coefficient_b_Age_90_Male = [];

[M N] = size(Age_All_Female);
for i = 1:N
    if Age_All_Female(i) == 1
        Coefficient_a_Age_1_Female = [Coefficient_a_Age_1_Female Coefficient_a_All_Female(i)];
        Coefficient_b_Age_1_Female = [Coefficient_b_Age_1_Female Coefficient_b_All_Female(i)];
    end
    if Age_All_Female(i) == 2
        Coefficient_a_Age_2_Female = [Coefficient_a_Age_2_Female Coefficient_a_All_Female(i)];
        Coefficient_b_Age_2_Female = [Coefficient_b_Age_2_Female Coefficient_b_All_Female(i)];
    end
    if Age_All_Female(i) == 3
        Coefficient_a_Age_3_Female = [Coefficient_a_Age_3_Female Coefficient_a_All_Female(i)];
        Coefficient_b_Age_3_Female = [Coefficient_b_Age_3_Female Coefficient_b_All_Female(i)];
    end
    if Age_All_Female(i) == 4
        Coefficient_a_Age_4_Female = [Coefficient_a_Age_4_Female Coefficient_a_All_Female(i)];
        Coefficient_b_Age_4_Female = [Coefficient_b_Age_4_Female Coefficient_b_All_Female(i)];
    end
    if Age_All_Female(i) == 5
        Coefficient_a_Age_5_Female = [Coefficient_a_Age_5_Female Coefficient_a_All_Female(i)];
        Coefficient_b_Age_5_Female = [Coefficient_b_Age_5_Female Coefficient_b_All_Female(i)];
    end
    if Age_All_Female(i) == 6
        Coefficient_a_Age_6_Female = [Coefficient_a_Age_6_Female Coefficient_a_All_Female(i)];
        Coefficient_b_Age_6_Female = [Coefficient_b_Age_6_Female Coefficient_b_All_Female(i)];
    end
    if Age_All_Female(i) == 7
        Coefficient_a_Age_7_Female = [Coefficient_a_Age_7_Female Coefficient_a_All_Female(i)];
        Coefficient_b_Age_7_Female = [Coefficient_b_Age_7_Female Coefficient_b_All_Female(i)];
    end
    if Age_All_Female(i) == 8
        Coefficient_a_Age_8_Female = [Coefficient_a_Age_8_Female Coefficient_a_All_Female(i)];
        Coefficient_b_Age_8_Female = [Coefficient_b_Age_8_Female Coefficient_b_All_Female(i)];
    end
    if Age_All_Female(i) == 9
        Coefficient_a_Age_9_Female = [Coefficient_a_Age_9_Female Coefficient_a_All_Female(i)];
        Coefficient_b_Age_9_Female = [Coefficient_b_Age_9_Female Coefficient_b_All_Female(i)];
    end
    if Age_All_Female(i) == 10
        Coefficient_a_Age_10_Female = [Coefficient_a_Age_10_Female Coefficient_a_All_Female(i)];
        Coefficient_b_Age_10_Female = [Coefficient_b_Age_10_Female Coefficient_b_All_Female(i)];
    end
    if Age_All_Female(i) == 11
        Coefficient_a_Age_11_Female = [Coefficient_a_Age_11_Female Coefficient_a_All_Female(i)];
        Coefficient_b_Age_11_Female = [Coefficient_b_Age_11_Female Coefficient_b_All_Female(i)];
    end
    if Age_All_Female(i) == 12
        Coefficient_a_Age_12_Female = [Coefficient_a_Age_12_Female Coefficient_a_All_Female(i)];
        Coefficient_b_Age_12_Female = [Coefficient_b_Age_12_Female Coefficient_b_All_Female(i)];
    end
    if Age_All_Female(i) == 13
        Coefficient_a_Age_13_Female = [Coefficient_a_Age_13_Female Coefficient_a_All_Female(i)];
        Coefficient_b_Age_13_Female = [Coefficient_b_Age_13_Female Coefficient_b_All_Female(i)];
    end
    if Age_All_Female(i) == 14
        Coefficient_a_Age_14_Female = [Coefficient_a_Age_14_Female Coefficient_a_All_Female(i)];
        Coefficient_b_Age_14_Female = [Coefficient_b_Age_14_Female Coefficient_b_All_Female(i)];
    end
    if Age_All_Female(i) == 15
        Coefficient_a_Age_15_Female = [Coefficient_a_Age_15_Female Coefficient_a_All_Female(i)];
        Coefficient_b_Age_15_Female = [Coefficient_b_Age_15_Female Coefficient_b_All_Female(i)];
    end
    if Age_All_Female(i) == 16
        Coefficient_a_Age_16_Female = [Coefficient_a_Age_16_Female Coefficient_a_All_Female(i)];
        Coefficient_b_Age_16_Female = [Coefficient_b_Age_16_Female Coefficient_b_All_Female(i)];
    end
    if Age_All_Female(i) == 17
        Coefficient_a_Age_17_Female = [Coefficient_a_Age_17_Female Coefficient_a_All_Female(i)];
        Coefficient_b_Age_17_Female = [Coefficient_b_Age_17_Female Coefficient_b_All_Female(i)];
    end
    if Age_All_Female(i) == 18
        Coefficient_a_Age_18_Female = [Coefficient_a_Age_18_Female Coefficient_a_All_Female(i)];
        Coefficient_b_Age_18_Female = [Coefficient_b_Age_18_Female Coefficient_b_All_Female(i)];
    end
    if Age_All_Female(i) == 19
        Coefficient_a_Age_19_Female = [Coefficient_a_Age_19_Female Coefficient_a_All_Female(i)];
        Coefficient_b_Age_19_Female = [Coefficient_b_Age_19_Female Coefficient_b_All_Female(i)];
    end
    if Age_All_Female(i) == 20
        Coefficient_a_Age_20_Female = [Coefficient_a_Age_20_Female Coefficient_a_All_Female(i)];
        Coefficient_b_Age_20_Female = [Coefficient_b_Age_20_Female Coefficient_b_All_Female(i)];
    end
    if Age_All_Female(i) == 21
        Coefficient_a_Age_21_Female = [Coefficient_a_Age_21_Female Coefficient_a_All_Female(i)];
        Coefficient_b_Age_21_Female = [Coefficient_b_Age_21_Female Coefficient_b_All_Female(i)];
    end
    if Age_All_Female(i) == 22
        Coefficient_a_Age_22_Female = [Coefficient_a_Age_22_Female Coefficient_a_All_Female(i)];
        Coefficient_b_Age_22_Female = [Coefficient_b_Age_22_Female Coefficient_b_All_Female(i)];
    end
    if Age_All_Female(i) == 23
        Coefficient_a_Age_23_Female = [Coefficient_a_Age_23_Female Coefficient_a_All_Female(i)];
        Coefficient_b_Age_23_Female = [Coefficient_b_Age_23_Female Coefficient_b_All_Female(i)];
    end
    if Age_All_Female(i) == 24
        Coefficient_a_Age_24_Female = [Coefficient_a_Age_24_Female Coefficient_a_All_Female(i)];
        Coefficient_b_Age_24_Female = [Coefficient_b_Age_24_Female Coefficient_b_All_Female(i)];
    end
    if Age_All_Female(i) == 25
        Coefficient_a_Age_25_Female = [Coefficient_a_Age_25_Female Coefficient_a_All_Female(i)];
        Coefficient_b_Age_25_Female = [Coefficient_b_Age_25_Female Coefficient_b_All_Female(i)];
    end
    if Age_All_Female(i) == 26
        Coefficient_a_Age_26_Female = [Coefficient_a_Age_26_Female Coefficient_a_All_Female(i)];
        Coefficient_b_Age_26_Female = [Coefficient_b_Age_26_Female Coefficient_b_All_Female(i)];
    end
    if Age_All_Female(i) == 27
        Coefficient_a_Age_27_Female = [Coefficient_a_Age_27_Female Coefficient_a_All_Female(i)];
        Coefficient_b_Age_27_Female = [Coefficient_b_Age_27_Female Coefficient_b_All_Female(i)];
    end
    if Age_All_Female(i) == 28
        Coefficient_a_Age_28_Female = [Coefficient_a_Age_28_Female Coefficient_a_All_Female(i)];
        Coefficient_b_Age_28_Female = [Coefficient_b_Age_28_Female Coefficient_b_All_Female(i)];
    end
    if Age_All_Female(i) == 29
        Coefficient_a_Age_29_Female = [Coefficient_a_Age_29_Female Coefficient_a_All_Female(i)];
        Coefficient_b_Age_29_Female = [Coefficient_b_Age_29_Female Coefficient_b_All_Female(i)];
    end
    if Age_All_Female(i) == 30
        Coefficient_a_Age_30_Female = [Coefficient_a_Age_30_Female Coefficient_a_All_Female(i)];
        Coefficient_b_Age_30_Female = [Coefficient_b_Age_30_Female Coefficient_b_All_Female(i)];
    end
    if Age_All_Female(i) == 31
        Coefficient_a_Age_31_Female = [Coefficient_a_Age_31_Female Coefficient_a_All_Female(i)];
        Coefficient_b_Age_31_Female = [Coefficient_b_Age_31_Female Coefficient_b_All_Female(i)];
    end
    if Age_All_Female(i) == 32
        Coefficient_a_Age_32_Female = [Coefficient_a_Age_32_Female Coefficient_a_All_Female(i)];
        Coefficient_b_Age_32_Female = [Coefficient_b_Age_32_Female Coefficient_b_All_Female(i)];
    end
    if Age_All_Female(i) == 33
        Coefficient_a_Age_33_Female = [Coefficient_a_Age_33_Female Coefficient_a_All_Female(i)];
        Coefficient_b_Age_33_Female = [Coefficient_b_Age_33_Female Coefficient_b_All_Female(i)];
    end
    if Age_All_Female(i) == 34
        Coefficient_a_Age_34_Female = [Coefficient_a_Age_34_Female Coefficient_a_All_Female(i)];
        Coefficient_b_Age_34_Female = [Coefficient_b_Age_34_Female Coefficient_b_All_Female(i)];
    end
    if Age_All_Female(i) == 35
        Coefficient_a_Age_35_Female = [Coefficient_a_Age_35_Female Coefficient_a_All_Female(i)];
        Coefficient_b_Age_35_Female = [Coefficient_b_Age_35_Female Coefficient_b_All_Female(i)];
    end
    if Age_All_Female(i) == 36
        Coefficient_a_Age_36_Female = [Coefficient_a_Age_36_Female Coefficient_a_All_Female(i)];
        Coefficient_b_Age_36_Female = [Coefficient_b_Age_36_Female Coefficient_b_All_Female(i)];
    end
    if Age_All_Female(i) == 37
        Coefficient_a_Age_37_Female = [Coefficient_a_Age_37_Female Coefficient_a_All_Female(i)];
        Coefficient_b_Age_37_Female = [Coefficient_b_Age_37_Female Coefficient_b_All_Female(i)];
    end
    if Age_All_Female(i) == 38
        Coefficient_a_Age_38_Female = [Coefficient_a_Age_38_Female Coefficient_a_All_Female(i)];
        Coefficient_b_Age_38_Female = [Coefficient_b_Age_38_Female Coefficient_b_All_Female(i)];
    end
    if Age_All_Female(i) == 39
        Coefficient_a_Age_39_Female = [Coefficient_a_Age_39_Female Coefficient_a_All_Female(i)];
        Coefficient_b_Age_39_Female = [Coefficient_b_Age_39_Female Coefficient_b_All_Female(i)];
    end
    if Age_All_Female(i) == 40
        Coefficient_a_Age_40_Female = [Coefficient_a_Age_40_Female Coefficient_a_All_Female(i)];
        Coefficient_b_Age_40_Female = [Coefficient_b_Age_40_Female Coefficient_b_All_Female(i)];
    end
    if Age_All_Female(i) == 41
        Coefficient_a_Age_41_Female = [Coefficient_a_Age_41_Female Coefficient_a_All_Female(i)];
        Coefficient_b_Age_41_Female = [Coefficient_b_Age_41_Female Coefficient_b_All_Female(i)];
    end
    if Age_All_Female(i) == 42
        Coefficient_a_Age_42_Female = [Coefficient_a_Age_42_Female Coefficient_a_All_Female(i)];
        Coefficient_b_Age_42_Female = [Coefficient_b_Age_42_Female Coefficient_b_All_Female(i)];
    end
    if Age_All_Female(i) == 43
        Coefficient_a_Age_43_Female = [Coefficient_a_Age_43_Female Coefficient_a_All_Female(i)];
        Coefficient_b_Age_43_Female = [Coefficient_b_Age_43_Female Coefficient_b_All_Female(i)];
    end
    if Age_All_Female(i) == 44
        Coefficient_a_Age_44_Female = [Coefficient_a_Age_44_Female Coefficient_a_All_Female(i)];
        Coefficient_b_Age_44_Female = [Coefficient_b_Age_44_Female Coefficient_b_All_Female(i)];
    end
    if Age_All_Female(i) == 45
        Coefficient_a_Age_45_Female = [Coefficient_a_Age_45_Female Coefficient_a_All_Female(i)];
        Coefficient_b_Age_45_Female = [Coefficient_b_Age_45_Female Coefficient_b_All_Female(i)];
    end
    if Age_All_Female(i) == 46
        Coefficient_a_Age_46_Female = [Coefficient_a_Age_46_Female Coefficient_a_All_Female(i)];
        Coefficient_b_Age_46_Female = [Coefficient_b_Age_46_Female Coefficient_b_All_Female(i)];
    end
    if Age_All_Female(i) == 47
        Coefficient_a_Age_47_Female = [Coefficient_a_Age_47_Female Coefficient_a_All_Female(i)];
        Coefficient_b_Age_47_Female = [Coefficient_b_Age_47_Female Coefficient_b_All_Female(i)];
    end
    if Age_All_Female(i) == 48
        Coefficient_a_Age_48_Female = [Coefficient_a_Age_48_Female Coefficient_a_All_Female(i)];
        Coefficient_b_Age_48_Female = [Coefficient_b_Age_48_Female Coefficient_b_All_Female(i)];
    end
    if Age_All_Female(i) == 49
        Coefficient_a_Age_49_Female = [Coefficient_a_Age_49_Female Coefficient_a_All_Female(i)];
        Coefficient_b_Age_49_Female = [Coefficient_b_Age_49_Female Coefficient_b_All_Female(i)];
    end
    if Age_All_Female(i) == 50
        Coefficient_a_Age_50_Female = [Coefficient_a_Age_50_Female Coefficient_a_All_Female(i)];
        Coefficient_b_Age_50_Female = [Coefficient_b_Age_50_Female Coefficient_b_All_Female(i)];
    end
    if Age_All_Female(i) == 51
        Coefficient_a_Age_51_Female = [Coefficient_a_Age_51_Female Coefficient_a_All_Female(i)];
        Coefficient_b_Age_51_Female = [Coefficient_b_Age_51_Female Coefficient_b_All_Female(i)];
    end
    if Age_All_Female(i) == 52
        Coefficient_a_Age_52_Female = [Coefficient_a_Age_52_Female Coefficient_a_All_Female(i)];
        Coefficient_b_Age_52_Female = [Coefficient_b_Age_52_Female Coefficient_b_All_Female(i)];
    end
    if Age_All_Female(i) == 53
        Coefficient_a_Age_53_Female = [Coefficient_a_Age_53_Female Coefficient_a_All_Female(i)];
        Coefficient_b_Age_53_Female = [Coefficient_b_Age_53_Female Coefficient_b_All_Female(i)];
    end
    if Age_All_Female(i) == 54
        Coefficient_a_Age_54_Female = [Coefficient_a_Age_54_Female Coefficient_a_All_Female(i)];
        Coefficient_b_Age_54_Female = [Coefficient_b_Age_54_Female Coefficient_b_All_Female(i)];
    end
    if Age_All_Female(i) == 55
        Coefficient_a_Age_55_Female = [Coefficient_a_Age_55_Female Coefficient_a_All_Female(i)];
        Coefficient_b_Age_55_Female = [Coefficient_b_Age_55_Female Coefficient_b_All_Female(i)];
    end
    if Age_All_Female(i) == 56
        Coefficient_a_Age_56_Female = [Coefficient_a_Age_56_Female Coefficient_a_All_Female(i)];
        Coefficient_b_Age_56_Female = [Coefficient_b_Age_56_Female Coefficient_b_All_Female(i)];
    end
    if Age_All_Female(i) == 57
        Coefficient_a_Age_57_Female = [Coefficient_a_Age_57_Female Coefficient_a_All_Female(i)];
        Coefficient_b_Age_57_Female = [Coefficient_b_Age_57_Female Coefficient_b_All_Female(i)];
    end
    if Age_All_Female(i) == 58
        Coefficient_a_Age_58_Female = [Coefficient_a_Age_58_Female Coefficient_a_All_Female(i)];
        Coefficient_b_Age_58_Female = [Coefficient_b_Age_58_Female Coefficient_b_All_Female(i)];
    end
    if Age_All_Female(i) == 59
        Coefficient_a_Age_59_Female = [Coefficient_a_Age_59_Female Coefficient_a_All_Female(i)];
        Coefficient_b_Age_59_Female = [Coefficient_b_Age_59_Female Coefficient_b_All_Female(i)];
    end
    if Age_All_Female(i) == 60
        Coefficient_a_Age_60_Female = [Coefficient_a_Age_60_Female Coefficient_a_All_Female(i)];
        Coefficient_b_Age_60_Female = [Coefficient_b_Age_60_Female Coefficient_b_All_Female(i)];
    end
    if Age_All_Female(i) == 61
        Coefficient_a_Age_61_Female = [Coefficient_a_Age_61_Female Coefficient_a_All_Female(i)];
        Coefficient_b_Age_61_Female = [Coefficient_b_Age_61_Female Coefficient_b_All_Female(i)];
    end
    if Age_All_Female(i) == 62
        Coefficient_a_Age_62_Female = [Coefficient_a_Age_62_Female Coefficient_a_All_Female(i)];
        Coefficient_b_Age_62_Female = [Coefficient_b_Age_62_Female Coefficient_b_All_Female(i)];
    end
    if Age_All_Female(i) == 63
        Coefficient_a_Age_63_Female = [Coefficient_a_Age_63_Female Coefficient_a_All_Female(i)];
        Coefficient_b_Age_63_Female = [Coefficient_b_Age_63_Female Coefficient_b_All_Female(i)];
    end
    if Age_All_Female(i) == 64
        Coefficient_a_Age_64_Female = [Coefficient_a_Age_64_Female Coefficient_a_All_Female(i)];
        Coefficient_b_Age_64_Female = [Coefficient_b_Age_64_Female Coefficient_b_All_Female(i)];
    end
    if Age_All_Female(i) == 65
        Coefficient_a_Age_65_Female = [Coefficient_a_Age_65_Female Coefficient_a_All_Female(i)];
        Coefficient_b_Age_65_Female = [Coefficient_b_Age_65_Female Coefficient_b_All_Female(i)];
    end
    if Age_All_Female(i) == 66
        Coefficient_a_Age_66_Female = [Coefficient_a_Age_66_Female Coefficient_a_All_Female(i)];
        Coefficient_b_Age_66_Female = [Coefficient_b_Age_66_Female Coefficient_b_All_Female(i)];
    end
    if Age_All_Female(i) == 67
        Coefficient_a_Age_67_Female = [Coefficient_a_Age_67_Female Coefficient_a_All_Female(i)];
        Coefficient_b_Age_67_Female = [Coefficient_b_Age_67_Female Coefficient_b_All_Female(i)];
    end
    if Age_All_Female(i) == 68
        Coefficient_a_Age_68_Female = [Coefficient_a_Age_68_Female Coefficient_a_All_Female(i)];
        Coefficient_b_Age_68_Female = [Coefficient_b_Age_68_Female Coefficient_b_All_Female(i)];
    end
    if Age_All_Female(i) == 69
        Coefficient_a_Age_69_Female = [Coefficient_a_Age_69_Female Coefficient_a_All_Female(i)];
        Coefficient_b_Age_69_Female = [Coefficient_b_Age_69_Female Coefficient_b_All_Female(i)];
    end
    if Age_All_Female(i) == 70
        Coefficient_a_Age_70_Female = [Coefficient_a_Age_70_Female Coefficient_a_All_Female(i)];
        Coefficient_b_Age_70_Female = [Coefficient_b_Age_70_Female Coefficient_b_All_Female(i)];
    end
    if Age_All_Female(i) == 71
        Coefficient_a_Age_71_Female = [Coefficient_a_Age_71_Female Coefficient_a_All_Female(i)];
        Coefficient_b_Age_71_Female = [Coefficient_b_Age_71_Female Coefficient_b_All_Female(i)];
    end
    if Age_All_Female(i) == 72
        Coefficient_a_Age_72_Female = [Coefficient_a_Age_72_Female Coefficient_a_All_Female(i)];
        Coefficient_b_Age_72_Female = [Coefficient_b_Age_72_Female Coefficient_b_All_Female(i)];
    end
    if Age_All_Female(i) == 73
        Coefficient_a_Age_73_Female = [Coefficient_a_Age_73_Female Coefficient_a_All_Female(i)];
        Coefficient_b_Age_73_Female = [Coefficient_b_Age_73_Female Coefficient_b_All_Female(i)];
    end
    if Age_All_Female(i) == 74
        Coefficient_a_Age_74_Female = [Coefficient_a_Age_74_Female Coefficient_a_All_Female(i)];
        Coefficient_b_Age_74_Female = [Coefficient_b_Age_74_Female Coefficient_b_All_Female(i)];
    end
    if Age_All_Female(i) == 75
        Coefficient_a_Age_75_Female = [Coefficient_a_Age_75_Female Coefficient_a_All_Female(i)];
        Coefficient_b_Age_75_Female = [Coefficient_b_Age_75_Female Coefficient_b_All_Female(i)];
    end
    if Age_All_Female(i) == 76
        Coefficient_a_Age_76_Female = [Coefficient_a_Age_76_Female Coefficient_a_All_Female(i)];
        Coefficient_b_Age_76_Female = [Coefficient_b_Age_76_Female Coefficient_b_All_Female(i)];
    end
    if Age_All_Female(i) == 77
        Coefficient_a_Age_77_Female = [Coefficient_a_Age_77_Female Coefficient_a_All_Female(i)];
        Coefficient_b_Age_77_Female = [Coefficient_b_Age_77_Female Coefficient_b_All_Female(i)];
    end
    if Age_All_Female(i) == 78
        Coefficient_a_Age_78_Female = [Coefficient_a_Age_78_Female Coefficient_a_All_Female(i)];
        Coefficient_b_Age_78_Female = [Coefficient_b_Age_78_Female Coefficient_b_All_Female(i)];
    end
    if Age_All_Female(i) == 79
        Coefficient_a_Age_79_Female = [Coefficient_a_Age_79_Female Coefficient_a_All_Female(i)];
        Coefficient_b_Age_79_Female = [Coefficient_b_Age_79_Female Coefficient_b_All_Female(i)];
    end
    if Age_All_Female(i) == 80
        Coefficient_a_Age_80_Female = [Coefficient_a_Age_80_Female Coefficient_a_All_Female(i)];
        Coefficient_b_Age_80_Female = [Coefficient_b_Age_80_Female Coefficient_b_All_Female(i)];
    end
    if Age_All_Female(i) == 81
        Coefficient_a_Age_81_Female = [Coefficient_a_Age_81_Female Coefficient_a_All_Female(i)];
        Coefficient_b_Age_81_Female = [Coefficient_b_Age_81_Female Coefficient_b_All_Female(i)];
    end
    if Age_All_Female(i) == 82
        Coefficient_a_Age_82_Female = [Coefficient_a_Age_82_Female Coefficient_a_All_Female(i)];
        Coefficient_b_Age_82_Female = [Coefficient_b_Age_82_Female Coefficient_b_All_Female(i)];
    end
    if Age_All_Female(i) == 83
        Coefficient_a_Age_83_Female = [Coefficient_a_Age_83_Female Coefficient_a_All_Female(i)];
        Coefficient_b_Age_83_Female = [Coefficient_b_Age_83_Female Coefficient_b_All_Female(i)];
    end
    if Age_All_Female(i) == 84
        Coefficient_a_Age_84_Female = [Coefficient_a_Age_84_Female Coefficient_a_All_Female(i)];
        Coefficient_b_Age_84_Female = [Coefficient_b_Age_84_Female Coefficient_b_All_Female(i)];
    end
    if Age_All_Female(i) == 85
        Coefficient_a_Age_85_Female = [Coefficient_a_Age_85_Female Coefficient_a_All_Female(i)];
        Coefficient_b_Age_85_Female = [Coefficient_b_Age_85_Female Coefficient_b_All_Female(i)];
    end
    if Age_All_Female(i) == 86
        Coefficient_a_Age_86_Female = [Coefficient_a_Age_86_Female Coefficient_a_All_Female(i)];
        Coefficient_b_Age_86_Female = [Coefficient_b_Age_86_Female Coefficient_b_All_Female(i)];
    end
    if Age_All_Female(i) == 87
        Coefficient_a_Age_87_Female = [Coefficient_a_Age_87_Female Coefficient_a_All_Female(i)];
        Coefficient_b_Age_87_Female = [Coefficient_b_Age_87_Female Coefficient_b_All_Female(i)];
    end
    if Age_All_Female(i) == 88
        Coefficient_a_Age_88_Female = [Coefficient_a_Age_88_Female Coefficient_a_All_Female(i)];
        Coefficient_b_Age_88_Female = [Coefficient_b_Age_88_Female Coefficient_b_All_Female(i)];
    end
    if Age_All_Female(i) == 89
        Coefficient_a_Age_89_Female = [Coefficient_a_Age_89_Female Coefficient_a_All_Female(i)];
        Coefficient_b_Age_89_Female = [Coefficient_b_Age_89_Female Coefficient_b_All_Female(i)];
    end
    if Age_All_Female(i) == 90
        Coefficient_a_Age_90_Female = [Coefficient_a_Age_90_Female Coefficient_a_All_Female(i)];
        Coefficient_b_Age_90_Female = [Coefficient_b_Age_90_Female Coefficient_b_All_Female(i)];
    end    
end

[M N] = size(Age_All_Male);
for i = 1:N
    if Age_All_Male(i) == 1
        Coefficient_a_Age_1_Male = [Coefficient_a_Age_1_Male Coefficient_a_All_Male(i)];
        Coefficient_b_Age_1_Male = [Coefficient_b_Age_1_Male Coefficient_b_All_Male(i)];
    end
    if Age_All_Male(i) == 2
        Coefficient_a_Age_2_Male = [Coefficient_a_Age_2_Male Coefficient_a_All_Male(i)];
        Coefficient_b_Age_2_Male = [Coefficient_b_Age_2_Male Coefficient_b_All_Male(i)];
    end
    if Age_All_Male(i) == 3
        Coefficient_a_Age_3_Male = [Coefficient_a_Age_3_Male Coefficient_a_All_Male(i)];
        Coefficient_b_Age_3_Male = [Coefficient_b_Age_3_Male Coefficient_b_All_Male(i)];
    end
    if Age_All_Male(i) == 4
        Coefficient_a_Age_4_Male = [Coefficient_a_Age_4_Male Coefficient_a_All_Male(i)];
        Coefficient_b_Age_4_Male = [Coefficient_b_Age_4_Male Coefficient_b_All_Male(i)];
    end
    if Age_All_Male(i) == 5
        Coefficient_a_Age_5_Male = [Coefficient_a_Age_5_Male Coefficient_a_All_Male(i)];
        Coefficient_b_Age_5_Male = [Coefficient_b_Age_5_Male Coefficient_b_All_Male(i)];
    end
    if Age_All_Male(i) == 6
        Coefficient_a_Age_6_Male = [Coefficient_a_Age_6_Male Coefficient_a_All_Male(i)];
        Coefficient_b_Age_6_Male = [Coefficient_b_Age_6_Male Coefficient_b_All_Male(i)];
    end
    if Age_All_Male(i) == 7
        Coefficient_a_Age_7_Male = [Coefficient_a_Age_7_Male Coefficient_a_All_Male(i)];
        Coefficient_b_Age_7_Male = [Coefficient_b_Age_7_Male Coefficient_b_All_Male(i)];
    end
    if Age_All_Male(i) == 8
        Coefficient_a_Age_8_Male = [Coefficient_a_Age_8_Male Coefficient_a_All_Male(i)];
        Coefficient_b_Age_8_Male = [Coefficient_b_Age_8_Male Coefficient_b_All_Male(i)];
    end
    if Age_All_Male(i) == 9
        Coefficient_a_Age_9_Male = [Coefficient_a_Age_9_Male Coefficient_a_All_Male(i)];
        Coefficient_b_Age_9_Male = [Coefficient_b_Age_9_Male Coefficient_b_All_Male(i)];
    end
    if Age_All_Male(i) == 10
        Coefficient_a_Age_10_Male = [Coefficient_a_Age_10_Male Coefficient_a_All_Male(i)];
        Coefficient_b_Age_10_Male = [Coefficient_b_Age_10_Male Coefficient_b_All_Male(i)];
    end
    if Age_All_Male(i) == 11
        Coefficient_a_Age_11_Male = [Coefficient_a_Age_11_Male Coefficient_a_All_Male(i)];
        Coefficient_b_Age_11_Male = [Coefficient_b_Age_11_Male Coefficient_b_All_Male(i)];
    end
    if Age_All_Male(i) == 12
        Coefficient_a_Age_12_Male = [Coefficient_a_Age_12_Male Coefficient_a_All_Male(i)];
        Coefficient_b_Age_12_Male = [Coefficient_b_Age_12_Male Coefficient_b_All_Male(i)];
    end
    if Age_All_Male(i) == 13
        Coefficient_a_Age_13_Male = [Coefficient_a_Age_13_Male Coefficient_a_All_Male(i)];
        Coefficient_b_Age_13_Male = [Coefficient_b_Age_13_Male Coefficient_b_All_Male(i)];
    end
    if Age_All_Male(i) == 14
        Coefficient_a_Age_14_Male = [Coefficient_a_Age_14_Male Coefficient_a_All_Male(i)];
        Coefficient_b_Age_14_Male = [Coefficient_b_Age_14_Male Coefficient_b_All_Male(i)];
    end
    if Age_All_Male(i) == 15
        Coefficient_a_Age_15_Male = [Coefficient_a_Age_15_Male Coefficient_a_All_Male(i)];
        Coefficient_b_Age_15_Male = [Coefficient_b_Age_15_Male Coefficient_b_All_Male(i)];
    end
    if Age_All_Male(i) == 16
        Coefficient_a_Age_16_Male = [Coefficient_a_Age_16_Male Coefficient_a_All_Male(i)];
        Coefficient_b_Age_16_Male = [Coefficient_b_Age_16_Male Coefficient_b_All_Male(i)];
    end
    if Age_All_Male(i) == 17
        Coefficient_a_Age_17_Male = [Coefficient_a_Age_17_Male Coefficient_a_All_Male(i)];
        Coefficient_b_Age_17_Male = [Coefficient_b_Age_17_Male Coefficient_b_All_Male(i)];
    end
    if Age_All_Male(i) == 18
        Coefficient_a_Age_18_Male = [Coefficient_a_Age_18_Male Coefficient_a_All_Male(i)];
        Coefficient_b_Age_18_Male = [Coefficient_b_Age_18_Male Coefficient_b_All_Male(i)];
    end
    if Age_All_Male(i) == 19
        Coefficient_a_Age_19_Male = [Coefficient_a_Age_19_Male Coefficient_a_All_Male(i)];
        Coefficient_b_Age_19_Male = [Coefficient_b_Age_19_Male Coefficient_b_All_Male(i)];
    end
    if Age_All_Male(i) == 20
        Coefficient_a_Age_20_Male = [Coefficient_a_Age_20_Male Coefficient_a_All_Male(i)];
        Coefficient_b_Age_20_Male = [Coefficient_b_Age_20_Male Coefficient_b_All_Male(i)];
    end
    if Age_All_Male(i) == 21
        Coefficient_a_Age_21_Male = [Coefficient_a_Age_21_Male Coefficient_a_All_Male(i)];
        Coefficient_b_Age_21_Male = [Coefficient_b_Age_21_Male Coefficient_b_All_Male(i)];
    end
    if Age_All_Male(i) == 22
        Coefficient_a_Age_22_Male = [Coefficient_a_Age_22_Male Coefficient_a_All_Male(i)];
        Coefficient_b_Age_22_Male = [Coefficient_b_Age_22_Male Coefficient_b_All_Male(i)];
    end
    if Age_All_Male(i) == 23
        Coefficient_a_Age_23_Male = [Coefficient_a_Age_23_Male Coefficient_a_All_Male(i)];
        Coefficient_b_Age_23_Male = [Coefficient_b_Age_23_Male Coefficient_b_All_Male(i)];
    end
    if Age_All_Male(i) == 24
        Coefficient_a_Age_24_Male = [Coefficient_a_Age_24_Male Coefficient_a_All_Male(i)];
        Coefficient_b_Age_24_Male = [Coefficient_b_Age_24_Male Coefficient_b_All_Male(i)];
    end
    if Age_All_Male(i) == 25
        Coefficient_a_Age_25_Male = [Coefficient_a_Age_25_Male Coefficient_a_All_Male(i)];
        Coefficient_b_Age_25_Male = [Coefficient_b_Age_25_Male Coefficient_b_All_Male(i)];
    end
    if Age_All_Male(i) == 26
        Coefficient_a_Age_26_Male = [Coefficient_a_Age_26_Male Coefficient_a_All_Male(i)];
        Coefficient_b_Age_26_Male = [Coefficient_b_Age_26_Male Coefficient_b_All_Male(i)];
    end
    if Age_All_Male(i) == 27
        Coefficient_a_Age_27_Male = [Coefficient_a_Age_27_Male Coefficient_a_All_Male(i)];
        Coefficient_b_Age_27_Male = [Coefficient_b_Age_27_Male Coefficient_b_All_Male(i)];
    end
    if Age_All_Male(i) == 28
        Coefficient_a_Age_28_Male = [Coefficient_a_Age_28_Male Coefficient_a_All_Male(i)];
        Coefficient_b_Age_28_Male = [Coefficient_b_Age_28_Male Coefficient_b_All_Male(i)];
    end
    if Age_All_Male(i) == 29
        Coefficient_a_Age_29_Male = [Coefficient_a_Age_29_Male Coefficient_a_All_Male(i)];
        Coefficient_b_Age_29_Male = [Coefficient_b_Age_29_Male Coefficient_b_All_Male(i)];
    end
    if Age_All_Male(i) == 30
        Coefficient_a_Age_30_Male = [Coefficient_a_Age_30_Male Coefficient_a_All_Male(i)];
        Coefficient_b_Age_30_Male = [Coefficient_b_Age_30_Male Coefficient_b_All_Male(i)];
    end
    if Age_All_Male(i) == 31
        Coefficient_a_Age_31_Male = [Coefficient_a_Age_31_Male Coefficient_a_All_Male(i)];
        Coefficient_b_Age_31_Male = [Coefficient_b_Age_31_Male Coefficient_b_All_Male(i)];
    end
    if Age_All_Male(i) == 32
        Coefficient_a_Age_32_Male = [Coefficient_a_Age_32_Male Coefficient_a_All_Male(i)];
        Coefficient_b_Age_32_Male = [Coefficient_b_Age_32_Male Coefficient_b_All_Male(i)];
    end
    if Age_All_Male(i) == 33
        Coefficient_a_Age_33_Male = [Coefficient_a_Age_33_Male Coefficient_a_All_Male(i)];
        Coefficient_b_Age_33_Male = [Coefficient_b_Age_33_Male Coefficient_b_All_Male(i)];
    end
    if Age_All_Male(i) == 34
        Coefficient_a_Age_34_Male = [Coefficient_a_Age_34_Male Coefficient_a_All_Male(i)];
        Coefficient_b_Age_34_Male = [Coefficient_b_Age_34_Male Coefficient_b_All_Male(i)];
    end
    if Age_All_Male(i) == 35
        Coefficient_a_Age_35_Male = [Coefficient_a_Age_35_Male Coefficient_a_All_Male(i)];
        Coefficient_b_Age_35_Male = [Coefficient_b_Age_35_Male Coefficient_b_All_Male(i)];
    end
    if Age_All_Male(i) == 36
        Coefficient_a_Age_36_Male = [Coefficient_a_Age_36_Male Coefficient_a_All_Male(i)];
        Coefficient_b_Age_36_Male = [Coefficient_b_Age_36_Male Coefficient_b_All_Male(i)];
    end
    if Age_All_Male(i) == 37
        Coefficient_a_Age_37_Male = [Coefficient_a_Age_37_Male Coefficient_a_All_Male(i)];
        Coefficient_b_Age_37_Male = [Coefficient_b_Age_37_Male Coefficient_b_All_Male(i)];
    end
    if Age_All_Male(i) == 38
        Coefficient_a_Age_38_Male = [Coefficient_a_Age_38_Male Coefficient_a_All_Male(i)];
        Coefficient_b_Age_38_Male = [Coefficient_b_Age_38_Male Coefficient_b_All_Male(i)];
    end
    if Age_All_Male(i) == 39
        Coefficient_a_Age_39_Male = [Coefficient_a_Age_39_Male Coefficient_a_All_Male(i)];
        Coefficient_b_Age_39_Male = [Coefficient_b_Age_39_Male Coefficient_b_All_Male(i)];
    end
    if Age_All_Male(i) == 40
        Coefficient_a_Age_40_Male = [Coefficient_a_Age_40_Male Coefficient_a_All_Male(i)];
        Coefficient_b_Age_40_Male = [Coefficient_b_Age_40_Male Coefficient_b_All_Male(i)];
    end
    if Age_All_Male(i) == 41
        Coefficient_a_Age_41_Male = [Coefficient_a_Age_41_Male Coefficient_a_All_Male(i)];
        Coefficient_b_Age_41_Male = [Coefficient_b_Age_41_Male Coefficient_b_All_Male(i)];
    end
    if Age_All_Male(i) == 42
        Coefficient_a_Age_42_Male = [Coefficient_a_Age_42_Male Coefficient_a_All_Male(i)];
        Coefficient_b_Age_42_Male = [Coefficient_b_Age_42_Male Coefficient_b_All_Male(i)];
    end
    if Age_All_Male(i) == 43
        Coefficient_a_Age_43_Male = [Coefficient_a_Age_43_Male Coefficient_a_All_Male(i)];
        Coefficient_b_Age_43_Male = [Coefficient_b_Age_43_Male Coefficient_b_All_Male(i)];
    end
    if Age_All_Male(i) == 44
        Coefficient_a_Age_44_Male = [Coefficient_a_Age_44_Male Coefficient_a_All_Male(i)];
        Coefficient_b_Age_44_Male = [Coefficient_b_Age_44_Male Coefficient_b_All_Male(i)];
    end
    if Age_All_Male(i) == 45
        Coefficient_a_Age_45_Male = [Coefficient_a_Age_45_Male Coefficient_a_All_Male(i)];
        Coefficient_b_Age_45_Male = [Coefficient_b_Age_45_Male Coefficient_b_All_Male(i)];
    end
    if Age_All_Male(i) == 46
        Coefficient_a_Age_46_Male = [Coefficient_a_Age_46_Male Coefficient_a_All_Male(i)];
        Coefficient_b_Age_46_Male = [Coefficient_b_Age_46_Male Coefficient_b_All_Male(i)];
    end
    if Age_All_Male(i) == 47
        Coefficient_a_Age_47_Male = [Coefficient_a_Age_47_Male Coefficient_a_All_Male(i)];
        Coefficient_b_Age_47_Male = [Coefficient_b_Age_47_Male Coefficient_b_All_Male(i)];
    end
    if Age_All_Male(i) == 48
        Coefficient_a_Age_48_Male = [Coefficient_a_Age_48_Male Coefficient_a_All_Male(i)];
        Coefficient_b_Age_48_Male = [Coefficient_b_Age_48_Male Coefficient_b_All_Male(i)];
    end
    if Age_All_Male(i) == 49
        Coefficient_a_Age_49_Male = [Coefficient_a_Age_49_Male Coefficient_a_All_Male(i)];
        Coefficient_b_Age_49_Male = [Coefficient_b_Age_49_Male Coefficient_b_All_Male(i)];
    end
    if Age_All_Male(i) == 50
        Coefficient_a_Age_50_Male = [Coefficient_a_Age_50_Male Coefficient_a_All_Male(i)];
        Coefficient_b_Age_50_Male = [Coefficient_b_Age_50_Male Coefficient_b_All_Male(i)];
    end
    if Age_All_Male(i) == 51
        Coefficient_a_Age_51_Male = [Coefficient_a_Age_51_Male Coefficient_a_All_Male(i)];
        Coefficient_b_Age_51_Male = [Coefficient_b_Age_51_Male Coefficient_b_All_Male(i)];
    end
    if Age_All_Male(i) == 52
        Coefficient_a_Age_52_Male = [Coefficient_a_Age_52_Male Coefficient_a_All_Male(i)];
        Coefficient_b_Age_52_Male = [Coefficient_b_Age_52_Male Coefficient_b_All_Male(i)];
    end
    if Age_All_Male(i) == 53
        Coefficient_a_Age_53_Male = [Coefficient_a_Age_53_Male Coefficient_a_All_Male(i)];
        Coefficient_b_Age_53_Male = [Coefficient_b_Age_53_Male Coefficient_b_All_Male(i)];
    end
    if Age_All_Male(i) == 54
        Coefficient_a_Age_54_Male = [Coefficient_a_Age_54_Male Coefficient_a_All_Male(i)];
        Coefficient_b_Age_54_Male = [Coefficient_b_Age_54_Male Coefficient_b_All_Male(i)];
    end
    if Age_All_Male(i) == 55
        Coefficient_a_Age_55_Male = [Coefficient_a_Age_55_Male Coefficient_a_All_Male(i)];
        Coefficient_b_Age_55_Male = [Coefficient_b_Age_55_Male Coefficient_b_All_Male(i)];
    end
    if Age_All_Male(i) == 56
        Coefficient_a_Age_56_Male = [Coefficient_a_Age_56_Male Coefficient_a_All_Male(i)];
        Coefficient_b_Age_56_Male = [Coefficient_b_Age_56_Male Coefficient_b_All_Male(i)];
    end
    if Age_All_Male(i) == 57
        Coefficient_a_Age_57_Male = [Coefficient_a_Age_57_Male Coefficient_a_All_Male(i)];
        Coefficient_b_Age_57_Male = [Coefficient_b_Age_57_Male Coefficient_b_All_Male(i)];
    end
    if Age_All_Male(i) == 58
        Coefficient_a_Age_58_Male = [Coefficient_a_Age_58_Male Coefficient_a_All_Male(i)];
        Coefficient_b_Age_58_Male = [Coefficient_b_Age_58_Male Coefficient_b_All_Male(i)];
    end
    if Age_All_Male(i) == 59
        Coefficient_a_Age_59_Male = [Coefficient_a_Age_59_Male Coefficient_a_All_Male(i)];
        Coefficient_b_Age_59_Male = [Coefficient_b_Age_59_Male Coefficient_b_All_Male(i)];
    end
    if Age_All_Male(i) == 60
        Coefficient_a_Age_60_Male = [Coefficient_a_Age_60_Male Coefficient_a_All_Male(i)];
        Coefficient_b_Age_60_Male = [Coefficient_b_Age_60_Male Coefficient_b_All_Male(i)];
    end
    if Age_All_Male(i) == 61
        Coefficient_a_Age_61_Male = [Coefficient_a_Age_61_Male Coefficient_a_All_Male(i)];
        Coefficient_b_Age_61_Male = [Coefficient_b_Age_61_Male Coefficient_b_All_Male(i)];
    end
    if Age_All_Male(i) == 62
        Coefficient_a_Age_62_Male = [Coefficient_a_Age_62_Male Coefficient_a_All_Male(i)];
        Coefficient_b_Age_62_Male = [Coefficient_b_Age_62_Male Coefficient_b_All_Male(i)];
    end
    if Age_All_Male(i) == 63
        Coefficient_a_Age_63_Male = [Coefficient_a_Age_63_Male Coefficient_a_All_Male(i)];
        Coefficient_b_Age_63_Male = [Coefficient_b_Age_63_Male Coefficient_b_All_Male(i)];
    end
    if Age_All_Male(i) == 64
        Coefficient_a_Age_64_Male = [Coefficient_a_Age_64_Male Coefficient_a_All_Male(i)];
        Coefficient_b_Age_64_Male = [Coefficient_b_Age_64_Male Coefficient_b_All_Male(i)];
    end
    if Age_All_Male(i) == 65
        Coefficient_a_Age_65_Male = [Coefficient_a_Age_65_Male Coefficient_a_All_Male(i)];
        Coefficient_b_Age_65_Male = [Coefficient_b_Age_65_Male Coefficient_b_All_Male(i)];
    end
    if Age_All_Male(i) == 66
        Coefficient_a_Age_66_Male = [Coefficient_a_Age_66_Male Coefficient_a_All_Male(i)];
        Coefficient_b_Age_66_Male = [Coefficient_b_Age_66_Male Coefficient_b_All_Male(i)];
    end
    if Age_All_Male(i) == 67
        Coefficient_a_Age_67_Male = [Coefficient_a_Age_67_Male Coefficient_a_All_Male(i)];
        Coefficient_b_Age_67_Male = [Coefficient_b_Age_67_Male Coefficient_b_All_Male(i)];
    end
    if Age_All_Male(i) == 68
        Coefficient_a_Age_68_Male = [Coefficient_a_Age_68_Male Coefficient_a_All_Male(i)];
        Coefficient_b_Age_68_Male = [Coefficient_b_Age_68_Male Coefficient_b_All_Male(i)];
    end
    if Age_All_Male(i) == 69
        Coefficient_a_Age_69_Male = [Coefficient_a_Age_69_Male Coefficient_a_All_Male(i)];
        Coefficient_b_Age_69_Male = [Coefficient_b_Age_69_Male Coefficient_b_All_Male(i)];
    end
    if Age_All_Male(i) == 70
        Coefficient_a_Age_70_Male = [Coefficient_a_Age_70_Male Coefficient_a_All_Male(i)];
        Coefficient_b_Age_70_Male = [Coefficient_b_Age_70_Male Coefficient_b_All_Male(i)];
    end
    if Age_All_Male(i) == 71
        Coefficient_a_Age_71_Male = [Coefficient_a_Age_71_Male Coefficient_a_All_Male(i)];
        Coefficient_b_Age_71_Male = [Coefficient_b_Age_71_Male Coefficient_b_All_Male(i)];
    end
    if Age_All_Male(i) == 72
        Coefficient_a_Age_72_Male = [Coefficient_a_Age_72_Male Coefficient_a_All_Male(i)];
        Coefficient_b_Age_72_Male = [Coefficient_b_Age_72_Male Coefficient_b_All_Male(i)];
    end
    if Age_All_Male(i) == 73
        Coefficient_a_Age_73_Male = [Coefficient_a_Age_73_Male Coefficient_a_All_Male(i)];
        Coefficient_b_Age_73_Male = [Coefficient_b_Age_73_Male Coefficient_b_All_Male(i)];
    end
    if Age_All_Male(i) == 74
        Coefficient_a_Age_74_Male = [Coefficient_a_Age_74_Male Coefficient_a_All_Male(i)];
        Coefficient_b_Age_74_Male = [Coefficient_b_Age_74_Male Coefficient_b_All_Male(i)];
    end
    if Age_All_Male(i) == 75
        Coefficient_a_Age_75_Male = [Coefficient_a_Age_75_Male Coefficient_a_All_Male(i)];
        Coefficient_b_Age_75_Male = [Coefficient_b_Age_75_Male Coefficient_b_All_Male(i)];
    end
    if Age_All_Male(i) == 76
        Coefficient_a_Age_76_Male = [Coefficient_a_Age_76_Male Coefficient_a_All_Male(i)];
        Coefficient_b_Age_76_Male = [Coefficient_b_Age_76_Male Coefficient_b_All_Male(i)];
    end
    if Age_All_Male(i) == 77
        Coefficient_a_Age_77_Male = [Coefficient_a_Age_77_Male Coefficient_a_All_Male(i)];
        Coefficient_b_Age_77_Male = [Coefficient_b_Age_77_Male Coefficient_b_All_Male(i)];
    end
    if Age_All_Male(i) == 78
        Coefficient_a_Age_78_Male = [Coefficient_a_Age_78_Male Coefficient_a_All_Male(i)];
        Coefficient_b_Age_78_Male = [Coefficient_b_Age_78_Male Coefficient_b_All_Male(i)];
    end
    if Age_All_Male(i) == 79
        Coefficient_a_Age_79_Male = [Coefficient_a_Age_79_Male Coefficient_a_All_Male(i)];
        Coefficient_b_Age_79_Male = [Coefficient_b_Age_79_Male Coefficient_b_All_Male(i)];
    end
    if Age_All_Male(i) == 80
        Coefficient_a_Age_80_Male = [Coefficient_a_Age_80_Male Coefficient_a_All_Male(i)];
        Coefficient_b_Age_80_Male = [Coefficient_b_Age_80_Male Coefficient_b_All_Male(i)];
    end
    if Age_All_Male(i) == 81
        Coefficient_a_Age_81_Male = [Coefficient_a_Age_81_Male Coefficient_a_All_Male(i)];
        Coefficient_b_Age_81_Male = [Coefficient_b_Age_81_Male Coefficient_b_All_Male(i)];
    end
    if Age_All_Male(i) == 82
        Coefficient_a_Age_82_Male = [Coefficient_a_Age_82_Male Coefficient_a_All_Male(i)];
        Coefficient_b_Age_82_Male = [Coefficient_b_Age_82_Male Coefficient_b_All_Male(i)];
    end
    if Age_All_Male(i) == 83
        Coefficient_a_Age_83_Male = [Coefficient_a_Age_83_Male Coefficient_a_All_Male(i)];
        Coefficient_b_Age_83_Male = [Coefficient_b_Age_83_Male Coefficient_b_All_Male(i)];
    end
    if Age_All_Male(i) == 84
        Coefficient_a_Age_84_Male = [Coefficient_a_Age_84_Male Coefficient_a_All_Male(i)];
        Coefficient_b_Age_84_Male = [Coefficient_b_Age_84_Male Coefficient_b_All_Male(i)];
    end
    if Age_All_Male(i) == 85
        Coefficient_a_Age_85_Male = [Coefficient_a_Age_85_Male Coefficient_a_All_Male(i)];
        Coefficient_b_Age_85_Male = [Coefficient_b_Age_85_Male Coefficient_b_All_Male(i)];
    end
    if Age_All_Male(i) == 86
        Coefficient_a_Age_86_Male = [Coefficient_a_Age_86_Male Coefficient_a_All_Male(i)];
        Coefficient_b_Age_86_Male = [Coefficient_b_Age_86_Male Coefficient_b_All_Male(i)];
    end
    if Age_All_Male(i) == 87
        Coefficient_a_Age_87_Male = [Coefficient_a_Age_87_Male Coefficient_a_All_Male(i)];
        Coefficient_b_Age_87_Male = [Coefficient_b_Age_87_Male Coefficient_b_All_Male(i)];
    end
    if Age_All_Male(i) == 88
        Coefficient_a_Age_88_Male = [Coefficient_a_Age_88_Male Coefficient_a_All_Male(i)];
        Coefficient_b_Age_88_Male = [Coefficient_b_Age_88_Male Coefficient_b_All_Male(i)];
    end
    if Age_All_Male(i) == 89
        Coefficient_a_Age_89_Male = [Coefficient_a_Age_89_Male Coefficient_a_All_Male(i)];
        Coefficient_b_Age_89_Male = [Coefficient_b_Age_89_Male Coefficient_b_All_Male(i)];
    end
    if Age_All_Male(i) == 90
        Coefficient_a_Age_90_Male = [Coefficient_a_Age_90_Male Coefficient_a_All_Male(i)];
        Coefficient_b_Age_90_Male = [Coefficient_b_Age_90_Male Coefficient_b_All_Male(i)];
    end    
end

%% 5th, mean(50th), 95th
% For Female
My_P = prctile(Coefficient_a_Age_1_Female,My_Percentile);
Coefficient_a_Age_1_Female_5th = My_P(1);
Coefficient_a_Age_1_Female_50th = My_P(2);
Coefficient_a_Age_1_Female_95th = My_P(3);
Coefficient_a_Age_1_Female_mean = mean(Coefficient_a_Age_1_Female);
My_P = prctile(Coefficient_a_Age_2_Female,My_Percentile);
Coefficient_a_Age_2_Female_5th = My_P(1);
Coefficient_a_Age_2_Female_50th = My_P(2);
Coefficient_a_Age_2_Female_95th = My_P(3);
Coefficient_a_Age_2_Female_mean = mean(Coefficient_a_Age_2_Female);
My_P = prctile(Coefficient_a_Age_3_Female,My_Percentile);
Coefficient_a_Age_3_Female_5th = My_P(1);
Coefficient_a_Age_3_Female_50th = My_P(2);
Coefficient_a_Age_3_Female_95th = My_P(3);
Coefficient_a_Age_3_Female_mean = mean(Coefficient_a_Age_3_Female);
My_P = prctile(Coefficient_a_Age_4_Female,My_Percentile);
Coefficient_a_Age_4_Female_5th = My_P(1);
Coefficient_a_Age_4_Female_50th = My_P(2);
Coefficient_a_Age_4_Female_95th = My_P(3);
Coefficient_a_Age_4_Female_mean = mean(Coefficient_a_Age_4_Female);
My_P = prctile(Coefficient_a_Age_5_Female,My_Percentile);
Coefficient_a_Age_5_Female_5th = My_P(1);
Coefficient_a_Age_5_Female_50th = My_P(2);
Coefficient_a_Age_5_Female_95th = My_P(3);
Coefficient_a_Age_5_Female_mean = mean(Coefficient_a_Age_5_Female);
My_P = prctile(Coefficient_a_Age_6_Female,My_Percentile);
Coefficient_a_Age_6_Female_5th = My_P(1);
Coefficient_a_Age_6_Female_50th = My_P(2);
Coefficient_a_Age_6_Female_95th = My_P(3);
Coefficient_a_Age_6_Female_mean = mean(Coefficient_a_Age_6_Female);
My_P = prctile(Coefficient_a_Age_7_Female,My_Percentile);
Coefficient_a_Age_7_Female_5th = My_P(1);
Coefficient_a_Age_7_Female_50th = My_P(2);
Coefficient_a_Age_7_Female_95th = My_P(3);
Coefficient_a_Age_7_Female_mean = mean(Coefficient_a_Age_7_Female);
My_P = prctile(Coefficient_a_Age_8_Female,My_Percentile);
Coefficient_a_Age_8_Female_5th = My_P(1);
Coefficient_a_Age_8_Female_50th = My_P(2);
Coefficient_a_Age_8_Female_95th = My_P(3);
Coefficient_a_Age_8_Female_mean = mean(Coefficient_a_Age_8_Female);
My_P = prctile(Coefficient_a_Age_9_Female,My_Percentile);
Coefficient_a_Age_9_Female_5th = My_P(1);
Coefficient_a_Age_9_Female_50th = My_P(2);
Coefficient_a_Age_9_Female_95th = My_P(3);
Coefficient_a_Age_9_Female_mean = mean(Coefficient_a_Age_9_Female);
My_P = prctile(Coefficient_a_Age_10_Female,My_Percentile);
Coefficient_a_Age_10_Female_5th = My_P(1);
Coefficient_a_Age_10_Female_50th = My_P(2);
Coefficient_a_Age_10_Female_95th = My_P(3);
Coefficient_a_Age_10_Female_mean = mean(Coefficient_a_Age_10_Female);
My_P = prctile(Coefficient_a_Age_11_Female,My_Percentile);
Coefficient_a_Age_11_Female_5th = My_P(1);
Coefficient_a_Age_11_Female_50th = My_P(2);
Coefficient_a_Age_11_Female_95th = My_P(3);
Coefficient_a_Age_11_Female_mean = mean(Coefficient_a_Age_11_Female);
My_P = prctile(Coefficient_a_Age_12_Female,My_Percentile);
Coefficient_a_Age_12_Female_5th = My_P(1);
Coefficient_a_Age_12_Female_50th = My_P(2);
Coefficient_a_Age_12_Female_95th = My_P(3);
Coefficient_a_Age_12_Female_mean = mean(Coefficient_a_Age_12_Female);
My_P = prctile(Coefficient_a_Age_13_Female,My_Percentile);
Coefficient_a_Age_13_Female_5th = My_P(1);
Coefficient_a_Age_13_Female_50th = My_P(2);
Coefficient_a_Age_13_Female_95th = My_P(3);
Coefficient_a_Age_13_Female_mean = mean(Coefficient_a_Age_13_Female);
My_P = prctile(Coefficient_a_Age_14_Female,My_Percentile);
Coefficient_a_Age_14_Female_5th = My_P(1);
Coefficient_a_Age_14_Female_50th = My_P(2);
Coefficient_a_Age_14_Female_95th = My_P(3);
Coefficient_a_Age_14_Female_mean = mean(Coefficient_a_Age_14_Female);
My_P = prctile(Coefficient_a_Age_15_Female,My_Percentile);
Coefficient_a_Age_15_Female_5th = My_P(1);
Coefficient_a_Age_15_Female_50th = My_P(2);
Coefficient_a_Age_15_Female_95th = My_P(3);
Coefficient_a_Age_15_Female_mean = mean(Coefficient_a_Age_15_Female);
My_P = prctile(Coefficient_a_Age_16_Female,My_Percentile);
Coefficient_a_Age_16_Female_5th = My_P(1);
Coefficient_a_Age_16_Female_50th = My_P(2);
Coefficient_a_Age_16_Female_95th = My_P(3);
Coefficient_a_Age_16_Female_mean = mean(Coefficient_a_Age_16_Female);
My_P = prctile(Coefficient_a_Age_17_Female,My_Percentile);
Coefficient_a_Age_17_Female_5th = My_P(1);
Coefficient_a_Age_17_Female_50th = My_P(2);
Coefficient_a_Age_17_Female_95th = My_P(3);
Coefficient_a_Age_17_Female_mean = mean(Coefficient_a_Age_17_Female);
My_P = prctile(Coefficient_a_Age_18_Female,My_Percentile);
Coefficient_a_Age_18_Female_5th = My_P(1);
Coefficient_a_Age_18_Female_50th = My_P(2);
Coefficient_a_Age_18_Female_95th = My_P(3);
Coefficient_a_Age_18_Female_mean = mean(Coefficient_a_Age_18_Female);
My_P = prctile(Coefficient_a_Age_19_Female,My_Percentile);
Coefficient_a_Age_19_Female_5th = My_P(1);
Coefficient_a_Age_19_Female_50th = My_P(2);
Coefficient_a_Age_19_Female_95th = My_P(3);
Coefficient_a_Age_19_Female_mean = mean(Coefficient_a_Age_19_Female);
My_P = prctile(Coefficient_a_Age_20_Female,My_Percentile);
Coefficient_a_Age_20_Female_5th = My_P(1);
Coefficient_a_Age_20_Female_50th = My_P(2);
Coefficient_a_Age_20_Female_95th = My_P(3);
Coefficient_a_Age_20_Female_mean = mean(Coefficient_a_Age_20_Female);
My_P = prctile(Coefficient_a_Age_21_Female,My_Percentile);
Coefficient_a_Age_21_Female_5th = My_P(1);
Coefficient_a_Age_21_Female_50th = My_P(2);
Coefficient_a_Age_21_Female_95th = My_P(3);
Coefficient_a_Age_21_Female_mean = mean(Coefficient_a_Age_21_Female);
My_P = prctile(Coefficient_a_Age_22_Female,My_Percentile);
Coefficient_a_Age_22_Female_5th = My_P(1);
Coefficient_a_Age_22_Female_50th = My_P(2);
Coefficient_a_Age_22_Female_95th = My_P(3);
Coefficient_a_Age_22_Female_mean = mean(Coefficient_a_Age_22_Female);
My_P = prctile(Coefficient_a_Age_23_Female,My_Percentile);
Coefficient_a_Age_23_Female_5th = My_P(1);
Coefficient_a_Age_23_Female_50th = My_P(2);
Coefficient_a_Age_23_Female_95th = My_P(3);
Coefficient_a_Age_23_Female_mean = mean(Coefficient_a_Age_23_Female);
My_P = prctile(Coefficient_a_Age_24_Female,My_Percentile);
Coefficient_a_Age_24_Female_5th = My_P(1);
Coefficient_a_Age_24_Female_50th = My_P(2);
Coefficient_a_Age_24_Female_95th = My_P(3);
Coefficient_a_Age_24_Female_mean = mean(Coefficient_a_Age_24_Female);
My_P = prctile(Coefficient_a_Age_25_Female,My_Percentile);
Coefficient_a_Age_25_Female_5th = My_P(1);
Coefficient_a_Age_25_Female_50th = My_P(2);
Coefficient_a_Age_25_Female_95th = My_P(3);
Coefficient_a_Age_25_Female_mean = mean(Coefficient_a_Age_25_Female);
My_P = prctile(Coefficient_a_Age_26_Female,My_Percentile);
Coefficient_a_Age_26_Female_5th = My_P(1);
Coefficient_a_Age_26_Female_50th = My_P(2);
Coefficient_a_Age_26_Female_95th = My_P(3);
Coefficient_a_Age_26_Female_mean = mean(Coefficient_a_Age_26_Female);
My_P = prctile(Coefficient_a_Age_27_Female,My_Percentile);
Coefficient_a_Age_27_Female_5th = My_P(1);
Coefficient_a_Age_27_Female_50th = My_P(2);
Coefficient_a_Age_27_Female_95th = My_P(3);
Coefficient_a_Age_27_Female_mean = mean(Coefficient_a_Age_27_Female);
My_P = prctile(Coefficient_a_Age_28_Female,My_Percentile);
Coefficient_a_Age_28_Female_5th = My_P(1);
Coefficient_a_Age_28_Female_50th = My_P(2);
Coefficient_a_Age_28_Female_95th = My_P(3);
Coefficient_a_Age_28_Female_mean = mean(Coefficient_a_Age_28_Female);
My_P = prctile(Coefficient_a_Age_29_Female,My_Percentile);
Coefficient_a_Age_29_Female_5th = My_P(1);
Coefficient_a_Age_29_Female_50th = My_P(2);
Coefficient_a_Age_29_Female_95th = My_P(3);
Coefficient_a_Age_29_Female_mean = mean(Coefficient_a_Age_29_Female);
My_P = prctile(Coefficient_a_Age_30_Female,My_Percentile);
Coefficient_a_Age_30_Female_5th = My_P(1);
Coefficient_a_Age_30_Female_50th = My_P(2);
Coefficient_a_Age_30_Female_95th = My_P(3);
Coefficient_a_Age_30_Female_mean = mean(Coefficient_a_Age_30_Female);
My_P = prctile(Coefficient_a_Age_31_Female,My_Percentile);
Coefficient_a_Age_31_Female_5th = My_P(1);
Coefficient_a_Age_31_Female_50th = My_P(2);
Coefficient_a_Age_31_Female_95th = My_P(3);
Coefficient_a_Age_31_Female_mean = mean(Coefficient_a_Age_31_Female);
My_P = prctile(Coefficient_a_Age_32_Female,My_Percentile);
Coefficient_a_Age_32_Female_5th = My_P(1);
Coefficient_a_Age_32_Female_50th = My_P(2);
Coefficient_a_Age_32_Female_95th = My_P(3);
Coefficient_a_Age_32_Female_mean = mean(Coefficient_a_Age_32_Female);
My_P = prctile(Coefficient_a_Age_33_Female,My_Percentile);
Coefficient_a_Age_33_Female_5th = My_P(1);
Coefficient_a_Age_33_Female_50th = My_P(2);
Coefficient_a_Age_33_Female_95th = My_P(3);
Coefficient_a_Age_33_Female_mean = mean(Coefficient_a_Age_33_Female);
My_P = prctile(Coefficient_a_Age_34_Female,My_Percentile);
Coefficient_a_Age_34_Female_5th = My_P(1);
Coefficient_a_Age_34_Female_50th = My_P(2);
Coefficient_a_Age_34_Female_95th = My_P(3);
Coefficient_a_Age_34_Female_mean = mean(Coefficient_a_Age_34_Female);
My_P = prctile(Coefficient_a_Age_35_Female,My_Percentile);
Coefficient_a_Age_35_Female_5th = My_P(1);
Coefficient_a_Age_35_Female_50th = My_P(2);
Coefficient_a_Age_35_Female_95th = My_P(3);
Coefficient_a_Age_35_Female_mean = mean(Coefficient_a_Age_35_Female);
My_P = prctile(Coefficient_a_Age_36_Female,My_Percentile);
Coefficient_a_Age_36_Female_5th = My_P(1);
Coefficient_a_Age_36_Female_50th = My_P(2);
Coefficient_a_Age_36_Female_95th = My_P(3);
Coefficient_a_Age_36_Female_mean = mean(Coefficient_a_Age_36_Female);
My_P = prctile(Coefficient_a_Age_37_Female,My_Percentile);
Coefficient_a_Age_37_Female_5th = My_P(1);
Coefficient_a_Age_37_Female_50th = My_P(2);
Coefficient_a_Age_37_Female_95th = My_P(3);
Coefficient_a_Age_37_Female_mean = mean(Coefficient_a_Age_37_Female);
My_P = prctile(Coefficient_a_Age_38_Female,My_Percentile);
Coefficient_a_Age_38_Female_5th = My_P(1);
Coefficient_a_Age_38_Female_50th = My_P(2);
Coefficient_a_Age_38_Female_95th = My_P(3);
Coefficient_a_Age_38_Female_mean = mean(Coefficient_a_Age_38_Female);
My_P = prctile(Coefficient_a_Age_39_Female,My_Percentile);
Coefficient_a_Age_39_Female_5th = My_P(1);
Coefficient_a_Age_39_Female_50th = My_P(2);
Coefficient_a_Age_39_Female_95th = My_P(3);
Coefficient_a_Age_39_Female_mean = mean(Coefficient_a_Age_39_Female);
My_P = prctile(Coefficient_a_Age_40_Female,My_Percentile);
Coefficient_a_Age_40_Female_5th = My_P(1);
Coefficient_a_Age_40_Female_50th = My_P(2);
Coefficient_a_Age_40_Female_95th = My_P(3);
Coefficient_a_Age_40_Female_mean = mean(Coefficient_a_Age_40_Female);
My_P = prctile(Coefficient_a_Age_41_Female,My_Percentile);
Coefficient_a_Age_41_Female_5th = My_P(1);
Coefficient_a_Age_41_Female_50th = My_P(2);
Coefficient_a_Age_41_Female_95th = My_P(3);
Coefficient_a_Age_41_Female_mean = mean(Coefficient_a_Age_41_Female);
My_P = prctile(Coefficient_a_Age_42_Female,My_Percentile);
Coefficient_a_Age_42_Female_5th = My_P(1);
Coefficient_a_Age_42_Female_50th = My_P(2);
Coefficient_a_Age_42_Female_95th = My_P(3);
Coefficient_a_Age_42_Female_mean = mean(Coefficient_a_Age_42_Female);
My_P = prctile(Coefficient_a_Age_43_Female,My_Percentile);
Coefficient_a_Age_43_Female_5th = My_P(1);
Coefficient_a_Age_43_Female_50th = My_P(2);
Coefficient_a_Age_43_Female_95th = My_P(3);
Coefficient_a_Age_43_Female_mean = mean(Coefficient_a_Age_43_Female);
My_P = prctile(Coefficient_a_Age_44_Female,My_Percentile);
Coefficient_a_Age_44_Female_5th = My_P(1);
Coefficient_a_Age_44_Female_50th = My_P(2);
Coefficient_a_Age_44_Female_95th = My_P(3);
Coefficient_a_Age_44_Female_mean = mean(Coefficient_a_Age_44_Female);
My_P = prctile(Coefficient_a_Age_45_Female,My_Percentile);
Coefficient_a_Age_45_Female_5th = My_P(1);
Coefficient_a_Age_45_Female_50th = My_P(2);
Coefficient_a_Age_45_Female_95th = My_P(3);
Coefficient_a_Age_45_Female_mean = mean(Coefficient_a_Age_45_Female);
My_P = prctile(Coefficient_a_Age_46_Female,My_Percentile);
Coefficient_a_Age_46_Female_5th = My_P(1);
Coefficient_a_Age_46_Female_50th = My_P(2);
Coefficient_a_Age_46_Female_95th = My_P(3);
Coefficient_a_Age_46_Female_mean = mean(Coefficient_a_Age_46_Female);
My_P = prctile(Coefficient_a_Age_47_Female,My_Percentile);
Coefficient_a_Age_47_Female_5th = My_P(1);
Coefficient_a_Age_47_Female_50th = My_P(2);
Coefficient_a_Age_47_Female_95th = My_P(3);
Coefficient_a_Age_47_Female_mean = mean(Coefficient_a_Age_47_Female);
My_P = prctile(Coefficient_a_Age_48_Female,My_Percentile);
Coefficient_a_Age_48_Female_5th = My_P(1);
Coefficient_a_Age_48_Female_50th = My_P(2);
Coefficient_a_Age_48_Female_95th = My_P(3);
Coefficient_a_Age_48_Female_mean = mean(Coefficient_a_Age_48_Female);
My_P = prctile(Coefficient_a_Age_49_Female,My_Percentile);
Coefficient_a_Age_49_Female_5th = My_P(1);
Coefficient_a_Age_49_Female_50th = My_P(2);
Coefficient_a_Age_49_Female_95th = My_P(3);
Coefficient_a_Age_49_Female_mean = mean(Coefficient_a_Age_49_Female);
My_P = prctile(Coefficient_a_Age_50_Female,My_Percentile);
Coefficient_a_Age_50_Female_5th = My_P(1);
Coefficient_a_Age_50_Female_50th = My_P(2);
Coefficient_a_Age_50_Female_95th = My_P(3);
Coefficient_a_Age_50_Female_mean = mean(Coefficient_a_Age_50_Female);
My_P = prctile(Coefficient_a_Age_51_Female,My_Percentile);
Coefficient_a_Age_51_Female_5th = My_P(1);
Coefficient_a_Age_51_Female_50th = My_P(2);
Coefficient_a_Age_51_Female_95th = My_P(3);
Coefficient_a_Age_51_Female_mean = mean(Coefficient_a_Age_51_Female);
My_P = prctile(Coefficient_a_Age_52_Female,My_Percentile);
Coefficient_a_Age_52_Female_5th = My_P(1);
Coefficient_a_Age_52_Female_50th = My_P(2);
Coefficient_a_Age_52_Female_95th = My_P(3);
Coefficient_a_Age_52_Female_mean = mean(Coefficient_a_Age_52_Female);
My_P = prctile(Coefficient_a_Age_53_Female,My_Percentile);
Coefficient_a_Age_53_Female_5th = My_P(1);
Coefficient_a_Age_53_Female_50th = My_P(2);
Coefficient_a_Age_53_Female_95th = My_P(3);
Coefficient_a_Age_53_Female_mean = mean(Coefficient_a_Age_53_Female);
My_P = prctile(Coefficient_a_Age_54_Female,My_Percentile);
Coefficient_a_Age_54_Female_5th = My_P(1);
Coefficient_a_Age_54_Female_50th = My_P(2);
Coefficient_a_Age_54_Female_95th = My_P(3);
Coefficient_a_Age_54_Female_mean = mean(Coefficient_a_Age_54_Female);
My_P = prctile(Coefficient_a_Age_55_Female,My_Percentile);
Coefficient_a_Age_55_Female_5th = My_P(1);
Coefficient_a_Age_55_Female_50th = My_P(2);
Coefficient_a_Age_55_Female_95th = My_P(3);
Coefficient_a_Age_55_Female_mean = mean(Coefficient_a_Age_55_Female);
My_P = prctile(Coefficient_a_Age_56_Female,My_Percentile);
Coefficient_a_Age_56_Female_5th = My_P(1);
Coefficient_a_Age_56_Female_50th = My_P(2);
Coefficient_a_Age_56_Female_95th = My_P(3);
Coefficient_a_Age_56_Female_mean = mean(Coefficient_a_Age_56_Female);
My_P = prctile(Coefficient_a_Age_57_Female,My_Percentile);
Coefficient_a_Age_57_Female_5th = My_P(1);
Coefficient_a_Age_57_Female_50th = My_P(2);
Coefficient_a_Age_57_Female_95th = My_P(3);
Coefficient_a_Age_57_Female_mean = mean(Coefficient_a_Age_57_Female);
My_P = prctile(Coefficient_a_Age_58_Female,My_Percentile);
Coefficient_a_Age_58_Female_5th = My_P(1);
Coefficient_a_Age_58_Female_50th = My_P(2);
Coefficient_a_Age_58_Female_95th = My_P(3);
Coefficient_a_Age_58_Female_mean = mean(Coefficient_a_Age_58_Female);
My_P = prctile(Coefficient_a_Age_59_Female,My_Percentile);
Coefficient_a_Age_59_Female_5th = My_P(1);
Coefficient_a_Age_59_Female_50th = My_P(2);
Coefficient_a_Age_59_Female_95th = My_P(3);
Coefficient_a_Age_59_Female_mean = mean(Coefficient_a_Age_59_Female);
My_P = prctile(Coefficient_a_Age_60_Female,My_Percentile);
Coefficient_a_Age_60_Female_5th = My_P(1);
Coefficient_a_Age_60_Female_50th = My_P(2);
Coefficient_a_Age_60_Female_95th = My_P(3);
Coefficient_a_Age_60_Female_mean = mean(Coefficient_a_Age_60_Female);
My_P = prctile(Coefficient_a_Age_61_Female,My_Percentile);
Coefficient_a_Age_61_Female_5th = My_P(1);
Coefficient_a_Age_61_Female_50th = My_P(2);
Coefficient_a_Age_61_Female_95th = My_P(3);
Coefficient_a_Age_61_Female_mean = mean(Coefficient_a_Age_61_Female);
My_P = prctile(Coefficient_a_Age_62_Female,My_Percentile);
Coefficient_a_Age_62_Female_5th = My_P(1);
Coefficient_a_Age_62_Female_50th = My_P(2);
Coefficient_a_Age_62_Female_95th = My_P(3);
Coefficient_a_Age_62_Female_mean = mean(Coefficient_a_Age_62_Female);
My_P = prctile(Coefficient_a_Age_63_Female,My_Percentile);
Coefficient_a_Age_63_Female_5th = My_P(1);
Coefficient_a_Age_63_Female_50th = My_P(2);
Coefficient_a_Age_63_Female_95th = My_P(3);
Coefficient_a_Age_63_Female_mean = mean(Coefficient_a_Age_63_Female);
My_P = prctile(Coefficient_a_Age_64_Female,My_Percentile);
Coefficient_a_Age_64_Female_5th = My_P(1);
Coefficient_a_Age_64_Female_50th = My_P(2);
Coefficient_a_Age_64_Female_95th = My_P(3);
Coefficient_a_Age_64_Female_mean = mean(Coefficient_a_Age_64_Female);
My_P = prctile(Coefficient_a_Age_65_Female,My_Percentile);
Coefficient_a_Age_65_Female_5th = My_P(1);
Coefficient_a_Age_65_Female_50th = My_P(2);
Coefficient_a_Age_65_Female_95th = My_P(3);
Coefficient_a_Age_65_Female_mean = mean(Coefficient_a_Age_65_Female);
My_P = prctile(Coefficient_a_Age_66_Female,My_Percentile);
Coefficient_a_Age_66_Female_5th = My_P(1);
Coefficient_a_Age_66_Female_50th = My_P(2);
Coefficient_a_Age_66_Female_95th = My_P(3);
Coefficient_a_Age_66_Female_mean = mean(Coefficient_a_Age_66_Female);
My_P = prctile(Coefficient_a_Age_67_Female,My_Percentile);
Coefficient_a_Age_67_Female_5th = My_P(1);
Coefficient_a_Age_67_Female_50th = My_P(2);
Coefficient_a_Age_67_Female_95th = My_P(3);
Coefficient_a_Age_67_Female_mean = mean(Coefficient_a_Age_67_Female);
My_P = prctile(Coefficient_a_Age_68_Female,My_Percentile);
Coefficient_a_Age_68_Female_5th = My_P(1);
Coefficient_a_Age_68_Female_50th = My_P(2);
Coefficient_a_Age_68_Female_95th = My_P(3);
Coefficient_a_Age_68_Female_mean = mean(Coefficient_a_Age_68_Female);
My_P = prctile(Coefficient_a_Age_69_Female,My_Percentile);
Coefficient_a_Age_69_Female_5th = My_P(1);
Coefficient_a_Age_69_Female_50th = My_P(2);
Coefficient_a_Age_69_Female_95th = My_P(3);
Coefficient_a_Age_69_Female_mean = mean(Coefficient_a_Age_69_Female);
My_P = prctile(Coefficient_a_Age_70_Female,My_Percentile);
Coefficient_a_Age_70_Female_5th = My_P(1);
Coefficient_a_Age_70_Female_50th = My_P(2);
Coefficient_a_Age_70_Female_95th = My_P(3);
Coefficient_a_Age_70_Female_mean = mean(Coefficient_a_Age_70_Female);
My_P = prctile(Coefficient_a_Age_71_Female,My_Percentile);
Coefficient_a_Age_71_Female_5th = My_P(1);
Coefficient_a_Age_71_Female_50th = My_P(2);
Coefficient_a_Age_71_Female_95th = My_P(3);
Coefficient_a_Age_71_Female_mean = mean(Coefficient_a_Age_71_Female);
My_P = prctile(Coefficient_a_Age_72_Female,My_Percentile);
Coefficient_a_Age_72_Female_5th = My_P(1);
Coefficient_a_Age_72_Female_50th = My_P(2);
Coefficient_a_Age_72_Female_95th = My_P(3);
Coefficient_a_Age_72_Female_mean = mean(Coefficient_a_Age_72_Female);
My_P = prctile(Coefficient_a_Age_73_Female,My_Percentile);
Coefficient_a_Age_73_Female_5th = My_P(1);
Coefficient_a_Age_73_Female_50th = My_P(2);
Coefficient_a_Age_73_Female_95th = My_P(3);
Coefficient_a_Age_73_Female_mean = mean(Coefficient_a_Age_73_Female);
My_P = prctile(Coefficient_a_Age_74_Female,My_Percentile);
Coefficient_a_Age_74_Female_5th = My_P(1);
Coefficient_a_Age_74_Female_50th = My_P(2);
Coefficient_a_Age_74_Female_95th = My_P(3);
Coefficient_a_Age_74_Female_mean = mean(Coefficient_a_Age_74_Female);
My_P = prctile(Coefficient_a_Age_75_Female,My_Percentile);
Coefficient_a_Age_75_Female_5th = My_P(1);
Coefficient_a_Age_75_Female_50th = My_P(2);
Coefficient_a_Age_75_Female_95th = My_P(3);
Coefficient_a_Age_75_Female_mean = mean(Coefficient_a_Age_75_Female);
My_P = prctile(Coefficient_a_Age_76_Female,My_Percentile);
Coefficient_a_Age_76_Female_5th = My_P(1);
Coefficient_a_Age_76_Female_50th = My_P(2);
Coefficient_a_Age_76_Female_95th = My_P(3);
Coefficient_a_Age_76_Female_mean = mean(Coefficient_a_Age_76_Female);
My_P = prctile(Coefficient_a_Age_77_Female,My_Percentile);
Coefficient_a_Age_77_Female_5th = My_P(1);
Coefficient_a_Age_77_Female_50th = My_P(2);
Coefficient_a_Age_77_Female_95th = My_P(3);
Coefficient_a_Age_77_Female_mean = mean(Coefficient_a_Age_77_Female);
My_P = prctile(Coefficient_a_Age_78_Female,My_Percentile);
Coefficient_a_Age_78_Female_5th = My_P(1);
Coefficient_a_Age_78_Female_50th = My_P(2);
Coefficient_a_Age_78_Female_95th = My_P(3);
Coefficient_a_Age_78_Female_mean = mean(Coefficient_a_Age_78_Female);
My_P = prctile(Coefficient_a_Age_79_Female,My_Percentile);
Coefficient_a_Age_79_Female_5th = My_P(1);
Coefficient_a_Age_79_Female_50th = My_P(2);
Coefficient_a_Age_79_Female_95th = My_P(3);
Coefficient_a_Age_79_Female_mean = mean(Coefficient_a_Age_79_Female);
My_P = prctile(Coefficient_a_Age_80_Female,My_Percentile);
Coefficient_a_Age_80_Female_5th = My_P(1);
Coefficient_a_Age_80_Female_50th = My_P(2);
Coefficient_a_Age_80_Female_95th = My_P(3);
Coefficient_a_Age_80_Female_mean = mean(Coefficient_a_Age_80_Female);
My_P = prctile(Coefficient_a_Age_81_Female,My_Percentile);
Coefficient_a_Age_81_Female_5th = My_P(1);
Coefficient_a_Age_81_Female_50th = My_P(2);
Coefficient_a_Age_81_Female_95th = My_P(3);
Coefficient_a_Age_81_Female_mean = mean(Coefficient_a_Age_81_Female);
My_P = prctile(Coefficient_a_Age_82_Female,My_Percentile);
Coefficient_a_Age_82_Female_5th = My_P(1);
Coefficient_a_Age_82_Female_50th = My_P(2);
Coefficient_a_Age_82_Female_95th = My_P(3);
Coefficient_a_Age_82_Female_mean = mean(Coefficient_a_Age_82_Female);
My_P = prctile(Coefficient_a_Age_83_Female,My_Percentile);
Coefficient_a_Age_83_Female_5th = My_P(1);
Coefficient_a_Age_83_Female_50th = My_P(2);
Coefficient_a_Age_83_Female_95th = My_P(3);
Coefficient_a_Age_83_Female_mean = mean(Coefficient_a_Age_83_Female);
My_P = prctile(Coefficient_a_Age_84_Female,My_Percentile);
Coefficient_a_Age_84_Female_5th = My_P(1);
Coefficient_a_Age_84_Female_50th = My_P(2);
Coefficient_a_Age_84_Female_95th = My_P(3);
Coefficient_a_Age_84_Female_mean = mean(Coefficient_a_Age_84_Female);
My_P = prctile(Coefficient_a_Age_85_Female,My_Percentile);
Coefficient_a_Age_85_Female_5th = My_P(1);
Coefficient_a_Age_85_Female_50th = My_P(2);
Coefficient_a_Age_85_Female_95th = My_P(3);
Coefficient_a_Age_85_Female_mean = mean(Coefficient_a_Age_85_Female);
My_P = prctile(Coefficient_a_Age_86_Female,My_Percentile);
Coefficient_a_Age_86_Female_5th = My_P(1);
Coefficient_a_Age_86_Female_50th = My_P(2);
Coefficient_a_Age_86_Female_95th = My_P(3);
Coefficient_a_Age_86_Female_mean = mean(Coefficient_a_Age_86_Female);
My_P = prctile(Coefficient_a_Age_87_Female,My_Percentile);
Coefficient_a_Age_87_Female_5th = My_P(1);
Coefficient_a_Age_87_Female_50th = My_P(2);
Coefficient_a_Age_87_Female_95th = My_P(3);
Coefficient_a_Age_87_Female_mean = mean(Coefficient_a_Age_87_Female);
My_P = prctile(Coefficient_a_Age_88_Female,My_Percentile);
Coefficient_a_Age_88_Female_5th = My_P(1);
Coefficient_a_Age_88_Female_50th = My_P(2);
Coefficient_a_Age_88_Female_95th = My_P(3);
Coefficient_a_Age_88_Female_mean = mean(Coefficient_a_Age_88_Female);
My_P = prctile(Coefficient_a_Age_89_Female,My_Percentile);
Coefficient_a_Age_89_Female_5th = My_P(1);
Coefficient_a_Age_89_Female_50th = My_P(2);
Coefficient_a_Age_89_Female_95th = My_P(3);
Coefficient_a_Age_89_Female_mean = mean(Coefficient_a_Age_89_Female);
My_P = prctile(Coefficient_a_Age_90_Female,My_Percentile);
Coefficient_a_Age_90_Female_5th = My_P(1);
Coefficient_a_Age_90_Female_50th = My_P(2);
Coefficient_a_Age_90_Female_95th = My_P(3);
Coefficient_a_Age_90_Female_mean = mean(Coefficient_a_Age_90_Female);

My_P = prctile(Coefficient_b_Age_1_Female,My_Percentile);
Coefficient_b_Age_1_Female_5th = My_P(1);
Coefficient_b_Age_1_Female_50th = My_P(2);
Coefficient_b_Age_1_Female_95th = My_P(3);
Coefficient_b_Age_1_Female_mean = mean(Coefficient_b_Age_1_Female);
My_P = prctile(Coefficient_b_Age_2_Female,My_Percentile);
Coefficient_b_Age_2_Female_5th = My_P(1);
Coefficient_b_Age_2_Female_50th = My_P(2);
Coefficient_b_Age_2_Female_95th = My_P(3);
Coefficient_b_Age_2_Female_mean = mean(Coefficient_b_Age_2_Female);
My_P = prctile(Coefficient_b_Age_3_Female,My_Percentile);
Coefficient_b_Age_3_Female_5th = My_P(1);
Coefficient_b_Age_3_Female_50th = My_P(2);
Coefficient_b_Age_3_Female_95th = My_P(3);
Coefficient_b_Age_3_Female_mean = mean(Coefficient_b_Age_3_Female);
My_P = prctile(Coefficient_b_Age_4_Female,My_Percentile);
Coefficient_b_Age_4_Female_5th = My_P(1);
Coefficient_b_Age_4_Female_50th = My_P(2);
Coefficient_b_Age_4_Female_95th = My_P(3);
Coefficient_b_Age_4_Female_mean = mean(Coefficient_b_Age_4_Female);
My_P = prctile(Coefficient_b_Age_5_Female,My_Percentile);
Coefficient_b_Age_5_Female_5th = My_P(1);
Coefficient_b_Age_5_Female_50th = My_P(2);
Coefficient_b_Age_5_Female_95th = My_P(3);
Coefficient_b_Age_5_Female_mean = mean(Coefficient_b_Age_5_Female);
My_P = prctile(Coefficient_b_Age_6_Female,My_Percentile);
Coefficient_b_Age_6_Female_5th = My_P(1);
Coefficient_b_Age_6_Female_50th = My_P(2);
Coefficient_b_Age_6_Female_95th = My_P(3);
Coefficient_b_Age_6_Female_mean = mean(Coefficient_b_Age_6_Female);
My_P = prctile(Coefficient_b_Age_7_Female,My_Percentile);
Coefficient_b_Age_7_Female_5th = My_P(1);
Coefficient_b_Age_7_Female_50th = My_P(2);
Coefficient_b_Age_7_Female_95th = My_P(3);
Coefficient_b_Age_7_Female_mean = mean(Coefficient_b_Age_7_Female);
My_P = prctile(Coefficient_b_Age_8_Female,My_Percentile);
Coefficient_b_Age_8_Female_5th = My_P(1);
Coefficient_b_Age_8_Female_50th = My_P(2);
Coefficient_b_Age_8_Female_95th = My_P(3);
Coefficient_b_Age_8_Female_mean = mean(Coefficient_b_Age_8_Female);
My_P = prctile(Coefficient_b_Age_9_Female,My_Percentile);
Coefficient_b_Age_9_Female_5th = My_P(1);
Coefficient_b_Age_9_Female_50th = My_P(2);
Coefficient_b_Age_9_Female_95th = My_P(3);
Coefficient_b_Age_9_Female_mean = mean(Coefficient_b_Age_9_Female);
My_P = prctile(Coefficient_b_Age_10_Female,My_Percentile);
Coefficient_b_Age_10_Female_5th = My_P(1);
Coefficient_b_Age_10_Female_50th = My_P(2);
Coefficient_b_Age_10_Female_95th = My_P(3);
Coefficient_b_Age_10_Female_mean = mean(Coefficient_b_Age_10_Female);
My_P = prctile(Coefficient_b_Age_11_Female,My_Percentile);
Coefficient_b_Age_11_Female_5th = My_P(1);
Coefficient_b_Age_11_Female_50th = My_P(2);
Coefficient_b_Age_11_Female_95th = My_P(3);
Coefficient_b_Age_11_Female_mean = mean(Coefficient_b_Age_11_Female);
My_P = prctile(Coefficient_b_Age_12_Female,My_Percentile);
Coefficient_b_Age_12_Female_5th = My_P(1);
Coefficient_b_Age_12_Female_50th = My_P(2);
Coefficient_b_Age_12_Female_95th = My_P(3);
Coefficient_b_Age_12_Female_mean = mean(Coefficient_b_Age_12_Female);
My_P = prctile(Coefficient_b_Age_13_Female,My_Percentile);
Coefficient_b_Age_13_Female_5th = My_P(1);
Coefficient_b_Age_13_Female_50th = My_P(2);
Coefficient_b_Age_13_Female_95th = My_P(3);
Coefficient_b_Age_13_Female_mean = mean(Coefficient_b_Age_13_Female);
My_P = prctile(Coefficient_b_Age_14_Female,My_Percentile);
Coefficient_b_Age_14_Female_5th = My_P(1);
Coefficient_b_Age_14_Female_50th = My_P(2);
Coefficient_b_Age_14_Female_95th = My_P(3);
Coefficient_b_Age_14_Female_mean = mean(Coefficient_b_Age_14_Female);
My_P = prctile(Coefficient_b_Age_15_Female,My_Percentile);
Coefficient_b_Age_15_Female_5th = My_P(1);
Coefficient_b_Age_15_Female_50th = My_P(2);
Coefficient_b_Age_15_Female_95th = My_P(3);
Coefficient_b_Age_15_Female_mean = mean(Coefficient_b_Age_15_Female);
My_P = prctile(Coefficient_b_Age_16_Female,My_Percentile);
Coefficient_b_Age_16_Female_5th = My_P(1);
Coefficient_b_Age_16_Female_50th = My_P(2);
Coefficient_b_Age_16_Female_95th = My_P(3);
Coefficient_b_Age_16_Female_mean = mean(Coefficient_b_Age_16_Female);
My_P = prctile(Coefficient_b_Age_17_Female,My_Percentile);
Coefficient_b_Age_17_Female_5th = My_P(1);
Coefficient_b_Age_17_Female_50th = My_P(2);
Coefficient_b_Age_17_Female_95th = My_P(3);
Coefficient_b_Age_17_Female_mean = mean(Coefficient_b_Age_17_Female);
My_P = prctile(Coefficient_b_Age_18_Female,My_Percentile);
Coefficient_b_Age_18_Female_5th = My_P(1);
Coefficient_b_Age_18_Female_50th = My_P(2);
Coefficient_b_Age_18_Female_95th = My_P(3);
Coefficient_b_Age_18_Female_mean = mean(Coefficient_b_Age_18_Female);
My_P = prctile(Coefficient_b_Age_19_Female,My_Percentile);
Coefficient_b_Age_19_Female_5th = My_P(1);
Coefficient_b_Age_19_Female_50th = My_P(2);
Coefficient_b_Age_19_Female_95th = My_P(3);
Coefficient_b_Age_19_Female_mean = mean(Coefficient_b_Age_19_Female);
My_P = prctile(Coefficient_b_Age_20_Female,My_Percentile);
Coefficient_b_Age_20_Female_5th = My_P(1);
Coefficient_b_Age_20_Female_50th = My_P(2);
Coefficient_b_Age_20_Female_95th = My_P(3);
Coefficient_b_Age_20_Female_mean = mean(Coefficient_b_Age_20_Female);
My_P = prctile(Coefficient_b_Age_21_Female,My_Percentile);
Coefficient_b_Age_21_Female_5th = My_P(1);
Coefficient_b_Age_21_Female_50th = My_P(2);
Coefficient_b_Age_21_Female_95th = My_P(3);
Coefficient_b_Age_21_Female_mean = mean(Coefficient_b_Age_21_Female);
My_P = prctile(Coefficient_b_Age_22_Female,My_Percentile);
Coefficient_b_Age_22_Female_5th = My_P(1);
Coefficient_b_Age_22_Female_50th = My_P(2);
Coefficient_b_Age_22_Female_95th = My_P(3);
Coefficient_b_Age_22_Female_mean = mean(Coefficient_b_Age_22_Female);
My_P = prctile(Coefficient_b_Age_23_Female,My_Percentile);
Coefficient_b_Age_23_Female_5th = My_P(1);
Coefficient_b_Age_23_Female_50th = My_P(2);
Coefficient_b_Age_23_Female_95th = My_P(3);
Coefficient_b_Age_23_Female_mean = mean(Coefficient_b_Age_23_Female);
My_P = prctile(Coefficient_b_Age_24_Female,My_Percentile);
Coefficient_b_Age_24_Female_5th = My_P(1);
Coefficient_b_Age_24_Female_50th = My_P(2);
Coefficient_b_Age_24_Female_95th = My_P(3);
Coefficient_b_Age_24_Female_mean = mean(Coefficient_b_Age_24_Female);
My_P = prctile(Coefficient_b_Age_25_Female,My_Percentile);
Coefficient_b_Age_25_Female_5th = My_P(1);
Coefficient_b_Age_25_Female_50th = My_P(2);
Coefficient_b_Age_25_Female_95th = My_P(3);
Coefficient_b_Age_25_Female_mean = mean(Coefficient_b_Age_25_Female);
My_P = prctile(Coefficient_b_Age_26_Female,My_Percentile);
Coefficient_b_Age_26_Female_5th = My_P(1);
Coefficient_b_Age_26_Female_50th = My_P(2);
Coefficient_b_Age_26_Female_95th = My_P(3);
Coefficient_b_Age_26_Female_mean = mean(Coefficient_b_Age_26_Female);
My_P = prctile(Coefficient_b_Age_27_Female,My_Percentile);
Coefficient_b_Age_27_Female_5th = My_P(1);
Coefficient_b_Age_27_Female_50th = My_P(2);
Coefficient_b_Age_27_Female_95th = My_P(3);
Coefficient_b_Age_27_Female_mean = mean(Coefficient_b_Age_27_Female);
My_P = prctile(Coefficient_b_Age_28_Female,My_Percentile);
Coefficient_b_Age_28_Female_5th = My_P(1);
Coefficient_b_Age_28_Female_50th = My_P(2);
Coefficient_b_Age_28_Female_95th = My_P(3);
Coefficient_b_Age_28_Female_mean = mean(Coefficient_b_Age_28_Female);
My_P = prctile(Coefficient_b_Age_29_Female,My_Percentile);
Coefficient_b_Age_29_Female_5th = My_P(1);
Coefficient_b_Age_29_Female_50th = My_P(2);
Coefficient_b_Age_29_Female_95th = My_P(3);
Coefficient_b_Age_29_Female_mean = mean(Coefficient_b_Age_29_Female);
My_P = prctile(Coefficient_b_Age_30_Female,My_Percentile);
Coefficient_b_Age_30_Female_5th = My_P(1);
Coefficient_b_Age_30_Female_50th = My_P(2);
Coefficient_b_Age_30_Female_95th = My_P(3);
Coefficient_b_Age_30_Female_mean = mean(Coefficient_b_Age_30_Female);
My_P = prctile(Coefficient_b_Age_31_Female,My_Percentile);
Coefficient_b_Age_31_Female_5th = My_P(1);
Coefficient_b_Age_31_Female_50th = My_P(2);
Coefficient_b_Age_31_Female_95th = My_P(3);
Coefficient_b_Age_31_Female_mean = mean(Coefficient_b_Age_31_Female);
My_P = prctile(Coefficient_b_Age_32_Female,My_Percentile);
Coefficient_b_Age_32_Female_5th = My_P(1);
Coefficient_b_Age_32_Female_50th = My_P(2);
Coefficient_b_Age_32_Female_95th = My_P(3);
Coefficient_b_Age_32_Female_mean = mean(Coefficient_b_Age_32_Female);
My_P = prctile(Coefficient_b_Age_33_Female,My_Percentile);
Coefficient_b_Age_33_Female_5th = My_P(1);
Coefficient_b_Age_33_Female_50th = My_P(2);
Coefficient_b_Age_33_Female_95th = My_P(3);
Coefficient_b_Age_33_Female_mean = mean(Coefficient_b_Age_33_Female);
My_P = prctile(Coefficient_b_Age_34_Female,My_Percentile);
Coefficient_b_Age_34_Female_5th = My_P(1);
Coefficient_b_Age_34_Female_50th = My_P(2);
Coefficient_b_Age_34_Female_95th = My_P(3);
Coefficient_b_Age_34_Female_mean = mean(Coefficient_b_Age_34_Female);
My_P = prctile(Coefficient_b_Age_35_Female,My_Percentile);
Coefficient_b_Age_35_Female_5th = My_P(1);
Coefficient_b_Age_35_Female_50th = My_P(2);
Coefficient_b_Age_35_Female_95th = My_P(3);
Coefficient_b_Age_35_Female_mean = mean(Coefficient_b_Age_35_Female);
My_P = prctile(Coefficient_b_Age_36_Female,My_Percentile);
Coefficient_b_Age_36_Female_5th = My_P(1);
Coefficient_b_Age_36_Female_50th = My_P(2);
Coefficient_b_Age_36_Female_95th = My_P(3);
Coefficient_b_Age_36_Female_mean = mean(Coefficient_b_Age_36_Female);
My_P = prctile(Coefficient_b_Age_37_Female,My_Percentile);
Coefficient_b_Age_37_Female_5th = My_P(1);
Coefficient_b_Age_37_Female_50th = My_P(2);
Coefficient_b_Age_37_Female_95th = My_P(3);
Coefficient_b_Age_37_Female_mean = mean(Coefficient_b_Age_37_Female);
My_P = prctile(Coefficient_b_Age_38_Female,My_Percentile);
Coefficient_b_Age_38_Female_5th = My_P(1);
Coefficient_b_Age_38_Female_50th = My_P(2);
Coefficient_b_Age_38_Female_95th = My_P(3);
Coefficient_b_Age_38_Female_mean = mean(Coefficient_b_Age_38_Female);
My_P = prctile(Coefficient_b_Age_39_Female,My_Percentile);
Coefficient_b_Age_39_Female_5th = My_P(1);
Coefficient_b_Age_39_Female_50th = My_P(2);
Coefficient_b_Age_39_Female_95th = My_P(3);
Coefficient_b_Age_39_Female_mean = mean(Coefficient_b_Age_39_Female);
My_P = prctile(Coefficient_b_Age_40_Female,My_Percentile);
Coefficient_b_Age_40_Female_5th = My_P(1);
Coefficient_b_Age_40_Female_50th = My_P(2);
Coefficient_b_Age_40_Female_95th = My_P(3);
Coefficient_b_Age_40_Female_mean = mean(Coefficient_b_Age_40_Female);
My_P = prctile(Coefficient_b_Age_41_Female,My_Percentile);
Coefficient_b_Age_41_Female_5th = My_P(1);
Coefficient_b_Age_41_Female_50th = My_P(2);
Coefficient_b_Age_41_Female_95th = My_P(3);
Coefficient_b_Age_41_Female_mean = mean(Coefficient_b_Age_41_Female);
My_P = prctile(Coefficient_b_Age_42_Female,My_Percentile);
Coefficient_b_Age_42_Female_5th = My_P(1);
Coefficient_b_Age_42_Female_50th = My_P(2);
Coefficient_b_Age_42_Female_95th = My_P(3);
Coefficient_b_Age_42_Female_mean = mean(Coefficient_b_Age_42_Female);
My_P = prctile(Coefficient_b_Age_43_Female,My_Percentile);
Coefficient_b_Age_43_Female_5th = My_P(1);
Coefficient_b_Age_43_Female_50th = My_P(2);
Coefficient_b_Age_43_Female_95th = My_P(3);
Coefficient_b_Age_43_Female_mean = mean(Coefficient_b_Age_43_Female);
My_P = prctile(Coefficient_b_Age_44_Female,My_Percentile);
Coefficient_b_Age_44_Female_5th = My_P(1);
Coefficient_b_Age_44_Female_50th = My_P(2);
Coefficient_b_Age_44_Female_95th = My_P(3);
Coefficient_b_Age_44_Female_mean = mean(Coefficient_b_Age_44_Female);
My_P = prctile(Coefficient_b_Age_45_Female,My_Percentile);
Coefficient_b_Age_45_Female_5th = My_P(1);
Coefficient_b_Age_45_Female_50th = My_P(2);
Coefficient_b_Age_45_Female_95th = My_P(3);
Coefficient_b_Age_45_Female_mean = mean(Coefficient_b_Age_45_Female);
My_P = prctile(Coefficient_b_Age_46_Female,My_Percentile);
Coefficient_b_Age_46_Female_5th = My_P(1);
Coefficient_b_Age_46_Female_50th = My_P(2);
Coefficient_b_Age_46_Female_95th = My_P(3);
Coefficient_b_Age_46_Female_mean = mean(Coefficient_b_Age_46_Female);
My_P = prctile(Coefficient_b_Age_47_Female,My_Percentile);
Coefficient_b_Age_47_Female_5th = My_P(1);
Coefficient_b_Age_47_Female_50th = My_P(2);
Coefficient_b_Age_47_Female_95th = My_P(3);
Coefficient_b_Age_47_Female_mean = mean(Coefficient_b_Age_47_Female);
My_P = prctile(Coefficient_b_Age_48_Female,My_Percentile);
Coefficient_b_Age_48_Female_5th = My_P(1);
Coefficient_b_Age_48_Female_50th = My_P(2);
Coefficient_b_Age_48_Female_95th = My_P(3);
Coefficient_b_Age_48_Female_mean = mean(Coefficient_b_Age_48_Female);
My_P = prctile(Coefficient_b_Age_49_Female,My_Percentile);
Coefficient_b_Age_49_Female_5th = My_P(1);
Coefficient_b_Age_49_Female_50th = My_P(2);
Coefficient_b_Age_49_Female_95th = My_P(3);
Coefficient_b_Age_49_Female_mean = mean(Coefficient_b_Age_49_Female);
My_P = prctile(Coefficient_b_Age_50_Female,My_Percentile);
Coefficient_b_Age_50_Female_5th = My_P(1);
Coefficient_b_Age_50_Female_50th = My_P(2);
Coefficient_b_Age_50_Female_95th = My_P(3);
Coefficient_b_Age_50_Female_mean = mean(Coefficient_b_Age_50_Female);
My_P = prctile(Coefficient_b_Age_51_Female,My_Percentile);
Coefficient_b_Age_51_Female_5th = My_P(1);
Coefficient_b_Age_51_Female_50th = My_P(2);
Coefficient_b_Age_51_Female_95th = My_P(3);
Coefficient_b_Age_51_Female_mean = mean(Coefficient_b_Age_51_Female);
My_P = prctile(Coefficient_b_Age_52_Female,My_Percentile);
Coefficient_b_Age_52_Female_5th = My_P(1);
Coefficient_b_Age_52_Female_50th = My_P(2);
Coefficient_b_Age_52_Female_95th = My_P(3);
Coefficient_b_Age_52_Female_mean = mean(Coefficient_b_Age_52_Female);
My_P = prctile(Coefficient_b_Age_53_Female,My_Percentile);
Coefficient_b_Age_53_Female_5th = My_P(1);
Coefficient_b_Age_53_Female_50th = My_P(2);
Coefficient_b_Age_53_Female_95th = My_P(3);
Coefficient_b_Age_53_Female_mean = mean(Coefficient_b_Age_53_Female);
My_P = prctile(Coefficient_b_Age_54_Female,My_Percentile);
Coefficient_b_Age_54_Female_5th = My_P(1);
Coefficient_b_Age_54_Female_50th = My_P(2);
Coefficient_b_Age_54_Female_95th = My_P(3);
Coefficient_b_Age_54_Female_mean = mean(Coefficient_b_Age_54_Female);
My_P = prctile(Coefficient_b_Age_55_Female,My_Percentile);
Coefficient_b_Age_55_Female_5th = My_P(1);
Coefficient_b_Age_55_Female_50th = My_P(2);
Coefficient_b_Age_55_Female_95th = My_P(3);
Coefficient_b_Age_55_Female_mean = mean(Coefficient_b_Age_55_Female);
My_P = prctile(Coefficient_b_Age_56_Female,My_Percentile);
Coefficient_b_Age_56_Female_5th = My_P(1);
Coefficient_b_Age_56_Female_50th = My_P(2);
Coefficient_b_Age_56_Female_95th = My_P(3);
Coefficient_b_Age_56_Female_mean = mean(Coefficient_b_Age_56_Female);
My_P = prctile(Coefficient_b_Age_57_Female,My_Percentile);
Coefficient_b_Age_57_Female_5th = My_P(1);
Coefficient_b_Age_57_Female_50th = My_P(2);
Coefficient_b_Age_57_Female_95th = My_P(3);
Coefficient_b_Age_57_Female_mean = mean(Coefficient_b_Age_57_Female);
My_P = prctile(Coefficient_b_Age_58_Female,My_Percentile);
Coefficient_b_Age_58_Female_5th = My_P(1);
Coefficient_b_Age_58_Female_50th = My_P(2);
Coefficient_b_Age_58_Female_95th = My_P(3);
Coefficient_b_Age_58_Female_mean = mean(Coefficient_b_Age_58_Female);
My_P = prctile(Coefficient_b_Age_59_Female,My_Percentile);
Coefficient_b_Age_59_Female_5th = My_P(1);
Coefficient_b_Age_59_Female_50th = My_P(2);
Coefficient_b_Age_59_Female_95th = My_P(3);
Coefficient_b_Age_59_Female_mean = mean(Coefficient_b_Age_59_Female);
My_P = prctile(Coefficient_b_Age_60_Female,My_Percentile);
Coefficient_b_Age_60_Female_5th = My_P(1);
Coefficient_b_Age_60_Female_50th = My_P(2);
Coefficient_b_Age_60_Female_95th = My_P(3);
Coefficient_b_Age_60_Female_mean = mean(Coefficient_b_Age_60_Female);
My_P = prctile(Coefficient_b_Age_61_Female,My_Percentile);
Coefficient_b_Age_61_Female_5th = My_P(1);
Coefficient_b_Age_61_Female_50th = My_P(2);
Coefficient_b_Age_61_Female_95th = My_P(3);
Coefficient_b_Age_61_Female_mean = mean(Coefficient_b_Age_61_Female);
My_P = prctile(Coefficient_b_Age_62_Female,My_Percentile);
Coefficient_b_Age_62_Female_5th = My_P(1);
Coefficient_b_Age_62_Female_50th = My_P(2);
Coefficient_b_Age_62_Female_95th = My_P(3);
Coefficient_b_Age_62_Female_mean = mean(Coefficient_b_Age_62_Female);
My_P = prctile(Coefficient_b_Age_63_Female,My_Percentile);
Coefficient_b_Age_63_Female_5th = My_P(1);
Coefficient_b_Age_63_Female_50th = My_P(2);
Coefficient_b_Age_63_Female_95th = My_P(3);
Coefficient_b_Age_63_Female_mean = mean(Coefficient_b_Age_63_Female);
My_P = prctile(Coefficient_b_Age_64_Female,My_Percentile);
Coefficient_b_Age_64_Female_5th = My_P(1);
Coefficient_b_Age_64_Female_50th = My_P(2);
Coefficient_b_Age_64_Female_95th = My_P(3);
Coefficient_b_Age_64_Female_mean = mean(Coefficient_b_Age_64_Female);
My_P = prctile(Coefficient_b_Age_65_Female,My_Percentile);
Coefficient_b_Age_65_Female_5th = My_P(1);
Coefficient_b_Age_65_Female_50th = My_P(2);
Coefficient_b_Age_65_Female_95th = My_P(3);
Coefficient_b_Age_65_Female_mean = mean(Coefficient_b_Age_65_Female);
My_P = prctile(Coefficient_b_Age_66_Female,My_Percentile);
Coefficient_b_Age_66_Female_5th = My_P(1);
Coefficient_b_Age_66_Female_50th = My_P(2);
Coefficient_b_Age_66_Female_95th = My_P(3);
Coefficient_b_Age_66_Female_mean = mean(Coefficient_b_Age_66_Female);
My_P = prctile(Coefficient_b_Age_67_Female,My_Percentile);
Coefficient_b_Age_67_Female_5th = My_P(1);
Coefficient_b_Age_67_Female_50th = My_P(2);
Coefficient_b_Age_67_Female_95th = My_P(3);
Coefficient_b_Age_67_Female_mean = mean(Coefficient_b_Age_67_Female);
My_P = prctile(Coefficient_b_Age_68_Female,My_Percentile);
Coefficient_b_Age_68_Female_5th = My_P(1);
Coefficient_b_Age_68_Female_50th = My_P(2);
Coefficient_b_Age_68_Female_95th = My_P(3);
Coefficient_b_Age_68_Female_mean = mean(Coefficient_b_Age_68_Female);
My_P = prctile(Coefficient_b_Age_69_Female,My_Percentile);
Coefficient_b_Age_69_Female_5th = My_P(1);
Coefficient_b_Age_69_Female_50th = My_P(2);
Coefficient_b_Age_69_Female_95th = My_P(3);
Coefficient_b_Age_69_Female_mean = mean(Coefficient_b_Age_69_Female);
My_P = prctile(Coefficient_b_Age_70_Female,My_Percentile);
Coefficient_b_Age_70_Female_5th = My_P(1);
Coefficient_b_Age_70_Female_50th = My_P(2);
Coefficient_b_Age_70_Female_95th = My_P(3);
Coefficient_b_Age_70_Female_mean = mean(Coefficient_b_Age_70_Female);
My_P = prctile(Coefficient_b_Age_71_Female,My_Percentile);
Coefficient_b_Age_71_Female_5th = My_P(1);
Coefficient_b_Age_71_Female_50th = My_P(2);
Coefficient_b_Age_71_Female_95th = My_P(3);
Coefficient_b_Age_71_Female_mean = mean(Coefficient_b_Age_71_Female);
My_P = prctile(Coefficient_b_Age_72_Female,My_Percentile);
Coefficient_b_Age_72_Female_5th = My_P(1);
Coefficient_b_Age_72_Female_50th = My_P(2);
Coefficient_b_Age_72_Female_95th = My_P(3);
Coefficient_b_Age_72_Female_mean = mean(Coefficient_b_Age_72_Female);
My_P = prctile(Coefficient_b_Age_73_Female,My_Percentile);
Coefficient_b_Age_73_Female_5th = My_P(1);
Coefficient_b_Age_73_Female_50th = My_P(2);
Coefficient_b_Age_73_Female_95th = My_P(3);
Coefficient_b_Age_73_Female_mean = mean(Coefficient_b_Age_73_Female);
My_P = prctile(Coefficient_b_Age_74_Female,My_Percentile);
Coefficient_b_Age_74_Female_5th = My_P(1);
Coefficient_b_Age_74_Female_50th = My_P(2);
Coefficient_b_Age_74_Female_95th = My_P(3);
Coefficient_b_Age_74_Female_mean = mean(Coefficient_b_Age_74_Female);
My_P = prctile(Coefficient_b_Age_75_Female,My_Percentile);
Coefficient_b_Age_75_Female_5th = My_P(1);
Coefficient_b_Age_75_Female_50th = My_P(2);
Coefficient_b_Age_75_Female_95th = My_P(3);
Coefficient_b_Age_75_Female_mean = mean(Coefficient_b_Age_75_Female);
My_P = prctile(Coefficient_b_Age_76_Female,My_Percentile);
Coefficient_b_Age_76_Female_5th = My_P(1);
Coefficient_b_Age_76_Female_50th = My_P(2);
Coefficient_b_Age_76_Female_95th = My_P(3);
Coefficient_b_Age_76_Female_mean = mean(Coefficient_b_Age_76_Female);
My_P = prctile(Coefficient_b_Age_77_Female,My_Percentile);
Coefficient_b_Age_77_Female_5th = My_P(1);
Coefficient_b_Age_77_Female_50th = My_P(2);
Coefficient_b_Age_77_Female_95th = My_P(3);
Coefficient_b_Age_77_Female_mean = mean(Coefficient_b_Age_77_Female);
My_P = prctile(Coefficient_b_Age_78_Female,My_Percentile);
Coefficient_b_Age_78_Female_5th = My_P(1);
Coefficient_b_Age_78_Female_50th = My_P(2);
Coefficient_b_Age_78_Female_95th = My_P(3);
Coefficient_b_Age_78_Female_mean = mean(Coefficient_b_Age_78_Female);
My_P = prctile(Coefficient_b_Age_79_Female,My_Percentile);
Coefficient_b_Age_79_Female_5th = My_P(1);
Coefficient_b_Age_79_Female_50th = My_P(2);
Coefficient_b_Age_79_Female_95th = My_P(3);
Coefficient_b_Age_79_Female_mean = mean(Coefficient_b_Age_79_Female);
My_P = prctile(Coefficient_b_Age_80_Female,My_Percentile);
Coefficient_b_Age_80_Female_5th = My_P(1);
Coefficient_b_Age_80_Female_50th = My_P(2);
Coefficient_b_Age_80_Female_95th = My_P(3);
Coefficient_b_Age_80_Female_mean = mean(Coefficient_b_Age_80_Female);
My_P = prctile(Coefficient_b_Age_81_Female,My_Percentile);
Coefficient_b_Age_81_Female_5th = My_P(1);
Coefficient_b_Age_81_Female_50th = My_P(2);
Coefficient_b_Age_81_Female_95th = My_P(3);
Coefficient_b_Age_81_Female_mean = mean(Coefficient_b_Age_81_Female);
My_P = prctile(Coefficient_b_Age_82_Female,My_Percentile);
Coefficient_b_Age_82_Female_5th = My_P(1);
Coefficient_b_Age_82_Female_50th = My_P(2);
Coefficient_b_Age_82_Female_95th = My_P(3);
Coefficient_b_Age_82_Female_mean = mean(Coefficient_b_Age_82_Female);
My_P = prctile(Coefficient_b_Age_83_Female,My_Percentile);
Coefficient_b_Age_83_Female_5th = My_P(1);
Coefficient_b_Age_83_Female_50th = My_P(2);
Coefficient_b_Age_83_Female_95th = My_P(3);
Coefficient_b_Age_83_Female_mean = mean(Coefficient_b_Age_83_Female);
My_P = prctile(Coefficient_b_Age_84_Female,My_Percentile);
Coefficient_b_Age_84_Female_5th = My_P(1);
Coefficient_b_Age_84_Female_50th = My_P(2);
Coefficient_b_Age_84_Female_95th = My_P(3);
Coefficient_b_Age_84_Female_mean = mean(Coefficient_b_Age_84_Female);
My_P = prctile(Coefficient_b_Age_85_Female,My_Percentile);
Coefficient_b_Age_85_Female_5th = My_P(1);
Coefficient_b_Age_85_Female_50th = My_P(2);
Coefficient_b_Age_85_Female_95th = My_P(3);
Coefficient_b_Age_85_Female_mean = mean(Coefficient_b_Age_85_Female);
My_P = prctile(Coefficient_b_Age_86_Female,My_Percentile);
Coefficient_b_Age_86_Female_5th = My_P(1);
Coefficient_b_Age_86_Female_50th = My_P(2);
Coefficient_b_Age_86_Female_95th = My_P(3);
Coefficient_b_Age_86_Female_mean = mean(Coefficient_b_Age_86_Female);
My_P = prctile(Coefficient_b_Age_87_Female,My_Percentile);
Coefficient_b_Age_87_Female_5th = My_P(1);
Coefficient_b_Age_87_Female_50th = My_P(2);
Coefficient_b_Age_87_Female_95th = My_P(3);
Coefficient_b_Age_87_Female_mean = mean(Coefficient_b_Age_87_Female);
My_P = prctile(Coefficient_b_Age_88_Female,My_Percentile);
Coefficient_b_Age_88_Female_5th = My_P(1);
Coefficient_b_Age_88_Female_50th = My_P(2);
Coefficient_b_Age_88_Female_95th = My_P(3);
Coefficient_b_Age_88_Female_mean = mean(Coefficient_b_Age_88_Female);
My_P = prctile(Coefficient_b_Age_89_Female,My_Percentile);
Coefficient_b_Age_89_Female_5th = My_P(1);
Coefficient_b_Age_89_Female_50th = My_P(2);
Coefficient_b_Age_89_Female_95th = My_P(3);
Coefficient_b_Age_89_Female_mean = mean(Coefficient_b_Age_89_Female);
My_P = prctile(Coefficient_b_Age_90_Female,My_Percentile);
Coefficient_b_Age_90_Female_5th = My_P(1);
Coefficient_b_Age_90_Female_50th = My_P(2);
Coefficient_b_Age_90_Female_95th = My_P(3);
Coefficient_b_Age_90_Female_mean = mean(Coefficient_b_Age_90_Female);

% For Male
My_P = prctile(Coefficient_a_Age_1_Male,My_Percentile);
Coefficient_a_Age_1_Male_5th = My_P(1);
Coefficient_a_Age_1_Male_50th = My_P(2);
Coefficient_a_Age_1_Male_95th = My_P(3);
Coefficient_a_Age_1_Male_mean = mean(Coefficient_a_Age_1_Male);
My_P = prctile(Coefficient_a_Age_2_Male,My_Percentile);
Coefficient_a_Age_2_Male_5th = My_P(1);
Coefficient_a_Age_2_Male_50th = My_P(2);
Coefficient_a_Age_2_Male_95th = My_P(3);
Coefficient_a_Age_2_Male_mean = mean(Coefficient_a_Age_2_Male);
My_P = prctile(Coefficient_a_Age_3_Male,My_Percentile);
Coefficient_a_Age_3_Male_5th = My_P(1);
Coefficient_a_Age_3_Male_50th = My_P(2);
Coefficient_a_Age_3_Male_95th = My_P(3);
Coefficient_a_Age_3_Male_mean = mean(Coefficient_a_Age_3_Male);
My_P = prctile(Coefficient_a_Age_4_Male,My_Percentile);
Coefficient_a_Age_4_Male_5th = My_P(1);
Coefficient_a_Age_4_Male_50th = My_P(2);
Coefficient_a_Age_4_Male_95th = My_P(3);
Coefficient_a_Age_4_Male_mean = mean(Coefficient_a_Age_4_Male);
My_P = prctile(Coefficient_a_Age_5_Male,My_Percentile);
Coefficient_a_Age_5_Male_5th = My_P(1);
Coefficient_a_Age_5_Male_50th = My_P(2);
Coefficient_a_Age_5_Male_95th = My_P(3);
Coefficient_a_Age_5_Male_mean = mean(Coefficient_a_Age_5_Male);
My_P = prctile(Coefficient_a_Age_6_Male,My_Percentile);
Coefficient_a_Age_6_Male_5th = My_P(1);
Coefficient_a_Age_6_Male_50th = My_P(2);
Coefficient_a_Age_6_Male_95th = My_P(3);
Coefficient_a_Age_6_Male_mean = mean(Coefficient_a_Age_6_Male);
My_P = prctile(Coefficient_a_Age_7_Male,My_Percentile);
Coefficient_a_Age_7_Male_5th = My_P(1);
Coefficient_a_Age_7_Male_50th = My_P(2);
Coefficient_a_Age_7_Male_95th = My_P(3);
Coefficient_a_Age_7_Male_mean = mean(Coefficient_a_Age_7_Male);
My_P = prctile(Coefficient_a_Age_8_Male,My_Percentile);
Coefficient_a_Age_8_Male_5th = My_P(1);
Coefficient_a_Age_8_Male_50th = My_P(2);
Coefficient_a_Age_8_Male_95th = My_P(3);
Coefficient_a_Age_8_Male_mean = mean(Coefficient_a_Age_8_Male);
My_P = prctile(Coefficient_a_Age_9_Male,My_Percentile);
Coefficient_a_Age_9_Male_5th = My_P(1);
Coefficient_a_Age_9_Male_50th = My_P(2);
Coefficient_a_Age_9_Male_95th = My_P(3);
Coefficient_a_Age_9_Male_mean = mean(Coefficient_a_Age_9_Male);
My_P = prctile(Coefficient_a_Age_10_Male,My_Percentile);
Coefficient_a_Age_10_Male_5th = My_P(1);
Coefficient_a_Age_10_Male_50th = My_P(2);
Coefficient_a_Age_10_Male_95th = My_P(3);
Coefficient_a_Age_10_Male_mean = mean(Coefficient_a_Age_10_Male);
My_P = prctile(Coefficient_a_Age_11_Male,My_Percentile);
Coefficient_a_Age_11_Male_5th = My_P(1);
Coefficient_a_Age_11_Male_50th = My_P(2);
Coefficient_a_Age_11_Male_95th = My_P(3);
Coefficient_a_Age_11_Male_mean = mean(Coefficient_a_Age_11_Male);
My_P = prctile(Coefficient_a_Age_12_Male,My_Percentile);
Coefficient_a_Age_12_Male_5th = My_P(1);
Coefficient_a_Age_12_Male_50th = My_P(2);
Coefficient_a_Age_12_Male_95th = My_P(3);
Coefficient_a_Age_12_Male_mean = mean(Coefficient_a_Age_12_Male);
My_P = prctile(Coefficient_a_Age_13_Male,My_Percentile);
Coefficient_a_Age_13_Male_5th = My_P(1);
Coefficient_a_Age_13_Male_50th = My_P(2);
Coefficient_a_Age_13_Male_95th = My_P(3);
Coefficient_a_Age_13_Male_mean = mean(Coefficient_a_Age_13_Male);
My_P = prctile(Coefficient_a_Age_14_Male,My_Percentile);
Coefficient_a_Age_14_Male_5th = My_P(1);
Coefficient_a_Age_14_Male_50th = My_P(2);
Coefficient_a_Age_14_Male_95th = My_P(3);
Coefficient_a_Age_14_Male_mean = mean(Coefficient_a_Age_14_Male);
My_P = prctile(Coefficient_a_Age_15_Male,My_Percentile);
Coefficient_a_Age_15_Male_5th = My_P(1);
Coefficient_a_Age_15_Male_50th = My_P(2);
Coefficient_a_Age_15_Male_95th = My_P(3);
Coefficient_a_Age_15_Male_mean = mean(Coefficient_a_Age_15_Male);
My_P = prctile(Coefficient_a_Age_16_Male,My_Percentile);
Coefficient_a_Age_16_Male_5th = My_P(1);
Coefficient_a_Age_16_Male_50th = My_P(2);
Coefficient_a_Age_16_Male_95th = My_P(3);
Coefficient_a_Age_16_Male_mean = mean(Coefficient_a_Age_16_Male);
My_P = prctile(Coefficient_a_Age_17_Male,My_Percentile);
Coefficient_a_Age_17_Male_5th = My_P(1);
Coefficient_a_Age_17_Male_50th = My_P(2);
Coefficient_a_Age_17_Male_95th = My_P(3);
Coefficient_a_Age_17_Male_mean = mean(Coefficient_a_Age_17_Male);
My_P = prctile(Coefficient_a_Age_18_Male,My_Percentile);
Coefficient_a_Age_18_Male_5th = My_P(1);
Coefficient_a_Age_18_Male_50th = My_P(2);
Coefficient_a_Age_18_Male_95th = My_P(3);
Coefficient_a_Age_18_Male_mean = mean(Coefficient_a_Age_18_Male);
My_P = prctile(Coefficient_a_Age_19_Male,My_Percentile);
Coefficient_a_Age_19_Male_5th = My_P(1);
Coefficient_a_Age_19_Male_50th = My_P(2);
Coefficient_a_Age_19_Male_95th = My_P(3);
Coefficient_a_Age_19_Male_mean = mean(Coefficient_a_Age_19_Male);
My_P = prctile(Coefficient_a_Age_20_Male,My_Percentile);
Coefficient_a_Age_20_Male_5th = My_P(1);
Coefficient_a_Age_20_Male_50th = My_P(2);
Coefficient_a_Age_20_Male_95th = My_P(3);
Coefficient_a_Age_20_Male_mean = mean(Coefficient_a_Age_20_Male);
My_P = prctile(Coefficient_a_Age_21_Male,My_Percentile);
Coefficient_a_Age_21_Male_5th = My_P(1);
Coefficient_a_Age_21_Male_50th = My_P(2);
Coefficient_a_Age_21_Male_95th = My_P(3);
Coefficient_a_Age_21_Male_mean = mean(Coefficient_a_Age_21_Male);
My_P = prctile(Coefficient_a_Age_22_Male,My_Percentile);
Coefficient_a_Age_22_Male_5th = My_P(1);
Coefficient_a_Age_22_Male_50th = My_P(2);
Coefficient_a_Age_22_Male_95th = My_P(3);
Coefficient_a_Age_22_Male_mean = mean(Coefficient_a_Age_22_Male);
My_P = prctile(Coefficient_a_Age_23_Male,My_Percentile);
Coefficient_a_Age_23_Male_5th = My_P(1);
Coefficient_a_Age_23_Male_50th = My_P(2);
Coefficient_a_Age_23_Male_95th = My_P(3);
Coefficient_a_Age_23_Male_mean = mean(Coefficient_a_Age_23_Male);
My_P = prctile(Coefficient_a_Age_24_Male,My_Percentile);
Coefficient_a_Age_24_Male_5th = My_P(1);
Coefficient_a_Age_24_Male_50th = My_P(2);
Coefficient_a_Age_24_Male_95th = My_P(3);
Coefficient_a_Age_24_Male_mean = mean(Coefficient_a_Age_24_Male);
My_P = prctile(Coefficient_a_Age_25_Male,My_Percentile);
Coefficient_a_Age_25_Male_5th = My_P(1);
Coefficient_a_Age_25_Male_50th = My_P(2);
Coefficient_a_Age_25_Male_95th = My_P(3);
Coefficient_a_Age_25_Male_mean = mean(Coefficient_a_Age_25_Male);
My_P = prctile(Coefficient_a_Age_26_Male,My_Percentile);
Coefficient_a_Age_26_Male_5th = My_P(1);
Coefficient_a_Age_26_Male_50th = My_P(2);
Coefficient_a_Age_26_Male_95th = My_P(3);
Coefficient_a_Age_26_Male_mean = mean(Coefficient_a_Age_26_Male);
My_P = prctile(Coefficient_a_Age_27_Male,My_Percentile);
Coefficient_a_Age_27_Male_5th = My_P(1);
Coefficient_a_Age_27_Male_50th = My_P(2);
Coefficient_a_Age_27_Male_95th = My_P(3);
Coefficient_a_Age_27_Male_mean = mean(Coefficient_a_Age_27_Male);
My_P = prctile(Coefficient_a_Age_28_Male,My_Percentile);
Coefficient_a_Age_28_Male_5th = My_P(1);
Coefficient_a_Age_28_Male_50th = My_P(2);
Coefficient_a_Age_28_Male_95th = My_P(3);
Coefficient_a_Age_28_Male_mean = mean(Coefficient_a_Age_28_Male);
My_P = prctile(Coefficient_a_Age_29_Male,My_Percentile);
Coefficient_a_Age_29_Male_5th = My_P(1);
Coefficient_a_Age_29_Male_50th = My_P(2);
Coefficient_a_Age_29_Male_95th = My_P(3);
Coefficient_a_Age_29_Male_mean = mean(Coefficient_a_Age_29_Male);
My_P = prctile(Coefficient_a_Age_30_Male,My_Percentile);
Coefficient_a_Age_30_Male_5th = My_P(1);
Coefficient_a_Age_30_Male_50th = My_P(2);
Coefficient_a_Age_30_Male_95th = My_P(3);
Coefficient_a_Age_30_Male_mean = mean(Coefficient_a_Age_30_Male);
My_P = prctile(Coefficient_a_Age_31_Male,My_Percentile);
Coefficient_a_Age_31_Male_5th = My_P(1);
Coefficient_a_Age_31_Male_50th = My_P(2);
Coefficient_a_Age_31_Male_95th = My_P(3);
Coefficient_a_Age_31_Male_mean = mean(Coefficient_a_Age_31_Male);
My_P = prctile(Coefficient_a_Age_32_Male,My_Percentile);
Coefficient_a_Age_32_Male_5th = My_P(1);
Coefficient_a_Age_32_Male_50th = My_P(2);
Coefficient_a_Age_32_Male_95th = My_P(3);
Coefficient_a_Age_32_Male_mean = mean(Coefficient_a_Age_32_Male);
My_P = prctile(Coefficient_a_Age_33_Male,My_Percentile);
Coefficient_a_Age_33_Male_5th = My_P(1);
Coefficient_a_Age_33_Male_50th = My_P(2);
Coefficient_a_Age_33_Male_95th = My_P(3);
Coefficient_a_Age_33_Male_mean = mean(Coefficient_a_Age_33_Male);
My_P = prctile(Coefficient_a_Age_34_Male,My_Percentile);
Coefficient_a_Age_34_Male_5th = My_P(1);
Coefficient_a_Age_34_Male_50th = My_P(2);
Coefficient_a_Age_34_Male_95th = My_P(3);
Coefficient_a_Age_34_Male_mean = mean(Coefficient_a_Age_34_Male);
My_P = prctile(Coefficient_a_Age_35_Male,My_Percentile);
Coefficient_a_Age_35_Male_5th = My_P(1);
Coefficient_a_Age_35_Male_50th = My_P(2);
Coefficient_a_Age_35_Male_95th = My_P(3);
Coefficient_a_Age_35_Male_mean = mean(Coefficient_a_Age_35_Male);
My_P = prctile(Coefficient_a_Age_36_Male,My_Percentile);
Coefficient_a_Age_36_Male_5th = My_P(1);
Coefficient_a_Age_36_Male_50th = My_P(2);
Coefficient_a_Age_36_Male_95th = My_P(3);
Coefficient_a_Age_36_Male_mean = mean(Coefficient_a_Age_36_Male);
My_P = prctile(Coefficient_a_Age_37_Male,My_Percentile);
Coefficient_a_Age_37_Male_5th = My_P(1);
Coefficient_a_Age_37_Male_50th = My_P(2);
Coefficient_a_Age_37_Male_95th = My_P(3);
Coefficient_a_Age_37_Male_mean = mean(Coefficient_a_Age_37_Male);
My_P = prctile(Coefficient_a_Age_38_Male,My_Percentile);
Coefficient_a_Age_38_Male_5th = My_P(1);
Coefficient_a_Age_38_Male_50th = My_P(2);
Coefficient_a_Age_38_Male_95th = My_P(3);
Coefficient_a_Age_38_Male_mean = mean(Coefficient_a_Age_38_Male);
My_P = prctile(Coefficient_a_Age_39_Male,My_Percentile);
Coefficient_a_Age_39_Male_5th = My_P(1);
Coefficient_a_Age_39_Male_50th = My_P(2);
Coefficient_a_Age_39_Male_95th = My_P(3);
Coefficient_a_Age_39_Male_mean = mean(Coefficient_a_Age_39_Male);
My_P = prctile(Coefficient_a_Age_40_Male,My_Percentile);
Coefficient_a_Age_40_Male_5th = My_P(1);
Coefficient_a_Age_40_Male_50th = My_P(2);
Coefficient_a_Age_40_Male_95th = My_P(3);
Coefficient_a_Age_40_Male_mean = mean(Coefficient_a_Age_40_Male);
My_P = prctile(Coefficient_a_Age_41_Male,My_Percentile);
Coefficient_a_Age_41_Male_5th = My_P(1);
Coefficient_a_Age_41_Male_50th = My_P(2);
Coefficient_a_Age_41_Male_95th = My_P(3);
Coefficient_a_Age_41_Male_mean = mean(Coefficient_a_Age_41_Male);
My_P = prctile(Coefficient_a_Age_42_Male,My_Percentile);
Coefficient_a_Age_42_Male_5th = My_P(1);
Coefficient_a_Age_42_Male_50th = My_P(2);
Coefficient_a_Age_42_Male_95th = My_P(3);
Coefficient_a_Age_42_Male_mean = mean(Coefficient_a_Age_42_Male);
My_P = prctile(Coefficient_a_Age_43_Male,My_Percentile);
Coefficient_a_Age_43_Male_5th = My_P(1);
Coefficient_a_Age_43_Male_50th = My_P(2);
Coefficient_a_Age_43_Male_95th = My_P(3);
Coefficient_a_Age_43_Male_mean = mean(Coefficient_a_Age_43_Male);
My_P = prctile(Coefficient_a_Age_44_Male,My_Percentile);
Coefficient_a_Age_44_Male_5th = My_P(1);
Coefficient_a_Age_44_Male_50th = My_P(2);
Coefficient_a_Age_44_Male_95th = My_P(3);
Coefficient_a_Age_44_Male_mean = mean(Coefficient_a_Age_44_Male);
My_P = prctile(Coefficient_a_Age_45_Male,My_Percentile);
Coefficient_a_Age_45_Male_5th = My_P(1);
Coefficient_a_Age_45_Male_50th = My_P(2);
Coefficient_a_Age_45_Male_95th = My_P(3);
Coefficient_a_Age_45_Male_mean = mean(Coefficient_a_Age_45_Male);
My_P = prctile(Coefficient_a_Age_46_Male,My_Percentile);
Coefficient_a_Age_46_Male_5th = My_P(1);
Coefficient_a_Age_46_Male_50th = My_P(2);
Coefficient_a_Age_46_Male_95th = My_P(3);
Coefficient_a_Age_46_Male_mean = mean(Coefficient_a_Age_46_Male);
My_P = prctile(Coefficient_a_Age_47_Male,My_Percentile);
Coefficient_a_Age_47_Male_5th = My_P(1);
Coefficient_a_Age_47_Male_50th = My_P(2);
Coefficient_a_Age_47_Male_95th = My_P(3);
Coefficient_a_Age_47_Male_mean = mean(Coefficient_a_Age_47_Male);
My_P = prctile(Coefficient_a_Age_48_Male,My_Percentile);
Coefficient_a_Age_48_Male_5th = My_P(1);
Coefficient_a_Age_48_Male_50th = My_P(2);
Coefficient_a_Age_48_Male_95th = My_P(3);
Coefficient_a_Age_48_Male_mean = mean(Coefficient_a_Age_48_Male);
My_P = prctile(Coefficient_a_Age_49_Male,My_Percentile);
Coefficient_a_Age_49_Male_5th = My_P(1);
Coefficient_a_Age_49_Male_50th = My_P(2);
Coefficient_a_Age_49_Male_95th = My_P(3);
Coefficient_a_Age_49_Male_mean = mean(Coefficient_a_Age_49_Male);
My_P = prctile(Coefficient_a_Age_50_Male,My_Percentile);
Coefficient_a_Age_50_Male_5th = My_P(1);
Coefficient_a_Age_50_Male_50th = My_P(2);
Coefficient_a_Age_50_Male_95th = My_P(3);
Coefficient_a_Age_50_Male_mean = mean(Coefficient_a_Age_50_Male);
My_P = prctile(Coefficient_a_Age_51_Male,My_Percentile);
Coefficient_a_Age_51_Male_5th = My_P(1);
Coefficient_a_Age_51_Male_50th = My_P(2);
Coefficient_a_Age_51_Male_95th = My_P(3);
Coefficient_a_Age_51_Male_mean = mean(Coefficient_a_Age_51_Male);
My_P = prctile(Coefficient_a_Age_52_Male,My_Percentile);
Coefficient_a_Age_52_Male_5th = My_P(1);
Coefficient_a_Age_52_Male_50th = My_P(2);
Coefficient_a_Age_52_Male_95th = My_P(3);
Coefficient_a_Age_52_Male_mean = mean(Coefficient_a_Age_52_Male);
My_P = prctile(Coefficient_a_Age_53_Male,My_Percentile);
Coefficient_a_Age_53_Male_5th = My_P(1);
Coefficient_a_Age_53_Male_50th = My_P(2);
Coefficient_a_Age_53_Male_95th = My_P(3);
Coefficient_a_Age_53_Male_mean = mean(Coefficient_a_Age_53_Male);
My_P = prctile(Coefficient_a_Age_54_Male,My_Percentile);
Coefficient_a_Age_54_Male_5th = My_P(1);
Coefficient_a_Age_54_Male_50th = My_P(2);
Coefficient_a_Age_54_Male_95th = My_P(3);
Coefficient_a_Age_54_Male_mean = mean(Coefficient_a_Age_54_Male);
My_P = prctile(Coefficient_a_Age_55_Male,My_Percentile);
Coefficient_a_Age_55_Male_5th = My_P(1);
Coefficient_a_Age_55_Male_50th = My_P(2);
Coefficient_a_Age_55_Male_95th = My_P(3);
Coefficient_a_Age_55_Male_mean = mean(Coefficient_a_Age_55_Male);
My_P = prctile(Coefficient_a_Age_56_Male,My_Percentile);
Coefficient_a_Age_56_Male_5th = My_P(1);
Coefficient_a_Age_56_Male_50th = My_P(2);
Coefficient_a_Age_56_Male_95th = My_P(3);
Coefficient_a_Age_56_Male_mean = mean(Coefficient_a_Age_56_Male);
My_P = prctile(Coefficient_a_Age_57_Male,My_Percentile);
Coefficient_a_Age_57_Male_5th = My_P(1);
Coefficient_a_Age_57_Male_50th = My_P(2);
Coefficient_a_Age_57_Male_95th = My_P(3);
Coefficient_a_Age_57_Male_mean = mean(Coefficient_a_Age_57_Male);
My_P = prctile(Coefficient_a_Age_58_Male,My_Percentile);
Coefficient_a_Age_58_Male_5th = My_P(1);
Coefficient_a_Age_58_Male_50th = My_P(2);
Coefficient_a_Age_58_Male_95th = My_P(3);
Coefficient_a_Age_58_Male_mean = mean(Coefficient_a_Age_58_Male);
My_P = prctile(Coefficient_a_Age_59_Male,My_Percentile);
Coefficient_a_Age_59_Male_5th = My_P(1);
Coefficient_a_Age_59_Male_50th = My_P(2);
Coefficient_a_Age_59_Male_95th = My_P(3);
Coefficient_a_Age_59_Male_mean = mean(Coefficient_a_Age_59_Male);
My_P = prctile(Coefficient_a_Age_60_Male,My_Percentile);
Coefficient_a_Age_60_Male_5th = My_P(1);
Coefficient_a_Age_60_Male_50th = My_P(2);
Coefficient_a_Age_60_Male_95th = My_P(3);
Coefficient_a_Age_60_Male_mean = mean(Coefficient_a_Age_60_Male);
My_P = prctile(Coefficient_a_Age_61_Male,My_Percentile);
Coefficient_a_Age_61_Male_5th = My_P(1);
Coefficient_a_Age_61_Male_50th = My_P(2);
Coefficient_a_Age_61_Male_95th = My_P(3);
Coefficient_a_Age_61_Male_mean = mean(Coefficient_a_Age_61_Male);
My_P = prctile(Coefficient_a_Age_62_Male,My_Percentile);
Coefficient_a_Age_62_Male_5th = My_P(1);
Coefficient_a_Age_62_Male_50th = My_P(2);
Coefficient_a_Age_62_Male_95th = My_P(3);
Coefficient_a_Age_62_Male_mean = mean(Coefficient_a_Age_62_Male);
My_P = prctile(Coefficient_a_Age_63_Male,My_Percentile);
Coefficient_a_Age_63_Male_5th = My_P(1);
Coefficient_a_Age_63_Male_50th = My_P(2);
Coefficient_a_Age_63_Male_95th = My_P(3);
Coefficient_a_Age_63_Male_mean = mean(Coefficient_a_Age_63_Male);
My_P = prctile(Coefficient_a_Age_64_Male,My_Percentile);
Coefficient_a_Age_64_Male_5th = My_P(1);
Coefficient_a_Age_64_Male_50th = My_P(2);
Coefficient_a_Age_64_Male_95th = My_P(3);
Coefficient_a_Age_64_Male_mean = mean(Coefficient_a_Age_64_Male);
My_P = prctile(Coefficient_a_Age_65_Male,My_Percentile);
Coefficient_a_Age_65_Male_5th = My_P(1);
Coefficient_a_Age_65_Male_50th = My_P(2);
Coefficient_a_Age_65_Male_95th = My_P(3);
Coefficient_a_Age_65_Male_mean = mean(Coefficient_a_Age_65_Male);
My_P = prctile(Coefficient_a_Age_66_Male,My_Percentile);
Coefficient_a_Age_66_Male_5th = My_P(1);
Coefficient_a_Age_66_Male_50th = My_P(2);
Coefficient_a_Age_66_Male_95th = My_P(3);
Coefficient_a_Age_66_Male_mean = mean(Coefficient_a_Age_66_Male);
My_P = prctile(Coefficient_a_Age_67_Male,My_Percentile);
Coefficient_a_Age_67_Male_5th = My_P(1);
Coefficient_a_Age_67_Male_50th = My_P(2);
Coefficient_a_Age_67_Male_95th = My_P(3);
Coefficient_a_Age_67_Male_mean = mean(Coefficient_a_Age_67_Male);
My_P = prctile(Coefficient_a_Age_68_Male,My_Percentile);
Coefficient_a_Age_68_Male_5th = My_P(1);
Coefficient_a_Age_68_Male_50th = My_P(2);
Coefficient_a_Age_68_Male_95th = My_P(3);
Coefficient_a_Age_68_Male_mean = mean(Coefficient_a_Age_68_Male);
My_P = prctile(Coefficient_a_Age_69_Male,My_Percentile);
Coefficient_a_Age_69_Male_5th = My_P(1);
Coefficient_a_Age_69_Male_50th = My_P(2);
Coefficient_a_Age_69_Male_95th = My_P(3);
Coefficient_a_Age_69_Male_mean = mean(Coefficient_a_Age_69_Male);
My_P = prctile(Coefficient_a_Age_70_Male,My_Percentile);
Coefficient_a_Age_70_Male_5th = My_P(1);
Coefficient_a_Age_70_Male_50th = My_P(2);
Coefficient_a_Age_70_Male_95th = My_P(3);
Coefficient_a_Age_70_Male_mean = mean(Coefficient_a_Age_70_Male);
My_P = prctile(Coefficient_a_Age_71_Male,My_Percentile);
Coefficient_a_Age_71_Male_5th = My_P(1);
Coefficient_a_Age_71_Male_50th = My_P(2);
Coefficient_a_Age_71_Male_95th = My_P(3);
Coefficient_a_Age_71_Male_mean = mean(Coefficient_a_Age_71_Male);
My_P = prctile(Coefficient_a_Age_72_Male,My_Percentile);
Coefficient_a_Age_72_Male_5th = My_P(1);
Coefficient_a_Age_72_Male_50th = My_P(2);
Coefficient_a_Age_72_Male_95th = My_P(3);
Coefficient_a_Age_72_Male_mean = mean(Coefficient_a_Age_72_Male);
My_P = prctile(Coefficient_a_Age_73_Male,My_Percentile);
Coefficient_a_Age_73_Male_5th = My_P(1);
Coefficient_a_Age_73_Male_50th = My_P(2);
Coefficient_a_Age_73_Male_95th = My_P(3);
Coefficient_a_Age_73_Male_mean = mean(Coefficient_a_Age_73_Male);
My_P = prctile(Coefficient_a_Age_74_Male,My_Percentile);
Coefficient_a_Age_74_Male_5th = My_P(1);
Coefficient_a_Age_74_Male_50th = My_P(2);
Coefficient_a_Age_74_Male_95th = My_P(3);
Coefficient_a_Age_74_Male_mean = mean(Coefficient_a_Age_74_Male);
My_P = prctile(Coefficient_a_Age_75_Male,My_Percentile);
Coefficient_a_Age_75_Male_5th = My_P(1);
Coefficient_a_Age_75_Male_50th = My_P(2);
Coefficient_a_Age_75_Male_95th = My_P(3);
Coefficient_a_Age_75_Male_mean = mean(Coefficient_a_Age_75_Male);
My_P = prctile(Coefficient_a_Age_76_Male,My_Percentile);
Coefficient_a_Age_76_Male_5th = My_P(1);
Coefficient_a_Age_76_Male_50th = My_P(2);
Coefficient_a_Age_76_Male_95th = My_P(3);
Coefficient_a_Age_76_Male_mean = mean(Coefficient_a_Age_76_Male);
My_P = prctile(Coefficient_a_Age_77_Male,My_Percentile);
Coefficient_a_Age_77_Male_5th = My_P(1);
Coefficient_a_Age_77_Male_50th = My_P(2);
Coefficient_a_Age_77_Male_95th = My_P(3);
Coefficient_a_Age_77_Male_mean = mean(Coefficient_a_Age_77_Male);
My_P = prctile(Coefficient_a_Age_78_Male,My_Percentile);
Coefficient_a_Age_78_Male_5th = My_P(1);
Coefficient_a_Age_78_Male_50th = My_P(2);
Coefficient_a_Age_78_Male_95th = My_P(3);
Coefficient_a_Age_78_Male_mean = mean(Coefficient_a_Age_78_Male);
My_P = prctile(Coefficient_a_Age_79_Male,My_Percentile);
Coefficient_a_Age_79_Male_5th = My_P(1);
Coefficient_a_Age_79_Male_50th = My_P(2);
Coefficient_a_Age_79_Male_95th = My_P(3);
Coefficient_a_Age_79_Male_mean = mean(Coefficient_a_Age_79_Male);
My_P = prctile(Coefficient_a_Age_80_Male,My_Percentile);
Coefficient_a_Age_80_Male_5th = My_P(1);
Coefficient_a_Age_80_Male_50th = My_P(2);
Coefficient_a_Age_80_Male_95th = My_P(3);
Coefficient_a_Age_80_Male_mean = mean(Coefficient_a_Age_80_Male);
My_P = prctile(Coefficient_a_Age_81_Male,My_Percentile);
Coefficient_a_Age_81_Male_5th = My_P(1);
Coefficient_a_Age_81_Male_50th = My_P(2);
Coefficient_a_Age_81_Male_95th = My_P(3);
Coefficient_a_Age_81_Male_mean = mean(Coefficient_a_Age_81_Male);
My_P = prctile(Coefficient_a_Age_82_Male,My_Percentile);
Coefficient_a_Age_82_Male_5th = My_P(1);
Coefficient_a_Age_82_Male_50th = My_P(2);
Coefficient_a_Age_82_Male_95th = My_P(3);
Coefficient_a_Age_82_Male_mean = mean(Coefficient_a_Age_82_Male);
My_P = prctile(Coefficient_a_Age_83_Male,My_Percentile);
Coefficient_a_Age_83_Male_5th = My_P(1);
Coefficient_a_Age_83_Male_50th = My_P(2);
Coefficient_a_Age_83_Male_95th = My_P(3);
Coefficient_a_Age_83_Male_mean = mean(Coefficient_a_Age_83_Male);
My_P = prctile(Coefficient_a_Age_84_Male,My_Percentile);
Coefficient_a_Age_84_Male_5th = My_P(1);
Coefficient_a_Age_84_Male_50th = My_P(2);
Coefficient_a_Age_84_Male_95th = My_P(3);
Coefficient_a_Age_84_Male_mean = mean(Coefficient_a_Age_84_Male);
My_P = prctile(Coefficient_a_Age_85_Male,My_Percentile);
Coefficient_a_Age_85_Male_5th = My_P(1);
Coefficient_a_Age_85_Male_50th = My_P(2);
Coefficient_a_Age_85_Male_95th = My_P(3);
Coefficient_a_Age_85_Male_mean = mean(Coefficient_a_Age_85_Male);
My_P = prctile(Coefficient_a_Age_86_Male,My_Percentile);
Coefficient_a_Age_86_Male_5th = My_P(1);
Coefficient_a_Age_86_Male_50th = My_P(2);
Coefficient_a_Age_86_Male_95th = My_P(3);
Coefficient_a_Age_86_Male_mean = mean(Coefficient_a_Age_86_Male);
My_P = prctile(Coefficient_a_Age_87_Male,My_Percentile);
Coefficient_a_Age_87_Male_5th = My_P(1);
Coefficient_a_Age_87_Male_50th = My_P(2);
Coefficient_a_Age_87_Male_95th = My_P(3);
Coefficient_a_Age_87_Male_mean = mean(Coefficient_a_Age_87_Male);
My_P = prctile(Coefficient_a_Age_88_Male,My_Percentile);
Coefficient_a_Age_88_Male_5th = My_P(1);
Coefficient_a_Age_88_Male_50th = My_P(2);
Coefficient_a_Age_88_Male_95th = My_P(3);
Coefficient_a_Age_88_Male_mean = mean(Coefficient_a_Age_88_Male);
My_P = prctile(Coefficient_a_Age_89_Male,My_Percentile);
Coefficient_a_Age_89_Male_5th = My_P(1);
Coefficient_a_Age_89_Male_50th = My_P(2);
Coefficient_a_Age_89_Male_95th = My_P(3);
Coefficient_a_Age_89_Male_mean = mean(Coefficient_a_Age_89_Male);
My_P = prctile(Coefficient_a_Age_90_Male,My_Percentile);
Coefficient_a_Age_90_Male_5th = My_P(1);
Coefficient_a_Age_90_Male_50th = My_P(2);
Coefficient_a_Age_90_Male_95th = My_P(3);
Coefficient_a_Age_90_Male_mean = mean(Coefficient_a_Age_90_Male);

My_P = prctile(Coefficient_b_Age_1_Male,My_Percentile);
Coefficient_b_Age_1_Male_5th = My_P(1);
Coefficient_b_Age_1_Male_50th = My_P(2);
Coefficient_b_Age_1_Male_95th = My_P(3);
Coefficient_b_Age_1_Male_mean = mean(Coefficient_b_Age_1_Male);
My_P = prctile(Coefficient_b_Age_2_Male,My_Percentile);
Coefficient_b_Age_2_Male_5th = My_P(1);
Coefficient_b_Age_2_Male_50th = My_P(2);
Coefficient_b_Age_2_Male_95th = My_P(3);
Coefficient_b_Age_2_Male_mean = mean(Coefficient_b_Age_2_Male);
My_P = prctile(Coefficient_b_Age_3_Male,My_Percentile);
Coefficient_b_Age_3_Male_5th = My_P(1);
Coefficient_b_Age_3_Male_50th = My_P(2);
Coefficient_b_Age_3_Male_95th = My_P(3);
Coefficient_b_Age_3_Male_mean = mean(Coefficient_b_Age_3_Male);
My_P = prctile(Coefficient_b_Age_4_Male,My_Percentile);
Coefficient_b_Age_4_Male_5th = My_P(1);
Coefficient_b_Age_4_Male_50th = My_P(2);
Coefficient_b_Age_4_Male_95th = My_P(3);
Coefficient_b_Age_4_Male_mean = mean(Coefficient_b_Age_4_Male);
My_P = prctile(Coefficient_b_Age_5_Male,My_Percentile);
Coefficient_b_Age_5_Male_5th = My_P(1);
Coefficient_b_Age_5_Male_50th = My_P(2);
Coefficient_b_Age_5_Male_95th = My_P(3);
Coefficient_b_Age_5_Male_mean = mean(Coefficient_b_Age_5_Male);
My_P = prctile(Coefficient_b_Age_6_Male,My_Percentile);
Coefficient_b_Age_6_Male_5th = My_P(1);
Coefficient_b_Age_6_Male_50th = My_P(2);
Coefficient_b_Age_6_Male_95th = My_P(3);
Coefficient_b_Age_6_Male_mean = mean(Coefficient_b_Age_6_Male);
My_P = prctile(Coefficient_b_Age_7_Male,My_Percentile);
Coefficient_b_Age_7_Male_5th = My_P(1);
Coefficient_b_Age_7_Male_50th = My_P(2);
Coefficient_b_Age_7_Male_95th = My_P(3);
Coefficient_b_Age_7_Male_mean = mean(Coefficient_b_Age_7_Male);
My_P = prctile(Coefficient_b_Age_8_Male,My_Percentile);
Coefficient_b_Age_8_Male_5th = My_P(1);
Coefficient_b_Age_8_Male_50th = My_P(2);
Coefficient_b_Age_8_Male_95th = My_P(3);
Coefficient_b_Age_8_Male_mean = mean(Coefficient_b_Age_8_Male);
My_P = prctile(Coefficient_b_Age_9_Male,My_Percentile);
Coefficient_b_Age_9_Male_5th = My_P(1);
Coefficient_b_Age_9_Male_50th = My_P(2);
Coefficient_b_Age_9_Male_95th = My_P(3);
Coefficient_b_Age_9_Male_mean = mean(Coefficient_b_Age_9_Male);
My_P = prctile(Coefficient_b_Age_10_Male,My_Percentile);
Coefficient_b_Age_10_Male_5th = My_P(1);
Coefficient_b_Age_10_Male_50th = My_P(2);
Coefficient_b_Age_10_Male_95th = My_P(3);
Coefficient_b_Age_10_Male_mean = mean(Coefficient_b_Age_10_Male);
My_P = prctile(Coefficient_b_Age_11_Male,My_Percentile);
Coefficient_b_Age_11_Male_5th = My_P(1);
Coefficient_b_Age_11_Male_50th = My_P(2);
Coefficient_b_Age_11_Male_95th = My_P(3);
Coefficient_b_Age_11_Male_mean = mean(Coefficient_b_Age_11_Male);
My_P = prctile(Coefficient_b_Age_12_Male,My_Percentile);
Coefficient_b_Age_12_Male_5th = My_P(1);
Coefficient_b_Age_12_Male_50th = My_P(2);
Coefficient_b_Age_12_Male_95th = My_P(3);
Coefficient_b_Age_12_Male_mean = mean(Coefficient_b_Age_12_Male);
My_P = prctile(Coefficient_b_Age_13_Male,My_Percentile);
Coefficient_b_Age_13_Male_5th = My_P(1);
Coefficient_b_Age_13_Male_50th = My_P(2);
Coefficient_b_Age_13_Male_95th = My_P(3);
Coefficient_b_Age_13_Male_mean = mean(Coefficient_b_Age_13_Male);
My_P = prctile(Coefficient_b_Age_14_Male,My_Percentile);
Coefficient_b_Age_14_Male_5th = My_P(1);
Coefficient_b_Age_14_Male_50th = My_P(2);
Coefficient_b_Age_14_Male_95th = My_P(3);
Coefficient_b_Age_14_Male_mean = mean(Coefficient_b_Age_14_Male);
My_P = prctile(Coefficient_b_Age_15_Male,My_Percentile);
Coefficient_b_Age_15_Male_5th = My_P(1);
Coefficient_b_Age_15_Male_50th = My_P(2);
Coefficient_b_Age_15_Male_95th = My_P(3);
Coefficient_b_Age_15_Male_mean = mean(Coefficient_b_Age_15_Male);
My_P = prctile(Coefficient_b_Age_16_Male,My_Percentile);
Coefficient_b_Age_16_Male_5th = My_P(1);
Coefficient_b_Age_16_Male_50th = My_P(2);
Coefficient_b_Age_16_Male_95th = My_P(3);
Coefficient_b_Age_16_Male_mean = mean(Coefficient_b_Age_16_Male);
My_P = prctile(Coefficient_b_Age_17_Male,My_Percentile);
Coefficient_b_Age_17_Male_5th = My_P(1);
Coefficient_b_Age_17_Male_50th = My_P(2);
Coefficient_b_Age_17_Male_95th = My_P(3);
Coefficient_b_Age_17_Male_mean = mean(Coefficient_b_Age_17_Male);
My_P = prctile(Coefficient_b_Age_18_Male,My_Percentile);
Coefficient_b_Age_18_Male_5th = My_P(1);
Coefficient_b_Age_18_Male_50th = My_P(2);
Coefficient_b_Age_18_Male_95th = My_P(3);
Coefficient_b_Age_18_Male_mean = mean(Coefficient_b_Age_18_Male);
My_P = prctile(Coefficient_b_Age_19_Male,My_Percentile);
Coefficient_b_Age_19_Male_5th = My_P(1);
Coefficient_b_Age_19_Male_50th = My_P(2);
Coefficient_b_Age_19_Male_95th = My_P(3);
Coefficient_b_Age_19_Male_mean = mean(Coefficient_b_Age_19_Male);
My_P = prctile(Coefficient_b_Age_20_Male,My_Percentile);
Coefficient_b_Age_20_Male_5th = My_P(1);
Coefficient_b_Age_20_Male_50th = My_P(2);
Coefficient_b_Age_20_Male_95th = My_P(3);
Coefficient_b_Age_20_Male_mean = mean(Coefficient_b_Age_20_Male);
My_P = prctile(Coefficient_b_Age_21_Male,My_Percentile);
Coefficient_b_Age_21_Male_5th = My_P(1);
Coefficient_b_Age_21_Male_50th = My_P(2);
Coefficient_b_Age_21_Male_95th = My_P(3);
Coefficient_b_Age_21_Male_mean = mean(Coefficient_b_Age_21_Male);
My_P = prctile(Coefficient_b_Age_22_Male,My_Percentile);
Coefficient_b_Age_22_Male_5th = My_P(1);
Coefficient_b_Age_22_Male_50th = My_P(2);
Coefficient_b_Age_22_Male_95th = My_P(3);
Coefficient_b_Age_22_Male_mean = mean(Coefficient_b_Age_22_Male);
My_P = prctile(Coefficient_b_Age_23_Male,My_Percentile);
Coefficient_b_Age_23_Male_5th = My_P(1);
Coefficient_b_Age_23_Male_50th = My_P(2);
Coefficient_b_Age_23_Male_95th = My_P(3);
Coefficient_b_Age_23_Male_mean = mean(Coefficient_b_Age_23_Male);
My_P = prctile(Coefficient_b_Age_24_Male,My_Percentile);
Coefficient_b_Age_24_Male_5th = My_P(1);
Coefficient_b_Age_24_Male_50th = My_P(2);
Coefficient_b_Age_24_Male_95th = My_P(3);
Coefficient_b_Age_24_Male_mean = mean(Coefficient_b_Age_24_Male);
My_P = prctile(Coefficient_b_Age_25_Male,My_Percentile);
Coefficient_b_Age_25_Male_5th = My_P(1);
Coefficient_b_Age_25_Male_50th = My_P(2);
Coefficient_b_Age_25_Male_95th = My_P(3);
Coefficient_b_Age_25_Male_mean = mean(Coefficient_b_Age_25_Male);
My_P = prctile(Coefficient_b_Age_26_Male,My_Percentile);
Coefficient_b_Age_26_Male_5th = My_P(1);
Coefficient_b_Age_26_Male_50th = My_P(2);
Coefficient_b_Age_26_Male_95th = My_P(3);
Coefficient_b_Age_26_Male_mean = mean(Coefficient_b_Age_26_Male);
My_P = prctile(Coefficient_b_Age_27_Male,My_Percentile);
Coefficient_b_Age_27_Male_5th = My_P(1);
Coefficient_b_Age_27_Male_50th = My_P(2);
Coefficient_b_Age_27_Male_95th = My_P(3);
Coefficient_b_Age_27_Male_mean = mean(Coefficient_b_Age_27_Male);
My_P = prctile(Coefficient_b_Age_28_Male,My_Percentile);
Coefficient_b_Age_28_Male_5th = My_P(1);
Coefficient_b_Age_28_Male_50th = My_P(2);
Coefficient_b_Age_28_Male_95th = My_P(3);
Coefficient_b_Age_28_Male_mean = mean(Coefficient_b_Age_28_Male);
My_P = prctile(Coefficient_b_Age_29_Male,My_Percentile);
Coefficient_b_Age_29_Male_5th = My_P(1);
Coefficient_b_Age_29_Male_50th = My_P(2);
Coefficient_b_Age_29_Male_95th = My_P(3);
Coefficient_b_Age_29_Male_mean = mean(Coefficient_b_Age_29_Male);
My_P = prctile(Coefficient_b_Age_30_Male,My_Percentile);
Coefficient_b_Age_30_Male_5th = My_P(1);
Coefficient_b_Age_30_Male_50th = My_P(2);
Coefficient_b_Age_30_Male_95th = My_P(3);
Coefficient_b_Age_30_Male_mean = mean(Coefficient_b_Age_30_Male);
My_P = prctile(Coefficient_b_Age_31_Male,My_Percentile);
Coefficient_b_Age_31_Male_5th = My_P(1);
Coefficient_b_Age_31_Male_50th = My_P(2);
Coefficient_b_Age_31_Male_95th = My_P(3);
Coefficient_b_Age_31_Male_mean = mean(Coefficient_b_Age_31_Male);
My_P = prctile(Coefficient_b_Age_32_Male,My_Percentile);
Coefficient_b_Age_32_Male_5th = My_P(1);
Coefficient_b_Age_32_Male_50th = My_P(2);
Coefficient_b_Age_32_Male_95th = My_P(3);
Coefficient_b_Age_32_Male_mean = mean(Coefficient_b_Age_32_Male);
My_P = prctile(Coefficient_b_Age_33_Male,My_Percentile);
Coefficient_b_Age_33_Male_5th = My_P(1);
Coefficient_b_Age_33_Male_50th = My_P(2);
Coefficient_b_Age_33_Male_95th = My_P(3);
Coefficient_b_Age_33_Male_mean = mean(Coefficient_b_Age_33_Male);
My_P = prctile(Coefficient_b_Age_34_Male,My_Percentile);
Coefficient_b_Age_34_Male_5th = My_P(1);
Coefficient_b_Age_34_Male_50th = My_P(2);
Coefficient_b_Age_34_Male_95th = My_P(3);
Coefficient_b_Age_34_Male_mean = mean(Coefficient_b_Age_34_Male);
My_P = prctile(Coefficient_b_Age_35_Male,My_Percentile);
Coefficient_b_Age_35_Male_5th = My_P(1);
Coefficient_b_Age_35_Male_50th = My_P(2);
Coefficient_b_Age_35_Male_95th = My_P(3);
Coefficient_b_Age_35_Male_mean = mean(Coefficient_b_Age_35_Male);
My_P = prctile(Coefficient_b_Age_36_Male,My_Percentile);
Coefficient_b_Age_36_Male_5th = My_P(1);
Coefficient_b_Age_36_Male_50th = My_P(2);
Coefficient_b_Age_36_Male_95th = My_P(3);
Coefficient_b_Age_36_Male_mean = mean(Coefficient_b_Age_36_Male);
My_P = prctile(Coefficient_b_Age_37_Male,My_Percentile);
Coefficient_b_Age_37_Male_5th = My_P(1);
Coefficient_b_Age_37_Male_50th = My_P(2);
Coefficient_b_Age_37_Male_95th = My_P(3);
Coefficient_b_Age_37_Male_mean = mean(Coefficient_b_Age_37_Male);
My_P = prctile(Coefficient_b_Age_38_Male,My_Percentile);
Coefficient_b_Age_38_Male_5th = My_P(1);
Coefficient_b_Age_38_Male_50th = My_P(2);
Coefficient_b_Age_38_Male_95th = My_P(3);
Coefficient_b_Age_38_Male_mean = mean(Coefficient_b_Age_38_Male);
My_P = prctile(Coefficient_b_Age_39_Male,My_Percentile);
Coefficient_b_Age_39_Male_5th = My_P(1);
Coefficient_b_Age_39_Male_50th = My_P(2);
Coefficient_b_Age_39_Male_95th = My_P(3);
Coefficient_b_Age_39_Male_mean = mean(Coefficient_b_Age_39_Male);
My_P = prctile(Coefficient_b_Age_40_Male,My_Percentile);
Coefficient_b_Age_40_Male_5th = My_P(1);
Coefficient_b_Age_40_Male_50th = My_P(2);
Coefficient_b_Age_40_Male_95th = My_P(3);
Coefficient_b_Age_40_Male_mean = mean(Coefficient_b_Age_40_Male);
My_P = prctile(Coefficient_b_Age_41_Male,My_Percentile);
Coefficient_b_Age_41_Male_5th = My_P(1);
Coefficient_b_Age_41_Male_50th = My_P(2);
Coefficient_b_Age_41_Male_95th = My_P(3);
Coefficient_b_Age_41_Male_mean = mean(Coefficient_b_Age_41_Male);
My_P = prctile(Coefficient_b_Age_42_Male,My_Percentile);
Coefficient_b_Age_42_Male_5th = My_P(1);
Coefficient_b_Age_42_Male_50th = My_P(2);
Coefficient_b_Age_42_Male_95th = My_P(3);
Coefficient_b_Age_42_Male_mean = mean(Coefficient_b_Age_42_Male);
My_P = prctile(Coefficient_b_Age_43_Male,My_Percentile);
Coefficient_b_Age_43_Male_5th = My_P(1);
Coefficient_b_Age_43_Male_50th = My_P(2);
Coefficient_b_Age_43_Male_95th = My_P(3);
Coefficient_b_Age_43_Male_mean = mean(Coefficient_b_Age_43_Male);
My_P = prctile(Coefficient_b_Age_44_Male,My_Percentile);
Coefficient_b_Age_44_Male_5th = My_P(1);
Coefficient_b_Age_44_Male_50th = My_P(2);
Coefficient_b_Age_44_Male_95th = My_P(3);
Coefficient_b_Age_44_Male_mean = mean(Coefficient_b_Age_44_Male);
My_P = prctile(Coefficient_b_Age_45_Male,My_Percentile);
Coefficient_b_Age_45_Male_5th = My_P(1);
Coefficient_b_Age_45_Male_50th = My_P(2);
Coefficient_b_Age_45_Male_95th = My_P(3);
Coefficient_b_Age_45_Male_mean = mean(Coefficient_b_Age_45_Male);
My_P = prctile(Coefficient_b_Age_46_Male,My_Percentile);
Coefficient_b_Age_46_Male_5th = My_P(1);
Coefficient_b_Age_46_Male_50th = My_P(2);
Coefficient_b_Age_46_Male_95th = My_P(3);
Coefficient_b_Age_46_Male_mean = mean(Coefficient_b_Age_46_Male);
My_P = prctile(Coefficient_b_Age_47_Male,My_Percentile);
Coefficient_b_Age_47_Male_5th = My_P(1);
Coefficient_b_Age_47_Male_50th = My_P(2);
Coefficient_b_Age_47_Male_95th = My_P(3);
Coefficient_b_Age_47_Male_mean = mean(Coefficient_b_Age_47_Male);
My_P = prctile(Coefficient_b_Age_48_Male,My_Percentile);
Coefficient_b_Age_48_Male_5th = My_P(1);
Coefficient_b_Age_48_Male_50th = My_P(2);
Coefficient_b_Age_48_Male_95th = My_P(3);
Coefficient_b_Age_48_Male_mean = mean(Coefficient_b_Age_48_Male);
My_P = prctile(Coefficient_b_Age_49_Male,My_Percentile);
Coefficient_b_Age_49_Male_5th = My_P(1);
Coefficient_b_Age_49_Male_50th = My_P(2);
Coefficient_b_Age_49_Male_95th = My_P(3);
Coefficient_b_Age_49_Male_mean = mean(Coefficient_b_Age_49_Male);
My_P = prctile(Coefficient_b_Age_50_Male,My_Percentile);
Coefficient_b_Age_50_Male_5th = My_P(1);
Coefficient_b_Age_50_Male_50th = My_P(2);
Coefficient_b_Age_50_Male_95th = My_P(3);
Coefficient_b_Age_50_Male_mean = mean(Coefficient_b_Age_50_Male);
My_P = prctile(Coefficient_b_Age_51_Male,My_Percentile);
Coefficient_b_Age_51_Male_5th = My_P(1);
Coefficient_b_Age_51_Male_50th = My_P(2);
Coefficient_b_Age_51_Male_95th = My_P(3);
Coefficient_b_Age_51_Male_mean = mean(Coefficient_b_Age_51_Male);
My_P = prctile(Coefficient_b_Age_52_Male,My_Percentile);
Coefficient_b_Age_52_Male_5th = My_P(1);
Coefficient_b_Age_52_Male_50th = My_P(2);
Coefficient_b_Age_52_Male_95th = My_P(3);
Coefficient_b_Age_52_Male_mean = mean(Coefficient_b_Age_52_Male);
My_P = prctile(Coefficient_b_Age_53_Male,My_Percentile);
Coefficient_b_Age_53_Male_5th = My_P(1);
Coefficient_b_Age_53_Male_50th = My_P(2);
Coefficient_b_Age_53_Male_95th = My_P(3);
Coefficient_b_Age_53_Male_mean = mean(Coefficient_b_Age_53_Male);
My_P = prctile(Coefficient_b_Age_54_Male,My_Percentile);
Coefficient_b_Age_54_Male_5th = My_P(1);
Coefficient_b_Age_54_Male_50th = My_P(2);
Coefficient_b_Age_54_Male_95th = My_P(3);
Coefficient_b_Age_54_Male_mean = mean(Coefficient_b_Age_54_Male);
My_P = prctile(Coefficient_b_Age_55_Male,My_Percentile);
Coefficient_b_Age_55_Male_5th = My_P(1);
Coefficient_b_Age_55_Male_50th = My_P(2);
Coefficient_b_Age_55_Male_95th = My_P(3);
Coefficient_b_Age_55_Male_mean = mean(Coefficient_b_Age_55_Male);
My_P = prctile(Coefficient_b_Age_56_Male,My_Percentile);
Coefficient_b_Age_56_Male_5th = My_P(1);
Coefficient_b_Age_56_Male_50th = My_P(2);
Coefficient_b_Age_56_Male_95th = My_P(3);
Coefficient_b_Age_56_Male_mean = mean(Coefficient_b_Age_56_Male);
My_P = prctile(Coefficient_b_Age_57_Male,My_Percentile);
Coefficient_b_Age_57_Male_5th = My_P(1);
Coefficient_b_Age_57_Male_50th = My_P(2);
Coefficient_b_Age_57_Male_95th = My_P(3);
Coefficient_b_Age_57_Male_mean = mean(Coefficient_b_Age_57_Male);
My_P = prctile(Coefficient_b_Age_58_Male,My_Percentile);
Coefficient_b_Age_58_Male_5th = My_P(1);
Coefficient_b_Age_58_Male_50th = My_P(2);
Coefficient_b_Age_58_Male_95th = My_P(3);
Coefficient_b_Age_58_Male_mean = mean(Coefficient_b_Age_58_Male);
My_P = prctile(Coefficient_b_Age_59_Male,My_Percentile);
Coefficient_b_Age_59_Male_5th = My_P(1);
Coefficient_b_Age_59_Male_50th = My_P(2);
Coefficient_b_Age_59_Male_95th = My_P(3);
Coefficient_b_Age_59_Male_mean = mean(Coefficient_b_Age_59_Male);
My_P = prctile(Coefficient_b_Age_60_Male,My_Percentile);
Coefficient_b_Age_60_Male_5th = My_P(1);
Coefficient_b_Age_60_Male_50th = My_P(2);
Coefficient_b_Age_60_Male_95th = My_P(3);
Coefficient_b_Age_60_Male_mean = mean(Coefficient_b_Age_60_Male);
My_P = prctile(Coefficient_b_Age_61_Male,My_Percentile);
Coefficient_b_Age_61_Male_5th = My_P(1);
Coefficient_b_Age_61_Male_50th = My_P(2);
Coefficient_b_Age_61_Male_95th = My_P(3);
Coefficient_b_Age_61_Male_mean = mean(Coefficient_b_Age_61_Male);
My_P = prctile(Coefficient_b_Age_62_Male,My_Percentile);
Coefficient_b_Age_62_Male_5th = My_P(1);
Coefficient_b_Age_62_Male_50th = My_P(2);
Coefficient_b_Age_62_Male_95th = My_P(3);
Coefficient_b_Age_62_Male_mean = mean(Coefficient_b_Age_62_Male);
My_P = prctile(Coefficient_b_Age_63_Male,My_Percentile);
Coefficient_b_Age_63_Male_5th = My_P(1);
Coefficient_b_Age_63_Male_50th = My_P(2);
Coefficient_b_Age_63_Male_95th = My_P(3);
Coefficient_b_Age_63_Male_mean = mean(Coefficient_b_Age_63_Male);
My_P = prctile(Coefficient_b_Age_64_Male,My_Percentile);
Coefficient_b_Age_64_Male_5th = My_P(1);
Coefficient_b_Age_64_Male_50th = My_P(2);
Coefficient_b_Age_64_Male_95th = My_P(3);
Coefficient_b_Age_64_Male_mean = mean(Coefficient_b_Age_64_Male);
My_P = prctile(Coefficient_b_Age_65_Male,My_Percentile);
Coefficient_b_Age_65_Male_5th = My_P(1);
Coefficient_b_Age_65_Male_50th = My_P(2);
Coefficient_b_Age_65_Male_95th = My_P(3);
Coefficient_b_Age_65_Male_mean = mean(Coefficient_b_Age_65_Male);
My_P = prctile(Coefficient_b_Age_66_Male,My_Percentile);
Coefficient_b_Age_66_Male_5th = My_P(1);
Coefficient_b_Age_66_Male_50th = My_P(2);
Coefficient_b_Age_66_Male_95th = My_P(3);
Coefficient_b_Age_66_Male_mean = mean(Coefficient_b_Age_66_Male);
My_P = prctile(Coefficient_b_Age_67_Male,My_Percentile);
Coefficient_b_Age_67_Male_5th = My_P(1);
Coefficient_b_Age_67_Male_50th = My_P(2);
Coefficient_b_Age_67_Male_95th = My_P(3);
Coefficient_b_Age_67_Male_mean = mean(Coefficient_b_Age_67_Male);
My_P = prctile(Coefficient_b_Age_68_Male,My_Percentile);
Coefficient_b_Age_68_Male_5th = My_P(1);
Coefficient_b_Age_68_Male_50th = My_P(2);
Coefficient_b_Age_68_Male_95th = My_P(3);
Coefficient_b_Age_68_Male_mean = mean(Coefficient_b_Age_68_Male);
My_P = prctile(Coefficient_b_Age_69_Male,My_Percentile);
Coefficient_b_Age_69_Male_5th = My_P(1);
Coefficient_b_Age_69_Male_50th = My_P(2);
Coefficient_b_Age_69_Male_95th = My_P(3);
Coefficient_b_Age_69_Male_mean = mean(Coefficient_b_Age_69_Male);
My_P = prctile(Coefficient_b_Age_70_Male,My_Percentile);
Coefficient_b_Age_70_Male_5th = My_P(1);
Coefficient_b_Age_70_Male_50th = My_P(2);
Coefficient_b_Age_70_Male_95th = My_P(3);
Coefficient_b_Age_70_Male_mean = mean(Coefficient_b_Age_70_Male);
My_P = prctile(Coefficient_b_Age_71_Male,My_Percentile);
Coefficient_b_Age_71_Male_5th = My_P(1);
Coefficient_b_Age_71_Male_50th = My_P(2);
Coefficient_b_Age_71_Male_95th = My_P(3);
Coefficient_b_Age_71_Male_mean = mean(Coefficient_b_Age_71_Male);
My_P = prctile(Coefficient_b_Age_72_Male,My_Percentile);
Coefficient_b_Age_72_Male_5th = My_P(1);
Coefficient_b_Age_72_Male_50th = My_P(2);
Coefficient_b_Age_72_Male_95th = My_P(3);
Coefficient_b_Age_72_Male_mean = mean(Coefficient_b_Age_72_Male);
My_P = prctile(Coefficient_b_Age_73_Male,My_Percentile);
Coefficient_b_Age_73_Male_5th = My_P(1);
Coefficient_b_Age_73_Male_50th = My_P(2);
Coefficient_b_Age_73_Male_95th = My_P(3);
Coefficient_b_Age_73_Male_mean = mean(Coefficient_b_Age_73_Male);
My_P = prctile(Coefficient_b_Age_74_Male,My_Percentile);
Coefficient_b_Age_74_Male_5th = My_P(1);
Coefficient_b_Age_74_Male_50th = My_P(2);
Coefficient_b_Age_74_Male_95th = My_P(3);
Coefficient_b_Age_74_Male_mean = mean(Coefficient_b_Age_74_Male);
My_P = prctile(Coefficient_b_Age_75_Male,My_Percentile);
Coefficient_b_Age_75_Male_5th = My_P(1);
Coefficient_b_Age_75_Male_50th = My_P(2);
Coefficient_b_Age_75_Male_95th = My_P(3);
Coefficient_b_Age_75_Male_mean = mean(Coefficient_b_Age_75_Male);
My_P = prctile(Coefficient_b_Age_76_Male,My_Percentile);
Coefficient_b_Age_76_Male_5th = My_P(1);
Coefficient_b_Age_76_Male_50th = My_P(2);
Coefficient_b_Age_76_Male_95th = My_P(3);
Coefficient_b_Age_76_Male_mean = mean(Coefficient_b_Age_76_Male);
My_P = prctile(Coefficient_b_Age_77_Male,My_Percentile);
Coefficient_b_Age_77_Male_5th = My_P(1);
Coefficient_b_Age_77_Male_50th = My_P(2);
Coefficient_b_Age_77_Male_95th = My_P(3);
Coefficient_b_Age_77_Male_mean = mean(Coefficient_b_Age_77_Male);
My_P = prctile(Coefficient_b_Age_78_Male,My_Percentile);
Coefficient_b_Age_78_Male_5th = My_P(1);
Coefficient_b_Age_78_Male_50th = My_P(2);
Coefficient_b_Age_78_Male_95th = My_P(3);
Coefficient_b_Age_78_Male_mean = mean(Coefficient_b_Age_78_Male);
My_P = prctile(Coefficient_b_Age_79_Male,My_Percentile);
Coefficient_b_Age_79_Male_5th = My_P(1);
Coefficient_b_Age_79_Male_50th = My_P(2);
Coefficient_b_Age_79_Male_95th = My_P(3);
Coefficient_b_Age_79_Male_mean = mean(Coefficient_b_Age_79_Male);
My_P = prctile(Coefficient_b_Age_80_Male,My_Percentile);
Coefficient_b_Age_80_Male_5th = My_P(1);
Coefficient_b_Age_80_Male_50th = My_P(2);
Coefficient_b_Age_80_Male_95th = My_P(3);
Coefficient_b_Age_80_Male_mean = mean(Coefficient_b_Age_80_Male);
My_P = prctile(Coefficient_b_Age_81_Male,My_Percentile);
Coefficient_b_Age_81_Male_5th = My_P(1);
Coefficient_b_Age_81_Male_50th = My_P(2);
Coefficient_b_Age_81_Male_95th = My_P(3);
Coefficient_b_Age_81_Male_mean = mean(Coefficient_b_Age_81_Male);
My_P = prctile(Coefficient_b_Age_82_Male,My_Percentile);
Coefficient_b_Age_82_Male_5th = My_P(1);
Coefficient_b_Age_82_Male_50th = My_P(2);
Coefficient_b_Age_82_Male_95th = My_P(3);
Coefficient_b_Age_82_Male_mean = mean(Coefficient_b_Age_82_Male);
My_P = prctile(Coefficient_b_Age_83_Male,My_Percentile);
Coefficient_b_Age_83_Male_5th = My_P(1);
Coefficient_b_Age_83_Male_50th = My_P(2);
Coefficient_b_Age_83_Male_95th = My_P(3);
Coefficient_b_Age_83_Male_mean = mean(Coefficient_b_Age_83_Male);
My_P = prctile(Coefficient_b_Age_84_Male,My_Percentile);
Coefficient_b_Age_84_Male_5th = My_P(1);
Coefficient_b_Age_84_Male_50th = My_P(2);
Coefficient_b_Age_84_Male_95th = My_P(3);
Coefficient_b_Age_84_Male_mean = mean(Coefficient_b_Age_84_Male);
My_P = prctile(Coefficient_b_Age_85_Male,My_Percentile);
Coefficient_b_Age_85_Male_5th = My_P(1);
Coefficient_b_Age_85_Male_50th = My_P(2);
Coefficient_b_Age_85_Male_95th = My_P(3);
Coefficient_b_Age_85_Male_mean = mean(Coefficient_b_Age_85_Male);
My_P = prctile(Coefficient_b_Age_86_Male,My_Percentile);
Coefficient_b_Age_86_Male_5th = My_P(1);
Coefficient_b_Age_86_Male_50th = My_P(2);
Coefficient_b_Age_86_Male_95th = My_P(3);
Coefficient_b_Age_86_Male_mean = mean(Coefficient_b_Age_86_Male);
My_P = prctile(Coefficient_b_Age_87_Male,My_Percentile);
Coefficient_b_Age_87_Male_5th = My_P(1);
Coefficient_b_Age_87_Male_50th = My_P(2);
Coefficient_b_Age_87_Male_95th = My_P(3);
Coefficient_b_Age_87_Male_mean = mean(Coefficient_b_Age_87_Male);
My_P = prctile(Coefficient_b_Age_88_Male,My_Percentile);
Coefficient_b_Age_88_Male_5th = My_P(1);
Coefficient_b_Age_88_Male_50th = My_P(2);
Coefficient_b_Age_88_Male_95th = My_P(3);
Coefficient_b_Age_88_Male_mean = mean(Coefficient_b_Age_88_Male);
My_P = prctile(Coefficient_b_Age_89_Male,My_Percentile);
Coefficient_b_Age_89_Male_5th = My_P(1);
Coefficient_b_Age_89_Male_50th = My_P(2);
Coefficient_b_Age_89_Male_95th = My_P(3);
Coefficient_b_Age_89_Male_mean = mean(Coefficient_b_Age_89_Male);
My_P = prctile(Coefficient_b_Age_90_Male,My_Percentile);
Coefficient_b_Age_90_Male_5th = My_P(1);
Coefficient_b_Age_90_Male_50th = My_P(2);
Coefficient_b_Age_90_Male_95th = My_P(3);
Coefficient_b_Age_90_Male_mean = mean(Coefficient_b_Age_90_Male);

My_Age_Female = 1:90;
My_5th_Coefficient_a_Female = [Coefficient_a_Age_1_Female_5th Coefficient_a_Age_2_Female_5th Coefficient_a_Age_3_Female_5th Coefficient_a_Age_4_Female_5th Coefficient_a_Age_5_Female_5th ...
    Coefficient_a_Age_6_Female_5th Coefficient_a_Age_7_Female_5th Coefficient_a_Age_8_Female_5th Coefficient_a_Age_9_Female_5th Coefficient_a_Age_10_Female_5th ...
    Coefficient_a_Age_11_Female_5th Coefficient_a_Age_12_Female_5th Coefficient_a_Age_13_Female_5th Coefficient_a_Age_14_Female_5th Coefficient_a_Age_15_Female_5th ...
    Coefficient_a_Age_16_Female_5th Coefficient_a_Age_17_Female_5th Coefficient_a_Age_18_Female_5th Coefficient_a_Age_19_Female_5th Coefficient_a_Age_20_Female_5th ...
    Coefficient_a_Age_21_Female_5th Coefficient_a_Age_22_Female_5th Coefficient_a_Age_23_Female_5th Coefficient_a_Age_24_Female_5th Coefficient_a_Age_25_Female_5th ...
    Coefficient_a_Age_26_Female_5th Coefficient_a_Age_27_Female_5th Coefficient_a_Age_28_Female_5th Coefficient_a_Age_29_Female_5th Coefficient_a_Age_30_Female_5th ...
    Coefficient_a_Age_31_Female_5th Coefficient_a_Age_32_Female_5th Coefficient_a_Age_33_Female_5th Coefficient_a_Age_34_Female_5th Coefficient_a_Age_35_Female_5th ...
    Coefficient_a_Age_36_Female_5th Coefficient_a_Age_37_Female_5th Coefficient_a_Age_38_Female_5th Coefficient_a_Age_39_Female_5th Coefficient_a_Age_40_Female_5th ...
    Coefficient_a_Age_41_Female_5th Coefficient_a_Age_42_Female_5th Coefficient_a_Age_43_Female_5th Coefficient_a_Age_44_Female_5th Coefficient_a_Age_45_Female_5th ...
    Coefficient_a_Age_46_Female_5th Coefficient_a_Age_47_Female_5th Coefficient_a_Age_48_Female_5th Coefficient_a_Age_49_Female_5th Coefficient_a_Age_50_Female_5th ...
    Coefficient_a_Age_51_Female_5th Coefficient_a_Age_52_Female_5th Coefficient_a_Age_53_Female_5th Coefficient_a_Age_54_Female_5th Coefficient_a_Age_55_Female_5th ...
    Coefficient_a_Age_56_Female_5th Coefficient_a_Age_57_Female_5th Coefficient_a_Age_58_Female_5th Coefficient_a_Age_59_Female_5th Coefficient_a_Age_60_Female_5th ...
    Coefficient_a_Age_61_Female_5th Coefficient_a_Age_62_Female_5th Coefficient_a_Age_63_Female_5th Coefficient_a_Age_64_Female_5th Coefficient_a_Age_65_Female_5th ...
    Coefficient_a_Age_66_Female_5th Coefficient_a_Age_67_Female_5th Coefficient_a_Age_68_Female_5th Coefficient_a_Age_69_Female_5th Coefficient_a_Age_70_Female_5th ...
    Coefficient_a_Age_71_Female_5th Coefficient_a_Age_72_Female_5th Coefficient_a_Age_73_Female_5th Coefficient_a_Age_74_Female_5th Coefficient_a_Age_75_Female_5th ...
    Coefficient_a_Age_76_Female_5th Coefficient_a_Age_77_Female_5th Coefficient_a_Age_78_Female_5th Coefficient_a_Age_79_Female_5th Coefficient_a_Age_80_Female_5th ...
    Coefficient_a_Age_81_Female_5th Coefficient_a_Age_82_Female_5th Coefficient_a_Age_83_Female_5th Coefficient_a_Age_84_Female_5th Coefficient_a_Age_85_Female_5th ...
    Coefficient_a_Age_86_Female_5th Coefficient_a_Age_87_Female_5th Coefficient_a_Age_88_Female_5th Coefficient_a_Age_89_Female_5th Coefficient_a_Age_90_Female_5th];

My_50th_Coefficient_a_Female = [Coefficient_a_Age_1_Female_50th Coefficient_a_Age_2_Female_50th Coefficient_a_Age_3_Female_50th Coefficient_a_Age_4_Female_50th Coefficient_a_Age_5_Female_50th ...
    Coefficient_a_Age_6_Female_50th Coefficient_a_Age_7_Female_50th Coefficient_a_Age_8_Female_50th Coefficient_a_Age_9_Female_50th Coefficient_a_Age_10_Female_50th ...
    Coefficient_a_Age_11_Female_50th Coefficient_a_Age_12_Female_50th Coefficient_a_Age_13_Female_50th Coefficient_a_Age_14_Female_50th Coefficient_a_Age_15_Female_50th ...
    Coefficient_a_Age_16_Female_50th Coefficient_a_Age_17_Female_50th Coefficient_a_Age_18_Female_50th Coefficient_a_Age_19_Female_50th Coefficient_a_Age_20_Female_50th ...
    Coefficient_a_Age_21_Female_50th Coefficient_a_Age_22_Female_50th Coefficient_a_Age_23_Female_50th Coefficient_a_Age_24_Female_50th Coefficient_a_Age_25_Female_50th ...
    Coefficient_a_Age_26_Female_50th Coefficient_a_Age_27_Female_50th Coefficient_a_Age_28_Female_50th Coefficient_a_Age_29_Female_50th Coefficient_a_Age_30_Female_50th ...
    Coefficient_a_Age_31_Female_50th Coefficient_a_Age_32_Female_50th Coefficient_a_Age_33_Female_50th Coefficient_a_Age_34_Female_50th Coefficient_a_Age_35_Female_50th ...
    Coefficient_a_Age_36_Female_50th Coefficient_a_Age_37_Female_50th Coefficient_a_Age_38_Female_50th Coefficient_a_Age_39_Female_50th Coefficient_a_Age_40_Female_50th ...
    Coefficient_a_Age_41_Female_50th Coefficient_a_Age_42_Female_50th Coefficient_a_Age_43_Female_50th Coefficient_a_Age_44_Female_50th Coefficient_a_Age_45_Female_50th ...
    Coefficient_a_Age_46_Female_50th Coefficient_a_Age_47_Female_50th Coefficient_a_Age_48_Female_50th Coefficient_a_Age_49_Female_50th Coefficient_a_Age_50_Female_50th ...
    Coefficient_a_Age_51_Female_50th Coefficient_a_Age_52_Female_50th Coefficient_a_Age_53_Female_50th Coefficient_a_Age_54_Female_50th Coefficient_a_Age_55_Female_50th ...
    Coefficient_a_Age_56_Female_50th Coefficient_a_Age_57_Female_50th Coefficient_a_Age_58_Female_50th Coefficient_a_Age_59_Female_50th Coefficient_a_Age_60_Female_50th ...
    Coefficient_a_Age_61_Female_50th Coefficient_a_Age_62_Female_50th Coefficient_a_Age_63_Female_50th Coefficient_a_Age_64_Female_50th Coefficient_a_Age_65_Female_50th ...
    Coefficient_a_Age_66_Female_50th Coefficient_a_Age_67_Female_50th Coefficient_a_Age_68_Female_50th Coefficient_a_Age_69_Female_50th Coefficient_a_Age_70_Female_50th ...
    Coefficient_a_Age_71_Female_50th Coefficient_a_Age_72_Female_50th Coefficient_a_Age_73_Female_50th Coefficient_a_Age_74_Female_50th Coefficient_a_Age_75_Female_50th ...
    Coefficient_a_Age_76_Female_50th Coefficient_a_Age_77_Female_50th Coefficient_a_Age_78_Female_50th Coefficient_a_Age_79_Female_50th Coefficient_a_Age_80_Female_50th ...
    Coefficient_a_Age_81_Female_50th Coefficient_a_Age_82_Female_50th Coefficient_a_Age_83_Female_50th Coefficient_a_Age_84_Female_50th Coefficient_a_Age_85_Female_50th ...
    Coefficient_a_Age_86_Female_50th Coefficient_a_Age_87_Female_50th Coefficient_a_Age_88_Female_50th Coefficient_a_Age_89_Female_50th Coefficient_a_Age_90_Female_50th];

My_95th_Coefficient_a_Female = [Coefficient_a_Age_1_Female_95th Coefficient_a_Age_2_Female_95th Coefficient_a_Age_3_Female_95th Coefficient_a_Age_4_Female_95th Coefficient_a_Age_5_Female_95th ...
    Coefficient_a_Age_6_Female_95th Coefficient_a_Age_7_Female_95th Coefficient_a_Age_8_Female_95th Coefficient_a_Age_9_Female_95th Coefficient_a_Age_10_Female_95th ...
    Coefficient_a_Age_11_Female_95th Coefficient_a_Age_12_Female_95th Coefficient_a_Age_13_Female_95th Coefficient_a_Age_14_Female_95th Coefficient_a_Age_15_Female_95th ...
    Coefficient_a_Age_16_Female_95th Coefficient_a_Age_17_Female_95th Coefficient_a_Age_18_Female_95th Coefficient_a_Age_19_Female_95th Coefficient_a_Age_20_Female_95th ...
    Coefficient_a_Age_21_Female_95th Coefficient_a_Age_22_Female_95th Coefficient_a_Age_23_Female_95th Coefficient_a_Age_24_Female_95th Coefficient_a_Age_25_Female_95th ...
    Coefficient_a_Age_26_Female_95th Coefficient_a_Age_27_Female_95th Coefficient_a_Age_28_Female_95th Coefficient_a_Age_29_Female_95th Coefficient_a_Age_30_Female_95th ...
    Coefficient_a_Age_31_Female_95th Coefficient_a_Age_32_Female_95th Coefficient_a_Age_33_Female_95th Coefficient_a_Age_34_Female_95th Coefficient_a_Age_35_Female_95th ...
    Coefficient_a_Age_36_Female_95th Coefficient_a_Age_37_Female_95th Coefficient_a_Age_38_Female_95th Coefficient_a_Age_39_Female_95th Coefficient_a_Age_40_Female_95th ...
    Coefficient_a_Age_41_Female_95th Coefficient_a_Age_42_Female_95th Coefficient_a_Age_43_Female_95th Coefficient_a_Age_44_Female_95th Coefficient_a_Age_45_Female_95th ...
    Coefficient_a_Age_46_Female_95th Coefficient_a_Age_47_Female_95th Coefficient_a_Age_48_Female_95th Coefficient_a_Age_49_Female_95th Coefficient_a_Age_50_Female_95th ...
    Coefficient_a_Age_51_Female_95th Coefficient_a_Age_52_Female_95th Coefficient_a_Age_53_Female_95th Coefficient_a_Age_54_Female_95th Coefficient_a_Age_55_Female_95th ...
    Coefficient_a_Age_56_Female_95th Coefficient_a_Age_57_Female_95th Coefficient_a_Age_58_Female_95th Coefficient_a_Age_59_Female_95th Coefficient_a_Age_60_Female_95th ...
    Coefficient_a_Age_61_Female_95th Coefficient_a_Age_62_Female_95th Coefficient_a_Age_63_Female_95th Coefficient_a_Age_64_Female_95th Coefficient_a_Age_65_Female_95th ...
    Coefficient_a_Age_66_Female_95th Coefficient_a_Age_67_Female_95th Coefficient_a_Age_68_Female_95th Coefficient_a_Age_69_Female_95th Coefficient_a_Age_70_Female_95th ...
    Coefficient_a_Age_71_Female_95th Coefficient_a_Age_72_Female_95th Coefficient_a_Age_73_Female_95th Coefficient_a_Age_74_Female_95th Coefficient_a_Age_75_Female_95th ...
    Coefficient_a_Age_76_Female_95th Coefficient_a_Age_77_Female_95th Coefficient_a_Age_78_Female_95th Coefficient_a_Age_79_Female_95th Coefficient_a_Age_80_Female_95th ...
    Coefficient_a_Age_81_Female_95th Coefficient_a_Age_82_Female_95th Coefficient_a_Age_83_Female_95th Coefficient_a_Age_84_Female_95th Coefficient_a_Age_85_Female_95th ...
    Coefficient_a_Age_86_Female_95th Coefficient_a_Age_87_Female_95th Coefficient_a_Age_88_Female_95th Coefficient_a_Age_89_Female_95th Coefficient_a_Age_90_Female_95th];

My_mean_Coefficient_a_Female = [Coefficient_a_Age_1_Female_mean Coefficient_a_Age_2_Female_mean Coefficient_a_Age_3_Female_mean Coefficient_a_Age_4_Female_mean Coefficient_a_Age_5_Female_mean ...
    Coefficient_a_Age_6_Female_mean Coefficient_a_Age_7_Female_mean Coefficient_a_Age_8_Female_mean Coefficient_a_Age_9_Female_mean Coefficient_a_Age_10_Female_mean ...
    Coefficient_a_Age_11_Female_mean Coefficient_a_Age_12_Female_mean Coefficient_a_Age_13_Female_mean Coefficient_a_Age_14_Female_mean Coefficient_a_Age_15_Female_mean ...
    Coefficient_a_Age_16_Female_mean Coefficient_a_Age_17_Female_mean Coefficient_a_Age_18_Female_mean Coefficient_a_Age_19_Female_mean Coefficient_a_Age_20_Female_mean ...
    Coefficient_a_Age_21_Female_mean Coefficient_a_Age_22_Female_mean Coefficient_a_Age_23_Female_mean Coefficient_a_Age_24_Female_mean Coefficient_a_Age_25_Female_mean ...
    Coefficient_a_Age_26_Female_mean Coefficient_a_Age_27_Female_mean Coefficient_a_Age_28_Female_mean Coefficient_a_Age_29_Female_mean Coefficient_a_Age_30_Female_mean ...
    Coefficient_a_Age_31_Female_mean Coefficient_a_Age_32_Female_mean Coefficient_a_Age_33_Female_mean Coefficient_a_Age_34_Female_mean Coefficient_a_Age_35_Female_mean ...
    Coefficient_a_Age_36_Female_mean Coefficient_a_Age_37_Female_mean Coefficient_a_Age_38_Female_mean Coefficient_a_Age_39_Female_mean Coefficient_a_Age_40_Female_mean ...
    Coefficient_a_Age_41_Female_mean Coefficient_a_Age_42_Female_mean Coefficient_a_Age_43_Female_mean Coefficient_a_Age_44_Female_mean Coefficient_a_Age_45_Female_mean ...
    Coefficient_a_Age_46_Female_mean Coefficient_a_Age_47_Female_mean Coefficient_a_Age_48_Female_mean Coefficient_a_Age_49_Female_mean Coefficient_a_Age_50_Female_mean ...
    Coefficient_a_Age_51_Female_mean Coefficient_a_Age_52_Female_mean Coefficient_a_Age_53_Female_mean Coefficient_a_Age_54_Female_mean Coefficient_a_Age_55_Female_mean ...
    Coefficient_a_Age_56_Female_mean Coefficient_a_Age_57_Female_mean Coefficient_a_Age_58_Female_mean Coefficient_a_Age_59_Female_mean Coefficient_a_Age_60_Female_mean ...
    Coefficient_a_Age_61_Female_mean Coefficient_a_Age_62_Female_mean Coefficient_a_Age_63_Female_mean Coefficient_a_Age_64_Female_mean Coefficient_a_Age_65_Female_mean ...
    Coefficient_a_Age_66_Female_mean Coefficient_a_Age_67_Female_mean Coefficient_a_Age_68_Female_mean Coefficient_a_Age_69_Female_mean Coefficient_a_Age_70_Female_mean ...
    Coefficient_a_Age_71_Female_mean Coefficient_a_Age_72_Female_mean Coefficient_a_Age_73_Female_mean Coefficient_a_Age_74_Female_mean Coefficient_a_Age_75_Female_mean ...
    Coefficient_a_Age_76_Female_mean Coefficient_a_Age_77_Female_mean Coefficient_a_Age_78_Female_mean Coefficient_a_Age_79_Female_mean Coefficient_a_Age_80_Female_mean ...
    Coefficient_a_Age_81_Female_mean Coefficient_a_Age_82_Female_mean Coefficient_a_Age_83_Female_mean Coefficient_a_Age_84_Female_mean Coefficient_a_Age_85_Female_mean ...
    Coefficient_a_Age_86_Female_mean Coefficient_a_Age_87_Female_mean Coefficient_a_Age_88_Female_mean Coefficient_a_Age_89_Female_mean Coefficient_a_Age_90_Female_mean];


My_5th_Coefficient_b_Female = [Coefficient_b_Age_1_Female_5th Coefficient_b_Age_2_Female_5th Coefficient_b_Age_3_Female_5th Coefficient_b_Age_4_Female_5th Coefficient_b_Age_5_Female_5th ...
    Coefficient_b_Age_6_Female_5th Coefficient_b_Age_7_Female_5th Coefficient_b_Age_8_Female_5th Coefficient_b_Age_9_Female_5th Coefficient_b_Age_10_Female_5th ...
    Coefficient_b_Age_11_Female_5th Coefficient_b_Age_12_Female_5th Coefficient_b_Age_13_Female_5th Coefficient_b_Age_14_Female_5th Coefficient_b_Age_15_Female_5th ...
    Coefficient_b_Age_16_Female_5th Coefficient_b_Age_17_Female_5th Coefficient_b_Age_18_Female_5th Coefficient_b_Age_19_Female_5th Coefficient_b_Age_20_Female_5th ...
    Coefficient_b_Age_21_Female_5th Coefficient_b_Age_22_Female_5th Coefficient_b_Age_23_Female_5th Coefficient_b_Age_24_Female_5th Coefficient_b_Age_25_Female_5th ...
    Coefficient_b_Age_26_Female_5th Coefficient_b_Age_27_Female_5th Coefficient_b_Age_28_Female_5th Coefficient_b_Age_29_Female_5th Coefficient_b_Age_30_Female_5th ...
    Coefficient_b_Age_31_Female_5th Coefficient_b_Age_32_Female_5th Coefficient_b_Age_33_Female_5th Coefficient_b_Age_34_Female_5th Coefficient_b_Age_35_Female_5th ...
    Coefficient_b_Age_36_Female_5th Coefficient_b_Age_37_Female_5th Coefficient_b_Age_38_Female_5th Coefficient_b_Age_39_Female_5th Coefficient_b_Age_40_Female_5th ...
    Coefficient_b_Age_41_Female_5th Coefficient_b_Age_42_Female_5th Coefficient_b_Age_43_Female_5th Coefficient_b_Age_44_Female_5th Coefficient_b_Age_45_Female_5th ...
    Coefficient_b_Age_46_Female_5th Coefficient_b_Age_47_Female_5th Coefficient_b_Age_48_Female_5th Coefficient_b_Age_49_Female_5th Coefficient_b_Age_50_Female_5th ...
    Coefficient_b_Age_51_Female_5th Coefficient_b_Age_52_Female_5th Coefficient_b_Age_53_Female_5th Coefficient_b_Age_54_Female_5th Coefficient_b_Age_55_Female_5th ...
    Coefficient_b_Age_56_Female_5th Coefficient_b_Age_57_Female_5th Coefficient_b_Age_58_Female_5th Coefficient_b_Age_59_Female_5th Coefficient_b_Age_60_Female_5th ...
    Coefficient_b_Age_61_Female_5th Coefficient_b_Age_62_Female_5th Coefficient_b_Age_63_Female_5th Coefficient_b_Age_64_Female_5th Coefficient_b_Age_65_Female_5th ...
    Coefficient_b_Age_66_Female_5th Coefficient_b_Age_67_Female_5th Coefficient_b_Age_68_Female_5th Coefficient_b_Age_69_Female_5th Coefficient_b_Age_70_Female_5th ...
    Coefficient_b_Age_71_Female_5th Coefficient_b_Age_72_Female_5th Coefficient_b_Age_73_Female_5th Coefficient_b_Age_74_Female_5th Coefficient_b_Age_75_Female_5th ...
    Coefficient_b_Age_76_Female_5th Coefficient_b_Age_77_Female_5th Coefficient_b_Age_78_Female_5th Coefficient_b_Age_79_Female_5th Coefficient_b_Age_80_Female_5th ...
    Coefficient_b_Age_81_Female_5th Coefficient_b_Age_82_Female_5th Coefficient_b_Age_83_Female_5th Coefficient_b_Age_84_Female_5th Coefficient_b_Age_85_Female_5th ...
    Coefficient_b_Age_86_Female_5th Coefficient_b_Age_87_Female_5th Coefficient_b_Age_88_Female_5th Coefficient_b_Age_89_Female_5th Coefficient_b_Age_90_Female_5th];

My_50th_Coefficient_b_Female = [Coefficient_b_Age_1_Female_50th Coefficient_b_Age_2_Female_50th Coefficient_b_Age_3_Female_50th Coefficient_b_Age_4_Female_50th Coefficient_b_Age_5_Female_50th ...
    Coefficient_b_Age_6_Female_50th Coefficient_b_Age_7_Female_50th Coefficient_b_Age_8_Female_50th Coefficient_b_Age_9_Female_50th Coefficient_b_Age_10_Female_50th ...
    Coefficient_b_Age_11_Female_50th Coefficient_b_Age_12_Female_50th Coefficient_b_Age_13_Female_50th Coefficient_b_Age_14_Female_50th Coefficient_b_Age_15_Female_50th ...
    Coefficient_b_Age_16_Female_50th Coefficient_b_Age_17_Female_50th Coefficient_b_Age_18_Female_50th Coefficient_b_Age_19_Female_50th Coefficient_b_Age_20_Female_50th ...
    Coefficient_b_Age_21_Female_50th Coefficient_b_Age_22_Female_50th Coefficient_b_Age_23_Female_50th Coefficient_b_Age_24_Female_50th Coefficient_b_Age_25_Female_50th ...
    Coefficient_b_Age_26_Female_50th Coefficient_b_Age_27_Female_50th Coefficient_b_Age_28_Female_50th Coefficient_b_Age_29_Female_50th Coefficient_b_Age_30_Female_50th ...
    Coefficient_b_Age_31_Female_50th Coefficient_b_Age_32_Female_50th Coefficient_b_Age_33_Female_50th Coefficient_b_Age_34_Female_50th Coefficient_b_Age_35_Female_50th ...
    Coefficient_b_Age_36_Female_50th Coefficient_b_Age_37_Female_50th Coefficient_b_Age_38_Female_50th Coefficient_b_Age_39_Female_50th Coefficient_b_Age_40_Female_50th ...
    Coefficient_b_Age_41_Female_50th Coefficient_b_Age_42_Female_50th Coefficient_b_Age_43_Female_50th Coefficient_b_Age_44_Female_50th Coefficient_b_Age_45_Female_50th ...
    Coefficient_b_Age_46_Female_50th Coefficient_b_Age_47_Female_50th Coefficient_b_Age_48_Female_50th Coefficient_b_Age_49_Female_50th Coefficient_b_Age_50_Female_50th ...
    Coefficient_b_Age_51_Female_50th Coefficient_b_Age_52_Female_50th Coefficient_b_Age_53_Female_50th Coefficient_b_Age_54_Female_50th Coefficient_b_Age_55_Female_50th ...
    Coefficient_b_Age_56_Female_50th Coefficient_b_Age_57_Female_50th Coefficient_b_Age_58_Female_50th Coefficient_b_Age_59_Female_50th Coefficient_b_Age_60_Female_50th ...
    Coefficient_b_Age_61_Female_50th Coefficient_b_Age_62_Female_50th Coefficient_b_Age_63_Female_50th Coefficient_b_Age_64_Female_50th Coefficient_b_Age_65_Female_50th ...
    Coefficient_b_Age_66_Female_50th Coefficient_b_Age_67_Female_50th Coefficient_b_Age_68_Female_50th Coefficient_b_Age_69_Female_50th Coefficient_b_Age_70_Female_50th ...
    Coefficient_b_Age_71_Female_50th Coefficient_b_Age_72_Female_50th Coefficient_b_Age_73_Female_50th Coefficient_b_Age_74_Female_50th Coefficient_b_Age_75_Female_50th ...
    Coefficient_b_Age_76_Female_50th Coefficient_b_Age_77_Female_50th Coefficient_b_Age_78_Female_50th Coefficient_b_Age_79_Female_50th Coefficient_b_Age_80_Female_50th ...
    Coefficient_b_Age_81_Female_50th Coefficient_b_Age_82_Female_50th Coefficient_b_Age_83_Female_50th Coefficient_b_Age_84_Female_50th Coefficient_b_Age_85_Female_50th ...
    Coefficient_b_Age_86_Female_50th Coefficient_b_Age_87_Female_50th Coefficient_b_Age_88_Female_50th Coefficient_b_Age_89_Female_50th Coefficient_b_Age_90_Female_50th];

My_95th_Coefficient_b_Female = [Coefficient_b_Age_1_Female_95th Coefficient_b_Age_2_Female_95th Coefficient_b_Age_3_Female_95th Coefficient_b_Age_4_Female_95th Coefficient_b_Age_5_Female_95th ...
    Coefficient_b_Age_6_Female_95th Coefficient_b_Age_7_Female_95th Coefficient_b_Age_8_Female_95th Coefficient_b_Age_9_Female_95th Coefficient_b_Age_10_Female_95th ...
    Coefficient_b_Age_11_Female_95th Coefficient_b_Age_12_Female_95th Coefficient_b_Age_13_Female_95th Coefficient_b_Age_14_Female_95th Coefficient_b_Age_15_Female_95th ...
    Coefficient_b_Age_16_Female_95th Coefficient_b_Age_17_Female_95th Coefficient_b_Age_18_Female_95th Coefficient_b_Age_19_Female_95th Coefficient_b_Age_20_Female_95th ...
    Coefficient_b_Age_21_Female_95th Coefficient_b_Age_22_Female_95th Coefficient_b_Age_23_Female_95th Coefficient_b_Age_24_Female_95th Coefficient_b_Age_25_Female_95th ...
    Coefficient_b_Age_26_Female_95th Coefficient_b_Age_27_Female_95th Coefficient_b_Age_28_Female_95th Coefficient_b_Age_29_Female_95th Coefficient_b_Age_30_Female_95th ...
    Coefficient_b_Age_31_Female_95th Coefficient_b_Age_32_Female_95th Coefficient_b_Age_33_Female_95th Coefficient_b_Age_34_Female_95th Coefficient_b_Age_35_Female_95th ...
    Coefficient_b_Age_36_Female_95th Coefficient_b_Age_37_Female_95th Coefficient_b_Age_38_Female_95th Coefficient_b_Age_39_Female_95th Coefficient_b_Age_40_Female_95th ...
    Coefficient_b_Age_41_Female_95th Coefficient_b_Age_42_Female_95th Coefficient_b_Age_43_Female_95th Coefficient_b_Age_44_Female_95th Coefficient_b_Age_45_Female_95th ...
    Coefficient_b_Age_46_Female_95th Coefficient_b_Age_47_Female_95th Coefficient_b_Age_48_Female_95th Coefficient_b_Age_49_Female_95th Coefficient_b_Age_50_Female_95th ...
    Coefficient_b_Age_51_Female_95th Coefficient_b_Age_52_Female_95th Coefficient_b_Age_53_Female_95th Coefficient_b_Age_54_Female_95th Coefficient_b_Age_55_Female_95th ...
    Coefficient_b_Age_56_Female_95th Coefficient_b_Age_57_Female_95th Coefficient_b_Age_58_Female_95th Coefficient_b_Age_59_Female_95th Coefficient_b_Age_60_Female_95th ...
    Coefficient_b_Age_61_Female_95th Coefficient_b_Age_62_Female_95th Coefficient_b_Age_63_Female_95th Coefficient_b_Age_64_Female_95th Coefficient_b_Age_65_Female_95th ...
    Coefficient_b_Age_66_Female_95th Coefficient_b_Age_67_Female_95th Coefficient_b_Age_68_Female_95th Coefficient_b_Age_69_Female_95th Coefficient_b_Age_70_Female_95th ...
    Coefficient_b_Age_71_Female_95th Coefficient_b_Age_72_Female_95th Coefficient_b_Age_73_Female_95th Coefficient_b_Age_74_Female_95th Coefficient_b_Age_75_Female_95th ...
    Coefficient_b_Age_76_Female_95th Coefficient_b_Age_77_Female_95th Coefficient_b_Age_78_Female_95th Coefficient_b_Age_79_Female_95th Coefficient_b_Age_80_Female_95th ...
    Coefficient_b_Age_81_Female_95th Coefficient_b_Age_82_Female_95th Coefficient_b_Age_83_Female_95th Coefficient_b_Age_84_Female_95th Coefficient_b_Age_85_Female_95th ...
    Coefficient_b_Age_86_Female_95th Coefficient_b_Age_87_Female_95th Coefficient_b_Age_88_Female_95th Coefficient_b_Age_89_Female_95th Coefficient_b_Age_90_Female_95th];

My_mean_Coefficient_b_Female = [Coefficient_b_Age_1_Female_mean Coefficient_b_Age_2_Female_mean Coefficient_b_Age_3_Female_mean Coefficient_b_Age_4_Female_mean Coefficient_b_Age_5_Female_mean ...
    Coefficient_b_Age_6_Female_mean Coefficient_b_Age_7_Female_mean Coefficient_b_Age_8_Female_mean Coefficient_b_Age_9_Female_mean Coefficient_b_Age_10_Female_mean ...
    Coefficient_b_Age_11_Female_mean Coefficient_b_Age_12_Female_mean Coefficient_b_Age_13_Female_mean Coefficient_b_Age_14_Female_mean Coefficient_b_Age_15_Female_mean ...
    Coefficient_b_Age_16_Female_mean Coefficient_b_Age_17_Female_mean Coefficient_b_Age_18_Female_mean Coefficient_b_Age_19_Female_mean Coefficient_b_Age_20_Female_mean ...
    Coefficient_b_Age_21_Female_mean Coefficient_b_Age_22_Female_mean Coefficient_b_Age_23_Female_mean Coefficient_b_Age_24_Female_mean Coefficient_b_Age_25_Female_mean ...
    Coefficient_b_Age_26_Female_mean Coefficient_b_Age_27_Female_mean Coefficient_b_Age_28_Female_mean Coefficient_b_Age_29_Female_mean Coefficient_b_Age_30_Female_mean ...
    Coefficient_b_Age_31_Female_mean Coefficient_b_Age_32_Female_mean Coefficient_b_Age_33_Female_mean Coefficient_b_Age_34_Female_mean Coefficient_b_Age_35_Female_mean ...
    Coefficient_b_Age_36_Female_mean Coefficient_b_Age_37_Female_mean Coefficient_b_Age_38_Female_mean Coefficient_b_Age_39_Female_mean Coefficient_b_Age_40_Female_mean ...
    Coefficient_b_Age_41_Female_mean Coefficient_b_Age_42_Female_mean Coefficient_b_Age_43_Female_mean Coefficient_b_Age_44_Female_mean Coefficient_b_Age_45_Female_mean ...
    Coefficient_b_Age_46_Female_mean Coefficient_b_Age_47_Female_mean Coefficient_b_Age_48_Female_mean Coefficient_b_Age_49_Female_mean Coefficient_b_Age_50_Female_mean ...
    Coefficient_b_Age_51_Female_mean Coefficient_b_Age_52_Female_mean Coefficient_b_Age_53_Female_mean Coefficient_b_Age_54_Female_mean Coefficient_b_Age_55_Female_mean ...
    Coefficient_b_Age_56_Female_mean Coefficient_b_Age_57_Female_mean Coefficient_b_Age_58_Female_mean Coefficient_b_Age_59_Female_mean Coefficient_b_Age_60_Female_mean ...
    Coefficient_b_Age_61_Female_mean Coefficient_b_Age_62_Female_mean Coefficient_b_Age_63_Female_mean Coefficient_b_Age_64_Female_mean Coefficient_b_Age_65_Female_mean ...
    Coefficient_b_Age_66_Female_mean Coefficient_b_Age_67_Female_mean Coefficient_b_Age_68_Female_mean Coefficient_b_Age_69_Female_mean Coefficient_b_Age_70_Female_mean ...
    Coefficient_b_Age_71_Female_mean Coefficient_b_Age_72_Female_mean Coefficient_b_Age_73_Female_mean Coefficient_b_Age_74_Female_mean Coefficient_b_Age_75_Female_mean ...
    Coefficient_b_Age_76_Female_mean Coefficient_b_Age_77_Female_mean Coefficient_b_Age_78_Female_mean Coefficient_b_Age_79_Female_mean Coefficient_b_Age_80_Female_mean ...
    Coefficient_b_Age_81_Female_mean Coefficient_b_Age_82_Female_mean Coefficient_b_Age_83_Female_mean Coefficient_b_Age_84_Female_mean Coefficient_b_Age_85_Female_mean ...
    Coefficient_b_Age_86_Female_mean Coefficient_b_Age_87_Female_mean Coefficient_b_Age_88_Female_mean Coefficient_b_Age_89_Female_mean Coefficient_b_Age_90_Female_mean];

My_Age_Male = 1:90;
My_5th_Coefficient_a_Male = [Coefficient_a_Age_1_Male_5th Coefficient_a_Age_2_Male_5th Coefficient_a_Age_3_Male_5th Coefficient_a_Age_4_Male_5th Coefficient_a_Age_5_Male_5th ...
    Coefficient_a_Age_6_Male_5th Coefficient_a_Age_7_Male_5th Coefficient_a_Age_8_Male_5th Coefficient_a_Age_9_Male_5th Coefficient_a_Age_10_Male_5th ...
    Coefficient_a_Age_11_Male_5th Coefficient_a_Age_12_Male_5th Coefficient_a_Age_13_Male_5th Coefficient_a_Age_14_Male_5th Coefficient_a_Age_15_Male_5th ...
    Coefficient_a_Age_16_Male_5th Coefficient_a_Age_17_Male_5th Coefficient_a_Age_18_Male_5th Coefficient_a_Age_19_Male_5th Coefficient_a_Age_20_Male_5th ...
    Coefficient_a_Age_21_Male_5th Coefficient_a_Age_22_Male_5th Coefficient_a_Age_23_Male_5th Coefficient_a_Age_24_Male_5th Coefficient_a_Age_25_Male_5th ...
    Coefficient_a_Age_26_Male_5th Coefficient_a_Age_27_Male_5th Coefficient_a_Age_28_Male_5th Coefficient_a_Age_29_Male_5th Coefficient_a_Age_30_Male_5th ...
    Coefficient_a_Age_31_Male_5th Coefficient_a_Age_32_Male_5th Coefficient_a_Age_33_Male_5th Coefficient_a_Age_34_Male_5th Coefficient_a_Age_35_Male_5th ...
    Coefficient_a_Age_36_Male_5th Coefficient_a_Age_37_Male_5th Coefficient_a_Age_38_Male_5th Coefficient_a_Age_39_Male_5th Coefficient_a_Age_40_Male_5th ...
    Coefficient_a_Age_41_Male_5th Coefficient_a_Age_42_Male_5th Coefficient_a_Age_43_Male_5th Coefficient_a_Age_44_Male_5th Coefficient_a_Age_45_Male_5th ...
    Coefficient_a_Age_46_Male_5th Coefficient_a_Age_47_Male_5th Coefficient_a_Age_48_Male_5th Coefficient_a_Age_49_Male_5th Coefficient_a_Age_50_Male_5th ...
    Coefficient_a_Age_51_Male_5th Coefficient_a_Age_52_Male_5th Coefficient_a_Age_53_Male_5th Coefficient_a_Age_54_Male_5th Coefficient_a_Age_55_Male_5th ...
    Coefficient_a_Age_56_Male_5th Coefficient_a_Age_57_Male_5th Coefficient_a_Age_58_Male_5th Coefficient_a_Age_59_Male_5th Coefficient_a_Age_60_Male_5th ...
    Coefficient_a_Age_61_Male_5th Coefficient_a_Age_62_Male_5th Coefficient_a_Age_63_Male_5th Coefficient_a_Age_64_Male_5th Coefficient_a_Age_65_Male_5th ...
    Coefficient_a_Age_66_Male_5th Coefficient_a_Age_67_Male_5th Coefficient_a_Age_68_Male_5th Coefficient_a_Age_69_Male_5th Coefficient_a_Age_70_Male_5th ...
    Coefficient_a_Age_71_Male_5th Coefficient_a_Age_72_Male_5th Coefficient_a_Age_73_Male_5th Coefficient_a_Age_74_Male_5th Coefficient_a_Age_75_Male_5th ...
    Coefficient_a_Age_76_Male_5th Coefficient_a_Age_77_Male_5th Coefficient_a_Age_78_Male_5th Coefficient_a_Age_79_Male_5th Coefficient_a_Age_80_Male_5th ...
    Coefficient_a_Age_81_Male_5th Coefficient_a_Age_82_Male_5th Coefficient_a_Age_83_Male_5th Coefficient_a_Age_84_Male_5th Coefficient_a_Age_85_Male_5th ...
    Coefficient_a_Age_86_Male_5th Coefficient_a_Age_87_Male_5th Coefficient_a_Age_88_Male_5th Coefficient_a_Age_89_Male_5th Coefficient_a_Age_90_Male_5th];

My_50th_Coefficient_a_Male = [Coefficient_a_Age_1_Male_50th Coefficient_a_Age_2_Male_50th Coefficient_a_Age_3_Male_50th Coefficient_a_Age_4_Male_50th Coefficient_a_Age_5_Male_50th ...
    Coefficient_a_Age_6_Male_50th Coefficient_a_Age_7_Male_50th Coefficient_a_Age_8_Male_50th Coefficient_a_Age_9_Male_50th Coefficient_a_Age_10_Male_50th ...
    Coefficient_a_Age_11_Male_50th Coefficient_a_Age_12_Male_50th Coefficient_a_Age_13_Male_50th Coefficient_a_Age_14_Male_50th Coefficient_a_Age_15_Male_50th ...
    Coefficient_a_Age_16_Male_50th Coefficient_a_Age_17_Male_50th Coefficient_a_Age_18_Male_50th Coefficient_a_Age_19_Male_50th Coefficient_a_Age_20_Male_50th ...
    Coefficient_a_Age_21_Male_50th Coefficient_a_Age_22_Male_50th Coefficient_a_Age_23_Male_50th Coefficient_a_Age_24_Male_50th Coefficient_a_Age_25_Male_50th ...
    Coefficient_a_Age_26_Male_50th Coefficient_a_Age_27_Male_50th Coefficient_a_Age_28_Male_50th Coefficient_a_Age_29_Male_50th Coefficient_a_Age_30_Male_50th ...
    Coefficient_a_Age_31_Male_50th Coefficient_a_Age_32_Male_50th Coefficient_a_Age_33_Male_50th Coefficient_a_Age_34_Male_50th Coefficient_a_Age_35_Male_50th ...
    Coefficient_a_Age_36_Male_50th Coefficient_a_Age_37_Male_50th Coefficient_a_Age_38_Male_50th Coefficient_a_Age_39_Male_50th Coefficient_a_Age_40_Male_50th ...
    Coefficient_a_Age_41_Male_50th Coefficient_a_Age_42_Male_50th Coefficient_a_Age_43_Male_50th Coefficient_a_Age_44_Male_50th Coefficient_a_Age_45_Male_50th ...
    Coefficient_a_Age_46_Male_50th Coefficient_a_Age_47_Male_50th Coefficient_a_Age_48_Male_50th Coefficient_a_Age_49_Male_50th Coefficient_a_Age_50_Male_50th ...
    Coefficient_a_Age_51_Male_50th Coefficient_a_Age_52_Male_50th Coefficient_a_Age_53_Male_50th Coefficient_a_Age_54_Male_50th Coefficient_a_Age_55_Male_50th ...
    Coefficient_a_Age_56_Male_50th Coefficient_a_Age_57_Male_50th Coefficient_a_Age_58_Male_50th Coefficient_a_Age_59_Male_50th Coefficient_a_Age_60_Male_50th ...
    Coefficient_a_Age_61_Male_50th Coefficient_a_Age_62_Male_50th Coefficient_a_Age_63_Male_50th Coefficient_a_Age_64_Male_50th Coefficient_a_Age_65_Male_50th ...
    Coefficient_a_Age_66_Male_50th Coefficient_a_Age_67_Male_50th Coefficient_a_Age_68_Male_50th Coefficient_a_Age_69_Male_50th Coefficient_a_Age_70_Male_50th ...
    Coefficient_a_Age_71_Male_50th Coefficient_a_Age_72_Male_50th Coefficient_a_Age_73_Male_50th Coefficient_a_Age_74_Male_50th Coefficient_a_Age_75_Male_50th ...
    Coefficient_a_Age_76_Male_50th Coefficient_a_Age_77_Male_50th Coefficient_a_Age_78_Male_50th Coefficient_a_Age_79_Male_50th Coefficient_a_Age_80_Male_50th ...
    Coefficient_a_Age_81_Male_50th Coefficient_a_Age_82_Male_50th Coefficient_a_Age_83_Male_50th Coefficient_a_Age_84_Male_50th Coefficient_a_Age_85_Male_50th ...
    Coefficient_a_Age_86_Male_50th Coefficient_a_Age_87_Male_50th Coefficient_a_Age_88_Male_50th Coefficient_a_Age_89_Male_50th Coefficient_a_Age_90_Male_50th];

My_95th_Coefficient_a_Male = [Coefficient_a_Age_1_Male_95th Coefficient_a_Age_2_Male_95th Coefficient_a_Age_3_Male_95th Coefficient_a_Age_4_Male_95th Coefficient_a_Age_5_Male_95th ...
    Coefficient_a_Age_6_Male_95th Coefficient_a_Age_7_Male_95th Coefficient_a_Age_8_Male_95th Coefficient_a_Age_9_Male_95th Coefficient_a_Age_10_Male_95th ...
    Coefficient_a_Age_11_Male_95th Coefficient_a_Age_12_Male_95th Coefficient_a_Age_13_Male_95th Coefficient_a_Age_14_Male_95th Coefficient_a_Age_15_Male_95th ...
    Coefficient_a_Age_16_Male_95th Coefficient_a_Age_17_Male_95th Coefficient_a_Age_18_Male_95th Coefficient_a_Age_19_Male_95th Coefficient_a_Age_20_Male_95th ...
    Coefficient_a_Age_21_Male_95th Coefficient_a_Age_22_Male_95th Coefficient_a_Age_23_Male_95th Coefficient_a_Age_24_Male_95th Coefficient_a_Age_25_Male_95th ...
    Coefficient_a_Age_26_Male_95th Coefficient_a_Age_27_Male_95th Coefficient_a_Age_28_Male_95th Coefficient_a_Age_29_Male_95th Coefficient_a_Age_30_Male_95th ...
    Coefficient_a_Age_31_Male_95th Coefficient_a_Age_32_Male_95th Coefficient_a_Age_33_Male_95th Coefficient_a_Age_34_Male_95th Coefficient_a_Age_35_Male_95th ...
    Coefficient_a_Age_36_Male_95th Coefficient_a_Age_37_Male_95th Coefficient_a_Age_38_Male_95th Coefficient_a_Age_39_Male_95th Coefficient_a_Age_40_Male_95th ...
    Coefficient_a_Age_41_Male_95th Coefficient_a_Age_42_Male_95th Coefficient_a_Age_43_Male_95th Coefficient_a_Age_44_Male_95th Coefficient_a_Age_45_Male_95th ...
    Coefficient_a_Age_46_Male_95th Coefficient_a_Age_47_Male_95th Coefficient_a_Age_48_Male_95th Coefficient_a_Age_49_Male_95th Coefficient_a_Age_50_Male_95th ...
    Coefficient_a_Age_51_Male_95th Coefficient_a_Age_52_Male_95th Coefficient_a_Age_53_Male_95th Coefficient_a_Age_54_Male_95th Coefficient_a_Age_55_Male_95th ...
    Coefficient_a_Age_56_Male_95th Coefficient_a_Age_57_Male_95th Coefficient_a_Age_58_Male_95th Coefficient_a_Age_59_Male_95th Coefficient_a_Age_60_Male_95th ...
    Coefficient_a_Age_61_Male_95th Coefficient_a_Age_62_Male_95th Coefficient_a_Age_63_Male_95th Coefficient_a_Age_64_Male_95th Coefficient_a_Age_65_Male_95th ...
    Coefficient_a_Age_66_Male_95th Coefficient_a_Age_67_Male_95th Coefficient_a_Age_68_Male_95th Coefficient_a_Age_69_Male_95th Coefficient_a_Age_70_Male_95th ...
    Coefficient_a_Age_71_Male_95th Coefficient_a_Age_72_Male_95th Coefficient_a_Age_73_Male_95th Coefficient_a_Age_74_Male_95th Coefficient_a_Age_75_Male_95th ...
    Coefficient_a_Age_76_Male_95th Coefficient_a_Age_77_Male_95th Coefficient_a_Age_78_Male_95th Coefficient_a_Age_79_Male_95th Coefficient_a_Age_80_Male_95th ...
    Coefficient_a_Age_81_Male_95th Coefficient_a_Age_82_Male_95th Coefficient_a_Age_83_Male_95th Coefficient_a_Age_84_Male_95th Coefficient_a_Age_85_Male_95th ...
    Coefficient_a_Age_86_Male_95th Coefficient_a_Age_87_Male_95th Coefficient_a_Age_88_Male_95th Coefficient_a_Age_89_Male_95th Coefficient_a_Age_90_Male_95th];

My_mean_Coefficient_a_Male = [Coefficient_a_Age_1_Male_mean Coefficient_a_Age_2_Male_mean Coefficient_a_Age_3_Male_mean Coefficient_a_Age_4_Male_mean Coefficient_a_Age_5_Male_mean ...
    Coefficient_a_Age_6_Male_mean Coefficient_a_Age_7_Male_mean Coefficient_a_Age_8_Male_mean Coefficient_a_Age_9_Male_mean Coefficient_a_Age_10_Male_mean ...
    Coefficient_a_Age_11_Male_mean Coefficient_a_Age_12_Male_mean Coefficient_a_Age_13_Male_mean Coefficient_a_Age_14_Male_mean Coefficient_a_Age_15_Male_mean ...
    Coefficient_a_Age_16_Male_mean Coefficient_a_Age_17_Male_mean Coefficient_a_Age_18_Male_mean Coefficient_a_Age_19_Male_mean Coefficient_a_Age_20_Male_mean ...
    Coefficient_a_Age_21_Male_mean Coefficient_a_Age_22_Male_mean Coefficient_a_Age_23_Male_mean Coefficient_a_Age_24_Male_mean Coefficient_a_Age_25_Male_mean ...
    Coefficient_a_Age_26_Male_mean Coefficient_a_Age_27_Male_mean Coefficient_a_Age_28_Male_mean Coefficient_a_Age_29_Male_mean Coefficient_a_Age_30_Male_mean ...
    Coefficient_a_Age_31_Male_mean Coefficient_a_Age_32_Male_mean Coefficient_a_Age_33_Male_mean Coefficient_a_Age_34_Male_mean Coefficient_a_Age_35_Male_mean ...
    Coefficient_a_Age_36_Male_mean Coefficient_a_Age_37_Male_mean Coefficient_a_Age_38_Male_mean Coefficient_a_Age_39_Male_mean Coefficient_a_Age_40_Male_mean ...
    Coefficient_a_Age_41_Male_mean Coefficient_a_Age_42_Male_mean Coefficient_a_Age_43_Male_mean Coefficient_a_Age_44_Male_mean Coefficient_a_Age_45_Male_mean ...
    Coefficient_a_Age_46_Male_mean Coefficient_a_Age_47_Male_mean Coefficient_a_Age_48_Male_mean Coefficient_a_Age_49_Male_mean Coefficient_a_Age_50_Male_mean ...
    Coefficient_a_Age_51_Male_mean Coefficient_a_Age_52_Male_mean Coefficient_a_Age_53_Male_mean Coefficient_a_Age_54_Male_mean Coefficient_a_Age_55_Male_mean ...
    Coefficient_a_Age_56_Male_mean Coefficient_a_Age_57_Male_mean Coefficient_a_Age_58_Male_mean Coefficient_a_Age_59_Male_mean Coefficient_a_Age_60_Male_mean ...
    Coefficient_a_Age_61_Male_mean Coefficient_a_Age_62_Male_mean Coefficient_a_Age_63_Male_mean Coefficient_a_Age_64_Male_mean Coefficient_a_Age_65_Male_mean ...
    Coefficient_a_Age_66_Male_mean Coefficient_a_Age_67_Male_mean Coefficient_a_Age_68_Male_mean Coefficient_a_Age_69_Male_mean Coefficient_a_Age_70_Male_mean ...
    Coefficient_a_Age_71_Male_mean Coefficient_a_Age_72_Male_mean Coefficient_a_Age_73_Male_mean Coefficient_a_Age_74_Male_mean Coefficient_a_Age_75_Male_mean ...
    Coefficient_a_Age_76_Male_mean Coefficient_a_Age_77_Male_mean Coefficient_a_Age_78_Male_mean Coefficient_a_Age_79_Male_mean Coefficient_a_Age_80_Male_mean ...
    Coefficient_a_Age_81_Male_mean Coefficient_a_Age_82_Male_mean Coefficient_a_Age_83_Male_mean Coefficient_a_Age_84_Male_mean Coefficient_a_Age_85_Male_mean ...
    Coefficient_a_Age_86_Male_mean Coefficient_a_Age_87_Male_mean Coefficient_a_Age_88_Male_mean Coefficient_a_Age_89_Male_mean Coefficient_a_Age_90_Male_mean];

My_5th_Coefficient_b_Male = [Coefficient_b_Age_1_Male_5th Coefficient_b_Age_2_Male_5th Coefficient_b_Age_3_Male_5th Coefficient_b_Age_4_Male_5th Coefficient_b_Age_5_Male_5th ...
    Coefficient_b_Age_6_Male_5th Coefficient_b_Age_7_Male_5th Coefficient_b_Age_8_Male_5th Coefficient_b_Age_9_Male_5th Coefficient_b_Age_10_Male_5th ...
    Coefficient_b_Age_11_Male_5th Coefficient_b_Age_12_Male_5th Coefficient_b_Age_13_Male_5th Coefficient_b_Age_14_Male_5th Coefficient_b_Age_15_Male_5th ...
    Coefficient_b_Age_16_Male_5th Coefficient_b_Age_17_Male_5th Coefficient_b_Age_18_Male_5th Coefficient_b_Age_19_Male_5th Coefficient_b_Age_20_Male_5th ...
    Coefficient_b_Age_21_Male_5th Coefficient_b_Age_22_Male_5th Coefficient_b_Age_23_Male_5th Coefficient_b_Age_24_Male_5th Coefficient_b_Age_25_Male_5th ...
    Coefficient_b_Age_26_Male_5th Coefficient_b_Age_27_Male_5th Coefficient_b_Age_28_Male_5th Coefficient_b_Age_29_Male_5th Coefficient_b_Age_30_Male_5th ...
    Coefficient_b_Age_31_Male_5th Coefficient_b_Age_32_Male_5th Coefficient_b_Age_33_Male_5th Coefficient_b_Age_34_Male_5th Coefficient_b_Age_35_Male_5th ...
    Coefficient_b_Age_36_Male_5th Coefficient_b_Age_37_Male_5th Coefficient_b_Age_38_Male_5th Coefficient_b_Age_39_Male_5th Coefficient_b_Age_40_Male_5th ...
    Coefficient_b_Age_41_Male_5th Coefficient_b_Age_42_Male_5th Coefficient_b_Age_43_Male_5th Coefficient_b_Age_44_Male_5th Coefficient_b_Age_45_Male_5th ...
    Coefficient_b_Age_46_Male_5th Coefficient_b_Age_47_Male_5th Coefficient_b_Age_48_Male_5th Coefficient_b_Age_49_Male_5th Coefficient_b_Age_50_Male_5th ...
    Coefficient_b_Age_51_Male_5th Coefficient_b_Age_52_Male_5th Coefficient_b_Age_53_Male_5th Coefficient_b_Age_54_Male_5th Coefficient_b_Age_55_Male_5th ...
    Coefficient_b_Age_56_Male_5th Coefficient_b_Age_57_Male_5th Coefficient_b_Age_58_Male_5th Coefficient_b_Age_59_Male_5th Coefficient_b_Age_60_Male_5th ...
    Coefficient_b_Age_61_Male_5th Coefficient_b_Age_62_Male_5th Coefficient_b_Age_63_Male_5th Coefficient_b_Age_64_Male_5th Coefficient_b_Age_65_Male_5th ...
    Coefficient_b_Age_66_Male_5th Coefficient_b_Age_67_Male_5th Coefficient_b_Age_68_Male_5th Coefficient_b_Age_69_Male_5th Coefficient_b_Age_70_Male_5th ...
    Coefficient_b_Age_71_Male_5th Coefficient_b_Age_72_Male_5th Coefficient_b_Age_73_Male_5th Coefficient_b_Age_74_Male_5th Coefficient_b_Age_75_Male_5th ...
    Coefficient_b_Age_76_Male_5th Coefficient_b_Age_77_Male_5th Coefficient_b_Age_78_Male_5th Coefficient_b_Age_79_Male_5th Coefficient_b_Age_80_Male_5th ...
    Coefficient_b_Age_81_Male_5th Coefficient_b_Age_82_Male_5th Coefficient_b_Age_83_Male_5th Coefficient_b_Age_84_Male_5th Coefficient_b_Age_85_Male_5th ...
    Coefficient_b_Age_86_Male_5th Coefficient_b_Age_87_Male_5th Coefficient_b_Age_88_Male_5th Coefficient_b_Age_89_Male_5th Coefficient_b_Age_90_Male_5th];

My_50th_Coefficient_b_Male = [Coefficient_b_Age_1_Male_50th Coefficient_b_Age_2_Male_50th Coefficient_b_Age_3_Male_50th Coefficient_b_Age_4_Male_50th Coefficient_b_Age_5_Male_50th ...
    Coefficient_b_Age_6_Male_50th Coefficient_b_Age_7_Male_50th Coefficient_b_Age_8_Male_50th Coefficient_b_Age_9_Male_50th Coefficient_b_Age_10_Male_50th ...
    Coefficient_b_Age_11_Male_50th Coefficient_b_Age_12_Male_50th Coefficient_b_Age_13_Male_50th Coefficient_b_Age_14_Male_50th Coefficient_b_Age_15_Male_50th ...
    Coefficient_b_Age_16_Male_50th Coefficient_b_Age_17_Male_50th Coefficient_b_Age_18_Male_50th Coefficient_b_Age_19_Male_50th Coefficient_b_Age_20_Male_50th ...
    Coefficient_b_Age_21_Male_50th Coefficient_b_Age_22_Male_50th Coefficient_b_Age_23_Male_50th Coefficient_b_Age_24_Male_50th Coefficient_b_Age_25_Male_50th ...
    Coefficient_b_Age_26_Male_50th Coefficient_b_Age_27_Male_50th Coefficient_b_Age_28_Male_50th Coefficient_b_Age_29_Male_50th Coefficient_b_Age_30_Male_50th ...
    Coefficient_b_Age_31_Male_50th Coefficient_b_Age_32_Male_50th Coefficient_b_Age_33_Male_50th Coefficient_b_Age_34_Male_50th Coefficient_b_Age_35_Male_50th ...
    Coefficient_b_Age_36_Male_50th Coefficient_b_Age_37_Male_50th Coefficient_b_Age_38_Male_50th Coefficient_b_Age_39_Male_50th Coefficient_b_Age_40_Male_50th ...
    Coefficient_b_Age_41_Male_50th Coefficient_b_Age_42_Male_50th Coefficient_b_Age_43_Male_50th Coefficient_b_Age_44_Male_50th Coefficient_b_Age_45_Male_50th ...
    Coefficient_b_Age_46_Male_50th Coefficient_b_Age_47_Male_50th Coefficient_b_Age_48_Male_50th Coefficient_b_Age_49_Male_50th Coefficient_b_Age_50_Male_50th ...
    Coefficient_b_Age_51_Male_50th Coefficient_b_Age_52_Male_50th Coefficient_b_Age_53_Male_50th Coefficient_b_Age_54_Male_50th Coefficient_b_Age_55_Male_50th ...
    Coefficient_b_Age_56_Male_50th Coefficient_b_Age_57_Male_50th Coefficient_b_Age_58_Male_50th Coefficient_b_Age_59_Male_50th Coefficient_b_Age_60_Male_50th ...
    Coefficient_b_Age_61_Male_50th Coefficient_b_Age_62_Male_50th Coefficient_b_Age_63_Male_50th Coefficient_b_Age_64_Male_50th Coefficient_b_Age_65_Male_50th ...
    Coefficient_b_Age_66_Male_50th Coefficient_b_Age_67_Male_50th Coefficient_b_Age_68_Male_50th Coefficient_b_Age_69_Male_50th Coefficient_b_Age_70_Male_50th ...
    Coefficient_b_Age_71_Male_50th Coefficient_b_Age_72_Male_50th Coefficient_b_Age_73_Male_50th Coefficient_b_Age_74_Male_50th Coefficient_b_Age_75_Male_50th ...
    Coefficient_b_Age_76_Male_50th Coefficient_b_Age_77_Male_50th Coefficient_b_Age_78_Male_50th Coefficient_b_Age_79_Male_50th Coefficient_b_Age_80_Male_50th ...
    Coefficient_b_Age_81_Male_50th Coefficient_b_Age_82_Male_50th Coefficient_b_Age_83_Male_50th Coefficient_b_Age_84_Male_50th Coefficient_b_Age_85_Male_50th ...
    Coefficient_b_Age_86_Male_50th Coefficient_b_Age_87_Male_50th Coefficient_b_Age_88_Male_50th Coefficient_b_Age_89_Male_50th Coefficient_b_Age_90_Male_50th];

My_95th_Coefficient_b_Male = [Coefficient_b_Age_1_Male_95th Coefficient_b_Age_2_Male_95th Coefficient_b_Age_3_Male_95th Coefficient_b_Age_4_Male_95th Coefficient_b_Age_5_Male_95th ...
    Coefficient_b_Age_6_Male_95th Coefficient_b_Age_7_Male_95th Coefficient_b_Age_8_Male_95th Coefficient_b_Age_9_Male_95th Coefficient_b_Age_10_Male_95th ...
    Coefficient_b_Age_11_Male_95th Coefficient_b_Age_12_Male_95th Coefficient_b_Age_13_Male_95th Coefficient_b_Age_14_Male_95th Coefficient_b_Age_15_Male_95th ...
    Coefficient_b_Age_16_Male_95th Coefficient_b_Age_17_Male_95th Coefficient_b_Age_18_Male_95th Coefficient_b_Age_19_Male_95th Coefficient_b_Age_20_Male_95th ...
    Coefficient_b_Age_21_Male_95th Coefficient_b_Age_22_Male_95th Coefficient_b_Age_23_Male_95th Coefficient_b_Age_24_Male_95th Coefficient_b_Age_25_Male_95th ...
    Coefficient_b_Age_26_Male_95th Coefficient_b_Age_27_Male_95th Coefficient_b_Age_28_Male_95th Coefficient_b_Age_29_Male_95th Coefficient_b_Age_30_Male_95th ...
    Coefficient_b_Age_31_Male_95th Coefficient_b_Age_32_Male_95th Coefficient_b_Age_33_Male_95th Coefficient_b_Age_34_Male_95th Coefficient_b_Age_35_Male_95th ...
    Coefficient_b_Age_36_Male_95th Coefficient_b_Age_37_Male_95th Coefficient_b_Age_38_Male_95th Coefficient_b_Age_39_Male_95th Coefficient_b_Age_40_Male_95th ...
    Coefficient_b_Age_41_Male_95th Coefficient_b_Age_42_Male_95th Coefficient_b_Age_43_Male_95th Coefficient_b_Age_44_Male_95th Coefficient_b_Age_45_Male_95th ...
    Coefficient_b_Age_46_Male_95th Coefficient_b_Age_47_Male_95th Coefficient_b_Age_48_Male_95th Coefficient_b_Age_49_Male_95th Coefficient_b_Age_50_Male_95th ...
    Coefficient_b_Age_51_Male_95th Coefficient_b_Age_52_Male_95th Coefficient_b_Age_53_Male_95th Coefficient_b_Age_54_Male_95th Coefficient_b_Age_55_Male_95th ...
    Coefficient_b_Age_56_Male_95th Coefficient_b_Age_57_Male_95th Coefficient_b_Age_58_Male_95th Coefficient_b_Age_59_Male_95th Coefficient_b_Age_60_Male_95th ...
    Coefficient_b_Age_61_Male_95th Coefficient_b_Age_62_Male_95th Coefficient_b_Age_63_Male_95th Coefficient_b_Age_64_Male_95th Coefficient_b_Age_65_Male_95th ...
    Coefficient_b_Age_66_Male_95th Coefficient_b_Age_67_Male_95th Coefficient_b_Age_68_Male_95th Coefficient_b_Age_69_Male_95th Coefficient_b_Age_70_Male_95th ...
    Coefficient_b_Age_71_Male_95th Coefficient_b_Age_72_Male_95th Coefficient_b_Age_73_Male_95th Coefficient_b_Age_74_Male_95th Coefficient_b_Age_75_Male_95th ...
    Coefficient_b_Age_76_Male_95th Coefficient_b_Age_77_Male_95th Coefficient_b_Age_78_Male_95th Coefficient_b_Age_79_Male_95th Coefficient_b_Age_80_Male_95th ...
    Coefficient_b_Age_81_Male_95th Coefficient_b_Age_82_Male_95th Coefficient_b_Age_83_Male_95th Coefficient_b_Age_84_Male_95th Coefficient_b_Age_85_Male_95th ...
    Coefficient_b_Age_86_Male_95th Coefficient_b_Age_87_Male_95th Coefficient_b_Age_88_Male_95th Coefficient_b_Age_89_Male_95th Coefficient_b_Age_90_Male_95th];

My_mean_Coefficient_b_Male = [Coefficient_b_Age_1_Male_mean Coefficient_b_Age_2_Male_mean Coefficient_b_Age_3_Male_mean Coefficient_b_Age_4_Male_mean Coefficient_b_Age_5_Male_mean ...
    Coefficient_b_Age_6_Male_mean Coefficient_b_Age_7_Male_mean Coefficient_b_Age_8_Male_mean Coefficient_b_Age_9_Male_mean Coefficient_b_Age_10_Male_mean ...
    Coefficient_b_Age_11_Male_mean Coefficient_b_Age_12_Male_mean Coefficient_b_Age_13_Male_mean Coefficient_b_Age_14_Male_mean Coefficient_b_Age_15_Male_mean ...
    Coefficient_b_Age_16_Male_mean Coefficient_b_Age_17_Male_mean Coefficient_b_Age_18_Male_mean Coefficient_b_Age_19_Male_mean Coefficient_b_Age_20_Male_mean ...
    Coefficient_b_Age_21_Male_mean Coefficient_b_Age_22_Male_mean Coefficient_b_Age_23_Male_mean Coefficient_b_Age_24_Male_mean Coefficient_b_Age_25_Male_mean ...
    Coefficient_b_Age_26_Male_mean Coefficient_b_Age_27_Male_mean Coefficient_b_Age_28_Male_mean Coefficient_b_Age_29_Male_mean Coefficient_b_Age_30_Male_mean ...
    Coefficient_b_Age_31_Male_mean Coefficient_b_Age_32_Male_mean Coefficient_b_Age_33_Male_mean Coefficient_b_Age_34_Male_mean Coefficient_b_Age_35_Male_mean ...
    Coefficient_b_Age_36_Male_mean Coefficient_b_Age_37_Male_mean Coefficient_b_Age_38_Male_mean Coefficient_b_Age_39_Male_mean Coefficient_b_Age_40_Male_mean ...
    Coefficient_b_Age_41_Male_mean Coefficient_b_Age_42_Male_mean Coefficient_b_Age_43_Male_mean Coefficient_b_Age_44_Male_mean Coefficient_b_Age_45_Male_mean ...
    Coefficient_b_Age_46_Male_mean Coefficient_b_Age_47_Male_mean Coefficient_b_Age_48_Male_mean Coefficient_b_Age_49_Male_mean Coefficient_b_Age_50_Male_mean ...
    Coefficient_b_Age_51_Male_mean Coefficient_b_Age_52_Male_mean Coefficient_b_Age_53_Male_mean Coefficient_b_Age_54_Male_mean Coefficient_b_Age_55_Male_mean ...
    Coefficient_b_Age_56_Male_mean Coefficient_b_Age_57_Male_mean Coefficient_b_Age_58_Male_mean Coefficient_b_Age_59_Male_mean Coefficient_b_Age_60_Male_mean ...
    Coefficient_b_Age_61_Male_mean Coefficient_b_Age_62_Male_mean Coefficient_b_Age_63_Male_mean Coefficient_b_Age_64_Male_mean Coefficient_b_Age_65_Male_mean ...
    Coefficient_b_Age_66_Male_mean Coefficient_b_Age_67_Male_mean Coefficient_b_Age_68_Male_mean Coefficient_b_Age_69_Male_mean Coefficient_b_Age_70_Male_mean ...
    Coefficient_b_Age_71_Male_mean Coefficient_b_Age_72_Male_mean Coefficient_b_Age_73_Male_mean Coefficient_b_Age_74_Male_mean Coefficient_b_Age_75_Male_mean ...
    Coefficient_b_Age_76_Male_mean Coefficient_b_Age_77_Male_mean Coefficient_b_Age_78_Male_mean Coefficient_b_Age_79_Male_mean Coefficient_b_Age_80_Male_mean ...
    Coefficient_b_Age_81_Male_mean Coefficient_b_Age_82_Male_mean Coefficient_b_Age_83_Male_mean Coefficient_b_Age_84_Male_mean Coefficient_b_Age_85_Male_mean ...
    Coefficient_b_Age_86_Male_mean Coefficient_b_Age_87_Male_mean Coefficient_b_Age_88_Male_mean Coefficient_b_Age_89_Male_mean Coefficient_b_Age_90_Male_mean];

%%
% We save the percentiles, including 5th, 50th, mean, and 95th
save('My_percentiles_Corr_Coefficient_ab_c1_Asian.mat','My_Age_Female','My_5th_Coefficient_a_Female','My_50th_Coefficient_a_Female',...
    'My_95th_Coefficient_a_Female','My_mean_Coefficient_a_Female','My_5th_Coefficient_b_Female','My_50th_Coefficient_b_Female',...
    'My_95th_Coefficient_b_Female','My_mean_Coefficient_b_Female',...
    'My_Age_Male','My_5th_Coefficient_a_Male','My_50th_Coefficient_a_Male','My_95th_Coefficient_a_Male','My_mean_Coefficient_a_Male',...
    'My_5th_Coefficient_b_Male','My_50th_Coefficient_b_Male','My_95th_Coefficient_b_Male','My_mean_Coefficient_b_Male');
%}