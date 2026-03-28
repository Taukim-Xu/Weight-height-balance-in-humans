%% My_percentiles_Corr_Coefficient_ab_c1_Europe.mat
% 01-Europe
%
%%
My_Percentile = [5 50 95]; % quantile distribution
%% Colors
load('My_Colors.mat')
%% Loading the correlation coefficients
% 01-Europe
load('./01-Europe/Coefficients_a_and_b_c1_Western_Europe.mat')
load('./01-Europe/Coefficients_a_and_b_c1_Southern_Europe.mat')
load('./01-Europe/Coefficients_a_and_b_c1_Northern_Europe.mat')
load('./01-Europe/Coefficients_a_and_b_c1_Eastern_Europe.mat')
load('./01-Europe/Coefficients_a_and_b_c1_Eastern_Central_Europe.mat')

%% We merge them.
Age_All_Female = [Age_14_Netherlands Age_17_France Age_23_Belgium Age_31_Luxembourg ...
    Age_55_Finland Age_15_Spain Age_16_Italy Age_19_Greece Age_33_Portugal ...
    Age_34_Slovenia Age_47_Croatia Age_51_Bulgaria Age_53_Cyprus Age_59_Malta ...
    Age_61_Romania Age_13_Sweden Age_18_Denmark Age_35_Estonia Age_48_Lithuania ...
    Age_57_Latvia Age_11_Austria Age_12_Germany Age_20_Switzerland Age_28_Czech ...
    Age_29_Poland Age_32_Hungary Age_63_Slovakia];

Age_All_Male = [Age_14_Netherlands Age_17_France Age_23_Belgium Age_31_Luxembourg ...
    Age_55_Finland Age_15_Spain Age_16_Italy Age_19_Greece Age_33_Portugal ...
    Age_34_Slovenia Age_47_Croatia Age_51_Bulgaria Age_53_Cyprus Age_59_Malta ...
    Age_61_Romania Age_13_Sweden Age_18_Denmark Age_35_Estonia Age_48_Lithuania ...
    Age_57_Latvia Age_11_Austria Age_12_Germany Age_20_Switzerland Age_28_Czech ...
    Age_29_Poland Age_32_Hungary Age_63_Slovakia];

Coefficient_a_All_Female = [Coefficient_a_Female_1_14_Netherlands Coefficient_a_Female_1_17_France ...
    Coefficient_a_Female_1_23_Belgium Coefficient_a_Female_1_31_Luxembourg Coefficient_a_Female_1_55_Finland ...
    Coefficient_a_Female_1_15_Spain Coefficient_a_Female_1_16_Italy Coefficient_a_Female_1_19_Greece ...
    Coefficient_a_Female_1_33_Portugal Coefficient_a_Female_1_34_Slovenia Coefficient_a_Female_1_47_Croatia ...
    Coefficient_a_Female_1_51_Bulgaria Coefficient_a_Female_1_53_Cyprus Coefficient_a_Female_1_59_Malta ...
    Coefficient_a_Female_1_61_Romania Coefficient_a_Female_1_13_Sweden Coefficient_a_Female_1_18_Denmark ...
    Coefficient_a_Female_1_35_Estonia Coefficient_a_Female_1_48_Lithuania Coefficient_a_Female_1_57_Latvia ...
    Coefficient_a_Female_1_11_Austria Coefficient_a_Female_1_12_Germany Coefficient_a_Female_1_20_Switzerland ...
    Coefficient_a_Female_1_20_Switzerland Coefficient_a_Female_1_29_Poland Coefficient_a_Female_1_32_Hungary ...
    Coefficient_a_Female_1_63_Slovakia];

Coefficient_b_All_Female = [Coefficient_b_Female_1_14_Netherlands Coefficient_b_Female_1_17_France ...
    Coefficient_b_Female_1_23_Belgium Coefficient_b_Female_1_31_Luxembourg Coefficient_b_Female_1_55_Finland ...
    Coefficient_b_Female_1_15_Spain Coefficient_b_Female_1_16_Italy Coefficient_b_Female_1_19_Greece ...
    Coefficient_b_Female_1_33_Portugal Coefficient_b_Female_1_34_Slovenia Coefficient_b_Female_1_47_Croatia ...
    Coefficient_b_Female_1_51_Bulgaria Coefficient_b_Female_1_53_Cyprus Coefficient_b_Female_1_59_Malta ...
    Coefficient_b_Female_1_61_Romania Coefficient_b_Female_1_13_Sweden Coefficient_b_Female_1_18_Denmark ...
    Coefficient_b_Female_1_35_Estonia Coefficient_b_Female_1_48_Lithuania Coefficient_b_Female_1_57_Latvia ...
    Coefficient_b_Female_1_11_Austria Coefficient_b_Female_1_12_Germany Coefficient_b_Female_1_20_Switzerland ...
    Coefficient_b_Female_1_20_Switzerland Coefficient_b_Female_1_29_Poland Coefficient_b_Female_1_32_Hungary ...
    Coefficient_b_Female_1_63_Slovakia];

