% We show the relative coefficients between Weight and Weight*Height^c for
% all Southern Europe datasets when exponent c = 1;
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
c = 1;
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
Female_data = xlsread('Data_Europe\61_Romania.xlsx','Female');
Male_data = xlsread('Data_Europe\61_Romania.xlsx','Male');
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

% We calculate the correlation coefficients
% Weight VS Weight*Height^c
Age_61_Romania = 51:85;
Corr_61_Romania_Female = [My_Corr(Female_data_51(:,2),Female_data_51(:,2).*(Female_data_51(:,1)/100).^c) ...
    My_Corr(Female_data_52(:,2),Female_data_52(:,2).*(Female_data_52(:,1)/100).^c) ...
    My_Corr(Female_data_53(:,2),Female_data_53(:,2).*(Female_data_53(:,1)/100).^c) ...
    My_Corr(Female_data_54(:,2),Female_data_54(:,2).*(Female_data_54(:,1)/100).^c) ...
    My_Corr(Female_data_55(:,2),Female_data_55(:,2).*(Female_data_55(:,1)/100).^c) ...
    My_Corr(Female_data_56(:,2),Female_data_56(:,2).*(Female_data_56(:,1)/100).^c) ...
    My_Corr(Female_data_57(:,2),Female_data_57(:,2).*(Female_data_57(:,1)/100).^c) ...
    My_Corr(Female_data_58(:,2),Female_data_58(:,2).*(Female_data_58(:,1)/100).^c) ...
    My_Corr(Female_data_59(:,2),Female_data_59(:,2).*(Female_data_59(:,1)/100).^c) ...
    My_Corr(Female_data_60(:,2),Female_data_60(:,2).*(Female_data_60(:,1)/100).^c) ...
    My_Corr(Female_data_61(:,2),Female_data_61(:,2).*(Female_data_61(:,1)/100).^c) ...
    My_Corr(Female_data_62(:,2),Female_data_62(:,2).*(Female_data_62(:,1)/100).^c) ...
    My_Corr(Female_data_63(:,2),Female_data_63(:,2).*(Female_data_63(:,1)/100).^c) ...
    My_Corr(Female_data_64(:,2),Female_data_64(:,2).*(Female_data_64(:,1)/100).^c) ...
    My_Corr(Female_data_65(:,2),Female_data_65(:,2).*(Female_data_65(:,1)/100).^c) ...
    My_Corr(Female_data_66(:,2),Female_data_66(:,2).*(Female_data_66(:,1)/100).^c) ...
    My_Corr(Female_data_67(:,2),Female_data_67(:,2).*(Female_data_67(:,1)/100).^c) ...
    My_Corr(Female_data_68(:,2),Female_data_68(:,2).*(Female_data_68(:,1)/100).^c) ...
    My_Corr(Female_data_69(:,2),Female_data_69(:,2).*(Female_data_69(:,1)/100).^c) ...
    My_Corr(Female_data_70(:,2),Female_data_70(:,2).*(Female_data_70(:,1)/100).^c) ...
    My_Corr(Female_data_71(:,2),Female_data_71(:,2).*(Female_data_71(:,1)/100).^c) ...
    My_Corr(Female_data_72(:,2),Female_data_72(:,2).*(Female_data_72(:,1)/100).^c) ...
    My_Corr(Female_data_73(:,2),Female_data_73(:,2).*(Female_data_73(:,1)/100).^c) ...
    My_Corr(Female_data_74(:,2),Female_data_74(:,2).*(Female_data_74(:,1)/100).^c) ...
    My_Corr(Female_data_75(:,2),Female_data_75(:,2).*(Female_data_75(:,1)/100).^c) ...
    My_Corr(Female_data_76(:,2),Female_data_76(:,2).*(Female_data_76(:,1)/100).^c) ...
    My_Corr(Female_data_77(:,2),Female_data_77(:,2).*(Female_data_77(:,1)/100).^c) ...
    My_Corr(Female_data_78(:,2),Female_data_78(:,2).*(Female_data_78(:,1)/100).^c) ...
    My_Corr(Female_data_79(:,2),Female_data_79(:,2).*(Female_data_79(:,1)/100).^c) ...
    My_Corr(Female_data_80(:,2),Female_data_80(:,2).*(Female_data_80(:,1)/100).^c) ...
    My_Corr(Female_data_81(:,2),Female_data_81(:,2).*(Female_data_81(:,1)/100).^c) ...
    My_Corr(Female_data_82(:,2),Female_data_82(:,2).*(Female_data_82(:,1)/100).^c) ...
    My_Corr(Female_data_83(:,2),Female_data_83(:,2).*(Female_data_83(:,1)/100).^c) ...
    My_Corr(Female_data_84(:,2),Female_data_84(:,2).*(Female_data_84(:,1)/100).^c) ...
    My_Corr(Female_data_85(:,2),Female_data_85(:,2).*(Female_data_85(:,1)/100).^c)
    ];

Corr_61_Romania_Male = [My_Corr(Male_data_51(:,2),Male_data_51(:,2).*(Male_data_51(:,1)/100).^c) ...
    My_Corr(Male_data_52(:,2),Male_data_52(:,2).*(Male_data_52(:,1)/100).^c) ...
    My_Corr(Male_data_53(:,2),Male_data_53(:,2).*(Male_data_53(:,1)/100).^c) ...
    My_Corr(Male_data_54(:,2),Male_data_54(:,2).*(Male_data_54(:,1)/100).^c) ...
    My_Corr(Male_data_55(:,2),Male_data_55(:,2).*(Male_data_55(:,1)/100).^c) ...
    My_Corr(Male_data_56(:,2),Male_data_56(:,2).*(Male_data_56(:,1)/100).^c) ...
    My_Corr(Male_data_57(:,2),Male_data_57(:,2).*(Male_data_57(:,1)/100).^c) ...
    My_Corr(Male_data_58(:,2),Male_data_58(:,2).*(Male_data_58(:,1)/100).^c) ...
    My_Corr(Male_data_59(:,2),Male_data_59(:,2).*(Male_data_59(:,1)/100).^c) ...
    My_Corr(Male_data_60(:,2),Male_data_60(:,2).*(Male_data_60(:,1)/100).^c) ...
    My_Corr(Male_data_61(:,2),Male_data_61(:,2).*(Male_data_61(:,1)/100).^c) ...
    My_Corr(Male_data_62(:,2),Male_data_62(:,2).*(Male_data_62(:,1)/100).^c) ...
    My_Corr(Male_data_63(:,2),Male_data_63(:,2).*(Male_data_63(:,1)/100).^c) ...
    My_Corr(Male_data_64(:,2),Male_data_64(:,2).*(Male_data_64(:,1)/100).^c) ...
    My_Corr(Male_data_65(:,2),Male_data_65(:,2).*(Male_data_65(:,1)/100).^c) ...
    My_Corr(Male_data_66(:,2),Male_data_66(:,2).*(Male_data_66(:,1)/100).^c) ...
    My_Corr(Male_data_67(:,2),Male_data_67(:,2).*(Male_data_67(:,1)/100).^c) ...
    My_Corr(Male_data_68(:,2),Male_data_68(:,2).*(Male_data_68(:,1)/100).^c) ...
    My_Corr(Male_data_69(:,2),Male_data_69(:,2).*(Male_data_69(:,1)/100).^c) ...
    My_Corr(Male_data_70(:,2),Male_data_70(:,2).*(Male_data_70(:,1)/100).^c) ...
    My_Corr(Male_data_71(:,2),Male_data_71(:,2).*(Male_data_71(:,1)/100).^c) ...
    My_Corr(Male_data_72(:,2),Male_data_72(:,2).*(Male_data_72(:,1)/100).^c) ...
    My_Corr(Male_data_73(:,2),Male_data_73(:,2).*(Male_data_73(:,1)/100).^c) ...
    My_Corr(Male_data_74(:,2),Male_data_74(:,2).*(Male_data_74(:,1)/100).^c) ...
    My_Corr(Male_data_75(:,2),Male_data_75(:,2).*(Male_data_75(:,1)/100).^c) ...
    My_Corr(Male_data_76(:,2),Male_data_76(:,2).*(Male_data_76(:,1)/100).^c) ...
    My_Corr(Male_data_77(:,2),Male_data_77(:,2).*(Male_data_77(:,1)/100).^c) ...
    My_Corr(Male_data_78(:,2),Male_data_78(:,2).*(Male_data_78(:,1)/100).^c) ...
    My_Corr(Male_data_79(:,2),Male_data_79(:,2).*(Male_data_79(:,1)/100).^c) ...
    My_Corr(Male_data_80(:,2),Male_data_80(:,2).*(Male_data_80(:,1)/100).^c) ...
    My_Corr(Male_data_81(:,2),Male_data_81(:,2).*(Male_data_81(:,1)/100).^c) ...
    My_Corr(Male_data_82(:,2),Male_data_82(:,2).*(Male_data_82(:,1)/100).^c) ...
    My_Corr(Male_data_83(:,2),Male_data_83(:,2).*(Male_data_83(:,1)/100).^c) ...
    My_Corr(Male_data_84(:,2),Male_data_84(:,2).*(Male_data_84(:,1)/100).^c) ...
    My_Corr(Male_data_85(:,2),Male_data_85(:,2).*(Male_data_85(:,1)/100).^c)
    ];

%% 59_Malta
% Loading the data
Female_data = xlsread('Data_Europe\59_Malta.xlsx','Female');
Male_data = xlsread('Data_Europe\59_Malta.xlsx','Male');
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

% We calculate the correlation coefficients
% Weight VS Weight*Height^c
Age_59_Malta = 56:79;
Corr_59_Malta_Female = [My_Corr(Female_data_56(:,2),Female_data_56(:,2).*(Female_data_56(:,1)/100).^c) ...
    My_Corr(Female_data_57(:,2),Female_data_57(:,2).*(Female_data_57(:,1)/100).^c) ...
    My_Corr(Female_data_58(:,2),Female_data_58(:,2).*(Female_data_58(:,1)/100).^c) ...
    My_Corr(Female_data_59(:,2),Female_data_59(:,2).*(Female_data_59(:,1)/100).^c) ...
    My_Corr(Female_data_60(:,2),Female_data_60(:,2).*(Female_data_60(:,1)/100).^c) ...
    My_Corr(Female_data_61(:,2),Female_data_61(:,2).*(Female_data_61(:,1)/100).^c) ...
    My_Corr(Female_data_62(:,2),Female_data_62(:,2).*(Female_data_62(:,1)/100).^c) ...
    My_Corr(Female_data_63(:,2),Female_data_63(:,2).*(Female_data_63(:,1)/100).^c) ...
    My_Corr(Female_data_64(:,2),Female_data_64(:,2).*(Female_data_64(:,1)/100).^c) ...
    My_Corr(Female_data_65(:,2),Female_data_65(:,2).*(Female_data_65(:,1)/100).^c) ...
    My_Corr(Female_data_66(:,2),Female_data_66(:,2).*(Female_data_66(:,1)/100).^c) ...
    My_Corr(Female_data_67(:,2),Female_data_67(:,2).*(Female_data_67(:,1)/100).^c) ...
    My_Corr(Female_data_68(:,2),Female_data_68(:,2).*(Female_data_68(:,1)/100).^c) ...
    My_Corr(Female_data_69(:,2),Female_data_69(:,2).*(Female_data_69(:,1)/100).^c) ...
    My_Corr(Female_data_70(:,2),Female_data_70(:,2).*(Female_data_70(:,1)/100).^c) ...
    My_Corr(Female_data_71(:,2),Female_data_71(:,2).*(Female_data_71(:,1)/100).^c) ...
    My_Corr(Female_data_72(:,2),Female_data_72(:,2).*(Female_data_72(:,1)/100).^c) ...
    My_Corr(Female_data_73(:,2),Female_data_73(:,2).*(Female_data_73(:,1)/100).^c) ...
    My_Corr(Female_data_74(:,2),Female_data_74(:,2).*(Female_data_74(:,1)/100).^c) ...
    My_Corr(Female_data_75(:,2),Female_data_75(:,2).*(Female_data_75(:,1)/100).^c) ...
    My_Corr(Female_data_76(:,2),Female_data_76(:,2).*(Female_data_76(:,1)/100).^c) ...
    My_Corr(Female_data_77(:,2),Female_data_77(:,2).*(Female_data_77(:,1)/100).^c) ...
    My_Corr(Female_data_78(:,2),Female_data_78(:,2).*(Female_data_78(:,1)/100).^c) ...
    My_Corr(Female_data_79(:,2),Female_data_79(:,2).*(Female_data_79(:,1)/100).^c)
    ];

