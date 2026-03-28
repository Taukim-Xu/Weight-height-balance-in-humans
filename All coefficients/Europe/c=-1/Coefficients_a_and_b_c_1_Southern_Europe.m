%% In this code, we calculate the coefficients of a and b in 1=a/Weight+b*Height^c, 
% when c = 1 for all Southern Europe datasets when exponent c = -1;
% 
% Including:
% 61_Romania - 罗马尼亚
% 59_Malta - 马耳他
% 53_Cyprus - 塞浦路斯
% 51_Bulgaria - 保加利亚
% 47_Croatia - 克罗地亚
% 34_Slovenia - 斯洛文尼亚
% 33_Portugal - 葡萄牙
% 19_Greece - 希腊
% 16_Italy - 意大利
% 15_Spain - 西班牙
%
%%
c = -1;
%% Colors
load('My_Colors.mat')
%% Parameter information for drawing
My_mark_type = '.';
My_LineWidth = 1.5;
My_FontName = 'Times New Roman';
My_fontSize = 12;
My_Alpha = 1; % transparency of the filled area
My_MarkerSize = 7;
Edgealpha = 0;
Alpha = 1;
My_Percentile = [5 10 25 50 75 90 95]; % quantile distribution
%% 61_Romania
% Loading the data
Female_data = xlsread('61_Romania.xlsx','Female');
Male_data = xlsread('61_Romania.xlsx','Male');
% Grouping by age
Female_data_50 = []; % <= 50
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
Female_data_90 = []; % >=90

Male_data_50 = []; % <= 50
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
Male_data_90 = []; % >=90

% For Female
[M N] = size(Female_data); % No.	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Female_data(i,2) <= 50
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
    if Female_data(i,2) >= 90
        Female_data_90 = [Female_data_90; Female_data(i,3) Female_data(i,4)];
    end
end

% For Male
[M N] = size(Male_data); % No.	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Male_data(i,2) <= 50
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
    if Male_data(i,2) >= 90
        Male_data_90 = [Male_data_90; Male_data(i,3) Male_data(i,4)];
    end
end

% We calculate the coefficients of a and b in 1=a/Weight+b*Height for this
% dataset
Age_61_Romania = 50:90;
Coefficient_a_Female_1_61_Romania = [];
Coefficient_b_Female_1_61_Romania = [];
Coefficient_a_Male_1_61_Romania = [];
Coefficient_b_Male_1_61_Romania = [];