Coefficient_a_All_Male = [Coefficient_a_Male_1_14_Netherlands Coefficient_a_Male_1_17_France ...
    Coefficient_a_Male_1_23_Belgium Coefficient_a_Male_1_31_Luxembourg Coefficient_a_Male_1_55_Finland ...
    Coefficient_a_Male_1_15_Spain Coefficient_a_Male_1_16_Italy Coefficient_a_Male_1_19_Greece ...
    Coefficient_a_Male_1_33_Portugal Coefficient_a_Male_1_34_Slovenia Coefficient_a_Male_1_47_Croatia ...
    Coefficient_a_Male_1_51_Bulgaria Coefficient_a_Male_1_53_Cyprus Coefficient_a_Male_1_59_Malta ...
    Coefficient_a_Male_1_61_Romania Coefficient_a_Male_1_13_Sweden Coefficient_a_Male_1_18_Denmark ...
    Coefficient_a_Male_1_35_Estonia Coefficient_a_Male_1_48_Lithuania Coefficient_a_Male_1_57_Latvia ...
    Coefficient_a_Male_1_11_Austria Coefficient_a_Male_1_12_Germany Coefficient_a_Male_1_20_Switzerland ...
    Coefficient_a_Male_1_20_Switzerland Coefficient_a_Male_1_29_Poland Coefficient_a_Male_1_32_Hungary ...
    Coefficient_a_Male_1_63_Slovakia];

Coefficient_b_All_Male = [Coefficient_b_Male_1_14_Netherlands Coefficient_b_Male_1_17_France ...
    Coefficient_b_Male_1_23_Belgium Coefficient_b_Male_1_31_Luxembourg Coefficient_b_Male_1_55_Finland ...
    Coefficient_b_Male_1_15_Spain Coefficient_b_Male_1_16_Italy Coefficient_b_Male_1_19_Greece ...
    Coefficient_b_Male_1_33_Portugal Coefficient_b_Male_1_34_Slovenia Coefficient_b_Male_1_47_Croatia ...
    Coefficient_b_Male_1_51_Bulgaria Coefficient_b_Male_1_53_Cyprus Coefficient_b_Male_1_59_Malta ...
    Coefficient_b_Male_1_61_Romania Coefficient_b_Male_1_13_Sweden Coefficient_b_Male_1_18_Denmark ...
    Coefficient_b_Male_1_35_Estonia Coefficient_b_Male_1_48_Lithuania Coefficient_b_Male_1_57_Latvia ...
    Coefficient_b_Male_1_11_Austria Coefficient_b_Male_1_12_Germany Coefficient_b_Male_1_20_Switzerland ...
    Coefficient_b_Male_1_20_Switzerland Coefficient_b_Male_1_29_Poland Coefficient_b_Male_1_32_Hungary ...
    Coefficient_b_Male_1_63_Slovakia];

%%
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

My_Age_Female = 50:90;
My_5th_Coefficient_a_Female = [Coefficient_a_Age_50_Female_5th ...
    Coefficient_a_Age_51_Female_5th Coefficient_a_Age_52_Female_5th Coefficient_a_Age_53_Female_5th Coefficient_a_Age_54_Female_5th Coefficient_a_Age_55_Female_5th ...
    Coefficient_a_Age_56_Female_5th Coefficient_a_Age_57_Female_5th Coefficient_a_Age_58_Female_5th Coefficient_a_Age_59_Female_5th Coefficient_a_Age_60_Female_5th ...
    Coefficient_a_Age_61_Female_5th Coefficient_a_Age_62_Female_5th Coefficient_a_Age_63_Female_5th Coefficient_a_Age_64_Female_5th Coefficient_a_Age_65_Female_5th ...
    Coefficient_a_Age_66_Female_5th Coefficient_a_Age_67_Female_5th Coefficient_a_Age_68_Female_5th Coefficient_a_Age_69_Female_5th Coefficient_a_Age_70_Female_5th ...
    Coefficient_a_Age_71_Female_5th Coefficient_a_Age_72_Female_5th Coefficient_a_Age_73_Female_5th Coefficient_a_Age_74_Female_5th Coefficient_a_Age_75_Female_5th ...
    Coefficient_a_Age_76_Female_5th Coefficient_a_Age_77_Female_5th Coefficient_a_Age_78_Female_5th Coefficient_a_Age_79_Female_5th Coefficient_a_Age_80_Female_5th ...
    Coefficient_a_Age_81_Female_5th Coefficient_a_Age_82_Female_5th Coefficient_a_Age_83_Female_5th Coefficient_a_Age_84_Female_5th Coefficient_a_Age_85_Female_5th ...
    Coefficient_a_Age_86_Female_5th Coefficient_a_Age_87_Female_5th Coefficient_a_Age_88_Female_5th Coefficient_a_Age_89_Female_5th Coefficient_a_Age_90_Female_5th];

