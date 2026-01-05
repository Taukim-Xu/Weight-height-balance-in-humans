%% Source codes for Extended_Data_Fig_1_b
% c = 1
% 01-Europe

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
% 01-Europe
load('./01-Europe/Correlation_coefficient_c1_Western_Europe.mat')
load('./01-Europe/Correlation_coefficient_c1_Southern_Europe.mat')
load('./01-Europe/Correlation_coefficient_c1_Northern_Europe.mat')
load('./01-Europe/Correlation_coefficient_c1_Eastern_Europe.mat')
load('./01-Europe/Correlation_coefficient_c1_Eastern_Central_Europe.mat')
%% We merge them.
Age_All_Female = [Age_14_Netherlands Age_17_France Age_23_Belgium Age_31_Luxembourg ...
    Age_55_Finland Age_15_Spain Age_16_Italy Age_19_Greece Age_33_Portugal ...
    Age_34_Slovenia Age_47_Croatia Age_51_Bulgaria Age_53_Cyprus Age_59_Malta ...
    Age_61_Romania Age_13_Sweden Age_18_Denmark Age_35_Estonia Age_48_Lithuania ...
    Age_57_Latvia Age_11_Austria Age_12_Germany Age_20_Switzerland Age_28_Czech ...
    Age_29_Poland Age_32_Hungary Age_63_Slovakia Age_63_Source_data_Slovakia];

Age_All_Male = [Age_14_Netherlands Age_17_France Age_23_Belgium Age_31_Luxembourg ...
    Age_55_Finland Age_15_Spain Age_16_Italy Age_19_Greece Age_33_Portugal ...
    Age_34_Slovenia Age_47_Croatia Age_51_Bulgaria Age_53_Cyprus Age_59_Malta ...
    Age_61_Romania Age_13_Sweden Age_18_Denmark Age_35_Estonia Age_48_Lithuania ...
    Age_57_Latvia Age_11_Austria Age_12_Germany Age_20_Switzerland Age_28_Czech ...
    Age_29_Poland Age_32_Hungary Age_63_Slovakia Age_63_Source_data_Slovakia];

Corr_All_Female = [Corr_14_Netherlands_Female Corr_17_France_Female Corr_23_Belgium_Female ...
    Corr_31_Luxembourg_Female Corr_55_Finland_Female Corr_15_Spain_Female Corr_16_Italy_Female ...
    Corr_19_Greece_Female Corr_33_Portugal_Female Corr_34_Slovenia_Female Corr_47_Croatia_Female ...
    Corr_51_Bulgaria_Female Corr_53_Cyprus_Female Corr_59_Malta_Female Corr_61_Romania_Female ...
    Corr_13_Sweden_Female Corr_18_Denmark_Female Corr_35_Estonia_Female Corr_48_Lithuania_Female ...
    Corr_57_Latvia_Female Corr_11_Austria_Female Corr_12_Germany_Female Corr_20_Switzerland_Female ...
    Corr_28_Czech_Female Corr_29_Poland_Female Corr_32_Hungary_Female Corr_63_Slovakia_Female ...
    Corr_63_Source_data_Slovakia_Female];

Corr_All_Male = [Corr_14_Netherlands_Male Corr_17_France_Male Corr_23_Belgium_Male ...
    Corr_31_Luxembourg_Male Corr_55_Finland_Male Corr_15_Spain_Male Corr_16_Italy_Male ...
    Corr_19_Greece_Male Corr_33_Portugal_Male Corr_34_Slovenia_Male Corr_47_Croatia_Male ...
    Corr_51_Bulgaria_Male Corr_53_Cyprus_Male Corr_59_Malta_Male Corr_61_Romania_Male ...
    Corr_13_Sweden_Male Corr_18_Denmark_Male Corr_35_Estonia_Male Corr_48_Lithuania_Male ...
    Corr_57_Latvia_Male Corr_11_Austria_Male Corr_12_Germany_Male Corr_20_Switzerland_Male ...
    Corr_28_Czech_Male Corr_29_Poland_Male Corr_32_Hungary_Male Corr_63_Slovakia_Male ...
    Corr_63_Source_data_Slovakia_Male];

%%
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
Corr_Age_86_Female = [];
Corr_Age_87_Female = [];
Corr_Age_88_Female = [];
Corr_Age_89_Female = [];
Corr_Age_90_Female = [];

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
Corr_Age_86_Male = [];
Corr_Age_87_Male = [];
Corr_Age_88_Male = [];
Corr_Age_89_Male = [];
Corr_Age_90_Male = [];

[M N] = size(Corr_All_Female);
for i = 1:N
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
    if Age_All_Female(i) == 86
        Corr_Age_86_Female = [Corr_Age_86_Female Corr_All_Female(i)];
    end
    if Age_All_Female(i) == 87
        Corr_Age_87_Female = [Corr_Age_87_Female Corr_All_Female(i)];
    end
    if Age_All_Female(i) == 88
        Corr_Age_88_Female = [Corr_Age_88_Female Corr_All_Female(i)];
    end
    if Age_All_Female(i) == 89
        Corr_Age_89_Female = [Corr_Age_89_Female Corr_All_Female(i)];
    end
    if Age_All_Female(i) == 90
        Corr_Age_90_Female = [Corr_Age_90_Female Corr_All_Female(i)];
    end