Corr_59_Malta_Male = [My_Corr(Male_data_56(:,2),Male_data_56(:,2).*(Male_data_56(:,1)/100).^c) ...
    My_Corr(Male_data_57(:,2),Male_data_57(:,2).*(Male_data_57(:,1)/100).^c) ...
    My_Corr(Male_data_58(:,2),Male_data_58(:,2).*(Male_data_58(:,1)/100).^c) ...
    My_Corr(Male_data_59(:,2),Male_data_59(:,2).*(Male_data_59(:,1)/100).^c) ...
    My_Corr(Male_data_60(:,2),Male_data_60(:,2).*(Male_data_60(:,1)/100).^c) ...
    My_Corr(Male_data_61(:,2),Male_data_61(:,2).*(Male_data_61(:,1)/100).^c) ...
    My_Corr(Male_data_62(:,2),Male_data_62(:,2).*(Male_data_62(:,1)/100).^c) ...
    My_Corr(Male_data_63(:,2),Male_data_63(:,2).*(Male_data_63(:,1)/100).^c) ...
    My_Corr(Male_data_64(:,2),Male_data_64(:,2).*(Male_data_64(:,1)/100).^c) ...
    My_Corr(Male_data_65(:,2),Male_data_65(:,2).*(Male_data_65(:,1)/100).^c) ...
    My_Corr(Male_data_66(:,2),Male_data_66(:,2).*(Male_data_66(:,1)/100).^c) ...
    My_Corr(Male_data_67(:,2),Male_data_67(:,2).*(Male_data_67(:,1)/100).^c) ...
    My_Corr(Male_data_68(:,2),Male_data_68(:,2).*(Male_data_68(:,1)/100).^c) ...
    My_Corr(Male_data_69(:,2),Male_data_69(:,2).*(Male_data_69(:,1)/100).^c) ...
    My_Corr(Male_data_70(:,2),Male_data_70(:,2).*(Male_data_70(:,1)/100).^c) ...
    My_Corr(Male_data_71(:,2),Male_data_71(:,2).*(Male_data_71(:,1)/100).^c) ...
    My_Corr(Male_data_72(:,2),Male_data_72(:,2).*(Male_data_72(:,1)/100).^c) ...
    My_Corr(Male_data_73(:,2),Male_data_73(:,2).*(Male_data_73(:,1)/100).^c) ...
    My_Corr(Male_data_74(:,2),Male_data_74(:,2).*(Male_data_74(:,1)/100).^c) ...
    My_Corr(Male_data_75(:,2),Male_data_75(:,2).*(Male_data_75(:,1)/100).^c) ...
    My_Corr(Male_data_76(:,2),Male_data_76(:,2).*(Male_data_76(:,1)/100).^c) ...
    My_Corr(Male_data_77(:,2),Male_data_77(:,2).*(Male_data_77(:,1)/100).^c) ...
    My_Corr(Male_data_78(:,2),Male_data_78(:,2).*(Male_data_78(:,1)/100).^c) ...
    My_Corr(Male_data_79(:,2),Male_data_79(:,2).*(Male_data_79(:,1)/100).^c)
    ];

%% 53_Cyprus
% Loading the data
Female_data = xlsread('Data_Europe\53_Cyprus.xlsx','Female');
Male_data = xlsread('Data_Europe\53_Cyprus.xlsx','Male');
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

% We calculate the correlation coefficients
% Weight VS Weight*Height^c
Age_53_Cyprus = 56:84;
Corr_53_Cyprus_Female = [My_Corr(Female_data_56(:,2),Female_data_56(:,2).*(Female_data_56(:,1)/100).^c) ...
    My_Corr(Female_data_57(:,2),Female_data_57(:,2).*(Female_data_57(:,1)/100).^c) ...
    My_Corr(Female_data_58(:,2),Female_data_58(:,2).*(Female_data_58(:,1)/100).^c) ...
    My_Corr(Female_data_59(:,2),Female_data_59(:,2).*(Female_data_59(:,1)/100).^c) ...
    My_Corr(Female_data_60(:,2),Female_data_60(:,2).*(Female_data_60(:,1)/100).^c) ...
    My_Corr(Female_data_61(:,2),Female_data_61(:,2).*(Female_data_61(:,1)/100).^c) ...
    My_Corr(Female_data_62(:,2),Female_data_62(:,2).*(Female_data_62(:,1)/100).^c) ...
    My_Corr(Female_data_63(:,2),Female_data_63(:,2).*(Female_data_63(:,1)/100).^c) ...
    My_Corr(Female_data_64(:,2),Female_data_64(:,2).*(Female_data_64(:,1)/100).^c) ...
    My_Corr(Female_data_65(:,2),Female_data_65(:,2).*(Female_data_65(:,1)/100).^c) ...
    My_Corr(Female_data_66(:,2),Female_data_66(:,2).*(Female_data_66(:,1)/100).^c) ...
    My_Corr(Female_data_67(:,2),Female_data_67(:,2).*(Female_data_67(:,1)/100).^c) ...
    My_Corr(Female_data_68(:,2),Female_data_68(:,2).*(Female_data_68(:,1)/100).^c) ...
    My_Corr(Female_data_69(:,2),Female_data_69(:,2).*(Female_data_69(:,1)/100).^c) ...
    My_Corr(Female_data_70(:,2),Female_data_70(:,2).*(Female_data_70(:,1)/100).^c) ...
    My_Corr(Female_data_71(:,2),Female_data_71(:,2).*(Female_data_71(:,1)/100).^c) ...
    My_Corr(Female_data_72(:,2),Female_data_72(:,2).*(Female_data_72(:,1)/100).^c) ...
    My_Corr(Female_data_73(:,2),Female_data_73(:,2).*(Female_data_73(:,1)/100).^c) ...
    My_Corr(Female_data_74(:,2),Female_data_74(:,2).*(Female_data_74(:,1)/100).^c) ...
    My_Corr(Female_data_75(:,2),Female_data_75(:,2).*(Female_data_75(:,1)/100).^c) ...
    My_Corr(Female_data_76(:,2),Female_data_76(:,2).*(Female_data_76(:,1)/100).^c) ...
    My_Corr(Female_data_77(:,2),Female_data_77(:,2).*(Female_data_77(:,1)/100).^c) ...
    My_Corr(Female_data_78(:,2),Female_data_78(:,2).*(Female_data_78(:,1)/100).^c) ...
    My_Corr(Female_data_79(:,2),Female_data_79(:,2).*(Female_data_79(:,1)/100).^c) ...
    My_Corr(Female_data_80(:,2),Female_data_80(:,2).*(Female_data_80(:,1)/100).^c) ...
    My_Corr(Female_data_81(:,2),Female_data_81(:,2).*(Female_data_81(:,1)/100).^c) ...
    My_Corr(Female_data_82(:,2),Female_data_82(:,2).*(Female_data_82(:,1)/100).^c) ...
    My_Corr(Female_data_83(:,2),Female_data_83(:,2).*(Female_data_83(:,1)/100).^c) ...
    My_Corr(Female_data_84(:,2),Female_data_84(:,2).*(Female_data_84(:,1)/100).^c)
    ];

Corr_53_Cyprus_Male = [My_Corr(Male_data_56(:,2),Male_data_56(:,2).*(Male_data_56(:,1)/100).^c) ...
    My_Corr(Male_data_57(:,2),Male_data_57(:,2).*(Male_data_57(:,1)/100).^c) ...
    My_Corr(Male_data_58(:,2),Male_data_58(:,2).*(Male_data_58(:,1)/100).^c) ...
    My_Corr(Male_data_59(:,2),Male_data_59(:,2).*(Male_data_59(:,1)/100).^c) ...
    My_Corr(Male_data_60(:,2),Male_data_60(:,2).*(Male_data_60(:,1)/100).^c) ...
    My_Corr(Male_data_61(:,2),Male_data_61(:,2).*(Male_data_61(:,1)/100).^c) ...
    My_Corr(Male_data_62(:,2),Male_data_62(:,2).*(Male_data_62(:,1)/100).^c) ...
    My_Corr(Male_data_63(:,2),Male_data_63(:,2).*(Male_data_63(:,1)/100).^c) ...
    My_Corr(Male_data_64(:,2),Male_data_64(:,2).*(Male_data_64(:,1)/100).^c) ...
    My_Corr(Male_data_65(:,2),Male_data_65(:,2).*(Male_data_65(:,1)/100).^c) ...
    My_Corr(Male_data_66(:,2),Male_data_66(:,2).*(Male_data_66(:,1)/100).^c) ...
    My_Corr(Male_data_67(:,2),Male_data_67(:,2).*(Male_data_67(:,1)/100).^c) ...
    My_Corr(Male_data_68(:,2),Male_data_68(:,2).*(Male_data_68(:,1)/100).^c) ...
    My_Corr(Male_data_69(:,2),Male_data_69(:,2).*(Male_data_69(:,1)/100).^c) ...
    My_Corr(Male_data_70(:,2),Male_data_70(:,2).*(Male_data_70(:,1)/100).^c) ...
    My_Corr(Male_data_71(:,2),Male_data_71(:,2).*(Male_data_71(:,1)/100).^c) ...
    My_Corr(Male_data_72(:,2),Male_data_72(:,2).*(Male_data_72(:,1)/100).^c) ...
    My_Corr(Male_data_73(:,2),Male_data_73(:,2).*(Male_data_73(:,1)/100).^c) ...
    My_Corr(Male_data_74(:,2),Male_data_74(:,2).*(Male_data_74(:,1)/100).^c) ...
    My_Corr(Male_data_75(:,2),Male_data_75(:,2).*(Male_data_75(:,1)/100).^c) ...
    My_Corr(Male_data_76(:,2),Male_data_76(:,2).*(Male_data_76(:,1)/100).^c) ...
    My_Corr(Male_data_77(:,2),Male_data_77(:,2).*(Male_data_77(:,1)/100).^c) ...
    My_Corr(Male_data_78(:,2),Male_data_78(:,2).*(Male_data_78(:,1)/100).^c) ...
    My_Corr(Male_data_79(:,2),Male_data_79(:,2).*(Male_data_79(:,1)/100).^c) ...
    My_Corr(Male_data_80(:,2),Male_data_80(:,2).*(Male_data_80(:,1)/100).^c) ...
    My_Corr(Male_data_81(:,2),Male_data_81(:,2).*(Male_data_81(:,1)/100).^c) ...
    My_Corr(Male_data_82(:,2),Male_data_82(:,2).*(Male_data_82(:,1)/100).^c) ...
    My_Corr(Male_data_83(:,2),Male_data_83(:,2).*(Male_data_83(:,1)/100).^c) ...
    My_Corr(Male_data_84(:,2),Male_data_84(:,2).*(Male_data_84(:,1)/100).^c)
    ];

%% 51_Bulgaria
% Loading the data
Female_data = xlsread('Data_Europe\51_Bulgaria.xlsx','Female');
Male_data = xlsread('Data_Europe\51_Bulgaria.xlsx','Male');
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
end