My_50th_Coefficient_a_Female = [Coefficient_a_Age_50_Female_50th ...
    Coefficient_a_Age_51_Female_50th Coefficient_a_Age_52_Female_50th Coefficient_a_Age_53_Female_50th Coefficient_a_Age_54_Female_50th Coefficient_a_Age_55_Female_50th ...
    Coefficient_a_Age_56_Female_50th Coefficient_a_Age_57_Female_50th Coefficient_a_Age_58_Female_50th Coefficient_a_Age_59_Female_50th Coefficient_a_Age_60_Female_50th ...
    Coefficient_a_Age_61_Female_50th Coefficient_a_Age_62_Female_50th Coefficient_a_Age_63_Female_50th Coefficient_a_Age_64_Female_50th Coefficient_a_Age_65_Female_50th ...
    Coefficient_a_Age_66_Female_50th Coefficient_a_Age_67_Female_50th Coefficient_a_Age_68_Female_50th Coefficient_a_Age_69_Female_50th Coefficient_a_Age_70_Female_50th ...
    Coefficient_a_Age_71_Female_50th Coefficient_a_Age_72_Female_50th Coefficient_a_Age_73_Female_50th Coefficient_a_Age_74_Female_50th Coefficient_a_Age_75_Female_50th ...
    Coefficient_a_Age_76_Female_50th Coefficient_a_Age_77_Female_50th Coefficient_a_Age_78_Female_50th Coefficient_a_Age_79_Female_50th Coefficient_a_Age_80_Female_50th ...
    Coefficient_a_Age_81_Female_50th Coefficient_a_Age_82_Female_50th Coefficient_a_Age_83_Female_50th Coefficient_a_Age_84_Female_50th Coefficient_a_Age_85_Female_50th ...
    Coefficient_a_Age_86_Female_50th Coefficient_a_Age_87_Female_50th Coefficient_a_Age_88_Female_50th Coefficient_a_Age_89_Female_50th Coefficient_a_Age_90_Female_50th];

My_95th_Coefficient_a_Female = [Coefficient_a_Age_50_Female_95th ...
    Coefficient_a_Age_51_Female_95th Coefficient_a_Age_52_Female_95th Coefficient_a_Age_53_Female_95th Coefficient_a_Age_54_Female_95th Coefficient_a_Age_55_Female_95th ...
    Coefficient_a_Age_56_Female_95th Coefficient_a_Age_57_Female_95th Coefficient_a_Age_58_Female_95th Coefficient_a_Age_59_Female_95th Coefficient_a_Age_60_Female_95th ...
    Coefficient_a_Age_61_Female_95th Coefficient_a_Age_62_Female_95th Coefficient_a_Age_63_Female_95th Coefficient_a_Age_64_Female_95th Coefficient_a_Age_65_Female_95th ...
    Coefficient_a_Age_66_Female_95th Coefficient_a_Age_67_Female_95th Coefficient_a_Age_68_Female_95th Coefficient_a_Age_69_Female_95th Coefficient_a_Age_70_Female_95th ...
    Coefficient_a_Age_71_Female_95th Coefficient_a_Age_72_Female_95th Coefficient_a_Age_73_Female_95th Coefficient_a_Age_74_Female_95th Coefficient_a_Age_75_Female_95th ...
    Coefficient_a_Age_76_Female_95th Coefficient_a_Age_77_Female_95th Coefficient_a_Age_78_Female_95th Coefficient_a_Age_79_Female_95th Coefficient_a_Age_80_Female_95th ...
    Coefficient_a_Age_81_Female_95th Coefficient_a_Age_82_Female_95th Coefficient_a_Age_83_Female_95th Coefficient_a_Age_84_Female_95th Coefficient_a_Age_85_Female_95th ...
    Coefficient_a_Age_86_Female_95th Coefficient_a_Age_87_Female_95th Coefficient_a_Age_88_Female_95th Coefficient_a_Age_89_Female_95th Coefficient_a_Age_90_Female_95th];

