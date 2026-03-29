%% 我们通过拟合优度（r2)、拟合残差等参数对比不同拟合模型对于给定性别、年龄组的体重-身高数据的拟合效果
% 模型包括异速生长模型： Weight = m*Height^k; ln(Weight) = ln(m) + k*ln(Height)
% 以及我们的双曲线模型： Weight = a + b*Weight*Height; Weight = a/(1-b*Height);
%{
%% Parameter information for drawing
My_mark_type = '.';
My_LineWidth = 2;
My_LineWidth_1 = 1;
My_FontName = 'Times New Roman';
My_fontSize = 12;
My_Alpha = 1; % transparency of the filled area
My_MarkerSize = 2;
Edgealpha = 0;
Alpha = 0.2;
My_Percentile = [5 50 95]; % quantile distribution
Band_Width = 1;
%% Colors
load('My_Colors.mat')
%% Load and segment the data by age and gender
%
%% Total_ALL
Female_data = xlsread('./Raw_data/Total_ALL.xlsx','Female'); % No.	Age	Height(cm)	Weight(Kg)
Male_data = xlsread('./Raw_data/Total_ALL.xlsx','Male'); % No. Age	Height(cm)	Weight(Kg)
% Stratified by age and gender
Female_data_1 = [];
Female_data_2 = [];
Female_data_3 = [];
Female_data_4 = [];
Female_data_5 = [];
Female_data_6 = [];
Female_data_7 = [];
Female_data_8 = [];
Female_data_9 = [];
Female_data_10 = [];
Female_data_11 = [];
Female_data_12 = [];
Female_data_13 = [];
Female_data_14 = [];
Female_data_15 = [];
Female_data_16 = [];
Female_data_17 = [];
Female_data_18 = [];
Female_data_19 = [];
Female_data_20 = [];
Female_data_21 = [];
Female_data_22 = [];
Female_data_23 = [];
Female_data_24 = [];
Female_data_25 = [];
Female_data_26 = [];
Female_data_27 = [];
Female_data_28 = [];
Female_data_29 = [];
Female_data_30 = [];
Female_data_31 = [];
Female_data_32 = [];
Female_data_33 = [];
Female_data_34 = [];
Female_data_35 = [];
Female_data_36 = [];
Female_data_37 = [];
Female_data_38 = [];
Female_data_39 = [];
Female_data_40 = [];
Female_data_41 = [];
Female_data_42 = [];
Female_data_43 = [];
Female_data_44 = [];
Female_data_45 = [];
Female_data_46 = [];
Female_data_47 = [];
Female_data_48 = [];
Female_data_49 = [];
Female_data_50 = [];
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
Female_data_90 = []; % >= 90

Male_data_1 = [];
Male_data_2 = [];
Male_data_3 = [];
Male_data_4 = [];
Male_data_5 = [];
Male_data_6 = [];
Male_data_7 = [];
Male_data_8 = [];
Male_data_9 = [];
Male_data_10 = [];
Male_data_11 = [];
Male_data_12 = [];
Male_data_13 = [];
Male_data_14 = [];
Male_data_15 = [];
Male_data_16 = [];
Male_data_17 = [];
Male_data_18 = [];
Male_data_19 = [];
Male_data_20 = [];
Male_data_21 = [];
Male_data_22 = [];
Male_data_23 = [];
Male_data_24 = [];
Male_data_25 = [];
Male_data_26 = [];
Male_data_27 = [];
Male_data_28 = [];
Male_data_29 = [];
Male_data_30 = [];
Male_data_31 = [];
Male_data_32 = [];
Male_data_33 = [];
Male_data_34 = [];
Male_data_35 = [];
Male_data_36 = [];
Male_data_37 = [];
Male_data_38 = [];
Male_data_39 = [];
Male_data_40 = [];
Male_data_41 = [];
Male_data_42 = [];
Male_data_43 = [];
Male_data_44 = [];
Male_data_45 = [];
Male_data_46 = [];
Male_data_47 = [];
Male_data_48 = [];
Male_data_49 = [];
Male_data_50 = [];
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
Male_data_90 = []; % >= 90

% For Female
[M N] = size(Female_data); % Height (cm); Weight (Kg)
for i=1:M
    if Female_data(i,2) == 1
        Female_data_1 = [Female_data_1;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 2
        Female_data_2 = [Female_data_2;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 3
        Female_data_3 = [Female_data_3;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 4
        Female_data_4 = [Female_data_4;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 5
        Female_data_5 = [Female_data_5;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 6
        Female_data_6 = [Female_data_6;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 7
        Female_data_7 = [Female_data_7;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 8
        Female_data_8 = [Female_data_8;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 9
        Female_data_9 = [Female_data_9;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 10
        Female_data_10 = [Female_data_10;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 11
        Female_data_11 = [Female_data_11;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 12
        Female_data_12 = [Female_data_12;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 13
        Female_data_13 = [Female_data_13;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 14
        Female_data_14 = [Female_data_14;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 15
        Female_data_15 = [Female_data_15;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 16
        Female_data_16 = [Female_data_16;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 17
        Female_data_17 = [Female_data_17;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 18
        Female_data_18 = [Female_data_18;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 19
        Female_data_19 = [Female_data_19;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 20
        Female_data_20 = [Female_data_20;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 21
        Female_data_21 = [Female_data_21;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 22
        Female_data_22 = [Female_data_22;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 23
        Female_data_23 = [Female_data_23;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 24
        Female_data_24 = [Female_data_24;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 25
        Female_data_25 = [Female_data_25;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 26
        Female_data_26 = [Female_data_26;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 27
        Female_data_27 = [Female_data_27;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 28
        Female_data_28 = [Female_data_28;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 29
        Female_data_29 = [Female_data_29;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 30
        Female_data_30 = [Female_data_30;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 31
        Female_data_31 = [Female_data_31;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 32
        Female_data_32 = [Female_data_32;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 33
        Female_data_33 = [Female_data_33;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 34
        Female_data_34 = [Female_data_34;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 35
        Female_data_35 = [Female_data_35;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 36
        Female_data_36 = [Female_data_36;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 37
        Female_data_37 = [Female_data_37;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 38
        Female_data_38 = [Female_data_38;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 39
        Female_data_39 = [Female_data_39;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 40
        Female_data_40 = [Female_data_40;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 41
        Female_data_41 = [Female_data_41;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 42
        Female_data_42 = [Female_data_42;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 43
        Female_data_43 = [Female_data_43;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 44
        Female_data_44 = [Female_data_44;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 45
        Female_data_45 = [Female_data_45;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 46
        Female_data_46 = [Female_data_46;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 47
        Female_data_47 = [Female_data_47;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 48
        Female_data_48 = [Female_data_48;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 49
        Female_data_49 = [Female_data_49;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 50
        Female_data_50 = [Female_data_50;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 51
        Female_data_51 = [Female_data_51;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 52
        Female_data_52 = [Female_data_52;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 53
        Female_data_53 = [Female_data_53;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 54
        Female_data_54 = [Female_data_54;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 55
        Female_data_55 = [Female_data_55;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 56
        Female_data_56 = [Female_data_56;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 57
        Female_data_57 = [Female_data_57;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 58
        Female_data_58 = [Female_data_58;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 59
        Female_data_59 = [Female_data_59;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 60
        Female_data_60 = [Female_data_60;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 61
        Female_data_61 = [Female_data_61;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 62
        Female_data_62 = [Female_data_62;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 63
        Female_data_63 = [Female_data_63;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 64
        Female_data_64 = [Female_data_64;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 65
        Female_data_65 = [Female_data_65;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 66
        Female_data_66 = [Female_data_66;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 67
        Female_data_67 = [Female_data_67;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 68
        Female_data_68 = [Female_data_68;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 69
        Female_data_69 = [Female_data_69;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 70
        Female_data_70 = [Female_data_70;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 71
        Female_data_71 = [Female_data_71;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 72
        Female_data_72 = [Female_data_72;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 73
        Female_data_73 = [Female_data_73;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 74
        Female_data_74 = [Female_data_74;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 75
        Female_data_75 = [Female_data_75;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 76
        Female_data_76 = [Female_data_76;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 77
        Female_data_77 = [Female_data_77;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 78
        Female_data_78 = [Female_data_78;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 79
        Female_data_79 = [Female_data_79;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 80
        Female_data_80 = [Female_data_80;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 81
        Female_data_81 = [Female_data_81;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 82
        Female_data_82 = [Female_data_82;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 83
        Female_data_83 = [Female_data_83;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 84
        Female_data_84 = [Female_data_84;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 85
        Female_data_85 = [Female_data_85;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 86
        Female_data_86 = [Female_data_86;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 87
        Female_data_87 = [Female_data_87;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 88
        Female_data_88 = [Female_data_88;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 89
        Female_data_89 = [Female_data_89;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 90
        Female_data_90 = [Female_data_90;Female_data(i,3) Female_data(i,4)];
    end
end

% For Male
[M N] = size(Male_data); % Height (cm); Weight (Kg)
for i=1:M
    if Male_data(i,2) == 1
        Male_data_1 = [Male_data_1;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 2
        Male_data_2 = [Male_data_2;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 3
        Male_data_3 = [Male_data_3;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 4
        Male_data_4 = [Male_data_4;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 5
        Male_data_5 = [Male_data_5;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 6
        Male_data_6 = [Male_data_6;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 7
        Male_data_7 = [Male_data_7;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 8
        Male_data_8 = [Male_data_8;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 9
        Male_data_9 = [Male_data_9;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 10
        Male_data_10 = [Male_data_10;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 11
        Male_data_11 = [Male_data_11;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 12
        Male_data_12 = [Male_data_12;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 13
        Male_data_13 = [Male_data_13;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 14
        Male_data_14 = [Male_data_14;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 15
        Male_data_15 = [Male_data_15;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 16
        Male_data_16 = [Male_data_16;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 17
        Male_data_17 = [Male_data_17;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 18
        Male_data_18 = [Male_data_18;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 19
        Male_data_19 = [Male_data_19;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 20
        Male_data_20 = [Male_data_20;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 21
        Male_data_21 = [Male_data_21;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 22
        Male_data_22 = [Male_data_22;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 23
        Male_data_23 = [Male_data_23;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 24
        Male_data_24 = [Male_data_24;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 25
        Male_data_25 = [Male_data_25;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 26
        Male_data_26 = [Male_data_26;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 27
        Male_data_27 = [Male_data_27;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 28
        Male_data_28 = [Male_data_28;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 29
        Male_data_29 = [Male_data_29;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 30
        Male_data_30 = [Male_data_30;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 31
        Male_data_31 = [Male_data_31;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 32
        Male_data_32 = [Male_data_32;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 33
        Male_data_33 = [Male_data_33;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 34
        Male_data_34 = [Male_data_34;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 35
        Male_data_35 = [Male_data_35;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 36
        Male_data_36 = [Male_data_36;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 37
        Male_data_37 = [Male_data_37;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 38
        Male_data_38 = [Male_data_38;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 39
        Male_data_39 = [Male_data_39;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 40
        Male_data_40 = [Male_data_40;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 41
        Male_data_41 = [Male_data_41;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 42
        Male_data_42 = [Male_data_42;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 43
        Male_data_43 = [Male_data_43;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 44
        Male_data_44 = [Male_data_44;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 45
        Male_data_45 = [Male_data_45;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 46
        Male_data_46 = [Male_data_46;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 47
        Male_data_47 = [Male_data_47;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 48
        Male_data_48 = [Male_data_48;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 49
        Male_data_49 = [Male_data_49;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 50
        Male_data_50 = [Male_data_50;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 51
        Male_data_51 = [Male_data_51;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 52
        Male_data_52 = [Male_data_52;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 53
        Male_data_53 = [Male_data_53;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 54
        Male_data_54 = [Male_data_54;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 55
        Male_data_55 = [Male_data_55;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 56
        Male_data_56 = [Male_data_56;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 57
        Male_data_57 = [Male_data_57;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 58
        Male_data_58 = [Male_data_58;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 59
        Male_data_59 = [Male_data_59;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 60
        Male_data_60 = [Male_data_60;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 61
        Male_data_61 = [Male_data_61;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 62
        Male_data_62 = [Male_data_62;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 63
        Male_data_63 = [Male_data_63;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 64
        Male_data_64 = [Male_data_64;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 65
        Male_data_65 = [Male_data_65;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 66
        Male_data_66 = [Male_data_66;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 67
        Male_data_67 = [Male_data_67;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 68
        Male_data_68 = [Male_data_68;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 69
        Male_data_69 = [Male_data_69;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 70
        Male_data_70 = [Male_data_70;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 71
        Male_data_71 = [Male_data_71;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 72
        Male_data_72 = [Male_data_72;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 73
        Male_data_73 = [Male_data_73;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 74
        Male_data_74 = [Male_data_74;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 75
        Male_data_75 = [Male_data_75;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 76
        Male_data_76 = [Male_data_76;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 77
        Male_data_77 = [Male_data_77;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 78
        Male_data_78 = [Male_data_78;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 79
        Male_data_79 = [Male_data_79;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 80
        Male_data_80 = [Male_data_80;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 81
        Male_data_81 = [Male_data_81;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 82
        Male_data_82 = [Male_data_82;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 83
        Male_data_83 = [Male_data_83;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 84
        Male_data_84 = [Male_data_84;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 85
        Male_data_85 = [Male_data_85;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 86
        Male_data_86 = [Male_data_86;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 87
        Male_data_87 = [Male_data_87;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 88
        Male_data_88 = [Male_data_88;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 89
        Male_data_89 = [Male_data_89;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 90
        Male_data_90 = [Male_data_90;Male_data(i,3) Male_data(i,4)];
    end
end
%}
%%
% For Female
% 01 - Preparing the data
Weight_Data = Female_data_11(:,2); % Raw data of Weight in Kg;
Height_Data = Female_data_11(:,1)/100; % Raw data of Height in m;

% 02 - liner fitting
% The Allometric model: Weight = m*Height^k; ln(Weight) = ln(m) + k*ln(Height)
ln_Weight = log10(Weight_Data); % ln(Weight)
ln_Height = log10(Height_Data); % ln(Height)

BB = polyfit(ln_Height,ln_Weight,1); % linear fitting: ln(Weight) = ln(m) + k*ln(Height)
m = 10^BB(2); % the estimated m value in Weight = m*Height^k through linear regression
k = BB(1); % the estimated k value in Weight = m*Height^k through linear regression

% The Hyperbolic model: Weight = a + b*Weight*Height; Weight = a/(1-b*Height);
Weight_X_Height_Data = Weight_Data.*Height_Data; % Weight*Height
CC = polyfit(Weight_X_Height_Data,Weight_Data,1); % linear fitting: Weight = a + b*Weight*Height
a = CC(2); % the estimated a value in Weight = a + b*Weight*Height through linear regression
b = CC(1); % the estimated b value in Weight = a + b*Weight*Height through linear regression

% 03 - Calculatting the R-squared and residuals
% R-squared is calculated using the formula R-squared = 1 - SSE/SST;
% SSE stands for Sum of Squared Errors; SST stands for Total Sum of Squares
% the residual is the difference between the actual value and the predicted value.

% For the Allometric model: Weight = m*Height^k; ln(Weight) = ln(m) + k*ln(Height)
SSE_Allometric = 0; % SSE value
SST_Allometric = 0; % SST value
Residual_Allometric = []; % the residuals
Mean_Weight = mean(Weight_Data); % the mean of weight
[M N] = size(Weight_Data);
for i = 1:M
    % the difference between the actual value and the predicted value.
    Residual = Weight_Data(i) - m*Height_Data(i)^k; % Weight = m*Height^k
    Residual_Allometric = [Residual_Allometric Residual];
    SSE_Allometric = SSE_Allometric + Residual^2; % SSE
    SST_Allometric = SST_Allometric + (Weight_Data(i)-Mean_Weight)^2; % SST
end
R2_Allometric = 1 - SSE_Allometric/SST_Allometric; % the R-squared

% For the Hyperbolic model: Weight = a + b*Weight*Height; Weight = a/(1-b*Height);
SSE_Hyperbolic = 0; % SSE value
SST_Hyperbolic = 0; % SST value
Residual_Hyperbolic = []; % the residuals
Mean_Weight = mean(Weight_Data); % the mean of weight
[M N] = size(Weight_Data);
for i = 1:M
    % the difference between the actual value and the predicted value.
    Residual = Weight_Data(i) - a/(1 - b*Height_Data(i)); % Weight = a/(1-b*Height)
    Residual_Hyperbolic = [Residual_Hyperbolic Residual];
    SSE_Hyperbolic = SSE_Hyperbolic + Residual^2; % SSE
    SST_Hyperbolic = SST_Hyperbolic + (Weight_Data(i)-Mean_Weight)^2; % SST
end
R2_Hyperbolic = 1 - SSE_Hyperbolic/SST_Hyperbolic; % the R-squared

% 04 - We show the results
FF = figure;
subplot(1,2,1)
hold on;
title('Aged 21')
xlabel('Weight (Kg)')
ylabel('Height (m)');
xlim([10 140]);
ylim([1 1.9]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

% The scatterplots of the raw data
H1 = plot(Weight_Data,Height_Data,'o','linewidth',My_LineWidth_1,'Color',[0 0 0],'MarkerSize',5, ...
    'MarkerFaceColor',My_Colors_3(1,:));
% Plot the curve of the Allometric model: Weight = m*Height^k; ln(Weight) = ln(m) + k*ln(Height)
Y_data = min(Height_Data):0.01:max(Height_Data); % Height (m)
X_data = m.*Y_data.^k; % Weight (Kg)
HH_Allometric = plot(X_data,Y_data,'-.','Color',My_Colors_3(2,:),'LineWidth',My_LineWidth);
% Plot the curve of the Hyperbolic model: Weight = a + b*Weight*Height; Weight = a/(1-b*Height)
X_data = min(Weight_Data):0.01:max(Weight_Data); % Weight (Kg)
Y_data = (X_data - a)./(b.*X_data); % Height = (Weight - a)/(b*Weight)
HH_Hyperbolic = plot(X_data,Y_data,'-.','Color',My_Colors_3(3,:),'LineWidth',My_LineWidth);

%{
%% We show the results
figure;
% For female
subplot(1,2,1);
hold on;
title('Female')
xlabel('Height (m)');
ylabel('Weight (Kg)')
xlim([1 1.9]);
ylim([10 90]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

%% W=m*H^k (log(W) = log(m) + k*log(H))
% For Female
% Age 6
X_data = Female_data_6(:,1)/100; % Height (m)
Y_data = Female_data_6(:,2); % Weight (Kg)
plot(X_data,Y_data,My_mark_type,'MarkerSize',My_MarkerSize,'Color',Color_6);
X_data_temp = log10(X_data);
Y_data_temp = log10(Y_data);

BB = polyfit(X_data_temp,Y_data_temp,1);
x_temp = min(X_data):0.01:max(X_data);
y_temp = 10^BB(2)*x_temp.^BB(1);
H1 = plot(x_temp,y_temp,'Color',Color_6,'LineWidth',My_LineWidth);

Y_0 = mean(Y_data);
Residual_1_Age_6_Female = []; % residual 残差
Sum_1 = 0; % EES
Sum_2 = 0; % TSS
[M N] = size(X_data);
for i = 1:M
    Y_1 = Y_data(i)-10^BB(2)*X_data(i)^BB(1); 
    Residual_1_Age_6_Female = [Residual_1_Age_6_Female Y_1];
    Sum_1 = Sum_1 + Y_1^2;
    Sum_2 = Sum_2 + (Y_data(i)-Y_0)^2;
end
R2_1 =1-Sum_1/Sum_2
BB(1)

%% W = a + b*H*W^c
% Age 6
%{
c = -2;
X_data = Female_data_6(:,1)/100; % Height (m)
Y_data = Female_data_6(:,2); % Weight (Kg)
Z_data = (X_data.^c).*Y_data; % Weight*Height (Kg*m)

BB = polyfit(Z_data,Y_data,1);
x_temp = min(X_data):0.01:max(X_data);
y_temp = BB(2)./(1-BB(1)*x_temp.^c);
HH1 = plot(x_temp,y_temp,'-.','Color',Color_6,'LineWidth',My_LineWidth);

Y_0 = mean(Y_data);
Residual_2_Age_6_Female = []; % residual 残差
Sum_1 = 0; % EES
Sum_2 = 0; % TSS
[M N] = size(X_data);
for i = 1:M
    Y_1 = Y_data(i)-BB(2)/(1-BB(1)*X_data(i).^c);
    Residual_2_Age_6_Female = [Residual_2_Age_6_Female Y_1];
    Sum_1 = Sum_1 + Y_1^2;
    Sum_2 = Sum_2 + (Y_data(i)-Y_0)^2;
end
R2_2 = 1 - Sum_1/Sum_2
%}
c = -1;
X_data = Female_data_6(:,1)/100; % Height (m)
Y_data = Female_data_6(:,2); % Weight (Kg)
Z_data = (X_data.^c).*Y_data; % Weight*Height (Kg*m)

BB = polyfit(Z_data,Y_data,1);
x_temp = min(X_data):0.01:max(X_data);
y_temp = BB(2)./(1-BB(1)*x_temp.^c);
HH1 = plot(x_temp,y_temp,'-.','Color',Color_7,'LineWidth',My_LineWidth);

Y_0 = mean(Y_data);
Residual_2_Age_6_Female = []; % residual 残差
Sum_1 = 0; % EES
Sum_2 = 0; % TSS
[M N] = size(X_data);
for i = 1:M
    Y_1 = Y_data(i)-BB(2)/(1-BB(1)*X_data(i).^c);
    Residual_2_Age_6_Female = [Residual_2_Age_6_Female Y_1];
    Sum_1 = Sum_1 + Y_1^2;
    Sum_2 = Sum_2 + (Y_data(i)-Y_0)^2;
end
R2_2 = 1 - Sum_1/Sum_2

c = -0.5;
X_data = Female_data_6(:,1)/100; % Height (m)
Y_data = Female_data_6(:,2); % Weight (Kg)
Z_data = (X_data.^c).*Y_data; % Weight*Height (Kg*m)

BB = polyfit(Z_data,Y_data,1);
x_temp = min(X_data):0.01:max(X_data);
y_temp = BB(2)./(1-BB(1)*x_temp.^c);
HH1 = plot(x_temp,y_temp,'-.','Color',Color_8,'LineWidth',My_LineWidth);

Y_0 = mean(Y_data);
Residual_2_Age_6_Female = []; % residual 残差
Sum_1 = 0; % EES
Sum_2 = 0; % TSS
[M N] = size(X_data);
for i = 1:M
    Y_1 = Y_data(i)-BB(2)/(1-BB(1)*X_data(i).^c);
    Residual_2_Age_6_Female = [Residual_2_Age_6_Female Y_1];
    Sum_1 = Sum_1 + Y_1^2;
    Sum_2 = Sum_2 + (Y_data(i)-Y_0)^2;
end
R2_2 = 1 - Sum_1/Sum_2

c = 0.5;
X_data = Female_data_6(:,1)/100; % Height (m)
Y_data = Female_data_6(:,2); % Weight (Kg)
Z_data = (X_data.^c).*Y_data; % Weight*Height (Kg*m)

BB = polyfit(Z_data,Y_data,1);
x_temp = min(X_data):0.01:max(X_data);
y_temp = BB(2)./(1-BB(1)*x_temp.^c);
HH1 = plot(x_temp,y_temp,'-.','Color',Color_9,'LineWidth',My_LineWidth);

Y_0 = mean(Y_data);
Residual_2_Age_6_Female = []; % residual 残差
Sum_1 = 0; % EES
Sum_2 = 0; % TSS
[M N] = size(X_data);
for i = 1:M
    Y_1 = Y_data(i)-BB(2)/(1-BB(1)*X_data(i).^c);
    Residual_2_Age_6_Female = [Residual_2_Age_6_Female Y_1];
    Sum_1 = Sum_1 + Y_1^2;
    Sum_2 = Sum_2 + (Y_data(i)-Y_0)^2;
end
R2_2 = 1 - Sum_1/Sum_2

c = 1;
X_data = Female_data_6(:,1)/100; % Height (m)
Y_data = Female_data_6(:,2); % Weight (Kg)
Z_data = (X_data.^c).*Y_data; % Weight*Height (Kg*m)

BB = polyfit(Z_data,Y_data,1);
x_temp = min(X_data):0.01:max(X_data);
y_temp = BB(2)./(1-BB(1)*x_temp.^c);
HH1 = plot(x_temp,y_temp,'-.','Color',Color_10,'LineWidth',My_LineWidth);

Y_0 = mean(Y_data);
Residual_2_Age_6_Female = []; % residual 残差
Sum_1 = 0; % EES
Sum_2 = 0; % TSS
[M N] = size(X_data);
for i = 1:M
    Y_1 = Y_data(i)-BB(2)/(1-BB(1)*X_data(i).^c);
    Residual_2_Age_6_Female = [Residual_2_Age_6_Female Y_1];
    Sum_1 = Sum_1 + Y_1^2;
    Sum_2 = Sum_2 + (Y_data(i)-Y_0)^2;
end
R2_2 = 1 - Sum_1/Sum_2

c = 2;
X_data = Female_data_6(:,1)/100; % Height (m)
Y_data = Female_data_6(:,2); % Weight (Kg)
Z_data = (X_data.^c).*Y_data; % Weight*Height (Kg*m)

BB = polyfit(Z_data,Y_data,1);
x_temp = min(X_data):0.01:max(X_data);
y_temp = BB(2)./(1-BB(1)*x_temp.^c);
HH1 = plot(x_temp,y_temp,'-.','Color',Color_11,'LineWidth',My_LineWidth);

Y_0 = mean(Y_data);
Residual_2_Age_6_Female = []; % residual 残差
Sum_1 = 0; % EES
Sum_2 = 0; % TSS
[M N] = size(X_data);
for i = 1:M
    Y_1 = Y_data(i)-BB(2)/(1-BB(1)*X_data(i).^c);
    Residual_2_Age_6_Female = [Residual_2_Age_6_Female Y_1];
    Sum_1 = Sum_1 + Y_1^2;
    Sum_2 = Sum_2 + (Y_data(i)-Y_0)^2;
end
R2_2 = 1 - Sum_1/Sum_2

%{
c = 3;
X_data = Female_data_6(:,1)/100; % Height (m)
Y_data = Female_data_6(:,2); % Weight (Kg)
Z_data = (X_data.^c).*Y_data; % Weight*Height (Kg*m)

BB = polyfit(Z_data,Y_data,1);
x_temp = min(X_data):0.01:max(X_data);
y_temp = BB(2)./(1-BB(1)*x_temp.^c);
HH1 = plot(x_temp,y_temp,'-.','Color',Color_12,'LineWidth',My_LineWidth);

Y_0 = mean(Y_data);
Residual_2_Age_6_Female = []; % residual 残差
Sum_1 = 0; % EES
Sum_2 = 0; % TSS
[M N] = size(X_data);
for i = 1:M
    Y_1 = Y_data(i)-BB(2)/(1-BB(1)*X_data(i).^c);
    Residual_2_Age_6_Female = [Residual_2_Age_6_Female Y_1];
    Sum_1 = Sum_1 + Y_1^2;
    Sum_2 = Sum_2 + (Y_data(i)-Y_0)^2;
end
R2_2 = 1 - Sum_1/Sum_2
%}

%%
%
figure;
HH_Female = histogram(Residual_1_Age_6_Female,20);
figure;
HH_Female = histogram(Residual_2_Age_6_Female,20);

%}

%{
Residual_1 = [Residual_1_Age_6_Female Residual_1_Age_7_Female Residual_1_Age_8_Female Residual_1_Age_9_Female Residual_1_Age_10_Female ...
    Residual_1_Age_11_Female];
Residual_2 = [Residual_2_Age_6_Female Residual_2_Age_7_Female Residual_2_Age_8_Female Residual_2_Age_9_Female Residual_2_Age_10_Female ...
    Residual_2_Age_11_Female];

figure;
hold on
xlim([-40 40]);
HH_Female = histogram(Residual_1,30);
figure;
hold on
xlim([-40 40]);
HH_Female = histogram(Residual_2,100);
%}