% We calculate the correlation coefficients
% Weight VS Weight*Height^c
Age_51_Bulgaria = 51:85;
Corr_51_Bulgaria_Female = [My_Corr(Female_data_51(:,2),Female_data_51(:,2).*(Female_data_51(:,1)/100).^c) ...
    My_Corr(Female_data_52(:,2),Female_data_52(:,2).*(Female_data_52(:,1)/100).^c) ...
    My_Corr(Female_data_53(:,2),Female_data_53(:,2).*(Female_data_53(:,1)/100).^c) ...
    My_Corr(Female_data_54(:,2),Female_data_54(:,2).*(Female_data_54(:,1)/100).^c) ...
    My_Corr(Female_data_55(:,2),Female_data_55(:,2).*(Female_data_55(:,1)/100).^c) ...
    My_Corr(Female_data_56(:,2),Female_data_56(:,2).*(Female_data_56(:,1)/100).^c) ...
    My_Corr(Female_data_57(:,2),Female_data_57(:,2).*(Female_data_57(:,1)/100).^c) ...
    My_Corr(Female_data_58(:,2),Female_data_58(:,2).*(Female_data_58(:,1)/100).^c) ...
    My_Corr(Female_data_59(:,2),Female_data_59(:,2).*(Female_data_59(:,1)/100).^c) ...
    My_Corr(Female_data_60(:,2),Female_data_60(:,2).*(Female_data_60(:,1)/100).^c) ...
    My_Corr(Female_data_61(:,2),Female_data_61(:,2).*(Female_data_61(:,1)/100).^c) ...
    My_Corr(Female_data_62(:,2),Female_data_62(:,2).*(Female_data_62(:,1)/100).^c) ...
    My_Corr(Female_data_63(:,2),Female_data_63(:,2).*(Female_data_63(:,1)/100).^c) ...
    My_Corr(Female_data_64(:,2),Female_data_64(:,2).*(Female_data_64(:,1)/100).^c) ...
    My_Corr(Female_data_65(:,2),Female_data_65(:,2).*(Female_data_65(:,1)/100).^c) ...
    My_Corr(Female_data_66(:,2),Female_data_66(:,2).*(Female_data_66(:,1)/100).^c) ...
    My_Corr(Female_data_67(:,2),Female_data_67(:,2).*(Female_data_67(:,1)/100).^c) ...
    My_Corr(Female_data_68(:,2),Female_data_68(:,2).*(Female_data_68(:,1)/100).^c) ...
    My_Corr(Female_data_69(:,2),Female_data_69(:,2).*(Female_data_69(:,1)/100).^c) ...
    My_Corr(Female_data_70(:,2),Female_data_70(:,2).*(Female_data_70(:,1)/100).^c) ...
    My_Corr(Female_data_71(:,2),Female_data_71(:,2).*(Female_data_71(:,1)/100).^c) ...
    My_Corr(Female_data_72(:,2),Female_data_72(:,2).*(Female_data_72(:,1)/100).^c) ...
    My_Corr(Female_data_73(:,2),Female_data_73(:,2).*(Female_data_73(:,1)/100).^c) ...
    My_Corr(Female_data_74(:,2),Female_data_74(:,2).*(Female_data_74(:,1)/100).^c) ...
    My_Corr(Female_data_75(:,2),Female_data_75(:,2).*(Female_data_75(:,1)/100).^c) ...
    My_Corr(Female_data_76(:,2),Female_data_76(:,2).*(Female_data_76(:,1)/100).^c) ...
    My_Corr(Female_data_77(:,2),Female_data_77(:,2).*(Female_data_77(:,1)/100).^c) ...
    My_Corr(Female_data_78(:,2),Female_data_78(:,2).*(Female_data_78(:,1)/100).^c) ...
    My_Corr(Female_data_79(:,2),Female_data_79(:,2).*(Female_data_79(:,1)/100).^c) ...
    My_Corr(Female_data_80(:,2),Female_data_80(:,2).*(Female_data_80(:,1)/100).^c) ...
    My_Corr(Female_data_81(:,2),Female_data_81(:,2).*(Female_data_81(:,1)/100).^c) ...
    My_Corr(Female_data_82(:,2),Female_data_82(:,2).*(Female_data_82(:,1)/100).^c) ...
    My_Corr(Female_data_83(:,2),Female_data_83(:,2).*(Female_data_83(:,1)/100).^c) ...
    My_Corr(Female_data_84(:,2),Female_data_84(:,2).*(Female_data_84(:,1)/100).^c) ...
    My_Corr(Female_data_85(:,2),Female_data_85(:,2).*(Female_data_85(:,1)/100).^c)
    ];

Corr_51_Bulgaria_Male = [My_Corr(Male_data_51(:,2),Male_data_51(:,2).*(Male_data_51(:,1)/100).^c) ...
    My_Corr(Male_data_52(:,2),Male_data_52(:,2).*(Male_data_52(:,1)/100).^c) ...
    My_Corr(Male_data_53(:,2),Male_data_53(:,2).*(Male_data_53(:,1)/100).^c) ...
    My_Corr(Male_data_54(:,2),Male_data_54(:,2).*(Male_data_54(:,1)/100).^c) ...
    My_Corr(Male_data_55(:,2),Male_data_55(:,2).*(Male_data_55(:,1)/100).^c) ...
    My_Corr(Male_data_56(:,2),Male_data_56(:,2).*(Male_data_56(:,1)/100).^c) ...
    My_Corr(Male_data_57(:,2),Male_data_57(:,2).*(Male_data_57(:,1)/100).^c) ...
    My_Corr(Male_data_58(:,2),Male_data_58(:,2).*(Male_data_58(:,1)/100).^c) ...
    My_Corr(Male_data_59(:,2),Male_data_59(:,2).*(Male_data_59(:,1)/100).^c) ...
    My_Corr(Male_data_60(:,2),Male_data_60(:,2).*(Male_data_60(:,1)/100).^c) ...
    My_Corr(Male_data_61(:,2),Male_data_61(:,2).*(Male_data_61(:,1)/100).^c) ...
    My_Corr(Male_data_62(:,2),Male_data_62(:,2).*(Male_data_62(:,1)/100).^c) ...
    My_Corr(Male_data_63(:,2),Male_data_63(:,2).*(Male_data_63(:,1)/100).^c) ...
    My_Corr(Male_data_64(:,2),Male_data_64(:,2).*(Male_data_64(:,1)/100).^c) ...
    My_Corr(Male_data_65(:,2),Male_data_65(:,2).*(Male_data_65(:,1)/100).^c) ...
    My_Corr(Male_data_66(:,2),Male_data_66(:,2).*(Male_data_66(:,1)/100).^c) ...
    My_Corr(Male_data_67(:,2),Male_data_67(:,2).*(Male_data_67(:,1)/100).^c) ...
    My_Corr(Male_data_68(:,2),Male_data_68(:,2).*(Male_data_68(:,1)/100).^c) ...
    My_Corr(Male_data_69(:,2),Male_data_69(:,2).*(Male_data_69(:,1)/100).^c) ...
    My_Corr(Male_data_70(:,2),Male_data_70(:,2).*(Male_data_70(:,1)/100).^c) ...
    My_Corr(Male_data_71(:,2),Male_data_71(:,2).*(Male_data_71(:,1)/100).^c) ...
    My_Corr(Male_data_72(:,2),Male_data_72(:,2).*(Male_data_72(:,1)/100).^c) ...
    My_Corr(Male_data_73(:,2),Male_data_73(:,2).*(Male_data_73(:,1)/100).^c) ...
    My_Corr(Male_data_74(:,2),Male_data_74(:,2).*(Male_data_74(:,1)/100).^c) ...
    My_Corr(Male_data_75(:,2),Male_data_75(:,2).*(Male_data_75(:,1)/100).^c) ...
    My_Corr(Male_data_76(:,2),Male_data_76(:,2).*(Male_data_76(:,1)/100).^c) ...
    My_Corr(Male_data_77(:,2),Male_data_77(:,2).*(Male_data_77(:,1)/100).^c) ...
    My_Corr(Male_data_78(:,2),Male_data_78(:,2).*(Male_data_78(:,1)/100).^c) ...
    My_Corr(Male_data_79(:,2),Male_data_79(:,2).*(Male_data_79(:,1)/100).^c) ...
    My_Corr(Male_data_80(:,2),Male_data_80(:,2).*(Male_data_80(:,1)/100).^c) ...
    My_Corr(Male_data_81(:,2),Male_data_81(:,2).*(Male_data_81(:,1)/100).^c) ...
    My_Corr(Male_data_82(:,2),Male_data_82(:,2).*(Male_data_82(:,1)/100).^c) ...
    My_Corr(Male_data_83(:,2),Male_data_83(:,2).*(Male_data_83(:,1)/100).^c) ...
    My_Corr(Male_data_84(:,2),Male_data_84(:,2).*(Male_data_84(:,1)/100).^c) ...
    My_Corr(Male_data_85(:,2),Male_data_85(:,2).*(Male_data_85(:,1)/100).^c)
    ];

%% 47_Croatia
% Loading the data
Female_data = xlsread('Data_Europe\47_Croatia.xlsx','Female');
Male_data = xlsread('Data_Europe\47_Croatia.xlsx','Male');
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

% We calculate the correlation coefficients
% Weight VS Weight*Height^c
Age_47_Croatia = 51:89;
Corr_47_Croatia_Female = [My_Corr(Female_data_51(:,2),Female_data_51(:,2).*(Female_data_51(:,1)/100).^c) ...
    My_Corr(Female_data_52(:,2),Female_data_52(:,2).*(Female_data_52(:,1)/100).^c) ...
    My_Corr(Female_data_53(:,2),Female_data_53(:,2).*(Female_data_53(:,1)/100).^c) ...
    My_Corr(Female_data_54(:,2),Female_data_54(:,2).*(Female_data_54(:,1)/100).^c) ...
    My_Corr(Female_data_55(:,2),Female_data_55(:,2).*(Female_data_55(:,1)/100).^c) ...
    My_Corr(Female_data_56(:,2),Female_data_56(:,2).*(Female_data_56(:,1)/100).^c) ...
    My_Corr(Female_data_57(:,2),Female_data_57(:,2).*(Female_data_57(:,1)/100).^c) ...
    My_Corr(Female_data_58(:,2),Female_data_58(:,2).*(Female_data_58(:,1)/100).^c) ...
    My_Corr(Female_data_59(:,2),Female_data_59(:,2).*(Female_data_59(:,1)/100).^c) ...
    My_Corr(Female_data_60(:,2),Female_data_60(:,2).*(Female_data_60(:,1)/100).^c) ...
    My_Corr(Female_data_61(:,2),Female_data_61(:,2).*(Female_data_61(:,1)/100).^c) ...
    My_Corr(Female_data_62(:,2),Female_data_62(:,2).*(Female_data_62(:,1)/100).^c) ...
    My_Corr(Female_data_63(:,2),Female_data_63(:,2).*(Female_data_63(:,1)/100).^c) ...
    My_Corr(Female_data_64(:,2),Female_data_64(:,2).*(Female_data_64(:,1)/100).^c) ...
    My_Corr(Female_data_65(:,2),Female_data_65(:,2).*(Female_data_65(:,1)/100).^c) ...
    My_Corr(Female_data_66(:,2),Female_data_66(:,2).*(Female_data_66(:,1)/100).^c) ...
    My_Corr(Female_data_67(:,2),Female_data_67(:,2).*(Female_data_67(:,1)/100).^c) ...
    My_Corr(Female_data_68(:,2),Female_data_68(:,2).*(Female_data_68(:,1)/100).^c) ...
    My_Corr(Female_data_69(:,2),Female_data_69(:,2).*(Female_data_69(:,1)/100).^c) ...
    My_Corr(Female_data_70(:,2),Female_data_70(:,2).*(Female_data_70(:,1)/100).^c) ...
    My_Corr(Female_data_71(:,2),Female_data_71(:,2).*(Female_data_71(:,1)/100).^c) ...
    My_Corr(Female_data_72(:,2),Female_data_72(:,2).*(Female_data_72(:,1)/100).^c) ...
    My_Corr(Female_data_73(:,2),Female_data_73(:,2).*(Female_data_73(:,1)/100).^c) ...
    My_Corr(Female_data_74(:,2),Female_data_74(:,2).*(Female_data_74(:,1)/100).^c) ...
    My_Corr(Female_data_75(:,2),Female_data_75(:,2).*(Female_data_75(:,1)/100).^c) ...
    My_Corr(Female_data_76(:,2),Female_data_76(:,2).*(Female_data_76(:,1)/100).^c) ...
    My_Corr(Female_data_77(:,2),Female_data_77(:,2).*(Female_data_77(:,1)/100).^c) ...
    My_Corr(Female_data_78(:,2),Female_data_78(:,2).*(Female_data_78(:,1)/100).^c) ...
    My_Corr(Female_data_79(:,2),Female_data_79(:,2).*(Female_data_79(:,1)/100).^c) ...
    My_Corr(Female_data_80(:,2),Female_data_80(:,2).*(Female_data_80(:,1)/100).^c) ...
    My_Corr(Female_data_81(:,2),Female_data_81(:,2).*(Female_data_81(:,1)/100).^c) ...
    My_Corr(Female_data_82(:,2),Female_data_82(:,2).*(Female_data_82(:,1)/100).^c) ...
    My_Corr(Female_data_83(:,2),Female_data_83(:,2).*(Female_data_83(:,1)/100).^c) ...
    My_Corr(Female_data_84(:,2),Female_data_84(:,2).*(Female_data_84(:,1)/100).^c) ...
    My_Corr(Female_data_85(:,2),Female_data_85(:,2).*(Female_data_85(:,1)/100).^c) ...
    My_Corr(Female_data_86(:,2),Female_data_86(:,2).*(Female_data_86(:,1)/100).^c) ...
    My_Corr(Female_data_87(:,2),Female_data_87(:,2).*(Female_data_87(:,1)/100).^c) ...
    My_Corr(Female_data_88(:,2),Female_data_88(:,2).*(Female_data_88(:,1)/100).^c) ...
    My_Corr(Female_data_89(:,2),Female_data_89(:,2).*(Female_data_89(:,1)/100).^c)
    ];