My_mean_Coefficient_a_Female = [Coefficient_a_Age_50_Female_mean ...
    Coefficient_a_Age_51_Female_mean Coefficient_a_Age_52_Female_mean Coefficient_a_Age_53_Female_mean Coefficient_a_Age_54_Female_mean Coefficient_a_Age_55_Female_mean ...
    Coefficient_a_Age_56_Female_mean Coefficient_a_Age_57_Female_mean Coefficient_a_Age_58_Female_mean Coefficient_a_Age_59_Female_mean Coefficient_a_Age_60_Female_mean ...
    Coefficient_a_Age_61_Female_mean Coefficient_a_Age_62_Female_mean Coefficient_a_Age_63_Female_mean Coefficient_a_Age_64_Female_mean Coefficient_a_Age_65_Female_mean ...
    Coefficient_a_Age_66_Female_mean Coefficient_a_Age_67_Female_mean Coefficient_a_Age_68_Female_mean Coefficient_a_Age_69_Female_mean Coefficient_a_Age_70_Female_mean ...
    Coefficient_a_Age_71_Female_mean Coefficient_a_Age_72_Female_mean Coefficient_a_Age_73_Female_mean Coefficient_a_Age_74_Female_mean Coefficient_a_Age_75_Female_mean ...
    Coefficient_a_Age_76_Female_mean Coefficient_a_Age_77_Female_mean Coefficient_a_Age_78_Female_mean Coefficient_a_Age_79_Female_mean Coefficient_a_Age_80_Female_mean ...
    Coefficient_a_Age_81_Female_mean Coefficient_a_Age_82_Female_mean Coefficient_a_Age_83_Female_mean Coefficient_a_Age_84_Female_mean Coefficient_a_Age_85_Female_mean ...
    Coefficient_a_Age_86_Female_mean Coefficient_a_Age_87_Female_mean Coefficient_a_Age_88_Female_mean Coefficient_a_Age_89_Female_mean Coefficient_a_Age_90_Female_mean];


My_5th_Coefficient_b_Female = [Coefficient_b_Age_50_Female_5th ...
    Coefficient_b_Age_51_Female_5th Coefficient_b_Age_52_Female_5th Coefficient_b_Age_53_Female_5th Coefficient_b_Age_54_Female_5th Coefficient_b_Age_55_Female_5th ...
    Coefficient_b_Age_56_Female_5th Coefficient_b_Age_57_Female_5th Coefficient_b_Age_58_Female_5th Coefficient_b_Age_59_Female_5th Coefficient_b_Age_60_Female_5th ...
    Coefficient_b_Age_61_Female_5th Coefficient_b_Age_62_Female_5th Coefficient_b_Age_63_Female_5th Coefficient_b_Age_64_Female_5th Coefficient_b_Age_65_Female_5th ...
    Coefficient_b_Age_66_Female_5th Coefficient_b_Age_67_Female_5th Coefficient_b_Age_68_Female_5th Coefficient_b_Age_69_Female_5th Coefficient_b_Age_70_Female_5th ...
    Coefficient_b_Age_71_Female_5th Coefficient_b_Age_72_Female_5th Coefficient_b_Age_73_Female_5th Coefficient_b_Age_74_Female_5th Coefficient_b_Age_75_Female_5th ...
    Coefficient_b_Age_76_Female_5th Coefficient_b_Age_77_Female_5th Coefficient_b_Age_78_Female_5th Coefficient_b_Age_79_Female_5th Coefficient_b_Age_80_Female_5th ...
    Coefficient_b_Age_81_Female_5th Coefficient_b_Age_82_Female_5th Coefficient_b_Age_83_Female_5th Coefficient_b_Age_84_Female_5th Coefficient_b_Age_85_Female_5th ...
    Coefficient_b_Age_86_Female_5th Coefficient_b_Age_87_Female_5th Coefficient_b_Age_88_Female_5th Coefficient_b_Age_89_Female_5th Coefficient_b_Age_90_Female_5th];

My_50th_Coefficient_b_Female = [Coefficient_b_Age_50_Female_50th ...
    Coefficient_b_Age_51_Female_50th Coefficient_b_Age_52_Female_50th Coefficient_b_Age_53_Female_50th Coefficient_b_Age_54_Female_50th Coefficient_b_Age_55_Female_50th ...
    Coefficient_b_Age_56_Female_50th Coefficient_b_Age_57_Female_50th Coefficient_b_Age_58_Female_50th Coefficient_b_Age_59_Female_50th Coefficient_b_Age_60_Female_50th ...
    Coefficient_b_Age_61_Female_50th Coefficient_b_Age_62_Female_50th Coefficient_b_Age_63_Female_50th Coefficient_b_Age_64_Female_50th Coefficient_b_Age_65_Female_50th ...
    Coefficient_b_Age_66_Female_50th Coefficient_b_Age_67_Female_50th Coefficient_b_Age_68_Female_50th Coefficient_b_Age_69_Female_50th Coefficient_b_Age_70_Female_50th ...
    Coefficient_b_Age_71_Female_50th Coefficient_b_Age_72_Female_50th Coefficient_b_Age_73_Female_50th Coefficient_b_Age_74_Female_50th Coefficient_b_Age_75_Female_50th ...
    Coefficient_b_Age_76_Female_50th Coefficient_b_Age_77_Female_50th Coefficient_b_Age_78_Female_50th Coefficient_b_Age_79_Female_50th Coefficient_b_Age_80_Female_50th ...
    Coefficient_b_Age_81_Female_50th Coefficient_b_Age_82_Female_50th Coefficient_b_Age_83_Female_50th Coefficient_b_Age_84_Female_50th Coefficient_b_Age_85_Female_50th ...
    Coefficient_b_Age_86_Female_50th Coefficient_b_Age_87_Female_50th Coefficient_b_Age_88_Female_50th Coefficient_b_Age_89_Female_50th Coefficient_b_Age_90_Female_50th];

