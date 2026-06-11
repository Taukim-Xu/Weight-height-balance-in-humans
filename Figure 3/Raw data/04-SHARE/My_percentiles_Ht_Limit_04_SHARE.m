
%%
load('Ht_Limit_04_SHARE.mat')

%% We merge them.
Age_All_Female = [Age_14_Netherlands Age_17_France Age_23_Belgium Age_31_Luxembourg ...
    Age_55_Finland Age_15_Spain Age_16_Italy Age_19_Greece Age_33_Portugal ...
    Age_34_Slovenia Age_47_Croatia Age_51_Bulgaria Age_53_Cyprus Age_59_Malta ...
    Age_61_Romania Age_13_Sweden Age_18_Denmark Age_35_Estonia Age_48_Lithuania ...
    Age_57_Latvia Age_11_Austria Age_12_Germany Age_20_Switzerland Age_28_Czech ...
    Age_29_Poland Age_32_Hungary Age_63_Slovakia Age_25_Israel];

Age_All_Male = [Age_14_Netherlands Age_17_France Age_23_Belgium Age_31_Luxembourg ...
    Age_55_Finland Age_15_Spain Age_16_Italy Age_19_Greece Age_33_Portugal ...
    Age_34_Slovenia Age_47_Croatia Age_51_Bulgaria Age_53_Cyprus Age_59_Malta ...
    Age_61_Romania Age_13_Sweden Age_18_Denmark Age_35_Estonia Age_48_Lithuania ...
    Age_57_Latvia Age_11_Austria Age_12_Germany Age_20_Switzerland Age_28_Czech ...
    Age_29_Poland Age_32_Hungary Age_63_Slovakia Age_25_Israel];

Proportion_Ht_All_Female = [Proportion_Ht_14_Netherlands_Female Proportion_Ht_17_France_Female Proportion_Ht_23_Belgium_Female ...
    Proportion_Ht_31_Luxembourg_Female Proportion_Ht_55_Finland_Female Proportion_Ht_15_Spain_Female Proportion_Ht_16_Italy_Female ...
    Proportion_Ht_19_Greece_Female Proportion_Ht_33_Portugal_Female Proportion_Ht_34_Slovenia_Female Proportion_Ht_47_Croatia_Female ...
    Proportion_Ht_51_Bulgaria_Female Proportion_Ht_53_Cyprus_Female Proportion_Ht_59_Malta_Female Proportion_Ht_61_Romania_Female ...
    Proportion_Ht_13_Sweden_Female Proportion_Ht_18_Denmark_Female Proportion_Ht_35_Estonia_Female Proportion_Ht_48_Lithuania_Female ...
    Proportion_Ht_57_Latvia_Female Proportion_Ht_11_Austria_Female Proportion_Ht_12_Germany_Female Proportion_Ht_20_Switzerland_Female ...
    Proportion_Ht_28_Czech_Female Proportion_Ht_29_Poland_Female Proportion_Ht_32_Hungary_Female Proportion_Ht_63_Slovakia_Female ...
    Proportion_Ht_25_Israel_Female];

Proportion_Ht_All_Male = [Proportion_Ht_14_Netherlands_Male Proportion_Ht_17_France_Male Proportion_Ht_23_Belgium_Male ...
    Proportion_Ht_31_Luxembourg_Male Proportion_Ht_55_Finland_Male Proportion_Ht_15_Spain_Male Proportion_Ht_16_Italy_Male ...
    Proportion_Ht_19_Greece_Male Proportion_Ht_33_Portugal_Male Proportion_Ht_34_Slovenia_Male Proportion_Ht_47_Croatia_Male ...
    Proportion_Ht_51_Bulgaria_Male Proportion_Ht_53_Cyprus_Male Proportion_Ht_59_Malta_Male Proportion_Ht_61_Romania_Male ...
    Proportion_Ht_13_Sweden_Male Proportion_Ht_18_Denmark_Male Proportion_Ht_35_Estonia_Male Proportion_Ht_48_Lithuania_Male ...
    Proportion_Ht_57_Latvia_Male Proportion_Ht_11_Austria_Male Proportion_Ht_12_Germany_Male Proportion_Ht_20_Switzerland_Male ...
    Proportion_Ht_28_Czech_Male Proportion_Ht_29_Poland_Male Proportion_Ht_32_Hungary_Male Proportion_Ht_63_Slovakia_Male ...
    Proportion_Ht_25_Israel_Male];

%%
Proportion_Ht_Age_50_Female = [];
Proportion_Ht_Age_51_Female = [];
Proportion_Ht_Age_52_Female = [];
Proportion_Ht_Age_53_Female = [];
Proportion_Ht_Age_54_Female = [];
Proportion_Ht_Age_55_Female = [];
Proportion_Ht_Age_56_Female = [];
Proportion_Ht_Age_57_Female = [];
Proportion_Ht_Age_58_Female = [];
Proportion_Ht_Age_59_Female = [];
Proportion_Ht_Age_60_Female = [];
Proportion_Ht_Age_61_Female = [];
Proportion_Ht_Age_62_Female = [];
Proportion_Ht_Age_63_Female = [];
Proportion_Ht_Age_64_Female = [];
Proportion_Ht_Age_65_Female = [];
Proportion_Ht_Age_66_Female = [];
Proportion_Ht_Age_67_Female = [];
Proportion_Ht_Age_68_Female = [];
Proportion_Ht_Age_69_Female = [];
Proportion_Ht_Age_70_Female = [];
Proportion_Ht_Age_71_Female = [];
Proportion_Ht_Age_72_Female = [];
Proportion_Ht_Age_73_Female = [];
Proportion_Ht_Age_74_Female = [];
Proportion_Ht_Age_75_Female = [];
Proportion_Ht_Age_76_Female = [];
Proportion_Ht_Age_77_Female = [];
Proportion_Ht_Age_78_Female = [];
Proportion_Ht_Age_79_Female = [];
Proportion_Ht_Age_80_Female = [];
Proportion_Ht_Age_81_Female = [];
Proportion_Ht_Age_82_Female = [];
Proportion_Ht_Age_83_Female = [];
Proportion_Ht_Age_84_Female = [];
Proportion_Ht_Age_85_Female = [];
Proportion_Ht_Age_86_Female = [];
Proportion_Ht_Age_87_Female = [];
Proportion_Ht_Age_88_Female = [];
Proportion_Ht_Age_89_Female = [];
Proportion_Ht_Age_90_Female = [];

Proportion_Ht_Age_50_Male = [];
Proportion_Ht_Age_51_Male = [];
Proportion_Ht_Age_52_Male = [];
Proportion_Ht_Age_53_Male = [];
Proportion_Ht_Age_54_Male = [];
Proportion_Ht_Age_55_Male = [];
Proportion_Ht_Age_56_Male = [];
Proportion_Ht_Age_57_Male = [];
Proportion_Ht_Age_58_Male = [];
Proportion_Ht_Age_59_Male = [];
Proportion_Ht_Age_60_Male = [];
Proportion_Ht_Age_61_Male = [];
Proportion_Ht_Age_62_Male = [];
Proportion_Ht_Age_63_Male = [];
Proportion_Ht_Age_64_Male = [];
Proportion_Ht_Age_65_Male = [];
Proportion_Ht_Age_66_Male = [];
Proportion_Ht_Age_67_Male = [];
Proportion_Ht_Age_68_Male = [];
Proportion_Ht_Age_69_Male = [];
Proportion_Ht_Age_70_Male = [];
Proportion_Ht_Age_71_Male = [];
Proportion_Ht_Age_72_Male = [];
Proportion_Ht_Age_73_Male = [];
Proportion_Ht_Age_74_Male = [];
Proportion_Ht_Age_75_Male = [];
Proportion_Ht_Age_76_Male = [];
Proportion_Ht_Age_77_Male = [];
Proportion_Ht_Age_78_Male = [];
Proportion_Ht_Age_79_Male = [];
Proportion_Ht_Age_80_Male = [];
Proportion_Ht_Age_81_Male = [];
Proportion_Ht_Age_82_Male = [];
Proportion_Ht_Age_83_Male = [];
Proportion_Ht_Age_84_Male = [];
Proportion_Ht_Age_85_Male = [];
Proportion_Ht_Age_86_Male = [];
Proportion_Ht_Age_87_Male = [];
Proportion_Ht_Age_88_Male = [];
Proportion_Ht_Age_89_Male = [];
Proportion_Ht_Age_90_Male = [];

