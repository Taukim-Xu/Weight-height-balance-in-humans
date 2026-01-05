%% Source codes for Extended_Data_Fig_1_c
% c = 1
% only inclulde 02-America
% 
%% Parameter information for drawing
My_mark_type = '.';
My_LineWidth = 1.5;
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
% 02-America
load('./02-America/Correlation_coefficient_c1_NHANES_ALL.mat')
%% We merge them.
Age_All_Female = [Age_NHANES_1999_2000 Age_NHANES_2001_2002 Age_NHANES_2003_2004 Age_NHANES_2005_2006 ...
    Age_NHANES_2007_2008 Age_NHANES_2009_2010 Age_NHANES_2011_2012 Age_NHANES_2013_2014 ...
    Age_NHANES_2015_2016 Age_NHANES_2017_2018 Age_NHANES_2017_March_2020 Age_NHANES_August_2021_August_2023 ...
    ];

Age_All_Male = [Age_NHANES_1999_2000 Age_NHANES_2001_2002 Age_NHANES_2003_2004 Age_NHANES_2005_2006 ...
    Age_NHANES_2007_2008 Age_NHANES_2009_2010 Age_NHANES_2011_2012 Age_NHANES_2013_2014 ...
    Age_NHANES_2015_2016 Age_NHANES_2017_2018 Age_NHANES_2017_March_2020 Age_NHANES_August_2021_August_2023 ...
    ];

Corr_All_Female = [Corr_NHANES_1999_2000_Female Corr_NHANES_2001_2002_Female ...
    Corr_NHANES_2003_2004_Female Corr_NHANES_2005_2006_Female Corr_NHANES_2007_2008_Female ...
    Corr_NHANES_2009_2010_Female Corr_NHANES_2011_2012_Female Corr_NHANES_2013_2014_Female ...
    Corr_NHANES_2015_2016_Female Corr_NHANES_2017_2018_Female Corr_NHANES_2017_March_2020_Female ...
    Corr_NHANES_August_2021_August_2023_Female];

Corr_All_Male = [Corr_NHANES_1999_2000_Male Corr_NHANES_2001_2002_Male ...
    Corr_NHANES_2003_2004_Male Corr_NHANES_2005_2006_Male Corr_NHANES_2007_2008_Male ...
    Corr_NHANES_2009_2010_Male Corr_NHANES_2011_2012_Male Corr_NHANES_2013_2014_Male ...
    Corr_NHANES_2015_2016_Male Corr_NHANES_2017_2018_Male Corr_NHANES_2017_March_2020_Male ...
    Corr_NHANES_August_2021_August_2023_Male];

%%
Corr_Age_2_Female = [];
Corr_Age_3_Female = [];
Corr_Age_4_Female = [];
Corr_Age_5_Female = [];
Corr_Age_6_Female = [];
Corr_Age_7_Female = [];
Corr_Age_8_Female = [];
Corr_Age_9_Female = [];
Corr_Age_10_Female = [];
Corr_Age_11_Female = [];
Corr_Age_12_Female = [];
Corr_Age_13_Female = [];
Corr_Age_14_Female = [];
Corr_Age_15_Female = [];
Corr_Age_16_Female = [];
Corr_Age_17_Female = [];
Corr_Age_18_Female = [];
Corr_Age_19_Female = [];
Corr_Age_20_Female = [];
Corr_Age_21_Female = [];
Corr_Age_22_Female = [];
Corr_Age_23_Female = [];
Corr_Age_24_Female = [];
Corr_Age_25_Female = [];
Corr_Age_26_Female = [];
Corr_Age_27_Female = [];
Corr_Age_28_Female = [];
Corr_Age_29_Female = [];
Corr_Age_30_Female = [];
Corr_Age_31_Female = [];
Corr_Age_32_Female = [];
Corr_Age_33_Female = [];
Corr_Age_34_Female = [];
Corr_Age_35_Female = [];
Corr_Age_36_Female = [];
Corr_Age_37_Female = [];
Corr_Age_38_Female = [];
Corr_Age_39_Female = [];
Corr_Age_40_Female = [];
Corr_Age_41_Female = [];
Corr_Age_42_Female = [];
Corr_Age_43_Female = [];
Corr_Age_44_Female = [];
Corr_Age_45_Female = [];
Corr_Age_46_Female = [];
Corr_Age_47_Female = [];
Corr_Age_48_Female = [];
Corr_Age_49_Female = [];
Corr_Age_50_Female = [];
Corr_Age_51_Female = [];
Corr_Age_52_Female = [];
Corr_Age_53_Female = [];
Corr_Age_54_Female = [];
Corr_Age_55_Female = [];
Corr_Age_56_Female = [];
Corr_Age_57_Female = [];
Corr_Age_58_Female = [];
Corr_Age_59_Female = [];
Corr_Age_60_Female = [];
Corr_Age_61_Female = [];
Corr_Age_62_Female = [];
Corr_Age_63_Female = [];
Corr_Age_64_Female = [];
Corr_Age_65_Female = [];
Corr_Age_66_Female = [];
Corr_Age_67_Female = [];
Corr_Age_68_Female = [];
Corr_Age_69_Female = [];
Corr_Age_70_Female = [];
Corr_Age_71_Female = [];
Corr_Age_72_Female = [];
Corr_Age_73_Female = [];
Corr_Age_74_Female = [];
Corr_Age_75_Female = [];
Corr_Age_76_Female = [];
Corr_Age_77_Female = [];
Corr_Age_78_Female = [];
Corr_Age_79_Female = [];
Corr_Age_80_Female = [];
Corr_Age_81_Female = [];
Corr_Age_82_Female = [];
Corr_Age_83_Female = [];
Corr_Age_84_Female = [];
Corr_Age_85_Female = [];

Corr_Age_2_Male = [];
Corr_Age_3_Male = [];
Corr_Age_4_Male = [];
Corr_Age_5_Male = [];
Corr_Age_6_Male = [];
Corr_Age_7_Male = [];
Corr_Age_8_Male = [];
Corr_Age_9_Male = [];
Corr_Age_10_Male = [];
Corr_Age_11_Male = [];
Corr_Age_12_Male = [];
Corr_Age_13_Male = [];
Corr_Age_14_Male = [];
Corr_Age_15_Male = [];
Corr_Age_16_Male = [];
Corr_Age_17_Male = [];
Corr_Age_18_Male = [];
Corr_Age_19_Male = [];
Corr_Age_20_Male = [];
Corr_Age_21_Male = [];
Corr_Age_22_Male = [];
Corr_Age_23_Male = [];
Corr_Age_24_Male = [];
Corr_Age_25_Male = [];
Corr_Age_26_Male = [];
Corr_Age_27_Male = [];
Corr_Age_28_Male = [];
Corr_Age_29_Male = [];
Corr_Age_30_Male = [];
Corr_Age_31_Male = [];
Corr_Age_32_Male = [];
Corr_Age_33_Male = [];
Corr_Age_34_Male = [];
Corr_Age_35_Male = [];
Corr_Age_36_Male = [];
Corr_Age_37_Male = [];
Corr_Age_38_Male = [];
Corr_Age_39_Male = [];
Corr_Age_40_Male = [];
Corr_Age_41_Male = [];
Corr_Age_42_Male = [];
Corr_Age_43_Male = [];
Corr_Age_44_Male = [];
Corr_Age_45_Male = [];
Corr_Age_46_Male = [];
Corr_Age_47_Male = [];
Corr_Age_48_Male = [];
Corr_Age_49_Male = [];
Corr_Age_50_Male = [];
Corr_Age_51_Male = [];
Corr_Age_52_Male = [];
Corr_Age_53_Male = [];
Corr_Age_54_Male = [];
Corr_Age_55_Male = [];
Corr_Age_56_Male = [];
Corr_Age_57_Male = [];
Corr_Age_58_Male = [];
Corr_Age_59_Male = [];
Corr_Age_60_Male = [];
Corr_Age_61_Male = [];
Corr_Age_62_Male = [];
Corr_Age_63_Male = [];
Corr_Age_64_Male = [];
Corr_Age_65_Male = [];
Corr_Age_66_Male = [];
Corr_Age_67_Male = [];
Corr_Age_68_Male = [];
Corr_Age_69_Male = [];
Corr_Age_70_Male = [];
Corr_Age_71_Male = [];
Corr_Age_72_Male = [];
Corr_Age_73_Male = [];
Corr_Age_74_Male = [];
Corr_Age_75_Male = [];
Corr_Age_76_Male = [];
Corr_Age_77_Male = [];
Corr_Age_78_Male = [];
Corr_Age_79_Male = [];
Corr_Age_80_Male = [];
Corr_Age_81_Male = [];
Corr_Age_82_Male = [];
Corr_Age_83_Male = [];
Corr_Age_84_Male = [];
Corr_Age_85_Male = [];

[M N] = size(Corr_All_Female);
for i = 1:N
    if Age_All_Female(i) == 2
        Corr_Age_2_Female = [Corr_Age_2_Female Corr_All_Female(i)];
    end
    if Age_All_Female(i) == 3
        Corr_Age_3_Female = [Corr_Age_3_Female Corr_All_Female(i)];
    end
    if Age_All_Female(i) == 4
        Corr_Age_4_Female = [Corr_Age_4_Female Corr_All_Female(i)];
    end
    if Age_All_Female(i) == 5
        Corr_Age_5_Female = [Corr_Age_5_Female Corr_All_Female(i)];
    end
    if Age_All_Female(i) == 6
        Corr_Age_6_Female = [Corr_Age_6_Female Corr_All_Female(i)];
    end
    if Age_All_Female(i) == 7
        Corr_Age_7_Female = [Corr_Age_7_Female Corr_All_Female(i)];
    end
    if Age_All_Female(i) == 8
        Corr_Age_8_Female = [Corr_Age_8_Female Corr_All_Female(i)];
    end
    if Age_All_Female(i) == 9
        Corr_Age_9_Female = [Corr_Age_9_Female Corr_All_Female(i)];
    end
    if Age_All_Female(i) == 10
        Corr_Age_10_Female = [Corr_Age_10_Female Corr_All_Female(i)];
    end
    if Age_All_Female(i) == 11
        Corr_Age_11_Female = [Corr_Age_11_Female Corr_All_Female(i)];
    end
    if Age_All_Female(i) == 12
        Corr_Age_12_Female = [Corr_Age_12_Female Corr_All_Female(i)];
    end
    if Age_All_Female(i) == 13
        Corr_Age_13_Female = [Corr_Age_13_Female Corr_All_Female(i)];
    end
    if Age_All_Female(i) == 14
        Corr_Age_14_Female = [Corr_Age_14_Female Corr_All_Female(i)];
    end
    if Age_All_Female(i) == 15
        Corr_Age_15_Female = [Corr_Age_15_Female Corr_All_Female(i)];
    end
    if Age_All_Female(i) == 16
        Corr_Age_16_Female = [Corr_Age_16_Female Corr_All_Female(i)];
    end
    if Age_All_Female(i) == 17
        Corr_Age_17_Female = [Corr_Age_17_Female Corr_All_Female(i)];
    end
    if Age_All_Female(i) == 18
        Corr_Age_18_Female = [Corr_Age_18_Female Corr_All_Female(i)];
    end
    if Age_All_Female(i) == 19
        Corr_Age_19_Female = [Corr_Age_19_Female Corr_All_Female(i)];
    end
    if Age_All_Female(i) == 20
        Corr_Age_20_Female = [Corr_Age_20_Female Corr_All_Female(i)];
    end
    if Age_All_Female(i) == 21
        Corr_Age_21_Female = [Corr_Age_21_Female Corr_All_Female(i)];
    end
    if Age_All_Female(i) == 22
        Corr_Age_22_Female = [Corr_Age_22_Female Corr_All_Female(i)];
    end
    if Age_All_Female(i) == 23
        Corr_Age_23_Female = [Corr_Age_23_Female Corr_All_Female(i)];
    end
    if Age_All_Female(i) == 24
        Corr_Age_24_Female = [Corr_Age_24_Female Corr_All_Female(i)];
    end
    if Age_All_Female(i) == 25
        Corr_Age_25_Female = [Corr_Age_25_Female Corr_All_Female(i)];
    end
    if Age_All_Female(i) == 26
        Corr_Age_26_Female = [Corr_Age_26_Female Corr_All_Female(i)];
    end
    if Age_All_Female(i) == 27
        Corr_Age_27_Female = [Corr_Age_27_Female Corr_All_Female(i)];
    end
    if Age_All_Female(i) == 28
        Corr_Age_28_Female = [Corr_Age_28_Female Corr_All_Female(i)];
    end
    if Age_All_Female(i) == 29
        Corr_Age_29_Female = [Corr_Age_29_Female Corr_All_Female(i)];
    end
    if Age_All_Female(i) == 30
        Corr_Age_30_Female = [Corr_Age_30_Female Corr_All_Female(i)];
    end
    if Age_All_Female(i) == 31
        Corr_Age_31_Female = [Corr_Age_31_Female Corr_All_Female(i)];
    end
    if Age_All_Female(i) == 32
        Corr_Age_32_Female = [Corr_Age_32_Female Corr_All_Female(i)];
    end
    if Age_All_Female(i) == 33
        Corr_Age_33_Female = [Corr_Age_33_Female Corr_All_Female(i)];
    end
    if Age_All_Female(i) == 34
        Corr_Age_34_Female = [Corr_Age_34_Female Corr_All_Female(i)];
    end
    if Age_All_Female(i) == 35
        Corr_Age_35_Female = [Corr_Age_35_Female Corr_All_Female(i)];
    end
    if Age_All_Female(i) == 36
        Corr_Age_36_Female = [Corr_Age_36_Female Corr_All_Female(i)];
    end
    if Age_All_Female(i) == 37
        Corr_Age_37_Female = [Corr_Age_37_Female Corr_All_Female(i)];
    end
    if Age_All_Female(i) == 38
        Corr_Age_38_Female = [Corr_Age_38_Female Corr_All_Female(i)];
    end
    if Age_All_Female(i) == 39
        Corr_Age_39_Female = [Corr_Age_39_Female Corr_All_Female(i)];
    end
    if Age_All_Female(i) == 40
        Corr_Age_40_Female = [Corr_Age_40_Female Corr_All_Female(i)];
    end
    if Age_All_Female(i) == 41
        Corr_Age_41_Female = [Corr_Age_41_Female Corr_All_Female(i)];
    end
    if Age_All_Female(i) == 42
        Corr_Age_42_Female = [Corr_Age_42_Female Corr_All_Female(i)];
    end
    if Age_All_Female(i) == 43
        Corr_Age_43_Female = [Corr_Age_43_Female Corr_All_Female(i)];
    end
    if Age_All_Female(i) == 44
        Corr_Age_44_Female = [Corr_Age_44_Female Corr_All_Female(i)];
    end
    if Age_All_Female(i) == 45
        Corr_Age_45_Female = [Corr_Age_45_Female Corr_All_Female(i)];
    end
    if Age_All_Female(i) == 46
        Corr_Age_46_Female = [Corr_Age_46_Female Corr_All_Female(i)];
    end
    if Age_All_Female(i) == 47
        Corr_Age_47_Female = [Corr_Age_47_Female Corr_All_Female(i)];
    end
    if Age_All_Female(i) == 48
        Corr_Age_48_Female = [Corr_Age_48_Female Corr_All_Female(i)];
    end
    if Age_All_Female(i) == 49
        Corr_Age_49_Female = [Corr_Age_49_Female Corr_All_Female(i)];
    end
    if Age_All_Female(i) == 50
        Corr_Age_50_Female = [Corr_Age_50_Female Corr_All_Female(i)];
    end
    if Age_All_Female(i) == 51
        Corr_Age_51_Female = [Corr_Age_51_Female Corr_All_Female(i)];
    end
    if Age_All_Female(i) == 52
        Corr_Age_52_Female = [Corr_Age_52_Female Corr_All_Female(i)];
    end
    if Age_All_Female(i) == 53
        Corr_Age_53_Female = [Corr_Age_53_Female Corr_All_Female(i)];
    end
    if Age_All_Female(i) == 54
        Corr_Age_54_Female = [Corr_Age_54_Female Corr_All_Female(i)];
    end
    if Age_All_Female(i) == 55
        Corr_Age_55_Female = [Corr_Age_55_Female Corr_All_Female(i)];
    end
    if Age_All_Female(i) == 56
        Corr_Age_56_Female = [Corr_Age_56_Female Corr_All_Female(i)];
    end
    if Age_All_Female(i) == 57
        Corr_Age_57_Female = [Corr_Age_57_Female Corr_All_Female(i)];
    end
    if Age_All_Female(i) == 58
        Corr_Age_58_Female = [Corr_Age_58_Female Corr_All_Female(i)];
    end
    if Age_All_Female(i) == 59
        Corr_Age_59_Female = [Corr_Age_59_Female Corr_All_Female(i)];
    end
    if Age_All_Female(i) == 60
        Corr_Age_60_Female = [Corr_Age_60_Female Corr_All_Female(i)];
    end
    if Age_All_Female(i) == 61
        Corr_Age_61_Female = [Corr_Age_61_Female Corr_All_Female(i)];
    end
    if Age_All_Female(i) == 62
        Corr_Age_62_Female = [Corr_Age_62_Female Corr_All_Female(i)];
    end
    if Age_All_Female(i) == 63
        Corr_Age_63_Female = [Corr_Age_63_Female Corr_All_Female(i)];
    end
    if Age_All_Female(i) == 64
        Corr_Age_64_Female = [Corr_Age_64_Female Corr_All_Female(i)];
    end
    if Age_All_Female(i) == 65
        Corr_Age_65_Female = [Corr_Age_65_Female Corr_All_Female(i)];
    end
    if Age_All_Female(i) == 66
        Corr_Age_66_Female = [Corr_Age_66_Female Corr_All_Female(i)];
    end
    if Age_All_Female(i) == 67
        Corr_Age_67_Female = [Corr_Age_67_Female Corr_All_Female(i)];
    end
    if Age_All_Female(i) == 68
        Corr_Age_68_Female = [Corr_Age_68_Female Corr_All_Female(i)];
    end
    if Age_All_Female(i) == 69
        Corr_Age_69_Female = [Corr_Age_69_Female Corr_All_Female(i)];
    end
    if Age_All_Female(i) == 70
        Corr_Age_70_Female = [Corr_Age_70_Female Corr_All_Female(i)];
    end
    if Age_All_Female(i) == 71
        Corr_Age_71_Female = [Corr_Age_71_Female Corr_All_Female(i)];
    end
    if Age_All_Female(i) == 72
        Corr_Age_72_Female = [Corr_Age_72_Female Corr_All_Female(i)];
    end
    if Age_All_Female(i) == 73
        Corr_Age_73_Female = [Corr_Age_73_Female Corr_All_Female(i)];
    end
    if Age_All_Female(i) == 74
        Corr_Age_74_Female = [Corr_Age_74_Female Corr_All_Female(i)];
    end
    if Age_All_Female(i) == 75
        Corr_Age_75_Female = [Corr_Age_75_Female Corr_All_Female(i)];
    end
    if Age_All_Female(i) == 76
        Corr_Age_76_Female = [Corr_Age_76_Female Corr_All_Female(i)];
    end
    if Age_All_Female(i) == 77
        Corr_Age_77_Female = [Corr_Age_77_Female Corr_All_Female(i)];
    end
    if Age_All_Female(i) == 78
        Corr_Age_78_Female = [Corr_Age_78_Female Corr_All_Female(i)];
    end
    if Age_All_Female(i) == 79
        Corr_Age_79_Female = [Corr_Age_79_Female Corr_All_Female(i)];
    end
    if Age_All_Female(i) == 80
        Corr_Age_80_Female = [Corr_Age_80_Female Corr_All_Female(i)];
    end
    if Age_All_Female(i) == 81
        Corr_Age_81_Female = [Corr_Age_81_Female Corr_All_Female(i)];
    end
    if Age_All_Female(i) == 82
        Corr_Age_82_Female = [Corr_Age_82_Female Corr_All_Female(i)];
    end
    if Age_All_Female(i) == 83
        Corr_Age_83_Female = [Corr_Age_83_Female Corr_All_Female(i)];
    end
    if Age_All_Female(i) == 84
        Corr_Age_84_Female = [Corr_Age_84_Female Corr_All_Female(i)];
    end
    if Age_All_Female(i) == 85
        Corr_Age_85_Female = [Corr_Age_85_Female Corr_All_Female(i)];
    end