My_95th_Coefficient_b_Female = [Coefficient_b_Age_50_Female_95th ...
    Coefficient_b_Age_51_Female_95th Coefficient_b_Age_52_Female_95th Coefficient_b_Age_53_Female_95th Coefficient_b_Age_54_Female_95th Coefficient_b_Age_55_Female_95th ...
    Coefficient_b_Age_56_Female_95th Coefficient_b_Age_57_Female_95th Coefficient_b_Age_58_Female_95th Coefficient_b_Age_59_Female_95th Coefficient_b_Age_60_Female_95th ...
    Coefficient_b_Age_61_Female_95th Coefficient_b_Age_62_Female_95th Coefficient_b_Age_63_Female_95th Coefficient_b_Age_64_Female_95th Coefficient_b_Age_65_Female_95th ...
    Coefficient_b_Age_66_Female_95th Coefficient_b_Age_67_Female_95th Coefficient_b_Age_68_Female_95th Coefficient_b_Age_69_Female_95th Coefficient_b_Age_70_Female_95th ...
    Coefficient_b_Age_71_Female_95th Coefficient_b_Age_72_Female_95th Coefficient_b_Age_73_Female_95th Coefficient_b_Age_74_Female_95th Coefficient_b_Age_75_Female_95th ...
    Coefficient_b_Age_76_Female_95th Coefficient_b_Age_77_Female_95th Coefficient_b_Age_78_Female_95th Coefficient_b_Age_79_Female_95th Coefficient_b_Age_80_Female_95th ...
    Coefficient_b_Age_81_Female_95th Coefficient_b_Age_82_Female_95th Coefficient_b_Age_83_Female_95th Coefficient_b_Age_84_Female_95th Coefficient_b_Age_85_Female_95th ...
    Coefficient_b_Age_86_Female_95th Coefficient_b_Age_87_Female_95th Coefficient_b_Age_88_Female_95th Coefficient_b_Age_89_Female_95th Coefficient_b_Age_90_Female_95th];

My_mean_Coefficient_b_Female = [Coefficient_b_Age_50_Female_mean ...
    Coefficient_b_Age_51_Female_mean Coefficient_b_Age_52_Female_mean Coefficient_b_Age_53_Female_mean Coefficient_b_Age_54_Female_mean Coefficient_b_Age_55_Female_mean ...
    Coefficient_b_Age_56_Female_mean Coefficient_b_Age_57_Female_mean Coefficient_b_Age_58_Female_mean Coefficient_b_Age_59_Female_mean Coefficient_b_Age_60_Female_mean ...
    Coefficient_b_Age_61_Female_mean Coefficient_b_Age_62_Female_mean Coefficient_b_Age_63_Female_mean Coefficient_b_Age_64_Female_mean Coefficient_b_Age_65_Female_mean ...
    Coefficient_b_Age_66_Female_mean Coefficient_b_Age_67_Female_mean Coefficient_b_Age_68_Female_mean Coefficient_b_Age_69_Female_mean Coefficient_b_Age_70_Female_mean ...
    Coefficient_b_Age_71_Female_mean Coefficient_b_Age_72_Female_mean Coefficient_b_Age_73_Female_mean Coefficient_b_Age_74_Female_mean Coefficient_b_Age_75_Female_mean ...
    Coefficient_b_Age_76_Female_mean Coefficient_b_Age_77_Female_mean Coefficient_b_Age_78_Female_mean Coefficient_b_Age_79_Female_mean Coefficient_b_Age_80_Female_mean ...
    Coefficient_b_Age_81_Female_mean Coefficient_b_Age_82_Female_mean Coefficient_b_Age_83_Female_mean Coefficient_b_Age_84_Female_mean Coefficient_b_Age_85_Female_mean ...
    Coefficient_b_Age_86_Female_mean Coefficient_b_Age_87_Female_mean Coefficient_b_Age_88_Female_mean Coefficient_b_Age_89_Female_mean Coefficient_b_Age_90_Female_mean];