[M N] = size(Proportion_Ht_All_Female);
for i = 1:N
    if Age_All_Female(i) == 50
        Proportion_Ht_Age_50_Female = [Proportion_Ht_Age_50_Female Proportion_Ht_All_Female(i)];
    end
    if Age_All_Female(i) == 51
        Proportion_Ht_Age_51_Female = [Proportion_Ht_Age_51_Female Proportion_Ht_All_Female(i)];
    end
    if Age_All_Female(i) == 52
        Proportion_Ht_Age_52_Female = [Proportion_Ht_Age_52_Female Proportion_Ht_All_Female(i)];
    end
    if Age_All_Female(i) == 53
        Proportion_Ht_Age_53_Female = [Proportion_Ht_Age_53_Female Proportion_Ht_All_Female(i)];
    end
    if Age_All_Female(i) == 54
        Proportion_Ht_Age_54_Female = [Proportion_Ht_Age_54_Female Proportion_Ht_All_Female(i)];
    end
    if Age_All_Female(i) == 55
        Proportion_Ht_Age_55_Female = [Proportion_Ht_Age_55_Female Proportion_Ht_All_Female(i)];
    end
    if Age_All_Female(i) == 56
        Proportion_Ht_Age_56_Female = [Proportion_Ht_Age_56_Female Proportion_Ht_All_Female(i)];
    end
    if Age_All_Female(i) == 57
        Proportion_Ht_Age_57_Female = [Proportion_Ht_Age_57_Female Proportion_Ht_All_Female(i)];
    end
    if Age_All_Female(i) == 58
        Proportion_Ht_Age_58_Female = [Proportion_Ht_Age_58_Female Proportion_Ht_All_Female(i)];
    end
    if Age_All_Female(i) == 59
        Proportion_Ht_Age_59_Female = [Proportion_Ht_Age_59_Female Proportion_Ht_All_Female(i)];
    end
    if Age_All_Female(i) == 60
        Proportion_Ht_Age_60_Female = [Proportion_Ht_Age_60_Female Proportion_Ht_All_Female(i)];
    end
    if Age_All_Female(i) == 61
        Proportion_Ht_Age_61_Female = [Proportion_Ht_Age_61_Female Proportion_Ht_All_Female(i)];
    end
    if Age_All_Female(i) == 62
        Proportion_Ht_Age_62_Female = [Proportion_Ht_Age_62_Female Proportion_Ht_All_Female(i)];
    end
    if Age_All_Female(i) == 63
        Proportion_Ht_Age_63_Female = [Proportion_Ht_Age_63_Female Proportion_Ht_All_Female(i)];
    end
    if Age_All_Female(i) == 64
        Proportion_Ht_Age_64_Female = [Proportion_Ht_Age_64_Female Proportion_Ht_All_Female(i)];
    end
    if Age_All_Female(i) == 65
        Proportion_Ht_Age_65_Female = [Proportion_Ht_Age_65_Female Proportion_Ht_All_Female(i)];
    end
    if Age_All_Female(i) == 66
        Proportion_Ht_Age_66_Female = [Proportion_Ht_Age_66_Female Proportion_Ht_All_Female(i)];
    end
    if Age_All_Female(i) == 67
        Proportion_Ht_Age_67_Female = [Proportion_Ht_Age_67_Female Proportion_Ht_All_Female(i)];
    end
    if Age_All_Female(i) == 68
        Proportion_Ht_Age_68_Female = [Proportion_Ht_Age_68_Female Proportion_Ht_All_Female(i)];
    end
    if Age_All_Female(i) == 69
        Proportion_Ht_Age_69_Female = [Proportion_Ht_Age_69_Female Proportion_Ht_All_Female(i)];
    end
    if Age_All_Female(i) == 70
        Proportion_Ht_Age_70_Female = [Proportion_Ht_Age_70_Female Proportion_Ht_All_Female(i)];
    end
    if Age_All_Female(i) == 71
        Proportion_Ht_Age_71_Female = [Proportion_Ht_Age_71_Female Proportion_Ht_All_Female(i)];
    end
    if Age_All_Female(i) == 72
        Proportion_Ht_Age_72_Female = [Proportion_Ht_Age_72_Female Proportion_Ht_All_Female(i)];
    end
    if Age_All_Female(i) == 73
        Proportion_Ht_Age_73_Female = [Proportion_Ht_Age_73_Female Proportion_Ht_All_Female(i)];
    end
    if Age_All_Female(i) == 74
        Proportion_Ht_Age_74_Female = [Proportion_Ht_Age_74_Female Proportion_Ht_All_Female(i)];
    end
    if Age_All_Female(i) == 75
        Proportion_Ht_Age_75_Female = [Proportion_Ht_Age_75_Female Proportion_Ht_All_Female(i)];
    end
    if Age_All_Female(i) == 76
        Proportion_Ht_Age_76_Female = [Proportion_Ht_Age_76_Female Proportion_Ht_All_Female(i)];
    end
    if Age_All_Female(i) == 77
        Proportion_Ht_Age_77_Female = [Proportion_Ht_Age_77_Female Proportion_Ht_All_Female(i)];
    end
    if Age_All_Female(i) == 78
        Proportion_Ht_Age_78_Female = [Proportion_Ht_Age_78_Female Proportion_Ht_All_Female(i)];
    end
    if Age_All_Female(i) == 79
        Proportion_Ht_Age_79_Female = [Proportion_Ht_Age_79_Female Proportion_Ht_All_Female(i)];
    end
    if Age_All_Female(i) == 80
        Proportion_Ht_Age_80_Female = [Proportion_Ht_Age_80_Female Proportion_Ht_All_Female(i)];
    end
    if Age_All_Female(i) == 81
        Proportion_Ht_Age_81_Female = [Proportion_Ht_Age_81_Female Proportion_Ht_All_Female(i)];
    end
    if Age_All_Female(i) == 82
        Proportion_Ht_Age_82_Female = [Proportion_Ht_Age_82_Female Proportion_Ht_All_Female(i)];
    end
    if Age_All_Female(i) == 83
        Proportion_Ht_Age_83_Female = [Proportion_Ht_Age_83_Female Proportion_Ht_All_Female(i)];
    end
    if Age_All_Female(i) == 84
        Proportion_Ht_Age_84_Female = [Proportion_Ht_Age_84_Female Proportion_Ht_All_Female(i)];
    end
    if Age_All_Female(i) == 85
        Proportion_Ht_Age_85_Female = [Proportion_Ht_Age_85_Female Proportion_Ht_All_Female(i)];
    end
    if Age_All_Female(i) == 86
        Proportion_Ht_Age_86_Female = [Proportion_Ht_Age_86_Female Proportion_Ht_All_Female(i)];
    end
    if Age_All_Female(i) == 87
        Proportion_Ht_Age_87_Female = [Proportion_Ht_Age_87_Female Proportion_Ht_All_Female(i)];
    end
    if Age_All_Female(i) == 88
        Proportion_Ht_Age_88_Female = [Proportion_Ht_Age_88_Female Proportion_Ht_All_Female(i)];
    end
    if Age_All_Female(i) == 89
        Proportion_Ht_Age_89_Female = [Proportion_Ht_Age_89_Female Proportion_Ht_All_Female(i)];
    end
    if Age_All_Female(i) == 90
        Proportion_Ht_Age_90_Female = [Proportion_Ht_Age_90_Female Proportion_Ht_All_Female(i)];
    end
end