end

[M N] = size(Corr_All_Male);
for i = 1:N
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
    if Age_All_Male(i) == 86
        Corr_Age_86_Male = [Corr_Age_86_Male Corr_All_Male(i)];
    end
    if Age_All_Male(i) == 87
        Corr_Age_87_Male = [Corr_Age_87_Male Corr_All_Male(i)];
    end
    if Age_All_Male(i) == 88
        Corr_Age_88_Male = [Corr_Age_88_Male Corr_All_Male(i)];
    end
    if Age_All_Male(i) == 89
        Corr_Age_89_Male = [Corr_Age_89_Male Corr_All_Male(i)];
    end
    if Age_All_Male(i) == 90
        Corr_Age_90_Male = [Corr_Age_90_Male Corr_All_Male(i)];
    end
end

%% 5th, 50th, 95th, mean
% For Female
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
My_P = prctile(Corr_Age_86_Female,My_Percentile);
Corr_Age_86_Female_5th = My_P(1);
Corr_Age_86_Female_50th = My_P(2);
Corr_Age_86_Female_95th = My_P(3);
Corr_Age_86_Female_mean = mean(Corr_Age_86_Female);
My_P = prctile(Corr_Age_87_Female,My_Percentile);
Corr_Age_87_Female_5th = My_P(1);
Corr_Age_87_Female_50th = My_P(2);
Corr_Age_87_Female_95th = My_P(3);
Corr_Age_87_Female_mean = mean(Corr_Age_87_Female);
My_P = prctile(Corr_Age_88_Female,My_Percentile);
Corr_Age_88_Female_5th = My_P(1);
Corr_Age_88_Female_50th = My_P(2);
Corr_Age_88_Female_95th = My_P(3);
Corr_Age_88_Female_mean = mean(Corr_Age_88_Female);
My_P = prctile(Corr_Age_89_Female,My_Percentile);
Corr_Age_89_Female_5th = My_P(1);
Corr_Age_89_Female_50th = My_P(2);
Corr_Age_89_Female_95th = My_P(3);
Corr_Age_89_Female_mean = mean(Corr_Age_89_Female);
My_P = prctile(Corr_Age_90_Female,My_Percentile);
Corr_Age_90_Female_5th = My_P(1);
Corr_Age_90_Female_50th = My_P(2);
Corr_Age_90_Female_95th = My_P(3);
Corr_Age_90_Female_mean = mean(Corr_Age_90_Female);
% For Male
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
My_P = prctile(Corr_Age_86_Male,My_Percentile);
Corr_Age_86_Male_5th = My_P(1);
Corr_Age_86_Male_50th = My_P(2);
Corr_Age_86_Male_95th = My_P(3);
Corr_Age_86_Male_mean = mean(Corr_Age_86_Male);
My_P = prctile(Corr_Age_87_Male,My_Percentile);
Corr_Age_87_Male_5th = My_P(1);
Corr_Age_87_Male_50th = My_P(2);
Corr_Age_87_Male_95th = My_P(3);
Corr_Age_87_Male_mean = mean(Corr_Age_87_Male);
My_P = prctile(Corr_Age_88_Male,My_Percentile);
Corr_Age_88_Male_5th = My_P(1);
Corr_Age_88_Male_50th = My_P(2);
Corr_Age_88_Male_95th = My_P(3);
Corr_Age_88_Male_mean = mean(Corr_Age_88_Male);
My_P = prctile(Corr_Age_89_Male,My_Percentile);
Corr_Age_89_Male_5th = My_P(1);
Corr_Age_89_Male_50th = My_P(2);
Corr_Age_89_Male_95th = My_P(3);
Corr_Age_89_Male_mean = mean(Corr_Age_89_Male);
My_P = prctile(Corr_Age_90_Male,My_Percentile);
Corr_Age_90_Male_5th = My_P(1);
Corr_Age_90_Male_50th = My_P(2);
Corr_Age_90_Male_95th = My_P(3);
Corr_Age_90_Male_mean = mean(Corr_Age_90_Male);