My_Age_Male = 50:90;
My_5th_Coefficient_a_Male = [Coefficient_a_Age_50_Male_5th ...
    Coefficient_a_Age_51_Male_5th Coefficient_a_Age_52_Male_5th Coefficient_a_Age_53_Male_5th Coefficient_a_Age_54_Male_5th Coefficient_a_Age_55_Male_5th ...
    Coefficient_a_Age_56_Male_5th Coefficient_a_Age_57_Male_5th Coefficient_a_Age_58_Male_5th Coefficient_a_Age_59_Male_5th Coefficient_a_Age_60_Male_5th ...
    Coefficient_a_Age_61_Male_5th Coefficient_a_Age_62_Male_5th Coefficient_a_Age_63_Male_5th Coefficient_a_Age_64_Male_5th Coefficient_a_Age_65_Male_5th ...
    Coefficient_a_Age_66_Male_5th Coefficient_a_Age_67_Male_5th Coefficient_a_Age_68_Male_5th Coefficient_a_Age_69_Male_5th Coefficient_a_Age_70_Male_5th ...
    Coefficient_a_Age_71_Male_5th Coefficient_a_Age_72_Male_5th Coefficient_a_Age_73_Male_5th Coefficient_a_Age_74_Male_5th Coefficient_a_Age_75_Male_5th ...
    Coefficient_a_Age_76_Male_5th Coefficient_a_Age_77_Male_5th Coefficient_a_Age_78_Male_5th Coefficient_a_Age_79_Male_5th Coefficient_a_Age_80_Male_5th ...
    Coefficient_a_Age_81_Male_5th Coefficient_a_Age_82_Male_5th Coefficient_a_Age_83_Male_5th Coefficient_a_Age_84_Male_5th Coefficient_a_Age_85_Male_5th ...
    Coefficient_a_Age_86_Male_5th Coefficient_a_Age_87_Male_5th Coefficient_a_Age_88_Male_5th Coefficient_a_Age_89_Male_5th Coefficient_a_Age_90_Male_5th];

My_50th_Coefficient_a_Male = [Coefficient_a_Age_50_Male_50th ...
    Coefficient_a_Age_51_Male_50th Coefficient_a_Age_52_Male_50th Coefficient_a_Age_53_Male_50th Coefficient_a_Age_54_Male_50th Coefficient_a_Age_55_Male_50th ...
    Coefficient_a_Age_56_Male_50th Coefficient_a_Age_57_Male_50th Coefficient_a_Age_58_Male_50th Coefficient_a_Age_59_Male_50th Coefficient_a_Age_60_Male_50th ...
    Coefficient_a_Age_61_Male_50th Coefficient_a_Age_62_Male_50th Coefficient_a_Age_63_Male_50th Coefficient_a_Age_64_Male_50th Coefficient_a_Age_65_Male_50th ...
    Coefficient_a_Age_66_Male_50th Coefficient_a_Age_67_Male_50th Coefficient_a_Age_68_Male_50th Coefficient_a_Age_69_Male_50th Coefficient_a_Age_70_Male_50th ...
    Coefficient_a_Age_71_Male_50th Coefficient_a_Age_72_Male_50th Coefficient_a_Age_73_Male_50th Coefficient_a_Age_74_Male_50th Coefficient_a_Age_75_Male_50th ...
    Coefficient_a_Age_76_Male_50th Coefficient_a_Age_77_Male_50th Coefficient_a_Age_78_Male_50th Coefficient_a_Age_79_Male_50th Coefficient_a_Age_80_Male_50th ...
    Coefficient_a_Age_81_Male_50th Coefficient_a_Age_82_Male_50th Coefficient_a_Age_83_Male_50th Coefficient_a_Age_84_Male_50th Coefficient_a_Age_85_Male_50th ...
    Coefficient_a_Age_86_Male_50th Coefficient_a_Age_87_Male_50th Coefficient_a_Age_88_Male_50th Coefficient_a_Age_89_Male_50th Coefficient_a_Age_90_Male_50th];

My_95th_Coefficient_a_Male = [Coefficient_a_Age_50_Male_95th ...
    Coefficient_a_Age_51_Male_95th Coefficient_a_Age_52_Male_95th Coefficient_a_Age_53_Male_95th Coefficient_a_Age_54_Male_95th Coefficient_a_Age_55_Male_95th ...
    Coefficient_a_Age_56_Male_95th Coefficient_a_Age_57_Male_95th Coefficient_a_Age_58_Male_95th Coefficient_a_Age_59_Male_95th Coefficient_a_Age_60_Male_95th ...
    Coefficient_a_Age_61_Male_95th Coefficient_a_Age_62_Male_95th Coefficient_a_Age_63_Male_95th Coefficient_a_Age_64_Male_95th Coefficient_a_Age_65_Male_95th ...
    Coefficient_a_Age_66_Male_95th Coefficient_a_Age_67_Male_95th Coefficient_a_Age_68_Male_95th Coefficient_a_Age_69_Male_95th Coefficient_a_Age_70_Male_95th ...
    Coefficient_a_Age_71_Male_95th Coefficient_a_Age_72_Male_95th Coefficient_a_Age_73_Male_95th Coefficient_a_Age_74_Male_95th Coefficient_a_Age_75_Male_95th ...
    Coefficient_a_Age_76_Male_95th Coefficient_a_Age_77_Male_95th Coefficient_a_Age_78_Male_95th Coefficient_a_Age_79_Male_95th Coefficient_a_Age_80_Male_95th ...
    Coefficient_a_Age_81_Male_95th Coefficient_a_Age_82_Male_95th Coefficient_a_Age_83_Male_95th Coefficient_a_Age_84_Male_95th Coefficient_a_Age_85_Male_95th ...
    Coefficient_a_Age_86_Male_95th Coefficient_a_Age_87_Male_95th Coefficient_a_Age_88_Male_95th Coefficient_a_Age_89_Male_95th Coefficient_a_Age_90_Male_95th];