[M N] = size(Proportion_Ht_All_Male);
for i = 1:N
    if Age_All_Male(i) == 50
        Proportion_Ht_Age_50_Male = [Proportion_Ht_Age_50_Male Proportion_Ht_All_Male(i)];
    end
    if Age_All_Male(i) == 51
        Proportion_Ht_Age_51_Male = [Proportion_Ht_Age_51_Male Proportion_Ht_All_Male(i)];
    end
    if Age_All_Male(i) == 52
        Proportion_Ht_Age_52_Male = [Proportion_Ht_Age_52_Male Proportion_Ht_All_Male(i)];
    end
    if Age_All_Male(i) == 53
        Proportion_Ht_Age_53_Male = [Proportion_Ht_Age_53_Male Proportion_Ht_All_Male(i)];
    end
    if Age_All_Male(i) == 54
        Proportion_Ht_Age_54_Male = [Proportion_Ht_Age_54_Male Proportion_Ht_All_Male(i)];
    end
    if Age_All_Male(i) == 55
        Proportion_Ht_Age_55_Male = [Proportion_Ht_Age_55_Male Proportion_Ht_All_Male(i)];
    end
    if Age_All_Male(i) == 56
        Proportion_Ht_Age_56_Male = [Proportion_Ht_Age_56_Male Proportion_Ht_All_Male(i)];
    end
    if Age_All_Male(i) == 57
        Proportion_Ht_Age_57_Male = [Proportion_Ht_Age_57_Male Proportion_Ht_All_Male(i)];
    end
    if Age_All_Male(i) == 58
        Proportion_Ht_Age_58_Male = [Proportion_Ht_Age_58_Male Proportion_Ht_All_Male(i)];
    end
    if Age_All_Male(i) == 59
        Proportion_Ht_Age_59_Male = [Proportion_Ht_Age_59_Male Proportion_Ht_All_Male(i)];
    end
    if Age_All_Male(i) == 60
        Proportion_Ht_Age_60_Male = [Proportion_Ht_Age_60_Male Proportion_Ht_All_Male(i)];
    end
    if Age_All_Male(i) == 61
        Proportion_Ht_Age_61_Male = [Proportion_Ht_Age_61_Male Proportion_Ht_All_Male(i)];
    end
    if Age_All_Male(i) == 62
        Proportion_Ht_Age_62_Male = [Proportion_Ht_Age_62_Male Proportion_Ht_All_Male(i)];
    end
    if Age_All_Male(i) == 63
        Proportion_Ht_Age_63_Male = [Proportion_Ht_Age_63_Male Proportion_Ht_All_Male(i)];
    end
    if Age_All_Male(i) == 64
        Proportion_Ht_Age_64_Male = [Proportion_Ht_Age_64_Male Proportion_Ht_All_Male(i)];
    end
    if Age_All_Male(i) == 65
        Proportion_Ht_Age_65_Male = [Proportion_Ht_Age_65_Male Proportion_Ht_All_Male(i)];
    end
    if Age_All_Male(i) == 66
        Proportion_Ht_Age_66_Male = [Proportion_Ht_Age_66_Male Proportion_Ht_All_Male(i)];
    end
    if Age_All_Male(i) == 67
        Proportion_Ht_Age_67_Male = [Proportion_Ht_Age_67_Male Proportion_Ht_All_Male(i)];
    end
    if Age_All_Male(i) == 68
        Proportion_Ht_Age_68_Male = [Proportion_Ht_Age_68_Male Proportion_Ht_All_Male(i)];
    end
    if Age_All_Male(i) == 69
        Proportion_Ht_Age_69_Male = [Proportion_Ht_Age_69_Male Proportion_Ht_All_Male(i)];
    end
    if Age_All_Male(i) == 70
        Proportion_Ht_Age_70_Male = [Proportion_Ht_Age_70_Male Proportion_Ht_All_Male(i)];
    end
    if Age_All_Male(i) == 71
        Proportion_Ht_Age_71_Male = [Proportion_Ht_Age_71_Male Proportion_Ht_All_Male(i)];
    end
    if Age_All_Male(i) == 72
        Proportion_Ht_Age_72_Male = [Proportion_Ht_Age_72_Male Proportion_Ht_All_Male(i)];
    end
    if Age_All_Male(i) == 73
        Proportion_Ht_Age_73_Male = [Proportion_Ht_Age_73_Male Proportion_Ht_All_Male(i)];
    end
    if Age_All_Male(i) == 74
        Proportion_Ht_Age_74_Male = [Proportion_Ht_Age_74_Male Proportion_Ht_All_Male(i)];
    end
    if Age_All_Male(i) == 75
        Proportion_Ht_Age_75_Male = [Proportion_Ht_Age_75_Male Proportion_Ht_All_Male(i)];
    end
    if Age_All_Male(i) == 76
        Proportion_Ht_Age_76_Male = [Proportion_Ht_Age_76_Male Proportion_Ht_All_Male(i)];
    end
    if Age_All_Male(i) == 77
        Proportion_Ht_Age_77_Male = [Proportion_Ht_Age_77_Male Proportion_Ht_All_Male(i)];
    end
    if Age_All_Male(i) == 78
        Proportion_Ht_Age_78_Male = [Proportion_Ht_Age_78_Male Proportion_Ht_All_Male(i)];
    end
    if Age_All_Male(i) == 79
        Proportion_Ht_Age_79_Male = [Proportion_Ht_Age_79_Male Proportion_Ht_All_Male(i)];
    end
    if Age_All_Male(i) == 80
        Proportion_Ht_Age_80_Male = [Proportion_Ht_Age_80_Male Proportion_Ht_All_Male(i)];
    end
    if Age_All_Male(i) == 81
        Proportion_Ht_Age_81_Male = [Proportion_Ht_Age_81_Male Proportion_Ht_All_Male(i)];
    end
    if Age_All_Male(i) == 82
        Proportion_Ht_Age_82_Male = [Proportion_Ht_Age_82_Male Proportion_Ht_All_Male(i)];
    end
    if Age_All_Male(i) == 83
        Proportion_Ht_Age_83_Male = [Proportion_Ht_Age_83_Male Proportion_Ht_All_Male(i)];
    end
    if Age_All_Male(i) == 84
        Proportion_Ht_Age_84_Male = [Proportion_Ht_Age_84_Male Proportion_Ht_All_Male(i)];
    end
    if Age_All_Male(i) == 85
        Proportion_Ht_Age_85_Male = [Proportion_Ht_Age_85_Male Proportion_Ht_All_Male(i)];
    end
    if Age_All_Male(i) == 86
        Proportion_Ht_Age_86_Male = [Proportion_Ht_Age_86_Male Proportion_Ht_All_Male(i)];
    end
    if Age_All_Male(i) == 87
        Proportion_Ht_Age_87_Male = [Proportion_Ht_Age_87_Male Proportion_Ht_All_Male(i)];
    end
    if Age_All_Male(i) == 88
        Proportion_Ht_Age_88_Male = [Proportion_Ht_Age_88_Male Proportion_Ht_All_Male(i)];
    end
    if Age_All_Male(i) == 89
        Proportion_Ht_Age_89_Male = [Proportion_Ht_Age_89_Male Proportion_Ht_All_Male(i)];
    end
    if Age_All_Male(i) == 90
        Proportion_Ht_Age_90_Male = [Proportion_Ht_Age_90_Male Proportion_Ht_All_Male(i)];
    end
end