Corr_47_Croatia_Male = [My_Corr(Male_data_51(:,2),Male_data_51(:,2).*(Male_data_51(:,1)/100).^c) ...
    My_Corr(Male_data_52(:,2),Male_data_52(:,2).*(Male_data_52(:,1)/100).^c) ...
    My_Corr(Male_data_53(:,2),Male_data_53(:,2).*(Male_data_53(:,1)/100).^c) ...
    My_Corr(Male_data_54(:,2),Male_data_54(:,2).*(Male_data_54(:,1)/100).^c) ...
    My_Corr(Male_data_55(:,2),Male_data_55(:,2).*(Male_data_55(:,1)/100).^c) ...
    My_Corr(Male_data_56(:,2),Male_data_56(:,2).*(Male_data_56(:,1)/100).^c) ...
    My_Corr(Male_data_57(:,2),Male_data_57(:,2).*(Male_data_57(:,1)/100).^c) ...
    My_Corr(Male_data_58(:,2),Male_data_58(:,2).*(Male_data_58(:,1)/100).^c) ...
    My_Corr(Male_data_59(:,2),Male_data_59(:,2).*(Male_data_59(:,1)/100).^c) ...
    My_Corr(Male_data_60(:,2),Male_data_60(:,2).*(Male_data_60(:,1)/100).^c) ...
    My_Corr(Male_data_61(:,2),Male_data_61(:,2).*(Male_data_61(:,1)/100).^c) ...
    My_Corr(Male_data_62(:,2),Male_data_62(:,2).*(Male_data_62(:,1)/100).^c) ...
    My_Corr(Male_data_63(:,2),Male_data_63(:,2).*(Male_data_63(:,1)/100).^c) ...
    My_Corr(Male_data_64(:,2),Male_data_64(:,2).*(Male_data_64(:,1)/100).^c) ...
    My_Corr(Male_data_65(:,2),Male_data_65(:,2).*(Male_data_65(:,1)/100).^c) ...
    My_Corr(Male_data_66(:,2),Male_data_66(:,2).*(Male_data_66(:,1)/100).^c) ...
    My_Corr(Male_data_67(:,2),Male_data_67(:,2).*(Male_data_67(:,1)/100).^c) ...
    My_Corr(Male_data_68(:,2),Male_data_68(:,2).*(Male_data_68(:,1)/100).^c) ...
    My_Corr(Male_data_69(:,2),Male_data_69(:,2).*(Male_data_69(:,1)/100).^c) ...
    My_Corr(Male_data_70(:,2),Male_data_70(:,2).*(Male_data_70(:,1)/100).^c) ...
    My_Corr(Male_data_71(:,2),Male_data_71(:,2).*(Male_data_71(:,1)/100).^c) ...
    My_Corr(Male_data_72(:,2),Male_data_72(:,2).*(Male_data_72(:,1)/100).^c) ...
    My_Corr(Male_data_73(:,2),Male_data_73(:,2).*(Male_data_73(:,1)/100).^c) ...
    My_Corr(Male_data_74(:,2),Male_data_74(:,2).*(Male_data_74(:,1)/100).^c) ...
    My_Corr(Male_data_75(:,2),Male_data_75(:,2).*(Male_data_75(:,1)/100).^c) ...
    My_Corr(Male_data_76(:,2),Male_data_76(:,2).*(Male_data_76(:,1)/100).^c) ...
    My_Corr(Male_data_77(:,2),Male_data_77(:,2).*(Male_data_77(:,1)/100).^c) ...
    My_Corr(Male_data_78(:,2),Male_data_78(:,2).*(Male_data_78(:,1)/100).^c) ...
    My_Corr(Male_data_79(:,2),Male_data_79(:,2).*(Male_data_79(:,1)/100).^c) ...
    My_Corr(Male_data_80(:,2),Male_data_80(:,2).*(Male_data_80(:,1)/100).^c) ...
    My_Corr(Male_data_81(:,2),Male_data_81(:,2).*(Male_data_81(:,1)/100).^c) ...
    My_Corr(Male_data_82(:,2),Male_data_82(:,2).*(Male_data_82(:,1)/100).^c) ...
    My_Corr(Male_data_83(:,2),Male_data_83(:,2).*(Male_data_83(:,1)/100).^c) ...
    My_Corr(Male_data_84(:,2),Male_data_84(:,2).*(Male_data_84(:,1)/100).^c) ...
    My_Corr(Male_data_85(:,2),Male_data_85(:,2).*(Male_data_85(:,1)/100).^c) ...
    My_Corr(Male_data_86(:,2),Male_data_86(:,2).*(Male_data_86(:,1)/100).^c) ...
    My_Corr(Male_data_87(:,2),Male_data_87(:,2).*(Male_data_87(:,1)/100).^c) ...
    My_Corr(Male_data_88(:,2),Male_data_88(:,2).*(Male_data_88(:,1)/100).^c) ...
    My_Corr(Male_data_89(:,2),Male_data_89(:,2).*(Male_data_89(:,1)/100).^c)
    ];

%% 34_Slovenia
% Loading the data
Female_data = xlsread('Data_Europe\34_Slovenia.xlsx','Female');
Male_data = xlsread('Data_Europe\34_Slovenia.xlsx','Male');
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

% We calculate the correlation coefficients
% Weight VS Weight*Height^c
Age_34_Slovenia = 50:90;
Corr_34_Slovenia_Female = [My_Corr(Female_data_50(:,2),Female_data_50(:,2).*(Female_data_50(:,1)/100).^c) ...
    My_Corr(Female_data_51(:,2),Female_data_51(:,2).*(Female_data_51(:,1)/100).^c) ...
    My_Corr(Female_data_52(:,2),Female_data_52(:,2).*(Female_data_52(:,1)/100).^c) ...
    My_Corr(Female_data_53(:,2),Female_data_53(:,2).*(Female_data_53(:,1)/100).^c) ...
    My_Corr(Female_data_54(:,2),Female_data_54(:,2).*(Female_data_54(:,1)/100).^c) ...
    My_Corr(Female_data_55(:,2),Female_data_55(:,2).*(Female_data_55(:,1)/100).^c) ...
    My_Corr(Female_data_56(:,2),Female_data_56(:,2).*(Female_data_56(:,1)/100).^c) ...
    My_Corr(Female_data_57(:,2),Female_data_57(:,2).*(Female_data_57(:,1)/100).^c) ...
    My_Corr(Female_data_58(:,2),Female_data_58(:,2).*(Female_data_58(:,1)/100).^c) ...
    My_Corr(Female_data_59(:,2),Female_data_59(:,2).*(Female_data_59(:,1)/100).^c) ...
    My_Corr(Female_data_60(:,2),Female_data_60(:,2).*(Female_data_60(:,1)/100).^c) ...
    My_Corr(Female_data_61(:,2),Female_data_61(:,2).*(Female_data_61(:,1)/100).^c) ...
    My_Corr(Female_data_62(:,2),Female_data_62(:,2).*(Female_data_62(:,1)/100).^c) ...
    My_Corr(Female_data_63(:,2),Female_data_63(:,2).*(Female_data_63(:,1)/100).^c) ...
    My_Corr(Female_data_64(:,2),Female_data_64(:,2).*(Female_data_64(:,1)/100).^c) ...
    My_Corr(Female_data_65(:,2),Female_data_65(:,2).*(Female_data_65(:,1)/100).^c) ...
    My_Corr(Female_data_66(:,2),Female_data_66(:,2).*(Female_data_66(:,1)/100).^c) ...
    My_Corr(Female_data_67(:,2),Female_data_67(:,2).*(Female_data_67(:,1)/100).^c) ...
    My_Corr(Female_data_68(:,2),Female_data_68(:,2).*(Female_data_68(:,1)/100).^c) ...
    My_Corr(Female_data_69(:,2),Female_data_69(:,2).*(Female_data_69(:,1)/100).^c) ...
    My_Corr(Female_data_70(:,2),Female_data_70(:,2).*(Female_data_70(:,1)/100).^c) ...
    My_Corr(Female_data_71(:,2),Female_data_71(:,2).*(Female_data_71(:,1)/100).^c) ...
    My_Corr(Female_data_72(:,2),Female_data_72(:,2).*(Female_data_72(:,1)/100).^c) ...
    My_Corr(Female_data_73(:,2),Female_data_73(:,2).*(Female_data_73(:,1)/100).^c) ...
    My_Corr(Female_data_74(:,2),Female_data_74(:,2).*(Female_data_74(:,1)/100).^c) ...
    My_Corr(Female_data_75(:,2),Female_data_75(:,2).*(Female_data_75(:,1)/100).^c) ...
    My_Corr(Female_data_76(:,2),Female_data_76(:,2).*(Female_data_76(:,1)/100).^c) ...
    My_Corr(Female_data_77(:,2),Female_data_77(:,2).*(Female_data_77(:,1)/100).^c) ...
    My_Corr(Female_data_78(:,2),Female_data_78(:,2).*(Female_data_78(:,1)/100).^c) ...
    My_Corr(Female_data_79(:,2),Female_data_79(:,2).*(Female_data_79(:,1)/100).^c) ...
    My_Corr(Female_data_80(:,2),Female_data_80(:,2).*(Female_data_80(:,1)/100).^c) ...
    My_Corr(Female_data_81(:,2),Female_data_81(:,2).*(Female_data_81(:,1)/100).^c) ...
    My_Corr(Female_data_82(:,2),Female_data_82(:,2).*(Female_data_82(:,1)/100).^c) ...
    My_Corr(Female_data_83(:,2),Female_data_83(:,2).*(Female_data_83(:,1)/100).^c) ...
    My_Corr(Female_data_84(:,2),Female_data_84(:,2).*(Female_data_84(:,1)/100).^c) ...
    My_Corr(Female_data_85(:,2),Female_data_85(:,2).*(Female_data_85(:,1)/100).^c) ...
    My_Corr(Female_data_86(:,2),Female_data_86(:,2).*(Female_data_86(:,1)/100).^c) ...
    My_Corr(Female_data_87(:,2),Female_data_87(:,2).*(Female_data_87(:,1)/100).^c) ...
    My_Corr(Female_data_88(:,2),Female_data_88(:,2).*(Female_data_88(:,1)/100).^c) ...
    My_Corr(Female_data_89(:,2),Female_data_89(:,2).*(Female_data_89(:,1)/100).^c) ...
    My_Corr(Female_data_90(:,2),Female_data_90(:,2).*(Female_data_90(:,1)/100).^c)
    ];