My_Age_Female = 50:90;
My_5th_Female = [Corr_Age_50_Female_5th ...
    Corr_Age_51_Female_5th Corr_Age_52_Female_5th Corr_Age_53_Female_5th Corr_Age_54_Female_5th Corr_Age_55_Female_5th ...
    Corr_Age_56_Female_5th Corr_Age_57_Female_5th Corr_Age_58_Female_5th Corr_Age_59_Female_5th Corr_Age_60_Female_5th ...
    Corr_Age_61_Female_5th Corr_Age_62_Female_5th Corr_Age_63_Female_5th Corr_Age_64_Female_5th Corr_Age_65_Female_5th ...
    Corr_Age_66_Female_5th Corr_Age_67_Female_5th Corr_Age_68_Female_5th Corr_Age_69_Female_5th Corr_Age_70_Female_5th ...
    Corr_Age_71_Female_5th Corr_Age_72_Female_5th Corr_Age_73_Female_5th Corr_Age_74_Female_5th Corr_Age_75_Female_5th ...
    Corr_Age_76_Female_5th Corr_Age_77_Female_5th Corr_Age_78_Female_5th Corr_Age_79_Female_5th Corr_Age_80_Female_5th ...
    Corr_Age_81_Female_5th Corr_Age_82_Female_5th Corr_Age_83_Female_5th Corr_Age_84_Female_5th Corr_Age_85_Female_5th ...
    Corr_Age_86_Female_5th Corr_Age_87_Female_5th Corr_Age_88_Female_5th Corr_Age_89_Female_5th Corr_Age_90_Female_5th];

My_50th_Female = [Corr_Age_50_Female_50th ...
    Corr_Age_51_Female_50th Corr_Age_52_Female_50th Corr_Age_53_Female_50th Corr_Age_54_Female_50th Corr_Age_55_Female_50th ...
    Corr_Age_56_Female_50th Corr_Age_57_Female_50th Corr_Age_58_Female_50th Corr_Age_59_Female_50th Corr_Age_60_Female_50th ...
    Corr_Age_61_Female_50th Corr_Age_62_Female_50th Corr_Age_63_Female_50th Corr_Age_64_Female_50th Corr_Age_65_Female_50th ...
    Corr_Age_66_Female_50th Corr_Age_67_Female_50th Corr_Age_68_Female_50th Corr_Age_69_Female_50th Corr_Age_70_Female_50th ...
    Corr_Age_71_Female_50th Corr_Age_72_Female_50th Corr_Age_73_Female_50th Corr_Age_74_Female_50th Corr_Age_75_Female_50th ...
    Corr_Age_76_Female_50th Corr_Age_77_Female_50th Corr_Age_78_Female_50th Corr_Age_79_Female_50th Corr_Age_80_Female_50th ...
    Corr_Age_81_Female_50th Corr_Age_82_Female_50th Corr_Age_83_Female_50th Corr_Age_84_Female_50th Corr_Age_85_Female_50th ...
    Corr_Age_86_Female_50th Corr_Age_87_Female_50th Corr_Age_88_Female_50th Corr_Age_89_Female_50th Corr_Age_90_Female_50th];

My_95th_Female = [Corr_Age_50_Female_95th ...
    Corr_Age_51_Female_95th Corr_Age_52_Female_95th Corr_Age_53_Female_95th Corr_Age_54_Female_95th Corr_Age_55_Female_95th ...
    Corr_Age_56_Female_95th Corr_Age_57_Female_95th Corr_Age_58_Female_95th Corr_Age_59_Female_95th Corr_Age_60_Female_95th ...
    Corr_Age_61_Female_95th Corr_Age_62_Female_95th Corr_Age_63_Female_95th Corr_Age_64_Female_95th Corr_Age_65_Female_95th ...
    Corr_Age_66_Female_95th Corr_Age_67_Female_95th Corr_Age_68_Female_95th Corr_Age_69_Female_95th Corr_Age_70_Female_95th ...
    Corr_Age_71_Female_95th Corr_Age_72_Female_95th Corr_Age_73_Female_95th Corr_Age_74_Female_95th Corr_Age_75_Female_95th ...
    Corr_Age_76_Female_95th Corr_Age_77_Female_95th Corr_Age_78_Female_95th Corr_Age_79_Female_95th Corr_Age_80_Female_95th ...
    Corr_Age_81_Female_95th Corr_Age_82_Female_95th Corr_Age_83_Female_95th Corr_Age_84_Female_95th Corr_Age_85_Female_95th ...
    Corr_Age_86_Female_95th Corr_Age_87_Female_95th Corr_Age_88_Female_95th Corr_Age_89_Female_95th Corr_Age_90_Female_95th];

My_mean_Female = [Corr_Age_50_Female_mean ...
    Corr_Age_51_Female_mean Corr_Age_52_Female_mean Corr_Age_53_Female_mean Corr_Age_54_Female_mean Corr_Age_55_Female_mean ...
    Corr_Age_56_Female_mean Corr_Age_57_Female_mean Corr_Age_58_Female_mean Corr_Age_59_Female_mean Corr_Age_60_Female_mean ...
    Corr_Age_61_Female_mean Corr_Age_62_Female_mean Corr_Age_63_Female_mean Corr_Age_64_Female_mean Corr_Age_65_Female_mean ...
    Corr_Age_66_Female_mean Corr_Age_67_Female_mean Corr_Age_68_Female_mean Corr_Age_69_Female_mean Corr_Age_70_Female_mean ...
    Corr_Age_71_Female_mean Corr_Age_72_Female_mean Corr_Age_73_Female_mean Corr_Age_74_Female_mean Corr_Age_75_Female_mean ...
    Corr_Age_76_Female_mean Corr_Age_77_Female_mean Corr_Age_78_Female_mean Corr_Age_79_Female_mean Corr_Age_80_Female_mean ...
    Corr_Age_81_Female_mean Corr_Age_82_Female_mean Corr_Age_83_Female_mean Corr_Age_84_Female_mean Corr_Age_85_Female_mean ...
    Corr_Age_86_Female_mean Corr_Age_87_Female_mean Corr_Age_88_Female_mean Corr_Age_89_Female_mean Corr_Age_90_Female_mean];