My_mean_Coefficient_a_Male = [Coefficient_a_Age_50_Male_mean ...
    Coefficient_a_Age_51_Male_mean Coefficient_a_Age_52_Male_mean Coefficient_a_Age_53_Male_mean Coefficient_a_Age_54_Male_mean Coefficient_a_Age_55_Male_mean ...
    Coefficient_a_Age_56_Male_mean Coefficient_a_Age_57_Male_mean Coefficient_a_Age_58_Male_mean Coefficient_a_Age_59_Male_mean Coefficient_a_Age_60_Male_mean ...
    Coefficient_a_Age_61_Male_mean Coefficient_a_Age_62_Male_mean Coefficient_a_Age_63_Male_mean Coefficient_a_Age_64_Male_mean Coefficient_a_Age_65_Male_mean ...
    Coefficient_a_Age_66_Male_mean Coefficient_a_Age_67_Male_mean Coefficient_a_Age_68_Male_mean Coefficient_a_Age_69_Male_mean Coefficient_a_Age_70_Male_mean ...
    Coefficient_a_Age_71_Male_mean Coefficient_a_Age_72_Male_mean Coefficient_a_Age_73_Male_mean Coefficient_a_Age_74_Male_mean Coefficient_a_Age_75_Male_mean ...
    Coefficient_a_Age_76_Male_mean Coefficient_a_Age_77_Male_mean Coefficient_a_Age_78_Male_mean Coefficient_a_Age_79_Male_mean Coefficient_a_Age_80_Male_mean ...
    Coefficient_a_Age_81_Male_mean Coefficient_a_Age_82_Male_mean Coefficient_a_Age_83_Male_mean Coefficient_a_Age_84_Male_mean Coefficient_a_Age_85_Male_mean ...
    Coefficient_a_Age_86_Male_mean Coefficient_a_Age_87_Male_mean Coefficient_a_Age_88_Male_mean Coefficient_a_Age_89_Male_mean Coefficient_a_Age_90_Male_mean];


My_5th_Coefficient_b_Male = [Coefficient_b_Age_50_Male_5th ...
    Coefficient_b_Age_51_Male_5th Coefficient_b_Age_52_Male_5th Coefficient_b_Age_53_Male_5th Coefficient_b_Age_54_Male_5th Coefficient_b_Age_55_Male_5th ...
    Coefficient_b_Age_56_Male_5th Coefficient_b_Age_57_Male_5th Coefficient_b_Age_58_Male_5th Coefficient_b_Age_59_Male_5th Coefficient_b_Age_60_Male_5th ...
    Coefficient_b_Age_61_Male_5th Coefficient_b_Age_62_Male_5th Coefficient_b_Age_63_Male_5th Coefficient_b_Age_64_Male_5th Coefficient_b_Age_65_Male_5th ...
    Coefficient_b_Age_66_Male_5th Coefficient_b_Age_67_Male_5th Coefficient_b_Age_68_Male_5th Coefficient_b_Age_69_Male_5th Coefficient_b_Age_70_Male_5th ...
    Coefficient_b_Age_71_Male_5th Coefficient_b_Age_72_Male_5th Coefficient_b_Age_73_Male_5th Coefficient_b_Age_74_Male_5th Coefficient_b_Age_75_Male_5th ...
    Coefficient_b_Age_76_Male_5th Coefficient_b_Age_77_Male_5th Coefficient_b_Age_78_Male_5th Coefficient_b_Age_79_Male_5th Coefficient_b_Age_80_Male_5th ...
    Coefficient_b_Age_81_Male_5th Coefficient_b_Age_82_Male_5th Coefficient_b_Age_83_Male_5th Coefficient_b_Age_84_Male_5th Coefficient_b_Age_85_Male_5th ...
    Coefficient_b_Age_86_Male_5th Coefficient_b_Age_87_Male_5th Coefficient_b_Age_88_Male_5th Coefficient_b_Age_89_Male_5th Coefficient_b_Age_90_Male_5th];