end

[M N] = size(Corr_All_Male);
for i = 1:N
    if Age_All_Male(i) == 2
        Corr_Age_2_Male = [Corr_Age_2_Male Corr_All_Male(i)];
    end
    if Age_All_Male(i) == 3
        Corr_Age_3_Male = [Corr_Age_3_Male Corr_All_Male(i)];
    end
    if Age_All_Male(i) == 4
        Corr_Age_4_Male = [Corr_Age_4_Male Corr_All_Male(i)];
    end
    if Age_All_Male(i) == 5
        Corr_Age_5_Male = [Corr_Age_5_Male Corr_All_Male(i)];
    end
    if Age_All_Male(i) == 6
        Corr_Age_6_Male = [Corr_Age_6_Male Corr_All_Male(i)];
    end
    if Age_All_Male(i) == 7
        Corr_Age_7_Male = [Corr_Age_7_Male Corr_All_Male(i)];
    end
    if Age_All_Male(i) == 8
        Corr_Age_8_Male = [Corr_Age_8_Male Corr_All_Male(i)];
    end
    if Age_All_Male(i) == 9
        Corr_Age_9_Male = [Corr_Age_9_Male Corr_All_Male(i)];
    end
    if Age_All_Male(i) == 10
        Corr_Age_10_Male = [Corr_Age_10_Male Corr_All_Male(i)];
    end
    if Age_All_Male(i) == 11
        Corr_Age_11_Male = [Corr_Age_11_Male Corr_All_Male(i)];
    end
    if Age_All_Male(i) == 12
        Corr_Age_12_Male = [Corr_Age_12_Male Corr_All_Male(i)];
    end
    if Age_All_Male(i) == 13
        Corr_Age_13_Male = [Corr_Age_13_Male Corr_All_Male(i)];
    end
    if Age_All_Male(i) == 14
        Corr_Age_14_Male = [Corr_Age_14_Male Corr_All_Male(i)];
    end
    if Age_All_Male(i) == 15
        Corr_Age_15_Male = [Corr_Age_15_Male Corr_All_Male(i)];
    end
    if Age_All_Male(i) == 16
        Corr_Age_16_Male = [Corr_Age_16_Male Corr_All_Male(i)];
    end
    if Age_All_Male(i) == 17
        Corr_Age_17_Male = [Corr_Age_17_Male Corr_All_Male(i)];
    end
    if Age_All_Male(i) == 18
        Corr_Age_18_Male = [Corr_Age_18_Male Corr_All_Male(i)];
    end
    if Age_All_Male(i) == 19
        Corr_Age_19_Male = [Corr_Age_19_Male Corr_All_Male(i)];
    end
    if Age_All_Male(i) == 20
        Corr_Age_20_Male = [Corr_Age_20_Male Corr_All_Male(i)];
    end
    if Age_All_Male(i) == 21
        Corr_Age_21_Male = [Corr_Age_21_Male Corr_All_Male(i)];
    end
    if Age_All_Male(i) == 22
        Corr_Age_22_Male = [Corr_Age_22_Male Corr_All_Male(i)];
    end
    if Age_All_Male(i) == 23
        Corr_Age_23_Male = [Corr_Age_23_Male Corr_All_Male(i)];
    end
    if Age_All_Male(i) == 24
        Corr_Age_24_Male = [Corr_Age_24_Male Corr_All_Male(i)];
    end
    if Age_All_Male(i) == 25
        Corr_Age_25_Male = [Corr_Age_25_Male Corr_All_Male(i)];
    end
    if Age_All_Male(i) == 26
        Corr_Age_26_Male = [Corr_Age_26_Male Corr_All_Male(i)];
    end
    if Age_All_Male(i) == 27
        Corr_Age_27_Male = [Corr_Age_27_Male Corr_All_Male(i)];
    end
    if Age_All_Male(i) == 28
        Corr_Age_28_Male = [Corr_Age_28_Male Corr_All_Male(i)];
    end
    if Age_All_Male(i) == 29
        Corr_Age_29_Male = [Corr_Age_29_Male Corr_All_Male(i)];
    end
    if Age_All_Male(i) == 30
        Corr_Age_30_Male = [Corr_Age_30_Male Corr_All_Male(i)];
    end
    if Age_All_Male(i) == 31
        Corr_Age_31_Male = [Corr_Age_31_Male Corr_All_Male(i)];
    end
    if Age_All_Male(i) == 32
        Corr_Age_32_Male = [Corr_Age_32_Male Corr_All_Male(i)];
    end
    if Age_All_Male(i) == 33
        Corr_Age_33_Male = [Corr_Age_33_Male Corr_All_Male(i)];
    end
    if Age_All_Male(i) == 34
        Corr_Age_34_Male = [Corr_Age_34_Male Corr_All_Male(i)];
    end
    if Age_All_Male(i) == 35
        Corr_Age_35_Male = [Corr_Age_35_Male Corr_All_Male(i)];
    end
    if Age_All_Male(i) == 36
        Corr_Age_36_Male = [Corr_Age_36_Male Corr_All_Male(i)];
    end
    if Age_All_Male(i) == 37
        Corr_Age_37_Male = [Corr_Age_37_Male Corr_All_Male(i)];
    end
    if Age_All_Male(i) == 38
        Corr_Age_38_Male = [Corr_Age_38_Male Corr_All_Male(i)];
    end
    if Age_All_Male(i) == 39
        Corr_Age_39_Male = [Corr_Age_39_Male Corr_All_Male(i)];
    end
    if Age_All_Male(i) == 40
        Corr_Age_40_Male = [Corr_Age_40_Male Corr_All_Male(i)];
    end
    if Age_All_Male(i) == 41
        Corr_Age_41_Male = [Corr_Age_41_Male Corr_All_Male(i)];
    end
    if Age_All_Male(i) == 42
        Corr_Age_42_Male = [Corr_Age_42_Male Corr_All_Male(i)];
    end
    if Age_All_Male(i) == 43
        Corr_Age_43_Male = [Corr_Age_43_Male Corr_All_Male(i)];
    end
    if Age_All_Male(i) == 44
        Corr_Age_44_Male = [Corr_Age_44_Male Corr_All_Male(i)];
    end
    if Age_All_Male(i) == 45
        Corr_Age_45_Male = [Corr_Age_45_Male Corr_All_Male(i)];
    end
    if Age_All_Male(i) == 46
        Corr_Age_46_Male = [Corr_Age_46_Male Corr_All_Male(i)];
    end
    if Age_All_Male(i) == 47
        Corr_Age_47_Male = [Corr_Age_47_Male Corr_All_Male(i)];
    end
    if Age_All_Male(i) == 48
        Corr_Age_48_Male = [Corr_Age_48_Male Corr_All_Male(i)];
    end
    if Age_All_Male(i) == 49
        Corr_Age_49_Male = [Corr_Age_49_Male Corr_All_Male(i)];
    end
    if Age_All_Male(i) == 50
        Corr_Age_50_Male = [Corr_Age_50_Male Corr_All_Male(i)];
    end
    if Age_All_Male(i) == 51
        Corr_Age_51_Male = [Corr_Age_51_Male Corr_All_Male(i)];
    end
    if Age_All_Male(i) == 52
        Corr_Age_52_Male = [Corr_Age_52_Male Corr_All_Male(i)];
    end
    if Age_All_Male(i) == 53
        Corr_Age_53_Male = [Corr_Age_53_Male Corr_All_Male(i)];
    end
    if Age_All_Male(i) == 54
        Corr_Age_54_Male = [Corr_Age_54_Male Corr_All_Male(i)];
    end
    if Age_All_Male(i) == 55
        Corr_Age_55_Male = [Corr_Age_55_Male Corr_All_Male(i)];
    end
    if Age_All_Male(i) == 56
        Corr_Age_56_Male = [Corr_Age_56_Male Corr_All_Male(i)];
    end
    if Age_All_Male(i) == 57
        Corr_Age_57_Male = [Corr_Age_57_Male Corr_All_Male(i)];
    end
    if Age_All_Male(i) == 58
        Corr_Age_58_Male = [Corr_Age_58_Male Corr_All_Male(i)];
    end
    if Age_All_Male(i) == 59
        Corr_Age_59_Male = [Corr_Age_59_Male Corr_All_Male(i)];
    end
    if Age_All_Male(i) == 60
        Corr_Age_60_Male = [Corr_Age_60_Male Corr_All_Male(i)];
    end
    if Age_All_Male(i) == 61
        Corr_Age_61_Male = [Corr_Age_61_Male Corr_All_Male(i)];
    end
    if Age_All_Male(i) == 62
        Corr_Age_62_Male = [Corr_Age_62_Male Corr_All_Male(i)];
    end
    if Age_All_Male(i) == 63
        Corr_Age_63_Male = [Corr_Age_63_Male Corr_All_Male(i)];
    end
    if Age_All_Male(i) == 64
        Corr_Age_64_Male = [Corr_Age_64_Male Corr_All_Male(i)];
    end
    if Age_All_Male(i) == 65
        Corr_Age_65_Male = [Corr_Age_65_Male Corr_All_Male(i)];
    end
    if Age_All_Male(i) == 66
        Corr_Age_66_Male = [Corr_Age_66_Male Corr_All_Male(i)];
    end
    if Age_All_Male(i) == 67
        Corr_Age_67_Male = [Corr_Age_67_Male Corr_All_Male(i)];
    end
    if Age_All_Male(i) == 68
        Corr_Age_68_Male = [Corr_Age_68_Male Corr_All_Male(i)];
    end
    if Age_All_Male(i) == 69
        Corr_Age_69_Male = [Corr_Age_69_Male Corr_All_Male(i)];
    end
    if Age_All_Male(i) == 70
        Corr_Age_70_Male = [Corr_Age_70_Male Corr_All_Male(i)];
    end
    if Age_All_Male(i) == 71
        Corr_Age_71_Male = [Corr_Age_71_Male Corr_All_Male(i)];
    end
    if Age_All_Male(i) == 72
        Corr_Age_72_Male = [Corr_Age_72_Male Corr_All_Male(i)];
    end
    if Age_All_Male(i) == 73
        Corr_Age_73_Male = [Corr_Age_73_Male Corr_All_Male(i)];
    end
    if Age_All_Male(i) == 74
        Corr_Age_74_Male = [Corr_Age_74_Male Corr_All_Male(i)];
    end
    if Age_All_Male(i) == 75
        Corr_Age_75_Male = [Corr_Age_75_Male Corr_All_Male(i)];
    end
    if Age_All_Male(i) == 76
        Corr_Age_76_Male = [Corr_Age_76_Male Corr_All_Male(i)];
    end
    if Age_All_Male(i) == 77
        Corr_Age_77_Male = [Corr_Age_77_Male Corr_All_Male(i)];
    end
    if Age_All_Male(i) == 78
        Corr_Age_78_Male = [Corr_Age_78_Male Corr_All_Male(i)];
    end
    if Age_All_Male(i) == 79
        Corr_Age_79_Male = [Corr_Age_79_Male Corr_All_Male(i)];
    end
    if Age_All_Male(i) == 80
        Corr_Age_80_Male = [Corr_Age_80_Male Corr_All_Male(i)];
    end
    if Age_All_Male(i) == 81
        Corr_Age_81_Male = [Corr_Age_81_Male Corr_All_Male(i)];
    end
    if Age_All_Male(i) == 82
        Corr_Age_82_Male = [Corr_Age_82_Male Corr_All_Male(i)];
    end
    if Age_All_Male(i) == 83
        Corr_Age_83_Male = [Corr_Age_83_Male Corr_All_Male(i)];
    end
    if Age_All_Male(i) == 84
        Corr_Age_84_Male = [Corr_Age_84_Male Corr_All_Male(i)];
    end
    if Age_All_Male(i) == 85
        Corr_Age_85_Male = [Corr_Age_85_Male Corr_All_Male(i)];
    end
