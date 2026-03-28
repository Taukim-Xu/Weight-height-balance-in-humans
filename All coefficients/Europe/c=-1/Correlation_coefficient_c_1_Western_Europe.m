% We show the relative coefficients between Weight and Weight*Height^c for
% all Western Europe datasets when exponent c = -1;
% Including:
% 55_Finland - 芬兰
% 31_Luxembourg - 卢森堡
% 23_Belgium - 比利时
% 17_France - 法国
% 14_Netherlands - 荷兰
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
%% 55_Finland
% Loading the data
Female_data = xlsread('55_Finland.xlsx','Female');
Male_data = xlsread('55_Finland.xlsx','Male');
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
Age_55_Finland = 50:90;
Corr_55_Finland_Female = [My_Corr(Female_data_50(:,2),Female_data_50(:,2).*(Female_data_50(:,1)/100).^c) ...
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

Corr_55_Finland_Male = [My_Corr(Male_data_50(:,2),Male_data_50(:,2).*(Male_data_50(:,1)/100).^c) ...
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

%% 31_Luxembourg
% Loading the data
Female_data = xlsread('31_Luxembourg.xlsx','Female');
Male_data = xlsread('31_Luxembourg.xlsx','Male');
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
Age_31_Luxembourg = 50:90;
Corr_31_Luxembourg_Female = [My_Corr(Female_data_50(:,2),Female_data_50(:,2).*(Female_data_50(:,1)/100).^c) ...
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

Corr_31_Luxembourg_Male = [My_Corr(Male_data_50(:,2),Male_data_50(:,2).*(Male_data_50(:,1)/100).^c) ...
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

%% 23_Belgium
% Loading the data
Female_data = xlsread('23_Belgium.xlsx','Female');
Male_data = xlsread('23_Belgium.xlsx','Male');
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
Age_23_Belgium = 50:90;
Corr_23_Belgium_Female = [My_Corr(Female_data_50(:,2),Female_data_50(:,2).*(Female_data_50(:,1)/100).^c) ...
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

Corr_23_Belgium_Male = [My_Corr(Male_data_50(:,2),Male_data_50(:,2).*(Male_data_50(:,1)/100).^c) ...
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

%% 17_France
% Loading the data
Female_data = xlsread('17_France.xlsx','Female');
Male_data = xlsread('17_France.xlsx','Male');
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
Age_17_France = 50:90;
Corr_17_France_Female = [My_Corr(Female_data_50(:,2),Female_data_50(:,2).*(Female_data_50(:,1)/100).^c) ...
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

Corr_17_France_Male = [My_Corr(Male_data_50(:,2),Male_data_50(:,2).*(Male_data_50(:,1)/100).^c) ...
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

%% 14_Netherlands
% Loading the data
Female_data = xlsread('14_Netherlands.xlsx','Female');
Male_data = xlsread('14_Netherlands.xlsx','Male');
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
Age_14_Netherlands = 50:90;
Corr_14_Netherlands_Female = [My_Corr(Female_data_50(:,2),Female_data_50(:,2).*(Female_data_50(:,1)/100).^c) ...
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

Corr_14_Netherlands_Male = [My_Corr(Male_data_50(:,2),Male_data_50(:,2).*(Male_data_50(:,1)/100).^c) ...
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

% 55_Finland
x_data = Age_55_Finland;
y_data = Corr_55_Finland_Female;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(1,:),'MarkerFaceColor','w');

% 31_Luxembourg
x_data = Age_31_Luxembourg;
y_data = Corr_31_Luxembourg_Female;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(2,:),'MarkerFaceColor','w');

% 23_Belgium
x_data = Age_23_Belgium;
y_data = Corr_23_Belgium_Female;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(3,:),'MarkerFaceColor','w');

% 17_France
x_data = Age_17_France;
y_data = Corr_17_France_Female;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(4,:),'MarkerFaceColor','w');

% 14_Netherlands
x_data = Age_14_Netherlands;
y_data = Corr_14_Netherlands_Female;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(5,:),'MarkerFaceColor','w');

% For Male
subplot(2,1,2);
hold on;
title('Male')
xlabel('Age (yr)');
ylabel('Correlation coefficients')
xlim([49 91]);
ylim([0.9 1]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

% 55_Finland
x_data = Age_55_Finland;
y_data = Corr_55_Finland_Male;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(1,:),'MarkerFaceColor','w');

% 31_Luxembourg
x_data = Age_31_Luxembourg;
y_data = Corr_31_Luxembourg_Male;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(2,:),'MarkerFaceColor','w');

% 23_Belgium
x_data = Age_23_Belgium;
y_data = Corr_23_Belgium_Male;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(3,:),'MarkerFaceColor','w');

% 17_France
x_data = Age_17_France;
y_data = Corr_17_France_Male;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(4,:),'MarkerFaceColor','w');

% 14_Netherlands
x_data = Age_14_Netherlands;
y_data = Corr_14_Netherlands_Male;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(5,:),'MarkerFaceColor','w');

%%
% We save the correlation analysis results
save('Correlation_coefficient_c_1_Western_Europe.mat','Age_55_Finland','Corr_55_Finland_Female','Corr_55_Finland_Male',...
    'Age_31_Luxembourg','Corr_31_Luxembourg_Female','Corr_31_Luxembourg_Male',....
    'Age_23_Belgium','Corr_23_Belgium_Female','Corr_23_Belgium_Male',...
    'Age_17_France','Corr_17_France_Female','Corr_17_France_Male',...
    'Age_14_Netherlands','Corr_14_Netherlands_Female','Corr_14_Netherlands_Male');