My_Age_Male = 50:90;
My_5th_Male = [Corr_Age_50_Male_5th ...
    Corr_Age_51_Male_5th Corr_Age_52_Male_5th Corr_Age_53_Male_5th Corr_Age_54_Male_5th Corr_Age_55_Male_5th ...
    Corr_Age_56_Male_5th Corr_Age_57_Male_5th Corr_Age_58_Male_5th Corr_Age_59_Male_5th Corr_Age_60_Male_5th ...
    Corr_Age_61_Male_5th Corr_Age_62_Male_5th Corr_Age_63_Male_5th Corr_Age_64_Male_5th Corr_Age_65_Male_5th ...
    Corr_Age_66_Male_5th Corr_Age_67_Male_5th Corr_Age_68_Male_5th Corr_Age_69_Male_5th Corr_Age_70_Male_5th ...
    Corr_Age_71_Male_5th Corr_Age_72_Male_5th Corr_Age_73_Male_5th Corr_Age_74_Male_5th Corr_Age_75_Male_5th ...
    Corr_Age_76_Male_5th Corr_Age_77_Male_5th Corr_Age_78_Male_5th Corr_Age_79_Male_5th Corr_Age_80_Male_5th ...
    Corr_Age_81_Male_5th Corr_Age_82_Male_5th Corr_Age_83_Male_5th Corr_Age_84_Male_5th Corr_Age_85_Male_5th ...
    Corr_Age_86_Male_5th Corr_Age_87_Male_5th Corr_Age_88_Male_5th Corr_Age_89_Male_5th Corr_Age_90_Male_5th];

My_50th_Male = [Corr_Age_50_Male_50th ...
    Corr_Age_51_Male_50th Corr_Age_52_Male_50th Corr_Age_53_Male_50th Corr_Age_54_Male_50th Corr_Age_55_Male_50th ...
    Corr_Age_56_Male_50th Corr_Age_57_Male_50th Corr_Age_58_Male_50th Corr_Age_59_Male_50th Corr_Age_60_Male_50th ...
    Corr_Age_61_Male_50th Corr_Age_62_Male_50th Corr_Age_63_Male_50th Corr_Age_64_Male_50th Corr_Age_65_Male_50th ...
    Corr_Age_66_Male_50th Corr_Age_67_Male_50th Corr_Age_68_Male_50th Corr_Age_69_Male_50th Corr_Age_70_Male_50th ...
    Corr_Age_71_Male_50th Corr_Age_72_Male_50th Corr_Age_73_Male_50th Corr_Age_74_Male_50th Corr_Age_75_Male_50th ...
    Corr_Age_76_Male_50th Corr_Age_77_Male_50th Corr_Age_78_Male_50th Corr_Age_79_Male_50th Corr_Age_80_Male_50th ...
    Corr_Age_81_Male_50th Corr_Age_82_Male_50th Corr_Age_83_Male_50th Corr_Age_84_Male_50th Corr_Age_85_Male_50th ...
    Corr_Age_86_Male_50th Corr_Age_87_Male_50th Corr_Age_88_Male_50th Corr_Age_89_Male_50th Corr_Age_90_Male_50th];

My_95th_Male = [Corr_Age_50_Male_95th ...
    Corr_Age_51_Male_95th Corr_Age_52_Male_95th Corr_Age_53_Male_95th Corr_Age_54_Male_95th Corr_Age_55_Male_95th ...
    Corr_Age_56_Male_95th Corr_Age_57_Male_95th Corr_Age_58_Male_95th Corr_Age_59_Male_95th Corr_Age_60_Male_95th ...
    Corr_Age_61_Male_95th Corr_Age_62_Male_95th Corr_Age_63_Male_95th Corr_Age_64_Male_95th Corr_Age_65_Male_95th ...
    Corr_Age_66_Male_95th Corr_Age_67_Male_95th Corr_Age_68_Male_95th Corr_Age_69_Male_95th Corr_Age_70_Male_95th ...
    Corr_Age_71_Male_95th Corr_Age_72_Male_95th Corr_Age_73_Male_95th Corr_Age_74_Male_95th Corr_Age_75_Male_95th ...
    Corr_Age_76_Male_95th Corr_Age_77_Male_95th Corr_Age_78_Male_95th Corr_Age_79_Male_95th Corr_Age_80_Male_95th ...
    Corr_Age_81_Male_95th Corr_Age_82_Male_95th Corr_Age_83_Male_95th Corr_Age_84_Male_95th Corr_Age_85_Male_95th ...
    Corr_Age_86_Male_95th Corr_Age_87_Male_95th Corr_Age_88_Male_95th Corr_Age_89_Male_95th Corr_Age_90_Male_95th];