end

%% 5th, 50th, 95th, mean
% For Female
My_P = prctile(Corr_Age_2_Female,My_Percentile);
Corr_Age_2_Female_5th = My_P(1);
Corr_Age_2_Female_50th = My_P(2);
Corr_Age_2_Female_95th = My_P(3);
Corr_Age_2_Female_mean = mean(Corr_Age_2_Female);
My_P = prctile(Corr_Age_3_Female,My_Percentile);
Corr_Age_3_Female_5th = My_P(1);
Corr_Age_3_Female_50th = My_P(2);
Corr_Age_3_Female_95th = My_P(3);
Corr_Age_3_Female_mean = mean(Corr_Age_3_Female);
My_P = prctile(Corr_Age_4_Female,My_Percentile);
Corr_Age_4_Female_5th = My_P(1);
Corr_Age_4_Female_50th = My_P(2);
Corr_Age_4_Female_95th = My_P(3);
Corr_Age_4_Female_mean = mean(Corr_Age_4_Female);
My_P = prctile(Corr_Age_5_Female,My_Percentile);
Corr_Age_5_Female_5th = My_P(1);
Corr_Age_5_Female_50th = My_P(2);
Corr_Age_5_Female_95th = My_P(3);
Corr_Age_5_Female_mean = mean(Corr_Age_5_Female);
My_P = prctile(Corr_Age_6_Female,My_Percentile);
Corr_Age_6_Female_5th = My_P(1);
Corr_Age_6_Female_50th = My_P(2);
Corr_Age_6_Female_95th = My_P(3);
Corr_Age_6_Female_mean = mean(Corr_Age_6_Female);
My_P = prctile(Corr_Age_7_Female,My_Percentile);
Corr_Age_7_Female_5th = My_P(1);
Corr_Age_7_Female_50th = My_P(2);
Corr_Age_7_Female_95th = My_P(3);
Corr_Age_7_Female_mean = mean(Corr_Age_7_Female);
My_P = prctile(Corr_Age_8_Female,My_Percentile);
Corr_Age_8_Female_5th = My_P(1);
Corr_Age_8_Female_50th = My_P(2);
Corr_Age_8_Female_95th = My_P(3);
Corr_Age_8_Female_mean = mean(Corr_Age_8_Female);
My_P = prctile(Corr_Age_9_Female,My_Percentile);
Corr_Age_9_Female_5th = My_P(1);
Corr_Age_9_Female_50th = My_P(2);
Corr_Age_9_Female_95th = My_P(3);
Corr_Age_9_Female_mean = mean(Corr_Age_9_Female);
My_P = prctile(Corr_Age_10_Female,My_Percentile);
Corr_Age_10_Female_5th = My_P(1);
Corr_Age_10_Female_50th = My_P(2);
Corr_Age_10_Female_95th = My_P(3);
Corr_Age_10_Female_mean = mean(Corr_Age_10_Female);
My_P = prctile(Corr_Age_11_Female,My_Percentile);
Corr_Age_11_Female_5th = My_P(1);
Corr_Age_11_Female_50th = My_P(2);
Corr_Age_11_Female_95th = My_P(3);
Corr_Age_11_Female_mean = mean(Corr_Age_11_Female);
My_P = prctile(Corr_Age_12_Female,My_Percentile);
Corr_Age_12_Female_5th = My_P(1);
Corr_Age_12_Female_50th = My_P(2);
Corr_Age_12_Female_95th = My_P(3);
Corr_Age_12_Female_mean = mean(Corr_Age_12_Female);
My_P = prctile(Corr_Age_13_Female,My_Percentile);
Corr_Age_13_Female_5th = My_P(1);
Corr_Age_13_Female_50th = My_P(2);
Corr_Age_13_Female_95th = My_P(3);
Corr_Age_13_Female_mean = mean(Corr_Age_13_Female);
My_P = prctile(Corr_Age_14_Female,My_Percentile);
Corr_Age_14_Female_5th = My_P(1);
Corr_Age_14_Female_50th = My_P(2);
Corr_Age_14_Female_95th = My_P(3);
Corr_Age_14_Female_mean = mean(Corr_Age_14_Female);
My_P = prctile(Corr_Age_15_Female,My_Percentile);
Corr_Age_15_Female_5th = My_P(1);
Corr_Age_15_Female_50th = My_P(2);
Corr_Age_15_Female_95th = My_P(3);
Corr_Age_15_Female_mean = mean(Corr_Age_15_Female);
My_P = prctile(Corr_Age_16_Female,My_Percentile);
Corr_Age_16_Female_5th = My_P(1);
Corr_Age_16_Female_50th = My_P(2);
Corr_Age_16_Female_95th = My_P(3);
Corr_Age_16_Female_mean = mean(Corr_Age_16_Female);
My_P = prctile(Corr_Age_17_Female,My_Percentile);
Corr_Age_17_Female_5th = My_P(1);
Corr_Age_17_Female_50th = My_P(2);
Corr_Age_17_Female_95th = My_P(3);
Corr_Age_17_Female_mean = mean(Corr_Age_17_Female);
My_P = prctile(Corr_Age_18_Female,My_Percentile);
Corr_Age_18_Female_5th = My_P(1);
Corr_Age_18_Female_50th = My_P(2);
Corr_Age_18_Female_95th = My_P(3);
Corr_Age_18_Female_mean = mean(Corr_Age_18_Female);
My_P = prctile(Corr_Age_19_Female,My_Percentile);
Corr_Age_19_Female_5th = My_P(1);
Corr_Age_19_Female_50th = My_P(2);
Corr_Age_19_Female_95th = My_P(3);
Corr_Age_19_Female_mean = mean(Corr_Age_19_Female);
My_P = prctile(Corr_Age_20_Female,My_Percentile);
Corr_Age_20_Female_5th = My_P(1);
Corr_Age_20_Female_50th = My_P(2);
Corr_Age_20_Female_95th = My_P(3);
Corr_Age_20_Female_mean = mean(Corr_Age_20_Female);
My_P = prctile(Corr_Age_21_Female,My_Percentile);
Corr_Age_21_Female_5th = My_P(1);
Corr_Age_21_Female_50th = My_P(2);
Corr_Age_21_Female_95th = My_P(3);
Corr_Age_21_Female_mean = mean(Corr_Age_21_Female);
My_P = prctile(Corr_Age_22_Female,My_Percentile);
Corr_Age_22_Female_5th = My_P(1);
Corr_Age_22_Female_50th = My_P(2);
Corr_Age_22_Female_95th = My_P(3);
Corr_Age_22_Female_mean = mean(Corr_Age_22_Female);
My_P = prctile(Corr_Age_23_Female,My_Percentile);
Corr_Age_23_Female_5th = My_P(1);
Corr_Age_23_Female_50th = My_P(2);
Corr_Age_23_Female_95th = My_P(3);
Corr_Age_23_Female_mean = mean(Corr_Age_23_Female);
My_P = prctile(Corr_Age_24_Female,My_Percentile);
Corr_Age_24_Female_5th = My_P(1);
Corr_Age_24_Female_50th = My_P(2);
Corr_Age_24_Female_95th = My_P(3);
Corr_Age_24_Female_mean = mean(Corr_Age_24_Female);
My_P = prctile(Corr_Age_25_Female,My_Percentile);
Corr_Age_25_Female_5th = My_P(1);
Corr_Age_25_Female_50th = My_P(2);
Corr_Age_25_Female_95th = My_P(3);
Corr_Age_25_Female_mean = mean(Corr_Age_25_Female);
My_P = prctile(Corr_Age_26_Female,My_Percentile);
Corr_Age_26_Female_5th = My_P(1);
Corr_Age_26_Female_50th = My_P(2);
Corr_Age_26_Female_95th = My_P(3);
Corr_Age_26_Female_mean = mean(Corr_Age_26_Female);
My_P = prctile(Corr_Age_27_Female,My_Percentile);
Corr_Age_27_Female_5th = My_P(1);
Corr_Age_27_Female_50th = My_P(2);
Corr_Age_27_Female_95th = My_P(3);
Corr_Age_27_Female_mean = mean(Corr_Age_27_Female);
My_P = prctile(Corr_Age_28_Female,My_Percentile);
Corr_Age_28_Female_5th = My_P(1);
Corr_Age_28_Female_50th = My_P(2);
Corr_Age_28_Female_95th = My_P(3);
Corr_Age_28_Female_mean = mean(Corr_Age_28_Female);
My_P = prctile(Corr_Age_29_Female,My_Percentile);
Corr_Age_29_Female_5th = My_P(1);
Corr_Age_29_Female_50th = My_P(2);
Corr_Age_29_Female_95th = My_P(3);
Corr_Age_29_Female_mean = mean(Corr_Age_29_Female);
My_P = prctile(Corr_Age_30_Female,My_Percentile);
Corr_Age_30_Female_5th = My_P(1);
Corr_Age_30_Female_50th = My_P(2);
Corr_Age_30_Female_95th = My_P(3);
Corr_Age_30_Female_mean = mean(Corr_Age_30_Female);
My_P = prctile(Corr_Age_31_Female,My_Percentile);
Corr_Age_31_Female_5th = My_P(1);
Corr_Age_31_Female_50th = My_P(2);
Corr_Age_31_Female_95th = My_P(3);
Corr_Age_31_Female_mean = mean(Corr_Age_31_Female);
My_P = prctile(Corr_Age_32_Female,My_Percentile);
Corr_Age_32_Female_5th = My_P(1);
Corr_Age_32_Female_50th = My_P(2);
Corr_Age_32_Female_95th = My_P(3);
Corr_Age_32_Female_mean = mean(Corr_Age_32_Female);
My_P = prctile(Corr_Age_33_Female,My_Percentile);
Corr_Age_33_Female_5th = My_P(1);
Corr_Age_33_Female_50th = My_P(2);
Corr_Age_33_Female_95th = My_P(3);
Corr_Age_33_Female_mean = mean(Corr_Age_33_Female);
My_P = prctile(Corr_Age_34_Female,My_Percentile);
Corr_Age_34_Female_5th = My_P(1);
Corr_Age_34_Female_50th = My_P(2);
Corr_Age_34_Female_95th = My_P(3);
Corr_Age_34_Female_mean = mean(Corr_Age_34_Female);
My_P = prctile(Corr_Age_35_Female,My_Percentile);
Corr_Age_35_Female_5th = My_P(1);
Corr_Age_35_Female_50th = My_P(2);
Corr_Age_35_Female_95th = My_P(3);
Corr_Age_35_Female_mean = mean(Corr_Age_35_Female);
My_P = prctile(Corr_Age_36_Female,My_Percentile);
Corr_Age_36_Female_5th = My_P(1);
Corr_Age_36_Female_50th = My_P(2);
Corr_Age_36_Female_95th = My_P(3);
Corr_Age_36_Female_mean = mean(Corr_Age_36_Female);
My_P = prctile(Corr_Age_37_Female,My_Percentile);
Corr_Age_37_Female_5th = My_P(1);
Corr_Age_37_Female_50th = My_P(2);
Corr_Age_37_Female_95th = My_P(3);
Corr_Age_37_Female_mean = mean(Corr_Age_37_Female);
My_P = prctile(Corr_Age_38_Female,My_Percentile);
Corr_Age_38_Female_5th = My_P(1);
Corr_Age_38_Female_50th = My_P(2);
Corr_Age_38_Female_95th = My_P(3);
Corr_Age_38_Female_mean = mean(Corr_Age_38_Female);
My_P = prctile(Corr_Age_39_Female,My_Percentile);
Corr_Age_39_Female_5th = My_P(1);
Corr_Age_39_Female_50th = My_P(2);
Corr_Age_39_Female_95th = My_P(3);
Corr_Age_39_Female_mean = mean(Corr_Age_39_Female);
My_P = prctile(Corr_Age_40_Female,My_Percentile);
Corr_Age_40_Female_5th = My_P(1);
Corr_Age_40_Female_50th = My_P(2);
Corr_Age_40_Female_95th = My_P(3);
Corr_Age_40_Female_mean = mean(Corr_Age_40_Female);
My_P = prctile(Corr_Age_41_Female,My_Percentile);
Corr_Age_41_Female_5th = My_P(1);
Corr_Age_41_Female_50th = My_P(2);
Corr_Age_41_Female_95th = My_P(3);
Corr_Age_41_Female_mean = mean(Corr_Age_41_Female);
My_P = prctile(Corr_Age_42_Female,My_Percentile);
Corr_Age_42_Female_5th = My_P(1);
Corr_Age_42_Female_50th = My_P(2);
Corr_Age_42_Female_95th = My_P(3);
Corr_Age_42_Female_mean = mean(Corr_Age_42_Female);
My_P = prctile(Corr_Age_43_Female,My_Percentile);
Corr_Age_43_Female_5th = My_P(1);
Corr_Age_43_Female_50th = My_P(2);
Corr_Age_43_Female_95th = My_P(3);
Corr_Age_43_Female_mean = mean(Corr_Age_43_Female);
My_P = prctile(Corr_Age_44_Female,My_Percentile);
Corr_Age_44_Female_5th = My_P(1);
Corr_Age_44_Female_50th = My_P(2);
Corr_Age_44_Female_95th = My_P(3);
Corr_Age_44_Female_mean = mean(Corr_Age_44_Female);
My_P = prctile(Corr_Age_45_Female,My_Percentile);
Corr_Age_45_Female_5th = My_P(1);
Corr_Age_45_Female_50th = My_P(2);
Corr_Age_45_Female_95th = My_P(3);
Corr_Age_45_Female_mean = mean(Corr_Age_45_Female);
My_P = prctile(Corr_Age_46_Female,My_Percentile);
Corr_Age_46_Female_5th = My_P(1);
Corr_Age_46_Female_50th = My_P(2);
Corr_Age_46_Female_95th = My_P(3);
Corr_Age_46_Female_mean = mean(Corr_Age_46_Female);
My_P = prctile(Corr_Age_47_Female,My_Percentile);
Corr_Age_47_Female_5th = My_P(1);
Corr_Age_47_Female_50th = My_P(2);
Corr_Age_47_Female_95th = My_P(3);
Corr_Age_47_Female_mean = mean(Corr_Age_47_Female);
My_P = prctile(Corr_Age_48_Female,My_Percentile);
Corr_Age_48_Female_5th = My_P(1);
Corr_Age_48_Female_50th = My_P(2);
Corr_Age_48_Female_95th = My_P(3);
Corr_Age_48_Female_mean = mean(Corr_Age_48_Female);
My_P = prctile(Corr_Age_49_Female,My_Percentile);
Corr_Age_49_Female_5th = My_P(1);
Corr_Age_49_Female_50th = My_P(2);
Corr_Age_49_Female_95th = My_P(3);
Corr_Age_49_Female_mean = mean(Corr_Age_49_Female);
My_P = prctile(Corr_Age_50_Female,My_Percentile);
Corr_Age_50_Female_5th = My_P(1);
Corr_Age_50_Female_50th = My_P(2);
Corr_Age_50_Female_95th = My_P(3);
Corr_Age_50_Female_mean = mean(Corr_Age_50_Female);
My_P = prctile(Corr_Age_51_Female,My_Percentile);
Corr_Age_51_Female_5th = My_P(1);
Corr_Age_51_Female_50th = My_P(2);
Corr_Age_51_Female_95th = My_P(3);
Corr_Age_51_Female_mean = mean(Corr_Age_51_Female);
My_P = prctile(Corr_Age_52_Female,My_Percentile);
Corr_Age_52_Female_5th = My_P(1);
Corr_Age_52_Female_50th = My_P(2);
Corr_Age_52_Female_95th = My_P(3);
Corr_Age_52_Female_mean = mean(Corr_Age_52_Female);
My_P = prctile(Corr_Age_53_Female,My_Percentile);
Corr_Age_53_Female_5th = My_P(1);
Corr_Age_53_Female_50th = My_P(2);
Corr_Age_53_Female_95th = My_P(3);
Corr_Age_53_Female_mean = mean(Corr_Age_53_Female);
My_P = prctile(Corr_Age_54_Female,My_Percentile);
Corr_Age_54_Female_5th = My_P(1);
Corr_Age_54_Female_50th = My_P(2);
Corr_Age_54_Female_95th = My_P(3);
Corr_Age_54_Female_mean = mean(Corr_Age_54_Female);
My_P = prctile(Corr_Age_55_Female,My_Percentile);
Corr_Age_55_Female_5th = My_P(1);
Corr_Age_55_Female_50th = My_P(2);
Corr_Age_55_Female_95th = My_P(3);
Corr_Age_55_Female_mean = mean(Corr_Age_55_Female);
My_P = prctile(Corr_Age_56_Female,My_Percentile);
Corr_Age_56_Female_5th = My_P(1);
Corr_Age_56_Female_50th = My_P(2);
Corr_Age_56_Female_95th = My_P(3);
Corr_Age_56_Female_mean = mean(Corr_Age_56_Female);
My_P = prctile(Corr_Age_57_Female,My_Percentile);
Corr_Age_57_Female_5th = My_P(1);
Corr_Age_57_Female_50th = My_P(2);
Corr_Age_57_Female_95th = My_P(3);
Corr_Age_57_Female_mean = mean(Corr_Age_57_Female);
My_P = prctile(Corr_Age_58_Female,My_Percentile);
Corr_Age_58_Female_5th = My_P(1);
Corr_Age_58_Female_50th = My_P(2);
Corr_Age_58_Female_95th = My_P(3);
Corr_Age_58_Female_mean = mean(Corr_Age_58_Female);
My_P = prctile(Corr_Age_59_Female,My_Percentile);
Corr_Age_59_Female_5th = My_P(1);
Corr_Age_59_Female_50th = My_P(2);
Corr_Age_59_Female_95th = My_P(3);
Corr_Age_59_Female_mean = mean(Corr_Age_59_Female);
My_P = prctile(Corr_Age_60_Female,My_Percentile);
Corr_Age_60_Female_5th = My_P(1);
Corr_Age_60_Female_50th = My_P(2);
Corr_Age_60_Female_95th = My_P(3);
Corr_Age_60_Female_mean = mean(Corr_Age_60_Female);
My_P = prctile(Corr_Age_61_Female,My_Percentile);
Corr_Age_61_Female_5th = My_P(1);
Corr_Age_61_Female_50th = My_P(2);
Corr_Age_61_Female_95th = My_P(3);
Corr_Age_61_Female_mean = mean(Corr_Age_61_Female);
My_P = prctile(Corr_Age_62_Female,My_Percentile);
Corr_Age_62_Female_5th = My_P(1);
Corr_Age_62_Female_50th = My_P(2);
Corr_Age_62_Female_95th = My_P(3);
Corr_Age_62_Female_mean = mean(Corr_Age_62_Female);
My_P = prctile(Corr_Age_63_Female,My_Percentile);
Corr_Age_63_Female_5th = My_P(1);
Corr_Age_63_Female_50th = My_P(2);
Corr_Age_63_Female_95th = My_P(3);
Corr_Age_63_Female_mean = mean(Corr_Age_63_Female);
My_P = prctile(Corr_Age_64_Female,My_Percentile);
Corr_Age_64_Female_5th = My_P(1);
Corr_Age_64_Female_50th = My_P(2);
Corr_Age_64_Female_95th = My_P(3);
Corr_Age_64_Female_mean = mean(Corr_Age_64_Female);
My_P = prctile(Corr_Age_65_Female,My_Percentile);
Corr_Age_65_Female_5th = My_P(1);
Corr_Age_65_Female_50th = My_P(2);
Corr_Age_65_Female_95th = My_P(3);
Corr_Age_65_Female_mean = mean(Corr_Age_65_Female);
My_P = prctile(Corr_Age_66_Female,My_Percentile);
Corr_Age_66_Female_5th = My_P(1);
Corr_Age_66_Female_50th = My_P(2);
Corr_Age_66_Female_95th = My_P(3);
Corr_Age_66_Female_mean = mean(Corr_Age_66_Female);
My_P = prctile(Corr_Age_67_Female,My_Percentile);
Corr_Age_67_Female_5th = My_P(1);
Corr_Age_67_Female_50th = My_P(2);
Corr_Age_67_Female_95th = My_P(3);
Corr_Age_67_Female_mean = mean(Corr_Age_67_Female);
My_P = prctile(Corr_Age_68_Female,My_Percentile);
Corr_Age_68_Female_5th = My_P(1);
Corr_Age_68_Female_50th = My_P(2);
Corr_Age_68_Female_95th = My_P(3);
Corr_Age_68_Female_mean = mean(Corr_Age_68_Female);
My_P = prctile(Corr_Age_69_Female,My_Percentile);
Corr_Age_69_Female_5th = My_P(1);
Corr_Age_69_Female_50th = My_P(2);
Corr_Age_69_Female_95th = My_P(3);
Corr_Age_69_Female_mean = mean(Corr_Age_69_Female);
My_P = prctile(Corr_Age_70_Female,My_Percentile);
Corr_Age_70_Female_5th = My_P(1);
Corr_Age_70_Female_50th = My_P(2);
Corr_Age_70_Female_95th = My_P(3);
Corr_Age_70_Female_mean = mean(Corr_Age_70_Female);
My_P = prctile(Corr_Age_71_Female,My_Percentile);
Corr_Age_71_Female_5th = My_P(1);
Corr_Age_71_Female_50th = My_P(2);
Corr_Age_71_Female_95th = My_P(3);
Corr_Age_71_Female_mean = mean(Corr_Age_71_Female);
My_P = prctile(Corr_Age_72_Female,My_Percentile);
Corr_Age_72_Female_5th = My_P(1);
Corr_Age_72_Female_50th = My_P(2);
Corr_Age_72_Female_95th = My_P(3);
Corr_Age_72_Female_mean = mean(Corr_Age_72_Female);
My_P = prctile(Corr_Age_73_Female,My_Percentile);
Corr_Age_73_Female_5th = My_P(1);
Corr_Age_73_Female_50th = My_P(2);
Corr_Age_73_Female_95th = My_P(3);
Corr_Age_73_Female_mean = mean(Corr_Age_73_Female);
My_P = prctile(Corr_Age_74_Female,My_Percentile);
Corr_Age_74_Female_5th = My_P(1);
Corr_Age_74_Female_50th = My_P(2);
Corr_Age_74_Female_95th = My_P(3);
Corr_Age_74_Female_mean = mean(Corr_Age_74_Female);
My_P = prctile(Corr_Age_75_Female,My_Percentile);
Corr_Age_75_Female_5th = My_P(1);
Corr_Age_75_Female_50th = My_P(2);
Corr_Age_75_Female_95th = My_P(3);
Corr_Age_75_Female_mean = mean(Corr_Age_75_Female);
My_P = prctile(Corr_Age_76_Female,My_Percentile);
Corr_Age_76_Female_5th = My_P(1);
Corr_Age_76_Female_50th = My_P(2);
Corr_Age_76_Female_95th = My_P(3);
Corr_Age_76_Female_mean = mean(Corr_Age_76_Female);
My_P = prctile(Corr_Age_77_Female,My_Percentile);
Corr_Age_77_Female_5th = My_P(1);
Corr_Age_77_Female_50th = My_P(2);
Corr_Age_77_Female_95th = My_P(3);
Corr_Age_77_Female_mean = mean(Corr_Age_77_Female);
My_P = prctile(Corr_Age_78_Female,My_Percentile);
Corr_Age_78_Female_5th = My_P(1);
Corr_Age_78_Female_50th = My_P(2);
Corr_Age_78_Female_95th = My_P(3);
Corr_Age_78_Female_mean = mean(Corr_Age_78_Female);
My_P = prctile(Corr_Age_79_Female,My_Percentile);
Corr_Age_79_Female_5th = My_P(1);
Corr_Age_79_Female_50th = My_P(2);
Corr_Age_79_Female_95th = My_P(3);
Corr_Age_79_Female_mean = mean(Corr_Age_79_Female);
My_P = prctile(Corr_Age_80_Female,My_Percentile);
Corr_Age_80_Female_5th = My_P(1);
Corr_Age_80_Female_50th = My_P(2);
Corr_Age_80_Female_95th = My_P(3);
Corr_Age_80_Female_mean = mean(Corr_Age_80_Female);
My_P = prctile(Corr_Age_81_Female,My_Percentile);
Corr_Age_81_Female_5th = My_P(1);
Corr_Age_81_Female_50th = My_P(2);
Corr_Age_81_Female_95th = My_P(3);
Corr_Age_81_Female_mean = mean(Corr_Age_81_Female);
My_P = prctile(Corr_Age_82_Female,My_Percentile);
Corr_Age_82_Female_5th = My_P(1);
Corr_Age_82_Female_50th = My_P(2);
Corr_Age_82_Female_95th = My_P(3);
Corr_Age_82_Female_mean = mean(Corr_Age_82_Female);
My_P = prctile(Corr_Age_83_Female,My_Percentile);
Corr_Age_83_Female_5th = My_P(1);
Corr_Age_83_Female_50th = My_P(2);
Corr_Age_83_Female_95th = My_P(3);
Corr_Age_83_Female_mean = mean(Corr_Age_83_Female);
My_P = prctile(Corr_Age_84_Female,My_Percentile);
Corr_Age_84_Female_5th = My_P(1);
Corr_Age_84_Female_50th = My_P(2);
Corr_Age_84_Female_95th = My_P(3);
Corr_Age_84_Female_mean = mean(Corr_Age_84_Female);
My_P = prctile(Corr_Age_85_Female,My_Percentile);
Corr_Age_85_Female_5th = My_P(1);
Corr_Age_85_Female_50th = My_P(2);
Corr_Age_85_Female_95th = My_P(3);
Corr_Age_85_Female_mean = mean(Corr_Age_85_Female);
% For Male
My_P = prctile(Corr_Age_2_Male,My_Percentile);
Corr_Age_2_Male_5th = My_P(1);
Corr_Age_2_Male_50th = My_P(2);
Corr_Age_2_Male_95th = My_P(3);
Corr_Age_2_Male_mean = mean(Corr_Age_2_Male);
My_P = prctile(Corr_Age_3_Male,My_Percentile);
Corr_Age_3_Male_5th = My_P(1);
Corr_Age_3_Male_50th = My_P(2);
Corr_Age_3_Male_95th = My_P(3);
Corr_Age_3_Male_mean = mean(Corr_Age_3_Male);
My_P = prctile(Corr_Age_4_Male,My_Percentile);
Corr_Age_4_Male_5th = My_P(1);
Corr_Age_4_Male_50th = My_P(2);
Corr_Age_4_Male_95th = My_P(3);
Corr_Age_4_Male_mean = mean(Corr_Age_4_Male);
My_P = prctile(Corr_Age_5_Male,My_Percentile);
Corr_Age_5_Male_5th = My_P(1);
Corr_Age_5_Male_50th = My_P(2);
Corr_Age_5_Male_95th = My_P(3);
Corr_Age_5_Male_mean = mean(Corr_Age_5_Male);
My_P = prctile(Corr_Age_6_Male,My_Percentile);
Corr_Age_6_Male_5th = My_P(1);
Corr_Age_6_Male_50th = My_P(2);
Corr_Age_6_Male_95th = My_P(3);
Corr_Age_6_Male_mean = mean(Corr_Age_6_Male);
My_P = prctile(Corr_Age_7_Male,My_Percentile);
Corr_Age_7_Male_5th = My_P(1);
Corr_Age_7_Male_50th = My_P(2);
Corr_Age_7_Male_95th = My_P(3);
Corr_Age_7_Male_mean = mean(Corr_Age_7_Male);
My_P = prctile(Corr_Age_8_Male,My_Percentile);
Corr_Age_8_Male_5th = My_P(1);
Corr_Age_8_Male_50th = My_P(2);
Corr_Age_8_Male_95th = My_P(3);
Corr_Age_8_Male_mean = mean(Corr_Age_8_Male);
My_P = prctile(Corr_Age_9_Male,My_Percentile);
Corr_Age_9_Male_5th = My_P(1);
Corr_Age_9_Male_50th = My_P(2);
Corr_Age_9_Male_95th = My_P(3);
Corr_Age_9_Male_mean = mean(Corr_Age_9_Male);
My_P = prctile(Corr_Age_10_Male,My_Percentile);
Corr_Age_10_Male_5th = My_P(1);
Corr_Age_10_Male_50th = My_P(2);
Corr_Age_10_Male_95th = My_P(3);
Corr_Age_10_Male_mean = mean(Corr_Age_10_Male);
My_P = prctile(Corr_Age_11_Male,My_Percentile);
Corr_Age_11_Male_5th = My_P(1);
Corr_Age_11_Male_50th = My_P(2);
Corr_Age_11_Male_95th = My_P(3);
Corr_Age_11_Male_mean = mean(Corr_Age_11_Male);
My_P = prctile(Corr_Age_12_Male,My_Percentile);
Corr_Age_12_Male_5th = My_P(1);
Corr_Age_12_Male_50th = My_P(2);
Corr_Age_12_Male_95th = My_P(3);
Corr_Age_12_Male_mean = mean(Corr_Age_12_Male);
My_P = prctile(Corr_Age_13_Male,My_Percentile);
Corr_Age_13_Male_5th = My_P(1);
Corr_Age_13_Male_50th = My_P(2);
Corr_Age_13_Male_95th = My_P(3);
Corr_Age_13_Male_mean = mean(Corr_Age_13_Male);
My_P = prctile(Corr_Age_14_Male,My_Percentile);
Corr_Age_14_Male_5th = My_P(1);
Corr_Age_14_Male_50th = My_P(2);
Corr_Age_14_Male_95th = My_P(3);
Corr_Age_14_Male_mean = mean(Corr_Age_14_Male);
My_P = prctile(Corr_Age_15_Male,My_Percentile);
Corr_Age_15_Male_5th = My_P(1);
Corr_Age_15_Male_50th = My_P(2);
Corr_Age_15_Male_95th = My_P(3);
Corr_Age_15_Male_mean = mean(Corr_Age_15_Male);
My_P = prctile(Corr_Age_16_Male,My_Percentile);
Corr_Age_16_Male_5th = My_P(1);
Corr_Age_16_Male_50th = My_P(2);
Corr_Age_16_Male_95th = My_P(3);
Corr_Age_16_Male_mean = mean(Corr_Age_16_Male);
My_P = prctile(Corr_Age_17_Male,My_Percentile);
Corr_Age_17_Male_5th = My_P(1);
Corr_Age_17_Male_50th = My_P(2);
Corr_Age_17_Male_95th = My_P(3);
Corr_Age_17_Male_mean = mean(Corr_Age_17_Male);
My_P = prctile(Corr_Age_18_Male,My_Percentile);
Corr_Age_18_Male_5th = My_P(1);
Corr_Age_18_Male_50th = My_P(2);
Corr_Age_18_Male_95th = My_P(3);
Corr_Age_18_Male_mean = mean(Corr_Age_18_Male);
My_P = prctile(Corr_Age_19_Male,My_Percentile);
Corr_Age_19_Male_5th = My_P(1);
Corr_Age_19_Male_50th = My_P(2);
Corr_Age_19_Male_95th = My_P(3);
Corr_Age_19_Male_mean = mean(Corr_Age_19_Male);
My_P = prctile(Corr_Age_20_Male,My_Percentile);
Corr_Age_20_Male_5th = My_P(1);
Corr_Age_20_Male_50th = My_P(2);
Corr_Age_20_Male_95th = My_P(3);
Corr_Age_20_Male_mean = mean(Corr_Age_20_Male);
My_P = prctile(Corr_Age_21_Male,My_Percentile);
Corr_Age_21_Male_5th = My_P(1);
Corr_Age_21_Male_50th = My_P(2);
Corr_Age_21_Male_95th = My_P(3);
Corr_Age_21_Male_mean = mean(Corr_Age_21_Male);
My_P = prctile(Corr_Age_22_Male,My_Percentile);
Corr_Age_22_Male_5th = My_P(1);
Corr_Age_22_Male_50th = My_P(2);
Corr_Age_22_Male_95th = My_P(3);
Corr_Age_22_Male_mean = mean(Corr_Age_22_Male);
My_P = prctile(Corr_Age_23_Male,My_Percentile);
Corr_Age_23_Male_5th = My_P(1);
Corr_Age_23_Male_50th = My_P(2);
Corr_Age_23_Male_95th = My_P(3);
Corr_Age_23_Male_mean = mean(Corr_Age_23_Male);
My_P = prctile(Corr_Age_24_Male,My_Percentile);
Corr_Age_24_Male_5th = My_P(1);
Corr_Age_24_Male_50th = My_P(2);
Corr_Age_24_Male_95th = My_P(3);
Corr_Age_24_Male_mean = mean(Corr_Age_24_Male);
My_P = prctile(Corr_Age_25_Male,My_Percentile);
Corr_Age_25_Male_5th = My_P(1);
Corr_Age_25_Male_50th = My_P(2);
Corr_Age_25_Male_95th = My_P(3);
Corr_Age_25_Male_mean = mean(Corr_Age_25_Male);
My_P = prctile(Corr_Age_26_Male,My_Percentile);
Corr_Age_26_Male_5th = My_P(1);
Corr_Age_26_Male_50th = My_P(2);
Corr_Age_26_Male_95th = My_P(3);
Corr_Age_26_Male_mean = mean(Corr_Age_26_Male);
My_P = prctile(Corr_Age_27_Male,My_Percentile);
Corr_Age_27_Male_5th = My_P(1);
Corr_Age_27_Male_50th = My_P(2);
Corr_Age_27_Male_95th = My_P(3);
Corr_Age_27_Male_mean = mean(Corr_Age_27_Male);
My_P = prctile(Corr_Age_28_Male,My_Percentile);
Corr_Age_28_Male_5th = My_P(1);
Corr_Age_28_Male_50th = My_P(2);
Corr_Age_28_Male_95th = My_P(3);
Corr_Age_28_Male_mean = mean(Corr_Age_28_Male);
My_P = prctile(Corr_Age_29_Male,My_Percentile);
Corr_Age_29_Male_5th = My_P(1);
Corr_Age_29_Male_50th = My_P(2);
Corr_Age_29_Male_95th = My_P(3);
Corr_Age_29_Male_mean = mean(Corr_Age_29_Male);
My_P = prctile(Corr_Age_30_Male,My_Percentile);
Corr_Age_30_Male_5th = My_P(1);
Corr_Age_30_Male_50th = My_P(2);
Corr_Age_30_Male_95th = My_P(3);
Corr_Age_30_Male_mean = mean(Corr_Age_30_Male);
My_P = prctile(Corr_Age_31_Male,My_Percentile);
Corr_Age_31_Male_5th = My_P(1);
Corr_Age_31_Male_50th = My_P(2);
Corr_Age_31_Male_95th = My_P(3);
Corr_Age_31_Male_mean = mean(Corr_Age_31_Male);
My_P = prctile(Corr_Age_32_Male,My_Percentile);
Corr_Age_32_Male_5th = My_P(1);
Corr_Age_32_Male_50th = My_P(2);
Corr_Age_32_Male_95th = My_P(3);
Corr_Age_32_Male_mean = mean(Corr_Age_32_Male);
My_P = prctile(Corr_Age_33_Male,My_Percentile);
Corr_Age_33_Male_5th = My_P(1);
Corr_Age_33_Male_50th = My_P(2);
Corr_Age_33_Male_95th = My_P(3);
Corr_Age_33_Male_mean = mean(Corr_Age_33_Male);
My_P = prctile(Corr_Age_34_Male,My_Percentile);
Corr_Age_34_Male_5th = My_P(1);
Corr_Age_34_Male_50th = My_P(2);
Corr_Age_34_Male_95th = My_P(3);
Corr_Age_34_Male_mean = mean(Corr_Age_34_Male);
My_P = prctile(Corr_Age_35_Male,My_Percentile);
Corr_Age_35_Male_5th = My_P(1);
Corr_Age_35_Male_50th = My_P(2);
Corr_Age_35_Male_95th = My_P(3);
Corr_Age_35_Male_mean = mean(Corr_Age_35_Male);
My_P = prctile(Corr_Age_36_Male,My_Percentile);
Corr_Age_36_Male_5th = My_P(1);
Corr_Age_36_Male_50th = My_P(2);
Corr_Age_36_Male_95th = My_P(3);
Corr_Age_36_Male_mean = mean(Corr_Age_36_Male);
My_P = prctile(Corr_Age_37_Male,My_Percentile);
Corr_Age_37_Male_5th = My_P(1);
Corr_Age_37_Male_50th = My_P(2);
Corr_Age_37_Male_95th = My_P(3);
Corr_Age_37_Male_mean = mean(Corr_Age_37_Male);
My_P = prctile(Corr_Age_38_Male,My_Percentile);
Corr_Age_38_Male_5th = My_P(1);
Corr_Age_38_Male_50th = My_P(2);
Corr_Age_38_Male_95th = My_P(3);
Corr_Age_38_Male_mean = mean(Corr_Age_38_Male);
My_P = prctile(Corr_Age_39_Male,My_Percentile);
Corr_Age_39_Male_5th = My_P(1);
Corr_Age_39_Male_50th = My_P(2);
Corr_Age_39_Male_95th = My_P(3);
Corr_Age_39_Male_mean = mean(Corr_Age_39_Male);
My_P = prctile(Corr_Age_40_Male,My_Percentile);
Corr_Age_40_Male_5th = My_P(1);
Corr_Age_40_Male_50th = My_P(2);
Corr_Age_40_Male_95th = My_P(3);
Corr_Age_40_Male_mean = mean(Corr_Age_40_Male);
My_P = prctile(Corr_Age_41_Male,My_Percentile);
Corr_Age_41_Male_5th = My_P(1);
Corr_Age_41_Male_50th = My_P(2);
Corr_Age_41_Male_95th = My_P(3);
Corr_Age_41_Male_mean = mean(Corr_Age_41_Male);
My_P = prctile(Corr_Age_42_Male,My_Percentile);
Corr_Age_42_Male_5th = My_P(1);
Corr_Age_42_Male_50th = My_P(2);
Corr_Age_42_Male_95th = My_P(3);
Corr_Age_42_Male_mean = mean(Corr_Age_42_Male);
My_P = prctile(Corr_Age_43_Male,My_Percentile);
Corr_Age_43_Male_5th = My_P(1);
Corr_Age_43_Male_50th = My_P(2);
Corr_Age_43_Male_95th = My_P(3);
Corr_Age_43_Male_mean = mean(Corr_Age_43_Male);
My_P = prctile(Corr_Age_44_Male,My_Percentile);
Corr_Age_44_Male_5th = My_P(1);
Corr_Age_44_Male_50th = My_P(2);
Corr_Age_44_Male_95th = My_P(3);
Corr_Age_44_Male_mean = mean(Corr_Age_44_Male);
My_P = prctile(Corr_Age_45_Male,My_Percentile);
Corr_Age_45_Male_5th = My_P(1);
Corr_Age_45_Male_50th = My_P(2);
Corr_Age_45_Male_95th = My_P(3);
Corr_Age_45_Male_mean = mean(Corr_Age_45_Male);
My_P = prctile(Corr_Age_46_Male,My_Percentile);
Corr_Age_46_Male_5th = My_P(1);
Corr_Age_46_Male_50th = My_P(2);
Corr_Age_46_Male_95th = My_P(3);
Corr_Age_46_Male_mean = mean(Corr_Age_46_Male);
My_P = prctile(Corr_Age_47_Male,My_Percentile);
Corr_Age_47_Male_5th = My_P(1);
Corr_Age_47_Male_50th = My_P(2);
Corr_Age_47_Male_95th = My_P(3);
Corr_Age_47_Male_mean = mean(Corr_Age_47_Male);
My_P = prctile(Corr_Age_48_Male,My_Percentile);
Corr_Age_48_Male_5th = My_P(1);
Corr_Age_48_Male_50th = My_P(2);
Corr_Age_48_Male_95th = My_P(3);
Corr_Age_48_Male_mean = mean(Corr_Age_48_Male);
My_P = prctile(Corr_Age_49_Male,My_Percentile);
Corr_Age_49_Male_5th = My_P(1);
Corr_Age_49_Male_50th = My_P(2);
Corr_Age_49_Male_95th = My_P(3);
Corr_Age_49_Male_mean = mean(Corr_Age_49_Male);
My_P = prctile(Corr_Age_50_Male,My_Percentile);
Corr_Age_50_Male_5th = My_P(1);
Corr_Age_50_Male_50th = My_P(2);
Corr_Age_50_Male_95th = My_P(3);
Corr_Age_50_Male_mean = mean(Corr_Age_50_Male);
My_P = prctile(Corr_Age_51_Male,My_Percentile);
Corr_Age_51_Male_5th = My_P(1);
Corr_Age_51_Male_50th = My_P(2);
Corr_Age_51_Male_95th = My_P(3);
Corr_Age_51_Male_mean = mean(Corr_Age_51_Male);
My_P = prctile(Corr_Age_52_Male,My_Percentile);
Corr_Age_52_Male_5th = My_P(1);
Corr_Age_52_Male_50th = My_P(2);
Corr_Age_52_Male_95th = My_P(3);
Corr_Age_52_Male_mean = mean(Corr_Age_52_Male);
My_P = prctile(Corr_Age_53_Male,My_Percentile);
Corr_Age_53_Male_5th = My_P(1);
Corr_Age_53_Male_50th = My_P(2);
Corr_Age_53_Male_95th = My_P(3);
Corr_Age_53_Male_mean = mean(Corr_Age_53_Male);
My_P = prctile(Corr_Age_54_Male,My_Percentile);
Corr_Age_54_Male_5th = My_P(1);
Corr_Age_54_Male_50th = My_P(2);
Corr_Age_54_Male_95th = My_P(3);
Corr_Age_54_Male_mean = mean(Corr_Age_54_Male);
My_P = prctile(Corr_Age_55_Male,My_Percentile);
Corr_Age_55_Male_5th = My_P(1);
Corr_Age_55_Male_50th = My_P(2);
Corr_Age_55_Male_95th = My_P(3);
Corr_Age_55_Male_mean = mean(Corr_Age_55_Male);
My_P = prctile(Corr_Age_56_Male,My_Percentile);
Corr_Age_56_Male_5th = My_P(1);
Corr_Age_56_Male_50th = My_P(2);
Corr_Age_56_Male_95th = My_P(3);
Corr_Age_56_Male_mean = mean(Corr_Age_56_Male);
My_P = prctile(Corr_Age_57_Male,My_Percentile);
Corr_Age_57_Male_5th = My_P(1);
Corr_Age_57_Male_50th = My_P(2);
Corr_Age_57_Male_95th = My_P(3);
Corr_Age_57_Male_mean = mean(Corr_Age_57_Male);
My_P = prctile(Corr_Age_58_Male,My_Percentile);
Corr_Age_58_Male_5th = My_P(1);
Corr_Age_58_Male_50th = My_P(2);
Corr_Age_58_Male_95th = My_P(3);
Corr_Age_58_Male_mean = mean(Corr_Age_58_Male);
My_P = prctile(Corr_Age_59_Male,My_Percentile);
Corr_Age_59_Male_5th = My_P(1);
Corr_Age_59_Male_50th = My_P(2);
Corr_Age_59_Male_95th = My_P(3);
Corr_Age_59_Male_mean = mean(Corr_Age_59_Male);
My_P = prctile(Corr_Age_60_Male,My_Percentile);
Corr_Age_60_Male_5th = My_P(1);
Corr_Age_60_Male_50th = My_P(2);
Corr_Age_60_Male_95th = My_P(3);
Corr_Age_60_Male_mean = mean(Corr_Age_60_Male);
My_P = prctile(Corr_Age_61_Male,My_Percentile);
Corr_Age_61_Male_5th = My_P(1);
Corr_Age_61_Male_50th = My_P(2);
Corr_Age_61_Male_95th = My_P(3);
Corr_Age_61_Male_mean = mean(Corr_Age_61_Male);
My_P = prctile(Corr_Age_62_Male,My_Percentile);
Corr_Age_62_Male_5th = My_P(1);
Corr_Age_62_Male_50th = My_P(2);
Corr_Age_62_Male_95th = My_P(3);
Corr_Age_62_Male_mean = mean(Corr_Age_62_Male);
My_P = prctile(Corr_Age_63_Male,My_Percentile);
Corr_Age_63_Male_5th = My_P(1);
Corr_Age_63_Male_50th = My_P(2);
Corr_Age_63_Male_95th = My_P(3);
Corr_Age_63_Male_mean = mean(Corr_Age_63_Male);
My_P = prctile(Corr_Age_64_Male,My_Percentile);
Corr_Age_64_Male_5th = My_P(1);
Corr_Age_64_Male_50th = My_P(2);
Corr_Age_64_Male_95th = My_P(3);
Corr_Age_64_Male_mean = mean(Corr_Age_64_Male);
My_P = prctile(Corr_Age_65_Male,My_Percentile);
Corr_Age_65_Male_5th = My_P(1);
Corr_Age_65_Male_50th = My_P(2);
Corr_Age_65_Male_95th = My_P(3);
Corr_Age_65_Male_mean = mean(Corr_Age_65_Male);
My_P = prctile(Corr_Age_66_Male,My_Percentile);
Corr_Age_66_Male_5th = My_P(1);
Corr_Age_66_Male_50th = My_P(2);
Corr_Age_66_Male_95th = My_P(3);
Corr_Age_66_Male_mean = mean(Corr_Age_66_Male);
My_P = prctile(Corr_Age_67_Male,My_Percentile);
Corr_Age_67_Male_5th = My_P(1);
Corr_Age_67_Male_50th = My_P(2);
Corr_Age_67_Male_95th = My_P(3);
Corr_Age_67_Male_mean = mean(Corr_Age_67_Male);
My_P = prctile(Corr_Age_68_Male,My_Percentile);
Corr_Age_68_Male_5th = My_P(1);
Corr_Age_68_Male_50th = My_P(2);
Corr_Age_68_Male_95th = My_P(3);
Corr_Age_68_Male_mean = mean(Corr_Age_68_Male);
My_P = prctile(Corr_Age_69_Male,My_Percentile);
Corr_Age_69_Male_5th = My_P(1);
Corr_Age_69_Male_50th = My_P(2);
Corr_Age_69_Male_95th = My_P(3);
Corr_Age_69_Male_mean = mean(Corr_Age_69_Male);
My_P = prctile(Corr_Age_70_Male,My_Percentile);
Corr_Age_70_Male_5th = My_P(1);
Corr_Age_70_Male_50th = My_P(2);
Corr_Age_70_Male_95th = My_P(3);
Corr_Age_70_Male_mean = mean(Corr_Age_70_Male);
My_P = prctile(Corr_Age_71_Male,My_Percentile);
Corr_Age_71_Male_5th = My_P(1);
Corr_Age_71_Male_50th = My_P(2);
Corr_Age_71_Male_95th = My_P(3);
Corr_Age_71_Male_mean = mean(Corr_Age_71_Male);
My_P = prctile(Corr_Age_72_Male,My_Percentile);
Corr_Age_72_Male_5th = My_P(1);
Corr_Age_72_Male_50th = My_P(2);
Corr_Age_72_Male_95th = My_P(3);
Corr_Age_72_Male_mean = mean(Corr_Age_72_Male);
My_P = prctile(Corr_Age_73_Male,My_Percentile);
Corr_Age_73_Male_5th = My_P(1);
Corr_Age_73_Male_50th = My_P(2);
Corr_Age_73_Male_95th = My_P(3);
Corr_Age_73_Male_mean = mean(Corr_Age_73_Male);
My_P = prctile(Corr_Age_74_Male,My_Percentile);
Corr_Age_74_Male_5th = My_P(1);
Corr_Age_74_Male_50th = My_P(2);
Corr_Age_74_Male_95th = My_P(3);
Corr_Age_74_Male_mean = mean(Corr_Age_74_Male);
My_P = prctile(Corr_Age_75_Male,My_Percentile);
Corr_Age_75_Male_5th = My_P(1);
Corr_Age_75_Male_50th = My_P(2);
Corr_Age_75_Male_95th = My_P(3);
Corr_Age_75_Male_mean = mean(Corr_Age_75_Male);
My_P = prctile(Corr_Age_76_Male,My_Percentile);
Corr_Age_76_Male_5th = My_P(1);
Corr_Age_76_Male_50th = My_P(2);
Corr_Age_76_Male_95th = My_P(3);
Corr_Age_76_Male_mean = mean(Corr_Age_76_Male);
My_P = prctile(Corr_Age_77_Male,My_Percentile);
Corr_Age_77_Male_5th = My_P(1);
Corr_Age_77_Male_50th = My_P(2);
Corr_Age_77_Male_95th = My_P(3);
Corr_Age_77_Male_mean = mean(Corr_Age_77_Male);
My_P = prctile(Corr_Age_78_Male,My_Percentile);
Corr_Age_78_Male_5th = My_P(1);
Corr_Age_78_Male_50th = My_P(2);
Corr_Age_78_Male_95th = My_P(3);
Corr_Age_78_Male_mean = mean(Corr_Age_78_Male);
My_P = prctile(Corr_Age_79_Male,My_Percentile);
Corr_Age_79_Male_5th = My_P(1);
Corr_Age_79_Male_50th = My_P(2);
Corr_Age_79_Male_95th = My_P(3);
Corr_Age_79_Male_mean = mean(Corr_Age_79_Male);
My_P = prctile(Corr_Age_80_Male,My_Percentile);
Corr_Age_80_Male_5th = My_P(1);
Corr_Age_80_Male_50th = My_P(2);
Corr_Age_80_Male_95th = My_P(3);
Corr_Age_80_Male_mean = mean(Corr_Age_80_Male);
My_P = prctile(Corr_Age_81_Male,My_Percentile);
Corr_Age_81_Male_5th = My_P(1);
Corr_Age_81_Male_50th = My_P(2);
Corr_Age_81_Male_95th = My_P(3);
Corr_Age_81_Male_mean = mean(Corr_Age_81_Male);
My_P = prctile(Corr_Age_82_Male,My_Percentile);
Corr_Age_82_Male_5th = My_P(1);
Corr_Age_82_Male_50th = My_P(2);
Corr_Age_82_Male_95th = My_P(3);
Corr_Age_82_Male_mean = mean(Corr_Age_82_Male);
My_P = prctile(Corr_Age_83_Male,My_Percentile);
Corr_Age_83_Male_5th = My_P(1);
Corr_Age_83_Male_50th = My_P(2);
Corr_Age_83_Male_95th = My_P(3);
Corr_Age_83_Male_mean = mean(Corr_Age_83_Male);
My_P = prctile(Corr_Age_84_Male,My_Percentile);
Corr_Age_84_Male_5th = My_P(1);
Corr_Age_84_Male_50th = My_P(2);
Corr_Age_84_Male_95th = My_P(3);
Corr_Age_84_Male_mean = mean(Corr_Age_84_Male);
My_P = prctile(Corr_Age_85_Male,My_Percentile);
Corr_Age_85_Male_5th = My_P(1);
Corr_Age_85_Male_50th = My_P(2);
Corr_Age_85_Male_95th = My_P(3);
Corr_Age_85_Male_mean = mean(Corr_Age_85_Male);