%% 5th, 50th, 95th, mean
My_Percentile = [5 50 95]; % quantile distribution
% For Female
My_P = prctile(Proportion_Ht_Age_50_Female,My_Percentile);
Proportion_Ht_Age_50_Female_5th = My_P(1);
Proportion_Ht_Age_50_Female_50th = My_P(2);
Proportion_Ht_Age_50_Female_95th = My_P(3);
Proportion_Ht_Age_50_Female_mean = mean(Proportion_Ht_Age_50_Female);
My_P = prctile(Proportion_Ht_Age_51_Female,My_Percentile);
Proportion_Ht_Age_51_Female_5th = My_P(1);
Proportion_Ht_Age_51_Female_50th = My_P(2);
Proportion_Ht_Age_51_Female_95th = My_P(3);
Proportion_Ht_Age_51_Female_mean = mean(Proportion_Ht_Age_51_Female);
My_P = prctile(Proportion_Ht_Age_52_Female,My_Percentile);
Proportion_Ht_Age_52_Female_5th = My_P(1);
Proportion_Ht_Age_52_Female_50th = My_P(2);
Proportion_Ht_Age_52_Female_95th = My_P(3);
Proportion_Ht_Age_52_Female_mean = mean(Proportion_Ht_Age_52_Female);
My_P = prctile(Proportion_Ht_Age_53_Female,My_Percentile);
Proportion_Ht_Age_53_Female_5th = My_P(1);
Proportion_Ht_Age_53_Female_50th = My_P(2);
Proportion_Ht_Age_53_Female_95th = My_P(3);
Proportion_Ht_Age_53_Female_mean = mean(Proportion_Ht_Age_53_Female);
My_P = prctile(Proportion_Ht_Age_54_Female,My_Percentile);
Proportion_Ht_Age_54_Female_5th = My_P(1);
Proportion_Ht_Age_54_Female_50th = My_P(2);
Proportion_Ht_Age_54_Female_95th = My_P(3);
Proportion_Ht_Age_54_Female_mean = mean(Proportion_Ht_Age_54_Female);
My_P = prctile(Proportion_Ht_Age_55_Female,My_Percentile);
Proportion_Ht_Age_55_Female_5th = My_P(1);
Proportion_Ht_Age_55_Female_50th = My_P(2);
Proportion_Ht_Age_55_Female_95th = My_P(3);
Proportion_Ht_Age_55_Female_mean = mean(Proportion_Ht_Age_55_Female);
My_P = prctile(Proportion_Ht_Age_56_Female,My_Percentile);
Proportion_Ht_Age_56_Female_5th = My_P(1);
Proportion_Ht_Age_56_Female_50th = My_P(2);
Proportion_Ht_Age_56_Female_95th = My_P(3);
Proportion_Ht_Age_56_Female_mean = mean(Proportion_Ht_Age_56_Female);
My_P = prctile(Proportion_Ht_Age_57_Female,My_Percentile);
Proportion_Ht_Age_57_Female_5th = My_P(1);
Proportion_Ht_Age_57_Female_50th = My_P(2);
Proportion_Ht_Age_57_Female_95th = My_P(3);
Proportion_Ht_Age_57_Female_mean = mean(Proportion_Ht_Age_57_Female);
My_P = prctile(Proportion_Ht_Age_58_Female,My_Percentile);
Proportion_Ht_Age_58_Female_5th = My_P(1);
Proportion_Ht_Age_58_Female_50th = My_P(2);
Proportion_Ht_Age_58_Female_95th = My_P(3);
Proportion_Ht_Age_58_Female_mean = mean(Proportion_Ht_Age_58_Female);
My_P = prctile(Proportion_Ht_Age_59_Female,My_Percentile);
Proportion_Ht_Age_59_Female_5th = My_P(1);
Proportion_Ht_Age_59_Female_50th = My_P(2);
Proportion_Ht_Age_59_Female_95th = My_P(3);
Proportion_Ht_Age_59_Female_mean = mean(Proportion_Ht_Age_59_Female);
My_P = prctile(Proportion_Ht_Age_60_Female,My_Percentile);
Proportion_Ht_Age_60_Female_5th = My_P(1);
Proportion_Ht_Age_60_Female_50th = My_P(2);
Proportion_Ht_Age_60_Female_95th = My_P(3);
Proportion_Ht_Age_60_Female_mean = mean(Proportion_Ht_Age_60_Female);
My_P = prctile(Proportion_Ht_Age_61_Female,My_Percentile);
Proportion_Ht_Age_61_Female_5th = My_P(1);
Proportion_Ht_Age_61_Female_50th = My_P(2);
Proportion_Ht_Age_61_Female_95th = My_P(3);
Proportion_Ht_Age_61_Female_mean = mean(Proportion_Ht_Age_61_Female);
My_P = prctile(Proportion_Ht_Age_62_Female,My_Percentile);
Proportion_Ht_Age_62_Female_5th = My_P(1);
Proportion_Ht_Age_62_Female_50th = My_P(2);
Proportion_Ht_Age_62_Female_95th = My_P(3);
Proportion_Ht_Age_62_Female_mean = mean(Proportion_Ht_Age_62_Female);
My_P = prctile(Proportion_Ht_Age_63_Female,My_Percentile);
Proportion_Ht_Age_63_Female_5th = My_P(1);
Proportion_Ht_Age_63_Female_50th = My_P(2);
Proportion_Ht_Age_63_Female_95th = My_P(3);
Proportion_Ht_Age_63_Female_mean = mean(Proportion_Ht_Age_63_Female);
My_P = prctile(Proportion_Ht_Age_64_Female,My_Percentile);
Proportion_Ht_Age_64_Female_5th = My_P(1);
Proportion_Ht_Age_64_Female_50th = My_P(2);
Proportion_Ht_Age_64_Female_95th = My_P(3);
Proportion_Ht_Age_64_Female_mean = mean(Proportion_Ht_Age_64_Female);
My_P = prctile(Proportion_Ht_Age_65_Female,My_Percentile);
Proportion_Ht_Age_65_Female_5th = My_P(1);
Proportion_Ht_Age_65_Female_50th = My_P(2);
Proportion_Ht_Age_65_Female_95th = My_P(3);
Proportion_Ht_Age_65_Female_mean = mean(Proportion_Ht_Age_65_Female);
My_P = prctile(Proportion_Ht_Age_66_Female,My_Percentile);
Proportion_Ht_Age_66_Female_5th = My_P(1);
Proportion_Ht_Age_66_Female_50th = My_P(2);
Proportion_Ht_Age_66_Female_95th = My_P(3);
Proportion_Ht_Age_66_Female_mean = mean(Proportion_Ht_Age_66_Female);
My_P = prctile(Proportion_Ht_Age_67_Female,My_Percentile);
Proportion_Ht_Age_67_Female_5th = My_P(1);
Proportion_Ht_Age_67_Female_50th = My_P(2);
Proportion_Ht_Age_67_Female_95th = My_P(3);
Proportion_Ht_Age_67_Female_mean = mean(Proportion_Ht_Age_67_Female);
My_P = prctile(Proportion_Ht_Age_68_Female,My_Percentile);
Proportion_Ht_Age_68_Female_5th = My_P(1);
Proportion_Ht_Age_68_Female_50th = My_P(2);
Proportion_Ht_Age_68_Female_95th = My_P(3);
Proportion_Ht_Age_68_Female_mean = mean(Proportion_Ht_Age_68_Female);
My_P = prctile(Proportion_Ht_Age_69_Female,My_Percentile);
Proportion_Ht_Age_69_Female_5th = My_P(1);
Proportion_Ht_Age_69_Female_50th = My_P(2);
Proportion_Ht_Age_69_Female_95th = My_P(3);
Proportion_Ht_Age_69_Female_mean = mean(Proportion_Ht_Age_69_Female);
My_P = prctile(Proportion_Ht_Age_70_Female,My_Percentile);
Proportion_Ht_Age_70_Female_5th = My_P(1);
Proportion_Ht_Age_70_Female_50th = My_P(2);
Proportion_Ht_Age_70_Female_95th = My_P(3);
Proportion_Ht_Age_70_Female_mean = mean(Proportion_Ht_Age_70_Female);
My_P = prctile(Proportion_Ht_Age_71_Female,My_Percentile);
Proportion_Ht_Age_71_Female_5th = My_P(1);
Proportion_Ht_Age_71_Female_50th = My_P(2);
Proportion_Ht_Age_71_Female_95th = My_P(3);
Proportion_Ht_Age_71_Female_mean = mean(Proportion_Ht_Age_71_Female);
My_P = prctile(Proportion_Ht_Age_72_Female,My_Percentile);
Proportion_Ht_Age_72_Female_5th = My_P(1);
Proportion_Ht_Age_72_Female_50th = My_P(2);
Proportion_Ht_Age_72_Female_95th = My_P(3);
Proportion_Ht_Age_72_Female_mean = mean(Proportion_Ht_Age_72_Female);
My_P = prctile(Proportion_Ht_Age_73_Female,My_Percentile);
Proportion_Ht_Age_73_Female_5th = My_P(1);
Proportion_Ht_Age_73_Female_50th = My_P(2);
Proportion_Ht_Age_73_Female_95th = My_P(3);
Proportion_Ht_Age_73_Female_mean = mean(Proportion_Ht_Age_73_Female);
My_P = prctile(Proportion_Ht_Age_74_Female,My_Percentile);
Proportion_Ht_Age_74_Female_5th = My_P(1);
Proportion_Ht_Age_74_Female_50th = My_P(2);
Proportion_Ht_Age_74_Female_95th = My_P(3);
Proportion_Ht_Age_74_Female_mean = mean(Proportion_Ht_Age_74_Female);
My_P = prctile(Proportion_Ht_Age_75_Female,My_Percentile);
Proportion_Ht_Age_75_Female_5th = My_P(1);
Proportion_Ht_Age_75_Female_50th = My_P(2);
Proportion_Ht_Age_75_Female_95th = My_P(3);
Proportion_Ht_Age_75_Female_mean = mean(Proportion_Ht_Age_75_Female);
My_P = prctile(Proportion_Ht_Age_76_Female,My_Percentile);
Proportion_Ht_Age_76_Female_5th = My_P(1);
Proportion_Ht_Age_76_Female_50th = My_P(2);
Proportion_Ht_Age_76_Female_95th = My_P(3);
Proportion_Ht_Age_76_Female_mean = mean(Proportion_Ht_Age_76_Female);
My_P = prctile(Proportion_Ht_Age_77_Female,My_Percentile);
Proportion_Ht_Age_77_Female_5th = My_P(1);
Proportion_Ht_Age_77_Female_50th = My_P(2);
Proportion_Ht_Age_77_Female_95th = My_P(3);
Proportion_Ht_Age_77_Female_mean = mean(Proportion_Ht_Age_77_Female);
My_P = prctile(Proportion_Ht_Age_78_Female,My_Percentile);
Proportion_Ht_Age_78_Female_5th = My_P(1);
Proportion_Ht_Age_78_Female_50th = My_P(2);
Proportion_Ht_Age_78_Female_95th = My_P(3);
Proportion_Ht_Age_78_Female_mean = mean(Proportion_Ht_Age_78_Female);
My_P = prctile(Proportion_Ht_Age_79_Female,My_Percentile);
Proportion_Ht_Age_79_Female_5th = My_P(1);
Proportion_Ht_Age_79_Female_50th = My_P(2);
Proportion_Ht_Age_79_Female_95th = My_P(3);
Proportion_Ht_Age_79_Female_mean = mean(Proportion_Ht_Age_79_Female);
My_P = prctile(Proportion_Ht_Age_80_Female,My_Percentile);
Proportion_Ht_Age_80_Female_5th = My_P(1);
Proportion_Ht_Age_80_Female_50th = My_P(2);
Proportion_Ht_Age_80_Female_95th = My_P(3);
Proportion_Ht_Age_80_Female_mean = mean(Proportion_Ht_Age_80_Female);
My_P = prctile(Proportion_Ht_Age_81_Female,My_Percentile);
Proportion_Ht_Age_81_Female_5th = My_P(1);
Proportion_Ht_Age_81_Female_50th = My_P(2);
Proportion_Ht_Age_81_Female_95th = My_P(3);
Proportion_Ht_Age_81_Female_mean = mean(Proportion_Ht_Age_81_Female);
My_P = prctile(Proportion_Ht_Age_82_Female,My_Percentile);
Proportion_Ht_Age_82_Female_5th = My_P(1);
Proportion_Ht_Age_82_Female_50th = My_P(2);
Proportion_Ht_Age_82_Female_95th = My_P(3);
Proportion_Ht_Age_82_Female_mean = mean(Proportion_Ht_Age_82_Female);
My_P = prctile(Proportion_Ht_Age_83_Female,My_Percentile);
Proportion_Ht_Age_83_Female_5th = My_P(1);
Proportion_Ht_Age_83_Female_50th = My_P(2);
Proportion_Ht_Age_83_Female_95th = My_P(3);
Proportion_Ht_Age_83_Female_mean = mean(Proportion_Ht_Age_83_Female);
My_P = prctile(Proportion_Ht_Age_84_Female,My_Percentile);
Proportion_Ht_Age_84_Female_5th = My_P(1);
Proportion_Ht_Age_84_Female_50th = My_P(2);
Proportion_Ht_Age_84_Female_95th = My_P(3);
Proportion_Ht_Age_84_Female_mean = mean(Proportion_Ht_Age_84_Female);
My_P = prctile(Proportion_Ht_Age_85_Female,My_Percentile);
Proportion_Ht_Age_85_Female_5th = My_P(1);
Proportion_Ht_Age_85_Female_50th = My_P(2);
Proportion_Ht_Age_85_Female_95th = My_P(3);
Proportion_Ht_Age_85_Female_mean = mean(Proportion_Ht_Age_85_Female);
My_P = prctile(Proportion_Ht_Age_86_Female,My_Percentile);
Proportion_Ht_Age_86_Female_5th = My_P(1);
Proportion_Ht_Age_86_Female_50th = My_P(2);
Proportion_Ht_Age_86_Female_95th = My_P(3);
Proportion_Ht_Age_86_Female_mean = mean(Proportion_Ht_Age_86_Female);
My_P = prctile(Proportion_Ht_Age_87_Female,My_Percentile);
Proportion_Ht_Age_87_Female_5th = My_P(1);
Proportion_Ht_Age_87_Female_50th = My_P(2);
Proportion_Ht_Age_87_Female_95th = My_P(3);
Proportion_Ht_Age_87_Female_mean = mean(Proportion_Ht_Age_87_Female);
My_P = prctile(Proportion_Ht_Age_88_Female,My_Percentile);
Proportion_Ht_Age_88_Female_5th = My_P(1);
Proportion_Ht_Age_88_Female_50th = My_P(2);
Proportion_Ht_Age_88_Female_95th = My_P(3);
Proportion_Ht_Age_88_Female_mean = mean(Proportion_Ht_Age_88_Female);
My_P = prctile(Proportion_Ht_Age_89_Female,My_Percentile);
Proportion_Ht_Age_89_Female_5th = My_P(1);
Proportion_Ht_Age_89_Female_50th = My_P(2);
Proportion_Ht_Age_89_Female_95th = My_P(3);
Proportion_Ht_Age_89_Female_mean = mean(Proportion_Ht_Age_89_Female);
My_P = prctile(Proportion_Ht_Age_90_Female,My_Percentile);
Proportion_Ht_Age_90_Female_5th = My_P(1);
Proportion_Ht_Age_90_Female_50th = My_P(2);
Proportion_Ht_Age_90_Female_95th = My_P(3);
Proportion_Ht_Age_90_Female_mean = mean(Proportion_Ht_Age_90_Female);
% For Male
My_P = prctile(Proportion_Ht_Age_50_Male,My_Percentile);
Proportion_Ht_Age_50_Male_5th = My_P(1);
Proportion_Ht_Age_50_Male_50th = My_P(2);
Proportion_Ht_Age_50_Male_95th = My_P(3);
Proportion_Ht_Age_50_Male_mean = mean(Proportion_Ht_Age_50_Male);
My_P = prctile(Proportion_Ht_Age_51_Male,My_Percentile);
Proportion_Ht_Age_51_Male_5th = My_P(1);
Proportion_Ht_Age_51_Male_50th = My_P(2);
Proportion_Ht_Age_51_Male_95th = My_P(3);
Proportion_Ht_Age_51_Male_mean = mean(Proportion_Ht_Age_51_Male);
My_P = prctile(Proportion_Ht_Age_52_Male,My_Percentile);
Proportion_Ht_Age_52_Male_5th = My_P(1);
Proportion_Ht_Age_52_Male_50th = My_P(2);
Proportion_Ht_Age_52_Male_95th = My_P(3);
Proportion_Ht_Age_52_Male_mean = mean(Proportion_Ht_Age_52_Male);
My_P = prctile(Proportion_Ht_Age_53_Male,My_Percentile);
Proportion_Ht_Age_53_Male_5th = My_P(1);
Proportion_Ht_Age_53_Male_50th = My_P(2);
Proportion_Ht_Age_53_Male_95th = My_P(3);
Proportion_Ht_Age_53_Male_mean = mean(Proportion_Ht_Age_53_Male);
My_P = prctile(Proportion_Ht_Age_54_Male,My_Percentile);
Proportion_Ht_Age_54_Male_5th = My_P(1);
Proportion_Ht_Age_54_Male_50th = My_P(2);
Proportion_Ht_Age_54_Male_95th = My_P(3);
Proportion_Ht_Age_54_Male_mean = mean(Proportion_Ht_Age_54_Male);
My_P = prctile(Proportion_Ht_Age_55_Male,My_Percentile);
Proportion_Ht_Age_55_Male_5th = My_P(1);
Proportion_Ht_Age_55_Male_50th = My_P(2);
Proportion_Ht_Age_55_Male_95th = My_P(3);
Proportion_Ht_Age_55_Male_mean = mean(Proportion_Ht_Age_55_Male);
My_P = prctile(Proportion_Ht_Age_56_Male,My_Percentile);
Proportion_Ht_Age_56_Male_5th = My_P(1);
Proportion_Ht_Age_56_Male_50th = My_P(2);
Proportion_Ht_Age_56_Male_95th = My_P(3);
Proportion_Ht_Age_56_Male_mean = mean(Proportion_Ht_Age_56_Male);
My_P = prctile(Proportion_Ht_Age_57_Male,My_Percentile);
Proportion_Ht_Age_57_Male_5th = My_P(1);
Proportion_Ht_Age_57_Male_50th = My_P(2);
Proportion_Ht_Age_57_Male_95th = My_P(3);
Proportion_Ht_Age_57_Male_mean = mean(Proportion_Ht_Age_57_Male);
My_P = prctile(Proportion_Ht_Age_58_Male,My_Percentile);
Proportion_Ht_Age_58_Male_5th = My_P(1);
Proportion_Ht_Age_58_Male_50th = My_P(2);
Proportion_Ht_Age_58_Male_95th = My_P(3);
Proportion_Ht_Age_58_Male_mean = mean(Proportion_Ht_Age_58_Male);
My_P = prctile(Proportion_Ht_Age_59_Male,My_Percentile);
Proportion_Ht_Age_59_Male_5th = My_P(1);
Proportion_Ht_Age_59_Male_50th = My_P(2);
Proportion_Ht_Age_59_Male_95th = My_P(3);
Proportion_Ht_Age_59_Male_mean = mean(Proportion_Ht_Age_59_Male);
My_P = prctile(Proportion_Ht_Age_60_Male,My_Percentile);
Proportion_Ht_Age_60_Male_5th = My_P(1);
Proportion_Ht_Age_60_Male_50th = My_P(2);
Proportion_Ht_Age_60_Male_95th = My_P(3);
Proportion_Ht_Age_60_Male_mean = mean(Proportion_Ht_Age_60_Male);
My_P = prctile(Proportion_Ht_Age_61_Male,My_Percentile);
Proportion_Ht_Age_61_Male_5th = My_P(1);
Proportion_Ht_Age_61_Male_50th = My_P(2);
Proportion_Ht_Age_61_Male_95th = My_P(3);
Proportion_Ht_Age_61_Male_mean = mean(Proportion_Ht_Age_61_Male);
My_P = prctile(Proportion_Ht_Age_62_Male,My_Percentile);
Proportion_Ht_Age_62_Male_5th = My_P(1);
Proportion_Ht_Age_62_Male_50th = My_P(2);
Proportion_Ht_Age_62_Male_95th = My_P(3);
Proportion_Ht_Age_62_Male_mean = mean(Proportion_Ht_Age_62_Male);
My_P = prctile(Proportion_Ht_Age_63_Male,My_Percentile);
Proportion_Ht_Age_63_Male_5th = My_P(1);
Proportion_Ht_Age_63_Male_50th = My_P(2);
Proportion_Ht_Age_63_Male_95th = My_P(3);
Proportion_Ht_Age_63_Male_mean = mean(Proportion_Ht_Age_63_Male);
My_P = prctile(Proportion_Ht_Age_64_Male,My_Percentile);
Proportion_Ht_Age_64_Male_5th = My_P(1);
Proportion_Ht_Age_64_Male_50th = My_P(2);
Proportion_Ht_Age_64_Male_95th = My_P(3);
Proportion_Ht_Age_64_Male_mean = mean(Proportion_Ht_Age_64_Male);
My_P = prctile(Proportion_Ht_Age_65_Male,My_Percentile);
Proportion_Ht_Age_65_Male_5th = My_P(1);
Proportion_Ht_Age_65_Male_50th = My_P(2);
Proportion_Ht_Age_65_Male_95th = My_P(3);
Proportion_Ht_Age_65_Male_mean = mean(Proportion_Ht_Age_65_Male);
My_P = prctile(Proportion_Ht_Age_66_Male,My_Percentile);
Proportion_Ht_Age_66_Male_5th = My_P(1);
Proportion_Ht_Age_66_Male_50th = My_P(2);
Proportion_Ht_Age_66_Male_95th = My_P(3);
Proportion_Ht_Age_66_Male_mean = mean(Proportion_Ht_Age_66_Male);
My_P = prctile(Proportion_Ht_Age_67_Male,My_Percentile);
Proportion_Ht_Age_67_Male_5th = My_P(1);
Proportion_Ht_Age_67_Male_50th = My_P(2);
Proportion_Ht_Age_67_Male_95th = My_P(3);
Proportion_Ht_Age_67_Male_mean = mean(Proportion_Ht_Age_67_Male);
My_P = prctile(Proportion_Ht_Age_68_Male,My_Percentile);
Proportion_Ht_Age_68_Male_5th = My_P(1);
Proportion_Ht_Age_68_Male_50th = My_P(2);
Proportion_Ht_Age_68_Male_95th = My_P(3);
Proportion_Ht_Age_68_Male_mean = mean(Proportion_Ht_Age_68_Male);
My_P = prctile(Proportion_Ht_Age_69_Male,My_Percentile);
Proportion_Ht_Age_69_Male_5th = My_P(1);
Proportion_Ht_Age_69_Male_50th = My_P(2);
Proportion_Ht_Age_69_Male_95th = My_P(3);
Proportion_Ht_Age_69_Male_mean = mean(Proportion_Ht_Age_69_Male);
My_P = prctile(Proportion_Ht_Age_70_Male,My_Percentile);
Proportion_Ht_Age_70_Male_5th = My_P(1);
Proportion_Ht_Age_70_Male_50th = My_P(2);
Proportion_Ht_Age_70_Male_95th = My_P(3);
Proportion_Ht_Age_70_Male_mean = mean(Proportion_Ht_Age_70_Male);
My_P = prctile(Proportion_Ht_Age_71_Male,My_Percentile);
Proportion_Ht_Age_71_Male_5th = My_P(1);
Proportion_Ht_Age_71_Male_50th = My_P(2);
Proportion_Ht_Age_71_Male_95th = My_P(3);
Proportion_Ht_Age_71_Male_mean = mean(Proportion_Ht_Age_71_Male);
My_P = prctile(Proportion_Ht_Age_72_Male,My_Percentile);
Proportion_Ht_Age_72_Male_5th = My_P(1);
Proportion_Ht_Age_72_Male_50th = My_P(2);
Proportion_Ht_Age_72_Male_95th = My_P(3);
Proportion_Ht_Age_72_Male_mean = mean(Proportion_Ht_Age_72_Male);
My_P = prctile(Proportion_Ht_Age_73_Male,My_Percentile);
Proportion_Ht_Age_73_Male_5th = My_P(1);
Proportion_Ht_Age_73_Male_50th = My_P(2);
Proportion_Ht_Age_73_Male_95th = My_P(3);
Proportion_Ht_Age_73_Male_mean = mean(Proportion_Ht_Age_73_Male);
My_P = prctile(Proportion_Ht_Age_74_Male,My_Percentile);
Proportion_Ht_Age_74_Male_5th = My_P(1);
Proportion_Ht_Age_74_Male_50th = My_P(2);
Proportion_Ht_Age_74_Male_95th = My_P(3);
Proportion_Ht_Age_74_Male_mean = mean(Proportion_Ht_Age_74_Male);
My_P = prctile(Proportion_Ht_Age_75_Male,My_Percentile);
Proportion_Ht_Age_75_Male_5th = My_P(1);
Proportion_Ht_Age_75_Male_50th = My_P(2);
Proportion_Ht_Age_75_Male_95th = My_P(3);
Proportion_Ht_Age_75_Male_mean = mean(Proportion_Ht_Age_75_Male);
My_P = prctile(Proportion_Ht_Age_76_Male,My_Percentile);
Proportion_Ht_Age_76_Male_5th = My_P(1);
Proportion_Ht_Age_76_Male_50th = My_P(2);
Proportion_Ht_Age_76_Male_95th = My_P(3);
Proportion_Ht_Age_76_Male_mean = mean(Proportion_Ht_Age_76_Male);
My_P = prctile(Proportion_Ht_Age_77_Male,My_Percentile);
Proportion_Ht_Age_77_Male_5th = My_P(1);
Proportion_Ht_Age_77_Male_50th = My_P(2);
Proportion_Ht_Age_77_Male_95th = My_P(3);
Proportion_Ht_Age_77_Male_mean = mean(Proportion_Ht_Age_77_Male);
My_P = prctile(Proportion_Ht_Age_78_Male,My_Percentile);
Proportion_Ht_Age_78_Male_5th = My_P(1);
Proportion_Ht_Age_78_Male_50th = My_P(2);
Proportion_Ht_Age_78_Male_95th = My_P(3);
Proportion_Ht_Age_78_Male_mean = mean(Proportion_Ht_Age_78_Male);
My_P = prctile(Proportion_Ht_Age_79_Male,My_Percentile);
Proportion_Ht_Age_79_Male_5th = My_P(1);
Proportion_Ht_Age_79_Male_50th = My_P(2);
Proportion_Ht_Age_79_Male_95th = My_P(3);
Proportion_Ht_Age_79_Male_mean = mean(Proportion_Ht_Age_79_Male);
My_P = prctile(Proportion_Ht_Age_80_Male,My_Percentile);
Proportion_Ht_Age_80_Male_5th = My_P(1);
Proportion_Ht_Age_80_Male_50th = My_P(2);
Proportion_Ht_Age_80_Male_95th = My_P(3);
Proportion_Ht_Age_80_Male_mean = mean(Proportion_Ht_Age_80_Male);
My_P = prctile(Proportion_Ht_Age_81_Male,My_Percentile);
Proportion_Ht_Age_81_Male_5th = My_P(1);
Proportion_Ht_Age_81_Male_50th = My_P(2);
Proportion_Ht_Age_81_Male_95th = My_P(3);
Proportion_Ht_Age_81_Male_mean = mean(Proportion_Ht_Age_81_Male);
My_P = prctile(Proportion_Ht_Age_82_Male,My_Percentile);
Proportion_Ht_Age_82_Male_5th = My_P(1);
Proportion_Ht_Age_82_Male_50th = My_P(2);
Proportion_Ht_Age_82_Male_95th = My_P(3);
Proportion_Ht_Age_82_Male_mean = mean(Proportion_Ht_Age_82_Male);
My_P = prctile(Proportion_Ht_Age_83_Male,My_Percentile);
Proportion_Ht_Age_83_Male_5th = My_P(1);
Proportion_Ht_Age_83_Male_50th = My_P(2);
Proportion_Ht_Age_83_Male_95th = My_P(3);
Proportion_Ht_Age_83_Male_mean = mean(Proportion_Ht_Age_83_Male);
My_P = prctile(Proportion_Ht_Age_84_Male,My_Percentile);
Proportion_Ht_Age_84_Male_5th = My_P(1);
Proportion_Ht_Age_84_Male_50th = My_P(2);
Proportion_Ht_Age_84_Male_95th = My_P(3);
Proportion_Ht_Age_84_Male_mean = mean(Proportion_Ht_Age_84_Male);
My_P = prctile(Proportion_Ht_Age_85_Male,My_Percentile);
Proportion_Ht_Age_85_Male_5th = My_P(1);
Proportion_Ht_Age_85_Male_50th = My_P(2);
Proportion_Ht_Age_85_Male_95th = My_P(3);
Proportion_Ht_Age_85_Male_mean = mean(Proportion_Ht_Age_85_Male);
My_P = prctile(Proportion_Ht_Age_86_Male,My_Percentile);
Proportion_Ht_Age_86_Male_5th = My_P(1);
Proportion_Ht_Age_86_Male_50th = My_P(2);
Proportion_Ht_Age_86_Male_95th = My_P(3);
Proportion_Ht_Age_86_Male_mean = mean(Proportion_Ht_Age_86_Male);
My_P = prctile(Proportion_Ht_Age_87_Male,My_Percentile);
Proportion_Ht_Age_87_Male_5th = My_P(1);
Proportion_Ht_Age_87_Male_50th = My_P(2);
Proportion_Ht_Age_87_Male_95th = My_P(3);
Proportion_Ht_Age_87_Male_mean = mean(Proportion_Ht_Age_87_Male);
My_P = prctile(Proportion_Ht_Age_88_Male,My_Percentile);
Proportion_Ht_Age_88_Male_5th = My_P(1);
Proportion_Ht_Age_88_Male_50th = My_P(2);
Proportion_Ht_Age_88_Male_95th = My_P(3);
Proportion_Ht_Age_88_Male_mean = mean(Proportion_Ht_Age_88_Male);
My_P = prctile(Proportion_Ht_Age_89_Male,My_Percentile);
Proportion_Ht_Age_89_Male_5th = My_P(1);
Proportion_Ht_Age_89_Male_50th = My_P(2);
Proportion_Ht_Age_89_Male_95th = My_P(3);
Proportion_Ht_Age_89_Male_mean = mean(Proportion_Ht_Age_89_Male);
My_P = prctile(Proportion_Ht_Age_90_Male,My_Percentile);
Proportion_Ht_Age_90_Male_5th = My_P(1);
Proportion_Ht_Age_90_Male_50th = My_P(2);
Proportion_Ht_Age_90_Male_95th = My_P(3);
Proportion_Ht_Age_90_Male_mean = mean(Proportion_Ht_Age_90_Male);