My_mean_Male = [Corr_Age_50_Male_mean ...
    Corr_Age_51_Male_mean Corr_Age_52_Male_mean Corr_Age_53_Male_mean Corr_Age_54_Male_mean Corr_Age_55_Male_mean ...
    Corr_Age_56_Male_mean Corr_Age_57_Male_mean Corr_Age_58_Male_mean Corr_Age_59_Male_mean Corr_Age_60_Male_mean ...
    Corr_Age_61_Male_mean Corr_Age_62_Male_mean Corr_Age_63_Male_mean Corr_Age_64_Male_mean Corr_Age_65_Male_mean ...
    Corr_Age_66_Male_mean Corr_Age_67_Male_mean Corr_Age_68_Male_mean Corr_Age_69_Male_mean Corr_Age_70_Male_mean ...
    Corr_Age_71_Male_mean Corr_Age_72_Male_mean Corr_Age_73_Male_mean Corr_Age_74_Male_mean Corr_Age_75_Male_mean ...
    Corr_Age_76_Male_mean Corr_Age_77_Male_mean Corr_Age_78_Male_mean Corr_Age_79_Male_mean Corr_Age_80_Male_mean ...
    Corr_Age_81_Male_mean Corr_Age_82_Male_mean Corr_Age_83_Male_mean Corr_Age_84_Male_mean Corr_Age_85_Male_mean ...
    Corr_Age_86_Male_mean Corr_Age_87_Male_mean Corr_Age_88_Male_mean Corr_Age_89_Male_mean Corr_Age_90_Male_mean];

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