% For Female
% Age 50
X_data = (Female_data_50(:,1)/100).^c; % Height (m)
Y_data = Female_data_50(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_61_Romania = [Coefficient_a_Female_1_61_Romania PP(2)];
Coefficient_b_Female_1_61_Romania = [Coefficient_b_Female_1_61_Romania PP(1)];
% Age 51
X_data = (Female_data_51(:,1)/100).^c; % Height (m)
Y_data = Female_data_51(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_61_Romania = [Coefficient_a_Female_1_61_Romania PP(2)];
Coefficient_b_Female_1_61_Romania = [Coefficient_b_Female_1_61_Romania PP(1)];
% Age 52
X_data = (Female_data_52(:,1)/100).^c; % Height (m)
Y_data = Female_data_52(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_61_Romania = [Coefficient_a_Female_1_61_Romania PP(2)];
Coefficient_b_Female_1_61_Romania = [Coefficient_b_Female_1_61_Romania PP(1)];
% Age 53
X_data = (Female_data_53(:,1)/100).^c; % Height (m)
Y_data = Female_data_53(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_61_Romania = [Coefficient_a_Female_1_61_Romania PP(2)];
Coefficient_b_Female_1_61_Romania = [Coefficient_b_Female_1_61_Romania PP(1)];
% Age 54
X_data = (Female_data_54(:,1)/100).^c; % Height (m)
Y_data = Female_data_54(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_61_Romania = [Coefficient_a_Female_1_61_Romania PP(2)];
Coefficient_b_Female_1_61_Romania = [Coefficient_b_Female_1_61_Romania PP(1)];
% Age 55
X_data = (Female_data_55(:,1)/100).^c; % Height (m)
Y_data = Female_data_55(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_61_Romania = [Coefficient_a_Female_1_61_Romania PP(2)];
Coefficient_b_Female_1_61_Romania = [Coefficient_b_Female_1_61_Romania PP(1)];
% Age 56
X_data = (Female_data_56(:,1)/100).^c; % Height (m)
Y_data = Female_data_56(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_61_Romania = [Coefficient_a_Female_1_61_Romania PP(2)];
Coefficient_b_Female_1_61_Romania = [Coefficient_b_Female_1_61_Romania PP(1)];
% Age 57
X_data = (Female_data_57(:,1)/100).^c; % Height (m)
Y_data = Female_data_57(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_61_Romania = [Coefficient_a_Female_1_61_Romania PP(2)];
Coefficient_b_Female_1_61_Romania = [Coefficient_b_Female_1_61_Romania PP(1)];
% Age 58
X_data = (Female_data_58(:,1)/100).^c; % Height (m)
Y_data = Female_data_58(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_61_Romania = [Coefficient_a_Female_1_61_Romania PP(2)];
Coefficient_b_Female_1_61_Romania = [Coefficient_b_Female_1_61_Romania PP(1)];
% Age 59
X_data = (Female_data_59(:,1)/100).^c; % Height (m)
Y_data = Female_data_59(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_61_Romania = [Coefficient_a_Female_1_61_Romania PP(2)];
Coefficient_b_Female_1_61_Romania = [Coefficient_b_Female_1_61_Romania PP(1)];
% Age 60
X_data = (Female_data_60(:,1)/100).^c; % Height (m)
Y_data = Female_data_60(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_61_Romania = [Coefficient_a_Female_1_61_Romania PP(2)];
Coefficient_b_Female_1_61_Romania = [Coefficient_b_Female_1_61_Romania PP(1)];
% Age 61
X_data = (Female_data_61(:,1)/100).^c; % Height (m)
Y_data = Female_data_61(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_61_Romania = [Coefficient_a_Female_1_61_Romania PP(2)];
Coefficient_b_Female_1_61_Romania = [Coefficient_b_Female_1_61_Romania PP(1)];
% Age 62
X_data = (Female_data_62(:,1)/100).^c; % Height (m)
Y_data = Female_data_62(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_61_Romania = [Coefficient_a_Female_1_61_Romania PP(2)];
Coefficient_b_Female_1_61_Romania = [Coefficient_b_Female_1_61_Romania PP(1)];
% Age 63
X_data = (Female_data_63(:,1)/100).^c; % Height (m)
Y_data = Female_data_63(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_61_Romania = [Coefficient_a_Female_1_61_Romania PP(2)];
Coefficient_b_Female_1_61_Romania = [Coefficient_b_Female_1_61_Romania PP(1)];
% Age 64
X_data = (Female_data_64(:,1)/100).^c; % Height (m)
Y_data = Female_data_64(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_61_Romania = [Coefficient_a_Female_1_61_Romania PP(2)];
Coefficient_b_Female_1_61_Romania = [Coefficient_b_Female_1_61_Romania PP(1)];
% Age 65
X_data = (Female_data_65(:,1)/100).^c; % Height (m)
Y_data = Female_data_65(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_61_Romania = [Coefficient_a_Female_1_61_Romania PP(2)];
Coefficient_b_Female_1_61_Romania = [Coefficient_b_Female_1_61_Romania PP(1)];
% Age 66
X_data = (Female_data_66(:,1)/100).^c; % Height (m)
Y_data = Female_data_66(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_61_Romania = [Coefficient_a_Female_1_61_Romania PP(2)];
Coefficient_b_Female_1_61_Romania = [Coefficient_b_Female_1_61_Romania PP(1)];
% Age 67
X_data = (Female_data_67(:,1)/100).^c; % Height (m)
Y_data = Female_data_67(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_61_Romania = [Coefficient_a_Female_1_61_Romania PP(2)];
Coefficient_b_Female_1_61_Romania = [Coefficient_b_Female_1_61_Romania PP(1)];
% Age 68
X_data = (Female_data_68(:,1)/100).^c; % Height (m)
Y_data = Female_data_68(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_61_Romania = [Coefficient_a_Female_1_61_Romania PP(2)];
Coefficient_b_Female_1_61_Romania = [Coefficient_b_Female_1_61_Romania PP(1)];
% Age 69
X_data = (Female_data_69(:,1)/100).^c; % Height (m)
Y_data = Female_data_69(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_61_Romania = [Coefficient_a_Female_1_61_Romania PP(2)];
Coefficient_b_Female_1_61_Romania = [Coefficient_b_Female_1_61_Romania PP(1)];
% Age 70
X_data = (Female_data_70(:,1)/100).^c; % Height (m)
Y_data = Female_data_70(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_61_Romania = [Coefficient_a_Female_1_61_Romania PP(2)];
Coefficient_b_Female_1_61_Romania = [Coefficient_b_Female_1_61_Romania PP(1)];
% Age 71
X_data = (Female_data_71(:,1)/100).^c; % Height (m)
Y_data = Female_data_71(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_61_Romania = [Coefficient_a_Female_1_61_Romania PP(2)];
Coefficient_b_Female_1_61_Romania = [Coefficient_b_Female_1_61_Romania PP(1)];
% Age 72
X_data = (Female_data_72(:,1)/100).^c; % Height (m)
Y_data = Female_data_72(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_61_Romania = [Coefficient_a_Female_1_61_Romania PP(2)];
Coefficient_b_Female_1_61_Romania = [Coefficient_b_Female_1_61_Romania PP(1)];
% Age 73
X_data = (Female_data_73(:,1)/100).^c; % Height (m)
Y_data = Female_data_73(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_61_Romania = [Coefficient_a_Female_1_61_Romania PP(2)];
Coefficient_b_Female_1_61_Romania = [Coefficient_b_Female_1_61_Romania PP(1)];
% Age 74
X_data = (Female_data_74(:,1)/100).^c; % Height (m)
Y_data = Female_data_74(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_61_Romania = [Coefficient_a_Female_1_61_Romania PP(2)];
Coefficient_b_Female_1_61_Romania = [Coefficient_b_Female_1_61_Romania PP(1)];
% Age 75
X_data = (Female_data_75(:,1)/100).^c; % Height (m)
Y_data = Female_data_75(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_61_Romania = [Coefficient_a_Female_1_61_Romania PP(2)];
Coefficient_b_Female_1_61_Romania = [Coefficient_b_Female_1_61_Romania PP(1)];
% Age 76
X_data = (Female_data_76(:,1)/100).^c; % Height (m)
Y_data = Female_data_76(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_61_Romania = [Coefficient_a_Female_1_61_Romania PP(2)];
Coefficient_b_Female_1_61_Romania = [Coefficient_b_Female_1_61_Romania PP(1)];
% Age 77
X_data = (Female_data_77(:,1)/100).^c; % Height (m)
Y_data = Female_data_77(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_61_Romania = [Coefficient_a_Female_1_61_Romania PP(2)];
Coefficient_b_Female_1_61_Romania = [Coefficient_b_Female_1_61_Romania PP(1)];
% Age 78
X_data = (Female_data_78(:,1)/100).^c; % Height (m)
Y_data = Female_data_78(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_61_Romania = [Coefficient_a_Female_1_61_Romania PP(2)];
Coefficient_b_Female_1_61_Romania = [Coefficient_b_Female_1_61_Romania PP(1)];
% Age 79
X_data = (Female_data_79(:,1)/100).^c; % Height (m)
Y_data = Female_data_79(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_61_Romania = [Coefficient_a_Female_1_61_Romania PP(2)];
Coefficient_b_Female_1_61_Romania = [Coefficient_b_Female_1_61_Romania PP(1)];
% Age 80
X_data = (Female_data_80(:,1)/100).^c; % Height (m)
Y_data = Female_data_80(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_61_Romania = [Coefficient_a_Female_1_61_Romania PP(2)];
Coefficient_b_Female_1_61_Romania = [Coefficient_b_Female_1_61_Romania PP(1)];
% Age 81
X_data = (Female_data_81(:,1)/100).^c; % Height (m)
Y_data = Female_data_81(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_61_Romania = [Coefficient_a_Female_1_61_Romania PP(2)];
Coefficient_b_Female_1_61_Romania = [Coefficient_b_Female_1_61_Romania PP(1)];
% Age 82
X_data = (Female_data_82(:,1)/100).^c; % Height (m)
Y_data = Female_data_82(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_61_Romania = [Coefficient_a_Female_1_61_Romania PP(2)];
Coefficient_b_Female_1_61_Romania = [Coefficient_b_Female_1_61_Romania PP(1)];
% Age 83
X_data = (Female_data_83(:,1)/100).^c; % Height (m)
Y_data = Female_data_83(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_61_Romania = [Coefficient_a_Female_1_61_Romania PP(2)];
Coefficient_b_Female_1_61_Romania = [Coefficient_b_Female_1_61_Romania PP(1)];
% Age 84
X_data = (Female_data_84(:,1)/100).^c; % Height (m)
Y_data = Female_data_84(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_61_Romania = [Coefficient_a_Female_1_61_Romania PP(2)];
Coefficient_b_Female_1_61_Romania = [Coefficient_b_Female_1_61_Romania PP(1)];
% Age 85
X_data = (Female_data_85(:,1)/100).^c; % Height (m)
Y_data = Female_data_85(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_61_Romania = [Coefficient_a_Female_1_61_Romania PP(2)];
Coefficient_b_Female_1_61_Romania = [Coefficient_b_Female_1_61_Romania PP(1)];
% Age 86
X_data = (Female_data_86(:,1)/100).^c; % Height (m)
Y_data = Female_data_86(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_61_Romania = [Coefficient_a_Female_1_61_Romania PP(2)];
Coefficient_b_Female_1_61_Romania = [Coefficient_b_Female_1_61_Romania PP(1)];
% Age 87
X_data = (Female_data_87(:,1)/100).^c; % Height (m)
Y_data = Female_data_87(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_61_Romania = [Coefficient_a_Female_1_61_Romania PP(2)];
Coefficient_b_Female_1_61_Romania = [Coefficient_b_Female_1_61_Romania PP(1)];
% Age 88
X_data = (Female_data_88(:,1)/100).^c; % Height (m)
Y_data = Female_data_88(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_61_Romania = [Coefficient_a_Female_1_61_Romania PP(2)];
Coefficient_b_Female_1_61_Romania = [Coefficient_b_Female_1_61_Romania PP(1)];
% Age 89
X_data = (Female_data_89(:,1)/100).^c; % Height (m)
Y_data = Female_data_89(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_61_Romania = [Coefficient_a_Female_1_61_Romania PP(2)];
Coefficient_b_Female_1_61_Romania = [Coefficient_b_Female_1_61_Romania PP(1)];
% Age 90
X_data = (Female_data_90(:,1)/100).^c; % Height (m)
Y_data = Female_data_90(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_61_Romania = [Coefficient_a_Female_1_61_Romania PP(2)];
Coefficient_b_Female_1_61_Romania = [Coefficient_b_Female_1_61_Romania PP(1)];

% For Male
% Age 50
X_data = (Male_data_50(:,1)/100).^c; % Height (m)
Y_data = Male_data_50(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_61_Romania = [Coefficient_a_Male_1_61_Romania PP(2)];
Coefficient_b_Male_1_61_Romania = [Coefficient_b_Male_1_61_Romania PP(1)];
% Age 51
X_data = (Male_data_51(:,1)/100).^c; % Height (m)
Y_data = Male_data_51(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_61_Romania = [Coefficient_a_Male_1_61_Romania PP(2)];
Coefficient_b_Male_1_61_Romania = [Coefficient_b_Male_1_61_Romania PP(1)];
% Age 52
X_data = (Male_data_52(:,1)/100).^c; % Height (m)
Y_data = Male_data_52(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_61_Romania = [Coefficient_a_Male_1_61_Romania PP(2)];
Coefficient_b_Male_1_61_Romania = [Coefficient_b_Male_1_61_Romania PP(1)];
% Age 53
X_data = (Male_data_53(:,1)/100).^c; % Height (m)
Y_data = Male_data_53(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_61_Romania = [Coefficient_a_Male_1_61_Romania PP(2)];
Coefficient_b_Male_1_61_Romania = [Coefficient_b_Male_1_61_Romania PP(1)];
% Age 54
X_data = (Male_data_54(:,1)/100).^c; % Height (m)
Y_data = Male_data_54(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_61_Romania = [Coefficient_a_Male_1_61_Romania PP(2)];
Coefficient_b_Male_1_61_Romania = [Coefficient_b_Male_1_61_Romania PP(1)];
% Age 55
X_data = (Male_data_55(:,1)/100).^c; % Height (m)
Y_data = Male_data_55(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_61_Romania = [Coefficient_a_Male_1_61_Romania PP(2)];
Coefficient_b_Male_1_61_Romania = [Coefficient_b_Male_1_61_Romania PP(1)];
% Age 56
X_data = (Male_data_56(:,1)/100).^c; % Height (m)
Y_data = Male_data_56(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_61_Romania = [Coefficient_a_Male_1_61_Romania PP(2)];
Coefficient_b_Male_1_61_Romania = [Coefficient_b_Male_1_61_Romania PP(1)];
% Age 57
X_data = (Male_data_57(:,1)/100).^c; % Height (m)
Y_data = Male_data_57(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_61_Romania = [Coefficient_a_Male_1_61_Romania PP(2)];
Coefficient_b_Male_1_61_Romania = [Coefficient_b_Male_1_61_Romania PP(1)];
% Age 58
X_data = (Male_data_58(:,1)/100).^c; % Height (m)
Y_data = Male_data_58(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_61_Romania = [Coefficient_a_Male_1_61_Romania PP(2)];
Coefficient_b_Male_1_61_Romania = [Coefficient_b_Male_1_61_Romania PP(1)];
% Age 59
X_data = (Male_data_59(:,1)/100).^c; % Height (m)
Y_data = Male_data_59(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_61_Romania = [Coefficient_a_Male_1_61_Romania PP(2)];
Coefficient_b_Male_1_61_Romania = [Coefficient_b_Male_1_61_Romania PP(1)];
% Age 60
X_data = (Male_data_60(:,1)/100).^c; % Height (m)
Y_data = Male_data_60(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_61_Romania = [Coefficient_a_Male_1_61_Romania PP(2)];
Coefficient_b_Male_1_61_Romania = [Coefficient_b_Male_1_61_Romania PP(1)];
% Age 61
X_data = (Male_data_61(:,1)/100).^c; % Height (m)
Y_data = Male_data_61(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_61_Romania = [Coefficient_a_Male_1_61_Romania PP(2)];
Coefficient_b_Male_1_61_Romania = [Coefficient_b_Male_1_61_Romania PP(1)];
% Age 62
X_data = (Male_data_62(:,1)/100).^c; % Height (m)
Y_data = Male_data_62(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_61_Romania = [Coefficient_a_Male_1_61_Romania PP(2)];
Coefficient_b_Male_1_61_Romania = [Coefficient_b_Male_1_61_Romania PP(1)];
% Age 63
X_data = (Male_data_63(:,1)/100).^c; % Height (m)
Y_data = Male_data_63(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_61_Romania = [Coefficient_a_Male_1_61_Romania PP(2)];
Coefficient_b_Male_1_61_Romania = [Coefficient_b_Male_1_61_Romania PP(1)];
% Age 64
X_data = (Male_data_64(:,1)/100).^c; % Height (m)
Y_data = Male_data_64(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_61_Romania = [Coefficient_a_Male_1_61_Romania PP(2)];
Coefficient_b_Male_1_61_Romania = [Coefficient_b_Male_1_61_Romania PP(1)];
% Age 65
X_data = (Male_data_65(:,1)/100).^c; % Height (m)
Y_data = Male_data_65(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_61_Romania = [Coefficient_a_Male_1_61_Romania PP(2)];
Coefficient_b_Male_1_61_Romania = [Coefficient_b_Male_1_61_Romania PP(1)];
% Age 66
X_data = (Male_data_66(:,1)/100).^c; % Height (m)
Y_data = Male_data_66(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_61_Romania = [Coefficient_a_Male_1_61_Romania PP(2)];
Coefficient_b_Male_1_61_Romania = [Coefficient_b_Male_1_61_Romania PP(1)];
% Age 67
X_data = (Male_data_67(:,1)/100).^c; % Height (m)
Y_data = Male_data_67(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_61_Romania = [Coefficient_a_Male_1_61_Romania PP(2)];
Coefficient_b_Male_1_61_Romania = [Coefficient_b_Male_1_61_Romania PP(1)];
% Age 68
X_data = (Male_data_68(:,1)/100).^c; % Height (m)
Y_data = Male_data_68(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_61_Romania = [Coefficient_a_Male_1_61_Romania PP(2)];
Coefficient_b_Male_1_61_Romania = [Coefficient_b_Male_1_61_Romania PP(1)];
% Age 69
X_data = (Male_data_69(:,1)/100).^c; % Height (m)
Y_data = Male_data_69(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_61_Romania = [Coefficient_a_Male_1_61_Romania PP(2)];
Coefficient_b_Male_1_61_Romania = [Coefficient_b_Male_1_61_Romania PP(1)];
% Age 70
X_data = (Male_data_70(:,1)/100).^c; % Height (m)
Y_data = Male_data_70(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_61_Romania = [Coefficient_a_Male_1_61_Romania PP(2)];
Coefficient_b_Male_1_61_Romania = [Coefficient_b_Male_1_61_Romania PP(1)];
% Age 71
X_data = (Male_data_71(:,1)/100).^c; % Height (m)
Y_data = Male_data_71(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_61_Romania = [Coefficient_a_Male_1_61_Romania PP(2)];
Coefficient_b_Male_1_61_Romania = [Coefficient_b_Male_1_61_Romania PP(1)];
% Age 72
X_data = (Male_data_72(:,1)/100).^c; % Height (m)
Y_data = Male_data_72(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_61_Romania = [Coefficient_a_Male_1_61_Romania PP(2)];
Coefficient_b_Male_1_61_Romania = [Coefficient_b_Male_1_61_Romania PP(1)];
% Age 73
X_data = (Male_data_73(:,1)/100).^c; % Height (m)
Y_data = Male_data_73(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_61_Romania = [Coefficient_a_Male_1_61_Romania PP(2)];
Coefficient_b_Male_1_61_Romania = [Coefficient_b_Male_1_61_Romania PP(1)];
% Age 74
X_data = (Male_data_74(:,1)/100).^c; % Height (m)
Y_data = Male_data_74(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_61_Romania = [Coefficient_a_Male_1_61_Romania PP(2)];
Coefficient_b_Male_1_61_Romania = [Coefficient_b_Male_1_61_Romania PP(1)];
% Age 75
X_data = (Male_data_75(:,1)/100).^c; % Height (m)
Y_data = Male_data_75(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_61_Romania = [Coefficient_a_Male_1_61_Romania PP(2)];
Coefficient_b_Male_1_61_Romania = [Coefficient_b_Male_1_61_Romania PP(1)];
% Age 76
X_data = (Male_data_76(:,1)/100).^c; % Height (m)
Y_data = Male_data_76(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_61_Romania = [Coefficient_a_Male_1_61_Romania PP(2)];
Coefficient_b_Male_1_61_Romania = [Coefficient_b_Male_1_61_Romania PP(1)];
% Age 77
X_data = (Male_data_77(:,1)/100).^c; % Height (m)
Y_data = Male_data_77(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_61_Romania = [Coefficient_a_Male_1_61_Romania PP(2)];
Coefficient_b_Male_1_61_Romania = [Coefficient_b_Male_1_61_Romania PP(1)];
% Age 78
X_data = (Male_data_78(:,1)/100).^c; % Height (m)
Y_data = Male_data_78(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_61_Romania = [Coefficient_a_Male_1_61_Romania PP(2)];
Coefficient_b_Male_1_61_Romania = [Coefficient_b_Male_1_61_Romania PP(1)];
% Age 79
X_data = (Male_data_79(:,1)/100).^c; % Height (m)
Y_data = Male_data_79(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_61_Romania = [Coefficient_a_Male_1_61_Romania PP(2)];
Coefficient_b_Male_1_61_Romania = [Coefficient_b_Male_1_61_Romania PP(1)];
% Age 80
X_data = (Male_data_80(:,1)/100).^c; % Height (m)
Y_data = Male_data_80(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_61_Romania = [Coefficient_a_Male_1_61_Romania PP(2)];
Coefficient_b_Male_1_61_Romania = [Coefficient_b_Male_1_61_Romania PP(1)];
% Age 81
X_data = (Male_data_81(:,1)/100).^c; % Height (m)
Y_data = Male_data_81(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_61_Romania = [Coefficient_a_Male_1_61_Romania PP(2)];
Coefficient_b_Male_1_61_Romania = [Coefficient_b_Male_1_61_Romania PP(1)];
% Age 82
X_data = (Male_data_82(:,1)/100).^c; % Height (m)
Y_data = Male_data_82(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_61_Romania = [Coefficient_a_Male_1_61_Romania PP(2)];
Coefficient_b_Male_1_61_Romania = [Coefficient_b_Male_1_61_Romania PP(1)];
% Age 83
X_data = (Male_data_83(:,1)/100).^c; % Height (m)
Y_data = Male_data_83(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_61_Romania = [Coefficient_a_Male_1_61_Romania PP(2)];
Coefficient_b_Male_1_61_Romania = [Coefficient_b_Male_1_61_Romania PP(1)];
% Age 84
X_data = (Male_data_84(:,1)/100).^c; % Height (m)
Y_data = Male_data_84(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_61_Romania = [Coefficient_a_Male_1_61_Romania PP(2)];
Coefficient_b_Male_1_61_Romania = [Coefficient_b_Male_1_61_Romania PP(1)];
% Age 85
X_data = (Male_data_85(:,1)/100).^c; % Height (m)
Y_data = Male_data_85(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_61_Romania = [Coefficient_a_Male_1_61_Romania PP(2)];
Coefficient_b_Male_1_61_Romania = [Coefficient_b_Male_1_61_Romania PP(1)];
% Age 86
X_data = (Male_data_86(:,1)/100).^c; % Height (m)
Y_data = Male_data_86(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_61_Romania = [Coefficient_a_Male_1_61_Romania PP(2)];
Coefficient_b_Male_1_61_Romania = [Coefficient_b_Male_1_61_Romania PP(1)];
% Age 87
X_data = (Male_data_87(:,1)/100).^c; % Height (m)
Y_data = Male_data_87(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_61_Romania = [Coefficient_a_Male_1_61_Romania PP(2)];
Coefficient_b_Male_1_61_Romania = [Coefficient_b_Male_1_61_Romania PP(1)];
% Age 88
X_data = (Male_data_88(:,1)/100).^c; % Height (m)
Y_data = Male_data_88(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_61_Romania = [Coefficient_a_Male_1_61_Romania PP(2)];
Coefficient_b_Male_1_61_Romania = [Coefficient_b_Male_1_61_Romania PP(1)];
% Age 89
X_data = (Male_data_89(:,1)/100).^c; % Height (m)
Y_data = Male_data_89(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_61_Romania = [Coefficient_a_Male_1_61_Romania PP(2)];
Coefficient_b_Male_1_61_Romania = [Coefficient_b_Male_1_61_Romania PP(1)];
% Age 90
X_data = (Male_data_90(:,1)/100).^c; % Height (m)
Y_data = Male_data_90(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_61_Romania = [Coefficient_a_Male_1_61_Romania PP(2)];
Coefficient_b_Male_1_61_Romania = [Coefficient_b_Male_1_61_Romania PP(1)];

%% 59_Malta
% Loading the data
Female_data = xlsread('59_Malta.xlsx','Female');
Male_data = xlsread('59_Malta.xlsx','Male');
% Grouping by age
Female_data_53 = []; % <= 50
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
Female_data_90 = []; % >=90

Male_data_53 = []; % <= 50
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
Male_data_90 = []; % >=90

% For Female
[M N] = size(Female_data); % No.	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Female_data(i,2) <= 53
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
    if Female_data(i,2) >= 90
        Female_data_90 = [Female_data_90; Female_data(i,3) Female_data(i,4)];
    end
end

% For Male
[M N] = size(Male_data); % No.	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Male_data(i,2) <= 53
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
    if Male_data(i,2) >= 90
        Male_data_90 = [Male_data_90; Male_data(i,3) Male_data(i,4)];
    end
end

% We calculate the coefficients of a and b in 1=a/Weight+b*Height for this
% dataset
Age_59_Malta = 50:90;
Coefficient_a_Female_1_59_Malta = [];
Coefficient_b_Female_1_59_Malta = [];
Coefficient_a_Male_1_59_Malta = [];
Coefficient_b_Male_1_59_Malta = [];

% For Female
% Age 50
X_data = (Female_data_50(:,1)/100).^c; % Height (m)
Y_data = Female_data_50(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_59_Malta = [Coefficient_a_Female_1_59_Malta PP(2)];
Coefficient_b_Female_1_59_Malta = [Coefficient_b_Female_1_59_Malta PP(1)];
% Age 51
X_data = (Female_data_51(:,1)/100).^c; % Height (m)
Y_data = Female_data_51(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_59_Malta = [Coefficient_a_Female_1_59_Malta PP(2)];
Coefficient_b_Female_1_59_Malta = [Coefficient_b_Female_1_59_Malta PP(1)];
% Age 52
X_data = (Female_data_52(:,1)/100).^c; % Height (m)
Y_data = Female_data_52(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_59_Malta = [Coefficient_a_Female_1_59_Malta PP(2)];
Coefficient_b_Female_1_59_Malta = [Coefficient_b_Female_1_59_Malta PP(1)];
% Age 53
X_data = (Female_data_53(:,1)/100).^c; % Height (m)
Y_data = Female_data_53(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_59_Malta = [Coefficient_a_Female_1_59_Malta PP(2)];
Coefficient_b_Female_1_59_Malta = [Coefficient_b_Female_1_59_Malta PP(1)];
% Age 54
X_data = (Female_data_54(:,1)/100).^c; % Height (m)
Y_data = Female_data_54(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_59_Malta = [Coefficient_a_Female_1_59_Malta PP(2)];
Coefficient_b_Female_1_59_Malta = [Coefficient_b_Female_1_59_Malta PP(1)];
% Age 55
X_data = (Female_data_55(:,1)/100).^c; % Height (m)
Y_data = Female_data_55(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_59_Malta = [Coefficient_a_Female_1_59_Malta PP(2)];
Coefficient_b_Female_1_59_Malta = [Coefficient_b_Female_1_59_Malta PP(1)];
% Age 56
X_data = (Female_data_56(:,1)/100).^c; % Height (m)
Y_data = Female_data_56(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_59_Malta = [Coefficient_a_Female_1_59_Malta PP(2)];
Coefficient_b_Female_1_59_Malta = [Coefficient_b_Female_1_59_Malta PP(1)];
% Age 57
X_data = (Female_data_57(:,1)/100).^c; % Height (m)
Y_data = Female_data_57(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_59_Malta = [Coefficient_a_Female_1_59_Malta PP(2)];
Coefficient_b_Female_1_59_Malta = [Coefficient_b_Female_1_59_Malta PP(1)];
% Age 58
X_data = (Female_data_58(:,1)/100).^c; % Height (m)
Y_data = Female_data_58(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_59_Malta = [Coefficient_a_Female_1_59_Malta PP(2)];
Coefficient_b_Female_1_59_Malta = [Coefficient_b_Female_1_59_Malta PP(1)];
% Age 59
X_data = (Female_data_59(:,1)/100).^c; % Height (m)
Y_data = Female_data_59(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_59_Malta = [Coefficient_a_Female_1_59_Malta PP(2)];
Coefficient_b_Female_1_59_Malta = [Coefficient_b_Female_1_59_Malta PP(1)];
% Age 60
X_data = (Female_data_60(:,1)/100).^c; % Height (m)
Y_data = Female_data_60(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_59_Malta = [Coefficient_a_Female_1_59_Malta PP(2)];
Coefficient_b_Female_1_59_Malta = [Coefficient_b_Female_1_59_Malta PP(1)];
% Age 61
X_data = (Female_data_61(:,1)/100).^c; % Height (m)
Y_data = Female_data_61(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_59_Malta = [Coefficient_a_Female_1_59_Malta PP(2)];
Coefficient_b_Female_1_59_Malta = [Coefficient_b_Female_1_59_Malta PP(1)];
% Age 62
X_data = (Female_data_62(:,1)/100).^c; % Height (m)
Y_data = Female_data_62(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_59_Malta = [Coefficient_a_Female_1_59_Malta PP(2)];
Coefficient_b_Female_1_59_Malta = [Coefficient_b_Female_1_59_Malta PP(1)];
% Age 63
X_data = (Female_data_63(:,1)/100).^c; % Height (m)
Y_data = Female_data_63(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_59_Malta = [Coefficient_a_Female_1_59_Malta PP(2)];
Coefficient_b_Female_1_59_Malta = [Coefficient_b_Female_1_59_Malta PP(1)];
% Age 64
X_data = (Female_data_64(:,1)/100).^c; % Height (m)
Y_data = Female_data_64(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_59_Malta = [Coefficient_a_Female_1_59_Malta PP(2)];
Coefficient_b_Female_1_59_Malta = [Coefficient_b_Female_1_59_Malta PP(1)];
% Age 65
X_data = (Female_data_65(:,1)/100).^c; % Height (m)
Y_data = Female_data_65(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_59_Malta = [Coefficient_a_Female_1_59_Malta PP(2)];
Coefficient_b_Female_1_59_Malta = [Coefficient_b_Female_1_59_Malta PP(1)];
% Age 66
X_data = (Female_data_66(:,1)/100).^c; % Height (m)
Y_data = Female_data_66(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_59_Malta = [Coefficient_a_Female_1_59_Malta PP(2)];
Coefficient_b_Female_1_59_Malta = [Coefficient_b_Female_1_59_Malta PP(1)];
% Age 67
X_data = (Female_data_67(:,1)/100).^c; % Height (m)
Y_data = Female_data_67(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_59_Malta = [Coefficient_a_Female_1_59_Malta PP(2)];
Coefficient_b_Female_1_59_Malta = [Coefficient_b_Female_1_59_Malta PP(1)];
% Age 68
X_data = (Female_data_68(:,1)/100).^c; % Height (m)
Y_data = Female_data_68(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_59_Malta = [Coefficient_a_Female_1_59_Malta PP(2)];
Coefficient_b_Female_1_59_Malta = [Coefficient_b_Female_1_59_Malta PP(1)];
% Age 69
X_data = (Female_data_69(:,1)/100).^c; % Height (m)
Y_data = Female_data_69(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_59_Malta = [Coefficient_a_Female_1_59_Malta PP(2)];
Coefficient_b_Female_1_59_Malta = [Coefficient_b_Female_1_59_Malta PP(1)];
% Age 70
X_data = (Female_data_70(:,1)/100).^c; % Height (m)
Y_data = Female_data_70(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_59_Malta = [Coefficient_a_Female_1_59_Malta PP(2)];
Coefficient_b_Female_1_59_Malta = [Coefficient_b_Female_1_59_Malta PP(1)];
% Age 71
X_data = (Female_data_71(:,1)/100).^c; % Height (m)
Y_data = Female_data_71(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_59_Malta = [Coefficient_a_Female_1_59_Malta PP(2)];
Coefficient_b_Female_1_59_Malta = [Coefficient_b_Female_1_59_Malta PP(1)];
% Age 72
X_data = (Female_data_72(:,1)/100).^c; % Height (m)
Y_data = Female_data_72(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_59_Malta = [Coefficient_a_Female_1_59_Malta PP(2)];
Coefficient_b_Female_1_59_Malta = [Coefficient_b_Female_1_59_Malta PP(1)];
% Age 73
X_data = (Female_data_73(:,1)/100).^c; % Height (m)
Y_data = Female_data_73(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_59_Malta = [Coefficient_a_Female_1_59_Malta PP(2)];
Coefficient_b_Female_1_59_Malta = [Coefficient_b_Female_1_59_Malta PP(1)];
% Age 74
X_data = (Female_data_74(:,1)/100).^c; % Height (m)
Y_data = Female_data_74(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_59_Malta = [Coefficient_a_Female_1_59_Malta PP(2)];
Coefficient_b_Female_1_59_Malta = [Coefficient_b_Female_1_59_Malta PP(1)];
% Age 75
X_data = (Female_data_75(:,1)/100).^c; % Height (m)
Y_data = Female_data_75(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_59_Malta = [Coefficient_a_Female_1_59_Malta PP(2)];
Coefficient_b_Female_1_59_Malta = [Coefficient_b_Female_1_59_Malta PP(1)];
% Age 76
X_data = (Female_data_76(:,1)/100).^c; % Height (m)
Y_data = Female_data_76(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_59_Malta = [Coefficient_a_Female_1_59_Malta PP(2)];
Coefficient_b_Female_1_59_Malta = [Coefficient_b_Female_1_59_Malta PP(1)];
% Age 77
X_data = (Female_data_77(:,1)/100).^c; % Height (m)
Y_data = Female_data_77(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_59_Malta = [Coefficient_a_Female_1_59_Malta PP(2)];
Coefficient_b_Female_1_59_Malta = [Coefficient_b_Female_1_59_Malta PP(1)];
% Age 78
X_data = (Female_data_78(:,1)/100).^c; % Height (m)
Y_data = Female_data_78(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_59_Malta = [Coefficient_a_Female_1_59_Malta PP(2)];
Coefficient_b_Female_1_59_Malta = [Coefficient_b_Female_1_59_Malta PP(1)];
% Age 79
X_data = (Female_data_79(:,1)/100).^c; % Height (m)
Y_data = Female_data_79(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_59_Malta = [Coefficient_a_Female_1_59_Malta PP(2)];
Coefficient_b_Female_1_59_Malta = [Coefficient_b_Female_1_59_Malta PP(1)];
% Age 80
X_data = (Female_data_80(:,1)/100).^c; % Height (m)
Y_data = Female_data_80(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_59_Malta = [Coefficient_a_Female_1_59_Malta PP(2)];
Coefficient_b_Female_1_59_Malta = [Coefficient_b_Female_1_59_Malta PP(1)];
% Age 81
X_data = (Female_data_81(:,1)/100).^c; % Height (m)
Y_data = Female_data_81(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_59_Malta = [Coefficient_a_Female_1_59_Malta PP(2)];
Coefficient_b_Female_1_59_Malta = [Coefficient_b_Female_1_59_Malta PP(1)];
% Age 82
X_data = (Female_data_82(:,1)/100).^c; % Height (m)
Y_data = Female_data_82(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_59_Malta = [Coefficient_a_Female_1_59_Malta PP(2)];
Coefficient_b_Female_1_59_Malta = [Coefficient_b_Female_1_59_Malta PP(1)];
% Age 83
X_data = (Female_data_83(:,1)/100).^c; % Height (m)
Y_data = Female_data_83(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_59_Malta = [Coefficient_a_Female_1_59_Malta PP(2)];
Coefficient_b_Female_1_59_Malta = [Coefficient_b_Female_1_59_Malta PP(1)];
% Age 84
X_data = (Female_data_84(:,1)/100).^c; % Height (m)
Y_data = Female_data_84(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_59_Malta = [Coefficient_a_Female_1_59_Malta PP(2)];
Coefficient_b_Female_1_59_Malta = [Coefficient_b_Female_1_59_Malta PP(1)];
% Age 85
X_data = (Female_data_85(:,1)/100).^c; % Height (m)
Y_data = Female_data_85(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_59_Malta = [Coefficient_a_Female_1_59_Malta PP(2)];
Coefficient_b_Female_1_59_Malta = [Coefficient_b_Female_1_59_Malta PP(1)];
% Age 86
X_data = (Female_data_86(:,1)/100).^c; % Height (m)
Y_data = Female_data_86(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_59_Malta = [Coefficient_a_Female_1_59_Malta PP(2)];
Coefficient_b_Female_1_59_Malta = [Coefficient_b_Female_1_59_Malta PP(1)];
% Age 87
X_data = (Female_data_87(:,1)/100).^c; % Height (m)
Y_data = Female_data_87(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_59_Malta = [Coefficient_a_Female_1_59_Malta PP(2)];
Coefficient_b_Female_1_59_Malta = [Coefficient_b_Female_1_59_Malta PP(1)];
% Age 88
X_data = (Female_data_88(:,1)/100).^c; % Height (m)
Y_data = Female_data_88(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_59_Malta = [Coefficient_a_Female_1_59_Malta PP(2)];
Coefficient_b_Female_1_59_Malta = [Coefficient_b_Female_1_59_Malta PP(1)];
% Age 89
X_data = (Female_data_89(:,1)/100).^c; % Height (m)
Y_data = Female_data_89(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_59_Malta = [Coefficient_a_Female_1_59_Malta PP(2)];
Coefficient_b_Female_1_59_Malta = [Coefficient_b_Female_1_59_Malta PP(1)];
% Age 90
X_data = (Female_data_90(:,1)/100).^c; % Height (m)
Y_data = Female_data_90(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_59_Malta = [Coefficient_a_Female_1_59_Malta PP(2)];
Coefficient_b_Female_1_59_Malta = [Coefficient_b_Female_1_59_Malta PP(1)];

% For Male
% Age 50
X_data = (Male_data_50(:,1)/100).^c; % Height (m)
Y_data = Male_data_50(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_59_Malta = [Coefficient_a_Male_1_59_Malta PP(2)];
Coefficient_b_Male_1_59_Malta = [Coefficient_b_Male_1_59_Malta PP(1)];
% Age 51
X_data = (Male_data_51(:,1)/100).^c; % Height (m)
Y_data = Male_data_51(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_59_Malta = [Coefficient_a_Male_1_59_Malta PP(2)];
Coefficient_b_Male_1_59_Malta = [Coefficient_b_Male_1_59_Malta PP(1)];
% Age 52
X_data = (Male_data_52(:,1)/100).^c; % Height (m)
Y_data = Male_data_52(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_59_Malta = [Coefficient_a_Male_1_59_Malta PP(2)];
Coefficient_b_Male_1_59_Malta = [Coefficient_b_Male_1_59_Malta PP(1)];
% Age 53
X_data = (Male_data_53(:,1)/100).^c; % Height (m)
Y_data = Male_data_53(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_59_Malta = [Coefficient_a_Male_1_59_Malta PP(2)];
Coefficient_b_Male_1_59_Malta = [Coefficient_b_Male_1_59_Malta PP(1)];
% Age 54
X_data = (Male_data_54(:,1)/100).^c; % Height (m)
Y_data = Male_data_54(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_59_Malta = [Coefficient_a_Male_1_59_Malta PP(2)];
Coefficient_b_Male_1_59_Malta = [Coefficient_b_Male_1_59_Malta PP(1)];
% Age 55
X_data = (Male_data_55(:,1)/100).^c; % Height (m)
Y_data = Male_data_55(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_59_Malta = [Coefficient_a_Male_1_59_Malta PP(2)];
Coefficient_b_Male_1_59_Malta = [Coefficient_b_Male_1_59_Malta PP(1)];
% Age 56
X_data = (Male_data_56(:,1)/100).^c; % Height (m)
Y_data = Male_data_56(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_59_Malta = [Coefficient_a_Male_1_59_Malta PP(2)];
Coefficient_b_Male_1_59_Malta = [Coefficient_b_Male_1_59_Malta PP(1)];
% Age 57
X_data = (Male_data_57(:,1)/100).^c; % Height (m)
Y_data = Male_data_57(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_59_Malta = [Coefficient_a_Male_1_59_Malta PP(2)];
Coefficient_b_Male_1_59_Malta = [Coefficient_b_Male_1_59_Malta PP(1)];
% Age 58
X_data = (Male_data_58(:,1)/100).^c; % Height (m)
Y_data = Male_data_58(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_59_Malta = [Coefficient_a_Male_1_59_Malta PP(2)];
Coefficient_b_Male_1_59_Malta = [Coefficient_b_Male_1_59_Malta PP(1)];
% Age 59
X_data = (Male_data_59(:,1)/100).^c; % Height (m)
Y_data = Male_data_59(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_59_Malta = [Coefficient_a_Male_1_59_Malta PP(2)];
Coefficient_b_Male_1_59_Malta = [Coefficient_b_Male_1_59_Malta PP(1)];
% Age 60
X_data = (Male_data_60(:,1)/100).^c; % Height (m)
Y_data = Male_data_60(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_59_Malta = [Coefficient_a_Male_1_59_Malta PP(2)];
Coefficient_b_Male_1_59_Malta = [Coefficient_b_Male_1_59_Malta PP(1)];
% Age 61
X_data = (Male_data_61(:,1)/100).^c; % Height (m)
Y_data = Male_data_61(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_59_Malta = [Coefficient_a_Male_1_59_Malta PP(2)];
Coefficient_b_Male_1_59_Malta = [Coefficient_b_Male_1_59_Malta PP(1)];
% Age 62
X_data = (Male_data_62(:,1)/100).^c; % Height (m)
Y_data = Male_data_62(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_59_Malta = [Coefficient_a_Male_1_59_Malta PP(2)];
Coefficient_b_Male_1_59_Malta = [Coefficient_b_Male_1_59_Malta PP(1)];
% Age 63
X_data = (Male_data_63(:,1)/100).^c; % Height (m)
Y_data = Male_data_63(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_59_Malta = [Coefficient_a_Male_1_59_Malta PP(2)];
Coefficient_b_Male_1_59_Malta = [Coefficient_b_Male_1_59_Malta PP(1)];
% Age 64
X_data = (Male_data_64(:,1)/100).^c; % Height (m)
Y_data = Male_data_64(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_59_Malta = [Coefficient_a_Male_1_59_Malta PP(2)];
Coefficient_b_Male_1_59_Malta = [Coefficient_b_Male_1_59_Malta PP(1)];
% Age 65
X_data = (Male_data_65(:,1)/100).^c; % Height (m)
Y_data = Male_data_65(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_59_Malta = [Coefficient_a_Male_1_59_Malta PP(2)];
Coefficient_b_Male_1_59_Malta = [Coefficient_b_Male_1_59_Malta PP(1)];
% Age 66
X_data = (Male_data_66(:,1)/100).^c; % Height (m)
Y_data = Male_data_66(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_59_Malta = [Coefficient_a_Male_1_59_Malta PP(2)];
Coefficient_b_Male_1_59_Malta = [Coefficient_b_Male_1_59_Malta PP(1)];
% Age 67
X_data = (Male_data_67(:,1)/100).^c; % Height (m)
Y_data = Male_data_67(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_59_Malta = [Coefficient_a_Male_1_59_Malta PP(2)];
Coefficient_b_Male_1_59_Malta = [Coefficient_b_Male_1_59_Malta PP(1)];
% Age 68
X_data = (Male_data_68(:,1)/100).^c; % Height (m)
Y_data = Male_data_68(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_59_Malta = [Coefficient_a_Male_1_59_Malta PP(2)];
Coefficient_b_Male_1_59_Malta = [Coefficient_b_Male_1_59_Malta PP(1)];
% Age 69
X_data = (Male_data_69(:,1)/100).^c; % Height (m)
Y_data = Male_data_69(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_59_Malta = [Coefficient_a_Male_1_59_Malta PP(2)];
Coefficient_b_Male_1_59_Malta = [Coefficient_b_Male_1_59_Malta PP(1)];
% Age 70
X_data = (Male_data_70(:,1)/100).^c; % Height (m)
Y_data = Male_data_70(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_59_Malta = [Coefficient_a_Male_1_59_Malta PP(2)];
Coefficient_b_Male_1_59_Malta = [Coefficient_b_Male_1_59_Malta PP(1)];
% Age 71
X_data = (Male_data_71(:,1)/100).^c; % Height (m)
Y_data = Male_data_71(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_59_Malta = [Coefficient_a_Male_1_59_Malta PP(2)];
Coefficient_b_Male_1_59_Malta = [Coefficient_b_Male_1_59_Malta PP(1)];
% Age 72
X_data = (Male_data_72(:,1)/100).^c; % Height (m)
Y_data = Male_data_72(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_59_Malta = [Coefficient_a_Male_1_59_Malta PP(2)];
Coefficient_b_Male_1_59_Malta = [Coefficient_b_Male_1_59_Malta PP(1)];
% Age 73
X_data = (Male_data_73(:,1)/100).^c; % Height (m)
Y_data = Male_data_73(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_59_Malta = [Coefficient_a_Male_1_59_Malta PP(2)];
Coefficient_b_Male_1_59_Malta = [Coefficient_b_Male_1_59_Malta PP(1)];
% Age 74
X_data = (Male_data_74(:,1)/100).^c; % Height (m)
Y_data = Male_data_74(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_59_Malta = [Coefficient_a_Male_1_59_Malta PP(2)];
Coefficient_b_Male_1_59_Malta = [Coefficient_b_Male_1_59_Malta PP(1)];
% Age 75
X_data = (Male_data_75(:,1)/100).^c; % Height (m)
Y_data = Male_data_75(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_59_Malta = [Coefficient_a_Male_1_59_Malta PP(2)];
Coefficient_b_Male_1_59_Malta = [Coefficient_b_Male_1_59_Malta PP(1)];
% Age 76
X_data = (Male_data_76(:,1)/100).^c; % Height (m)
Y_data = Male_data_76(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_59_Malta = [Coefficient_a_Male_1_59_Malta PP(2)];
Coefficient_b_Male_1_59_Malta = [Coefficient_b_Male_1_59_Malta PP(1)];
% Age 77
X_data = (Male_data_77(:,1)/100).^c; % Height (m)
Y_data = Male_data_77(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_59_Malta = [Coefficient_a_Male_1_59_Malta PP(2)];
Coefficient_b_Male_1_59_Malta = [Coefficient_b_Male_1_59_Malta PP(1)];
% Age 78
X_data = (Male_data_78(:,1)/100).^c; % Height (m)
Y_data = Male_data_78(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_59_Malta = [Coefficient_a_Male_1_59_Malta PP(2)];
Coefficient_b_Male_1_59_Malta = [Coefficient_b_Male_1_59_Malta PP(1)];
% Age 79
X_data = (Male_data_79(:,1)/100).^c; % Height (m)
Y_data = Male_data_79(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_59_Malta = [Coefficient_a_Male_1_59_Malta PP(2)];
Coefficient_b_Male_1_59_Malta = [Coefficient_b_Male_1_59_Malta PP(1)];
% Age 80
X_data = (Male_data_80(:,1)/100).^c; % Height (m)
Y_data = Male_data_80(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_59_Malta = [Coefficient_a_Male_1_59_Malta PP(2)];
Coefficient_b_Male_1_59_Malta = [Coefficient_b_Male_1_59_Malta PP(1)];
% Age 81
X_data = (Male_data_81(:,1)/100).^c; % Height (m)
Y_data = Male_data_81(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_59_Malta = [Coefficient_a_Male_1_59_Malta PP(2)];
Coefficient_b_Male_1_59_Malta = [Coefficient_b_Male_1_59_Malta PP(1)];
% Age 82
X_data = (Male_data_82(:,1)/100).^c; % Height (m)
Y_data = Male_data_82(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_59_Malta = [Coefficient_a_Male_1_59_Malta PP(2)];
Coefficient_b_Male_1_59_Malta = [Coefficient_b_Male_1_59_Malta PP(1)];
% Age 83
X_data = (Male_data_83(:,1)/100).^c; % Height (m)
Y_data = Male_data_83(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_59_Malta = [Coefficient_a_Male_1_59_Malta PP(2)];
Coefficient_b_Male_1_59_Malta = [Coefficient_b_Male_1_59_Malta PP(1)];
% Age 84
X_data = (Male_data_84(:,1)/100).^c; % Height (m)
Y_data = Male_data_84(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_59_Malta = [Coefficient_a_Male_1_59_Malta PP(2)];
Coefficient_b_Male_1_59_Malta = [Coefficient_b_Male_1_59_Malta PP(1)];
% Age 85
X_data = (Male_data_85(:,1)/100).^c; % Height (m)
Y_data = Male_data_85(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_59_Malta = [Coefficient_a_Male_1_59_Malta PP(2)];
Coefficient_b_Male_1_59_Malta = [Coefficient_b_Male_1_59_Malta PP(1)];
% Age 86
X_data = (Male_data_86(:,1)/100).^c; % Height (m)
Y_data = Male_data_86(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_59_Malta = [Coefficient_a_Male_1_59_Malta PP(2)];
Coefficient_b_Male_1_59_Malta = [Coefficient_b_Male_1_59_Malta PP(1)];
% Age 87
X_data = (Male_data_87(:,1)/100).^c; % Height (m)
Y_data = Male_data_87(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_59_Malta = [Coefficient_a_Male_1_59_Malta PP(2)];
Coefficient_b_Male_1_59_Malta = [Coefficient_b_Male_1_59_Malta PP(1)];
% Age 88
X_data = (Male_data_88(:,1)/100).^c; % Height (m)
Y_data = Male_data_88(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_59_Malta = [Coefficient_a_Male_1_59_Malta PP(2)];
Coefficient_b_Male_1_59_Malta = [Coefficient_b_Male_1_59_Malta PP(1)];
% Age 89
X_data = (Male_data_89(:,1)/100).^c; % Height (m)
Y_data = Male_data_89(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_59_Malta = [Coefficient_a_Male_1_59_Malta PP(2)];
Coefficient_b_Male_1_59_Malta = [Coefficient_b_Male_1_59_Malta PP(1)];
% Age 90
X_data = (Male_data_90(:,1)/100).^c; % Height (m)
Y_data = Male_data_90(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_59_Malta = [Coefficient_a_Male_1_59_Malta PP(2)];
Coefficient_b_Male_1_59_Malta = [Coefficient_b_Male_1_59_Malta PP(1)];

%% 53_Cyprus
% Loading the data
Female_data = xlsread('53_Cyprus.xlsx','Female');
Male_data = xlsread('53_Cyprus.xlsx','Male');
% Grouping by age
Female_data_50 = []; % <= 50
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
Female_data_90 = []; % >=90

Male_data_50 = []; % <= 50
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
Male_data_90 = []; % >=90

% For Female
[M N] = size(Female_data); % No.	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Female_data(i,2) <= 50
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
    if Female_data(i,2) >= 90
        Female_data_90 = [Female_data_90; Female_data(i,3) Female_data(i,4)];
    end
end

% For Male
[M N] = size(Male_data); % No.	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Male_data(i,2) <= 50
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
    if Male_data(i,2) >= 90
        Male_data_90 = [Male_data_90; Male_data(i,3) Male_data(i,4)];
    end
end

% We calculate the coefficients of a and b in 1=a/Weight+b*Height for this
% dataset
Age_53_Cyprus = 50:90;
Coefficient_a_Female_1_53_Cyprus = [];
Coefficient_b_Female_1_53_Cyprus = [];
Coefficient_a_Male_1_53_Cyprus = [];
Coefficient_b_Male_1_53_Cyprus = [];

% For Female
% Age 50
X_data = (Female_data_50(:,1)/100).^c; % Height (m)
Y_data = Female_data_50(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_53_Cyprus = [Coefficient_a_Female_1_53_Cyprus PP(2)];
Coefficient_b_Female_1_53_Cyprus = [Coefficient_b_Female_1_53_Cyprus PP(1)];
% Age 51
X_data = (Female_data_51(:,1)/100).^c; % Height (m)
Y_data = Female_data_51(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_53_Cyprus = [Coefficient_a_Female_1_53_Cyprus PP(2)];
Coefficient_b_Female_1_53_Cyprus = [Coefficient_b_Female_1_53_Cyprus PP(1)];
% Age 52
X_data = (Female_data_52(:,1)/100).^c; % Height (m)
Y_data = Female_data_52(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_53_Cyprus = [Coefficient_a_Female_1_53_Cyprus PP(2)];
Coefficient_b_Female_1_53_Cyprus = [Coefficient_b_Female_1_53_Cyprus PP(1)];
% Age 53
X_data = (Female_data_53(:,1)/100).^c; % Height (m)
Y_data = Female_data_53(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_53_Cyprus = [Coefficient_a_Female_1_53_Cyprus PP(2)];
Coefficient_b_Female_1_53_Cyprus = [Coefficient_b_Female_1_53_Cyprus PP(1)];
% Age 54
X_data = (Female_data_54(:,1)/100).^c; % Height (m)
Y_data = Female_data_54(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_53_Cyprus = [Coefficient_a_Female_1_53_Cyprus PP(2)];
Coefficient_b_Female_1_53_Cyprus = [Coefficient_b_Female_1_53_Cyprus PP(1)];
% Age 55
X_data = (Female_data_55(:,1)/100).^c; % Height (m)
Y_data = Female_data_55(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_53_Cyprus = [Coefficient_a_Female_1_53_Cyprus PP(2)];
Coefficient_b_Female_1_53_Cyprus = [Coefficient_b_Female_1_53_Cyprus PP(1)];
% Age 56
X_data = (Female_data_56(:,1)/100).^c; % Height (m)
Y_data = Female_data_56(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_53_Cyprus = [Coefficient_a_Female_1_53_Cyprus PP(2)];
Coefficient_b_Female_1_53_Cyprus = [Coefficient_b_Female_1_53_Cyprus PP(1)];
% Age 57
X_data = (Female_data_57(:,1)/100).^c; % Height (m)
Y_data = Female_data_57(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_53_Cyprus = [Coefficient_a_Female_1_53_Cyprus PP(2)];
Coefficient_b_Female_1_53_Cyprus = [Coefficient_b_Female_1_53_Cyprus PP(1)];
% Age 58
X_data = (Female_data_58(:,1)/100).^c; % Height (m)
Y_data = Female_data_58(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_53_Cyprus = [Coefficient_a_Female_1_53_Cyprus PP(2)];
Coefficient_b_Female_1_53_Cyprus = [Coefficient_b_Female_1_53_Cyprus PP(1)];
% Age 59
X_data = (Female_data_59(:,1)/100).^c; % Height (m)
Y_data = Female_data_59(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_53_Cyprus = [Coefficient_a_Female_1_53_Cyprus PP(2)];
Coefficient_b_Female_1_53_Cyprus = [Coefficient_b_Female_1_53_Cyprus PP(1)];
% Age 60
X_data = (Female_data_60(:,1)/100).^c; % Height (m)
Y_data = Female_data_60(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_53_Cyprus = [Coefficient_a_Female_1_53_Cyprus PP(2)];
Coefficient_b_Female_1_53_Cyprus = [Coefficient_b_Female_1_53_Cyprus PP(1)];
% Age 61
X_data = (Female_data_61(:,1)/100).^c; % Height (m)
Y_data = Female_data_61(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_53_Cyprus = [Coefficient_a_Female_1_53_Cyprus PP(2)];
Coefficient_b_Female_1_53_Cyprus = [Coefficient_b_Female_1_53_Cyprus PP(1)];
% Age 62
X_data = (Female_data_62(:,1)/100).^c; % Height (m)
Y_data = Female_data_62(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_53_Cyprus = [Coefficient_a_Female_1_53_Cyprus PP(2)];
Coefficient_b_Female_1_53_Cyprus = [Coefficient_b_Female_1_53_Cyprus PP(1)];
% Age 63
X_data = (Female_data_63(:,1)/100).^c; % Height (m)
Y_data = Female_data_63(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_53_Cyprus = [Coefficient_a_Female_1_53_Cyprus PP(2)];
Coefficient_b_Female_1_53_Cyprus = [Coefficient_b_Female_1_53_Cyprus PP(1)];
% Age 64
X_data = (Female_data_64(:,1)/100).^c; % Height (m)
Y_data = Female_data_64(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_53_Cyprus = [Coefficient_a_Female_1_53_Cyprus PP(2)];
Coefficient_b_Female_1_53_Cyprus = [Coefficient_b_Female_1_53_Cyprus PP(1)];
% Age 65
X_data = (Female_data_65(:,1)/100).^c; % Height (m)
Y_data = Female_data_65(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_53_Cyprus = [Coefficient_a_Female_1_53_Cyprus PP(2)];
Coefficient_b_Female_1_53_Cyprus = [Coefficient_b_Female_1_53_Cyprus PP(1)];
% Age 66
X_data = (Female_data_66(:,1)/100).^c; % Height (m)
Y_data = Female_data_66(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_53_Cyprus = [Coefficient_a_Female_1_53_Cyprus PP(2)];
Coefficient_b_Female_1_53_Cyprus = [Coefficient_b_Female_1_53_Cyprus PP(1)];
% Age 67
X_data = (Female_data_67(:,1)/100).^c; % Height (m)
Y_data = Female_data_67(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_53_Cyprus = [Coefficient_a_Female_1_53_Cyprus PP(2)];
Coefficient_b_Female_1_53_Cyprus = [Coefficient_b_Female_1_53_Cyprus PP(1)];
% Age 68
X_data = (Female_data_68(:,1)/100).^c; % Height (m)
Y_data = Female_data_68(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_53_Cyprus = [Coefficient_a_Female_1_53_Cyprus PP(2)];
Coefficient_b_Female_1_53_Cyprus = [Coefficient_b_Female_1_53_Cyprus PP(1)];
% Age 69
X_data = (Female_data_69(:,1)/100).^c; % Height (m)
Y_data = Female_data_69(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_53_Cyprus = [Coefficient_a_Female_1_53_Cyprus PP(2)];
Coefficient_b_Female_1_53_Cyprus = [Coefficient_b_Female_1_53_Cyprus PP(1)];
% Age 70
X_data = (Female_data_70(:,1)/100).^c; % Height (m)
Y_data = Female_data_70(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_53_Cyprus = [Coefficient_a_Female_1_53_Cyprus PP(2)];
Coefficient_b_Female_1_53_Cyprus = [Coefficient_b_Female_1_53_Cyprus PP(1)];
% Age 71
X_data = (Female_data_71(:,1)/100).^c; % Height (m)
Y_data = Female_data_71(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_53_Cyprus = [Coefficient_a_Female_1_53_Cyprus PP(2)];
Coefficient_b_Female_1_53_Cyprus = [Coefficient_b_Female_1_53_Cyprus PP(1)];
% Age 72
X_data = (Female_data_72(:,1)/100).^c; % Height (m)
Y_data = Female_data_72(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_53_Cyprus = [Coefficient_a_Female_1_53_Cyprus PP(2)];
Coefficient_b_Female_1_53_Cyprus = [Coefficient_b_Female_1_53_Cyprus PP(1)];
% Age 73
X_data = (Female_data_73(:,1)/100).^c; % Height (m)
Y_data = Female_data_73(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_53_Cyprus = [Coefficient_a_Female_1_53_Cyprus PP(2)];
Coefficient_b_Female_1_53_Cyprus = [Coefficient_b_Female_1_53_Cyprus PP(1)];
% Age 74
X_data = (Female_data_74(:,1)/100).^c; % Height (m)
Y_data = Female_data_74(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_53_Cyprus = [Coefficient_a_Female_1_53_Cyprus PP(2)];
Coefficient_b_Female_1_53_Cyprus = [Coefficient_b_Female_1_53_Cyprus PP(1)];
% Age 75
X_data = (Female_data_75(:,1)/100).^c; % Height (m)
Y_data = Female_data_75(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_53_Cyprus = [Coefficient_a_Female_1_53_Cyprus PP(2)];
Coefficient_b_Female_1_53_Cyprus = [Coefficient_b_Female_1_53_Cyprus PP(1)];
% Age 76
X_data = (Female_data_76(:,1)/100).^c; % Height (m)
Y_data = Female_data_76(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_53_Cyprus = [Coefficient_a_Female_1_53_Cyprus PP(2)];
Coefficient_b_Female_1_53_Cyprus = [Coefficient_b_Female_1_53_Cyprus PP(1)];
% Age 77
X_data = (Female_data_77(:,1)/100).^c; % Height (m)
Y_data = Female_data_77(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_53_Cyprus = [Coefficient_a_Female_1_53_Cyprus PP(2)];
Coefficient_b_Female_1_53_Cyprus = [Coefficient_b_Female_1_53_Cyprus PP(1)];
% Age 78
X_data = (Female_data_78(:,1)/100).^c; % Height (m)
Y_data = Female_data_78(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_53_Cyprus = [Coefficient_a_Female_1_53_Cyprus PP(2)];
Coefficient_b_Female_1_53_Cyprus = [Coefficient_b_Female_1_53_Cyprus PP(1)];
% Age 79
X_data = (Female_data_79(:,1)/100).^c; % Height (m)
Y_data = Female_data_79(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_53_Cyprus = [Coefficient_a_Female_1_53_Cyprus PP(2)];
Coefficient_b_Female_1_53_Cyprus = [Coefficient_b_Female_1_53_Cyprus PP(1)];
% Age 80
X_data = (Female_data_80(:,1)/100).^c; % Height (m)
Y_data = Female_data_80(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_53_Cyprus = [Coefficient_a_Female_1_53_Cyprus PP(2)];
Coefficient_b_Female_1_53_Cyprus = [Coefficient_b_Female_1_53_Cyprus PP(1)];
% Age 81
X_data = (Female_data_81(:,1)/100).^c; % Height (m)
Y_data = Female_data_81(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_53_Cyprus = [Coefficient_a_Female_1_53_Cyprus PP(2)];
Coefficient_b_Female_1_53_Cyprus = [Coefficient_b_Female_1_53_Cyprus PP(1)];
% Age 82
X_data = (Female_data_82(:,1)/100).^c; % Height (m)
Y_data = Female_data_82(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_53_Cyprus = [Coefficient_a_Female_1_53_Cyprus PP(2)];
Coefficient_b_Female_1_53_Cyprus = [Coefficient_b_Female_1_53_Cyprus PP(1)];
% Age 83
X_data = (Female_data_83(:,1)/100).^c; % Height (m)
Y_data = Female_data_83(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_53_Cyprus = [Coefficient_a_Female_1_53_Cyprus PP(2)];
Coefficient_b_Female_1_53_Cyprus = [Coefficient_b_Female_1_53_Cyprus PP(1)];
% Age 84
X_data = (Female_data_84(:,1)/100).^c; % Height (m)
Y_data = Female_data_84(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_53_Cyprus = [Coefficient_a_Female_1_53_Cyprus PP(2)];
Coefficient_b_Female_1_53_Cyprus = [Coefficient_b_Female_1_53_Cyprus PP(1)];
% Age 85
X_data = (Female_data_85(:,1)/100).^c; % Height (m)
Y_data = Female_data_85(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_53_Cyprus = [Coefficient_a_Female_1_53_Cyprus PP(2)];
Coefficient_b_Female_1_53_Cyprus = [Coefficient_b_Female_1_53_Cyprus PP(1)];
% Age 86
X_data = (Female_data_86(:,1)/100).^c; % Height (m)
Y_data = Female_data_86(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_53_Cyprus = [Coefficient_a_Female_1_53_Cyprus PP(2)];
Coefficient_b_Female_1_53_Cyprus = [Coefficient_b_Female_1_53_Cyprus PP(1)];
% Age 87
X_data = (Female_data_87(:,1)/100).^c; % Height (m)
Y_data = Female_data_87(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_53_Cyprus = [Coefficient_a_Female_1_53_Cyprus PP(2)];
Coefficient_b_Female_1_53_Cyprus = [Coefficient_b_Female_1_53_Cyprus PP(1)];
% Age 88
X_data = (Female_data_88(:,1)/100).^c; % Height (m)
Y_data = Female_data_88(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_53_Cyprus = [Coefficient_a_Female_1_53_Cyprus PP(2)];
Coefficient_b_Female_1_53_Cyprus = [Coefficient_b_Female_1_53_Cyprus PP(1)];
% Age 89
X_data = (Female_data_89(:,1)/100).^c; % Height (m)
Y_data = Female_data_89(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_53_Cyprus = [Coefficient_a_Female_1_53_Cyprus PP(2)];
Coefficient_b_Female_1_53_Cyprus = [Coefficient_b_Female_1_53_Cyprus PP(1)];
% Age 90
X_data = (Female_data_90(:,1)/100).^c; % Height (m)
Y_data = Female_data_90(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_53_Cyprus = [Coefficient_a_Female_1_53_Cyprus PP(2)];
Coefficient_b_Female_1_53_Cyprus = [Coefficient_b_Female_1_53_Cyprus PP(1)];

% For Male
% Age 50
X_data = (Male_data_50(:,1)/100).^c; % Height (m)
Y_data = Male_data_50(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_53_Cyprus = [Coefficient_a_Male_1_53_Cyprus PP(2)];
Coefficient_b_Male_1_53_Cyprus = [Coefficient_b_Male_1_53_Cyprus PP(1)];
% Age 51
X_data = (Male_data_51(:,1)/100).^c; % Height (m)
Y_data = Male_data_51(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_53_Cyprus = [Coefficient_a_Male_1_53_Cyprus PP(2)];
Coefficient_b_Male_1_53_Cyprus = [Coefficient_b_Male_1_53_Cyprus PP(1)];
% Age 52
X_data = (Male_data_52(:,1)/100).^c; % Height (m)
Y_data = Male_data_52(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_53_Cyprus = [Coefficient_a_Male_1_53_Cyprus PP(2)];
Coefficient_b_Male_1_53_Cyprus = [Coefficient_b_Male_1_53_Cyprus PP(1)];
% Age 53
X_data = (Male_data_53(:,1)/100).^c; % Height (m)
Y_data = Male_data_53(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_53_Cyprus = [Coefficient_a_Male_1_53_Cyprus PP(2)];
Coefficient_b_Male_1_53_Cyprus = [Coefficient_b_Male_1_53_Cyprus PP(1)];
% Age 54
X_data = (Male_data_54(:,1)/100).^c; % Height (m)
Y_data = Male_data_54(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_53_Cyprus = [Coefficient_a_Male_1_53_Cyprus PP(2)];
Coefficient_b_Male_1_53_Cyprus = [Coefficient_b_Male_1_53_Cyprus PP(1)];
% Age 55
X_data = (Male_data_55(:,1)/100).^c; % Height (m)
Y_data = Male_data_55(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_53_Cyprus = [Coefficient_a_Male_1_53_Cyprus PP(2)];
Coefficient_b_Male_1_53_Cyprus = [Coefficient_b_Male_1_53_Cyprus PP(1)];
% Age 56
X_data = (Male_data_56(:,1)/100).^c; % Height (m)
Y_data = Male_data_56(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_53_Cyprus = [Coefficient_a_Male_1_53_Cyprus PP(2)];
Coefficient_b_Male_1_53_Cyprus = [Coefficient_b_Male_1_53_Cyprus PP(1)];
% Age 57
X_data = (Male_data_57(:,1)/100).^c; % Height (m)
Y_data = Male_data_57(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_53_Cyprus = [Coefficient_a_Male_1_53_Cyprus PP(2)];
Coefficient_b_Male_1_53_Cyprus = [Coefficient_b_Male_1_53_Cyprus PP(1)];
% Age 58
X_data = (Male_data_58(:,1)/100).^c; % Height (m)
Y_data = Male_data_58(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_53_Cyprus = [Coefficient_a_Male_1_53_Cyprus PP(2)];
Coefficient_b_Male_1_53_Cyprus = [Coefficient_b_Male_1_53_Cyprus PP(1)];
% Age 59
X_data = (Male_data_59(:,1)/100).^c; % Height (m)
Y_data = Male_data_59(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_53_Cyprus = [Coefficient_a_Male_1_53_Cyprus PP(2)];
Coefficient_b_Male_1_53_Cyprus = [Coefficient_b_Male_1_53_Cyprus PP(1)];
% Age 60
X_data = (Male_data_60(:,1)/100).^c; % Height (m)
Y_data = Male_data_60(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_53_Cyprus = [Coefficient_a_Male_1_53_Cyprus PP(2)];
Coefficient_b_Male_1_53_Cyprus = [Coefficient_b_Male_1_53_Cyprus PP(1)];
% Age 61
X_data = (Male_data_61(:,1)/100).^c; % Height (m)
Y_data = Male_data_61(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_53_Cyprus = [Coefficient_a_Male_1_53_Cyprus PP(2)];
Coefficient_b_Male_1_53_Cyprus = [Coefficient_b_Male_1_53_Cyprus PP(1)];
% Age 62
X_data = (Male_data_62(:,1)/100).^c; % Height (m)
Y_data = Male_data_62(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_53_Cyprus = [Coefficient_a_Male_1_53_Cyprus PP(2)];
Coefficient_b_Male_1_53_Cyprus = [Coefficient_b_Male_1_53_Cyprus PP(1)];
% Age 63
X_data = (Male_data_63(:,1)/100).^c; % Height (m)
Y_data = Male_data_63(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_53_Cyprus = [Coefficient_a_Male_1_53_Cyprus PP(2)];
Coefficient_b_Male_1_53_Cyprus = [Coefficient_b_Male_1_53_Cyprus PP(1)];
% Age 64
X_data = (Male_data_64(:,1)/100).^c; % Height (m)
Y_data = Male_data_64(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_53_Cyprus = [Coefficient_a_Male_1_53_Cyprus PP(2)];
Coefficient_b_Male_1_53_Cyprus = [Coefficient_b_Male_1_53_Cyprus PP(1)];
% Age 65
X_data = (Male_data_65(:,1)/100).^c; % Height (m)
Y_data = Male_data_65(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_53_Cyprus = [Coefficient_a_Male_1_53_Cyprus PP(2)];
Coefficient_b_Male_1_53_Cyprus = [Coefficient_b_Male_1_53_Cyprus PP(1)];
% Age 66
X_data = (Male_data_66(:,1)/100).^c; % Height (m)
Y_data = Male_data_66(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_53_Cyprus = [Coefficient_a_Male_1_53_Cyprus PP(2)];
Coefficient_b_Male_1_53_Cyprus = [Coefficient_b_Male_1_53_Cyprus PP(1)];
% Age 67
X_data = (Male_data_67(:,1)/100).^c; % Height (m)
Y_data = Male_data_67(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_53_Cyprus = [Coefficient_a_Male_1_53_Cyprus PP(2)];
Coefficient_b_Male_1_53_Cyprus = [Coefficient_b_Male_1_53_Cyprus PP(1)];
% Age 68
X_data = (Male_data_68(:,1)/100).^c; % Height (m)
Y_data = Male_data_68(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_53_Cyprus = [Coefficient_a_Male_1_53_Cyprus PP(2)];
Coefficient_b_Male_1_53_Cyprus = [Coefficient_b_Male_1_53_Cyprus PP(1)];
% Age 69
X_data = (Male_data_69(:,1)/100).^c; % Height (m)
Y_data = Male_data_69(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_53_Cyprus = [Coefficient_a_Male_1_53_Cyprus PP(2)];
Coefficient_b_Male_1_53_Cyprus = [Coefficient_b_Male_1_53_Cyprus PP(1)];
% Age 70
X_data = (Male_data_70(:,1)/100).^c; % Height (m)
Y_data = Male_data_70(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_53_Cyprus = [Coefficient_a_Male_1_53_Cyprus PP(2)];
Coefficient_b_Male_1_53_Cyprus = [Coefficient_b_Male_1_53_Cyprus PP(1)];
% Age 71
X_data = (Male_data_71(:,1)/100).^c; % Height (m)
Y_data = Male_data_71(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_53_Cyprus = [Coefficient_a_Male_1_53_Cyprus PP(2)];
Coefficient_b_Male_1_53_Cyprus = [Coefficient_b_Male_1_53_Cyprus PP(1)];
% Age 72
X_data = (Male_data_72(:,1)/100).^c; % Height (m)
Y_data = Male_data_72(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_53_Cyprus = [Coefficient_a_Male_1_53_Cyprus PP(2)];
Coefficient_b_Male_1_53_Cyprus = [Coefficient_b_Male_1_53_Cyprus PP(1)];
% Age 73
X_data = (Male_data_73(:,1)/100).^c; % Height (m)
Y_data = Male_data_73(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_53_Cyprus = [Coefficient_a_Male_1_53_Cyprus PP(2)];
Coefficient_b_Male_1_53_Cyprus = [Coefficient_b_Male_1_53_Cyprus PP(1)];
% Age 74
X_data = (Male_data_74(:,1)/100).^c; % Height (m)
Y_data = Male_data_74(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_53_Cyprus = [Coefficient_a_Male_1_53_Cyprus PP(2)];
Coefficient_b_Male_1_53_Cyprus = [Coefficient_b_Male_1_53_Cyprus PP(1)];
% Age 75
X_data = (Male_data_75(:,1)/100).^c; % Height (m)
Y_data = Male_data_75(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_53_Cyprus = [Coefficient_a_Male_1_53_Cyprus PP(2)];
Coefficient_b_Male_1_53_Cyprus = [Coefficient_b_Male_1_53_Cyprus PP(1)];
% Age 76
X_data = (Male_data_76(:,1)/100).^c; % Height (m)
Y_data = Male_data_76(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_53_Cyprus = [Coefficient_a_Male_1_53_Cyprus PP(2)];
Coefficient_b_Male_1_53_Cyprus = [Coefficient_b_Male_1_53_Cyprus PP(1)];
% Age 77
X_data = (Male_data_77(:,1)/100).^c; % Height (m)
Y_data = Male_data_77(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_53_Cyprus = [Coefficient_a_Male_1_53_Cyprus PP(2)];
Coefficient_b_Male_1_53_Cyprus = [Coefficient_b_Male_1_53_Cyprus PP(1)];
% Age 78
X_data = (Male_data_78(:,1)/100).^c; % Height (m)
Y_data = Male_data_78(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_53_Cyprus = [Coefficient_a_Male_1_53_Cyprus PP(2)];
Coefficient_b_Male_1_53_Cyprus = [Coefficient_b_Male_1_53_Cyprus PP(1)];
% Age 79
X_data = (Male_data_79(:,1)/100).^c; % Height (m)
Y_data = Male_data_79(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_53_Cyprus = [Coefficient_a_Male_1_53_Cyprus PP(2)];
Coefficient_b_Male_1_53_Cyprus = [Coefficient_b_Male_1_53_Cyprus PP(1)];
% Age 80
X_data = (Male_data_80(:,1)/100).^c; % Height (m)
Y_data = Male_data_80(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_53_Cyprus = [Coefficient_a_Male_1_53_Cyprus PP(2)];
Coefficient_b_Male_1_53_Cyprus = [Coefficient_b_Male_1_53_Cyprus PP(1)];
% Age 81
X_data = (Male_data_81(:,1)/100).^c; % Height (m)
Y_data = Male_data_81(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_53_Cyprus = [Coefficient_a_Male_1_53_Cyprus PP(2)];
Coefficient_b_Male_1_53_Cyprus = [Coefficient_b_Male_1_53_Cyprus PP(1)];
% Age 82
X_data = (Male_data_82(:,1)/100).^c; % Height (m)
Y_data = Male_data_82(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_53_Cyprus = [Coefficient_a_Male_1_53_Cyprus PP(2)];
Coefficient_b_Male_1_53_Cyprus = [Coefficient_b_Male_1_53_Cyprus PP(1)];
% Age 83
X_data = (Male_data_83(:,1)/100).^c; % Height (m)
Y_data = Male_data_83(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_53_Cyprus = [Coefficient_a_Male_1_53_Cyprus PP(2)];
Coefficient_b_Male_1_53_Cyprus = [Coefficient_b_Male_1_53_Cyprus PP(1)];
% Age 84
X_data = (Male_data_84(:,1)/100).^c; % Height (m)
Y_data = Male_data_84(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_53_Cyprus = [Coefficient_a_Male_1_53_Cyprus PP(2)];
Coefficient_b_Male_1_53_Cyprus = [Coefficient_b_Male_1_53_Cyprus PP(1)];
% Age 85
X_data = (Male_data_85(:,1)/100).^c; % Height (m)
Y_data = Male_data_85(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_53_Cyprus = [Coefficient_a_Male_1_53_Cyprus PP(2)];
Coefficient_b_Male_1_53_Cyprus = [Coefficient_b_Male_1_53_Cyprus PP(1)];
% Age 86
X_data = (Male_data_86(:,1)/100).^c; % Height (m)
Y_data = Male_data_86(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_53_Cyprus = [Coefficient_a_Male_1_53_Cyprus PP(2)];
Coefficient_b_Male_1_53_Cyprus = [Coefficient_b_Male_1_53_Cyprus PP(1)];
% Age 87
X_data = (Male_data_87(:,1)/100).^c; % Height (m)
Y_data = Male_data_87(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_53_Cyprus = [Coefficient_a_Male_1_53_Cyprus PP(2)];
Coefficient_b_Male_1_53_Cyprus = [Coefficient_b_Male_1_53_Cyprus PP(1)];
% Age 88
X_data = (Male_data_88(:,1)/100).^c; % Height (m)
Y_data = Male_data_88(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_53_Cyprus = [Coefficient_a_Male_1_53_Cyprus PP(2)];
Coefficient_b_Male_1_53_Cyprus = [Coefficient_b_Male_1_53_Cyprus PP(1)];
% Age 89
X_data = (Male_data_89(:,1)/100).^c; % Height (m)
Y_data = Male_data_89(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_53_Cyprus = [Coefficient_a_Male_1_53_Cyprus PP(2)];
Coefficient_b_Male_1_53_Cyprus = [Coefficient_b_Male_1_53_Cyprus PP(1)];
% Age 90
X_data = (Male_data_90(:,1)/100).^c; % Height (m)
Y_data = Male_data_90(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_53_Cyprus = [Coefficient_a_Male_1_53_Cyprus PP(2)];
Coefficient_b_Male_1_53_Cyprus = [Coefficient_b_Male_1_53_Cyprus PP(1)];

%% 51_Bulgaria
% Loading the data
Female_data = xlsread('51_Bulgaria.xlsx','Female');
Male_data = xlsread('51_Bulgaria.xlsx','Male');
% Grouping by age
Female_data_51 = []; % <= 51
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
Female_data_90 = []; % >=90

Male_data_51 = []; % <= 51
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
Male_data_90 = []; % >=90

% For Female
[M N] = size(Female_data); % No.	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Female_data(i,2) <= 51
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
    if Female_data(i,2) >= 90
        Female_data_90 = [Female_data_90; Female_data(i,3) Female_data(i,4)];
    end
end

% For Male
[M N] = size(Male_data); % No.	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Male_data(i,2) <= 51
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
    if Male_data(i,2) >= 90
        Male_data_90 = [Male_data_90; Male_data(i,3) Male_data(i,4)];
    end
end

% We calculate the coefficients of a and b in 1=a/Weight+b*Height for this
% dataset
Age_51_Bulgaria = 50:90;
Coefficient_a_Female_1_51_Bulgaria = [];
Coefficient_b_Female_1_51_Bulgaria = [];
Coefficient_a_Male_1_51_Bulgaria = [];
Coefficient_b_Male_1_51_Bulgaria = [];

% For Female
% Age 50
X_data = (Female_data_50(:,1)/100).^c; % Height (m)
Y_data = Female_data_50(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_51_Bulgaria = [Coefficient_a_Female_1_51_Bulgaria PP(2)];
Coefficient_b_Female_1_51_Bulgaria = [Coefficient_b_Female_1_51_Bulgaria PP(1)];
% Age 51
X_data = (Female_data_51(:,1)/100).^c; % Height (m)
Y_data = Female_data_51(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_51_Bulgaria = [Coefficient_a_Female_1_51_Bulgaria PP(2)];
Coefficient_b_Female_1_51_Bulgaria = [Coefficient_b_Female_1_51_Bulgaria PP(1)];
% Age 52
X_data = (Female_data_52(:,1)/100).^c; % Height (m)
Y_data = Female_data_52(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_51_Bulgaria = [Coefficient_a_Female_1_51_Bulgaria PP(2)];
Coefficient_b_Female_1_51_Bulgaria = [Coefficient_b_Female_1_51_Bulgaria PP(1)];
% Age 53
X_data = (Female_data_53(:,1)/100).^c; % Height (m)
Y_data = Female_data_53(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_51_Bulgaria = [Coefficient_a_Female_1_51_Bulgaria PP(2)];
Coefficient_b_Female_1_51_Bulgaria = [Coefficient_b_Female_1_51_Bulgaria PP(1)];
% Age 54
X_data = (Female_data_54(:,1)/100).^c; % Height (m)
Y_data = Female_data_54(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_51_Bulgaria = [Coefficient_a_Female_1_51_Bulgaria PP(2)];
Coefficient_b_Female_1_51_Bulgaria = [Coefficient_b_Female_1_51_Bulgaria PP(1)];
% Age 55
X_data = (Female_data_55(:,1)/100).^c; % Height (m)
Y_data = Female_data_55(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_51_Bulgaria = [Coefficient_a_Female_1_51_Bulgaria PP(2)];
Coefficient_b_Female_1_51_Bulgaria = [Coefficient_b_Female_1_51_Bulgaria PP(1)];
% Age 56
X_data = (Female_data_56(:,1)/100).^c; % Height (m)
Y_data = Female_data_56(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_51_Bulgaria = [Coefficient_a_Female_1_51_Bulgaria PP(2)];
Coefficient_b_Female_1_51_Bulgaria = [Coefficient_b_Female_1_51_Bulgaria PP(1)];
% Age 57
X_data = (Female_data_57(:,1)/100).^c; % Height (m)
Y_data = Female_data_57(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_51_Bulgaria = [Coefficient_a_Female_1_51_Bulgaria PP(2)];
Coefficient_b_Female_1_51_Bulgaria = [Coefficient_b_Female_1_51_Bulgaria PP(1)];
% Age 58
X_data = (Female_data_58(:,1)/100).^c; % Height (m)
Y_data = Female_data_58(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_51_Bulgaria = [Coefficient_a_Female_1_51_Bulgaria PP(2)];
Coefficient_b_Female_1_51_Bulgaria = [Coefficient_b_Female_1_51_Bulgaria PP(1)];
% Age 59
X_data = (Female_data_59(:,1)/100).^c; % Height (m)
Y_data = Female_data_59(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_51_Bulgaria = [Coefficient_a_Female_1_51_Bulgaria PP(2)];
Coefficient_b_Female_1_51_Bulgaria = [Coefficient_b_Female_1_51_Bulgaria PP(1)];
% Age 60
X_data = (Female_data_60(:,1)/100).^c; % Height (m)
Y_data = Female_data_60(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_51_Bulgaria = [Coefficient_a_Female_1_51_Bulgaria PP(2)];
Coefficient_b_Female_1_51_Bulgaria = [Coefficient_b_Female_1_51_Bulgaria PP(1)];
% Age 61
X_data = (Female_data_61(:,1)/100).^c; % Height (m)
Y_data = Female_data_61(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_51_Bulgaria = [Coefficient_a_Female_1_51_Bulgaria PP(2)];
Coefficient_b_Female_1_51_Bulgaria = [Coefficient_b_Female_1_51_Bulgaria PP(1)];
% Age 62
X_data = (Female_data_62(:,1)/100).^c; % Height (m)
Y_data = Female_data_62(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_51_Bulgaria = [Coefficient_a_Female_1_51_Bulgaria PP(2)];
Coefficient_b_Female_1_51_Bulgaria = [Coefficient_b_Female_1_51_Bulgaria PP(1)];
% Age 63
X_data = (Female_data_63(:,1)/100).^c; % Height (m)
Y_data = Female_data_63(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_51_Bulgaria = [Coefficient_a_Female_1_51_Bulgaria PP(2)];
Coefficient_b_Female_1_51_Bulgaria = [Coefficient_b_Female_1_51_Bulgaria PP(1)];
% Age 64
X_data = (Female_data_64(:,1)/100).^c; % Height (m)
Y_data = Female_data_64(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_51_Bulgaria = [Coefficient_a_Female_1_51_Bulgaria PP(2)];
Coefficient_b_Female_1_51_Bulgaria = [Coefficient_b_Female_1_51_Bulgaria PP(1)];
% Age 65
X_data = (Female_data_65(:,1)/100).^c; % Height (m)
Y_data = Female_data_65(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_51_Bulgaria = [Coefficient_a_Female_1_51_Bulgaria PP(2)];
Coefficient_b_Female_1_51_Bulgaria = [Coefficient_b_Female_1_51_Bulgaria PP(1)];
% Age 66
X_data = (Female_data_66(:,1)/100).^c; % Height (m)
Y_data = Female_data_66(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_51_Bulgaria = [Coefficient_a_Female_1_51_Bulgaria PP(2)];
Coefficient_b_Female_1_51_Bulgaria = [Coefficient_b_Female_1_51_Bulgaria PP(1)];
% Age 67
X_data = (Female_data_67(:,1)/100).^c; % Height (m)
Y_data = Female_data_67(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_51_Bulgaria = [Coefficient_a_Female_1_51_Bulgaria PP(2)];
Coefficient_b_Female_1_51_Bulgaria = [Coefficient_b_Female_1_51_Bulgaria PP(1)];
% Age 68
X_data = (Female_data_68(:,1)/100).^c; % Height (m)
Y_data = Female_data_68(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_51_Bulgaria = [Coefficient_a_Female_1_51_Bulgaria PP(2)];
Coefficient_b_Female_1_51_Bulgaria = [Coefficient_b_Female_1_51_Bulgaria PP(1)];
% Age 69
X_data = (Female_data_69(:,1)/100).^c; % Height (m)
Y_data = Female_data_69(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_51_Bulgaria = [Coefficient_a_Female_1_51_Bulgaria PP(2)];
Coefficient_b_Female_1_51_Bulgaria = [Coefficient_b_Female_1_51_Bulgaria PP(1)];
% Age 70
X_data = (Female_data_70(:,1)/100).^c; % Height (m)
Y_data = Female_data_70(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_51_Bulgaria = [Coefficient_a_Female_1_51_Bulgaria PP(2)];
Coefficient_b_Female_1_51_Bulgaria = [Coefficient_b_Female_1_51_Bulgaria PP(1)];
% Age 71
X_data = (Female_data_71(:,1)/100).^c; % Height (m)
Y_data = Female_data_71(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_51_Bulgaria = [Coefficient_a_Female_1_51_Bulgaria PP(2)];
Coefficient_b_Female_1_51_Bulgaria = [Coefficient_b_Female_1_51_Bulgaria PP(1)];
% Age 72
X_data = (Female_data_72(:,1)/100).^c; % Height (m)
Y_data = Female_data_72(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_51_Bulgaria = [Coefficient_a_Female_1_51_Bulgaria PP(2)];
Coefficient_b_Female_1_51_Bulgaria = [Coefficient_b_Female_1_51_Bulgaria PP(1)];
% Age 73
X_data = (Female_data_73(:,1)/100).^c; % Height (m)
Y_data = Female_data_73(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_51_Bulgaria = [Coefficient_a_Female_1_51_Bulgaria PP(2)];
Coefficient_b_Female_1_51_Bulgaria = [Coefficient_b_Female_1_51_Bulgaria PP(1)];
% Age 74
X_data = (Female_data_74(:,1)/100).^c; % Height (m)
Y_data = Female_data_74(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_51_Bulgaria = [Coefficient_a_Female_1_51_Bulgaria PP(2)];
Coefficient_b_Female_1_51_Bulgaria = [Coefficient_b_Female_1_51_Bulgaria PP(1)];
% Age 75
X_data = (Female_data_75(:,1)/100).^c; % Height (m)
Y_data = Female_data_75(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_51_Bulgaria = [Coefficient_a_Female_1_51_Bulgaria PP(2)];
Coefficient_b_Female_1_51_Bulgaria = [Coefficient_b_Female_1_51_Bulgaria PP(1)];
% Age 76
X_data = (Female_data_76(:,1)/100).^c; % Height (m)
Y_data = Female_data_76(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_51_Bulgaria = [Coefficient_a_Female_1_51_Bulgaria PP(2)];
Coefficient_b_Female_1_51_Bulgaria = [Coefficient_b_Female_1_51_Bulgaria PP(1)];
% Age 77
X_data = (Female_data_77(:,1)/100).^c; % Height (m)
Y_data = Female_data_77(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_51_Bulgaria = [Coefficient_a_Female_1_51_Bulgaria PP(2)];
Coefficient_b_Female_1_51_Bulgaria = [Coefficient_b_Female_1_51_Bulgaria PP(1)];
% Age 78
X_data = (Female_data_78(:,1)/100).^c; % Height (m)
Y_data = Female_data_78(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_51_Bulgaria = [Coefficient_a_Female_1_51_Bulgaria PP(2)];
Coefficient_b_Female_1_51_Bulgaria = [Coefficient_b_Female_1_51_Bulgaria PP(1)];
% Age 79
X_data = (Female_data_79(:,1)/100).^c; % Height (m)
Y_data = Female_data_79(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_51_Bulgaria = [Coefficient_a_Female_1_51_Bulgaria PP(2)];
Coefficient_b_Female_1_51_Bulgaria = [Coefficient_b_Female_1_51_Bulgaria PP(1)];
% Age 80
X_data = (Female_data_80(:,1)/100).^c; % Height (m)
Y_data = Female_data_80(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_51_Bulgaria = [Coefficient_a_Female_1_51_Bulgaria PP(2)];
Coefficient_b_Female_1_51_Bulgaria = [Coefficient_b_Female_1_51_Bulgaria PP(1)];
% Age 81
X_data = (Female_data_81(:,1)/100).^c; % Height (m)
Y_data = Female_data_81(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_51_Bulgaria = [Coefficient_a_Female_1_51_Bulgaria PP(2)];
Coefficient_b_Female_1_51_Bulgaria = [Coefficient_b_Female_1_51_Bulgaria PP(1)];
% Age 82
X_data = (Female_data_82(:,1)/100).^c; % Height (m)
Y_data = Female_data_82(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_51_Bulgaria = [Coefficient_a_Female_1_51_Bulgaria PP(2)];
Coefficient_b_Female_1_51_Bulgaria = [Coefficient_b_Female_1_51_Bulgaria PP(1)];
% Age 83
X_data = (Female_data_83(:,1)/100).^c; % Height (m)
Y_data = Female_data_83(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_51_Bulgaria = [Coefficient_a_Female_1_51_Bulgaria PP(2)];
Coefficient_b_Female_1_51_Bulgaria = [Coefficient_b_Female_1_51_Bulgaria PP(1)];
% Age 84
X_data = (Female_data_84(:,1)/100).^c; % Height (m)
Y_data = Female_data_84(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_51_Bulgaria = [Coefficient_a_Female_1_51_Bulgaria PP(2)];
Coefficient_b_Female_1_51_Bulgaria = [Coefficient_b_Female_1_51_Bulgaria PP(1)];
% Age 85
X_data = (Female_data_85(:,1)/100).^c; % Height (m)
Y_data = Female_data_85(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_51_Bulgaria = [Coefficient_a_Female_1_51_Bulgaria PP(2)];
Coefficient_b_Female_1_51_Bulgaria = [Coefficient_b_Female_1_51_Bulgaria PP(1)];
% Age 86
X_data = (Female_data_86(:,1)/100).^c; % Height (m)
Y_data = Female_data_86(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_51_Bulgaria = [Coefficient_a_Female_1_51_Bulgaria PP(2)];
Coefficient_b_Female_1_51_Bulgaria = [Coefficient_b_Female_1_51_Bulgaria PP(1)];
% Age 87
X_data = (Female_data_87(:,1)/100).^c; % Height (m)
Y_data = Female_data_87(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_51_Bulgaria = [Coefficient_a_Female_1_51_Bulgaria PP(2)];
Coefficient_b_Female_1_51_Bulgaria = [Coefficient_b_Female_1_51_Bulgaria PP(1)];
% Age 88
X_data = (Female_data_88(:,1)/100).^c; % Height (m)
Y_data = Female_data_88(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_51_Bulgaria = [Coefficient_a_Female_1_51_Bulgaria PP(2)];
Coefficient_b_Female_1_51_Bulgaria = [Coefficient_b_Female_1_51_Bulgaria PP(1)];
% Age 89
X_data = (Female_data_89(:,1)/100).^c; % Height (m)
Y_data = Female_data_89(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_51_Bulgaria = [Coefficient_a_Female_1_51_Bulgaria PP(2)];
Coefficient_b_Female_1_51_Bulgaria = [Coefficient_b_Female_1_51_Bulgaria PP(1)];
% Age 90
X_data = (Female_data_90(:,1)/100).^c; % Height (m)
Y_data = Female_data_90(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_51_Bulgaria = [Coefficient_a_Female_1_51_Bulgaria PP(2)];
Coefficient_b_Female_1_51_Bulgaria = [Coefficient_b_Female_1_51_Bulgaria PP(1)];

% For Male
% Age 50
X_data = (Male_data_50(:,1)/100).^c; % Height (m)
Y_data = Male_data_50(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_51_Bulgaria = [Coefficient_a_Male_1_51_Bulgaria PP(2)];
Coefficient_b_Male_1_51_Bulgaria = [Coefficient_b_Male_1_51_Bulgaria PP(1)];
% Age 51
X_data = (Male_data_51(:,1)/100).^c; % Height (m)
Y_data = Male_data_51(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_51_Bulgaria = [Coefficient_a_Male_1_51_Bulgaria PP(2)];
Coefficient_b_Male_1_51_Bulgaria = [Coefficient_b_Male_1_51_Bulgaria PP(1)];
% Age 52
X_data = (Male_data_52(:,1)/100).^c; % Height (m)
Y_data = Male_data_52(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_51_Bulgaria = [Coefficient_a_Male_1_51_Bulgaria PP(2)];
Coefficient_b_Male_1_51_Bulgaria = [Coefficient_b_Male_1_51_Bulgaria PP(1)];
% Age 53
X_data = (Male_data_53(:,1)/100).^c; % Height (m)
Y_data = Male_data_53(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_51_Bulgaria = [Coefficient_a_Male_1_51_Bulgaria PP(2)];
Coefficient_b_Male_1_51_Bulgaria = [Coefficient_b_Male_1_51_Bulgaria PP(1)];
% Age 54
X_data = (Male_data_54(:,1)/100).^c; % Height (m)
Y_data = Male_data_54(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_51_Bulgaria = [Coefficient_a_Male_1_51_Bulgaria PP(2)];
Coefficient_b_Male_1_51_Bulgaria = [Coefficient_b_Male_1_51_Bulgaria PP(1)];
% Age 55
X_data = (Male_data_55(:,1)/100).^c; % Height (m)
Y_data = Male_data_55(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_51_Bulgaria = [Coefficient_a_Male_1_51_Bulgaria PP(2)];
Coefficient_b_Male_1_51_Bulgaria = [Coefficient_b_Male_1_51_Bulgaria PP(1)];
% Age 56
X_data = (Male_data_56(:,1)/100).^c; % Height (m)
Y_data = Male_data_56(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_51_Bulgaria = [Coefficient_a_Male_1_51_Bulgaria PP(2)];
Coefficient_b_Male_1_51_Bulgaria = [Coefficient_b_Male_1_51_Bulgaria PP(1)];
% Age 57
X_data = (Male_data_57(:,1)/100).^c; % Height (m)
Y_data = Male_data_57(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_51_Bulgaria = [Coefficient_a_Male_1_51_Bulgaria PP(2)];
Coefficient_b_Male_1_51_Bulgaria = [Coefficient_b_Male_1_51_Bulgaria PP(1)];
% Age 58
X_data = (Male_data_58(:,1)/100).^c; % Height (m)
Y_data = Male_data_58(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_51_Bulgaria = [Coefficient_a_Male_1_51_Bulgaria PP(2)];
Coefficient_b_Male_1_51_Bulgaria = [Coefficient_b_Male_1_51_Bulgaria PP(1)];
% Age 59
X_data = (Male_data_59(:,1)/100).^c; % Height (m)
Y_data = Male_data_59(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_51_Bulgaria = [Coefficient_a_Male_1_51_Bulgaria PP(2)];
Coefficient_b_Male_1_51_Bulgaria = [Coefficient_b_Male_1_51_Bulgaria PP(1)];
% Age 60
X_data = (Male_data_60(:,1)/100).^c; % Height (m)
Y_data = Male_data_60(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_51_Bulgaria = [Coefficient_a_Male_1_51_Bulgaria PP(2)];
Coefficient_b_Male_1_51_Bulgaria = [Coefficient_b_Male_1_51_Bulgaria PP(1)];
% Age 61
X_data = (Male_data_61(:,1)/100).^c; % Height (m)
Y_data = Male_data_61(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_51_Bulgaria = [Coefficient_a_Male_1_51_Bulgaria PP(2)];
Coefficient_b_Male_1_51_Bulgaria = [Coefficient_b_Male_1_51_Bulgaria PP(1)];
% Age 62
X_data = (Male_data_62(:,1)/100).^c; % Height (m)
Y_data = Male_data_62(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_51_Bulgaria = [Coefficient_a_Male_1_51_Bulgaria PP(2)];
Coefficient_b_Male_1_51_Bulgaria = [Coefficient_b_Male_1_51_Bulgaria PP(1)];
% Age 63
X_data = (Male_data_63(:,1)/100).^c; % Height (m)
Y_data = Male_data_63(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_51_Bulgaria = [Coefficient_a_Male_1_51_Bulgaria PP(2)];
Coefficient_b_Male_1_51_Bulgaria = [Coefficient_b_Male_1_51_Bulgaria PP(1)];
% Age 64
X_data = (Male_data_64(:,1)/100).^c; % Height (m)
Y_data = Male_data_64(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_51_Bulgaria = [Coefficient_a_Male_1_51_Bulgaria PP(2)];
Coefficient_b_Male_1_51_Bulgaria = [Coefficient_b_Male_1_51_Bulgaria PP(1)];
% Age 65
X_data = (Male_data_65(:,1)/100).^c; % Height (m)
Y_data = Male_data_65(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_51_Bulgaria = [Coefficient_a_Male_1_51_Bulgaria PP(2)];
Coefficient_b_Male_1_51_Bulgaria = [Coefficient_b_Male_1_51_Bulgaria PP(1)];
% Age 66
X_data = (Male_data_66(:,1)/100).^c; % Height (m)
Y_data = Male_data_66(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_51_Bulgaria = [Coefficient_a_Male_1_51_Bulgaria PP(2)];
Coefficient_b_Male_1_51_Bulgaria = [Coefficient_b_Male_1_51_Bulgaria PP(1)];
% Age 67
X_data = (Male_data_67(:,1)/100).^c; % Height (m)
Y_data = Male_data_67(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_51_Bulgaria = [Coefficient_a_Male_1_51_Bulgaria PP(2)];
Coefficient_b_Male_1_51_Bulgaria = [Coefficient_b_Male_1_51_Bulgaria PP(1)];
% Age 68
X_data = (Male_data_68(:,1)/100).^c; % Height (m)
Y_data = Male_data_68(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_51_Bulgaria = [Coefficient_a_Male_1_51_Bulgaria PP(2)];
Coefficient_b_Male_1_51_Bulgaria = [Coefficient_b_Male_1_51_Bulgaria PP(1)];
% Age 69
X_data = (Male_data_69(:,1)/100).^c; % Height (m)
Y_data = Male_data_69(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_51_Bulgaria = [Coefficient_a_Male_1_51_Bulgaria PP(2)];
Coefficient_b_Male_1_51_Bulgaria = [Coefficient_b_Male_1_51_Bulgaria PP(1)];
% Age 70
X_data = (Male_data_70(:,1)/100).^c; % Height (m)
Y_data = Male_data_70(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_51_Bulgaria = [Coefficient_a_Male_1_51_Bulgaria PP(2)];
Coefficient_b_Male_1_51_Bulgaria = [Coefficient_b_Male_1_51_Bulgaria PP(1)];
% Age 71
X_data = (Male_data_71(:,1)/100).^c; % Height (m)
Y_data = Male_data_71(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_51_Bulgaria = [Coefficient_a_Male_1_51_Bulgaria PP(2)];
Coefficient_b_Male_1_51_Bulgaria = [Coefficient_b_Male_1_51_Bulgaria PP(1)];
% Age 72
X_data = (Male_data_72(:,1)/100).^c; % Height (m)
Y_data = Male_data_72(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_51_Bulgaria = [Coefficient_a_Male_1_51_Bulgaria PP(2)];
Coefficient_b_Male_1_51_Bulgaria = [Coefficient_b_Male_1_51_Bulgaria PP(1)];
% Age 73
X_data = (Male_data_73(:,1)/100).^c; % Height (m)
Y_data = Male_data_73(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_51_Bulgaria = [Coefficient_a_Male_1_51_Bulgaria PP(2)];
Coefficient_b_Male_1_51_Bulgaria = [Coefficient_b_Male_1_51_Bulgaria PP(1)];
% Age 74
X_data = (Male_data_74(:,1)/100).^c; % Height (m)
Y_data = Male_data_74(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_51_Bulgaria = [Coefficient_a_Male_1_51_Bulgaria PP(2)];
Coefficient_b_Male_1_51_Bulgaria = [Coefficient_b_Male_1_51_Bulgaria PP(1)];
% Age 75
X_data = (Male_data_75(:,1)/100).^c; % Height (m)
Y_data = Male_data_75(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_51_Bulgaria = [Coefficient_a_Male_1_51_Bulgaria PP(2)];
Coefficient_b_Male_1_51_Bulgaria = [Coefficient_b_Male_1_51_Bulgaria PP(1)];
% Age 76
X_data = (Male_data_76(:,1)/100).^c; % Height (m)
Y_data = Male_data_76(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_51_Bulgaria = [Coefficient_a_Male_1_51_Bulgaria PP(2)];
Coefficient_b_Male_1_51_Bulgaria = [Coefficient_b_Male_1_51_Bulgaria PP(1)];
% Age 77
X_data = (Male_data_77(:,1)/100).^c; % Height (m)
Y_data = Male_data_77(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_51_Bulgaria = [Coefficient_a_Male_1_51_Bulgaria PP(2)];
Coefficient_b_Male_1_51_Bulgaria = [Coefficient_b_Male_1_51_Bulgaria PP(1)];
% Age 78
X_data = (Male_data_78(:,1)/100).^c; % Height (m)
Y_data = Male_data_78(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_51_Bulgaria = [Coefficient_a_Male_1_51_Bulgaria PP(2)];
Coefficient_b_Male_1_51_Bulgaria = [Coefficient_b_Male_1_51_Bulgaria PP(1)];
% Age 79
X_data = (Male_data_79(:,1)/100).^c; % Height (m)
Y_data = Male_data_79(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_51_Bulgaria = [Coefficient_a_Male_1_51_Bulgaria PP(2)];
Coefficient_b_Male_1_51_Bulgaria = [Coefficient_b_Male_1_51_Bulgaria PP(1)];
% Age 80
X_data = (Male_data_80(:,1)/100).^c; % Height (m)
Y_data = Male_data_80(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_51_Bulgaria = [Coefficient_a_Male_1_51_Bulgaria PP(2)];
Coefficient_b_Male_1_51_Bulgaria = [Coefficient_b_Male_1_51_Bulgaria PP(1)];
% Age 81
X_data = (Male_data_81(:,1)/100).^c; % Height (m)
Y_data = Male_data_81(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_51_Bulgaria = [Coefficient_a_Male_1_51_Bulgaria PP(2)];
Coefficient_b_Male_1_51_Bulgaria = [Coefficient_b_Male_1_51_Bulgaria PP(1)];
% Age 82
X_data = (Male_data_82(:,1)/100).^c; % Height (m)
Y_data = Male_data_82(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_51_Bulgaria = [Coefficient_a_Male_1_51_Bulgaria PP(2)];
Coefficient_b_Male_1_51_Bulgaria = [Coefficient_b_Male_1_51_Bulgaria PP(1)];
% Age 83
X_data = (Male_data_83(:,1)/100).^c; % Height (m)
Y_data = Male_data_83(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_51_Bulgaria = [Coefficient_a_Male_1_51_Bulgaria PP(2)];
Coefficient_b_Male_1_51_Bulgaria = [Coefficient_b_Male_1_51_Bulgaria PP(1)];
% Age 84
X_data = (Male_data_84(:,1)/100).^c; % Height (m)
Y_data = Male_data_84(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_51_Bulgaria = [Coefficient_a_Male_1_51_Bulgaria PP(2)];
Coefficient_b_Male_1_51_Bulgaria = [Coefficient_b_Male_1_51_Bulgaria PP(1)];
% Age 85
X_data = (Male_data_85(:,1)/100).^c; % Height (m)
Y_data = Male_data_85(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_51_Bulgaria = [Coefficient_a_Male_1_51_Bulgaria PP(2)];
Coefficient_b_Male_1_51_Bulgaria = [Coefficient_b_Male_1_51_Bulgaria PP(1)];
% Age 86
X_data = (Male_data_86(:,1)/100).^c; % Height (m)
Y_data = Male_data_86(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_51_Bulgaria = [Coefficient_a_Male_1_51_Bulgaria PP(2)];
Coefficient_b_Male_1_51_Bulgaria = [Coefficient_b_Male_1_51_Bulgaria PP(1)];
% Age 87
X_data = (Male_data_87(:,1)/100).^c; % Height (m)
Y_data = Male_data_87(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_51_Bulgaria = [Coefficient_a_Male_1_51_Bulgaria PP(2)];
Coefficient_b_Male_1_51_Bulgaria = [Coefficient_b_Male_1_51_Bulgaria PP(1)];
% Age 88
X_data = (Male_data_88(:,1)/100).^c; % Height (m)
Y_data = Male_data_88(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_51_Bulgaria = [Coefficient_a_Male_1_51_Bulgaria PP(2)];
Coefficient_b_Male_1_51_Bulgaria = [Coefficient_b_Male_1_51_Bulgaria PP(1)];
% Age 89
X_data = (Male_data_89(:,1)/100).^c; % Height (m)
Y_data = Male_data_89(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_51_Bulgaria = [Coefficient_a_Male_1_51_Bulgaria PP(2)];
Coefficient_b_Male_1_51_Bulgaria = [Coefficient_b_Male_1_51_Bulgaria PP(1)];
% Age 90
X_data = (Male_data_90(:,1)/100).^c; % Height (m)
Y_data = Male_data_90(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_51_Bulgaria = [Coefficient_a_Male_1_51_Bulgaria PP(2)];
Coefficient_b_Male_1_51_Bulgaria = [Coefficient_b_Male_1_51_Bulgaria PP(1)];

%% 47_Croatia
% Loading the data
Female_data = xlsread('47_Croatia.xlsx','Female');
Male_data = xlsread('47_Croatia.xlsx','Male');
% Grouping by age
Female_data_50 = []; % <= 50
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
Female_data_90 = []; % >=90

Male_data_50 = []; % <= 50
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
Male_data_90 = []; % >=90

% For Female
[M N] = size(Female_data); % No.	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Female_data(i,2) <= 50
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
    if Female_data(i,2) >= 90
        Female_data_90 = [Female_data_90; Female_data(i,3) Female_data(i,4)];
    end
end

% For Male
[M N] = size(Male_data); % No.	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Male_data(i,2) <= 50
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
    if Male_data(i,2) >= 90
        Male_data_90 = [Male_data_90; Male_data(i,3) Male_data(i,4)];
    end
end

% We calculate the coefficients of a and b in 1=a/Weight+b*Height for this
% dataset
Age_47_Croatia = 50:90;
Coefficient_a_Female_1_47_Croatia = [];
Coefficient_b_Female_1_47_Croatia = [];
Coefficient_a_Male_1_47_Croatia = [];
Coefficient_b_Male_1_47_Croatia = [];

% For Female
% Age 50
X_data = (Female_data_50(:,1)/100).^c; % Height (m)
Y_data = Female_data_50(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_47_Croatia = [Coefficient_a_Female_1_47_Croatia PP(2)];
Coefficient_b_Female_1_47_Croatia = [Coefficient_b_Female_1_47_Croatia PP(1)];
% Age 51
X_data = (Female_data_51(:,1)/100).^c; % Height (m)
Y_data = Female_data_51(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_47_Croatia = [Coefficient_a_Female_1_47_Croatia PP(2)];
Coefficient_b_Female_1_47_Croatia = [Coefficient_b_Female_1_47_Croatia PP(1)];
% Age 52
X_data = (Female_data_52(:,1)/100).^c; % Height (m)
Y_data = Female_data_52(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_47_Croatia = [Coefficient_a_Female_1_47_Croatia PP(2)];
Coefficient_b_Female_1_47_Croatia = [Coefficient_b_Female_1_47_Croatia PP(1)];
% Age 53
X_data = (Female_data_53(:,1)/100).^c; % Height (m)
Y_data = Female_data_53(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_47_Croatia = [Coefficient_a_Female_1_47_Croatia PP(2)];
Coefficient_b_Female_1_47_Croatia = [Coefficient_b_Female_1_47_Croatia PP(1)];
% Age 54
X_data = (Female_data_54(:,1)/100).^c; % Height (m)
Y_data = Female_data_54(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_47_Croatia = [Coefficient_a_Female_1_47_Croatia PP(2)];
Coefficient_b_Female_1_47_Croatia = [Coefficient_b_Female_1_47_Croatia PP(1)];
% Age 55
X_data = (Female_data_55(:,1)/100).^c; % Height (m)
Y_data = Female_data_55(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_47_Croatia = [Coefficient_a_Female_1_47_Croatia PP(2)];
Coefficient_b_Female_1_47_Croatia = [Coefficient_b_Female_1_47_Croatia PP(1)];
% Age 56
X_data = (Female_data_56(:,1)/100).^c; % Height (m)
Y_data = Female_data_56(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_47_Croatia = [Coefficient_a_Female_1_47_Croatia PP(2)];
Coefficient_b_Female_1_47_Croatia = [Coefficient_b_Female_1_47_Croatia PP(1)];
% Age 57
X_data = (Female_data_57(:,1)/100).^c; % Height (m)
Y_data = Female_data_57(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_47_Croatia = [Coefficient_a_Female_1_47_Croatia PP(2)];
Coefficient_b_Female_1_47_Croatia = [Coefficient_b_Female_1_47_Croatia PP(1)];
% Age 58
X_data = (Female_data_58(:,1)/100).^c; % Height (m)
Y_data = Female_data_58(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_47_Croatia = [Coefficient_a_Female_1_47_Croatia PP(2)];
Coefficient_b_Female_1_47_Croatia = [Coefficient_b_Female_1_47_Croatia PP(1)];
% Age 59
X_data = (Female_data_59(:,1)/100).^c; % Height (m)
Y_data = Female_data_59(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_47_Croatia = [Coefficient_a_Female_1_47_Croatia PP(2)];
Coefficient_b_Female_1_47_Croatia = [Coefficient_b_Female_1_47_Croatia PP(1)];
% Age 60
X_data = (Female_data_60(:,1)/100).^c; % Height (m)
Y_data = Female_data_60(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_47_Croatia = [Coefficient_a_Female_1_47_Croatia PP(2)];
Coefficient_b_Female_1_47_Croatia = [Coefficient_b_Female_1_47_Croatia PP(1)];
% Age 61
X_data = (Female_data_61(:,1)/100).^c; % Height (m)
Y_data = Female_data_61(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_47_Croatia = [Coefficient_a_Female_1_47_Croatia PP(2)];
Coefficient_b_Female_1_47_Croatia = [Coefficient_b_Female_1_47_Croatia PP(1)];
% Age 62
X_data = (Female_data_62(:,1)/100).^c; % Height (m)
Y_data = Female_data_62(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_47_Croatia = [Coefficient_a_Female_1_47_Croatia PP(2)];
Coefficient_b_Female_1_47_Croatia = [Coefficient_b_Female_1_47_Croatia PP(1)];
% Age 63
X_data = (Female_data_63(:,1)/100).^c; % Height (m)
Y_data = Female_data_63(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_47_Croatia = [Coefficient_a_Female_1_47_Croatia PP(2)];
Coefficient_b_Female_1_47_Croatia = [Coefficient_b_Female_1_47_Croatia PP(1)];
% Age 64
X_data = (Female_data_64(:,1)/100).^c; % Height (m)
Y_data = Female_data_64(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_47_Croatia = [Coefficient_a_Female_1_47_Croatia PP(2)];
Coefficient_b_Female_1_47_Croatia = [Coefficient_b_Female_1_47_Croatia PP(1)];
% Age 65
X_data = (Female_data_65(:,1)/100).^c; % Height (m)
Y_data = Female_data_65(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_47_Croatia = [Coefficient_a_Female_1_47_Croatia PP(2)];
Coefficient_b_Female_1_47_Croatia = [Coefficient_b_Female_1_47_Croatia PP(1)];
% Age 66
X_data = (Female_data_66(:,1)/100).^c; % Height (m)
Y_data = Female_data_66(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_47_Croatia = [Coefficient_a_Female_1_47_Croatia PP(2)];
Coefficient_b_Female_1_47_Croatia = [Coefficient_b_Female_1_47_Croatia PP(1)];
% Age 67
X_data = (Female_data_67(:,1)/100).^c; % Height (m)
Y_data = Female_data_67(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_47_Croatia = [Coefficient_a_Female_1_47_Croatia PP(2)];
Coefficient_b_Female_1_47_Croatia = [Coefficient_b_Female_1_47_Croatia PP(1)];
% Age 68
X_data = (Female_data_68(:,1)/100).^c; % Height (m)
Y_data = Female_data_68(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_47_Croatia = [Coefficient_a_Female_1_47_Croatia PP(2)];
Coefficient_b_Female_1_47_Croatia = [Coefficient_b_Female_1_47_Croatia PP(1)];
% Age 69
X_data = (Female_data_69(:,1)/100).^c; % Height (m)
Y_data = Female_data_69(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_47_Croatia = [Coefficient_a_Female_1_47_Croatia PP(2)];
Coefficient_b_Female_1_47_Croatia = [Coefficient_b_Female_1_47_Croatia PP(1)];
% Age 70
X_data = (Female_data_70(:,1)/100).^c; % Height (m)
Y_data = Female_data_70(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_47_Croatia = [Coefficient_a_Female_1_47_Croatia PP(2)];
Coefficient_b_Female_1_47_Croatia = [Coefficient_b_Female_1_47_Croatia PP(1)];
% Age 71
X_data = (Female_data_71(:,1)/100).^c; % Height (m)
Y_data = Female_data_71(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_47_Croatia = [Coefficient_a_Female_1_47_Croatia PP(2)];
Coefficient_b_Female_1_47_Croatia = [Coefficient_b_Female_1_47_Croatia PP(1)];
% Age 72
X_data = (Female_data_72(:,1)/100).^c; % Height (m)
Y_data = Female_data_72(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_47_Croatia = [Coefficient_a_Female_1_47_Croatia PP(2)];
Coefficient_b_Female_1_47_Croatia = [Coefficient_b_Female_1_47_Croatia PP(1)];
% Age 73
X_data = (Female_data_73(:,1)/100).^c; % Height (m)
Y_data = Female_data_73(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_47_Croatia = [Coefficient_a_Female_1_47_Croatia PP(2)];
Coefficient_b_Female_1_47_Croatia = [Coefficient_b_Female_1_47_Croatia PP(1)];
% Age 74
X_data = (Female_data_74(:,1)/100).^c; % Height (m)
Y_data = Female_data_74(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_47_Croatia = [Coefficient_a_Female_1_47_Croatia PP(2)];
Coefficient_b_Female_1_47_Croatia = [Coefficient_b_Female_1_47_Croatia PP(1)];
% Age 75
X_data = (Female_data_75(:,1)/100).^c; % Height (m)
Y_data = Female_data_75(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_47_Croatia = [Coefficient_a_Female_1_47_Croatia PP(2)];
Coefficient_b_Female_1_47_Croatia = [Coefficient_b_Female_1_47_Croatia PP(1)];
% Age 76
X_data = (Female_data_76(:,1)/100).^c; % Height (m)
Y_data = Female_data_76(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_47_Croatia = [Coefficient_a_Female_1_47_Croatia PP(2)];
Coefficient_b_Female_1_47_Croatia = [Coefficient_b_Female_1_47_Croatia PP(1)];
% Age 77
X_data = (Female_data_77(:,1)/100).^c; % Height (m)
Y_data = Female_data_77(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_47_Croatia = [Coefficient_a_Female_1_47_Croatia PP(2)];
Coefficient_b_Female_1_47_Croatia = [Coefficient_b_Female_1_47_Croatia PP(1)];
% Age 78
X_data = (Female_data_78(:,1)/100).^c; % Height (m)
Y_data = Female_data_78(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_47_Croatia = [Coefficient_a_Female_1_47_Croatia PP(2)];
Coefficient_b_Female_1_47_Croatia = [Coefficient_b_Female_1_47_Croatia PP(1)];
% Age 79
X_data = (Female_data_79(:,1)/100).^c; % Height (m)
Y_data = Female_data_79(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_47_Croatia = [Coefficient_a_Female_1_47_Croatia PP(2)];
Coefficient_b_Female_1_47_Croatia = [Coefficient_b_Female_1_47_Croatia PP(1)];
% Age 80
X_data = (Female_data_80(:,1)/100).^c; % Height (m)
Y_data = Female_data_80(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_47_Croatia = [Coefficient_a_Female_1_47_Croatia PP(2)];
Coefficient_b_Female_1_47_Croatia = [Coefficient_b_Female_1_47_Croatia PP(1)];
% Age 81
X_data = (Female_data_81(:,1)/100).^c; % Height (m)
Y_data = Female_data_81(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_47_Croatia = [Coefficient_a_Female_1_47_Croatia PP(2)];
Coefficient_b_Female_1_47_Croatia = [Coefficient_b_Female_1_47_Croatia PP(1)];
% Age 82
X_data = (Female_data_82(:,1)/100).^c; % Height (m)
Y_data = Female_data_82(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_47_Croatia = [Coefficient_a_Female_1_47_Croatia PP(2)];
Coefficient_b_Female_1_47_Croatia = [Coefficient_b_Female_1_47_Croatia PP(1)];
% Age 83
X_data = (Female_data_83(:,1)/100).^c; % Height (m)
Y_data = Female_data_83(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_47_Croatia = [Coefficient_a_Female_1_47_Croatia PP(2)];
Coefficient_b_Female_1_47_Croatia = [Coefficient_b_Female_1_47_Croatia PP(1)];
% Age 84
X_data = (Female_data_84(:,1)/100).^c; % Height (m)
Y_data = Female_data_84(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_47_Croatia = [Coefficient_a_Female_1_47_Croatia PP(2)];
Coefficient_b_Female_1_47_Croatia = [Coefficient_b_Female_1_47_Croatia PP(1)];
% Age 85
X_data = (Female_data_85(:,1)/100).^c; % Height (m)
Y_data = Female_data_85(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_47_Croatia = [Coefficient_a_Female_1_47_Croatia PP(2)];
Coefficient_b_Female_1_47_Croatia = [Coefficient_b_Female_1_47_Croatia PP(1)];
% Age 86
X_data = (Female_data_86(:,1)/100).^c; % Height (m)
Y_data = Female_data_86(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_47_Croatia = [Coefficient_a_Female_1_47_Croatia PP(2)];
Coefficient_b_Female_1_47_Croatia = [Coefficient_b_Female_1_47_Croatia PP(1)];
% Age 87
X_data = (Female_data_87(:,1)/100).^c; % Height (m)
Y_data = Female_data_87(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_47_Croatia = [Coefficient_a_Female_1_47_Croatia PP(2)];
Coefficient_b_Female_1_47_Croatia = [Coefficient_b_Female_1_47_Croatia PP(1)];
% Age 88
X_data = (Female_data_88(:,1)/100).^c; % Height (m)
Y_data = Female_data_88(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_47_Croatia = [Coefficient_a_Female_1_47_Croatia PP(2)];
Coefficient_b_Female_1_47_Croatia = [Coefficient_b_Female_1_47_Croatia PP(1)];
% Age 89
X_data = (Female_data_89(:,1)/100).^c; % Height (m)
Y_data = Female_data_89(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_47_Croatia = [Coefficient_a_Female_1_47_Croatia PP(2)];
Coefficient_b_Female_1_47_Croatia = [Coefficient_b_Female_1_47_Croatia PP(1)];
% Age 90
X_data = (Female_data_90(:,1)/100).^c; % Height (m)
Y_data = Female_data_90(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_47_Croatia = [Coefficient_a_Female_1_47_Croatia PP(2)];
Coefficient_b_Female_1_47_Croatia = [Coefficient_b_Female_1_47_Croatia PP(1)];

% For Male
% Age 50
X_data = (Male_data_50(:,1)/100).^c; % Height (m)
Y_data = Male_data_50(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_47_Croatia = [Coefficient_a_Male_1_47_Croatia PP(2)];
Coefficient_b_Male_1_47_Croatia = [Coefficient_b_Male_1_47_Croatia PP(1)];
% Age 51
X_data = (Male_data_51(:,1)/100).^c; % Height (m)
Y_data = Male_data_51(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_47_Croatia = [Coefficient_a_Male_1_47_Croatia PP(2)];
Coefficient_b_Male_1_47_Croatia = [Coefficient_b_Male_1_47_Croatia PP(1)];
% Age 52
X_data = (Male_data_52(:,1)/100).^c; % Height (m)
Y_data = Male_data_52(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_47_Croatia = [Coefficient_a_Male_1_47_Croatia PP(2)];
Coefficient_b_Male_1_47_Croatia = [Coefficient_b_Male_1_47_Croatia PP(1)];
% Age 53
X_data = (Male_data_53(:,1)/100).^c; % Height (m)
Y_data = Male_data_53(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_47_Croatia = [Coefficient_a_Male_1_47_Croatia PP(2)];
Coefficient_b_Male_1_47_Croatia = [Coefficient_b_Male_1_47_Croatia PP(1)];
% Age 54
X_data = (Male_data_54(:,1)/100).^c; % Height (m)
Y_data = Male_data_54(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_47_Croatia = [Coefficient_a_Male_1_47_Croatia PP(2)];
Coefficient_b_Male_1_47_Croatia = [Coefficient_b_Male_1_47_Croatia PP(1)];
% Age 55
X_data = (Male_data_55(:,1)/100).^c; % Height (m)
Y_data = Male_data_55(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_47_Croatia = [Coefficient_a_Male_1_47_Croatia PP(2)];
Coefficient_b_Male_1_47_Croatia = [Coefficient_b_Male_1_47_Croatia PP(1)];
% Age 56
X_data = (Male_data_56(:,1)/100).^c; % Height (m)
Y_data = Male_data_56(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_47_Croatia = [Coefficient_a_Male_1_47_Croatia PP(2)];
Coefficient_b_Male_1_47_Croatia = [Coefficient_b_Male_1_47_Croatia PP(1)];
% Age 57
X_data = (Male_data_57(:,1)/100).^c; % Height (m)
Y_data = Male_data_57(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_47_Croatia = [Coefficient_a_Male_1_47_Croatia PP(2)];
Coefficient_b_Male_1_47_Croatia = [Coefficient_b_Male_1_47_Croatia PP(1)];
% Age 58
X_data = (Male_data_58(:,1)/100).^c; % Height (m)
Y_data = Male_data_58(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_47_Croatia = [Coefficient_a_Male_1_47_Croatia PP(2)];
Coefficient_b_Male_1_47_Croatia = [Coefficient_b_Male_1_47_Croatia PP(1)];
% Age 59
X_data = (Male_data_59(:,1)/100).^c; % Height (m)
Y_data = Male_data_59(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_47_Croatia = [Coefficient_a_Male_1_47_Croatia PP(2)];
Coefficient_b_Male_1_47_Croatia = [Coefficient_b_Male_1_47_Croatia PP(1)];
% Age 60
X_data = (Male_data_60(:,1)/100).^c; % Height (m)
Y_data = Male_data_60(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_47_Croatia = [Coefficient_a_Male_1_47_Croatia PP(2)];
Coefficient_b_Male_1_47_Croatia = [Coefficient_b_Male_1_47_Croatia PP(1)];
% Age 61
X_data = (Male_data_61(:,1)/100).^c; % Height (m)
Y_data = Male_data_61(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_47_Croatia = [Coefficient_a_Male_1_47_Croatia PP(2)];
Coefficient_b_Male_1_47_Croatia = [Coefficient_b_Male_1_47_Croatia PP(1)];
% Age 62
X_data = (Male_data_62(:,1)/100).^c; % Height (m)
Y_data = Male_data_62(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_47_Croatia = [Coefficient_a_Male_1_47_Croatia PP(2)];
Coefficient_b_Male_1_47_Croatia = [Coefficient_b_Male_1_47_Croatia PP(1)];
% Age 63
X_data = (Male_data_63(:,1)/100).^c; % Height (m)
Y_data = Male_data_63(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_47_Croatia = [Coefficient_a_Male_1_47_Croatia PP(2)];
Coefficient_b_Male_1_47_Croatia = [Coefficient_b_Male_1_47_Croatia PP(1)];
% Age 64
X_data = (Male_data_64(:,1)/100).^c; % Height (m)
Y_data = Male_data_64(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_47_Croatia = [Coefficient_a_Male_1_47_Croatia PP(2)];
Coefficient_b_Male_1_47_Croatia = [Coefficient_b_Male_1_47_Croatia PP(1)];
% Age 65
X_data = (Male_data_65(:,1)/100).^c; % Height (m)
Y_data = Male_data_65(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_47_Croatia = [Coefficient_a_Male_1_47_Croatia PP(2)];
Coefficient_b_Male_1_47_Croatia = [Coefficient_b_Male_1_47_Croatia PP(1)];
% Age 66
X_data = (Male_data_66(:,1)/100).^c; % Height (m)
Y_data = Male_data_66(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_47_Croatia = [Coefficient_a_Male_1_47_Croatia PP(2)];
Coefficient_b_Male_1_47_Croatia = [Coefficient_b_Male_1_47_Croatia PP(1)];
% Age 67
X_data = (Male_data_67(:,1)/100).^c; % Height (m)
Y_data = Male_data_67(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_47_Croatia = [Coefficient_a_Male_1_47_Croatia PP(2)];
Coefficient_b_Male_1_47_Croatia = [Coefficient_b_Male_1_47_Croatia PP(1)];
% Age 68
X_data = (Male_data_68(:,1)/100).^c; % Height (m)
Y_data = Male_data_68(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_47_Croatia = [Coefficient_a_Male_1_47_Croatia PP(2)];
Coefficient_b_Male_1_47_Croatia = [Coefficient_b_Male_1_47_Croatia PP(1)];
% Age 69
X_data = (Male_data_69(:,1)/100).^c; % Height (m)
Y_data = Male_data_69(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_47_Croatia = [Coefficient_a_Male_1_47_Croatia PP(2)];
Coefficient_b_Male_1_47_Croatia = [Coefficient_b_Male_1_47_Croatia PP(1)];
% Age 70
X_data = (Male_data_70(:,1)/100).^c; % Height (m)
Y_data = Male_data_70(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_47_Croatia = [Coefficient_a_Male_1_47_Croatia PP(2)];
Coefficient_b_Male_1_47_Croatia = [Coefficient_b_Male_1_47_Croatia PP(1)];
% Age 71
X_data = (Male_data_71(:,1)/100).^c; % Height (m)
Y_data = Male_data_71(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_47_Croatia = [Coefficient_a_Male_1_47_Croatia PP(2)];
Coefficient_b_Male_1_47_Croatia = [Coefficient_b_Male_1_47_Croatia PP(1)];
% Age 72
X_data = (Male_data_72(:,1)/100).^c; % Height (m)
Y_data = Male_data_72(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_47_Croatia = [Coefficient_a_Male_1_47_Croatia PP(2)];
Coefficient_b_Male_1_47_Croatia = [Coefficient_b_Male_1_47_Croatia PP(1)];
% Age 73
X_data = (Male_data_73(:,1)/100).^c; % Height (m)
Y_data = Male_data_73(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_47_Croatia = [Coefficient_a_Male_1_47_Croatia PP(2)];
Coefficient_b_Male_1_47_Croatia = [Coefficient_b_Male_1_47_Croatia PP(1)];
% Age 74
X_data = (Male_data_74(:,1)/100).^c; % Height (m)
Y_data = Male_data_74(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_47_Croatia = [Coefficient_a_Male_1_47_Croatia PP(2)];
Coefficient_b_Male_1_47_Croatia = [Coefficient_b_Male_1_47_Croatia PP(1)];
% Age 75
X_data = (Male_data_75(:,1)/100).^c; % Height (m)
Y_data = Male_data_75(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_47_Croatia = [Coefficient_a_Male_1_47_Croatia PP(2)];
Coefficient_b_Male_1_47_Croatia = [Coefficient_b_Male_1_47_Croatia PP(1)];
% Age 76
X_data = (Male_data_76(:,1)/100).^c; % Height (m)
Y_data = Male_data_76(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_47_Croatia = [Coefficient_a_Male_1_47_Croatia PP(2)];
Coefficient_b_Male_1_47_Croatia = [Coefficient_b_Male_1_47_Croatia PP(1)];
% Age 77
X_data = (Male_data_77(:,1)/100).^c; % Height (m)
Y_data = Male_data_77(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_47_Croatia = [Coefficient_a_Male_1_47_Croatia PP(2)];
Coefficient_b_Male_1_47_Croatia = [Coefficient_b_Male_1_47_Croatia PP(1)];
% Age 78
X_data = (Male_data_78(:,1)/100).^c; % Height (m)
Y_data = Male_data_78(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_47_Croatia = [Coefficient_a_Male_1_47_Croatia PP(2)];
Coefficient_b_Male_1_47_Croatia = [Coefficient_b_Male_1_47_Croatia PP(1)];
% Age 79
X_data = (Male_data_79(:,1)/100).^c; % Height (m)
Y_data = Male_data_79(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_47_Croatia = [Coefficient_a_Male_1_47_Croatia PP(2)];
Coefficient_b_Male_1_47_Croatia = [Coefficient_b_Male_1_47_Croatia PP(1)];
% Age 80
X_data = (Male_data_80(:,1)/100).^c; % Height (m)
Y_data = Male_data_80(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_47_Croatia = [Coefficient_a_Male_1_47_Croatia PP(2)];
Coefficient_b_Male_1_47_Croatia = [Coefficient_b_Male_1_47_Croatia PP(1)];
% Age 81
X_data = (Male_data_81(:,1)/100).^c; % Height (m)
Y_data = Male_data_81(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_47_Croatia = [Coefficient_a_Male_1_47_Croatia PP(2)];
Coefficient_b_Male_1_47_Croatia = [Coefficient_b_Male_1_47_Croatia PP(1)];
% Age 82
X_data = (Male_data_82(:,1)/100).^c; % Height (m)
Y_data = Male_data_82(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_47_Croatia = [Coefficient_a_Male_1_47_Croatia PP(2)];
Coefficient_b_Male_1_47_Croatia = [Coefficient_b_Male_1_47_Croatia PP(1)];
% Age 83
X_data = (Male_data_83(:,1)/100).^c; % Height (m)
Y_data = Male_data_83(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_47_Croatia = [Coefficient_a_Male_1_47_Croatia PP(2)];
Coefficient_b_Male_1_47_Croatia = [Coefficient_b_Male_1_47_Croatia PP(1)];
% Age 84
X_data = (Male_data_84(:,1)/100).^c; % Height (m)
Y_data = Male_data_84(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_47_Croatia = [Coefficient_a_Male_1_47_Croatia PP(2)];
Coefficient_b_Male_1_47_Croatia = [Coefficient_b_Male_1_47_Croatia PP(1)];
% Age 85
X_data = (Male_data_85(:,1)/100).^c; % Height (m)
Y_data = Male_data_85(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_47_Croatia = [Coefficient_a_Male_1_47_Croatia PP(2)];
Coefficient_b_Male_1_47_Croatia = [Coefficient_b_Male_1_47_Croatia PP(1)];
% Age 86
X_data = (Male_data_86(:,1)/100).^c; % Height (m)
Y_data = Male_data_86(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_47_Croatia = [Coefficient_a_Male_1_47_Croatia PP(2)];
Coefficient_b_Male_1_47_Croatia = [Coefficient_b_Male_1_47_Croatia PP(1)];
% Age 87
X_data = (Male_data_87(:,1)/100).^c; % Height (m)
Y_data = Male_data_87(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_47_Croatia = [Coefficient_a_Male_1_47_Croatia PP(2)];
Coefficient_b_Male_1_47_Croatia = [Coefficient_b_Male_1_47_Croatia PP(1)];
% Age 88
X_data = (Male_data_88(:,1)/100).^c; % Height (m)
Y_data = Male_data_88(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_47_Croatia = [Coefficient_a_Male_1_47_Croatia PP(2)];
Coefficient_b_Male_1_47_Croatia = [Coefficient_b_Male_1_47_Croatia PP(1)];
% Age 89
X_data = (Male_data_89(:,1)/100).^c; % Height (m)
Y_data = Male_data_89(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_47_Croatia = [Coefficient_a_Male_1_47_Croatia PP(2)];
Coefficient_b_Male_1_47_Croatia = [Coefficient_b_Male_1_47_Croatia PP(1)];
% Age 90
X_data = (Male_data_90(:,1)/100).^c; % Height (m)
Y_data = Male_data_90(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_47_Croatia = [Coefficient_a_Male_1_47_Croatia PP(2)];
Coefficient_b_Male_1_47_Croatia = [Coefficient_b_Male_1_47_Croatia PP(1)];

%% 34_Slovenia
% Loading the data
Female_data = xlsread('34_Slovenia.xlsx','Female');
Male_data = xlsread('34_Slovenia.xlsx','Male');
% Grouping by age
Female_data_50 = []; % <= 50
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
Female_data_90 = []; % >=90

Male_data_50 = []; % <= 50
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
Male_data_90 = []; % >=90

% For Female
[M N] = size(Female_data); % No.	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Female_data(i,2) <= 50
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
    if Female_data(i,2) >= 90
        Female_data_90 = [Female_data_90; Female_data(i,3) Female_data(i,4)];
    end
end

% For Male
[M N] = size(Male_data); % No.	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Male_data(i,2) <= 50
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
    if Male_data(i,2) >= 90
        Male_data_90 = [Male_data_90; Male_data(i,3) Male_data(i,4)];
    end
end

% We calculate the coefficients of a and b in 1=a/Weight+b*Height for this
% dataset
Age_34_Slovenia = 50:90;
Coefficient_a_Female_1_34_Slovenia = [];
Coefficient_b_Female_1_34_Slovenia = [];
Coefficient_a_Male_1_34_Slovenia = [];
Coefficient_b_Male_1_34_Slovenia = [];

% For Female
% Age 50
X_data = (Female_data_50(:,1)/100).^c; % Height (m)
Y_data = Female_data_50(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_34_Slovenia = [Coefficient_a_Female_1_34_Slovenia PP(2)];
Coefficient_b_Female_1_34_Slovenia = [Coefficient_b_Female_1_34_Slovenia PP(1)];
% Age 51
X_data = (Female_data_51(:,1)/100).^c; % Height (m)
Y_data = Female_data_51(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_34_Slovenia = [Coefficient_a_Female_1_34_Slovenia PP(2)];
Coefficient_b_Female_1_34_Slovenia = [Coefficient_b_Female_1_34_Slovenia PP(1)];
% Age 52
X_data = (Female_data_52(:,1)/100).^c; % Height (m)
Y_data = Female_data_52(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_34_Slovenia = [Coefficient_a_Female_1_34_Slovenia PP(2)];
Coefficient_b_Female_1_34_Slovenia = [Coefficient_b_Female_1_34_Slovenia PP(1)];
% Age 53
X_data = (Female_data_53(:,1)/100).^c; % Height (m)
Y_data = Female_data_53(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_34_Slovenia = [Coefficient_a_Female_1_34_Slovenia PP(2)];
Coefficient_b_Female_1_34_Slovenia = [Coefficient_b_Female_1_34_Slovenia PP(1)];
% Age 54
X_data = (Female_data_54(:,1)/100).^c; % Height (m)
Y_data = Female_data_54(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_34_Slovenia = [Coefficient_a_Female_1_34_Slovenia PP(2)];
Coefficient_b_Female_1_34_Slovenia = [Coefficient_b_Female_1_34_Slovenia PP(1)];
% Age 55
X_data = (Female_data_55(:,1)/100).^c; % Height (m)
Y_data = Female_data_55(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_34_Slovenia = [Coefficient_a_Female_1_34_Slovenia PP(2)];
Coefficient_b_Female_1_34_Slovenia = [Coefficient_b_Female_1_34_Slovenia PP(1)];
% Age 56
X_data = (Female_data_56(:,1)/100).^c; % Height (m)
Y_data = Female_data_56(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_34_Slovenia = [Coefficient_a_Female_1_34_Slovenia PP(2)];
Coefficient_b_Female_1_34_Slovenia = [Coefficient_b_Female_1_34_Slovenia PP(1)];
% Age 57
X_data = (Female_data_57(:,1)/100).^c; % Height (m)
Y_data = Female_data_57(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_34_Slovenia = [Coefficient_a_Female_1_34_Slovenia PP(2)];
Coefficient_b_Female_1_34_Slovenia = [Coefficient_b_Female_1_34_Slovenia PP(1)];
% Age 58
X_data = (Female_data_58(:,1)/100).^c; % Height (m)
Y_data = Female_data_58(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_34_Slovenia = [Coefficient_a_Female_1_34_Slovenia PP(2)];
Coefficient_b_Female_1_34_Slovenia = [Coefficient_b_Female_1_34_Slovenia PP(1)];
% Age 59
X_data = (Female_data_59(:,1)/100).^c; % Height (m)
Y_data = Female_data_59(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_34_Slovenia = [Coefficient_a_Female_1_34_Slovenia PP(2)];
Coefficient_b_Female_1_34_Slovenia = [Coefficient_b_Female_1_34_Slovenia PP(1)];
% Age 60
X_data = (Female_data_60(:,1)/100).^c; % Height (m)
Y_data = Female_data_60(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_34_Slovenia = [Coefficient_a_Female_1_34_Slovenia PP(2)];
Coefficient_b_Female_1_34_Slovenia = [Coefficient_b_Female_1_34_Slovenia PP(1)];
% Age 61
X_data = (Female_data_61(:,1)/100).^c; % Height (m)
Y_data = Female_data_61(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_34_Slovenia = [Coefficient_a_Female_1_34_Slovenia PP(2)];
Coefficient_b_Female_1_34_Slovenia = [Coefficient_b_Female_1_34_Slovenia PP(1)];
% Age 62
X_data = (Female_data_62(:,1)/100).^c; % Height (m)
Y_data = Female_data_62(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_34_Slovenia = [Coefficient_a_Female_1_34_Slovenia PP(2)];
Coefficient_b_Female_1_34_Slovenia = [Coefficient_b_Female_1_34_Slovenia PP(1)];
% Age 63
X_data = (Female_data_63(:,1)/100).^c; % Height (m)
Y_data = Female_data_63(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_34_Slovenia = [Coefficient_a_Female_1_34_Slovenia PP(2)];
Coefficient_b_Female_1_34_Slovenia = [Coefficient_b_Female_1_34_Slovenia PP(1)];
% Age 64
X_data = (Female_data_64(:,1)/100).^c; % Height (m)
Y_data = Female_data_64(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_34_Slovenia = [Coefficient_a_Female_1_34_Slovenia PP(2)];
Coefficient_b_Female_1_34_Slovenia = [Coefficient_b_Female_1_34_Slovenia PP(1)];
% Age 65
X_data = (Female_data_65(:,1)/100).^c; % Height (m)
Y_data = Female_data_65(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_34_Slovenia = [Coefficient_a_Female_1_34_Slovenia PP(2)];
Coefficient_b_Female_1_34_Slovenia = [Coefficient_b_Female_1_34_Slovenia PP(1)];
% Age 66
X_data = (Female_data_66(:,1)/100).^c; % Height (m)
Y_data = Female_data_66(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_34_Slovenia = [Coefficient_a_Female_1_34_Slovenia PP(2)];
Coefficient_b_Female_1_34_Slovenia = [Coefficient_b_Female_1_34_Slovenia PP(1)];
% Age 67
X_data = (Female_data_67(:,1)/100).^c; % Height (m)
Y_data = Female_data_67(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_34_Slovenia = [Coefficient_a_Female_1_34_Slovenia PP(2)];
Coefficient_b_Female_1_34_Slovenia = [Coefficient_b_Female_1_34_Slovenia PP(1)];
% Age 68
X_data = (Female_data_68(:,1)/100).^c; % Height (m)
Y_data = Female_data_68(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_34_Slovenia = [Coefficient_a_Female_1_34_Slovenia PP(2)];
Coefficient_b_Female_1_34_Slovenia = [Coefficient_b_Female_1_34_Slovenia PP(1)];
% Age 69
X_data = (Female_data_69(:,1)/100).^c; % Height (m)
Y_data = Female_data_69(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_34_Slovenia = [Coefficient_a_Female_1_34_Slovenia PP(2)];
Coefficient_b_Female_1_34_Slovenia = [Coefficient_b_Female_1_34_Slovenia PP(1)];
% Age 70
X_data = (Female_data_70(:,1)/100).^c; % Height (m)
Y_data = Female_data_70(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_34_Slovenia = [Coefficient_a_Female_1_34_Slovenia PP(2)];
Coefficient_b_Female_1_34_Slovenia = [Coefficient_b_Female_1_34_Slovenia PP(1)];
% Age 71
X_data = (Female_data_71(:,1)/100).^c; % Height (m)
Y_data = Female_data_71(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_34_Slovenia = [Coefficient_a_Female_1_34_Slovenia PP(2)];
Coefficient_b_Female_1_34_Slovenia = [Coefficient_b_Female_1_34_Slovenia PP(1)];
% Age 72
X_data = (Female_data_72(:,1)/100).^c; % Height (m)
Y_data = Female_data_72(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_34_Slovenia = [Coefficient_a_Female_1_34_Slovenia PP(2)];
Coefficient_b_Female_1_34_Slovenia = [Coefficient_b_Female_1_34_Slovenia PP(1)];
% Age 73
X_data = (Female_data_73(:,1)/100).^c; % Height (m)
Y_data = Female_data_73(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_34_Slovenia = [Coefficient_a_Female_1_34_Slovenia PP(2)];
Coefficient_b_Female_1_34_Slovenia = [Coefficient_b_Female_1_34_Slovenia PP(1)];
% Age 74
X_data = (Female_data_74(:,1)/100).^c; % Height (m)
Y_data = Female_data_74(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_34_Slovenia = [Coefficient_a_Female_1_34_Slovenia PP(2)];
Coefficient_b_Female_1_34_Slovenia = [Coefficient_b_Female_1_34_Slovenia PP(1)];
% Age 75
X_data = (Female_data_75(:,1)/100).^c; % Height (m)
Y_data = Female_data_75(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_34_Slovenia = [Coefficient_a_Female_1_34_Slovenia PP(2)];
Coefficient_b_Female_1_34_Slovenia = [Coefficient_b_Female_1_34_Slovenia PP(1)];
% Age 76
X_data = (Female_data_76(:,1)/100).^c; % Height (m)
Y_data = Female_data_76(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_34_Slovenia = [Coefficient_a_Female_1_34_Slovenia PP(2)];
Coefficient_b_Female_1_34_Slovenia = [Coefficient_b_Female_1_34_Slovenia PP(1)];
% Age 77
X_data = (Female_data_77(:,1)/100).^c; % Height (m)
Y_data = Female_data_77(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_34_Slovenia = [Coefficient_a_Female_1_34_Slovenia PP(2)];
Coefficient_b_Female_1_34_Slovenia = [Coefficient_b_Female_1_34_Slovenia PP(1)];
% Age 78
X_data = (Female_data_78(:,1)/100).^c; % Height (m)
Y_data = Female_data_78(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_34_Slovenia = [Coefficient_a_Female_1_34_Slovenia PP(2)];
Coefficient_b_Female_1_34_Slovenia = [Coefficient_b_Female_1_34_Slovenia PP(1)];
% Age 79
X_data = (Female_data_79(:,1)/100).^c; % Height (m)
Y_data = Female_data_79(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_34_Slovenia = [Coefficient_a_Female_1_34_Slovenia PP(2)];
Coefficient_b_Female_1_34_Slovenia = [Coefficient_b_Female_1_34_Slovenia PP(1)];
% Age 80
X_data = (Female_data_80(:,1)/100).^c; % Height (m)
Y_data = Female_data_80(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_34_Slovenia = [Coefficient_a_Female_1_34_Slovenia PP(2)];
Coefficient_b_Female_1_34_Slovenia = [Coefficient_b_Female_1_34_Slovenia PP(1)];
% Age 81
X_data = (Female_data_81(:,1)/100).^c; % Height (m)
Y_data = Female_data_81(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_34_Slovenia = [Coefficient_a_Female_1_34_Slovenia PP(2)];
Coefficient_b_Female_1_34_Slovenia = [Coefficient_b_Female_1_34_Slovenia PP(1)];
% Age 82
X_data = (Female_data_82(:,1)/100).^c; % Height (m)
Y_data = Female_data_82(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_34_Slovenia = [Coefficient_a_Female_1_34_Slovenia PP(2)];
Coefficient_b_Female_1_34_Slovenia = [Coefficient_b_Female_1_34_Slovenia PP(1)];
% Age 83
X_data = (Female_data_83(:,1)/100).^c; % Height (m)
Y_data = Female_data_83(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_34_Slovenia = [Coefficient_a_Female_1_34_Slovenia PP(2)];
Coefficient_b_Female_1_34_Slovenia = [Coefficient_b_Female_1_34_Slovenia PP(1)];
% Age 84
X_data = (Female_data_84(:,1)/100).^c; % Height (m)
Y_data = Female_data_84(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_34_Slovenia = [Coefficient_a_Female_1_34_Slovenia PP(2)];
Coefficient_b_Female_1_34_Slovenia = [Coefficient_b_Female_1_34_Slovenia PP(1)];
% Age 85
X_data = (Female_data_85(:,1)/100).^c; % Height (m)
Y_data = Female_data_85(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_34_Slovenia = [Coefficient_a_Female_1_34_Slovenia PP(2)];
Coefficient_b_Female_1_34_Slovenia = [Coefficient_b_Female_1_34_Slovenia PP(1)];
% Age 86
X_data = (Female_data_86(:,1)/100).^c; % Height (m)
Y_data = Female_data_86(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_34_Slovenia = [Coefficient_a_Female_1_34_Slovenia PP(2)];
Coefficient_b_Female_1_34_Slovenia = [Coefficient_b_Female_1_34_Slovenia PP(1)];
% Age 87
X_data = (Female_data_87(:,1)/100).^c; % Height (m)
Y_data = Female_data_87(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_34_Slovenia = [Coefficient_a_Female_1_34_Slovenia PP(2)];
Coefficient_b_Female_1_34_Slovenia = [Coefficient_b_Female_1_34_Slovenia PP(1)];
% Age 88
X_data = (Female_data_88(:,1)/100).^c; % Height (m)
Y_data = Female_data_88(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_34_Slovenia = [Coefficient_a_Female_1_34_Slovenia PP(2)];
Coefficient_b_Female_1_34_Slovenia = [Coefficient_b_Female_1_34_Slovenia PP(1)];
% Age 89
X_data = (Female_data_89(:,1)/100).^c; % Height (m)
Y_data = Female_data_89(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_34_Slovenia = [Coefficient_a_Female_1_34_Slovenia PP(2)];
Coefficient_b_Female_1_34_Slovenia = [Coefficient_b_Female_1_34_Slovenia PP(1)];
% Age 90
X_data = (Female_data_90(:,1)/100).^c; % Height (m)
Y_data = Female_data_90(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_34_Slovenia = [Coefficient_a_Female_1_34_Slovenia PP(2)];
Coefficient_b_Female_1_34_Slovenia = [Coefficient_b_Female_1_34_Slovenia PP(1)];

% For Male
% Age 50
X_data = (Male_data_50(:,1)/100).^c; % Height (m)
Y_data = Male_data_50(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_34_Slovenia = [Coefficient_a_Male_1_34_Slovenia PP(2)];
Coefficient_b_Male_1_34_Slovenia = [Coefficient_b_Male_1_34_Slovenia PP(1)];
% Age 51
X_data = (Male_data_51(:,1)/100).^c; % Height (m)
Y_data = Male_data_51(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_34_Slovenia = [Coefficient_a_Male_1_34_Slovenia PP(2)];
Coefficient_b_Male_1_34_Slovenia = [Coefficient_b_Male_1_34_Slovenia PP(1)];
% Age 52
X_data = (Male_data_52(:,1)/100).^c; % Height (m)
Y_data = Male_data_52(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_34_Slovenia = [Coefficient_a_Male_1_34_Slovenia PP(2)];
Coefficient_b_Male_1_34_Slovenia = [Coefficient_b_Male_1_34_Slovenia PP(1)];
% Age 53
X_data = (Male_data_53(:,1)/100).^c; % Height (m)
Y_data = Male_data_53(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_34_Slovenia = [Coefficient_a_Male_1_34_Slovenia PP(2)];
Coefficient_b_Male_1_34_Slovenia = [Coefficient_b_Male_1_34_Slovenia PP(1)];
% Age 54
X_data = (Male_data_54(:,1)/100).^c; % Height (m)
Y_data = Male_data_54(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_34_Slovenia = [Coefficient_a_Male_1_34_Slovenia PP(2)];
Coefficient_b_Male_1_34_Slovenia = [Coefficient_b_Male_1_34_Slovenia PP(1)];
% Age 55
X_data = (Male_data_55(:,1)/100).^c; % Height (m)
Y_data = Male_data_55(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_34_Slovenia = [Coefficient_a_Male_1_34_Slovenia PP(2)];
Coefficient_b_Male_1_34_Slovenia = [Coefficient_b_Male_1_34_Slovenia PP(1)];
% Age 56
X_data = (Male_data_56(:,1)/100).^c; % Height (m)
Y_data = Male_data_56(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_34_Slovenia = [Coefficient_a_Male_1_34_Slovenia PP(2)];
Coefficient_b_Male_1_34_Slovenia = [Coefficient_b_Male_1_34_Slovenia PP(1)];
% Age 57
X_data = (Male_data_57(:,1)/100).^c; % Height (m)
Y_data = Male_data_57(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_34_Slovenia = [Coefficient_a_Male_1_34_Slovenia PP(2)];
Coefficient_b_Male_1_34_Slovenia = [Coefficient_b_Male_1_34_Slovenia PP(1)];
% Age 58
X_data = (Male_data_58(:,1)/100).^c; % Height (m)
Y_data = Male_data_58(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_34_Slovenia = [Coefficient_a_Male_1_34_Slovenia PP(2)];
Coefficient_b_Male_1_34_Slovenia = [Coefficient_b_Male_1_34_Slovenia PP(1)];
% Age 59
X_data = (Male_data_59(:,1)/100).^c; % Height (m)
Y_data = Male_data_59(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_34_Slovenia = [Coefficient_a_Male_1_34_Slovenia PP(2)];
Coefficient_b_Male_1_34_Slovenia = [Coefficient_b_Male_1_34_Slovenia PP(1)];
% Age 60
X_data = (Male_data_60(:,1)/100).^c; % Height (m)
Y_data = Male_data_60(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_34_Slovenia = [Coefficient_a_Male_1_34_Slovenia PP(2)];
Coefficient_b_Male_1_34_Slovenia = [Coefficient_b_Male_1_34_Slovenia PP(1)];
% Age 61
X_data = (Male_data_61(:,1)/100).^c; % Height (m)
Y_data = Male_data_61(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_34_Slovenia = [Coefficient_a_Male_1_34_Slovenia PP(2)];
Coefficient_b_Male_1_34_Slovenia = [Coefficient_b_Male_1_34_Slovenia PP(1)];
% Age 62
X_data = (Male_data_62(:,1)/100).^c; % Height (m)
Y_data = Male_data_62(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_34_Slovenia = [Coefficient_a_Male_1_34_Slovenia PP(2)];
Coefficient_b_Male_1_34_Slovenia = [Coefficient_b_Male_1_34_Slovenia PP(1)];
% Age 63
X_data = (Male_data_63(:,1)/100).^c; % Height (m)
Y_data = Male_data_63(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_34_Slovenia = [Coefficient_a_Male_1_34_Slovenia PP(2)];
Coefficient_b_Male_1_34_Slovenia = [Coefficient_b_Male_1_34_Slovenia PP(1)];
% Age 64
X_data = (Male_data_64(:,1)/100).^c; % Height (m)
Y_data = Male_data_64(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_34_Slovenia = [Coefficient_a_Male_1_34_Slovenia PP(2)];
Coefficient_b_Male_1_34_Slovenia = [Coefficient_b_Male_1_34_Slovenia PP(1)];
% Age 65
X_data = (Male_data_65(:,1)/100).^c; % Height (m)
Y_data = Male_data_65(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_34_Slovenia = [Coefficient_a_Male_1_34_Slovenia PP(2)];
Coefficient_b_Male_1_34_Slovenia = [Coefficient_b_Male_1_34_Slovenia PP(1)];
% Age 66
X_data = (Male_data_66(:,1)/100).^c; % Height (m)
Y_data = Male_data_66(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_34_Slovenia = [Coefficient_a_Male_1_34_Slovenia PP(2)];
Coefficient_b_Male_1_34_Slovenia = [Coefficient_b_Male_1_34_Slovenia PP(1)];
% Age 67
X_data = (Male_data_67(:,1)/100).^c; % Height (m)
Y_data = Male_data_67(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_34_Slovenia = [Coefficient_a_Male_1_34_Slovenia PP(2)];
Coefficient_b_Male_1_34_Slovenia = [Coefficient_b_Male_1_34_Slovenia PP(1)];
% Age 68
X_data = (Male_data_68(:,1)/100).^c; % Height (m)
Y_data = Male_data_68(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_34_Slovenia = [Coefficient_a_Male_1_34_Slovenia PP(2)];
Coefficient_b_Male_1_34_Slovenia = [Coefficient_b_Male_1_34_Slovenia PP(1)];
% Age 69
X_data = (Male_data_69(:,1)/100).^c; % Height (m)
Y_data = Male_data_69(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_34_Slovenia = [Coefficient_a_Male_1_34_Slovenia PP(2)];
Coefficient_b_Male_1_34_Slovenia = [Coefficient_b_Male_1_34_Slovenia PP(1)];
% Age 70
X_data = (Male_data_70(:,1)/100).^c; % Height (m)
Y_data = Male_data_70(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_34_Slovenia = [Coefficient_a_Male_1_34_Slovenia PP(2)];
Coefficient_b_Male_1_34_Slovenia = [Coefficient_b_Male_1_34_Slovenia PP(1)];
% Age 71
X_data = (Male_data_71(:,1)/100).^c; % Height (m)
Y_data = Male_data_71(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_34_Slovenia = [Coefficient_a_Male_1_34_Slovenia PP(2)];
Coefficient_b_Male_1_34_Slovenia = [Coefficient_b_Male_1_34_Slovenia PP(1)];
% Age 72
X_data = (Male_data_72(:,1)/100).^c; % Height (m)
Y_data = Male_data_72(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_34_Slovenia = [Coefficient_a_Male_1_34_Slovenia PP(2)];
Coefficient_b_Male_1_34_Slovenia = [Coefficient_b_Male_1_34_Slovenia PP(1)];
% Age 73
X_data = (Male_data_73(:,1)/100).^c; % Height (m)
Y_data = Male_data_73(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_34_Slovenia = [Coefficient_a_Male_1_34_Slovenia PP(2)];
Coefficient_b_Male_1_34_Slovenia = [Coefficient_b_Male_1_34_Slovenia PP(1)];
% Age 74
X_data = (Male_data_74(:,1)/100).^c; % Height (m)
Y_data = Male_data_74(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_34_Slovenia = [Coefficient_a_Male_1_34_Slovenia PP(2)];
Coefficient_b_Male_1_34_Slovenia = [Coefficient_b_Male_1_34_Slovenia PP(1)];
% Age 75
X_data = (Male_data_75(:,1)/100).^c; % Height (m)
Y_data = Male_data_75(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_34_Slovenia = [Coefficient_a_Male_1_34_Slovenia PP(2)];
Coefficient_b_Male_1_34_Slovenia = [Coefficient_b_Male_1_34_Slovenia PP(1)];
% Age 76
X_data = (Male_data_76(:,1)/100).^c; % Height (m)
Y_data = Male_data_76(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_34_Slovenia = [Coefficient_a_Male_1_34_Slovenia PP(2)];
Coefficient_b_Male_1_34_Slovenia = [Coefficient_b_Male_1_34_Slovenia PP(1)];
% Age 77
X_data = (Male_data_77(:,1)/100).^c; % Height (m)
Y_data = Male_data_77(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_34_Slovenia = [Coefficient_a_Male_1_34_Slovenia PP(2)];
Coefficient_b_Male_1_34_Slovenia = [Coefficient_b_Male_1_34_Slovenia PP(1)];
% Age 78
X_data = (Male_data_78(:,1)/100).^c; % Height (m)
Y_data = Male_data_78(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_34_Slovenia = [Coefficient_a_Male_1_34_Slovenia PP(2)];
Coefficient_b_Male_1_34_Slovenia = [Coefficient_b_Male_1_34_Slovenia PP(1)];
% Age 79
X_data = (Male_data_79(:,1)/100).^c; % Height (m)
Y_data = Male_data_79(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_34_Slovenia = [Coefficient_a_Male_1_34_Slovenia PP(2)];
Coefficient_b_Male_1_34_Slovenia = [Coefficient_b_Male_1_34_Slovenia PP(1)];
% Age 80
X_data = (Male_data_80(:,1)/100).^c; % Height (m)
Y_data = Male_data_80(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_34_Slovenia = [Coefficient_a_Male_1_34_Slovenia PP(2)];
Coefficient_b_Male_1_34_Slovenia = [Coefficient_b_Male_1_34_Slovenia PP(1)];
% Age 81
X_data = (Male_data_81(:,1)/100).^c; % Height (m)
Y_data = Male_data_81(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_34_Slovenia = [Coefficient_a_Male_1_34_Slovenia PP(2)];
Coefficient_b_Male_1_34_Slovenia = [Coefficient_b_Male_1_34_Slovenia PP(1)];
% Age 82
X_data = (Male_data_82(:,1)/100).^c; % Height (m)
Y_data = Male_data_82(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_34_Slovenia = [Coefficient_a_Male_1_34_Slovenia PP(2)];
Coefficient_b_Male_1_34_Slovenia = [Coefficient_b_Male_1_34_Slovenia PP(1)];
% Age 83
X_data = (Male_data_83(:,1)/100).^c; % Height (m)
Y_data = Male_data_83(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_34_Slovenia = [Coefficient_a_Male_1_34_Slovenia PP(2)];
Coefficient_b_Male_1_34_Slovenia = [Coefficient_b_Male_1_34_Slovenia PP(1)];
% Age 84
X_data = (Male_data_84(:,1)/100).^c; % Height (m)
Y_data = Male_data_84(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_34_Slovenia = [Coefficient_a_Male_1_34_Slovenia PP(2)];
Coefficient_b_Male_1_34_Slovenia = [Coefficient_b_Male_1_34_Slovenia PP(1)];
% Age 85
X_data = (Male_data_85(:,1)/100).^c; % Height (m)
Y_data = Male_data_85(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_34_Slovenia = [Coefficient_a_Male_1_34_Slovenia PP(2)];
Coefficient_b_Male_1_34_Slovenia = [Coefficient_b_Male_1_34_Slovenia PP(1)];
% Age 86
X_data = (Male_data_86(:,1)/100).^c; % Height (m)
Y_data = Male_data_86(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_34_Slovenia = [Coefficient_a_Male_1_34_Slovenia PP(2)];
Coefficient_b_Male_1_34_Slovenia = [Coefficient_b_Male_1_34_Slovenia PP(1)];
% Age 87
X_data = (Male_data_87(:,1)/100).^c; % Height (m)
Y_data = Male_data_87(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_34_Slovenia = [Coefficient_a_Male_1_34_Slovenia PP(2)];
Coefficient_b_Male_1_34_Slovenia = [Coefficient_b_Male_1_34_Slovenia PP(1)];
% Age 88
X_data = (Male_data_88(:,1)/100).^c; % Height (m)
Y_data = Male_data_88(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_34_Slovenia = [Coefficient_a_Male_1_34_Slovenia PP(2)];
Coefficient_b_Male_1_34_Slovenia = [Coefficient_b_Male_1_34_Slovenia PP(1)];
% Age 89
X_data = (Male_data_89(:,1)/100).^c; % Height (m)
Y_data = Male_data_89(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_34_Slovenia = [Coefficient_a_Male_1_34_Slovenia PP(2)];
Coefficient_b_Male_1_34_Slovenia = [Coefficient_b_Male_1_34_Slovenia PP(1)];
% Age 90
X_data = (Male_data_90(:,1)/100).^c; % Height (m)
Y_data = Male_data_90(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_34_Slovenia = [Coefficient_a_Male_1_34_Slovenia PP(2)];
Coefficient_b_Male_1_34_Slovenia = [Coefficient_b_Male_1_34_Slovenia PP(1)];

%% 33_Portugal
% Loading the data
Female_data = xlsread('33_Portugal.xlsx','Female');
Male_data = xlsread('33_Portugal.xlsx','Male');
% Grouping by age
Female_data_50 = []; % <= 50
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
Female_data_87 = []; % >=87

Male_data_50 = []; % <= 50
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
Male_data_87 = []; % >=87

% For Female
[M N] = size(Female_data); % No.	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Female_data(i,2) <= 50
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
    if Female_data(i,2) >= 87
        Female_data_87 = [Female_data_87; Female_data(i,3) Female_data(i,4)];
    end
end

% For Male
[M N] = size(Male_data); % No.	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Male_data(i,2) <= 50
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
    if Male_data(i,2) >= 87
        Male_data_87 = [Male_data_87; Male_data(i,3) Male_data(i,4)];
    end
end

% We calculate the coefficients of a and b in 1=a/Weight+b*Height for this
% dataset
Age_33_Portugal = 50:90;
Coefficient_a_Female_1_33_Portugal = [];
Coefficient_b_Female_1_33_Portugal = [];
Coefficient_a_Male_1_33_Portugal = [];
Coefficient_b_Male_1_33_Portugal = [];

% For Female
% Age 50
X_data = (Female_data_50(:,1)/100).^c; % Height (m)
Y_data = Female_data_50(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_33_Portugal = [Coefficient_a_Female_1_33_Portugal PP(2)];
Coefficient_b_Female_1_33_Portugal = [Coefficient_b_Female_1_33_Portugal PP(1)];
% Age 51
X_data = (Female_data_51(:,1)/100).^c; % Height (m)
Y_data = Female_data_51(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_33_Portugal = [Coefficient_a_Female_1_33_Portugal PP(2)];
Coefficient_b_Female_1_33_Portugal = [Coefficient_b_Female_1_33_Portugal PP(1)];
% Age 52
X_data = (Female_data_52(:,1)/100).^c; % Height (m)
Y_data = Female_data_52(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_33_Portugal = [Coefficient_a_Female_1_33_Portugal PP(2)];
Coefficient_b_Female_1_33_Portugal = [Coefficient_b_Female_1_33_Portugal PP(1)];
% Age 53
X_data = (Female_data_53(:,1)/100).^c; % Height (m)
Y_data = Female_data_53(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_33_Portugal = [Coefficient_a_Female_1_33_Portugal PP(2)];
Coefficient_b_Female_1_33_Portugal = [Coefficient_b_Female_1_33_Portugal PP(1)];
% Age 54
X_data = (Female_data_54(:,1)/100).^c; % Height (m)
Y_data = Female_data_54(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_33_Portugal = [Coefficient_a_Female_1_33_Portugal PP(2)];
Coefficient_b_Female_1_33_Portugal = [Coefficient_b_Female_1_33_Portugal PP(1)];
% Age 55
X_data = (Female_data_55(:,1)/100).^c; % Height (m)
Y_data = Female_data_55(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_33_Portugal = [Coefficient_a_Female_1_33_Portugal PP(2)];
Coefficient_b_Female_1_33_Portugal = [Coefficient_b_Female_1_33_Portugal PP(1)];
% Age 56
X_data = (Female_data_56(:,1)/100).^c; % Height (m)
Y_data = Female_data_56(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_33_Portugal = [Coefficient_a_Female_1_33_Portugal PP(2)];
Coefficient_b_Female_1_33_Portugal = [Coefficient_b_Female_1_33_Portugal PP(1)];
% Age 57
X_data = (Female_data_57(:,1)/100).^c; % Height (m)
Y_data = Female_data_57(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_33_Portugal = [Coefficient_a_Female_1_33_Portugal PP(2)];
Coefficient_b_Female_1_33_Portugal = [Coefficient_b_Female_1_33_Portugal PP(1)];
% Age 58
X_data = (Female_data_58(:,1)/100).^c; % Height (m)
Y_data = Female_data_58(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_33_Portugal = [Coefficient_a_Female_1_33_Portugal PP(2)];
Coefficient_b_Female_1_33_Portugal = [Coefficient_b_Female_1_33_Portugal PP(1)];
% Age 59
X_data = (Female_data_59(:,1)/100).^c; % Height (m)
Y_data = Female_data_59(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_33_Portugal = [Coefficient_a_Female_1_33_Portugal PP(2)];
Coefficient_b_Female_1_33_Portugal = [Coefficient_b_Female_1_33_Portugal PP(1)];
% Age 60
X_data = (Female_data_60(:,1)/100).^c; % Height (m)
Y_data = Female_data_60(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_33_Portugal = [Coefficient_a_Female_1_33_Portugal PP(2)];
Coefficient_b_Female_1_33_Portugal = [Coefficient_b_Female_1_33_Portugal PP(1)];
% Age 61
X_data = (Female_data_61(:,1)/100).^c; % Height (m)
Y_data = Female_data_61(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_33_Portugal = [Coefficient_a_Female_1_33_Portugal PP(2)];
Coefficient_b_Female_1_33_Portugal = [Coefficient_b_Female_1_33_Portugal PP(1)];
% Age 62
X_data = (Female_data_62(:,1)/100).^c; % Height (m)
Y_data = Female_data_62(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_33_Portugal = [Coefficient_a_Female_1_33_Portugal PP(2)];
Coefficient_b_Female_1_33_Portugal = [Coefficient_b_Female_1_33_Portugal PP(1)];
% Age 63
X_data = (Female_data_63(:,1)/100).^c; % Height (m)
Y_data = Female_data_63(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_33_Portugal = [Coefficient_a_Female_1_33_Portugal PP(2)];
Coefficient_b_Female_1_33_Portugal = [Coefficient_b_Female_1_33_Portugal PP(1)];
% Age 64
X_data = (Female_data_64(:,1)/100).^c; % Height (m)
Y_data = Female_data_64(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_33_Portugal = [Coefficient_a_Female_1_33_Portugal PP(2)];
Coefficient_b_Female_1_33_Portugal = [Coefficient_b_Female_1_33_Portugal PP(1)];
% Age 65
X_data = (Female_data_65(:,1)/100).^c; % Height (m)
Y_data = Female_data_65(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_33_Portugal = [Coefficient_a_Female_1_33_Portugal PP(2)];
Coefficient_b_Female_1_33_Portugal = [Coefficient_b_Female_1_33_Portugal PP(1)];
% Age 66
X_data = (Female_data_66(:,1)/100).^c; % Height (m)
Y_data = Female_data_66(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_33_Portugal = [Coefficient_a_Female_1_33_Portugal PP(2)];
Coefficient_b_Female_1_33_Portugal = [Coefficient_b_Female_1_33_Portugal PP(1)];
% Age 67
X_data = (Female_data_67(:,1)/100).^c; % Height (m)
Y_data = Female_data_67(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_33_Portugal = [Coefficient_a_Female_1_33_Portugal PP(2)];
Coefficient_b_Female_1_33_Portugal = [Coefficient_b_Female_1_33_Portugal PP(1)];
% Age 68
X_data = (Female_data_68(:,1)/100).^c; % Height (m)
Y_data = Female_data_68(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_33_Portugal = [Coefficient_a_Female_1_33_Portugal PP(2)];
Coefficient_b_Female_1_33_Portugal = [Coefficient_b_Female_1_33_Portugal PP(1)];
% Age 69
X_data = (Female_data_69(:,1)/100).^c; % Height (m)
Y_data = Female_data_69(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_33_Portugal = [Coefficient_a_Female_1_33_Portugal PP(2)];
Coefficient_b_Female_1_33_Portugal = [Coefficient_b_Female_1_33_Portugal PP(1)];
% Age 70
X_data = (Female_data_70(:,1)/100).^c; % Height (m)
Y_data = Female_data_70(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_33_Portugal = [Coefficient_a_Female_1_33_Portugal PP(2)];
Coefficient_b_Female_1_33_Portugal = [Coefficient_b_Female_1_33_Portugal PP(1)];
% Age 71
X_data = (Female_data_71(:,1)/100).^c; % Height (m)
Y_data = Female_data_71(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_33_Portugal = [Coefficient_a_Female_1_33_Portugal PP(2)];
Coefficient_b_Female_1_33_Portugal = [Coefficient_b_Female_1_33_Portugal PP(1)];
% Age 72
X_data = (Female_data_72(:,1)/100).^c; % Height (m)
Y_data = Female_data_72(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_33_Portugal = [Coefficient_a_Female_1_33_Portugal PP(2)];
Coefficient_b_Female_1_33_Portugal = [Coefficient_b_Female_1_33_Portugal PP(1)];
% Age 73
X_data = (Female_data_73(:,1)/100).^c; % Height (m)
Y_data = Female_data_73(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_33_Portugal = [Coefficient_a_Female_1_33_Portugal PP(2)];
Coefficient_b_Female_1_33_Portugal = [Coefficient_b_Female_1_33_Portugal PP(1)];
% Age 74
X_data = (Female_data_74(:,1)/100).^c; % Height (m)
Y_data = Female_data_74(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_33_Portugal = [Coefficient_a_Female_1_33_Portugal PP(2)];
Coefficient_b_Female_1_33_Portugal = [Coefficient_b_Female_1_33_Portugal PP(1)];
% Age 75
X_data = (Female_data_75(:,1)/100).^c; % Height (m)
Y_data = Female_data_75(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_33_Portugal = [Coefficient_a_Female_1_33_Portugal PP(2)];
Coefficient_b_Female_1_33_Portugal = [Coefficient_b_Female_1_33_Portugal PP(1)];
% Age 76
X_data = (Female_data_76(:,1)/100).^c; % Height (m)
Y_data = Female_data_76(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_33_Portugal = [Coefficient_a_Female_1_33_Portugal PP(2)];
Coefficient_b_Female_1_33_Portugal = [Coefficient_b_Female_1_33_Portugal PP(1)];
% Age 77
X_data = (Female_data_77(:,1)/100).^c; % Height (m)
Y_data = Female_data_77(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_33_Portugal = [Coefficient_a_Female_1_33_Portugal PP(2)];
Coefficient_b_Female_1_33_Portugal = [Coefficient_b_Female_1_33_Portugal PP(1)];
% Age 78
X_data = (Female_data_78(:,1)/100).^c; % Height (m)
Y_data = Female_data_78(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_33_Portugal = [Coefficient_a_Female_1_33_Portugal PP(2)];
Coefficient_b_Female_1_33_Portugal = [Coefficient_b_Female_1_33_Portugal PP(1)];
% Age 79
X_data = (Female_data_79(:,1)/100).^c; % Height (m)
Y_data = Female_data_79(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_33_Portugal = [Coefficient_a_Female_1_33_Portugal PP(2)];
Coefficient_b_Female_1_33_Portugal = [Coefficient_b_Female_1_33_Portugal PP(1)];
% Age 80
X_data = (Female_data_80(:,1)/100).^c; % Height (m)
Y_data = Female_data_80(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_33_Portugal = [Coefficient_a_Female_1_33_Portugal PP(2)];
Coefficient_b_Female_1_33_Portugal = [Coefficient_b_Female_1_33_Portugal PP(1)];
% Age 81
X_data = (Female_data_81(:,1)/100).^c; % Height (m)
Y_data = Female_data_81(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_33_Portugal = [Coefficient_a_Female_1_33_Portugal PP(2)];
Coefficient_b_Female_1_33_Portugal = [Coefficient_b_Female_1_33_Portugal PP(1)];
% Age 82
X_data = (Female_data_82(:,1)/100).^c; % Height (m)
Y_data = Female_data_82(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_33_Portugal = [Coefficient_a_Female_1_33_Portugal PP(2)];
Coefficient_b_Female_1_33_Portugal = [Coefficient_b_Female_1_33_Portugal PP(1)];
% Age 83
X_data = (Female_data_83(:,1)/100).^c; % Height (m)
Y_data = Female_data_83(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_33_Portugal = [Coefficient_a_Female_1_33_Portugal PP(2)];
Coefficient_b_Female_1_33_Portugal = [Coefficient_b_Female_1_33_Portugal PP(1)];
% Age 84
X_data = (Female_data_84(:,1)/100).^c; % Height (m)
Y_data = Female_data_84(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_33_Portugal = [Coefficient_a_Female_1_33_Portugal PP(2)];
Coefficient_b_Female_1_33_Portugal = [Coefficient_b_Female_1_33_Portugal PP(1)];
% Age 85
X_data = (Female_data_85(:,1)/100).^c; % Height (m)
Y_data = Female_data_85(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_33_Portugal = [Coefficient_a_Female_1_33_Portugal PP(2)];
Coefficient_b_Female_1_33_Portugal = [Coefficient_b_Female_1_33_Portugal PP(1)];
% Age 86
X_data = (Female_data_86(:,1)/100).^c; % Height (m)
Y_data = Female_data_86(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_33_Portugal = [Coefficient_a_Female_1_33_Portugal PP(2)];
Coefficient_b_Female_1_33_Portugal = [Coefficient_b_Female_1_33_Portugal PP(1)];
% Age 87
X_data = (Female_data_87(:,1)/100).^c; % Height (m)
Y_data = Female_data_87(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_33_Portugal = [Coefficient_a_Female_1_33_Portugal PP(2)];
Coefficient_b_Female_1_33_Portugal = [Coefficient_b_Female_1_33_Portugal PP(1)];
% Age 88
X_data = (Female_data_88(:,1)/100).^c; % Height (m)
Y_data = Female_data_88(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_33_Portugal = [Coefficient_a_Female_1_33_Portugal PP(2)];
Coefficient_b_Female_1_33_Portugal = [Coefficient_b_Female_1_33_Portugal PP(1)];
% Age 89
X_data = (Female_data_89(:,1)/100).^c; % Height (m)
Y_data = Female_data_89(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_33_Portugal = [Coefficient_a_Female_1_33_Portugal PP(2)];
Coefficient_b_Female_1_33_Portugal = [Coefficient_b_Female_1_33_Portugal PP(1)];
% Age 90
X_data = (Female_data_90(:,1)/100).^c; % Height (m)
Y_data = Female_data_90(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_33_Portugal = [Coefficient_a_Female_1_33_Portugal PP(2)];
Coefficient_b_Female_1_33_Portugal = [Coefficient_b_Female_1_33_Portugal PP(1)];

% For Male
% Age 50
X_data = (Male_data_50(:,1)/100).^c; % Height (m)
Y_data = Male_data_50(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_33_Portugal = [Coefficient_a_Male_1_33_Portugal PP(2)];
Coefficient_b_Male_1_33_Portugal = [Coefficient_b_Male_1_33_Portugal PP(1)];
% Age 51
X_data = (Male_data_51(:,1)/100).^c; % Height (m)
Y_data = Male_data_51(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_33_Portugal = [Coefficient_a_Male_1_33_Portugal PP(2)];
Coefficient_b_Male_1_33_Portugal = [Coefficient_b_Male_1_33_Portugal PP(1)];
% Age 52
X_data = (Male_data_52(:,1)/100).^c; % Height (m)
Y_data = Male_data_52(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_33_Portugal = [Coefficient_a_Male_1_33_Portugal PP(2)];
Coefficient_b_Male_1_33_Portugal = [Coefficient_b_Male_1_33_Portugal PP(1)];
% Age 53
X_data = (Male_data_53(:,1)/100).^c; % Height (m)
Y_data = Male_data_53(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_33_Portugal = [Coefficient_a_Male_1_33_Portugal PP(2)];
Coefficient_b_Male_1_33_Portugal = [Coefficient_b_Male_1_33_Portugal PP(1)];
% Age 54
X_data = (Male_data_54(:,1)/100).^c; % Height (m)
Y_data = Male_data_54(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_33_Portugal = [Coefficient_a_Male_1_33_Portugal PP(2)];
Coefficient_b_Male_1_33_Portugal = [Coefficient_b_Male_1_33_Portugal PP(1)];
% Age 55
X_data = (Male_data_55(:,1)/100).^c; % Height (m)
Y_data = Male_data_55(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_33_Portugal = [Coefficient_a_Male_1_33_Portugal PP(2)];
Coefficient_b_Male_1_33_Portugal = [Coefficient_b_Male_1_33_Portugal PP(1)];
% Age 56
X_data = (Male_data_56(:,1)/100).^c; % Height (m)
Y_data = Male_data_56(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_33_Portugal = [Coefficient_a_Male_1_33_Portugal PP(2)];
Coefficient_b_Male_1_33_Portugal = [Coefficient_b_Male_1_33_Portugal PP(1)];
% Age 57
X_data = (Male_data_57(:,1)/100).^c; % Height (m)
Y_data = Male_data_57(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_33_Portugal = [Coefficient_a_Male_1_33_Portugal PP(2)];
Coefficient_b_Male_1_33_Portugal = [Coefficient_b_Male_1_33_Portugal PP(1)];
% Age 58
X_data = (Male_data_58(:,1)/100).^c; % Height (m)
Y_data = Male_data_58(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_33_Portugal = [Coefficient_a_Male_1_33_Portugal PP(2)];
Coefficient_b_Male_1_33_Portugal = [Coefficient_b_Male_1_33_Portugal PP(1)];
% Age 59
X_data = (Male_data_59(:,1)/100).^c; % Height (m)
Y_data = Male_data_59(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_33_Portugal = [Coefficient_a_Male_1_33_Portugal PP(2)];
Coefficient_b_Male_1_33_Portugal = [Coefficient_b_Male_1_33_Portugal PP(1)];
% Age 60
X_data = (Male_data_60(:,1)/100).^c; % Height (m)
Y_data = Male_data_60(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_33_Portugal = [Coefficient_a_Male_1_33_Portugal PP(2)];
Coefficient_b_Male_1_33_Portugal = [Coefficient_b_Male_1_33_Portugal PP(1)];
% Age 61
X_data = (Male_data_61(:,1)/100).^c; % Height (m)
Y_data = Male_data_61(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_33_Portugal = [Coefficient_a_Male_1_33_Portugal PP(2)];
Coefficient_b_Male_1_33_Portugal = [Coefficient_b_Male_1_33_Portugal PP(1)];
% Age 62
X_data = (Male_data_62(:,1)/100).^c; % Height (m)
Y_data = Male_data_62(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_33_Portugal = [Coefficient_a_Male_1_33_Portugal PP(2)];
Coefficient_b_Male_1_33_Portugal = [Coefficient_b_Male_1_33_Portugal PP(1)];
% Age 63
X_data = (Male_data_63(:,1)/100).^c; % Height (m)
Y_data = Male_data_63(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_33_Portugal = [Coefficient_a_Male_1_33_Portugal PP(2)];
Coefficient_b_Male_1_33_Portugal = [Coefficient_b_Male_1_33_Portugal PP(1)];
% Age 64
X_data = (Male_data_64(:,1)/100).^c; % Height (m)
Y_data = Male_data_64(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_33_Portugal = [Coefficient_a_Male_1_33_Portugal PP(2)];
Coefficient_b_Male_1_33_Portugal = [Coefficient_b_Male_1_33_Portugal PP(1)];
% Age 65
X_data = (Male_data_65(:,1)/100).^c; % Height (m)
Y_data = Male_data_65(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_33_Portugal = [Coefficient_a_Male_1_33_Portugal PP(2)];
Coefficient_b_Male_1_33_Portugal = [Coefficient_b_Male_1_33_Portugal PP(1)];
% Age 66
X_data = (Male_data_66(:,1)/100).^c; % Height (m)
Y_data = Male_data_66(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_33_Portugal = [Coefficient_a_Male_1_33_Portugal PP(2)];
Coefficient_b_Male_1_33_Portugal = [Coefficient_b_Male_1_33_Portugal PP(1)];
% Age 67
X_data = (Male_data_67(:,1)/100).^c; % Height (m)
Y_data = Male_data_67(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_33_Portugal = [Coefficient_a_Male_1_33_Portugal PP(2)];
Coefficient_b_Male_1_33_Portugal = [Coefficient_b_Male_1_33_Portugal PP(1)];
% Age 68
X_data = (Male_data_68(:,1)/100).^c; % Height (m)
Y_data = Male_data_68(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_33_Portugal = [Coefficient_a_Male_1_33_Portugal PP(2)];
Coefficient_b_Male_1_33_Portugal = [Coefficient_b_Male_1_33_Portugal PP(1)];
% Age 69
X_data = (Male_data_69(:,1)/100).^c; % Height (m)
Y_data = Male_data_69(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_33_Portugal = [Coefficient_a_Male_1_33_Portugal PP(2)];
Coefficient_b_Male_1_33_Portugal = [Coefficient_b_Male_1_33_Portugal PP(1)];
% Age 70
X_data = (Male_data_70(:,1)/100).^c; % Height (m)
Y_data = Male_data_70(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_33_Portugal = [Coefficient_a_Male_1_33_Portugal PP(2)];
Coefficient_b_Male_1_33_Portugal = [Coefficient_b_Male_1_33_Portugal PP(1)];
% Age 71
X_data = (Male_data_71(:,1)/100).^c; % Height (m)
Y_data = Male_data_71(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_33_Portugal = [Coefficient_a_Male_1_33_Portugal PP(2)];
Coefficient_b_Male_1_33_Portugal = [Coefficient_b_Male_1_33_Portugal PP(1)];
% Age 72
X_data = (Male_data_72(:,1)/100).^c; % Height (m)
Y_data = Male_data_72(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_33_Portugal = [Coefficient_a_Male_1_33_Portugal PP(2)];
Coefficient_b_Male_1_33_Portugal = [Coefficient_b_Male_1_33_Portugal PP(1)];
% Age 73
X_data = (Male_data_73(:,1)/100).^c; % Height (m)
Y_data = Male_data_73(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_33_Portugal = [Coefficient_a_Male_1_33_Portugal PP(2)];
Coefficient_b_Male_1_33_Portugal = [Coefficient_b_Male_1_33_Portugal PP(1)];
% Age 74
X_data = (Male_data_74(:,1)/100).^c; % Height (m)
Y_data = Male_data_74(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_33_Portugal = [Coefficient_a_Male_1_33_Portugal PP(2)];
Coefficient_b_Male_1_33_Portugal = [Coefficient_b_Male_1_33_Portugal PP(1)];
% Age 75
X_data = (Male_data_75(:,1)/100).^c; % Height (m)
Y_data = Male_data_75(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_33_Portugal = [Coefficient_a_Male_1_33_Portugal PP(2)];
Coefficient_b_Male_1_33_Portugal = [Coefficient_b_Male_1_33_Portugal PP(1)];
% Age 76
X_data = (Male_data_76(:,1)/100).^c; % Height (m)
Y_data = Male_data_76(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_33_Portugal = [Coefficient_a_Male_1_33_Portugal PP(2)];
Coefficient_b_Male_1_33_Portugal = [Coefficient_b_Male_1_33_Portugal PP(1)];
% Age 77
X_data = (Male_data_77(:,1)/100).^c; % Height (m)
Y_data = Male_data_77(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_33_Portugal = [Coefficient_a_Male_1_33_Portugal PP(2)];
Coefficient_b_Male_1_33_Portugal = [Coefficient_b_Male_1_33_Portugal PP(1)];
% Age 78
X_data = (Male_data_78(:,1)/100).^c; % Height (m)
Y_data = Male_data_78(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_33_Portugal = [Coefficient_a_Male_1_33_Portugal PP(2)];
Coefficient_b_Male_1_33_Portugal = [Coefficient_b_Male_1_33_Portugal PP(1)];
% Age 79
X_data = (Male_data_79(:,1)/100).^c; % Height (m)
Y_data = Male_data_79(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_33_Portugal = [Coefficient_a_Male_1_33_Portugal PP(2)];
Coefficient_b_Male_1_33_Portugal = [Coefficient_b_Male_1_33_Portugal PP(1)];
% Age 80
X_data = (Male_data_80(:,1)/100).^c; % Height (m)
Y_data = Male_data_80(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_33_Portugal = [Coefficient_a_Male_1_33_Portugal PP(2)];
Coefficient_b_Male_1_33_Portugal = [Coefficient_b_Male_1_33_Portugal PP(1)];
% Age 81
X_data = (Male_data_81(:,1)/100).^c; % Height (m)
Y_data = Male_data_81(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_33_Portugal = [Coefficient_a_Male_1_33_Portugal PP(2)];
Coefficient_b_Male_1_33_Portugal = [Coefficient_b_Male_1_33_Portugal PP(1)];
% Age 82
X_data = (Male_data_82(:,1)/100).^c; % Height (m)
Y_data = Male_data_82(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_33_Portugal = [Coefficient_a_Male_1_33_Portugal PP(2)];
Coefficient_b_Male_1_33_Portugal = [Coefficient_b_Male_1_33_Portugal PP(1)];
% Age 83
X_data = (Male_data_83(:,1)/100).^c; % Height (m)
Y_data = Male_data_83(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_33_Portugal = [Coefficient_a_Male_1_33_Portugal PP(2)];
Coefficient_b_Male_1_33_Portugal = [Coefficient_b_Male_1_33_Portugal PP(1)];
% Age 84
X_data = (Male_data_84(:,1)/100).^c; % Height (m)
Y_data = Male_data_84(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_33_Portugal = [Coefficient_a_Male_1_33_Portugal PP(2)];
Coefficient_b_Male_1_33_Portugal = [Coefficient_b_Male_1_33_Portugal PP(1)];
% Age 85
X_data = (Male_data_85(:,1)/100).^c; % Height (m)
Y_data = Male_data_85(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_33_Portugal = [Coefficient_a_Male_1_33_Portugal PP(2)];
Coefficient_b_Male_1_33_Portugal = [Coefficient_b_Male_1_33_Portugal PP(1)];
% Age 86
X_data = (Male_data_86(:,1)/100).^c; % Height (m)
Y_data = Male_data_86(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_33_Portugal = [Coefficient_a_Male_1_33_Portugal PP(2)];
Coefficient_b_Male_1_33_Portugal = [Coefficient_b_Male_1_33_Portugal PP(1)];
% Age 87
X_data = (Male_data_87(:,1)/100).^c; % Height (m)
Y_data = Male_data_87(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_33_Portugal = [Coefficient_a_Male_1_33_Portugal PP(2)];
Coefficient_b_Male_1_33_Portugal = [Coefficient_b_Male_1_33_Portugal PP(1)];
% Age 88
X_data = (Male_data_88(:,1)/100).^c; % Height (m)
Y_data = Male_data_88(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_33_Portugal = [Coefficient_a_Male_1_33_Portugal PP(2)];
Coefficient_b_Male_1_33_Portugal = [Coefficient_b_Male_1_33_Portugal PP(1)];
% Age 89
X_data = (Male_data_89(:,1)/100).^c; % Height (m)
Y_data = Male_data_89(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_33_Portugal = [Coefficient_a_Male_1_33_Portugal PP(2)];
Coefficient_b_Male_1_33_Portugal = [Coefficient_b_Male_1_33_Portugal PP(1)];
% Age 90
X_data = (Male_data_90(:,1)/100).^c; % Height (m)
Y_data = Male_data_90(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_33_Portugal = [Coefficient_a_Male_1_33_Portugal PP(2)];
Coefficient_b_Male_1_33_Portugal = [Coefficient_b_Male_1_33_Portugal PP(1)];

%% 19_Greece
% Loading the data
Female_data = xlsread('19_Greece.xlsx','Female');
Male_data = xlsread('19_Greece.xlsx','Male');
% Grouping by age
Female_data_50 = []; % <= 50
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
Female_data_87 = []; % >=87

Male_data_50 = []; % <= 50
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
Male_data_87 = []; % >=87

% For Female
[M N] = size(Female_data); % No.	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Female_data(i,2) <= 50
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
    if Female_data(i,2) >= 87
        Female_data_87 = [Female_data_87; Female_data(i,3) Female_data(i,4)];
    end
end

% For Male
[M N] = size(Male_data); % No.	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Male_data(i,2) <= 50
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
    if Male_data(i,2) >= 87
        Male_data_87 = [Male_data_87; Male_data(i,3) Male_data(i,4)];
    end
end

% We calculate the coefficients of a and b in 1=a/Weight+b*Height for this
% dataset
Age_19_Greece = 50:90;
Coefficient_a_Female_1_19_Greece = [];
Coefficient_b_Female_1_19_Greece = [];
Coefficient_a_Male_1_19_Greece = [];
Coefficient_b_Male_1_19_Greece = [];

% For Female
% Age 50
X_data = (Female_data_50(:,1)/100).^c; % Height (m)
Y_data = Female_data_50(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_19_Greece = [Coefficient_a_Female_1_19_Greece PP(2)];
Coefficient_b_Female_1_19_Greece = [Coefficient_b_Female_1_19_Greece PP(1)];
% Age 51
X_data = (Female_data_51(:,1)/100).^c; % Height (m)
Y_data = Female_data_51(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_19_Greece = [Coefficient_a_Female_1_19_Greece PP(2)];
Coefficient_b_Female_1_19_Greece = [Coefficient_b_Female_1_19_Greece PP(1)];
% Age 52
X_data = (Female_data_52(:,1)/100).^c; % Height (m)
Y_data = Female_data_52(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_19_Greece = [Coefficient_a_Female_1_19_Greece PP(2)];
Coefficient_b_Female_1_19_Greece = [Coefficient_b_Female_1_19_Greece PP(1)];
% Age 53
X_data = (Female_data_53(:,1)/100).^c; % Height (m)
Y_data = Female_data_53(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_19_Greece = [Coefficient_a_Female_1_19_Greece PP(2)];
Coefficient_b_Female_1_19_Greece = [Coefficient_b_Female_1_19_Greece PP(1)];
% Age 54
X_data = (Female_data_54(:,1)/100).^c; % Height (m)
Y_data = Female_data_54(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_19_Greece = [Coefficient_a_Female_1_19_Greece PP(2)];
Coefficient_b_Female_1_19_Greece = [Coefficient_b_Female_1_19_Greece PP(1)];
% Age 55
X_data = (Female_data_55(:,1)/100).^c; % Height (m)
Y_data = Female_data_55(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_19_Greece = [Coefficient_a_Female_1_19_Greece PP(2)];
Coefficient_b_Female_1_19_Greece = [Coefficient_b_Female_1_19_Greece PP(1)];
% Age 56
X_data = (Female_data_56(:,1)/100).^c; % Height (m)
Y_data = Female_data_56(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_19_Greece = [Coefficient_a_Female_1_19_Greece PP(2)];
Coefficient_b_Female_1_19_Greece = [Coefficient_b_Female_1_19_Greece PP(1)];
% Age 57
X_data = (Female_data_57(:,1)/100).^c; % Height (m)
Y_data = Female_data_57(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_19_Greece = [Coefficient_a_Female_1_19_Greece PP(2)];
Coefficient_b_Female_1_19_Greece = [Coefficient_b_Female_1_19_Greece PP(1)];
% Age 58
X_data = (Female_data_58(:,1)/100).^c; % Height (m)
Y_data = Female_data_58(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_19_Greece = [Coefficient_a_Female_1_19_Greece PP(2)];
Coefficient_b_Female_1_19_Greece = [Coefficient_b_Female_1_19_Greece PP(1)];
% Age 59
X_data = (Female_data_59(:,1)/100).^c; % Height (m)
Y_data = Female_data_59(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_19_Greece = [Coefficient_a_Female_1_19_Greece PP(2)];
Coefficient_b_Female_1_19_Greece = [Coefficient_b_Female_1_19_Greece PP(1)];
% Age 60
X_data = (Female_data_60(:,1)/100).^c; % Height (m)
Y_data = Female_data_60(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_19_Greece = [Coefficient_a_Female_1_19_Greece PP(2)];
Coefficient_b_Female_1_19_Greece = [Coefficient_b_Female_1_19_Greece PP(1)];
% Age 61
X_data = (Female_data_61(:,1)/100).^c; % Height (m)
Y_data = Female_data_61(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_19_Greece = [Coefficient_a_Female_1_19_Greece PP(2)];
Coefficient_b_Female_1_19_Greece = [Coefficient_b_Female_1_19_Greece PP(1)];
% Age 62
X_data = (Female_data_62(:,1)/100).^c; % Height (m)
Y_data = Female_data_62(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_19_Greece = [Coefficient_a_Female_1_19_Greece PP(2)];
Coefficient_b_Female_1_19_Greece = [Coefficient_b_Female_1_19_Greece PP(1)];
% Age 63
X_data = (Female_data_63(:,1)/100).^c; % Height (m)
Y_data = Female_data_63(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_19_Greece = [Coefficient_a_Female_1_19_Greece PP(2)];
Coefficient_b_Female_1_19_Greece = [Coefficient_b_Female_1_19_Greece PP(1)];
% Age 64
X_data = (Female_data_64(:,1)/100).^c; % Height (m)
Y_data = Female_data_64(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_19_Greece = [Coefficient_a_Female_1_19_Greece PP(2)];
Coefficient_b_Female_1_19_Greece = [Coefficient_b_Female_1_19_Greece PP(1)];
% Age 65
X_data = (Female_data_65(:,1)/100).^c; % Height (m)
Y_data = Female_data_65(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_19_Greece = [Coefficient_a_Female_1_19_Greece PP(2)];
Coefficient_b_Female_1_19_Greece = [Coefficient_b_Female_1_19_Greece PP(1)];
% Age 66
X_data = (Female_data_66(:,1)/100).^c; % Height (m)
Y_data = Female_data_66(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_19_Greece = [Coefficient_a_Female_1_19_Greece PP(2)];
Coefficient_b_Female_1_19_Greece = [Coefficient_b_Female_1_19_Greece PP(1)];
% Age 67
X_data = (Female_data_67(:,1)/100).^c; % Height (m)
Y_data = Female_data_67(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_19_Greece = [Coefficient_a_Female_1_19_Greece PP(2)];
Coefficient_b_Female_1_19_Greece = [Coefficient_b_Female_1_19_Greece PP(1)];
% Age 68
X_data = (Female_data_68(:,1)/100).^c; % Height (m)
Y_data = Female_data_68(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_19_Greece = [Coefficient_a_Female_1_19_Greece PP(2)];
Coefficient_b_Female_1_19_Greece = [Coefficient_b_Female_1_19_Greece PP(1)];
% Age 69
X_data = (Female_data_69(:,1)/100).^c; % Height (m)
Y_data = Female_data_69(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_19_Greece = [Coefficient_a_Female_1_19_Greece PP(2)];
Coefficient_b_Female_1_19_Greece = [Coefficient_b_Female_1_19_Greece PP(1)];
% Age 70
X_data = (Female_data_70(:,1)/100).^c; % Height (m)
Y_data = Female_data_70(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_19_Greece = [Coefficient_a_Female_1_19_Greece PP(2)];
Coefficient_b_Female_1_19_Greece = [Coefficient_b_Female_1_19_Greece PP(1)];
% Age 71
X_data = (Female_data_71(:,1)/100).^c; % Height (m)
Y_data = Female_data_71(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_19_Greece = [Coefficient_a_Female_1_19_Greece PP(2)];
Coefficient_b_Female_1_19_Greece = [Coefficient_b_Female_1_19_Greece PP(1)];
% Age 72
X_data = (Female_data_72(:,1)/100).^c; % Height (m)
Y_data = Female_data_72(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_19_Greece = [Coefficient_a_Female_1_19_Greece PP(2)];
Coefficient_b_Female_1_19_Greece = [Coefficient_b_Female_1_19_Greece PP(1)];
% Age 73
X_data = (Female_data_73(:,1)/100).^c; % Height (m)
Y_data = Female_data_73(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_19_Greece = [Coefficient_a_Female_1_19_Greece PP(2)];
Coefficient_b_Female_1_19_Greece = [Coefficient_b_Female_1_19_Greece PP(1)];
% Age 74
X_data = (Female_data_74(:,1)/100).^c; % Height (m)
Y_data = Female_data_74(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_19_Greece = [Coefficient_a_Female_1_19_Greece PP(2)];
Coefficient_b_Female_1_19_Greece = [Coefficient_b_Female_1_19_Greece PP(1)];
% Age 75
X_data = (Female_data_75(:,1)/100).^c; % Height (m)
Y_data = Female_data_75(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_19_Greece = [Coefficient_a_Female_1_19_Greece PP(2)];
Coefficient_b_Female_1_19_Greece = [Coefficient_b_Female_1_19_Greece PP(1)];
% Age 76
X_data = (Female_data_76(:,1)/100).^c; % Height (m)
Y_data = Female_data_76(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_19_Greece = [Coefficient_a_Female_1_19_Greece PP(2)];
Coefficient_b_Female_1_19_Greece = [Coefficient_b_Female_1_19_Greece PP(1)];
% Age 77
X_data = (Female_data_77(:,1)/100).^c; % Height (m)
Y_data = Female_data_77(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_19_Greece = [Coefficient_a_Female_1_19_Greece PP(2)];
Coefficient_b_Female_1_19_Greece = [Coefficient_b_Female_1_19_Greece PP(1)];
% Age 78
X_data = (Female_data_78(:,1)/100).^c; % Height (m)
Y_data = Female_data_78(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_19_Greece = [Coefficient_a_Female_1_19_Greece PP(2)];
Coefficient_b_Female_1_19_Greece = [Coefficient_b_Female_1_19_Greece PP(1)];
% Age 79
X_data = (Female_data_79(:,1)/100).^c; % Height (m)
Y_data = Female_data_79(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_19_Greece = [Coefficient_a_Female_1_19_Greece PP(2)];
Coefficient_b_Female_1_19_Greece = [Coefficient_b_Female_1_19_Greece PP(1)];
% Age 80
X_data = (Female_data_80(:,1)/100).^c; % Height (m)
Y_data = Female_data_80(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_19_Greece = [Coefficient_a_Female_1_19_Greece PP(2)];
Coefficient_b_Female_1_19_Greece = [Coefficient_b_Female_1_19_Greece PP(1)];
% Age 81
X_data = (Female_data_81(:,1)/100).^c; % Height (m)
Y_data = Female_data_81(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_19_Greece = [Coefficient_a_Female_1_19_Greece PP(2)];
Coefficient_b_Female_1_19_Greece = [Coefficient_b_Female_1_19_Greece PP(1)];
% Age 82
X_data = (Female_data_82(:,1)/100).^c; % Height (m)
Y_data = Female_data_82(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_19_Greece = [Coefficient_a_Female_1_19_Greece PP(2)];
Coefficient_b_Female_1_19_Greece = [Coefficient_b_Female_1_19_Greece PP(1)];
% Age 83
X_data = (Female_data_83(:,1)/100).^c; % Height (m)
Y_data = Female_data_83(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_19_Greece = [Coefficient_a_Female_1_19_Greece PP(2)];
Coefficient_b_Female_1_19_Greece = [Coefficient_b_Female_1_19_Greece PP(1)];
% Age 84
X_data = (Female_data_84(:,1)/100).^c; % Height (m)
Y_data = Female_data_84(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_19_Greece = [Coefficient_a_Female_1_19_Greece PP(2)];
Coefficient_b_Female_1_19_Greece = [Coefficient_b_Female_1_19_Greece PP(1)];
% Age 85
X_data = (Female_data_85(:,1)/100).^c; % Height (m)
Y_data = Female_data_85(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_19_Greece = [Coefficient_a_Female_1_19_Greece PP(2)];
Coefficient_b_Female_1_19_Greece = [Coefficient_b_Female_1_19_Greece PP(1)];
% Age 86
X_data = (Female_data_86(:,1)/100).^c; % Height (m)
Y_data = Female_data_86(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_19_Greece = [Coefficient_a_Female_1_19_Greece PP(2)];
Coefficient_b_Female_1_19_Greece = [Coefficient_b_Female_1_19_Greece PP(1)];
% Age 87
X_data = (Female_data_87(:,1)/100).^c; % Height (m)
Y_data = Female_data_87(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_19_Greece = [Coefficient_a_Female_1_19_Greece PP(2)];
Coefficient_b_Female_1_19_Greece = [Coefficient_b_Female_1_19_Greece PP(1)];
% Age 88
X_data = (Female_data_88(:,1)/100).^c; % Height (m)
Y_data = Female_data_88(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_19_Greece = [Coefficient_a_Female_1_19_Greece PP(2)];
Coefficient_b_Female_1_19_Greece = [Coefficient_b_Female_1_19_Greece PP(1)];
% Age 89
X_data = (Female_data_89(:,1)/100).^c; % Height (m)
Y_data = Female_data_89(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_19_Greece = [Coefficient_a_Female_1_19_Greece PP(2)];
Coefficient_b_Female_1_19_Greece = [Coefficient_b_Female_1_19_Greece PP(1)];
% Age 90
X_data = (Female_data_90(:,1)/100).^c; % Height (m)
Y_data = Female_data_90(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_19_Greece = [Coefficient_a_Female_1_19_Greece PP(2)];
Coefficient_b_Female_1_19_Greece = [Coefficient_b_Female_1_19_Greece PP(1)];

% For Male
% Age 50
X_data = (Male_data_50(:,1)/100).^c; % Height (m)
Y_data = Male_data_50(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_19_Greece = [Coefficient_a_Male_1_19_Greece PP(2)];
Coefficient_b_Male_1_19_Greece = [Coefficient_b_Male_1_19_Greece PP(1)];
% Age 51
X_data = (Male_data_51(:,1)/100).^c; % Height (m)
Y_data = Male_data_51(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_19_Greece = [Coefficient_a_Male_1_19_Greece PP(2)];
Coefficient_b_Male_1_19_Greece = [Coefficient_b_Male_1_19_Greece PP(1)];
% Age 52
X_data = (Male_data_52(:,1)/100).^c; % Height (m)
Y_data = Male_data_52(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_19_Greece = [Coefficient_a_Male_1_19_Greece PP(2)];
Coefficient_b_Male_1_19_Greece = [Coefficient_b_Male_1_19_Greece PP(1)];
% Age 53
X_data = (Male_data_53(:,1)/100).^c; % Height (m)
Y_data = Male_data_53(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_19_Greece = [Coefficient_a_Male_1_19_Greece PP(2)];
Coefficient_b_Male_1_19_Greece = [Coefficient_b_Male_1_19_Greece PP(1)];
% Age 54
X_data = (Male_data_54(:,1)/100).^c; % Height (m)
Y_data = Male_data_54(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_19_Greece = [Coefficient_a_Male_1_19_Greece PP(2)];
Coefficient_b_Male_1_19_Greece = [Coefficient_b_Male_1_19_Greece PP(1)];
% Age 55
X_data = (Male_data_55(:,1)/100).^c; % Height (m)
Y_data = Male_data_55(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_19_Greece = [Coefficient_a_Male_1_19_Greece PP(2)];
Coefficient_b_Male_1_19_Greece = [Coefficient_b_Male_1_19_Greece PP(1)];
% Age 56
X_data = (Male_data_56(:,1)/100).^c; % Height (m)
Y_data = Male_data_56(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_19_Greece = [Coefficient_a_Male_1_19_Greece PP(2)];
Coefficient_b_Male_1_19_Greece = [Coefficient_b_Male_1_19_Greece PP(1)];
% Age 57
X_data = (Male_data_57(:,1)/100).^c; % Height (m)
Y_data = Male_data_57(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_19_Greece = [Coefficient_a_Male_1_19_Greece PP(2)];
Coefficient_b_Male_1_19_Greece = [Coefficient_b_Male_1_19_Greece PP(1)];
% Age 58
X_data = (Male_data_58(:,1)/100).^c; % Height (m)
Y_data = Male_data_58(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_19_Greece = [Coefficient_a_Male_1_19_Greece PP(2)];
Coefficient_b_Male_1_19_Greece = [Coefficient_b_Male_1_19_Greece PP(1)];
% Age 59
X_data = (Male_data_59(:,1)/100).^c; % Height (m)
Y_data = Male_data_59(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_19_Greece = [Coefficient_a_Male_1_19_Greece PP(2)];
Coefficient_b_Male_1_19_Greece = [Coefficient_b_Male_1_19_Greece PP(1)];
% Age 60
X_data = (Male_data_60(:,1)/100).^c; % Height (m)
Y_data = Male_data_60(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_19_Greece = [Coefficient_a_Male_1_19_Greece PP(2)];
Coefficient_b_Male_1_19_Greece = [Coefficient_b_Male_1_19_Greece PP(1)];
% Age 61
X_data = (Male_data_61(:,1)/100).^c; % Height (m)
Y_data = Male_data_61(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_19_Greece = [Coefficient_a_Male_1_19_Greece PP(2)];
Coefficient_b_Male_1_19_Greece = [Coefficient_b_Male_1_19_Greece PP(1)];
% Age 62
X_data = (Male_data_62(:,1)/100).^c; % Height (m)
Y_data = Male_data_62(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_19_Greece = [Coefficient_a_Male_1_19_Greece PP(2)];
Coefficient_b_Male_1_19_Greece = [Coefficient_b_Male_1_19_Greece PP(1)];
% Age 63
X_data = (Male_data_63(:,1)/100).^c; % Height (m)
Y_data = Male_data_63(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_19_Greece = [Coefficient_a_Male_1_19_Greece PP(2)];
Coefficient_b_Male_1_19_Greece = [Coefficient_b_Male_1_19_Greece PP(1)];
% Age 64
X_data = (Male_data_64(:,1)/100).^c; % Height (m)
Y_data = Male_data_64(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_19_Greece = [Coefficient_a_Male_1_19_Greece PP(2)];
Coefficient_b_Male_1_19_Greece = [Coefficient_b_Male_1_19_Greece PP(1)];
% Age 65
X_data = (Male_data_65(:,1)/100).^c; % Height (m)
Y_data = Male_data_65(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_19_Greece = [Coefficient_a_Male_1_19_Greece PP(2)];
Coefficient_b_Male_1_19_Greece = [Coefficient_b_Male_1_19_Greece PP(1)];
% Age 66
X_data = (Male_data_66(:,1)/100).^c; % Height (m)
Y_data = Male_data_66(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_19_Greece = [Coefficient_a_Male_1_19_Greece PP(2)];
Coefficient_b_Male_1_19_Greece = [Coefficient_b_Male_1_19_Greece PP(1)];
% Age 67
X_data = (Male_data_67(:,1)/100).^c; % Height (m)
Y_data = Male_data_67(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_19_Greece = [Coefficient_a_Male_1_19_Greece PP(2)];
Coefficient_b_Male_1_19_Greece = [Coefficient_b_Male_1_19_Greece PP(1)];
% Age 68
X_data = (Male_data_68(:,1)/100).^c; % Height (m)
Y_data = Male_data_68(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_19_Greece = [Coefficient_a_Male_1_19_Greece PP(2)];
Coefficient_b_Male_1_19_Greece = [Coefficient_b_Male_1_19_Greece PP(1)];
% Age 69
X_data = (Male_data_69(:,1)/100).^c; % Height (m)
Y_data = Male_data_69(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_19_Greece = [Coefficient_a_Male_1_19_Greece PP(2)];
Coefficient_b_Male_1_19_Greece = [Coefficient_b_Male_1_19_Greece PP(1)];
% Age 70
X_data = (Male_data_70(:,1)/100).^c; % Height (m)
Y_data = Male_data_70(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_19_Greece = [Coefficient_a_Male_1_19_Greece PP(2)];
Coefficient_b_Male_1_19_Greece = [Coefficient_b_Male_1_19_Greece PP(1)];
% Age 71
X_data = (Male_data_71(:,1)/100).^c; % Height (m)
Y_data = Male_data_71(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_19_Greece = [Coefficient_a_Male_1_19_Greece PP(2)];
Coefficient_b_Male_1_19_Greece = [Coefficient_b_Male_1_19_Greece PP(1)];
% Age 72
X_data = (Male_data_72(:,1)/100).^c; % Height (m)
Y_data = Male_data_72(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_19_Greece = [Coefficient_a_Male_1_19_Greece PP(2)];
Coefficient_b_Male_1_19_Greece = [Coefficient_b_Male_1_19_Greece PP(1)];
% Age 73
X_data = (Male_data_73(:,1)/100).^c; % Height (m)
Y_data = Male_data_73(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_19_Greece = [Coefficient_a_Male_1_19_Greece PP(2)];
Coefficient_b_Male_1_19_Greece = [Coefficient_b_Male_1_19_Greece PP(1)];
% Age 74
X_data = (Male_data_74(:,1)/100).^c; % Height (m)
Y_data = Male_data_74(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_19_Greece = [Coefficient_a_Male_1_19_Greece PP(2)];
Coefficient_b_Male_1_19_Greece = [Coefficient_b_Male_1_19_Greece PP(1)];
% Age 75
X_data = (Male_data_75(:,1)/100).^c; % Height (m)
Y_data = Male_data_75(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_19_Greece = [Coefficient_a_Male_1_19_Greece PP(2)];
Coefficient_b_Male_1_19_Greece = [Coefficient_b_Male_1_19_Greece PP(1)];
% Age 76
X_data = (Male_data_76(:,1)/100).^c; % Height (m)
Y_data = Male_data_76(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_19_Greece = [Coefficient_a_Male_1_19_Greece PP(2)];
Coefficient_b_Male_1_19_Greece = [Coefficient_b_Male_1_19_Greece PP(1)];
% Age 77
X_data = (Male_data_77(:,1)/100).^c; % Height (m)
Y_data = Male_data_77(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_19_Greece = [Coefficient_a_Male_1_19_Greece PP(2)];
Coefficient_b_Male_1_19_Greece = [Coefficient_b_Male_1_19_Greece PP(1)];
% Age 78
X_data = (Male_data_78(:,1)/100).^c; % Height (m)
Y_data = Male_data_78(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_19_Greece = [Coefficient_a_Male_1_19_Greece PP(2)];
Coefficient_b_Male_1_19_Greece = [Coefficient_b_Male_1_19_Greece PP(1)];
% Age 79
X_data = (Male_data_79(:,1)/100).^c; % Height (m)
Y_data = Male_data_79(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_19_Greece = [Coefficient_a_Male_1_19_Greece PP(2)];
Coefficient_b_Male_1_19_Greece = [Coefficient_b_Male_1_19_Greece PP(1)];
% Age 80
X_data = (Male_data_80(:,1)/100).^c; % Height (m)
Y_data = Male_data_80(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_19_Greece = [Coefficient_a_Male_1_19_Greece PP(2)];
Coefficient_b_Male_1_19_Greece = [Coefficient_b_Male_1_19_Greece PP(1)];
% Age 81
X_data = (Male_data_81(:,1)/100).^c; % Height (m)
Y_data = Male_data_81(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_19_Greece = [Coefficient_a_Male_1_19_Greece PP(2)];
Coefficient_b_Male_1_19_Greece = [Coefficient_b_Male_1_19_Greece PP(1)];
% Age 82
X_data = (Male_data_82(:,1)/100).^c; % Height (m)
Y_data = Male_data_82(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_19_Greece = [Coefficient_a_Male_1_19_Greece PP(2)];
Coefficient_b_Male_1_19_Greece = [Coefficient_b_Male_1_19_Greece PP(1)];
% Age 83
X_data = (Male_data_83(:,1)/100).^c; % Height (m)
Y_data = Male_data_83(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_19_Greece = [Coefficient_a_Male_1_19_Greece PP(2)];
Coefficient_b_Male_1_19_Greece = [Coefficient_b_Male_1_19_Greece PP(1)];
% Age 84
X_data = (Male_data_84(:,1)/100).^c; % Height (m)
Y_data = Male_data_84(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_19_Greece = [Coefficient_a_Male_1_19_Greece PP(2)];
Coefficient_b_Male_1_19_Greece = [Coefficient_b_Male_1_19_Greece PP(1)];
% Age 85
X_data = (Male_data_85(:,1)/100).^c; % Height (m)
Y_data = Male_data_85(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_19_Greece = [Coefficient_a_Male_1_19_Greece PP(2)];
Coefficient_b_Male_1_19_Greece = [Coefficient_b_Male_1_19_Greece PP(1)];
% Age 86
X_data = (Male_data_86(:,1)/100).^c; % Height (m)
Y_data = Male_data_86(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_19_Greece = [Coefficient_a_Male_1_19_Greece PP(2)];
Coefficient_b_Male_1_19_Greece = [Coefficient_b_Male_1_19_Greece PP(1)];
% Age 87
X_data = (Male_data_87(:,1)/100).^c; % Height (m)
Y_data = Male_data_87(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_19_Greece = [Coefficient_a_Male_1_19_Greece PP(2)];
Coefficient_b_Male_1_19_Greece = [Coefficient_b_Male_1_19_Greece PP(1)];
% Age 88
X_data = (Male_data_88(:,1)/100).^c; % Height (m)
Y_data = Male_data_88(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_19_Greece = [Coefficient_a_Male_1_19_Greece PP(2)];
Coefficient_b_Male_1_19_Greece = [Coefficient_b_Male_1_19_Greece PP(1)];
% Age 89
X_data = (Male_data_89(:,1)/100).^c; % Height (m)
Y_data = Male_data_89(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_19_Greece = [Coefficient_a_Male_1_19_Greece PP(2)];
Coefficient_b_Male_1_19_Greece = [Coefficient_b_Male_1_19_Greece PP(1)];
% Age 90
X_data = (Male_data_90(:,1)/100).^c; % Height (m)
Y_data = Male_data_90(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_19_Greece = [Coefficient_a_Male_1_19_Greece PP(2)];
Coefficient_b_Male_1_19_Greece = [Coefficient_b_Male_1_19_Greece PP(1)];

%% 16_Italy
% Loading the data
Female_data = xlsread('16_Italy.xlsx','Female');
Male_data = xlsread('16_Italy.xlsx','Male');
% Grouping by age
Female_data_50 = []; % <= 50
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
Female_data_87 = []; % >=87

Male_data_50 = []; % <= 50
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
Male_data_87 = []; % >=87

% For Female
[M N] = size(Female_data); % No.	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Female_data(i,2) <= 50
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
    if Female_data(i,2) >= 87
        Female_data_87 = [Female_data_87; Female_data(i,3) Female_data(i,4)];
    end
end

% For Male
[M N] = size(Male_data); % No.	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Male_data(i,2) <= 50
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
    if Male_data(i,2) >= 87
        Male_data_87 = [Male_data_87; Male_data(i,3) Male_data(i,4)];
    end
end

% We calculate the coefficients of a and b in 1=a/Weight+b*Height for this
% dataset
Age_16_Italy = 50:90;
Coefficient_a_Female_1_16_Italy = [];
Coefficient_b_Female_1_16_Italy = [];
Coefficient_a_Male_1_16_Italy = [];
Coefficient_b_Male_1_16_Italy = [];

% For Female
% Age 50
X_data = (Female_data_50(:,1)/100).^c; % Height (m)
Y_data = Female_data_50(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_16_Italy = [Coefficient_a_Female_1_16_Italy PP(2)];
Coefficient_b_Female_1_16_Italy = [Coefficient_b_Female_1_16_Italy PP(1)];
% Age 51
X_data = (Female_data_51(:,1)/100).^c; % Height (m)
Y_data = Female_data_51(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_16_Italy = [Coefficient_a_Female_1_16_Italy PP(2)];
Coefficient_b_Female_1_16_Italy = [Coefficient_b_Female_1_16_Italy PP(1)];
% Age 52
X_data = (Female_data_52(:,1)/100).^c; % Height (m)
Y_data = Female_data_52(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_16_Italy = [Coefficient_a_Female_1_16_Italy PP(2)];
Coefficient_b_Female_1_16_Italy = [Coefficient_b_Female_1_16_Italy PP(1)];
% Age 53
X_data = (Female_data_53(:,1)/100).^c; % Height (m)
Y_data = Female_data_53(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_16_Italy = [Coefficient_a_Female_1_16_Italy PP(2)];
Coefficient_b_Female_1_16_Italy = [Coefficient_b_Female_1_16_Italy PP(1)];
% Age 54
X_data = (Female_data_54(:,1)/100).^c; % Height (m)
Y_data = Female_data_54(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_16_Italy = [Coefficient_a_Female_1_16_Italy PP(2)];
Coefficient_b_Female_1_16_Italy = [Coefficient_b_Female_1_16_Italy PP(1)];
% Age 55
X_data = (Female_data_55(:,1)/100).^c; % Height (m)
Y_data = Female_data_55(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_16_Italy = [Coefficient_a_Female_1_16_Italy PP(2)];
Coefficient_b_Female_1_16_Italy = [Coefficient_b_Female_1_16_Italy PP(1)];
% Age 56
X_data = (Female_data_56(:,1)/100).^c; % Height (m)
Y_data = Female_data_56(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_16_Italy = [Coefficient_a_Female_1_16_Italy PP(2)];
Coefficient_b_Female_1_16_Italy = [Coefficient_b_Female_1_16_Italy PP(1)];
% Age 57
X_data = (Female_data_57(:,1)/100).^c; % Height (m)
Y_data = Female_data_57(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_16_Italy = [Coefficient_a_Female_1_16_Italy PP(2)];
Coefficient_b_Female_1_16_Italy = [Coefficient_b_Female_1_16_Italy PP(1)];
% Age 58
X_data = (Female_data_58(:,1)/100).^c; % Height (m)
Y_data = Female_data_58(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_16_Italy = [Coefficient_a_Female_1_16_Italy PP(2)];
Coefficient_b_Female_1_16_Italy = [Coefficient_b_Female_1_16_Italy PP(1)];
% Age 59
X_data = (Female_data_59(:,1)/100).^c; % Height (m)
Y_data = Female_data_59(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_16_Italy = [Coefficient_a_Female_1_16_Italy PP(2)];
Coefficient_b_Female_1_16_Italy = [Coefficient_b_Female_1_16_Italy PP(1)];
% Age 60
X_data = (Female_data_60(:,1)/100).^c; % Height (m)
Y_data = Female_data_60(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_16_Italy = [Coefficient_a_Female_1_16_Italy PP(2)];
Coefficient_b_Female_1_16_Italy = [Coefficient_b_Female_1_16_Italy PP(1)];
% Age 61
X_data = (Female_data_61(:,1)/100).^c; % Height (m)
Y_data = Female_data_61(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_16_Italy = [Coefficient_a_Female_1_16_Italy PP(2)];
Coefficient_b_Female_1_16_Italy = [Coefficient_b_Female_1_16_Italy PP(1)];
% Age 62
X_data = (Female_data_62(:,1)/100).^c; % Height (m)
Y_data = Female_data_62(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_16_Italy = [Coefficient_a_Female_1_16_Italy PP(2)];
Coefficient_b_Female_1_16_Italy = [Coefficient_b_Female_1_16_Italy PP(1)];
% Age 63
X_data = (Female_data_63(:,1)/100).^c; % Height (m)
Y_data = Female_data_63(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_16_Italy = [Coefficient_a_Female_1_16_Italy PP(2)];
Coefficient_b_Female_1_16_Italy = [Coefficient_b_Female_1_16_Italy PP(1)];
% Age 64
X_data = (Female_data_64(:,1)/100).^c; % Height (m)
Y_data = Female_data_64(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_16_Italy = [Coefficient_a_Female_1_16_Italy PP(2)];
Coefficient_b_Female_1_16_Italy = [Coefficient_b_Female_1_16_Italy PP(1)];
% Age 65
X_data = (Female_data_65(:,1)/100).^c; % Height (m)
Y_data = Female_data_65(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_16_Italy = [Coefficient_a_Female_1_16_Italy PP(2)];
Coefficient_b_Female_1_16_Italy = [Coefficient_b_Female_1_16_Italy PP(1)];
% Age 66
X_data = (Female_data_66(:,1)/100).^c; % Height (m)
Y_data = Female_data_66(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_16_Italy = [Coefficient_a_Female_1_16_Italy PP(2)];
Coefficient_b_Female_1_16_Italy = [Coefficient_b_Female_1_16_Italy PP(1)];
% Age 67
X_data = (Female_data_67(:,1)/100).^c; % Height (m)
Y_data = Female_data_67(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_16_Italy = [Coefficient_a_Female_1_16_Italy PP(2)];
Coefficient_b_Female_1_16_Italy = [Coefficient_b_Female_1_16_Italy PP(1)];
% Age 68
X_data = (Female_data_68(:,1)/100).^c; % Height (m)
Y_data = Female_data_68(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_16_Italy = [Coefficient_a_Female_1_16_Italy PP(2)];
Coefficient_b_Female_1_16_Italy = [Coefficient_b_Female_1_16_Italy PP(1)];
% Age 69
X_data = (Female_data_69(:,1)/100).^c; % Height (m)
Y_data = Female_data_69(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_16_Italy = [Coefficient_a_Female_1_16_Italy PP(2)];
Coefficient_b_Female_1_16_Italy = [Coefficient_b_Female_1_16_Italy PP(1)];
% Age 70
X_data = (Female_data_70(:,1)/100).^c; % Height (m)
Y_data = Female_data_70(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_16_Italy = [Coefficient_a_Female_1_16_Italy PP(2)];
Coefficient_b_Female_1_16_Italy = [Coefficient_b_Female_1_16_Italy PP(1)];
% Age 71
X_data = (Female_data_71(:,1)/100).^c; % Height (m)
Y_data = Female_data_71(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_16_Italy = [Coefficient_a_Female_1_16_Italy PP(2)];
Coefficient_b_Female_1_16_Italy = [Coefficient_b_Female_1_16_Italy PP(1)];
% Age 72
X_data = (Female_data_72(:,1)/100).^c; % Height (m)
Y_data = Female_data_72(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_16_Italy = [Coefficient_a_Female_1_16_Italy PP(2)];
Coefficient_b_Female_1_16_Italy = [Coefficient_b_Female_1_16_Italy PP(1)];
% Age 73
X_data = (Female_data_73(:,1)/100).^c; % Height (m)
Y_data = Female_data_73(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_16_Italy = [Coefficient_a_Female_1_16_Italy PP(2)];
Coefficient_b_Female_1_16_Italy = [Coefficient_b_Female_1_16_Italy PP(1)];
% Age 74
X_data = (Female_data_74(:,1)/100).^c; % Height (m)
Y_data = Female_data_74(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_16_Italy = [Coefficient_a_Female_1_16_Italy PP(2)];
Coefficient_b_Female_1_16_Italy = [Coefficient_b_Female_1_16_Italy PP(1)];
% Age 75
X_data = (Female_data_75(:,1)/100).^c; % Height (m)
Y_data = Female_data_75(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_16_Italy = [Coefficient_a_Female_1_16_Italy PP(2)];
Coefficient_b_Female_1_16_Italy = [Coefficient_b_Female_1_16_Italy PP(1)];
% Age 76
X_data = (Female_data_76(:,1)/100).^c; % Height (m)
Y_data = Female_data_76(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_16_Italy = [Coefficient_a_Female_1_16_Italy PP(2)];
Coefficient_b_Female_1_16_Italy = [Coefficient_b_Female_1_16_Italy PP(1)];
% Age 77
X_data = (Female_data_77(:,1)/100).^c; % Height (m)
Y_data = Female_data_77(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_16_Italy = [Coefficient_a_Female_1_16_Italy PP(2)];
Coefficient_b_Female_1_16_Italy = [Coefficient_b_Female_1_16_Italy PP(1)];
% Age 78
X_data = (Female_data_78(:,1)/100).^c; % Height (m)
Y_data = Female_data_78(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_16_Italy = [Coefficient_a_Female_1_16_Italy PP(2)];
Coefficient_b_Female_1_16_Italy = [Coefficient_b_Female_1_16_Italy PP(1)];
% Age 79
X_data = (Female_data_79(:,1)/100).^c; % Height (m)
Y_data = Female_data_79(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_16_Italy = [Coefficient_a_Female_1_16_Italy PP(2)];
Coefficient_b_Female_1_16_Italy = [Coefficient_b_Female_1_16_Italy PP(1)];
% Age 80
X_data = (Female_data_80(:,1)/100).^c; % Height (m)
Y_data = Female_data_80(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_16_Italy = [Coefficient_a_Female_1_16_Italy PP(2)];
Coefficient_b_Female_1_16_Italy = [Coefficient_b_Female_1_16_Italy PP(1)];
% Age 81
X_data = (Female_data_81(:,1)/100).^c; % Height (m)
Y_data = Female_data_81(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_16_Italy = [Coefficient_a_Female_1_16_Italy PP(2)];
Coefficient_b_Female_1_16_Italy = [Coefficient_b_Female_1_16_Italy PP(1)];
% Age 82
X_data = (Female_data_82(:,1)/100).^c; % Height (m)
Y_data = Female_data_82(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_16_Italy = [Coefficient_a_Female_1_16_Italy PP(2)];
Coefficient_b_Female_1_16_Italy = [Coefficient_b_Female_1_16_Italy PP(1)];
% Age 83
X_data = (Female_data_83(:,1)/100).^c; % Height (m)
Y_data = Female_data_83(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_16_Italy = [Coefficient_a_Female_1_16_Italy PP(2)];
Coefficient_b_Female_1_16_Italy = [Coefficient_b_Female_1_16_Italy PP(1)];
% Age 84
X_data = (Female_data_84(:,1)/100).^c; % Height (m)
Y_data = Female_data_84(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_16_Italy = [Coefficient_a_Female_1_16_Italy PP(2)];
Coefficient_b_Female_1_16_Italy = [Coefficient_b_Female_1_16_Italy PP(1)];
% Age 85
X_data = (Female_data_85(:,1)/100).^c; % Height (m)
Y_data = Female_data_85(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_16_Italy = [Coefficient_a_Female_1_16_Italy PP(2)];
Coefficient_b_Female_1_16_Italy = [Coefficient_b_Female_1_16_Italy PP(1)];
% Age 86
X_data = (Female_data_86(:,1)/100).^c; % Height (m)
Y_data = Female_data_86(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_16_Italy = [Coefficient_a_Female_1_16_Italy PP(2)];
Coefficient_b_Female_1_16_Italy = [Coefficient_b_Female_1_16_Italy PP(1)];
% Age 87
X_data = (Female_data_87(:,1)/100).^c; % Height (m)
Y_data = Female_data_87(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_16_Italy = [Coefficient_a_Female_1_16_Italy PP(2)];
Coefficient_b_Female_1_16_Italy = [Coefficient_b_Female_1_16_Italy PP(1)];
% Age 88
X_data = (Female_data_88(:,1)/100).^c; % Height (m)
Y_data = Female_data_88(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_16_Italy = [Coefficient_a_Female_1_16_Italy PP(2)];
Coefficient_b_Female_1_16_Italy = [Coefficient_b_Female_1_16_Italy PP(1)];
% Age 89
X_data = (Female_data_89(:,1)/100).^c; % Height (m)
Y_data = Female_data_89(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_16_Italy = [Coefficient_a_Female_1_16_Italy PP(2)];
Coefficient_b_Female_1_16_Italy = [Coefficient_b_Female_1_16_Italy PP(1)];
% Age 90
X_data = (Female_data_90(:,1)/100).^c; % Height (m)
Y_data = Female_data_90(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_16_Italy = [Coefficient_a_Female_1_16_Italy PP(2)];
Coefficient_b_Female_1_16_Italy = [Coefficient_b_Female_1_16_Italy PP(1)];

% For Male
% Age 50
X_data = (Male_data_50(:,1)/100).^c; % Height (m)
Y_data = Male_data_50(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_16_Italy = [Coefficient_a_Male_1_16_Italy PP(2)];
Coefficient_b_Male_1_16_Italy = [Coefficient_b_Male_1_16_Italy PP(1)];
% Age 51
X_data = (Male_data_51(:,1)/100).^c; % Height (m)
Y_data = Male_data_51(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_16_Italy = [Coefficient_a_Male_1_16_Italy PP(2)];
Coefficient_b_Male_1_16_Italy = [Coefficient_b_Male_1_16_Italy PP(1)];
% Age 52
X_data = (Male_data_52(:,1)/100).^c; % Height (m)
Y_data = Male_data_52(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_16_Italy = [Coefficient_a_Male_1_16_Italy PP(2)];
Coefficient_b_Male_1_16_Italy = [Coefficient_b_Male_1_16_Italy PP(1)];
% Age 53
X_data = (Male_data_53(:,1)/100).^c; % Height (m)
Y_data = Male_data_53(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_16_Italy = [Coefficient_a_Male_1_16_Italy PP(2)];
Coefficient_b_Male_1_16_Italy = [Coefficient_b_Male_1_16_Italy PP(1)];
% Age 54
X_data = (Male_data_54(:,1)/100).^c; % Height (m)
Y_data = Male_data_54(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_16_Italy = [Coefficient_a_Male_1_16_Italy PP(2)];
Coefficient_b_Male_1_16_Italy = [Coefficient_b_Male_1_16_Italy PP(1)];
% Age 55
X_data = (Male_data_55(:,1)/100).^c; % Height (m)
Y_data = Male_data_55(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_16_Italy = [Coefficient_a_Male_1_16_Italy PP(2)];
Coefficient_b_Male_1_16_Italy = [Coefficient_b_Male_1_16_Italy PP(1)];
% Age 56
X_data = (Male_data_56(:,1)/100).^c; % Height (m)
Y_data = Male_data_56(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_16_Italy = [Coefficient_a_Male_1_16_Italy PP(2)];
Coefficient_b_Male_1_16_Italy = [Coefficient_b_Male_1_16_Italy PP(1)];
% Age 57
X_data = (Male_data_57(:,1)/100).^c; % Height (m)
Y_data = Male_data_57(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_16_Italy = [Coefficient_a_Male_1_16_Italy PP(2)];
Coefficient_b_Male_1_16_Italy = [Coefficient_b_Male_1_16_Italy PP(1)];
% Age 58
X_data = (Male_data_58(:,1)/100).^c; % Height (m)
Y_data = Male_data_58(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_16_Italy = [Coefficient_a_Male_1_16_Italy PP(2)];
Coefficient_b_Male_1_16_Italy = [Coefficient_b_Male_1_16_Italy PP(1)];
% Age 59
X_data = (Male_data_59(:,1)/100).^c; % Height (m)
Y_data = Male_data_59(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_16_Italy = [Coefficient_a_Male_1_16_Italy PP(2)];
Coefficient_b_Male_1_16_Italy = [Coefficient_b_Male_1_16_Italy PP(1)];
% Age 60
X_data = (Male_data_60(:,1)/100).^c; % Height (m)
Y_data = Male_data_60(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_16_Italy = [Coefficient_a_Male_1_16_Italy PP(2)];
Coefficient_b_Male_1_16_Italy = [Coefficient_b_Male_1_16_Italy PP(1)];
% Age 61
X_data = (Male_data_61(:,1)/100).^c; % Height (m)
Y_data = Male_data_61(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_16_Italy = [Coefficient_a_Male_1_16_Italy PP(2)];
Coefficient_b_Male_1_16_Italy = [Coefficient_b_Male_1_16_Italy PP(1)];
% Age 62
X_data = (Male_data_62(:,1)/100).^c; % Height (m)
Y_data = Male_data_62(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_16_Italy = [Coefficient_a_Male_1_16_Italy PP(2)];
Coefficient_b_Male_1_16_Italy = [Coefficient_b_Male_1_16_Italy PP(1)];
% Age 63
X_data = (Male_data_63(:,1)/100).^c; % Height (m)
Y_data = Male_data_63(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_16_Italy = [Coefficient_a_Male_1_16_Italy PP(2)];
Coefficient_b_Male_1_16_Italy = [Coefficient_b_Male_1_16_Italy PP(1)];
% Age 64
X_data = (Male_data_64(:,1)/100).^c; % Height (m)
Y_data = Male_data_64(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_16_Italy = [Coefficient_a_Male_1_16_Italy PP(2)];
Coefficient_b_Male_1_16_Italy = [Coefficient_b_Male_1_16_Italy PP(1)];
% Age 65
X_data = (Male_data_65(:,1)/100).^c; % Height (m)
Y_data = Male_data_65(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_16_Italy = [Coefficient_a_Male_1_16_Italy PP(2)];
Coefficient_b_Male_1_16_Italy = [Coefficient_b_Male_1_16_Italy PP(1)];
% Age 66
X_data = (Male_data_66(:,1)/100).^c; % Height (m)
Y_data = Male_data_66(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_16_Italy = [Coefficient_a_Male_1_16_Italy PP(2)];
Coefficient_b_Male_1_16_Italy = [Coefficient_b_Male_1_16_Italy PP(1)];
% Age 67
X_data = (Male_data_67(:,1)/100).^c; % Height (m)
Y_data = Male_data_67(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_16_Italy = [Coefficient_a_Male_1_16_Italy PP(2)];
Coefficient_b_Male_1_16_Italy = [Coefficient_b_Male_1_16_Italy PP(1)];
% Age 68
X_data = (Male_data_68(:,1)/100).^c; % Height (m)
Y_data = Male_data_68(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_16_Italy = [Coefficient_a_Male_1_16_Italy PP(2)];
Coefficient_b_Male_1_16_Italy = [Coefficient_b_Male_1_16_Italy PP(1)];
% Age 69
X_data = (Male_data_69(:,1)/100).^c; % Height (m)
Y_data = Male_data_69(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_16_Italy = [Coefficient_a_Male_1_16_Italy PP(2)];
Coefficient_b_Male_1_16_Italy = [Coefficient_b_Male_1_16_Italy PP(1)];
% Age 70
X_data = (Male_data_70(:,1)/100).^c; % Height (m)
Y_data = Male_data_70(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_16_Italy = [Coefficient_a_Male_1_16_Italy PP(2)];
Coefficient_b_Male_1_16_Italy = [Coefficient_b_Male_1_16_Italy PP(1)];
% Age 71
X_data = (Male_data_71(:,1)/100).^c; % Height (m)
Y_data = Male_data_71(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_16_Italy = [Coefficient_a_Male_1_16_Italy PP(2)];
Coefficient_b_Male_1_16_Italy = [Coefficient_b_Male_1_16_Italy PP(1)];
% Age 72
X_data = (Male_data_72(:,1)/100).^c; % Height (m)
Y_data = Male_data_72(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_16_Italy = [Coefficient_a_Male_1_16_Italy PP(2)];
Coefficient_b_Male_1_16_Italy = [Coefficient_b_Male_1_16_Italy PP(1)];
% Age 73
X_data = (Male_data_73(:,1)/100).^c; % Height (m)
Y_data = Male_data_73(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_16_Italy = [Coefficient_a_Male_1_16_Italy PP(2)];
Coefficient_b_Male_1_16_Italy = [Coefficient_b_Male_1_16_Italy PP(1)];
% Age 74
X_data = (Male_data_74(:,1)/100).^c; % Height (m)
Y_data = Male_data_74(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_16_Italy = [Coefficient_a_Male_1_16_Italy PP(2)];
Coefficient_b_Male_1_16_Italy = [Coefficient_b_Male_1_16_Italy PP(1)];
% Age 75
X_data = (Male_data_75(:,1)/100).^c; % Height (m)
Y_data = Male_data_75(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_16_Italy = [Coefficient_a_Male_1_16_Italy PP(2)];
Coefficient_b_Male_1_16_Italy = [Coefficient_b_Male_1_16_Italy PP(1)];
% Age 76
X_data = (Male_data_76(:,1)/100).^c; % Height (m)
Y_data = Male_data_76(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_16_Italy = [Coefficient_a_Male_1_16_Italy PP(2)];
Coefficient_b_Male_1_16_Italy = [Coefficient_b_Male_1_16_Italy PP(1)];
% Age 77
X_data = (Male_data_77(:,1)/100).^c; % Height (m)
Y_data = Male_data_77(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_16_Italy = [Coefficient_a_Male_1_16_Italy PP(2)];
Coefficient_b_Male_1_16_Italy = [Coefficient_b_Male_1_16_Italy PP(1)];
% Age 78
X_data = (Male_data_78(:,1)/100).^c; % Height (m)
Y_data = Male_data_78(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_16_Italy = [Coefficient_a_Male_1_16_Italy PP(2)];
Coefficient_b_Male_1_16_Italy = [Coefficient_b_Male_1_16_Italy PP(1)];
% Age 79
X_data = (Male_data_79(:,1)/100).^c; % Height (m)
Y_data = Male_data_79(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_16_Italy = [Coefficient_a_Male_1_16_Italy PP(2)];
Coefficient_b_Male_1_16_Italy = [Coefficient_b_Male_1_16_Italy PP(1)];
% Age 80
X_data = (Male_data_80(:,1)/100).^c; % Height (m)
Y_data = Male_data_80(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_16_Italy = [Coefficient_a_Male_1_16_Italy PP(2)];
Coefficient_b_Male_1_16_Italy = [Coefficient_b_Male_1_16_Italy PP(1)];
% Age 81
X_data = (Male_data_81(:,1)/100).^c; % Height (m)
Y_data = Male_data_81(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_16_Italy = [Coefficient_a_Male_1_16_Italy PP(2)];
Coefficient_b_Male_1_16_Italy = [Coefficient_b_Male_1_16_Italy PP(1)];
% Age 82
X_data = (Male_data_82(:,1)/100).^c; % Height (m)
Y_data = Male_data_82(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_16_Italy = [Coefficient_a_Male_1_16_Italy PP(2)];
Coefficient_b_Male_1_16_Italy = [Coefficient_b_Male_1_16_Italy PP(1)];
% Age 83
X_data = (Male_data_83(:,1)/100).^c; % Height (m)
Y_data = Male_data_83(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_16_Italy = [Coefficient_a_Male_1_16_Italy PP(2)];
Coefficient_b_Male_1_16_Italy = [Coefficient_b_Male_1_16_Italy PP(1)];
% Age 84
X_data = (Male_data_84(:,1)/100).^c; % Height (m)
Y_data = Male_data_84(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_16_Italy = [Coefficient_a_Male_1_16_Italy PP(2)];
Coefficient_b_Male_1_16_Italy = [Coefficient_b_Male_1_16_Italy PP(1)];
% Age 85
X_data = (Male_data_85(:,1)/100).^c; % Height (m)
Y_data = Male_data_85(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_16_Italy = [Coefficient_a_Male_1_16_Italy PP(2)];
Coefficient_b_Male_1_16_Italy = [Coefficient_b_Male_1_16_Italy PP(1)];
% Age 86
X_data = (Male_data_86(:,1)/100).^c; % Height (m)
Y_data = Male_data_86(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_16_Italy = [Coefficient_a_Male_1_16_Italy PP(2)];
Coefficient_b_Male_1_16_Italy = [Coefficient_b_Male_1_16_Italy PP(1)];
% Age 87
X_data = (Male_data_87(:,1)/100).^c; % Height (m)
Y_data = Male_data_87(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_16_Italy = [Coefficient_a_Male_1_16_Italy PP(2)];
Coefficient_b_Male_1_16_Italy = [Coefficient_b_Male_1_16_Italy PP(1)];
% Age 88
X_data = (Male_data_88(:,1)/100).^c; % Height (m)
Y_data = Male_data_88(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_16_Italy = [Coefficient_a_Male_1_16_Italy PP(2)];
Coefficient_b_Male_1_16_Italy = [Coefficient_b_Male_1_16_Italy PP(1)];
% Age 89
X_data = (Male_data_89(:,1)/100).^c; % Height (m)
Y_data = Male_data_89(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_16_Italy = [Coefficient_a_Male_1_16_Italy PP(2)];
Coefficient_b_Male_1_16_Italy = [Coefficient_b_Male_1_16_Italy PP(1)];
% Age 90
X_data = (Male_data_90(:,1)/100).^c; % Height (m)
Y_data = Male_data_90(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_16_Italy = [Coefficient_a_Male_1_16_Italy PP(2)];
Coefficient_b_Male_1_16_Italy = [Coefficient_b_Male_1_16_Italy PP(1)];

%% 15_Spain
% Loading the data
Female_data = xlsread('15_Spain.xlsx','Female');
Male_data = xlsread('15_Spain.xlsx','Male');
% Grouping by age
Female_data_50 = []; % <= 50
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
Female_data_87 = []; % >=87

Male_data_50 = []; % <= 50
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
Male_data_87 = []; % >=87

% For Female
[M N] = size(Female_data); % No.	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Female_data(i,2) <= 50
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
    if Female_data(i,2) >= 87
        Female_data_87 = [Female_data_87; Female_data(i,3) Female_data(i,4)];
    end
end

% For Male
[M N] = size(Male_data); % No.	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Male_data(i,2) <= 50
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
    if Male_data(i,2) >= 87
        Male_data_87 = [Male_data_87; Male_data(i,3) Male_data(i,4)];
    end
end

% We calculate the coefficients of a and b in 1=a/Weight+b*Height for this
% dataset
Age_15_Spain = 50:90;
Coefficient_a_Female_1_15_Spain = [];
Coefficient_b_Female_1_15_Spain = [];
Coefficient_a_Male_1_15_Spain = [];
Coefficient_b_Male_1_15_Spain = [];

% For Female
% Age 50
X_data = (Female_data_50(:,1)/100).^c; % Height (m)
Y_data = Female_data_50(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_15_Spain = [Coefficient_a_Female_1_15_Spain PP(2)];
Coefficient_b_Female_1_15_Spain = [Coefficient_b_Female_1_15_Spain PP(1)];
% Age 51
X_data = (Female_data_51(:,1)/100).^c; % Height (m)
Y_data = Female_data_51(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_15_Spain = [Coefficient_a_Female_1_15_Spain PP(2)];
Coefficient_b_Female_1_15_Spain = [Coefficient_b_Female_1_15_Spain PP(1)];
% Age 52
X_data = (Female_data_52(:,1)/100).^c; % Height (m)
Y_data = Female_data_52(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_15_Spain = [Coefficient_a_Female_1_15_Spain PP(2)];
Coefficient_b_Female_1_15_Spain = [Coefficient_b_Female_1_15_Spain PP(1)];
% Age 53
X_data = (Female_data_53(:,1)/100).^c; % Height (m)
Y_data = Female_data_53(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_15_Spain = [Coefficient_a_Female_1_15_Spain PP(2)];
Coefficient_b_Female_1_15_Spain = [Coefficient_b_Female_1_15_Spain PP(1)];
% Age 54
X_data = (Female_data_54(:,1)/100).^c; % Height (m)
Y_data = Female_data_54(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_15_Spain = [Coefficient_a_Female_1_15_Spain PP(2)];
Coefficient_b_Female_1_15_Spain = [Coefficient_b_Female_1_15_Spain PP(1)];
% Age 55
X_data = (Female_data_55(:,1)/100).^c; % Height (m)
Y_data = Female_data_55(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_15_Spain = [Coefficient_a_Female_1_15_Spain PP(2)];
Coefficient_b_Female_1_15_Spain = [Coefficient_b_Female_1_15_Spain PP(1)];
% Age 56
X_data = (Female_data_56(:,1)/100).^c; % Height (m)
Y_data = Female_data_56(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_15_Spain = [Coefficient_a_Female_1_15_Spain PP(2)];
Coefficient_b_Female_1_15_Spain = [Coefficient_b_Female_1_15_Spain PP(1)];
% Age 57
X_data = (Female_data_57(:,1)/100).^c; % Height (m)
Y_data = Female_data_57(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_15_Spain = [Coefficient_a_Female_1_15_Spain PP(2)];
Coefficient_b_Female_1_15_Spain = [Coefficient_b_Female_1_15_Spain PP(1)];
% Age 58
X_data = (Female_data_58(:,1)/100).^c; % Height (m)
Y_data = Female_data_58(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_15_Spain = [Coefficient_a_Female_1_15_Spain PP(2)];
Coefficient_b_Female_1_15_Spain = [Coefficient_b_Female_1_15_Spain PP(1)];
% Age 59
X_data = (Female_data_59(:,1)/100).^c; % Height (m)
Y_data = Female_data_59(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_15_Spain = [Coefficient_a_Female_1_15_Spain PP(2)];
Coefficient_b_Female_1_15_Spain = [Coefficient_b_Female_1_15_Spain PP(1)];
% Age 60
X_data = (Female_data_60(:,1)/100).^c; % Height (m)
Y_data = Female_data_60(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_15_Spain = [Coefficient_a_Female_1_15_Spain PP(2)];
Coefficient_b_Female_1_15_Spain = [Coefficient_b_Female_1_15_Spain PP(1)];
% Age 61
X_data = (Female_data_61(:,1)/100).^c; % Height (m)
Y_data = Female_data_61(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_15_Spain = [Coefficient_a_Female_1_15_Spain PP(2)];
Coefficient_b_Female_1_15_Spain = [Coefficient_b_Female_1_15_Spain PP(1)];
% Age 62
X_data = (Female_data_62(:,1)/100).^c; % Height (m)
Y_data = Female_data_62(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_15_Spain = [Coefficient_a_Female_1_15_Spain PP(2)];
Coefficient_b_Female_1_15_Spain = [Coefficient_b_Female_1_15_Spain PP(1)];
% Age 63
X_data = (Female_data_63(:,1)/100).^c; % Height (m)
Y_data = Female_data_63(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_15_Spain = [Coefficient_a_Female_1_15_Spain PP(2)];
Coefficient_b_Female_1_15_Spain = [Coefficient_b_Female_1_15_Spain PP(1)];
% Age 64
X_data = (Female_data_64(:,1)/100).^c; % Height (m)
Y_data = Female_data_64(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_15_Spain = [Coefficient_a_Female_1_15_Spain PP(2)];
Coefficient_b_Female_1_15_Spain = [Coefficient_b_Female_1_15_Spain PP(1)];
% Age 65
X_data = (Female_data_65(:,1)/100).^c; % Height (m)
Y_data = Female_data_65(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_15_Spain = [Coefficient_a_Female_1_15_Spain PP(2)];
Coefficient_b_Female_1_15_Spain = [Coefficient_b_Female_1_15_Spain PP(1)];
% Age 66
X_data = (Female_data_66(:,1)/100).^c; % Height (m)
Y_data = Female_data_66(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_15_Spain = [Coefficient_a_Female_1_15_Spain PP(2)];
Coefficient_b_Female_1_15_Spain = [Coefficient_b_Female_1_15_Spain PP(1)];
% Age 67
X_data = (Female_data_67(:,1)/100).^c; % Height (m)
Y_data = Female_data_67(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_15_Spain = [Coefficient_a_Female_1_15_Spain PP(2)];
Coefficient_b_Female_1_15_Spain = [Coefficient_b_Female_1_15_Spain PP(1)];
% Age 68
X_data = (Female_data_68(:,1)/100).^c; % Height (m)
Y_data = Female_data_68(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_15_Spain = [Coefficient_a_Female_1_15_Spain PP(2)];
Coefficient_b_Female_1_15_Spain = [Coefficient_b_Female_1_15_Spain PP(1)];
% Age 69
X_data = (Female_data_69(:,1)/100).^c; % Height (m)
Y_data = Female_data_69(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_15_Spain = [Coefficient_a_Female_1_15_Spain PP(2)];
Coefficient_b_Female_1_15_Spain = [Coefficient_b_Female_1_15_Spain PP(1)];
% Age 70
X_data = (Female_data_70(:,1)/100).^c; % Height (m)
Y_data = Female_data_70(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_15_Spain = [Coefficient_a_Female_1_15_Spain PP(2)];
Coefficient_b_Female_1_15_Spain = [Coefficient_b_Female_1_15_Spain PP(1)];
% Age 71
X_data = (Female_data_71(:,1)/100).^c; % Height (m)
Y_data = Female_data_71(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_15_Spain = [Coefficient_a_Female_1_15_Spain PP(2)];
Coefficient_b_Female_1_15_Spain = [Coefficient_b_Female_1_15_Spain PP(1)];
% Age 72
X_data = (Female_data_72(:,1)/100).^c; % Height (m)
Y_data = Female_data_72(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_15_Spain = [Coefficient_a_Female_1_15_Spain PP(2)];
Coefficient_b_Female_1_15_Spain = [Coefficient_b_Female_1_15_Spain PP(1)];
% Age 73
X_data = (Female_data_73(:,1)/100).^c; % Height (m)
Y_data = Female_data_73(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_15_Spain = [Coefficient_a_Female_1_15_Spain PP(2)];
Coefficient_b_Female_1_15_Spain = [Coefficient_b_Female_1_15_Spain PP(1)];
% Age 74
X_data = (Female_data_74(:,1)/100).^c; % Height (m)
Y_data = Female_data_74(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_15_Spain = [Coefficient_a_Female_1_15_Spain PP(2)];
Coefficient_b_Female_1_15_Spain = [Coefficient_b_Female_1_15_Spain PP(1)];
% Age 75
X_data = (Female_data_75(:,1)/100).^c; % Height (m)
Y_data = Female_data_75(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_15_Spain = [Coefficient_a_Female_1_15_Spain PP(2)];
Coefficient_b_Female_1_15_Spain = [Coefficient_b_Female_1_15_Spain PP(1)];
% Age 76
X_data = (Female_data_76(:,1)/100).^c; % Height (m)
Y_data = Female_data_76(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_15_Spain = [Coefficient_a_Female_1_15_Spain PP(2)];
Coefficient_b_Female_1_15_Spain = [Coefficient_b_Female_1_15_Spain PP(1)];
% Age 77
X_data = (Female_data_77(:,1)/100).^c; % Height (m)
Y_data = Female_data_77(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_15_Spain = [Coefficient_a_Female_1_15_Spain PP(2)];
Coefficient_b_Female_1_15_Spain = [Coefficient_b_Female_1_15_Spain PP(1)];
% Age 78
X_data = (Female_data_78(:,1)/100).^c; % Height (m)
Y_data = Female_data_78(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_15_Spain = [Coefficient_a_Female_1_15_Spain PP(2)];
Coefficient_b_Female_1_15_Spain = [Coefficient_b_Female_1_15_Spain PP(1)];
% Age 79
X_data = (Female_data_79(:,1)/100).^c; % Height (m)
Y_data = Female_data_79(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_15_Spain = [Coefficient_a_Female_1_15_Spain PP(2)];
Coefficient_b_Female_1_15_Spain = [Coefficient_b_Female_1_15_Spain PP(1)];
% Age 80
X_data = (Female_data_80(:,1)/100).^c; % Height (m)
Y_data = Female_data_80(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_15_Spain = [Coefficient_a_Female_1_15_Spain PP(2)];
Coefficient_b_Female_1_15_Spain = [Coefficient_b_Female_1_15_Spain PP(1)];
% Age 81
X_data = (Female_data_81(:,1)/100).^c; % Height (m)
Y_data = Female_data_81(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_15_Spain = [Coefficient_a_Female_1_15_Spain PP(2)];
Coefficient_b_Female_1_15_Spain = [Coefficient_b_Female_1_15_Spain PP(1)];
% Age 82
X_data = (Female_data_82(:,1)/100).^c; % Height (m)
Y_data = Female_data_82(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_15_Spain = [Coefficient_a_Female_1_15_Spain PP(2)];
Coefficient_b_Female_1_15_Spain = [Coefficient_b_Female_1_15_Spain PP(1)];
% Age 83
X_data = (Female_data_83(:,1)/100).^c; % Height (m)
Y_data = Female_data_83(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_15_Spain = [Coefficient_a_Female_1_15_Spain PP(2)];
Coefficient_b_Female_1_15_Spain = [Coefficient_b_Female_1_15_Spain PP(1)];
% Age 84
X_data = (Female_data_84(:,1)/100).^c; % Height (m)
Y_data = Female_data_84(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_15_Spain = [Coefficient_a_Female_1_15_Spain PP(2)];
Coefficient_b_Female_1_15_Spain = [Coefficient_b_Female_1_15_Spain PP(1)];
% Age 85
X_data = (Female_data_85(:,1)/100).^c; % Height (m)
Y_data = Female_data_85(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_15_Spain = [Coefficient_a_Female_1_15_Spain PP(2)];
Coefficient_b_Female_1_15_Spain = [Coefficient_b_Female_1_15_Spain PP(1)];
% Age 86
X_data = (Female_data_86(:,1)/100).^c; % Height (m)
Y_data = Female_data_86(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_15_Spain = [Coefficient_a_Female_1_15_Spain PP(2)];
Coefficient_b_Female_1_15_Spain = [Coefficient_b_Female_1_15_Spain PP(1)];
% Age 87
X_data = (Female_data_87(:,1)/100).^c; % Height (m)
Y_data = Female_data_87(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_15_Spain = [Coefficient_a_Female_1_15_Spain PP(2)];
Coefficient_b_Female_1_15_Spain = [Coefficient_b_Female_1_15_Spain PP(1)];
% Age 88
X_data = (Female_data_88(:,1)/100).^c; % Height (m)
Y_data = Female_data_88(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_15_Spain = [Coefficient_a_Female_1_15_Spain PP(2)];
Coefficient_b_Female_1_15_Spain = [Coefficient_b_Female_1_15_Spain PP(1)];
% Age 89
X_data = (Female_data_89(:,1)/100).^c; % Height (m)
Y_data = Female_data_89(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_15_Spain = [Coefficient_a_Female_1_15_Spain PP(2)];
Coefficient_b_Female_1_15_Spain = [Coefficient_b_Female_1_15_Spain PP(1)];
% Age 90
X_data = (Female_data_90(:,1)/100).^c; % Height (m)
Y_data = Female_data_90(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_15_Spain = [Coefficient_a_Female_1_15_Spain PP(2)];
Coefficient_b_Female_1_15_Spain = [Coefficient_b_Female_1_15_Spain PP(1)];

% For Male
% Age 50
X_data = (Male_data_50(:,1)/100).^c; % Height (m)
Y_data = Male_data_50(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_15_Spain = [Coefficient_a_Male_1_15_Spain PP(2)];
Coefficient_b_Male_1_15_Spain = [Coefficient_b_Male_1_15_Spain PP(1)];
% Age 51
X_data = (Male_data_51(:,1)/100).^c; % Height (m)
Y_data = Male_data_51(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_15_Spain = [Coefficient_a_Male_1_15_Spain PP(2)];
Coefficient_b_Male_1_15_Spain = [Coefficient_b_Male_1_15_Spain PP(1)];
% Age 52
X_data = (Male_data_52(:,1)/100).^c; % Height (m)
Y_data = Male_data_52(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_15_Spain = [Coefficient_a_Male_1_15_Spain PP(2)];
Coefficient_b_Male_1_15_Spain = [Coefficient_b_Male_1_15_Spain PP(1)];
% Age 53
X_data = (Male_data_53(:,1)/100).^c; % Height (m)
Y_data = Male_data_53(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_15_Spain = [Coefficient_a_Male_1_15_Spain PP(2)];
Coefficient_b_Male_1_15_Spain = [Coefficient_b_Male_1_15_Spain PP(1)];
% Age 54
X_data = (Male_data_54(:,1)/100).^c; % Height (m)
Y_data = Male_data_54(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_15_Spain = [Coefficient_a_Male_1_15_Spain PP(2)];
Coefficient_b_Male_1_15_Spain = [Coefficient_b_Male_1_15_Spain PP(1)];
% Age 55
X_data = (Male_data_55(:,1)/100).^c; % Height (m)
Y_data = Male_data_55(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_15_Spain = [Coefficient_a_Male_1_15_Spain PP(2)];
Coefficient_b_Male_1_15_Spain = [Coefficient_b_Male_1_15_Spain PP(1)];
% Age 56
X_data = (Male_data_56(:,1)/100).^c; % Height (m)
Y_data = Male_data_56(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_15_Spain = [Coefficient_a_Male_1_15_Spain PP(2)];
Coefficient_b_Male_1_15_Spain = [Coefficient_b_Male_1_15_Spain PP(1)];
% Age 57
X_data = (Male_data_57(:,1)/100).^c; % Height (m)
Y_data = Male_data_57(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_15_Spain = [Coefficient_a_Male_1_15_Spain PP(2)];
Coefficient_b_Male_1_15_Spain = [Coefficient_b_Male_1_15_Spain PP(1)];
% Age 58
X_data = (Male_data_58(:,1)/100).^c; % Height (m)
Y_data = Male_data_58(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_15_Spain = [Coefficient_a_Male_1_15_Spain PP(2)];
Coefficient_b_Male_1_15_Spain = [Coefficient_b_Male_1_15_Spain PP(1)];
% Age 59
X_data = (Male_data_59(:,1)/100).^c; % Height (m)
Y_data = Male_data_59(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_15_Spain = [Coefficient_a_Male_1_15_Spain PP(2)];
Coefficient_b_Male_1_15_Spain = [Coefficient_b_Male_1_15_Spain PP(1)];
% Age 60
X_data = (Male_data_60(:,1)/100).^c; % Height (m)
Y_data = Male_data_60(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_15_Spain = [Coefficient_a_Male_1_15_Spain PP(2)];
Coefficient_b_Male_1_15_Spain = [Coefficient_b_Male_1_15_Spain PP(1)];
% Age 61
X_data = (Male_data_61(:,1)/100).^c; % Height (m)
Y_data = Male_data_61(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_15_Spain = [Coefficient_a_Male_1_15_Spain PP(2)];
Coefficient_b_Male_1_15_Spain = [Coefficient_b_Male_1_15_Spain PP(1)];
% Age 62
X_data = (Male_data_62(:,1)/100).^c; % Height (m)
Y_data = Male_data_62(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_15_Spain = [Coefficient_a_Male_1_15_Spain PP(2)];
Coefficient_b_Male_1_15_Spain = [Coefficient_b_Male_1_15_Spain PP(1)];
% Age 63
X_data = (Male_data_63(:,1)/100).^c; % Height (m)
Y_data = Male_data_63(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_15_Spain = [Coefficient_a_Male_1_15_Spain PP(2)];
Coefficient_b_Male_1_15_Spain = [Coefficient_b_Male_1_15_Spain PP(1)];
% Age 64
X_data = (Male_data_64(:,1)/100).^c; % Height (m)
Y_data = Male_data_64(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_15_Spain = [Coefficient_a_Male_1_15_Spain PP(2)];
Coefficient_b_Male_1_15_Spain = [Coefficient_b_Male_1_15_Spain PP(1)];
% Age 65
X_data = (Male_data_65(:,1)/100).^c; % Height (m)
Y_data = Male_data_65(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_15_Spain = [Coefficient_a_Male_1_15_Spain PP(2)];
Coefficient_b_Male_1_15_Spain = [Coefficient_b_Male_1_15_Spain PP(1)];
% Age 66
X_data = (Male_data_66(:,1)/100).^c; % Height (m)
Y_data = Male_data_66(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_15_Spain = [Coefficient_a_Male_1_15_Spain PP(2)];
Coefficient_b_Male_1_15_Spain = [Coefficient_b_Male_1_15_Spain PP(1)];
% Age 67
X_data = (Male_data_67(:,1)/100).^c; % Height (m)
Y_data = Male_data_67(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_15_Spain = [Coefficient_a_Male_1_15_Spain PP(2)];
Coefficient_b_Male_1_15_Spain = [Coefficient_b_Male_1_15_Spain PP(1)];
% Age 68
X_data = (Male_data_68(:,1)/100).^c; % Height (m)
Y_data = Male_data_68(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_15_Spain = [Coefficient_a_Male_1_15_Spain PP(2)];
Coefficient_b_Male_1_15_Spain = [Coefficient_b_Male_1_15_Spain PP(1)];
% Age 69
X_data = (Male_data_69(:,1)/100).^c; % Height (m)
Y_data = Male_data_69(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_15_Spain = [Coefficient_a_Male_1_15_Spain PP(2)];
Coefficient_b_Male_1_15_Spain = [Coefficient_b_Male_1_15_Spain PP(1)];
% Age 70
X_data = (Male_data_70(:,1)/100).^c; % Height (m)
Y_data = Male_data_70(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_15_Spain = [Coefficient_a_Male_1_15_Spain PP(2)];
Coefficient_b_Male_1_15_Spain = [Coefficient_b_Male_1_15_Spain PP(1)];
% Age 71
X_data = (Male_data_71(:,1)/100).^c; % Height (m)
Y_data = Male_data_71(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_15_Spain = [Coefficient_a_Male_1_15_Spain PP(2)];
Coefficient_b_Male_1_15_Spain = [Coefficient_b_Male_1_15_Spain PP(1)];
% Age 72
X_data = (Male_data_72(:,1)/100).^c; % Height (m)
Y_data = Male_data_72(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_15_Spain = [Coefficient_a_Male_1_15_Spain PP(2)];
Coefficient_b_Male_1_15_Spain = [Coefficient_b_Male_1_15_Spain PP(1)];
% Age 73
X_data = (Male_data_73(:,1)/100).^c; % Height (m)
Y_data = Male_data_73(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_15_Spain = [Coefficient_a_Male_1_15_Spain PP(2)];
Coefficient_b_Male_1_15_Spain = [Coefficient_b_Male_1_15_Spain PP(1)];
% Age 74
X_data = (Male_data_74(:,1)/100).^c; % Height (m)
Y_data = Male_data_74(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_15_Spain = [Coefficient_a_Male_1_15_Spain PP(2)];
Coefficient_b_Male_1_15_Spain = [Coefficient_b_Male_1_15_Spain PP(1)];
% Age 75
X_data = (Male_data_75(:,1)/100).^c; % Height (m)
Y_data = Male_data_75(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_15_Spain = [Coefficient_a_Male_1_15_Spain PP(2)];
Coefficient_b_Male_1_15_Spain = [Coefficient_b_Male_1_15_Spain PP(1)];
% Age 76
X_data = (Male_data_76(:,1)/100).^c; % Height (m)
Y_data = Male_data_76(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_15_Spain = [Coefficient_a_Male_1_15_Spain PP(2)];
Coefficient_b_Male_1_15_Spain = [Coefficient_b_Male_1_15_Spain PP(1)];
% Age 77
X_data = (Male_data_77(:,1)/100).^c; % Height (m)
Y_data = Male_data_77(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_15_Spain = [Coefficient_a_Male_1_15_Spain PP(2)];
Coefficient_b_Male_1_15_Spain = [Coefficient_b_Male_1_15_Spain PP(1)];
% Age 78
X_data = (Male_data_78(:,1)/100).^c; % Height (m)
Y_data = Male_data_78(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_15_Spain = [Coefficient_a_Male_1_15_Spain PP(2)];
Coefficient_b_Male_1_15_Spain = [Coefficient_b_Male_1_15_Spain PP(1)];
% Age 79
X_data = (Male_data_79(:,1)/100).^c; % Height (m)
Y_data = Male_data_79(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_15_Spain = [Coefficient_a_Male_1_15_Spain PP(2)];
Coefficient_b_Male_1_15_Spain = [Coefficient_b_Male_1_15_Spain PP(1)];
% Age 80
X_data = (Male_data_80(:,1)/100).^c; % Height (m)
Y_data = Male_data_80(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_15_Spain = [Coefficient_a_Male_1_15_Spain PP(2)];
Coefficient_b_Male_1_15_Spain = [Coefficient_b_Male_1_15_Spain PP(1)];
% Age 81
X_data = (Male_data_81(:,1)/100).^c; % Height (m)
Y_data = Male_data_81(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_15_Spain = [Coefficient_a_Male_1_15_Spain PP(2)];
Coefficient_b_Male_1_15_Spain = [Coefficient_b_Male_1_15_Spain PP(1)];
% Age 82
X_data = (Male_data_82(:,1)/100).^c; % Height (m)
Y_data = Male_data_82(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_15_Spain = [Coefficient_a_Male_1_15_Spain PP(2)];
Coefficient_b_Male_1_15_Spain = [Coefficient_b_Male_1_15_Spain PP(1)];
% Age 83
X_data = (Male_data_83(:,1)/100).^c; % Height (m)
Y_data = Male_data_83(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_15_Spain = [Coefficient_a_Male_1_15_Spain PP(2)];
Coefficient_b_Male_1_15_Spain = [Coefficient_b_Male_1_15_Spain PP(1)];
% Age 84
X_data = (Male_data_84(:,1)/100).^c; % Height (m)
Y_data = Male_data_84(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_15_Spain = [Coefficient_a_Male_1_15_Spain PP(2)];
Coefficient_b_Male_1_15_Spain = [Coefficient_b_Male_1_15_Spain PP(1)];
% Age 85
X_data = (Male_data_85(:,1)/100).^c; % Height (m)
Y_data = Male_data_85(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_15_Spain = [Coefficient_a_Male_1_15_Spain PP(2)];
Coefficient_b_Male_1_15_Spain = [Coefficient_b_Male_1_15_Spain PP(1)];
% Age 86
X_data = (Male_data_86(:,1)/100).^c; % Height (m)
Y_data = Male_data_86(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_15_Spain = [Coefficient_a_Male_1_15_Spain PP(2)];
Coefficient_b_Male_1_15_Spain = [Coefficient_b_Male_1_15_Spain PP(1)];
% Age 87
X_data = (Male_data_87(:,1)/100).^c; % Height (m)
Y_data = Male_data_87(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_15_Spain = [Coefficient_a_Male_1_15_Spain PP(2)];
Coefficient_b_Male_1_15_Spain = [Coefficient_b_Male_1_15_Spain PP(1)];
% Age 88
X_data = (Male_data_88(:,1)/100).^c; % Height (m)
Y_data = Male_data_88(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_15_Spain = [Coefficient_a_Male_1_15_Spain PP(2)];
Coefficient_b_Male_1_15_Spain = [Coefficient_b_Male_1_15_Spain PP(1)];
% Age 89
X_data = (Male_data_89(:,1)/100).^c; % Height (m)
Y_data = Male_data_89(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_15_Spain = [Coefficient_a_Male_1_15_Spain PP(2)];
Coefficient_b_Male_1_15_Spain = [Coefficient_b_Male_1_15_Spain PP(1)];
% Age 90
X_data = (Male_data_90(:,1)/100).^c; % Height (m)
Y_data = Male_data_90(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_15_Spain = [Coefficient_a_Male_1_15_Spain PP(2)];
Coefficient_b_Male_1_15_Spain = [Coefficient_b_Male_1_15_Spain PP(1)];

%% We show the results
figure;
% For Female
subplot(2,3,1); % Coefficient a for female
hold on;
title('Female')
xlabel('Age (yr)');
ylabel('Coefficient a')
xlim([49 91]);
ylim([0 30]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

% 61_Romania
x_data = Age_61_Romania;
y_data = Coefficient_a_Female_1_61_Romania;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(1,:),'MarkerFaceColor','w');

% 59_Malta
x_data = Age_59_Malta;
y_data = Coefficient_a_Female_1_59_Malta;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(2,:),'MarkerFaceColor','w');

% 53_Cyprus
x_data = Age_53_Cyprus;
y_data = Coefficient_a_Female_1_53_Cyprus;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(3,:),'MarkerFaceColor','w');

% 51_Bulgaria
x_data = Age_51_Bulgaria;
y_data = Coefficient_a_Female_1_51_Bulgaria;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(4,:),'MarkerFaceColor','w');

% 47_Croatia
x_data = Age_47_Croatia;
y_data = Coefficient_a_Female_1_47_Croatia;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(5,:),'MarkerFaceColor','w');

% 34_Slovenia
x_data = Age_34_Slovenia;
y_data = Coefficient_a_Female_1_34_Slovenia;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(6,:),'MarkerFaceColor','w');

% 33_Portugal
x_data = Age_33_Portugal;
y_data = Coefficient_a_Female_1_33_Portugal;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(7,:),'MarkerFaceColor','w');

% 19_Greece
x_data = Age_19_Greece;
y_data = Coefficient_a_Female_1_19_Greece;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(8,:),'MarkerFaceColor','w');

% 16_Italy
x_data = Age_16_Italy;
y_data = Coefficient_a_Female_1_16_Italy;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(9,:),'MarkerFaceColor','w');

% 15_Spain
x_data = Age_15_Spain;
y_data = Coefficient_a_Female_1_15_Spain;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(10,:),'MarkerFaceColor','w');

subplot(2,3,4); % Coefficient b for female
hold on;
%title('Female')
xlabel('Age (yr)');
ylabel('Coefficient b')
xlim([49 91]);
ylim([0 1]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

% 61_Romania
x_data = Age_61_Romania;
y_data = Coefficient_b_Female_1_61_Romania;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(1,:),'MarkerFaceColor','w');

% 59_Malta
x_data = Age_59_Malta;
y_data = Coefficient_b_Female_1_59_Malta;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(2,:),'MarkerFaceColor','w');

% 53_Cyprus
x_data = Age_53_Cyprus;
y_data = Coefficient_b_Female_1_53_Cyprus;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(3,:),'MarkerFaceColor','w');

% 51_Bulgaria
x_data = Age_51_Bulgaria;
y_data = Coefficient_b_Female_1_51_Bulgaria;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(4,:),'MarkerFaceColor','w');

% 47_Croatia
x_data = Age_47_Croatia;
y_data = Coefficient_b_Female_1_47_Croatia;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(5,:),'MarkerFaceColor','w');

% 34_Slovenia
x_data = Age_34_Slovenia;
y_data = Coefficient_b_Female_1_34_Slovenia;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(6,:),'MarkerFaceColor','w');

% 33_Portugal
x_data = Age_33_Portugal;
y_data = Coefficient_b_Female_1_33_Portugal;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(7,:),'MarkerFaceColor','w');

% 19_Greece
x_data = Age_19_Greece;
y_data = Coefficient_b_Female_1_19_Greece;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(8,:),'MarkerFaceColor','w');

% 16_Italy
x_data = Age_16_Italy;
y_data = Coefficient_b_Female_1_16_Italy;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(9,:),'MarkerFaceColor','w');

% 15_Spain
x_data = Age_15_Spain;
y_data = Coefficient_b_Female_1_15_Spain;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(10,:),'MarkerFaceColor','w');

subplot(2,3,2); % Coefficient a for Male
hold on;
title('Male')
xlabel('Age (yr)');
ylabel('Coefficient a')
xlim([49 91]);
ylim([0 30]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

% 61_Romania
x_data = Age_61_Romania;
y_data = Coefficient_a_Male_1_61_Romania;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(1,:),'MarkerFaceColor','w');

% 59_Malta
x_data = Age_59_Malta;
y_data = Coefficient_a_Male_1_59_Malta;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(2,:),'MarkerFaceColor','w');

% 53_Cyprus
x_data = Age_53_Cyprus;
y_data = Coefficient_a_Male_1_53_Cyprus;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(3,:),'MarkerFaceColor','w');

% 51_Bulgaria
x_data = Age_51_Bulgaria;
y_data = Coefficient_a_Male_1_51_Bulgaria;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(4,:),'MarkerFaceColor','w');

% 47_Croatia
x_data = Age_47_Croatia;
y_data = Coefficient_a_Male_1_47_Croatia;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(5,:),'MarkerFaceColor','w');

% 34_Slovenia
x_data = Age_34_Slovenia;
y_data = Coefficient_a_Male_1_34_Slovenia;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(6,:),'MarkerFaceColor','w');

% 33_Portugal
x_data = Age_33_Portugal;
y_data = Coefficient_a_Male_1_33_Portugal;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(7,:),'MarkerFaceColor','w');

% 19_Greece
x_data = Age_19_Greece;
y_data = Coefficient_a_Male_1_19_Greece;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(8,:),'MarkerFaceColor','w');

% 16_Italy
x_data = Age_16_Italy;
y_data = Coefficient_a_Male_1_16_Italy;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(9,:),'MarkerFaceColor','w');

% 15_Spain
x_data = Age_15_Spain;
y_data = Coefficient_a_Male_1_15_Spain;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(10,:),'MarkerFaceColor','w');

subplot(2,3,5); % Coefficient b for Male
hold on;
%title('Male')
xlabel('Age (yr)');
ylabel('Coefficient b')
xlim([49 91]);
ylim([0 1]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

% 61_Romania
x_data = Age_61_Romania;
y_data = Coefficient_b_Male_1_61_Romania;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(1,:),'MarkerFaceColor','w');

% 59_Malta
x_data = Age_59_Malta;
y_data = Coefficient_b_Male_1_59_Malta;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(2,:),'MarkerFaceColor','w');

% 53_Cyprus
x_data = Age_53_Cyprus;
y_data = Coefficient_b_Male_1_53_Cyprus;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(3,:),'MarkerFaceColor','w');

% 51_Bulgaria
x_data = Age_51_Bulgaria;
y_data = Coefficient_b_Male_1_51_Bulgaria;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(4,:),'MarkerFaceColor','w');

% 47_Croatia
x_data = Age_47_Croatia;
y_data = Coefficient_b_Male_1_47_Croatia;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(5,:),'MarkerFaceColor','w');

% 34_Slovenia
x_data = Age_34_Slovenia;
y_data = Coefficient_b_Male_1_34_Slovenia;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(6,:),'MarkerFaceColor','w');

% 33_Portugal
x_data = Age_33_Portugal;
y_data = Coefficient_b_Male_1_33_Portugal;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(7,:),'MarkerFaceColor','w');

% 19_Greece
x_data = Age_19_Greece;
y_data = Coefficient_b_Male_1_19_Greece;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(8,:),'MarkerFaceColor','w');

% 16_Italy
x_data = Age_16_Italy;
y_data = Coefficient_b_Male_1_16_Italy;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(9,:),'MarkerFaceColor','w');

% 15_Spain
x_data = Age_15_Spain;
y_data = Coefficient_b_Male_1_15_Spain;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(10,:),'MarkerFaceColor','w');

subplot(2,3,6)
hold on
xlim([5.5 15.5]);
ylim([0 60]);
ax=gca;
ax.XAxis.Visible = 'off';
ax.YAxis.Visible = 'off';
%set(gca,'XTickLabel',[]);

HH1 = plot([0 0],[-1 -1],'LineWidth',My_LineWidth,'Color',My_Colors_28(1,:));
HH2 = plot([0 0],[-1 -1],'LineWidth',My_LineWidth,'Color',My_Colors_28(2,:));
HH3 = plot([0 0],[-1 -1],'LineWidth',My_LineWidth,'Color',My_Colors_28(3,:));
HH4 = plot([0 0],[-1 -1],'LineWidth',My_LineWidth,'Color',My_Colors_28(4,:));
HH5 = plot([0 0],[-1 -1],'LineWidth',My_LineWidth,'Color',My_Colors_28(5,:));
HH6 = plot([0 0],[-1 -1],'LineWidth',My_LineWidth,'Color',My_Colors_28(6,:));
HH7 = plot([0 0],[-1 -1],'LineWidth',My_LineWidth,'Color',My_Colors_28(7,:));
HH8 = plot([0 0],[-1 -1],'LineWidth',My_LineWidth,'Color',My_Colors_28(8,:));
HH9 = plot([0 0],[-1 -1],'LineWidth',My_LineWidth,'Color',My_Colors_28(9,:));
HH10 = plot([0 0],[-1 -1],'LineWidth',My_LineWidth,'Color',My_Colors_28(10,:));

Legend = legend([HH1 HH2 HH3 HH4 HH5 HH6 HH7 HH8 HH9 HH10],...
    '61-Romania',...
    '59-Malta',...
    '53-Cyprus',...
    '51-Bulgaria',...
    '47-Croatia',...
    '34-Slovenia',...
    '33-Portugal',...
    '19-Greece',...
    '16-Italy',...
    '15-Spain',...
    'Location','southwest');
set(Legend,'Box','off')

% 61_Romania - 罗马尼亚
% 59_Malta - 马耳他
% 53_Cyprus - 塞浦路斯
% 51_Bulgaria - 保加利亚
% 47_Croatia - 克罗地亚
% 34_Slovenia - 斯洛文尼亚
% 33_Portugal - 葡萄牙
% 19_Greece - 希腊
% 16_Italy - 意大利
% 15_Spain - 西班牙

%%
% We save the correlation analysis results
save('Coefficients_a_and_b_c_1_Southern_Europe.mat',...
    'Age_61_Romania','Coefficient_a_Female_1_61_Romania','Coefficient_b_Female_1_61_Romania',...
    'Coefficient_a_Male_1_61_Romania','Coefficient_b_Male_1_61_Romania',...
    'Age_59_Malta','Coefficient_a_Female_1_59_Malta','Coefficient_b_Female_1_59_Malta',...
    'Coefficient_a_Male_1_59_Malta','Coefficient_b_Male_1_59_Malta',...
    'Age_53_Cyprus','Coefficient_a_Female_1_53_Cyprus','Coefficient_b_Female_1_53_Cyprus',...
    'Coefficient_a_Male_1_53_Cyprus','Coefficient_b_Male_1_53_Cyprus',...
    'Age_51_Bulgaria','Coefficient_a_Female_1_51_Bulgaria','Coefficient_b_Female_1_51_Bulgaria',...
    'Coefficient_a_Male_1_51_Bulgaria','Coefficient_b_Male_1_51_Bulgaria',...
    'Age_47_Croatia','Coefficient_a_Female_1_47_Croatia','Coefficient_b_Female_1_47_Croatia',...
    'Coefficient_a_Male_1_47_Croatia','Coefficient_b_Male_1_47_Croatia',...
    'Age_34_Slovenia','Coefficient_a_Female_1_34_Slovenia','Coefficient_b_Female_1_34_Slovenia',...
    'Coefficient_a_Male_1_34_Slovenia','Coefficient_b_Male_1_34_Slovenia',...
    'Age_33_Portugal','Coefficient_a_Female_1_33_Portugal','Coefficient_b_Female_1_33_Portugal',...
    'Coefficient_a_Male_1_33_Portugal','Coefficient_b_Male_1_33_Portugal',...
    'Age_19_Greece','Coefficient_a_Female_1_19_Greece','Coefficient_b_Female_1_19_Greece',...
    'Coefficient_a_Male_1_19_Greece','Coefficient_b_Male_1_19_Greece',...
    'Age_16_Italy','Coefficient_a_Female_1_16_Italy','Coefficient_b_Female_1_16_Italy',...
    'Coefficient_a_Male_1_16_Italy','Coefficient_b_Male_1_16_Italy',...
    'Age_15_Spain','Coefficient_a_Female_1_15_Spain','Coefficient_b_Female_1_15_Spain',...
    'Coefficient_a_Male_1_15_Spain','Coefficient_b_Male_1_15_Spain');