My_Age_Female = 2:85;
My_5th_Female = [Corr_Age_2_Female_5th Corr_Age_3_Female_5th Corr_Age_4_Female_5th Corr_Age_5_Female_5th ...
    Corr_Age_6_Female_5th Corr_Age_7_Female_5th Corr_Age_8_Female_5th Corr_Age_9_Female_5th Corr_Age_10_Female_5th ...
    Corr_Age_11_Female_5th Corr_Age_12_Female_5th Corr_Age_13_Female_5th Corr_Age_14_Female_5th Corr_Age_15_Female_5th ...
    Corr_Age_16_Female_5th Corr_Age_17_Female_5th Corr_Age_18_Female_5th Corr_Age_19_Female_5th Corr_Age_20_Female_5th ...
    Corr_Age_21_Female_5th Corr_Age_22_Female_5th Corr_Age_23_Female_5th Corr_Age_24_Female_5th Corr_Age_25_Female_5th ...
    Corr_Age_26_Female_5th Corr_Age_27_Female_5th Corr_Age_28_Female_5th Corr_Age_29_Female_5th Corr_Age_30_Female_5th ...
    Corr_Age_31_Female_5th Corr_Age_32_Female_5th Corr_Age_33_Female_5th Corr_Age_34_Female_5th Corr_Age_35_Female_5th ...
    Corr_Age_36_Female_5th Corr_Age_37_Female_5th Corr_Age_38_Female_5th Corr_Age_39_Female_5th Corr_Age_40_Female_5th ...
    Corr_Age_41_Female_5th Corr_Age_42_Female_5th Corr_Age_43_Female_5th Corr_Age_44_Female_5th Corr_Age_45_Female_5th ...
    Corr_Age_46_Female_5th Corr_Age_47_Female_5th Corr_Age_48_Female_5th Corr_Age_49_Female_5th Corr_Age_50_Female_5th ...
    Corr_Age_51_Female_5th Corr_Age_52_Female_5th Corr_Age_53_Female_5th Corr_Age_54_Female_5th Corr_Age_55_Female_5th ...
    Corr_Age_56_Female_5th Corr_Age_57_Female_5th Corr_Age_58_Female_5th Corr_Age_59_Female_5th Corr_Age_60_Female_5th ...
    Corr_Age_61_Female_5th Corr_Age_62_Female_5th Corr_Age_63_Female_5th Corr_Age_64_Female_5th Corr_Age_65_Female_5th ...
    Corr_Age_66_Female_5th Corr_Age_67_Female_5th Corr_Age_68_Female_5th Corr_Age_69_Female_5th Corr_Age_70_Female_5th ...
    Corr_Age_71_Female_5th Corr_Age_72_Female_5th Corr_Age_73_Female_5th Corr_Age_74_Female_5th Corr_Age_75_Female_5th ...
    Corr_Age_76_Female_5th Corr_Age_77_Female_5th Corr_Age_78_Female_5th Corr_Age_79_Female_5th Corr_Age_80_Female_5th ...
    Corr_Age_81_Female_5th Corr_Age_82_Female_5th Corr_Age_83_Female_5th Corr_Age_84_Female_5th Corr_Age_85_Female_5th];