My_Age_Female = 50:90;
My_5th_Female = [Proportion_Ht_Age_50_Female_5th ...
    Proportion_Ht_Age_51_Female_5th Proportion_Ht_Age_52_Female_5th Proportion_Ht_Age_53_Female_5th Proportion_Ht_Age_54_Female_5th Proportion_Ht_Age_55_Female_5th ...
    Proportion_Ht_Age_56_Female_5th Proportion_Ht_Age_57_Female_5th Proportion_Ht_Age_58_Female_5th Proportion_Ht_Age_59_Female_5th Proportion_Ht_Age_60_Female_5th ...
    Proportion_Ht_Age_61_Female_5th Proportion_Ht_Age_62_Female_5th Proportion_Ht_Age_63_Female_5th Proportion_Ht_Age_64_Female_5th Proportion_Ht_Age_65_Female_5th ...
    Proportion_Ht_Age_66_Female_5th Proportion_Ht_Age_67_Female_5th Proportion_Ht_Age_68_Female_5th Proportion_Ht_Age_69_Female_5th Proportion_Ht_Age_70_Female_5th ...
    Proportion_Ht_Age_71_Female_5th Proportion_Ht_Age_72_Female_5th Proportion_Ht_Age_73_Female_5th Proportion_Ht_Age_74_Female_5th Proportion_Ht_Age_75_Female_5th ...
    Proportion_Ht_Age_76_Female_5th Proportion_Ht_Age_77_Female_5th Proportion_Ht_Age_78_Female_5th Proportion_Ht_Age_79_Female_5th Proportion_Ht_Age_80_Female_5th ...
    Proportion_Ht_Age_81_Female_5th Proportion_Ht_Age_82_Female_5th Proportion_Ht_Age_83_Female_5th Proportion_Ht_Age_84_Female_5th Proportion_Ht_Age_85_Female_5th ...
    Proportion_Ht_Age_86_Female_5th Proportion_Ht_Age_87_Female_5th Proportion_Ht_Age_88_Female_5th Proportion_Ht_Age_89_Female_5th Proportion_Ht_Age_90_Female_5th];

