%% Ht_Limit_04_SHARE.m
% Including:
% 11_Austria - 奥地利 - 中欧
% 12_Germany - 德国 - 中欧
% 13_Sweden - 瑞典 - 北欧
% 14_Netherlands - 荷兰 - 西欧
% 15_Spain - 西班牙 - 南欧
% 16_Italy - 意大利 - 南欧
% 17_France - 法国 - 西欧
% 18_Denmark - 丹麦 - 北欧
% 19_Greece - 希腊 - 南欧
% 20_Switzerland - 瑞士 - 中欧
% 23_Belgium - 比利时 - 西欧
% 25_Israel - 以色列 - 亚洲
% 28_Czech - 捷克 - 中欧
% 29_Poland - 波兰 - 中欧
% 31_Luxembourg - 卢森堡 - 西欧
% 32_Hungary - 匈牙利 - 中欧
% 33_Portugal - 葡萄牙 - 南欧
% 34_Slovenia - 斯洛文尼亚 - 南欧
% 35_Estonia - 爱沙尼亚 - 东欧
% 47_Croatia - 克罗地亚 - 南欧
% 48_Lithuania - 立陶宛 - 东欧
% 51_Bulgaria - 保加利亚 - 南欧
% 53_Cyprus - 塞浦路斯 - 南欧
% 55_Finland - 芬兰 - 西欧
% 57_Latvia - 拉脱维亚 - 东欧
% 59_Malta - 马耳他 - 南欧
% 61_Romania - 罗马尼亚 - 南欧
% 63_Slovakia - 斯洛伐克 - 中欧
load('Coefficients_a_and_b_c1_SHARE.mat')
%% Central Europe datasets
%% 11_Austria
% Loading the data
Female_data = xlsread('11_Austria.xlsx','Female');
Male_data = xlsread('11_Austria.xlsx','Male');
% Grouping by age
Female_data_50 = []; % == 50
Female_data_51 = [];
Female_data_52 = [];
Female_data_53 = [];
Female_data_54 = [];
Female_data_55 = [];
Female_data_56 = [];
Female_data_57 = [];
Female_data_58 = [];
Female_data_59 = [];
Female_data_60 = [];
Female_data_61 = [];
Female_data_62 = [];
Female_data_63 = [];
Female_data_64 = [];
Female_data_65 = [];
Female_data_66 = [];
Female_data_67 = [];
Female_data_68 = [];
Female_data_69 = [];
Female_data_70 = [];
Female_data_71 = [];
Female_data_72 = [];
Female_data_73 = [];
Female_data_74 = [];
Female_data_75 = [];
Female_data_76 = [];
Female_data_77 = [];
Female_data_78 = [];
Female_data_79 = [];
Female_data_80 = [];
Female_data_81 = [];
Female_data_82 = [];
Female_data_83 = [];
Female_data_84 = [];
Female_data_85 = [];
Female_data_86 = [];
Female_data_87 = [];
Female_data_88 = [];
Female_data_89 = [];
Female_data_90 = []; % ==90

Male_data_50 = []; % == 50
Male_data_51 = [];
Male_data_52 = [];
Male_data_53 = [];
Male_data_54 = [];
Male_data_55 = [];
Male_data_56 = [];
Male_data_57 = [];
Male_data_58 = [];
Male_data_59 = [];
Male_data_60 = [];
Male_data_61 = [];
Male_data_62 = [];
Male_data_63 = [];
Male_data_64 = [];
Male_data_65 = [];
Male_data_66 = [];
Male_data_67 = [];
Male_data_68 = [];
Male_data_69 = [];
Male_data_70 = [];
Male_data_71 = [];
Male_data_72 = [];
Male_data_73 = [];
Male_data_74 = [];
Male_data_75 = [];
Male_data_76 = [];
Male_data_77 = [];
Male_data_78 = [];
Male_data_79 = [];
Male_data_80 = [];
Male_data_81 = [];
Male_data_82 = [];
Male_data_83 = [];
Male_data_84 = [];
Male_data_85 = [];
Male_data_86 = [];
Male_data_87 = [];
Male_data_88 = [];
Male_data_89 = [];
Male_data_90 = []; % ==90

% For Female
[M N] = size(Female_data); % No.	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Female_data(i,2) == 50
        Female_data_50 = [Female_data_50; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 51
        Female_data_51 = [Female_data_51; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 52
        Female_data_52 = [Female_data_52; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 53
        Female_data_53 = [Female_data_53; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 54
        Female_data_54 = [Female_data_54; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 55
        Female_data_55 = [Female_data_55; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 56
        Female_data_56 = [Female_data_56; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 57
        Female_data_57 = [Female_data_57; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 58
        Female_data_58 = [Female_data_58; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 59
        Female_data_59 = [Female_data_59; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 60
        Female_data_60 = [Female_data_60; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 61
        Female_data_61 = [Female_data_61; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 62
        Female_data_62 = [Female_data_62; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 63
        Female_data_63 = [Female_data_63; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 64
        Female_data_64 = [Female_data_64; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 65
        Female_data_65 = [Female_data_65; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 66
        Female_data_66 = [Female_data_66; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 67
        Female_data_67 = [Female_data_67; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 68
        Female_data_68 = [Female_data_68; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 69
        Female_data_69 = [Female_data_69; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 70
        Female_data_70 = [Female_data_70; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 71
        Female_data_71 = [Female_data_71; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 72
        Female_data_72 = [Female_data_72; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 73
        Female_data_73 = [Female_data_73; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 74
        Female_data_74 = [Female_data_74; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 75
        Female_data_75 = [Female_data_75; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 76
        Female_data_76 = [Female_data_76; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 77
        Female_data_77 = [Female_data_77; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 78
        Female_data_78 = [Female_data_78; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 79
        Female_data_79 = [Female_data_79; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 80
        Female_data_80 = [Female_data_80; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 81
        Female_data_81 = [Female_data_81; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 82
        Female_data_82 = [Female_data_82; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 83
        Female_data_83 = [Female_data_83; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 84
        Female_data_84 = [Female_data_84; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 85
        Female_data_85 = [Female_data_85; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 86
        Female_data_86 = [Female_data_86; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 87
        Female_data_87 = [Female_data_87; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 88
        Female_data_88 = [Female_data_88; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 89
        Female_data_89 = [Female_data_89; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 90
        Female_data_90 = [Female_data_90; Female_data(i,3) Female_data(i,4)];
    end
end

% For Male
[M N] = size(Male_data); % No.	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Male_data(i,2) == 50
        Male_data_50 = [Male_data_50; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 51
        Male_data_51 = [Male_data_51; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 52
        Male_data_52 = [Male_data_52; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 53
        Male_data_53 = [Male_data_53; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 54
        Male_data_54 = [Male_data_54; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 55
        Male_data_55 = [Male_data_55; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 56
        Male_data_56 = [Male_data_56; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 57
        Male_data_57 = [Male_data_57; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 58
        Male_data_58 = [Male_data_58; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 59
        Male_data_59 = [Male_data_59; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 60
        Male_data_60 = [Male_data_60; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 61
        Male_data_61 = [Male_data_61; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 62
        Male_data_62 = [Male_data_62; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 63
        Male_data_63 = [Male_data_63; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 64
        Male_data_64 = [Male_data_64; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 65
        Male_data_65 = [Male_data_65; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 66
        Male_data_66 = [Male_data_66; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 67
        Male_data_67 = [Male_data_67; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 68
        Male_data_68 = [Male_data_68; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 69
        Male_data_69 = [Male_data_69; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 70
        Male_data_70 = [Male_data_70; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 71
        Male_data_71 = [Male_data_71; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 72
        Male_data_72 = [Male_data_72; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 73
        Male_data_73 = [Male_data_73; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 74
        Male_data_74 = [Male_data_74; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 75
        Male_data_75 = [Male_data_75; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 76
        Male_data_76 = [Male_data_76; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 77
        Male_data_77 = [Male_data_77; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 78
        Male_data_78 = [Male_data_78; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 79
        Male_data_79 = [Male_data_79; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 80
        Male_data_80 = [Male_data_80; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 81
        Male_data_81 = [Male_data_81; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 82
        Male_data_82 = [Male_data_82; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 83
        Male_data_83 = [Male_data_83; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 84
        Male_data_84 = [Male_data_84; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 85
        Male_data_85 = [Male_data_85; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 86
        Male_data_86 = [Male_data_86; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 87
        Male_data_87 = [Male_data_87; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 88
        Male_data_88 = [Male_data_88; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 89
        Male_data_89 = [Male_data_89; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 90
        Male_data_90 = [Male_data_90; Male_data(i,3) Male_data(i,4)];
    end
end

% We calculate the coefficients of a and b in 1=a/Weight+b*Height for this
% dataset
Age_11_Austria = 50:90;
Proportion_Ht_11_Austria_Female = [];
Proportion_Ht_11_Austria_Male = [];

% For Female
% Aged 50
Y_data = Female_data_50(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_11_Austria(1);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_11_Austria_Female = [Proportion_Ht_11_Austria_Female My_Number/M*100];
% Aged 51
Y_data = Female_data_51(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_11_Austria(2);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_11_Austria_Female = [Proportion_Ht_11_Austria_Female My_Number/M*100];
% Aged 52
Y_data = Female_data_52(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_11_Austria(3);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_11_Austria_Female = [Proportion_Ht_11_Austria_Female My_Number/M*100];
% Aged 53
Y_data = Female_data_53(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_11_Austria(4);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_11_Austria_Female = [Proportion_Ht_11_Austria_Female My_Number/M*100];
% Aged 54
Y_data = Female_data_54(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_11_Austria(5);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_11_Austria_Female = [Proportion_Ht_11_Austria_Female My_Number/M*100];
% Aged 55
Y_data = Female_data_55(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_11_Austria(6);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_11_Austria_Female = [Proportion_Ht_11_Austria_Female My_Number/M*100];
% Aged 56
Y_data = Female_data_56(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_11_Austria(7);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_11_Austria_Female = [Proportion_Ht_11_Austria_Female My_Number/M*100];
% Aged 57
Y_data = Female_data_57(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_11_Austria(8);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_11_Austria_Female = [Proportion_Ht_11_Austria_Female My_Number/M*100];
% Aged 58
Y_data = Female_data_58(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_11_Austria(9);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_11_Austria_Female = [Proportion_Ht_11_Austria_Female My_Number/M*100];
% Aged 59
Y_data = Female_data_59(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_11_Austria(10);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_11_Austria_Female = [Proportion_Ht_11_Austria_Female My_Number/M*100];
% Aged 60
Y_data = Female_data_60(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_11_Austria(11);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_11_Austria_Female = [Proportion_Ht_11_Austria_Female My_Number/M*100];
% Aged 61
Y_data = Female_data_61(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_11_Austria(12);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_11_Austria_Female = [Proportion_Ht_11_Austria_Female My_Number/M*100];
% Aged 62
Y_data = Female_data_62(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_11_Austria(13);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_11_Austria_Female = [Proportion_Ht_11_Austria_Female My_Number/M*100];
% Aged 63
Y_data = Female_data_63(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_11_Austria(14);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_11_Austria_Female = [Proportion_Ht_11_Austria_Female My_Number/M*100];
% Aged 64
Y_data = Female_data_64(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_11_Austria(15);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_11_Austria_Female = [Proportion_Ht_11_Austria_Female My_Number/M*100];
% Aged 65
Y_data = Female_data_65(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_11_Austria(16);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_11_Austria_Female = [Proportion_Ht_11_Austria_Female My_Number/M*100];
% Aged 66
Y_data = Female_data_66(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_11_Austria(17);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_11_Austria_Female = [Proportion_Ht_11_Austria_Female My_Number/M*100];
% Aged 67
Y_data = Female_data_67(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_11_Austria(18);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_11_Austria_Female = [Proportion_Ht_11_Austria_Female My_Number/M*100];
% Aged 68
Y_data = Female_data_68(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_11_Austria(19);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_11_Austria_Female = [Proportion_Ht_11_Austria_Female My_Number/M*100];
% Aged 69
Y_data = Female_data_69(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_11_Austria(20);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_11_Austria_Female = [Proportion_Ht_11_Austria_Female My_Number/M*100];
% Aged 70
Y_data = Female_data_70(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_11_Austria(21);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_11_Austria_Female = [Proportion_Ht_11_Austria_Female My_Number/M*100];
% Aged 71
Y_data = Female_data_71(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_11_Austria(22);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_11_Austria_Female = [Proportion_Ht_11_Austria_Female My_Number/M*100];
% Aged 72
Y_data = Female_data_72(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_11_Austria(23);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_11_Austria_Female = [Proportion_Ht_11_Austria_Female My_Number/M*100];
% Aged 73
Y_data = Female_data_73(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_11_Austria(24);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_11_Austria_Female = [Proportion_Ht_11_Austria_Female My_Number/M*100];
% Aged 74
Y_data = Female_data_74(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_11_Austria(25);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_11_Austria_Female = [Proportion_Ht_11_Austria_Female My_Number/M*100];
% Aged 75
Y_data = Female_data_75(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_11_Austria(26);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_11_Austria_Female = [Proportion_Ht_11_Austria_Female My_Number/M*100];
% Aged 76
Y_data = Female_data_76(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_11_Austria(27);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_11_Austria_Female = [Proportion_Ht_11_Austria_Female My_Number/M*100];
% Aged 77
Y_data = Female_data_77(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_11_Austria(28);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_11_Austria_Female = [Proportion_Ht_11_Austria_Female My_Number/M*100];
% Aged 78
Y_data = Female_data_78(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_11_Austria(29);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_11_Austria_Female = [Proportion_Ht_11_Austria_Female My_Number/M*100];
% Aged 79
Y_data = Female_data_79(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_11_Austria(30);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_11_Austria_Female = [Proportion_Ht_11_Austria_Female My_Number/M*100];
% Aged 80
Y_data = Female_data_80(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_11_Austria(31);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_11_Austria_Female = [Proportion_Ht_11_Austria_Female My_Number/M*100];
% Aged 81
Y_data = Female_data_81(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_11_Austria(32);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_11_Austria_Female = [Proportion_Ht_11_Austria_Female My_Number/M*100];
% Aged 82
Y_data = Female_data_82(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_11_Austria(33);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_11_Austria_Female = [Proportion_Ht_11_Austria_Female My_Number/M*100];
% Aged 83
Y_data = Female_data_83(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_11_Austria(34);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_11_Austria_Female = [Proportion_Ht_11_Austria_Female My_Number/M*100];
% Aged 84
Y_data = Female_data_84(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_11_Austria(35);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_11_Austria_Female = [Proportion_Ht_11_Austria_Female My_Number/M*100];
% Aged 85
Y_data = Female_data_85(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_11_Austria(36);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_11_Austria_Female = [Proportion_Ht_11_Austria_Female My_Number/M*100];
% Aged 86
Y_data = Female_data_86(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_11_Austria(37);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_11_Austria_Female = [Proportion_Ht_11_Austria_Female My_Number/M*100];
% Aged 87
Y_data = Female_data_87(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_11_Austria(38);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_11_Austria_Female = [Proportion_Ht_11_Austria_Female My_Number/M*100];
% Aged 88
Y_data = Female_data_88(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_11_Austria(39);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_11_Austria_Female = [Proportion_Ht_11_Austria_Female My_Number/M*100];
% Aged 89
Y_data = Female_data_89(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_11_Austria(40);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_11_Austria_Female = [Proportion_Ht_11_Austria_Female My_Number/M*100];
% Aged 90
Y_data = Female_data_90(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_11_Austria(41);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_11_Austria_Female = [Proportion_Ht_11_Austria_Female My_Number/M*100];

% For Male
% Aged 50
Y_data = Male_data_50(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_11_Austria(1);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_11_Austria_Male = [Proportion_Ht_11_Austria_Male My_Number/M*100];
% Aged 51
Y_data = Male_data_51(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_11_Austria(2);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_11_Austria_Male = [Proportion_Ht_11_Austria_Male My_Number/M*100];
% Aged 52
Y_data = Male_data_52(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_11_Austria(3);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_11_Austria_Male = [Proportion_Ht_11_Austria_Male My_Number/M*100];
% Aged 53
Y_data = Male_data_53(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_11_Austria(4);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_11_Austria_Male = [Proportion_Ht_11_Austria_Male My_Number/M*100];
% Aged 54
Y_data = Male_data_54(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_11_Austria(5);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_11_Austria_Male = [Proportion_Ht_11_Austria_Male My_Number/M*100];
% Aged 55
Y_data = Male_data_55(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_11_Austria(6);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_11_Austria_Male = [Proportion_Ht_11_Austria_Male My_Number/M*100];
% Aged 56
Y_data = Male_data_56(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_11_Austria(7);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_11_Austria_Male = [Proportion_Ht_11_Austria_Male My_Number/M*100];
% Aged 57
Y_data = Male_data_57(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_11_Austria(8);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_11_Austria_Male = [Proportion_Ht_11_Austria_Male My_Number/M*100];
% Aged 58
Y_data = Male_data_58(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_11_Austria(9);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_11_Austria_Male = [Proportion_Ht_11_Austria_Male My_Number/M*100];
% Aged 59
Y_data = Male_data_59(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_11_Austria(10);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_11_Austria_Male = [Proportion_Ht_11_Austria_Male My_Number/M*100];
% Aged 60
Y_data = Male_data_60(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_11_Austria(11);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_11_Austria_Male = [Proportion_Ht_11_Austria_Male My_Number/M*100];
% Aged 61
Y_data = Male_data_61(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_11_Austria(12);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_11_Austria_Male = [Proportion_Ht_11_Austria_Male My_Number/M*100];
% Aged 62
Y_data = Male_data_62(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_11_Austria(13);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_11_Austria_Male = [Proportion_Ht_11_Austria_Male My_Number/M*100];
% Aged 63
Y_data = Male_data_63(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_11_Austria(14);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_11_Austria_Male = [Proportion_Ht_11_Austria_Male My_Number/M*100];
% Aged 64
Y_data = Male_data_64(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_11_Austria(15);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_11_Austria_Male = [Proportion_Ht_11_Austria_Male My_Number/M*100];
% Aged 65
Y_data = Male_data_65(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_11_Austria(16);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_11_Austria_Male = [Proportion_Ht_11_Austria_Male My_Number/M*100];
% Aged 66
Y_data = Male_data_66(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_11_Austria(17);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_11_Austria_Male = [Proportion_Ht_11_Austria_Male My_Number/M*100];
% Aged 67
Y_data = Male_data_67(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_11_Austria(18);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_11_Austria_Male = [Proportion_Ht_11_Austria_Male My_Number/M*100];
% Aged 68
Y_data = Male_data_68(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_11_Austria(19);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_11_Austria_Male = [Proportion_Ht_11_Austria_Male My_Number/M*100];
% Aged 69
Y_data = Male_data_69(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_11_Austria(20);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_11_Austria_Male = [Proportion_Ht_11_Austria_Male My_Number/M*100];
% Aged 70
Y_data = Male_data_70(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_11_Austria(21);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_11_Austria_Male = [Proportion_Ht_11_Austria_Male My_Number/M*100];
% Aged 71
Y_data = Male_data_71(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_11_Austria(22);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_11_Austria_Male = [Proportion_Ht_11_Austria_Male My_Number/M*100];
% Aged 72
Y_data = Male_data_72(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_11_Austria(23);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_11_Austria_Male = [Proportion_Ht_11_Austria_Male My_Number/M*100];
% Aged 73
Y_data = Male_data_73(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_11_Austria(24);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_11_Austria_Male = [Proportion_Ht_11_Austria_Male My_Number/M*100];
% Aged 74
Y_data = Male_data_74(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_11_Austria(25);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_11_Austria_Male = [Proportion_Ht_11_Austria_Male My_Number/M*100];
% Aged 75
Y_data = Male_data_75(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_11_Austria(26);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_11_Austria_Male = [Proportion_Ht_11_Austria_Male My_Number/M*100];
% Aged 76
Y_data = Male_data_76(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_11_Austria(27);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_11_Austria_Male = [Proportion_Ht_11_Austria_Male My_Number/M*100];
% Aged 77
Y_data = Male_data_77(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_11_Austria(28);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_11_Austria_Male = [Proportion_Ht_11_Austria_Male My_Number/M*100];
% Aged 78
Y_data = Male_data_78(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_11_Austria(29);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_11_Austria_Male = [Proportion_Ht_11_Austria_Male My_Number/M*100];
% Aged 79
Y_data = Male_data_79(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_11_Austria(30);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_11_Austria_Male = [Proportion_Ht_11_Austria_Male My_Number/M*100];
% Aged 80
Y_data = Male_data_80(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_11_Austria(31);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_11_Austria_Male = [Proportion_Ht_11_Austria_Male My_Number/M*100];
% Aged 81
Y_data = Male_data_81(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_11_Austria(32);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_11_Austria_Male = [Proportion_Ht_11_Austria_Male My_Number/M*100];
% Aged 82
Y_data = Male_data_82(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_11_Austria(33);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_11_Austria_Male = [Proportion_Ht_11_Austria_Male My_Number/M*100];
% Aged 83
Y_data = Male_data_83(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_11_Austria(34);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_11_Austria_Male = [Proportion_Ht_11_Austria_Male My_Number/M*100];
% Aged 84
Y_data = Male_data_84(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_11_Austria(35);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_11_Austria_Male = [Proportion_Ht_11_Austria_Male My_Number/M*100];
% Aged 85
Y_data = Male_data_85(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_11_Austria(36);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_11_Austria_Male = [Proportion_Ht_11_Austria_Male My_Number/M*100];
% Aged 86
Y_data = Male_data_86(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_11_Austria(37);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_11_Austria_Male = [Proportion_Ht_11_Austria_Male My_Number/M*100];
% Aged 87
Y_data = Male_data_87(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_11_Austria(38);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_11_Austria_Male = [Proportion_Ht_11_Austria_Male My_Number/M*100];
% Aged 88
Y_data = Male_data_88(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_11_Austria(39);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_11_Austria_Male = [Proportion_Ht_11_Austria_Male My_Number/M*100];
% Aged 89
Y_data = Male_data_89(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_11_Austria(40);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_11_Austria_Male = [Proportion_Ht_11_Austria_Male My_Number/M*100];
% Aged 90
Y_data = Male_data_90(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_11_Austria(41);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_11_Austria_Male = [Proportion_Ht_11_Austria_Male My_Number/M*100];

%% 12_Germany
% Loading the data
Female_data = xlsread('12_Germany.xlsx','Female');
Male_data = xlsread('12_Germany.xlsx','Male');
% Grouping by age
Female_data_50 = []; % == 50
Female_data_51 = [];
Female_data_52 = [];
Female_data_53 = [];
Female_data_54 = [];
Female_data_55 = [];
Female_data_56 = [];
Female_data_57 = [];
Female_data_58 = [];
Female_data_59 = [];
Female_data_60 = [];
Female_data_61 = [];
Female_data_62 = [];
Female_data_63 = [];
Female_data_64 = [];
Female_data_65 = [];
Female_data_66 = [];
Female_data_67 = [];
Female_data_68 = [];
Female_data_69 = [];
Female_data_70 = [];
Female_data_71 = [];
Female_data_72 = [];
Female_data_73 = [];
Female_data_74 = [];
Female_data_75 = [];
Female_data_76 = [];
Female_data_77 = [];
Female_data_78 = [];
Female_data_79 = [];
Female_data_80 = [];
Female_data_81 = [];
Female_data_82 = [];
Female_data_83 = [];
Female_data_84 = [];
Female_data_85 = [];
Female_data_86 = [];
Female_data_87 = [];
Female_data_88 = [];
Female_data_89 = [];
Female_data_90 = []; % ==90

Male_data_50 = []; % == 50
Male_data_51 = [];
Male_data_52 = [];
Male_data_53 = [];
Male_data_54 = [];
Male_data_55 = [];
Male_data_56 = [];
Male_data_57 = [];
Male_data_58 = [];
Male_data_59 = [];
Male_data_60 = [];
Male_data_61 = [];
Male_data_62 = [];
Male_data_63 = [];
Male_data_64 = [];
Male_data_65 = [];
Male_data_66 = [];
Male_data_67 = [];
Male_data_68 = [];
Male_data_69 = [];
Male_data_70 = [];
Male_data_71 = [];
Male_data_72 = [];
Male_data_73 = [];
Male_data_74 = [];
Male_data_75 = [];
Male_data_76 = [];
Male_data_77 = [];
Male_data_78 = [];
Male_data_79 = [];
Male_data_80 = [];
Male_data_81 = [];
Male_data_82 = [];
Male_data_83 = [];
Male_data_84 = [];
Male_data_85 = [];
Male_data_86 = [];
Male_data_87 = [];
Male_data_88 = [];
Male_data_89 = [];
Male_data_90 = []; % ==90

% For Female
[M N] = size(Female_data); % No.	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Female_data(i,2) == 50
        Female_data_50 = [Female_data_50; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 51
        Female_data_51 = [Female_data_51; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 52
        Female_data_52 = [Female_data_52; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 53
        Female_data_53 = [Female_data_53; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 54
        Female_data_54 = [Female_data_54; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 55
        Female_data_55 = [Female_data_55; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 56
        Female_data_56 = [Female_data_56; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 57
        Female_data_57 = [Female_data_57; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 58
        Female_data_58 = [Female_data_58; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 59
        Female_data_59 = [Female_data_59; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 60
        Female_data_60 = [Female_data_60; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 61
        Female_data_61 = [Female_data_61; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 62
        Female_data_62 = [Female_data_62; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 63
        Female_data_63 = [Female_data_63; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 64
        Female_data_64 = [Female_data_64; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 65
        Female_data_65 = [Female_data_65; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 66
        Female_data_66 = [Female_data_66; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 67
        Female_data_67 = [Female_data_67; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 68
        Female_data_68 = [Female_data_68; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 69
        Female_data_69 = [Female_data_69; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 70
        Female_data_70 = [Female_data_70; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 71
        Female_data_71 = [Female_data_71; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 72
        Female_data_72 = [Female_data_72; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 73
        Female_data_73 = [Female_data_73; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 74
        Female_data_74 = [Female_data_74; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 75
        Female_data_75 = [Female_data_75; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 76
        Female_data_76 = [Female_data_76; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 77
        Female_data_77 = [Female_data_77; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 78
        Female_data_78 = [Female_data_78; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 79
        Female_data_79 = [Female_data_79; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 80
        Female_data_80 = [Female_data_80; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 81
        Female_data_81 = [Female_data_81; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 82
        Female_data_82 = [Female_data_82; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 83
        Female_data_83 = [Female_data_83; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 84
        Female_data_84 = [Female_data_84; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 85
        Female_data_85 = [Female_data_85; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 86
        Female_data_86 = [Female_data_86; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 87
        Female_data_87 = [Female_data_87; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 88
        Female_data_88 = [Female_data_88; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 89
        Female_data_89 = [Female_data_89; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 90
        Female_data_90 = [Female_data_90; Female_data(i,3) Female_data(i,4)];
    end
end

% For Male
[M N] = size(Male_data); % No.	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Male_data(i,2) == 50
        Male_data_50 = [Male_data_50; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 51
        Male_data_51 = [Male_data_51; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 52
        Male_data_52 = [Male_data_52; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 53
        Male_data_53 = [Male_data_53; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 54
        Male_data_54 = [Male_data_54; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 55
        Male_data_55 = [Male_data_55; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 56
        Male_data_56 = [Male_data_56; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 57
        Male_data_57 = [Male_data_57; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 58
        Male_data_58 = [Male_data_58; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 59
        Male_data_59 = [Male_data_59; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 60
        Male_data_60 = [Male_data_60; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 61
        Male_data_61 = [Male_data_61; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 62
        Male_data_62 = [Male_data_62; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 63
        Male_data_63 = [Male_data_63; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 64
        Male_data_64 = [Male_data_64; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 65
        Male_data_65 = [Male_data_65; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 66
        Male_data_66 = [Male_data_66; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 67
        Male_data_67 = [Male_data_67; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 68
        Male_data_68 = [Male_data_68; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 69
        Male_data_69 = [Male_data_69; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 70
        Male_data_70 = [Male_data_70; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 71
        Male_data_71 = [Male_data_71; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 72
        Male_data_72 = [Male_data_72; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 73
        Male_data_73 = [Male_data_73; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 74
        Male_data_74 = [Male_data_74; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 75
        Male_data_75 = [Male_data_75; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 76
        Male_data_76 = [Male_data_76; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 77
        Male_data_77 = [Male_data_77; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 78
        Male_data_78 = [Male_data_78; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 79
        Male_data_79 = [Male_data_79; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 80
        Male_data_80 = [Male_data_80; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 81
        Male_data_81 = [Male_data_81; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 82
        Male_data_82 = [Male_data_82; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 83
        Male_data_83 = [Male_data_83; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 84
        Male_data_84 = [Male_data_84; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 85
        Male_data_85 = [Male_data_85; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 86
        Male_data_86 = [Male_data_86; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 87
        Male_data_87 = [Male_data_87; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 88
        Male_data_88 = [Male_data_88; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 89
        Male_data_89 = [Male_data_89; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 90
        Male_data_90 = [Male_data_90; Male_data(i,3) Male_data(i,4)];
    end
end

% We calculate the coefficients of a and b in 1=a/Weight+b*Height for this
% dataset
Age_12_Germany = 50:90;
Proportion_Ht_12_Germany_Female = [];
Proportion_Ht_12_Germany_Male = [];

% For Female
% Aged 50
Y_data = Female_data_50(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_12_Germany(1);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_12_Germany_Female = [Proportion_Ht_12_Germany_Female My_Number/M*100];
% Aged 51
Y_data = Female_data_51(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_12_Germany(2);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_12_Germany_Female = [Proportion_Ht_12_Germany_Female My_Number/M*100];
% Aged 52
Y_data = Female_data_52(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_12_Germany(3);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_12_Germany_Female = [Proportion_Ht_12_Germany_Female My_Number/M*100];
% Aged 53
Y_data = Female_data_53(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_12_Germany(4);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_12_Germany_Female = [Proportion_Ht_12_Germany_Female My_Number/M*100];
% Aged 54
Y_data = Female_data_54(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_12_Germany(5);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_12_Germany_Female = [Proportion_Ht_12_Germany_Female My_Number/M*100];
% Aged 55
Y_data = Female_data_55(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_12_Germany(6);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_12_Germany_Female = [Proportion_Ht_12_Germany_Female My_Number/M*100];
% Aged 56
Y_data = Female_data_56(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_12_Germany(7);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_12_Germany_Female = [Proportion_Ht_12_Germany_Female My_Number/M*100];
% Aged 57
Y_data = Female_data_57(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_12_Germany(8);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_12_Germany_Female = [Proportion_Ht_12_Germany_Female My_Number/M*100];
% Aged 58
Y_data = Female_data_58(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_12_Germany(9);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_12_Germany_Female = [Proportion_Ht_12_Germany_Female My_Number/M*100];
% Aged 59
Y_data = Female_data_59(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_12_Germany(10);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_12_Germany_Female = [Proportion_Ht_12_Germany_Female My_Number/M*100];
% Aged 60
Y_data = Female_data_60(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_12_Germany(11);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_12_Germany_Female = [Proportion_Ht_12_Germany_Female My_Number/M*100];
% Aged 61
Y_data = Female_data_61(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_12_Germany(12);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_12_Germany_Female = [Proportion_Ht_12_Germany_Female My_Number/M*100];
% Aged 62
Y_data = Female_data_62(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_12_Germany(13);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_12_Germany_Female = [Proportion_Ht_12_Germany_Female My_Number/M*100];
% Aged 63
Y_data = Female_data_63(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_12_Germany(14);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_12_Germany_Female = [Proportion_Ht_12_Germany_Female My_Number/M*100];
% Aged 64
Y_data = Female_data_64(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_12_Germany(15);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_12_Germany_Female = [Proportion_Ht_12_Germany_Female My_Number/M*100];
% Aged 65
Y_data = Female_data_65(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_12_Germany(16);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_12_Germany_Female = [Proportion_Ht_12_Germany_Female My_Number/M*100];
% Aged 66
Y_data = Female_data_66(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_12_Germany(17);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_12_Germany_Female = [Proportion_Ht_12_Germany_Female My_Number/M*100];
% Aged 67
Y_data = Female_data_67(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_12_Germany(18);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_12_Germany_Female = [Proportion_Ht_12_Germany_Female My_Number/M*100];
% Aged 68
Y_data = Female_data_68(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_12_Germany(19);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_12_Germany_Female = [Proportion_Ht_12_Germany_Female My_Number/M*100];
% Aged 69
Y_data = Female_data_69(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_12_Germany(20);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_12_Germany_Female = [Proportion_Ht_12_Germany_Female My_Number/M*100];
% Aged 70
Y_data = Female_data_70(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_12_Germany(21);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_12_Germany_Female = [Proportion_Ht_12_Germany_Female My_Number/M*100];
% Aged 71
Y_data = Female_data_71(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_12_Germany(22);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_12_Germany_Female = [Proportion_Ht_12_Germany_Female My_Number/M*100];
% Aged 72
Y_data = Female_data_72(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_12_Germany(23);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_12_Germany_Female = [Proportion_Ht_12_Germany_Female My_Number/M*100];
% Aged 73
Y_data = Female_data_73(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_12_Germany(24);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_12_Germany_Female = [Proportion_Ht_12_Germany_Female My_Number/M*100];
% Aged 74
Y_data = Female_data_74(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_12_Germany(25);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_12_Germany_Female = [Proportion_Ht_12_Germany_Female My_Number/M*100];
% Aged 75
Y_data = Female_data_75(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_12_Germany(26);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_12_Germany_Female = [Proportion_Ht_12_Germany_Female My_Number/M*100];
% Aged 76
Y_data = Female_data_76(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_12_Germany(27);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_12_Germany_Female = [Proportion_Ht_12_Germany_Female My_Number/M*100];
% Aged 77
Y_data = Female_data_77(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_12_Germany(28);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_12_Germany_Female = [Proportion_Ht_12_Germany_Female My_Number/M*100];
% Aged 78
Y_data = Female_data_78(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_12_Germany(29);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_12_Germany_Female = [Proportion_Ht_12_Germany_Female My_Number/M*100];
% Aged 79
Y_data = Female_data_79(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_12_Germany(30);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_12_Germany_Female = [Proportion_Ht_12_Germany_Female My_Number/M*100];
% Aged 80
Y_data = Female_data_80(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_12_Germany(31);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_12_Germany_Female = [Proportion_Ht_12_Germany_Female My_Number/M*100];
% Aged 81
Y_data = Female_data_81(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_12_Germany(32);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_12_Germany_Female = [Proportion_Ht_12_Germany_Female My_Number/M*100];
% Aged 82
Y_data = Female_data_82(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_12_Germany(33);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_12_Germany_Female = [Proportion_Ht_12_Germany_Female My_Number/M*100];
% Aged 83
Y_data = Female_data_83(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_12_Germany(34);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_12_Germany_Female = [Proportion_Ht_12_Germany_Female My_Number/M*100];
% Aged 84
Y_data = Female_data_84(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_12_Germany(35);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_12_Germany_Female = [Proportion_Ht_12_Germany_Female My_Number/M*100];
% Aged 85
Y_data = Female_data_85(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_12_Germany(36);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_12_Germany_Female = [Proportion_Ht_12_Germany_Female My_Number/M*100];
% Aged 86
Y_data = Female_data_86(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_12_Germany(37);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_12_Germany_Female = [Proportion_Ht_12_Germany_Female My_Number/M*100];
% Aged 87
Y_data = Female_data_87(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_12_Germany(38);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_12_Germany_Female = [Proportion_Ht_12_Germany_Female My_Number/M*100];
% Aged 88
Y_data = Female_data_88(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_12_Germany(39);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_12_Germany_Female = [Proportion_Ht_12_Germany_Female My_Number/M*100];
% Aged 89
Y_data = Female_data_89(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_12_Germany(40);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_12_Germany_Female = [Proportion_Ht_12_Germany_Female My_Number/M*100];
% Aged 90
Y_data = Female_data_90(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_12_Germany(41);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_12_Germany_Female = [Proportion_Ht_12_Germany_Female My_Number/M*100];

% For Male
% Aged 50
Y_data = Male_data_50(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_12_Germany(1);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_12_Germany_Male = [Proportion_Ht_12_Germany_Male My_Number/M*100];
% Aged 51
Y_data = Male_data_51(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_12_Germany(2);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_12_Germany_Male = [Proportion_Ht_12_Germany_Male My_Number/M*100];
% Aged 52
Y_data = Male_data_52(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_12_Germany(3);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_12_Germany_Male = [Proportion_Ht_12_Germany_Male My_Number/M*100];
% Aged 53
Y_data = Male_data_53(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_12_Germany(4);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_12_Germany_Male = [Proportion_Ht_12_Germany_Male My_Number/M*100];
% Aged 54
Y_data = Male_data_54(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_12_Germany(5);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_12_Germany_Male = [Proportion_Ht_12_Germany_Male My_Number/M*100];
% Aged 55
Y_data = Male_data_55(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_12_Germany(6);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_12_Germany_Male = [Proportion_Ht_12_Germany_Male My_Number/M*100];
% Aged 56
Y_data = Male_data_56(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_12_Germany(7);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_12_Germany_Male = [Proportion_Ht_12_Germany_Male My_Number/M*100];
% Aged 57
Y_data = Male_data_57(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_12_Germany(8);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_12_Germany_Male = [Proportion_Ht_12_Germany_Male My_Number/M*100];
% Aged 58
Y_data = Male_data_58(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_12_Germany(9);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_12_Germany_Male = [Proportion_Ht_12_Germany_Male My_Number/M*100];
% Aged 59
Y_data = Male_data_59(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_12_Germany(10);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_12_Germany_Male = [Proportion_Ht_12_Germany_Male My_Number/M*100];
% Aged 60
Y_data = Male_data_60(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_12_Germany(11);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_12_Germany_Male = [Proportion_Ht_12_Germany_Male My_Number/M*100];
% Aged 61
Y_data = Male_data_61(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_12_Germany(12);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_12_Germany_Male = [Proportion_Ht_12_Germany_Male My_Number/M*100];
% Aged 62
Y_data = Male_data_62(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_12_Germany(13);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_12_Germany_Male = [Proportion_Ht_12_Germany_Male My_Number/M*100];
% Aged 63
Y_data = Male_data_63(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_12_Germany(14);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_12_Germany_Male = [Proportion_Ht_12_Germany_Male My_Number/M*100];
% Aged 64
Y_data = Male_data_64(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_12_Germany(15);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_12_Germany_Male = [Proportion_Ht_12_Germany_Male My_Number/M*100];
% Aged 65
Y_data = Male_data_65(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_12_Germany(16);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_12_Germany_Male = [Proportion_Ht_12_Germany_Male My_Number/M*100];
% Aged 66
Y_data = Male_data_66(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_12_Germany(17);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_12_Germany_Male = [Proportion_Ht_12_Germany_Male My_Number/M*100];
% Aged 67
Y_data = Male_data_67(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_12_Germany(18);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_12_Germany_Male = [Proportion_Ht_12_Germany_Male My_Number/M*100];
% Aged 68
Y_data = Male_data_68(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_12_Germany(19);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_12_Germany_Male = [Proportion_Ht_12_Germany_Male My_Number/M*100];
% Aged 69
Y_data = Male_data_69(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_12_Germany(20);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_12_Germany_Male = [Proportion_Ht_12_Germany_Male My_Number/M*100];
% Aged 70
Y_data = Male_data_70(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_12_Germany(21);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_12_Germany_Male = [Proportion_Ht_12_Germany_Male My_Number/M*100];
% Aged 71
Y_data = Male_data_71(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_12_Germany(22);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_12_Germany_Male = [Proportion_Ht_12_Germany_Male My_Number/M*100];
% Aged 72
Y_data = Male_data_72(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_12_Germany(23);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_12_Germany_Male = [Proportion_Ht_12_Germany_Male My_Number/M*100];
% Aged 73
Y_data = Male_data_73(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_12_Germany(24);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_12_Germany_Male = [Proportion_Ht_12_Germany_Male My_Number/M*100];
% Aged 74
Y_data = Male_data_74(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_12_Germany(25);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_12_Germany_Male = [Proportion_Ht_12_Germany_Male My_Number/M*100];
% Aged 75
Y_data = Male_data_75(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_12_Germany(26);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_12_Germany_Male = [Proportion_Ht_12_Germany_Male My_Number/M*100];
% Aged 76
Y_data = Male_data_76(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_12_Germany(27);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_12_Germany_Male = [Proportion_Ht_12_Germany_Male My_Number/M*100];
% Aged 77
Y_data = Male_data_77(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_12_Germany(28);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_12_Germany_Male = [Proportion_Ht_12_Germany_Male My_Number/M*100];
% Aged 78
Y_data = Male_data_78(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_12_Germany(29);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_12_Germany_Male = [Proportion_Ht_12_Germany_Male My_Number/M*100];
% Aged 79
Y_data = Male_data_79(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_12_Germany(30);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_12_Germany_Male = [Proportion_Ht_12_Germany_Male My_Number/M*100];
% Aged 80
Y_data = Male_data_80(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_12_Germany(31);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_12_Germany_Male = [Proportion_Ht_12_Germany_Male My_Number/M*100];
% Aged 81
Y_data = Male_data_81(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_12_Germany(32);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_12_Germany_Male = [Proportion_Ht_12_Germany_Male My_Number/M*100];
% Aged 82
Y_data = Male_data_82(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_12_Germany(33);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_12_Germany_Male = [Proportion_Ht_12_Germany_Male My_Number/M*100];
% Aged 83
Y_data = Male_data_83(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_12_Germany(34);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_12_Germany_Male = [Proportion_Ht_12_Germany_Male My_Number/M*100];
% Aged 84
Y_data = Male_data_84(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_12_Germany(35);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_12_Germany_Male = [Proportion_Ht_12_Germany_Male My_Number/M*100];
% Aged 85
Y_data = Male_data_85(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_12_Germany(36);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_12_Germany_Male = [Proportion_Ht_12_Germany_Male My_Number/M*100];
% Aged 86
Y_data = Male_data_86(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_12_Germany(37);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_12_Germany_Male = [Proportion_Ht_12_Germany_Male My_Number/M*100];
% Aged 87
Y_data = Male_data_87(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_12_Germany(38);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_12_Germany_Male = [Proportion_Ht_12_Germany_Male My_Number/M*100];
% Aged 88
Y_data = Male_data_88(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_12_Germany(39);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_12_Germany_Male = [Proportion_Ht_12_Germany_Male My_Number/M*100];
% Aged 89
Y_data = Male_data_89(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_12_Germany(40);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_12_Germany_Male = [Proportion_Ht_12_Germany_Male My_Number/M*100];
% Aged 90
Y_data = Male_data_90(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_12_Germany(41);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_12_Germany_Male = [Proportion_Ht_12_Germany_Male My_Number/M*100];

%% 20_Switzerland
% Loading the data
Female_data = xlsread('20_Switzerland.xlsx','Female');
Male_data = xlsread('20_Switzerland.xlsx','Male');
% Grouping by age
Female_data_50 = []; % == 50
Female_data_51 = [];
Female_data_52 = [];
Female_data_53 = [];
Female_data_54 = [];
Female_data_55 = [];
Female_data_56 = [];
Female_data_57 = [];
Female_data_58 = [];
Female_data_59 = [];
Female_data_60 = [];
Female_data_61 = [];
Female_data_62 = [];
Female_data_63 = [];
Female_data_64 = [];
Female_data_65 = [];
Female_data_66 = [];
Female_data_67 = [];
Female_data_68 = [];
Female_data_69 = [];
Female_data_70 = [];
Female_data_71 = [];
Female_data_72 = [];
Female_data_73 = [];
Female_data_74 = [];
Female_data_75 = [];
Female_data_76 = [];
Female_data_77 = [];
Female_data_78 = [];
Female_data_79 = [];
Female_data_80 = [];
Female_data_81 = [];
Female_data_82 = [];
Female_data_83 = [];
Female_data_84 = [];
Female_data_85 = [];
Female_data_86 = [];
Female_data_87 = [];
Female_data_88 = [];
Female_data_89 = [];
Female_data_90 = []; % ==90

Male_data_50 = []; % == 50
Male_data_51 = [];
Male_data_52 = [];
Male_data_53 = [];
Male_data_54 = [];
Male_data_55 = [];
Male_data_56 = [];
Male_data_57 = [];
Male_data_58 = [];
Male_data_59 = [];
Male_data_60 = [];
Male_data_61 = [];
Male_data_62 = [];
Male_data_63 = [];
Male_data_64 = [];
Male_data_65 = [];
Male_data_66 = [];
Male_data_67 = [];
Male_data_68 = [];
Male_data_69 = [];
Male_data_70 = [];
Male_data_71 = [];
Male_data_72 = [];
Male_data_73 = [];
Male_data_74 = [];
Male_data_75 = [];
Male_data_76 = [];
Male_data_77 = [];
Male_data_78 = [];
Male_data_79 = [];
Male_data_80 = [];
Male_data_81 = [];
Male_data_82 = [];
Male_data_83 = [];
Male_data_84 = [];
Male_data_85 = [];
Male_data_86 = [];
Male_data_87 = [];
Male_data_88 = [];
Male_data_89 = [];
Male_data_90 = []; % ==90

% For Female
[M N] = size(Female_data); % No.	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Female_data(i,2) == 50
        Female_data_50 = [Female_data_50; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 51
        Female_data_51 = [Female_data_51; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 52
        Female_data_52 = [Female_data_52; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 53
        Female_data_53 = [Female_data_53; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 54
        Female_data_54 = [Female_data_54; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 55
        Female_data_55 = [Female_data_55; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 56
        Female_data_56 = [Female_data_56; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 57
        Female_data_57 = [Female_data_57; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 58
        Female_data_58 = [Female_data_58; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 59
        Female_data_59 = [Female_data_59; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 60
        Female_data_60 = [Female_data_60; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 61
        Female_data_61 = [Female_data_61; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 62
        Female_data_62 = [Female_data_62; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 63
        Female_data_63 = [Female_data_63; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 64
        Female_data_64 = [Female_data_64; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 65
        Female_data_65 = [Female_data_65; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 66
        Female_data_66 = [Female_data_66; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 67
        Female_data_67 = [Female_data_67; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 68
        Female_data_68 = [Female_data_68; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 69
        Female_data_69 = [Female_data_69; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 70
        Female_data_70 = [Female_data_70; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 71
        Female_data_71 = [Female_data_71; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 72
        Female_data_72 = [Female_data_72; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 73
        Female_data_73 = [Female_data_73; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 74
        Female_data_74 = [Female_data_74; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 75
        Female_data_75 = [Female_data_75; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 76
        Female_data_76 = [Female_data_76; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 77
        Female_data_77 = [Female_data_77; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 78
        Female_data_78 = [Female_data_78; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 79
        Female_data_79 = [Female_data_79; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 80
        Female_data_80 = [Female_data_80; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 81
        Female_data_81 = [Female_data_81; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 82
        Female_data_82 = [Female_data_82; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 83
        Female_data_83 = [Female_data_83; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 84
        Female_data_84 = [Female_data_84; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 85
        Female_data_85 = [Female_data_85; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 86
        Female_data_86 = [Female_data_86; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 87
        Female_data_87 = [Female_data_87; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 88
        Female_data_88 = [Female_data_88; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 89
        Female_data_89 = [Female_data_89; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 90
        Female_data_90 = [Female_data_90; Female_data(i,3) Female_data(i,4)];
    end
end

% For Male
[M N] = size(Male_data); % No.	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Male_data(i,2) == 50
        Male_data_50 = [Male_data_50; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 51
        Male_data_51 = [Male_data_51; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 52
        Male_data_52 = [Male_data_52; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 53
        Male_data_53 = [Male_data_53; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 54
        Male_data_54 = [Male_data_54; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 55
        Male_data_55 = [Male_data_55; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 56
        Male_data_56 = [Male_data_56; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 57
        Male_data_57 = [Male_data_57; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 58
        Male_data_58 = [Male_data_58; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 59
        Male_data_59 = [Male_data_59; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 60
        Male_data_60 = [Male_data_60; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 61
        Male_data_61 = [Male_data_61; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 62
        Male_data_62 = [Male_data_62; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 63
        Male_data_63 = [Male_data_63; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 64
        Male_data_64 = [Male_data_64; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 65
        Male_data_65 = [Male_data_65; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 66
        Male_data_66 = [Male_data_66; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 67
        Male_data_67 = [Male_data_67; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 68
        Male_data_68 = [Male_data_68; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 69
        Male_data_69 = [Male_data_69; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 70
        Male_data_70 = [Male_data_70; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 71
        Male_data_71 = [Male_data_71; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 72
        Male_data_72 = [Male_data_72; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 73
        Male_data_73 = [Male_data_73; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 74
        Male_data_74 = [Male_data_74; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 75
        Male_data_75 = [Male_data_75; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 76
        Male_data_76 = [Male_data_76; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 77
        Male_data_77 = [Male_data_77; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 78
        Male_data_78 = [Male_data_78; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 79
        Male_data_79 = [Male_data_79; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 80
        Male_data_80 = [Male_data_80; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 81
        Male_data_81 = [Male_data_81; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 82
        Male_data_82 = [Male_data_82; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 83
        Male_data_83 = [Male_data_83; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 84
        Male_data_84 = [Male_data_84; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 85
        Male_data_85 = [Male_data_85; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 86
        Male_data_86 = [Male_data_86; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 87
        Male_data_87 = [Male_data_87; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 88
        Male_data_88 = [Male_data_88; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 89
        Male_data_89 = [Male_data_89; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 90
        Male_data_90 = [Male_data_90; Male_data(i,3) Male_data(i,4)];
    end
end

% We calculate the coefficients of a and b in 1=a/Weight+b*Height for this
% dataset
Age_20_Switzerland = 50:90;
Proportion_Ht_20_Switzerland_Female = [];
Proportion_Ht_20_Switzerland_Male = [];

% For Female
% Aged 50
Y_data = Female_data_50(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_20_Switzerland(1);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_20_Switzerland_Female = [Proportion_Ht_20_Switzerland_Female My_Number/M*100];
% Aged 51
Y_data = Female_data_51(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_20_Switzerland(2);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_20_Switzerland_Female = [Proportion_Ht_20_Switzerland_Female My_Number/M*100];
% Aged 52
Y_data = Female_data_52(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_20_Switzerland(3);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_20_Switzerland_Female = [Proportion_Ht_20_Switzerland_Female My_Number/M*100];
% Aged 53
Y_data = Female_data_53(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_20_Switzerland(4);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_20_Switzerland_Female = [Proportion_Ht_20_Switzerland_Female My_Number/M*100];
% Aged 54
Y_data = Female_data_54(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_20_Switzerland(5);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_20_Switzerland_Female = [Proportion_Ht_20_Switzerland_Female My_Number/M*100];
% Aged 55
Y_data = Female_data_55(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_20_Switzerland(6);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_20_Switzerland_Female = [Proportion_Ht_20_Switzerland_Female My_Number/M*100];
% Aged 56
Y_data = Female_data_56(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_20_Switzerland(7);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_20_Switzerland_Female = [Proportion_Ht_20_Switzerland_Female My_Number/M*100];
% Aged 57
Y_data = Female_data_57(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_20_Switzerland(8);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_20_Switzerland_Female = [Proportion_Ht_20_Switzerland_Female My_Number/M*100];
% Aged 58
Y_data = Female_data_58(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_20_Switzerland(9);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_20_Switzerland_Female = [Proportion_Ht_20_Switzerland_Female My_Number/M*100];
% Aged 59
Y_data = Female_data_59(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_20_Switzerland(10);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_20_Switzerland_Female = [Proportion_Ht_20_Switzerland_Female My_Number/M*100];
% Aged 60
Y_data = Female_data_60(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_20_Switzerland(11);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_20_Switzerland_Female = [Proportion_Ht_20_Switzerland_Female My_Number/M*100];
% Aged 61
Y_data = Female_data_61(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_20_Switzerland(12);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_20_Switzerland_Female = [Proportion_Ht_20_Switzerland_Female My_Number/M*100];
% Aged 62
Y_data = Female_data_62(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_20_Switzerland(13);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_20_Switzerland_Female = [Proportion_Ht_20_Switzerland_Female My_Number/M*100];
% Aged 63
Y_data = Female_data_63(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_20_Switzerland(14);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_20_Switzerland_Female = [Proportion_Ht_20_Switzerland_Female My_Number/M*100];
% Aged 64
Y_data = Female_data_64(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_20_Switzerland(15);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_20_Switzerland_Female = [Proportion_Ht_20_Switzerland_Female My_Number/M*100];
% Aged 65
Y_data = Female_data_65(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_20_Switzerland(16);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_20_Switzerland_Female = [Proportion_Ht_20_Switzerland_Female My_Number/M*100];
% Aged 66
Y_data = Female_data_66(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_20_Switzerland(17);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_20_Switzerland_Female = [Proportion_Ht_20_Switzerland_Female My_Number/M*100];
% Aged 67
Y_data = Female_data_67(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_20_Switzerland(18);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_20_Switzerland_Female = [Proportion_Ht_20_Switzerland_Female My_Number/M*100];
% Aged 68
Y_data = Female_data_68(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_20_Switzerland(19);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_20_Switzerland_Female = [Proportion_Ht_20_Switzerland_Female My_Number/M*100];
% Aged 69
Y_data = Female_data_69(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_20_Switzerland(20);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_20_Switzerland_Female = [Proportion_Ht_20_Switzerland_Female My_Number/M*100];
% Aged 70
Y_data = Female_data_70(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_20_Switzerland(21);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_20_Switzerland_Female = [Proportion_Ht_20_Switzerland_Female My_Number/M*100];
% Aged 71
Y_data = Female_data_71(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_20_Switzerland(22);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_20_Switzerland_Female = [Proportion_Ht_20_Switzerland_Female My_Number/M*100];
% Aged 72
Y_data = Female_data_72(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_20_Switzerland(23);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_20_Switzerland_Female = [Proportion_Ht_20_Switzerland_Female My_Number/M*100];
% Aged 73
Y_data = Female_data_73(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_20_Switzerland(24);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_20_Switzerland_Female = [Proportion_Ht_20_Switzerland_Female My_Number/M*100];
% Aged 74
Y_data = Female_data_74(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_20_Switzerland(25);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_20_Switzerland_Female = [Proportion_Ht_20_Switzerland_Female My_Number/M*100];
% Aged 75
Y_data = Female_data_75(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_20_Switzerland(26);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_20_Switzerland_Female = [Proportion_Ht_20_Switzerland_Female My_Number/M*100];
% Aged 76
Y_data = Female_data_76(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_20_Switzerland(27);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_20_Switzerland_Female = [Proportion_Ht_20_Switzerland_Female My_Number/M*100];
% Aged 77
Y_data = Female_data_77(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_20_Switzerland(28);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_20_Switzerland_Female = [Proportion_Ht_20_Switzerland_Female My_Number/M*100];
% Aged 78
Y_data = Female_data_78(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_20_Switzerland(29);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_20_Switzerland_Female = [Proportion_Ht_20_Switzerland_Female My_Number/M*100];
% Aged 79
Y_data = Female_data_79(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_20_Switzerland(30);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_20_Switzerland_Female = [Proportion_Ht_20_Switzerland_Female My_Number/M*100];
% Aged 80
Y_data = Female_data_80(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_20_Switzerland(31);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_20_Switzerland_Female = [Proportion_Ht_20_Switzerland_Female My_Number/M*100];
% Aged 81
Y_data = Female_data_81(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_20_Switzerland(32);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_20_Switzerland_Female = [Proportion_Ht_20_Switzerland_Female My_Number/M*100];
% Aged 82
Y_data = Female_data_82(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_20_Switzerland(33);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_20_Switzerland_Female = [Proportion_Ht_20_Switzerland_Female My_Number/M*100];
% Aged 83
Y_data = Female_data_83(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_20_Switzerland(34);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_20_Switzerland_Female = [Proportion_Ht_20_Switzerland_Female My_Number/M*100];
% Aged 84
Y_data = Female_data_84(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_20_Switzerland(35);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_20_Switzerland_Female = [Proportion_Ht_20_Switzerland_Female My_Number/M*100];
% Aged 85
Y_data = Female_data_85(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_20_Switzerland(36);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_20_Switzerland_Female = [Proportion_Ht_20_Switzerland_Female My_Number/M*100];
% Aged 86
Y_data = Female_data_86(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_20_Switzerland(37);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_20_Switzerland_Female = [Proportion_Ht_20_Switzerland_Female My_Number/M*100];
% Aged 87
Y_data = Female_data_87(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_20_Switzerland(38);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_20_Switzerland_Female = [Proportion_Ht_20_Switzerland_Female My_Number/M*100];
% Aged 88
Y_data = Female_data_88(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_20_Switzerland(39);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_20_Switzerland_Female = [Proportion_Ht_20_Switzerland_Female My_Number/M*100];
% Aged 89
Y_data = Female_data_89(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_20_Switzerland(40);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_20_Switzerland_Female = [Proportion_Ht_20_Switzerland_Female My_Number/M*100];
% Aged 90
Y_data = Female_data_90(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_20_Switzerland(41);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_20_Switzerland_Female = [Proportion_Ht_20_Switzerland_Female My_Number/M*100];

% For Male
% Aged 50
Y_data = Male_data_50(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_20_Switzerland(1);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_20_Switzerland_Male = [Proportion_Ht_20_Switzerland_Male My_Number/M*100];
% Aged 51
Y_data = Male_data_51(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_20_Switzerland(2);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_20_Switzerland_Male = [Proportion_Ht_20_Switzerland_Male My_Number/M*100];
% Aged 52
Y_data = Male_data_52(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_20_Switzerland(3);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_20_Switzerland_Male = [Proportion_Ht_20_Switzerland_Male My_Number/M*100];
% Aged 53
Y_data = Male_data_53(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_20_Switzerland(4);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_20_Switzerland_Male = [Proportion_Ht_20_Switzerland_Male My_Number/M*100];
% Aged 54
Y_data = Male_data_54(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_20_Switzerland(5);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_20_Switzerland_Male = [Proportion_Ht_20_Switzerland_Male My_Number/M*100];
% Aged 55
Y_data = Male_data_55(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_20_Switzerland(6);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_20_Switzerland_Male = [Proportion_Ht_20_Switzerland_Male My_Number/M*100];
% Aged 56
Y_data = Male_data_56(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_20_Switzerland(7);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_20_Switzerland_Male = [Proportion_Ht_20_Switzerland_Male My_Number/M*100];
% Aged 57
Y_data = Male_data_57(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_20_Switzerland(8);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_20_Switzerland_Male = [Proportion_Ht_20_Switzerland_Male My_Number/M*100];
% Aged 58
Y_data = Male_data_58(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_20_Switzerland(9);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_20_Switzerland_Male = [Proportion_Ht_20_Switzerland_Male My_Number/M*100];
% Aged 59
Y_data = Male_data_59(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_20_Switzerland(10);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_20_Switzerland_Male = [Proportion_Ht_20_Switzerland_Male My_Number/M*100];
% Aged 60
Y_data = Male_data_60(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_20_Switzerland(11);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_20_Switzerland_Male = [Proportion_Ht_20_Switzerland_Male My_Number/M*100];
% Aged 61
Y_data = Male_data_61(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_20_Switzerland(12);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_20_Switzerland_Male = [Proportion_Ht_20_Switzerland_Male My_Number/M*100];
% Aged 62
Y_data = Male_data_62(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_20_Switzerland(13);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_20_Switzerland_Male = [Proportion_Ht_20_Switzerland_Male My_Number/M*100];
% Aged 63
Y_data = Male_data_63(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_20_Switzerland(14);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_20_Switzerland_Male = [Proportion_Ht_20_Switzerland_Male My_Number/M*100];
% Aged 64
Y_data = Male_data_64(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_20_Switzerland(15);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_20_Switzerland_Male = [Proportion_Ht_20_Switzerland_Male My_Number/M*100];
% Aged 65
Y_data = Male_data_65(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_20_Switzerland(16);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_20_Switzerland_Male = [Proportion_Ht_20_Switzerland_Male My_Number/M*100];
% Aged 66
Y_data = Male_data_66(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_20_Switzerland(17);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_20_Switzerland_Male = [Proportion_Ht_20_Switzerland_Male My_Number/M*100];
% Aged 67
Y_data = Male_data_67(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_20_Switzerland(18);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_20_Switzerland_Male = [Proportion_Ht_20_Switzerland_Male My_Number/M*100];
% Aged 68
Y_data = Male_data_68(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_20_Switzerland(19);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_20_Switzerland_Male = [Proportion_Ht_20_Switzerland_Male My_Number/M*100];
% Aged 69
Y_data = Male_data_69(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_20_Switzerland(20);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_20_Switzerland_Male = [Proportion_Ht_20_Switzerland_Male My_Number/M*100];
% Aged 70
Y_data = Male_data_70(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_20_Switzerland(21);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_20_Switzerland_Male = [Proportion_Ht_20_Switzerland_Male My_Number/M*100];
% Aged 71
Y_data = Male_data_71(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_20_Switzerland(22);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_20_Switzerland_Male = [Proportion_Ht_20_Switzerland_Male My_Number/M*100];
% Aged 72
Y_data = Male_data_72(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_20_Switzerland(23);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_20_Switzerland_Male = [Proportion_Ht_20_Switzerland_Male My_Number/M*100];
% Aged 73
Y_data = Male_data_73(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_20_Switzerland(24);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_20_Switzerland_Male = [Proportion_Ht_20_Switzerland_Male My_Number/M*100];
% Aged 74
Y_data = Male_data_74(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_20_Switzerland(25);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_20_Switzerland_Male = [Proportion_Ht_20_Switzerland_Male My_Number/M*100];
% Aged 75
Y_data = Male_data_75(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_20_Switzerland(26);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_20_Switzerland_Male = [Proportion_Ht_20_Switzerland_Male My_Number/M*100];
% Aged 76
Y_data = Male_data_76(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_20_Switzerland(27);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_20_Switzerland_Male = [Proportion_Ht_20_Switzerland_Male My_Number/M*100];
% Aged 77
Y_data = Male_data_77(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_20_Switzerland(28);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_20_Switzerland_Male = [Proportion_Ht_20_Switzerland_Male My_Number/M*100];
% Aged 78
Y_data = Male_data_78(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_20_Switzerland(29);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_20_Switzerland_Male = [Proportion_Ht_20_Switzerland_Male My_Number/M*100];
% Aged 79
Y_data = Male_data_79(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_20_Switzerland(30);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_20_Switzerland_Male = [Proportion_Ht_20_Switzerland_Male My_Number/M*100];
% Aged 80
Y_data = Male_data_80(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_20_Switzerland(31);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_20_Switzerland_Male = [Proportion_Ht_20_Switzerland_Male My_Number/M*100];
% Aged 81
Y_data = Male_data_81(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_20_Switzerland(32);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_20_Switzerland_Male = [Proportion_Ht_20_Switzerland_Male My_Number/M*100];
% Aged 82
Y_data = Male_data_82(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_20_Switzerland(33);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_20_Switzerland_Male = [Proportion_Ht_20_Switzerland_Male My_Number/M*100];
% Aged 83
Y_data = Male_data_83(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_20_Switzerland(34);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_20_Switzerland_Male = [Proportion_Ht_20_Switzerland_Male My_Number/M*100];
% Aged 84
Y_data = Male_data_84(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_20_Switzerland(35);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_20_Switzerland_Male = [Proportion_Ht_20_Switzerland_Male My_Number/M*100];
% Aged 85
Y_data = Male_data_85(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_20_Switzerland(36);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_20_Switzerland_Male = [Proportion_Ht_20_Switzerland_Male My_Number/M*100];
% Aged 86
Y_data = Male_data_86(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_20_Switzerland(37);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_20_Switzerland_Male = [Proportion_Ht_20_Switzerland_Male My_Number/M*100];
% Aged 87
Y_data = Male_data_87(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_20_Switzerland(38);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_20_Switzerland_Male = [Proportion_Ht_20_Switzerland_Male My_Number/M*100];
% Aged 88
Y_data = Male_data_88(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_20_Switzerland(39);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_20_Switzerland_Male = [Proportion_Ht_20_Switzerland_Male My_Number/M*100];
% Aged 89
Y_data = Male_data_89(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_20_Switzerland(40);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_20_Switzerland_Male = [Proportion_Ht_20_Switzerland_Male My_Number/M*100];
% Aged 90
Y_data = Male_data_90(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_20_Switzerland(41);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_20_Switzerland_Male = [Proportion_Ht_20_Switzerland_Male My_Number/M*100];

%% 28_Czech
% Loading the data
Female_data = xlsread('28_Czech.xlsx','Female');
Male_data = xlsread('28_Czech.xlsx','Male');
% Grouping by age
Female_data_50 = []; % == 50
Female_data_51 = [];
Female_data_52 = [];
Female_data_53 = [];
Female_data_54 = [];
Female_data_55 = [];
Female_data_56 = [];
Female_data_57 = [];
Female_data_58 = [];
Female_data_59 = [];
Female_data_60 = [];
Female_data_61 = [];
Female_data_62 = [];
Female_data_63 = [];
Female_data_64 = [];
Female_data_65 = [];
Female_data_66 = [];
Female_data_67 = [];
Female_data_68 = [];
Female_data_69 = [];
Female_data_70 = [];
Female_data_71 = [];
Female_data_72 = [];
Female_data_73 = [];
Female_data_74 = [];
Female_data_75 = [];
Female_data_76 = [];
Female_data_77 = [];
Female_data_78 = [];
Female_data_79 = [];
Female_data_80 = [];
Female_data_81 = [];
Female_data_82 = [];
Female_data_83 = [];
Female_data_84 = [];
Female_data_85 = [];
Female_data_86 = [];
Female_data_87 = [];
Female_data_88 = [];
Female_data_89 = [];
Female_data_90 = []; % ==90

Male_data_50 = []; % == 50
Male_data_51 = [];
Male_data_52 = [];
Male_data_53 = [];
Male_data_54 = [];
Male_data_55 = [];
Male_data_56 = [];
Male_data_57 = [];
Male_data_58 = [];
Male_data_59 = [];
Male_data_60 = [];
Male_data_61 = [];
Male_data_62 = [];
Male_data_63 = [];
Male_data_64 = [];
Male_data_65 = [];
Male_data_66 = [];
Male_data_67 = [];
Male_data_68 = [];
Male_data_69 = [];
Male_data_70 = [];
Male_data_71 = [];
Male_data_72 = [];
Male_data_73 = [];
Male_data_74 = [];
Male_data_75 = [];
Male_data_76 = [];
Male_data_77 = [];
Male_data_78 = [];
Male_data_79 = [];
Male_data_80 = [];
Male_data_81 = [];
Male_data_82 = [];
Male_data_83 = [];
Male_data_84 = [];
Male_data_85 = [];
Male_data_86 = [];
Male_data_87 = [];
Male_data_88 = [];
Male_data_89 = [];
Male_data_90 = []; % ==90

% For Female
[M N] = size(Female_data); % No.	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Female_data(i,2) == 50
        Female_data_50 = [Female_data_50; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 51
        Female_data_51 = [Female_data_51; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 52
        Female_data_52 = [Female_data_52; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 53
        Female_data_53 = [Female_data_53; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 54
        Female_data_54 = [Female_data_54; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 55
        Female_data_55 = [Female_data_55; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 56
        Female_data_56 = [Female_data_56; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 57
        Female_data_57 = [Female_data_57; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 58
        Female_data_58 = [Female_data_58; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 59
        Female_data_59 = [Female_data_59; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 60
        Female_data_60 = [Female_data_60; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 61
        Female_data_61 = [Female_data_61; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 62
        Female_data_62 = [Female_data_62; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 63
        Female_data_63 = [Female_data_63; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 64
        Female_data_64 = [Female_data_64; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 65
        Female_data_65 = [Female_data_65; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 66
        Female_data_66 = [Female_data_66; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 67
        Female_data_67 = [Female_data_67; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 68
        Female_data_68 = [Female_data_68; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 69
        Female_data_69 = [Female_data_69; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 70
        Female_data_70 = [Female_data_70; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 71
        Female_data_71 = [Female_data_71; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 72
        Female_data_72 = [Female_data_72; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 73
        Female_data_73 = [Female_data_73; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 74
        Female_data_74 = [Female_data_74; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 75
        Female_data_75 = [Female_data_75; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 76
        Female_data_76 = [Female_data_76; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 77
        Female_data_77 = [Female_data_77; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 78
        Female_data_78 = [Female_data_78; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 79
        Female_data_79 = [Female_data_79; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 80
        Female_data_80 = [Female_data_80; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 81
        Female_data_81 = [Female_data_81; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 82
        Female_data_82 = [Female_data_82; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 83
        Female_data_83 = [Female_data_83; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 84
        Female_data_84 = [Female_data_84; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 85
        Female_data_85 = [Female_data_85; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 86
        Female_data_86 = [Female_data_86; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 87
        Female_data_87 = [Female_data_87; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 88
        Female_data_88 = [Female_data_88; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 89
        Female_data_89 = [Female_data_89; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 90
        Female_data_90 = [Female_data_90; Female_data(i,3) Female_data(i,4)];
    end
end

% For Male
[M N] = size(Male_data); % No.	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Male_data(i,2) == 50
        Male_data_50 = [Male_data_50; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 51
        Male_data_51 = [Male_data_51; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 52
        Male_data_52 = [Male_data_52; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 53
        Male_data_53 = [Male_data_53; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 54
        Male_data_54 = [Male_data_54; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 55
        Male_data_55 = [Male_data_55; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 56
        Male_data_56 = [Male_data_56; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 57
        Male_data_57 = [Male_data_57; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 58
        Male_data_58 = [Male_data_58; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 59
        Male_data_59 = [Male_data_59; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 60
        Male_data_60 = [Male_data_60; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 61
        Male_data_61 = [Male_data_61; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 62
        Male_data_62 = [Male_data_62; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 63
        Male_data_63 = [Male_data_63; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 64
        Male_data_64 = [Male_data_64; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 65
        Male_data_65 = [Male_data_65; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 66
        Male_data_66 = [Male_data_66; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 67
        Male_data_67 = [Male_data_67; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 68
        Male_data_68 = [Male_data_68; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 69
        Male_data_69 = [Male_data_69; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 70
        Male_data_70 = [Male_data_70; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 71
        Male_data_71 = [Male_data_71; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 72
        Male_data_72 = [Male_data_72; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 73
        Male_data_73 = [Male_data_73; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 74
        Male_data_74 = [Male_data_74; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 75
        Male_data_75 = [Male_data_75; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 76
        Male_data_76 = [Male_data_76; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 77
        Male_data_77 = [Male_data_77; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 78
        Male_data_78 = [Male_data_78; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 79
        Male_data_79 = [Male_data_79; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 80
        Male_data_80 = [Male_data_80; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 81
        Male_data_81 = [Male_data_81; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 82
        Male_data_82 = [Male_data_82; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 83
        Male_data_83 = [Male_data_83; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 84
        Male_data_84 = [Male_data_84; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 85
        Male_data_85 = [Male_data_85; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 86
        Male_data_86 = [Male_data_86; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 87
        Male_data_87 = [Male_data_87; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 88
        Male_data_88 = [Male_data_88; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 89
        Male_data_89 = [Male_data_89; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 90
        Male_data_90 = [Male_data_90; Male_data(i,3) Male_data(i,4)];
    end
end

% We calculate the coefficients of a and b in 1=a/Weight+b*Height for this
% dataset
Age_28_Czech = 50:90;
Proportion_Ht_28_Czech_Female = [];
Proportion_Ht_28_Czech_Male = [];

% For Female
% Aged 50
Y_data = Female_data_50(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_28_Czech(1);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_28_Czech_Female = [Proportion_Ht_28_Czech_Female My_Number/M*100];
% Aged 51
Y_data = Female_data_51(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_28_Czech(2);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_28_Czech_Female = [Proportion_Ht_28_Czech_Female My_Number/M*100];
% Aged 52
Y_data = Female_data_52(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_28_Czech(3);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_28_Czech_Female = [Proportion_Ht_28_Czech_Female My_Number/M*100];
% Aged 53
Y_data = Female_data_53(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_28_Czech(4);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_28_Czech_Female = [Proportion_Ht_28_Czech_Female My_Number/M*100];
% Aged 54
Y_data = Female_data_54(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_28_Czech(5);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_28_Czech_Female = [Proportion_Ht_28_Czech_Female My_Number/M*100];
% Aged 55
Y_data = Female_data_55(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_28_Czech(6);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_28_Czech_Female = [Proportion_Ht_28_Czech_Female My_Number/M*100];
% Aged 56
Y_data = Female_data_56(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_28_Czech(7);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_28_Czech_Female = [Proportion_Ht_28_Czech_Female My_Number/M*100];
% Aged 57
Y_data = Female_data_57(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_28_Czech(8);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_28_Czech_Female = [Proportion_Ht_28_Czech_Female My_Number/M*100];
% Aged 58
Y_data = Female_data_58(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_28_Czech(9);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_28_Czech_Female = [Proportion_Ht_28_Czech_Female My_Number/M*100];
% Aged 59
Y_data = Female_data_59(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_28_Czech(10);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_28_Czech_Female = [Proportion_Ht_28_Czech_Female My_Number/M*100];
% Aged 60
Y_data = Female_data_60(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_28_Czech(11);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_28_Czech_Female = [Proportion_Ht_28_Czech_Female My_Number/M*100];
% Aged 61
Y_data = Female_data_61(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_28_Czech(12);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_28_Czech_Female = [Proportion_Ht_28_Czech_Female My_Number/M*100];
% Aged 62
Y_data = Female_data_62(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_28_Czech(13);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_28_Czech_Female = [Proportion_Ht_28_Czech_Female My_Number/M*100];
% Aged 63
Y_data = Female_data_63(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_28_Czech(14);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_28_Czech_Female = [Proportion_Ht_28_Czech_Female My_Number/M*100];
% Aged 64
Y_data = Female_data_64(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_28_Czech(15);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_28_Czech_Female = [Proportion_Ht_28_Czech_Female My_Number/M*100];
% Aged 65
Y_data = Female_data_65(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_28_Czech(16);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_28_Czech_Female = [Proportion_Ht_28_Czech_Female My_Number/M*100];
% Aged 66
Y_data = Female_data_66(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_28_Czech(17);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_28_Czech_Female = [Proportion_Ht_28_Czech_Female My_Number/M*100];
% Aged 67
Y_data = Female_data_67(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_28_Czech(18);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_28_Czech_Female = [Proportion_Ht_28_Czech_Female My_Number/M*100];
% Aged 68
Y_data = Female_data_68(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_28_Czech(19);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_28_Czech_Female = [Proportion_Ht_28_Czech_Female My_Number/M*100];
% Aged 69
Y_data = Female_data_69(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_28_Czech(20);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_28_Czech_Female = [Proportion_Ht_28_Czech_Female My_Number/M*100];
% Aged 70
Y_data = Female_data_70(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_28_Czech(21);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_28_Czech_Female = [Proportion_Ht_28_Czech_Female My_Number/M*100];
% Aged 71
Y_data = Female_data_71(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_28_Czech(22);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_28_Czech_Female = [Proportion_Ht_28_Czech_Female My_Number/M*100];
% Aged 72
Y_data = Female_data_72(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_28_Czech(23);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_28_Czech_Female = [Proportion_Ht_28_Czech_Female My_Number/M*100];
% Aged 73
Y_data = Female_data_73(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_28_Czech(24);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_28_Czech_Female = [Proportion_Ht_28_Czech_Female My_Number/M*100];
% Aged 74
Y_data = Female_data_74(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_28_Czech(25);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_28_Czech_Female = [Proportion_Ht_28_Czech_Female My_Number/M*100];
% Aged 75
Y_data = Female_data_75(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_28_Czech(26);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_28_Czech_Female = [Proportion_Ht_28_Czech_Female My_Number/M*100];
% Aged 76
Y_data = Female_data_76(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_28_Czech(27);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_28_Czech_Female = [Proportion_Ht_28_Czech_Female My_Number/M*100];
% Aged 77
Y_data = Female_data_77(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_28_Czech(28);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_28_Czech_Female = [Proportion_Ht_28_Czech_Female My_Number/M*100];
% Aged 78
Y_data = Female_data_78(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_28_Czech(29);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_28_Czech_Female = [Proportion_Ht_28_Czech_Female My_Number/M*100];
% Aged 79
Y_data = Female_data_79(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_28_Czech(30);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_28_Czech_Female = [Proportion_Ht_28_Czech_Female My_Number/M*100];
% Aged 80
Y_data = Female_data_80(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_28_Czech(31);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_28_Czech_Female = [Proportion_Ht_28_Czech_Female My_Number/M*100];
% Aged 81
Y_data = Female_data_81(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_28_Czech(32);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_28_Czech_Female = [Proportion_Ht_28_Czech_Female My_Number/M*100];
% Aged 82
Y_data = Female_data_82(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_28_Czech(33);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_28_Czech_Female = [Proportion_Ht_28_Czech_Female My_Number/M*100];
% Aged 83
Y_data = Female_data_83(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_28_Czech(34);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_28_Czech_Female = [Proportion_Ht_28_Czech_Female My_Number/M*100];
% Aged 84
Y_data = Female_data_84(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_28_Czech(35);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_28_Czech_Female = [Proportion_Ht_28_Czech_Female My_Number/M*100];
% Aged 85
Y_data = Female_data_85(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_28_Czech(36);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_28_Czech_Female = [Proportion_Ht_28_Czech_Female My_Number/M*100];
% Aged 86
Y_data = Female_data_86(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_28_Czech(37);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_28_Czech_Female = [Proportion_Ht_28_Czech_Female My_Number/M*100];
% Aged 87
Y_data = Female_data_87(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_28_Czech(38);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_28_Czech_Female = [Proportion_Ht_28_Czech_Female My_Number/M*100];
% Aged 88
Y_data = Female_data_88(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_28_Czech(39);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_28_Czech_Female = [Proportion_Ht_28_Czech_Female My_Number/M*100];
% Aged 89
Y_data = Female_data_89(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_28_Czech(40);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_28_Czech_Female = [Proportion_Ht_28_Czech_Female My_Number/M*100];
% Aged 90
Y_data = Female_data_90(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_28_Czech(41);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_28_Czech_Female = [Proportion_Ht_28_Czech_Female My_Number/M*100];

% For Male
% Aged 50
Y_data = Male_data_50(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_28_Czech(1);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_28_Czech_Male = [Proportion_Ht_28_Czech_Male My_Number/M*100];
% Aged 51
Y_data = Male_data_51(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_28_Czech(2);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_28_Czech_Male = [Proportion_Ht_28_Czech_Male My_Number/M*100];
% Aged 52
Y_data = Male_data_52(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_28_Czech(3);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_28_Czech_Male = [Proportion_Ht_28_Czech_Male My_Number/M*100];
% Aged 53
Y_data = Male_data_53(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_28_Czech(4);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_28_Czech_Male = [Proportion_Ht_28_Czech_Male My_Number/M*100];
% Aged 54
Y_data = Male_data_54(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_28_Czech(5);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_28_Czech_Male = [Proportion_Ht_28_Czech_Male My_Number/M*100];
% Aged 55
Y_data = Male_data_55(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_28_Czech(6);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_28_Czech_Male = [Proportion_Ht_28_Czech_Male My_Number/M*100];
% Aged 56
Y_data = Male_data_56(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_28_Czech(7);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_28_Czech_Male = [Proportion_Ht_28_Czech_Male My_Number/M*100];
% Aged 57
Y_data = Male_data_57(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_28_Czech(8);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_28_Czech_Male = [Proportion_Ht_28_Czech_Male My_Number/M*100];
% Aged 58
Y_data = Male_data_58(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_28_Czech(9);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_28_Czech_Male = [Proportion_Ht_28_Czech_Male My_Number/M*100];
% Aged 59
Y_data = Male_data_59(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_28_Czech(10);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_28_Czech_Male = [Proportion_Ht_28_Czech_Male My_Number/M*100];
% Aged 60
Y_data = Male_data_60(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_28_Czech(11);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_28_Czech_Male = [Proportion_Ht_28_Czech_Male My_Number/M*100];
% Aged 61
Y_data = Male_data_61(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_28_Czech(12);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_28_Czech_Male = [Proportion_Ht_28_Czech_Male My_Number/M*100];
% Aged 62
Y_data = Male_data_62(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_28_Czech(13);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_28_Czech_Male = [Proportion_Ht_28_Czech_Male My_Number/M*100];
% Aged 63
Y_data = Male_data_63(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_28_Czech(14);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_28_Czech_Male = [Proportion_Ht_28_Czech_Male My_Number/M*100];
% Aged 64
Y_data = Male_data_64(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_28_Czech(15);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_28_Czech_Male = [Proportion_Ht_28_Czech_Male My_Number/M*100];
% Aged 65
Y_data = Male_data_65(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_28_Czech(16);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_28_Czech_Male = [Proportion_Ht_28_Czech_Male My_Number/M*100];
% Aged 66
Y_data = Male_data_66(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_28_Czech(17);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_28_Czech_Male = [Proportion_Ht_28_Czech_Male My_Number/M*100];
% Aged 67
Y_data = Male_data_67(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_28_Czech(18);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_28_Czech_Male = [Proportion_Ht_28_Czech_Male My_Number/M*100];
% Aged 68
Y_data = Male_data_68(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_28_Czech(19);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_28_Czech_Male = [Proportion_Ht_28_Czech_Male My_Number/M*100];
% Aged 69
Y_data = Male_data_69(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_28_Czech(20);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_28_Czech_Male = [Proportion_Ht_28_Czech_Male My_Number/M*100];
% Aged 70
Y_data = Male_data_70(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_28_Czech(21);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_28_Czech_Male = [Proportion_Ht_28_Czech_Male My_Number/M*100];
% Aged 71
Y_data = Male_data_71(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_28_Czech(22);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_28_Czech_Male = [Proportion_Ht_28_Czech_Male My_Number/M*100];
% Aged 72
Y_data = Male_data_72(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_28_Czech(23);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_28_Czech_Male = [Proportion_Ht_28_Czech_Male My_Number/M*100];
% Aged 73
Y_data = Male_data_73(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_28_Czech(24);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_28_Czech_Male = [Proportion_Ht_28_Czech_Male My_Number/M*100];
% Aged 74
Y_data = Male_data_74(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_28_Czech(25);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_28_Czech_Male = [Proportion_Ht_28_Czech_Male My_Number/M*100];
% Aged 75
Y_data = Male_data_75(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_28_Czech(26);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_28_Czech_Male = [Proportion_Ht_28_Czech_Male My_Number/M*100];
% Aged 76
Y_data = Male_data_76(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_28_Czech(27);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_28_Czech_Male = [Proportion_Ht_28_Czech_Male My_Number/M*100];
% Aged 77
Y_data = Male_data_77(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_28_Czech(28);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_28_Czech_Male = [Proportion_Ht_28_Czech_Male My_Number/M*100];
% Aged 78
Y_data = Male_data_78(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_28_Czech(29);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_28_Czech_Male = [Proportion_Ht_28_Czech_Male My_Number/M*100];
% Aged 79
Y_data = Male_data_79(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_28_Czech(30);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_28_Czech_Male = [Proportion_Ht_28_Czech_Male My_Number/M*100];
% Aged 80
Y_data = Male_data_80(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_28_Czech(31);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_28_Czech_Male = [Proportion_Ht_28_Czech_Male My_Number/M*100];
% Aged 81
Y_data = Male_data_81(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_28_Czech(32);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_28_Czech_Male = [Proportion_Ht_28_Czech_Male My_Number/M*100];
% Aged 82
Y_data = Male_data_82(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_28_Czech(33);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_28_Czech_Male = [Proportion_Ht_28_Czech_Male My_Number/M*100];
% Aged 83
Y_data = Male_data_83(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_28_Czech(34);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_28_Czech_Male = [Proportion_Ht_28_Czech_Male My_Number/M*100];
% Aged 84
Y_data = Male_data_84(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_28_Czech(35);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_28_Czech_Male = [Proportion_Ht_28_Czech_Male My_Number/M*100];
% Aged 85
Y_data = Male_data_85(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_28_Czech(36);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_28_Czech_Male = [Proportion_Ht_28_Czech_Male My_Number/M*100];
% Aged 86
Y_data = Male_data_86(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_28_Czech(37);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_28_Czech_Male = [Proportion_Ht_28_Czech_Male My_Number/M*100];
% Aged 87
Y_data = Male_data_87(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_28_Czech(38);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_28_Czech_Male = [Proportion_Ht_28_Czech_Male My_Number/M*100];
% Aged 88
Y_data = Male_data_88(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_28_Czech(39);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_28_Czech_Male = [Proportion_Ht_28_Czech_Male My_Number/M*100];
% Aged 89
Y_data = Male_data_89(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_28_Czech(40);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_28_Czech_Male = [Proportion_Ht_28_Czech_Male My_Number/M*100];
% Aged 90
Y_data = Male_data_90(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_28_Czech(41);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_28_Czech_Male = [Proportion_Ht_28_Czech_Male My_Number/M*100];

%% 29_Poland
% Loading the data
Female_data = xlsread('29_Poland.xlsx','Female');
Male_data = xlsread('29_Poland.xlsx','Male');
% Grouping by age
Female_data_50 = []; % == 50
Female_data_51 = [];
Female_data_52 = [];
Female_data_53 = [];
Female_data_54 = [];
Female_data_55 = [];
Female_data_56 = [];
Female_data_57 = [];
Female_data_58 = [];
Female_data_59 = [];
Female_data_60 = [];
Female_data_61 = [];
Female_data_62 = [];
Female_data_63 = [];
Female_data_64 = [];
Female_data_65 = [];
Female_data_66 = [];
Female_data_67 = [];
Female_data_68 = [];
Female_data_69 = [];
Female_data_70 = [];
Female_data_71 = [];
Female_data_72 = [];
Female_data_73 = [];
Female_data_74 = [];
Female_data_75 = [];
Female_data_76 = [];
Female_data_77 = [];
Female_data_78 = [];
Female_data_79 = [];
Female_data_80 = [];
Female_data_81 = [];
Female_data_82 = [];
Female_data_83 = [];
Female_data_84 = [];
Female_data_85 = [];
Female_data_86 = [];
Female_data_87 = [];
Female_data_88 = [];
Female_data_89 = [];
Female_data_90 = []; % ==90

Male_data_50 = []; % == 50
Male_data_51 = [];
Male_data_52 = [];
Male_data_53 = [];
Male_data_54 = [];
Male_data_55 = [];
Male_data_56 = [];
Male_data_57 = [];
Male_data_58 = [];
Male_data_59 = [];
Male_data_60 = [];
Male_data_61 = [];
Male_data_62 = [];
Male_data_63 = [];
Male_data_64 = [];
Male_data_65 = [];
Male_data_66 = [];
Male_data_67 = [];
Male_data_68 = [];
Male_data_69 = [];
Male_data_70 = [];
Male_data_71 = [];
Male_data_72 = [];
Male_data_73 = [];
Male_data_74 = [];
Male_data_75 = [];
Male_data_76 = [];
Male_data_77 = [];
Male_data_78 = [];
Male_data_79 = [];
Male_data_80 = [];
Male_data_81 = [];
Male_data_82 = [];
Male_data_83 = [];
Male_data_84 = [];
Male_data_85 = [];
Male_data_86 = [];
Male_data_87 = [];
Male_data_88 = [];
Male_data_89 = [];
Male_data_90 = []; % ==90

% For Female
[M N] = size(Female_data); % No.	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Female_data(i,2) == 50
        Female_data_50 = [Female_data_50; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 51
        Female_data_51 = [Female_data_51; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 52
        Female_data_52 = [Female_data_52; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 53
        Female_data_53 = [Female_data_53; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 54
        Female_data_54 = [Female_data_54; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 55
        Female_data_55 = [Female_data_55; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 56
        Female_data_56 = [Female_data_56; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 57
        Female_data_57 = [Female_data_57; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 58
        Female_data_58 = [Female_data_58; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 59
        Female_data_59 = [Female_data_59; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 60
        Female_data_60 = [Female_data_60; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 61
        Female_data_61 = [Female_data_61; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 62
        Female_data_62 = [Female_data_62; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 63
        Female_data_63 = [Female_data_63; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 64
        Female_data_64 = [Female_data_64; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 65
        Female_data_65 = [Female_data_65; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 66
        Female_data_66 = [Female_data_66; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 67
        Female_data_67 = [Female_data_67; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 68
        Female_data_68 = [Female_data_68; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 69
        Female_data_69 = [Female_data_69; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 70
        Female_data_70 = [Female_data_70; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 71
        Female_data_71 = [Female_data_71; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 72
        Female_data_72 = [Female_data_72; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 73
        Female_data_73 = [Female_data_73; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 74
        Female_data_74 = [Female_data_74; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 75
        Female_data_75 = [Female_data_75; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 76
        Female_data_76 = [Female_data_76; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 77
        Female_data_77 = [Female_data_77; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 78
        Female_data_78 = [Female_data_78; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 79
        Female_data_79 = [Female_data_79; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 80
        Female_data_80 = [Female_data_80; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 81
        Female_data_81 = [Female_data_81; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 82
        Female_data_82 = [Female_data_82; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 83
        Female_data_83 = [Female_data_83; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 84
        Female_data_84 = [Female_data_84; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 85
        Female_data_85 = [Female_data_85; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 86
        Female_data_86 = [Female_data_86; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 87
        Female_data_87 = [Female_data_87; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 88
        Female_data_88 = [Female_data_88; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 89
        Female_data_89 = [Female_data_89; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 90
        Female_data_90 = [Female_data_90; Female_data(i,3) Female_data(i,4)];
    end
end

% For Male
[M N] = size(Male_data); % No.	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Male_data(i,2) == 50
        Male_data_50 = [Male_data_50; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 51
        Male_data_51 = [Male_data_51; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 52
        Male_data_52 = [Male_data_52; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 53
        Male_data_53 = [Male_data_53; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 54
        Male_data_54 = [Male_data_54; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 55
        Male_data_55 = [Male_data_55; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 56
        Male_data_56 = [Male_data_56; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 57
        Male_data_57 = [Male_data_57; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 58
        Male_data_58 = [Male_data_58; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 59
        Male_data_59 = [Male_data_59; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 60
        Male_data_60 = [Male_data_60; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 61
        Male_data_61 = [Male_data_61; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 62
        Male_data_62 = [Male_data_62; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 63
        Male_data_63 = [Male_data_63; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 64
        Male_data_64 = [Male_data_64; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 65
        Male_data_65 = [Male_data_65; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 66
        Male_data_66 = [Male_data_66; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 67
        Male_data_67 = [Male_data_67; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 68
        Male_data_68 = [Male_data_68; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 69
        Male_data_69 = [Male_data_69; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 70
        Male_data_70 = [Male_data_70; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 71
        Male_data_71 = [Male_data_71; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 72
        Male_data_72 = [Male_data_72; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 73
        Male_data_73 = [Male_data_73; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 74
        Male_data_74 = [Male_data_74; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 75
        Male_data_75 = [Male_data_75; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 76
        Male_data_76 = [Male_data_76; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 77
        Male_data_77 = [Male_data_77; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 78
        Male_data_78 = [Male_data_78; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 79
        Male_data_79 = [Male_data_79; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 80
        Male_data_80 = [Male_data_80; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 81
        Male_data_81 = [Male_data_81; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 82
        Male_data_82 = [Male_data_82; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 83
        Male_data_83 = [Male_data_83; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 84
        Male_data_84 = [Male_data_84; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 85
        Male_data_85 = [Male_data_85; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 86
        Male_data_86 = [Male_data_86; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 87
        Male_data_87 = [Male_data_87; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 88
        Male_data_88 = [Male_data_88; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 89
        Male_data_89 = [Male_data_89; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 90
        Male_data_90 = [Male_data_90; Male_data(i,3) Male_data(i,4)];
    end
end

% We calculate the coefficients of a and b in 1=a/Weight+b*Height for this
% dataset
Age_29_Poland = 50:90;
Proportion_Ht_29_Poland_Female = [];
Proportion_Ht_29_Poland_Male = [];

% For Female
% Aged 50
Y_data = Female_data_50(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_29_Poland(1);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_29_Poland_Female = [Proportion_Ht_29_Poland_Female My_Number/M*100];
% Aged 51
Y_data = Female_data_51(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_29_Poland(2);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_29_Poland_Female = [Proportion_Ht_29_Poland_Female My_Number/M*100];
% Aged 52
Y_data = Female_data_52(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_29_Poland(3);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_29_Poland_Female = [Proportion_Ht_29_Poland_Female My_Number/M*100];
% Aged 53
Y_data = Female_data_53(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_29_Poland(4);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_29_Poland_Female = [Proportion_Ht_29_Poland_Female My_Number/M*100];
% Aged 54
Y_data = Female_data_54(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_29_Poland(5);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_29_Poland_Female = [Proportion_Ht_29_Poland_Female My_Number/M*100];
% Aged 55
Y_data = Female_data_55(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_29_Poland(6);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_29_Poland_Female = [Proportion_Ht_29_Poland_Female My_Number/M*100];
% Aged 56
Y_data = Female_data_56(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_29_Poland(7);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_29_Poland_Female = [Proportion_Ht_29_Poland_Female My_Number/M*100];
% Aged 57
Y_data = Female_data_57(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_29_Poland(8);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_29_Poland_Female = [Proportion_Ht_29_Poland_Female My_Number/M*100];
% Aged 58
Y_data = Female_data_58(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_29_Poland(9);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_29_Poland_Female = [Proportion_Ht_29_Poland_Female My_Number/M*100];
% Aged 59
Y_data = Female_data_59(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_29_Poland(10);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_29_Poland_Female = [Proportion_Ht_29_Poland_Female My_Number/M*100];
% Aged 60
Y_data = Female_data_60(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_29_Poland(11);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_29_Poland_Female = [Proportion_Ht_29_Poland_Female My_Number/M*100];
% Aged 61
Y_data = Female_data_61(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_29_Poland(12);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_29_Poland_Female = [Proportion_Ht_29_Poland_Female My_Number/M*100];
% Aged 62
Y_data = Female_data_62(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_29_Poland(13);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_29_Poland_Female = [Proportion_Ht_29_Poland_Female My_Number/M*100];
% Aged 63
Y_data = Female_data_63(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_29_Poland(14);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_29_Poland_Female = [Proportion_Ht_29_Poland_Female My_Number/M*100];
% Aged 64
Y_data = Female_data_64(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_29_Poland(15);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_29_Poland_Female = [Proportion_Ht_29_Poland_Female My_Number/M*100];
% Aged 65
Y_data = Female_data_65(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_29_Poland(16);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_29_Poland_Female = [Proportion_Ht_29_Poland_Female My_Number/M*100];
% Aged 66
Y_data = Female_data_66(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_29_Poland(17);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_29_Poland_Female = [Proportion_Ht_29_Poland_Female My_Number/M*100];
% Aged 67
Y_data = Female_data_67(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_29_Poland(18);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_29_Poland_Female = [Proportion_Ht_29_Poland_Female My_Number/M*100];
% Aged 68
Y_data = Female_data_68(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_29_Poland(19);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_29_Poland_Female = [Proportion_Ht_29_Poland_Female My_Number/M*100];
% Aged 69
Y_data = Female_data_69(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_29_Poland(20);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_29_Poland_Female = [Proportion_Ht_29_Poland_Female My_Number/M*100];
% Aged 70
Y_data = Female_data_70(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_29_Poland(21);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_29_Poland_Female = [Proportion_Ht_29_Poland_Female My_Number/M*100];
% Aged 71
Y_data = Female_data_71(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_29_Poland(22);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_29_Poland_Female = [Proportion_Ht_29_Poland_Female My_Number/M*100];
% Aged 72
Y_data = Female_data_72(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_29_Poland(23);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_29_Poland_Female = [Proportion_Ht_29_Poland_Female My_Number/M*100];
% Aged 73
Y_data = Female_data_73(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_29_Poland(24);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_29_Poland_Female = [Proportion_Ht_29_Poland_Female My_Number/M*100];
% Aged 74
Y_data = Female_data_74(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_29_Poland(25);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_29_Poland_Female = [Proportion_Ht_29_Poland_Female My_Number/M*100];
% Aged 75
Y_data = Female_data_75(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_29_Poland(26);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_29_Poland_Female = [Proportion_Ht_29_Poland_Female My_Number/M*100];
% Aged 76
Y_data = Female_data_76(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_29_Poland(27);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_29_Poland_Female = [Proportion_Ht_29_Poland_Female My_Number/M*100];
% Aged 77
Y_data = Female_data_77(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_29_Poland(28);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_29_Poland_Female = [Proportion_Ht_29_Poland_Female My_Number/M*100];
% Aged 78
Y_data = Female_data_78(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_29_Poland(29);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_29_Poland_Female = [Proportion_Ht_29_Poland_Female My_Number/M*100];
% Aged 79
Y_data = Female_data_79(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_29_Poland(30);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_29_Poland_Female = [Proportion_Ht_29_Poland_Female My_Number/M*100];
% Aged 80
Y_data = Female_data_80(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_29_Poland(31);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_29_Poland_Female = [Proportion_Ht_29_Poland_Female My_Number/M*100];
% Aged 81
Y_data = Female_data_81(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_29_Poland(32);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_29_Poland_Female = [Proportion_Ht_29_Poland_Female My_Number/M*100];
% Aged 82
Y_data = Female_data_82(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_29_Poland(33);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_29_Poland_Female = [Proportion_Ht_29_Poland_Female My_Number/M*100];
% Aged 83
Y_data = Female_data_83(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_29_Poland(34);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_29_Poland_Female = [Proportion_Ht_29_Poland_Female My_Number/M*100];
% Aged 84
Y_data = Female_data_84(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_29_Poland(35);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_29_Poland_Female = [Proportion_Ht_29_Poland_Female My_Number/M*100];
% Aged 85
Y_data = Female_data_85(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_29_Poland(36);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_29_Poland_Female = [Proportion_Ht_29_Poland_Female My_Number/M*100];
% Aged 86
Y_data = Female_data_86(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_29_Poland(37);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_29_Poland_Female = [Proportion_Ht_29_Poland_Female My_Number/M*100];
% Aged 87
Y_data = Female_data_87(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_29_Poland(38);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_29_Poland_Female = [Proportion_Ht_29_Poland_Female My_Number/M*100];
% Aged 88
Y_data = Female_data_88(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_29_Poland(39);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_29_Poland_Female = [Proportion_Ht_29_Poland_Female My_Number/M*100];
% Aged 89
Y_data = Female_data_89(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_29_Poland(40);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_29_Poland_Female = [Proportion_Ht_29_Poland_Female My_Number/M*100];
% Aged 90
Y_data = Female_data_90(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_29_Poland(41);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_29_Poland_Female = [Proportion_Ht_29_Poland_Female My_Number/M*100];

% For Male
% Aged 50
Y_data = Male_data_50(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_29_Poland(1);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_29_Poland_Male = [Proportion_Ht_29_Poland_Male My_Number/M*100];
% Aged 51
Y_data = Male_data_51(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_29_Poland(2);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_29_Poland_Male = [Proportion_Ht_29_Poland_Male My_Number/M*100];
% Aged 52
Y_data = Male_data_52(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_29_Poland(3);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_29_Poland_Male = [Proportion_Ht_29_Poland_Male My_Number/M*100];
% Aged 53
Y_data = Male_data_53(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_29_Poland(4);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_29_Poland_Male = [Proportion_Ht_29_Poland_Male My_Number/M*100];
% Aged 54
Y_data = Male_data_54(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_29_Poland(5);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_29_Poland_Male = [Proportion_Ht_29_Poland_Male My_Number/M*100];
% Aged 55
Y_data = Male_data_55(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_29_Poland(6);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_29_Poland_Male = [Proportion_Ht_29_Poland_Male My_Number/M*100];
% Aged 56
Y_data = Male_data_56(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_29_Poland(7);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_29_Poland_Male = [Proportion_Ht_29_Poland_Male My_Number/M*100];
% Aged 57
Y_data = Male_data_57(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_29_Poland(8);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_29_Poland_Male = [Proportion_Ht_29_Poland_Male My_Number/M*100];
% Aged 58
Y_data = Male_data_58(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_29_Poland(9);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_29_Poland_Male = [Proportion_Ht_29_Poland_Male My_Number/M*100];
% Aged 59
Y_data = Male_data_59(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_29_Poland(10);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_29_Poland_Male = [Proportion_Ht_29_Poland_Male My_Number/M*100];
% Aged 60
Y_data = Male_data_60(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_29_Poland(11);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_29_Poland_Male = [Proportion_Ht_29_Poland_Male My_Number/M*100];
% Aged 61
Y_data = Male_data_61(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_29_Poland(12);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_29_Poland_Male = [Proportion_Ht_29_Poland_Male My_Number/M*100];
% Aged 62
Y_data = Male_data_62(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_29_Poland(13);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_29_Poland_Male = [Proportion_Ht_29_Poland_Male My_Number/M*100];
% Aged 63
Y_data = Male_data_63(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_29_Poland(14);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_29_Poland_Male = [Proportion_Ht_29_Poland_Male My_Number/M*100];
% Aged 64
Y_data = Male_data_64(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_29_Poland(15);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_29_Poland_Male = [Proportion_Ht_29_Poland_Male My_Number/M*100];
% Aged 65
Y_data = Male_data_65(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_29_Poland(16);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_29_Poland_Male = [Proportion_Ht_29_Poland_Male My_Number/M*100];
% Aged 66
Y_data = Male_data_66(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_29_Poland(17);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_29_Poland_Male = [Proportion_Ht_29_Poland_Male My_Number/M*100];
% Aged 67
Y_data = Male_data_67(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_29_Poland(18);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_29_Poland_Male = [Proportion_Ht_29_Poland_Male My_Number/M*100];
% Aged 68
Y_data = Male_data_68(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_29_Poland(19);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_29_Poland_Male = [Proportion_Ht_29_Poland_Male My_Number/M*100];
% Aged 69
Y_data = Male_data_69(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_29_Poland(20);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_29_Poland_Male = [Proportion_Ht_29_Poland_Male My_Number/M*100];
% Aged 70
Y_data = Male_data_70(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_29_Poland(21);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_29_Poland_Male = [Proportion_Ht_29_Poland_Male My_Number/M*100];
% Aged 71
Y_data = Male_data_71(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_29_Poland(22);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_29_Poland_Male = [Proportion_Ht_29_Poland_Male My_Number/M*100];
% Aged 72
Y_data = Male_data_72(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_29_Poland(23);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_29_Poland_Male = [Proportion_Ht_29_Poland_Male My_Number/M*100];
% Aged 73
Y_data = Male_data_73(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_29_Poland(24);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_29_Poland_Male = [Proportion_Ht_29_Poland_Male My_Number/M*100];
% Aged 74
Y_data = Male_data_74(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_29_Poland(25);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_29_Poland_Male = [Proportion_Ht_29_Poland_Male My_Number/M*100];
% Aged 75
Y_data = Male_data_75(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_29_Poland(26);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_29_Poland_Male = [Proportion_Ht_29_Poland_Male My_Number/M*100];
% Aged 76
Y_data = Male_data_76(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_29_Poland(27);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_29_Poland_Male = [Proportion_Ht_29_Poland_Male My_Number/M*100];
% Aged 77
Y_data = Male_data_77(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_29_Poland(28);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_29_Poland_Male = [Proportion_Ht_29_Poland_Male My_Number/M*100];
% Aged 78
Y_data = Male_data_78(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_29_Poland(29);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_29_Poland_Male = [Proportion_Ht_29_Poland_Male My_Number/M*100];
% Aged 79
Y_data = Male_data_79(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_29_Poland(30);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_29_Poland_Male = [Proportion_Ht_29_Poland_Male My_Number/M*100];
% Aged 80
Y_data = Male_data_80(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_29_Poland(31);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_29_Poland_Male = [Proportion_Ht_29_Poland_Male My_Number/M*100];
% Aged 81
Y_data = Male_data_81(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_29_Poland(32);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_29_Poland_Male = [Proportion_Ht_29_Poland_Male My_Number/M*100];
% Aged 82
Y_data = Male_data_82(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_29_Poland(33);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_29_Poland_Male = [Proportion_Ht_29_Poland_Male My_Number/M*100];
% Aged 83
Y_data = Male_data_83(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_29_Poland(34);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_29_Poland_Male = [Proportion_Ht_29_Poland_Male My_Number/M*100];
% Aged 84
Y_data = Male_data_84(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_29_Poland(35);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_29_Poland_Male = [Proportion_Ht_29_Poland_Male My_Number/M*100];
% Aged 85
Y_data = Male_data_85(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_29_Poland(36);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_29_Poland_Male = [Proportion_Ht_29_Poland_Male My_Number/M*100];
% Aged 86
Y_data = Male_data_86(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_29_Poland(37);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_29_Poland_Male = [Proportion_Ht_29_Poland_Male My_Number/M*100];
% Aged 87
Y_data = Male_data_87(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_29_Poland(38);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_29_Poland_Male = [Proportion_Ht_29_Poland_Male My_Number/M*100];
% Aged 88
Y_data = Male_data_88(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_29_Poland(39);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_29_Poland_Male = [Proportion_Ht_29_Poland_Male My_Number/M*100];
% Aged 89
Y_data = Male_data_89(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_29_Poland(40);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_29_Poland_Male = [Proportion_Ht_29_Poland_Male My_Number/M*100];
% Aged 90
Y_data = Male_data_90(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_29_Poland(41);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_29_Poland_Male = [Proportion_Ht_29_Poland_Male My_Number/M*100];

%% 32_Hungary
% Loading the data
Female_data = xlsread('32_Hungary.xlsx','Female');
Male_data = xlsread('32_Hungary.xlsx','Male');
% Grouping by age
Female_data_51 = [];
Female_data_52 = [];
Female_data_53 = [];
Female_data_54 = [];
Female_data_55 = [];
Female_data_56 = [];
Female_data_57 = [];
Female_data_58 = [];
Female_data_59 = [];
Female_data_60 = [];
Female_data_61 = [];
Female_data_62 = [];
Female_data_63 = [];
Female_data_64 = [];
Female_data_65 = [];
Female_data_66 = [];
Female_data_67 = [];
Female_data_68 = [];
Female_data_69 = [];
Female_data_70 = [];
Female_data_71 = [];
Female_data_72 = [];
Female_data_73 = [];
Female_data_74 = [];
Female_data_75 = [];
Female_data_76 = [];
Female_data_77 = [];
Female_data_78 = [];
Female_data_79 = [];
Female_data_80 = [];
Female_data_81 = [];
Female_data_82 = [];
Female_data_83 = [];
Female_data_84 = [];
Female_data_85 = [];

Male_data_51 = [];
Male_data_52 = [];
Male_data_53 = [];
Male_data_54 = [];
Male_data_55 = [];
Male_data_56 = [];
Male_data_57 = [];
Male_data_58 = [];
Male_data_59 = [];
Male_data_60 = [];
Male_data_61 = [];
Male_data_62 = [];
Male_data_63 = [];
Male_data_64 = [];
Male_data_65 = [];
Male_data_66 = [];
Male_data_67 = [];
Male_data_68 = [];
Male_data_69 = [];
Male_data_70 = [];
Male_data_71 = [];
Male_data_72 = [];
Male_data_73 = [];
Male_data_74 = [];
Male_data_75 = [];
Male_data_76 = [];
Male_data_77 = [];
Male_data_78 = [];
Male_data_79 = [];
Male_data_80 = [];
Male_data_81 = [];
Male_data_82 = [];
Male_data_83 = [];
Male_data_84 = [];
Male_data_85 = [];

% For Female
[M N] = size(Female_data); % No.	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Female_data(i,2) == 51
        Female_data_51 = [Female_data_51; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 52
        Female_data_52 = [Female_data_52; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 53
        Female_data_53 = [Female_data_53; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 54
        Female_data_54 = [Female_data_54; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 55
        Female_data_55 = [Female_data_55; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 56
        Female_data_56 = [Female_data_56; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 57
        Female_data_57 = [Female_data_57; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 58
        Female_data_58 = [Female_data_58; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 59
        Female_data_59 = [Female_data_59; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 60
        Female_data_60 = [Female_data_60; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 61
        Female_data_61 = [Female_data_61; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 62
        Female_data_62 = [Female_data_62; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 63
        Female_data_63 = [Female_data_63; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 64
        Female_data_64 = [Female_data_64; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 65
        Female_data_65 = [Female_data_65; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 66
        Female_data_66 = [Female_data_66; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 67
        Female_data_67 = [Female_data_67; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 68
        Female_data_68 = [Female_data_68; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 69
        Female_data_69 = [Female_data_69; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 70
        Female_data_70 = [Female_data_70; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 71
        Female_data_71 = [Female_data_71; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 72
        Female_data_72 = [Female_data_72; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 73
        Female_data_73 = [Female_data_73; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 74
        Female_data_74 = [Female_data_74; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 75
        Female_data_75 = [Female_data_75; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 76
        Female_data_76 = [Female_data_76; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 77
        Female_data_77 = [Female_data_77; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 78
        Female_data_78 = [Female_data_78; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 79
        Female_data_79 = [Female_data_79; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 80
        Female_data_80 = [Female_data_80; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 81
        Female_data_81 = [Female_data_81; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 82
        Female_data_82 = [Female_data_82; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 83
        Female_data_83 = [Female_data_83; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 84
        Female_data_84 = [Female_data_84; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 85
        Female_data_85 = [Female_data_85; Female_data(i,3) Female_data(i,4)];
    end
end

% For Male
[M N] = size(Male_data); % No.	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Male_data(i,2) == 51
        Male_data_51 = [Male_data_51; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 52
        Male_data_52 = [Male_data_52; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 53
        Male_data_53 = [Male_data_53; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 54
        Male_data_54 = [Male_data_54; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 55
        Male_data_55 = [Male_data_55; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 56
        Male_data_56 = [Male_data_56; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 57
        Male_data_57 = [Male_data_57; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 58
        Male_data_58 = [Male_data_58; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 59
        Male_data_59 = [Male_data_59; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 60
        Male_data_60 = [Male_data_60; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 61
        Male_data_61 = [Male_data_61; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 62
        Male_data_62 = [Male_data_62; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 63
        Male_data_63 = [Male_data_63; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 64
        Male_data_64 = [Male_data_64; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 65
        Male_data_65 = [Male_data_65; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 66
        Male_data_66 = [Male_data_66; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 67
        Male_data_67 = [Male_data_67; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 68
        Male_data_68 = [Male_data_68; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 69
        Male_data_69 = [Male_data_69; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 70
        Male_data_70 = [Male_data_70; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 71
        Male_data_71 = [Male_data_71; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 72
        Male_data_72 = [Male_data_72; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 73
        Male_data_73 = [Male_data_73; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 74
        Male_data_74 = [Male_data_74; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 75
        Male_data_75 = [Male_data_75; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 76
        Male_data_76 = [Male_data_76; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 77
        Male_data_77 = [Male_data_77; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 78
        Male_data_78 = [Male_data_78; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 79
        Male_data_79 = [Male_data_79; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 80
        Male_data_80 = [Male_data_80; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 81
        Male_data_81 = [Male_data_81; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 82
        Male_data_82 = [Male_data_82; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 83
        Male_data_83 = [Male_data_83; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 84
        Male_data_84 = [Male_data_84; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 85
        Male_data_85 = [Male_data_85; Male_data(i,3) Male_data(i,4)];
    end
end

% We calculate the coefficients of a and b in 1=a/Weight+b*Height for this
% dataset
Age_32_Hungary = 51:85;
Proportion_Ht_32_Hungary_Female = [];
Proportion_Ht_32_Hungary_Male = [];

Coefficient_b_Female_1_32_Hungary = [0 Coefficient_b_Female_1_32_Hungary];
Coefficient_b_Male_1_32_Hungary = [0 Coefficient_b_Male_1_32_Hungary];
% For Female
% Aged 51
Y_data = Female_data_51(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_32_Hungary(2);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_32_Hungary_Female = [Proportion_Ht_32_Hungary_Female My_Number/M*100];
% Aged 52
Y_data = Female_data_52(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_32_Hungary(3);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_32_Hungary_Female = [Proportion_Ht_32_Hungary_Female My_Number/M*100];
% Aged 53
Y_data = Female_data_53(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_32_Hungary(4);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_32_Hungary_Female = [Proportion_Ht_32_Hungary_Female My_Number/M*100];
% Aged 54
Y_data = Female_data_54(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_32_Hungary(5);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_32_Hungary_Female = [Proportion_Ht_32_Hungary_Female My_Number/M*100];
% Aged 55
Y_data = Female_data_55(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_32_Hungary(6);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_32_Hungary_Female = [Proportion_Ht_32_Hungary_Female My_Number/M*100];
% Aged 56
Y_data = Female_data_56(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_32_Hungary(7);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_32_Hungary_Female = [Proportion_Ht_32_Hungary_Female My_Number/M*100];
% Aged 57
Y_data = Female_data_57(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_32_Hungary(8);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_32_Hungary_Female = [Proportion_Ht_32_Hungary_Female My_Number/M*100];
% Aged 58
Y_data = Female_data_58(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_32_Hungary(9);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_32_Hungary_Female = [Proportion_Ht_32_Hungary_Female My_Number/M*100];
% Aged 59
Y_data = Female_data_59(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_32_Hungary(10);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_32_Hungary_Female = [Proportion_Ht_32_Hungary_Female My_Number/M*100];
% Aged 60
Y_data = Female_data_60(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_32_Hungary(11);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_32_Hungary_Female = [Proportion_Ht_32_Hungary_Female My_Number/M*100];
% Aged 61
Y_data = Female_data_61(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_32_Hungary(12);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_32_Hungary_Female = [Proportion_Ht_32_Hungary_Female My_Number/M*100];
% Aged 62
Y_data = Female_data_62(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_32_Hungary(13);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_32_Hungary_Female = [Proportion_Ht_32_Hungary_Female My_Number/M*100];
% Aged 63
Y_data = Female_data_63(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_32_Hungary(14);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_32_Hungary_Female = [Proportion_Ht_32_Hungary_Female My_Number/M*100];
% Aged 64
Y_data = Female_data_64(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_32_Hungary(15);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_32_Hungary_Female = [Proportion_Ht_32_Hungary_Female My_Number/M*100];
% Aged 65
Y_data = Female_data_65(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_32_Hungary(16);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_32_Hungary_Female = [Proportion_Ht_32_Hungary_Female My_Number/M*100];
% Aged 66
Y_data = Female_data_66(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_32_Hungary(17);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_32_Hungary_Female = [Proportion_Ht_32_Hungary_Female My_Number/M*100];
% Aged 67
Y_data = Female_data_67(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_32_Hungary(18);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_32_Hungary_Female = [Proportion_Ht_32_Hungary_Female My_Number/M*100];
% Aged 68
Y_data = Female_data_68(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_32_Hungary(19);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_32_Hungary_Female = [Proportion_Ht_32_Hungary_Female My_Number/M*100];
% Aged 69
Y_data = Female_data_69(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_32_Hungary(20);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_32_Hungary_Female = [Proportion_Ht_32_Hungary_Female My_Number/M*100];
% Aged 70
Y_data = Female_data_70(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_32_Hungary(21);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_32_Hungary_Female = [Proportion_Ht_32_Hungary_Female My_Number/M*100];
% Aged 71
Y_data = Female_data_71(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_32_Hungary(22);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_32_Hungary_Female = [Proportion_Ht_32_Hungary_Female My_Number/M*100];
% Aged 72
Y_data = Female_data_72(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_32_Hungary(23);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_32_Hungary_Female = [Proportion_Ht_32_Hungary_Female My_Number/M*100];
% Aged 73
Y_data = Female_data_73(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_32_Hungary(24);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_32_Hungary_Female = [Proportion_Ht_32_Hungary_Female My_Number/M*100];
% Aged 74
Y_data = Female_data_74(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_32_Hungary(25);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_32_Hungary_Female = [Proportion_Ht_32_Hungary_Female My_Number/M*100];
% Aged 75
Y_data = Female_data_75(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_32_Hungary(26);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_32_Hungary_Female = [Proportion_Ht_32_Hungary_Female My_Number/M*100];
% Aged 76
Y_data = Female_data_76(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_32_Hungary(27);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_32_Hungary_Female = [Proportion_Ht_32_Hungary_Female My_Number/M*100];
% Aged 77
Y_data = Female_data_77(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_32_Hungary(28);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_32_Hungary_Female = [Proportion_Ht_32_Hungary_Female My_Number/M*100];
% Aged 78
Y_data = Female_data_78(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_32_Hungary(29);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_32_Hungary_Female = [Proportion_Ht_32_Hungary_Female My_Number/M*100];
% Aged 79
Y_data = Female_data_79(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_32_Hungary(30);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_32_Hungary_Female = [Proportion_Ht_32_Hungary_Female My_Number/M*100];
% Aged 80
Y_data = Female_data_80(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_32_Hungary(31);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_32_Hungary_Female = [Proportion_Ht_32_Hungary_Female My_Number/M*100];
% Aged 81
Y_data = Female_data_81(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_32_Hungary(32);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_32_Hungary_Female = [Proportion_Ht_32_Hungary_Female My_Number/M*100];
% Aged 82
Y_data = Female_data_82(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_32_Hungary(33);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_32_Hungary_Female = [Proportion_Ht_32_Hungary_Female My_Number/M*100];
% Aged 83
Y_data = Female_data_83(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_32_Hungary(34);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_32_Hungary_Female = [Proportion_Ht_32_Hungary_Female My_Number/M*100];
% Aged 84
Y_data = Female_data_84(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_32_Hungary(35);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_32_Hungary_Female = [Proportion_Ht_32_Hungary_Female My_Number/M*100];
% Aged 85
Y_data = Female_data_85(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_32_Hungary(36);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_32_Hungary_Female = [Proportion_Ht_32_Hungary_Female My_Number/M*100];

% For Male
% Aged 51
Y_data = Male_data_51(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_32_Hungary(2);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_32_Hungary_Male = [Proportion_Ht_32_Hungary_Male My_Number/M*100];
% Aged 52
Y_data = Male_data_52(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_32_Hungary(3);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_32_Hungary_Male = [Proportion_Ht_32_Hungary_Male My_Number/M*100];
% Aged 53
Y_data = Male_data_53(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_32_Hungary(4);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_32_Hungary_Male = [Proportion_Ht_32_Hungary_Male My_Number/M*100];
% Aged 54
Y_data = Male_data_54(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_32_Hungary(5);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_32_Hungary_Male = [Proportion_Ht_32_Hungary_Male My_Number/M*100];
% Aged 55
Y_data = Male_data_55(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_32_Hungary(6);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_32_Hungary_Male = [Proportion_Ht_32_Hungary_Male My_Number/M*100];
% Aged 56
Y_data = Male_data_56(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_32_Hungary(7);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_32_Hungary_Male = [Proportion_Ht_32_Hungary_Male My_Number/M*100];
% Aged 57
Y_data = Male_data_57(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_32_Hungary(8);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_32_Hungary_Male = [Proportion_Ht_32_Hungary_Male My_Number/M*100];
% Aged 58
Y_data = Male_data_58(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_32_Hungary(9);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_32_Hungary_Male = [Proportion_Ht_32_Hungary_Male My_Number/M*100];
% Aged 59
Y_data = Male_data_59(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_32_Hungary(10);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_32_Hungary_Male = [Proportion_Ht_32_Hungary_Male My_Number/M*100];
% Aged 60
Y_data = Male_data_60(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_32_Hungary(11);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_32_Hungary_Male = [Proportion_Ht_32_Hungary_Male My_Number/M*100];
% Aged 61
Y_data = Male_data_61(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_32_Hungary(12);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_32_Hungary_Male = [Proportion_Ht_32_Hungary_Male My_Number/M*100];
% Aged 62
Y_data = Male_data_62(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_32_Hungary(13);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_32_Hungary_Male = [Proportion_Ht_32_Hungary_Male My_Number/M*100];
% Aged 63
Y_data = Male_data_63(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_32_Hungary(14);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_32_Hungary_Male = [Proportion_Ht_32_Hungary_Male My_Number/M*100];
% Aged 64
Y_data = Male_data_64(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_32_Hungary(15);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_32_Hungary_Male = [Proportion_Ht_32_Hungary_Male My_Number/M*100];
% Aged 65
Y_data = Male_data_65(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_32_Hungary(16);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_32_Hungary_Male = [Proportion_Ht_32_Hungary_Male My_Number/M*100];
% Aged 66
Y_data = Male_data_66(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_32_Hungary(17);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_32_Hungary_Male = [Proportion_Ht_32_Hungary_Male My_Number/M*100];
% Aged 67
Y_data = Male_data_67(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_32_Hungary(18);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_32_Hungary_Male = [Proportion_Ht_32_Hungary_Male My_Number/M*100];
% Aged 68
Y_data = Male_data_68(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_32_Hungary(19);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_32_Hungary_Male = [Proportion_Ht_32_Hungary_Male My_Number/M*100];
% Aged 69
Y_data = Male_data_69(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_32_Hungary(20);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_32_Hungary_Male = [Proportion_Ht_32_Hungary_Male My_Number/M*100];
% Aged 70
Y_data = Male_data_70(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_32_Hungary(21);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_32_Hungary_Male = [Proportion_Ht_32_Hungary_Male My_Number/M*100];
% Aged 71
Y_data = Male_data_71(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_32_Hungary(22);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_32_Hungary_Male = [Proportion_Ht_32_Hungary_Male My_Number/M*100];
% Aged 72
Y_data = Male_data_72(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_32_Hungary(23);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_32_Hungary_Male = [Proportion_Ht_32_Hungary_Male My_Number/M*100];
% Aged 73
Y_data = Male_data_73(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_32_Hungary(24);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_32_Hungary_Male = [Proportion_Ht_32_Hungary_Male My_Number/M*100];
% Aged 74
Y_data = Male_data_74(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_32_Hungary(25);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_32_Hungary_Male = [Proportion_Ht_32_Hungary_Male My_Number/M*100];
% Aged 75
Y_data = Male_data_75(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_32_Hungary(26);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_32_Hungary_Male = [Proportion_Ht_32_Hungary_Male My_Number/M*100];
% Aged 76
Y_data = Male_data_76(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_32_Hungary(27);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_32_Hungary_Male = [Proportion_Ht_32_Hungary_Male My_Number/M*100];
% Aged 77
Y_data = Male_data_77(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_32_Hungary(28);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_32_Hungary_Male = [Proportion_Ht_32_Hungary_Male My_Number/M*100];
% Aged 78
Y_data = Male_data_78(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_32_Hungary(29);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_32_Hungary_Male = [Proportion_Ht_32_Hungary_Male My_Number/M*100];
% Aged 79
Y_data = Male_data_79(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_32_Hungary(30);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_32_Hungary_Male = [Proportion_Ht_32_Hungary_Male My_Number/M*100];
% Aged 80
Y_data = Male_data_80(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_32_Hungary(31);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_32_Hungary_Male = [Proportion_Ht_32_Hungary_Male My_Number/M*100];
% Aged 81
Y_data = Male_data_81(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_32_Hungary(32);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_32_Hungary_Male = [Proportion_Ht_32_Hungary_Male My_Number/M*100];
% Aged 82
Y_data = Male_data_82(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_32_Hungary(33);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_32_Hungary_Male = [Proportion_Ht_32_Hungary_Male My_Number/M*100];
% Aged 83
Y_data = Male_data_83(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_32_Hungary(34);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_32_Hungary_Male = [Proportion_Ht_32_Hungary_Male My_Number/M*100];
% Aged 84
Y_data = Male_data_84(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_32_Hungary(35);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_32_Hungary_Male = [Proportion_Ht_32_Hungary_Male My_Number/M*100];
% Aged 85
Y_data = Male_data_85(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_32_Hungary(36);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_32_Hungary_Male = [Proportion_Ht_32_Hungary_Male My_Number/M*100];

%% 63_Slovakia
% Loading the data
Female_data = xlsread('63_Slovakia.xlsx','Female');
Male_data = xlsread('63_Slovakia.xlsx','Male');
% Grouping by age
Female_data_51 = [];
Female_data_52 = [];
Female_data_53 = [];
Female_data_54 = [];
Female_data_55 = [];
Female_data_56 = [];
Female_data_57 = [];
Female_data_58 = [];
Female_data_59 = [];
Female_data_60 = [];
Female_data_61 = [];
Female_data_62 = [];
Female_data_63 = [];
Female_data_64 = [];
Female_data_65 = [];
Female_data_66 = [];
Female_data_67 = [];
Female_data_68 = [];
Female_data_69 = [];
Female_data_70 = [];
Female_data_71 = [];
Female_data_72 = [];
Female_data_73 = [];
Female_data_74 = [];
Female_data_75 = [];
Female_data_76 = [];
Female_data_77 = [];

Male_data_51 = [];
Male_data_52 = [];
Male_data_53 = [];
Male_data_54 = [];
Male_data_55 = [];
Male_data_56 = [];
Male_data_57 = [];
Male_data_58 = [];
Male_data_59 = [];
Male_data_60 = [];
Male_data_61 = [];
Male_data_62 = [];
Male_data_63 = [];
Male_data_64 = [];
Male_data_65 = [];
Male_data_66 = [];
Male_data_67 = [];
Male_data_68 = [];
Male_data_69 = [];
Male_data_70 = [];
Male_data_71 = [];
Male_data_72 = [];
Male_data_73 = [];
Male_data_74 = [];
Male_data_75 = [];
Male_data_76 = [];
Male_data_77 = [];

% For Female
[M N] = size(Female_data); % No.	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Female_data(i,2) == 51
        Female_data_51 = [Female_data_51; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 52
        Female_data_52 = [Female_data_52; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 53
        Female_data_53 = [Female_data_53; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 54
        Female_data_54 = [Female_data_54; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 55
        Female_data_55 = [Female_data_55; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 56
        Female_data_56 = [Female_data_56; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 57
        Female_data_57 = [Female_data_57; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 58
        Female_data_58 = [Female_data_58; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 59
        Female_data_59 = [Female_data_59; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 60
        Female_data_60 = [Female_data_60; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 61
        Female_data_61 = [Female_data_61; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 62
        Female_data_62 = [Female_data_62; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 63
        Female_data_63 = [Female_data_63; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 64
        Female_data_64 = [Female_data_64; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 65
        Female_data_65 = [Female_data_65; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 66
        Female_data_66 = [Female_data_66; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 67
        Female_data_67 = [Female_data_67; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 68
        Female_data_68 = [Female_data_68; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 69
        Female_data_69 = [Female_data_69; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 70
        Female_data_70 = [Female_data_70; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 71
        Female_data_71 = [Female_data_71; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 72
        Female_data_72 = [Female_data_72; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 73
        Female_data_73 = [Female_data_73; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 74
        Female_data_74 = [Female_data_74; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 75
        Female_data_75 = [Female_data_75; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 76
        Female_data_76 = [Female_data_76; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 77
        Female_data_77 = [Female_data_77; Female_data(i,3) Female_data(i,4)];
    end
end

% For Male
[M N] = size(Male_data); % No.	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Male_data(i,2) == 51
        Male_data_51 = [Male_data_51; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 52
        Male_data_52 = [Male_data_52; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 53
        Male_data_53 = [Male_data_53; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 54
        Male_data_54 = [Male_data_54; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 55
        Male_data_55 = [Male_data_55; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 56
        Male_data_56 = [Male_data_56; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 57
        Male_data_57 = [Male_data_57; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 58
        Male_data_58 = [Male_data_58; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 59
        Male_data_59 = [Male_data_59; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 60
        Male_data_60 = [Male_data_60; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 61
        Male_data_61 = [Male_data_61; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 62
        Male_data_62 = [Male_data_62; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 63
        Male_data_63 = [Male_data_63; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 64
        Male_data_64 = [Male_data_64; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 65
        Male_data_65 = [Male_data_65; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 66
        Male_data_66 = [Male_data_66; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 67
        Male_data_67 = [Male_data_67; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 68
        Male_data_68 = [Male_data_68; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 69
        Male_data_69 = [Male_data_69; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 70
        Male_data_70 = [Male_data_70; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 71
        Male_data_71 = [Male_data_71; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 72
        Male_data_72 = [Male_data_72; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 73
        Male_data_73 = [Male_data_73; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 74
        Male_data_74 = [Male_data_74; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 75
        Male_data_75 = [Male_data_75; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 76
        Male_data_76 = [Male_data_76; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 77
        Male_data_77 = [Male_data_77; Male_data(i,3) Male_data(i,4)];
    end
end

% We calculate the coefficients of a and b in 1=a/Weight+b*Height for this
% dataset
Age_63_Slovakia = 51:77;
Proportion_Ht_63_Slovakia_Female = [];
Proportion_Ht_63_Slovakia_Male = [];

Coefficient_b_Female_1_63_Slovakia = [0 Coefficient_b_Female_1_63_Slovakia];
Coefficient_b_Male_1_63_Slovakia = [0 Coefficient_b_Male_1_63_Slovakia];
% For Female
% Aged 51
Y_data = Female_data_51(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_63_Slovakia(2);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_63_Slovakia_Female = [Proportion_Ht_63_Slovakia_Female My_Number/M*100];
% Aged 52
Y_data = Female_data_52(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_63_Slovakia(3);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_63_Slovakia_Female = [Proportion_Ht_63_Slovakia_Female My_Number/M*100];
% Aged 53
Y_data = Female_data_53(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_63_Slovakia(4);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_63_Slovakia_Female = [Proportion_Ht_63_Slovakia_Female My_Number/M*100];
% Aged 54
Y_data = Female_data_54(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_63_Slovakia(5);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_63_Slovakia_Female = [Proportion_Ht_63_Slovakia_Female My_Number/M*100];
% Aged 55
Y_data = Female_data_55(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_63_Slovakia(6);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_63_Slovakia_Female = [Proportion_Ht_63_Slovakia_Female My_Number/M*100];
% Aged 56
Y_data = Female_data_56(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_63_Slovakia(7);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_63_Slovakia_Female = [Proportion_Ht_63_Slovakia_Female My_Number/M*100];
% Aged 57
Y_data = Female_data_57(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_63_Slovakia(8);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_63_Slovakia_Female = [Proportion_Ht_63_Slovakia_Female My_Number/M*100];
% Aged 58
Y_data = Female_data_58(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_63_Slovakia(9);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_63_Slovakia_Female = [Proportion_Ht_63_Slovakia_Female My_Number/M*100];
% Aged 59
Y_data = Female_data_59(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_63_Slovakia(10);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_63_Slovakia_Female = [Proportion_Ht_63_Slovakia_Female My_Number/M*100];
% Aged 60
Y_data = Female_data_60(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_63_Slovakia(11);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_63_Slovakia_Female = [Proportion_Ht_63_Slovakia_Female My_Number/M*100];
% Aged 61
Y_data = Female_data_61(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_63_Slovakia(12);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_63_Slovakia_Female = [Proportion_Ht_63_Slovakia_Female My_Number/M*100];
% Aged 62
Y_data = Female_data_62(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_63_Slovakia(13);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_63_Slovakia_Female = [Proportion_Ht_63_Slovakia_Female My_Number/M*100];
% Aged 63
Y_data = Female_data_63(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_63_Slovakia(14);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_63_Slovakia_Female = [Proportion_Ht_63_Slovakia_Female My_Number/M*100];
% Aged 64
Y_data = Female_data_64(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_63_Slovakia(15);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_63_Slovakia_Female = [Proportion_Ht_63_Slovakia_Female My_Number/M*100];
% Aged 65
Y_data = Female_data_65(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_63_Slovakia(16);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_63_Slovakia_Female = [Proportion_Ht_63_Slovakia_Female My_Number/M*100];
% Aged 66
Y_data = Female_data_66(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_63_Slovakia(17);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_63_Slovakia_Female = [Proportion_Ht_63_Slovakia_Female My_Number/M*100];
% Aged 67
Y_data = Female_data_67(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_63_Slovakia(18);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_63_Slovakia_Female = [Proportion_Ht_63_Slovakia_Female My_Number/M*100];
% Aged 68
Y_data = Female_data_68(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_63_Slovakia(19);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_63_Slovakia_Female = [Proportion_Ht_63_Slovakia_Female My_Number/M*100];
% Aged 69
Y_data = Female_data_69(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_63_Slovakia(20);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_63_Slovakia_Female = [Proportion_Ht_63_Slovakia_Female My_Number/M*100];
% Aged 70
Y_data = Female_data_70(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_63_Slovakia(21);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_63_Slovakia_Female = [Proportion_Ht_63_Slovakia_Female My_Number/M*100];
% Aged 71
Y_data = Female_data_71(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_63_Slovakia(22);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_63_Slovakia_Female = [Proportion_Ht_63_Slovakia_Female My_Number/M*100];
% Aged 72
Y_data = Female_data_72(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_63_Slovakia(23);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_63_Slovakia_Female = [Proportion_Ht_63_Slovakia_Female My_Number/M*100];
% Aged 73
Y_data = Female_data_73(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_63_Slovakia(24);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_63_Slovakia_Female = [Proportion_Ht_63_Slovakia_Female My_Number/M*100];
% Aged 74
Y_data = Female_data_74(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_63_Slovakia(25);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_63_Slovakia_Female = [Proportion_Ht_63_Slovakia_Female My_Number/M*100];
% Aged 75
Y_data = Female_data_75(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_63_Slovakia(26);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_63_Slovakia_Female = [Proportion_Ht_63_Slovakia_Female My_Number/M*100];
% Aged 76
Y_data = Female_data_76(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_63_Slovakia(27);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_63_Slovakia_Female = [Proportion_Ht_63_Slovakia_Female My_Number/M*100];
% Aged 77
Y_data = Female_data_77(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_63_Slovakia(28);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_63_Slovakia_Female = [Proportion_Ht_63_Slovakia_Female My_Number/M*100];

% For Male
% Aged 51
Y_data = Male_data_51(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_63_Slovakia(2);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_63_Slovakia_Male = [Proportion_Ht_63_Slovakia_Male My_Number/M*100];
% Aged 52
Y_data = Male_data_52(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_63_Slovakia(3);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_63_Slovakia_Male = [Proportion_Ht_63_Slovakia_Male My_Number/M*100];
% Aged 53
Y_data = Male_data_53(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_63_Slovakia(4);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_63_Slovakia_Male = [Proportion_Ht_63_Slovakia_Male My_Number/M*100];
% Aged 54
Y_data = Male_data_54(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_63_Slovakia(5);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_63_Slovakia_Male = [Proportion_Ht_63_Slovakia_Male My_Number/M*100];
% Aged 55
Y_data = Male_data_55(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_63_Slovakia(6);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_63_Slovakia_Male = [Proportion_Ht_63_Slovakia_Male My_Number/M*100];
% Aged 56
Y_data = Male_data_56(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_63_Slovakia(7);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_63_Slovakia_Male = [Proportion_Ht_63_Slovakia_Male My_Number/M*100];
% Aged 57
Y_data = Male_data_57(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_63_Slovakia(8);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_63_Slovakia_Male = [Proportion_Ht_63_Slovakia_Male My_Number/M*100];
% Aged 58
Y_data = Male_data_58(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_63_Slovakia(9);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_63_Slovakia_Male = [Proportion_Ht_63_Slovakia_Male My_Number/M*100];
% Aged 59
Y_data = Male_data_59(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_63_Slovakia(10);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_63_Slovakia_Male = [Proportion_Ht_63_Slovakia_Male My_Number/M*100];
% Aged 60
Y_data = Male_data_60(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_63_Slovakia(11);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_63_Slovakia_Male = [Proportion_Ht_63_Slovakia_Male My_Number/M*100];
% Aged 61
Y_data = Male_data_61(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_63_Slovakia(12);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_63_Slovakia_Male = [Proportion_Ht_63_Slovakia_Male My_Number/M*100];
% Aged 62
Y_data = Male_data_62(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_63_Slovakia(13);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_63_Slovakia_Male = [Proportion_Ht_63_Slovakia_Male My_Number/M*100];
% Aged 63
Y_data = Male_data_63(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_63_Slovakia(14);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_63_Slovakia_Male = [Proportion_Ht_63_Slovakia_Male My_Number/M*100];
% Aged 64
Y_data = Male_data_64(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_63_Slovakia(15);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_63_Slovakia_Male = [Proportion_Ht_63_Slovakia_Male My_Number/M*100];
% Aged 65
Y_data = Male_data_65(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_63_Slovakia(16);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_63_Slovakia_Male = [Proportion_Ht_63_Slovakia_Male My_Number/M*100];
% Aged 66
Y_data = Male_data_66(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_63_Slovakia(17);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_63_Slovakia_Male = [Proportion_Ht_63_Slovakia_Male My_Number/M*100];
% Aged 67
Y_data = Male_data_67(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_63_Slovakia(18);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_63_Slovakia_Male = [Proportion_Ht_63_Slovakia_Male My_Number/M*100];
% Aged 68
Y_data = Male_data_68(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_63_Slovakia(19);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_63_Slovakia_Male = [Proportion_Ht_63_Slovakia_Male My_Number/M*100];
% Aged 69
Y_data = Male_data_69(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_63_Slovakia(20);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_63_Slovakia_Male = [Proportion_Ht_63_Slovakia_Male My_Number/M*100];
% Aged 70
Y_data = Male_data_70(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_63_Slovakia(21);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_63_Slovakia_Male = [Proportion_Ht_63_Slovakia_Male My_Number/M*100];
% Aged 71
Y_data = Male_data_71(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_63_Slovakia(22);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_63_Slovakia_Male = [Proportion_Ht_63_Slovakia_Male My_Number/M*100];
% Aged 72
Y_data = Male_data_72(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_63_Slovakia(23);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_63_Slovakia_Male = [Proportion_Ht_63_Slovakia_Male My_Number/M*100];
% Aged 73
Y_data = Male_data_73(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_63_Slovakia(24);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_63_Slovakia_Male = [Proportion_Ht_63_Slovakia_Male My_Number/M*100];
% Aged 74
Y_data = Male_data_74(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_63_Slovakia(25);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_63_Slovakia_Male = [Proportion_Ht_63_Slovakia_Male My_Number/M*100];
% Aged 75
Y_data = Male_data_75(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_63_Slovakia(26);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_63_Slovakia_Male = [Proportion_Ht_63_Slovakia_Male My_Number/M*100];
% Aged 76
Y_data = Male_data_76(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_63_Slovakia(27);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_63_Slovakia_Male = [Proportion_Ht_63_Slovakia_Male My_Number/M*100];
% Aged 77
Y_data = Male_data_77(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_63_Slovakia(28);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_63_Slovakia_Male = [Proportion_Ht_63_Slovakia_Male My_Number/M*100];

%% 57_Latvia
% Loading the data
Female_data = xlsread('57_Latvia.xlsx','Female');
Male_data = xlsread('57_Latvia.xlsx','Male');
% Grouping by age
Female_data_51 = [];
Female_data_52 = [];
Female_data_53 = [];
Female_data_54 = [];
Female_data_55 = [];
Female_data_56 = [];
Female_data_57 = [];
Female_data_58 = [];
Female_data_59 = [];
Female_data_60 = [];
Female_data_61 = [];
Female_data_62 = [];
Female_data_63 = [];
Female_data_64 = [];
Female_data_65 = [];
Female_data_66 = [];
Female_data_67 = [];
Female_data_68 = [];
Female_data_69 = [];
Female_data_70 = [];
Female_data_71 = [];
Female_data_72 = [];
Female_data_73 = [];
Female_data_74 = [];
Female_data_75 = [];
Female_data_76 = [];
Female_data_77 = [];
Female_data_78 = [];
Female_data_79 = [];
Female_data_80 = [];
Female_data_81 = [];
Female_data_82 = [];
Female_data_83 = [];
Female_data_84 = [];
Female_data_85 = [];
Female_data_86 = [];

Male_data_51 = [];
Male_data_52 = [];
Male_data_53 = [];
Male_data_54 = [];
Male_data_55 = [];
Male_data_56 = [];
Male_data_57 = [];
Male_data_58 = [];
Male_data_59 = [];
Male_data_60 = [];
Male_data_61 = [];
Male_data_62 = [];
Male_data_63 = [];
Male_data_64 = [];
Male_data_65 = [];
Male_data_66 = [];
Male_data_67 = [];
Male_data_68 = [];
Male_data_69 = [];
Male_data_70 = [];
Male_data_71 = [];
Male_data_72 = [];
Male_data_73 = [];
Male_data_74 = [];
Male_data_75 = [];
Male_data_76 = [];
Male_data_77 = [];
Male_data_78 = [];
Male_data_79 = [];
Male_data_80 = [];
Male_data_81 = [];
Male_data_82 = [];
Male_data_83 = [];
Male_data_84 = [];
Male_data_85 = [];
Male_data_86 = [];

% For Female
[M N] = size(Female_data); % No.	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Female_data(i,2) == 51
        Female_data_51 = [Female_data_51; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 52
        Female_data_52 = [Female_data_52; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 53
        Female_data_53 = [Female_data_53; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 54
        Female_data_54 = [Female_data_54; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 55
        Female_data_55 = [Female_data_55; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 56
        Female_data_56 = [Female_data_56; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 57
        Female_data_57 = [Female_data_57; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 58
        Female_data_58 = [Female_data_58; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 59
        Female_data_59 = [Female_data_59; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 60
        Female_data_60 = [Female_data_60; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 61
        Female_data_61 = [Female_data_61; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 62
        Female_data_62 = [Female_data_62; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 63
        Female_data_63 = [Female_data_63; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 64
        Female_data_64 = [Female_data_64; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 65
        Female_data_65 = [Female_data_65; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 66
        Female_data_66 = [Female_data_66; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 67
        Female_data_67 = [Female_data_67; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 68
        Female_data_68 = [Female_data_68; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 69
        Female_data_69 = [Female_data_69; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 70
        Female_data_70 = [Female_data_70; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 71
        Female_data_71 = [Female_data_71; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 72
        Female_data_72 = [Female_data_72; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 73
        Female_data_73 = [Female_data_73; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 74
        Female_data_74 = [Female_data_74; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 75
        Female_data_75 = [Female_data_75; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 76
        Female_data_76 = [Female_data_76; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 77
        Female_data_77 = [Female_data_77; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 78
        Female_data_78 = [Female_data_78; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 79
        Female_data_79 = [Female_data_79; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 80
        Female_data_80 = [Female_data_80; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 81
        Female_data_81 = [Female_data_81; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 82
        Female_data_82 = [Female_data_82; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 83
        Female_data_83 = [Female_data_83; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 84
        Female_data_84 = [Female_data_84; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 85
        Female_data_85 = [Female_data_85; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 86
        Female_data_86 = [Female_data_86; Female_data(i,3) Female_data(i,4)];
    end
end

% For Male
[M N] = size(Male_data); % No.	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Male_data(i,2) == 51
        Male_data_51 = [Male_data_51; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 52
        Male_data_52 = [Male_data_52; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 53
        Male_data_53 = [Male_data_53; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 54
        Male_data_54 = [Male_data_54; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 55
        Male_data_55 = [Male_data_55; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 56
        Male_data_56 = [Male_data_56; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 57
        Male_data_57 = [Male_data_57; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 58
        Male_data_58 = [Male_data_58; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 59
        Male_data_59 = [Male_data_59; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 60
        Male_data_60 = [Male_data_60; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 61
        Male_data_61 = [Male_data_61; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 62
        Male_data_62 = [Male_data_62; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 63
        Male_data_63 = [Male_data_63; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 64
        Male_data_64 = [Male_data_64; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 65
        Male_data_65 = [Male_data_65; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 66
        Male_data_66 = [Male_data_66; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 67
        Male_data_67 = [Male_data_67; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 68
        Male_data_68 = [Male_data_68; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 69
        Male_data_69 = [Male_data_69; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 70
        Male_data_70 = [Male_data_70; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 71
        Male_data_71 = [Male_data_71; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 72
        Male_data_72 = [Male_data_72; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 73
        Male_data_73 = [Male_data_73; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 74
        Male_data_74 = [Male_data_74; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 75
        Male_data_75 = [Male_data_75; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 76
        Male_data_76 = [Male_data_76; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 77
        Male_data_77 = [Male_data_77; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 78
        Male_data_78 = [Male_data_78; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 79
        Male_data_79 = [Male_data_79; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 80
        Male_data_80 = [Male_data_80; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 81
        Male_data_81 = [Male_data_81; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 82
        Male_data_82 = [Male_data_82; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 83
        Male_data_83 = [Male_data_83; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 84
        Male_data_84 = [Male_data_84; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 85
        Male_data_85 = [Male_data_85; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 86
        Male_data_86 = [Male_data_86; Male_data(i,3) Male_data(i,4)];
    end
end

% We calculate the coefficients of a and b in 1=a/Weight+b*Height for this
% dataset
Age_57_Latvia = 51:86;
Proportion_Ht_57_Latvia_Female = [];
Proportion_Ht_57_Latvia_Male = [];
Coefficient_b_Female_1_57_Latvia = [0 Coefficient_b_Female_1_57_Latvia];
Coefficient_b_Male_1_57_Latvia = [0 Coefficient_b_Male_1_57_Latvia];

% For Female
% Aged 51
Y_data = Female_data_51(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_57_Latvia(2);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_57_Latvia_Female = [Proportion_Ht_57_Latvia_Female My_Number/M*100];
% Aged 52
Y_data = Female_data_52(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_57_Latvia(3);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_57_Latvia_Female = [Proportion_Ht_57_Latvia_Female My_Number/M*100];
% Aged 53
Y_data = Female_data_53(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_57_Latvia(4);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_57_Latvia_Female = [Proportion_Ht_57_Latvia_Female My_Number/M*100];
% Aged 54
Y_data = Female_data_54(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_57_Latvia(5);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_57_Latvia_Female = [Proportion_Ht_57_Latvia_Female My_Number/M*100];
% Aged 55
Y_data = Female_data_55(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_57_Latvia(6);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_57_Latvia_Female = [Proportion_Ht_57_Latvia_Female My_Number/M*100];
% Aged 56
Y_data = Female_data_56(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_57_Latvia(7);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_57_Latvia_Female = [Proportion_Ht_57_Latvia_Female My_Number/M*100];
% Aged 57
Y_data = Female_data_57(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_57_Latvia(8);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_57_Latvia_Female = [Proportion_Ht_57_Latvia_Female My_Number/M*100];
% Aged 58
Y_data = Female_data_58(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_57_Latvia(9);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_57_Latvia_Female = [Proportion_Ht_57_Latvia_Female My_Number/M*100];
% Aged 59
Y_data = Female_data_59(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_57_Latvia(10);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_57_Latvia_Female = [Proportion_Ht_57_Latvia_Female My_Number/M*100];
% Aged 60
Y_data = Female_data_60(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_57_Latvia(11);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_57_Latvia_Female = [Proportion_Ht_57_Latvia_Female My_Number/M*100];
% Aged 61
Y_data = Female_data_61(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_57_Latvia(12);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_57_Latvia_Female = [Proportion_Ht_57_Latvia_Female My_Number/M*100];
% Aged 62
Y_data = Female_data_62(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_57_Latvia(13);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_57_Latvia_Female = [Proportion_Ht_57_Latvia_Female My_Number/M*100];
% Aged 63
Y_data = Female_data_63(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_57_Latvia(14);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_57_Latvia_Female = [Proportion_Ht_57_Latvia_Female My_Number/M*100];
% Aged 64
Y_data = Female_data_64(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_57_Latvia(15);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_57_Latvia_Female = [Proportion_Ht_57_Latvia_Female My_Number/M*100];
% Aged 65
Y_data = Female_data_65(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_57_Latvia(16);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_57_Latvia_Female = [Proportion_Ht_57_Latvia_Female My_Number/M*100];
% Aged 66
Y_data = Female_data_66(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_57_Latvia(17);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_57_Latvia_Female = [Proportion_Ht_57_Latvia_Female My_Number/M*100];
% Aged 67
Y_data = Female_data_67(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_57_Latvia(18);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_57_Latvia_Female = [Proportion_Ht_57_Latvia_Female My_Number/M*100];
% Aged 68
Y_data = Female_data_68(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_57_Latvia(19);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_57_Latvia_Female = [Proportion_Ht_57_Latvia_Female My_Number/M*100];
% Aged 69
Y_data = Female_data_69(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_57_Latvia(20);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_57_Latvia_Female = [Proportion_Ht_57_Latvia_Female My_Number/M*100];
% Aged 70
Y_data = Female_data_70(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_57_Latvia(21);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_57_Latvia_Female = [Proportion_Ht_57_Latvia_Female My_Number/M*100];
% Aged 71
Y_data = Female_data_71(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_57_Latvia(22);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_57_Latvia_Female = [Proportion_Ht_57_Latvia_Female My_Number/M*100];
% Aged 72
Y_data = Female_data_72(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_57_Latvia(23);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_57_Latvia_Female = [Proportion_Ht_57_Latvia_Female My_Number/M*100];
% Aged 73
Y_data = Female_data_73(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_57_Latvia(24);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_57_Latvia_Female = [Proportion_Ht_57_Latvia_Female My_Number/M*100];
% Aged 74
Y_data = Female_data_74(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_57_Latvia(25);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_57_Latvia_Female = [Proportion_Ht_57_Latvia_Female My_Number/M*100];
% Aged 75
Y_data = Female_data_75(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_57_Latvia(26);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_57_Latvia_Female = [Proportion_Ht_57_Latvia_Female My_Number/M*100];
% Aged 76
Y_data = Female_data_76(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_57_Latvia(27);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_57_Latvia_Female = [Proportion_Ht_57_Latvia_Female My_Number/M*100];
% Aged 77
Y_data = Female_data_77(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_57_Latvia(28);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_57_Latvia_Female = [Proportion_Ht_57_Latvia_Female My_Number/M*100];
% Aged 78
Y_data = Female_data_78(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_57_Latvia(29);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_57_Latvia_Female = [Proportion_Ht_57_Latvia_Female My_Number/M*100];
% Aged 79
Y_data = Female_data_79(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_57_Latvia(30);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_57_Latvia_Female = [Proportion_Ht_57_Latvia_Female My_Number/M*100];
% Aged 80
Y_data = Female_data_80(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_57_Latvia(31);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_57_Latvia_Female = [Proportion_Ht_57_Latvia_Female My_Number/M*100];
% Aged 81
Y_data = Female_data_81(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_57_Latvia(32);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_57_Latvia_Female = [Proportion_Ht_57_Latvia_Female My_Number/M*100];
% Aged 82
Y_data = Female_data_82(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_57_Latvia(33);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_57_Latvia_Female = [Proportion_Ht_57_Latvia_Female My_Number/M*100];
% Aged 83
Y_data = Female_data_83(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_57_Latvia(34);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_57_Latvia_Female = [Proportion_Ht_57_Latvia_Female My_Number/M*100];
% Aged 84
Y_data = Female_data_84(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_57_Latvia(35);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_57_Latvia_Female = [Proportion_Ht_57_Latvia_Female My_Number/M*100];
% Aged 85
Y_data = Female_data_85(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_57_Latvia(36);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_57_Latvia_Female = [Proportion_Ht_57_Latvia_Female My_Number/M*100];
% Aged 86
Y_data = Female_data_86(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_57_Latvia(37);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_57_Latvia_Female = [Proportion_Ht_57_Latvia_Female My_Number/M*100];

% For Male
% Aged 51
Y_data = Male_data_51(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_57_Latvia(2);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_57_Latvia_Male = [Proportion_Ht_57_Latvia_Male My_Number/M*100];
% Aged 52
Y_data = Male_data_52(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_57_Latvia(3);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_57_Latvia_Male = [Proportion_Ht_57_Latvia_Male My_Number/M*100];
% Aged 53
Y_data = Male_data_53(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_57_Latvia(4);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_57_Latvia_Male = [Proportion_Ht_57_Latvia_Male My_Number/M*100];
% Aged 54
Y_data = Male_data_54(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_57_Latvia(5);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_57_Latvia_Male = [Proportion_Ht_57_Latvia_Male My_Number/M*100];
% Aged 55
Y_data = Male_data_55(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_57_Latvia(6);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_57_Latvia_Male = [Proportion_Ht_57_Latvia_Male My_Number/M*100];
% Aged 56
Y_data = Male_data_56(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_57_Latvia(7);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_57_Latvia_Male = [Proportion_Ht_57_Latvia_Male My_Number/M*100];
% Aged 57
Y_data = Male_data_57(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_57_Latvia(8);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_57_Latvia_Male = [Proportion_Ht_57_Latvia_Male My_Number/M*100];
% Aged 58
Y_data = Male_data_58(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_57_Latvia(9);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_57_Latvia_Male = [Proportion_Ht_57_Latvia_Male My_Number/M*100];
% Aged 59
Y_data = Male_data_59(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_57_Latvia(10);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_57_Latvia_Male = [Proportion_Ht_57_Latvia_Male My_Number/M*100];
% Aged 60
Y_data = Male_data_60(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_57_Latvia(11);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_57_Latvia_Male = [Proportion_Ht_57_Latvia_Male My_Number/M*100];
% Aged 61
Y_data = Male_data_61(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_57_Latvia(12);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_57_Latvia_Male = [Proportion_Ht_57_Latvia_Male My_Number/M*100];
% Aged 62
Y_data = Male_data_62(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_57_Latvia(13);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_57_Latvia_Male = [Proportion_Ht_57_Latvia_Male My_Number/M*100];
% Aged 63
Y_data = Male_data_63(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_57_Latvia(14);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_57_Latvia_Male = [Proportion_Ht_57_Latvia_Male My_Number/M*100];
% Aged 64
Y_data = Male_data_64(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_57_Latvia(15);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_57_Latvia_Male = [Proportion_Ht_57_Latvia_Male My_Number/M*100];
% Aged 65
Y_data = Male_data_65(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_57_Latvia(16);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_57_Latvia_Male = [Proportion_Ht_57_Latvia_Male My_Number/M*100];
% Aged 66
Y_data = Male_data_66(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_57_Latvia(17);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_57_Latvia_Male = [Proportion_Ht_57_Latvia_Male My_Number/M*100];
% Aged 67
Y_data = Male_data_67(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_57_Latvia(18);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_57_Latvia_Male = [Proportion_Ht_57_Latvia_Male My_Number/M*100];
% Aged 68
Y_data = Male_data_68(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_57_Latvia(19);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_57_Latvia_Male = [Proportion_Ht_57_Latvia_Male My_Number/M*100];
% Aged 69
Y_data = Male_data_69(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_57_Latvia(20);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_57_Latvia_Male = [Proportion_Ht_57_Latvia_Male My_Number/M*100];
% Aged 70
Y_data = Male_data_70(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_57_Latvia(21);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_57_Latvia_Male = [Proportion_Ht_57_Latvia_Male My_Number/M*100];
% Aged 71
Y_data = Male_data_71(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_57_Latvia(22);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_57_Latvia_Male = [Proportion_Ht_57_Latvia_Male My_Number/M*100];
% Aged 72
Y_data = Male_data_72(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_57_Latvia(23);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_57_Latvia_Male = [Proportion_Ht_57_Latvia_Male My_Number/M*100];
% Aged 73
Y_data = Male_data_73(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_57_Latvia(24);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_57_Latvia_Male = [Proportion_Ht_57_Latvia_Male My_Number/M*100];
% Aged 74
Y_data = Male_data_74(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_57_Latvia(25);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_57_Latvia_Male = [Proportion_Ht_57_Latvia_Male My_Number/M*100];
% Aged 75
Y_data = Male_data_75(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_57_Latvia(26);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_57_Latvia_Male = [Proportion_Ht_57_Latvia_Male My_Number/M*100];
% Aged 76
Y_data = Male_data_76(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_57_Latvia(27);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_57_Latvia_Male = [Proportion_Ht_57_Latvia_Male My_Number/M*100];
% Aged 77
Y_data = Male_data_77(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_57_Latvia(28);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_57_Latvia_Male = [Proportion_Ht_57_Latvia_Male My_Number/M*100];
% Aged 78
Y_data = Male_data_78(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_57_Latvia(29);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_57_Latvia_Male = [Proportion_Ht_57_Latvia_Male My_Number/M*100];
% Aged 79
Y_data = Male_data_79(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_57_Latvia(30);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_57_Latvia_Male = [Proportion_Ht_57_Latvia_Male My_Number/M*100];
% Aged 80
Y_data = Male_data_80(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_57_Latvia(31);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_57_Latvia_Male = [Proportion_Ht_57_Latvia_Male My_Number/M*100];
% Aged 81
Y_data = Male_data_81(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_57_Latvia(32);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_57_Latvia_Male = [Proportion_Ht_57_Latvia_Male My_Number/M*100];
% Aged 82
Y_data = Male_data_82(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_57_Latvia(33);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_57_Latvia_Male = [Proportion_Ht_57_Latvia_Male My_Number/M*100];
% Aged 83
Y_data = Male_data_83(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_57_Latvia(34);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_57_Latvia_Male = [Proportion_Ht_57_Latvia_Male My_Number/M*100];
% Aged 84
Y_data = Male_data_84(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_57_Latvia(35);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_57_Latvia_Male = [Proportion_Ht_57_Latvia_Male My_Number/M*100];
% Aged 85
Y_data = Male_data_85(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_57_Latvia(36);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_57_Latvia_Male = [Proportion_Ht_57_Latvia_Male My_Number/M*100];
% Aged 86
Y_data = Male_data_86(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_57_Latvia(37);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_57_Latvia_Male = [Proportion_Ht_57_Latvia_Male My_Number/M*100];

%% 48_Lithuania
% Loading the data
Female_data = xlsread('48_Lithuania.xlsx','Female');
Male_data = xlsread('48_Lithuania.xlsx','Male');
% Grouping by age
Female_data_51 = [];
Female_data_52 = [];
Female_data_53 = [];
Female_data_54 = [];
Female_data_55 = [];
Female_data_56 = [];
Female_data_57 = [];
Female_data_58 = [];
Female_data_59 = [];
Female_data_60 = [];
Female_data_61 = [];
Female_data_62 = [];
Female_data_63 = [];
Female_data_64 = [];
Female_data_65 = [];
Female_data_66 = [];
Female_data_67 = [];
Female_data_68 = [];
Female_data_69 = [];
Female_data_70 = [];
Female_data_71 = [];
Female_data_72 = [];
Female_data_73 = [];
Female_data_74 = [];
Female_data_75 = [];
Female_data_76 = [];
Female_data_77 = [];
Female_data_78 = [];
Female_data_79 = [];
Female_data_80 = [];
Female_data_81 = [];
Female_data_82 = [];
Female_data_83 = [];
Female_data_84 = [];
Female_data_85 = [];
Female_data_86 = [];
Female_data_87 = [];

Male_data_51 = [];
Male_data_52 = [];
Male_data_53 = [];
Male_data_54 = [];
Male_data_55 = [];
Male_data_56 = [];
Male_data_57 = [];
Male_data_58 = [];
Male_data_59 = [];
Male_data_60 = [];
Male_data_61 = [];
Male_data_62 = [];
Male_data_63 = [];
Male_data_64 = [];
Male_data_65 = [];
Male_data_66 = [];
Male_data_67 = [];
Male_data_68 = [];
Male_data_69 = [];
Male_data_70 = [];
Male_data_71 = [];
Male_data_72 = [];
Male_data_73 = [];
Male_data_74 = [];
Male_data_75 = [];
Male_data_76 = [];
Male_data_77 = [];
Male_data_78 = [];
Male_data_79 = [];
Male_data_80 = [];
Male_data_81 = [];
Male_data_82 = [];
Male_data_83 = [];
Male_data_84 = [];
Male_data_85 = [];
Male_data_86 = [];
Male_data_87 = [];

% For Female
[M N] = size(Female_data); % No.	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Female_data(i,2) == 51
        Female_data_51 = [Female_data_51; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 52
        Female_data_52 = [Female_data_52; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 53
        Female_data_53 = [Female_data_53; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 54
        Female_data_54 = [Female_data_54; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 55
        Female_data_55 = [Female_data_55; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 56
        Female_data_56 = [Female_data_56; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 57
        Female_data_57 = [Female_data_57; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 58
        Female_data_58 = [Female_data_58; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 59
        Female_data_59 = [Female_data_59; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 60
        Female_data_60 = [Female_data_60; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 61
        Female_data_61 = [Female_data_61; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 62
        Female_data_62 = [Female_data_62; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 63
        Female_data_63 = [Female_data_63; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 64
        Female_data_64 = [Female_data_64; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 65
        Female_data_65 = [Female_data_65; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 66
        Female_data_66 = [Female_data_66; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 67
        Female_data_67 = [Female_data_67; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 68
        Female_data_68 = [Female_data_68; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 69
        Female_data_69 = [Female_data_69; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 70
        Female_data_70 = [Female_data_70; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 71
        Female_data_71 = [Female_data_71; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 72
        Female_data_72 = [Female_data_72; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 73
        Female_data_73 = [Female_data_73; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 74
        Female_data_74 = [Female_data_74; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 75
        Female_data_75 = [Female_data_75; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 76
        Female_data_76 = [Female_data_76; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 77
        Female_data_77 = [Female_data_77; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 78
        Female_data_78 = [Female_data_78; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 79
        Female_data_79 = [Female_data_79; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 80
        Female_data_80 = [Female_data_80; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 81
        Female_data_81 = [Female_data_81; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 82
        Female_data_82 = [Female_data_82; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 83
        Female_data_83 = [Female_data_83; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 84
        Female_data_84 = [Female_data_84; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 85
        Female_data_85 = [Female_data_85; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 86
        Female_data_86 = [Female_data_86; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 87
        Female_data_87 = [Female_data_87; Female_data(i,3) Female_data(i,4)];
    end
end

% For Male
[M N] = size(Male_data); % No.	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Male_data(i,2) == 51
        Male_data_51 = [Male_data_51; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 52
        Male_data_52 = [Male_data_52; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 53
        Male_data_53 = [Male_data_53; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 54
        Male_data_54 = [Male_data_54; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 55
        Male_data_55 = [Male_data_55; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 56
        Male_data_56 = [Male_data_56; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 57
        Male_data_57 = [Male_data_57; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 58
        Male_data_58 = [Male_data_58; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 59
        Male_data_59 = [Male_data_59; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 60
        Male_data_60 = [Male_data_60; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 61
        Male_data_61 = [Male_data_61; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 62
        Male_data_62 = [Male_data_62; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 63
        Male_data_63 = [Male_data_63; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 64
        Male_data_64 = [Male_data_64; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 65
        Male_data_65 = [Male_data_65; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 66
        Male_data_66 = [Male_data_66; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 67
        Male_data_67 = [Male_data_67; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 68
        Male_data_68 = [Male_data_68; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 69
        Male_data_69 = [Male_data_69; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 70
        Male_data_70 = [Male_data_70; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 71
        Male_data_71 = [Male_data_71; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 72
        Male_data_72 = [Male_data_72; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 73
        Male_data_73 = [Male_data_73; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 74
        Male_data_74 = [Male_data_74; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 75
        Male_data_75 = [Male_data_75; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 76
        Male_data_76 = [Male_data_76; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 77
        Male_data_77 = [Male_data_77; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 78
        Male_data_78 = [Male_data_78; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 79
        Male_data_79 = [Male_data_79; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 80
        Male_data_80 = [Male_data_80; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 81
        Male_data_81 = [Male_data_81; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 82
        Male_data_82 = [Male_data_82; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 83
        Male_data_83 = [Male_data_83; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 84
        Male_data_84 = [Male_data_84; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 85
        Male_data_85 = [Male_data_85; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 86
        Male_data_86 = [Male_data_86; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 87
        Male_data_87 = [Male_data_87; Male_data(i,3) Male_data(i,4)];
    end
end

% We calculate the coefficients of a and b in 1=a/Weight+b*Height for this
% dataset
Age_48_Lithuania = 51:87;
Proportion_Ht_48_Lithuania_Female = [];
Proportion_Ht_48_Lithuania_Male = [];
Coefficient_b_Female_1_48_Lithuania = [0 Coefficient_b_Female_1_48_Lithuania];
Coefficient_b_Male_1_48_Lithuania = [0 Coefficient_b_Male_1_48_Lithuania];

% For Female
% Aged 51
Y_data = Female_data_51(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_48_Lithuania(2);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_48_Lithuania_Female = [Proportion_Ht_48_Lithuania_Female My_Number/M*100];
% Aged 52
Y_data = Female_data_52(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_48_Lithuania(3);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_48_Lithuania_Female = [Proportion_Ht_48_Lithuania_Female My_Number/M*100];
% Aged 53
Y_data = Female_data_53(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_48_Lithuania(4);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_48_Lithuania_Female = [Proportion_Ht_48_Lithuania_Female My_Number/M*100];
% Aged 54
Y_data = Female_data_54(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_48_Lithuania(5);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_48_Lithuania_Female = [Proportion_Ht_48_Lithuania_Female My_Number/M*100];
% Aged 55
Y_data = Female_data_55(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_48_Lithuania(6);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_48_Lithuania_Female = [Proportion_Ht_48_Lithuania_Female My_Number/M*100];
% Aged 56
Y_data = Female_data_56(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_48_Lithuania(7);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_48_Lithuania_Female = [Proportion_Ht_48_Lithuania_Female My_Number/M*100];
% Aged 57
Y_data = Female_data_57(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_48_Lithuania(8);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_48_Lithuania_Female = [Proportion_Ht_48_Lithuania_Female My_Number/M*100];
% Aged 58
Y_data = Female_data_58(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_48_Lithuania(9);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_48_Lithuania_Female = [Proportion_Ht_48_Lithuania_Female My_Number/M*100];
% Aged 59
Y_data = Female_data_59(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_48_Lithuania(10);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_48_Lithuania_Female = [Proportion_Ht_48_Lithuania_Female My_Number/M*100];
% Aged 60
Y_data = Female_data_60(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_48_Lithuania(11);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_48_Lithuania_Female = [Proportion_Ht_48_Lithuania_Female My_Number/M*100];
% Aged 61
Y_data = Female_data_61(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_48_Lithuania(12);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_48_Lithuania_Female = [Proportion_Ht_48_Lithuania_Female My_Number/M*100];
% Aged 62
Y_data = Female_data_62(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_48_Lithuania(13);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_48_Lithuania_Female = [Proportion_Ht_48_Lithuania_Female My_Number/M*100];
% Aged 63
Y_data = Female_data_63(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_48_Lithuania(14);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_48_Lithuania_Female = [Proportion_Ht_48_Lithuania_Female My_Number/M*100];
% Aged 64
Y_data = Female_data_64(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_48_Lithuania(15);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_48_Lithuania_Female = [Proportion_Ht_48_Lithuania_Female My_Number/M*100];
% Aged 65
Y_data = Female_data_65(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_48_Lithuania(16);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_48_Lithuania_Female = [Proportion_Ht_48_Lithuania_Female My_Number/M*100];
% Aged 66
Y_data = Female_data_66(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_48_Lithuania(17);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_48_Lithuania_Female = [Proportion_Ht_48_Lithuania_Female My_Number/M*100];
% Aged 67
Y_data = Female_data_67(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_48_Lithuania(18);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_48_Lithuania_Female = [Proportion_Ht_48_Lithuania_Female My_Number/M*100];
% Aged 68
Y_data = Female_data_68(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_48_Lithuania(19);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_48_Lithuania_Female = [Proportion_Ht_48_Lithuania_Female My_Number/M*100];
% Aged 69
Y_data = Female_data_69(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_48_Lithuania(20);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_48_Lithuania_Female = [Proportion_Ht_48_Lithuania_Female My_Number/M*100];
% Aged 70
Y_data = Female_data_70(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_48_Lithuania(21);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_48_Lithuania_Female = [Proportion_Ht_48_Lithuania_Female My_Number/M*100];
% Aged 71
Y_data = Female_data_71(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_48_Lithuania(22);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_48_Lithuania_Female = [Proportion_Ht_48_Lithuania_Female My_Number/M*100];
% Aged 72
Y_data = Female_data_72(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_48_Lithuania(23);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_48_Lithuania_Female = [Proportion_Ht_48_Lithuania_Female My_Number/M*100];
% Aged 73
Y_data = Female_data_73(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_48_Lithuania(24);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_48_Lithuania_Female = [Proportion_Ht_48_Lithuania_Female My_Number/M*100];
% Aged 74
Y_data = Female_data_74(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_48_Lithuania(25);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_48_Lithuania_Female = [Proportion_Ht_48_Lithuania_Female My_Number/M*100];
% Aged 75
Y_data = Female_data_75(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_48_Lithuania(26);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_48_Lithuania_Female = [Proportion_Ht_48_Lithuania_Female My_Number/M*100];
% Aged 76
Y_data = Female_data_76(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_48_Lithuania(27);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_48_Lithuania_Female = [Proportion_Ht_48_Lithuania_Female My_Number/M*100];
% Aged 77
Y_data = Female_data_77(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_48_Lithuania(28);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_48_Lithuania_Female = [Proportion_Ht_48_Lithuania_Female My_Number/M*100];
% Aged 78
Y_data = Female_data_78(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_48_Lithuania(29);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_48_Lithuania_Female = [Proportion_Ht_48_Lithuania_Female My_Number/M*100];
% Aged 79
Y_data = Female_data_79(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_48_Lithuania(30);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_48_Lithuania_Female = [Proportion_Ht_48_Lithuania_Female My_Number/M*100];
% Aged 80
Y_data = Female_data_80(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_48_Lithuania(31);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_48_Lithuania_Female = [Proportion_Ht_48_Lithuania_Female My_Number/M*100];
% Aged 81
Y_data = Female_data_81(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_48_Lithuania(32);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_48_Lithuania_Female = [Proportion_Ht_48_Lithuania_Female My_Number/M*100];
% Aged 82
Y_data = Female_data_82(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_48_Lithuania(33);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_48_Lithuania_Female = [Proportion_Ht_48_Lithuania_Female My_Number/M*100];
% Aged 83
Y_data = Female_data_83(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_48_Lithuania(34);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_48_Lithuania_Female = [Proportion_Ht_48_Lithuania_Female My_Number/M*100];
% Aged 84
Y_data = Female_data_84(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_48_Lithuania(35);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_48_Lithuania_Female = [Proportion_Ht_48_Lithuania_Female My_Number/M*100];
% Aged 85
Y_data = Female_data_85(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_48_Lithuania(36);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_48_Lithuania_Female = [Proportion_Ht_48_Lithuania_Female My_Number/M*100];
% Aged 86
Y_data = Female_data_86(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_48_Lithuania(37);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_48_Lithuania_Female = [Proportion_Ht_48_Lithuania_Female My_Number/M*100];
% Aged 87
Y_data = Female_data_87(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_48_Lithuania(38);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_48_Lithuania_Female = [Proportion_Ht_48_Lithuania_Female My_Number/M*100];

% For Male
% Aged 51
Y_data = Male_data_51(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_48_Lithuania(2);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_48_Lithuania_Male = [Proportion_Ht_48_Lithuania_Male My_Number/M*100];
% Aged 52
Y_data = Male_data_52(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_48_Lithuania(3);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_48_Lithuania_Male = [Proportion_Ht_48_Lithuania_Male My_Number/M*100];
% Aged 53
Y_data = Male_data_53(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_48_Lithuania(4);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_48_Lithuania_Male = [Proportion_Ht_48_Lithuania_Male My_Number/M*100];
% Aged 54
Y_data = Male_data_54(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_48_Lithuania(5);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_48_Lithuania_Male = [Proportion_Ht_48_Lithuania_Male My_Number/M*100];
% Aged 55
Y_data = Male_data_55(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_48_Lithuania(6);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_48_Lithuania_Male = [Proportion_Ht_48_Lithuania_Male My_Number/M*100];
% Aged 56
Y_data = Male_data_56(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_48_Lithuania(7);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_48_Lithuania_Male = [Proportion_Ht_48_Lithuania_Male My_Number/M*100];
% Aged 57
Y_data = Male_data_57(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_48_Lithuania(8);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_48_Lithuania_Male = [Proportion_Ht_48_Lithuania_Male My_Number/M*100];
% Aged 58
Y_data = Male_data_58(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_48_Lithuania(9);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_48_Lithuania_Male = [Proportion_Ht_48_Lithuania_Male My_Number/M*100];
% Aged 59
Y_data = Male_data_59(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_48_Lithuania(10);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_48_Lithuania_Male = [Proportion_Ht_48_Lithuania_Male My_Number/M*100];
% Aged 60
Y_data = Male_data_60(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_48_Lithuania(11);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_48_Lithuania_Male = [Proportion_Ht_48_Lithuania_Male My_Number/M*100];
% Aged 61
Y_data = Male_data_61(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_48_Lithuania(12);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_48_Lithuania_Male = [Proportion_Ht_48_Lithuania_Male My_Number/M*100];
% Aged 62
Y_data = Male_data_62(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_48_Lithuania(13);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_48_Lithuania_Male = [Proportion_Ht_48_Lithuania_Male My_Number/M*100];
% Aged 63
Y_data = Male_data_63(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_48_Lithuania(14);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_48_Lithuania_Male = [Proportion_Ht_48_Lithuania_Male My_Number/M*100];
% Aged 64
Y_data = Male_data_64(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_48_Lithuania(15);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_48_Lithuania_Male = [Proportion_Ht_48_Lithuania_Male My_Number/M*100];
% Aged 65
Y_data = Male_data_65(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_48_Lithuania(16);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_48_Lithuania_Male = [Proportion_Ht_48_Lithuania_Male My_Number/M*100];
% Aged 66
Y_data = Male_data_66(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_48_Lithuania(17);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_48_Lithuania_Male = [Proportion_Ht_48_Lithuania_Male My_Number/M*100];
% Aged 67
Y_data = Male_data_67(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_48_Lithuania(18);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_48_Lithuania_Male = [Proportion_Ht_48_Lithuania_Male My_Number/M*100];
% Aged 68
Y_data = Male_data_68(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_48_Lithuania(19);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_48_Lithuania_Male = [Proportion_Ht_48_Lithuania_Male My_Number/M*100];
% Aged 69
Y_data = Male_data_69(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_48_Lithuania(20);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_48_Lithuania_Male = [Proportion_Ht_48_Lithuania_Male My_Number/M*100];
% Aged 70
Y_data = Male_data_70(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_48_Lithuania(21);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_48_Lithuania_Male = [Proportion_Ht_48_Lithuania_Male My_Number/M*100];
% Aged 71
Y_data = Male_data_71(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_48_Lithuania(22);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_48_Lithuania_Male = [Proportion_Ht_48_Lithuania_Male My_Number/M*100];
% Aged 72
Y_data = Male_data_72(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_48_Lithuania(23);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_48_Lithuania_Male = [Proportion_Ht_48_Lithuania_Male My_Number/M*100];
% Aged 73
Y_data = Male_data_73(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_48_Lithuania(24);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_48_Lithuania_Male = [Proportion_Ht_48_Lithuania_Male My_Number/M*100];
% Aged 74
Y_data = Male_data_74(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_48_Lithuania(25);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_48_Lithuania_Male = [Proportion_Ht_48_Lithuania_Male My_Number/M*100];
% Aged 75
Y_data = Male_data_75(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_48_Lithuania(26);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_48_Lithuania_Male = [Proportion_Ht_48_Lithuania_Male My_Number/M*100];
% Aged 76
Y_data = Male_data_76(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_48_Lithuania(27);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_48_Lithuania_Male = [Proportion_Ht_48_Lithuania_Male My_Number/M*100];
% Aged 77
Y_data = Male_data_77(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_48_Lithuania(28);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_48_Lithuania_Male = [Proportion_Ht_48_Lithuania_Male My_Number/M*100];
% Aged 78
Y_data = Male_data_78(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_48_Lithuania(29);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_48_Lithuania_Male = [Proportion_Ht_48_Lithuania_Male My_Number/M*100];
% Aged 79
Y_data = Male_data_79(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_48_Lithuania(30);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_48_Lithuania_Male = [Proportion_Ht_48_Lithuania_Male My_Number/M*100];
% Aged 80
Y_data = Male_data_80(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_48_Lithuania(31);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_48_Lithuania_Male = [Proportion_Ht_48_Lithuania_Male My_Number/M*100];
% Aged 81
Y_data = Male_data_81(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_48_Lithuania(32);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_48_Lithuania_Male = [Proportion_Ht_48_Lithuania_Male My_Number/M*100];
% Aged 82
Y_data = Male_data_82(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_48_Lithuania(33);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_48_Lithuania_Male = [Proportion_Ht_48_Lithuania_Male My_Number/M*100];
% Aged 83
Y_data = Male_data_83(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_48_Lithuania(34);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_48_Lithuania_Male = [Proportion_Ht_48_Lithuania_Male My_Number/M*100];
% Aged 84
Y_data = Male_data_84(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_48_Lithuania(35);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_48_Lithuania_Male = [Proportion_Ht_48_Lithuania_Male My_Number/M*100];
% Aged 85
Y_data = Male_data_85(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_48_Lithuania(36);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_48_Lithuania_Male = [Proportion_Ht_48_Lithuania_Male My_Number/M*100];
% Aged 86
Y_data = Male_data_86(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_48_Lithuania(37);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_48_Lithuania_Male = [Proportion_Ht_48_Lithuania_Male My_Number/M*100];
% Aged 87
Y_data = Male_data_87(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_48_Lithuania(38);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_48_Lithuania_Male = [Proportion_Ht_48_Lithuania_Male My_Number/M*100];

%% 35_Estonia
% Loading the data
Female_data = xlsread('35_Estonia.xlsx','Female');
Male_data = xlsread('35_Estonia.xlsx','Male');
% Grouping by age
Female_data_50 = []; % == 50
Female_data_51 = [];
Female_data_52 = [];
Female_data_53 = [];
Female_data_54 = [];
Female_data_55 = [];
Female_data_56 = [];
Female_data_57 = [];
Female_data_58 = [];
Female_data_59 = [];
Female_data_60 = [];
Female_data_61 = [];
Female_data_62 = [];
Female_data_63 = [];
Female_data_64 = [];
Female_data_65 = [];
Female_data_66 = [];
Female_data_67 = [];
Female_data_68 = [];
Female_data_69 = [];
Female_data_70 = [];
Female_data_71 = [];
Female_data_72 = [];
Female_data_73 = [];
Female_data_74 = [];
Female_data_75 = [];
Female_data_76 = [];
Female_data_77 = [];
Female_data_78 = [];
Female_data_79 = [];
Female_data_80 = [];
Female_data_81 = [];
Female_data_82 = [];
Female_data_83 = [];
Female_data_84 = [];
Female_data_85 = [];
Female_data_86 = [];
Female_data_87 = [];
Female_data_88 = [];
Female_data_89 = [];
Female_data_90 = []; % ==90

Male_data_50 = []; % == 50
Male_data_51 = [];
Male_data_52 = [];
Male_data_53 = [];
Male_data_54 = [];
Male_data_55 = [];
Male_data_56 = [];
Male_data_57 = [];
Male_data_58 = [];
Male_data_59 = [];
Male_data_60 = [];
Male_data_61 = [];
Male_data_62 = [];
Male_data_63 = [];
Male_data_64 = [];
Male_data_65 = [];
Male_data_66 = [];
Male_data_67 = [];
Male_data_68 = [];
Male_data_69 = [];
Male_data_70 = [];
Male_data_71 = [];
Male_data_72 = [];
Male_data_73 = [];
Male_data_74 = [];
Male_data_75 = [];
Male_data_76 = [];
Male_data_77 = [];
Male_data_78 = [];
Male_data_79 = [];
Male_data_80 = [];
Male_data_81 = [];
Male_data_82 = [];
Male_data_83 = [];
Male_data_84 = [];
Male_data_85 = [];
Male_data_86 = [];
Male_data_87 = [];
Male_data_88 = [];
Male_data_89 = [];
Male_data_90 = []; % ==90

% For Female
[M N] = size(Female_data); % No.	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Female_data(i,2) == 50
        Female_data_50 = [Female_data_50; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 51
        Female_data_51 = [Female_data_51; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 52
        Female_data_52 = [Female_data_52; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 53
        Female_data_53 = [Female_data_53; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 54
        Female_data_54 = [Female_data_54; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 55
        Female_data_55 = [Female_data_55; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 56
        Female_data_56 = [Female_data_56; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 57
        Female_data_57 = [Female_data_57; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 58
        Female_data_58 = [Female_data_58; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 59
        Female_data_59 = [Female_data_59; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 60
        Female_data_60 = [Female_data_60; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 61
        Female_data_61 = [Female_data_61; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 62
        Female_data_62 = [Female_data_62; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 63
        Female_data_63 = [Female_data_63; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 64
        Female_data_64 = [Female_data_64; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 65
        Female_data_65 = [Female_data_65; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 66
        Female_data_66 = [Female_data_66; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 67
        Female_data_67 = [Female_data_67; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 68
        Female_data_68 = [Female_data_68; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 69
        Female_data_69 = [Female_data_69; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 70
        Female_data_70 = [Female_data_70; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 71
        Female_data_71 = [Female_data_71; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 72
        Female_data_72 = [Female_data_72; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 73
        Female_data_73 = [Female_data_73; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 74
        Female_data_74 = [Female_data_74; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 75
        Female_data_75 = [Female_data_75; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 76
        Female_data_76 = [Female_data_76; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 77
        Female_data_77 = [Female_data_77; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 78
        Female_data_78 = [Female_data_78; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 79
        Female_data_79 = [Female_data_79; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 80
        Female_data_80 = [Female_data_80; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 81
        Female_data_81 = [Female_data_81; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 82
        Female_data_82 = [Female_data_82; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 83
        Female_data_83 = [Female_data_83; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 84
        Female_data_84 = [Female_data_84; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 85
        Female_data_85 = [Female_data_85; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 86
        Female_data_86 = [Female_data_86; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 87
        Female_data_87 = [Female_data_87; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 88
        Female_data_88 = [Female_data_88; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 89
        Female_data_89 = [Female_data_89; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 90
        Female_data_90 = [Female_data_90; Female_data(i,3) Female_data(i,4)];
    end
end

% For Male
[M N] = size(Male_data); % No.	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Male_data(i,2) == 50
        Male_data_50 = [Male_data_50; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 51
        Male_data_51 = [Male_data_51; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 52
        Male_data_52 = [Male_data_52; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 53
        Male_data_53 = [Male_data_53; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 54
        Male_data_54 = [Male_data_54; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 55
        Male_data_55 = [Male_data_55; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 56
        Male_data_56 = [Male_data_56; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 57
        Male_data_57 = [Male_data_57; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 58
        Male_data_58 = [Male_data_58; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 59
        Male_data_59 = [Male_data_59; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 60
        Male_data_60 = [Male_data_60; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 61
        Male_data_61 = [Male_data_61; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 62
        Male_data_62 = [Male_data_62; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 63
        Male_data_63 = [Male_data_63; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 64
        Male_data_64 = [Male_data_64; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 65
        Male_data_65 = [Male_data_65; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 66
        Male_data_66 = [Male_data_66; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 67
        Male_data_67 = [Male_data_67; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 68
        Male_data_68 = [Male_data_68; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 69
        Male_data_69 = [Male_data_69; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 70
        Male_data_70 = [Male_data_70; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 71
        Male_data_71 = [Male_data_71; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 72
        Male_data_72 = [Male_data_72; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 73
        Male_data_73 = [Male_data_73; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 74
        Male_data_74 = [Male_data_74; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 75
        Male_data_75 = [Male_data_75; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 76
        Male_data_76 = [Male_data_76; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 77
        Male_data_77 = [Male_data_77; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 78
        Male_data_78 = [Male_data_78; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 79
        Male_data_79 = [Male_data_79; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 80
        Male_data_80 = [Male_data_80; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 81
        Male_data_81 = [Male_data_81; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 82
        Male_data_82 = [Male_data_82; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 83
        Male_data_83 = [Male_data_83; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 84
        Male_data_84 = [Male_data_84; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 85
        Male_data_85 = [Male_data_85; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 86
        Male_data_86 = [Male_data_86; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 87
        Male_data_87 = [Male_data_87; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 88
        Male_data_88 = [Male_data_88; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 89
        Male_data_89 = [Male_data_89; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 90
        Male_data_90 = [Male_data_90; Male_data(i,3) Male_data(i,4)];
    end
end

% We calculate the coefficients of a and b in 1=a/Weight+b*Height for this
% dataset
Age_35_Estonia = 50:90;
Proportion_Ht_35_Estonia_Female = [];
Proportion_Ht_35_Estonia_Male = [];

% For Female
% Aged 50
Y_data = Female_data_50(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_35_Estonia(1);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_35_Estonia_Female = [Proportion_Ht_35_Estonia_Female My_Number/M*100];
% Aged 51
Y_data = Female_data_51(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_35_Estonia(2);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_35_Estonia_Female = [Proportion_Ht_35_Estonia_Female My_Number/M*100];
% Aged 52
Y_data = Female_data_52(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_35_Estonia(3);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_35_Estonia_Female = [Proportion_Ht_35_Estonia_Female My_Number/M*100];
% Aged 53
Y_data = Female_data_53(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_35_Estonia(4);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_35_Estonia_Female = [Proportion_Ht_35_Estonia_Female My_Number/M*100];
% Aged 54
Y_data = Female_data_54(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_35_Estonia(5);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_35_Estonia_Female = [Proportion_Ht_35_Estonia_Female My_Number/M*100];
% Aged 55
Y_data = Female_data_55(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_35_Estonia(6);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_35_Estonia_Female = [Proportion_Ht_35_Estonia_Female My_Number/M*100];
% Aged 56
Y_data = Female_data_56(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_35_Estonia(7);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_35_Estonia_Female = [Proportion_Ht_35_Estonia_Female My_Number/M*100];
% Aged 57
Y_data = Female_data_57(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_35_Estonia(8);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_35_Estonia_Female = [Proportion_Ht_35_Estonia_Female My_Number/M*100];
% Aged 58
Y_data = Female_data_58(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_35_Estonia(9);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_35_Estonia_Female = [Proportion_Ht_35_Estonia_Female My_Number/M*100];
% Aged 59
Y_data = Female_data_59(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_35_Estonia(10);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_35_Estonia_Female = [Proportion_Ht_35_Estonia_Female My_Number/M*100];
% Aged 60
Y_data = Female_data_60(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_35_Estonia(11);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_35_Estonia_Female = [Proportion_Ht_35_Estonia_Female My_Number/M*100];
% Aged 61
Y_data = Female_data_61(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_35_Estonia(12);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_35_Estonia_Female = [Proportion_Ht_35_Estonia_Female My_Number/M*100];
% Aged 62
Y_data = Female_data_62(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_35_Estonia(13);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_35_Estonia_Female = [Proportion_Ht_35_Estonia_Female My_Number/M*100];
% Aged 63
Y_data = Female_data_63(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_35_Estonia(14);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_35_Estonia_Female = [Proportion_Ht_35_Estonia_Female My_Number/M*100];
% Aged 64
Y_data = Female_data_64(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_35_Estonia(15);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_35_Estonia_Female = [Proportion_Ht_35_Estonia_Female My_Number/M*100];
% Aged 65
Y_data = Female_data_65(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_35_Estonia(16);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_35_Estonia_Female = [Proportion_Ht_35_Estonia_Female My_Number/M*100];
% Aged 66
Y_data = Female_data_66(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_35_Estonia(17);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_35_Estonia_Female = [Proportion_Ht_35_Estonia_Female My_Number/M*100];
% Aged 67
Y_data = Female_data_67(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_35_Estonia(18);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_35_Estonia_Female = [Proportion_Ht_35_Estonia_Female My_Number/M*100];
% Aged 68
Y_data = Female_data_68(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_35_Estonia(19);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_35_Estonia_Female = [Proportion_Ht_35_Estonia_Female My_Number/M*100];
% Aged 69
Y_data = Female_data_69(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_35_Estonia(20);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_35_Estonia_Female = [Proportion_Ht_35_Estonia_Female My_Number/M*100];
% Aged 70
Y_data = Female_data_70(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_35_Estonia(21);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_35_Estonia_Female = [Proportion_Ht_35_Estonia_Female My_Number/M*100];
% Aged 71
Y_data = Female_data_71(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_35_Estonia(22);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_35_Estonia_Female = [Proportion_Ht_35_Estonia_Female My_Number/M*100];
% Aged 72
Y_data = Female_data_72(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_35_Estonia(23);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_35_Estonia_Female = [Proportion_Ht_35_Estonia_Female My_Number/M*100];
% Aged 73
Y_data = Female_data_73(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_35_Estonia(24);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_35_Estonia_Female = [Proportion_Ht_35_Estonia_Female My_Number/M*100];
% Aged 74
Y_data = Female_data_74(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_35_Estonia(25);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_35_Estonia_Female = [Proportion_Ht_35_Estonia_Female My_Number/M*100];
% Aged 75
Y_data = Female_data_75(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_35_Estonia(26);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_35_Estonia_Female = [Proportion_Ht_35_Estonia_Female My_Number/M*100];
% Aged 76
Y_data = Female_data_76(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_35_Estonia(27);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_35_Estonia_Female = [Proportion_Ht_35_Estonia_Female My_Number/M*100];
% Aged 77
Y_data = Female_data_77(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_35_Estonia(28);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_35_Estonia_Female = [Proportion_Ht_35_Estonia_Female My_Number/M*100];
% Aged 78
Y_data = Female_data_78(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_35_Estonia(29);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_35_Estonia_Female = [Proportion_Ht_35_Estonia_Female My_Number/M*100];
% Aged 79
Y_data = Female_data_79(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_35_Estonia(30);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_35_Estonia_Female = [Proportion_Ht_35_Estonia_Female My_Number/M*100];
% Aged 80
Y_data = Female_data_80(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_35_Estonia(31);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_35_Estonia_Female = [Proportion_Ht_35_Estonia_Female My_Number/M*100];
% Aged 81
Y_data = Female_data_81(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_35_Estonia(32);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_35_Estonia_Female = [Proportion_Ht_35_Estonia_Female My_Number/M*100];
% Aged 82
Y_data = Female_data_82(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_35_Estonia(33);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_35_Estonia_Female = [Proportion_Ht_35_Estonia_Female My_Number/M*100];
% Aged 83
Y_data = Female_data_83(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_35_Estonia(34);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_35_Estonia_Female = [Proportion_Ht_35_Estonia_Female My_Number/M*100];
% Aged 84
Y_data = Female_data_84(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_35_Estonia(35);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_35_Estonia_Female = [Proportion_Ht_35_Estonia_Female My_Number/M*100];
% Aged 85
Y_data = Female_data_85(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_35_Estonia(36);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_35_Estonia_Female = [Proportion_Ht_35_Estonia_Female My_Number/M*100];
% Aged 86
Y_data = Female_data_86(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_35_Estonia(37);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_35_Estonia_Female = [Proportion_Ht_35_Estonia_Female My_Number/M*100];
% Aged 87
Y_data = Female_data_87(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_35_Estonia(38);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_35_Estonia_Female = [Proportion_Ht_35_Estonia_Female My_Number/M*100];
% Aged 88
Y_data = Female_data_88(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_35_Estonia(39);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_35_Estonia_Female = [Proportion_Ht_35_Estonia_Female My_Number/M*100];
% Aged 89
Y_data = Female_data_89(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_35_Estonia(40);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_35_Estonia_Female = [Proportion_Ht_35_Estonia_Female My_Number/M*100];
% Aged 90
Y_data = Female_data_90(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_35_Estonia(41);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_35_Estonia_Female = [Proportion_Ht_35_Estonia_Female My_Number/M*100];

% For Male
% Aged 50
Y_data = Male_data_50(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_35_Estonia(1);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_35_Estonia_Male = [Proportion_Ht_35_Estonia_Male My_Number/M*100];
% Aged 51
Y_data = Male_data_51(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_35_Estonia(2);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_35_Estonia_Male = [Proportion_Ht_35_Estonia_Male My_Number/M*100];
% Aged 52
Y_data = Male_data_52(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_35_Estonia(3);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_35_Estonia_Male = [Proportion_Ht_35_Estonia_Male My_Number/M*100];
% Aged 53
Y_data = Male_data_53(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_35_Estonia(4);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_35_Estonia_Male = [Proportion_Ht_35_Estonia_Male My_Number/M*100];
% Aged 54
Y_data = Male_data_54(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_35_Estonia(5);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_35_Estonia_Male = [Proportion_Ht_35_Estonia_Male My_Number/M*100];
% Aged 55
Y_data = Male_data_55(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_35_Estonia(6);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_35_Estonia_Male = [Proportion_Ht_35_Estonia_Male My_Number/M*100];
% Aged 56
Y_data = Male_data_56(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_35_Estonia(7);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_35_Estonia_Male = [Proportion_Ht_35_Estonia_Male My_Number/M*100];
% Aged 57
Y_data = Male_data_57(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_35_Estonia(8);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_35_Estonia_Male = [Proportion_Ht_35_Estonia_Male My_Number/M*100];
% Aged 58
Y_data = Male_data_58(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_35_Estonia(9);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_35_Estonia_Male = [Proportion_Ht_35_Estonia_Male My_Number/M*100];
% Aged 59
Y_data = Male_data_59(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_35_Estonia(10);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_35_Estonia_Male = [Proportion_Ht_35_Estonia_Male My_Number/M*100];
% Aged 60
Y_data = Male_data_60(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_35_Estonia(11);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_35_Estonia_Male = [Proportion_Ht_35_Estonia_Male My_Number/M*100];
% Aged 61
Y_data = Male_data_61(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_35_Estonia(12);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_35_Estonia_Male = [Proportion_Ht_35_Estonia_Male My_Number/M*100];
% Aged 62
Y_data = Male_data_62(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_35_Estonia(13);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_35_Estonia_Male = [Proportion_Ht_35_Estonia_Male My_Number/M*100];
% Aged 63
Y_data = Male_data_63(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_35_Estonia(14);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_35_Estonia_Male = [Proportion_Ht_35_Estonia_Male My_Number/M*100];
% Aged 64
Y_data = Male_data_64(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_35_Estonia(15);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_35_Estonia_Male = [Proportion_Ht_35_Estonia_Male My_Number/M*100];
% Aged 65
Y_data = Male_data_65(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_35_Estonia(16);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_35_Estonia_Male = [Proportion_Ht_35_Estonia_Male My_Number/M*100];
% Aged 66
Y_data = Male_data_66(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_35_Estonia(17);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_35_Estonia_Male = [Proportion_Ht_35_Estonia_Male My_Number/M*100];
% Aged 67
Y_data = Male_data_67(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_35_Estonia(18);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_35_Estonia_Male = [Proportion_Ht_35_Estonia_Male My_Number/M*100];
% Aged 68
Y_data = Male_data_68(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_35_Estonia(19);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_35_Estonia_Male = [Proportion_Ht_35_Estonia_Male My_Number/M*100];
% Aged 69
Y_data = Male_data_69(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_35_Estonia(20);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_35_Estonia_Male = [Proportion_Ht_35_Estonia_Male My_Number/M*100];
% Aged 70
Y_data = Male_data_70(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_35_Estonia(21);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_35_Estonia_Male = [Proportion_Ht_35_Estonia_Male My_Number/M*100];
% Aged 71
Y_data = Male_data_71(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_35_Estonia(22);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_35_Estonia_Male = [Proportion_Ht_35_Estonia_Male My_Number/M*100];
% Aged 72
Y_data = Male_data_72(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_35_Estonia(23);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_35_Estonia_Male = [Proportion_Ht_35_Estonia_Male My_Number/M*100];
% Aged 73
Y_data = Male_data_73(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_35_Estonia(24);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_35_Estonia_Male = [Proportion_Ht_35_Estonia_Male My_Number/M*100];
% Aged 74
Y_data = Male_data_74(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_35_Estonia(25);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_35_Estonia_Male = [Proportion_Ht_35_Estonia_Male My_Number/M*100];
% Aged 75
Y_data = Male_data_75(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_35_Estonia(26);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_35_Estonia_Male = [Proportion_Ht_35_Estonia_Male My_Number/M*100];
% Aged 76
Y_data = Male_data_76(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_35_Estonia(27);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_35_Estonia_Male = [Proportion_Ht_35_Estonia_Male My_Number/M*100];
% Aged 77
Y_data = Male_data_77(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_35_Estonia(28);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_35_Estonia_Male = [Proportion_Ht_35_Estonia_Male My_Number/M*100];
% Aged 78
Y_data = Male_data_78(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_35_Estonia(29);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_35_Estonia_Male = [Proportion_Ht_35_Estonia_Male My_Number/M*100];
% Aged 79
Y_data = Male_data_79(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_35_Estonia(30);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_35_Estonia_Male = [Proportion_Ht_35_Estonia_Male My_Number/M*100];
% Aged 80
Y_data = Male_data_80(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_35_Estonia(31);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_35_Estonia_Male = [Proportion_Ht_35_Estonia_Male My_Number/M*100];
% Aged 81
Y_data = Male_data_81(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_35_Estonia(32);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_35_Estonia_Male = [Proportion_Ht_35_Estonia_Male My_Number/M*100];
% Aged 82
Y_data = Male_data_82(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_35_Estonia(33);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_35_Estonia_Male = [Proportion_Ht_35_Estonia_Male My_Number/M*100];
% Aged 83
Y_data = Male_data_83(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_35_Estonia(34);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_35_Estonia_Male = [Proportion_Ht_35_Estonia_Male My_Number/M*100];
% Aged 84
Y_data = Male_data_84(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_35_Estonia(35);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_35_Estonia_Male = [Proportion_Ht_35_Estonia_Male My_Number/M*100];
% Aged 85
Y_data = Male_data_85(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_35_Estonia(36);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_35_Estonia_Male = [Proportion_Ht_35_Estonia_Male My_Number/M*100];
% Aged 86
Y_data = Male_data_86(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_35_Estonia(37);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_35_Estonia_Male = [Proportion_Ht_35_Estonia_Male My_Number/M*100];
% Aged 87
Y_data = Male_data_87(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_35_Estonia(38);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_35_Estonia_Male = [Proportion_Ht_35_Estonia_Male My_Number/M*100];
% Aged 88
Y_data = Male_data_88(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_35_Estonia(39);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_35_Estonia_Male = [Proportion_Ht_35_Estonia_Male My_Number/M*100];
% Aged 89
Y_data = Male_data_89(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_35_Estonia(40);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_35_Estonia_Male = [Proportion_Ht_35_Estonia_Male My_Number/M*100];
% Aged 90
Y_data = Male_data_90(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_35_Estonia(41);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_35_Estonia_Male = [Proportion_Ht_35_Estonia_Male My_Number/M*100];

%% 13_Sweden
% Loading the data
Female_data = xlsread('13_Sweden.xlsx','Female');
Male_data = xlsread('13_Sweden.xlsx','Male');
% Grouping by age
Female_data_50 = []; % == 50
Female_data_51 = [];
Female_data_52 = [];
Female_data_53 = [];
Female_data_54 = [];
Female_data_55 = [];
Female_data_56 = [];
Female_data_57 = [];
Female_data_58 = [];
Female_data_59 = [];
Female_data_60 = [];
Female_data_61 = [];
Female_data_62 = [];
Female_data_63 = [];
Female_data_64 = [];
Female_data_65 = [];
Female_data_66 = [];
Female_data_67 = [];
Female_data_68 = [];
Female_data_69 = [];
Female_data_70 = [];
Female_data_71 = [];
Female_data_72 = [];
Female_data_73 = [];
Female_data_74 = [];
Female_data_75 = [];
Female_data_76 = [];
Female_data_77 = [];
Female_data_78 = [];
Female_data_79 = [];
Female_data_80 = [];
Female_data_81 = [];
Female_data_82 = [];
Female_data_83 = [];
Female_data_84 = [];
Female_data_85 = [];
Female_data_86 = [];
Female_data_87 = [];
Female_data_88 = [];
Female_data_89 = [];
Female_data_90 = []; % ==90

Male_data_50 = []; % == 50
Male_data_51 = [];
Male_data_52 = [];
Male_data_53 = [];
Male_data_54 = [];
Male_data_55 = [];
Male_data_56 = [];
Male_data_57 = [];
Male_data_58 = [];
Male_data_59 = [];
Male_data_60 = [];
Male_data_61 = [];
Male_data_62 = [];
Male_data_63 = [];
Male_data_64 = [];
Male_data_65 = [];
Male_data_66 = [];
Male_data_67 = [];
Male_data_68 = [];
Male_data_69 = [];
Male_data_70 = [];
Male_data_71 = [];
Male_data_72 = [];
Male_data_73 = [];
Male_data_74 = [];
Male_data_75 = [];
Male_data_76 = [];
Male_data_77 = [];
Male_data_78 = [];
Male_data_79 = [];
Male_data_80 = [];
Male_data_81 = [];
Male_data_82 = [];
Male_data_83 = [];
Male_data_84 = [];
Male_data_85 = [];
Male_data_86 = [];
Male_data_87 = [];
Male_data_88 = [];
Male_data_89 = [];
Male_data_90 = []; % ==90

% For Female
[M N] = size(Female_data); % No.	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Female_data(i,2) == 50
        Female_data_50 = [Female_data_50; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 51
        Female_data_51 = [Female_data_51; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 52
        Female_data_52 = [Female_data_52; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 53
        Female_data_53 = [Female_data_53; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 54
        Female_data_54 = [Female_data_54; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 55
        Female_data_55 = [Female_data_55; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 56
        Female_data_56 = [Female_data_56; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 57
        Female_data_57 = [Female_data_57; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 58
        Female_data_58 = [Female_data_58; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 59
        Female_data_59 = [Female_data_59; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 60
        Female_data_60 = [Female_data_60; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 61
        Female_data_61 = [Female_data_61; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 62
        Female_data_62 = [Female_data_62; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 63
        Female_data_63 = [Female_data_63; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 64
        Female_data_64 = [Female_data_64; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 65
        Female_data_65 = [Female_data_65; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 66
        Female_data_66 = [Female_data_66; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 67
        Female_data_67 = [Female_data_67; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 68
        Female_data_68 = [Female_data_68; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 69
        Female_data_69 = [Female_data_69; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 70
        Female_data_70 = [Female_data_70; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 71
        Female_data_71 = [Female_data_71; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 72
        Female_data_72 = [Female_data_72; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 73
        Female_data_73 = [Female_data_73; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 74
        Female_data_74 = [Female_data_74; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 75
        Female_data_75 = [Female_data_75; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 76
        Female_data_76 = [Female_data_76; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 77
        Female_data_77 = [Female_data_77; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 78
        Female_data_78 = [Female_data_78; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 79
        Female_data_79 = [Female_data_79; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 80
        Female_data_80 = [Female_data_80; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 81
        Female_data_81 = [Female_data_81; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 82
        Female_data_82 = [Female_data_82; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 83
        Female_data_83 = [Female_data_83; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 84
        Female_data_84 = [Female_data_84; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 85
        Female_data_85 = [Female_data_85; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 86
        Female_data_86 = [Female_data_86; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 87
        Female_data_87 = [Female_data_87; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 88
        Female_data_88 = [Female_data_88; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 89
        Female_data_89 = [Female_data_89; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 90
        Female_data_90 = [Female_data_90; Female_data(i,3) Female_data(i,4)];
    end
end

% For Male
[M N] = size(Male_data); % No.	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Male_data(i,2) == 50
        Male_data_50 = [Male_data_50; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 51
        Male_data_51 = [Male_data_51; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 52
        Male_data_52 = [Male_data_52; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 53
        Male_data_53 = [Male_data_53; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 54
        Male_data_54 = [Male_data_54; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 55
        Male_data_55 = [Male_data_55; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 56
        Male_data_56 = [Male_data_56; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 57
        Male_data_57 = [Male_data_57; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 58
        Male_data_58 = [Male_data_58; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 59
        Male_data_59 = [Male_data_59; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 60
        Male_data_60 = [Male_data_60; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 61
        Male_data_61 = [Male_data_61; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 62
        Male_data_62 = [Male_data_62; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 63
        Male_data_63 = [Male_data_63; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 64
        Male_data_64 = [Male_data_64; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 65
        Male_data_65 = [Male_data_65; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 66
        Male_data_66 = [Male_data_66; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 67
        Male_data_67 = [Male_data_67; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 68
        Male_data_68 = [Male_data_68; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 69
        Male_data_69 = [Male_data_69; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 70
        Male_data_70 = [Male_data_70; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 71
        Male_data_71 = [Male_data_71; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 72
        Male_data_72 = [Male_data_72; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 73
        Male_data_73 = [Male_data_73; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 74
        Male_data_74 = [Male_data_74; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 75
        Male_data_75 = [Male_data_75; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 76
        Male_data_76 = [Male_data_76; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 77
        Male_data_77 = [Male_data_77; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 78
        Male_data_78 = [Male_data_78; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 79
        Male_data_79 = [Male_data_79; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 80
        Male_data_80 = [Male_data_80; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 81
        Male_data_81 = [Male_data_81; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 82
        Male_data_82 = [Male_data_82; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 83
        Male_data_83 = [Male_data_83; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 84
        Male_data_84 = [Male_data_84; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 85
        Male_data_85 = [Male_data_85; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 86
        Male_data_86 = [Male_data_86; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 87
        Male_data_87 = [Male_data_87; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 88
        Male_data_88 = [Male_data_88; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 89
        Male_data_89 = [Male_data_89; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 90
        Male_data_90 = [Male_data_90; Male_data(i,3) Male_data(i,4)];
    end
end

% We calculate the coefficients of a and b in 1=a/Weight+b*Height for this
% dataset
Age_13_Sweden = 50:90;
Proportion_Ht_13_Sweden_Female = [];
Proportion_Ht_13_Sweden_Male = [];

% For Female
% Aged 50
Y_data = Female_data_50(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_13_Sweden(1);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_13_Sweden_Female = [Proportion_Ht_13_Sweden_Female My_Number/M*100];
% Aged 51
Y_data = Female_data_51(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_13_Sweden(2);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_13_Sweden_Female = [Proportion_Ht_13_Sweden_Female My_Number/M*100];
% Aged 52
Y_data = Female_data_52(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_13_Sweden(3);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_13_Sweden_Female = [Proportion_Ht_13_Sweden_Female My_Number/M*100];
% Aged 53
Y_data = Female_data_53(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_13_Sweden(4);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_13_Sweden_Female = [Proportion_Ht_13_Sweden_Female My_Number/M*100];
% Aged 54
Y_data = Female_data_54(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_13_Sweden(5);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_13_Sweden_Female = [Proportion_Ht_13_Sweden_Female My_Number/M*100];
% Aged 55
Y_data = Female_data_55(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_13_Sweden(6);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_13_Sweden_Female = [Proportion_Ht_13_Sweden_Female My_Number/M*100];
% Aged 56
Y_data = Female_data_56(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_13_Sweden(7);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_13_Sweden_Female = [Proportion_Ht_13_Sweden_Female My_Number/M*100];
% Aged 57
Y_data = Female_data_57(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_13_Sweden(8);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_13_Sweden_Female = [Proportion_Ht_13_Sweden_Female My_Number/M*100];
% Aged 58
Y_data = Female_data_58(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_13_Sweden(9);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_13_Sweden_Female = [Proportion_Ht_13_Sweden_Female My_Number/M*100];
% Aged 59
Y_data = Female_data_59(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_13_Sweden(10);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_13_Sweden_Female = [Proportion_Ht_13_Sweden_Female My_Number/M*100];
% Aged 60
Y_data = Female_data_60(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_13_Sweden(11);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_13_Sweden_Female = [Proportion_Ht_13_Sweden_Female My_Number/M*100];
% Aged 61
Y_data = Female_data_61(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_13_Sweden(12);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_13_Sweden_Female = [Proportion_Ht_13_Sweden_Female My_Number/M*100];
% Aged 62
Y_data = Female_data_62(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_13_Sweden(13);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_13_Sweden_Female = [Proportion_Ht_13_Sweden_Female My_Number/M*100];
% Aged 63
Y_data = Female_data_63(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_13_Sweden(14);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_13_Sweden_Female = [Proportion_Ht_13_Sweden_Female My_Number/M*100];
% Aged 64
Y_data = Female_data_64(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_13_Sweden(15);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_13_Sweden_Female = [Proportion_Ht_13_Sweden_Female My_Number/M*100];
% Aged 65
Y_data = Female_data_65(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_13_Sweden(16);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_13_Sweden_Female = [Proportion_Ht_13_Sweden_Female My_Number/M*100];
% Aged 66
Y_data = Female_data_66(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_13_Sweden(17);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_13_Sweden_Female = [Proportion_Ht_13_Sweden_Female My_Number/M*100];
% Aged 67
Y_data = Female_data_67(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_13_Sweden(18);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_13_Sweden_Female = [Proportion_Ht_13_Sweden_Female My_Number/M*100];
% Aged 68
Y_data = Female_data_68(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_13_Sweden(19);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_13_Sweden_Female = [Proportion_Ht_13_Sweden_Female My_Number/M*100];
% Aged 69
Y_data = Female_data_69(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_13_Sweden(20);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_13_Sweden_Female = [Proportion_Ht_13_Sweden_Female My_Number/M*100];
% Aged 70
Y_data = Female_data_70(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_13_Sweden(21);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_13_Sweden_Female = [Proportion_Ht_13_Sweden_Female My_Number/M*100];
% Aged 71
Y_data = Female_data_71(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_13_Sweden(22);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_13_Sweden_Female = [Proportion_Ht_13_Sweden_Female My_Number/M*100];
% Aged 72
Y_data = Female_data_72(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_13_Sweden(23);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_13_Sweden_Female = [Proportion_Ht_13_Sweden_Female My_Number/M*100];
% Aged 73
Y_data = Female_data_73(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_13_Sweden(24);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_13_Sweden_Female = [Proportion_Ht_13_Sweden_Female My_Number/M*100];
% Aged 74
Y_data = Female_data_74(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_13_Sweden(25);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_13_Sweden_Female = [Proportion_Ht_13_Sweden_Female My_Number/M*100];
% Aged 75
Y_data = Female_data_75(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_13_Sweden(26);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_13_Sweden_Female = [Proportion_Ht_13_Sweden_Female My_Number/M*100];
% Aged 76
Y_data = Female_data_76(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_13_Sweden(27);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_13_Sweden_Female = [Proportion_Ht_13_Sweden_Female My_Number/M*100];
% Aged 77
Y_data = Female_data_77(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_13_Sweden(28);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_13_Sweden_Female = [Proportion_Ht_13_Sweden_Female My_Number/M*100];
% Aged 78
Y_data = Female_data_78(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_13_Sweden(29);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_13_Sweden_Female = [Proportion_Ht_13_Sweden_Female My_Number/M*100];
% Aged 79
Y_data = Female_data_79(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_13_Sweden(30);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_13_Sweden_Female = [Proportion_Ht_13_Sweden_Female My_Number/M*100];
% Aged 80
Y_data = Female_data_80(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_13_Sweden(31);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_13_Sweden_Female = [Proportion_Ht_13_Sweden_Female My_Number/M*100];
% Aged 81
Y_data = Female_data_81(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_13_Sweden(32);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_13_Sweden_Female = [Proportion_Ht_13_Sweden_Female My_Number/M*100];
% Aged 82
Y_data = Female_data_82(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_13_Sweden(33);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_13_Sweden_Female = [Proportion_Ht_13_Sweden_Female My_Number/M*100];
% Aged 83
Y_data = Female_data_83(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_13_Sweden(34);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_13_Sweden_Female = [Proportion_Ht_13_Sweden_Female My_Number/M*100];
% Aged 84
Y_data = Female_data_84(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_13_Sweden(35);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_13_Sweden_Female = [Proportion_Ht_13_Sweden_Female My_Number/M*100];
% Aged 85
Y_data = Female_data_85(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_13_Sweden(36);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_13_Sweden_Female = [Proportion_Ht_13_Sweden_Female My_Number/M*100];
% Aged 86
Y_data = Female_data_86(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_13_Sweden(37);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_13_Sweden_Female = [Proportion_Ht_13_Sweden_Female My_Number/M*100];
% Aged 87
Y_data = Female_data_87(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_13_Sweden(38);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_13_Sweden_Female = [Proportion_Ht_13_Sweden_Female My_Number/M*100];
% Aged 88
Y_data = Female_data_88(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_13_Sweden(39);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_13_Sweden_Female = [Proportion_Ht_13_Sweden_Female My_Number/M*100];
% Aged 89
Y_data = Female_data_89(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_13_Sweden(40);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_13_Sweden_Female = [Proportion_Ht_13_Sweden_Female My_Number/M*100];
% Aged 90
Y_data = Female_data_90(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_13_Sweden(41);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_13_Sweden_Female = [Proportion_Ht_13_Sweden_Female My_Number/M*100];

% For Male
% Aged 50
Y_data = Male_data_50(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_13_Sweden(1);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_13_Sweden_Male = [Proportion_Ht_13_Sweden_Male My_Number/M*100];
% Aged 51
Y_data = Male_data_51(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_13_Sweden(2);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_13_Sweden_Male = [Proportion_Ht_13_Sweden_Male My_Number/M*100];
% Aged 52
Y_data = Male_data_52(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_13_Sweden(3);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_13_Sweden_Male = [Proportion_Ht_13_Sweden_Male My_Number/M*100];
% Aged 53
Y_data = Male_data_53(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_13_Sweden(4);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_13_Sweden_Male = [Proportion_Ht_13_Sweden_Male My_Number/M*100];
% Aged 54
Y_data = Male_data_54(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_13_Sweden(5);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_13_Sweden_Male = [Proportion_Ht_13_Sweden_Male My_Number/M*100];
% Aged 55
Y_data = Male_data_55(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_13_Sweden(6);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_13_Sweden_Male = [Proportion_Ht_13_Sweden_Male My_Number/M*100];
% Aged 56
Y_data = Male_data_56(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_13_Sweden(7);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_13_Sweden_Male = [Proportion_Ht_13_Sweden_Male My_Number/M*100];
% Aged 57
Y_data = Male_data_57(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_13_Sweden(8);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_13_Sweden_Male = [Proportion_Ht_13_Sweden_Male My_Number/M*100];
% Aged 58
Y_data = Male_data_58(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_13_Sweden(9);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_13_Sweden_Male = [Proportion_Ht_13_Sweden_Male My_Number/M*100];
% Aged 59
Y_data = Male_data_59(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_13_Sweden(10);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_13_Sweden_Male = [Proportion_Ht_13_Sweden_Male My_Number/M*100];
% Aged 60
Y_data = Male_data_60(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_13_Sweden(11);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_13_Sweden_Male = [Proportion_Ht_13_Sweden_Male My_Number/M*100];
% Aged 61
Y_data = Male_data_61(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_13_Sweden(12);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_13_Sweden_Male = [Proportion_Ht_13_Sweden_Male My_Number/M*100];
% Aged 62
Y_data = Male_data_62(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_13_Sweden(13);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_13_Sweden_Male = [Proportion_Ht_13_Sweden_Male My_Number/M*100];
% Aged 63
Y_data = Male_data_63(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_13_Sweden(14);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_13_Sweden_Male = [Proportion_Ht_13_Sweden_Male My_Number/M*100];
% Aged 64
Y_data = Male_data_64(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_13_Sweden(15);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_13_Sweden_Male = [Proportion_Ht_13_Sweden_Male My_Number/M*100];
% Aged 65
Y_data = Male_data_65(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_13_Sweden(16);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_13_Sweden_Male = [Proportion_Ht_13_Sweden_Male My_Number/M*100];
% Aged 66
Y_data = Male_data_66(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_13_Sweden(17);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_13_Sweden_Male = [Proportion_Ht_13_Sweden_Male My_Number/M*100];
% Aged 67
Y_data = Male_data_67(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_13_Sweden(18);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_13_Sweden_Male = [Proportion_Ht_13_Sweden_Male My_Number/M*100];
% Aged 68
Y_data = Male_data_68(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_13_Sweden(19);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_13_Sweden_Male = [Proportion_Ht_13_Sweden_Male My_Number/M*100];
% Aged 69
Y_data = Male_data_69(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_13_Sweden(20);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_13_Sweden_Male = [Proportion_Ht_13_Sweden_Male My_Number/M*100];
% Aged 70
Y_data = Male_data_70(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_13_Sweden(21);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_13_Sweden_Male = [Proportion_Ht_13_Sweden_Male My_Number/M*100];
% Aged 71
Y_data = Male_data_71(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_13_Sweden(22);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_13_Sweden_Male = [Proportion_Ht_13_Sweden_Male My_Number/M*100];
% Aged 72
Y_data = Male_data_72(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_13_Sweden(23);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_13_Sweden_Male = [Proportion_Ht_13_Sweden_Male My_Number/M*100];
% Aged 73
Y_data = Male_data_73(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_13_Sweden(24);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_13_Sweden_Male = [Proportion_Ht_13_Sweden_Male My_Number/M*100];
% Aged 74
Y_data = Male_data_74(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_13_Sweden(25);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_13_Sweden_Male = [Proportion_Ht_13_Sweden_Male My_Number/M*100];
% Aged 75
Y_data = Male_data_75(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_13_Sweden(26);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_13_Sweden_Male = [Proportion_Ht_13_Sweden_Male My_Number/M*100];
% Aged 76
Y_data = Male_data_76(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_13_Sweden(27);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_13_Sweden_Male = [Proportion_Ht_13_Sweden_Male My_Number/M*100];
% Aged 77
Y_data = Male_data_77(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_13_Sweden(28);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_13_Sweden_Male = [Proportion_Ht_13_Sweden_Male My_Number/M*100];
% Aged 78
Y_data = Male_data_78(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_13_Sweden(29);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_13_Sweden_Male = [Proportion_Ht_13_Sweden_Male My_Number/M*100];
% Aged 79
Y_data = Male_data_79(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_13_Sweden(30);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_13_Sweden_Male = [Proportion_Ht_13_Sweden_Male My_Number/M*100];
% Aged 80
Y_data = Male_data_80(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_13_Sweden(31);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_13_Sweden_Male = [Proportion_Ht_13_Sweden_Male My_Number/M*100];
% Aged 81
Y_data = Male_data_81(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_13_Sweden(32);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_13_Sweden_Male = [Proportion_Ht_13_Sweden_Male My_Number/M*100];
% Aged 82
Y_data = Male_data_82(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_13_Sweden(33);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_13_Sweden_Male = [Proportion_Ht_13_Sweden_Male My_Number/M*100];
% Aged 83
Y_data = Male_data_83(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_13_Sweden(34);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_13_Sweden_Male = [Proportion_Ht_13_Sweden_Male My_Number/M*100];
% Aged 84
Y_data = Male_data_84(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_13_Sweden(35);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_13_Sweden_Male = [Proportion_Ht_13_Sweden_Male My_Number/M*100];
% Aged 85
Y_data = Male_data_85(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_13_Sweden(36);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_13_Sweden_Male = [Proportion_Ht_13_Sweden_Male My_Number/M*100];
% Aged 86
Y_data = Male_data_86(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_13_Sweden(37);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_13_Sweden_Male = [Proportion_Ht_13_Sweden_Male My_Number/M*100];
% Aged 87
Y_data = Male_data_87(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_13_Sweden(38);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_13_Sweden_Male = [Proportion_Ht_13_Sweden_Male My_Number/M*100];
% Aged 88
Y_data = Male_data_88(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_13_Sweden(39);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_13_Sweden_Male = [Proportion_Ht_13_Sweden_Male My_Number/M*100];
% Aged 89
Y_data = Male_data_89(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_13_Sweden(40);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_13_Sweden_Male = [Proportion_Ht_13_Sweden_Male My_Number/M*100];
% Aged 90
Y_data = Male_data_90(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_13_Sweden(41);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_13_Sweden_Male = [Proportion_Ht_13_Sweden_Male My_Number/M*100];

%% 18_Denmark
% Loading the data
Female_data = xlsread('18_Denmark.xlsx','Female');
Male_data = xlsread('18_Denmark.xlsx','Male');
% Grouping by age
Female_data_50 = []; % == 50
Female_data_51 = [];
Female_data_52 = [];
Female_data_53 = [];
Female_data_54 = [];
Female_data_55 = [];
Female_data_56 = [];
Female_data_57 = [];
Female_data_58 = [];
Female_data_59 = [];
Female_data_60 = [];
Female_data_61 = [];
Female_data_62 = [];
Female_data_63 = [];
Female_data_64 = [];
Female_data_65 = [];
Female_data_66 = [];
Female_data_67 = [];
Female_data_68 = [];
Female_data_69 = [];
Female_data_70 = [];
Female_data_71 = [];
Female_data_72 = [];
Female_data_73 = [];
Female_data_74 = [];
Female_data_75 = [];
Female_data_76 = [];
Female_data_77 = [];
Female_data_78 = [];
Female_data_79 = [];
Female_data_80 = [];
Female_data_81 = [];
Female_data_82 = [];
Female_data_83 = [];
Female_data_84 = [];
Female_data_85 = [];
Female_data_86 = [];
Female_data_87 = [];
Female_data_88 = [];
Female_data_89 = [];
Female_data_90 = []; % ==90

Male_data_50 = []; % == 50
Male_data_51 = [];
Male_data_52 = [];
Male_data_53 = [];
Male_data_54 = [];
Male_data_55 = [];
Male_data_56 = [];
Male_data_57 = [];
Male_data_58 = [];
Male_data_59 = [];
Male_data_60 = [];
Male_data_61 = [];
Male_data_62 = [];
Male_data_63 = [];
Male_data_64 = [];
Male_data_65 = [];
Male_data_66 = [];
Male_data_67 = [];
Male_data_68 = [];
Male_data_69 = [];
Male_data_70 = [];
Male_data_71 = [];
Male_data_72 = [];
Male_data_73 = [];
Male_data_74 = [];
Male_data_75 = [];
Male_data_76 = [];
Male_data_77 = [];
Male_data_78 = [];
Male_data_79 = [];
Male_data_80 = [];
Male_data_81 = [];
Male_data_82 = [];
Male_data_83 = [];
Male_data_84 = [];
Male_data_85 = [];
Male_data_86 = [];
Male_data_87 = [];
Male_data_88 = [];
Male_data_89 = [];
Male_data_90 = []; % ==90

% For Female
[M N] = size(Female_data); % No.	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Female_data(i,2) == 50
        Female_data_50 = [Female_data_50; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 51
        Female_data_51 = [Female_data_51; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 52
        Female_data_52 = [Female_data_52; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 53
        Female_data_53 = [Female_data_53; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 54
        Female_data_54 = [Female_data_54; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 55
        Female_data_55 = [Female_data_55; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 56
        Female_data_56 = [Female_data_56; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 57
        Female_data_57 = [Female_data_57; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 58
        Female_data_58 = [Female_data_58; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 59
        Female_data_59 = [Female_data_59; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 60
        Female_data_60 = [Female_data_60; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 61
        Female_data_61 = [Female_data_61; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 62
        Female_data_62 = [Female_data_62; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 63
        Female_data_63 = [Female_data_63; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 64
        Female_data_64 = [Female_data_64; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 65
        Female_data_65 = [Female_data_65; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 66
        Female_data_66 = [Female_data_66; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 67
        Female_data_67 = [Female_data_67; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 68
        Female_data_68 = [Female_data_68; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 69
        Female_data_69 = [Female_data_69; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 70
        Female_data_70 = [Female_data_70; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 71
        Female_data_71 = [Female_data_71; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 72
        Female_data_72 = [Female_data_72; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 73
        Female_data_73 = [Female_data_73; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 74
        Female_data_74 = [Female_data_74; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 75
        Female_data_75 = [Female_data_75; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 76
        Female_data_76 = [Female_data_76; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 77
        Female_data_77 = [Female_data_77; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 78
        Female_data_78 = [Female_data_78; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 79
        Female_data_79 = [Female_data_79; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 80
        Female_data_80 = [Female_data_80; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 81
        Female_data_81 = [Female_data_81; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 82
        Female_data_82 = [Female_data_82; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 83
        Female_data_83 = [Female_data_83; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 84
        Female_data_84 = [Female_data_84; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 85
        Female_data_85 = [Female_data_85; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 86
        Female_data_86 = [Female_data_86; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 87
        Female_data_87 = [Female_data_87; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 88
        Female_data_88 = [Female_data_88; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 89
        Female_data_89 = [Female_data_89; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 90
        Female_data_90 = [Female_data_90; Female_data(i,3) Female_data(i,4)];
    end
end

% For Male
[M N] = size(Male_data); % No.	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Male_data(i,2) == 50
        Male_data_50 = [Male_data_50; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 51
        Male_data_51 = [Male_data_51; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 52
        Male_data_52 = [Male_data_52; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 53
        Male_data_53 = [Male_data_53; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 54
        Male_data_54 = [Male_data_54; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 55
        Male_data_55 = [Male_data_55; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 56
        Male_data_56 = [Male_data_56; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 57
        Male_data_57 = [Male_data_57; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 58
        Male_data_58 = [Male_data_58; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 59
        Male_data_59 = [Male_data_59; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 60
        Male_data_60 = [Male_data_60; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 61
        Male_data_61 = [Male_data_61; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 62
        Male_data_62 = [Male_data_62; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 63
        Male_data_63 = [Male_data_63; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 64
        Male_data_64 = [Male_data_64; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 65
        Male_data_65 = [Male_data_65; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 66
        Male_data_66 = [Male_data_66; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 67
        Male_data_67 = [Male_data_67; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 68
        Male_data_68 = [Male_data_68; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 69
        Male_data_69 = [Male_data_69; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 70
        Male_data_70 = [Male_data_70; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 71
        Male_data_71 = [Male_data_71; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 72
        Male_data_72 = [Male_data_72; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 73
        Male_data_73 = [Male_data_73; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 74
        Male_data_74 = [Male_data_74; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 75
        Male_data_75 = [Male_data_75; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 76
        Male_data_76 = [Male_data_76; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 77
        Male_data_77 = [Male_data_77; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 78
        Male_data_78 = [Male_data_78; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 79
        Male_data_79 = [Male_data_79; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 80
        Male_data_80 = [Male_data_80; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 81
        Male_data_81 = [Male_data_81; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 82
        Male_data_82 = [Male_data_82; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 83
        Male_data_83 = [Male_data_83; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 84
        Male_data_84 = [Male_data_84; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 85
        Male_data_85 = [Male_data_85; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 86
        Male_data_86 = [Male_data_86; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 87
        Male_data_87 = [Male_data_87; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 88
        Male_data_88 = [Male_data_88; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 89
        Male_data_89 = [Male_data_89; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 90
        Male_data_90 = [Male_data_90; Male_data(i,3) Male_data(i,4)];
    end
end

% We calculate the coefficients of a and b in 1=a/Weight+b*Height for this
% dataset
Age_18_Denmark = 50:90;
Proportion_Ht_18_Denmark_Female = [];
Proportion_Ht_18_Denmark_Male = [];

% For Female
% Aged 50
Y_data = Female_data_50(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_18_Denmark(1);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_18_Denmark_Female = [Proportion_Ht_18_Denmark_Female My_Number/M*100];
% Aged 51
Y_data = Female_data_51(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_18_Denmark(2);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_18_Denmark_Female = [Proportion_Ht_18_Denmark_Female My_Number/M*100];
% Aged 52
Y_data = Female_data_52(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_18_Denmark(3);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_18_Denmark_Female = [Proportion_Ht_18_Denmark_Female My_Number/M*100];
% Aged 53
Y_data = Female_data_53(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_18_Denmark(4);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_18_Denmark_Female = [Proportion_Ht_18_Denmark_Female My_Number/M*100];
% Aged 54
Y_data = Female_data_54(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_18_Denmark(5);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_18_Denmark_Female = [Proportion_Ht_18_Denmark_Female My_Number/M*100];
% Aged 55
Y_data = Female_data_55(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_18_Denmark(6);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_18_Denmark_Female = [Proportion_Ht_18_Denmark_Female My_Number/M*100];
% Aged 56
Y_data = Female_data_56(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_18_Denmark(7);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_18_Denmark_Female = [Proportion_Ht_18_Denmark_Female My_Number/M*100];
% Aged 57
Y_data = Female_data_57(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_18_Denmark(8);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_18_Denmark_Female = [Proportion_Ht_18_Denmark_Female My_Number/M*100];
% Aged 58
Y_data = Female_data_58(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_18_Denmark(9);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_18_Denmark_Female = [Proportion_Ht_18_Denmark_Female My_Number/M*100];
% Aged 59
Y_data = Female_data_59(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_18_Denmark(10);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_18_Denmark_Female = [Proportion_Ht_18_Denmark_Female My_Number/M*100];
% Aged 60
Y_data = Female_data_60(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_18_Denmark(11);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_18_Denmark_Female = [Proportion_Ht_18_Denmark_Female My_Number/M*100];
% Aged 61
Y_data = Female_data_61(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_18_Denmark(12);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_18_Denmark_Female = [Proportion_Ht_18_Denmark_Female My_Number/M*100];
% Aged 62
Y_data = Female_data_62(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_18_Denmark(13);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_18_Denmark_Female = [Proportion_Ht_18_Denmark_Female My_Number/M*100];
% Aged 63
Y_data = Female_data_63(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_18_Denmark(14);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_18_Denmark_Female = [Proportion_Ht_18_Denmark_Female My_Number/M*100];
% Aged 64
Y_data = Female_data_64(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_18_Denmark(15);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_18_Denmark_Female = [Proportion_Ht_18_Denmark_Female My_Number/M*100];
% Aged 65
Y_data = Female_data_65(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_18_Denmark(16);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_18_Denmark_Female = [Proportion_Ht_18_Denmark_Female My_Number/M*100];
% Aged 66
Y_data = Female_data_66(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_18_Denmark(17);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_18_Denmark_Female = [Proportion_Ht_18_Denmark_Female My_Number/M*100];
% Aged 67
Y_data = Female_data_67(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_18_Denmark(18);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_18_Denmark_Female = [Proportion_Ht_18_Denmark_Female My_Number/M*100];
% Aged 68
Y_data = Female_data_68(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_18_Denmark(19);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_18_Denmark_Female = [Proportion_Ht_18_Denmark_Female My_Number/M*100];
% Aged 69
Y_data = Female_data_69(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_18_Denmark(20);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_18_Denmark_Female = [Proportion_Ht_18_Denmark_Female My_Number/M*100];
% Aged 70
Y_data = Female_data_70(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_18_Denmark(21);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_18_Denmark_Female = [Proportion_Ht_18_Denmark_Female My_Number/M*100];
% Aged 71
Y_data = Female_data_71(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_18_Denmark(22);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_18_Denmark_Female = [Proportion_Ht_18_Denmark_Female My_Number/M*100];
% Aged 72
Y_data = Female_data_72(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_18_Denmark(23);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_18_Denmark_Female = [Proportion_Ht_18_Denmark_Female My_Number/M*100];
% Aged 73
Y_data = Female_data_73(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_18_Denmark(24);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_18_Denmark_Female = [Proportion_Ht_18_Denmark_Female My_Number/M*100];
% Aged 74
Y_data = Female_data_74(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_18_Denmark(25);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_18_Denmark_Female = [Proportion_Ht_18_Denmark_Female My_Number/M*100];
% Aged 75
Y_data = Female_data_75(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_18_Denmark(26);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_18_Denmark_Female = [Proportion_Ht_18_Denmark_Female My_Number/M*100];
% Aged 76
Y_data = Female_data_76(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_18_Denmark(27);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_18_Denmark_Female = [Proportion_Ht_18_Denmark_Female My_Number/M*100];
% Aged 77
Y_data = Female_data_77(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_18_Denmark(28);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_18_Denmark_Female = [Proportion_Ht_18_Denmark_Female My_Number/M*100];
% Aged 78
Y_data = Female_data_78(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_18_Denmark(29);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_18_Denmark_Female = [Proportion_Ht_18_Denmark_Female My_Number/M*100];
% Aged 79
Y_data = Female_data_79(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_18_Denmark(30);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_18_Denmark_Female = [Proportion_Ht_18_Denmark_Female My_Number/M*100];
% Aged 80
Y_data = Female_data_80(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_18_Denmark(31);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_18_Denmark_Female = [Proportion_Ht_18_Denmark_Female My_Number/M*100];
% Aged 81
Y_data = Female_data_81(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_18_Denmark(32);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_18_Denmark_Female = [Proportion_Ht_18_Denmark_Female My_Number/M*100];
% Aged 82
Y_data = Female_data_82(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_18_Denmark(33);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_18_Denmark_Female = [Proportion_Ht_18_Denmark_Female My_Number/M*100];
% Aged 83
Y_data = Female_data_83(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_18_Denmark(34);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_18_Denmark_Female = [Proportion_Ht_18_Denmark_Female My_Number/M*100];
% Aged 84
Y_data = Female_data_84(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_18_Denmark(35);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_18_Denmark_Female = [Proportion_Ht_18_Denmark_Female My_Number/M*100];
% Aged 85
Y_data = Female_data_85(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_18_Denmark(36);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_18_Denmark_Female = [Proportion_Ht_18_Denmark_Female My_Number/M*100];
% Aged 86
Y_data = Female_data_86(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_18_Denmark(37);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_18_Denmark_Female = [Proportion_Ht_18_Denmark_Female My_Number/M*100];
% Aged 87
Y_data = Female_data_87(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_18_Denmark(38);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_18_Denmark_Female = [Proportion_Ht_18_Denmark_Female My_Number/M*100];
% Aged 88
Y_data = Female_data_88(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_18_Denmark(39);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_18_Denmark_Female = [Proportion_Ht_18_Denmark_Female My_Number/M*100];
% Aged 89
Y_data = Female_data_89(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_18_Denmark(40);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_18_Denmark_Female = [Proportion_Ht_18_Denmark_Female My_Number/M*100];
% Aged 90
Y_data = Female_data_90(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_18_Denmark(41);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_18_Denmark_Female = [Proportion_Ht_18_Denmark_Female My_Number/M*100];

% For Male
% Aged 50
Y_data = Male_data_50(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_18_Denmark(1);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_18_Denmark_Male = [Proportion_Ht_18_Denmark_Male My_Number/M*100];
% Aged 51
Y_data = Male_data_51(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_18_Denmark(2);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_18_Denmark_Male = [Proportion_Ht_18_Denmark_Male My_Number/M*100];
% Aged 52
Y_data = Male_data_52(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_18_Denmark(3);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_18_Denmark_Male = [Proportion_Ht_18_Denmark_Male My_Number/M*100];
% Aged 53
Y_data = Male_data_53(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_18_Denmark(4);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_18_Denmark_Male = [Proportion_Ht_18_Denmark_Male My_Number/M*100];
% Aged 54
Y_data = Male_data_54(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_18_Denmark(5);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_18_Denmark_Male = [Proportion_Ht_18_Denmark_Male My_Number/M*100];
% Aged 55
Y_data = Male_data_55(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_18_Denmark(6);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_18_Denmark_Male = [Proportion_Ht_18_Denmark_Male My_Number/M*100];
% Aged 56
Y_data = Male_data_56(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_18_Denmark(7);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_18_Denmark_Male = [Proportion_Ht_18_Denmark_Male My_Number/M*100];
% Aged 57
Y_data = Male_data_57(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_18_Denmark(8);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_18_Denmark_Male = [Proportion_Ht_18_Denmark_Male My_Number/M*100];
% Aged 58
Y_data = Male_data_58(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_18_Denmark(9);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_18_Denmark_Male = [Proportion_Ht_18_Denmark_Male My_Number/M*100];
% Aged 59
Y_data = Male_data_59(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_18_Denmark(10);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_18_Denmark_Male = [Proportion_Ht_18_Denmark_Male My_Number/M*100];
% Aged 60
Y_data = Male_data_60(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_18_Denmark(11);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_18_Denmark_Male = [Proportion_Ht_18_Denmark_Male My_Number/M*100];
% Aged 61
Y_data = Male_data_61(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_18_Denmark(12);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_18_Denmark_Male = [Proportion_Ht_18_Denmark_Male My_Number/M*100];
% Aged 62
Y_data = Male_data_62(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_18_Denmark(13);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_18_Denmark_Male = [Proportion_Ht_18_Denmark_Male My_Number/M*100];
% Aged 63
Y_data = Male_data_63(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_18_Denmark(14);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_18_Denmark_Male = [Proportion_Ht_18_Denmark_Male My_Number/M*100];
% Aged 64
Y_data = Male_data_64(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_18_Denmark(15);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_18_Denmark_Male = [Proportion_Ht_18_Denmark_Male My_Number/M*100];
% Aged 65
Y_data = Male_data_65(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_18_Denmark(16);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_18_Denmark_Male = [Proportion_Ht_18_Denmark_Male My_Number/M*100];
% Aged 66
Y_data = Male_data_66(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_18_Denmark(17);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_18_Denmark_Male = [Proportion_Ht_18_Denmark_Male My_Number/M*100];
% Aged 67
Y_data = Male_data_67(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_18_Denmark(18);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_18_Denmark_Male = [Proportion_Ht_18_Denmark_Male My_Number/M*100];
% Aged 68
Y_data = Male_data_68(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_18_Denmark(19);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_18_Denmark_Male = [Proportion_Ht_18_Denmark_Male My_Number/M*100];
% Aged 69
Y_data = Male_data_69(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_18_Denmark(20);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_18_Denmark_Male = [Proportion_Ht_18_Denmark_Male My_Number/M*100];
% Aged 70
Y_data = Male_data_70(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_18_Denmark(21);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_18_Denmark_Male = [Proportion_Ht_18_Denmark_Male My_Number/M*100];
% Aged 71
Y_data = Male_data_71(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_18_Denmark(22);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_18_Denmark_Male = [Proportion_Ht_18_Denmark_Male My_Number/M*100];
% Aged 72
Y_data = Male_data_72(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_18_Denmark(23);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_18_Denmark_Male = [Proportion_Ht_18_Denmark_Male My_Number/M*100];
% Aged 73
Y_data = Male_data_73(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_18_Denmark(24);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_18_Denmark_Male = [Proportion_Ht_18_Denmark_Male My_Number/M*100];
% Aged 74
Y_data = Male_data_74(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_18_Denmark(25);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_18_Denmark_Male = [Proportion_Ht_18_Denmark_Male My_Number/M*100];
% Aged 75
Y_data = Male_data_75(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_18_Denmark(26);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_18_Denmark_Male = [Proportion_Ht_18_Denmark_Male My_Number/M*100];
% Aged 76
Y_data = Male_data_76(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_18_Denmark(27);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_18_Denmark_Male = [Proportion_Ht_18_Denmark_Male My_Number/M*100];
% Aged 77
Y_data = Male_data_77(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_18_Denmark(28);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_18_Denmark_Male = [Proportion_Ht_18_Denmark_Male My_Number/M*100];
% Aged 78
Y_data = Male_data_78(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_18_Denmark(29);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_18_Denmark_Male = [Proportion_Ht_18_Denmark_Male My_Number/M*100];
% Aged 79
Y_data = Male_data_79(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_18_Denmark(30);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_18_Denmark_Male = [Proportion_Ht_18_Denmark_Male My_Number/M*100];
% Aged 80
Y_data = Male_data_80(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_18_Denmark(31);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_18_Denmark_Male = [Proportion_Ht_18_Denmark_Male My_Number/M*100];
% Aged 81
Y_data = Male_data_81(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_18_Denmark(32);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_18_Denmark_Male = [Proportion_Ht_18_Denmark_Male My_Number/M*100];
% Aged 82
Y_data = Male_data_82(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_18_Denmark(33);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_18_Denmark_Male = [Proportion_Ht_18_Denmark_Male My_Number/M*100];
% Aged 83
Y_data = Male_data_83(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_18_Denmark(34);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_18_Denmark_Male = [Proportion_Ht_18_Denmark_Male My_Number/M*100];
% Aged 84
Y_data = Male_data_84(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_18_Denmark(35);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_18_Denmark_Male = [Proportion_Ht_18_Denmark_Male My_Number/M*100];
% Aged 85
Y_data = Male_data_85(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_18_Denmark(36);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_18_Denmark_Male = [Proportion_Ht_18_Denmark_Male My_Number/M*100];
% Aged 86
Y_data = Male_data_86(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_18_Denmark(37);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_18_Denmark_Male = [Proportion_Ht_18_Denmark_Male My_Number/M*100];
% Aged 87
Y_data = Male_data_87(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_18_Denmark(38);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_18_Denmark_Male = [Proportion_Ht_18_Denmark_Male My_Number/M*100];
% Aged 88
Y_data = Male_data_88(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_18_Denmark(39);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_18_Denmark_Male = [Proportion_Ht_18_Denmark_Male My_Number/M*100];
% Aged 89
Y_data = Male_data_89(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_18_Denmark(40);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_18_Denmark_Male = [Proportion_Ht_18_Denmark_Male My_Number/M*100];
% Aged 90
Y_data = Male_data_90(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_18_Denmark(41);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_18_Denmark_Male = [Proportion_Ht_18_Denmark_Male My_Number/M*100];

%% 61_Romania
% Loading the data
Female_data = xlsread('61_Romania.xlsx','Female');
Male_data = xlsread('61_Romania.xlsx','Male');
% Grouping by age
Female_data_51 = [];
Female_data_52 = [];
Female_data_53 = [];
Female_data_54 = [];
Female_data_55 = [];
Female_data_56 = [];
Female_data_57 = [];
Female_data_58 = [];
Female_data_59 = [];
Female_data_60 = [];
Female_data_61 = [];
Female_data_62 = [];
Female_data_63 = [];
Female_data_64 = [];
Female_data_65 = [];
Female_data_66 = [];
Female_data_67 = [];
Female_data_68 = [];
Female_data_69 = [];
Female_data_70 = [];
Female_data_71 = [];
Female_data_72 = [];
Female_data_73 = [];
Female_data_74 = [];
Female_data_75 = [];
Female_data_76 = [];
Female_data_77 = [];
Female_data_78 = [];
Female_data_79 = [];
Female_data_80 = [];
Female_data_81 = [];
Female_data_82 = [];
Female_data_83 = [];
Female_data_84 = [];
Female_data_85 = [];

Male_data_51 = [];
Male_data_52 = [];
Male_data_53 = [];
Male_data_54 = [];
Male_data_55 = [];
Male_data_56 = [];
Male_data_57 = [];
Male_data_58 = [];
Male_data_59 = [];
Male_data_60 = [];
Male_data_61 = [];
Male_data_62 = [];
Male_data_63 = [];
Male_data_64 = [];
Male_data_65 = [];
Male_data_66 = [];
Male_data_67 = [];
Male_data_68 = [];
Male_data_69 = [];
Male_data_70 = [];
Male_data_71 = [];
Male_data_72 = [];
Male_data_73 = [];
Male_data_74 = [];
Male_data_75 = [];
Male_data_76 = [];
Male_data_77 = [];
Male_data_78 = [];
Male_data_79 = [];
Male_data_80 = [];
Male_data_81 = [];
Male_data_82 = [];
Male_data_83 = [];
Male_data_84 = [];
Male_data_85 = [];

% For Female
[M N] = size(Female_data); % No.	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Female_data(i,2) == 51
        Female_data_51 = [Female_data_51; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 52
        Female_data_52 = [Female_data_52; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 53
        Female_data_53 = [Female_data_53; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 54
        Female_data_54 = [Female_data_54; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 55
        Female_data_55 = [Female_data_55; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 56
        Female_data_56 = [Female_data_56; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 57
        Female_data_57 = [Female_data_57; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 58
        Female_data_58 = [Female_data_58; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 59
        Female_data_59 = [Female_data_59; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 60
        Female_data_60 = [Female_data_60; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 61
        Female_data_61 = [Female_data_61; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 62
        Female_data_62 = [Female_data_62; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 63
        Female_data_63 = [Female_data_63; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 64
        Female_data_64 = [Female_data_64; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 65
        Female_data_65 = [Female_data_65; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 66
        Female_data_66 = [Female_data_66; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 67
        Female_data_67 = [Female_data_67; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 68
        Female_data_68 = [Female_data_68; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 69
        Female_data_69 = [Female_data_69; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 70
        Female_data_70 = [Female_data_70; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 71
        Female_data_71 = [Female_data_71; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 72
        Female_data_72 = [Female_data_72; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 73
        Female_data_73 = [Female_data_73; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 74
        Female_data_74 = [Female_data_74; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 75
        Female_data_75 = [Female_data_75; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 76
        Female_data_76 = [Female_data_76; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 77
        Female_data_77 = [Female_data_77; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 78
        Female_data_78 = [Female_data_78; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 79
        Female_data_79 = [Female_data_79; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 80
        Female_data_80 = [Female_data_80; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 81
        Female_data_81 = [Female_data_81; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 82
        Female_data_82 = [Female_data_82; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 83
        Female_data_83 = [Female_data_83; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 84
        Female_data_84 = [Female_data_84; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 85
        Female_data_85 = [Female_data_85; Female_data(i,3) Female_data(i,4)];
    end
end

% For Male
[M N] = size(Male_data); % No.	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Male_data(i,2) == 51
        Male_data_51 = [Male_data_51; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 52
        Male_data_52 = [Male_data_52; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 53
        Male_data_53 = [Male_data_53; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 54
        Male_data_54 = [Male_data_54; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 55
        Male_data_55 = [Male_data_55; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 56
        Male_data_56 = [Male_data_56; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 57
        Male_data_57 = [Male_data_57; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 58
        Male_data_58 = [Male_data_58; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 59
        Male_data_59 = [Male_data_59; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 60
        Male_data_60 = [Male_data_60; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 61
        Male_data_61 = [Male_data_61; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 62
        Male_data_62 = [Male_data_62; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 63
        Male_data_63 = [Male_data_63; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 64
        Male_data_64 = [Male_data_64; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 65
        Male_data_65 = [Male_data_65; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 66
        Male_data_66 = [Male_data_66; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 67
        Male_data_67 = [Male_data_67; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 68
        Male_data_68 = [Male_data_68; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 69
        Male_data_69 = [Male_data_69; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 70
        Male_data_70 = [Male_data_70; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 71
        Male_data_71 = [Male_data_71; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 72
        Male_data_72 = [Male_data_72; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 73
        Male_data_73 = [Male_data_73; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 74
        Male_data_74 = [Male_data_74; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 75
        Male_data_75 = [Male_data_75; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 76
        Male_data_76 = [Male_data_76; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 77
        Male_data_77 = [Male_data_77; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 78
        Male_data_78 = [Male_data_78; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 79
        Male_data_79 = [Male_data_79; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 80
        Male_data_80 = [Male_data_80; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 81
        Male_data_81 = [Male_data_81; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 82
        Male_data_82 = [Male_data_82; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 83
        Male_data_83 = [Male_data_83; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 84
        Male_data_84 = [Male_data_84; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 85
        Male_data_85 = [Male_data_85; Male_data(i,3) Male_data(i,4)];
    end
end

% We calculate the coefficients of a and b in 1=a/Weight+b*Height for this
% dataset
Age_61_Romania = 51:85;
Proportion_Ht_61_Romania_Female = [];
Proportion_Ht_61_Romania_Male = [];
Coefficient_b_Female_1_61_Romania = [0 Coefficient_b_Female_1_61_Romania];
Coefficient_b_Male_1_61_Romania = [0 Coefficient_b_Male_1_61_Romania];

% For Female
% Aged 51
Y_data = Female_data_51(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_61_Romania(2);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_61_Romania_Female = [Proportion_Ht_61_Romania_Female My_Number/M*100];
% Aged 52
Y_data = Female_data_52(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_61_Romania(3);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_61_Romania_Female = [Proportion_Ht_61_Romania_Female My_Number/M*100];
% Aged 53
Y_data = Female_data_53(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_61_Romania(4);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_61_Romania_Female = [Proportion_Ht_61_Romania_Female My_Number/M*100];
% Aged 54
Y_data = Female_data_54(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_61_Romania(5);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_61_Romania_Female = [Proportion_Ht_61_Romania_Female My_Number/M*100];
% Aged 55
Y_data = Female_data_55(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_61_Romania(6);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_61_Romania_Female = [Proportion_Ht_61_Romania_Female My_Number/M*100];
% Aged 56
Y_data = Female_data_56(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_61_Romania(7);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_61_Romania_Female = [Proportion_Ht_61_Romania_Female My_Number/M*100];
% Aged 57
Y_data = Female_data_57(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_61_Romania(8);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_61_Romania_Female = [Proportion_Ht_61_Romania_Female My_Number/M*100];
% Aged 58
Y_data = Female_data_58(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_61_Romania(9);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_61_Romania_Female = [Proportion_Ht_61_Romania_Female My_Number/M*100];
% Aged 59
Y_data = Female_data_59(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_61_Romania(10);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_61_Romania_Female = [Proportion_Ht_61_Romania_Female My_Number/M*100];
% Aged 60
Y_data = Female_data_60(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_61_Romania(11);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_61_Romania_Female = [Proportion_Ht_61_Romania_Female My_Number/M*100];
% Aged 61
Y_data = Female_data_61(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_61_Romania(12);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_61_Romania_Female = [Proportion_Ht_61_Romania_Female My_Number/M*100];
% Aged 62
Y_data = Female_data_62(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_61_Romania(13);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_61_Romania_Female = [Proportion_Ht_61_Romania_Female My_Number/M*100];
% Aged 63
Y_data = Female_data_63(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_61_Romania(14);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_61_Romania_Female = [Proportion_Ht_61_Romania_Female My_Number/M*100];
% Aged 64
Y_data = Female_data_64(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_61_Romania(15);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_61_Romania_Female = [Proportion_Ht_61_Romania_Female My_Number/M*100];
% Aged 65
Y_data = Female_data_65(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_61_Romania(16);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_61_Romania_Female = [Proportion_Ht_61_Romania_Female My_Number/M*100];
% Aged 66
Y_data = Female_data_66(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_61_Romania(17);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_61_Romania_Female = [Proportion_Ht_61_Romania_Female My_Number/M*100];
% Aged 67
Y_data = Female_data_67(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_61_Romania(18);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_61_Romania_Female = [Proportion_Ht_61_Romania_Female My_Number/M*100];
% Aged 68
Y_data = Female_data_68(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_61_Romania(19);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_61_Romania_Female = [Proportion_Ht_61_Romania_Female My_Number/M*100];
% Aged 69
Y_data = Female_data_69(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_61_Romania(20);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_61_Romania_Female = [Proportion_Ht_61_Romania_Female My_Number/M*100];
% Aged 70
Y_data = Female_data_70(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_61_Romania(21);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_61_Romania_Female = [Proportion_Ht_61_Romania_Female My_Number/M*100];
% Aged 71
Y_data = Female_data_71(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_61_Romania(22);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_61_Romania_Female = [Proportion_Ht_61_Romania_Female My_Number/M*100];
% Aged 72
Y_data = Female_data_72(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_61_Romania(23);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_61_Romania_Female = [Proportion_Ht_61_Romania_Female My_Number/M*100];
% Aged 73
Y_data = Female_data_73(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_61_Romania(24);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_61_Romania_Female = [Proportion_Ht_61_Romania_Female My_Number/M*100];
% Aged 74
Y_data = Female_data_74(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_61_Romania(25);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_61_Romania_Female = [Proportion_Ht_61_Romania_Female My_Number/M*100];
% Aged 75
Y_data = Female_data_75(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_61_Romania(26);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_61_Romania_Female = [Proportion_Ht_61_Romania_Female My_Number/M*100];
% Aged 76
Y_data = Female_data_76(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_61_Romania(27);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_61_Romania_Female = [Proportion_Ht_61_Romania_Female My_Number/M*100];
% Aged 77
Y_data = Female_data_77(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_61_Romania(28);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_61_Romania_Female = [Proportion_Ht_61_Romania_Female My_Number/M*100];
% Aged 78
Y_data = Female_data_78(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_61_Romania(29);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_61_Romania_Female = [Proportion_Ht_61_Romania_Female My_Number/M*100];
% Aged 79
Y_data = Female_data_79(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_61_Romania(30);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_61_Romania_Female = [Proportion_Ht_61_Romania_Female My_Number/M*100];
% Aged 80
Y_data = Female_data_80(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_61_Romania(31);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_61_Romania_Female = [Proportion_Ht_61_Romania_Female My_Number/M*100];
% Aged 81
Y_data = Female_data_81(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_61_Romania(32);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_61_Romania_Female = [Proportion_Ht_61_Romania_Female My_Number/M*100];
% Aged 82
Y_data = Female_data_82(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_61_Romania(33);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_61_Romania_Female = [Proportion_Ht_61_Romania_Female My_Number/M*100];
% Aged 83
Y_data = Female_data_83(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_61_Romania(34);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_61_Romania_Female = [Proportion_Ht_61_Romania_Female My_Number/M*100];
% Aged 84
Y_data = Female_data_84(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_61_Romania(35);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_61_Romania_Female = [Proportion_Ht_61_Romania_Female My_Number/M*100];
% Aged 85
Y_data = Female_data_85(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_61_Romania(36);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_61_Romania_Female = [Proportion_Ht_61_Romania_Female My_Number/M*100];

% For Male
% Aged 51
Y_data = Male_data_51(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_61_Romania(2);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_61_Romania_Male = [Proportion_Ht_61_Romania_Male My_Number/M*100];
% Aged 52
Y_data = Male_data_52(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_61_Romania(3);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_61_Romania_Male = [Proportion_Ht_61_Romania_Male My_Number/M*100];
% Aged 53
Y_data = Male_data_53(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_61_Romania(4);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_61_Romania_Male = [Proportion_Ht_61_Romania_Male My_Number/M*100];
% Aged 54
Y_data = Male_data_54(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_61_Romania(5);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_61_Romania_Male = [Proportion_Ht_61_Romania_Male My_Number/M*100];
% Aged 55
Y_data = Male_data_55(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_61_Romania(6);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_61_Romania_Male = [Proportion_Ht_61_Romania_Male My_Number/M*100];
% Aged 56
Y_data = Male_data_56(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_61_Romania(7);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_61_Romania_Male = [Proportion_Ht_61_Romania_Male My_Number/M*100];
% Aged 57
Y_data = Male_data_57(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_61_Romania(8);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_61_Romania_Male = [Proportion_Ht_61_Romania_Male My_Number/M*100];
% Aged 58
Y_data = Male_data_58(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_61_Romania(9);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_61_Romania_Male = [Proportion_Ht_61_Romania_Male My_Number/M*100];
% Aged 59
Y_data = Male_data_59(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_61_Romania(10);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_61_Romania_Male = [Proportion_Ht_61_Romania_Male My_Number/M*100];
% Aged 60
Y_data = Male_data_60(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_61_Romania(11);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_61_Romania_Male = [Proportion_Ht_61_Romania_Male My_Number/M*100];
% Aged 61
Y_data = Male_data_61(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_61_Romania(12);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_61_Romania_Male = [Proportion_Ht_61_Romania_Male My_Number/M*100];
% Aged 62
Y_data = Male_data_62(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_61_Romania(13);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_61_Romania_Male = [Proportion_Ht_61_Romania_Male My_Number/M*100];
% Aged 63
Y_data = Male_data_63(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_61_Romania(14);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_61_Romania_Male = [Proportion_Ht_61_Romania_Male My_Number/M*100];
% Aged 64
Y_data = Male_data_64(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_61_Romania(15);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_61_Romania_Male = [Proportion_Ht_61_Romania_Male My_Number/M*100];
% Aged 65
Y_data = Male_data_65(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_61_Romania(16);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_61_Romania_Male = [Proportion_Ht_61_Romania_Male My_Number/M*100];
% Aged 66
Y_data = Male_data_66(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_61_Romania(17);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_61_Romania_Male = [Proportion_Ht_61_Romania_Male My_Number/M*100];
% Aged 67
Y_data = Male_data_67(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_61_Romania(18);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_61_Romania_Male = [Proportion_Ht_61_Romania_Male My_Number/M*100];
% Aged 68
Y_data = Male_data_68(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_61_Romania(19);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_61_Romania_Male = [Proportion_Ht_61_Romania_Male My_Number/M*100];
% Aged 69
Y_data = Male_data_69(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_61_Romania(20);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_61_Romania_Male = [Proportion_Ht_61_Romania_Male My_Number/M*100];
% Aged 70
Y_data = Male_data_70(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_61_Romania(21);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_61_Romania_Male = [Proportion_Ht_61_Romania_Male My_Number/M*100];
% Aged 71
Y_data = Male_data_71(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_61_Romania(22);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_61_Romania_Male = [Proportion_Ht_61_Romania_Male My_Number/M*100];
% Aged 72
Y_data = Male_data_72(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_61_Romania(23);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_61_Romania_Male = [Proportion_Ht_61_Romania_Male My_Number/M*100];
% Aged 73
Y_data = Male_data_73(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_61_Romania(24);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_61_Romania_Male = [Proportion_Ht_61_Romania_Male My_Number/M*100];
% Aged 74
Y_data = Male_data_74(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_61_Romania(25);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_61_Romania_Male = [Proportion_Ht_61_Romania_Male My_Number/M*100];
% Aged 75
Y_data = Male_data_75(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_61_Romania(26);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_61_Romania_Male = [Proportion_Ht_61_Romania_Male My_Number/M*100];
% Aged 76
Y_data = Male_data_76(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_61_Romania(27);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_61_Romania_Male = [Proportion_Ht_61_Romania_Male My_Number/M*100];
% Aged 77
Y_data = Male_data_77(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_61_Romania(28);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_61_Romania_Male = [Proportion_Ht_61_Romania_Male My_Number/M*100];
% Aged 78
Y_data = Male_data_78(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_61_Romania(29);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_61_Romania_Male = [Proportion_Ht_61_Romania_Male My_Number/M*100];
% Aged 79
Y_data = Male_data_79(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_61_Romania(30);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_61_Romania_Male = [Proportion_Ht_61_Romania_Male My_Number/M*100];
% Aged 80
Y_data = Male_data_80(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_61_Romania(31);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_61_Romania_Male = [Proportion_Ht_61_Romania_Male My_Number/M*100];
% Aged 81
Y_data = Male_data_81(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_61_Romania(32);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_61_Romania_Male = [Proportion_Ht_61_Romania_Male My_Number/M*100];
% Aged 82
Y_data = Male_data_82(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_61_Romania(33);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_61_Romania_Male = [Proportion_Ht_61_Romania_Male My_Number/M*100];
% Aged 83
Y_data = Male_data_83(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_61_Romania(34);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_61_Romania_Male = [Proportion_Ht_61_Romania_Male My_Number/M*100];
% Aged 84
Y_data = Male_data_84(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_61_Romania(35);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_61_Romania_Male = [Proportion_Ht_61_Romania_Male My_Number/M*100];
% Aged 85
Y_data = Male_data_85(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_61_Romania(36);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_61_Romania_Male = [Proportion_Ht_61_Romania_Male My_Number/M*100];

%% 59_Malta
% Loading the data
Female_data = xlsread('59_Malta.xlsx','Female');
Male_data = xlsread('59_Malta.xlsx','Male');
% Grouping by age
Female_data_56 = [];
Female_data_57 = [];
Female_data_58 = [];
Female_data_59 = [];
Female_data_60 = [];
Female_data_61 = [];
Female_data_62 = [];
Female_data_63 = [];
Female_data_64 = [];
Female_data_65 = [];
Female_data_66 = [];
Female_data_67 = [];
Female_data_68 = [];
Female_data_69 = [];
Female_data_70 = [];
Female_data_71 = [];
Female_data_72 = [];
Female_data_73 = [];
Female_data_74 = [];
Female_data_75 = [];
Female_data_76 = [];
Female_data_77 = [];
Female_data_78 = [];
Female_data_79 = [];

Male_data_56 = [];
Male_data_57 = [];
Male_data_58 = [];
Male_data_59 = [];
Male_data_60 = [];
Male_data_61 = [];
Male_data_62 = [];
Male_data_63 = [];
Male_data_64 = [];
Male_data_65 = [];
Male_data_66 = [];
Male_data_67 = [];
Male_data_68 = [];
Male_data_69 = [];
Male_data_70 = [];
Male_data_71 = [];
Male_data_72 = [];
Male_data_73 = [];
Male_data_74 = [];
Male_data_75 = [];
Male_data_76 = [];
Male_data_77 = [];
Male_data_78 = [];
Male_data_79 = [];

% For Female
[M N] = size(Female_data); % No.	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Female_data(i,2) == 56
        Female_data_56 = [Female_data_56; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 57
        Female_data_57 = [Female_data_57; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 58
        Female_data_58 = [Female_data_58; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 59
        Female_data_59 = [Female_data_59; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 60
        Female_data_60 = [Female_data_60; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 61
        Female_data_61 = [Female_data_61; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 62
        Female_data_62 = [Female_data_62; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 63
        Female_data_63 = [Female_data_63; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 64
        Female_data_64 = [Female_data_64; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 65
        Female_data_65 = [Female_data_65; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 66
        Female_data_66 = [Female_data_66; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 67
        Female_data_67 = [Female_data_67; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 68
        Female_data_68 = [Female_data_68; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 69
        Female_data_69 = [Female_data_69; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 70
        Female_data_70 = [Female_data_70; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 71
        Female_data_71 = [Female_data_71; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 72
        Female_data_72 = [Female_data_72; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 73
        Female_data_73 = [Female_data_73; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 74
        Female_data_74 = [Female_data_74; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 75
        Female_data_75 = [Female_data_75; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 76
        Female_data_76 = [Female_data_76; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 77
        Female_data_77 = [Female_data_77; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 78
        Female_data_78 = [Female_data_78; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 79
        Female_data_79 = [Female_data_79; Female_data(i,3) Female_data(i,4)];
    end
end

% For Male
[M N] = size(Male_data); % No.	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Male_data(i,2) == 56
        Male_data_56 = [Male_data_56; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 57
        Male_data_57 = [Male_data_57; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 58
        Male_data_58 = [Male_data_58; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 59
        Male_data_59 = [Male_data_59; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 60
        Male_data_60 = [Male_data_60; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 61
        Male_data_61 = [Male_data_61; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 62
        Male_data_62 = [Male_data_62; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 63
        Male_data_63 = [Male_data_63; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 64
        Male_data_64 = [Male_data_64; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 65
        Male_data_65 = [Male_data_65; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 66
        Male_data_66 = [Male_data_66; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 67
        Male_data_67 = [Male_data_67; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 68
        Male_data_68 = [Male_data_68; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 69
        Male_data_69 = [Male_data_69; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 70
        Male_data_70 = [Male_data_70; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 71
        Male_data_71 = [Male_data_71; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 72
        Male_data_72 = [Male_data_72; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 73
        Male_data_73 = [Male_data_73; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 74
        Male_data_74 = [Male_data_74; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 75
        Male_data_75 = [Male_data_75; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 76
        Male_data_76 = [Male_data_76; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 77
        Male_data_77 = [Male_data_77; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 78
        Male_data_78 = [Male_data_78; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 79
        Male_data_79 = [Male_data_79; Male_data(i,3) Male_data(i,4)];
    end
end

% We calculate the coefficients of a and b in 1=a/Weight+b*Height for this
% dataset
Age_59_Malta = 56:79;
Proportion_Ht_59_Malta_Female = [];
Proportion_Ht_59_Malta_Male = [];
Coefficient_b_Female_1_59_Malta = [0 0 0 0 0 0 Coefficient_b_Female_1_59_Malta];
Coefficient_b_Male_1_59_Malta = [0 0 0 0 0 0 Coefficient_b_Male_1_59_Malta];

% For Female
% Aged 56
Y_data = Female_data_56(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_59_Malta(7);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_59_Malta_Female = [Proportion_Ht_59_Malta_Female My_Number/M*100];
% Aged 57
Y_data = Female_data_57(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_59_Malta(8);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_59_Malta_Female = [Proportion_Ht_59_Malta_Female My_Number/M*100];
% Aged 58
Y_data = Female_data_58(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_59_Malta(9);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_59_Malta_Female = [Proportion_Ht_59_Malta_Female My_Number/M*100];
% Aged 59
Y_data = Female_data_59(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_59_Malta(10);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_59_Malta_Female = [Proportion_Ht_59_Malta_Female My_Number/M*100];
% Aged 60
Y_data = Female_data_60(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_59_Malta(11);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_59_Malta_Female = [Proportion_Ht_59_Malta_Female My_Number/M*100];
% Aged 61
Y_data = Female_data_61(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_59_Malta(12);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_59_Malta_Female = [Proportion_Ht_59_Malta_Female My_Number/M*100];
% Aged 62
Y_data = Female_data_62(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_59_Malta(13);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_59_Malta_Female = [Proportion_Ht_59_Malta_Female My_Number/M*100];
% Aged 63
Y_data = Female_data_63(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_59_Malta(14);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_59_Malta_Female = [Proportion_Ht_59_Malta_Female My_Number/M*100];
% Aged 64
Y_data = Female_data_64(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_59_Malta(15);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_59_Malta_Female = [Proportion_Ht_59_Malta_Female My_Number/M*100];
% Aged 65
Y_data = Female_data_65(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_59_Malta(16);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_59_Malta_Female = [Proportion_Ht_59_Malta_Female My_Number/M*100];
% Aged 66
Y_data = Female_data_66(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_59_Malta(17);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_59_Malta_Female = [Proportion_Ht_59_Malta_Female My_Number/M*100];
% Aged 67
Y_data = Female_data_67(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_59_Malta(18);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_59_Malta_Female = [Proportion_Ht_59_Malta_Female My_Number/M*100];
% Aged 68
Y_data = Female_data_68(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_59_Malta(19);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_59_Malta_Female = [Proportion_Ht_59_Malta_Female My_Number/M*100];
% Aged 69
Y_data = Female_data_69(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_59_Malta(20);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_59_Malta_Female = [Proportion_Ht_59_Malta_Female My_Number/M*100];
% Aged 70
Y_data = Female_data_70(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_59_Malta(21);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_59_Malta_Female = [Proportion_Ht_59_Malta_Female My_Number/M*100];
% Aged 71
Y_data = Female_data_71(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_59_Malta(22);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_59_Malta_Female = [Proportion_Ht_59_Malta_Female My_Number/M*100];
% Aged 72
Y_data = Female_data_72(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_59_Malta(23);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_59_Malta_Female = [Proportion_Ht_59_Malta_Female My_Number/M*100];
% Aged 73
Y_data = Female_data_73(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_59_Malta(24);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_59_Malta_Female = [Proportion_Ht_59_Malta_Female My_Number/M*100];
% Aged 74
Y_data = Female_data_74(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_59_Malta(25);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_59_Malta_Female = [Proportion_Ht_59_Malta_Female My_Number/M*100];
% Aged 75
Y_data = Female_data_75(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_59_Malta(26);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_59_Malta_Female = [Proportion_Ht_59_Malta_Female My_Number/M*100];
% Aged 76
Y_data = Female_data_76(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_59_Malta(27);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_59_Malta_Female = [Proportion_Ht_59_Malta_Female My_Number/M*100];
% Aged 77
Y_data = Female_data_77(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_59_Malta(28);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_59_Malta_Female = [Proportion_Ht_59_Malta_Female My_Number/M*100];
% Aged 78
Y_data = Female_data_78(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_59_Malta(29);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_59_Malta_Female = [Proportion_Ht_59_Malta_Female My_Number/M*100];
% Aged 79
Y_data = Female_data_79(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_59_Malta(30);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_59_Malta_Female = [Proportion_Ht_59_Malta_Female My_Number/M*100];

% For Male
% Aged 56
Y_data = Male_data_56(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_59_Malta(7);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_59_Malta_Male = [Proportion_Ht_59_Malta_Male My_Number/M*100];
% Aged 57
Y_data = Male_data_57(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_59_Malta(8);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_59_Malta_Male = [Proportion_Ht_59_Malta_Male My_Number/M*100];
% Aged 58
Y_data = Male_data_58(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_59_Malta(9);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_59_Malta_Male = [Proportion_Ht_59_Malta_Male My_Number/M*100];
% Aged 59
Y_data = Male_data_59(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_59_Malta(10);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_59_Malta_Male = [Proportion_Ht_59_Malta_Male My_Number/M*100];
% Aged 60
Y_data = Male_data_60(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_59_Malta(11);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_59_Malta_Male = [Proportion_Ht_59_Malta_Male My_Number/M*100];
% Aged 61
Y_data = Male_data_61(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_59_Malta(12);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_59_Malta_Male = [Proportion_Ht_59_Malta_Male My_Number/M*100];
% Aged 62
Y_data = Male_data_62(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_59_Malta(13);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_59_Malta_Male = [Proportion_Ht_59_Malta_Male My_Number/M*100];
% Aged 63
Y_data = Male_data_63(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_59_Malta(14);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_59_Malta_Male = [Proportion_Ht_59_Malta_Male My_Number/M*100];
% Aged 64
Y_data = Male_data_64(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_59_Malta(15);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_59_Malta_Male = [Proportion_Ht_59_Malta_Male My_Number/M*100];
% Aged 65
Y_data = Male_data_65(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_59_Malta(16);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_59_Malta_Male = [Proportion_Ht_59_Malta_Male My_Number/M*100];
% Aged 66
Y_data = Male_data_66(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_59_Malta(17);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_59_Malta_Male = [Proportion_Ht_59_Malta_Male My_Number/M*100];
% Aged 67
Y_data = Male_data_67(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_59_Malta(18);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_59_Malta_Male = [Proportion_Ht_59_Malta_Male My_Number/M*100];
% Aged 68
Y_data = Male_data_68(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_59_Malta(19);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_59_Malta_Male = [Proportion_Ht_59_Malta_Male My_Number/M*100];
% Aged 69
Y_data = Male_data_69(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_59_Malta(20);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_59_Malta_Male = [Proportion_Ht_59_Malta_Male My_Number/M*100];
% Aged 70
Y_data = Male_data_70(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_59_Malta(21);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_59_Malta_Male = [Proportion_Ht_59_Malta_Male My_Number/M*100];
% Aged 71
Y_data = Male_data_71(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_59_Malta(22);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_59_Malta_Male = [Proportion_Ht_59_Malta_Male My_Number/M*100];
% Aged 72
Y_data = Male_data_72(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_59_Malta(23);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_59_Malta_Male = [Proportion_Ht_59_Malta_Male My_Number/M*100];
% Aged 73
Y_data = Male_data_73(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_59_Malta(24);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_59_Malta_Male = [Proportion_Ht_59_Malta_Male My_Number/M*100];
% Aged 74
Y_data = Male_data_74(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_59_Malta(25);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_59_Malta_Male = [Proportion_Ht_59_Malta_Male My_Number/M*100];
% Aged 75
Y_data = Male_data_75(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_59_Malta(26);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_59_Malta_Male = [Proportion_Ht_59_Malta_Male My_Number/M*100];
% Aged 76
Y_data = Male_data_76(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_59_Malta(27);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_59_Malta_Male = [Proportion_Ht_59_Malta_Male My_Number/M*100];
% Aged 77
Y_data = Male_data_77(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_59_Malta(28);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_59_Malta_Male = [Proportion_Ht_59_Malta_Male My_Number/M*100];
% Aged 78
Y_data = Male_data_78(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_59_Malta(29);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_59_Malta_Male = [Proportion_Ht_59_Malta_Male My_Number/M*100];
% Aged 79
Y_data = Male_data_79(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_59_Malta(30);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_59_Malta_Male = [Proportion_Ht_59_Malta_Male My_Number/M*100];

%% 53_Cyprus
% Loading the data
Female_data = xlsread('53_Cyprus.xlsx','Female');
Male_data = xlsread('53_Cyprus.xlsx','Male');
% Grouping by age
Female_data_56 = [];
Female_data_57 = [];
Female_data_58 = [];
Female_data_59 = [];
Female_data_60 = [];
Female_data_61 = [];
Female_data_62 = [];
Female_data_63 = [];
Female_data_64 = [];
Female_data_65 = [];
Female_data_66 = [];
Female_data_67 = [];
Female_data_68 = [];
Female_data_69 = [];
Female_data_70 = [];
Female_data_71 = [];
Female_data_72 = [];
Female_data_73 = [];
Female_data_74 = [];
Female_data_75 = [];
Female_data_76 = [];
Female_data_77 = [];
Female_data_78 = [];
Female_data_79 = [];
Female_data_80 = [];
Female_data_81 = [];
Female_data_82 = [];
Female_data_83 = [];
Female_data_84 = [];

Male_data_56 = [];
Male_data_57 = [];
Male_data_58 = [];
Male_data_59 = [];
Male_data_60 = [];
Male_data_61 = [];
Male_data_62 = [];
Male_data_63 = [];
Male_data_64 = [];
Male_data_65 = [];
Male_data_66 = [];
Male_data_67 = [];
Male_data_68 = [];
Male_data_69 = [];
Male_data_70 = [];
Male_data_71 = [];
Male_data_72 = [];
Male_data_73 = [];
Male_data_74 = [];
Male_data_75 = [];
Male_data_76 = [];
Male_data_77 = [];
Male_data_78 = [];
Male_data_79 = [];
Male_data_80 = [];
Male_data_81 = [];
Male_data_82 = [];
Male_data_83 = [];
Male_data_84 = [];

% For Female
[M N] = size(Female_data); % No.	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Female_data(i,2) == 56
        Female_data_56 = [Female_data_56; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 57
        Female_data_57 = [Female_data_57; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 58
        Female_data_58 = [Female_data_58; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 59
        Female_data_59 = [Female_data_59; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 60
        Female_data_60 = [Female_data_60; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 61
        Female_data_61 = [Female_data_61; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 62
        Female_data_62 = [Female_data_62; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 63
        Female_data_63 = [Female_data_63; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 64
        Female_data_64 = [Female_data_64; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 65
        Female_data_65 = [Female_data_65; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 66
        Female_data_66 = [Female_data_66; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 67
        Female_data_67 = [Female_data_67; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 68
        Female_data_68 = [Female_data_68; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 69
        Female_data_69 = [Female_data_69; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 70
        Female_data_70 = [Female_data_70; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 71
        Female_data_71 = [Female_data_71; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 72
        Female_data_72 = [Female_data_72; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 73
        Female_data_73 = [Female_data_73; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 74
        Female_data_74 = [Female_data_74; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 75
        Female_data_75 = [Female_data_75; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 76
        Female_data_76 = [Female_data_76; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 77
        Female_data_77 = [Female_data_77; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 78
        Female_data_78 = [Female_data_78; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 79
        Female_data_79 = [Female_data_79; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 80
        Female_data_80 = [Female_data_80; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 81
        Female_data_81 = [Female_data_81; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 82
        Female_data_82 = [Female_data_82; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 83
        Female_data_83 = [Female_data_83; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 84
        Female_data_84 = [Female_data_84; Female_data(i,3) Female_data(i,4)];
    end
end

% For Male
[M N] = size(Male_data); % No.	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Male_data(i,2) == 56
        Male_data_56 = [Male_data_56; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 57
        Male_data_57 = [Male_data_57; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 58
        Male_data_58 = [Male_data_58; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 59
        Male_data_59 = [Male_data_59; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 60
        Male_data_60 = [Male_data_60; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 61
        Male_data_61 = [Male_data_61; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 62
        Male_data_62 = [Male_data_62; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 63
        Male_data_63 = [Male_data_63; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 64
        Male_data_64 = [Male_data_64; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 65
        Male_data_65 = [Male_data_65; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 66
        Male_data_66 = [Male_data_66; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 67
        Male_data_67 = [Male_data_67; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 68
        Male_data_68 = [Male_data_68; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 69
        Male_data_69 = [Male_data_69; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 70
        Male_data_70 = [Male_data_70; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 71
        Male_data_71 = [Male_data_71; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 72
        Male_data_72 = [Male_data_72; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 73
        Male_data_73 = [Male_data_73; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 74
        Male_data_74 = [Male_data_74; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 75
        Male_data_75 = [Male_data_75; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 76
        Male_data_76 = [Male_data_76; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 77
        Male_data_77 = [Male_data_77; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 78
        Male_data_78 = [Male_data_78; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 79
        Male_data_79 = [Male_data_79; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 80
        Male_data_80 = [Male_data_80; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 81
        Male_data_81 = [Male_data_81; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 82
        Male_data_82 = [Male_data_82; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 83
        Male_data_83 = [Male_data_83; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 84
        Male_data_84 = [Male_data_84; Male_data(i,3) Male_data(i,4)];
    end
end

% We calculate the coefficients of a and b in 1=a/Weight+b*Height for this
% dataset
Age_53_Cyprus = 56:84;
Proportion_Ht_53_Cyprus_Female = [];
Proportion_Ht_53_Cyprus_Male = [];
Coefficient_b_Female_1_53_Cyprus = [0 0 0 0 0 0 Coefficient_b_Female_1_53_Cyprus];
Coefficient_b_Male_1_53_Cyprus = [0 0 0 0 0 0 Coefficient_b_Male_1_53_Cyprus];

% For Female
% Aged 56
Y_data = Female_data_56(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_53_Cyprus(7);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_53_Cyprus_Female = [Proportion_Ht_53_Cyprus_Female My_Number/M*100];
% Aged 57
Y_data = Female_data_57(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_53_Cyprus(8);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_53_Cyprus_Female = [Proportion_Ht_53_Cyprus_Female My_Number/M*100];
% Aged 58
Y_data = Female_data_58(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_53_Cyprus(9);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_53_Cyprus_Female = [Proportion_Ht_53_Cyprus_Female My_Number/M*100];
% Aged 59
Y_data = Female_data_59(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_53_Cyprus(10);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_53_Cyprus_Female = [Proportion_Ht_53_Cyprus_Female My_Number/M*100];
% Aged 60
Y_data = Female_data_60(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_53_Cyprus(11);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_53_Cyprus_Female = [Proportion_Ht_53_Cyprus_Female My_Number/M*100];
% Aged 61
Y_data = Female_data_61(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_53_Cyprus(12);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_53_Cyprus_Female = [Proportion_Ht_53_Cyprus_Female My_Number/M*100];
% Aged 62
Y_data = Female_data_62(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_53_Cyprus(13);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_53_Cyprus_Female = [Proportion_Ht_53_Cyprus_Female My_Number/M*100];
% Aged 63
Y_data = Female_data_63(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_53_Cyprus(14);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_53_Cyprus_Female = [Proportion_Ht_53_Cyprus_Female My_Number/M*100];
% Aged 64
Y_data = Female_data_64(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_53_Cyprus(15);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_53_Cyprus_Female = [Proportion_Ht_53_Cyprus_Female My_Number/M*100];
% Aged 65
Y_data = Female_data_65(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_53_Cyprus(16);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_53_Cyprus_Female = [Proportion_Ht_53_Cyprus_Female My_Number/M*100];
% Aged 66
Y_data = Female_data_66(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_53_Cyprus(17);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_53_Cyprus_Female = [Proportion_Ht_53_Cyprus_Female My_Number/M*100];
% Aged 67
Y_data = Female_data_67(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_53_Cyprus(18);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_53_Cyprus_Female = [Proportion_Ht_53_Cyprus_Female My_Number/M*100];
% Aged 68
Y_data = Female_data_68(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_53_Cyprus(19);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_53_Cyprus_Female = [Proportion_Ht_53_Cyprus_Female My_Number/M*100];
% Aged 69
Y_data = Female_data_69(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_53_Cyprus(20);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_53_Cyprus_Female = [Proportion_Ht_53_Cyprus_Female My_Number/M*100];
% Aged 70
Y_data = Female_data_70(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_53_Cyprus(21);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_53_Cyprus_Female = [Proportion_Ht_53_Cyprus_Female My_Number/M*100];
% Aged 71
Y_data = Female_data_71(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_53_Cyprus(22);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_53_Cyprus_Female = [Proportion_Ht_53_Cyprus_Female My_Number/M*100];
% Aged 72
Y_data = Female_data_72(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_53_Cyprus(23);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_53_Cyprus_Female = [Proportion_Ht_53_Cyprus_Female My_Number/M*100];
% Aged 73
Y_data = Female_data_73(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_53_Cyprus(24);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_53_Cyprus_Female = [Proportion_Ht_53_Cyprus_Female My_Number/M*100];
% Aged 74
Y_data = Female_data_74(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_53_Cyprus(25);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_53_Cyprus_Female = [Proportion_Ht_53_Cyprus_Female My_Number/M*100];
% Aged 75
Y_data = Female_data_75(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_53_Cyprus(26);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_53_Cyprus_Female = [Proportion_Ht_53_Cyprus_Female My_Number/M*100];
% Aged 76
Y_data = Female_data_76(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_53_Cyprus(27);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_53_Cyprus_Female = [Proportion_Ht_53_Cyprus_Female My_Number/M*100];
% Aged 77
Y_data = Female_data_77(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_53_Cyprus(28);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_53_Cyprus_Female = [Proportion_Ht_53_Cyprus_Female My_Number/M*100];
% Aged 78
Y_data = Female_data_78(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_53_Cyprus(29);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_53_Cyprus_Female = [Proportion_Ht_53_Cyprus_Female My_Number/M*100];
% Aged 79
Y_data = Female_data_79(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_53_Cyprus(30);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_53_Cyprus_Female = [Proportion_Ht_53_Cyprus_Female My_Number/M*100];
% Aged 80
Y_data = Female_data_80(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_53_Cyprus(31);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_53_Cyprus_Female = [Proportion_Ht_53_Cyprus_Female My_Number/M*100];
% Aged 81
Y_data = Female_data_81(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_53_Cyprus(32);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_53_Cyprus_Female = [Proportion_Ht_53_Cyprus_Female My_Number/M*100];
% Aged 82
Y_data = Female_data_82(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_53_Cyprus(33);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_53_Cyprus_Female = [Proportion_Ht_53_Cyprus_Female My_Number/M*100];
% Aged 83
Y_data = Female_data_83(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_53_Cyprus(34);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_53_Cyprus_Female = [Proportion_Ht_53_Cyprus_Female My_Number/M*100];
% Aged 84
Y_data = Female_data_84(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_53_Cyprus(35);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_53_Cyprus_Female = [Proportion_Ht_53_Cyprus_Female My_Number/M*100];

% For Male
% Aged 56
Y_data = Male_data_56(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_53_Cyprus(7);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_53_Cyprus_Male = [Proportion_Ht_53_Cyprus_Male My_Number/M*100];
% Aged 57
Y_data = Male_data_57(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_53_Cyprus(8);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_53_Cyprus_Male = [Proportion_Ht_53_Cyprus_Male My_Number/M*100];
% Aged 58
Y_data = Male_data_58(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_53_Cyprus(9);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_53_Cyprus_Male = [Proportion_Ht_53_Cyprus_Male My_Number/M*100];
% Aged 59
Y_data = Male_data_59(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_53_Cyprus(10);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_53_Cyprus_Male = [Proportion_Ht_53_Cyprus_Male My_Number/M*100];
% Aged 60
Y_data = Male_data_60(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_53_Cyprus(11);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_53_Cyprus_Male = [Proportion_Ht_53_Cyprus_Male My_Number/M*100];
% Aged 61
Y_data = Male_data_61(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_53_Cyprus(12);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_53_Cyprus_Male = [Proportion_Ht_53_Cyprus_Male My_Number/M*100];
% Aged 62
Y_data = Male_data_62(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_53_Cyprus(13);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_53_Cyprus_Male = [Proportion_Ht_53_Cyprus_Male My_Number/M*100];
% Aged 63
Y_data = Male_data_63(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_53_Cyprus(14);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_53_Cyprus_Male = [Proportion_Ht_53_Cyprus_Male My_Number/M*100];
% Aged 64
Y_data = Male_data_64(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_53_Cyprus(15);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_53_Cyprus_Male = [Proportion_Ht_53_Cyprus_Male My_Number/M*100];
% Aged 65
Y_data = Male_data_65(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_53_Cyprus(16);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_53_Cyprus_Male = [Proportion_Ht_53_Cyprus_Male My_Number/M*100];
% Aged 66
Y_data = Male_data_66(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_53_Cyprus(17);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_53_Cyprus_Male = [Proportion_Ht_53_Cyprus_Male My_Number/M*100];
% Aged 67
Y_data = Male_data_67(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_53_Cyprus(18);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_53_Cyprus_Male = [Proportion_Ht_53_Cyprus_Male My_Number/M*100];
% Aged 68
Y_data = Male_data_68(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_53_Cyprus(19);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_53_Cyprus_Male = [Proportion_Ht_53_Cyprus_Male My_Number/M*100];
% Aged 69
Y_data = Male_data_69(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_53_Cyprus(20);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_53_Cyprus_Male = [Proportion_Ht_53_Cyprus_Male My_Number/M*100];
% Aged 70
Y_data = Male_data_70(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_53_Cyprus(21);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_53_Cyprus_Male = [Proportion_Ht_53_Cyprus_Male My_Number/M*100];
% Aged 71
Y_data = Male_data_71(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_53_Cyprus(22);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_53_Cyprus_Male = [Proportion_Ht_53_Cyprus_Male My_Number/M*100];
% Aged 72
Y_data = Male_data_72(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_53_Cyprus(23);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_53_Cyprus_Male = [Proportion_Ht_53_Cyprus_Male My_Number/M*100];
% Aged 73
Y_data = Male_data_73(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_53_Cyprus(24);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_53_Cyprus_Male = [Proportion_Ht_53_Cyprus_Male My_Number/M*100];
% Aged 74
Y_data = Male_data_74(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_53_Cyprus(25);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_53_Cyprus_Male = [Proportion_Ht_53_Cyprus_Male My_Number/M*100];
% Aged 75
Y_data = Male_data_75(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_53_Cyprus(26);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_53_Cyprus_Male = [Proportion_Ht_53_Cyprus_Male My_Number/M*100];
% Aged 76
Y_data = Male_data_76(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_53_Cyprus(27);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_53_Cyprus_Male = [Proportion_Ht_53_Cyprus_Male My_Number/M*100];
% Aged 77
Y_data = Male_data_77(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_53_Cyprus(28);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_53_Cyprus_Male = [Proportion_Ht_53_Cyprus_Male My_Number/M*100];
% Aged 78
Y_data = Male_data_78(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_53_Cyprus(29);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_53_Cyprus_Male = [Proportion_Ht_53_Cyprus_Male My_Number/M*100];
% Aged 79
Y_data = Male_data_79(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_53_Cyprus(30);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_53_Cyprus_Male = [Proportion_Ht_53_Cyprus_Male My_Number/M*100];
% Aged 80
Y_data = Male_data_80(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_53_Cyprus(31);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_53_Cyprus_Male = [Proportion_Ht_53_Cyprus_Male My_Number/M*100];
% Aged 81
Y_data = Male_data_81(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_53_Cyprus(32);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_53_Cyprus_Male = [Proportion_Ht_53_Cyprus_Male My_Number/M*100];
% Aged 82
Y_data = Male_data_82(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_53_Cyprus(33);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_53_Cyprus_Male = [Proportion_Ht_53_Cyprus_Male My_Number/M*100];
% Aged 83
Y_data = Male_data_83(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_53_Cyprus(34);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_53_Cyprus_Male = [Proportion_Ht_53_Cyprus_Male My_Number/M*100];
% Aged 84
Y_data = Male_data_84(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_53_Cyprus(35);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_53_Cyprus_Male = [Proportion_Ht_53_Cyprus_Male My_Number/M*100];

%% 51_Bulgaria
% Loading the data
Female_data = xlsread('51_Bulgaria.xlsx','Female');
Male_data = xlsread('51_Bulgaria.xlsx','Male');
% Grouping by age
Female_data_51 = [];
Female_data_52 = [];
Female_data_53 = [];
Female_data_54 = [];
Female_data_55 = [];
Female_data_56 = [];
Female_data_57 = [];
Female_data_58 = [];
Female_data_59 = [];
Female_data_60 = [];
Female_data_61 = [];
Female_data_62 = [];
Female_data_63 = [];
Female_data_64 = [];
Female_data_65 = [];
Female_data_66 = [];
Female_data_67 = [];
Female_data_68 = [];
Female_data_69 = [];
Female_data_70 = [];
Female_data_71 = [];
Female_data_72 = [];
Female_data_73 = [];
Female_data_74 = [];
Female_data_75 = [];
Female_data_76 = [];
Female_data_77 = [];
Female_data_78 = [];
Female_data_79 = [];
Female_data_80 = [];
Female_data_81 = [];
Female_data_82 = [];
Female_data_83 = [];
Female_data_84 = [];
Female_data_85 = [];

Male_data_51 = [];
Male_data_52 = [];
Male_data_53 = [];
Male_data_54 = [];
Male_data_55 = [];
Male_data_56 = [];
Male_data_57 = [];
Male_data_58 = [];
Male_data_59 = [];
Male_data_60 = [];
Male_data_61 = [];
Male_data_62 = [];
Male_data_63 = [];
Male_data_64 = [];
Male_data_65 = [];
Male_data_66 = [];
Male_data_67 = [];
Male_data_68 = [];
Male_data_69 = [];
Male_data_70 = [];
Male_data_71 = [];
Male_data_72 = [];
Male_data_73 = [];
Male_data_74 = [];
Male_data_75 = [];
Male_data_76 = [];
Male_data_77 = [];
Male_data_78 = [];
Male_data_79 = [];
Male_data_80 = [];
Male_data_81 = [];
Male_data_82 = [];
Male_data_83 = [];
Male_data_84 = [];
Male_data_85 = [];

% For Female
[M N] = size(Female_data); % No.	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Female_data(i,2) == 51
        Female_data_51 = [Female_data_51; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 52
        Female_data_52 = [Female_data_52; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 53
        Female_data_53 = [Female_data_53; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 54
        Female_data_54 = [Female_data_54; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 55
        Female_data_55 = [Female_data_55; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 56
        Female_data_56 = [Female_data_56; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 57
        Female_data_57 = [Female_data_57; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 58
        Female_data_58 = [Female_data_58; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 59
        Female_data_59 = [Female_data_59; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 60
        Female_data_60 = [Female_data_60; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 61
        Female_data_61 = [Female_data_61; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 62
        Female_data_62 = [Female_data_62; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 63
        Female_data_63 = [Female_data_63; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 64
        Female_data_64 = [Female_data_64; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 65
        Female_data_65 = [Female_data_65; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 66
        Female_data_66 = [Female_data_66; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 67
        Female_data_67 = [Female_data_67; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 68
        Female_data_68 = [Female_data_68; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 69
        Female_data_69 = [Female_data_69; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 70
        Female_data_70 = [Female_data_70; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 71
        Female_data_71 = [Female_data_71; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 72
        Female_data_72 = [Female_data_72; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 73
        Female_data_73 = [Female_data_73; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 74
        Female_data_74 = [Female_data_74; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 75
        Female_data_75 = [Female_data_75; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 76
        Female_data_76 = [Female_data_76; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 77
        Female_data_77 = [Female_data_77; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 78
        Female_data_78 = [Female_data_78; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 79
        Female_data_79 = [Female_data_79; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 80
        Female_data_80 = [Female_data_80; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 81
        Female_data_81 = [Female_data_81; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 82
        Female_data_82 = [Female_data_82; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 83
        Female_data_83 = [Female_data_83; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 84
        Female_data_84 = [Female_data_84; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 85
        Female_data_85 = [Female_data_85; Female_data(i,3) Female_data(i,4)];
    end
end

% For Male
[M N] = size(Male_data); % No.	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Male_data(i,2) == 51
        Male_data_51 = [Male_data_51; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 52
        Male_data_52 = [Male_data_52; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 53
        Male_data_53 = [Male_data_53; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 54
        Male_data_54 = [Male_data_54; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 55
        Male_data_55 = [Male_data_55; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 56
        Male_data_56 = [Male_data_56; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 57
        Male_data_57 = [Male_data_57; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 58
        Male_data_58 = [Male_data_58; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 59
        Male_data_59 = [Male_data_59; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 60
        Male_data_60 = [Male_data_60; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 61
        Male_data_61 = [Male_data_61; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 62
        Male_data_62 = [Male_data_62; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 63
        Male_data_63 = [Male_data_63; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 64
        Male_data_64 = [Male_data_64; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 65
        Male_data_65 = [Male_data_65; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 66
        Male_data_66 = [Male_data_66; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 67
        Male_data_67 = [Male_data_67; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 68
        Male_data_68 = [Male_data_68; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 69
        Male_data_69 = [Male_data_69; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 70
        Male_data_70 = [Male_data_70; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 71
        Male_data_71 = [Male_data_71; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 72
        Male_data_72 = [Male_data_72; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 73
        Male_data_73 = [Male_data_73; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 74
        Male_data_74 = [Male_data_74; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 75
        Male_data_75 = [Male_data_75; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 76
        Male_data_76 = [Male_data_76; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 77
        Male_data_77 = [Male_data_77; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 78
        Male_data_78 = [Male_data_78; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 79
        Male_data_79 = [Male_data_79; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 80
        Male_data_80 = [Male_data_80; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 81
        Male_data_81 = [Male_data_81; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 82
        Male_data_82 = [Male_data_82; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 83
        Male_data_83 = [Male_data_83; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 84
        Male_data_84 = [Male_data_84; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 85
        Male_data_85 = [Male_data_85; Male_data(i,3) Male_data(i,4)];
    end
end

% We calculate the coefficients of a and b in 1=a/Weight+b*Height for this
% dataset
Age_51_Bulgaria = 51:85;
Proportion_Ht_51_Bulgaria_Female = [];
Proportion_Ht_51_Bulgaria_Male = [];
Coefficient_b_Female_1_51_Bulgaria = [0 Coefficient_b_Female_1_51_Bulgaria];
Coefficient_b_Male_1_51_Bulgaria = [0 Coefficient_b_Male_1_51_Bulgaria];

% For Female
% Aged 51
Y_data = Female_data_51(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_51_Bulgaria(2);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_51_Bulgaria_Female = [Proportion_Ht_51_Bulgaria_Female My_Number/M*100];
% Aged 52
Y_data = Female_data_52(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_51_Bulgaria(3);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_51_Bulgaria_Female = [Proportion_Ht_51_Bulgaria_Female My_Number/M*100];
% Aged 53
Y_data = Female_data_53(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_51_Bulgaria(4);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_51_Bulgaria_Female = [Proportion_Ht_51_Bulgaria_Female My_Number/M*100];
% Aged 54
Y_data = Female_data_54(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_51_Bulgaria(5);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_51_Bulgaria_Female = [Proportion_Ht_51_Bulgaria_Female My_Number/M*100];
% Aged 55
Y_data = Female_data_55(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_51_Bulgaria(6);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_51_Bulgaria_Female = [Proportion_Ht_51_Bulgaria_Female My_Number/M*100];
% Aged 56
Y_data = Female_data_56(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_51_Bulgaria(7);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_51_Bulgaria_Female = [Proportion_Ht_51_Bulgaria_Female My_Number/M*100];
% Aged 57
Y_data = Female_data_57(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_51_Bulgaria(8);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_51_Bulgaria_Female = [Proportion_Ht_51_Bulgaria_Female My_Number/M*100];
% Aged 58
Y_data = Female_data_58(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_51_Bulgaria(9);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_51_Bulgaria_Female = [Proportion_Ht_51_Bulgaria_Female My_Number/M*100];
% Aged 59
Y_data = Female_data_59(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_51_Bulgaria(10);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_51_Bulgaria_Female = [Proportion_Ht_51_Bulgaria_Female My_Number/M*100];
% Aged 60
Y_data = Female_data_60(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_51_Bulgaria(11);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_51_Bulgaria_Female = [Proportion_Ht_51_Bulgaria_Female My_Number/M*100];
% Aged 61
Y_data = Female_data_61(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_51_Bulgaria(12);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_51_Bulgaria_Female = [Proportion_Ht_51_Bulgaria_Female My_Number/M*100];
% Aged 62
Y_data = Female_data_62(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_51_Bulgaria(13);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_51_Bulgaria_Female = [Proportion_Ht_51_Bulgaria_Female My_Number/M*100];
% Aged 63
Y_data = Female_data_63(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_51_Bulgaria(14);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_51_Bulgaria_Female = [Proportion_Ht_51_Bulgaria_Female My_Number/M*100];
% Aged 64
Y_data = Female_data_64(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_51_Bulgaria(15);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_51_Bulgaria_Female = [Proportion_Ht_51_Bulgaria_Female My_Number/M*100];
% Aged 65
Y_data = Female_data_65(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_51_Bulgaria(16);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_51_Bulgaria_Female = [Proportion_Ht_51_Bulgaria_Female My_Number/M*100];
% Aged 66
Y_data = Female_data_66(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_51_Bulgaria(17);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_51_Bulgaria_Female = [Proportion_Ht_51_Bulgaria_Female My_Number/M*100];
% Aged 67
Y_data = Female_data_67(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_51_Bulgaria(18);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_51_Bulgaria_Female = [Proportion_Ht_51_Bulgaria_Female My_Number/M*100];
% Aged 68
Y_data = Female_data_68(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_51_Bulgaria(19);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_51_Bulgaria_Female = [Proportion_Ht_51_Bulgaria_Female My_Number/M*100];
% Aged 69
Y_data = Female_data_69(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_51_Bulgaria(20);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_51_Bulgaria_Female = [Proportion_Ht_51_Bulgaria_Female My_Number/M*100];
% Aged 70
Y_data = Female_data_70(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_51_Bulgaria(21);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_51_Bulgaria_Female = [Proportion_Ht_51_Bulgaria_Female My_Number/M*100];
% Aged 71
Y_data = Female_data_71(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_51_Bulgaria(22);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_51_Bulgaria_Female = [Proportion_Ht_51_Bulgaria_Female My_Number/M*100];
% Aged 72
Y_data = Female_data_72(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_51_Bulgaria(23);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_51_Bulgaria_Female = [Proportion_Ht_51_Bulgaria_Female My_Number/M*100];
% Aged 73
Y_data = Female_data_73(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_51_Bulgaria(24);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_51_Bulgaria_Female = [Proportion_Ht_51_Bulgaria_Female My_Number/M*100];
% Aged 74
Y_data = Female_data_74(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_51_Bulgaria(25);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_51_Bulgaria_Female = [Proportion_Ht_51_Bulgaria_Female My_Number/M*100];
% Aged 75
Y_data = Female_data_75(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_51_Bulgaria(26);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_51_Bulgaria_Female = [Proportion_Ht_51_Bulgaria_Female My_Number/M*100];
% Aged 76
Y_data = Female_data_76(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_51_Bulgaria(27);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_51_Bulgaria_Female = [Proportion_Ht_51_Bulgaria_Female My_Number/M*100];
% Aged 77
Y_data = Female_data_77(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_51_Bulgaria(28);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_51_Bulgaria_Female = [Proportion_Ht_51_Bulgaria_Female My_Number/M*100];
% Aged 78
Y_data = Female_data_78(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_51_Bulgaria(29);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_51_Bulgaria_Female = [Proportion_Ht_51_Bulgaria_Female My_Number/M*100];
% Aged 79
Y_data = Female_data_79(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_51_Bulgaria(30);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_51_Bulgaria_Female = [Proportion_Ht_51_Bulgaria_Female My_Number/M*100];
% Aged 80
Y_data = Female_data_80(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_51_Bulgaria(31);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_51_Bulgaria_Female = [Proportion_Ht_51_Bulgaria_Female My_Number/M*100];
% Aged 81
Y_data = Female_data_81(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_51_Bulgaria(32);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_51_Bulgaria_Female = [Proportion_Ht_51_Bulgaria_Female My_Number/M*100];
% Aged 82
Y_data = Female_data_82(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_51_Bulgaria(33);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_51_Bulgaria_Female = [Proportion_Ht_51_Bulgaria_Female My_Number/M*100];
% Aged 83
Y_data = Female_data_83(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_51_Bulgaria(34);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_51_Bulgaria_Female = [Proportion_Ht_51_Bulgaria_Female My_Number/M*100];
% Aged 84
Y_data = Female_data_84(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_51_Bulgaria(35);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_51_Bulgaria_Female = [Proportion_Ht_51_Bulgaria_Female My_Number/M*100];
% Aged 85
Y_data = Female_data_85(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_51_Bulgaria(36);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_51_Bulgaria_Female = [Proportion_Ht_51_Bulgaria_Female My_Number/M*100];

% For Male
% Aged 51
Y_data = Male_data_51(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_51_Bulgaria(2);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_51_Bulgaria_Male = [Proportion_Ht_51_Bulgaria_Male My_Number/M*100];
% Aged 52
Y_data = Male_data_52(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_51_Bulgaria(3);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_51_Bulgaria_Male = [Proportion_Ht_51_Bulgaria_Male My_Number/M*100];
% Aged 53
Y_data = Male_data_53(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_51_Bulgaria(4);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_51_Bulgaria_Male = [Proportion_Ht_51_Bulgaria_Male My_Number/M*100];
% Aged 54
Y_data = Male_data_54(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_51_Bulgaria(5);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_51_Bulgaria_Male = [Proportion_Ht_51_Bulgaria_Male My_Number/M*100];
% Aged 55
Y_data = Male_data_55(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_51_Bulgaria(6);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_51_Bulgaria_Male = [Proportion_Ht_51_Bulgaria_Male My_Number/M*100];
% Aged 56
Y_data = Male_data_56(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_51_Bulgaria(7);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_51_Bulgaria_Male = [Proportion_Ht_51_Bulgaria_Male My_Number/M*100];
% Aged 57
Y_data = Male_data_57(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_51_Bulgaria(8);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_51_Bulgaria_Male = [Proportion_Ht_51_Bulgaria_Male My_Number/M*100];
% Aged 58
Y_data = Male_data_58(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_51_Bulgaria(9);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_51_Bulgaria_Male = [Proportion_Ht_51_Bulgaria_Male My_Number/M*100];
% Aged 59
Y_data = Male_data_59(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_51_Bulgaria(10);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_51_Bulgaria_Male = [Proportion_Ht_51_Bulgaria_Male My_Number/M*100];
% Aged 60
Y_data = Male_data_60(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_51_Bulgaria(11);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_51_Bulgaria_Male = [Proportion_Ht_51_Bulgaria_Male My_Number/M*100];
% Aged 61
Y_data = Male_data_61(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_51_Bulgaria(12);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_51_Bulgaria_Male = [Proportion_Ht_51_Bulgaria_Male My_Number/M*100];
% Aged 62
Y_data = Male_data_62(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_51_Bulgaria(13);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_51_Bulgaria_Male = [Proportion_Ht_51_Bulgaria_Male My_Number/M*100];
% Aged 63
Y_data = Male_data_63(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_51_Bulgaria(14);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_51_Bulgaria_Male = [Proportion_Ht_51_Bulgaria_Male My_Number/M*100];
% Aged 64
Y_data = Male_data_64(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_51_Bulgaria(15);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_51_Bulgaria_Male = [Proportion_Ht_51_Bulgaria_Male My_Number/M*100];
% Aged 65
Y_data = Male_data_65(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_51_Bulgaria(16);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_51_Bulgaria_Male = [Proportion_Ht_51_Bulgaria_Male My_Number/M*100];
% Aged 66
Y_data = Male_data_66(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_51_Bulgaria(17);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_51_Bulgaria_Male = [Proportion_Ht_51_Bulgaria_Male My_Number/M*100];
% Aged 67
Y_data = Male_data_67(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_51_Bulgaria(18);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_51_Bulgaria_Male = [Proportion_Ht_51_Bulgaria_Male My_Number/M*100];
% Aged 68
Y_data = Male_data_68(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_51_Bulgaria(19);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_51_Bulgaria_Male = [Proportion_Ht_51_Bulgaria_Male My_Number/M*100];
% Aged 69
Y_data = Male_data_69(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_51_Bulgaria(20);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_51_Bulgaria_Male = [Proportion_Ht_51_Bulgaria_Male My_Number/M*100];
% Aged 70
Y_data = Male_data_70(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_51_Bulgaria(21);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_51_Bulgaria_Male = [Proportion_Ht_51_Bulgaria_Male My_Number/M*100];
% Aged 71
Y_data = Male_data_71(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_51_Bulgaria(22);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_51_Bulgaria_Male = [Proportion_Ht_51_Bulgaria_Male My_Number/M*100];
% Aged 72
Y_data = Male_data_72(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_51_Bulgaria(23);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_51_Bulgaria_Male = [Proportion_Ht_51_Bulgaria_Male My_Number/M*100];
% Aged 73
Y_data = Male_data_73(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_51_Bulgaria(24);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_51_Bulgaria_Male = [Proportion_Ht_51_Bulgaria_Male My_Number/M*100];
% Aged 74
Y_data = Male_data_74(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_51_Bulgaria(25);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_51_Bulgaria_Male = [Proportion_Ht_51_Bulgaria_Male My_Number/M*100];
% Aged 75
Y_data = Male_data_75(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_51_Bulgaria(26);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_51_Bulgaria_Male = [Proportion_Ht_51_Bulgaria_Male My_Number/M*100];
% Aged 76
Y_data = Male_data_76(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_51_Bulgaria(27);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_51_Bulgaria_Male = [Proportion_Ht_51_Bulgaria_Male My_Number/M*100];
% Aged 77
Y_data = Male_data_77(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_51_Bulgaria(28);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_51_Bulgaria_Male = [Proportion_Ht_51_Bulgaria_Male My_Number/M*100];
% Aged 78
Y_data = Male_data_78(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_51_Bulgaria(29);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_51_Bulgaria_Male = [Proportion_Ht_51_Bulgaria_Male My_Number/M*100];
% Aged 79
Y_data = Male_data_79(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_51_Bulgaria(30);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_51_Bulgaria_Male = [Proportion_Ht_51_Bulgaria_Male My_Number/M*100];
% Aged 80
Y_data = Male_data_80(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_51_Bulgaria(31);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_51_Bulgaria_Male = [Proportion_Ht_51_Bulgaria_Male My_Number/M*100];
% Aged 81
Y_data = Male_data_81(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_51_Bulgaria(32);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_51_Bulgaria_Male = [Proportion_Ht_51_Bulgaria_Male My_Number/M*100];
% Aged 82
Y_data = Male_data_82(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_51_Bulgaria(33);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_51_Bulgaria_Male = [Proportion_Ht_51_Bulgaria_Male My_Number/M*100];
% Aged 83
Y_data = Male_data_83(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_51_Bulgaria(34);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_51_Bulgaria_Male = [Proportion_Ht_51_Bulgaria_Male My_Number/M*100];
% Aged 84
Y_data = Male_data_84(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_51_Bulgaria(35);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_51_Bulgaria_Male = [Proportion_Ht_51_Bulgaria_Male My_Number/M*100];
% Aged 85
Y_data = Male_data_85(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_51_Bulgaria(36);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_51_Bulgaria_Male = [Proportion_Ht_51_Bulgaria_Male My_Number/M*100];

%% 47_Croatia
% Loading the data
Female_data = xlsread('47_Croatia.xlsx','Female');
Male_data = xlsread('47_Croatia.xlsx','Male');
% Grouping by age
Female_data_51 = [];
Female_data_52 = [];
Female_data_53 = [];
Female_data_54 = [];
Female_data_55 = [];
Female_data_56 = [];
Female_data_57 = [];
Female_data_58 = [];
Female_data_59 = [];
Female_data_60 = [];
Female_data_61 = [];
Female_data_62 = [];
Female_data_63 = [];
Female_data_64 = [];
Female_data_65 = [];
Female_data_66 = [];
Female_data_67 = [];
Female_data_68 = [];
Female_data_69 = [];
Female_data_70 = [];
Female_data_71 = [];
Female_data_72 = [];
Female_data_73 = [];
Female_data_74 = [];
Female_data_75 = [];
Female_data_76 = [];
Female_data_77 = [];
Female_data_78 = [];
Female_data_79 = [];
Female_data_80 = [];
Female_data_81 = [];
Female_data_82 = [];
Female_data_83 = [];
Female_data_84 = [];
Female_data_85 = [];
Female_data_86 = [];
Female_data_87 = [];
Female_data_88 = [];
Female_data_89 = [];

Male_data_51 = [];
Male_data_52 = [];
Male_data_53 = [];
Male_data_54 = [];
Male_data_55 = [];
Male_data_56 = [];
Male_data_57 = [];
Male_data_58 = [];
Male_data_59 = [];
Male_data_60 = [];
Male_data_61 = [];
Male_data_62 = [];
Male_data_63 = [];
Male_data_64 = [];
Male_data_65 = [];
Male_data_66 = [];
Male_data_67 = [];
Male_data_68 = [];
Male_data_69 = [];
Male_data_70 = [];
Male_data_71 = [];
Male_data_72 = [];
Male_data_73 = [];
Male_data_74 = [];
Male_data_75 = [];
Male_data_76 = [];
Male_data_77 = [];
Male_data_78 = [];
Male_data_79 = [];
Male_data_80 = [];
Male_data_81 = [];
Male_data_82 = [];
Male_data_83 = [];
Male_data_84 = [];
Male_data_85 = [];
Male_data_86 = [];
Male_data_87 = [];
Male_data_88 = [];
Male_data_89 = [];

% For Female
[M N] = size(Female_data); % No.	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Female_data(i,2) == 51
        Female_data_51 = [Female_data_51; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 52
        Female_data_52 = [Female_data_52; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 53
        Female_data_53 = [Female_data_53; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 54
        Female_data_54 = [Female_data_54; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 55
        Female_data_55 = [Female_data_55; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 56
        Female_data_56 = [Female_data_56; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 57
        Female_data_57 = [Female_data_57; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 58
        Female_data_58 = [Female_data_58; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 59
        Female_data_59 = [Female_data_59; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 60
        Female_data_60 = [Female_data_60; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 61
        Female_data_61 = [Female_data_61; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 62
        Female_data_62 = [Female_data_62; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 63
        Female_data_63 = [Female_data_63; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 64
        Female_data_64 = [Female_data_64; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 65
        Female_data_65 = [Female_data_65; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 66
        Female_data_66 = [Female_data_66; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 67
        Female_data_67 = [Female_data_67; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 68
        Female_data_68 = [Female_data_68; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 69
        Female_data_69 = [Female_data_69; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 70
        Female_data_70 = [Female_data_70; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 71
        Female_data_71 = [Female_data_71; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 72
        Female_data_72 = [Female_data_72; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 73
        Female_data_73 = [Female_data_73; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 74
        Female_data_74 = [Female_data_74; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 75
        Female_data_75 = [Female_data_75; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 76
        Female_data_76 = [Female_data_76; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 77
        Female_data_77 = [Female_data_77; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 78
        Female_data_78 = [Female_data_78; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 79
        Female_data_79 = [Female_data_79; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 80
        Female_data_80 = [Female_data_80; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 81
        Female_data_81 = [Female_data_81; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 82
        Female_data_82 = [Female_data_82; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 83
        Female_data_83 = [Female_data_83; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 84
        Female_data_84 = [Female_data_84; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 85
        Female_data_85 = [Female_data_85; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 86
        Female_data_86 = [Female_data_86; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 87
        Female_data_87 = [Female_data_87; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 88
        Female_data_88 = [Female_data_88; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 89
        Female_data_89 = [Female_data_89; Female_data(i,3) Female_data(i,4)];
    end
end

% For Male
[M N] = size(Male_data); % No.	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Male_data(i,2) == 51
        Male_data_51 = [Male_data_51; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 52
        Male_data_52 = [Male_data_52; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 53
        Male_data_53 = [Male_data_53; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 54
        Male_data_54 = [Male_data_54; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 55
        Male_data_55 = [Male_data_55; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 56
        Male_data_56 = [Male_data_56; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 57
        Male_data_57 = [Male_data_57; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 58
        Male_data_58 = [Male_data_58; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 59
        Male_data_59 = [Male_data_59; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 60
        Male_data_60 = [Male_data_60; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 61
        Male_data_61 = [Male_data_61; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 62
        Male_data_62 = [Male_data_62; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 63
        Male_data_63 = [Male_data_63; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 64
        Male_data_64 = [Male_data_64; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 65
        Male_data_65 = [Male_data_65; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 66
        Male_data_66 = [Male_data_66; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 67
        Male_data_67 = [Male_data_67; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 68
        Male_data_68 = [Male_data_68; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 69
        Male_data_69 = [Male_data_69; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 70
        Male_data_70 = [Male_data_70; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 71
        Male_data_71 = [Male_data_71; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 72
        Male_data_72 = [Male_data_72; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 73
        Male_data_73 = [Male_data_73; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 74
        Male_data_74 = [Male_data_74; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 75
        Male_data_75 = [Male_data_75; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 76
        Male_data_76 = [Male_data_76; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 77
        Male_data_77 = [Male_data_77; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 78
        Male_data_78 = [Male_data_78; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 79
        Male_data_79 = [Male_data_79; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 80
        Male_data_80 = [Male_data_80; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 81
        Male_data_81 = [Male_data_81; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 82
        Male_data_82 = [Male_data_82; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 83
        Male_data_83 = [Male_data_83; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 84
        Male_data_84 = [Male_data_84; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 85
        Male_data_85 = [Male_data_85; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 86
        Male_data_86 = [Male_data_86; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 87
        Male_data_87 = [Male_data_87; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 88
        Male_data_88 = [Male_data_88; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 89
        Male_data_89 = [Male_data_89; Male_data(i,3) Male_data(i,4)];
    end
end

% We calculate the coefficients of a and b in 1=a/Weight+b*Height for this
% dataset
Age_47_Croatia = 51:89;
Proportion_Ht_47_Croatia_Female = [];
Proportion_Ht_47_Croatia_Male = [];
Coefficient_b_Female_1_47_Croatia = [0 Coefficient_b_Female_1_47_Croatia];
Coefficient_b_Male_1_47_Croatia = [0 Coefficient_b_Male_1_47_Croatia];

% For Female
% Aged 51
Y_data = Female_data_51(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_47_Croatia(2);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_47_Croatia_Female = [Proportion_Ht_47_Croatia_Female My_Number/M*100];
% Aged 52
Y_data = Female_data_52(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_47_Croatia(3);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_47_Croatia_Female = [Proportion_Ht_47_Croatia_Female My_Number/M*100];
% Aged 53
Y_data = Female_data_53(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_47_Croatia(4);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_47_Croatia_Female = [Proportion_Ht_47_Croatia_Female My_Number/M*100];
% Aged 54
Y_data = Female_data_54(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_47_Croatia(5);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_47_Croatia_Female = [Proportion_Ht_47_Croatia_Female My_Number/M*100];
% Aged 55
Y_data = Female_data_55(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_47_Croatia(6);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_47_Croatia_Female = [Proportion_Ht_47_Croatia_Female My_Number/M*100];
% Aged 56
Y_data = Female_data_56(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_47_Croatia(7);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_47_Croatia_Female = [Proportion_Ht_47_Croatia_Female My_Number/M*100];
% Aged 57
Y_data = Female_data_57(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_47_Croatia(8);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_47_Croatia_Female = [Proportion_Ht_47_Croatia_Female My_Number/M*100];
% Aged 58
Y_data = Female_data_58(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_47_Croatia(9);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_47_Croatia_Female = [Proportion_Ht_47_Croatia_Female My_Number/M*100];
% Aged 59
Y_data = Female_data_59(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_47_Croatia(10);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_47_Croatia_Female = [Proportion_Ht_47_Croatia_Female My_Number/M*100];
% Aged 60
Y_data = Female_data_60(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_47_Croatia(11);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_47_Croatia_Female = [Proportion_Ht_47_Croatia_Female My_Number/M*100];
% Aged 61
Y_data = Female_data_61(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_47_Croatia(12);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_47_Croatia_Female = [Proportion_Ht_47_Croatia_Female My_Number/M*100];
% Aged 62
Y_data = Female_data_62(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_47_Croatia(13);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_47_Croatia_Female = [Proportion_Ht_47_Croatia_Female My_Number/M*100];
% Aged 63
Y_data = Female_data_63(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_47_Croatia(14);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_47_Croatia_Female = [Proportion_Ht_47_Croatia_Female My_Number/M*100];
% Aged 64
Y_data = Female_data_64(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_47_Croatia(15);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_47_Croatia_Female = [Proportion_Ht_47_Croatia_Female My_Number/M*100];
% Aged 65
Y_data = Female_data_65(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_47_Croatia(16);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_47_Croatia_Female = [Proportion_Ht_47_Croatia_Female My_Number/M*100];
% Aged 66
Y_data = Female_data_66(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_47_Croatia(17);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_47_Croatia_Female = [Proportion_Ht_47_Croatia_Female My_Number/M*100];
% Aged 67
Y_data = Female_data_67(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_47_Croatia(18);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_47_Croatia_Female = [Proportion_Ht_47_Croatia_Female My_Number/M*100];
% Aged 68
Y_data = Female_data_68(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_47_Croatia(19);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_47_Croatia_Female = [Proportion_Ht_47_Croatia_Female My_Number/M*100];
% Aged 69
Y_data = Female_data_69(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_47_Croatia(20);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_47_Croatia_Female = [Proportion_Ht_47_Croatia_Female My_Number/M*100];
% Aged 70
Y_data = Female_data_70(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_47_Croatia(21);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_47_Croatia_Female = [Proportion_Ht_47_Croatia_Female My_Number/M*100];
% Aged 71
Y_data = Female_data_71(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_47_Croatia(22);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_47_Croatia_Female = [Proportion_Ht_47_Croatia_Female My_Number/M*100];
% Aged 72
Y_data = Female_data_72(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_47_Croatia(23);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_47_Croatia_Female = [Proportion_Ht_47_Croatia_Female My_Number/M*100];
% Aged 73
Y_data = Female_data_73(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_47_Croatia(24);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_47_Croatia_Female = [Proportion_Ht_47_Croatia_Female My_Number/M*100];
% Aged 74
Y_data = Female_data_74(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_47_Croatia(25);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_47_Croatia_Female = [Proportion_Ht_47_Croatia_Female My_Number/M*100];
% Aged 75
Y_data = Female_data_75(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_47_Croatia(26);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_47_Croatia_Female = [Proportion_Ht_47_Croatia_Female My_Number/M*100];
% Aged 76
Y_data = Female_data_76(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_47_Croatia(27);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_47_Croatia_Female = [Proportion_Ht_47_Croatia_Female My_Number/M*100];
% Aged 77
Y_data = Female_data_77(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_47_Croatia(28);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_47_Croatia_Female = [Proportion_Ht_47_Croatia_Female My_Number/M*100];
% Aged 78
Y_data = Female_data_78(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_47_Croatia(29);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_47_Croatia_Female = [Proportion_Ht_47_Croatia_Female My_Number/M*100];
% Aged 79
Y_data = Female_data_79(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_47_Croatia(30);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_47_Croatia_Female = [Proportion_Ht_47_Croatia_Female My_Number/M*100];
% Aged 80
Y_data = Female_data_80(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_47_Croatia(31);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_47_Croatia_Female = [Proportion_Ht_47_Croatia_Female My_Number/M*100];
% Aged 81
Y_data = Female_data_81(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_47_Croatia(32);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_47_Croatia_Female = [Proportion_Ht_47_Croatia_Female My_Number/M*100];
% Aged 82
Y_data = Female_data_82(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_47_Croatia(33);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_47_Croatia_Female = [Proportion_Ht_47_Croatia_Female My_Number/M*100];
% Aged 83
Y_data = Female_data_83(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_47_Croatia(34);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_47_Croatia_Female = [Proportion_Ht_47_Croatia_Female My_Number/M*100];
% Aged 84
Y_data = Female_data_84(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_47_Croatia(35);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_47_Croatia_Female = [Proportion_Ht_47_Croatia_Female My_Number/M*100];
% Aged 85
Y_data = Female_data_85(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_47_Croatia(36);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_47_Croatia_Female = [Proportion_Ht_47_Croatia_Female My_Number/M*100];
% Aged 86
Y_data = Female_data_86(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_47_Croatia(37);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_47_Croatia_Female = [Proportion_Ht_47_Croatia_Female My_Number/M*100];
% Aged 87
Y_data = Female_data_87(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_47_Croatia(38);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_47_Croatia_Female = [Proportion_Ht_47_Croatia_Female My_Number/M*100];
% Aged 88
Y_data = Female_data_88(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_47_Croatia(39);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_47_Croatia_Female = [Proportion_Ht_47_Croatia_Female My_Number/M*100];
% Aged 89
Y_data = Female_data_89(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_47_Croatia(40);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_47_Croatia_Female = [Proportion_Ht_47_Croatia_Female My_Number/M*100];

% For Male
% Aged 51
Y_data = Male_data_51(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_47_Croatia(2);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_47_Croatia_Male = [Proportion_Ht_47_Croatia_Male My_Number/M*100];
% Aged 52
Y_data = Male_data_52(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_47_Croatia(3);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_47_Croatia_Male = [Proportion_Ht_47_Croatia_Male My_Number/M*100];
% Aged 53
Y_data = Male_data_53(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_47_Croatia(4);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_47_Croatia_Male = [Proportion_Ht_47_Croatia_Male My_Number/M*100];
% Aged 54
Y_data = Male_data_54(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_47_Croatia(5);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_47_Croatia_Male = [Proportion_Ht_47_Croatia_Male My_Number/M*100];
% Aged 55
Y_data = Male_data_55(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_47_Croatia(6);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_47_Croatia_Male = [Proportion_Ht_47_Croatia_Male My_Number/M*100];
% Aged 56
Y_data = Male_data_56(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_47_Croatia(7);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_47_Croatia_Male = [Proportion_Ht_47_Croatia_Male My_Number/M*100];
% Aged 57
Y_data = Male_data_57(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_47_Croatia(8);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_47_Croatia_Male = [Proportion_Ht_47_Croatia_Male My_Number/M*100];
% Aged 58
Y_data = Male_data_58(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_47_Croatia(9);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_47_Croatia_Male = [Proportion_Ht_47_Croatia_Male My_Number/M*100];
% Aged 59
Y_data = Male_data_59(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_47_Croatia(10);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_47_Croatia_Male = [Proportion_Ht_47_Croatia_Male My_Number/M*100];
% Aged 60
Y_data = Male_data_60(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_47_Croatia(11);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_47_Croatia_Male = [Proportion_Ht_47_Croatia_Male My_Number/M*100];
% Aged 61
Y_data = Male_data_61(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_47_Croatia(12);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_47_Croatia_Male = [Proportion_Ht_47_Croatia_Male My_Number/M*100];
% Aged 62
Y_data = Male_data_62(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_47_Croatia(13);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_47_Croatia_Male = [Proportion_Ht_47_Croatia_Male My_Number/M*100];
% Aged 63
Y_data = Male_data_63(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_47_Croatia(14);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_47_Croatia_Male = [Proportion_Ht_47_Croatia_Male My_Number/M*100];
% Aged 64
Y_data = Male_data_64(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_47_Croatia(15);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_47_Croatia_Male = [Proportion_Ht_47_Croatia_Male My_Number/M*100];
% Aged 65
Y_data = Male_data_65(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_47_Croatia(16);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_47_Croatia_Male = [Proportion_Ht_47_Croatia_Male My_Number/M*100];
% Aged 66
Y_data = Male_data_66(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_47_Croatia(17);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_47_Croatia_Male = [Proportion_Ht_47_Croatia_Male My_Number/M*100];
% Aged 67
Y_data = Male_data_67(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_47_Croatia(18);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_47_Croatia_Male = [Proportion_Ht_47_Croatia_Male My_Number/M*100];
% Aged 68
Y_data = Male_data_68(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_47_Croatia(19);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_47_Croatia_Male = [Proportion_Ht_47_Croatia_Male My_Number/M*100];
% Aged 69
Y_data = Male_data_69(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_47_Croatia(20);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_47_Croatia_Male = [Proportion_Ht_47_Croatia_Male My_Number/M*100];
% Aged 70
Y_data = Male_data_70(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_47_Croatia(21);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_47_Croatia_Male = [Proportion_Ht_47_Croatia_Male My_Number/M*100];
% Aged 71
Y_data = Male_data_71(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_47_Croatia(22);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_47_Croatia_Male = [Proportion_Ht_47_Croatia_Male My_Number/M*100];
% Aged 72
Y_data = Male_data_72(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_47_Croatia(23);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_47_Croatia_Male = [Proportion_Ht_47_Croatia_Male My_Number/M*100];
% Aged 73
Y_data = Male_data_73(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_47_Croatia(24);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_47_Croatia_Male = [Proportion_Ht_47_Croatia_Male My_Number/M*100];
% Aged 74
Y_data = Male_data_74(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_47_Croatia(25);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_47_Croatia_Male = [Proportion_Ht_47_Croatia_Male My_Number/M*100];
% Aged 75
Y_data = Male_data_75(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_47_Croatia(26);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_47_Croatia_Male = [Proportion_Ht_47_Croatia_Male My_Number/M*100];
% Aged 76
Y_data = Male_data_76(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_47_Croatia(27);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_47_Croatia_Male = [Proportion_Ht_47_Croatia_Male My_Number/M*100];
% Aged 77
Y_data = Male_data_77(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_47_Croatia(28);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_47_Croatia_Male = [Proportion_Ht_47_Croatia_Male My_Number/M*100];
% Aged 78
Y_data = Male_data_78(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_47_Croatia(29);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_47_Croatia_Male = [Proportion_Ht_47_Croatia_Male My_Number/M*100];
% Aged 79
Y_data = Male_data_79(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_47_Croatia(30);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_47_Croatia_Male = [Proportion_Ht_47_Croatia_Male My_Number/M*100];
% Aged 80
Y_data = Male_data_80(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_47_Croatia(31);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_47_Croatia_Male = [Proportion_Ht_47_Croatia_Male My_Number/M*100];
% Aged 81
Y_data = Male_data_81(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_47_Croatia(32);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_47_Croatia_Male = [Proportion_Ht_47_Croatia_Male My_Number/M*100];
% Aged 82
Y_data = Male_data_82(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_47_Croatia(33);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_47_Croatia_Male = [Proportion_Ht_47_Croatia_Male My_Number/M*100];
% Aged 83
Y_data = Male_data_83(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_47_Croatia(34);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_47_Croatia_Male = [Proportion_Ht_47_Croatia_Male My_Number/M*100];
% Aged 84
Y_data = Male_data_84(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_47_Croatia(35);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_47_Croatia_Male = [Proportion_Ht_47_Croatia_Male My_Number/M*100];
% Aged 85
Y_data = Male_data_85(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_47_Croatia(36);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_47_Croatia_Male = [Proportion_Ht_47_Croatia_Male My_Number/M*100];
% Aged 86
Y_data = Male_data_86(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_47_Croatia(37);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_47_Croatia_Male = [Proportion_Ht_47_Croatia_Male My_Number/M*100];
% Aged 87
Y_data = Male_data_87(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_47_Croatia(38);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_47_Croatia_Male = [Proportion_Ht_47_Croatia_Male My_Number/M*100];
% Aged 88
Y_data = Male_data_88(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_47_Croatia(39);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_47_Croatia_Male = [Proportion_Ht_47_Croatia_Male My_Number/M*100];
% Aged 89
Y_data = Male_data_89(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_47_Croatia(40);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_47_Croatia_Male = [Proportion_Ht_47_Croatia_Male My_Number/M*100];

%% 34_Slovenia
% Loading the data
Female_data = xlsread('34_Slovenia.xlsx','Female');
Male_data = xlsread('34_Slovenia.xlsx','Male');
% Grouping by age
Female_data_50 = []; % == 50
Female_data_51 = [];
Female_data_52 = [];
Female_data_53 = [];
Female_data_54 = [];
Female_data_55 = [];
Female_data_56 = [];
Female_data_57 = [];
Female_data_58 = [];
Female_data_59 = [];
Female_data_60 = [];
Female_data_61 = [];
Female_data_62 = [];
Female_data_63 = [];
Female_data_64 = [];
Female_data_65 = [];
Female_data_66 = [];
Female_data_67 = [];
Female_data_68 = [];
Female_data_69 = [];
Female_data_70 = [];
Female_data_71 = [];
Female_data_72 = [];
Female_data_73 = [];
Female_data_74 = [];
Female_data_75 = [];
Female_data_76 = [];
Female_data_77 = [];
Female_data_78 = [];
Female_data_79 = [];
Female_data_80 = [];
Female_data_81 = [];
Female_data_82 = [];
Female_data_83 = [];
Female_data_84 = [];
Female_data_85 = [];
Female_data_86 = [];
Female_data_87 = [];
Female_data_88 = [];
Female_data_89 = [];
Female_data_90 = []; % ==90

Male_data_50 = []; % == 50
Male_data_51 = [];
Male_data_52 = [];
Male_data_53 = [];
Male_data_54 = [];
Male_data_55 = [];
Male_data_56 = [];
Male_data_57 = [];
Male_data_58 = [];
Male_data_59 = [];
Male_data_60 = [];
Male_data_61 = [];
Male_data_62 = [];
Male_data_63 = [];
Male_data_64 = [];
Male_data_65 = [];
Male_data_66 = [];
Male_data_67 = [];
Male_data_68 = [];
Male_data_69 = [];
Male_data_70 = [];
Male_data_71 = [];
Male_data_72 = [];
Male_data_73 = [];
Male_data_74 = [];
Male_data_75 = [];
Male_data_76 = [];
Male_data_77 = [];
Male_data_78 = [];
Male_data_79 = [];
Male_data_80 = [];
Male_data_81 = [];
Male_data_82 = [];
Male_data_83 = [];
Male_data_84 = [];
Male_data_85 = [];
Male_data_86 = [];
Male_data_87 = [];
Male_data_88 = [];
Male_data_89 = [];
Male_data_90 = []; % ==90

% For Female
[M N] = size(Female_data); % No.	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Female_data(i,2) == 50
        Female_data_50 = [Female_data_50; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 51
        Female_data_51 = [Female_data_51; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 52
        Female_data_52 = [Female_data_52; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 53
        Female_data_53 = [Female_data_53; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 54
        Female_data_54 = [Female_data_54; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 55
        Female_data_55 = [Female_data_55; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 56
        Female_data_56 = [Female_data_56; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 57
        Female_data_57 = [Female_data_57; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 58
        Female_data_58 = [Female_data_58; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 59
        Female_data_59 = [Female_data_59; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 60
        Female_data_60 = [Female_data_60; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 61
        Female_data_61 = [Female_data_61; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 62
        Female_data_62 = [Female_data_62; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 63
        Female_data_63 = [Female_data_63; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 64
        Female_data_64 = [Female_data_64; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 65
        Female_data_65 = [Female_data_65; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 66
        Female_data_66 = [Female_data_66; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 67
        Female_data_67 = [Female_data_67; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 68
        Female_data_68 = [Female_data_68; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 69
        Female_data_69 = [Female_data_69; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 70
        Female_data_70 = [Female_data_70; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 71
        Female_data_71 = [Female_data_71; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 72
        Female_data_72 = [Female_data_72; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 73
        Female_data_73 = [Female_data_73; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 74
        Female_data_74 = [Female_data_74; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 75
        Female_data_75 = [Female_data_75; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 76
        Female_data_76 = [Female_data_76; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 77
        Female_data_77 = [Female_data_77; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 78
        Female_data_78 = [Female_data_78; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 79
        Female_data_79 = [Female_data_79; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 80
        Female_data_80 = [Female_data_80; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 81
        Female_data_81 = [Female_data_81; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 82
        Female_data_82 = [Female_data_82; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 83
        Female_data_83 = [Female_data_83; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 84
        Female_data_84 = [Female_data_84; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 85
        Female_data_85 = [Female_data_85; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 86
        Female_data_86 = [Female_data_86; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 87
        Female_data_87 = [Female_data_87; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 88
        Female_data_88 = [Female_data_88; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 89
        Female_data_89 = [Female_data_89; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 90
        Female_data_90 = [Female_data_90; Female_data(i,3) Female_data(i,4)];
    end
end

% For Male
[M N] = size(Male_data); % No.	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Male_data(i,2) == 50
        Male_data_50 = [Male_data_50; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 51
        Male_data_51 = [Male_data_51; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 52
        Male_data_52 = [Male_data_52; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 53
        Male_data_53 = [Male_data_53; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 54
        Male_data_54 = [Male_data_54; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 55
        Male_data_55 = [Male_data_55; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 56
        Male_data_56 = [Male_data_56; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 57
        Male_data_57 = [Male_data_57; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 58
        Male_data_58 = [Male_data_58; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 59
        Male_data_59 = [Male_data_59; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 60
        Male_data_60 = [Male_data_60; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 61
        Male_data_61 = [Male_data_61; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 62
        Male_data_62 = [Male_data_62; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 63
        Male_data_63 = [Male_data_63; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 64
        Male_data_64 = [Male_data_64; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 65
        Male_data_65 = [Male_data_65; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 66
        Male_data_66 = [Male_data_66; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 67
        Male_data_67 = [Male_data_67; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 68
        Male_data_68 = [Male_data_68; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 69
        Male_data_69 = [Male_data_69; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 70
        Male_data_70 = [Male_data_70; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 71
        Male_data_71 = [Male_data_71; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 72
        Male_data_72 = [Male_data_72; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 73
        Male_data_73 = [Male_data_73; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 74
        Male_data_74 = [Male_data_74; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 75
        Male_data_75 = [Male_data_75; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 76
        Male_data_76 = [Male_data_76; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 77
        Male_data_77 = [Male_data_77; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 78
        Male_data_78 = [Male_data_78; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 79
        Male_data_79 = [Male_data_79; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 80
        Male_data_80 = [Male_data_80; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 81
        Male_data_81 = [Male_data_81; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 82
        Male_data_82 = [Male_data_82; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 83
        Male_data_83 = [Male_data_83; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 84
        Male_data_84 = [Male_data_84; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 85
        Male_data_85 = [Male_data_85; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 86
        Male_data_86 = [Male_data_86; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 87
        Male_data_87 = [Male_data_87; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 88
        Male_data_88 = [Male_data_88; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 89
        Male_data_89 = [Male_data_89; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 90
        Male_data_90 = [Male_data_90; Male_data(i,3) Male_data(i,4)];
    end
end

% We calculate the coefficients of a and b in 1=a/Weight+b*Height for this
% dataset
Age_34_Slovenia = 50:90;
Proportion_Ht_34_Slovenia_Female = [];
Proportion_Ht_34_Slovenia_Male = [];

% For Female
% Aged 50
Y_data = Female_data_50(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_34_Slovenia(1);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_34_Slovenia_Female = [Proportion_Ht_34_Slovenia_Female My_Number/M*100];
% Aged 51
Y_data = Female_data_51(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_34_Slovenia(2);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_34_Slovenia_Female = [Proportion_Ht_34_Slovenia_Female My_Number/M*100];
% Aged 52
Y_data = Female_data_52(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_34_Slovenia(3);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_34_Slovenia_Female = [Proportion_Ht_34_Slovenia_Female My_Number/M*100];
% Aged 53
Y_data = Female_data_53(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_34_Slovenia(4);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_34_Slovenia_Female = [Proportion_Ht_34_Slovenia_Female My_Number/M*100];
% Aged 54
Y_data = Female_data_54(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_34_Slovenia(5);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_34_Slovenia_Female = [Proportion_Ht_34_Slovenia_Female My_Number/M*100];
% Aged 55
Y_data = Female_data_55(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_34_Slovenia(6);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_34_Slovenia_Female = [Proportion_Ht_34_Slovenia_Female My_Number/M*100];
% Aged 56
Y_data = Female_data_56(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_34_Slovenia(7);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_34_Slovenia_Female = [Proportion_Ht_34_Slovenia_Female My_Number/M*100];
% Aged 57
Y_data = Female_data_57(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_34_Slovenia(8);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_34_Slovenia_Female = [Proportion_Ht_34_Slovenia_Female My_Number/M*100];
% Aged 58
Y_data = Female_data_58(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_34_Slovenia(9);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_34_Slovenia_Female = [Proportion_Ht_34_Slovenia_Female My_Number/M*100];
% Aged 59
Y_data = Female_data_59(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_34_Slovenia(10);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_34_Slovenia_Female = [Proportion_Ht_34_Slovenia_Female My_Number/M*100];
% Aged 60
Y_data = Female_data_60(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_34_Slovenia(11);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_34_Slovenia_Female = [Proportion_Ht_34_Slovenia_Female My_Number/M*100];
% Aged 61
Y_data = Female_data_61(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_34_Slovenia(12);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_34_Slovenia_Female = [Proportion_Ht_34_Slovenia_Female My_Number/M*100];
% Aged 62
Y_data = Female_data_62(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_34_Slovenia(13);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_34_Slovenia_Female = [Proportion_Ht_34_Slovenia_Female My_Number/M*100];
% Aged 63
Y_data = Female_data_63(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_34_Slovenia(14);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_34_Slovenia_Female = [Proportion_Ht_34_Slovenia_Female My_Number/M*100];
% Aged 64
Y_data = Female_data_64(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_34_Slovenia(15);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_34_Slovenia_Female = [Proportion_Ht_34_Slovenia_Female My_Number/M*100];
% Aged 65
Y_data = Female_data_65(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_34_Slovenia(16);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_34_Slovenia_Female = [Proportion_Ht_34_Slovenia_Female My_Number/M*100];
% Aged 66
Y_data = Female_data_66(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_34_Slovenia(17);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_34_Slovenia_Female = [Proportion_Ht_34_Slovenia_Female My_Number/M*100];
% Aged 67
Y_data = Female_data_67(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_34_Slovenia(18);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_34_Slovenia_Female = [Proportion_Ht_34_Slovenia_Female My_Number/M*100];
% Aged 68
Y_data = Female_data_68(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_34_Slovenia(19);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_34_Slovenia_Female = [Proportion_Ht_34_Slovenia_Female My_Number/M*100];
% Aged 69
Y_data = Female_data_69(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_34_Slovenia(20);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_34_Slovenia_Female = [Proportion_Ht_34_Slovenia_Female My_Number/M*100];
% Aged 70
Y_data = Female_data_70(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_34_Slovenia(21);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_34_Slovenia_Female = [Proportion_Ht_34_Slovenia_Female My_Number/M*100];
% Aged 71
Y_data = Female_data_71(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_34_Slovenia(22);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_34_Slovenia_Female = [Proportion_Ht_34_Slovenia_Female My_Number/M*100];
% Aged 72
Y_data = Female_data_72(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_34_Slovenia(23);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_34_Slovenia_Female = [Proportion_Ht_34_Slovenia_Female My_Number/M*100];
% Aged 73
Y_data = Female_data_73(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_34_Slovenia(24);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_34_Slovenia_Female = [Proportion_Ht_34_Slovenia_Female My_Number/M*100];
% Aged 74
Y_data = Female_data_74(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_34_Slovenia(25);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_34_Slovenia_Female = [Proportion_Ht_34_Slovenia_Female My_Number/M*100];
% Aged 75
Y_data = Female_data_75(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_34_Slovenia(26);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_34_Slovenia_Female = [Proportion_Ht_34_Slovenia_Female My_Number/M*100];
% Aged 76
Y_data = Female_data_76(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_34_Slovenia(27);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_34_Slovenia_Female = [Proportion_Ht_34_Slovenia_Female My_Number/M*100];
% Aged 77
Y_data = Female_data_77(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_34_Slovenia(28);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_34_Slovenia_Female = [Proportion_Ht_34_Slovenia_Female My_Number/M*100];
% Aged 78
Y_data = Female_data_78(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_34_Slovenia(29);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_34_Slovenia_Female = [Proportion_Ht_34_Slovenia_Female My_Number/M*100];
% Aged 79
Y_data = Female_data_79(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_34_Slovenia(30);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_34_Slovenia_Female = [Proportion_Ht_34_Slovenia_Female My_Number/M*100];
% Aged 80
Y_data = Female_data_80(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_34_Slovenia(31);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_34_Slovenia_Female = [Proportion_Ht_34_Slovenia_Female My_Number/M*100];
% Aged 81
Y_data = Female_data_81(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_34_Slovenia(32);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_34_Slovenia_Female = [Proportion_Ht_34_Slovenia_Female My_Number/M*100];
% Aged 82
Y_data = Female_data_82(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_34_Slovenia(33);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_34_Slovenia_Female = [Proportion_Ht_34_Slovenia_Female My_Number/M*100];
% Aged 83
Y_data = Female_data_83(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_34_Slovenia(34);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_34_Slovenia_Female = [Proportion_Ht_34_Slovenia_Female My_Number/M*100];
% Aged 84
Y_data = Female_data_84(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_34_Slovenia(35);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_34_Slovenia_Female = [Proportion_Ht_34_Slovenia_Female My_Number/M*100];
% Aged 85
Y_data = Female_data_85(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_34_Slovenia(36);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_34_Slovenia_Female = [Proportion_Ht_34_Slovenia_Female My_Number/M*100];
% Aged 86
Y_data = Female_data_86(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_34_Slovenia(37);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_34_Slovenia_Female = [Proportion_Ht_34_Slovenia_Female My_Number/M*100];
% Aged 87
Y_data = Female_data_87(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_34_Slovenia(38);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_34_Slovenia_Female = [Proportion_Ht_34_Slovenia_Female My_Number/M*100];
% Aged 88
Y_data = Female_data_88(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_34_Slovenia(39);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_34_Slovenia_Female = [Proportion_Ht_34_Slovenia_Female My_Number/M*100];
% Aged 89
Y_data = Female_data_89(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_34_Slovenia(40);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_34_Slovenia_Female = [Proportion_Ht_34_Slovenia_Female My_Number/M*100];
% Aged 90
Y_data = Female_data_90(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_34_Slovenia(41);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_34_Slovenia_Female = [Proportion_Ht_34_Slovenia_Female My_Number/M*100];

% For Male
% Aged 50
Y_data = Male_data_50(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_34_Slovenia(1);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_34_Slovenia_Male = [Proportion_Ht_34_Slovenia_Male My_Number/M*100];
% Aged 51
Y_data = Male_data_51(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_34_Slovenia(2);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_34_Slovenia_Male = [Proportion_Ht_34_Slovenia_Male My_Number/M*100];
% Aged 52
Y_data = Male_data_52(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_34_Slovenia(3);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_34_Slovenia_Male = [Proportion_Ht_34_Slovenia_Male My_Number/M*100];
% Aged 53
Y_data = Male_data_53(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_34_Slovenia(4);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_34_Slovenia_Male = [Proportion_Ht_34_Slovenia_Male My_Number/M*100];
% Aged 54
Y_data = Male_data_54(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_34_Slovenia(5);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_34_Slovenia_Male = [Proportion_Ht_34_Slovenia_Male My_Number/M*100];
% Aged 55
Y_data = Male_data_55(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_34_Slovenia(6);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_34_Slovenia_Male = [Proportion_Ht_34_Slovenia_Male My_Number/M*100];
% Aged 56
Y_data = Male_data_56(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_34_Slovenia(7);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_34_Slovenia_Male = [Proportion_Ht_34_Slovenia_Male My_Number/M*100];
% Aged 57
Y_data = Male_data_57(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_34_Slovenia(8);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_34_Slovenia_Male = [Proportion_Ht_34_Slovenia_Male My_Number/M*100];
% Aged 58
Y_data = Male_data_58(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_34_Slovenia(9);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_34_Slovenia_Male = [Proportion_Ht_34_Slovenia_Male My_Number/M*100];
% Aged 59
Y_data = Male_data_59(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_34_Slovenia(10);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_34_Slovenia_Male = [Proportion_Ht_34_Slovenia_Male My_Number/M*100];
% Aged 60
Y_data = Male_data_60(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_34_Slovenia(11);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_34_Slovenia_Male = [Proportion_Ht_34_Slovenia_Male My_Number/M*100];
% Aged 61
Y_data = Male_data_61(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_34_Slovenia(12);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_34_Slovenia_Male = [Proportion_Ht_34_Slovenia_Male My_Number/M*100];
% Aged 62
Y_data = Male_data_62(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_34_Slovenia(13);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_34_Slovenia_Male = [Proportion_Ht_34_Slovenia_Male My_Number/M*100];
% Aged 63
Y_data = Male_data_63(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_34_Slovenia(14);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_34_Slovenia_Male = [Proportion_Ht_34_Slovenia_Male My_Number/M*100];
% Aged 64
Y_data = Male_data_64(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_34_Slovenia(15);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_34_Slovenia_Male = [Proportion_Ht_34_Slovenia_Male My_Number/M*100];
% Aged 65
Y_data = Male_data_65(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_34_Slovenia(16);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_34_Slovenia_Male = [Proportion_Ht_34_Slovenia_Male My_Number/M*100];
% Aged 66
Y_data = Male_data_66(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_34_Slovenia(17);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_34_Slovenia_Male = [Proportion_Ht_34_Slovenia_Male My_Number/M*100];
% Aged 67
Y_data = Male_data_67(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_34_Slovenia(18);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_34_Slovenia_Male = [Proportion_Ht_34_Slovenia_Male My_Number/M*100];
% Aged 68
Y_data = Male_data_68(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_34_Slovenia(19);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_34_Slovenia_Male = [Proportion_Ht_34_Slovenia_Male My_Number/M*100];
% Aged 69
Y_data = Male_data_69(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_34_Slovenia(20);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_34_Slovenia_Male = [Proportion_Ht_34_Slovenia_Male My_Number/M*100];
% Aged 70
Y_data = Male_data_70(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_34_Slovenia(21);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_34_Slovenia_Male = [Proportion_Ht_34_Slovenia_Male My_Number/M*100];
% Aged 71
Y_data = Male_data_71(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_34_Slovenia(22);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_34_Slovenia_Male = [Proportion_Ht_34_Slovenia_Male My_Number/M*100];
% Aged 72
Y_data = Male_data_72(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_34_Slovenia(23);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_34_Slovenia_Male = [Proportion_Ht_34_Slovenia_Male My_Number/M*100];
% Aged 73
Y_data = Male_data_73(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_34_Slovenia(24);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_34_Slovenia_Male = [Proportion_Ht_34_Slovenia_Male My_Number/M*100];
% Aged 74
Y_data = Male_data_74(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_34_Slovenia(25);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_34_Slovenia_Male = [Proportion_Ht_34_Slovenia_Male My_Number/M*100];
% Aged 75
Y_data = Male_data_75(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_34_Slovenia(26);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_34_Slovenia_Male = [Proportion_Ht_34_Slovenia_Male My_Number/M*100];
% Aged 76
Y_data = Male_data_76(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_34_Slovenia(27);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_34_Slovenia_Male = [Proportion_Ht_34_Slovenia_Male My_Number/M*100];
% Aged 77
Y_data = Male_data_77(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_34_Slovenia(28);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_34_Slovenia_Male = [Proportion_Ht_34_Slovenia_Male My_Number/M*100];
% Aged 78
Y_data = Male_data_78(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_34_Slovenia(29);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_34_Slovenia_Male = [Proportion_Ht_34_Slovenia_Male My_Number/M*100];
% Aged 79
Y_data = Male_data_79(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_34_Slovenia(30);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_34_Slovenia_Male = [Proportion_Ht_34_Slovenia_Male My_Number/M*100];
% Aged 80
Y_data = Male_data_80(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_34_Slovenia(31);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_34_Slovenia_Male = [Proportion_Ht_34_Slovenia_Male My_Number/M*100];
% Aged 81
Y_data = Male_data_81(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_34_Slovenia(32);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_34_Slovenia_Male = [Proportion_Ht_34_Slovenia_Male My_Number/M*100];
% Aged 82
Y_data = Male_data_82(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_34_Slovenia(33);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_34_Slovenia_Male = [Proportion_Ht_34_Slovenia_Male My_Number/M*100];
% Aged 83
Y_data = Male_data_83(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_34_Slovenia(34);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_34_Slovenia_Male = [Proportion_Ht_34_Slovenia_Male My_Number/M*100];
% Aged 84
Y_data = Male_data_84(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_34_Slovenia(35);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_34_Slovenia_Male = [Proportion_Ht_34_Slovenia_Male My_Number/M*100];
% Aged 85
Y_data = Male_data_85(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_34_Slovenia(36);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_34_Slovenia_Male = [Proportion_Ht_34_Slovenia_Male My_Number/M*100];
% Aged 86
Y_data = Male_data_86(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_34_Slovenia(37);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_34_Slovenia_Male = [Proportion_Ht_34_Slovenia_Male My_Number/M*100];
% Aged 87
Y_data = Male_data_87(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_34_Slovenia(38);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_34_Slovenia_Male = [Proportion_Ht_34_Slovenia_Male My_Number/M*100];
% Aged 88
Y_data = Male_data_88(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_34_Slovenia(39);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_34_Slovenia_Male = [Proportion_Ht_34_Slovenia_Male My_Number/M*100];
% Aged 89
Y_data = Male_data_89(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_34_Slovenia(40);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_34_Slovenia_Male = [Proportion_Ht_34_Slovenia_Male My_Number/M*100];
% Aged 90
Y_data = Male_data_90(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_34_Slovenia(41);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_34_Slovenia_Male = [Proportion_Ht_34_Slovenia_Male My_Number/M*100];

%% 33_Portugal
% Loading the data
Female_data = xlsread('33_Portugal.xlsx','Female');
Male_data = xlsread('33_Portugal.xlsx','Male');
% Grouping by age
Female_data_51 = [];
Female_data_52 = [];
Female_data_53 = [];
Female_data_54 = [];
Female_data_55 = [];
Female_data_56 = [];
Female_data_57 = [];
Female_data_58 = [];
Female_data_59 = [];
Female_data_60 = [];
Female_data_61 = [];
Female_data_62 = [];
Female_data_63 = [];
Female_data_64 = [];
Female_data_65 = [];
Female_data_66 = [];
Female_data_67 = [];
Female_data_68 = [];
Female_data_69 = [];
Female_data_70 = [];
Female_data_71 = [];
Female_data_72 = [];
Female_data_73 = [];
Female_data_74 = [];
Female_data_75 = [];
Female_data_76 = [];
Female_data_77 = [];
Female_data_78 = [];
Female_data_79 = [];
Female_data_80 = [];
Female_data_81 = [];
Female_data_82 = [];
Female_data_83 = [];
Female_data_84 = [];
Female_data_85 = [];
Female_data_86 = [];
Female_data_87 = [];

Male_data_51 = [];
Male_data_52 = [];
Male_data_53 = [];
Male_data_54 = [];
Male_data_55 = [];
Male_data_56 = [];
Male_data_57 = [];
Male_data_58 = [];
Male_data_59 = [];
Male_data_60 = [];
Male_data_61 = [];
Male_data_62 = [];
Male_data_63 = [];
Male_data_64 = [];
Male_data_65 = [];
Male_data_66 = [];
Male_data_67 = [];
Male_data_68 = [];
Male_data_69 = [];
Male_data_70 = [];
Male_data_71 = [];
Male_data_72 = [];
Male_data_73 = [];
Male_data_74 = [];
Male_data_75 = [];
Male_data_76 = [];
Male_data_77 = [];
Male_data_78 = [];
Male_data_79 = [];
Male_data_80 = [];
Male_data_81 = [];
Male_data_82 = [];
Male_data_83 = [];
Male_data_84 = [];
Male_data_85 = [];
Male_data_86 = [];
Male_data_87 = [];

% For Female
[M N] = size(Female_data); % No.	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Female_data(i,2) == 51
        Female_data_51 = [Female_data_51; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 52
        Female_data_52 = [Female_data_52; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 53
        Female_data_53 = [Female_data_53; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 54
        Female_data_54 = [Female_data_54; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 55
        Female_data_55 = [Female_data_55; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 56
        Female_data_56 = [Female_data_56; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 57
        Female_data_57 = [Female_data_57; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 58
        Female_data_58 = [Female_data_58; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 59
        Female_data_59 = [Female_data_59; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 60
        Female_data_60 = [Female_data_60; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 61
        Female_data_61 = [Female_data_61; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 62
        Female_data_62 = [Female_data_62; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 63
        Female_data_63 = [Female_data_63; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 64
        Female_data_64 = [Female_data_64; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 65
        Female_data_65 = [Female_data_65; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 66
        Female_data_66 = [Female_data_66; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 67
        Female_data_67 = [Female_data_67; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 68
        Female_data_68 = [Female_data_68; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 69
        Female_data_69 = [Female_data_69; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 70
        Female_data_70 = [Female_data_70; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 71
        Female_data_71 = [Female_data_71; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 72
        Female_data_72 = [Female_data_72; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 73
        Female_data_73 = [Female_data_73; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 74
        Female_data_74 = [Female_data_74; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 75
        Female_data_75 = [Female_data_75; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 76
        Female_data_76 = [Female_data_76; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 77
        Female_data_77 = [Female_data_77; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 78
        Female_data_78 = [Female_data_78; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 79
        Female_data_79 = [Female_data_79; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 80
        Female_data_80 = [Female_data_80; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 81
        Female_data_81 = [Female_data_81; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 82
        Female_data_82 = [Female_data_82; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 83
        Female_data_83 = [Female_data_83; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 84
        Female_data_84 = [Female_data_84; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 85
        Female_data_85 = [Female_data_85; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 86
        Female_data_86 = [Female_data_86; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 87
        Female_data_87 = [Female_data_87; Female_data(i,3) Female_data(i,4)];
    end
end

% For Male
[M N] = size(Male_data); % No.	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Male_data(i,2) == 51
        Male_data_51 = [Male_data_51; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 52
        Male_data_52 = [Male_data_52; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 53
        Male_data_53 = [Male_data_53; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 54
        Male_data_54 = [Male_data_54; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 55
        Male_data_55 = [Male_data_55; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 56
        Male_data_56 = [Male_data_56; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 57
        Male_data_57 = [Male_data_57; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 58
        Male_data_58 = [Male_data_58; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 59
        Male_data_59 = [Male_data_59; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 60
        Male_data_60 = [Male_data_60; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 61
        Male_data_61 = [Male_data_61; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 62
        Male_data_62 = [Male_data_62; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 63
        Male_data_63 = [Male_data_63; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 64
        Male_data_64 = [Male_data_64; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 65
        Male_data_65 = [Male_data_65; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 66
        Male_data_66 = [Male_data_66; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 67
        Male_data_67 = [Male_data_67; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 68
        Male_data_68 = [Male_data_68; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 69
        Male_data_69 = [Male_data_69; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 70
        Male_data_70 = [Male_data_70; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 71
        Male_data_71 = [Male_data_71; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 72
        Male_data_72 = [Male_data_72; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 73
        Male_data_73 = [Male_data_73; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 74
        Male_data_74 = [Male_data_74; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 75
        Male_data_75 = [Male_data_75; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 76
        Male_data_76 = [Male_data_76; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 77
        Male_data_77 = [Male_data_77; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 78
        Male_data_78 = [Male_data_78; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 79
        Male_data_79 = [Male_data_79; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 80
        Male_data_80 = [Male_data_80; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 81
        Male_data_81 = [Male_data_81; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 82
        Male_data_82 = [Male_data_82; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 83
        Male_data_83 = [Male_data_83; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 84
        Male_data_84 = [Male_data_84; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 85
        Male_data_85 = [Male_data_85; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 86
        Male_data_86 = [Male_data_86; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 87
        Male_data_87 = [Male_data_87; Male_data(i,3) Male_data(i,4)];
    end
end

% We calculate the coefficients of a and b in 1=a/Weight+b*Height for this
% dataset
Age_33_Portugal = 51:87;
Proportion_Ht_33_Portugal_Female = [];
Proportion_Ht_33_Portugal_Male = [];
Coefficient_b_Female_1_33_Portugal = [0 Coefficient_b_Female_1_33_Portugal];
Coefficient_b_Male_1_33_Portugal = [0 Coefficient_b_Male_1_33_Portugal];

% For Female
% Aged 51
Y_data = Female_data_51(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_33_Portugal(2);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_33_Portugal_Female = [Proportion_Ht_33_Portugal_Female My_Number/M*100];
% Aged 52
Y_data = Female_data_52(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_33_Portugal(3);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_33_Portugal_Female = [Proportion_Ht_33_Portugal_Female My_Number/M*100];
% Aged 53
Y_data = Female_data_53(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_33_Portugal(4);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_33_Portugal_Female = [Proportion_Ht_33_Portugal_Female My_Number/M*100];
% Aged 54
Y_data = Female_data_54(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_33_Portugal(5);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_33_Portugal_Female = [Proportion_Ht_33_Portugal_Female My_Number/M*100];
% Aged 55
Y_data = Female_data_55(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_33_Portugal(6);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_33_Portugal_Female = [Proportion_Ht_33_Portugal_Female My_Number/M*100];
% Aged 56
Y_data = Female_data_56(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_33_Portugal(7);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_33_Portugal_Female = [Proportion_Ht_33_Portugal_Female My_Number/M*100];
% Aged 57
Y_data = Female_data_57(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_33_Portugal(8);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_33_Portugal_Female = [Proportion_Ht_33_Portugal_Female My_Number/M*100];
% Aged 58
Y_data = Female_data_58(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_33_Portugal(9);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_33_Portugal_Female = [Proportion_Ht_33_Portugal_Female My_Number/M*100];
% Aged 59
Y_data = Female_data_59(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_33_Portugal(10);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_33_Portugal_Female = [Proportion_Ht_33_Portugal_Female My_Number/M*100];
% Aged 60
Y_data = Female_data_60(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_33_Portugal(11);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_33_Portugal_Female = [Proportion_Ht_33_Portugal_Female My_Number/M*100];
% Aged 61
Y_data = Female_data_61(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_33_Portugal(12);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_33_Portugal_Female = [Proportion_Ht_33_Portugal_Female My_Number/M*100];
% Aged 62
Y_data = Female_data_62(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_33_Portugal(13);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_33_Portugal_Female = [Proportion_Ht_33_Portugal_Female My_Number/M*100];
% Aged 63
Y_data = Female_data_63(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_33_Portugal(14);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_33_Portugal_Female = [Proportion_Ht_33_Portugal_Female My_Number/M*100];
% Aged 64
Y_data = Female_data_64(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_33_Portugal(15);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_33_Portugal_Female = [Proportion_Ht_33_Portugal_Female My_Number/M*100];
% Aged 65
Y_data = Female_data_65(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_33_Portugal(16);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_33_Portugal_Female = [Proportion_Ht_33_Portugal_Female My_Number/M*100];
% Aged 66
Y_data = Female_data_66(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_33_Portugal(17);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_33_Portugal_Female = [Proportion_Ht_33_Portugal_Female My_Number/M*100];
% Aged 67
Y_data = Female_data_67(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_33_Portugal(18);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_33_Portugal_Female = [Proportion_Ht_33_Portugal_Female My_Number/M*100];
% Aged 68
Y_data = Female_data_68(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_33_Portugal(19);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_33_Portugal_Female = [Proportion_Ht_33_Portugal_Female My_Number/M*100];
% Aged 69
Y_data = Female_data_69(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_33_Portugal(20);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_33_Portugal_Female = [Proportion_Ht_33_Portugal_Female My_Number/M*100];
% Aged 70
Y_data = Female_data_70(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_33_Portugal(21);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_33_Portugal_Female = [Proportion_Ht_33_Portugal_Female My_Number/M*100];
% Aged 71
Y_data = Female_data_71(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_33_Portugal(22);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_33_Portugal_Female = [Proportion_Ht_33_Portugal_Female My_Number/M*100];
% Aged 72
Y_data = Female_data_72(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_33_Portugal(23);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_33_Portugal_Female = [Proportion_Ht_33_Portugal_Female My_Number/M*100];
% Aged 73
Y_data = Female_data_73(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_33_Portugal(24);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_33_Portugal_Female = [Proportion_Ht_33_Portugal_Female My_Number/M*100];
% Aged 74
Y_data = Female_data_74(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_33_Portugal(25);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_33_Portugal_Female = [Proportion_Ht_33_Portugal_Female My_Number/M*100];
% Aged 75
Y_data = Female_data_75(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_33_Portugal(26);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_33_Portugal_Female = [Proportion_Ht_33_Portugal_Female My_Number/M*100];
% Aged 76
Y_data = Female_data_76(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_33_Portugal(27);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_33_Portugal_Female = [Proportion_Ht_33_Portugal_Female My_Number/M*100];
% Aged 77
Y_data = Female_data_77(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_33_Portugal(28);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_33_Portugal_Female = [Proportion_Ht_33_Portugal_Female My_Number/M*100];
% Aged 78
Y_data = Female_data_78(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_33_Portugal(29);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_33_Portugal_Female = [Proportion_Ht_33_Portugal_Female My_Number/M*100];
% Aged 79
Y_data = Female_data_79(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_33_Portugal(30);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_33_Portugal_Female = [Proportion_Ht_33_Portugal_Female My_Number/M*100];
% Aged 80
Y_data = Female_data_80(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_33_Portugal(31);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_33_Portugal_Female = [Proportion_Ht_33_Portugal_Female My_Number/M*100];
% Aged 81
Y_data = Female_data_81(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_33_Portugal(32);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_33_Portugal_Female = [Proportion_Ht_33_Portugal_Female My_Number/M*100];
% Aged 82
Y_data = Female_data_82(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_33_Portugal(33);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_33_Portugal_Female = [Proportion_Ht_33_Portugal_Female My_Number/M*100];
% Aged 83
Y_data = Female_data_83(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_33_Portugal(34);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_33_Portugal_Female = [Proportion_Ht_33_Portugal_Female My_Number/M*100];
% Aged 84
Y_data = Female_data_84(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_33_Portugal(35);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_33_Portugal_Female = [Proportion_Ht_33_Portugal_Female My_Number/M*100];
% Aged 85
Y_data = Female_data_85(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_33_Portugal(36);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_33_Portugal_Female = [Proportion_Ht_33_Portugal_Female My_Number/M*100];
% Aged 86
Y_data = Female_data_86(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_33_Portugal(37);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_33_Portugal_Female = [Proportion_Ht_33_Portugal_Female My_Number/M*100];
% Aged 87
Y_data = Female_data_87(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_33_Portugal(38);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_33_Portugal_Female = [Proportion_Ht_33_Portugal_Female My_Number/M*100];

% For Male
% Aged 51
Y_data = Male_data_51(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_33_Portugal(2);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_33_Portugal_Male = [Proportion_Ht_33_Portugal_Male My_Number/M*100];
% Aged 52
Y_data = Male_data_52(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_33_Portugal(3);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_33_Portugal_Male = [Proportion_Ht_33_Portugal_Male My_Number/M*100];
% Aged 53
Y_data = Male_data_53(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_33_Portugal(4);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_33_Portugal_Male = [Proportion_Ht_33_Portugal_Male My_Number/M*100];
% Aged 54
Y_data = Male_data_54(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_33_Portugal(5);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_33_Portugal_Male = [Proportion_Ht_33_Portugal_Male My_Number/M*100];
% Aged 55
Y_data = Male_data_55(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_33_Portugal(6);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_33_Portugal_Male = [Proportion_Ht_33_Portugal_Male My_Number/M*100];
% Aged 56
Y_data = Male_data_56(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_33_Portugal(7);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_33_Portugal_Male = [Proportion_Ht_33_Portugal_Male My_Number/M*100];
% Aged 57
Y_data = Male_data_57(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_33_Portugal(8);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_33_Portugal_Male = [Proportion_Ht_33_Portugal_Male My_Number/M*100];
% Aged 58
Y_data = Male_data_58(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_33_Portugal(9);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_33_Portugal_Male = [Proportion_Ht_33_Portugal_Male My_Number/M*100];
% Aged 59
Y_data = Male_data_59(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_33_Portugal(10);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_33_Portugal_Male = [Proportion_Ht_33_Portugal_Male My_Number/M*100];
% Aged 60
Y_data = Male_data_60(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_33_Portugal(11);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_33_Portugal_Male = [Proportion_Ht_33_Portugal_Male My_Number/M*100];
% Aged 61
Y_data = Male_data_61(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_33_Portugal(12);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_33_Portugal_Male = [Proportion_Ht_33_Portugal_Male My_Number/M*100];
% Aged 62
Y_data = Male_data_62(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_33_Portugal(13);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_33_Portugal_Male = [Proportion_Ht_33_Portugal_Male My_Number/M*100];
% Aged 63
Y_data = Male_data_63(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_33_Portugal(14);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_33_Portugal_Male = [Proportion_Ht_33_Portugal_Male My_Number/M*100];
% Aged 64
Y_data = Male_data_64(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_33_Portugal(15);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_33_Portugal_Male = [Proportion_Ht_33_Portugal_Male My_Number/M*100];
% Aged 65
Y_data = Male_data_65(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_33_Portugal(16);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_33_Portugal_Male = [Proportion_Ht_33_Portugal_Male My_Number/M*100];
% Aged 66
Y_data = Male_data_66(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_33_Portugal(17);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_33_Portugal_Male = [Proportion_Ht_33_Portugal_Male My_Number/M*100];
% Aged 67
Y_data = Male_data_67(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_33_Portugal(18);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_33_Portugal_Male = [Proportion_Ht_33_Portugal_Male My_Number/M*100];
% Aged 68
Y_data = Male_data_68(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_33_Portugal(19);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_33_Portugal_Male = [Proportion_Ht_33_Portugal_Male My_Number/M*100];
% Aged 69
Y_data = Male_data_69(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_33_Portugal(20);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_33_Portugal_Male = [Proportion_Ht_33_Portugal_Male My_Number/M*100];
% Aged 70
Y_data = Male_data_70(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_33_Portugal(21);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_33_Portugal_Male = [Proportion_Ht_33_Portugal_Male My_Number/M*100];
% Aged 71
Y_data = Male_data_71(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_33_Portugal(22);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_33_Portugal_Male = [Proportion_Ht_33_Portugal_Male My_Number/M*100];
% Aged 72
Y_data = Male_data_72(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_33_Portugal(23);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_33_Portugal_Male = [Proportion_Ht_33_Portugal_Male My_Number/M*100];
% Aged 73
Y_data = Male_data_73(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_33_Portugal(24);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_33_Portugal_Male = [Proportion_Ht_33_Portugal_Male My_Number/M*100];
% Aged 74
Y_data = Male_data_74(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_33_Portugal(25);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_33_Portugal_Male = [Proportion_Ht_33_Portugal_Male My_Number/M*100];
% Aged 75
Y_data = Male_data_75(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_33_Portugal(26);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_33_Portugal_Male = [Proportion_Ht_33_Portugal_Male My_Number/M*100];
% Aged 76
Y_data = Male_data_76(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_33_Portugal(27);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_33_Portugal_Male = [Proportion_Ht_33_Portugal_Male My_Number/M*100];
% Aged 77
Y_data = Male_data_77(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_33_Portugal(28);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_33_Portugal_Male = [Proportion_Ht_33_Portugal_Male My_Number/M*100];
% Aged 78
Y_data = Male_data_78(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_33_Portugal(29);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_33_Portugal_Male = [Proportion_Ht_33_Portugal_Male My_Number/M*100];
% Aged 79
Y_data = Male_data_79(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_33_Portugal(30);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_33_Portugal_Male = [Proportion_Ht_33_Portugal_Male My_Number/M*100];
% Aged 80
Y_data = Male_data_80(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_33_Portugal(31);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_33_Portugal_Male = [Proportion_Ht_33_Portugal_Male My_Number/M*100];
% Aged 81
Y_data = Male_data_81(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_33_Portugal(32);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_33_Portugal_Male = [Proportion_Ht_33_Portugal_Male My_Number/M*100];
% Aged 82
Y_data = Male_data_82(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_33_Portugal(33);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_33_Portugal_Male = [Proportion_Ht_33_Portugal_Male My_Number/M*100];
% Aged 83
Y_data = Male_data_83(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_33_Portugal(34);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_33_Portugal_Male = [Proportion_Ht_33_Portugal_Male My_Number/M*100];
% Aged 84
Y_data = Male_data_84(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_33_Portugal(35);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_33_Portugal_Male = [Proportion_Ht_33_Portugal_Male My_Number/M*100];
% Aged 85
Y_data = Male_data_85(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_33_Portugal(36);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_33_Portugal_Male = [Proportion_Ht_33_Portugal_Male My_Number/M*100];
% Aged 86
Y_data = Male_data_86(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_33_Portugal(37);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_33_Portugal_Male = [Proportion_Ht_33_Portugal_Male My_Number/M*100];
% Aged 87
Y_data = Male_data_87(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_33_Portugal(38);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_33_Portugal_Male = [Proportion_Ht_33_Portugal_Male My_Number/M*100];

%% 19_Greece
% Loading the data
Female_data = xlsread('19_Greece.xlsx','Female');
Male_data = xlsread('19_Greece.xlsx','Male');
% Grouping by age
Female_data_50 = []; % == 50
Female_data_51 = [];
Female_data_52 = [];
Female_data_53 = [];
Female_data_54 = [];
Female_data_55 = [];
Female_data_56 = [];
Female_data_57 = [];
Female_data_58 = [];
Female_data_59 = [];
Female_data_60 = [];
Female_data_61 = [];
Female_data_62 = [];
Female_data_63 = [];
Female_data_64 = [];
Female_data_65 = [];
Female_data_66 = [];
Female_data_67 = [];
Female_data_68 = [];
Female_data_69 = [];
Female_data_70 = [];
Female_data_71 = [];
Female_data_72 = [];
Female_data_73 = [];
Female_data_74 = [];
Female_data_75 = [];
Female_data_76 = [];
Female_data_77 = [];
Female_data_78 = [];
Female_data_79 = [];
Female_data_80 = [];
Female_data_81 = [];
Female_data_82 = [];
Female_data_83 = [];
Female_data_84 = [];
Female_data_85 = [];
Female_data_86 = [];
Female_data_87 = [];

Male_data_50 = []; % == 50
Male_data_51 = [];
Male_data_52 = [];
Male_data_53 = [];
Male_data_54 = [];
Male_data_55 = [];
Male_data_56 = [];
Male_data_57 = [];
Male_data_58 = [];
Male_data_59 = [];
Male_data_60 = [];
Male_data_61 = [];
Male_data_62 = [];
Male_data_63 = [];
Male_data_64 = [];
Male_data_65 = [];
Male_data_66 = [];
Male_data_67 = [];
Male_data_68 = [];
Male_data_69 = [];
Male_data_70 = [];
Male_data_71 = [];
Male_data_72 = [];
Male_data_73 = [];
Male_data_74 = [];
Male_data_75 = [];
Male_data_76 = [];
Male_data_77 = [];
Male_data_78 = [];
Male_data_79 = [];
Male_data_80 = [];
Male_data_81 = [];
Male_data_82 = [];
Male_data_83 = [];
Male_data_84 = [];
Male_data_85 = [];
Male_data_86 = [];
Male_data_87 = [];

% For Female
[M N] = size(Female_data); % No.	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Female_data(i,2) == 50
        Female_data_50 = [Female_data_50; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 51
        Female_data_51 = [Female_data_51; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 52
        Female_data_52 = [Female_data_52; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 53
        Female_data_53 = [Female_data_53; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 54
        Female_data_54 = [Female_data_54; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 55
        Female_data_55 = [Female_data_55; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 56
        Female_data_56 = [Female_data_56; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 57
        Female_data_57 = [Female_data_57; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 58
        Female_data_58 = [Female_data_58; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 59
        Female_data_59 = [Female_data_59; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 60
        Female_data_60 = [Female_data_60; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 61
        Female_data_61 = [Female_data_61; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 62
        Female_data_62 = [Female_data_62; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 63
        Female_data_63 = [Female_data_63; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 64
        Female_data_64 = [Female_data_64; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 65
        Female_data_65 = [Female_data_65; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 66
        Female_data_66 = [Female_data_66; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 67
        Female_data_67 = [Female_data_67; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 68
        Female_data_68 = [Female_data_68; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 69
        Female_data_69 = [Female_data_69; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 70
        Female_data_70 = [Female_data_70; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 71
        Female_data_71 = [Female_data_71; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 72
        Female_data_72 = [Female_data_72; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 73
        Female_data_73 = [Female_data_73; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 74
        Female_data_74 = [Female_data_74; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 75
        Female_data_75 = [Female_data_75; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 76
        Female_data_76 = [Female_data_76; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 77
        Female_data_77 = [Female_data_77; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 78
        Female_data_78 = [Female_data_78; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 79
        Female_data_79 = [Female_data_79; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 80
        Female_data_80 = [Female_data_80; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 81
        Female_data_81 = [Female_data_81; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 82
        Female_data_82 = [Female_data_82; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 83
        Female_data_83 = [Female_data_83; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 84
        Female_data_84 = [Female_data_84; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 85
        Female_data_85 = [Female_data_85; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 86
        Female_data_86 = [Female_data_86; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 87
        Female_data_87 = [Female_data_87; Female_data(i,3) Female_data(i,4)];
    end
end

% For Male
[M N] = size(Male_data); % No.	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Male_data(i,2) == 50
        Male_data_50 = [Male_data_50; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 51
        Male_data_51 = [Male_data_51; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 52
        Male_data_52 = [Male_data_52; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 53
        Male_data_53 = [Male_data_53; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 54
        Male_data_54 = [Male_data_54; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 55
        Male_data_55 = [Male_data_55; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 56
        Male_data_56 = [Male_data_56; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 57
        Male_data_57 = [Male_data_57; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 58
        Male_data_58 = [Male_data_58; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 59
        Male_data_59 = [Male_data_59; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 60
        Male_data_60 = [Male_data_60; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 61
        Male_data_61 = [Male_data_61; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 62
        Male_data_62 = [Male_data_62; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 63
        Male_data_63 = [Male_data_63; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 64
        Male_data_64 = [Male_data_64; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 65
        Male_data_65 = [Male_data_65; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 66
        Male_data_66 = [Male_data_66; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 67
        Male_data_67 = [Male_data_67; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 68
        Male_data_68 = [Male_data_68; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 69
        Male_data_69 = [Male_data_69; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 70
        Male_data_70 = [Male_data_70; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 71
        Male_data_71 = [Male_data_71; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 72
        Male_data_72 = [Male_data_72; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 73
        Male_data_73 = [Male_data_73; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 74
        Male_data_74 = [Male_data_74; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 75
        Male_data_75 = [Male_data_75; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 76
        Male_data_76 = [Male_data_76; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 77
        Male_data_77 = [Male_data_77; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 78
        Male_data_78 = [Male_data_78; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 79
        Male_data_79 = [Male_data_79; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 80
        Male_data_80 = [Male_data_80; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 81
        Male_data_81 = [Male_data_81; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 82
        Male_data_82 = [Male_data_82; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 83
        Male_data_83 = [Male_data_83; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 84
        Male_data_84 = [Male_data_84; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 85
        Male_data_85 = [Male_data_85; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 86
        Male_data_86 = [Male_data_86; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 87
        Male_data_87 = [Male_data_87; Male_data(i,3) Male_data(i,4)];
    end
end

% We calculate the coefficients of a and b in 1=a/Weight+b*Height for this
% dataset
Age_19_Greece = 50:87;
Proportion_Ht_19_Greece_Female = [];
Proportion_Ht_19_Greece_Male = [];

% For Female
% Aged 50
Y_data = Female_data_50(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_19_Greece(1);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_19_Greece_Female = [Proportion_Ht_19_Greece_Female My_Number/M*100];
% Aged 51
Y_data = Female_data_51(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_19_Greece(2);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_19_Greece_Female = [Proportion_Ht_19_Greece_Female My_Number/M*100];
% Aged 52
Y_data = Female_data_52(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_19_Greece(3);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_19_Greece_Female = [Proportion_Ht_19_Greece_Female My_Number/M*100];
% Aged 53
Y_data = Female_data_53(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_19_Greece(4);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_19_Greece_Female = [Proportion_Ht_19_Greece_Female My_Number/M*100];
% Aged 54
Y_data = Female_data_54(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_19_Greece(5);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_19_Greece_Female = [Proportion_Ht_19_Greece_Female My_Number/M*100];
% Aged 55
Y_data = Female_data_55(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_19_Greece(6);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_19_Greece_Female = [Proportion_Ht_19_Greece_Female My_Number/M*100];
% Aged 56
Y_data = Female_data_56(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_19_Greece(7);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_19_Greece_Female = [Proportion_Ht_19_Greece_Female My_Number/M*100];
% Aged 57
Y_data = Female_data_57(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_19_Greece(8);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_19_Greece_Female = [Proportion_Ht_19_Greece_Female My_Number/M*100];
% Aged 58
Y_data = Female_data_58(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_19_Greece(9);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_19_Greece_Female = [Proportion_Ht_19_Greece_Female My_Number/M*100];
% Aged 59
Y_data = Female_data_59(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_19_Greece(10);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_19_Greece_Female = [Proportion_Ht_19_Greece_Female My_Number/M*100];
% Aged 60
Y_data = Female_data_60(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_19_Greece(11);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_19_Greece_Female = [Proportion_Ht_19_Greece_Female My_Number/M*100];
% Aged 61
Y_data = Female_data_61(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_19_Greece(12);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_19_Greece_Female = [Proportion_Ht_19_Greece_Female My_Number/M*100];
% Aged 62
Y_data = Female_data_62(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_19_Greece(13);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_19_Greece_Female = [Proportion_Ht_19_Greece_Female My_Number/M*100];
% Aged 63
Y_data = Female_data_63(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_19_Greece(14);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_19_Greece_Female = [Proportion_Ht_19_Greece_Female My_Number/M*100];
% Aged 64
Y_data = Female_data_64(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_19_Greece(15);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_19_Greece_Female = [Proportion_Ht_19_Greece_Female My_Number/M*100];
% Aged 65
Y_data = Female_data_65(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_19_Greece(16);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_19_Greece_Female = [Proportion_Ht_19_Greece_Female My_Number/M*100];
% Aged 66
Y_data = Female_data_66(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_19_Greece(17);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_19_Greece_Female = [Proportion_Ht_19_Greece_Female My_Number/M*100];
% Aged 67
Y_data = Female_data_67(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_19_Greece(18);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_19_Greece_Female = [Proportion_Ht_19_Greece_Female My_Number/M*100];
% Aged 68
Y_data = Female_data_68(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_19_Greece(19);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_19_Greece_Female = [Proportion_Ht_19_Greece_Female My_Number/M*100];
% Aged 69
Y_data = Female_data_69(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_19_Greece(20);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_19_Greece_Female = [Proportion_Ht_19_Greece_Female My_Number/M*100];
% Aged 70
Y_data = Female_data_70(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_19_Greece(21);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_19_Greece_Female = [Proportion_Ht_19_Greece_Female My_Number/M*100];
% Aged 71
Y_data = Female_data_71(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_19_Greece(22);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_19_Greece_Female = [Proportion_Ht_19_Greece_Female My_Number/M*100];
% Aged 72
Y_data = Female_data_72(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_19_Greece(23);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_19_Greece_Female = [Proportion_Ht_19_Greece_Female My_Number/M*100];
% Aged 73
Y_data = Female_data_73(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_19_Greece(24);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_19_Greece_Female = [Proportion_Ht_19_Greece_Female My_Number/M*100];
% Aged 74
Y_data = Female_data_74(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_19_Greece(25);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_19_Greece_Female = [Proportion_Ht_19_Greece_Female My_Number/M*100];
% Aged 75
Y_data = Female_data_75(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_19_Greece(26);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_19_Greece_Female = [Proportion_Ht_19_Greece_Female My_Number/M*100];
% Aged 76
Y_data = Female_data_76(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_19_Greece(27);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_19_Greece_Female = [Proportion_Ht_19_Greece_Female My_Number/M*100];
% Aged 77
Y_data = Female_data_77(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_19_Greece(28);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_19_Greece_Female = [Proportion_Ht_19_Greece_Female My_Number/M*100];
% Aged 78
Y_data = Female_data_78(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_19_Greece(29);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_19_Greece_Female = [Proportion_Ht_19_Greece_Female My_Number/M*100];
% Aged 79
Y_data = Female_data_79(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_19_Greece(30);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_19_Greece_Female = [Proportion_Ht_19_Greece_Female My_Number/M*100];
% Aged 80
Y_data = Female_data_80(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_19_Greece(31);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_19_Greece_Female = [Proportion_Ht_19_Greece_Female My_Number/M*100];
% Aged 81
Y_data = Female_data_81(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_19_Greece(32);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_19_Greece_Female = [Proportion_Ht_19_Greece_Female My_Number/M*100];
% Aged 82
Y_data = Female_data_82(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_19_Greece(33);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_19_Greece_Female = [Proportion_Ht_19_Greece_Female My_Number/M*100];
% Aged 83
Y_data = Female_data_83(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_19_Greece(34);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_19_Greece_Female = [Proportion_Ht_19_Greece_Female My_Number/M*100];
% Aged 84
Y_data = Female_data_84(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_19_Greece(35);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_19_Greece_Female = [Proportion_Ht_19_Greece_Female My_Number/M*100];
% Aged 85
Y_data = Female_data_85(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_19_Greece(36);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_19_Greece_Female = [Proportion_Ht_19_Greece_Female My_Number/M*100];
% Aged 86
Y_data = Female_data_86(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_19_Greece(37);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_19_Greece_Female = [Proportion_Ht_19_Greece_Female My_Number/M*100];
% Aged 87
Y_data = Female_data_87(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_19_Greece(38);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_19_Greece_Female = [Proportion_Ht_19_Greece_Female My_Number/M*100];

% For Male
% Aged 50
Y_data = Male_data_50(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_19_Greece(1);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_19_Greece_Male = [Proportion_Ht_19_Greece_Male My_Number/M*100];
% Aged 51
Y_data = Male_data_51(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_19_Greece(2);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_19_Greece_Male = [Proportion_Ht_19_Greece_Male My_Number/M*100];
% Aged 52
Y_data = Male_data_52(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_19_Greece(3);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_19_Greece_Male = [Proportion_Ht_19_Greece_Male My_Number/M*100];
% Aged 53
Y_data = Male_data_53(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_19_Greece(4);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_19_Greece_Male = [Proportion_Ht_19_Greece_Male My_Number/M*100];
% Aged 54
Y_data = Male_data_54(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_19_Greece(5);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_19_Greece_Male = [Proportion_Ht_19_Greece_Male My_Number/M*100];
% Aged 55
Y_data = Male_data_55(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_19_Greece(6);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_19_Greece_Male = [Proportion_Ht_19_Greece_Male My_Number/M*100];
% Aged 56
Y_data = Male_data_56(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_19_Greece(7);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_19_Greece_Male = [Proportion_Ht_19_Greece_Male My_Number/M*100];
% Aged 57
Y_data = Male_data_57(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_19_Greece(8);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_19_Greece_Male = [Proportion_Ht_19_Greece_Male My_Number/M*100];
% Aged 58
Y_data = Male_data_58(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_19_Greece(9);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_19_Greece_Male = [Proportion_Ht_19_Greece_Male My_Number/M*100];
% Aged 59
Y_data = Male_data_59(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_19_Greece(10);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_19_Greece_Male = [Proportion_Ht_19_Greece_Male My_Number/M*100];
% Aged 60
Y_data = Male_data_60(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_19_Greece(11);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_19_Greece_Male = [Proportion_Ht_19_Greece_Male My_Number/M*100];
% Aged 61
Y_data = Male_data_61(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_19_Greece(12);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_19_Greece_Male = [Proportion_Ht_19_Greece_Male My_Number/M*100];
% Aged 62
Y_data = Male_data_62(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_19_Greece(13);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_19_Greece_Male = [Proportion_Ht_19_Greece_Male My_Number/M*100];
% Aged 63
Y_data = Male_data_63(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_19_Greece(14);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_19_Greece_Male = [Proportion_Ht_19_Greece_Male My_Number/M*100];
% Aged 64
Y_data = Male_data_64(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_19_Greece(15);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_19_Greece_Male = [Proportion_Ht_19_Greece_Male My_Number/M*100];
% Aged 65
Y_data = Male_data_65(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_19_Greece(16);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_19_Greece_Male = [Proportion_Ht_19_Greece_Male My_Number/M*100];
% Aged 66
Y_data = Male_data_66(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_19_Greece(17);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_19_Greece_Male = [Proportion_Ht_19_Greece_Male My_Number/M*100];
% Aged 67
Y_data = Male_data_67(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_19_Greece(18);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_19_Greece_Male = [Proportion_Ht_19_Greece_Male My_Number/M*100];
% Aged 68
Y_data = Male_data_68(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_19_Greece(19);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_19_Greece_Male = [Proportion_Ht_19_Greece_Male My_Number/M*100];
% Aged 69
Y_data = Male_data_69(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_19_Greece(20);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_19_Greece_Male = [Proportion_Ht_19_Greece_Male My_Number/M*100];
% Aged 70
Y_data = Male_data_70(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_19_Greece(21);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_19_Greece_Male = [Proportion_Ht_19_Greece_Male My_Number/M*100];
% Aged 71
Y_data = Male_data_71(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_19_Greece(22);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_19_Greece_Male = [Proportion_Ht_19_Greece_Male My_Number/M*100];
% Aged 72
Y_data = Male_data_72(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_19_Greece(23);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_19_Greece_Male = [Proportion_Ht_19_Greece_Male My_Number/M*100];
% Aged 73
Y_data = Male_data_73(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_19_Greece(24);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_19_Greece_Male = [Proportion_Ht_19_Greece_Male My_Number/M*100];
% Aged 74
Y_data = Male_data_74(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_19_Greece(25);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_19_Greece_Male = [Proportion_Ht_19_Greece_Male My_Number/M*100];
% Aged 75
Y_data = Male_data_75(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_19_Greece(26);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_19_Greece_Male = [Proportion_Ht_19_Greece_Male My_Number/M*100];
% Aged 76
Y_data = Male_data_76(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_19_Greece(27);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_19_Greece_Male = [Proportion_Ht_19_Greece_Male My_Number/M*100];
% Aged 77
Y_data = Male_data_77(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_19_Greece(28);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_19_Greece_Male = [Proportion_Ht_19_Greece_Male My_Number/M*100];
% Aged 78
Y_data = Male_data_78(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_19_Greece(29);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_19_Greece_Male = [Proportion_Ht_19_Greece_Male My_Number/M*100];
% Aged 79
Y_data = Male_data_79(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_19_Greece(30);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_19_Greece_Male = [Proportion_Ht_19_Greece_Male My_Number/M*100];
% Aged 80
Y_data = Male_data_80(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_19_Greece(31);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_19_Greece_Male = [Proportion_Ht_19_Greece_Male My_Number/M*100];
% Aged 81
Y_data = Male_data_81(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_19_Greece(32);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_19_Greece_Male = [Proportion_Ht_19_Greece_Male My_Number/M*100];
% Aged 82
Y_data = Male_data_82(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_19_Greece(33);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_19_Greece_Male = [Proportion_Ht_19_Greece_Male My_Number/M*100];
% Aged 83
Y_data = Male_data_83(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_19_Greece(34);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_19_Greece_Male = [Proportion_Ht_19_Greece_Male My_Number/M*100];
% Aged 84
Y_data = Male_data_84(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_19_Greece(35);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_19_Greece_Male = [Proportion_Ht_19_Greece_Male My_Number/M*100];
% Aged 85
Y_data = Male_data_85(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_19_Greece(36);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_19_Greece_Male = [Proportion_Ht_19_Greece_Male My_Number/M*100];
% Aged 86
Y_data = Male_data_86(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_19_Greece(37);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_19_Greece_Male = [Proportion_Ht_19_Greece_Male My_Number/M*100];
% Aged 87
Y_data = Male_data_87(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_19_Greece(38);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_19_Greece_Male = [Proportion_Ht_19_Greece_Male My_Number/M*100];

%% 16_Italy
% Loading the data
Female_data = xlsread('16_Italy.xlsx','Female');
Male_data = xlsread('16_Italy.xlsx','Male');
% Grouping by age
Female_data_50 = []; % == 50
Female_data_51 = [];
Female_data_52 = [];
Female_data_53 = [];
Female_data_54 = [];
Female_data_55 = [];
Female_data_56 = [];
Female_data_57 = [];
Female_data_58 = [];
Female_data_59 = [];
Female_data_60 = [];
Female_data_61 = [];
Female_data_62 = [];
Female_data_63 = [];
Female_data_64 = [];
Female_data_65 = [];
Female_data_66 = [];
Female_data_67 = [];
Female_data_68 = [];
Female_data_69 = [];
Female_data_70 = [];
Female_data_71 = [];
Female_data_72 = [];
Female_data_73 = [];
Female_data_74 = [];
Female_data_75 = [];
Female_data_76 = [];
Female_data_77 = [];
Female_data_78 = [];
Female_data_79 = [];
Female_data_80 = [];
Female_data_81 = [];
Female_data_82 = [];
Female_data_83 = [];
Female_data_84 = [];
Female_data_85 = [];
Female_data_86 = [];
Female_data_87 = [];

Male_data_50 = []; % == 50
Male_data_51 = [];
Male_data_52 = [];
Male_data_53 = [];
Male_data_54 = [];
Male_data_55 = [];
Male_data_56 = [];
Male_data_57 = [];
Male_data_58 = [];
Male_data_59 = [];
Male_data_60 = [];
Male_data_61 = [];
Male_data_62 = [];
Male_data_63 = [];
Male_data_64 = [];
Male_data_65 = [];
Male_data_66 = [];
Male_data_67 = [];
Male_data_68 = [];
Male_data_69 = [];
Male_data_70 = [];
Male_data_71 = [];
Male_data_72 = [];
Male_data_73 = [];
Male_data_74 = [];
Male_data_75 = [];
Male_data_76 = [];
Male_data_77 = [];
Male_data_78 = [];
Male_data_79 = [];
Male_data_80 = [];
Male_data_81 = [];
Male_data_82 = [];
Male_data_83 = [];
Male_data_84 = [];
Male_data_85 = [];
Male_data_86 = [];
Male_data_87 = [];

% For Female
[M N] = size(Female_data); % No.	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Female_data(i,2) == 50
        Female_data_50 = [Female_data_50; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 51
        Female_data_51 = [Female_data_51; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 52
        Female_data_52 = [Female_data_52; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 53
        Female_data_53 = [Female_data_53; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 54
        Female_data_54 = [Female_data_54; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 55
        Female_data_55 = [Female_data_55; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 56
        Female_data_56 = [Female_data_56; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 57
        Female_data_57 = [Female_data_57; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 58
        Female_data_58 = [Female_data_58; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 59
        Female_data_59 = [Female_data_59; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 60
        Female_data_60 = [Female_data_60; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 61
        Female_data_61 = [Female_data_61; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 62
        Female_data_62 = [Female_data_62; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 63
        Female_data_63 = [Female_data_63; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 64
        Female_data_64 = [Female_data_64; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 65
        Female_data_65 = [Female_data_65; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 66
        Female_data_66 = [Female_data_66; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 67
        Female_data_67 = [Female_data_67; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 68
        Female_data_68 = [Female_data_68; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 69
        Female_data_69 = [Female_data_69; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 70
        Female_data_70 = [Female_data_70; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 71
        Female_data_71 = [Female_data_71; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 72
        Female_data_72 = [Female_data_72; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 73
        Female_data_73 = [Female_data_73; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 74
        Female_data_74 = [Female_data_74; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 75
        Female_data_75 = [Female_data_75; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 76
        Female_data_76 = [Female_data_76; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 77
        Female_data_77 = [Female_data_77; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 78
        Female_data_78 = [Female_data_78; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 79
        Female_data_79 = [Female_data_79; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 80
        Female_data_80 = [Female_data_80; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 81
        Female_data_81 = [Female_data_81; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 82
        Female_data_82 = [Female_data_82; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 83
        Female_data_83 = [Female_data_83; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 84
        Female_data_84 = [Female_data_84; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 85
        Female_data_85 = [Female_data_85; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 86
        Female_data_86 = [Female_data_86; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 87
        Female_data_87 = [Female_data_87; Female_data(i,3) Female_data(i,4)];
    end
end

% For Male
[M N] = size(Male_data); % No.	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Male_data(i,2) == 50
        Male_data_50 = [Male_data_50; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 51
        Male_data_51 = [Male_data_51; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 52
        Male_data_52 = [Male_data_52; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 53
        Male_data_53 = [Male_data_53; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 54
        Male_data_54 = [Male_data_54; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 55
        Male_data_55 = [Male_data_55; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 56
        Male_data_56 = [Male_data_56; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 57
        Male_data_57 = [Male_data_57; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 58
        Male_data_58 = [Male_data_58; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 59
        Male_data_59 = [Male_data_59; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 60
        Male_data_60 = [Male_data_60; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 61
        Male_data_61 = [Male_data_61; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 62
        Male_data_62 = [Male_data_62; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 63
        Male_data_63 = [Male_data_63; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 64
        Male_data_64 = [Male_data_64; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 65
        Male_data_65 = [Male_data_65; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 66
        Male_data_66 = [Male_data_66; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 67
        Male_data_67 = [Male_data_67; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 68
        Male_data_68 = [Male_data_68; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 69
        Male_data_69 = [Male_data_69; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 70
        Male_data_70 = [Male_data_70; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 71
        Male_data_71 = [Male_data_71; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 72
        Male_data_72 = [Male_data_72; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 73
        Male_data_73 = [Male_data_73; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 74
        Male_data_74 = [Male_data_74; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 75
        Male_data_75 = [Male_data_75; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 76
        Male_data_76 = [Male_data_76; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 77
        Male_data_77 = [Male_data_77; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 78
        Male_data_78 = [Male_data_78; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 79
        Male_data_79 = [Male_data_79; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 80
        Male_data_80 = [Male_data_80; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 81
        Male_data_81 = [Male_data_81; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 82
        Male_data_82 = [Male_data_82; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 83
        Male_data_83 = [Male_data_83; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 84
        Male_data_84 = [Male_data_84; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 85
        Male_data_85 = [Male_data_85; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 86
        Male_data_86 = [Male_data_86; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 87
        Male_data_87 = [Male_data_87; Male_data(i,3) Male_data(i,4)];
    end
end

% We calculate the coefficients of a and b in 1=a/Weight+b*Height for this
% dataset
Age_16_Italy = 50:87;
Proportion_Ht_16_Italy_Female = [];
Proportion_Ht_16_Italy_Male = [];

% For Female
% Aged 50
Y_data = Female_data_50(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_16_Italy(1);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_16_Italy_Female = [Proportion_Ht_16_Italy_Female My_Number/M*100];
% Aged 51
Y_data = Female_data_51(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_16_Italy(2);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_16_Italy_Female = [Proportion_Ht_16_Italy_Female My_Number/M*100];
% Aged 52
Y_data = Female_data_52(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_16_Italy(3);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_16_Italy_Female = [Proportion_Ht_16_Italy_Female My_Number/M*100];
% Aged 53
Y_data = Female_data_53(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_16_Italy(4);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_16_Italy_Female = [Proportion_Ht_16_Italy_Female My_Number/M*100];
% Aged 54
Y_data = Female_data_54(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_16_Italy(5);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_16_Italy_Female = [Proportion_Ht_16_Italy_Female My_Number/M*100];
% Aged 55
Y_data = Female_data_55(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_16_Italy(6);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_16_Italy_Female = [Proportion_Ht_16_Italy_Female My_Number/M*100];
% Aged 56
Y_data = Female_data_56(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_16_Italy(7);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_16_Italy_Female = [Proportion_Ht_16_Italy_Female My_Number/M*100];
% Aged 57
Y_data = Female_data_57(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_16_Italy(8);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_16_Italy_Female = [Proportion_Ht_16_Italy_Female My_Number/M*100];
% Aged 58
Y_data = Female_data_58(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_16_Italy(9);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_16_Italy_Female = [Proportion_Ht_16_Italy_Female My_Number/M*100];
% Aged 59
Y_data = Female_data_59(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_16_Italy(10);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_16_Italy_Female = [Proportion_Ht_16_Italy_Female My_Number/M*100];
% Aged 60
Y_data = Female_data_60(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_16_Italy(11);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_16_Italy_Female = [Proportion_Ht_16_Italy_Female My_Number/M*100];
% Aged 61
Y_data = Female_data_61(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_16_Italy(12);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_16_Italy_Female = [Proportion_Ht_16_Italy_Female My_Number/M*100];
% Aged 62
Y_data = Female_data_62(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_16_Italy(13);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_16_Italy_Female = [Proportion_Ht_16_Italy_Female My_Number/M*100];
% Aged 63
Y_data = Female_data_63(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_16_Italy(14);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_16_Italy_Female = [Proportion_Ht_16_Italy_Female My_Number/M*100];
% Aged 64
Y_data = Female_data_64(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_16_Italy(15);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_16_Italy_Female = [Proportion_Ht_16_Italy_Female My_Number/M*100];
% Aged 65
Y_data = Female_data_65(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_16_Italy(16);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_16_Italy_Female = [Proportion_Ht_16_Italy_Female My_Number/M*100];
% Aged 66
Y_data = Female_data_66(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_16_Italy(17);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_16_Italy_Female = [Proportion_Ht_16_Italy_Female My_Number/M*100];
% Aged 67
Y_data = Female_data_67(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_16_Italy(18);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_16_Italy_Female = [Proportion_Ht_16_Italy_Female My_Number/M*100];
% Aged 68
Y_data = Female_data_68(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_16_Italy(19);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_16_Italy_Female = [Proportion_Ht_16_Italy_Female My_Number/M*100];
% Aged 69
Y_data = Female_data_69(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_16_Italy(20);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_16_Italy_Female = [Proportion_Ht_16_Italy_Female My_Number/M*100];
% Aged 70
Y_data = Female_data_70(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_16_Italy(21);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_16_Italy_Female = [Proportion_Ht_16_Italy_Female My_Number/M*100];
% Aged 71
Y_data = Female_data_71(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_16_Italy(22);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_16_Italy_Female = [Proportion_Ht_16_Italy_Female My_Number/M*100];
% Aged 72
Y_data = Female_data_72(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_16_Italy(23);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_16_Italy_Female = [Proportion_Ht_16_Italy_Female My_Number/M*100];
% Aged 73
Y_data = Female_data_73(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_16_Italy(24);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_16_Italy_Female = [Proportion_Ht_16_Italy_Female My_Number/M*100];
% Aged 74
Y_data = Female_data_74(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_16_Italy(25);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_16_Italy_Female = [Proportion_Ht_16_Italy_Female My_Number/M*100];
% Aged 75
Y_data = Female_data_75(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_16_Italy(26);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_16_Italy_Female = [Proportion_Ht_16_Italy_Female My_Number/M*100];
% Aged 76
Y_data = Female_data_76(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_16_Italy(27);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_16_Italy_Female = [Proportion_Ht_16_Italy_Female My_Number/M*100];
% Aged 77
Y_data = Female_data_77(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_16_Italy(28);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_16_Italy_Female = [Proportion_Ht_16_Italy_Female My_Number/M*100];
% Aged 78
Y_data = Female_data_78(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_16_Italy(29);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_16_Italy_Female = [Proportion_Ht_16_Italy_Female My_Number/M*100];
% Aged 79
Y_data = Female_data_79(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_16_Italy(30);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_16_Italy_Female = [Proportion_Ht_16_Italy_Female My_Number/M*100];
% Aged 80
Y_data = Female_data_80(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_16_Italy(31);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_16_Italy_Female = [Proportion_Ht_16_Italy_Female My_Number/M*100];
% Aged 81
Y_data = Female_data_81(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_16_Italy(32);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_16_Italy_Female = [Proportion_Ht_16_Italy_Female My_Number/M*100];
% Aged 82
Y_data = Female_data_82(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_16_Italy(33);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_16_Italy_Female = [Proportion_Ht_16_Italy_Female My_Number/M*100];
% Aged 83
Y_data = Female_data_83(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_16_Italy(34);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_16_Italy_Female = [Proportion_Ht_16_Italy_Female My_Number/M*100];
% Aged 84
Y_data = Female_data_84(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_16_Italy(35);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_16_Italy_Female = [Proportion_Ht_16_Italy_Female My_Number/M*100];
% Aged 85
Y_data = Female_data_85(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_16_Italy(36);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_16_Italy_Female = [Proportion_Ht_16_Italy_Female My_Number/M*100];
% Aged 86
Y_data = Female_data_86(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_16_Italy(37);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_16_Italy_Female = [Proportion_Ht_16_Italy_Female My_Number/M*100];
% Aged 87
Y_data = Female_data_87(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_16_Italy(38);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_16_Italy_Female = [Proportion_Ht_16_Italy_Female My_Number/M*100];

% For Male
% Aged 50
Y_data = Male_data_50(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_16_Italy(1);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_16_Italy_Male = [Proportion_Ht_16_Italy_Male My_Number/M*100];
% Aged 51
Y_data = Male_data_51(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_16_Italy(2);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_16_Italy_Male = [Proportion_Ht_16_Italy_Male My_Number/M*100];
% Aged 52
Y_data = Male_data_52(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_16_Italy(3);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_16_Italy_Male = [Proportion_Ht_16_Italy_Male My_Number/M*100];
% Aged 53
Y_data = Male_data_53(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_16_Italy(4);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_16_Italy_Male = [Proportion_Ht_16_Italy_Male My_Number/M*100];
% Aged 54
Y_data = Male_data_54(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_16_Italy(5);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_16_Italy_Male = [Proportion_Ht_16_Italy_Male My_Number/M*100];
% Aged 55
Y_data = Male_data_55(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_16_Italy(6);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_16_Italy_Male = [Proportion_Ht_16_Italy_Male My_Number/M*100];
% Aged 56
Y_data = Male_data_56(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_16_Italy(7);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_16_Italy_Male = [Proportion_Ht_16_Italy_Male My_Number/M*100];
% Aged 57
Y_data = Male_data_57(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_16_Italy(8);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_16_Italy_Male = [Proportion_Ht_16_Italy_Male My_Number/M*100];
% Aged 58
Y_data = Male_data_58(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_16_Italy(9);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_16_Italy_Male = [Proportion_Ht_16_Italy_Male My_Number/M*100];
% Aged 59
Y_data = Male_data_59(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_16_Italy(10);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_16_Italy_Male = [Proportion_Ht_16_Italy_Male My_Number/M*100];
% Aged 60
Y_data = Male_data_60(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_16_Italy(11);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_16_Italy_Male = [Proportion_Ht_16_Italy_Male My_Number/M*100];
% Aged 61
Y_data = Male_data_61(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_16_Italy(12);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_16_Italy_Male = [Proportion_Ht_16_Italy_Male My_Number/M*100];
% Aged 62
Y_data = Male_data_62(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_16_Italy(13);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_16_Italy_Male = [Proportion_Ht_16_Italy_Male My_Number/M*100];
% Aged 63
Y_data = Male_data_63(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_16_Italy(14);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_16_Italy_Male = [Proportion_Ht_16_Italy_Male My_Number/M*100];
% Aged 64
Y_data = Male_data_64(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_16_Italy(15);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_16_Italy_Male = [Proportion_Ht_16_Italy_Male My_Number/M*100];
% Aged 65
Y_data = Male_data_65(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_16_Italy(16);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_16_Italy_Male = [Proportion_Ht_16_Italy_Male My_Number/M*100];
% Aged 66
Y_data = Male_data_66(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_16_Italy(17);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_16_Italy_Male = [Proportion_Ht_16_Italy_Male My_Number/M*100];
% Aged 67
Y_data = Male_data_67(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_16_Italy(18);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_16_Italy_Male = [Proportion_Ht_16_Italy_Male My_Number/M*100];
% Aged 68
Y_data = Male_data_68(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_16_Italy(19);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_16_Italy_Male = [Proportion_Ht_16_Italy_Male My_Number/M*100];
% Aged 69
Y_data = Male_data_69(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_16_Italy(20);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_16_Italy_Male = [Proportion_Ht_16_Italy_Male My_Number/M*100];
% Aged 70
Y_data = Male_data_70(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_16_Italy(21);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_16_Italy_Male = [Proportion_Ht_16_Italy_Male My_Number/M*100];
% Aged 71
Y_data = Male_data_71(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_16_Italy(22);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_16_Italy_Male = [Proportion_Ht_16_Italy_Male My_Number/M*100];
% Aged 72
Y_data = Male_data_72(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_16_Italy(23);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_16_Italy_Male = [Proportion_Ht_16_Italy_Male My_Number/M*100];
% Aged 73
Y_data = Male_data_73(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_16_Italy(24);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_16_Italy_Male = [Proportion_Ht_16_Italy_Male My_Number/M*100];
% Aged 74
Y_data = Male_data_74(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_16_Italy(25);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_16_Italy_Male = [Proportion_Ht_16_Italy_Male My_Number/M*100];
% Aged 75
Y_data = Male_data_75(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_16_Italy(26);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_16_Italy_Male = [Proportion_Ht_16_Italy_Male My_Number/M*100];
% Aged 76
Y_data = Male_data_76(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_16_Italy(27);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_16_Italy_Male = [Proportion_Ht_16_Italy_Male My_Number/M*100];
% Aged 77
Y_data = Male_data_77(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_16_Italy(28);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_16_Italy_Male = [Proportion_Ht_16_Italy_Male My_Number/M*100];
% Aged 78
Y_data = Male_data_78(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_16_Italy(29);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_16_Italy_Male = [Proportion_Ht_16_Italy_Male My_Number/M*100];
% Aged 79
Y_data = Male_data_79(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_16_Italy(30);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_16_Italy_Male = [Proportion_Ht_16_Italy_Male My_Number/M*100];
% Aged 80
Y_data = Male_data_80(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_16_Italy(31);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_16_Italy_Male = [Proportion_Ht_16_Italy_Male My_Number/M*100];
% Aged 81
Y_data = Male_data_81(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_16_Italy(32);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_16_Italy_Male = [Proportion_Ht_16_Italy_Male My_Number/M*100];
% Aged 82
Y_data = Male_data_82(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_16_Italy(33);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_16_Italy_Male = [Proportion_Ht_16_Italy_Male My_Number/M*100];
% Aged 83
Y_data = Male_data_83(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_16_Italy(34);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_16_Italy_Male = [Proportion_Ht_16_Italy_Male My_Number/M*100];
% Aged 84
Y_data = Male_data_84(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_16_Italy(35);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_16_Italy_Male = [Proportion_Ht_16_Italy_Male My_Number/M*100];
% Aged 85
Y_data = Male_data_85(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_16_Italy(36);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_16_Italy_Male = [Proportion_Ht_16_Italy_Male My_Number/M*100];
% Aged 86
Y_data = Male_data_86(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_16_Italy(37);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_16_Italy_Male = [Proportion_Ht_16_Italy_Male My_Number/M*100];
% Aged 87
Y_data = Male_data_87(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_16_Italy(38);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_16_Italy_Male = [Proportion_Ht_16_Italy_Male My_Number/M*100];

%% 15_Spain
% Loading the data
Female_data = xlsread('15_Spain.xlsx','Female');
Male_data = xlsread('15_Spain.xlsx','Male');
% Grouping by age
Female_data_50 = []; % == 50
Female_data_51 = [];
Female_data_52 = [];
Female_data_53 = [];
Female_data_54 = [];
Female_data_55 = [];
Female_data_56 = [];
Female_data_57 = [];
Female_data_58 = [];
Female_data_59 = [];
Female_data_60 = [];
Female_data_61 = [];
Female_data_62 = [];
Female_data_63 = [];
Female_data_64 = [];
Female_data_65 = [];
Female_data_66 = [];
Female_data_67 = [];
Female_data_68 = [];
Female_data_69 = [];
Female_data_70 = [];
Female_data_71 = [];
Female_data_72 = [];
Female_data_73 = [];
Female_data_74 = [];
Female_data_75 = [];
Female_data_76 = [];
Female_data_77 = [];
Female_data_78 = [];
Female_data_79 = [];
Female_data_80 = [];
Female_data_81 = [];
Female_data_82 = [];
Female_data_83 = [];
Female_data_84 = [];
Female_data_85 = [];
Female_data_86 = [];
Female_data_87 = [];

Male_data_50 = []; % == 50
Male_data_51 = [];
Male_data_52 = [];
Male_data_53 = [];
Male_data_54 = [];
Male_data_55 = [];
Male_data_56 = [];
Male_data_57 = [];
Male_data_58 = [];
Male_data_59 = [];
Male_data_60 = [];
Male_data_61 = [];
Male_data_62 = [];
Male_data_63 = [];
Male_data_64 = [];
Male_data_65 = [];
Male_data_66 = [];
Male_data_67 = [];
Male_data_68 = [];
Male_data_69 = [];
Male_data_70 = [];
Male_data_71 = [];
Male_data_72 = [];
Male_data_73 = [];
Male_data_74 = [];
Male_data_75 = [];
Male_data_76 = [];
Male_data_77 = [];
Male_data_78 = [];
Male_data_79 = [];
Male_data_80 = [];
Male_data_81 = [];
Male_data_82 = [];
Male_data_83 = [];
Male_data_84 = [];
Male_data_85 = [];
Male_data_86 = [];
Male_data_87 = [];

% For Female
[M N] = size(Female_data); % No.	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Female_data(i,2) == 50
        Female_data_50 = [Female_data_50; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 51
        Female_data_51 = [Female_data_51; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 52
        Female_data_52 = [Female_data_52; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 53
        Female_data_53 = [Female_data_53; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 54
        Female_data_54 = [Female_data_54; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 55
        Female_data_55 = [Female_data_55; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 56
        Female_data_56 = [Female_data_56; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 57
        Female_data_57 = [Female_data_57; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 58
        Female_data_58 = [Female_data_58; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 59
        Female_data_59 = [Female_data_59; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 60
        Female_data_60 = [Female_data_60; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 61
        Female_data_61 = [Female_data_61; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 62
        Female_data_62 = [Female_data_62; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 63
        Female_data_63 = [Female_data_63; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 64
        Female_data_64 = [Female_data_64; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 65
        Female_data_65 = [Female_data_65; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 66
        Female_data_66 = [Female_data_66; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 67
        Female_data_67 = [Female_data_67; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 68
        Female_data_68 = [Female_data_68; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 69
        Female_data_69 = [Female_data_69; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 70
        Female_data_70 = [Female_data_70; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 71
        Female_data_71 = [Female_data_71; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 72
        Female_data_72 = [Female_data_72; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 73
        Female_data_73 = [Female_data_73; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 74
        Female_data_74 = [Female_data_74; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 75
        Female_data_75 = [Female_data_75; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 76
        Female_data_76 = [Female_data_76; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 77
        Female_data_77 = [Female_data_77; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 78
        Female_data_78 = [Female_data_78; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 79
        Female_data_79 = [Female_data_79; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 80
        Female_data_80 = [Female_data_80; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 81
        Female_data_81 = [Female_data_81; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 82
        Female_data_82 = [Female_data_82; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 83
        Female_data_83 = [Female_data_83; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 84
        Female_data_84 = [Female_data_84; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 85
        Female_data_85 = [Female_data_85; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 86
        Female_data_86 = [Female_data_86; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 87
        Female_data_87 = [Female_data_87; Female_data(i,3) Female_data(i,4)];
    end
end

% For Male
[M N] = size(Male_data); % No.	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Male_data(i,2) == 50
        Male_data_50 = [Male_data_50; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 51
        Male_data_51 = [Male_data_51; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 52
        Male_data_52 = [Male_data_52; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 53
        Male_data_53 = [Male_data_53; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 54
        Male_data_54 = [Male_data_54; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 55
        Male_data_55 = [Male_data_55; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 56
        Male_data_56 = [Male_data_56; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 57
        Male_data_57 = [Male_data_57; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 58
        Male_data_58 = [Male_data_58; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 59
        Male_data_59 = [Male_data_59; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 60
        Male_data_60 = [Male_data_60; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 61
        Male_data_61 = [Male_data_61; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 62
        Male_data_62 = [Male_data_62; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 63
        Male_data_63 = [Male_data_63; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 64
        Male_data_64 = [Male_data_64; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 65
        Male_data_65 = [Male_data_65; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 66
        Male_data_66 = [Male_data_66; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 67
        Male_data_67 = [Male_data_67; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 68
        Male_data_68 = [Male_data_68; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 69
        Male_data_69 = [Male_data_69; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 70
        Male_data_70 = [Male_data_70; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 71
        Male_data_71 = [Male_data_71; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 72
        Male_data_72 = [Male_data_72; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 73
        Male_data_73 = [Male_data_73; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 74
        Male_data_74 = [Male_data_74; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 75
        Male_data_75 = [Male_data_75; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 76
        Male_data_76 = [Male_data_76; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 77
        Male_data_77 = [Male_data_77; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 78
        Male_data_78 = [Male_data_78; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 79
        Male_data_79 = [Male_data_79; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 80
        Male_data_80 = [Male_data_80; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 81
        Male_data_81 = [Male_data_81; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 82
        Male_data_82 = [Male_data_82; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 83
        Male_data_83 = [Male_data_83; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 84
        Male_data_84 = [Male_data_84; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 85
        Male_data_85 = [Male_data_85; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 86
        Male_data_86 = [Male_data_86; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 87
        Male_data_87 = [Male_data_87; Male_data(i,3) Male_data(i,4)];
    end
end

% We calculate the coefficients of a and b in 1=a/Weight+b*Height for this
% dataset
Age_15_Spain = 50:87;
Proportion_Ht_15_Spain_Female = [];
Proportion_Ht_15_Spain_Male = [];

% For Female
% Aged 50
Y_data = Female_data_50(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_15_Spain(1);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_15_Spain_Female = [Proportion_Ht_15_Spain_Female My_Number/M*100];
% Aged 51
Y_data = Female_data_51(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_15_Spain(2);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_15_Spain_Female = [Proportion_Ht_15_Spain_Female My_Number/M*100];
% Aged 52
Y_data = Female_data_52(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_15_Spain(3);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_15_Spain_Female = [Proportion_Ht_15_Spain_Female My_Number/M*100];
% Aged 53
Y_data = Female_data_53(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_15_Spain(4);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_15_Spain_Female = [Proportion_Ht_15_Spain_Female My_Number/M*100];
% Aged 54
Y_data = Female_data_54(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_15_Spain(5);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_15_Spain_Female = [Proportion_Ht_15_Spain_Female My_Number/M*100];
% Aged 55
Y_data = Female_data_55(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_15_Spain(6);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_15_Spain_Female = [Proportion_Ht_15_Spain_Female My_Number/M*100];
% Aged 56
Y_data = Female_data_56(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_15_Spain(7);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_15_Spain_Female = [Proportion_Ht_15_Spain_Female My_Number/M*100];
% Aged 57
Y_data = Female_data_57(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_15_Spain(8);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_15_Spain_Female = [Proportion_Ht_15_Spain_Female My_Number/M*100];
% Aged 58
Y_data = Female_data_58(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_15_Spain(9);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_15_Spain_Female = [Proportion_Ht_15_Spain_Female My_Number/M*100];
% Aged 59
Y_data = Female_data_59(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_15_Spain(10);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_15_Spain_Female = [Proportion_Ht_15_Spain_Female My_Number/M*100];
% Aged 60
Y_data = Female_data_60(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_15_Spain(11);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_15_Spain_Female = [Proportion_Ht_15_Spain_Female My_Number/M*100];
% Aged 61
Y_data = Female_data_61(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_15_Spain(12);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_15_Spain_Female = [Proportion_Ht_15_Spain_Female My_Number/M*100];
% Aged 62
Y_data = Female_data_62(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_15_Spain(13);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_15_Spain_Female = [Proportion_Ht_15_Spain_Female My_Number/M*100];
% Aged 63
Y_data = Female_data_63(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_15_Spain(14);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_15_Spain_Female = [Proportion_Ht_15_Spain_Female My_Number/M*100];
% Aged 64
Y_data = Female_data_64(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_15_Spain(15);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_15_Spain_Female = [Proportion_Ht_15_Spain_Female My_Number/M*100];
% Aged 65
Y_data = Female_data_65(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_15_Spain(16);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_15_Spain_Female = [Proportion_Ht_15_Spain_Female My_Number/M*100];
% Aged 66
Y_data = Female_data_66(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_15_Spain(17);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_15_Spain_Female = [Proportion_Ht_15_Spain_Female My_Number/M*100];
% Aged 67
Y_data = Female_data_67(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_15_Spain(18);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_15_Spain_Female = [Proportion_Ht_15_Spain_Female My_Number/M*100];
% Aged 68
Y_data = Female_data_68(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_15_Spain(19);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_15_Spain_Female = [Proportion_Ht_15_Spain_Female My_Number/M*100];
% Aged 69
Y_data = Female_data_69(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_15_Spain(20);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_15_Spain_Female = [Proportion_Ht_15_Spain_Female My_Number/M*100];
% Aged 70
Y_data = Female_data_70(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_15_Spain(21);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_15_Spain_Female = [Proportion_Ht_15_Spain_Female My_Number/M*100];
% Aged 71
Y_data = Female_data_71(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_15_Spain(22);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_15_Spain_Female = [Proportion_Ht_15_Spain_Female My_Number/M*100];
% Aged 72
Y_data = Female_data_72(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_15_Spain(23);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_15_Spain_Female = [Proportion_Ht_15_Spain_Female My_Number/M*100];
% Aged 73
Y_data = Female_data_73(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_15_Spain(24);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_15_Spain_Female = [Proportion_Ht_15_Spain_Female My_Number/M*100];
% Aged 74
Y_data = Female_data_74(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_15_Spain(25);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_15_Spain_Female = [Proportion_Ht_15_Spain_Female My_Number/M*100];
% Aged 75
Y_data = Female_data_75(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_15_Spain(26);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_15_Spain_Female = [Proportion_Ht_15_Spain_Female My_Number/M*100];
% Aged 76
Y_data = Female_data_76(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_15_Spain(27);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_15_Spain_Female = [Proportion_Ht_15_Spain_Female My_Number/M*100];
% Aged 77
Y_data = Female_data_77(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_15_Spain(28);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_15_Spain_Female = [Proportion_Ht_15_Spain_Female My_Number/M*100];
% Aged 78
Y_data = Female_data_78(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_15_Spain(29);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_15_Spain_Female = [Proportion_Ht_15_Spain_Female My_Number/M*100];
% Aged 79
Y_data = Female_data_79(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_15_Spain(30);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_15_Spain_Female = [Proportion_Ht_15_Spain_Female My_Number/M*100];
% Aged 80
Y_data = Female_data_80(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_15_Spain(31);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_15_Spain_Female = [Proportion_Ht_15_Spain_Female My_Number/M*100];
% Aged 81
Y_data = Female_data_81(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_15_Spain(32);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_15_Spain_Female = [Proportion_Ht_15_Spain_Female My_Number/M*100];
% Aged 82
Y_data = Female_data_82(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_15_Spain(33);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_15_Spain_Female = [Proportion_Ht_15_Spain_Female My_Number/M*100];
% Aged 83
Y_data = Female_data_83(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_15_Spain(34);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_15_Spain_Female = [Proportion_Ht_15_Spain_Female My_Number/M*100];
% Aged 84
Y_data = Female_data_84(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_15_Spain(35);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_15_Spain_Female = [Proportion_Ht_15_Spain_Female My_Number/M*100];
% Aged 85
Y_data = Female_data_85(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_15_Spain(36);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_15_Spain_Female = [Proportion_Ht_15_Spain_Female My_Number/M*100];
% Aged 86
Y_data = Female_data_86(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_15_Spain(37);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_15_Spain_Female = [Proportion_Ht_15_Spain_Female My_Number/M*100];
% Aged 87
Y_data = Female_data_87(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_15_Spain(38);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_15_Spain_Female = [Proportion_Ht_15_Spain_Female My_Number/M*100];

% For Male
% Aged 50
Y_data = Male_data_50(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_15_Spain(1);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_15_Spain_Male = [Proportion_Ht_15_Spain_Male My_Number/M*100];
% Aged 51
Y_data = Male_data_51(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_15_Spain(2);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_15_Spain_Male = [Proportion_Ht_15_Spain_Male My_Number/M*100];
% Aged 52
Y_data = Male_data_52(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_15_Spain(3);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_15_Spain_Male = [Proportion_Ht_15_Spain_Male My_Number/M*100];
% Aged 53
Y_data = Male_data_53(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_15_Spain(4);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_15_Spain_Male = [Proportion_Ht_15_Spain_Male My_Number/M*100];
% Aged 54
Y_data = Male_data_54(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_15_Spain(5);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_15_Spain_Male = [Proportion_Ht_15_Spain_Male My_Number/M*100];
% Aged 55
Y_data = Male_data_55(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_15_Spain(6);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_15_Spain_Male = [Proportion_Ht_15_Spain_Male My_Number/M*100];
% Aged 56
Y_data = Male_data_56(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_15_Spain(7);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_15_Spain_Male = [Proportion_Ht_15_Spain_Male My_Number/M*100];
% Aged 57
Y_data = Male_data_57(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_15_Spain(8);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_15_Spain_Male = [Proportion_Ht_15_Spain_Male My_Number/M*100];
% Aged 58
Y_data = Male_data_58(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_15_Spain(9);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_15_Spain_Male = [Proportion_Ht_15_Spain_Male My_Number/M*100];
% Aged 59
Y_data = Male_data_59(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_15_Spain(10);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_15_Spain_Male = [Proportion_Ht_15_Spain_Male My_Number/M*100];
% Aged 60
Y_data = Male_data_60(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_15_Spain(11);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_15_Spain_Male = [Proportion_Ht_15_Spain_Male My_Number/M*100];
% Aged 61
Y_data = Male_data_61(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_15_Spain(12);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_15_Spain_Male = [Proportion_Ht_15_Spain_Male My_Number/M*100];
% Aged 62
Y_data = Male_data_62(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_15_Spain(13);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_15_Spain_Male = [Proportion_Ht_15_Spain_Male My_Number/M*100];
% Aged 63
Y_data = Male_data_63(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_15_Spain(14);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_15_Spain_Male = [Proportion_Ht_15_Spain_Male My_Number/M*100];
% Aged 64
Y_data = Male_data_64(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_15_Spain(15);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_15_Spain_Male = [Proportion_Ht_15_Spain_Male My_Number/M*100];
% Aged 65
Y_data = Male_data_65(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_15_Spain(16);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_15_Spain_Male = [Proportion_Ht_15_Spain_Male My_Number/M*100];
% Aged 66
Y_data = Male_data_66(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_15_Spain(17);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_15_Spain_Male = [Proportion_Ht_15_Spain_Male My_Number/M*100];
% Aged 67
Y_data = Male_data_67(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_15_Spain(18);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_15_Spain_Male = [Proportion_Ht_15_Spain_Male My_Number/M*100];
% Aged 68
Y_data = Male_data_68(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_15_Spain(19);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_15_Spain_Male = [Proportion_Ht_15_Spain_Male My_Number/M*100];
% Aged 69
Y_data = Male_data_69(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_15_Spain(20);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_15_Spain_Male = [Proportion_Ht_15_Spain_Male My_Number/M*100];
% Aged 70
Y_data = Male_data_70(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_15_Spain(21);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_15_Spain_Male = [Proportion_Ht_15_Spain_Male My_Number/M*100];
% Aged 71
Y_data = Male_data_71(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_15_Spain(22);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_15_Spain_Male = [Proportion_Ht_15_Spain_Male My_Number/M*100];
% Aged 72
Y_data = Male_data_72(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_15_Spain(23);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_15_Spain_Male = [Proportion_Ht_15_Spain_Male My_Number/M*100];
% Aged 73
Y_data = Male_data_73(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_15_Spain(24);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_15_Spain_Male = [Proportion_Ht_15_Spain_Male My_Number/M*100];
% Aged 74
Y_data = Male_data_74(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_15_Spain(25);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_15_Spain_Male = [Proportion_Ht_15_Spain_Male My_Number/M*100];
% Aged 75
Y_data = Male_data_75(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_15_Spain(26);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_15_Spain_Male = [Proportion_Ht_15_Spain_Male My_Number/M*100];
% Aged 76
Y_data = Male_data_76(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_15_Spain(27);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_15_Spain_Male = [Proportion_Ht_15_Spain_Male My_Number/M*100];
% Aged 77
Y_data = Male_data_77(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_15_Spain(28);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_15_Spain_Male = [Proportion_Ht_15_Spain_Male My_Number/M*100];
% Aged 78
Y_data = Male_data_78(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_15_Spain(29);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_15_Spain_Male = [Proportion_Ht_15_Spain_Male My_Number/M*100];
% Aged 79
Y_data = Male_data_79(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_15_Spain(30);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_15_Spain_Male = [Proportion_Ht_15_Spain_Male My_Number/M*100];
% Aged 80
Y_data = Male_data_80(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_15_Spain(31);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_15_Spain_Male = [Proportion_Ht_15_Spain_Male My_Number/M*100];
% Aged 81
Y_data = Male_data_81(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_15_Spain(32);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_15_Spain_Male = [Proportion_Ht_15_Spain_Male My_Number/M*100];
% Aged 82
Y_data = Male_data_82(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_15_Spain(33);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_15_Spain_Male = [Proportion_Ht_15_Spain_Male My_Number/M*100];
% Aged 83
Y_data = Male_data_83(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_15_Spain(34);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_15_Spain_Male = [Proportion_Ht_15_Spain_Male My_Number/M*100];
% Aged 84
Y_data = Male_data_84(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_15_Spain(35);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_15_Spain_Male = [Proportion_Ht_15_Spain_Male My_Number/M*100];
% Aged 85
Y_data = Male_data_85(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_15_Spain(36);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_15_Spain_Male = [Proportion_Ht_15_Spain_Male My_Number/M*100];
% Aged 86
Y_data = Male_data_86(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_15_Spain(37);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_15_Spain_Male = [Proportion_Ht_15_Spain_Male My_Number/M*100];
% Aged 87
Y_data = Male_data_87(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_15_Spain(38);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_15_Spain_Male = [Proportion_Ht_15_Spain_Male My_Number/M*100];

%% 55_Finland
% Loading the data
Female_data = xlsread('55_Finland.xlsx','Female');
Male_data = xlsread('55_Finland.xlsx','Male');
% Grouping by age
Female_data_51 = [];
Female_data_52 = [];
Female_data_53 = [];
Female_data_54 = [];
Female_data_55 = [];
Female_data_56 = [];
Female_data_57 = [];
Female_data_58 = [];
Female_data_59 = [];
Female_data_60 = [];
Female_data_61 = [];
Female_data_62 = [];
Female_data_63 = [];
Female_data_64 = [];
Female_data_65 = [];
Female_data_66 = [];
Female_data_67 = [];
Female_data_68 = [];
Female_data_69 = [];
Female_data_70 = [];
Female_data_71 = [];
Female_data_72 = [];
Female_data_73 = [];
Female_data_74 = [];
Female_data_75 = [];
Female_data_76 = [];
Female_data_77 = [];
Female_data_78 = [];
Female_data_79 = [];
Female_data_80 = [];
Female_data_81 = [];
Female_data_82 = [];
Female_data_83 = [];
Female_data_84 = [];
Female_data_85 = [];

Male_data_51 = [];
Male_data_52 = [];
Male_data_53 = [];
Male_data_54 = [];
Male_data_55 = [];
Male_data_56 = [];
Male_data_57 = [];
Male_data_58 = [];
Male_data_59 = [];
Male_data_60 = [];
Male_data_61 = [];
Male_data_62 = [];
Male_data_63 = [];
Male_data_64 = [];
Male_data_65 = [];
Male_data_66 = [];
Male_data_67 = [];
Male_data_68 = [];
Male_data_69 = [];
Male_data_70 = [];
Male_data_71 = [];
Male_data_72 = [];
Male_data_73 = [];
Male_data_74 = [];
Male_data_75 = [];
Male_data_76 = [];
Male_data_77 = [];
Male_data_78 = [];
Male_data_79 = [];
Male_data_80 = [];
Male_data_81 = [];
Male_data_82 = [];
Male_data_83 = [];
Male_data_84 = [];
Male_data_85 = [];

% For Female
[M N] = size(Female_data); % No.	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Female_data(i,2) == 51
        Female_data_51 = [Female_data_51; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 52
        Female_data_52 = [Female_data_52; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 53
        Female_data_53 = [Female_data_53; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 54
        Female_data_54 = [Female_data_54; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 55
        Female_data_55 = [Female_data_55; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 56
        Female_data_56 = [Female_data_56; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 57
        Female_data_57 = [Female_data_57; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 58
        Female_data_58 = [Female_data_58; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 59
        Female_data_59 = [Female_data_59; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 60
        Female_data_60 = [Female_data_60; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 61
        Female_data_61 = [Female_data_61; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 62
        Female_data_62 = [Female_data_62; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 63
        Female_data_63 = [Female_data_63; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 64
        Female_data_64 = [Female_data_64; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 65
        Female_data_65 = [Female_data_65; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 66
        Female_data_66 = [Female_data_66; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 67
        Female_data_67 = [Female_data_67; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 68
        Female_data_68 = [Female_data_68; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 69
        Female_data_69 = [Female_data_69; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 70
        Female_data_70 = [Female_data_70; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 71
        Female_data_71 = [Female_data_71; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 72
        Female_data_72 = [Female_data_72; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 73
        Female_data_73 = [Female_data_73; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 74
        Female_data_74 = [Female_data_74; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 75
        Female_data_75 = [Female_data_75; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 76
        Female_data_76 = [Female_data_76; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 77
        Female_data_77 = [Female_data_77; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 78
        Female_data_78 = [Female_data_78; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 79
        Female_data_79 = [Female_data_79; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 80
        Female_data_80 = [Female_data_80; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 81
        Female_data_81 = [Female_data_81; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 82
        Female_data_82 = [Female_data_82; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 83
        Female_data_83 = [Female_data_83; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 84
        Female_data_84 = [Female_data_84; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 85
        Female_data_85 = [Female_data_85; Female_data(i,3) Female_data(i,4)];
    end
end

% For Male
[M N] = size(Male_data); % No.	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Male_data(i,2) == 51
        Male_data_51 = [Male_data_51; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 52
        Male_data_52 = [Male_data_52; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 53
        Male_data_53 = [Male_data_53; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 54
        Male_data_54 = [Male_data_54; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 55
        Male_data_55 = [Male_data_55; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 56
        Male_data_56 = [Male_data_56; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 57
        Male_data_57 = [Male_data_57; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 58
        Male_data_58 = [Male_data_58; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 59
        Male_data_59 = [Male_data_59; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 60
        Male_data_60 = [Male_data_60; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 61
        Male_data_61 = [Male_data_61; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 62
        Male_data_62 = [Male_data_62; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 63
        Male_data_63 = [Male_data_63; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 64
        Male_data_64 = [Male_data_64; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 65
        Male_data_65 = [Male_data_65; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 66
        Male_data_66 = [Male_data_66; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 67
        Male_data_67 = [Male_data_67; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 68
        Male_data_68 = [Male_data_68; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 69
        Male_data_69 = [Male_data_69; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 70
        Male_data_70 = [Male_data_70; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 71
        Male_data_71 = [Male_data_71; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 72
        Male_data_72 = [Male_data_72; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 73
        Male_data_73 = [Male_data_73; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 74
        Male_data_74 = [Male_data_74; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 75
        Male_data_75 = [Male_data_75; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 76
        Male_data_76 = [Male_data_76; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 77
        Male_data_77 = [Male_data_77; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 78
        Male_data_78 = [Male_data_78; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 79
        Male_data_79 = [Male_data_79; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 80
        Male_data_80 = [Male_data_80; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 81
        Male_data_81 = [Male_data_81; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 82
        Male_data_82 = [Male_data_82; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 83
        Male_data_83 = [Male_data_83; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 84
        Male_data_84 = [Male_data_84; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 85
        Male_data_85 = [Male_data_85; Male_data(i,3) Male_data(i,4)];
    end
end

% We calculate the coefficients of a and b in 1=a/Weight+b*Height for this
% dataset
Age_55_Finland = 51:85;
Proportion_Ht_55_Finland_Female = [];
Proportion_Ht_55_Finland_Male = [];
Coefficient_b_Female_1_55_Finland = [0 Coefficient_b_Female_1_55_Finland];
Coefficient_b_Male_1_55_Finland = [0 Coefficient_b_Male_1_55_Finland];

% For Female
% Aged 51
Y_data = Female_data_51(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_55_Finland(2);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_55_Finland_Female = [Proportion_Ht_55_Finland_Female My_Number/M*100];
% Aged 52
Y_data = Female_data_52(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_55_Finland(3);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_55_Finland_Female = [Proportion_Ht_55_Finland_Female My_Number/M*100];
% Aged 53
Y_data = Female_data_53(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_55_Finland(4);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_55_Finland_Female = [Proportion_Ht_55_Finland_Female My_Number/M*100];
% Aged 54
Y_data = Female_data_54(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_55_Finland(5);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_55_Finland_Female = [Proportion_Ht_55_Finland_Female My_Number/M*100];
% Aged 55
Y_data = Female_data_55(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_55_Finland(6);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_55_Finland_Female = [Proportion_Ht_55_Finland_Female My_Number/M*100];
% Aged 56
Y_data = Female_data_56(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_55_Finland(7);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_55_Finland_Female = [Proportion_Ht_55_Finland_Female My_Number/M*100];
% Aged 57
Y_data = Female_data_57(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_55_Finland(8);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_55_Finland_Female = [Proportion_Ht_55_Finland_Female My_Number/M*100];
% Aged 58
Y_data = Female_data_58(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_55_Finland(9);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_55_Finland_Female = [Proportion_Ht_55_Finland_Female My_Number/M*100];
% Aged 59
Y_data = Female_data_59(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_55_Finland(10);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_55_Finland_Female = [Proportion_Ht_55_Finland_Female My_Number/M*100];
% Aged 60
Y_data = Female_data_60(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_55_Finland(11);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_55_Finland_Female = [Proportion_Ht_55_Finland_Female My_Number/M*100];
% Aged 61
Y_data = Female_data_61(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_55_Finland(12);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_55_Finland_Female = [Proportion_Ht_55_Finland_Female My_Number/M*100];
% Aged 62
Y_data = Female_data_62(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_55_Finland(13);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_55_Finland_Female = [Proportion_Ht_55_Finland_Female My_Number/M*100];
% Aged 63
Y_data = Female_data_63(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_55_Finland(14);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_55_Finland_Female = [Proportion_Ht_55_Finland_Female My_Number/M*100];
% Aged 64
Y_data = Female_data_64(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_55_Finland(15);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_55_Finland_Female = [Proportion_Ht_55_Finland_Female My_Number/M*100];
% Aged 65
Y_data = Female_data_65(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_55_Finland(16);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_55_Finland_Female = [Proportion_Ht_55_Finland_Female My_Number/M*100];
% Aged 66
Y_data = Female_data_66(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_55_Finland(17);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_55_Finland_Female = [Proportion_Ht_55_Finland_Female My_Number/M*100];
% Aged 67
Y_data = Female_data_67(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_55_Finland(18);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_55_Finland_Female = [Proportion_Ht_55_Finland_Female My_Number/M*100];
% Aged 68
Y_data = Female_data_68(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_55_Finland(19);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_55_Finland_Female = [Proportion_Ht_55_Finland_Female My_Number/M*100];
% Aged 69
Y_data = Female_data_69(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_55_Finland(20);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_55_Finland_Female = [Proportion_Ht_55_Finland_Female My_Number/M*100];
% Aged 70
Y_data = Female_data_70(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_55_Finland(21);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_55_Finland_Female = [Proportion_Ht_55_Finland_Female My_Number/M*100];
% Aged 71
Y_data = Female_data_71(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_55_Finland(22);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_55_Finland_Female = [Proportion_Ht_55_Finland_Female My_Number/M*100];
% Aged 72
Y_data = Female_data_72(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_55_Finland(23);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_55_Finland_Female = [Proportion_Ht_55_Finland_Female My_Number/M*100];
% Aged 73
Y_data = Female_data_73(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_55_Finland(24);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_55_Finland_Female = [Proportion_Ht_55_Finland_Female My_Number/M*100];
% Aged 74
Y_data = Female_data_74(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_55_Finland(25);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_55_Finland_Female = [Proportion_Ht_55_Finland_Female My_Number/M*100];
% Aged 75
Y_data = Female_data_75(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_55_Finland(26);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_55_Finland_Female = [Proportion_Ht_55_Finland_Female My_Number/M*100];
% Aged 76
Y_data = Female_data_76(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_55_Finland(27);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_55_Finland_Female = [Proportion_Ht_55_Finland_Female My_Number/M*100];
% Aged 77
Y_data = Female_data_77(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_55_Finland(28);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_55_Finland_Female = [Proportion_Ht_55_Finland_Female My_Number/M*100];
% Aged 78
Y_data = Female_data_78(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_55_Finland(29);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_55_Finland_Female = [Proportion_Ht_55_Finland_Female My_Number/M*100];
% Aged 79
Y_data = Female_data_79(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_55_Finland(30);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_55_Finland_Female = [Proportion_Ht_55_Finland_Female My_Number/M*100];
% Aged 80
Y_data = Female_data_80(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_55_Finland(31);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_55_Finland_Female = [Proportion_Ht_55_Finland_Female My_Number/M*100];
% Aged 81
Y_data = Female_data_81(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_55_Finland(32);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_55_Finland_Female = [Proportion_Ht_55_Finland_Female My_Number/M*100];
% Aged 82
Y_data = Female_data_82(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_55_Finland(33);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_55_Finland_Female = [Proportion_Ht_55_Finland_Female My_Number/M*100];
% Aged 83
Y_data = Female_data_83(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_55_Finland(34);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_55_Finland_Female = [Proportion_Ht_55_Finland_Female My_Number/M*100];
% Aged 84
Y_data = Female_data_84(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_55_Finland(35);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_55_Finland_Female = [Proportion_Ht_55_Finland_Female My_Number/M*100];
% Aged 85
Y_data = Female_data_85(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_55_Finland(36);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_55_Finland_Female = [Proportion_Ht_55_Finland_Female My_Number/M*100];

% For Male
% Aged 51
Y_data = Male_data_51(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_55_Finland(2);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_55_Finland_Male = [Proportion_Ht_55_Finland_Male My_Number/M*100];
% Aged 52
Y_data = Male_data_52(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_55_Finland(3);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_55_Finland_Male = [Proportion_Ht_55_Finland_Male My_Number/M*100];
% Aged 53
Y_data = Male_data_53(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_55_Finland(4);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_55_Finland_Male = [Proportion_Ht_55_Finland_Male My_Number/M*100];
% Aged 54
Y_data = Male_data_54(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_55_Finland(5);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_55_Finland_Male = [Proportion_Ht_55_Finland_Male My_Number/M*100];
% Aged 55
Y_data = Male_data_55(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_55_Finland(6);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_55_Finland_Male = [Proportion_Ht_55_Finland_Male My_Number/M*100];
% Aged 56
Y_data = Male_data_56(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_55_Finland(7);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_55_Finland_Male = [Proportion_Ht_55_Finland_Male My_Number/M*100];
% Aged 57
Y_data = Male_data_57(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_55_Finland(8);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_55_Finland_Male = [Proportion_Ht_55_Finland_Male My_Number/M*100];
% Aged 58
Y_data = Male_data_58(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_55_Finland(9);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_55_Finland_Male = [Proportion_Ht_55_Finland_Male My_Number/M*100];
% Aged 59
Y_data = Male_data_59(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_55_Finland(10);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_55_Finland_Male = [Proportion_Ht_55_Finland_Male My_Number/M*100];
% Aged 60
Y_data = Male_data_60(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_55_Finland(11);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_55_Finland_Male = [Proportion_Ht_55_Finland_Male My_Number/M*100];
% Aged 61
Y_data = Male_data_61(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_55_Finland(12);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_55_Finland_Male = [Proportion_Ht_55_Finland_Male My_Number/M*100];
% Aged 62
Y_data = Male_data_62(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_55_Finland(13);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_55_Finland_Male = [Proportion_Ht_55_Finland_Male My_Number/M*100];
% Aged 63
Y_data = Male_data_63(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_55_Finland(14);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_55_Finland_Male = [Proportion_Ht_55_Finland_Male My_Number/M*100];
% Aged 64
Y_data = Male_data_64(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_55_Finland(15);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_55_Finland_Male = [Proportion_Ht_55_Finland_Male My_Number/M*100];
% Aged 65
Y_data = Male_data_65(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_55_Finland(16);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_55_Finland_Male = [Proportion_Ht_55_Finland_Male My_Number/M*100];
% Aged 66
Y_data = Male_data_66(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_55_Finland(17);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_55_Finland_Male = [Proportion_Ht_55_Finland_Male My_Number/M*100];
% Aged 67
Y_data = Male_data_67(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_55_Finland(18);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_55_Finland_Male = [Proportion_Ht_55_Finland_Male My_Number/M*100];
% Aged 68
Y_data = Male_data_68(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_55_Finland(19);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_55_Finland_Male = [Proportion_Ht_55_Finland_Male My_Number/M*100];
% Aged 69
Y_data = Male_data_69(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_55_Finland(20);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_55_Finland_Male = [Proportion_Ht_55_Finland_Male My_Number/M*100];
% Aged 70
Y_data = Male_data_70(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_55_Finland(21);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_55_Finland_Male = [Proportion_Ht_55_Finland_Male My_Number/M*100];
% Aged 71
Y_data = Male_data_71(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_55_Finland(22);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_55_Finland_Male = [Proportion_Ht_55_Finland_Male My_Number/M*100];
% Aged 72
Y_data = Male_data_72(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_55_Finland(23);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_55_Finland_Male = [Proportion_Ht_55_Finland_Male My_Number/M*100];
% Aged 73
Y_data = Male_data_73(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_55_Finland(24);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_55_Finland_Male = [Proportion_Ht_55_Finland_Male My_Number/M*100];
% Aged 74
Y_data = Male_data_74(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_55_Finland(25);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_55_Finland_Male = [Proportion_Ht_55_Finland_Male My_Number/M*100];
% Aged 75
Y_data = Male_data_75(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_55_Finland(26);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_55_Finland_Male = [Proportion_Ht_55_Finland_Male My_Number/M*100];
% Aged 76
Y_data = Male_data_76(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_55_Finland(27);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_55_Finland_Male = [Proportion_Ht_55_Finland_Male My_Number/M*100];
% Aged 77
Y_data = Male_data_77(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_55_Finland(28);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_55_Finland_Male = [Proportion_Ht_55_Finland_Male My_Number/M*100];
% Aged 78
Y_data = Male_data_78(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_55_Finland(29);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_55_Finland_Male = [Proportion_Ht_55_Finland_Male My_Number/M*100];
% Aged 79
Y_data = Male_data_79(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_55_Finland(30);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_55_Finland_Male = [Proportion_Ht_55_Finland_Male My_Number/M*100];
% Aged 80
Y_data = Male_data_80(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_55_Finland(31);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_55_Finland_Male = [Proportion_Ht_55_Finland_Male My_Number/M*100];
% Aged 81
Y_data = Male_data_81(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_55_Finland(32);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_55_Finland_Male = [Proportion_Ht_55_Finland_Male My_Number/M*100];
% Aged 82
Y_data = Male_data_82(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_55_Finland(33);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_55_Finland_Male = [Proportion_Ht_55_Finland_Male My_Number/M*100];
% Aged 83
Y_data = Male_data_83(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_55_Finland(34);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_55_Finland_Male = [Proportion_Ht_55_Finland_Male My_Number/M*100];
% Aged 84
Y_data = Male_data_84(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_55_Finland(35);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_55_Finland_Male = [Proportion_Ht_55_Finland_Male My_Number/M*100];
% Aged 85
Y_data = Male_data_85(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_55_Finland(36);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_55_Finland_Male = [Proportion_Ht_55_Finland_Male My_Number/M*100];

%% 31_Luxembourg
% Loading the data
Female_data = xlsread('31_Luxembourg.xlsx','Female');
Male_data = xlsread('31_Luxembourg.xlsx','Male');
% Grouping by age
Female_data_52 = [];
Female_data_53 = [];
Female_data_54 = [];
Female_data_55 = [];
Female_data_56 = [];
Female_data_57 = [];
Female_data_58 = [];
Female_data_59 = [];
Female_data_60 = [];
Female_data_61 = [];
Female_data_62 = [];
Female_data_63 = [];
Female_data_64 = [];
Female_data_65 = [];
Female_data_66 = [];
Female_data_67 = [];
Female_data_68 = [];
Female_data_69 = [];
Female_data_70 = [];
Female_data_71 = [];
Female_data_72 = [];
Female_data_73 = [];
Female_data_74 = [];
Female_data_75 = [];
Female_data_76 = [];
Female_data_77 = [];
Female_data_78 = [];
Female_data_79 = [];
Female_data_80 = [];
Female_data_81 = [];
Female_data_82 = [];
Female_data_83 = [];
Female_data_84 = [];
Female_data_85 = [];

Male_data_52 = [];
Male_data_53 = [];
Male_data_54 = [];
Male_data_55 = [];
Male_data_56 = [];
Male_data_57 = [];
Male_data_58 = [];
Male_data_59 = [];
Male_data_60 = [];
Male_data_61 = [];
Male_data_62 = [];
Male_data_63 = [];
Male_data_64 = [];
Male_data_65 = [];
Male_data_66 = [];
Male_data_67 = [];
Male_data_68 = [];
Male_data_69 = [];
Male_data_70 = [];
Male_data_71 = [];
Male_data_72 = [];
Male_data_73 = [];
Male_data_74 = [];
Male_data_75 = [];
Male_data_76 = [];
Male_data_77 = [];
Male_data_78 = [];
Male_data_79 = [];
Male_data_80 = [];
Male_data_81 = [];
Male_data_82 = [];
Male_data_83 = [];
Male_data_84 = [];
Male_data_85 = [];

% For Female
[M N] = size(Female_data); % No.	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Female_data(i,2) == 52
        Female_data_52 = [Female_data_52; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 53
        Female_data_53 = [Female_data_53; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 54
        Female_data_54 = [Female_data_54; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 55
        Female_data_55 = [Female_data_55; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 56
        Female_data_56 = [Female_data_56; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 57
        Female_data_57 = [Female_data_57; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 58
        Female_data_58 = [Female_data_58; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 59
        Female_data_59 = [Female_data_59; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 60
        Female_data_60 = [Female_data_60; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 61
        Female_data_61 = [Female_data_61; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 62
        Female_data_62 = [Female_data_62; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 63
        Female_data_63 = [Female_data_63; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 64
        Female_data_64 = [Female_data_64; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 65
        Female_data_65 = [Female_data_65; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 66
        Female_data_66 = [Female_data_66; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 67
        Female_data_67 = [Female_data_67; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 68
        Female_data_68 = [Female_data_68; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 69
        Female_data_69 = [Female_data_69; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 70
        Female_data_70 = [Female_data_70; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 71
        Female_data_71 = [Female_data_71; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 72
        Female_data_72 = [Female_data_72; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 73
        Female_data_73 = [Female_data_73; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 74
        Female_data_74 = [Female_data_74; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 75
        Female_data_75 = [Female_data_75; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 76
        Female_data_76 = [Female_data_76; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 77
        Female_data_77 = [Female_data_77; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 78
        Female_data_78 = [Female_data_78; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 79
        Female_data_79 = [Female_data_79; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 80
        Female_data_80 = [Female_data_80; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 81
        Female_data_81 = [Female_data_81; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 82
        Female_data_82 = [Female_data_82; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 83
        Female_data_83 = [Female_data_83; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 84
        Female_data_84 = [Female_data_84; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 85
        Female_data_85 = [Female_data_85; Female_data(i,3) Female_data(i,4)];
    end
end

% For Male
[M N] = size(Male_data); % No.	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Male_data(i,2) == 52
        Male_data_52 = [Male_data_52; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 53
        Male_data_53 = [Male_data_53; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 54
        Male_data_54 = [Male_data_54; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 55
        Male_data_55 = [Male_data_55; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 56
        Male_data_56 = [Male_data_56; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 57
        Male_data_57 = [Male_data_57; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 58
        Male_data_58 = [Male_data_58; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 59
        Male_data_59 = [Male_data_59; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 60
        Male_data_60 = [Male_data_60; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 61
        Male_data_61 = [Male_data_61; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 62
        Male_data_62 = [Male_data_62; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 63
        Male_data_63 = [Male_data_63; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 64
        Male_data_64 = [Male_data_64; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 65
        Male_data_65 = [Male_data_65; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 66
        Male_data_66 = [Male_data_66; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 67
        Male_data_67 = [Male_data_67; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 68
        Male_data_68 = [Male_data_68; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 69
        Male_data_69 = [Male_data_69; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 70
        Male_data_70 = [Male_data_70; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 71
        Male_data_71 = [Male_data_71; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 72
        Male_data_72 = [Male_data_72; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 73
        Male_data_73 = [Male_data_73; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 74
        Male_data_74 = [Male_data_74; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 75
        Male_data_75 = [Male_data_75; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 76
        Male_data_76 = [Male_data_76; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 77
        Male_data_77 = [Male_data_77; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 78
        Male_data_78 = [Male_data_78; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 79
        Male_data_79 = [Male_data_79; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 80
        Male_data_80 = [Male_data_80; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 81
        Male_data_81 = [Male_data_81; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 82
        Male_data_82 = [Male_data_82; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 83
        Male_data_83 = [Male_data_83; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 84
        Male_data_84 = [Male_data_84; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 85
        Male_data_85 = [Male_data_85; Male_data(i,3) Male_data(i,4)];
    end
end

% We calculate the coefficients of a and b in 1=a/Weight+b*Height for this
% dataset
Age_31_Luxembourg = 52:85;
Proportion_Ht_31_Luxembourg_Female = [];
Proportion_Ht_31_Luxembourg_Male = [];
Coefficient_b_Female_1_31_Luxembourg = [0 0 Coefficient_b_Female_1_31_Luxembourg];
Coefficient_b_Male_1_31_Luxembourg = [0 0 Coefficient_b_Male_1_31_Luxembourg];

% For Female
% Aged 52
Y_data = Female_data_52(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_31_Luxembourg(3);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_31_Luxembourg_Female = [Proportion_Ht_31_Luxembourg_Female My_Number/M*100];
% Aged 53
Y_data = Female_data_53(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_31_Luxembourg(4);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_31_Luxembourg_Female = [Proportion_Ht_31_Luxembourg_Female My_Number/M*100];
% Aged 54
Y_data = Female_data_54(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_31_Luxembourg(5);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_31_Luxembourg_Female = [Proportion_Ht_31_Luxembourg_Female My_Number/M*100];
% Aged 55
Y_data = Female_data_55(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_31_Luxembourg(6);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_31_Luxembourg_Female = [Proportion_Ht_31_Luxembourg_Female My_Number/M*100];
% Aged 56
Y_data = Female_data_56(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_31_Luxembourg(7);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_31_Luxembourg_Female = [Proportion_Ht_31_Luxembourg_Female My_Number/M*100];
% Aged 57
Y_data = Female_data_57(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_31_Luxembourg(8);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_31_Luxembourg_Female = [Proportion_Ht_31_Luxembourg_Female My_Number/M*100];
% Aged 58
Y_data = Female_data_58(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_31_Luxembourg(9);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_31_Luxembourg_Female = [Proportion_Ht_31_Luxembourg_Female My_Number/M*100];
% Aged 59
Y_data = Female_data_59(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_31_Luxembourg(10);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_31_Luxembourg_Female = [Proportion_Ht_31_Luxembourg_Female My_Number/M*100];
% Aged 60
Y_data = Female_data_60(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_31_Luxembourg(11);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_31_Luxembourg_Female = [Proportion_Ht_31_Luxembourg_Female My_Number/M*100];
% Aged 61
Y_data = Female_data_61(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_31_Luxembourg(12);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_31_Luxembourg_Female = [Proportion_Ht_31_Luxembourg_Female My_Number/M*100];
% Aged 62
Y_data = Female_data_62(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_31_Luxembourg(13);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_31_Luxembourg_Female = [Proportion_Ht_31_Luxembourg_Female My_Number/M*100];
% Aged 63
Y_data = Female_data_63(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_31_Luxembourg(14);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_31_Luxembourg_Female = [Proportion_Ht_31_Luxembourg_Female My_Number/M*100];
% Aged 64
Y_data = Female_data_64(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_31_Luxembourg(15);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_31_Luxembourg_Female = [Proportion_Ht_31_Luxembourg_Female My_Number/M*100];
% Aged 65
Y_data = Female_data_65(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_31_Luxembourg(16);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_31_Luxembourg_Female = [Proportion_Ht_31_Luxembourg_Female My_Number/M*100];
% Aged 66
Y_data = Female_data_66(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_31_Luxembourg(17);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_31_Luxembourg_Female = [Proportion_Ht_31_Luxembourg_Female My_Number/M*100];
% Aged 67
Y_data = Female_data_67(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_31_Luxembourg(18);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_31_Luxembourg_Female = [Proportion_Ht_31_Luxembourg_Female My_Number/M*100];
% Aged 68
Y_data = Female_data_68(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_31_Luxembourg(19);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_31_Luxembourg_Female = [Proportion_Ht_31_Luxembourg_Female My_Number/M*100];
% Aged 69
Y_data = Female_data_69(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_31_Luxembourg(20);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_31_Luxembourg_Female = [Proportion_Ht_31_Luxembourg_Female My_Number/M*100];
% Aged 70
Y_data = Female_data_70(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_31_Luxembourg(21);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_31_Luxembourg_Female = [Proportion_Ht_31_Luxembourg_Female My_Number/M*100];
% Aged 71
Y_data = Female_data_71(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_31_Luxembourg(22);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_31_Luxembourg_Female = [Proportion_Ht_31_Luxembourg_Female My_Number/M*100];
% Aged 72
Y_data = Female_data_72(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_31_Luxembourg(23);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_31_Luxembourg_Female = [Proportion_Ht_31_Luxembourg_Female My_Number/M*100];
% Aged 73
Y_data = Female_data_73(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_31_Luxembourg(24);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_31_Luxembourg_Female = [Proportion_Ht_31_Luxembourg_Female My_Number/M*100];
% Aged 74
Y_data = Female_data_74(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_31_Luxembourg(25);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_31_Luxembourg_Female = [Proportion_Ht_31_Luxembourg_Female My_Number/M*100];
% Aged 75
Y_data = Female_data_75(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_31_Luxembourg(26);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_31_Luxembourg_Female = [Proportion_Ht_31_Luxembourg_Female My_Number/M*100];
% Aged 76
Y_data = Female_data_76(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_31_Luxembourg(27);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_31_Luxembourg_Female = [Proportion_Ht_31_Luxembourg_Female My_Number/M*100];
% Aged 77
Y_data = Female_data_77(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_31_Luxembourg(28);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_31_Luxembourg_Female = [Proportion_Ht_31_Luxembourg_Female My_Number/M*100];
% Aged 78
Y_data = Female_data_78(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_31_Luxembourg(29);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_31_Luxembourg_Female = [Proportion_Ht_31_Luxembourg_Female My_Number/M*100];
% Aged 79
Y_data = Female_data_79(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_31_Luxembourg(30);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_31_Luxembourg_Female = [Proportion_Ht_31_Luxembourg_Female My_Number/M*100];
% Aged 80
Y_data = Female_data_80(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_31_Luxembourg(31);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_31_Luxembourg_Female = [Proportion_Ht_31_Luxembourg_Female My_Number/M*100];
% Aged 81
Y_data = Female_data_81(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_31_Luxembourg(32);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_31_Luxembourg_Female = [Proportion_Ht_31_Luxembourg_Female My_Number/M*100];
% Aged 82
Y_data = Female_data_82(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_31_Luxembourg(33);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_31_Luxembourg_Female = [Proportion_Ht_31_Luxembourg_Female My_Number/M*100];
% Aged 83
Y_data = Female_data_83(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_31_Luxembourg(34);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_31_Luxembourg_Female = [Proportion_Ht_31_Luxembourg_Female My_Number/M*100];
% Aged 84
Y_data = Female_data_84(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_31_Luxembourg(35);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_31_Luxembourg_Female = [Proportion_Ht_31_Luxembourg_Female My_Number/M*100];
% Aged 85
Y_data = Female_data_85(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_31_Luxembourg(36);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_31_Luxembourg_Female = [Proportion_Ht_31_Luxembourg_Female My_Number/M*100];

% For Male
% Aged 52
Y_data = Male_data_52(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_31_Luxembourg(3);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_31_Luxembourg_Male = [Proportion_Ht_31_Luxembourg_Male My_Number/M*100];
% Aged 53
Y_data = Male_data_53(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_31_Luxembourg(4);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_31_Luxembourg_Male = [Proportion_Ht_31_Luxembourg_Male My_Number/M*100];
% Aged 54
Y_data = Male_data_54(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_31_Luxembourg(5);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_31_Luxembourg_Male = [Proportion_Ht_31_Luxembourg_Male My_Number/M*100];
% Aged 55
Y_data = Male_data_55(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_31_Luxembourg(6);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_31_Luxembourg_Male = [Proportion_Ht_31_Luxembourg_Male My_Number/M*100];
% Aged 56
Y_data = Male_data_56(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_31_Luxembourg(7);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_31_Luxembourg_Male = [Proportion_Ht_31_Luxembourg_Male My_Number/M*100];
% Aged 57
Y_data = Male_data_57(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_31_Luxembourg(8);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_31_Luxembourg_Male = [Proportion_Ht_31_Luxembourg_Male My_Number/M*100];
% Aged 58
Y_data = Male_data_58(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_31_Luxembourg(9);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_31_Luxembourg_Male = [Proportion_Ht_31_Luxembourg_Male My_Number/M*100];
% Aged 59
Y_data = Male_data_59(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_31_Luxembourg(10);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_31_Luxembourg_Male = [Proportion_Ht_31_Luxembourg_Male My_Number/M*100];
% Aged 60
Y_data = Male_data_60(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_31_Luxembourg(11);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_31_Luxembourg_Male = [Proportion_Ht_31_Luxembourg_Male My_Number/M*100];
% Aged 61
Y_data = Male_data_61(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_31_Luxembourg(12);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_31_Luxembourg_Male = [Proportion_Ht_31_Luxembourg_Male My_Number/M*100];
% Aged 62
Y_data = Male_data_62(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_31_Luxembourg(13);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_31_Luxembourg_Male = [Proportion_Ht_31_Luxembourg_Male My_Number/M*100];
% Aged 63
Y_data = Male_data_63(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_31_Luxembourg(14);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_31_Luxembourg_Male = [Proportion_Ht_31_Luxembourg_Male My_Number/M*100];
% Aged 64
Y_data = Male_data_64(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_31_Luxembourg(15);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_31_Luxembourg_Male = [Proportion_Ht_31_Luxembourg_Male My_Number/M*100];
% Aged 65
Y_data = Male_data_65(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_31_Luxembourg(16);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_31_Luxembourg_Male = [Proportion_Ht_31_Luxembourg_Male My_Number/M*100];
% Aged 66
Y_data = Male_data_66(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_31_Luxembourg(17);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_31_Luxembourg_Male = [Proportion_Ht_31_Luxembourg_Male My_Number/M*100];
% Aged 67
Y_data = Male_data_67(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_31_Luxembourg(18);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_31_Luxembourg_Male = [Proportion_Ht_31_Luxembourg_Male My_Number/M*100];
% Aged 68
Y_data = Male_data_68(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_31_Luxembourg(19);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_31_Luxembourg_Male = [Proportion_Ht_31_Luxembourg_Male My_Number/M*100];
% Aged 69
Y_data = Male_data_69(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_31_Luxembourg(20);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_31_Luxembourg_Male = [Proportion_Ht_31_Luxembourg_Male My_Number/M*100];
% Aged 70
Y_data = Male_data_70(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_31_Luxembourg(21);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_31_Luxembourg_Male = [Proportion_Ht_31_Luxembourg_Male My_Number/M*100];
% Aged 71
Y_data = Male_data_71(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_31_Luxembourg(22);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_31_Luxembourg_Male = [Proportion_Ht_31_Luxembourg_Male My_Number/M*100];
% Aged 72
Y_data = Male_data_72(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_31_Luxembourg(23);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_31_Luxembourg_Male = [Proportion_Ht_31_Luxembourg_Male My_Number/M*100];
% Aged 73
Y_data = Male_data_73(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_31_Luxembourg(24);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_31_Luxembourg_Male = [Proportion_Ht_31_Luxembourg_Male My_Number/M*100];
% Aged 74
Y_data = Male_data_74(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_31_Luxembourg(25);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_31_Luxembourg_Male = [Proportion_Ht_31_Luxembourg_Male My_Number/M*100];
% Aged 75
Y_data = Male_data_75(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_31_Luxembourg(26);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_31_Luxembourg_Male = [Proportion_Ht_31_Luxembourg_Male My_Number/M*100];
% Aged 76
Y_data = Male_data_76(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_31_Luxembourg(27);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_31_Luxembourg_Male = [Proportion_Ht_31_Luxembourg_Male My_Number/M*100];
% Aged 77
Y_data = Male_data_77(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_31_Luxembourg(28);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_31_Luxembourg_Male = [Proportion_Ht_31_Luxembourg_Male My_Number/M*100];
% Aged 78
Y_data = Male_data_78(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_31_Luxembourg(29);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_31_Luxembourg_Male = [Proportion_Ht_31_Luxembourg_Male My_Number/M*100];
% Aged 79
Y_data = Male_data_79(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_31_Luxembourg(30);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_31_Luxembourg_Male = [Proportion_Ht_31_Luxembourg_Male My_Number/M*100];
% Aged 80
Y_data = Male_data_80(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_31_Luxembourg(31);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_31_Luxembourg_Male = [Proportion_Ht_31_Luxembourg_Male My_Number/M*100];
% Aged 81
Y_data = Male_data_81(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_31_Luxembourg(32);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_31_Luxembourg_Male = [Proportion_Ht_31_Luxembourg_Male My_Number/M*100];
% Aged 82
Y_data = Male_data_82(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_31_Luxembourg(33);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_31_Luxembourg_Male = [Proportion_Ht_31_Luxembourg_Male My_Number/M*100];
% Aged 83
Y_data = Male_data_83(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_31_Luxembourg(34);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_31_Luxembourg_Male = [Proportion_Ht_31_Luxembourg_Male My_Number/M*100];
% Aged 84
Y_data = Male_data_84(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_31_Luxembourg(35);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_31_Luxembourg_Male = [Proportion_Ht_31_Luxembourg_Male My_Number/M*100];
% Aged 85
Y_data = Male_data_85(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_31_Luxembourg(36);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_31_Luxembourg_Male = [Proportion_Ht_31_Luxembourg_Male My_Number/M*100];

%% 23_Belgium
% Loading the data
Female_data = xlsread('23_Belgium.xlsx','Female');
Male_data = xlsread('23_Belgium.xlsx','Male');
% Grouping by age
Female_data_50 = []; % == 50
Female_data_51 = [];
Female_data_52 = [];
Female_data_53 = [];
Female_data_54 = [];
Female_data_55 = [];
Female_data_56 = [];
Female_data_57 = [];
Female_data_58 = [];
Female_data_59 = [];
Female_data_60 = [];
Female_data_61 = [];
Female_data_62 = [];
Female_data_63 = [];
Female_data_64 = [];
Female_data_65 = [];
Female_data_66 = [];
Female_data_67 = [];
Female_data_68 = [];
Female_data_69 = [];
Female_data_70 = [];
Female_data_71 = [];
Female_data_72 = [];
Female_data_73 = [];
Female_data_74 = [];
Female_data_75 = [];
Female_data_76 = [];
Female_data_77 = [];
Female_data_78 = [];
Female_data_79 = [];
Female_data_80 = [];
Female_data_81 = [];
Female_data_82 = [];
Female_data_83 = [];
Female_data_84 = [];
Female_data_85 = [];
Female_data_86 = [];
Female_data_87 = [];
Female_data_88 = [];
Female_data_89 = [];
Female_data_90 = []; % ==90

Male_data_50 = []; % == 50
Male_data_51 = [];
Male_data_52 = [];
Male_data_53 = [];
Male_data_54 = [];
Male_data_55 = [];
Male_data_56 = [];
Male_data_57 = [];
Male_data_58 = [];
Male_data_59 = [];
Male_data_60 = [];
Male_data_61 = [];
Male_data_62 = [];
Male_data_63 = [];
Male_data_64 = [];
Male_data_65 = [];
Male_data_66 = [];
Male_data_67 = [];
Male_data_68 = [];
Male_data_69 = [];
Male_data_70 = [];
Male_data_71 = [];
Male_data_72 = [];
Male_data_73 = [];
Male_data_74 = [];
Male_data_75 = [];
Male_data_76 = [];
Male_data_77 = [];
Male_data_78 = [];
Male_data_79 = [];
Male_data_80 = [];
Male_data_81 = [];
Male_data_82 = [];
Male_data_83 = [];
Male_data_84 = [];
Male_data_85 = [];
Male_data_86 = [];
Male_data_87 = [];
Male_data_88 = [];
Male_data_89 = [];
Male_data_90 = []; % ==90

% For Female
[M N] = size(Female_data); % No.	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Female_data(i,2) == 50
        Female_data_50 = [Female_data_50; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 51
        Female_data_51 = [Female_data_51; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 52
        Female_data_52 = [Female_data_52; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 53
        Female_data_53 = [Female_data_53; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 54
        Female_data_54 = [Female_data_54; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 55
        Female_data_55 = [Female_data_55; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 56
        Female_data_56 = [Female_data_56; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 57
        Female_data_57 = [Female_data_57; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 58
        Female_data_58 = [Female_data_58; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 59
        Female_data_59 = [Female_data_59; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 60
        Female_data_60 = [Female_data_60; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 61
        Female_data_61 = [Female_data_61; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 62
        Female_data_62 = [Female_data_62; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 63
        Female_data_63 = [Female_data_63; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 64
        Female_data_64 = [Female_data_64; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 65
        Female_data_65 = [Female_data_65; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 66
        Female_data_66 = [Female_data_66; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 67
        Female_data_67 = [Female_data_67; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 68
        Female_data_68 = [Female_data_68; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 69
        Female_data_69 = [Female_data_69; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 70
        Female_data_70 = [Female_data_70; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 71
        Female_data_71 = [Female_data_71; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 72
        Female_data_72 = [Female_data_72; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 73
        Female_data_73 = [Female_data_73; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 74
        Female_data_74 = [Female_data_74; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 75
        Female_data_75 = [Female_data_75; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 76
        Female_data_76 = [Female_data_76; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 77
        Female_data_77 = [Female_data_77; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 78
        Female_data_78 = [Female_data_78; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 79
        Female_data_79 = [Female_data_79; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 80
        Female_data_80 = [Female_data_80; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 81
        Female_data_81 = [Female_data_81; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 82
        Female_data_82 = [Female_data_82; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 83
        Female_data_83 = [Female_data_83; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 84
        Female_data_84 = [Female_data_84; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 85
        Female_data_85 = [Female_data_85; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 86
        Female_data_86 = [Female_data_86; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 87
        Female_data_87 = [Female_data_87; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 88
        Female_data_88 = [Female_data_88; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 89
        Female_data_89 = [Female_data_89; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 90
        Female_data_90 = [Female_data_90; Female_data(i,3) Female_data(i,4)];
    end
end

% For Male
[M N] = size(Male_data); % No.	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Male_data(i,2) == 50
        Male_data_50 = [Male_data_50; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 51
        Male_data_51 = [Male_data_51; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 52
        Male_data_52 = [Male_data_52; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 53
        Male_data_53 = [Male_data_53; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 54
        Male_data_54 = [Male_data_54; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 55
        Male_data_55 = [Male_data_55; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 56
        Male_data_56 = [Male_data_56; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 57
        Male_data_57 = [Male_data_57; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 58
        Male_data_58 = [Male_data_58; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 59
        Male_data_59 = [Male_data_59; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 60
        Male_data_60 = [Male_data_60; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 61
        Male_data_61 = [Male_data_61; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 62
        Male_data_62 = [Male_data_62; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 63
        Male_data_63 = [Male_data_63; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 64
        Male_data_64 = [Male_data_64; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 65
        Male_data_65 = [Male_data_65; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 66
        Male_data_66 = [Male_data_66; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 67
        Male_data_67 = [Male_data_67; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 68
        Male_data_68 = [Male_data_68; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 69
        Male_data_69 = [Male_data_69; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 70
        Male_data_70 = [Male_data_70; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 71
        Male_data_71 = [Male_data_71; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 72
        Male_data_72 = [Male_data_72; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 73
        Male_data_73 = [Male_data_73; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 74
        Male_data_74 = [Male_data_74; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 75
        Male_data_75 = [Male_data_75; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 76
        Male_data_76 = [Male_data_76; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 77
        Male_data_77 = [Male_data_77; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 78
        Male_data_78 = [Male_data_78; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 79
        Male_data_79 = [Male_data_79; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 80
        Male_data_80 = [Male_data_80; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 81
        Male_data_81 = [Male_data_81; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 82
        Male_data_82 = [Male_data_82; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 83
        Male_data_83 = [Male_data_83; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 84
        Male_data_84 = [Male_data_84; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 85
        Male_data_85 = [Male_data_85; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 86
        Male_data_86 = [Male_data_86; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 87
        Male_data_87 = [Male_data_87; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 88
        Male_data_88 = [Male_data_88; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 89
        Male_data_89 = [Male_data_89; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 90
        Male_data_90 = [Male_data_90; Male_data(i,3) Male_data(i,4)];
    end
end

% We calculate the coefficients of a and b in 1=a/Weight+b*Height for this
% dataset
Age_23_Belgium = 50:90;
Proportion_Ht_23_Belgium_Female = [];
Proportion_Ht_23_Belgium_Male = [];

% For Female
% Aged 50
Y_data = Female_data_50(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_23_Belgium(1);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_23_Belgium_Female = [Proportion_Ht_23_Belgium_Female My_Number/M*100];
% Aged 51
Y_data = Female_data_51(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_23_Belgium(2);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_23_Belgium_Female = [Proportion_Ht_23_Belgium_Female My_Number/M*100];
% Aged 52
Y_data = Female_data_52(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_23_Belgium(3);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_23_Belgium_Female = [Proportion_Ht_23_Belgium_Female My_Number/M*100];
% Aged 53
Y_data = Female_data_53(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_23_Belgium(4);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_23_Belgium_Female = [Proportion_Ht_23_Belgium_Female My_Number/M*100];
% Aged 54
Y_data = Female_data_54(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_23_Belgium(5);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_23_Belgium_Female = [Proportion_Ht_23_Belgium_Female My_Number/M*100];
% Aged 55
Y_data = Female_data_55(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_23_Belgium(6);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_23_Belgium_Female = [Proportion_Ht_23_Belgium_Female My_Number/M*100];
% Aged 56
Y_data = Female_data_56(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_23_Belgium(7);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_23_Belgium_Female = [Proportion_Ht_23_Belgium_Female My_Number/M*100];
% Aged 57
Y_data = Female_data_57(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_23_Belgium(8);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_23_Belgium_Female = [Proportion_Ht_23_Belgium_Female My_Number/M*100];
% Aged 58
Y_data = Female_data_58(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_23_Belgium(9);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_23_Belgium_Female = [Proportion_Ht_23_Belgium_Female My_Number/M*100];
% Aged 59
Y_data = Female_data_59(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_23_Belgium(10);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_23_Belgium_Female = [Proportion_Ht_23_Belgium_Female My_Number/M*100];
% Aged 60
Y_data = Female_data_60(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_23_Belgium(11);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_23_Belgium_Female = [Proportion_Ht_23_Belgium_Female My_Number/M*100];
% Aged 61
Y_data = Female_data_61(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_23_Belgium(12);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_23_Belgium_Female = [Proportion_Ht_23_Belgium_Female My_Number/M*100];
% Aged 62
Y_data = Female_data_62(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_23_Belgium(13);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_23_Belgium_Female = [Proportion_Ht_23_Belgium_Female My_Number/M*100];
% Aged 63
Y_data = Female_data_63(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_23_Belgium(14);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_23_Belgium_Female = [Proportion_Ht_23_Belgium_Female My_Number/M*100];
% Aged 64
Y_data = Female_data_64(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_23_Belgium(15);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_23_Belgium_Female = [Proportion_Ht_23_Belgium_Female My_Number/M*100];
% Aged 65
Y_data = Female_data_65(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_23_Belgium(16);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_23_Belgium_Female = [Proportion_Ht_23_Belgium_Female My_Number/M*100];
% Aged 66
Y_data = Female_data_66(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_23_Belgium(17);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_23_Belgium_Female = [Proportion_Ht_23_Belgium_Female My_Number/M*100];
% Aged 67
Y_data = Female_data_67(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_23_Belgium(18);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_23_Belgium_Female = [Proportion_Ht_23_Belgium_Female My_Number/M*100];
% Aged 68
Y_data = Female_data_68(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_23_Belgium(19);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_23_Belgium_Female = [Proportion_Ht_23_Belgium_Female My_Number/M*100];
% Aged 69
Y_data = Female_data_69(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_23_Belgium(20);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_23_Belgium_Female = [Proportion_Ht_23_Belgium_Female My_Number/M*100];
% Aged 70
Y_data = Female_data_70(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_23_Belgium(21);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_23_Belgium_Female = [Proportion_Ht_23_Belgium_Female My_Number/M*100];
% Aged 71
Y_data = Female_data_71(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_23_Belgium(22);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_23_Belgium_Female = [Proportion_Ht_23_Belgium_Female My_Number/M*100];
% Aged 72
Y_data = Female_data_72(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_23_Belgium(23);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_23_Belgium_Female = [Proportion_Ht_23_Belgium_Female My_Number/M*100];
% Aged 73
Y_data = Female_data_73(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_23_Belgium(24);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_23_Belgium_Female = [Proportion_Ht_23_Belgium_Female My_Number/M*100];
% Aged 74
Y_data = Female_data_74(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_23_Belgium(25);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_23_Belgium_Female = [Proportion_Ht_23_Belgium_Female My_Number/M*100];
% Aged 75
Y_data = Female_data_75(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_23_Belgium(26);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_23_Belgium_Female = [Proportion_Ht_23_Belgium_Female My_Number/M*100];
% Aged 76
Y_data = Female_data_76(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_23_Belgium(27);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_23_Belgium_Female = [Proportion_Ht_23_Belgium_Female My_Number/M*100];
% Aged 77
Y_data = Female_data_77(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_23_Belgium(28);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_23_Belgium_Female = [Proportion_Ht_23_Belgium_Female My_Number/M*100];
% Aged 78
Y_data = Female_data_78(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_23_Belgium(29);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_23_Belgium_Female = [Proportion_Ht_23_Belgium_Female My_Number/M*100];
% Aged 79
Y_data = Female_data_79(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_23_Belgium(30);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_23_Belgium_Female = [Proportion_Ht_23_Belgium_Female My_Number/M*100];
% Aged 80
Y_data = Female_data_80(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_23_Belgium(31);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_23_Belgium_Female = [Proportion_Ht_23_Belgium_Female My_Number/M*100];
% Aged 81
Y_data = Female_data_81(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_23_Belgium(32);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_23_Belgium_Female = [Proportion_Ht_23_Belgium_Female My_Number/M*100];
% Aged 82
Y_data = Female_data_82(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_23_Belgium(33);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_23_Belgium_Female = [Proportion_Ht_23_Belgium_Female My_Number/M*100];
% Aged 83
Y_data = Female_data_83(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_23_Belgium(34);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_23_Belgium_Female = [Proportion_Ht_23_Belgium_Female My_Number/M*100];
% Aged 84
Y_data = Female_data_84(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_23_Belgium(35);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_23_Belgium_Female = [Proportion_Ht_23_Belgium_Female My_Number/M*100];
% Aged 85
Y_data = Female_data_85(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_23_Belgium(36);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_23_Belgium_Female = [Proportion_Ht_23_Belgium_Female My_Number/M*100];
% Aged 86
Y_data = Female_data_86(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_23_Belgium(37);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_23_Belgium_Female = [Proportion_Ht_23_Belgium_Female My_Number/M*100];
% Aged 87
Y_data = Female_data_87(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_23_Belgium(38);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_23_Belgium_Female = [Proportion_Ht_23_Belgium_Female My_Number/M*100];
% Aged 88
Y_data = Female_data_88(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_23_Belgium(39);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_23_Belgium_Female = [Proportion_Ht_23_Belgium_Female My_Number/M*100];
% Aged 89
Y_data = Female_data_89(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_23_Belgium(40);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_23_Belgium_Female = [Proportion_Ht_23_Belgium_Female My_Number/M*100];
% Aged 90
Y_data = Female_data_90(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_23_Belgium(41);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_23_Belgium_Female = [Proportion_Ht_23_Belgium_Female My_Number/M*100];

% For Male
% Aged 50
Y_data = Male_data_50(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_23_Belgium(1);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_23_Belgium_Male = [Proportion_Ht_23_Belgium_Male My_Number/M*100];
% Aged 51
Y_data = Male_data_51(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_23_Belgium(2);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_23_Belgium_Male = [Proportion_Ht_23_Belgium_Male My_Number/M*100];
% Aged 52
Y_data = Male_data_52(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_23_Belgium(3);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_23_Belgium_Male = [Proportion_Ht_23_Belgium_Male My_Number/M*100];
% Aged 53
Y_data = Male_data_53(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_23_Belgium(4);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_23_Belgium_Male = [Proportion_Ht_23_Belgium_Male My_Number/M*100];
% Aged 54
Y_data = Male_data_54(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_23_Belgium(5);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_23_Belgium_Male = [Proportion_Ht_23_Belgium_Male My_Number/M*100];
% Aged 55
Y_data = Male_data_55(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_23_Belgium(6);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_23_Belgium_Male = [Proportion_Ht_23_Belgium_Male My_Number/M*100];
% Aged 56
Y_data = Male_data_56(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_23_Belgium(7);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_23_Belgium_Male = [Proportion_Ht_23_Belgium_Male My_Number/M*100];
% Aged 57
Y_data = Male_data_57(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_23_Belgium(8);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_23_Belgium_Male = [Proportion_Ht_23_Belgium_Male My_Number/M*100];
% Aged 58
Y_data = Male_data_58(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_23_Belgium(9);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_23_Belgium_Male = [Proportion_Ht_23_Belgium_Male My_Number/M*100];
% Aged 59
Y_data = Male_data_59(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_23_Belgium(10);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_23_Belgium_Male = [Proportion_Ht_23_Belgium_Male My_Number/M*100];
% Aged 60
Y_data = Male_data_60(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_23_Belgium(11);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_23_Belgium_Male = [Proportion_Ht_23_Belgium_Male My_Number/M*100];
% Aged 61
Y_data = Male_data_61(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_23_Belgium(12);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_23_Belgium_Male = [Proportion_Ht_23_Belgium_Male My_Number/M*100];
% Aged 62
Y_data = Male_data_62(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_23_Belgium(13);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_23_Belgium_Male = [Proportion_Ht_23_Belgium_Male My_Number/M*100];
% Aged 63
Y_data = Male_data_63(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_23_Belgium(14);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_23_Belgium_Male = [Proportion_Ht_23_Belgium_Male My_Number/M*100];
% Aged 64
Y_data = Male_data_64(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_23_Belgium(15);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_23_Belgium_Male = [Proportion_Ht_23_Belgium_Male My_Number/M*100];
% Aged 65
Y_data = Male_data_65(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_23_Belgium(16);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_23_Belgium_Male = [Proportion_Ht_23_Belgium_Male My_Number/M*100];
% Aged 66
Y_data = Male_data_66(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_23_Belgium(17);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_23_Belgium_Male = [Proportion_Ht_23_Belgium_Male My_Number/M*100];
% Aged 67
Y_data = Male_data_67(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_23_Belgium(18);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_23_Belgium_Male = [Proportion_Ht_23_Belgium_Male My_Number/M*100];
% Aged 68
Y_data = Male_data_68(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_23_Belgium(19);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_23_Belgium_Male = [Proportion_Ht_23_Belgium_Male My_Number/M*100];
% Aged 69
Y_data = Male_data_69(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_23_Belgium(20);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_23_Belgium_Male = [Proportion_Ht_23_Belgium_Male My_Number/M*100];
% Aged 70
Y_data = Male_data_70(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_23_Belgium(21);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_23_Belgium_Male = [Proportion_Ht_23_Belgium_Male My_Number/M*100];
% Aged 71
Y_data = Male_data_71(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_23_Belgium(22);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_23_Belgium_Male = [Proportion_Ht_23_Belgium_Male My_Number/M*100];
% Aged 72
Y_data = Male_data_72(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_23_Belgium(23);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_23_Belgium_Male = [Proportion_Ht_23_Belgium_Male My_Number/M*100];
% Aged 73
Y_data = Male_data_73(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_23_Belgium(24);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_23_Belgium_Male = [Proportion_Ht_23_Belgium_Male My_Number/M*100];
% Aged 74
Y_data = Male_data_74(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_23_Belgium(25);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_23_Belgium_Male = [Proportion_Ht_23_Belgium_Male My_Number/M*100];
% Aged 75
Y_data = Male_data_75(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_23_Belgium(26);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_23_Belgium_Male = [Proportion_Ht_23_Belgium_Male My_Number/M*100];
% Aged 76
Y_data = Male_data_76(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_23_Belgium(27);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_23_Belgium_Male = [Proportion_Ht_23_Belgium_Male My_Number/M*100];
% Aged 77
Y_data = Male_data_77(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_23_Belgium(28);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_23_Belgium_Male = [Proportion_Ht_23_Belgium_Male My_Number/M*100];
% Aged 78
Y_data = Male_data_78(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_23_Belgium(29);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_23_Belgium_Male = [Proportion_Ht_23_Belgium_Male My_Number/M*100];
% Aged 79
Y_data = Male_data_79(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_23_Belgium(30);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_23_Belgium_Male = [Proportion_Ht_23_Belgium_Male My_Number/M*100];
% Aged 80
Y_data = Male_data_80(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_23_Belgium(31);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_23_Belgium_Male = [Proportion_Ht_23_Belgium_Male My_Number/M*100];
% Aged 81
Y_data = Male_data_81(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_23_Belgium(32);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_23_Belgium_Male = [Proportion_Ht_23_Belgium_Male My_Number/M*100];
% Aged 82
Y_data = Male_data_82(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_23_Belgium(33);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_23_Belgium_Male = [Proportion_Ht_23_Belgium_Male My_Number/M*100];
% Aged 83
Y_data = Male_data_83(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_23_Belgium(34);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_23_Belgium_Male = [Proportion_Ht_23_Belgium_Male My_Number/M*100];
% Aged 84
Y_data = Male_data_84(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_23_Belgium(35);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_23_Belgium_Male = [Proportion_Ht_23_Belgium_Male My_Number/M*100];
% Aged 85
Y_data = Male_data_85(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_23_Belgium(36);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_23_Belgium_Male = [Proportion_Ht_23_Belgium_Male My_Number/M*100];
% Aged 86
Y_data = Male_data_86(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_23_Belgium(37);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_23_Belgium_Male = [Proportion_Ht_23_Belgium_Male My_Number/M*100];
% Aged 87
Y_data = Male_data_87(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_23_Belgium(38);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_23_Belgium_Male = [Proportion_Ht_23_Belgium_Male My_Number/M*100];
% Aged 88
Y_data = Male_data_88(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_23_Belgium(39);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_23_Belgium_Male = [Proportion_Ht_23_Belgium_Male My_Number/M*100];
% Aged 89
Y_data = Male_data_89(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_23_Belgium(40);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_23_Belgium_Male = [Proportion_Ht_23_Belgium_Male My_Number/M*100];
% Aged 90
Y_data = Male_data_90(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_23_Belgium(41);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_23_Belgium_Male = [Proportion_Ht_23_Belgium_Male My_Number/M*100];

%% 17_France
% Loading the data
Female_data = xlsread('17_France.xlsx','Female');
Male_data = xlsread('17_France.xlsx','Male');
% Grouping by age
Female_data_50 = []; % == 50
Female_data_51 = [];
Female_data_52 = [];
Female_data_53 = [];
Female_data_54 = [];
Female_data_55 = [];
Female_data_56 = [];
Female_data_57 = [];
Female_data_58 = [];
Female_data_59 = [];
Female_data_60 = [];
Female_data_61 = [];
Female_data_62 = [];
Female_data_63 = [];
Female_data_64 = [];
Female_data_65 = [];
Female_data_66 = [];
Female_data_67 = [];
Female_data_68 = [];
Female_data_69 = [];
Female_data_70 = [];
Female_data_71 = [];
Female_data_72 = [];
Female_data_73 = [];
Female_data_74 = [];
Female_data_75 = [];
Female_data_76 = [];
Female_data_77 = [];
Female_data_78 = [];
Female_data_79 = [];
Female_data_80 = [];
Female_data_81 = [];
Female_data_82 = [];
Female_data_83 = [];
Female_data_84 = [];
Female_data_85 = [];
Female_data_86 = [];
Female_data_87 = [];
Female_data_88 = [];
Female_data_89 = [];
Female_data_90 = []; % ==90

Male_data_50 = []; % == 50
Male_data_51 = [];
Male_data_52 = [];
Male_data_53 = [];
Male_data_54 = [];
Male_data_55 = [];
Male_data_56 = [];
Male_data_57 = [];
Male_data_58 = [];
Male_data_59 = [];
Male_data_60 = [];
Male_data_61 = [];
Male_data_62 = [];
Male_data_63 = [];
Male_data_64 = [];
Male_data_65 = [];
Male_data_66 = [];
Male_data_67 = [];
Male_data_68 = [];
Male_data_69 = [];
Male_data_70 = [];
Male_data_71 = [];
Male_data_72 = [];
Male_data_73 = [];
Male_data_74 = [];
Male_data_75 = [];
Male_data_76 = [];
Male_data_77 = [];
Male_data_78 = [];
Male_data_79 = [];
Male_data_80 = [];
Male_data_81 = [];
Male_data_82 = [];
Male_data_83 = [];
Male_data_84 = [];
Male_data_85 = [];
Male_data_86 = [];
Male_data_87 = [];
Male_data_88 = [];
Male_data_89 = [];
Male_data_90 = []; % ==90

% For Female
[M N] = size(Female_data); % No.	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Female_data(i,2) == 50
        Female_data_50 = [Female_data_50; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 51
        Female_data_51 = [Female_data_51; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 52
        Female_data_52 = [Female_data_52; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 53
        Female_data_53 = [Female_data_53; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 54
        Female_data_54 = [Female_data_54; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 55
        Female_data_55 = [Female_data_55; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 56
        Female_data_56 = [Female_data_56; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 57
        Female_data_57 = [Female_data_57; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 58
        Female_data_58 = [Female_data_58; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 59
        Female_data_59 = [Female_data_59; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 60
        Female_data_60 = [Female_data_60; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 61
        Female_data_61 = [Female_data_61; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 62
        Female_data_62 = [Female_data_62; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 63
        Female_data_63 = [Female_data_63; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 64
        Female_data_64 = [Female_data_64; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 65
        Female_data_65 = [Female_data_65; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 66
        Female_data_66 = [Female_data_66; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 67
        Female_data_67 = [Female_data_67; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 68
        Female_data_68 = [Female_data_68; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 69
        Female_data_69 = [Female_data_69; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 70
        Female_data_70 = [Female_data_70; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 71
        Female_data_71 = [Female_data_71; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 72
        Female_data_72 = [Female_data_72; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 73
        Female_data_73 = [Female_data_73; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 74
        Female_data_74 = [Female_data_74; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 75
        Female_data_75 = [Female_data_75; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 76
        Female_data_76 = [Female_data_76; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 77
        Female_data_77 = [Female_data_77; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 78
        Female_data_78 = [Female_data_78; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 79
        Female_data_79 = [Female_data_79; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 80
        Female_data_80 = [Female_data_80; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 81
        Female_data_81 = [Female_data_81; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 82
        Female_data_82 = [Female_data_82; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 83
        Female_data_83 = [Female_data_83; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 84
        Female_data_84 = [Female_data_84; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 85
        Female_data_85 = [Female_data_85; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 86
        Female_data_86 = [Female_data_86; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 87
        Female_data_87 = [Female_data_87; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 88
        Female_data_88 = [Female_data_88; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 89
        Female_data_89 = [Female_data_89; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 90
        Female_data_90 = [Female_data_90; Female_data(i,3) Female_data(i,4)];
    end
end

% For Male
[M N] = size(Male_data); % No.	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Male_data(i,2) == 50
        Male_data_50 = [Male_data_50; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 51
        Male_data_51 = [Male_data_51; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 52
        Male_data_52 = [Male_data_52; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 53
        Male_data_53 = [Male_data_53; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 54
        Male_data_54 = [Male_data_54; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 55
        Male_data_55 = [Male_data_55; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 56
        Male_data_56 = [Male_data_56; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 57
        Male_data_57 = [Male_data_57; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 58
        Male_data_58 = [Male_data_58; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 59
        Male_data_59 = [Male_data_59; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 60
        Male_data_60 = [Male_data_60; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 61
        Male_data_61 = [Male_data_61; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 62
        Male_data_62 = [Male_data_62; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 63
        Male_data_63 = [Male_data_63; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 64
        Male_data_64 = [Male_data_64; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 65
        Male_data_65 = [Male_data_65; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 66
        Male_data_66 = [Male_data_66; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 67
        Male_data_67 = [Male_data_67; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 68
        Male_data_68 = [Male_data_68; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 69
        Male_data_69 = [Male_data_69; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 70
        Male_data_70 = [Male_data_70; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 71
        Male_data_71 = [Male_data_71; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 72
        Male_data_72 = [Male_data_72; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 73
        Male_data_73 = [Male_data_73; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 74
        Male_data_74 = [Male_data_74; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 75
        Male_data_75 = [Male_data_75; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 76
        Male_data_76 = [Male_data_76; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 77
        Male_data_77 = [Male_data_77; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 78
        Male_data_78 = [Male_data_78; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 79
        Male_data_79 = [Male_data_79; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 80
        Male_data_80 = [Male_data_80; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 81
        Male_data_81 = [Male_data_81; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 82
        Male_data_82 = [Male_data_82; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 83
        Male_data_83 = [Male_data_83; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 84
        Male_data_84 = [Male_data_84; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 85
        Male_data_85 = [Male_data_85; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 86
        Male_data_86 = [Male_data_86; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 87
        Male_data_87 = [Male_data_87; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 88
        Male_data_88 = [Male_data_88; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 89
        Male_data_89 = [Male_data_89; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 90
        Male_data_90 = [Male_data_90; Male_data(i,3) Male_data(i,4)];
    end
end

% We calculate the coefficients of a and b in 1=a/Weight+b*Height for this
% dataset
Age_17_France = 50:90;
Proportion_Ht_17_France_Female = [];
Proportion_Ht_17_France_Male = [];

% For Female
% Aged 50
Y_data = Female_data_50(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_17_France(1);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_17_France_Female = [Proportion_Ht_17_France_Female My_Number/M*100];
% Aged 51
Y_data = Female_data_51(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_17_France(2);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_17_France_Female = [Proportion_Ht_17_France_Female My_Number/M*100];
% Aged 52
Y_data = Female_data_52(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_17_France(3);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_17_France_Female = [Proportion_Ht_17_France_Female My_Number/M*100];
% Aged 53
Y_data = Female_data_53(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_17_France(4);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_17_France_Female = [Proportion_Ht_17_France_Female My_Number/M*100];
% Aged 54
Y_data = Female_data_54(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_17_France(5);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_17_France_Female = [Proportion_Ht_17_France_Female My_Number/M*100];
% Aged 55
Y_data = Female_data_55(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_17_France(6);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_17_France_Female = [Proportion_Ht_17_France_Female My_Number/M*100];
% Aged 56
Y_data = Female_data_56(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_17_France(7);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_17_France_Female = [Proportion_Ht_17_France_Female My_Number/M*100];
% Aged 57
Y_data = Female_data_57(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_17_France(8);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_17_France_Female = [Proportion_Ht_17_France_Female My_Number/M*100];
% Aged 58
Y_data = Female_data_58(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_17_France(9);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_17_France_Female = [Proportion_Ht_17_France_Female My_Number/M*100];
% Aged 59
Y_data = Female_data_59(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_17_France(10);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_17_France_Female = [Proportion_Ht_17_France_Female My_Number/M*100];
% Aged 60
Y_data = Female_data_60(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_17_France(11);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_17_France_Female = [Proportion_Ht_17_France_Female My_Number/M*100];
% Aged 61
Y_data = Female_data_61(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_17_France(12);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_17_France_Female = [Proportion_Ht_17_France_Female My_Number/M*100];
% Aged 62
Y_data = Female_data_62(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_17_France(13);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_17_France_Female = [Proportion_Ht_17_France_Female My_Number/M*100];
% Aged 63
Y_data = Female_data_63(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_17_France(14);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_17_France_Female = [Proportion_Ht_17_France_Female My_Number/M*100];
% Aged 64
Y_data = Female_data_64(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_17_France(15);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_17_France_Female = [Proportion_Ht_17_France_Female My_Number/M*100];
% Aged 65
Y_data = Female_data_65(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_17_France(16);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_17_France_Female = [Proportion_Ht_17_France_Female My_Number/M*100];
% Aged 66
Y_data = Female_data_66(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_17_France(17);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_17_France_Female = [Proportion_Ht_17_France_Female My_Number/M*100];
% Aged 67
Y_data = Female_data_67(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_17_France(18);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_17_France_Female = [Proportion_Ht_17_France_Female My_Number/M*100];
% Aged 68
Y_data = Female_data_68(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_17_France(19);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_17_France_Female = [Proportion_Ht_17_France_Female My_Number/M*100];
% Aged 69
Y_data = Female_data_69(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_17_France(20);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_17_France_Female = [Proportion_Ht_17_France_Female My_Number/M*100];
% Aged 70
Y_data = Female_data_70(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_17_France(21);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_17_France_Female = [Proportion_Ht_17_France_Female My_Number/M*100];
% Aged 71
Y_data = Female_data_71(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_17_France(22);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_17_France_Female = [Proportion_Ht_17_France_Female My_Number/M*100];
% Aged 72
Y_data = Female_data_72(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_17_France(23);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_17_France_Female = [Proportion_Ht_17_France_Female My_Number/M*100];
% Aged 73
Y_data = Female_data_73(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_17_France(24);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_17_France_Female = [Proportion_Ht_17_France_Female My_Number/M*100];
% Aged 74
Y_data = Female_data_74(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_17_France(25);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_17_France_Female = [Proportion_Ht_17_France_Female My_Number/M*100];
% Aged 75
Y_data = Female_data_75(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_17_France(26);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_17_France_Female = [Proportion_Ht_17_France_Female My_Number/M*100];
% Aged 76
Y_data = Female_data_76(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_17_France(27);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_17_France_Female = [Proportion_Ht_17_France_Female My_Number/M*100];
% Aged 77
Y_data = Female_data_77(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_17_France(28);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_17_France_Female = [Proportion_Ht_17_France_Female My_Number/M*100];
% Aged 78
Y_data = Female_data_78(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_17_France(29);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_17_France_Female = [Proportion_Ht_17_France_Female My_Number/M*100];
% Aged 79
Y_data = Female_data_79(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_17_France(30);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_17_France_Female = [Proportion_Ht_17_France_Female My_Number/M*100];
% Aged 80
Y_data = Female_data_80(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_17_France(31);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_17_France_Female = [Proportion_Ht_17_France_Female My_Number/M*100];
% Aged 81
Y_data = Female_data_81(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_17_France(32);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_17_France_Female = [Proportion_Ht_17_France_Female My_Number/M*100];
% Aged 82
Y_data = Female_data_82(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_17_France(33);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_17_France_Female = [Proportion_Ht_17_France_Female My_Number/M*100];
% Aged 83
Y_data = Female_data_83(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_17_France(34);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_17_France_Female = [Proportion_Ht_17_France_Female My_Number/M*100];
% Aged 84
Y_data = Female_data_84(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_17_France(35);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_17_France_Female = [Proportion_Ht_17_France_Female My_Number/M*100];
% Aged 85
Y_data = Female_data_85(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_17_France(36);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_17_France_Female = [Proportion_Ht_17_France_Female My_Number/M*100];
% Aged 86
Y_data = Female_data_86(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_17_France(37);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_17_France_Female = [Proportion_Ht_17_France_Female My_Number/M*100];
% Aged 87
Y_data = Female_data_87(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_17_France(38);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_17_France_Female = [Proportion_Ht_17_France_Female My_Number/M*100];
% Aged 88
Y_data = Female_data_88(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_17_France(39);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_17_France_Female = [Proportion_Ht_17_France_Female My_Number/M*100];
% Aged 89
Y_data = Female_data_89(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_17_France(40);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_17_France_Female = [Proportion_Ht_17_France_Female My_Number/M*100];
% Aged 90
Y_data = Female_data_90(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_17_France(41);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_17_France_Female = [Proportion_Ht_17_France_Female My_Number/M*100];

% For Male
% Aged 50
Y_data = Male_data_50(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_17_France(1);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_17_France_Male = [Proportion_Ht_17_France_Male My_Number/M*100];
% Aged 51
Y_data = Male_data_51(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_17_France(2);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_17_France_Male = [Proportion_Ht_17_France_Male My_Number/M*100];
% Aged 52
Y_data = Male_data_52(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_17_France(3);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_17_France_Male = [Proportion_Ht_17_France_Male My_Number/M*100];
% Aged 53
Y_data = Male_data_53(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_17_France(4);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_17_France_Male = [Proportion_Ht_17_France_Male My_Number/M*100];
% Aged 54
Y_data = Male_data_54(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_17_France(5);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_17_France_Male = [Proportion_Ht_17_France_Male My_Number/M*100];
% Aged 55
Y_data = Male_data_55(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_17_France(6);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_17_France_Male = [Proportion_Ht_17_France_Male My_Number/M*100];
% Aged 56
Y_data = Male_data_56(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_17_France(7);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_17_France_Male = [Proportion_Ht_17_France_Male My_Number/M*100];
% Aged 57
Y_data = Male_data_57(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_17_France(8);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_17_France_Male = [Proportion_Ht_17_France_Male My_Number/M*100];
% Aged 58
Y_data = Male_data_58(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_17_France(9);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_17_France_Male = [Proportion_Ht_17_France_Male My_Number/M*100];
% Aged 59
Y_data = Male_data_59(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_17_France(10);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_17_France_Male = [Proportion_Ht_17_France_Male My_Number/M*100];
% Aged 60
Y_data = Male_data_60(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_17_France(11);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_17_France_Male = [Proportion_Ht_17_France_Male My_Number/M*100];
% Aged 61
Y_data = Male_data_61(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_17_France(12);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_17_France_Male = [Proportion_Ht_17_France_Male My_Number/M*100];
% Aged 62
Y_data = Male_data_62(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_17_France(13);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_17_France_Male = [Proportion_Ht_17_France_Male My_Number/M*100];
% Aged 63
Y_data = Male_data_63(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_17_France(14);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_17_France_Male = [Proportion_Ht_17_France_Male My_Number/M*100];
% Aged 64
Y_data = Male_data_64(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_17_France(15);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_17_France_Male = [Proportion_Ht_17_France_Male My_Number/M*100];
% Aged 65
Y_data = Male_data_65(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_17_France(16);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_17_France_Male = [Proportion_Ht_17_France_Male My_Number/M*100];
% Aged 66
Y_data = Male_data_66(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_17_France(17);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_17_France_Male = [Proportion_Ht_17_France_Male My_Number/M*100];
% Aged 67
Y_data = Male_data_67(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_17_France(18);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_17_France_Male = [Proportion_Ht_17_France_Male My_Number/M*100];
% Aged 68
Y_data = Male_data_68(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_17_France(19);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_17_France_Male = [Proportion_Ht_17_France_Male My_Number/M*100];
% Aged 69
Y_data = Male_data_69(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_17_France(20);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_17_France_Male = [Proportion_Ht_17_France_Male My_Number/M*100];
% Aged 70
Y_data = Male_data_70(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_17_France(21);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_17_France_Male = [Proportion_Ht_17_France_Male My_Number/M*100];
% Aged 71
Y_data = Male_data_71(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_17_France(22);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_17_France_Male = [Proportion_Ht_17_France_Male My_Number/M*100];
% Aged 72
Y_data = Male_data_72(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_17_France(23);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_17_France_Male = [Proportion_Ht_17_France_Male My_Number/M*100];
% Aged 73
Y_data = Male_data_73(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_17_France(24);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_17_France_Male = [Proportion_Ht_17_France_Male My_Number/M*100];
% Aged 74
Y_data = Male_data_74(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_17_France(25);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_17_France_Male = [Proportion_Ht_17_France_Male My_Number/M*100];
% Aged 75
Y_data = Male_data_75(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_17_France(26);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_17_France_Male = [Proportion_Ht_17_France_Male My_Number/M*100];
% Aged 76
Y_data = Male_data_76(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_17_France(27);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_17_France_Male = [Proportion_Ht_17_France_Male My_Number/M*100];
% Aged 77
Y_data = Male_data_77(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_17_France(28);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_17_France_Male = [Proportion_Ht_17_France_Male My_Number/M*100];
% Aged 78
Y_data = Male_data_78(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_17_France(29);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_17_France_Male = [Proportion_Ht_17_France_Male My_Number/M*100];
% Aged 79
Y_data = Male_data_79(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_17_France(30);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_17_France_Male = [Proportion_Ht_17_France_Male My_Number/M*100];
% Aged 80
Y_data = Male_data_80(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_17_France(31);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_17_France_Male = [Proportion_Ht_17_France_Male My_Number/M*100];
% Aged 81
Y_data = Male_data_81(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_17_France(32);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_17_France_Male = [Proportion_Ht_17_France_Male My_Number/M*100];
% Aged 82
Y_data = Male_data_82(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_17_France(33);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_17_France_Male = [Proportion_Ht_17_France_Male My_Number/M*100];
% Aged 83
Y_data = Male_data_83(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_17_France(34);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_17_France_Male = [Proportion_Ht_17_France_Male My_Number/M*100];
% Aged 84
Y_data = Male_data_84(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_17_France(35);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_17_France_Male = [Proportion_Ht_17_France_Male My_Number/M*100];
% Aged 85
Y_data = Male_data_85(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_17_France(36);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_17_France_Male = [Proportion_Ht_17_France_Male My_Number/M*100];
% Aged 86
Y_data = Male_data_86(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_17_France(37);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_17_France_Male = [Proportion_Ht_17_France_Male My_Number/M*100];
% Aged 87
Y_data = Male_data_87(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_17_France(38);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_17_France_Male = [Proportion_Ht_17_France_Male My_Number/M*100];
% Aged 88
Y_data = Male_data_88(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_17_France(39);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_17_France_Male = [Proportion_Ht_17_France_Male My_Number/M*100];
% Aged 89
Y_data = Male_data_89(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_17_France(40);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_17_France_Male = [Proportion_Ht_17_France_Male My_Number/M*100];
% Aged 90
Y_data = Male_data_90(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_17_France(41);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_17_France_Male = [Proportion_Ht_17_France_Male My_Number/M*100];

%% 14_Netherlands
% Loading the data
Female_data = xlsread('14_Netherlands.xlsx','Female');
Male_data = xlsread('14_Netherlands.xlsx','Male');
% Grouping by age
Female_data_50 = []; % == 50
Female_data_51 = [];
Female_data_52 = [];
Female_data_53 = [];
Female_data_54 = [];
Female_data_55 = [];
Female_data_56 = [];
Female_data_57 = [];
Female_data_58 = [];
Female_data_59 = [];
Female_data_60 = [];
Female_data_61 = [];
Female_data_62 = [];
Female_data_63 = [];
Female_data_64 = [];
Female_data_65 = [];
Female_data_66 = [];
Female_data_67 = [];
Female_data_68 = [];
Female_data_69 = [];
Female_data_70 = [];
Female_data_71 = [];
Female_data_72 = [];
Female_data_73 = [];
Female_data_74 = [];
Female_data_75 = [];
Female_data_76 = [];
Female_data_77 = [];
Female_data_78 = [];
Female_data_79 = [];
Female_data_80 = [];
Female_data_81 = [];
Female_data_82 = [];
Female_data_83 = [];
Female_data_84 = [];
Female_data_85 = [];
Female_data_86 = [];
Female_data_87 = [];
Female_data_88 = [];
Female_data_89 = [];
Female_data_90 = []; % ==90

Male_data_50 = []; % == 50
Male_data_51 = [];
Male_data_52 = [];
Male_data_53 = [];
Male_data_54 = [];
Male_data_55 = [];
Male_data_56 = [];
Male_data_57 = [];
Male_data_58 = [];
Male_data_59 = [];
Male_data_60 = [];
Male_data_61 = [];
Male_data_62 = [];
Male_data_63 = [];
Male_data_64 = [];
Male_data_65 = [];
Male_data_66 = [];
Male_data_67 = [];
Male_data_68 = [];
Male_data_69 = [];
Male_data_70 = [];
Male_data_71 = [];
Male_data_72 = [];
Male_data_73 = [];
Male_data_74 = [];
Male_data_75 = [];
Male_data_76 = [];
Male_data_77 = [];
Male_data_78 = [];
Male_data_79 = [];
Male_data_80 = [];
Male_data_81 = [];
Male_data_82 = [];
Male_data_83 = [];
Male_data_84 = [];
Male_data_85 = [];
Male_data_86 = [];
Male_data_87 = [];
Male_data_88 = [];
Male_data_89 = [];
Male_data_90 = []; % ==90

% For Female
[M N] = size(Female_data); % No.	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Female_data(i,2) == 50
        Female_data_50 = [Female_data_50; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 51
        Female_data_51 = [Female_data_51; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 52
        Female_data_52 = [Female_data_52; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 53
        Female_data_53 = [Female_data_53; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 54
        Female_data_54 = [Female_data_54; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 55
        Female_data_55 = [Female_data_55; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 56
        Female_data_56 = [Female_data_56; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 57
        Female_data_57 = [Female_data_57; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 58
        Female_data_58 = [Female_data_58; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 59
        Female_data_59 = [Female_data_59; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 60
        Female_data_60 = [Female_data_60; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 61
        Female_data_61 = [Female_data_61; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 62
        Female_data_62 = [Female_data_62; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 63
        Female_data_63 = [Female_data_63; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 64
        Female_data_64 = [Female_data_64; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 65
        Female_data_65 = [Female_data_65; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 66
        Female_data_66 = [Female_data_66; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 67
        Female_data_67 = [Female_data_67; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 68
        Female_data_68 = [Female_data_68; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 69
        Female_data_69 = [Female_data_69; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 70
        Female_data_70 = [Female_data_70; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 71
        Female_data_71 = [Female_data_71; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 72
        Female_data_72 = [Female_data_72; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 73
        Female_data_73 = [Female_data_73; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 74
        Female_data_74 = [Female_data_74; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 75
        Female_data_75 = [Female_data_75; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 76
        Female_data_76 = [Female_data_76; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 77
        Female_data_77 = [Female_data_77; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 78
        Female_data_78 = [Female_data_78; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 79
        Female_data_79 = [Female_data_79; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 80
        Female_data_80 = [Female_data_80; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 81
        Female_data_81 = [Female_data_81; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 82
        Female_data_82 = [Female_data_82; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 83
        Female_data_83 = [Female_data_83; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 84
        Female_data_84 = [Female_data_84; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 85
        Female_data_85 = [Female_data_85; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 86
        Female_data_86 = [Female_data_86; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 87
        Female_data_87 = [Female_data_87; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 88
        Female_data_88 = [Female_data_88; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 89
        Female_data_89 = [Female_data_89; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 90
        Female_data_90 = [Female_data_90; Female_data(i,3) Female_data(i,4)];
    end
end

% For Male
[M N] = size(Male_data); % No.	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Male_data(i,2) == 50
        Male_data_50 = [Male_data_50; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 51
        Male_data_51 = [Male_data_51; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 52
        Male_data_52 = [Male_data_52; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 53
        Male_data_53 = [Male_data_53; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 54
        Male_data_54 = [Male_data_54; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 55
        Male_data_55 = [Male_data_55; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 56
        Male_data_56 = [Male_data_56; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 57
        Male_data_57 = [Male_data_57; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 58
        Male_data_58 = [Male_data_58; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 59
        Male_data_59 = [Male_data_59; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 60
        Male_data_60 = [Male_data_60; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 61
        Male_data_61 = [Male_data_61; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 62
        Male_data_62 = [Male_data_62; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 63
        Male_data_63 = [Male_data_63; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 64
        Male_data_64 = [Male_data_64; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 65
        Male_data_65 = [Male_data_65; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 66
        Male_data_66 = [Male_data_66; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 67
        Male_data_67 = [Male_data_67; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 68
        Male_data_68 = [Male_data_68; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 69
        Male_data_69 = [Male_data_69; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 70
        Male_data_70 = [Male_data_70; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 71
        Male_data_71 = [Male_data_71; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 72
        Male_data_72 = [Male_data_72; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 73
        Male_data_73 = [Male_data_73; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 74
        Male_data_74 = [Male_data_74; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 75
        Male_data_75 = [Male_data_75; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 76
        Male_data_76 = [Male_data_76; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 77
        Male_data_77 = [Male_data_77; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 78
        Male_data_78 = [Male_data_78; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 79
        Male_data_79 = [Male_data_79; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 80
        Male_data_80 = [Male_data_80; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 81
        Male_data_81 = [Male_data_81; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 82
        Male_data_82 = [Male_data_82; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 83
        Male_data_83 = [Male_data_83; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 84
        Male_data_84 = [Male_data_84; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 85
        Male_data_85 = [Male_data_85; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 86
        Male_data_86 = [Male_data_86; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 87
        Male_data_87 = [Male_data_87; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 88
        Male_data_88 = [Male_data_88; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 89
        Male_data_89 = [Male_data_89; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 90
        Male_data_90 = [Male_data_90; Male_data(i,3) Male_data(i,4)];
    end
end

% We calculate the coefficients of a and b in 1=a/Weight+b*Height for this
% dataset
Age_14_Netherlands = 50:90;
Proportion_Ht_14_Netherlands_Female = [];
Proportion_Ht_14_Netherlands_Male = [];

% For Female
% Aged 50
Y_data = Female_data_50(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_14_Netherlands(1);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_14_Netherlands_Female = [Proportion_Ht_14_Netherlands_Female My_Number/M*100];
% Aged 51
Y_data = Female_data_51(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_14_Netherlands(2);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_14_Netherlands_Female = [Proportion_Ht_14_Netherlands_Female My_Number/M*100];
% Aged 52
Y_data = Female_data_52(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_14_Netherlands(3);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_14_Netherlands_Female = [Proportion_Ht_14_Netherlands_Female My_Number/M*100];
% Aged 53
Y_data = Female_data_53(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_14_Netherlands(4);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_14_Netherlands_Female = [Proportion_Ht_14_Netherlands_Female My_Number/M*100];
% Aged 54
Y_data = Female_data_54(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_14_Netherlands(5);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_14_Netherlands_Female = [Proportion_Ht_14_Netherlands_Female My_Number/M*100];
% Aged 55
Y_data = Female_data_55(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_14_Netherlands(6);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_14_Netherlands_Female = [Proportion_Ht_14_Netherlands_Female My_Number/M*100];
% Aged 56
Y_data = Female_data_56(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_14_Netherlands(7);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_14_Netherlands_Female = [Proportion_Ht_14_Netherlands_Female My_Number/M*100];
% Aged 57
Y_data = Female_data_57(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_14_Netherlands(8);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_14_Netherlands_Female = [Proportion_Ht_14_Netherlands_Female My_Number/M*100];
% Aged 58
Y_data = Female_data_58(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_14_Netherlands(9);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_14_Netherlands_Female = [Proportion_Ht_14_Netherlands_Female My_Number/M*100];
% Aged 59
Y_data = Female_data_59(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_14_Netherlands(10);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_14_Netherlands_Female = [Proportion_Ht_14_Netherlands_Female My_Number/M*100];
% Aged 60
Y_data = Female_data_60(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_14_Netherlands(11);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_14_Netherlands_Female = [Proportion_Ht_14_Netherlands_Female My_Number/M*100];
% Aged 61
Y_data = Female_data_61(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_14_Netherlands(12);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_14_Netherlands_Female = [Proportion_Ht_14_Netherlands_Female My_Number/M*100];
% Aged 62
Y_data = Female_data_62(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_14_Netherlands(13);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_14_Netherlands_Female = [Proportion_Ht_14_Netherlands_Female My_Number/M*100];
% Aged 63
Y_data = Female_data_63(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_14_Netherlands(14);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_14_Netherlands_Female = [Proportion_Ht_14_Netherlands_Female My_Number/M*100];
% Aged 64
Y_data = Female_data_64(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_14_Netherlands(15);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_14_Netherlands_Female = [Proportion_Ht_14_Netherlands_Female My_Number/M*100];
% Aged 65
Y_data = Female_data_65(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_14_Netherlands(16);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_14_Netherlands_Female = [Proportion_Ht_14_Netherlands_Female My_Number/M*100];
% Aged 66
Y_data = Female_data_66(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_14_Netherlands(17);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_14_Netherlands_Female = [Proportion_Ht_14_Netherlands_Female My_Number/M*100];
% Aged 67
Y_data = Female_data_67(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_14_Netherlands(18);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_14_Netherlands_Female = [Proportion_Ht_14_Netherlands_Female My_Number/M*100];
% Aged 68
Y_data = Female_data_68(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_14_Netherlands(19);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_14_Netherlands_Female = [Proportion_Ht_14_Netherlands_Female My_Number/M*100];
% Aged 69
Y_data = Female_data_69(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_14_Netherlands(20);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_14_Netherlands_Female = [Proportion_Ht_14_Netherlands_Female My_Number/M*100];
% Aged 70
Y_data = Female_data_70(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_14_Netherlands(21);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_14_Netherlands_Female = [Proportion_Ht_14_Netherlands_Female My_Number/M*100];
% Aged 71
Y_data = Female_data_71(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_14_Netherlands(22);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_14_Netherlands_Female = [Proportion_Ht_14_Netherlands_Female My_Number/M*100];
% Aged 72
Y_data = Female_data_72(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_14_Netherlands(23);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_14_Netherlands_Female = [Proportion_Ht_14_Netherlands_Female My_Number/M*100];
% Aged 73
Y_data = Female_data_73(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_14_Netherlands(24);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_14_Netherlands_Female = [Proportion_Ht_14_Netherlands_Female My_Number/M*100];
% Aged 74
Y_data = Female_data_74(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_14_Netherlands(25);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_14_Netherlands_Female = [Proportion_Ht_14_Netherlands_Female My_Number/M*100];
% Aged 75
Y_data = Female_data_75(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_14_Netherlands(26);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_14_Netherlands_Female = [Proportion_Ht_14_Netherlands_Female My_Number/M*100];
% Aged 76
Y_data = Female_data_76(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_14_Netherlands(27);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_14_Netherlands_Female = [Proportion_Ht_14_Netherlands_Female My_Number/M*100];
% Aged 77
Y_data = Female_data_77(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_14_Netherlands(28);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_14_Netherlands_Female = [Proportion_Ht_14_Netherlands_Female My_Number/M*100];
% Aged 78
Y_data = Female_data_78(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_14_Netherlands(29);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_14_Netherlands_Female = [Proportion_Ht_14_Netherlands_Female My_Number/M*100];
% Aged 79
Y_data = Female_data_79(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_14_Netherlands(30);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_14_Netherlands_Female = [Proportion_Ht_14_Netherlands_Female My_Number/M*100];
% Aged 80
Y_data = Female_data_80(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_14_Netherlands(31);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_14_Netherlands_Female = [Proportion_Ht_14_Netherlands_Female My_Number/M*100];
% Aged 81
Y_data = Female_data_81(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_14_Netherlands(32);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_14_Netherlands_Female = [Proportion_Ht_14_Netherlands_Female My_Number/M*100];
% Aged 82
Y_data = Female_data_82(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_14_Netherlands(33);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_14_Netherlands_Female = [Proportion_Ht_14_Netherlands_Female My_Number/M*100];
% Aged 83
Y_data = Female_data_83(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_14_Netherlands(34);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_14_Netherlands_Female = [Proportion_Ht_14_Netherlands_Female My_Number/M*100];
% Aged 84
Y_data = Female_data_84(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_14_Netherlands(35);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_14_Netherlands_Female = [Proportion_Ht_14_Netherlands_Female My_Number/M*100];
% Aged 85
Y_data = Female_data_85(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_14_Netherlands(36);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_14_Netherlands_Female = [Proportion_Ht_14_Netherlands_Female My_Number/M*100];
% Aged 86
Y_data = Female_data_86(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_14_Netherlands(37);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_14_Netherlands_Female = [Proportion_Ht_14_Netherlands_Female My_Number/M*100];
% Aged 87
Y_data = Female_data_87(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_14_Netherlands(38);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_14_Netherlands_Female = [Proportion_Ht_14_Netherlands_Female My_Number/M*100];
% Aged 88
Y_data = Female_data_88(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_14_Netherlands(39);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_14_Netherlands_Female = [Proportion_Ht_14_Netherlands_Female My_Number/M*100];
% Aged 89
Y_data = Female_data_89(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_14_Netherlands(40);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_14_Netherlands_Female = [Proportion_Ht_14_Netherlands_Female My_Number/M*100];
% Aged 90
Y_data = Female_data_90(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_14_Netherlands(41);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_14_Netherlands_Female = [Proportion_Ht_14_Netherlands_Female My_Number/M*100];

% For Male
% Aged 50
Y_data = Male_data_50(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_14_Netherlands(1);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_14_Netherlands_Male = [Proportion_Ht_14_Netherlands_Male My_Number/M*100];
% Aged 51
Y_data = Male_data_51(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_14_Netherlands(2);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_14_Netherlands_Male = [Proportion_Ht_14_Netherlands_Male My_Number/M*100];
% Aged 52
Y_data = Male_data_52(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_14_Netherlands(3);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_14_Netherlands_Male = [Proportion_Ht_14_Netherlands_Male My_Number/M*100];
% Aged 53
Y_data = Male_data_53(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_14_Netherlands(4);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_14_Netherlands_Male = [Proportion_Ht_14_Netherlands_Male My_Number/M*100];
% Aged 54
Y_data = Male_data_54(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_14_Netherlands(5);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_14_Netherlands_Male = [Proportion_Ht_14_Netherlands_Male My_Number/M*100];
% Aged 55
Y_data = Male_data_55(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_14_Netherlands(6);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_14_Netherlands_Male = [Proportion_Ht_14_Netherlands_Male My_Number/M*100];
% Aged 56
Y_data = Male_data_56(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_14_Netherlands(7);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_14_Netherlands_Male = [Proportion_Ht_14_Netherlands_Male My_Number/M*100];
% Aged 57
Y_data = Male_data_57(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_14_Netherlands(8);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_14_Netherlands_Male = [Proportion_Ht_14_Netherlands_Male My_Number/M*100];
% Aged 58
Y_data = Male_data_58(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_14_Netherlands(9);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_14_Netherlands_Male = [Proportion_Ht_14_Netherlands_Male My_Number/M*100];
% Aged 59
Y_data = Male_data_59(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_14_Netherlands(10);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_14_Netherlands_Male = [Proportion_Ht_14_Netherlands_Male My_Number/M*100];
% Aged 60
Y_data = Male_data_60(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_14_Netherlands(11);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_14_Netherlands_Male = [Proportion_Ht_14_Netherlands_Male My_Number/M*100];
% Aged 61
Y_data = Male_data_61(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_14_Netherlands(12);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_14_Netherlands_Male = [Proportion_Ht_14_Netherlands_Male My_Number/M*100];
% Aged 62
Y_data = Male_data_62(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_14_Netherlands(13);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_14_Netherlands_Male = [Proportion_Ht_14_Netherlands_Male My_Number/M*100];
% Aged 63
Y_data = Male_data_63(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_14_Netherlands(14);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_14_Netherlands_Male = [Proportion_Ht_14_Netherlands_Male My_Number/M*100];
% Aged 64
Y_data = Male_data_64(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_14_Netherlands(15);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_14_Netherlands_Male = [Proportion_Ht_14_Netherlands_Male My_Number/M*100];
% Aged 65
Y_data = Male_data_65(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_14_Netherlands(16);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_14_Netherlands_Male = [Proportion_Ht_14_Netherlands_Male My_Number/M*100];
% Aged 66
Y_data = Male_data_66(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_14_Netherlands(17);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_14_Netherlands_Male = [Proportion_Ht_14_Netherlands_Male My_Number/M*100];
% Aged 67
Y_data = Male_data_67(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_14_Netherlands(18);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_14_Netherlands_Male = [Proportion_Ht_14_Netherlands_Male My_Number/M*100];
% Aged 68
Y_data = Male_data_68(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_14_Netherlands(19);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_14_Netherlands_Male = [Proportion_Ht_14_Netherlands_Male My_Number/M*100];
% Aged 69
Y_data = Male_data_69(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_14_Netherlands(20);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_14_Netherlands_Male = [Proportion_Ht_14_Netherlands_Male My_Number/M*100];
% Aged 70
Y_data = Male_data_70(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_14_Netherlands(21);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_14_Netherlands_Male = [Proportion_Ht_14_Netherlands_Male My_Number/M*100];
% Aged 71
Y_data = Male_data_71(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_14_Netherlands(22);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_14_Netherlands_Male = [Proportion_Ht_14_Netherlands_Male My_Number/M*100];
% Aged 72
Y_data = Male_data_72(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_14_Netherlands(23);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_14_Netherlands_Male = [Proportion_Ht_14_Netherlands_Male My_Number/M*100];
% Aged 73
Y_data = Male_data_73(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_14_Netherlands(24);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_14_Netherlands_Male = [Proportion_Ht_14_Netherlands_Male My_Number/M*100];
% Aged 74
Y_data = Male_data_74(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_14_Netherlands(25);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_14_Netherlands_Male = [Proportion_Ht_14_Netherlands_Male My_Number/M*100];
% Aged 75
Y_data = Male_data_75(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_14_Netherlands(26);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_14_Netherlands_Male = [Proportion_Ht_14_Netherlands_Male My_Number/M*100];
% Aged 76
Y_data = Male_data_76(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_14_Netherlands(27);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_14_Netherlands_Male = [Proportion_Ht_14_Netherlands_Male My_Number/M*100];
% Aged 77
Y_data = Male_data_77(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_14_Netherlands(28);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_14_Netherlands_Male = [Proportion_Ht_14_Netherlands_Male My_Number/M*100];
% Aged 78
Y_data = Male_data_78(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_14_Netherlands(29);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_14_Netherlands_Male = [Proportion_Ht_14_Netherlands_Male My_Number/M*100];
% Aged 79
Y_data = Male_data_79(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_14_Netherlands(30);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_14_Netherlands_Male = [Proportion_Ht_14_Netherlands_Male My_Number/M*100];
% Aged 80
Y_data = Male_data_80(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_14_Netherlands(31);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_14_Netherlands_Male = [Proportion_Ht_14_Netherlands_Male My_Number/M*100];
% Aged 81
Y_data = Male_data_81(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_14_Netherlands(32);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_14_Netherlands_Male = [Proportion_Ht_14_Netherlands_Male My_Number/M*100];
% Aged 82
Y_data = Male_data_82(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_14_Netherlands(33);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_14_Netherlands_Male = [Proportion_Ht_14_Netherlands_Male My_Number/M*100];
% Aged 83
Y_data = Male_data_83(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_14_Netherlands(34);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_14_Netherlands_Male = [Proportion_Ht_14_Netherlands_Male My_Number/M*100];
% Aged 84
Y_data = Male_data_84(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_14_Netherlands(35);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_14_Netherlands_Male = [Proportion_Ht_14_Netherlands_Male My_Number/M*100];
% Aged 85
Y_data = Male_data_85(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_14_Netherlands(36);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_14_Netherlands_Male = [Proportion_Ht_14_Netherlands_Male My_Number/M*100];
% Aged 86
Y_data = Male_data_86(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_14_Netherlands(37);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_14_Netherlands_Male = [Proportion_Ht_14_Netherlands_Male My_Number/M*100];
% Aged 87
Y_data = Male_data_87(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_14_Netherlands(38);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_14_Netherlands_Male = [Proportion_Ht_14_Netherlands_Male My_Number/M*100];
% Aged 88
Y_data = Male_data_88(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_14_Netherlands(39);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_14_Netherlands_Male = [Proportion_Ht_14_Netherlands_Male My_Number/M*100];
% Aged 89
Y_data = Male_data_89(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_14_Netherlands(40);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_14_Netherlands_Male = [Proportion_Ht_14_Netherlands_Male My_Number/M*100];
% Aged 90
Y_data = Male_data_90(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_14_Netherlands(41);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_14_Netherlands_Male = [Proportion_Ht_14_Netherlands_Male My_Number/M*100];

%% 25_Israel
% Loading the data
Female_data = xlsread('25_Israel.xlsx','Female');
Male_data = xlsread('25_Israel.xlsx','Male');
% Grouping by age
Female_data_50 = []; % == 50
Female_data_51 = [];
Female_data_52 = [];
Female_data_53 = [];
Female_data_54 = [];
Female_data_55 = [];
Female_data_56 = [];
Female_data_57 = [];
Female_data_58 = [];
Female_data_59 = [];
Female_data_60 = [];
Female_data_61 = [];
Female_data_62 = [];
Female_data_63 = [];
Female_data_64 = [];
Female_data_65 = [];
Female_data_66 = [];
Female_data_67 = [];
Female_data_68 = [];
Female_data_69 = [];
Female_data_70 = [];
Female_data_71 = [];
Female_data_72 = [];
Female_data_73 = [];
Female_data_74 = [];
Female_data_75 = [];
Female_data_76 = [];
Female_data_77 = [];
Female_data_78 = [];
Female_data_79 = [];
Female_data_80 = [];
Female_data_81 = [];
Female_data_82 = [];
Female_data_83 = [];
Female_data_84 = [];
Female_data_85 = [];
Female_data_86 = [];
Female_data_87 = [];
Female_data_88 = [];
Female_data_89 = [];
Female_data_90 = []; % ==90

Male_data_50 = []; % == 50
Male_data_51 = [];
Male_data_52 = [];
Male_data_53 = [];
Male_data_54 = [];
Male_data_55 = [];
Male_data_56 = [];
Male_data_57 = [];
Male_data_58 = [];
Male_data_59 = [];
Male_data_60 = [];
Male_data_61 = [];
Male_data_62 = [];
Male_data_63 = [];
Male_data_64 = [];
Male_data_65 = [];
Male_data_66 = [];
Male_data_67 = [];
Male_data_68 = [];
Male_data_69 = [];
Male_data_70 = [];
Male_data_71 = [];
Male_data_72 = [];
Male_data_73 = [];
Male_data_74 = [];
Male_data_75 = [];
Male_data_76 = [];
Male_data_77 = [];
Male_data_78 = [];
Male_data_79 = [];
Male_data_80 = [];
Male_data_81 = [];
Male_data_82 = [];
Male_data_83 = [];
Male_data_84 = [];
Male_data_85 = [];
Male_data_86 = [];
Male_data_87 = [];
Male_data_88 = [];
Male_data_89 = [];
Male_data_90 = []; % ==90

% For Female
[M N] = size(Female_data); % No.	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Female_data(i,2) == 50
        Female_data_50 = [Female_data_50; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 51
        Female_data_51 = [Female_data_51; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 52
        Female_data_52 = [Female_data_52; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 53
        Female_data_53 = [Female_data_53; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 54
        Female_data_54 = [Female_data_54; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 55
        Female_data_55 = [Female_data_55; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 56
        Female_data_56 = [Female_data_56; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 57
        Female_data_57 = [Female_data_57; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 58
        Female_data_58 = [Female_data_58; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 59
        Female_data_59 = [Female_data_59; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 60
        Female_data_60 = [Female_data_60; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 61
        Female_data_61 = [Female_data_61; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 62
        Female_data_62 = [Female_data_62; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 63
        Female_data_63 = [Female_data_63; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 64
        Female_data_64 = [Female_data_64; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 65
        Female_data_65 = [Female_data_65; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 66
        Female_data_66 = [Female_data_66; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 67
        Female_data_67 = [Female_data_67; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 68
        Female_data_68 = [Female_data_68; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 69
        Female_data_69 = [Female_data_69; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 70
        Female_data_70 = [Female_data_70; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 71
        Female_data_71 = [Female_data_71; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 72
        Female_data_72 = [Female_data_72; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 73
        Female_data_73 = [Female_data_73; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 74
        Female_data_74 = [Female_data_74; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 75
        Female_data_75 = [Female_data_75; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 76
        Female_data_76 = [Female_data_76; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 77
        Female_data_77 = [Female_data_77; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 78
        Female_data_78 = [Female_data_78; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 79
        Female_data_79 = [Female_data_79; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 80
        Female_data_80 = [Female_data_80; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 81
        Female_data_81 = [Female_data_81; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 82
        Female_data_82 = [Female_data_82; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 83
        Female_data_83 = [Female_data_83; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 84
        Female_data_84 = [Female_data_84; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 85
        Female_data_85 = [Female_data_85; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 86
        Female_data_86 = [Female_data_86; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 87
        Female_data_87 = [Female_data_87; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 88
        Female_data_88 = [Female_data_88; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 89
        Female_data_89 = [Female_data_89; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 90
        Female_data_90 = [Female_data_90; Female_data(i,3) Female_data(i,4)];
    end
end

% For Male
[M N] = size(Male_data); % No.	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Male_data(i,2) == 50
        Male_data_50 = [Male_data_50; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 51
        Male_data_51 = [Male_data_51; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 52
        Male_data_52 = [Male_data_52; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 53
        Male_data_53 = [Male_data_53; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 54
        Male_data_54 = [Male_data_54; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 55
        Male_data_55 = [Male_data_55; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 56
        Male_data_56 = [Male_data_56; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 57
        Male_data_57 = [Male_data_57; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 58
        Male_data_58 = [Male_data_58; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 59
        Male_data_59 = [Male_data_59; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 60
        Male_data_60 = [Male_data_60; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 61
        Male_data_61 = [Male_data_61; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 62
        Male_data_62 = [Male_data_62; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 63
        Male_data_63 = [Male_data_63; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 64
        Male_data_64 = [Male_data_64; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 65
        Male_data_65 = [Male_data_65; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 66
        Male_data_66 = [Male_data_66; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 67
        Male_data_67 = [Male_data_67; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 68
        Male_data_68 = [Male_data_68; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 69
        Male_data_69 = [Male_data_69; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 70
        Male_data_70 = [Male_data_70; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 71
        Male_data_71 = [Male_data_71; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 72
        Male_data_72 = [Male_data_72; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 73
        Male_data_73 = [Male_data_73; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 74
        Male_data_74 = [Male_data_74; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 75
        Male_data_75 = [Male_data_75; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 76
        Male_data_76 = [Male_data_76; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 77
        Male_data_77 = [Male_data_77; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 78
        Male_data_78 = [Male_data_78; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 79
        Male_data_79 = [Male_data_79; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 80
        Male_data_80 = [Male_data_80; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 81
        Male_data_81 = [Male_data_81; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 82
        Male_data_82 = [Male_data_82; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 83
        Male_data_83 = [Male_data_83; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 84
        Male_data_84 = [Male_data_84; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 85
        Male_data_85 = [Male_data_85; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 86
        Male_data_86 = [Male_data_86; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 87
        Male_data_87 = [Male_data_87; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 88
        Male_data_88 = [Male_data_88; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 89
        Male_data_89 = [Male_data_89; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 90
        Male_data_90 = [Male_data_90; Male_data(i,3) Male_data(i,4)];
    end
end

% We calculate the coefficients of a and b in 1=a/Weight+b*Height for this
% dataset
Age_25_Israel = 50:90;
Proportion_Ht_25_Israel_Female = [];
Proportion_Ht_25_Israel_Male = [];

% For Female
% Aged 50
Y_data = Female_data_50(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_25_Israel(1);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_25_Israel_Female = [Proportion_Ht_25_Israel_Female My_Number/M*100];
% Aged 51
Y_data = Female_data_51(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_25_Israel(2);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_25_Israel_Female = [Proportion_Ht_25_Israel_Female My_Number/M*100];
% Aged 52
Y_data = Female_data_52(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_25_Israel(3);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_25_Israel_Female = [Proportion_Ht_25_Israel_Female My_Number/M*100];
% Aged 53
Y_data = Female_data_53(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_25_Israel(4);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_25_Israel_Female = [Proportion_Ht_25_Israel_Female My_Number/M*100];
% Aged 54
Y_data = Female_data_54(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_25_Israel(5);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_25_Israel_Female = [Proportion_Ht_25_Israel_Female My_Number/M*100];
% Aged 55
Y_data = Female_data_55(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_25_Israel(6);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_25_Israel_Female = [Proportion_Ht_25_Israel_Female My_Number/M*100];
% Aged 56
Y_data = Female_data_56(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_25_Israel(7);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_25_Israel_Female = [Proportion_Ht_25_Israel_Female My_Number/M*100];
% Aged 57
Y_data = Female_data_57(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_25_Israel(8);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_25_Israel_Female = [Proportion_Ht_25_Israel_Female My_Number/M*100];
% Aged 58
Y_data = Female_data_58(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_25_Israel(9);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_25_Israel_Female = [Proportion_Ht_25_Israel_Female My_Number/M*100];
% Aged 59
Y_data = Female_data_59(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_25_Israel(10);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_25_Israel_Female = [Proportion_Ht_25_Israel_Female My_Number/M*100];
% Aged 60
Y_data = Female_data_60(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_25_Israel(11);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_25_Israel_Female = [Proportion_Ht_25_Israel_Female My_Number/M*100];
% Aged 61
Y_data = Female_data_61(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_25_Israel(12);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_25_Israel_Female = [Proportion_Ht_25_Israel_Female My_Number/M*100];
% Aged 62
Y_data = Female_data_62(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_25_Israel(13);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_25_Israel_Female = [Proportion_Ht_25_Israel_Female My_Number/M*100];
% Aged 63
Y_data = Female_data_63(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_25_Israel(14);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_25_Israel_Female = [Proportion_Ht_25_Israel_Female My_Number/M*100];
% Aged 64
Y_data = Female_data_64(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_25_Israel(15);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_25_Israel_Female = [Proportion_Ht_25_Israel_Female My_Number/M*100];
% Aged 65
Y_data = Female_data_65(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_25_Israel(16);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_25_Israel_Female = [Proportion_Ht_25_Israel_Female My_Number/M*100];
% Aged 66
Y_data = Female_data_66(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_25_Israel(17);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_25_Israel_Female = [Proportion_Ht_25_Israel_Female My_Number/M*100];
% Aged 67
Y_data = Female_data_67(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_25_Israel(18);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_25_Israel_Female = [Proportion_Ht_25_Israel_Female My_Number/M*100];
% Aged 68
Y_data = Female_data_68(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_25_Israel(19);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_25_Israel_Female = [Proportion_Ht_25_Israel_Female My_Number/M*100];
% Aged 69
Y_data = Female_data_69(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_25_Israel(20);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_25_Israel_Female = [Proportion_Ht_25_Israel_Female My_Number/M*100];
% Aged 70
Y_data = Female_data_70(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_25_Israel(21);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_25_Israel_Female = [Proportion_Ht_25_Israel_Female My_Number/M*100];
% Aged 71
Y_data = Female_data_71(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_25_Israel(22);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_25_Israel_Female = [Proportion_Ht_25_Israel_Female My_Number/M*100];
% Aged 72
Y_data = Female_data_72(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_25_Israel(23);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_25_Israel_Female = [Proportion_Ht_25_Israel_Female My_Number/M*100];
% Aged 73
Y_data = Female_data_73(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_25_Israel(24);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_25_Israel_Female = [Proportion_Ht_25_Israel_Female My_Number/M*100];
% Aged 74
Y_data = Female_data_74(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_25_Israel(25);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_25_Israel_Female = [Proportion_Ht_25_Israel_Female My_Number/M*100];
% Aged 75
Y_data = Female_data_75(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_25_Israel(26);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_25_Israel_Female = [Proportion_Ht_25_Israel_Female My_Number/M*100];
% Aged 76
Y_data = Female_data_76(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_25_Israel(27);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_25_Israel_Female = [Proportion_Ht_25_Israel_Female My_Number/M*100];
% Aged 77
Y_data = Female_data_77(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_25_Israel(28);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_25_Israel_Female = [Proportion_Ht_25_Israel_Female My_Number/M*100];
% Aged 78
Y_data = Female_data_78(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_25_Israel(29);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_25_Israel_Female = [Proportion_Ht_25_Israel_Female My_Number/M*100];
% Aged 79
Y_data = Female_data_79(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_25_Israel(30);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_25_Israel_Female = [Proportion_Ht_25_Israel_Female My_Number/M*100];
% Aged 80
Y_data = Female_data_80(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_25_Israel(31);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_25_Israel_Female = [Proportion_Ht_25_Israel_Female My_Number/M*100];
% Aged 81
Y_data = Female_data_81(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_25_Israel(32);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_25_Israel_Female = [Proportion_Ht_25_Israel_Female My_Number/M*100];
% Aged 82
Y_data = Female_data_82(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_25_Israel(33);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_25_Israel_Female = [Proportion_Ht_25_Israel_Female My_Number/M*100];
% Aged 83
Y_data = Female_data_83(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_25_Israel(34);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_25_Israel_Female = [Proportion_Ht_25_Israel_Female My_Number/M*100];
% Aged 84
Y_data = Female_data_84(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_25_Israel(35);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_25_Israel_Female = [Proportion_Ht_25_Israel_Female My_Number/M*100];
% Aged 85
Y_data = Female_data_85(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_25_Israel(36);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_25_Israel_Female = [Proportion_Ht_25_Israel_Female My_Number/M*100];
% Aged 86
Y_data = Female_data_86(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_25_Israel(37);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_25_Israel_Female = [Proportion_Ht_25_Israel_Female My_Number/M*100];
% Aged 87
Y_data = Female_data_87(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_25_Israel(38);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_25_Israel_Female = [Proportion_Ht_25_Israel_Female My_Number/M*100];
% Aged 88
Y_data = Female_data_88(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_25_Israel(39);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_25_Israel_Female = [Proportion_Ht_25_Israel_Female My_Number/M*100];
% Aged 89
Y_data = Female_data_89(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_25_Israel(40);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_25_Israel_Female = [Proportion_Ht_25_Israel_Female My_Number/M*100];
% Aged 90
Y_data = Female_data_90(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_25_Israel(41);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_25_Israel_Female = [Proportion_Ht_25_Israel_Female My_Number/M*100];

% For Male
% Aged 50
Y_data = Male_data_50(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_25_Israel(1);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_25_Israel_Male = [Proportion_Ht_25_Israel_Male My_Number/M*100];
% Aged 51
Y_data = Male_data_51(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_25_Israel(2);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_25_Israel_Male = [Proportion_Ht_25_Israel_Male My_Number/M*100];
% Aged 52
Y_data = Male_data_52(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_25_Israel(3);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_25_Israel_Male = [Proportion_Ht_25_Israel_Male My_Number/M*100];
% Aged 53
Y_data = Male_data_53(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_25_Israel(4);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_25_Israel_Male = [Proportion_Ht_25_Israel_Male My_Number/M*100];
% Aged 54
Y_data = Male_data_54(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_25_Israel(5);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_25_Israel_Male = [Proportion_Ht_25_Israel_Male My_Number/M*100];
% Aged 55
Y_data = Male_data_55(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_25_Israel(6);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_25_Israel_Male = [Proportion_Ht_25_Israel_Male My_Number/M*100];
% Aged 56
Y_data = Male_data_56(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_25_Israel(7);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_25_Israel_Male = [Proportion_Ht_25_Israel_Male My_Number/M*100];
% Aged 57
Y_data = Male_data_57(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_25_Israel(8);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_25_Israel_Male = [Proportion_Ht_25_Israel_Male My_Number/M*100];
% Aged 58
Y_data = Male_data_58(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_25_Israel(9);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_25_Israel_Male = [Proportion_Ht_25_Israel_Male My_Number/M*100];
% Aged 59
Y_data = Male_data_59(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_25_Israel(10);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_25_Israel_Male = [Proportion_Ht_25_Israel_Male My_Number/M*100];
% Aged 60
Y_data = Male_data_60(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_25_Israel(11);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_25_Israel_Male = [Proportion_Ht_25_Israel_Male My_Number/M*100];
% Aged 61
Y_data = Male_data_61(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_25_Israel(12);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_25_Israel_Male = [Proportion_Ht_25_Israel_Male My_Number/M*100];
% Aged 62
Y_data = Male_data_62(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_25_Israel(13);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_25_Israel_Male = [Proportion_Ht_25_Israel_Male My_Number/M*100];
% Aged 63
Y_data = Male_data_63(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_25_Israel(14);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_25_Israel_Male = [Proportion_Ht_25_Israel_Male My_Number/M*100];
% Aged 64
Y_data = Male_data_64(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_25_Israel(15);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_25_Israel_Male = [Proportion_Ht_25_Israel_Male My_Number/M*100];
% Aged 65
Y_data = Male_data_65(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_25_Israel(16);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_25_Israel_Male = [Proportion_Ht_25_Israel_Male My_Number/M*100];
% Aged 66
Y_data = Male_data_66(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_25_Israel(17);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_25_Israel_Male = [Proportion_Ht_25_Israel_Male My_Number/M*100];
% Aged 67
Y_data = Male_data_67(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_25_Israel(18);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_25_Israel_Male = [Proportion_Ht_25_Israel_Male My_Number/M*100];
% Aged 68
Y_data = Male_data_68(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_25_Israel(19);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_25_Israel_Male = [Proportion_Ht_25_Israel_Male My_Number/M*100];
% Aged 69
Y_data = Male_data_69(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_25_Israel(20);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_25_Israel_Male = [Proportion_Ht_25_Israel_Male My_Number/M*100];
% Aged 70
Y_data = Male_data_70(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_25_Israel(21);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_25_Israel_Male = [Proportion_Ht_25_Israel_Male My_Number/M*100];
% Aged 71
Y_data = Male_data_71(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_25_Israel(22);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_25_Israel_Male = [Proportion_Ht_25_Israel_Male My_Number/M*100];
% Aged 72
Y_data = Male_data_72(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_25_Israel(23);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_25_Israel_Male = [Proportion_Ht_25_Israel_Male My_Number/M*100];
% Aged 73
Y_data = Male_data_73(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_25_Israel(24);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_25_Israel_Male = [Proportion_Ht_25_Israel_Male My_Number/M*100];
% Aged 74
Y_data = Male_data_74(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_25_Israel(25);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_25_Israel_Male = [Proportion_Ht_25_Israel_Male My_Number/M*100];
% Aged 75
Y_data = Male_data_75(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_25_Israel(26);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_25_Israel_Male = [Proportion_Ht_25_Israel_Male My_Number/M*100];
% Aged 76
Y_data = Male_data_76(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_25_Israel(27);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_25_Israel_Male = [Proportion_Ht_25_Israel_Male My_Number/M*100];
% Aged 77
Y_data = Male_data_77(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_25_Israel(28);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_25_Israel_Male = [Proportion_Ht_25_Israel_Male My_Number/M*100];
% Aged 78
Y_data = Male_data_78(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_25_Israel(29);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_25_Israel_Male = [Proportion_Ht_25_Israel_Male My_Number/M*100];
% Aged 79
Y_data = Male_data_79(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_25_Israel(30);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_25_Israel_Male = [Proportion_Ht_25_Israel_Male My_Number/M*100];
% Aged 80
Y_data = Male_data_80(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_25_Israel(31);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_25_Israel_Male = [Proportion_Ht_25_Israel_Male My_Number/M*100];
% Aged 81
Y_data = Male_data_81(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_25_Israel(32);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_25_Israel_Male = [Proportion_Ht_25_Israel_Male My_Number/M*100];
% Aged 82
Y_data = Male_data_82(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_25_Israel(33);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_25_Israel_Male = [Proportion_Ht_25_Israel_Male My_Number/M*100];
% Aged 83
Y_data = Male_data_83(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_25_Israel(34);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_25_Israel_Male = [Proportion_Ht_25_Israel_Male My_Number/M*100];
% Aged 84
Y_data = Male_data_84(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_25_Israel(35);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_25_Israel_Male = [Proportion_Ht_25_Israel_Male My_Number/M*100];
% Aged 85
Y_data = Male_data_85(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_25_Israel(36);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_25_Israel_Male = [Proportion_Ht_25_Israel_Male My_Number/M*100];
% Aged 86
Y_data = Male_data_86(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_25_Israel(37);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_25_Israel_Male = [Proportion_Ht_25_Israel_Male My_Number/M*100];
% Aged 87
Y_data = Male_data_87(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_25_Israel(38);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_25_Israel_Male = [Proportion_Ht_25_Israel_Male My_Number/M*100];
% Aged 88
Y_data = Male_data_88(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_25_Israel(39);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_25_Israel_Male = [Proportion_Ht_25_Israel_Male My_Number/M*100];
% Aged 89
Y_data = Male_data_89(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_25_Israel(40);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_25_Israel_Male = [Proportion_Ht_25_Israel_Male My_Number/M*100];
% Aged 90
Y_data = Male_data_90(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_25_Israel(41);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Proportion_Ht_25_Israel_Male = [Proportion_Ht_25_Israel_Male My_Number/M*100];



%% We Save the data
save('Ht_Limit_04_SHARE.mat',...
    'Age_11_Austria','Proportion_Ht_11_Austria_Female','Proportion_Ht_11_Austria_Male',...
    'Age_12_Germany','Proportion_Ht_12_Germany_Female','Proportion_Ht_12_Germany_Male',...
    'Age_13_Sweden','Proportion_Ht_13_Sweden_Female','Proportion_Ht_13_Sweden_Male',...
    'Age_14_Netherlands','Proportion_Ht_14_Netherlands_Female','Proportion_Ht_14_Netherlands_Male',...
    'Age_15_Spain','Proportion_Ht_15_Spain_Female','Proportion_Ht_15_Spain_Male',...
    'Age_16_Italy','Proportion_Ht_16_Italy_Female','Proportion_Ht_16_Italy_Male',...
    'Age_17_France','Proportion_Ht_17_France_Female','Proportion_Ht_17_France_Male',...
    'Age_18_Denmark','Proportion_Ht_18_Denmark_Female','Proportion_Ht_18_Denmark_Male',...
    'Age_19_Greece','Proportion_Ht_19_Greece_Female','Proportion_Ht_19_Greece_Male',...
    'Age_20_Switzerland','Proportion_Ht_20_Switzerland_Female','Proportion_Ht_20_Switzerland_Male',...
    'Age_23_Belgium','Proportion_Ht_23_Belgium_Female','Proportion_Ht_23_Belgium_Male',...
    'Age_25_Israel','Proportion_Ht_25_Israel_Female','Proportion_Ht_25_Israel_Male',...
    'Age_28_Czech','Proportion_Ht_28_Czech_Female','Proportion_Ht_28_Czech_Male',...
    'Age_29_Poland','Proportion_Ht_29_Poland_Female','Proportion_Ht_29_Poland_Male',...
    'Age_31_Luxembourg','Proportion_Ht_31_Luxembourg_Female','Proportion_Ht_31_Luxembourg_Male',...
    'Age_32_Hungary','Proportion_Ht_32_Hungary_Female','Proportion_Ht_32_Hungary_Male',...
    'Age_33_Portugal','Proportion_Ht_33_Portugal_Female','Proportion_Ht_33_Portugal_Male',...
    'Age_34_Slovenia','Proportion_Ht_34_Slovenia_Female','Proportion_Ht_34_Slovenia_Male',...
    'Age_35_Estonia','Proportion_Ht_35_Estonia_Female','Proportion_Ht_35_Estonia_Male',...
    'Age_47_Croatia','Proportion_Ht_47_Croatia_Female','Proportion_Ht_47_Croatia_Male',...
    'Age_48_Lithuania','Proportion_Ht_48_Lithuania_Female','Proportion_Ht_48_Lithuania_Male',...
    'Age_51_Bulgaria','Proportion_Ht_51_Bulgaria_Female','Proportion_Ht_51_Bulgaria_Male',...
    'Age_53_Cyprus','Proportion_Ht_53_Cyprus_Female','Proportion_Ht_53_Cyprus_Male',...
    'Age_55_Finland','Proportion_Ht_55_Finland_Female','Proportion_Ht_55_Finland_Male',...
    'Age_57_Latvia','Proportion_Ht_57_Latvia_Female','Proportion_Ht_57_Latvia_Male',...
    'Age_59_Malta','Proportion_Ht_59_Malta_Female','Proportion_Ht_59_Malta_Male',...
    'Age_61_Romania','Proportion_Ht_61_Romania_Female','Proportion_Ht_61_Romania_Male',...
    'Age_63_Slovakia','Proportion_Ht_63_Slovakia_Female','Proportion_Ht_63_Slovakia_Male')