My_50th_Female = [Corr_Age_2_Female_50th Corr_Age_3_Female_50th Corr_Age_4_Female_50th Corr_Age_5_Female_50th ...
    Corr_Age_6_Female_50th Corr_Age_7_Female_50th Corr_Age_8_Female_50th Corr_Age_9_Female_50th Corr_Age_10_Female_50th ...
    Corr_Age_11_Female_50th Corr_Age_12_Female_50th Corr_Age_13_Female_50th Corr_Age_14_Female_50th Corr_Age_15_Female_50th ...
    Corr_Age_16_Female_50th Corr_Age_17_Female_50th Corr_Age_18_Female_50th Corr_Age_19_Female_50th Corr_Age_20_Female_50th ...
    Corr_Age_21_Female_50th Corr_Age_22_Female_50th Corr_Age_23_Female_50th Corr_Age_24_Female_50th Corr_Age_25_Female_50th ...
    Corr_Age_26_Female_50th Corr_Age_27_Female_50th Corr_Age_28_Female_50th Corr_Age_29_Female_50th Corr_Age_30_Female_50th ...
    Corr_Age_31_Female_50th Corr_Age_32_Female_50th Corr_Age_33_Female_50th Corr_Age_34_Female_50th Corr_Age_35_Female_50th ...
    Corr_Age_36_Female_50th Corr_Age_37_Female_50th Corr_Age_38_Female_50th Corr_Age_39_Female_50th Corr_Age_40_Female_50th ...
    Corr_Age_41_Female_50th Corr_Age_42_Female_50th Corr_Age_43_Female_50th Corr_Age_44_Female_50th Corr_Age_45_Female_50th ...
    Corr_Age_46_Female_50th Corr_Age_47_Female_50th Corr_Age_48_Female_50th Corr_Age_49_Female_50th Corr_Age_50_Female_50th ...
    Corr_Age_51_Female_50th Corr_Age_52_Female_50th Corr_Age_53_Female_50th Corr_Age_54_Female_50th Corr_Age_55_Female_50th ...
    Corr_Age_56_Female_50th Corr_Age_57_Female_50th Corr_Age_58_Female_50th Corr_Age_59_Female_50th Corr_Age_60_Female_50th ...
    Corr_Age_61_Female_50th Corr_Age_62_Female_50th Corr_Age_63_Female_50th Corr_Age_64_Female_50th Corr_Age_65_Female_50th ...
    Corr_Age_66_Female_50th Corr_Age_67_Female_50th Corr_Age_68_Female_50th Corr_Age_69_Female_50th Corr_Age_70_Female_50th ...
    Corr_Age_71_Female_50th Corr_Age_72_Female_50th Corr_Age_73_Female_50th Corr_Age_74_Female_50th Corr_Age_75_Female_50th ...
    Corr_Age_76_Female_50th Corr_Age_77_Female_50th Corr_Age_78_Female_50th Corr_Age_79_Female_50th Corr_Age_80_Female_50th ...
    Corr_Age_81_Female_50th Corr_Age_82_Female_50th Corr_Age_83_Female_50th Corr_Age_84_Female_50th Corr_Age_85_Female_50th];