My_50th_Coefficient_b_Male = [Coefficient_b_Age_50_Male_50th ...
    Coefficient_b_Age_51_Male_50th Coefficient_b_Age_52_Male_50th Coefficient_b_Age_53_Male_50th Coefficient_b_Age_54_Male_50th Coefficient_b_Age_55_Male_50th ...
    Coefficient_b_Age_56_Male_50th Coefficient_b_Age_57_Male_50th Coefficient_b_Age_58_Male_50th Coefficient_b_Age_59_Male_50th Coefficient_b_Age_60_Male_50th ...
    Coefficient_b_Age_61_Male_50th Coefficient_b_Age_62_Male_50th Coefficient_b_Age_63_Male_50th Coefficient_b_Age_64_Male_50th Coefficient_b_Age_65_Male_50th ...
    Coefficient_b_Age_66_Male_50th Coefficient_b_Age_67_Male_50th Coefficient_b_Age_68_Male_50th Coefficient_b_Age_69_Male_50th Coefficient_b_Age_70_Male_50th ...
    Coefficient_b_Age_71_Male_50th Coefficient_b_Age_72_Male_50th Coefficient_b_Age_73_Male_50th Coefficient_b_Age_74_Male_50th Coefficient_b_Age_75_Male_50th ...
    Coefficient_b_Age_76_Male_50th Coefficient_b_Age_77_Male_50th Coefficient_b_Age_78_Male_50th Coefficient_b_Age_79_Male_50th Coefficient_b_Age_80_Male_50th ...
    Coefficient_b_Age_81_Male_50th Coefficient_b_Age_82_Male_50th Coefficient_b_Age_83_Male_50th Coefficient_b_Age_84_Male_50th Coefficient_b_Age_85_Male_50th ...
    Coefficient_b_Age_86_Male_50th Coefficient_b_Age_87_Male_50th Coefficient_b_Age_88_Male_50th Coefficient_b_Age_89_Male_50th Coefficient_b_Age_90_Male_50th];

My_95th_Coefficient_b_Male = [Coefficient_b_Age_50_Male_95th ...
    Coefficient_b_Age_51_Male_95th Coefficient_b_Age_52_Male_95th Coefficient_b_Age_53_Male_95th Coefficient_b_Age_54_Male_95th Coefficient_b_Age_55_Male_95th ...
    Coefficient_b_Age_56_Male_95th Coefficient_b_Age_57_Male_95th Coefficient_b_Age_58_Male_95th Coefficient_b_Age_59_Male_95th Coefficient_b_Age_60_Male_95th ...
    Coefficient_b_Age_61_Male_95th Coefficient_b_Age_62_Male_95th Coefficient_b_Age_63_Male_95th Coefficient_b_Age_64_Male_95th Coefficient_b_Age_65_Male_95th ...
    Coefficient_b_Age_66_Male_95th Coefficient_b_Age_67_Male_95th Coefficient_b_Age_68_Male_95th Coefficient_b_Age_69_Male_95th Coefficient_b_Age_70_Male_95th ...
    Coefficient_b_Age_71_Male_95th Coefficient_b_Age_72_Male_95th Coefficient_b_Age_73_Male_95th Coefficient_b_Age_74_Male_95th Coefficient_b_Age_75_Male_95th ...
    Coefficient_b_Age_76_Male_95th Coefficient_b_Age_77_Male_95th Coefficient_b_Age_78_Male_95th Coefficient_b_Age_79_Male_95th Coefficient_b_Age_80_Male_95th ...
    Coefficient_b_Age_81_Male_95th Coefficient_b_Age_82_Male_95th Coefficient_b_Age_83_Male_95th Coefficient_b_Age_84_Male_95th Coefficient_b_Age_85_Male_95th ...
    Coefficient_b_Age_86_Male_95th Coefficient_b_Age_87_Male_95th Coefficient_b_Age_88_Male_95th Coefficient_b_Age_89_Male_95th Coefficient_b_Age_90_Male_95th];

My_mean_Coefficient_b_Male = [Coefficient_b_Age_50_Male_mean ...
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
save('My_percentiles_Corr_Coefficient_ab_c1_Europe.mat','My_Age_Female','My_5th_Coefficient_a_Female','My_50th_Coefficient_a_Female',...
    'My_95th_Coefficient_a_Female','My_mean_Coefficient_a_Female','My_5th_Coefficient_b_Female','My_50th_Coefficient_b_Female',...
    'My_95th_Coefficient_b_Female','My_mean_Coefficient_b_Female',...
    'My_Age_Male','My_5th_Coefficient_a_Male','My_50th_Coefficient_a_Male','My_95th_Coefficient_a_Male','My_mean_Coefficient_a_Male',...
    'My_5th_Coefficient_b_Male','My_50th_Coefficient_b_Male','My_95th_Coefficient_b_Male','My_mean_Coefficient_b_Male');