Corr_34_Slovenia_Male = [My_Corr(Male_data_50(:,2),Male_data_50(:,2).*(Male_data_50(:,1)/100).^c) ...
    My_Corr(Male_data_51(:,2),Male_data_51(:,2).*(Male_data_51(:,1)/100).^c) ...
    My_Corr(Male_data_52(:,2),Male_data_52(:,2).*(Male_data_52(:,1)/100).^c) ...
    My_Corr(Male_data_53(:,2),Male_data_53(:,2).*(Male_data_53(:,1)/100).^c) ...
    My_Corr(Male_data_54(:,2),Male_data_54(:,2).*(Male_data_54(:,1)/100).^c) ...
    My_Corr(Male_data_55(:,2),Male_data_55(:,2).*(Male_data_55(:,1)/100).^c) ...
    My_Corr(Male_data_56(:,2),Male_data_56(:,2).*(Male_data_56(:,1)/100).^c) ...
    My_Corr(Male_data_57(:,2),Male_data_57(:,2).*(Male_data_57(:,1)/100).^c) ...
    My_Corr(Male_data_58(:,2),Male_data_58(:,2).*(Male_data_58(:,1)/100).^c) ...
    My_Corr(Male_data_59(:,2),Male_data_59(:,2).*(Male_data_59(:,1)/100).^c) ...
    My_Corr(Male_data_60(:,2),Male_data_60(:,2).*(Male_data_60(:,1)/100).^c) ...
    My_Corr(Male_data_61(:,2),Male_data_61(:,2).*(Male_data_61(:,1)/100).^c) ...
    My_Corr(Male_data_62(:,2),Male_data_62(:,2).*(Male_data_62(:,1)/100).^c) ...
    My_Corr(Male_data_63(:,2),Male_data_63(:,2).*(Male_data_63(:,1)/100).^c) ...
    My_Corr(Male_data_64(:,2),Male_data_64(:,2).*(Male_data_64(:,1)/100).^c) ...
    My_Corr(Male_data_65(:,2),Male_data_65(:,2).*(Male_data_65(:,1)/100).^c) ...
    My_Corr(Male_data_66(:,2),Male_data_66(:,2).*(Male_data_66(:,1)/100).^c) ...
    My_Corr(Male_data_67(:,2),Male_data_67(:,2).*(Male_data_67(:,1)/100).^c) ...
    My_Corr(Male_data_68(:,2),Male_data_68(:,2).*(Male_data_68(:,1)/100).^c) ...
    My_Corr(Male_data_69(:,2),Male_data_69(:,2).*(Male_data_69(:,1)/100).^c) ...
    My_Corr(Male_data_70(:,2),Male_data_70(:,2).*(Male_data_70(:,1)/100).^c) ...
    My_Corr(Male_data_71(:,2),Male_data_71(:,2).*(Male_data_71(:,1)/100).^c) ...
    My_Corr(Male_data_72(:,2),Male_data_72(:,2).*(Male_data_72(:,1)/100).^c) ...
    My_Corr(Male_data_73(:,2),Male_data_73(:,2).*(Male_data_73(:,1)/100).^c) ...
    My_Corr(Male_data_74(:,2),Male_data_74(:,2).*(Male_data_74(:,1)/100).^c) ...
    My_Corr(Male_data_75(:,2),Male_data_75(:,2).*(Male_data_75(:,1)/100).^c) ...
    My_Corr(Male_data_76(:,2),Male_data_76(:,2).*(Male_data_76(:,1)/100).^c) ...
    My_Corr(Male_data_77(:,2),Male_data_77(:,2).*(Male_data_77(:,1)/100).^c) ...
    My_Corr(Male_data_78(:,2),Male_data_78(:,2).*(Male_data_78(:,1)/100).^c) ...
    My_Corr(Male_data_79(:,2),Male_data_79(:,2).*(Male_data_79(:,1)/100).^c) ...
    My_Corr(Male_data_80(:,2),Male_data_80(:,2).*(Male_data_80(:,1)/100).^c) ...
    My_Corr(Male_data_81(:,2),Male_data_81(:,2).*(Male_data_81(:,1)/100).^c) ...
    My_Corr(Male_data_82(:,2),Male_data_82(:,2).*(Male_data_82(:,1)/100).^c) ...
    My_Corr(Male_data_83(:,2),Male_data_83(:,2).*(Male_data_83(:,1)/100).^c) ...
    My_Corr(Male_data_84(:,2),Male_data_84(:,2).*(Male_data_84(:,1)/100).^c) ...
    My_Corr(Male_data_85(:,2),Male_data_85(:,2).*(Male_data_85(:,1)/100).^c) ...
    My_Corr(Male_data_86(:,2),Male_data_86(:,2).*(Male_data_86(:,1)/100).^c) ...
    My_Corr(Male_data_87(:,2),Male_data_87(:,2).*(Male_data_87(:,1)/100).^c) ...
    My_Corr(Male_data_88(:,2),Male_data_88(:,2).*(Male_data_88(:,1)/100).^c) ...
    My_Corr(Male_data_89(:,2),Male_data_89(:,2).*(Male_data_89(:,1)/100).^c) ...
    My_Corr(Male_data_90(:,2),Male_data_90(:,2).*(Male_data_90(:,1)/100).^c)
    ];

%% 33_Portugal
% Loading the data
Female_data = xlsread('Data_Europe\33_Portugal.xlsx','Female');
Male_data = xlsread('Data_Europe\33_Portugal.xlsx','Male');
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
Female_data_87 = []; % >=87

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

% We calculate the correlation coefficients
% Weight VS Weight*Height^c
Age_33_Portugal = 51:87;
Corr_33_Portugal_Female = [My_Corr(Female_data_51(:,2),Female_data_51(:,2).*(Female_data_51(:,1)/100).^c) ...
    My_Corr(Female_data_52(:,2),Female_data_52(:,2).*(Female_data_52(:,1)/100).^c) ...
    My_Corr(Female_data_53(:,2),Female_data_53(:,2).*(Female_data_53(:,1)/100).^c) ...
    My_Corr(Female_data_54(:,2),Female_data_54(:,2).*(Female_data_54(:,1)/100).^c) ...
    My_Corr(Female_data_55(:,2),Female_data_55(:,2).*(Female_data_55(:,1)/100).^c) ...
    My_Corr(Female_data_56(:,2),Female_data_56(:,2).*(Female_data_56(:,1)/100).^c) ...
    My_Corr(Female_data_57(:,2),Female_data_57(:,2).*(Female_data_57(:,1)/100).^c) ...
    My_Corr(Female_data_58(:,2),Female_data_58(:,2).*(Female_data_58(:,1)/100).^c) ...
    My_Corr(Female_data_59(:,2),Female_data_59(:,2).*(Female_data_59(:,1)/100).^c) ...
    My_Corr(Female_data_60(:,2),Female_data_60(:,2).*(Female_data_60(:,1)/100).^c) ...
    My_Corr(Female_data_61(:,2),Female_data_61(:,2).*(Female_data_61(:,1)/100).^c) ...
    My_Corr(Female_data_62(:,2),Female_data_62(:,2).*(Female_data_62(:,1)/100).^c) ...
    My_Corr(Female_data_63(:,2),Female_data_63(:,2).*(Female_data_63(:,1)/100).^c) ...
    My_Corr(Female_data_64(:,2),Female_data_64(:,2).*(Female_data_64(:,1)/100).^c) ...
    My_Corr(Female_data_65(:,2),Female_data_65(:,2).*(Female_data_65(:,1)/100).^c) ...
    My_Corr(Female_data_66(:,2),Female_data_66(:,2).*(Female_data_66(:,1)/100).^c) ...
    My_Corr(Female_data_67(:,2),Female_data_67(:,2).*(Female_data_67(:,1)/100).^c) ...
    My_Corr(Female_data_68(:,2),Female_data_68(:,2).*(Female_data_68(:,1)/100).^c) ...
    My_Corr(Female_data_69(:,2),Female_data_69(:,2).*(Female_data_69(:,1)/100).^c) ...
    My_Corr(Female_data_70(:,2),Female_data_70(:,2).*(Female_data_70(:,1)/100).^c) ...
    My_Corr(Female_data_71(:,2),Female_data_71(:,2).*(Female_data_71(:,1)/100).^c) ...
    My_Corr(Female_data_72(:,2),Female_data_72(:,2).*(Female_data_72(:,1)/100).^c) ...
    My_Corr(Female_data_73(:,2),Female_data_73(:,2).*(Female_data_73(:,1)/100).^c) ...
    My_Corr(Female_data_74(:,2),Female_data_74(:,2).*(Female_data_74(:,1)/100).^c) ...
    My_Corr(Female_data_75(:,2),Female_data_75(:,2).*(Female_data_75(:,1)/100).^c) ...
    My_Corr(Female_data_76(:,2),Female_data_76(:,2).*(Female_data_76(:,1)/100).^c) ...
    My_Corr(Female_data_77(:,2),Female_data_77(:,2).*(Female_data_77(:,1)/100).^c) ...
    My_Corr(Female_data_78(:,2),Female_data_78(:,2).*(Female_data_78(:,1)/100).^c) ...
    My_Corr(Female_data_79(:,2),Female_data_79(:,2).*(Female_data_79(:,1)/100).^c) ...
    My_Corr(Female_data_80(:,2),Female_data_80(:,2).*(Female_data_80(:,1)/100).^c) ...
    My_Corr(Female_data_81(:,2),Female_data_81(:,2).*(Female_data_81(:,1)/100).^c) ...
    My_Corr(Female_data_82(:,2),Female_data_82(:,2).*(Female_data_82(:,1)/100).^c) ...
    My_Corr(Female_data_83(:,2),Female_data_83(:,2).*(Female_data_83(:,1)/100).^c) ...
    My_Corr(Female_data_84(:,2),Female_data_84(:,2).*(Female_data_84(:,1)/100).^c) ...
    My_Corr(Female_data_85(:,2),Female_data_85(:,2).*(Female_data_85(:,1)/100).^c) ...
    My_Corr(Female_data_86(:,2),Female_data_86(:,2).*(Female_data_86(:,1)/100).^c) ...
    My_Corr(Female_data_87(:,2),Female_data_87(:,2).*(Female_data_87(:,1)/100).^c)
    ];

Corr_33_Portugal_Male = [My_Corr(Male_data_51(:,2),Male_data_51(:,2).*(Male_data_51(:,1)/100).^c) ...
    My_Corr(Male_data_52(:,2),Male_data_52(:,2).*(Male_data_52(:,1)/100).^c) ...
    My_Corr(Male_data_53(:,2),Male_data_53(:,2).*(Male_data_53(:,1)/100).^c) ...
    My_Corr(Male_data_54(:,2),Male_data_54(:,2).*(Male_data_54(:,1)/100).^c) ...
    My_Corr(Male_data_55(:,2),Male_data_55(:,2).*(Male_data_55(:,1)/100).^c) ...
    My_Corr(Male_data_56(:,2),Male_data_56(:,2).*(Male_data_56(:,1)/100).^c) ...
    My_Corr(Male_data_57(:,2),Male_data_57(:,2).*(Male_data_57(:,1)/100).^c) ...
    My_Corr(Male_data_58(:,2),Male_data_58(:,2).*(Male_data_58(:,1)/100).^c) ...
    My_Corr(Male_data_59(:,2),Male_data_59(:,2).*(Male_data_59(:,1)/100).^c) ...
    My_Corr(Male_data_60(:,2),Male_data_60(:,2).*(Male_data_60(:,1)/100).^c) ...
    My_Corr(Male_data_61(:,2),Male_data_61(:,2).*(Male_data_61(:,1)/100).^c) ...
    My_Corr(Male_data_62(:,2),Male_data_62(:,2).*(Male_data_62(:,1)/100).^c) ...
    My_Corr(Male_data_63(:,2),Male_data_63(:,2).*(Male_data_63(:,1)/100).^c) ...
    My_Corr(Male_data_64(:,2),Male_data_64(:,2).*(Male_data_64(:,1)/100).^c) ...
    My_Corr(Male_data_65(:,2),Male_data_65(:,2).*(Male_data_65(:,1)/100).^c) ...
    My_Corr(Male_data_66(:,2),Male_data_66(:,2).*(Male_data_66(:,1)/100).^c) ...
    My_Corr(Male_data_67(:,2),Male_data_67(:,2).*(Male_data_67(:,1)/100).^c) ...
    My_Corr(Male_data_68(:,2),Male_data_68(:,2).*(Male_data_68(:,1)/100).^c) ...
    My_Corr(Male_data_69(:,2),Male_data_69(:,2).*(Male_data_69(:,1)/100).^c) ...
    My_Corr(Male_data_70(:,2),Male_data_70(:,2).*(Male_data_70(:,1)/100).^c) ...
    My_Corr(Male_data_71(:,2),Male_data_71(:,2).*(Male_data_71(:,1)/100).^c) ...
    My_Corr(Male_data_72(:,2),Male_data_72(:,2).*(Male_data_72(:,1)/100).^c) ...
    My_Corr(Male_data_73(:,2),Male_data_73(:,2).*(Male_data_73(:,1)/100).^c) ...
    My_Corr(Male_data_74(:,2),Male_data_74(:,2).*(Male_data_74(:,1)/100).^c) ...
    My_Corr(Male_data_75(:,2),Male_data_75(:,2).*(Male_data_75(:,1)/100).^c) ...
    My_Corr(Male_data_76(:,2),Male_data_76(:,2).*(Male_data_76(:,1)/100).^c) ...
    My_Corr(Male_data_77(:,2),Male_data_77(:,2).*(Male_data_77(:,1)/100).^c) ...
    My_Corr(Male_data_78(:,2),Male_data_78(:,2).*(Male_data_78(:,1)/100).^c) ...
    My_Corr(Male_data_79(:,2),Male_data_79(:,2).*(Male_data_79(:,1)/100).^c) ...
    My_Corr(Male_data_80(:,2),Male_data_80(:,2).*(Male_data_80(:,1)/100).^c) ...
    My_Corr(Male_data_81(:,2),Male_data_81(:,2).*(Male_data_81(:,1)/100).^c) ...
    My_Corr(Male_data_82(:,2),Male_data_82(:,2).*(Male_data_82(:,1)/100).^c) ...
    My_Corr(Male_data_83(:,2),Male_data_83(:,2).*(Male_data_83(:,1)/100).^c) ...
    My_Corr(Male_data_84(:,2),Male_data_84(:,2).*(Male_data_84(:,1)/100).^c) ...
    My_Corr(Male_data_85(:,2),Male_data_85(:,2).*(Male_data_85(:,1)/100).^c) ...
    My_Corr(Male_data_86(:,2),Male_data_86(:,2).*(Male_data_86(:,1)/100).^c) ...
    My_Corr(Male_data_87(:,2),Male_data_87(:,2).*(Male_data_87(:,1)/100).^c)
    ];