My_95th_Female = [Corr_Age_2_Female_95th Corr_Age_3_Female_95th Corr_Age_4_Female_95th Corr_Age_5_Female_95th ...
    Corr_Age_6_Female_95th Corr_Age_7_Female_95th Corr_Age_8_Female_95th Corr_Age_9_Female_95th Corr_Age_10_Female_95th ...
    Corr_Age_11_Female_95th Corr_Age_12_Female_95th Corr_Age_13_Female_95th Corr_Age_14_Female_95th Corr_Age_15_Female_95th ...
    Corr_Age_16_Female_95th Corr_Age_17_Female_95th Corr_Age_18_Female_95th Corr_Age_19_Female_95th Corr_Age_20_Female_95th ...
    Corr_Age_21_Female_95th Corr_Age_22_Female_95th Corr_Age_23_Female_95th Corr_Age_24_Female_95th Corr_Age_25_Female_95th ...
    Corr_Age_26_Female_95th Corr_Age_27_Female_95th Corr_Age_28_Female_95th Corr_Age_29_Female_95th Corr_Age_30_Female_95th ...
    Corr_Age_31_Female_95th Corr_Age_32_Female_95th Corr_Age_33_Female_95th Corr_Age_34_Female_95th Corr_Age_35_Female_95th ...
    Corr_Age_36_Female_95th Corr_Age_37_Female_95th Corr_Age_38_Female_95th Corr_Age_39_Female_95th Corr_Age_40_Female_95th ...
    Corr_Age_41_Female_95th Corr_Age_42_Female_95th Corr_Age_43_Female_95th Corr_Age_44_Female_95th Corr_Age_45_Female_95th ...
    Corr_Age_46_Female_95th Corr_Age_47_Female_95th Corr_Age_48_Female_95th Corr_Age_49_Female_95th Corr_Age_50_Female_95th ...
    Corr_Age_51_Female_95th Corr_Age_52_Female_95th Corr_Age_53_Female_95th Corr_Age_54_Female_95th Corr_Age_55_Female_95th ...
    Corr_Age_56_Female_95th Corr_Age_57_Female_95th Corr_Age_58_Female_95th Corr_Age_59_Female_95th Corr_Age_60_Female_95th ...
    Corr_Age_61_Female_95th Corr_Age_62_Female_95th Corr_Age_63_Female_95th Corr_Age_64_Female_95th Corr_Age_65_Female_95th ...
    Corr_Age_66_Female_95th Corr_Age_67_Female_95th Corr_Age_68_Female_95th Corr_Age_69_Female_95th Corr_Age_70_Female_95th ...
    Corr_Age_71_Female_95th Corr_Age_72_Female_95th Corr_Age_73_Female_95th Corr_Age_74_Female_95th Corr_Age_75_Female_95th ...
    Corr_Age_76_Female_95th Corr_Age_77_Female_95th Corr_Age_78_Female_95th Corr_Age_79_Female_95th Corr_Age_80_Female_95th ...
    Corr_Age_81_Female_95th Corr_Age_82_Female_95th Corr_Age_83_Female_95th Corr_Age_84_Female_95th Corr_Age_85_Female_95th];