My_50th_Female = [Proportion_Ht_Age_50_Female_50th ...
    Proportion_Ht_Age_51_Female_50th Proportion_Ht_Age_52_Female_50th Proportion_Ht_Age_53_Female_50th Proportion_Ht_Age_54_Female_50th Proportion_Ht_Age_55_Female_50th ...
    Proportion_Ht_Age_56_Female_50th Proportion_Ht_Age_57_Female_50th Proportion_Ht_Age_58_Female_50th Proportion_Ht_Age_59_Female_50th Proportion_Ht_Age_60_Female_50th ...
    Proportion_Ht_Age_61_Female_50th Proportion_Ht_Age_62_Female_50th Proportion_Ht_Age_63_Female_50th Proportion_Ht_Age_64_Female_50th Proportion_Ht_Age_65_Female_50th ...
    Proportion_Ht_Age_66_Female_50th Proportion_Ht_Age_67_Female_50th Proportion_Ht_Age_68_Female_50th Proportion_Ht_Age_69_Female_50th Proportion_Ht_Age_70_Female_50th ...
    Proportion_Ht_Age_71_Female_50th Proportion_Ht_Age_72_Female_50th Proportion_Ht_Age_73_Female_50th Proportion_Ht_Age_74_Female_50th Proportion_Ht_Age_75_Female_50th ...
    Proportion_Ht_Age_76_Female_50th Proportion_Ht_Age_77_Female_50th Proportion_Ht_Age_78_Female_50th Proportion_Ht_Age_79_Female_50th Proportion_Ht_Age_80_Female_50th ...
    Proportion_Ht_Age_81_Female_50th Proportion_Ht_Age_82_Female_50th Proportion_Ht_Age_83_Female_50th Proportion_Ht_Age_84_Female_50th Proportion_Ht_Age_85_Female_50th ...
    Proportion_Ht_Age_86_Female_50th Proportion_Ht_Age_87_Female_50th Proportion_Ht_Age_88_Female_50th Proportion_Ht_Age_89_Female_50th Proportion_Ht_Age_90_Female_50th];