%% 19_Greece
% Loading the data
Female_data = xlsread('Data_Europe\19_Greece.xlsx','Female');
Male_data = xlsread('Data_Europe\19_Greece.xlsx','Male');
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

% We calculate the correlation coefficients
% Weight VS Weight*Height^c
Age_19_Greece = 50:87;
Corr_19_Greece_Female = [My_Corr(Female_data_50(:,2),Female_data_50(:,2).*(Female_data_50(:,1)/100).^c) ...
    My_Corr(Female_data_51(:,2),Female_data_51(:,2).*(Female_data_51(:,1)/100).^c) ...
    My_Corr(Female_data_52(:,2),Female_data_52(:,2).*(Female_data_52(:,1)/100).^c) ...
    My_Corr(Female_data_53(:,2),Female_data_53(:,2).*(Female_data_53(:,1)/100).^c) ...
    My_Corr(Female_data_54(:,2),Female_data_54(:,2).*(Female_data_54(:,1)/100).^c) ...
    My_Corr(Female_data_55(:,2),Female_data_55(:,2).*(Female_data_55(:,1)/100).^c) ...
    My_Corr(Female_data_56(:,2),Female_data_56(:,2).*(Female_data_56(:,1)/100).^c) ...
    My_Corr(Female_data_57(:,2),Female_data_57(:,2).*(Female_data_57(:,1)/100).^c) ...
    My_Corr(Female_data_58(:,2),Female_data_58(:,2).*(Female_data_58(:,1)/100).^c) ...
    My_Corr(Female_data_59(:,2),Female_data_59(:,2).*(Female_data_59(:,1)/100).^c) ...
    My_Corr(Female_data_60(:,2),Female_data_60(:,2).*(Female_data_60(:,1)/100).^c) ...
    My_Corr(Female_data_61(:,2),Female_data_61(:,2).*(Female_data_61(:,1)/100).^c) ...
    My_Corr(Female_data_62(:,2),Female_data_62(:,2).*(Female_data_62(:,1)/100).^c) ...
    My_Corr(Female_data_63(:,2),Female_data_63(:,2).*(Female_data_63(:,1)/100).^c) ...
    My_Corr(Female_data_64(:,2),Female_data_64(:,2).*(Female_data_64(:,1)/100).^c) ...
    My_Corr(Female_data_65(:,2),Female_data_65(:,2).*(Female_data_65(:,1)/100).^c) ...
    My_Corr(Female_data_66(:,2),Female_data_66(:,2).*(Female_data_66(:,1)/100).^c) ...
    My_Corr(Female_data_67(:,2),Female_data_67(:,2).*(Female_data_67(:,1)/100).^c) ...
    My_Corr(Female_data_68(:,2),Female_data_68(:,2).*(Female_data_68(:,1)/100).^c) ...
    My_Corr(Female_data_69(:,2),Female_data_69(:,2).*(Female_data_69(:,1)/100).^c) ...
    My_Corr(Female_data_70(:,2),Female_data_70(:,2).*(Female_data_70(:,1)/100).^c) ...
    My_Corr(Female_data_71(:,2),Female_data_71(:,2).*(Female_data_71(:,1)/100).^c) ...
    My_Corr(Female_data_72(:,2),Female_data_72(:,2).*(Female_data_72(:,1)/100).^c) ...
    My_Corr(Female_data_73(:,2),Female_data_73(:,2).*(Female_data_73(:,1)/100).^c) ...
    My_Corr(Female_data_74(:,2),Female_data_74(:,2).*(Female_data_74(:,1)/100).^c) ...
    My_Corr(Female_data_75(:,2),Female_data_75(:,2).*(Female_data_75(:,1)/100).^c) ...
    My_Corr(Female_data_76(:,2),Female_data_76(:,2).*(Female_data_76(:,1)/100).^c) ...
    My_Corr(Female_data_77(:,2),Female_data_77(:,2).*(Female_data_77(:,1)/100).^c) ...
    My_Corr(Female_data_78(:,2),Female_data_78(:,2).*(Female_data_78(:,1)/100).^c) ...
    My_Corr(Female_data_79(:,2),Female_data_79(:,2).*(Female_data_79(:,1)/100).^c) ...
    My_Corr(Female_data_80(:,2),Female_data_80(:,2).*(Female_data_80(:,1)/100).^c) ...
    My_Corr(Female_data_81(:,2),Female_data_81(:,2).*(Female_data_81(:,1)/100).^c) ...
    My_Corr(Female_data_82(:,2),Female_data_82(:,2).*(Female_data_82(:,1)/100).^c) ...
    My_Corr(Female_data_83(:,2),Female_data_83(:,2).*(Female_data_83(:,1)/100).^c) ...
    My_Corr(Female_data_84(:,2),Female_data_84(:,2).*(Female_data_84(:,1)/100).^c) ...
    My_Corr(Female_data_85(:,2),Female_data_85(:,2).*(Female_data_85(:,1)/100).^c) ...
    My_Corr(Female_data_86(:,2),Female_data_86(:,2).*(Female_data_86(:,1)/100).^c) ...
    My_Corr(Female_data_87(:,2),Female_data_87(:,2).*(Female_data_87(:,1)/100).^c)
    ];

Corr_19_Greece_Male = [My_Corr(Male_data_50(:,2),Male_data_50(:,2).*(Male_data_50(:,1)/100).^c) ...
    My_Corr(Male_data_51(:,2),Male_data_51(:,2).*(Male_data_51(:,1)/100).^c) ...
    My_Corr(Male_data_52(:,2),Male_data_52(:,2).*(Male_data_52(:,1)/100).^c) ...
    My_Corr(Male_data_53(:,2),Male_data_53(:,2).*(Male_data_53(:,1)/100).^c) ...
    My_Corr(Male_data_54(:,2),Male_data_54(:,2).*(Male_data_54(:,1)/100).^c) ...
    My_Corr(Male_data_55(:,2),Male_data_55(:,2).*(Male_data_55(:,1)/100).^c) ...
    My_Corr(Male_data_56(:,2),Male_data_56(:,2).*(Male_data_56(:,1)/100).^c) ...
    My_Corr(Male_data_57(:,2),Male_data_57(:,2).*(Male_data_57(:,1)/100).^c) ...
    My_Corr(Male_data_58(:,2),Male_data_58(:,2).*(Male_data_58(:,1)/100).^c) ...
    My_Corr(Male_data_59(:,2),Male_data_59(:,2).*(Male_data_59(:,1)/100).^c) ...
    My_Corr(Male_data_60(:,2),Male_data_60(:,2).*(Male_data_60(:,1)/100).^c) ...
    My_Corr(Male_data_61(:,2),Male_data_61(:,2).*(Male_data_61(:,1)/100).^c) ...
    My_Corr(Male_data_62(:,2),Male_data_62(:,2).*(Male_data_62(:,1)/100).^c) ...
    My_Corr(Male_data_63(:,2),Male_data_63(:,2).*(Male_data_63(:,1)/100).^c) ...
    My_Corr(Male_data_64(:,2),Male_data_64(:,2).*(Male_data_64(:,1)/100).^c) ...
    My_Corr(Male_data_65(:,2),Male_data_65(:,2).*(Male_data_65(:,1)/100).^c) ...
    My_Corr(Male_data_66(:,2),Male_data_66(:,2).*(Male_data_66(:,1)/100).^c) ...
    My_Corr(Male_data_67(:,2),Male_data_67(:,2).*(Male_data_67(:,1)/100).^c) ...
    My_Corr(Male_data_68(:,2),Male_data_68(:,2).*(Male_data_68(:,1)/100).^c) ...
    My_Corr(Male_data_69(:,2),Male_data_69(:,2).*(Male_data_69(:,1)/100).^c) ...
    My_Corr(Male_data_70(:,2),Male_data_70(:,2).*(Male_data_70(:,1)/100).^c) ...
    My_Corr(Male_data_71(:,2),Male_data_71(:,2).*(Male_data_71(:,1)/100).^c) ...
    My_Corr(Male_data_72(:,2),Male_data_72(:,2).*(Male_data_72(:,1)/100).^c) ...
    My_Corr(Male_data_73(:,2),Male_data_73(:,2).*(Male_data_73(:,1)/100).^c) ...
    My_Corr(Male_data_74(:,2),Male_data_74(:,2).*(Male_data_74(:,1)/100).^c) ...
    My_Corr(Male_data_75(:,2),Male_data_75(:,2).*(Male_data_75(:,1)/100).^c) ...
    My_Corr(Male_data_76(:,2),Male_data_76(:,2).*(Male_data_76(:,1)/100).^c) ...
    My_Corr(Male_data_77(:,2),Male_data_77(:,2).*(Male_data_77(:,1)/100).^c) ...
    My_Corr(Male_data_78(:,2),Male_data_78(:,2).*(Male_data_78(:,1)/100).^c) ...
    My_Corr(Male_data_79(:,2),Male_data_79(:,2).*(Male_data_79(:,1)/100).^c) ...
    My_Corr(Male_data_80(:,2),Male_data_80(:,2).*(Male_data_80(:,1)/100).^c) ...
    My_Corr(Male_data_81(:,2),Male_data_81(:,2).*(Male_data_81(:,1)/100).^c) ...
    My_Corr(Male_data_82(:,2),Male_data_82(:,2).*(Male_data_82(:,1)/100).^c) ...
    My_Corr(Male_data_83(:,2),Male_data_83(:,2).*(Male_data_83(:,1)/100).^c) ...
    My_Corr(Male_data_84(:,2),Male_data_84(:,2).*(Male_data_84(:,1)/100).^c) ...
    My_Corr(Male_data_85(:,2),Male_data_85(:,2).*(Male_data_85(:,1)/100).^c) ...
    My_Corr(Male_data_86(:,2),Male_data_86(:,2).*(Male_data_86(:,1)/100).^c) ...
    My_Corr(Male_data_87(:,2),Male_data_87(:,2).*(Male_data_87(:,1)/100).^c)
    ];