My_mean_Female = [Corr_Age_2_Female_mean Corr_Age_3_Female_mean Corr_Age_4_Female_mean Corr_Age_5_Female_mean ...
    Corr_Age_6_Female_mean Corr_Age_7_Female_mean Corr_Age_8_Female_mean Corr_Age_9_Female_mean Corr_Age_10_Female_mean ...
    Corr_Age_11_Female_mean Corr_Age_12_Female_mean Corr_Age_13_Female_mean Corr_Age_14_Female_mean Corr_Age_15_Female_mean ...
    Corr_Age_16_Female_mean Corr_Age_17_Female_mean Corr_Age_18_Female_mean Corr_Age_19_Female_mean Corr_Age_20_Female_mean ...
    Corr_Age_21_Female_mean Corr_Age_22_Female_mean Corr_Age_23_Female_mean Corr_Age_24_Female_mean Corr_Age_25_Female_mean ...
    Corr_Age_26_Female_mean Corr_Age_27_Female_mean Corr_Age_28_Female_mean Corr_Age_29_Female_mean Corr_Age_30_Female_mean ...
    Corr_Age_31_Female_mean Corr_Age_32_Female_mean Corr_Age_33_Female_mean Corr_Age_34_Female_mean Corr_Age_35_Female_mean ...
    Corr_Age_36_Female_mean Corr_Age_37_Female_mean Corr_Age_38_Female_mean Corr_Age_39_Female_mean Corr_Age_40_Female_mean ...
    Corr_Age_41_Female_mean Corr_Age_42_Female_mean Corr_Age_43_Female_mean Corr_Age_44_Female_mean Corr_Age_45_Female_mean ...
    Corr_Age_46_Female_mean Corr_Age_47_Female_mean Corr_Age_48_Female_mean Corr_Age_49_Female_mean Corr_Age_50_Female_mean ...
    Corr_Age_51_Female_mean Corr_Age_52_Female_mean Corr_Age_53_Female_mean Corr_Age_54_Female_mean Corr_Age_55_Female_mean ...
    Corr_Age_56_Female_mean Corr_Age_57_Female_mean Corr_Age_58_Female_mean Corr_Age_59_Female_mean Corr_Age_60_Female_mean ...
    Corr_Age_61_Female_mean Corr_Age_62_Female_mean Corr_Age_63_Female_mean Corr_Age_64_Female_mean Corr_Age_65_Female_mean ...
    Corr_Age_66_Female_mean Corr_Age_67_Female_mean Corr_Age_68_Female_mean Corr_Age_69_Female_mean Corr_Age_70_Female_mean ...
    Corr_Age_71_Female_mean Corr_Age_72_Female_mean Corr_Age_73_Female_mean Corr_Age_74_Female_mean Corr_Age_75_Female_mean ...
    Corr_Age_76_Female_mean Corr_Age_77_Female_mean Corr_Age_78_Female_mean Corr_Age_79_Female_mean Corr_Age_80_Female_mean ...
    Corr_Age_81_Female_mean Corr_Age_82_Female_mean Corr_Age_83_Female_mean Corr_Age_84_Female_mean Corr_Age_85_Female_mean];

My_Age_Male = 2:85;
My_5th_Male = [Corr_Age_2_Male_5th Corr_Age_3_Male_5th Corr_Age_4_Male_5th Corr_Age_5_Male_5th ...
    Corr_Age_6_Male_5th Corr_Age_7_Male_5th Corr_Age_8_Male_5th Corr_Age_9_Male_5th Corr_Age_10_Male_5th ...
    Corr_Age_11_Male_5th Corr_Age_12_Male_5th Corr_Age_13_Male_5th Corr_Age_14_Male_5th Corr_Age_15_Male_5th ...
    Corr_Age_16_Male_5th Corr_Age_17_Male_5th Corr_Age_18_Male_5th Corr_Age_19_Male_5th Corr_Age_20_Male_5th ...
    Corr_Age_21_Male_5th Corr_Age_22_Male_5th Corr_Age_23_Male_5th Corr_Age_24_Male_5th Corr_Age_25_Male_5th ...
    Corr_Age_26_Male_5th Corr_Age_27_Male_5th Corr_Age_28_Male_5th Corr_Age_29_Male_5th Corr_Age_30_Male_5th ...
    Corr_Age_31_Male_5th Corr_Age_32_Male_5th Corr_Age_33_Male_5th Corr_Age_34_Male_5th Corr_Age_35_Male_5th ...
    Corr_Age_36_Male_5th Corr_Age_37_Male_5th Corr_Age_38_Male_5th Corr_Age_39_Male_5th Corr_Age_40_Male_5th ...
    Corr_Age_41_Male_5th Corr_Age_42_Male_5th Corr_Age_43_Male_5th Corr_Age_44_Male_5th Corr_Age_45_Male_5th ...
    Corr_Age_46_Male_5th Corr_Age_47_Male_5th Corr_Age_48_Male_5th Corr_Age_49_Male_5th Corr_Age_50_Male_5th ...
    Corr_Age_51_Male_5th Corr_Age_52_Male_5th Corr_Age_53_Male_5th Corr_Age_54_Male_5th Corr_Age_55_Male_5th ...
    Corr_Age_56_Male_5th Corr_Age_57_Male_5th Corr_Age_58_Male_5th Corr_Age_59_Male_5th Corr_Age_60_Male_5th ...
    Corr_Age_61_Male_5th Corr_Age_62_Male_5th Corr_Age_63_Male_5th Corr_Age_64_Male_5th Corr_Age_65_Male_5th ...
    Corr_Age_66_Male_5th Corr_Age_67_Male_5th Corr_Age_68_Male_5th Corr_Age_69_Male_5th Corr_Age_70_Male_5th ...
    Corr_Age_71_Male_5th Corr_Age_72_Male_5th Corr_Age_73_Male_5th Corr_Age_74_Male_5th Corr_Age_75_Male_5th ...
    Corr_Age_76_Male_5th Corr_Age_77_Male_5th Corr_Age_78_Male_5th Corr_Age_79_Male_5th Corr_Age_80_Male_5th ...
    Corr_Age_81_Male_5th Corr_Age_82_Male_5th Corr_Age_83_Male_5th Corr_Age_84_Male_5th Corr_Age_85_Male_5th];

My_50th_Male = [Corr_Age_2_Male_50th Corr_Age_3_Male_50th Corr_Age_4_Male_50th Corr_Age_5_Male_50th ...
    Corr_Age_6_Male_50th Corr_Age_7_Male_50th Corr_Age_8_Male_50th Corr_Age_9_Male_50th Corr_Age_10_Male_50th ...
    Corr_Age_11_Male_50th Corr_Age_12_Male_50th Corr_Age_13_Male_50th Corr_Age_14_Male_50th Corr_Age_15_Male_50th ...
    Corr_Age_16_Male_50th Corr_Age_17_Male_50th Corr_Age_18_Male_50th Corr_Age_19_Male_50th Corr_Age_20_Male_50th ...
    Corr_Age_21_Male_50th Corr_Age_22_Male_50th Corr_Age_23_Male_50th Corr_Age_24_Male_50th Corr_Age_25_Male_50th ...
    Corr_Age_26_Male_50th Corr_Age_27_Male_50th Corr_Age_28_Male_50th Corr_Age_29_Male_50th Corr_Age_30_Male_50th ...
    Corr_Age_31_Male_50th Corr_Age_32_Male_50th Corr_Age_33_Male_50th Corr_Age_34_Male_50th Corr_Age_35_Male_50th ...
    Corr_Age_36_Male_50th Corr_Age_37_Male_50th Corr_Age_38_Male_50th Corr_Age_39_Male_50th Corr_Age_40_Male_50th ...
    Corr_Age_41_Male_50th Corr_Age_42_Male_50th Corr_Age_43_Male_50th Corr_Age_44_Male_50th Corr_Age_45_Male_50th ...
    Corr_Age_46_Male_50th Corr_Age_47_Male_50th Corr_Age_48_Male_50th Corr_Age_49_Male_50th Corr_Age_50_Male_50th ...
    Corr_Age_51_Male_50th Corr_Age_52_Male_50th Corr_Age_53_Male_50th Corr_Age_54_Male_50th Corr_Age_55_Male_50th ...
    Corr_Age_56_Male_50th Corr_Age_57_Male_50th Corr_Age_58_Male_50th Corr_Age_59_Male_50th Corr_Age_60_Male_50th ...
    Corr_Age_61_Male_50th Corr_Age_62_Male_50th Corr_Age_63_Male_50th Corr_Age_64_Male_50th Corr_Age_65_Male_50th ...
    Corr_Age_66_Male_50th Corr_Age_67_Male_50th Corr_Age_68_Male_50th Corr_Age_69_Male_50th Corr_Age_70_Male_50th ...
    Corr_Age_71_Male_50th Corr_Age_72_Male_50th Corr_Age_73_Male_50th Corr_Age_74_Male_50th Corr_Age_75_Male_50th ...
    Corr_Age_76_Male_50th Corr_Age_77_Male_50th Corr_Age_78_Male_50th Corr_Age_79_Male_50th Corr_Age_80_Male_50th ...
    Corr_Age_81_Male_50th Corr_Age_82_Male_50th Corr_Age_83_Male_50th Corr_Age_84_Male_50th Corr_Age_85_Male_50th];

My_95th_Male = [Corr_Age_2_Male_95th Corr_Age_3_Male_95th Corr_Age_4_Male_95th Corr_Age_5_Male_95th ...
    Corr_Age_6_Male_95th Corr_Age_7_Male_95th Corr_Age_8_Male_95th Corr_Age_9_Male_95th Corr_Age_10_Male_95th ...
    Corr_Age_11_Male_95th Corr_Age_12_Male_95th Corr_Age_13_Male_95th Corr_Age_14_Male_95th Corr_Age_15_Male_95th ...
    Corr_Age_16_Male_95th Corr_Age_17_Male_95th Corr_Age_18_Male_95th Corr_Age_19_Male_95th Corr_Age_20_Male_95th ...
    Corr_Age_21_Male_95th Corr_Age_22_Male_95th Corr_Age_23_Male_95th Corr_Age_24_Male_95th Corr_Age_25_Male_95th ...
    Corr_Age_26_Male_95th Corr_Age_27_Male_95th Corr_Age_28_Male_95th Corr_Age_29_Male_95th Corr_Age_30_Male_95th ...
    Corr_Age_31_Male_95th Corr_Age_32_Male_95th Corr_Age_33_Male_95th Corr_Age_34_Male_95th Corr_Age_35_Male_95th ...
    Corr_Age_36_Male_95th Corr_Age_37_Male_95th Corr_Age_38_Male_95th Corr_Age_39_Male_95th Corr_Age_40_Male_95th ...
    Corr_Age_41_Male_95th Corr_Age_42_Male_95th Corr_Age_43_Male_95th Corr_Age_44_Male_95th Corr_Age_45_Male_95th ...
    Corr_Age_46_Male_95th Corr_Age_47_Male_95th Corr_Age_48_Male_95th Corr_Age_49_Male_95th Corr_Age_50_Male_95th ...
    Corr_Age_51_Male_95th Corr_Age_52_Male_95th Corr_Age_53_Male_95th Corr_Age_54_Male_95th Corr_Age_55_Male_95th ...
    Corr_Age_56_Male_95th Corr_Age_57_Male_95th Corr_Age_58_Male_95th Corr_Age_59_Male_95th Corr_Age_60_Male_95th ...
    Corr_Age_61_Male_95th Corr_Age_62_Male_95th Corr_Age_63_Male_95th Corr_Age_64_Male_95th Corr_Age_65_Male_95th ...
    Corr_Age_66_Male_95th Corr_Age_67_Male_95th Corr_Age_68_Male_95th Corr_Age_69_Male_95th Corr_Age_70_Male_95th ...
    Corr_Age_71_Male_95th Corr_Age_72_Male_95th Corr_Age_73_Male_95th Corr_Age_74_Male_95th Corr_Age_75_Male_95th ...
    Corr_Age_76_Male_95th Corr_Age_77_Male_95th Corr_Age_78_Male_95th Corr_Age_79_Male_95th Corr_Age_80_Male_95th ...
    Corr_Age_81_Male_95th Corr_Age_82_Male_95th Corr_Age_83_Male_95th Corr_Age_84_Male_95th Corr_Age_85_Male_95th];