My_95th_Female = [Proportion_Ht_Age_50_Female_95th ...
    Proportion_Ht_Age_51_Female_95th Proportion_Ht_Age_52_Female_95th Proportion_Ht_Age_53_Female_95th Proportion_Ht_Age_54_Female_95th Proportion_Ht_Age_55_Female_95th ...
    Proportion_Ht_Age_56_Female_95th Proportion_Ht_Age_57_Female_95th Proportion_Ht_Age_58_Female_95th Proportion_Ht_Age_59_Female_95th Proportion_Ht_Age_60_Female_95th ...
    Proportion_Ht_Age_61_Female_95th Proportion_Ht_Age_62_Female_95th Proportion_Ht_Age_63_Female_95th Proportion_Ht_Age_64_Female_95th Proportion_Ht_Age_65_Female_95th ...
    Proportion_Ht_Age_66_Female_95th Proportion_Ht_Age_67_Female_95th Proportion_Ht_Age_68_Female_95th Proportion_Ht_Age_69_Female_95th Proportion_Ht_Age_70_Female_95th ...
    Proportion_Ht_Age_71_Female_95th Proportion_Ht_Age_72_Female_95th Proportion_Ht_Age_73_Female_95th Proportion_Ht_Age_74_Female_95th Proportion_Ht_Age_75_Female_95th ...
    Proportion_Ht_Age_76_Female_95th Proportion_Ht_Age_77_Female_95th Proportion_Ht_Age_78_Female_95th Proportion_Ht_Age_79_Female_95th Proportion_Ht_Age_80_Female_95th ...
    Proportion_Ht_Age_81_Female_95th Proportion_Ht_Age_82_Female_95th Proportion_Ht_Age_83_Female_95th Proportion_Ht_Age_84_Female_95th Proportion_Ht_Age_85_Female_95th ...
    Proportion_Ht_Age_86_Female_95th Proportion_Ht_Age_87_Female_95th Proportion_Ht_Age_88_Female_95th Proportion_Ht_Age_89_Female_95th Proportion_Ht_Age_90_Female_95th];

My_mean_Female = [Proportion_Ht_Age_50_Female_mean ...
    Proportion_Ht_Age_51_Female_mean Proportion_Ht_Age_52_Female_mean Proportion_Ht_Age_53_Female_mean Proportion_Ht_Age_54_Female_mean Proportion_Ht_Age_55_Female_mean ...
    Proportion_Ht_Age_56_Female_mean Proportion_Ht_Age_57_Female_mean Proportion_Ht_Age_58_Female_mean Proportion_Ht_Age_59_Female_mean Proportion_Ht_Age_60_Female_mean ...
    Proportion_Ht_Age_61_Female_mean Proportion_Ht_Age_62_Female_mean Proportion_Ht_Age_63_Female_mean Proportion_Ht_Age_64_Female_mean Proportion_Ht_Age_65_Female_mean ...
    Proportion_Ht_Age_66_Female_mean Proportion_Ht_Age_67_Female_mean Proportion_Ht_Age_68_Female_mean Proportion_Ht_Age_69_Female_mean Proportion_Ht_Age_70_Female_mean ...
    Proportion_Ht_Age_71_Female_mean Proportion_Ht_Age_72_Female_mean Proportion_Ht_Age_73_Female_mean Proportion_Ht_Age_74_Female_mean Proportion_Ht_Age_75_Female_mean ...
    Proportion_Ht_Age_76_Female_mean Proportion_Ht_Age_77_Female_mean Proportion_Ht_Age_78_Female_mean Proportion_Ht_Age_79_Female_mean Proportion_Ht_Age_80_Female_mean ...
    Proportion_Ht_Age_81_Female_mean Proportion_Ht_Age_82_Female_mean Proportion_Ht_Age_83_Female_mean Proportion_Ht_Age_84_Female_mean Proportion_Ht_Age_85_Female_mean ...
    Proportion_Ht_Age_86_Female_mean Proportion_Ht_Age_87_Female_mean Proportion_Ht_Age_88_Female_mean Proportion_Ht_Age_89_Female_mean Proportion_Ht_Age_90_Female_mean];