%% 16_Italy
% Loading the data
Female_data = xlsread('Data_Europe\16_Italy.xlsx','Female');
Male_data = xlsread('Data_Europe\16_Italy.xlsx','Male');
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

% We calculate the correlation coefficients
% Weight VS Weight*Height^c
Age_16_Italy = 50:87;
Corr_16_Italy_Female = [My_Corr(Female_data_50(:,2),Female_data_50(:,2).*(Female_data_50(:,1)/100).^c) ...
    My_Corr(Female_data_51(:,2),Female_data_51(:,2).*(Female_data_51(:,1)/100).^c) ...
    My_Corr(Female_data_52(:,2),Female_data_52(:,2).*(Female_data_52(:,1)/100).^c) ...
    My_Corr(Female_data_53(:,2),Female_data_53(:,2).*(Female_data_53(:,1)/100).^c) ...
    My_Corr(Female_data_54(:,2),Female_data_54(:,2).*(Female_data_54(:,1)/100).^c) ...
    My_Corr(Female_data_55(:,2),Female_data_55(:,2).*(Female_data_55(:,1)/100).^c) ...
    My_Corr(Female_data_56(:,2),Female_data_56(:,2).*(Female_data_56(:,1)/100).^c) ...
    My_Corr(Female_data_57(:,2),Female_data_57(:,2).*(Female_data_57(:,1)/100).^c) ...
    My_Corr(Female_data_58(:,2),Female_data_58(:,2).*(Female_data_58(:,1)/100).^c) ...
    My_Corr(Female_data_59(:,2),Female_data_59(:,2).*(Female_data_59(:,1)/100).^c) ...
    My_Corr(Female_data_60(:,2),Female_data_60(:,2).*(Female_data_60(:,1)/100).^c) ...
    My_Corr(Female_data_61(:,2),Female_data_61(:,2).*(Female_data_61(:,1)/100).^c) ...
    My_Corr(Female_data_62(:,2),Female_data_62(:,2).*(Female_data_62(:,1)/100).^c) ...
    My_Corr(Female_data_63(:,2),Female_data_63(:,2).*(Female_data_63(:,1)/100).^c) ...
    My_Corr(Female_data_64(:,2),Female_data_64(:,2).*(Female_data_64(:,1)/100).^c) ...
    My_Corr(Female_data_65(:,2),Female_data_65(:,2).*(Female_data_65(:,1)/100).^c) ...
    My_Corr(Female_data_66(:,2),Female_data_66(:,2).*(Female_data_66(:,1)/100).^c) ...
    My_Corr(Female_data_67(:,2),Female_data_67(:,2).*(Female_data_67(:,1)/100).^c) ...
    My_Corr(Female_data_68(:,2),Female_data_68(:,2).*(Female_data_68(:,1)/100).^c) ...
    My_Corr(Female_data_69(:,2),Female_data_69(:,2).*(Female_data_69(:,1)/100).^c) ...
    My_Corr(Female_data_70(:,2),Female_data_70(:,2).*(Female_data_70(:,1)/100).^c) ...
    My_Corr(Female_data_71(:,2),Female_data_71(:,2).*(Female_data_71(:,1)/100).^c) ...
    My_Corr(Female_data_72(:,2),Female_data_72(:,2).*(Female_data_72(:,1)/100).^c) ...
    My_Corr(Female_data_73(:,2),Female_data_73(:,2).*(Female_data_73(:,1)/100).^c) ...
    My_Corr(Female_data_74(:,2),Female_data_74(:,2).*(Female_data_74(:,1)/100).^c) ...
    My_Corr(Female_data_75(:,2),Female_data_75(:,2).*(Female_data_75(:,1)/100).^c) ...
    My_Corr(Female_data_76(:,2),Female_data_76(:,2).*(Female_data_76(:,1)/100).^c) ...
    My_Corr(Female_data_77(:,2),Female_data_77(:,2).*(Female_data_77(:,1)/100).^c) ...
    My_Corr(Female_data_78(:,2),Female_data_78(:,2).*(Female_data_78(:,1)/100).^c) ...
    My_Corr(Female_data_79(:,2),Female_data_79(:,2).*(Female_data_79(:,1)/100).^c) ...
    My_Corr(Female_data_80(:,2),Female_data_80(:,2).*(Female_data_80(:,1)/100).^c) ...
    My_Corr(Female_data_81(:,2),Female_data_81(:,2).*(Female_data_81(:,1)/100).^c) ...
    My_Corr(Female_data_82(:,2),Female_data_82(:,2).*(Female_data_82(:,1)/100).^c) ...
    My_Corr(Female_data_83(:,2),Female_data_83(:,2).*(Female_data_83(:,1)/100).^c) ...
    My_Corr(Female_data_84(:,2),Female_data_84(:,2).*(Female_data_84(:,1)/100).^c) ...
    My_Corr(Female_data_85(:,2),Female_data_85(:,2).*(Female_data_85(:,1)/100).^c) ...
    My_Corr(Female_data_86(:,2),Female_data_86(:,2).*(Female_data_86(:,1)/100).^c) ...
    My_Corr(Female_data_87(:,2),Female_data_87(:,2).*(Female_data_87(:,1)/100).^c)
    ];

Corr_16_Italy_Male = [My_Corr(Male_data_50(:,2),Male_data_50(:,2).*(Male_data_50(:,1)/100).^c) ...
    My_Corr(Male_data_51(:,2),Male_data_51(:,2).*(Male_data_51(:,1)/100).^c) ...
    My_Corr(Male_data_52(:,2),Male_data_52(:,2).*(Male_data_52(:,1)/100).^c) ...
    My_Corr(Male_data_53(:,2),Male_data_53(:,2).*(Male_data_53(:,1)/100).^c) ...
    My_Corr(Male_data_54(:,2),Male_data_54(:,2).*(Male_data_54(:,1)/100).^c) ...
    My_Corr(Male_data_55(:,2),Male_data_55(:,2).*(Male_data_55(:,1)/100).^c) ...
    My_Corr(Male_data_56(:,2),Male_data_56(:,2).*(Male_data_56(:,1)/100).^c) ...
    My_Corr(Male_data_57(:,2),Male_data_57(:,2).*(Male_data_57(:,1)/100).^c) ...
    My_Corr(Male_data_58(:,2),Male_data_58(:,2).*(Male_data_58(:,1)/100).^c) ...
    My_Corr(Male_data_59(:,2),Male_data_59(:,2).*(Male_data_59(:,1)/100).^c) ...
    My_Corr(Male_data_60(:,2),Male_data_60(:,2).*(Male_data_60(:,1)/100).^c) ...
    My_Corr(Male_data_61(:,2),Male_data_61(:,2).*(Male_data_61(:,1)/100).^c) ...
    My_Corr(Male_data_62(:,2),Male_data_62(:,2).*(Male_data_62(:,1)/100).^c) ...
    My_Corr(Male_data_63(:,2),Male_data_63(:,2).*(Male_data_63(:,1)/100).^c) ...
    My_Corr(Male_data_64(:,2),Male_data_64(:,2).*(Male_data_64(:,1)/100).^c) ...
    My_Corr(Male_data_65(:,2),Male_data_65(:,2).*(Male_data_65(:,1)/100).^c) ...
    My_Corr(Male_data_66(:,2),Male_data_66(:,2).*(Male_data_66(:,1)/100).^c) ...
    My_Corr(Male_data_67(:,2),Male_data_67(:,2).*(Male_data_67(:,1)/100).^c) ...
    My_Corr(Male_data_68(:,2),Male_data_68(:,2).*(Male_data_68(:,1)/100).^c) ...
    My_Corr(Male_data_69(:,2),Male_data_69(:,2).*(Male_data_69(:,1)/100).^c) ...
    My_Corr(Male_data_70(:,2),Male_data_70(:,2).*(Male_data_70(:,1)/100).^c) ...
    My_Corr(Male_data_71(:,2),Male_data_71(:,2).*(Male_data_71(:,1)/100).^c) ...
    My_Corr(Male_data_72(:,2),Male_data_72(:,2).*(Male_data_72(:,1)/100).^c) ...
    My_Corr(Male_data_73(:,2),Male_data_73(:,2).*(Male_data_73(:,1)/100).^c) ...
    My_Corr(Male_data_74(:,2),Male_data_74(:,2).*(Male_data_74(:,1)/100).^c) ...
    My_Corr(Male_data_75(:,2),Male_data_75(:,2).*(Male_data_75(:,1)/100).^c) ...
    My_Corr(Male_data_76(:,2),Male_data_76(:,2).*(Male_data_76(:,1)/100).^c) ...
    My_Corr(Male_data_77(:,2),Male_data_77(:,2).*(Male_data_77(:,1)/100).^c) ...
    My_Corr(Male_data_78(:,2),Male_data_78(:,2).*(Male_data_78(:,1)/100).^c) ...
    My_Corr(Male_data_79(:,2),Male_data_79(:,2).*(Male_data_79(:,1)/100).^c) ...
    My_Corr(Male_data_80(:,2),Male_data_80(:,2).*(Male_data_80(:,1)/100).^c) ...
    My_Corr(Male_data_81(:,2),Male_data_81(:,2).*(Male_data_81(:,1)/100).^c) ...
    My_Corr(Male_data_82(:,2),Male_data_82(:,2).*(Male_data_82(:,1)/100).^c) ...
    My_Corr(Male_data_83(:,2),Male_data_83(:,2).*(Male_data_83(:,1)/100).^c) ...
    My_Corr(Male_data_84(:,2),Male_data_84(:,2).*(Male_data_84(:,1)/100).^c) ...
    My_Corr(Male_data_85(:,2),Male_data_85(:,2).*(Male_data_85(:,1)/100).^c) ...
    My_Corr(Male_data_86(:,2),Male_data_86(:,2).*(Male_data_86(:,1)/100).^c) ...
    My_Corr(Male_data_87(:,2),Male_data_87(:,2).*(Male_data_87(:,1)/100).^c)
    ];

%% 15_Spain
% Loading the data
Female_data = xlsread('Data_Europe\15_Spain.xlsx','Female');
Male_data = xlsread('Data_Europe\15_Spain.xlsx','Male');
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