My_mean_Male = [Corr_Age_2_Male_mean Corr_Age_3_Male_mean Corr_Age_4_Male_mean Corr_Age_5_Male_mean ...
    Corr_Age_6_Male_mean Corr_Age_7_Male_mean Corr_Age_8_Male_mean Corr_Age_9_Male_mean Corr_Age_10_Male_mean ...
    Corr_Age_11_Male_mean Corr_Age_12_Male_mean Corr_Age_13_Male_mean Corr_Age_14_Male_mean Corr_Age_15_Male_mean ...
    Corr_Age_16_Male_mean Corr_Age_17_Male_mean Corr_Age_18_Male_mean Corr_Age_19_Male_mean Corr_Age_20_Male_mean ...
    Corr_Age_21_Male_mean Corr_Age_22_Male_mean Corr_Age_23_Male_mean Corr_Age_24_Male_mean Corr_Age_25_Male_mean ...
    Corr_Age_26_Male_mean Corr_Age_27_Male_mean Corr_Age_28_Male_mean Corr_Age_29_Male_mean Corr_Age_30_Male_mean ...
    Corr_Age_31_Male_mean Corr_Age_32_Male_mean Corr_Age_33_Male_mean Corr_Age_34_Male_mean Corr_Age_35_Male_mean ...
    Corr_Age_36_Male_mean Corr_Age_37_Male_mean Corr_Age_38_Male_mean Corr_Age_39_Male_mean Corr_Age_40_Male_mean ...
    Corr_Age_41_Male_mean Corr_Age_42_Male_mean Corr_Age_43_Male_mean Corr_Age_44_Male_mean Corr_Age_45_Male_mean ...
    Corr_Age_46_Male_mean Corr_Age_47_Male_mean Corr_Age_48_Male_mean Corr_Age_49_Male_mean Corr_Age_50_Male_mean ...
    Corr_Age_51_Male_mean Corr_Age_52_Male_mean Corr_Age_53_Male_mean Corr_Age_54_Male_mean Corr_Age_55_Male_mean ...
    Corr_Age_56_Male_mean Corr_Age_57_Male_mean Corr_Age_58_Male_mean Corr_Age_59_Male_mean Corr_Age_60_Male_mean ...
    Corr_Age_61_Male_mean Corr_Age_62_Male_mean Corr_Age_63_Male_mean Corr_Age_64_Male_mean Corr_Age_65_Male_mean ...
    Corr_Age_66_Male_mean Corr_Age_67_Male_mean Corr_Age_68_Male_mean Corr_Age_69_Male_mean Corr_Age_70_Male_mean ...
    Corr_Age_71_Male_mean Corr_Age_72_Male_mean Corr_Age_73_Male_mean Corr_Age_74_Male_mean Corr_Age_75_Male_mean ...
    Corr_Age_76_Male_mean Corr_Age_77_Male_mean Corr_Age_78_Male_mean Corr_Age_79_Male_mean Corr_Age_80_Male_mean ...
    Corr_Age_81_Male_mean Corr_Age_82_Male_mean Corr_Age_83_Male_mean Corr_Age_84_Male_mean Corr_Age_85_Male_mean];
%% We show the results
figure;
% For Female
subplot(1,2,1);
hold on;
title('Female')
xlabel('Age (yr)');
ylabel('Correlation coefficients')
xlim([0 91]);
ylim([0.90 1]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

set(gca,'XTick',[0 10 20 30 40 50 60 70 80 90]);

yyy = 0.9:0.01:1;
xxx = 10+yyy*0;
plot(xxx,yyy,'-.','linewidth',0.1,'color','k')

% 02-America
x_data = Age_NHANES_1999_2000;
y_data = Corr_NHANES_1999_2000_Female;
HH1 = plot(x_data,y_data,'o','Markersize',My_MarkerSize,'Color',My_Colors_4(2,:),'LineWidth',My_LineWidth,'MarkerFaceColor','w');
x_data = Age_NHANES_2001_2002;
y_data = Corr_NHANES_2001_2002_Female;
HH1 = plot(x_data,y_data,'o','Markersize',My_MarkerSize,'Color',My_Colors_4(2,:),'LineWidth',My_LineWidth,'MarkerFaceColor','w');
x_data = Age_NHANES_2003_2004;
y_data = Corr_NHANES_2003_2004_Female;
HH1 = plot(x_data,y_data,'o','Markersize',My_MarkerSize,'Color',My_Colors_4(2,:),'LineWidth',My_LineWidth,'MarkerFaceColor','w');
x_data = Age_NHANES_2005_2006;
y_data = Corr_NHANES_2005_2006_Female;
HH1 = plot(x_data,y_data,'o','Markersize',My_MarkerSize,'Color',My_Colors_4(2,:),'LineWidth',My_LineWidth,'MarkerFaceColor','w');
x_data = Age_NHANES_2007_2008;
y_data = Corr_NHANES_2007_2008_Female;
HH1 = plot(x_data,y_data,'o','Markersize',My_MarkerSize,'Color',My_Colors_4(2,:),'LineWidth',My_LineWidth,'MarkerFaceColor','w');
x_data = Age_NHANES_2009_2010;
y_data = Corr_NHANES_2009_2010_Female;
HH1 = plot(x_data,y_data,'o','Markersize',My_MarkerSize,'Color',My_Colors_4(2,:),'LineWidth',My_LineWidth,'MarkerFaceColor','w');
x_data = Age_NHANES_2011_2012;
y_data = Corr_NHANES_2011_2012_Female;
HH1 = plot(x_data,y_data,'o','Markersize',My_MarkerSize,'Color',My_Colors_4(2,:),'LineWidth',My_LineWidth,'MarkerFaceColor','w');
x_data = Age_NHANES_2013_2014;
y_data = Corr_NHANES_2013_2014_Female;
HH1 = plot(x_data,y_data,'o','Markersize',My_MarkerSize,'Color',My_Colors_4(2,:),'LineWidth',My_LineWidth,'MarkerFaceColor','w');
x_data = Age_NHANES_2015_2016;
y_data = Corr_NHANES_2015_2016_Female;
HH1 = plot(x_data,y_data,'o','Markersize',My_MarkerSize,'Color',My_Colors_4(2,:),'LineWidth',My_LineWidth,'MarkerFaceColor','w');
x_data = Age_NHANES_2017_2018;
y_data = Corr_NHANES_2017_2018_Female;
HH1 = plot(x_data,y_data,'o','Markersize',My_MarkerSize,'Color',My_Colors_4(2,:),'LineWidth',My_LineWidth,'MarkerFaceColor','w');
x_data = Age_NHANES_2017_March_2020;
y_data = Corr_NHANES_2017_March_2020_Female;
HH1 = plot(x_data,y_data,'o','Markersize',My_MarkerSize,'Color',My_Colors_4(2,:),'LineWidth',My_LineWidth,'MarkerFaceColor','w');
x_data = Age_NHANES_August_2021_August_2023;
y_data = Corr_NHANES_August_2021_August_2023_Female;
HH1 = plot(x_data,y_data,'o','Markersize',My_MarkerSize,'Color',My_Colors_4(2,:),'LineWidth',My_LineWidth,'MarkerFaceColor','w');

% 5th, mean(50th), 95th
x_data = My_Age_Female;
y_data = My_5th_Female;
HH1 = plot(x_data,y_data,'-','Color',My_Colors_4(1,:),'LineWidth',My_LineWidth_1);
x_data = My_Age_Female;
y_data = My_50th_Female;
HH1 = plot(x_data,y_data,'-','Color',My_Colors_4(2,:),'LineWidth',My_LineWidth_1);
x_data = My_Age_Female;
y_data = My_mean_Female;
HH1 = plot(x_data,y_data,'-','Color',My_Colors_4(3,:),'LineWidth',My_LineWidth_1);
x_data = My_Age_Female;
y_data = My_95th_Female;
HH1 = plot(x_data,y_data,'-','Color',My_Colors_4(4,:),'LineWidth',My_LineWidth_1);

% Legends
HH2 = plot([0 0],[-2 -2],'o','Markersize',My_MarkerSize,'Color',My_Colors_4(2,:),'LineWidth',My_LineWidth,'MarkerFaceColor','w'); % 02-American
HH4 = plot([0 0],[-2 -2],'-','Color',My_Colors_4(1,:),'LineWidth',My_LineWidth_1); % 5th
HH5 = plot([0 0],[-2 -2],'-','Color',My_Colors_4(2,:),'LineWidth',My_LineWidth_1); % 50th
HH6 = plot([0 0],[-2 -2],'-','Color',My_Colors_4(3,:),'LineWidth',My_LineWidth_1); % mean
HH7 = plot([0 0],[-2 -2],'-','Color',My_Colors_4(4,:),'LineWidth',My_LineWidth_1); % 95th
Legend = legend([HH2 HH4 HH5 HH6 HH7],...
    'American',...
    '5th',...
    '50th',...
    'mean',...
    '95th');
set(Legend,'Box','off','location','SouthWest')

% Text


% For Male
subplot(1,2,2);
hold on;
title('Male')
xlabel('Age (yr)');
%ylabel('Correlation coefficients')
xlim([0 91]);
ylim([0.90 1]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

set(gca,'XTick',[0 10 20 30 40 50 60 70 80 90]);

yyy = 0.9:0.01:1;
xxx = 10+yyy*0;
plot(xxx,yyy,'-.','linewidth',0.1,'color','k')

% 02-Europe
x_data = Age_NHANES_1999_2000;
y_data = Corr_NHANES_1999_2000_Male;
HH1 = plot(x_data,y_data,'o','Markersize',My_MarkerSize,'Color',My_Colors_4(2,:),'LineWidth',My_LineWidth,'MarkerFaceColor','w');
x_data = Age_NHANES_2001_2002;
y_data = Corr_NHANES_2001_2002_Male;
HH1 = plot(x_data,y_data,'o','Markersize',My_MarkerSize,'Color',My_Colors_4(2,:),'LineWidth',My_LineWidth,'MarkerFaceColor','w');
x_data = Age_NHANES_2003_2004;
y_data = Corr_NHANES_2003_2004_Male;
HH1 = plot(x_data,y_data,'o','Markersize',My_MarkerSize,'Color',My_Colors_4(2,:),'LineWidth',My_LineWidth,'MarkerFaceColor','w');
x_data = Age_NHANES_2005_2006;
y_data = Corr_NHANES_2005_2006_Male;
HH1 = plot(x_data,y_data,'o','Markersize',My_MarkerSize,'Color',My_Colors_4(2,:),'LineWidth',My_LineWidth,'MarkerFaceColor','w');
x_data = Age_NHANES_2007_2008;
y_data = Corr_NHANES_2007_2008_Male;
HH1 = plot(x_data,y_data,'o','Markersize',My_MarkerSize,'Color',My_Colors_4(2,:),'LineWidth',My_LineWidth,'MarkerFaceColor','w');
x_data = Age_NHANES_2009_2010;
y_data = Corr_NHANES_2009_2010_Male;
HH1 = plot(x_data,y_data,'o','Markersize',My_MarkerSize,'Color',My_Colors_4(2,:),'LineWidth',My_LineWidth,'MarkerFaceColor','w');
x_data = Age_NHANES_2011_2012;
y_data = Corr_NHANES_2011_2012_Male;
HH1 = plot(x_data,y_data,'o','Markersize',My_MarkerSize,'Color',My_Colors_4(2,:),'LineWidth',My_LineWidth,'MarkerFaceColor','w');
x_data = Age_NHANES_2013_2014;
y_data = Corr_NHANES_2013_2014_Male;
HH1 = plot(x_data,y_data,'o','Markersize',My_MarkerSize,'Color',My_Colors_4(2,:),'LineWidth',My_LineWidth,'MarkerFaceColor','w');
x_data = Age_NHANES_2015_2016;
y_data = Corr_NHANES_2015_2016_Male;
HH1 = plot(x_data,y_data,'o','Markersize',My_MarkerSize,'Color',My_Colors_4(2,:),'LineWidth',My_LineWidth,'MarkerFaceColor','w');
x_data = Age_NHANES_2017_2018;
y_data = Corr_NHANES_2017_2018_Male;
HH1 = plot(x_data,y_data,'o','Markersize',My_MarkerSize,'Color',My_Colors_4(2,:),'LineWidth',My_LineWidth,'MarkerFaceColor','w');
x_data = Age_NHANES_2017_March_2020;
y_data = Corr_NHANES_2017_March_2020_Male;
HH1 = plot(x_data,y_data,'o','Markersize',My_MarkerSize,'Color',My_Colors_4(2,:),'LineWidth',My_LineWidth,'MarkerFaceColor','w');
x_data = Age_NHANES_August_2021_August_2023;
y_data = Corr_NHANES_August_2021_August_2023_Male;
HH1 = plot(x_data,y_data,'o','Markersize',My_MarkerSize,'Color',My_Colors_4(2,:),'LineWidth',My_LineWidth,'MarkerFaceColor','w');

% 5th, mean(50th), 95th
x_data = My_Age_Male;
y_data = My_5th_Male;
HH1 = plot(x_data,y_data,'-','Color',My_Colors_4(1,:),'LineWidth',My_LineWidth_1);
x_data = My_Age_Male;
y_data = My_50th_Male;
HH1 = plot(x_data,y_data,'-','Color',My_Colors_4(2,:),'LineWidth',My_LineWidth_1);
x_data = My_Age_Male;
y_data = My_mean_Male;
HH1 = plot(x_data,y_data,'-','Color',My_Colors_4(3,:),'LineWidth',My_LineWidth_1);
x_data = My_Age_Male;
y_data = My_95th_Male;
HH1 = plot(x_data,y_data,'-','Color',My_Colors_4(4,:),'LineWidth',My_LineWidth_1);

% Legends
HH2 = plot([0 0],[-2 -2],'o','Markersize',My_MarkerSize,'Color',My_Colors_4(2,:),'LineWidth',My_LineWidth,'MarkerFaceColor','w'); % 02-American
HH4 = plot([0 0],[-2 -2],'-','Color',My_Colors_4(1,:),'LineWidth',My_LineWidth_1); % 5th
HH5 = plot([0 0],[-2 -2],'-','Color',My_Colors_4(2,:),'LineWidth',My_LineWidth_1); % 50th
HH6 = plot([0 0],[-2 -2],'-','Color',My_Colors_4(3,:),'LineWidth',My_LineWidth_1); % mean
HH7 = plot([0 0],[-2 -2],'-','Color',My_Colors_4(4,:),'LineWidth',My_LineWidth_1); % 95th
Legend = legend([HH2 HH4 HH5 HH6 HH7],...
    'American',...
    '5th',...
    '50th',...
    'mean',...
    '95th');
set(Legend,'Box','off','location','SouthWest')

%%
% We save the percentiles, including 5th, 50th, mean, and 95th
save('My_percentiles_Corr_c1_America.mat','My_Age_Female','My_5th_Female','My_50th_Female',...
    'My_mean_Female','My_95th_Female','My_Age_Male','My_5th_Male','My_50th_Male',...
    'My_mean_Male','My_95th_Male');

%%
% We save the percentiles, including 5th, 50th, mean, and 95th
save('Extended_Data_Fig_1_c.mat','My_Age_Female','My_5th_Female','My_50th_Female',...
    'My_mean_Female','My_95th_Female','My_Age_Male','My_5th_Male','My_50th_Male',...
    'My_mean_Male','My_95th_Male');