My_Age_Male = 50:90;
My_5th_Male = [Proportion_Ht_Age_50_Male_5th ...
    Proportion_Ht_Age_51_Male_5th Proportion_Ht_Age_52_Male_5th Proportion_Ht_Age_53_Male_5th Proportion_Ht_Age_54_Male_5th Proportion_Ht_Age_55_Male_5th ...
    Proportion_Ht_Age_56_Male_5th Proportion_Ht_Age_57_Male_5th Proportion_Ht_Age_58_Male_5th Proportion_Ht_Age_59_Male_5th Proportion_Ht_Age_60_Male_5th ...
    Proportion_Ht_Age_61_Male_5th Proportion_Ht_Age_62_Male_5th Proportion_Ht_Age_63_Male_5th Proportion_Ht_Age_64_Male_5th Proportion_Ht_Age_65_Male_5th ...
    Proportion_Ht_Age_66_Male_5th Proportion_Ht_Age_67_Male_5th Proportion_Ht_Age_68_Male_5th Proportion_Ht_Age_69_Male_5th Proportion_Ht_Age_70_Male_5th ...
    Proportion_Ht_Age_71_Male_5th Proportion_Ht_Age_72_Male_5th Proportion_Ht_Age_73_Male_5th Proportion_Ht_Age_74_Male_5th Proportion_Ht_Age_75_Male_5th ...
    Proportion_Ht_Age_76_Male_5th Proportion_Ht_Age_77_Male_5th Proportion_Ht_Age_78_Male_5th Proportion_Ht_Age_79_Male_5th Proportion_Ht_Age_80_Male_5th ...
    Proportion_Ht_Age_81_Male_5th Proportion_Ht_Age_82_Male_5th Proportion_Ht_Age_83_Male_5th Proportion_Ht_Age_84_Male_5th Proportion_Ht_Age_85_Male_5th ...
    Proportion_Ht_Age_86_Male_5th Proportion_Ht_Age_87_Male_5th Proportion_Ht_Age_88_Male_5th Proportion_Ht_Age_89_Male_5th Proportion_Ht_Age_90_Male_5th];

My_50th_Male = [Proportion_Ht_Age_50_Male_50th ...
    Proportion_Ht_Age_51_Male_50th Proportion_Ht_Age_52_Male_50th Proportion_Ht_Age_53_Male_50th Proportion_Ht_Age_54_Male_50th Proportion_Ht_Age_55_Male_50th ...
    Proportion_Ht_Age_56_Male_50th Proportion_Ht_Age_57_Male_50th Proportion_Ht_Age_58_Male_50th Proportion_Ht_Age_59_Male_50th Proportion_Ht_Age_60_Male_50th ...
    Proportion_Ht_Age_61_Male_50th Proportion_Ht_Age_62_Male_50th Proportion_Ht_Age_63_Male_50th Proportion_Ht_Age_64_Male_50th Proportion_Ht_Age_65_Male_50th ...
    Proportion_Ht_Age_66_Male_50th Proportion_Ht_Age_67_Male_50th Proportion_Ht_Age_68_Male_50th Proportion_Ht_Age_69_Male_50th Proportion_Ht_Age_70_Male_50th ...
    Proportion_Ht_Age_71_Male_50th Proportion_Ht_Age_72_Male_50th Proportion_Ht_Age_73_Male_50th Proportion_Ht_Age_74_Male_50th Proportion_Ht_Age_75_Male_50th ...
    Proportion_Ht_Age_76_Male_50th Proportion_Ht_Age_77_Male_50th Proportion_Ht_Age_78_Male_50th Proportion_Ht_Age_79_Male_50th Proportion_Ht_Age_80_Male_50th ...
    Proportion_Ht_Age_81_Male_50th Proportion_Ht_Age_82_Male_50th Proportion_Ht_Age_83_Male_50th Proportion_Ht_Age_84_Male_50th Proportion_Ht_Age_85_Male_50th ...
    Proportion_Ht_Age_86_Male_50th Proportion_Ht_Age_87_Male_50th Proportion_Ht_Age_88_Male_50th Proportion_Ht_Age_89_Male_50th Proportion_Ht_Age_90_Male_50th];

My_95th_Male = [Proportion_Ht_Age_50_Male_95th ...
    Proportion_Ht_Age_51_Male_95th Proportion_Ht_Age_52_Male_95th Proportion_Ht_Age_53_Male_95th Proportion_Ht_Age_54_Male_95th Proportion_Ht_Age_55_Male_95th ...
    Proportion_Ht_Age_56_Male_95th Proportion_Ht_Age_57_Male_95th Proportion_Ht_Age_58_Male_95th Proportion_Ht_Age_59_Male_95th Proportion_Ht_Age_60_Male_95th ...
    Proportion_Ht_Age_61_Male_95th Proportion_Ht_Age_62_Male_95th Proportion_Ht_Age_63_Male_95th Proportion_Ht_Age_64_Male_95th Proportion_Ht_Age_65_Male_95th ...
    Proportion_Ht_Age_66_Male_95th Proportion_Ht_Age_67_Male_95th Proportion_Ht_Age_68_Male_95th Proportion_Ht_Age_69_Male_95th Proportion_Ht_Age_70_Male_95th ...
    Proportion_Ht_Age_71_Male_95th Proportion_Ht_Age_72_Male_95th Proportion_Ht_Age_73_Male_95th Proportion_Ht_Age_74_Male_95th Proportion_Ht_Age_75_Male_95th ...
    Proportion_Ht_Age_76_Male_95th Proportion_Ht_Age_77_Male_95th Proportion_Ht_Age_78_Male_95th Proportion_Ht_Age_79_Male_95th Proportion_Ht_Age_80_Male_95th ...
    Proportion_Ht_Age_81_Male_95th Proportion_Ht_Age_82_Male_95th Proportion_Ht_Age_83_Male_95th Proportion_Ht_Age_84_Male_95th Proportion_Ht_Age_85_Male_95th ...
    Proportion_Ht_Age_86_Male_95th Proportion_Ht_Age_87_Male_95th Proportion_Ht_Age_88_Male_95th Proportion_Ht_Age_89_Male_95th Proportion_Ht_Age_90_Male_95th];

My_mean_Male = [Proportion_Ht_Age_50_Male_mean ...
    Proportion_Ht_Age_51_Male_mean Proportion_Ht_Age_52_Male_mean Proportion_Ht_Age_53_Male_mean Proportion_Ht_Age_54_Male_mean Proportion_Ht_Age_55_Male_mean ...
    Proportion_Ht_Age_56_Male_mean Proportion_Ht_Age_57_Male_mean Proportion_Ht_Age_58_Male_mean Proportion_Ht_Age_59_Male_mean Proportion_Ht_Age_60_Male_mean ...
    Proportion_Ht_Age_61_Male_mean Proportion_Ht_Age_62_Male_mean Proportion_Ht_Age_63_Male_mean Proportion_Ht_Age_64_Male_mean Proportion_Ht_Age_65_Male_mean ...
    Proportion_Ht_Age_66_Male_mean Proportion_Ht_Age_67_Male_mean Proportion_Ht_Age_68_Male_mean Proportion_Ht_Age_69_Male_mean Proportion_Ht_Age_70_Male_mean ...
    Proportion_Ht_Age_71_Male_mean Proportion_Ht_Age_72_Male_mean Proportion_Ht_Age_73_Male_mean Proportion_Ht_Age_74_Male_mean Proportion_Ht_Age_75_Male_mean ...
    Proportion_Ht_Age_76_Male_mean Proportion_Ht_Age_77_Male_mean Proportion_Ht_Age_78_Male_mean Proportion_Ht_Age_79_Male_mean Proportion_Ht_Age_80_Male_mean ...
    Proportion_Ht_Age_81_Male_mean Proportion_Ht_Age_82_Male_mean Proportion_Ht_Age_83_Male_mean Proportion_Ht_Age_84_Male_mean Proportion_Ht_Age_85_Male_mean ...
    Proportion_Ht_Age_86_Male_mean Proportion_Ht_Age_87_Male_mean Proportion_Ht_Age_88_Male_mean Proportion_Ht_Age_89_Male_mean Proportion_Ht_Age_90_Male_mean];

% We save the percentiles, including 5th, 50th, mean, and 95th
save('My_percentiles_Ht_Limit_04_SHARE.mat','My_Age_Female','My_5th_Female','My_50th_Female',...
    'My_mean_Female','My_95th_Female','My_Age_Male','My_5th_Male','My_50th_Male',...
    'My_mean_Male','My_95th_Male');