% We calculate the correlation coefficients
% Weight VS Weight*Height^c
Age_15_Spain = 50:87;
Corr_15_Spain_Female = [My_Corr(Female_data_50(:,2),Female_data_50(:,2).*(Female_data_50(:,1)/100).^c) ...
    My_Corr(Female_data_51(:,2),Female_data_51(:,2).*(Female_data_51(:,1)/100).^c) ...
    My_Corr(Female_data_52(:,2),Female_data_52(:,2).*(Female_data_52(:,1)/100).^c) ...
    My_Corr(Female_data_53(:,2),Female_data_53(:,2).*(Female_data_53(:,1)/100).^c) ...
    My_Corr(Female_data_54(:,2),Female_data_54(:,2).*(Female_data_54(:,1)/100).^c) ...
    My_Corr(Female_data_55(:,2),Female_data_55(:,2).*(Female_data_55(:,1)/100).^c) ...
    My_Corr(Female_data_56(:,2),Female_data_56(:,2).*(Female_data_56(:,1)/100).^c) ...
    My_Corr(Female_data_57(:,2),Female_data_57(:,2).*(Female_data_57(:,1)/100).^c) ...
    My_Corr(Female_data_58(:,2),Female_data_58(:,2).*(Female_data_58(:,1)/100).^c) ...
    My_Corr(Female_data_59(:,2),Female_data_59(:,2).*(Female_data_59(:,1)/100).^c) ...
    My_Corr(Female_data_60(:,2),Female_data_60(:,2).*(Female_data_60(:,1)/100).^c) ...
    My_Corr(Female_data_61(:,2),Female_data_61(:,2).*(Female_data_61(:,1)/100).^c) ...
    My_Corr(Female_data_62(:,2),Female_data_62(:,2).*(Female_data_62(:,1)/100).^c) ...
    My_Corr(Female_data_63(:,2),Female_data_63(:,2).*(Female_data_63(:,1)/100).^c) ...
    My_Corr(Female_data_64(:,2),Female_data_64(:,2).*(Female_data_64(:,1)/100).^c) ...
    My_Corr(Female_data_65(:,2),Female_data_65(:,2).*(Female_data_65(:,1)/100).^c) ...
    My_Corr(Female_data_66(:,2),Female_data_66(:,2).*(Female_data_66(:,1)/100).^c) ...
    My_Corr(Female_data_67(:,2),Female_data_67(:,2).*(Female_data_67(:,1)/100).^c) ...
    My_Corr(Female_data_68(:,2),Female_data_68(:,2).*(Female_data_68(:,1)/100).^c) ...
    My_Corr(Female_data_69(:,2),Female_data_69(:,2).*(Female_data_69(:,1)/100).^c) ...
    My_Corr(Female_data_70(:,2),Female_data_70(:,2).*(Female_data_70(:,1)/100).^c) ...
    My_Corr(Female_data_71(:,2),Female_data_71(:,2).*(Female_data_71(:,1)/100).^c) ...
    My_Corr(Female_data_72(:,2),Female_data_72(:,2).*(Female_data_72(:,1)/100).^c) ...
    My_Corr(Female_data_73(:,2),Female_data_73(:,2).*(Female_data_73(:,1)/100).^c) ...
    My_Corr(Female_data_74(:,2),Female_data_74(:,2).*(Female_data_74(:,1)/100).^c) ...
    My_Corr(Female_data_75(:,2),Female_data_75(:,2).*(Female_data_75(:,1)/100).^c) ...
    My_Corr(Female_data_76(:,2),Female_data_76(:,2).*(Female_data_76(:,1)/100).^c) ...
    My_Corr(Female_data_77(:,2),Female_data_77(:,2).*(Female_data_77(:,1)/100).^c) ...
    My_Corr(Female_data_78(:,2),Female_data_78(:,2).*(Female_data_78(:,1)/100).^c) ...
    My_Corr(Female_data_79(:,2),Female_data_79(:,2).*(Female_data_79(:,1)/100).^c) ...
    My_Corr(Female_data_80(:,2),Female_data_80(:,2).*(Female_data_80(:,1)/100).^c) ...
    My_Corr(Female_data_81(:,2),Female_data_81(:,2).*(Female_data_81(:,1)/100).^c) ...
    My_Corr(Female_data_82(:,2),Female_data_82(:,2).*(Female_data_82(:,1)/100).^c) ...
    My_Corr(Female_data_83(:,2),Female_data_83(:,2).*(Female_data_83(:,1)/100).^c) ...
    My_Corr(Female_data_84(:,2),Female_data_84(:,2).*(Female_data_84(:,1)/100).^c) ...
    My_Corr(Female_data_85(:,2),Female_data_85(:,2).*(Female_data_85(:,1)/100).^c) ...
    My_Corr(Female_data_86(:,2),Female_data_86(:,2).*(Female_data_86(:,1)/100).^c) ...
    My_Corr(Female_data_87(:,2),Female_data_87(:,2).*(Female_data_87(:,1)/100).^c)
    ];

Corr_15_Spain_Male = [My_Corr(Male_data_50(:,2),Male_data_50(:,2).*(Male_data_50(:,1)/100).^c) ...
    My_Corr(Male_data_51(:,2),Male_data_51(:,2).*(Male_data_51(:,1)/100).^c) ...
    My_Corr(Male_data_52(:,2),Male_data_52(:,2).*(Male_data_52(:,1)/100).^c) ...
    My_Corr(Male_data_53(:,2),Male_data_53(:,2).*(Male_data_53(:,1)/100).^c) ...
    My_Corr(Male_data_54(:,2),Male_data_54(:,2).*(Male_data_54(:,1)/100).^c) ...
    My_Corr(Male_data_55(:,2),Male_data_55(:,2).*(Male_data_55(:,1)/100).^c) ...
    My_Corr(Male_data_56(:,2),Male_data_56(:,2).*(Male_data_56(:,1)/100).^c) ...
    My_Corr(Male_data_57(:,2),Male_data_57(:,2).*(Male_data_57(:,1)/100).^c) ...
    My_Corr(Male_data_58(:,2),Male_data_58(:,2).*(Male_data_58(:,1)/100).^c) ...
    My_Corr(Male_data_59(:,2),Male_data_59(:,2).*(Male_data_59(:,1)/100).^c) ...
    My_Corr(Male_data_60(:,2),Male_data_60(:,2).*(Male_data_60(:,1)/100).^c) ...
    My_Corr(Male_data_61(:,2),Male_data_61(:,2).*(Male_data_61(:,1)/100).^c) ...
    My_Corr(Male_data_62(:,2),Male_data_62(:,2).*(Male_data_62(:,1)/100).^c) ...
    My_Corr(Male_data_63(:,2),Male_data_63(:,2).*(Male_data_63(:,1)/100).^c) ...
    My_Corr(Male_data_64(:,2),Male_data_64(:,2).*(Male_data_64(:,1)/100).^c) ...
    My_Corr(Male_data_65(:,2),Male_data_65(:,2).*(Male_data_65(:,1)/100).^c) ...
    My_Corr(Male_data_66(:,2),Male_data_66(:,2).*(Male_data_66(:,1)/100).^c) ...
    My_Corr(Male_data_67(:,2),Male_data_67(:,2).*(Male_data_67(:,1)/100).^c) ...
    My_Corr(Male_data_68(:,2),Male_data_68(:,2).*(Male_data_68(:,1)/100).^c) ...
    My_Corr(Male_data_69(:,2),Male_data_69(:,2).*(Male_data_69(:,1)/100).^c) ...
    My_Corr(Male_data_70(:,2),Male_data_70(:,2).*(Male_data_70(:,1)/100).^c) ...
    My_Corr(Male_data_71(:,2),Male_data_71(:,2).*(Male_data_71(:,1)/100).^c) ...
    My_Corr(Male_data_72(:,2),Male_data_72(:,2).*(Male_data_72(:,1)/100).^c) ...
    My_Corr(Male_data_73(:,2),Male_data_73(:,2).*(Male_data_73(:,1)/100).^c) ...
    My_Corr(Male_data_74(:,2),Male_data_74(:,2).*(Male_data_74(:,1)/100).^c) ...
    My_Corr(Male_data_75(:,2),Male_data_75(:,2).*(Male_data_75(:,1)/100).^c) ...
    My_Corr(Male_data_76(:,2),Male_data_76(:,2).*(Male_data_76(:,1)/100).^c) ...
    My_Corr(Male_data_77(:,2),Male_data_77(:,2).*(Male_data_77(:,1)/100).^c) ...
    My_Corr(Male_data_78(:,2),Male_data_78(:,2).*(Male_data_78(:,1)/100).^c) ...
    My_Corr(Male_data_79(:,2),Male_data_79(:,2).*(Male_data_79(:,1)/100).^c) ...
    My_Corr(Male_data_80(:,2),Male_data_80(:,2).*(Male_data_80(:,1)/100).^c) ...
    My_Corr(Male_data_81(:,2),Male_data_81(:,2).*(Male_data_81(:,1)/100).^c) ...
    My_Corr(Male_data_82(:,2),Male_data_82(:,2).*(Male_data_82(:,1)/100).^c) ...
    My_Corr(Male_data_83(:,2),Male_data_83(:,2).*(Male_data_83(:,1)/100).^c) ...
    My_Corr(Male_data_84(:,2),Male_data_84(:,2).*(Male_data_84(:,1)/100).^c) ...
    My_Corr(Male_data_85(:,2),Male_data_85(:,2).*(Male_data_85(:,1)/100).^c) ...
    My_Corr(Male_data_86(:,2),Male_data_86(:,2).*(Male_data_86(:,1)/100).^c) ...
    My_Corr(Male_data_87(:,2),Male_data_87(:,2).*(Male_data_87(:,1)/100).^c)
    ];

%% We show the results
figure;
% For female
subplot(2,1,1);
hold on;
title('Female')
xlabel('Age (yr)');
ylabel('Correlation coefficients')
xlim([49 91]);
ylim([0.9 1]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

% 61_Romania
x_data = Age_61_Romania;
y_data = Corr_61_Romania_Female;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(1,:),'MarkerFaceColor','w');

% 59_Malta
x_data = Age_59_Malta;
y_data = Corr_59_Malta_Female;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(2,:),'MarkerFaceColor','w');

% 53_Cyprus
x_data = Age_53_Cyprus;
y_data = Corr_53_Cyprus_Female;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(3,:),'MarkerFaceColor','w');

% 51_Bulgaria
x_data = Age_51_Bulgaria;
y_data = Corr_51_Bulgaria_Female;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(4,:),'MarkerFaceColor','w');

% 47_Croatia
x_data = Age_47_Croatia;
y_data = Corr_47_Croatia_Female;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(5,:),'MarkerFaceColor','w');

% 34_Slovenia
x_data = Age_34_Slovenia;
y_data = Corr_34_Slovenia_Female;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(6,:),'MarkerFaceColor','w');

% 33_Portugal
x_data = Age_33_Portugal;
y_data = Corr_33_Portugal_Female;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(7,:),'MarkerFaceColor','w');

% 19_Greece
x_data = Age_19_Greece;
y_data = Corr_19_Greece_Female;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(8,:),'MarkerFaceColor','w');

% 16_Italy
x_data = Age_16_Italy;
y_data = Corr_16_Italy_Female;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(9,:),'MarkerFaceColor','w');

% 15_Spain
x_data = Age_15_Spain;
y_data = Corr_15_Spain_Female;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(10,:),'MarkerFaceColor','w');

% For Male
subplot(2,1,2);
hold on;
title('Male')
xlabel('Age (yr)');
ylabel('Correlation coefficients')
xlim([49 91]);
ylim([0.9 1]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

% 61_Romania
x_data = Age_61_Romania;
y_data = Corr_61_Romania_Male;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(1,:),'MarkerFaceColor','w');

% 59_Malta
x_data = Age_59_Malta;
y_data = Corr_59_Malta_Male;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(2,:),'MarkerFaceColor','w');

% 53_Cyprus
x_data = Age_53_Cyprus;
y_data = Corr_53_Cyprus_Male;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(3,:),'MarkerFaceColor','w');

% 51_Bulgaria
x_data = Age_51_Bulgaria;
y_data = Corr_51_Bulgaria_Male;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(4,:),'MarkerFaceColor','w');

% 47_Croatia
x_data = Age_47_Croatia;
y_data = Corr_47_Croatia_Male;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(5,:),'MarkerFaceColor','w');

% 34_Slovenia
x_data = Age_34_Slovenia;
y_data = Corr_34_Slovenia_Male;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(6,:),'MarkerFaceColor','w');

% 33_Portugal
x_data = Age_33_Portugal;
y_data = Corr_33_Portugal_Female;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(7,:),'MarkerFaceColor','w');

% 19_Greece
x_data = Age_19_Greece;
y_data = Corr_19_Greece_Male;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(8,:),'MarkerFaceColor','w');

% 16_Italy
x_data = Age_16_Italy;
y_data = Corr_16_Italy_Male;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(9,:),'MarkerFaceColor','w');

% 15_Spain
x_data = Age_15_Spain;
y_data = Corr_15_Spain_Male;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(10,:),'MarkerFaceColor','w');

%%
% We save the correlation analysis results
save('Correlation_coefficient_c1_Southern_Europe.mat','Age_61_Romania','Corr_61_Romania_Female','Corr_61_Romania_Male',...
    'Age_59_Malta','Corr_59_Malta_Female','Corr_59_Malta_Male',....
    'Age_53_Cyprus','Corr_53_Cyprus_Female','Corr_53_Cyprus_Male',...
    'Age_51_Bulgaria','Corr_51_Bulgaria_Female','Corr_51_Bulgaria_Male',...
    'Age_47_Croatia','Corr_47_Croatia_Female','Corr_47_Croatia_Male',...
    'Age_34_Slovenia','Corr_34_Slovenia_Female','Corr_34_Slovenia_Male',...
    'Age_33_Portugal','Corr_33_Portugal_Female','Corr_33_Portugal_Male',...
    'Age_19_Greece','Corr_19_Greece_Female','Corr_19_Greece_Male',...
    'Age_16_Italy','Corr_16_Italy_Female','Corr_16_Italy_Male',...
    'Age_15_Spain','Corr_15_Spain_Female','Corr_15_Spain_Male');