% 01-Europe
% Western_Europe
x_data = Age_14_Netherlands;
y_data = Corr_14_Netherlands_Female;
HH1 = plot(x_data,y_data,'*','Markersize',My_MarkerSize,'Color',My_Colors_4(1,:),'LineWidth',My_LineWidth,'MarkerFaceColor','w');
x_data = Age_17_France;
y_data = Corr_17_France_Female;
HH1 = plot(x_data,y_data,'*','Markersize',My_MarkerSize,'Color',My_Colors_4(1,:),'LineWidth',My_LineWidth,'MarkerFaceColor','w');
x_data = Age_23_Belgium;
y_data = Corr_23_Belgium_Female;
HH1 = plot(x_data,y_data,'*','Markersize',My_MarkerSize,'Color',My_Colors_4(1,:),'LineWidth',My_LineWidth,'MarkerFaceColor','w');
x_data = Age_31_Luxembourg;
y_data = Corr_31_Luxembourg_Female;
HH1 = plot(x_data,y_data,'*','Markersize',My_MarkerSize,'Color',My_Colors_4(1,:),'LineWidth',My_LineWidth,'MarkerFaceColor','w');
x_data = Age_55_Finland;
y_data = Corr_55_Finland_Female;
HH1 = plot(x_data,y_data,'*','Markersize',My_MarkerSize,'Color',My_Colors_4(1,:),'LineWidth',My_LineWidth,'MarkerFaceColor','w');
% Southern_Europe
x_data = Age_15_Spain;
y_data = Corr_15_Spain_Female;
HH1 = plot(x_data,y_data,'*','Markersize',My_MarkerSize,'Color',My_Colors_4(1,:),'LineWidth',My_LineWidth,'MarkerFaceColor','w');
x_data = Age_16_Italy;
y_data = Corr_16_Italy_Female;
HH1 = plot(x_data,y_data,'*','Markersize',My_MarkerSize,'Color',My_Colors_4(1,:),'LineWidth',My_LineWidth,'MarkerFaceColor','w');
x_data = Age_19_Greece;
y_data = Corr_19_Greece_Female;
HH1 = plot(x_data,y_data,'*','Markersize',My_MarkerSize,'Color',My_Colors_4(1,:),'LineWidth',My_LineWidth,'MarkerFaceColor','w');
x_data = Age_33_Portugal;
y_data = Corr_33_Portugal_Female;
HH1 = plot(x_data,y_data,'*','Markersize',My_MarkerSize,'Color',My_Colors_4(1,:),'LineWidth',My_LineWidth,'MarkerFaceColor','w');
x_data = Age_34_Slovenia;
y_data = Corr_34_Slovenia_Female;
HH1 = plot(x_data,y_data,'*','Markersize',My_MarkerSize,'Color',My_Colors_4(1,:),'LineWidth',My_LineWidth,'MarkerFaceColor','w');
x_data = Age_47_Croatia;
y_data = Corr_47_Croatia_Female;
HH1 = plot(x_data,y_data,'*','Markersize',My_MarkerSize,'Color',My_Colors_4(1,:),'LineWidth',My_LineWidth,'MarkerFaceColor','w');
x_data = Age_51_Bulgaria;
y_data = Corr_51_Bulgaria_Female;
HH1 = plot(x_data,y_data,'*','Markersize',My_MarkerSize,'Color',My_Colors_4(1,:),'LineWidth',My_LineWidth,'MarkerFaceColor','w');
x_data = Age_53_Cyprus;
y_data = Corr_53_Cyprus_Female;
HH1 = plot(x_data,y_data,'*','Markersize',My_MarkerSize,'Color',My_Colors_4(1,:),'LineWidth',My_LineWidth,'MarkerFaceColor','w');
x_data = Age_59_Malta;
y_data = Corr_59_Malta_Female;
HH1 = plot(x_data,y_data,'*','Markersize',My_MarkerSize,'Color',My_Colors_4(1,:),'LineWidth',My_LineWidth,'MarkerFaceColor','w');
x_data = Age_61_Romania;
y_data = Corr_61_Romania_Female;
HH1 = plot(x_data,y_data,'*','Markersize',My_MarkerSize,'Color',My_Colors_4(1,:),'LineWidth',My_LineWidth,'MarkerFaceColor','w');
% Northern_Europe
x_data = Age_13_Sweden;
y_data = Corr_13_Sweden_Female;
HH1 = plot(x_data,y_data,'*','Markersize',My_MarkerSize,'Color',My_Colors_4(1,:),'LineWidth',My_LineWidth,'MarkerFaceColor','w');
x_data = Age_18_Denmark;
y_data = Corr_18_Denmark_Female;
HH1 = plot(x_data,y_data,'*','Markersize',My_MarkerSize,'Color',My_Colors_4(1,:),'LineWidth',My_LineWidth,'MarkerFaceColor','w');
% Eastern_Europe
x_data = Age_35_Estonia;
y_data = Corr_35_Estonia_Female;
HH1 = plot(x_data,y_data,'*','Markersize',My_MarkerSize,'Color',My_Colors_4(1,:),'LineWidth',My_LineWidth,'MarkerFaceColor','w');
x_data = Age_48_Lithuania;
y_data = Corr_48_Lithuania_Female;
HH1 = plot(x_data,y_data,'*','Markersize',My_MarkerSize,'Color',My_Colors_4(1,:),'LineWidth',My_LineWidth,'MarkerFaceColor','w');
x_data = Age_57_Latvia;
y_data = Corr_57_Latvia_Female;
HH1 = plot(x_data,y_data,'*','Markersize',My_MarkerSize,'Color',My_Colors_4(1,:),'LineWidth',My_LineWidth,'MarkerFaceColor','w');
% Eastern_Central_Europe
x_data = Age_11_Austria;
y_data = Corr_11_Austria_Female;
HH1 = plot(x_data,y_data,'*','Markersize',My_MarkerSize,'Color',My_Colors_4(1,:),'LineWidth',My_LineWidth,'MarkerFaceColor','w');
x_data = Age_12_Germany;
y_data = Corr_12_Germany_Female;
HH1 = plot(x_data,y_data,'*','Markersize',My_MarkerSize,'Color',My_Colors_4(1,:),'LineWidth',My_LineWidth,'MarkerFaceColor','w');
x_data = Age_20_Switzerland;
y_data = Corr_20_Switzerland_Female;
HH1 = plot(x_data,y_data,'*','Markersize',My_MarkerSize,'Color',My_Colors_4(1,:),'LineWidth',My_LineWidth,'MarkerFaceColor','w');
x_data = Age_28_Czech;
y_data = Corr_28_Czech_Female;
HH1 = plot(x_data,y_data,'*','Markersize',My_MarkerSize,'Color',My_Colors_4(1,:),'LineWidth',My_LineWidth,'MarkerFaceColor','w');
x_data = Age_29_Poland;
y_data = Corr_29_Poland_Female;
HH1 = plot(x_data,y_data,'*','Markersize',My_MarkerSize,'Color',My_Colors_4(1,:),'LineWidth',My_LineWidth,'MarkerFaceColor','w');
x_data = Age_32_Hungary;
y_data = Corr_32_Hungary_Female;
HH1 = plot(x_data,y_data,'*','Markersize',My_MarkerSize,'Color',My_Colors_4(1,:),'LineWidth',My_LineWidth,'MarkerFaceColor','w');
x_data = Age_63_Slovakia;
y_data = Corr_63_Slovakia_Female;
HH1 = plot(x_data,y_data,'*','Markersize',My_MarkerSize,'Color',My_Colors_4(1,:),'LineWidth',My_LineWidth,'MarkerFaceColor','w');

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
HH1 = plot([0 0],[-2 -2],'*','Markersize',My_MarkerSize,'Color',My_Colors_4(1,:),'LineWidth',My_LineWidth,'MarkerFaceColor','w'); % 01-Europe
HH4 = plot([0 0],[-2 -2],'-','Color',My_Colors_4(1,:),'LineWidth',My_LineWidth_1); % 5th
HH5 = plot([0 0],[-2 -2],'-','Color',My_Colors_4(2,:),'LineWidth',My_LineWidth_1); % 50th
HH6 = plot([0 0],[-2 -2],'-','Color',My_Colors_4(3,:),'LineWidth',My_LineWidth_1); % mean
HH7 = plot([0 0],[-2 -2],'-','Color',My_Colors_4(4,:),'LineWidth',My_LineWidth_1); % 95th
Legend = legend([HH1 HH4 HH5 HH6 HH7],...
    'Europe',...
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

% 01-Europe
% Western_Europe
x_data = Age_14_Netherlands;
y_data = Corr_14_Netherlands_Male;
HH1 = plot(x_data,y_data,'*','Markersize',My_MarkerSize,'Color',My_Colors_4(1,:),'LineWidth',My_LineWidth,'MarkerFaceColor','w');
x_data = Age_17_France;
y_data = Corr_17_France_Male;
HH1 = plot(x_data,y_data,'*','Markersize',My_MarkerSize,'Color',My_Colors_4(1,:),'LineWidth',My_LineWidth,'MarkerFaceColor','w');
x_data = Age_23_Belgium;
y_data = Corr_23_Belgium_Male;
HH1 = plot(x_data,y_data,'*','Markersize',My_MarkerSize,'Color',My_Colors_4(1,:),'LineWidth',My_LineWidth,'MarkerFaceColor','w');
x_data = Age_31_Luxembourg;
y_data = Corr_31_Luxembourg_Male;
HH1 = plot(x_data,y_data,'*','Markersize',My_MarkerSize,'Color',My_Colors_4(1,:),'LineWidth',My_LineWidth,'MarkerFaceColor','w');
x_data = Age_55_Finland;
y_data = Corr_55_Finland_Male;
HH1 = plot(x_data,y_data,'*','Markersize',My_MarkerSize,'Color',My_Colors_4(1,:),'LineWidth',My_LineWidth,'MarkerFaceColor','w');
% Southern_Europe
x_data = Age_15_Spain;
y_data = Corr_15_Spain_Male;
HH1 = plot(x_data,y_data,'*','Markersize',My_MarkerSize,'Color',My_Colors_4(1,:),'LineWidth',My_LineWidth,'MarkerFaceColor','w');
x_data = Age_16_Italy;
y_data = Corr_16_Italy_Male;
HH1 = plot(x_data,y_data,'*','Markersize',My_MarkerSize,'Color',My_Colors_4(1,:),'LineWidth',My_LineWidth,'MarkerFaceColor','w');
x_data = Age_19_Greece;
y_data = Corr_19_Greece_Male;
HH1 = plot(x_data,y_data,'*','Markersize',My_MarkerSize,'Color',My_Colors_4(1,:),'LineWidth',My_LineWidth,'MarkerFaceColor','w');
x_data = Age_33_Portugal;
y_data = Corr_33_Portugal_Male;
HH1 = plot(x_data,y_data,'*','Markersize',My_MarkerSize,'Color',My_Colors_4(1,:),'LineWidth',My_LineWidth,'MarkerFaceColor','w');
x_data = Age_34_Slovenia;
y_data = Corr_34_Slovenia_Male;
HH1 = plot(x_data,y_data,'*','Markersize',My_MarkerSize,'Color',My_Colors_4(1,:),'LineWidth',My_LineWidth,'MarkerFaceColor','w');
x_data = Age_47_Croatia;
y_data = Corr_47_Croatia_Male;
HH1 = plot(x_data,y_data,'*','Markersize',My_MarkerSize,'Color',My_Colors_4(1,:),'LineWidth',My_LineWidth,'MarkerFaceColor','w');
x_data = Age_51_Bulgaria;
y_data = Corr_51_Bulgaria_Male;
HH1 = plot(x_data,y_data,'*','Markersize',My_MarkerSize,'Color',My_Colors_4(1,:),'LineWidth',My_LineWidth,'MarkerFaceColor','w');
x_data = Age_53_Cyprus;
y_data = Corr_53_Cyprus_Male;
HH1 = plot(x_data,y_data,'*','Markersize',My_MarkerSize,'Color',My_Colors_4(1,:),'LineWidth',My_LineWidth,'MarkerFaceColor','w');
x_data = Age_59_Malta;
y_data = Corr_59_Malta_Male;
HH1 = plot(x_data,y_data,'*','Markersize',My_MarkerSize,'Color',My_Colors_4(1,:),'LineWidth',My_LineWidth,'MarkerFaceColor','w');
x_data = Age_61_Romania;
y_data = Corr_61_Romania_Male;
HH1 = plot(x_data,y_data,'*','Markersize',My_MarkerSize,'Color',My_Colors_4(1,:),'LineWidth',My_LineWidth,'MarkerFaceColor','w');
% Northern_Europe
x_data = Age_13_Sweden;
y_data = Corr_13_Sweden_Male;
HH1 = plot(x_data,y_data,'*','Markersize',My_MarkerSize,'Color',My_Colors_4(1,:),'LineWidth',My_LineWidth,'MarkerFaceColor','w');
x_data = Age_18_Denmark;
y_data = Corr_18_Denmark_Male;
HH1 = plot(x_data,y_data,'*','Markersize',My_MarkerSize,'Color',My_Colors_4(1,:),'LineWidth',My_LineWidth,'MarkerFaceColor','w');
% Eastern_Europe
x_data = Age_35_Estonia;
y_data = Corr_35_Estonia_Male;
HH1 = plot(x_data,y_data,'*','Markersize',My_MarkerSize,'Color',My_Colors_4(1,:),'LineWidth',My_LineWidth,'MarkerFaceColor','w');
x_data = Age_48_Lithuania;
y_data = Corr_48_Lithuania_Male;
HH1 = plot(x_data,y_data,'*','Markersize',My_MarkerSize,'Color',My_Colors_4(1,:),'LineWidth',My_LineWidth,'MarkerFaceColor','w');
x_data = Age_57_Latvia;
y_data = Corr_57_Latvia_Male;
HH1 = plot(x_data,y_data,'*','Markersize',My_MarkerSize,'Color',My_Colors_4(1,:),'LineWidth',My_LineWidth,'MarkerFaceColor','w');
% Eastern_Central_Europe
x_data = Age_11_Austria;
y_data = Corr_11_Austria_Male;
HH1 = plot(x_data,y_data,'*','Markersize',My_MarkerSize,'Color',My_Colors_4(1,:),'LineWidth',My_LineWidth,'MarkerFaceColor','w');
x_data = Age_12_Germany;
y_data = Corr_12_Germany_Male;
HH1 = plot(x_data,y_data,'*','Markersize',My_MarkerSize,'Color',My_Colors_4(1,:),'LineWidth',My_LineWidth,'MarkerFaceColor','w');
x_data = Age_20_Switzerland;
y_data = Corr_20_Switzerland_Male;
HH1 = plot(x_data,y_data,'*','Markersize',My_MarkerSize,'Color',My_Colors_4(1,:),'LineWidth',My_LineWidth,'MarkerFaceColor','w');
x_data = Age_28_Czech;
y_data = Corr_28_Czech_Male;
HH1 = plot(x_data,y_data,'*','Markersize',My_MarkerSize,'Color',My_Colors_4(1,:),'LineWidth',My_LineWidth,'MarkerFaceColor','w');
x_data = Age_29_Poland;
y_data = Corr_29_Poland_Male;
HH1 = plot(x_data,y_data,'*','Markersize',My_MarkerSize,'Color',My_Colors_4(1,:),'LineWidth',My_LineWidth,'MarkerFaceColor','w');
x_data = Age_32_Hungary;
y_data = Corr_32_Hungary_Male;
HH1 = plot(x_data,y_data,'*','Markersize',My_MarkerSize,'Color',My_Colors_4(1,:),'LineWidth',My_LineWidth,'MarkerFaceColor','w');
x_data = Age_63_Slovakia;
y_data = Corr_63_Slovakia_Male;
HH1 = plot(x_data,y_data,'*','Markersize',My_MarkerSize,'Color',My_Colors_4(1,:),'LineWidth',My_LineWidth,'MarkerFaceColor','w');

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
HH1 = plot([0 0],[-2 -2],'*','Markersize',My_MarkerSize,'Color',My_Colors_4(1,:),'LineWidth',My_LineWidth,'MarkerFaceColor','w'); % 01-Europe
HH4 = plot([0 0],[-2 -2],'-','Color',My_Colors_4(1,:),'LineWidth',My_LineWidth_1); % 5th
HH5 = plot([0 0],[-2 -2],'-','Color',My_Colors_4(2,:),'LineWidth',My_LineWidth_1); % 50th
HH6 = plot([0 0],[-2 -2],'-','Color',My_Colors_4(3,:),'LineWidth',My_LineWidth_1); % mean
HH7 = plot([0 0],[-2 -2],'-','Color',My_Colors_4(4,:),'LineWidth',My_LineWidth_1); % 95th
Legend = legend([HH1 HH4 HH5 HH6 HH7],...
    'Europe',...
    '5th',...
    '50th',...
    'mean',...
    '95th');
set(Legend,'Box','off','location','SouthWest')

%%
% We save the percentiles, including 5th, 50th, mean, and 95th
save('Extended_Data_Fig_1_b.mat','My_Age_Female','My_5th_Female','My_50th_Female',...
    'My_mean_Female','My_95th_Female','My_Age_Male','My_5th_Male','My_50th_Male',...
    'My_mean_Male','My_95th_Male');
