%% 原始数据和随机化后的相关性系数随年龄的变化趋势
%% Source codes for Fig. 7(D)
tic;
% Note: It took approximately 140 seconds to run this code on the author's own computer.
%
%
%% Parameter information for drawing
My_mark_type = '.';
My_LineWidth = 2;
My_LineWidth_1 = 1;
My_FontName = 'Times New Roman';
My_fontSize = 12;
My_Alpha = 1; % transparency of the filled area
My_MarkerSize = 2;
Edgealpha = 0;
Alpha = 0.4;
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
Age = 1:90;
My_Percentile = [5 50 95]; % quantile distribution
Var_Raw_All_Female = []; % the standard deviation of sWHI in the Raw data
Var_Mean_Random_Female = []; % the mean values of the standard deviation of sWHI cross the 1000 random data sets
Var_5th_Random_Female = []; % the 5th percentile of the standard deviation of sWHI cross the 1000 random data sets
Var_95th_Random_Female = []; % the 95th percentile of the standard deviation of sWHI cross the 1000 random data sets

Var_Raw_All_Male = []; % the standard deviation of sWHI in the Raw data
Var_Mean_Random_Male = []; % the mean values of the standard deviation of sWHI cross the 1000 random data sets
Var_5th_Random_Male = []; % the 5th percentile of the standard deviation of sWHI cross the 1000 random data sets
Var_95th_Random_Male = []; % the 95th percentile of the standard deviation of sWHI cross the 1000 random data sets

% For Female
% Age 1
Weight_pool = Female_data_1(:,2); % Raw data of Weight in Kg;
Height_pool = Female_data_1(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Female = [Var_Raw_All_Female var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Female = [Var_Mean_Random_Female mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Female = prctile(Var_random,My_Percentile);
Var_5th_Random_Female = [Var_5th_Random_Female Prctile_Female(1)]; % 5th percentile
Var_95th_Random_Female = [Var_95th_Random_Female Prctile_Female(3)]; % 95th percentile

% Age 2
Weight_pool = Female_data_2(:,2); % Raw data of Weight in Kg;
Height_pool = Female_data_2(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Female = [Var_Raw_All_Female var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Female = [Var_Mean_Random_Female mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Female = prctile(Var_random,My_Percentile);
Var_5th_Random_Female = [Var_5th_Random_Female Prctile_Female(1)]; % 5th percentile
Var_95th_Random_Female = [Var_95th_Random_Female Prctile_Female(3)]; % 95th percentile

% Age 3
Weight_pool = Female_data_3(:,2); % Raw data of Weight in Kg;
Height_pool = Female_data_3(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Female = [Var_Raw_All_Female var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Female = [Var_Mean_Random_Female mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Female = prctile(Var_random,My_Percentile);
Var_5th_Random_Female = [Var_5th_Random_Female Prctile_Female(1)]; % 5th percentile
Var_95th_Random_Female = [Var_95th_Random_Female Prctile_Female(3)]; % 95th percentile

% Age 4
Weight_pool = Female_data_4(:,2); % Raw data of Weight in Kg;
Height_pool = Female_data_4(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Female = [Var_Raw_All_Female var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Female = [Var_Mean_Random_Female mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Female = prctile(Var_random,My_Percentile);
Var_5th_Random_Female = [Var_5th_Random_Female Prctile_Female(1)]; % 5th percentile
Var_95th_Random_Female = [Var_95th_Random_Female Prctile_Female(3)]; % 95th percentile

% Age 5
Weight_pool = Female_data_5(:,2); % Raw data of Weight in Kg;
Height_pool = Female_data_5(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Female = [Var_Raw_All_Female var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Female = [Var_Mean_Random_Female mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Female = prctile(Var_random,My_Percentile);
Var_5th_Random_Female = [Var_5th_Random_Female Prctile_Female(1)]; % 5th percentile
Var_95th_Random_Female = [Var_95th_Random_Female Prctile_Female(3)]; % 95th percentile

% Age 6
Weight_pool = Female_data_6(:,2); % Raw data of Weight in Kg;
Height_pool = Female_data_6(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Female = [Var_Raw_All_Female var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Female = [Var_Mean_Random_Female mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Female = prctile(Var_random,My_Percentile);
Var_5th_Random_Female = [Var_5th_Random_Female Prctile_Female(1)]; % 5th percentile
Var_95th_Random_Female = [Var_95th_Random_Female Prctile_Female(3)]; % 95th percentile

% Age 7
Weight_pool = Female_data_7(:,2); % Raw data of Weight in Kg;
Height_pool = Female_data_7(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Female = [Var_Raw_All_Female var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Female = [Var_Mean_Random_Female mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Female = prctile(Var_random,My_Percentile);
Var_5th_Random_Female = [Var_5th_Random_Female Prctile_Female(1)]; % 5th percentile
Var_95th_Random_Female = [Var_95th_Random_Female Prctile_Female(3)]; % 95th percentile

% Age 8
Weight_pool = Female_data_8(:,2); % Raw data of Weight in Kg;
Height_pool = Female_data_8(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Female = [Var_Raw_All_Female var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Female = [Var_Mean_Random_Female mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Female = prctile(Var_random,My_Percentile);
Var_5th_Random_Female = [Var_5th_Random_Female Prctile_Female(1)]; % 5th percentile
Var_95th_Random_Female = [Var_95th_Random_Female Prctile_Female(3)]; % 95th percentile

% Age 9
Weight_pool = Female_data_9(:,2); % Raw data of Weight in Kg;
Height_pool = Female_data_9(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Female = [Var_Raw_All_Female var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Female = [Var_Mean_Random_Female mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Female = prctile(Var_random,My_Percentile);
Var_5th_Random_Female = [Var_5th_Random_Female Prctile_Female(1)]; % 5th percentile
Var_95th_Random_Female = [Var_95th_Random_Female Prctile_Female(3)]; % 95th percentile

% Age 10
Weight_pool = Female_data_10(:,2); % Raw data of Weight in Kg;
Height_pool = Female_data_10(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Female = [Var_Raw_All_Female var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Female = [Var_Mean_Random_Female mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Female = prctile(Var_random,My_Percentile);
Var_5th_Random_Female = [Var_5th_Random_Female Prctile_Female(1)]; % 5th percentile
Var_95th_Random_Female = [Var_95th_Random_Female Prctile_Female(3)]; % 95th percentile

% Age 11
Weight_pool = Female_data_11(:,2); % Raw data of Weight in Kg;
Height_pool = Female_data_11(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Female = [Var_Raw_All_Female var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Female = [Var_Mean_Random_Female mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Female = prctile(Var_random,My_Percentile);
Var_5th_Random_Female = [Var_5th_Random_Female Prctile_Female(1)]; % 5th percentile
Var_95th_Random_Female = [Var_95th_Random_Female Prctile_Female(3)]; % 95th percentile

% Age 12
Weight_pool = Female_data_12(:,2); % Raw data of Weight in Kg;
Height_pool = Female_data_12(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Female = [Var_Raw_All_Female var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Female = [Var_Mean_Random_Female mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Female = prctile(Var_random,My_Percentile);
Var_5th_Random_Female = [Var_5th_Random_Female Prctile_Female(1)]; % 5th percentile
Var_95th_Random_Female = [Var_95th_Random_Female Prctile_Female(3)]; % 95th percentile

% Age 13
Weight_pool = Female_data_13(:,2); % Raw data of Weight in Kg;
Height_pool = Female_data_13(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Female = [Var_Raw_All_Female var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Female = [Var_Mean_Random_Female mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Female = prctile(Var_random,My_Percentile);
Var_5th_Random_Female = [Var_5th_Random_Female Prctile_Female(1)]; % 5th percentile
Var_95th_Random_Female = [Var_95th_Random_Female Prctile_Female(3)]; % 95th percentile

% Age 14
Weight_pool = Female_data_14(:,2); % Raw data of Weight in Kg;
Height_pool = Female_data_14(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Female = [Var_Raw_All_Female var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Female = [Var_Mean_Random_Female mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Female = prctile(Var_random,My_Percentile);
Var_5th_Random_Female = [Var_5th_Random_Female Prctile_Female(1)]; % 5th percentile
Var_95th_Random_Female = [Var_95th_Random_Female Prctile_Female(3)]; % 95th percentile

% Age 15
Weight_pool = Female_data_15(:,2); % Raw data of Weight in Kg;
Height_pool = Female_data_15(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Female = [Var_Raw_All_Female var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Female = [Var_Mean_Random_Female mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Female = prctile(Var_random,My_Percentile);
Var_5th_Random_Female = [Var_5th_Random_Female Prctile_Female(1)]; % 5th percentile
Var_95th_Random_Female = [Var_95th_Random_Female Prctile_Female(3)]; % 95th percentile

% Age 16
Weight_pool = Female_data_16(:,2); % Raw data of Weight in Kg;
Height_pool = Female_data_16(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Female = [Var_Raw_All_Female var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Female = [Var_Mean_Random_Female mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Female = prctile(Var_random,My_Percentile);
Var_5th_Random_Female = [Var_5th_Random_Female Prctile_Female(1)]; % 5th percentile
Var_95th_Random_Female = [Var_95th_Random_Female Prctile_Female(3)]; % 95th percentile

% Age 17
Weight_pool = Female_data_17(:,2); % Raw data of Weight in Kg;
Height_pool = Female_data_17(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Female = [Var_Raw_All_Female var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Female = [Var_Mean_Random_Female mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Female = prctile(Var_random,My_Percentile);
Var_5th_Random_Female = [Var_5th_Random_Female Prctile_Female(1)]; % 5th percentile
Var_95th_Random_Female = [Var_95th_Random_Female Prctile_Female(3)]; % 95th percentile

% Age 18
Weight_pool = Female_data_18(:,2); % Raw data of Weight in Kg;
Height_pool = Female_data_18(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Female = [Var_Raw_All_Female var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Female = [Var_Mean_Random_Female mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Female = prctile(Var_random,My_Percentile);
Var_5th_Random_Female = [Var_5th_Random_Female Prctile_Female(1)]; % 5th percentile
Var_95th_Random_Female = [Var_95th_Random_Female Prctile_Female(3)]; % 95th percentile

% Age 19
Weight_pool = Female_data_19(:,2); % Raw data of Weight in Kg;
Height_pool = Female_data_19(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Female = [Var_Raw_All_Female var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Female = [Var_Mean_Random_Female mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Female = prctile(Var_random,My_Percentile);
Var_5th_Random_Female = [Var_5th_Random_Female Prctile_Female(1)]; % 5th percentile
Var_95th_Random_Female = [Var_95th_Random_Female Prctile_Female(3)]; % 95th percentile

% Age 20
Weight_pool = Female_data_20(:,2); % Raw data of Weight in Kg;
Height_pool = Female_data_20(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Female = [Var_Raw_All_Female var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Female = [Var_Mean_Random_Female mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Female = prctile(Var_random,My_Percentile);
Var_5th_Random_Female = [Var_5th_Random_Female Prctile_Female(1)]; % 5th percentile
Var_95th_Random_Female = [Var_95th_Random_Female Prctile_Female(3)]; % 95th percentile

% Age 21
Weight_pool = Female_data_21(:,2); % Raw data of Weight in Kg;
Height_pool = Female_data_21(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Female = [Var_Raw_All_Female var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Female = [Var_Mean_Random_Female mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Female = prctile(Var_random,My_Percentile);
Var_5th_Random_Female = [Var_5th_Random_Female Prctile_Female(1)]; % 5th percentile
Var_95th_Random_Female = [Var_95th_Random_Female Prctile_Female(3)]; % 95th percentile

% Age 22
Weight_pool = Female_data_22(:,2); % Raw data of Weight in Kg;
Height_pool = Female_data_22(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Female = [Var_Raw_All_Female var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Female = [Var_Mean_Random_Female mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Female = prctile(Var_random,My_Percentile);
Var_5th_Random_Female = [Var_5th_Random_Female Prctile_Female(1)]; % 5th percentile
Var_95th_Random_Female = [Var_95th_Random_Female Prctile_Female(3)]; % 95th percentile

% Age 23
Weight_pool = Female_data_23(:,2); % Raw data of Weight in Kg;
Height_pool = Female_data_23(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Female = [Var_Raw_All_Female var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Female = [Var_Mean_Random_Female mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Female = prctile(Var_random,My_Percentile);
Var_5th_Random_Female = [Var_5th_Random_Female Prctile_Female(1)]; % 5th percentile
Var_95th_Random_Female = [Var_95th_Random_Female Prctile_Female(3)]; % 95th percentile

% Age 24
Weight_pool = Female_data_24(:,2); % Raw data of Weight in Kg;
Height_pool = Female_data_24(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Female = [Var_Raw_All_Female var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Female = [Var_Mean_Random_Female mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Female = prctile(Var_random,My_Percentile);
Var_5th_Random_Female = [Var_5th_Random_Female Prctile_Female(1)]; % 5th percentile
Var_95th_Random_Female = [Var_95th_Random_Female Prctile_Female(3)]; % 95th percentile

% Age 25
Weight_pool = Female_data_25(:,2); % Raw data of Weight in Kg;
Height_pool = Female_data_25(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Female = [Var_Raw_All_Female var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Female = [Var_Mean_Random_Female mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Female = prctile(Var_random,My_Percentile);
Var_5th_Random_Female = [Var_5th_Random_Female Prctile_Female(1)]; % 5th percentile
Var_95th_Random_Female = [Var_95th_Random_Female Prctile_Female(3)]; % 95th percentile

% Age 26
Weight_pool = Female_data_26(:,2); % Raw data of Weight in Kg;
Height_pool = Female_data_26(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Female = [Var_Raw_All_Female var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Female = [Var_Mean_Random_Female mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Female = prctile(Var_random,My_Percentile);
Var_5th_Random_Female = [Var_5th_Random_Female Prctile_Female(1)]; % 5th percentile
Var_95th_Random_Female = [Var_95th_Random_Female Prctile_Female(3)]; % 95th percentile

% Age 27
Weight_pool = Female_data_27(:,2); % Raw data of Weight in Kg;
Height_pool = Female_data_27(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Female = [Var_Raw_All_Female var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Female = [Var_Mean_Random_Female mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Female = prctile(Var_random,My_Percentile);
Var_5th_Random_Female = [Var_5th_Random_Female Prctile_Female(1)]; % 5th percentile
Var_95th_Random_Female = [Var_95th_Random_Female Prctile_Female(3)]; % 95th percentile

% Age 28
Weight_pool = Female_data_28(:,2); % Raw data of Weight in Kg;
Height_pool = Female_data_28(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Female = [Var_Raw_All_Female var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Female = [Var_Mean_Random_Female mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Female = prctile(Var_random,My_Percentile);
Var_5th_Random_Female = [Var_5th_Random_Female Prctile_Female(1)]; % 5th percentile
Var_95th_Random_Female = [Var_95th_Random_Female Prctile_Female(3)]; % 95th percentile

% Age 29
Weight_pool = Female_data_29(:,2); % Raw data of Weight in Kg;
Height_pool = Female_data_29(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Female = [Var_Raw_All_Female var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Female = [Var_Mean_Random_Female mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Female = prctile(Var_random,My_Percentile);
Var_5th_Random_Female = [Var_5th_Random_Female Prctile_Female(1)]; % 5th percentile
Var_95th_Random_Female = [Var_95th_Random_Female Prctile_Female(3)]; % 95th percentile

% Age 30
Weight_pool = Female_data_30(:,2); % Raw data of Weight in Kg;
Height_pool = Female_data_30(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Female = [Var_Raw_All_Female var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Female = [Var_Mean_Random_Female mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Female = prctile(Var_random,My_Percentile);
Var_5th_Random_Female = [Var_5th_Random_Female Prctile_Female(1)]; % 5th percentile
Var_95th_Random_Female = [Var_95th_Random_Female Prctile_Female(3)]; % 95th percentile

% Age 31
Weight_pool = Female_data_31(:,2); % Raw data of Weight in Kg;
Height_pool = Female_data_31(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Female = [Var_Raw_All_Female var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Female = [Var_Mean_Random_Female mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Female = prctile(Var_random,My_Percentile);
Var_5th_Random_Female = [Var_5th_Random_Female Prctile_Female(1)]; % 5th percentile
Var_95th_Random_Female = [Var_95th_Random_Female Prctile_Female(3)]; % 95th percentile

% Age 32
Weight_pool = Female_data_32(:,2); % Raw data of Weight in Kg;
Height_pool = Female_data_32(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Female = [Var_Raw_All_Female var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Female = [Var_Mean_Random_Female mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Female = prctile(Var_random,My_Percentile);
Var_5th_Random_Female = [Var_5th_Random_Female Prctile_Female(1)]; % 5th percentile
Var_95th_Random_Female = [Var_95th_Random_Female Prctile_Female(3)]; % 95th percentile

% Age 33
Weight_pool = Female_data_33(:,2); % Raw data of Weight in Kg;
Height_pool = Female_data_33(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Female = [Var_Raw_All_Female var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Female = [Var_Mean_Random_Female mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Female = prctile(Var_random,My_Percentile);
Var_5th_Random_Female = [Var_5th_Random_Female Prctile_Female(1)]; % 5th percentile
Var_95th_Random_Female = [Var_95th_Random_Female Prctile_Female(3)]; % 95th percentile

% Age 34
Weight_pool = Female_data_34(:,2); % Raw data of Weight in Kg;
Height_pool = Female_data_34(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Female = [Var_Raw_All_Female var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Female = [Var_Mean_Random_Female mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Female = prctile(Var_random,My_Percentile);
Var_5th_Random_Female = [Var_5th_Random_Female Prctile_Female(1)]; % 5th percentile
Var_95th_Random_Female = [Var_95th_Random_Female Prctile_Female(3)]; % 95th percentile

% Age 35
Weight_pool = Female_data_35(:,2); % Raw data of Weight in Kg;
Height_pool = Female_data_35(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Female = [Var_Raw_All_Female var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Female = [Var_Mean_Random_Female mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Female = prctile(Var_random,My_Percentile);
Var_5th_Random_Female = [Var_5th_Random_Female Prctile_Female(1)]; % 5th percentile
Var_95th_Random_Female = [Var_95th_Random_Female Prctile_Female(3)]; % 95th percentile

% Age 36
Weight_pool = Female_data_36(:,2); % Raw data of Weight in Kg;
Height_pool = Female_data_36(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Female = [Var_Raw_All_Female var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Female = [Var_Mean_Random_Female mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Female = prctile(Var_random,My_Percentile);
Var_5th_Random_Female = [Var_5th_Random_Female Prctile_Female(1)]; % 5th percentile
Var_95th_Random_Female = [Var_95th_Random_Female Prctile_Female(3)]; % 95th percentile

% Age 37
Weight_pool = Female_data_37(:,2); % Raw data of Weight in Kg;
Height_pool = Female_data_37(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Female = [Var_Raw_All_Female var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Female = [Var_Mean_Random_Female mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Female = prctile(Var_random,My_Percentile);
Var_5th_Random_Female = [Var_5th_Random_Female Prctile_Female(1)]; % 5th percentile
Var_95th_Random_Female = [Var_95th_Random_Female Prctile_Female(3)]; % 95th percentile

% Age 38
Weight_pool = Female_data_38(:,2); % Raw data of Weight in Kg;
Height_pool = Female_data_38(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Female = [Var_Raw_All_Female var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Female = [Var_Mean_Random_Female mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Female = prctile(Var_random,My_Percentile);
Var_5th_Random_Female = [Var_5th_Random_Female Prctile_Female(1)]; % 5th percentile
Var_95th_Random_Female = [Var_95th_Random_Female Prctile_Female(3)]; % 95th percentile

% Age 39
Weight_pool = Female_data_39(:,2); % Raw data of Weight in Kg;
Height_pool = Female_data_39(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Female = [Var_Raw_All_Female var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Female = [Var_Mean_Random_Female mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Female = prctile(Var_random,My_Percentile);
Var_5th_Random_Female = [Var_5th_Random_Female Prctile_Female(1)]; % 5th percentile
Var_95th_Random_Female = [Var_95th_Random_Female Prctile_Female(3)]; % 95th percentile

% Age 40
Weight_pool = Female_data_40(:,2); % Raw data of Weight in Kg;
Height_pool = Female_data_40(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Female = [Var_Raw_All_Female var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Female = [Var_Mean_Random_Female mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Female = prctile(Var_random,My_Percentile);
Var_5th_Random_Female = [Var_5th_Random_Female Prctile_Female(1)]; % 5th percentile
Var_95th_Random_Female = [Var_95th_Random_Female Prctile_Female(3)]; % 95th percentile

% Age 41
Weight_pool = Female_data_41(:,2); % Raw data of Weight in Kg;
Height_pool = Female_data_41(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Female = [Var_Raw_All_Female var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Female = [Var_Mean_Random_Female mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Female = prctile(Var_random,My_Percentile);
Var_5th_Random_Female = [Var_5th_Random_Female Prctile_Female(1)]; % 5th percentile
Var_95th_Random_Female = [Var_95th_Random_Female Prctile_Female(3)]; % 95th percentile

% Age 42
Weight_pool = Female_data_42(:,2); % Raw data of Weight in Kg;
Height_pool = Female_data_42(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Female = [Var_Raw_All_Female var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Female = [Var_Mean_Random_Female mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Female = prctile(Var_random,My_Percentile);
Var_5th_Random_Female = [Var_5th_Random_Female Prctile_Female(1)]; % 5th percentile
Var_95th_Random_Female = [Var_95th_Random_Female Prctile_Female(3)]; % 95th percentile

% Age 43
Weight_pool = Female_data_43(:,2); % Raw data of Weight in Kg;
Height_pool = Female_data_43(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Female = [Var_Raw_All_Female var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Female = [Var_Mean_Random_Female mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Female = prctile(Var_random,My_Percentile);
Var_5th_Random_Female = [Var_5th_Random_Female Prctile_Female(1)]; % 5th percentile
Var_95th_Random_Female = [Var_95th_Random_Female Prctile_Female(3)]; % 95th percentile

% Age 44
Weight_pool = Female_data_44(:,2); % Raw data of Weight in Kg;
Height_pool = Female_data_44(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Female = [Var_Raw_All_Female var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Female = [Var_Mean_Random_Female mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Female = prctile(Var_random,My_Percentile);
Var_5th_Random_Female = [Var_5th_Random_Female Prctile_Female(1)]; % 5th percentile
Var_95th_Random_Female = [Var_95th_Random_Female Prctile_Female(3)]; % 95th percentile

% Age 45
Weight_pool = Female_data_45(:,2); % Raw data of Weight in Kg;
Height_pool = Female_data_45(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Female = [Var_Raw_All_Female var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Female = [Var_Mean_Random_Female mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Female = prctile(Var_random,My_Percentile);
Var_5th_Random_Female = [Var_5th_Random_Female Prctile_Female(1)]; % 5th percentile
Var_95th_Random_Female = [Var_95th_Random_Female Prctile_Female(3)]; % 95th percentile

% Age 46
Weight_pool = Female_data_46(:,2); % Raw data of Weight in Kg;
Height_pool = Female_data_46(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Female = [Var_Raw_All_Female var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Female = [Var_Mean_Random_Female mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Female = prctile(Var_random,My_Percentile);
Var_5th_Random_Female = [Var_5th_Random_Female Prctile_Female(1)]; % 5th percentile
Var_95th_Random_Female = [Var_95th_Random_Female Prctile_Female(3)]; % 95th percentile

% Age 47
Weight_pool = Female_data_47(:,2); % Raw data of Weight in Kg;
Height_pool = Female_data_47(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Female = [Var_Raw_All_Female var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Female = [Var_Mean_Random_Female mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Female = prctile(Var_random,My_Percentile);
Var_5th_Random_Female = [Var_5th_Random_Female Prctile_Female(1)]; % 5th percentile
Var_95th_Random_Female = [Var_95th_Random_Female Prctile_Female(3)]; % 95th percentile

% Age 48
Weight_pool = Female_data_48(:,2); % Raw data of Weight in Kg;
Height_pool = Female_data_48(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Female = [Var_Raw_All_Female var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Female = [Var_Mean_Random_Female mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Female = prctile(Var_random,My_Percentile);
Var_5th_Random_Female = [Var_5th_Random_Female Prctile_Female(1)]; % 5th percentile
Var_95th_Random_Female = [Var_95th_Random_Female Prctile_Female(3)]; % 95th percentile

% Age 49
Weight_pool = Female_data_49(:,2); % Raw data of Weight in Kg;
Height_pool = Female_data_49(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Female = [Var_Raw_All_Female var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Female = [Var_Mean_Random_Female mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Female = prctile(Var_random,My_Percentile);
Var_5th_Random_Female = [Var_5th_Random_Female Prctile_Female(1)]; % 5th percentile
Var_95th_Random_Female = [Var_95th_Random_Female Prctile_Female(3)]; % 95th percentile

% Age 50
Weight_pool = Female_data_50(:,2); % Raw data of Weight in Kg;
Height_pool = Female_data_50(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Female = [Var_Raw_All_Female var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Female = [Var_Mean_Random_Female mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Female = prctile(Var_random,My_Percentile);
Var_5th_Random_Female = [Var_5th_Random_Female Prctile_Female(1)]; % 5th percentile
Var_95th_Random_Female = [Var_95th_Random_Female Prctile_Female(3)]; % 95th percentile

% Age 51
Weight_pool = Female_data_51(:,2); % Raw data of Weight in Kg;
Height_pool = Female_data_51(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Female = [Var_Raw_All_Female var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Female = [Var_Mean_Random_Female mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Female = prctile(Var_random,My_Percentile);
Var_5th_Random_Female = [Var_5th_Random_Female Prctile_Female(1)]; % 5th percentile
Var_95th_Random_Female = [Var_95th_Random_Female Prctile_Female(3)]; % 95th percentile

% Age 52
Weight_pool = Female_data_52(:,2); % Raw data of Weight in Kg;
Height_pool = Female_data_52(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Female = [Var_Raw_All_Female var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Female = [Var_Mean_Random_Female mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Female = prctile(Var_random,My_Percentile);
Var_5th_Random_Female = [Var_5th_Random_Female Prctile_Female(1)]; % 5th percentile
Var_95th_Random_Female = [Var_95th_Random_Female Prctile_Female(3)]; % 95th percentile

% Age 53
Weight_pool = Female_data_53(:,2); % Raw data of Weight in Kg;
Height_pool = Female_data_53(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Female = [Var_Raw_All_Female var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Female = [Var_Mean_Random_Female mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Female = prctile(Var_random,My_Percentile);
Var_5th_Random_Female = [Var_5th_Random_Female Prctile_Female(1)]; % 5th percentile
Var_95th_Random_Female = [Var_95th_Random_Female Prctile_Female(3)]; % 95th percentile

% Age 54
Weight_pool = Female_data_54(:,2); % Raw data of Weight in Kg;
Height_pool = Female_data_54(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Female = [Var_Raw_All_Female var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Female = [Var_Mean_Random_Female mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Female = prctile(Var_random,My_Percentile);
Var_5th_Random_Female = [Var_5th_Random_Female Prctile_Female(1)]; % 5th percentile
Var_95th_Random_Female = [Var_95th_Random_Female Prctile_Female(3)]; % 95th percentile

% Age 55
Weight_pool = Female_data_55(:,2); % Raw data of Weight in Kg;
Height_pool = Female_data_55(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Female = [Var_Raw_All_Female var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Female = [Var_Mean_Random_Female mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Female = prctile(Var_random,My_Percentile);
Var_5th_Random_Female = [Var_5th_Random_Female Prctile_Female(1)]; % 5th percentile
Var_95th_Random_Female = [Var_95th_Random_Female Prctile_Female(3)]; % 95th percentile

% Age 56
Weight_pool = Female_data_56(:,2); % Raw data of Weight in Kg;
Height_pool = Female_data_56(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Female = [Var_Raw_All_Female var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Female = [Var_Mean_Random_Female mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Female = prctile(Var_random,My_Percentile);
Var_5th_Random_Female = [Var_5th_Random_Female Prctile_Female(1)]; % 5th percentile
Var_95th_Random_Female = [Var_95th_Random_Female Prctile_Female(3)]; % 95th percentile

% Age 57
Weight_pool = Female_data_57(:,2); % Raw data of Weight in Kg;
Height_pool = Female_data_57(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Female = [Var_Raw_All_Female var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Female = [Var_Mean_Random_Female mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Female = prctile(Var_random,My_Percentile);
Var_5th_Random_Female = [Var_5th_Random_Female Prctile_Female(1)]; % 5th percentile
Var_95th_Random_Female = [Var_95th_Random_Female Prctile_Female(3)]; % 95th percentile

% Age 58
Weight_pool = Female_data_58(:,2); % Raw data of Weight in Kg;
Height_pool = Female_data_58(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Female = [Var_Raw_All_Female var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Female = [Var_Mean_Random_Female mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Female = prctile(Var_random,My_Percentile);
Var_5th_Random_Female = [Var_5th_Random_Female Prctile_Female(1)]; % 5th percentile
Var_95th_Random_Female = [Var_95th_Random_Female Prctile_Female(3)]; % 95th percentile

% Age 59
Weight_pool = Female_data_59(:,2); % Raw data of Weight in Kg;
Height_pool = Female_data_59(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Female = [Var_Raw_All_Female var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Female = [Var_Mean_Random_Female mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Female = prctile(Var_random,My_Percentile);
Var_5th_Random_Female = [Var_5th_Random_Female Prctile_Female(1)]; % 5th percentile
Var_95th_Random_Female = [Var_95th_Random_Female Prctile_Female(3)]; % 95th percentile

% Age 60
Weight_pool = Female_data_60(:,2); % Raw data of Weight in Kg;
Height_pool = Female_data_60(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Female = [Var_Raw_All_Female var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Female = [Var_Mean_Random_Female mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Female = prctile(Var_random,My_Percentile);
Var_5th_Random_Female = [Var_5th_Random_Female Prctile_Female(1)]; % 5th percentile
Var_95th_Random_Female = [Var_95th_Random_Female Prctile_Female(3)]; % 95th percentile

% Age 61
Weight_pool = Female_data_61(:,2); % Raw data of Weight in Kg;
Height_pool = Female_data_61(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Female = [Var_Raw_All_Female var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Female = [Var_Mean_Random_Female mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Female = prctile(Var_random,My_Percentile);
Var_5th_Random_Female = [Var_5th_Random_Female Prctile_Female(1)]; % 5th percentile
Var_95th_Random_Female = [Var_95th_Random_Female Prctile_Female(3)]; % 95th percentile

% Age 62
Weight_pool = Female_data_62(:,2); % Raw data of Weight in Kg;
Height_pool = Female_data_62(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Female = [Var_Raw_All_Female var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Female = [Var_Mean_Random_Female mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Female = prctile(Var_random,My_Percentile);
Var_5th_Random_Female = [Var_5th_Random_Female Prctile_Female(1)]; % 5th percentile
Var_95th_Random_Female = [Var_95th_Random_Female Prctile_Female(3)]; % 95th percentile

% Age 63
Weight_pool = Female_data_63(:,2); % Raw data of Weight in Kg;
Height_pool = Female_data_63(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Female = [Var_Raw_All_Female var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Female = [Var_Mean_Random_Female mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Female = prctile(Var_random,My_Percentile);
Var_5th_Random_Female = [Var_5th_Random_Female Prctile_Female(1)]; % 5th percentile
Var_95th_Random_Female = [Var_95th_Random_Female Prctile_Female(3)]; % 95th percentile

% Age 64
Weight_pool = Female_data_64(:,2); % Raw data of Weight in Kg;
Height_pool = Female_data_64(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Female = [Var_Raw_All_Female var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Female = [Var_Mean_Random_Female mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Female = prctile(Var_random,My_Percentile);
Var_5th_Random_Female = [Var_5th_Random_Female Prctile_Female(1)]; % 5th percentile
Var_95th_Random_Female = [Var_95th_Random_Female Prctile_Female(3)]; % 95th percentile

% Age 65
Weight_pool = Female_data_65(:,2); % Raw data of Weight in Kg;
Height_pool = Female_data_65(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Female = [Var_Raw_All_Female var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Female = [Var_Mean_Random_Female mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Female = prctile(Var_random,My_Percentile);
Var_5th_Random_Female = [Var_5th_Random_Female Prctile_Female(1)]; % 5th percentile
Var_95th_Random_Female = [Var_95th_Random_Female Prctile_Female(3)]; % 95th percentile

% Age 66
Weight_pool = Female_data_66(:,2); % Raw data of Weight in Kg;
Height_pool = Female_data_66(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Female = [Var_Raw_All_Female var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Female = [Var_Mean_Random_Female mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Female = prctile(Var_random,My_Percentile);
Var_5th_Random_Female = [Var_5th_Random_Female Prctile_Female(1)]; % 5th percentile
Var_95th_Random_Female = [Var_95th_Random_Female Prctile_Female(3)]; % 95th percentile

% Age 67
Weight_pool = Female_data_67(:,2); % Raw data of Weight in Kg;
Height_pool = Female_data_67(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Female = [Var_Raw_All_Female var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Female = [Var_Mean_Random_Female mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Female = prctile(Var_random,My_Percentile);
Var_5th_Random_Female = [Var_5th_Random_Female Prctile_Female(1)]; % 5th percentile
Var_95th_Random_Female = [Var_95th_Random_Female Prctile_Female(3)]; % 95th percentile

% Age 68
Weight_pool = Female_data_68(:,2); % Raw data of Weight in Kg;
Height_pool = Female_data_68(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Female = [Var_Raw_All_Female var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Female = [Var_Mean_Random_Female mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Female = prctile(Var_random,My_Percentile);
Var_5th_Random_Female = [Var_5th_Random_Female Prctile_Female(1)]; % 5th percentile
Var_95th_Random_Female = [Var_95th_Random_Female Prctile_Female(3)]; % 95th percentile

% Age 69
Weight_pool = Female_data_69(:,2); % Raw data of Weight in Kg;
Height_pool = Female_data_69(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Female = [Var_Raw_All_Female var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Female = [Var_Mean_Random_Female mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Female = prctile(Var_random,My_Percentile);
Var_5th_Random_Female = [Var_5th_Random_Female Prctile_Female(1)]; % 5th percentile
Var_95th_Random_Female = [Var_95th_Random_Female Prctile_Female(3)]; % 95th percentile

% Age 70
Weight_pool = Female_data_70(:,2); % Raw data of Weight in Kg;
Height_pool = Female_data_70(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Female = [Var_Raw_All_Female var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Female = [Var_Mean_Random_Female mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Female = prctile(Var_random,My_Percentile);
Var_5th_Random_Female = [Var_5th_Random_Female Prctile_Female(1)]; % 5th percentile
Var_95th_Random_Female = [Var_95th_Random_Female Prctile_Female(3)]; % 95th percentile

% Age 71
Weight_pool = Female_data_71(:,2); % Raw data of Weight in Kg;
Height_pool = Female_data_71(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Female = [Var_Raw_All_Female var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Female = [Var_Mean_Random_Female mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Female = prctile(Var_random,My_Percentile);
Var_5th_Random_Female = [Var_5th_Random_Female Prctile_Female(1)]; % 5th percentile
Var_95th_Random_Female = [Var_95th_Random_Female Prctile_Female(3)]; % 95th percentile

% Age 72
Weight_pool = Female_data_72(:,2); % Raw data of Weight in Kg;
Height_pool = Female_data_72(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Female = [Var_Raw_All_Female var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Female = [Var_Mean_Random_Female mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Female = prctile(Var_random,My_Percentile);
Var_5th_Random_Female = [Var_5th_Random_Female Prctile_Female(1)]; % 5th percentile
Var_95th_Random_Female = [Var_95th_Random_Female Prctile_Female(3)]; % 95th percentile

% Age 73
Weight_pool = Female_data_73(:,2); % Raw data of Weight in Kg;
Height_pool = Female_data_73(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Female = [Var_Raw_All_Female var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Female = [Var_Mean_Random_Female mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Female = prctile(Var_random,My_Percentile);
Var_5th_Random_Female = [Var_5th_Random_Female Prctile_Female(1)]; % 5th percentile
Var_95th_Random_Female = [Var_95th_Random_Female Prctile_Female(3)]; % 95th percentile

% Age 74
Weight_pool = Female_data_74(:,2); % Raw data of Weight in Kg;
Height_pool = Female_data_74(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Female = [Var_Raw_All_Female var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Female = [Var_Mean_Random_Female mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Female = prctile(Var_random,My_Percentile);
Var_5th_Random_Female = [Var_5th_Random_Female Prctile_Female(1)]; % 5th percentile
Var_95th_Random_Female = [Var_95th_Random_Female Prctile_Female(3)]; % 95th percentile

% Age 75
Weight_pool = Female_data_75(:,2); % Raw data of Weight in Kg;
Height_pool = Female_data_75(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Female = [Var_Raw_All_Female var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Female = [Var_Mean_Random_Female mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Female = prctile(Var_random,My_Percentile);
Var_5th_Random_Female = [Var_5th_Random_Female Prctile_Female(1)]; % 5th percentile
Var_95th_Random_Female = [Var_95th_Random_Female Prctile_Female(3)]; % 95th percentile

% Age 76
Weight_pool = Female_data_76(:,2); % Raw data of Weight in Kg;
Height_pool = Female_data_76(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Female = [Var_Raw_All_Female var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Female = [Var_Mean_Random_Female mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Female = prctile(Var_random,My_Percentile);
Var_5th_Random_Female = [Var_5th_Random_Female Prctile_Female(1)]; % 5th percentile
Var_95th_Random_Female = [Var_95th_Random_Female Prctile_Female(3)]; % 95th percentile

% Age 77
Weight_pool = Female_data_77(:,2); % Raw data of Weight in Kg;
Height_pool = Female_data_77(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Female = [Var_Raw_All_Female var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Female = [Var_Mean_Random_Female mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Female = prctile(Var_random,My_Percentile);
Var_5th_Random_Female = [Var_5th_Random_Female Prctile_Female(1)]; % 5th percentile
Var_95th_Random_Female = [Var_95th_Random_Female Prctile_Female(3)]; % 95th percentile

% Age 78
Weight_pool = Female_data_78(:,2); % Raw data of Weight in Kg;
Height_pool = Female_data_78(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Female = [Var_Raw_All_Female var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Female = [Var_Mean_Random_Female mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Female = prctile(Var_random,My_Percentile);
Var_5th_Random_Female = [Var_5th_Random_Female Prctile_Female(1)]; % 5th percentile
Var_95th_Random_Female = [Var_95th_Random_Female Prctile_Female(3)]; % 95th percentile

% Age 79
Weight_pool = Female_data_79(:,2); % Raw data of Weight in Kg;
Height_pool = Female_data_79(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Female = [Var_Raw_All_Female var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Female = [Var_Mean_Random_Female mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Female = prctile(Var_random,My_Percentile);
Var_5th_Random_Female = [Var_5th_Random_Female Prctile_Female(1)]; % 5th percentile
Var_95th_Random_Female = [Var_95th_Random_Female Prctile_Female(3)]; % 95th percentile

% Age 80
Weight_pool = Female_data_80(:,2); % Raw data of Weight in Kg;
Height_pool = Female_data_80(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Female = [Var_Raw_All_Female var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Female = [Var_Mean_Random_Female mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Female = prctile(Var_random,My_Percentile);
Var_5th_Random_Female = [Var_5th_Random_Female Prctile_Female(1)]; % 5th percentile
Var_95th_Random_Female = [Var_95th_Random_Female Prctile_Female(3)]; % 95th percentile

% Age 81
Weight_pool = Female_data_81(:,2); % Raw data of Weight in Kg;
Height_pool = Female_data_81(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Female = [Var_Raw_All_Female var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Female = [Var_Mean_Random_Female mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Female = prctile(Var_random,My_Percentile);
Var_5th_Random_Female = [Var_5th_Random_Female Prctile_Female(1)]; % 5th percentile
Var_95th_Random_Female = [Var_95th_Random_Female Prctile_Female(3)]; % 95th percentile

% Age 82
Weight_pool = Female_data_82(:,2); % Raw data of Weight in Kg;
Height_pool = Female_data_82(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Female = [Var_Raw_All_Female var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Female = [Var_Mean_Random_Female mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Female = prctile(Var_random,My_Percentile);
Var_5th_Random_Female = [Var_5th_Random_Female Prctile_Female(1)]; % 5th percentile
Var_95th_Random_Female = [Var_95th_Random_Female Prctile_Female(3)]; % 95th percentile

% Age 83
Weight_pool = Female_data_83(:,2); % Raw data of Weight in Kg;
Height_pool = Female_data_83(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Female = [Var_Raw_All_Female var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Female = [Var_Mean_Random_Female mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Female = prctile(Var_random,My_Percentile);
Var_5th_Random_Female = [Var_5th_Random_Female Prctile_Female(1)]; % 5th percentile
Var_95th_Random_Female = [Var_95th_Random_Female Prctile_Female(3)]; % 95th percentile

% Age 84
Weight_pool = Female_data_84(:,2); % Raw data of Weight in Kg;
Height_pool = Female_data_84(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Female = [Var_Raw_All_Female var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Female = [Var_Mean_Random_Female mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Female = prctile(Var_random,My_Percentile);
Var_5th_Random_Female = [Var_5th_Random_Female Prctile_Female(1)]; % 5th percentile
Var_95th_Random_Female = [Var_95th_Random_Female Prctile_Female(3)]; % 95th percentile

% Age 85
Weight_pool = Female_data_85(:,2); % Raw data of Weight in Kg;
Height_pool = Female_data_85(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Female = [Var_Raw_All_Female var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Female = [Var_Mean_Random_Female mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Female = prctile(Var_random,My_Percentile);
Var_5th_Random_Female = [Var_5th_Random_Female Prctile_Female(1)]; % 5th percentile
Var_95th_Random_Female = [Var_95th_Random_Female Prctile_Female(3)]; % 95th percentile

% Age 86
Weight_pool = Female_data_86(:,2); % Raw data of Weight in Kg;
Height_pool = Female_data_86(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Female = [Var_Raw_All_Female var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Female = [Var_Mean_Random_Female mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Female = prctile(Var_random,My_Percentile);
Var_5th_Random_Female = [Var_5th_Random_Female Prctile_Female(1)]; % 5th percentile
Var_95th_Random_Female = [Var_95th_Random_Female Prctile_Female(3)]; % 95th percentile

% Age 87
Weight_pool = Female_data_87(:,2); % Raw data of Weight in Kg;
Height_pool = Female_data_87(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Female = [Var_Raw_All_Female var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Female = [Var_Mean_Random_Female mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Female = prctile(Var_random,My_Percentile);
Var_5th_Random_Female = [Var_5th_Random_Female Prctile_Female(1)]; % 5th percentile
Var_95th_Random_Female = [Var_95th_Random_Female Prctile_Female(3)]; % 95th percentile

% Age 88
Weight_pool = Female_data_88(:,2); % Raw data of Weight in Kg;
Height_pool = Female_data_88(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Female = [Var_Raw_All_Female var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Female = [Var_Mean_Random_Female mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Female = prctile(Var_random,My_Percentile);
Var_5th_Random_Female = [Var_5th_Random_Female Prctile_Female(1)]; % 5th percentile
Var_95th_Random_Female = [Var_95th_Random_Female Prctile_Female(3)]; % 95th percentile

% Age 89
Weight_pool = Female_data_89(:,2); % Raw data of Weight in Kg;
Height_pool = Female_data_89(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Female = [Var_Raw_All_Female var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Female = [Var_Mean_Random_Female mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Female = prctile(Var_random,My_Percentile);
Var_5th_Random_Female = [Var_5th_Random_Female Prctile_Female(1)]; % 5th percentile
Var_95th_Random_Female = [Var_95th_Random_Female Prctile_Female(3)]; % 95th percentile

% Age 90
Weight_pool = Female_data_90(:,2); % Raw data of Weight in Kg;
Height_pool = Female_data_90(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Female = [Var_Raw_All_Female var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Female = [Var_Mean_Random_Female mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Female = prctile(Var_random,My_Percentile);
Var_5th_Random_Female = [Var_5th_Random_Female Prctile_Female(1)]; % 5th percentile
Var_95th_Random_Female = [Var_95th_Random_Female Prctile_Female(3)]; % 95th percentile

% For Male
% Age 1
Weight_pool = Male_data_1(:,2); % Raw data of Weight in Kg;
Height_pool = Male_data_1(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Male = [Var_Raw_All_Male var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Male = [Var_Mean_Random_Male mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Male = prctile(Var_random,My_Percentile);
Var_5th_Random_Male = [Var_5th_Random_Male Prctile_Male(1)]; % 5th percentile
Var_95th_Random_Male = [Var_95th_Random_Male Prctile_Male(3)]; % 95th percentile

% Age 2
Weight_pool = Male_data_2(:,2); % Raw data of Weight in Kg;
Height_pool = Male_data_2(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Male = [Var_Raw_All_Male var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Male = [Var_Mean_Random_Male mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Male = prctile(Var_random,My_Percentile);
Var_5th_Random_Male = [Var_5th_Random_Male Prctile_Male(1)]; % 5th percentile
Var_95th_Random_Male = [Var_95th_Random_Male Prctile_Male(3)]; % 95th percentile

% Age 3
Weight_pool = Male_data_3(:,2); % Raw data of Weight in Kg;
Height_pool = Male_data_3(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Male = [Var_Raw_All_Male var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Male = [Var_Mean_Random_Male mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Male = prctile(Var_random,My_Percentile);
Var_5th_Random_Male = [Var_5th_Random_Male Prctile_Male(1)]; % 5th percentile
Var_95th_Random_Male = [Var_95th_Random_Male Prctile_Male(3)]; % 95th percentile

% Age 4
Weight_pool = Male_data_4(:,2); % Raw data of Weight in Kg;
Height_pool = Male_data_4(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Male = [Var_Raw_All_Male var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Male = [Var_Mean_Random_Male mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Male = prctile(Var_random,My_Percentile);
Var_5th_Random_Male = [Var_5th_Random_Male Prctile_Male(1)]; % 5th percentile
Var_95th_Random_Male = [Var_95th_Random_Male Prctile_Male(3)]; % 95th percentile

% Age 5
Weight_pool = Male_data_5(:,2); % Raw data of Weight in Kg;
Height_pool = Male_data_5(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Male = [Var_Raw_All_Male var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Male = [Var_Mean_Random_Male mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Male = prctile(Var_random,My_Percentile);
Var_5th_Random_Male = [Var_5th_Random_Male Prctile_Male(1)]; % 5th percentile
Var_95th_Random_Male = [Var_95th_Random_Male Prctile_Male(3)]; % 95th percentile

% Age 6
Weight_pool = Male_data_6(:,2); % Raw data of Weight in Kg;
Height_pool = Male_data_6(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Male = [Var_Raw_All_Male var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Male = [Var_Mean_Random_Male mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Male = prctile(Var_random,My_Percentile);
Var_5th_Random_Male = [Var_5th_Random_Male Prctile_Male(1)]; % 5th percentile
Var_95th_Random_Male = [Var_95th_Random_Male Prctile_Male(3)]; % 95th percentile

% Age 7
Weight_pool = Male_data_7(:,2); % Raw data of Weight in Kg;
Height_pool = Male_data_7(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Male = [Var_Raw_All_Male var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Male = [Var_Mean_Random_Male mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Male = prctile(Var_random,My_Percentile);
Var_5th_Random_Male = [Var_5th_Random_Male Prctile_Male(1)]; % 5th percentile
Var_95th_Random_Male = [Var_95th_Random_Male Prctile_Male(3)]; % 95th percentile

% Age 8
Weight_pool = Male_data_8(:,2); % Raw data of Weight in Kg;
Height_pool = Male_data_8(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Male = [Var_Raw_All_Male var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Male = [Var_Mean_Random_Male mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Male = prctile(Var_random,My_Percentile);
Var_5th_Random_Male = [Var_5th_Random_Male Prctile_Male(1)]; % 5th percentile
Var_95th_Random_Male = [Var_95th_Random_Male Prctile_Male(3)]; % 95th percentile

% Age 9
Weight_pool = Male_data_9(:,2); % Raw data of Weight in Kg;
Height_pool = Male_data_9(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Male = [Var_Raw_All_Male var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Male = [Var_Mean_Random_Male mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Male = prctile(Var_random,My_Percentile);
Var_5th_Random_Male = [Var_5th_Random_Male Prctile_Male(1)]; % 5th percentile
Var_95th_Random_Male = [Var_95th_Random_Male Prctile_Male(3)]; % 95th percentile

% Age 10
Weight_pool = Male_data_10(:,2); % Raw data of Weight in Kg;
Height_pool = Male_data_10(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Male = [Var_Raw_All_Male var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Male = [Var_Mean_Random_Male mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Male = prctile(Var_random,My_Percentile);
Var_5th_Random_Male = [Var_5th_Random_Male Prctile_Male(1)]; % 5th percentile
Var_95th_Random_Male = [Var_95th_Random_Male Prctile_Male(3)]; % 95th percentile

% Age 11
Weight_pool = Male_data_11(:,2); % Raw data of Weight in Kg;
Height_pool = Male_data_11(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Male = [Var_Raw_All_Male var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Male = [Var_Mean_Random_Male mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Male = prctile(Var_random,My_Percentile);
Var_5th_Random_Male = [Var_5th_Random_Male Prctile_Male(1)]; % 5th percentile
Var_95th_Random_Male = [Var_95th_Random_Male Prctile_Male(3)]; % 95th percentile

% Age 12
Weight_pool = Male_data_12(:,2); % Raw data of Weight in Kg;
Height_pool = Male_data_12(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Male = [Var_Raw_All_Male var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Male = [Var_Mean_Random_Male mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Male = prctile(Var_random,My_Percentile);
Var_5th_Random_Male = [Var_5th_Random_Male Prctile_Male(1)]; % 5th percentile
Var_95th_Random_Male = [Var_95th_Random_Male Prctile_Male(3)]; % 95th percentile

% Age 13
Weight_pool = Male_data_13(:,2); % Raw data of Weight in Kg;
Height_pool = Male_data_13(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Male = [Var_Raw_All_Male var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Male = [Var_Mean_Random_Male mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Male = prctile(Var_random,My_Percentile);
Var_5th_Random_Male = [Var_5th_Random_Male Prctile_Male(1)]; % 5th percentile
Var_95th_Random_Male = [Var_95th_Random_Male Prctile_Male(3)]; % 95th percentile

% Age 14
Weight_pool = Male_data_14(:,2); % Raw data of Weight in Kg;
Height_pool = Male_data_14(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Male = [Var_Raw_All_Male var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Male = [Var_Mean_Random_Male mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Male = prctile(Var_random,My_Percentile);
Var_5th_Random_Male = [Var_5th_Random_Male Prctile_Male(1)]; % 5th percentile
Var_95th_Random_Male = [Var_95th_Random_Male Prctile_Male(3)]; % 95th percentile

% Age 15
Weight_pool = Male_data_15(:,2); % Raw data of Weight in Kg;
Height_pool = Male_data_15(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Male = [Var_Raw_All_Male var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Male = [Var_Mean_Random_Male mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Male = prctile(Var_random,My_Percentile);
Var_5th_Random_Male = [Var_5th_Random_Male Prctile_Male(1)]; % 5th percentile
Var_95th_Random_Male = [Var_95th_Random_Male Prctile_Male(3)]; % 95th percentile

% Age 16
Weight_pool = Male_data_16(:,2); % Raw data of Weight in Kg;
Height_pool = Male_data_16(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Male = [Var_Raw_All_Male var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Male = [Var_Mean_Random_Male mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Male = prctile(Var_random,My_Percentile);
Var_5th_Random_Male = [Var_5th_Random_Male Prctile_Male(1)]; % 5th percentile
Var_95th_Random_Male = [Var_95th_Random_Male Prctile_Male(3)]; % 95th percentile

% Age 17
Weight_pool = Male_data_17(:,2); % Raw data of Weight in Kg;
Height_pool = Male_data_17(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Male = [Var_Raw_All_Male var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Male = [Var_Mean_Random_Male mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Male = prctile(Var_random,My_Percentile);
Var_5th_Random_Male = [Var_5th_Random_Male Prctile_Male(1)]; % 5th percentile
Var_95th_Random_Male = [Var_95th_Random_Male Prctile_Male(3)]; % 95th percentile

% Age 18
Weight_pool = Male_data_18(:,2); % Raw data of Weight in Kg;
Height_pool = Male_data_18(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Male = [Var_Raw_All_Male var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Male = [Var_Mean_Random_Male mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Male = prctile(Var_random,My_Percentile);
Var_5th_Random_Male = [Var_5th_Random_Male Prctile_Male(1)]; % 5th percentile
Var_95th_Random_Male = [Var_95th_Random_Male Prctile_Male(3)]; % 95th percentile

% Age 19
Weight_pool = Male_data_19(:,2); % Raw data of Weight in Kg;
Height_pool = Male_data_19(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Male = [Var_Raw_All_Male var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Male = [Var_Mean_Random_Male mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Male = prctile(Var_random,My_Percentile);
Var_5th_Random_Male = [Var_5th_Random_Male Prctile_Male(1)]; % 5th percentile
Var_95th_Random_Male = [Var_95th_Random_Male Prctile_Male(3)]; % 95th percentile

% Age 20
Weight_pool = Male_data_20(:,2); % Raw data of Weight in Kg;
Height_pool = Male_data_20(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Male = [Var_Raw_All_Male var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Male = [Var_Mean_Random_Male mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Male = prctile(Var_random,My_Percentile);
Var_5th_Random_Male = [Var_5th_Random_Male Prctile_Male(1)]; % 5th percentile
Var_95th_Random_Male = [Var_95th_Random_Male Prctile_Male(3)]; % 95th percentile

% Age 21
Weight_pool = Male_data_21(:,2); % Raw data of Weight in Kg;
Height_pool = Male_data_21(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Male = [Var_Raw_All_Male var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Male = [Var_Mean_Random_Male mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Male = prctile(Var_random,My_Percentile);
Var_5th_Random_Male = [Var_5th_Random_Male Prctile_Male(1)]; % 5th percentile
Var_95th_Random_Male = [Var_95th_Random_Male Prctile_Male(3)]; % 95th percentile

% Age 22
Weight_pool = Male_data_22(:,2); % Raw data of Weight in Kg;
Height_pool = Male_data_22(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Male = [Var_Raw_All_Male var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Male = [Var_Mean_Random_Male mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Male = prctile(Var_random,My_Percentile);
Var_5th_Random_Male = [Var_5th_Random_Male Prctile_Male(1)]; % 5th percentile
Var_95th_Random_Male = [Var_95th_Random_Male Prctile_Male(3)]; % 95th percentile

% Age 23
Weight_pool = Male_data_23(:,2); % Raw data of Weight in Kg;
Height_pool = Male_data_23(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Male = [Var_Raw_All_Male var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Male = [Var_Mean_Random_Male mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Male = prctile(Var_random,My_Percentile);
Var_5th_Random_Male = [Var_5th_Random_Male Prctile_Male(1)]; % 5th percentile
Var_95th_Random_Male = [Var_95th_Random_Male Prctile_Male(3)]; % 95th percentile

% Age 24
Weight_pool = Male_data_24(:,2); % Raw data of Weight in Kg;
Height_pool = Male_data_24(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Male = [Var_Raw_All_Male var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Male = [Var_Mean_Random_Male mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Male = prctile(Var_random,My_Percentile);
Var_5th_Random_Male = [Var_5th_Random_Male Prctile_Male(1)]; % 5th percentile
Var_95th_Random_Male = [Var_95th_Random_Male Prctile_Male(3)]; % 95th percentile

% Age 25
Weight_pool = Male_data_25(:,2); % Raw data of Weight in Kg;
Height_pool = Male_data_25(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Male = [Var_Raw_All_Male var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Male = [Var_Mean_Random_Male mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Male = prctile(Var_random,My_Percentile);
Var_5th_Random_Male = [Var_5th_Random_Male Prctile_Male(1)]; % 5th percentile
Var_95th_Random_Male = [Var_95th_Random_Male Prctile_Male(3)]; % 95th percentile

% Age 26
Weight_pool = Male_data_26(:,2); % Raw data of Weight in Kg;
Height_pool = Male_data_26(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Male = [Var_Raw_All_Male var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Male = [Var_Mean_Random_Male mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Male = prctile(Var_random,My_Percentile);
Var_5th_Random_Male = [Var_5th_Random_Male Prctile_Male(1)]; % 5th percentile
Var_95th_Random_Male = [Var_95th_Random_Male Prctile_Male(3)]; % 95th percentile

% Age 27
Weight_pool = Male_data_27(:,2); % Raw data of Weight in Kg;
Height_pool = Male_data_27(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Male = [Var_Raw_All_Male var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Male = [Var_Mean_Random_Male mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Male = prctile(Var_random,My_Percentile);
Var_5th_Random_Male = [Var_5th_Random_Male Prctile_Male(1)]; % 5th percentile
Var_95th_Random_Male = [Var_95th_Random_Male Prctile_Male(3)]; % 95th percentile

% Age 28
Weight_pool = Male_data_28(:,2); % Raw data of Weight in Kg;
Height_pool = Male_data_28(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Male = [Var_Raw_All_Male var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Male = [Var_Mean_Random_Male mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Male = prctile(Var_random,My_Percentile);
Var_5th_Random_Male = [Var_5th_Random_Male Prctile_Male(1)]; % 5th percentile
Var_95th_Random_Male = [Var_95th_Random_Male Prctile_Male(3)]; % 95th percentile

% Age 29
Weight_pool = Male_data_29(:,2); % Raw data of Weight in Kg;
Height_pool = Male_data_29(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Male = [Var_Raw_All_Male var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Male = [Var_Mean_Random_Male mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Male = prctile(Var_random,My_Percentile);
Var_5th_Random_Male = [Var_5th_Random_Male Prctile_Male(1)]; % 5th percentile
Var_95th_Random_Male = [Var_95th_Random_Male Prctile_Male(3)]; % 95th percentile

% Age 30
Weight_pool = Male_data_30(:,2); % Raw data of Weight in Kg;
Height_pool = Male_data_30(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Male = [Var_Raw_All_Male var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Male = [Var_Mean_Random_Male mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Male = prctile(Var_random,My_Percentile);
Var_5th_Random_Male = [Var_5th_Random_Male Prctile_Male(1)]; % 5th percentile
Var_95th_Random_Male = [Var_95th_Random_Male Prctile_Male(3)]; % 95th percentile

% Age 31
Weight_pool = Male_data_31(:,2); % Raw data of Weight in Kg;
Height_pool = Male_data_31(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Male = [Var_Raw_All_Male var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Male = [Var_Mean_Random_Male mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Male = prctile(Var_random,My_Percentile);
Var_5th_Random_Male = [Var_5th_Random_Male Prctile_Male(1)]; % 5th percentile
Var_95th_Random_Male = [Var_95th_Random_Male Prctile_Male(3)]; % 95th percentile

% Age 32
Weight_pool = Male_data_32(:,2); % Raw data of Weight in Kg;
Height_pool = Male_data_32(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Male = [Var_Raw_All_Male var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Male = [Var_Mean_Random_Male mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Male = prctile(Var_random,My_Percentile);
Var_5th_Random_Male = [Var_5th_Random_Male Prctile_Male(1)]; % 5th percentile
Var_95th_Random_Male = [Var_95th_Random_Male Prctile_Male(3)]; % 95th percentile

% Age 33
Weight_pool = Male_data_33(:,2); % Raw data of Weight in Kg;
Height_pool = Male_data_33(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Male = [Var_Raw_All_Male var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Male = [Var_Mean_Random_Male mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Male = prctile(Var_random,My_Percentile);
Var_5th_Random_Male = [Var_5th_Random_Male Prctile_Male(1)]; % 5th percentile
Var_95th_Random_Male = [Var_95th_Random_Male Prctile_Male(3)]; % 95th percentile

% Age 34
Weight_pool = Male_data_34(:,2); % Raw data of Weight in Kg;
Height_pool = Male_data_34(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Male = [Var_Raw_All_Male var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Male = [Var_Mean_Random_Male mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Male = prctile(Var_random,My_Percentile);
Var_5th_Random_Male = [Var_5th_Random_Male Prctile_Male(1)]; % 5th percentile
Var_95th_Random_Male = [Var_95th_Random_Male Prctile_Male(3)]; % 95th percentile

% Age 35
Weight_pool = Male_data_35(:,2); % Raw data of Weight in Kg;
Height_pool = Male_data_35(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Male = [Var_Raw_All_Male var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Male = [Var_Mean_Random_Male mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Male = prctile(Var_random,My_Percentile);
Var_5th_Random_Male = [Var_5th_Random_Male Prctile_Male(1)]; % 5th percentile
Var_95th_Random_Male = [Var_95th_Random_Male Prctile_Male(3)]; % 95th percentile

% Age 36
Weight_pool = Male_data_36(:,2); % Raw data of Weight in Kg;
Height_pool = Male_data_36(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Male = [Var_Raw_All_Male var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Male = [Var_Mean_Random_Male mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Male = prctile(Var_random,My_Percentile);
Var_5th_Random_Male = [Var_5th_Random_Male Prctile_Male(1)]; % 5th percentile
Var_95th_Random_Male = [Var_95th_Random_Male Prctile_Male(3)]; % 95th percentile

% Age 37
Weight_pool = Male_data_37(:,2); % Raw data of Weight in Kg;
Height_pool = Male_data_37(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Male = [Var_Raw_All_Male var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Male = [Var_Mean_Random_Male mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Male = prctile(Var_random,My_Percentile);
Var_5th_Random_Male = [Var_5th_Random_Male Prctile_Male(1)]; % 5th percentile
Var_95th_Random_Male = [Var_95th_Random_Male Prctile_Male(3)]; % 95th percentile

% Age 38
Weight_pool = Male_data_38(:,2); % Raw data of Weight in Kg;
Height_pool = Male_data_38(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Male = [Var_Raw_All_Male var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Male = [Var_Mean_Random_Male mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Male = prctile(Var_random,My_Percentile);
Var_5th_Random_Male = [Var_5th_Random_Male Prctile_Male(1)]; % 5th percentile
Var_95th_Random_Male = [Var_95th_Random_Male Prctile_Male(3)]; % 95th percentile

% Age 39
Weight_pool = Male_data_39(:,2); % Raw data of Weight in Kg;
Height_pool = Male_data_39(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Male = [Var_Raw_All_Male var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Male = [Var_Mean_Random_Male mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Male = prctile(Var_random,My_Percentile);
Var_5th_Random_Male = [Var_5th_Random_Male Prctile_Male(1)]; % 5th percentile
Var_95th_Random_Male = [Var_95th_Random_Male Prctile_Male(3)]; % 95th percentile

% Age 40
Weight_pool = Male_data_40(:,2); % Raw data of Weight in Kg;
Height_pool = Male_data_40(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Male = [Var_Raw_All_Male var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Male = [Var_Mean_Random_Male mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Male = prctile(Var_random,My_Percentile);
Var_5th_Random_Male = [Var_5th_Random_Male Prctile_Male(1)]; % 5th percentile
Var_95th_Random_Male = [Var_95th_Random_Male Prctile_Male(3)]; % 95th percentile

% Age 41
Weight_pool = Male_data_41(:,2); % Raw data of Weight in Kg;
Height_pool = Male_data_41(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Male = [Var_Raw_All_Male var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Male = [Var_Mean_Random_Male mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Male = prctile(Var_random,My_Percentile);
Var_5th_Random_Male = [Var_5th_Random_Male Prctile_Male(1)]; % 5th percentile
Var_95th_Random_Male = [Var_95th_Random_Male Prctile_Male(3)]; % 95th percentile

% Age 42
Weight_pool = Male_data_42(:,2); % Raw data of Weight in Kg;
Height_pool = Male_data_42(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Male = [Var_Raw_All_Male var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Male = [Var_Mean_Random_Male mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Male = prctile(Var_random,My_Percentile);
Var_5th_Random_Male = [Var_5th_Random_Male Prctile_Male(1)]; % 5th percentile
Var_95th_Random_Male = [Var_95th_Random_Male Prctile_Male(3)]; % 95th percentile

% Age 43
Weight_pool = Male_data_43(:,2); % Raw data of Weight in Kg;
Height_pool = Male_data_43(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Male = [Var_Raw_All_Male var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Male = [Var_Mean_Random_Male mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Male = prctile(Var_random,My_Percentile);
Var_5th_Random_Male = [Var_5th_Random_Male Prctile_Male(1)]; % 5th percentile
Var_95th_Random_Male = [Var_95th_Random_Male Prctile_Male(3)]; % 95th percentile

% Age 44
Weight_pool = Male_data_44(:,2); % Raw data of Weight in Kg;
Height_pool = Male_data_44(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Male = [Var_Raw_All_Male var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Male = [Var_Mean_Random_Male mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Male = prctile(Var_random,My_Percentile);
Var_5th_Random_Male = [Var_5th_Random_Male Prctile_Male(1)]; % 5th percentile
Var_95th_Random_Male = [Var_95th_Random_Male Prctile_Male(3)]; % 95th percentile

% Age 45
Weight_pool = Male_data_45(:,2); % Raw data of Weight in Kg;
Height_pool = Male_data_45(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Male = [Var_Raw_All_Male var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Male = [Var_Mean_Random_Male mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Male = prctile(Var_random,My_Percentile);
Var_5th_Random_Male = [Var_5th_Random_Male Prctile_Male(1)]; % 5th percentile
Var_95th_Random_Male = [Var_95th_Random_Male Prctile_Male(3)]; % 95th percentile

% Age 46
Weight_pool = Male_data_46(:,2); % Raw data of Weight in Kg;
Height_pool = Male_data_46(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Male = [Var_Raw_All_Male var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Male = [Var_Mean_Random_Male mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Male = prctile(Var_random,My_Percentile);
Var_5th_Random_Male = [Var_5th_Random_Male Prctile_Male(1)]; % 5th percentile
Var_95th_Random_Male = [Var_95th_Random_Male Prctile_Male(3)]; % 95th percentile

% Age 47
Weight_pool = Male_data_47(:,2); % Raw data of Weight in Kg;
Height_pool = Male_data_47(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Male = [Var_Raw_All_Male var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Male = [Var_Mean_Random_Male mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Male = prctile(Var_random,My_Percentile);
Var_5th_Random_Male = [Var_5th_Random_Male Prctile_Male(1)]; % 5th percentile
Var_95th_Random_Male = [Var_95th_Random_Male Prctile_Male(3)]; % 95th percentile

% Age 48
Weight_pool = Male_data_48(:,2); % Raw data of Weight in Kg;
Height_pool = Male_data_48(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Male = [Var_Raw_All_Male var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Male = [Var_Mean_Random_Male mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Male = prctile(Var_random,My_Percentile);
Var_5th_Random_Male = [Var_5th_Random_Male Prctile_Male(1)]; % 5th percentile
Var_95th_Random_Male = [Var_95th_Random_Male Prctile_Male(3)]; % 95th percentile

% Age 49
Weight_pool = Male_data_49(:,2); % Raw data of Weight in Kg;
Height_pool = Male_data_49(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Male = [Var_Raw_All_Male var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Male = [Var_Mean_Random_Male mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Male = prctile(Var_random,My_Percentile);
Var_5th_Random_Male = [Var_5th_Random_Male Prctile_Male(1)]; % 5th percentile
Var_95th_Random_Male = [Var_95th_Random_Male Prctile_Male(3)]; % 95th percentile

% Age 50
Weight_pool = Male_data_50(:,2); % Raw data of Weight in Kg;
Height_pool = Male_data_50(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Male = [Var_Raw_All_Male var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Male = [Var_Mean_Random_Male mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Male = prctile(Var_random,My_Percentile);
Var_5th_Random_Male = [Var_5th_Random_Male Prctile_Male(1)]; % 5th percentile
Var_95th_Random_Male = [Var_95th_Random_Male Prctile_Male(3)]; % 95th percentile

% Age 51
Weight_pool = Male_data_51(:,2); % Raw data of Weight in Kg;
Height_pool = Male_data_51(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Male = [Var_Raw_All_Male var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Male = [Var_Mean_Random_Male mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Male = prctile(Var_random,My_Percentile);
Var_5th_Random_Male = [Var_5th_Random_Male Prctile_Male(1)]; % 5th percentile
Var_95th_Random_Male = [Var_95th_Random_Male Prctile_Male(3)]; % 95th percentile

% Age 52
Weight_pool = Male_data_52(:,2); % Raw data of Weight in Kg;
Height_pool = Male_data_52(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Male = [Var_Raw_All_Male var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Male = [Var_Mean_Random_Male mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Male = prctile(Var_random,My_Percentile);
Var_5th_Random_Male = [Var_5th_Random_Male Prctile_Male(1)]; % 5th percentile
Var_95th_Random_Male = [Var_95th_Random_Male Prctile_Male(3)]; % 95th percentile

% Age 53
Weight_pool = Male_data_53(:,2); % Raw data of Weight in Kg;
Height_pool = Male_data_53(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Male = [Var_Raw_All_Male var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Male = [Var_Mean_Random_Male mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Male = prctile(Var_random,My_Percentile);
Var_5th_Random_Male = [Var_5th_Random_Male Prctile_Male(1)]; % 5th percentile
Var_95th_Random_Male = [Var_95th_Random_Male Prctile_Male(3)]; % 95th percentile

% Age 54
Weight_pool = Male_data_54(:,2); % Raw data of Weight in Kg;
Height_pool = Male_data_54(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Male = [Var_Raw_All_Male var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Male = [Var_Mean_Random_Male mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Male = prctile(Var_random,My_Percentile);
Var_5th_Random_Male = [Var_5th_Random_Male Prctile_Male(1)]; % 5th percentile
Var_95th_Random_Male = [Var_95th_Random_Male Prctile_Male(3)]; % 95th percentile

% Age 55
Weight_pool = Male_data_55(:,2); % Raw data of Weight in Kg;
Height_pool = Male_data_55(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Male = [Var_Raw_All_Male var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Male = [Var_Mean_Random_Male mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Male = prctile(Var_random,My_Percentile);
Var_5th_Random_Male = [Var_5th_Random_Male Prctile_Male(1)]; % 5th percentile
Var_95th_Random_Male = [Var_95th_Random_Male Prctile_Male(3)]; % 95th percentile

% Age 56
Weight_pool = Male_data_56(:,2); % Raw data of Weight in Kg;
Height_pool = Male_data_56(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Male = [Var_Raw_All_Male var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Male = [Var_Mean_Random_Male mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Male = prctile(Var_random,My_Percentile);
Var_5th_Random_Male = [Var_5th_Random_Male Prctile_Male(1)]; % 5th percentile
Var_95th_Random_Male = [Var_95th_Random_Male Prctile_Male(3)]; % 95th percentile

% Age 57
Weight_pool = Male_data_57(:,2); % Raw data of Weight in Kg;
Height_pool = Male_data_57(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Male = [Var_Raw_All_Male var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Male = [Var_Mean_Random_Male mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Male = prctile(Var_random,My_Percentile);
Var_5th_Random_Male = [Var_5th_Random_Male Prctile_Male(1)]; % 5th percentile
Var_95th_Random_Male = [Var_95th_Random_Male Prctile_Male(3)]; % 95th percentile

% Age 58
Weight_pool = Male_data_58(:,2); % Raw data of Weight in Kg;
Height_pool = Male_data_58(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Male = [Var_Raw_All_Male var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Male = [Var_Mean_Random_Male mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Male = prctile(Var_random,My_Percentile);
Var_5th_Random_Male = [Var_5th_Random_Male Prctile_Male(1)]; % 5th percentile
Var_95th_Random_Male = [Var_95th_Random_Male Prctile_Male(3)]; % 95th percentile

% Age 59
Weight_pool = Male_data_59(:,2); % Raw data of Weight in Kg;
Height_pool = Male_data_59(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Male = [Var_Raw_All_Male var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Male = [Var_Mean_Random_Male mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Male = prctile(Var_random,My_Percentile);
Var_5th_Random_Male = [Var_5th_Random_Male Prctile_Male(1)]; % 5th percentile
Var_95th_Random_Male = [Var_95th_Random_Male Prctile_Male(3)]; % 95th percentile

% Age 60
Weight_pool = Male_data_60(:,2); % Raw data of Weight in Kg;
Height_pool = Male_data_60(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Male = [Var_Raw_All_Male var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Male = [Var_Mean_Random_Male mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Male = prctile(Var_random,My_Percentile);
Var_5th_Random_Male = [Var_5th_Random_Male Prctile_Male(1)]; % 5th percentile
Var_95th_Random_Male = [Var_95th_Random_Male Prctile_Male(3)]; % 95th percentile

% Age 61
Weight_pool = Male_data_61(:,2); % Raw data of Weight in Kg;
Height_pool = Male_data_61(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Male = [Var_Raw_All_Male var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Male = [Var_Mean_Random_Male mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Male = prctile(Var_random,My_Percentile);
Var_5th_Random_Male = [Var_5th_Random_Male Prctile_Male(1)]; % 5th percentile
Var_95th_Random_Male = [Var_95th_Random_Male Prctile_Male(3)]; % 95th percentile

% Age 62
Weight_pool = Male_data_62(:,2); % Raw data of Weight in Kg;
Height_pool = Male_data_62(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Male = [Var_Raw_All_Male var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Male = [Var_Mean_Random_Male mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Male = prctile(Var_random,My_Percentile);
Var_5th_Random_Male = [Var_5th_Random_Male Prctile_Male(1)]; % 5th percentile
Var_95th_Random_Male = [Var_95th_Random_Male Prctile_Male(3)]; % 95th percentile

% Age 63
Weight_pool = Male_data_63(:,2); % Raw data of Weight in Kg;
Height_pool = Male_data_63(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Male = [Var_Raw_All_Male var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Male = [Var_Mean_Random_Male mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Male = prctile(Var_random,My_Percentile);
Var_5th_Random_Male = [Var_5th_Random_Male Prctile_Male(1)]; % 5th percentile
Var_95th_Random_Male = [Var_95th_Random_Male Prctile_Male(3)]; % 95th percentile

% Age 64
Weight_pool = Male_data_64(:,2); % Raw data of Weight in Kg;
Height_pool = Male_data_64(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Male = [Var_Raw_All_Male var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Male = [Var_Mean_Random_Male mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Male = prctile(Var_random,My_Percentile);
Var_5th_Random_Male = [Var_5th_Random_Male Prctile_Male(1)]; % 5th percentile
Var_95th_Random_Male = [Var_95th_Random_Male Prctile_Male(3)]; % 95th percentile

% Age 65
Weight_pool = Male_data_65(:,2); % Raw data of Weight in Kg;
Height_pool = Male_data_65(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Male = [Var_Raw_All_Male var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Male = [Var_Mean_Random_Male mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Male = prctile(Var_random,My_Percentile);
Var_5th_Random_Male = [Var_5th_Random_Male Prctile_Male(1)]; % 5th percentile
Var_95th_Random_Male = [Var_95th_Random_Male Prctile_Male(3)]; % 95th percentile

% Age 66
Weight_pool = Male_data_66(:,2); % Raw data of Weight in Kg;
Height_pool = Male_data_66(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Male = [Var_Raw_All_Male var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Male = [Var_Mean_Random_Male mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Male = prctile(Var_random,My_Percentile);
Var_5th_Random_Male = [Var_5th_Random_Male Prctile_Male(1)]; % 5th percentile
Var_95th_Random_Male = [Var_95th_Random_Male Prctile_Male(3)]; % 95th percentile

% Age 67
Weight_pool = Male_data_67(:,2); % Raw data of Weight in Kg;
Height_pool = Male_data_67(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Male = [Var_Raw_All_Male var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Male = [Var_Mean_Random_Male mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Male = prctile(Var_random,My_Percentile);
Var_5th_Random_Male = [Var_5th_Random_Male Prctile_Male(1)]; % 5th percentile
Var_95th_Random_Male = [Var_95th_Random_Male Prctile_Male(3)]; % 95th percentile

% Age 68
Weight_pool = Male_data_68(:,2); % Raw data of Weight in Kg;
Height_pool = Male_data_68(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Male = [Var_Raw_All_Male var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Male = [Var_Mean_Random_Male mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Male = prctile(Var_random,My_Percentile);
Var_5th_Random_Male = [Var_5th_Random_Male Prctile_Male(1)]; % 5th percentile
Var_95th_Random_Male = [Var_95th_Random_Male Prctile_Male(3)]; % 95th percentile

% Age 69
Weight_pool = Male_data_69(:,2); % Raw data of Weight in Kg;
Height_pool = Male_data_69(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Male = [Var_Raw_All_Male var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Male = [Var_Mean_Random_Male mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Male = prctile(Var_random,My_Percentile);
Var_5th_Random_Male = [Var_5th_Random_Male Prctile_Male(1)]; % 5th percentile
Var_95th_Random_Male = [Var_95th_Random_Male Prctile_Male(3)]; % 95th percentile

% Age 70
Weight_pool = Male_data_70(:,2); % Raw data of Weight in Kg;
Height_pool = Male_data_70(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Male = [Var_Raw_All_Male var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Male = [Var_Mean_Random_Male mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Male = prctile(Var_random,My_Percentile);
Var_5th_Random_Male = [Var_5th_Random_Male Prctile_Male(1)]; % 5th percentile
Var_95th_Random_Male = [Var_95th_Random_Male Prctile_Male(3)]; % 95th percentile

% Age 71
Weight_pool = Male_data_71(:,2); % Raw data of Weight in Kg;
Height_pool = Male_data_71(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Male = [Var_Raw_All_Male var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Male = [Var_Mean_Random_Male mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Male = prctile(Var_random,My_Percentile);
Var_5th_Random_Male = [Var_5th_Random_Male Prctile_Male(1)]; % 5th percentile
Var_95th_Random_Male = [Var_95th_Random_Male Prctile_Male(3)]; % 95th percentile

% Age 72
Weight_pool = Male_data_72(:,2); % Raw data of Weight in Kg;
Height_pool = Male_data_72(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Male = [Var_Raw_All_Male var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Male = [Var_Mean_Random_Male mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Male = prctile(Var_random,My_Percentile);
Var_5th_Random_Male = [Var_5th_Random_Male Prctile_Male(1)]; % 5th percentile
Var_95th_Random_Male = [Var_95th_Random_Male Prctile_Male(3)]; % 95th percentile

% Age 73
Weight_pool = Male_data_73(:,2); % Raw data of Weight in Kg;
Height_pool = Male_data_73(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Male = [Var_Raw_All_Male var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Male = [Var_Mean_Random_Male mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Male = prctile(Var_random,My_Percentile);
Var_5th_Random_Male = [Var_5th_Random_Male Prctile_Male(1)]; % 5th percentile
Var_95th_Random_Male = [Var_95th_Random_Male Prctile_Male(3)]; % 95th percentile

% Age 74
Weight_pool = Male_data_74(:,2); % Raw data of Weight in Kg;
Height_pool = Male_data_74(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Male = [Var_Raw_All_Male var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Male = [Var_Mean_Random_Male mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Male = prctile(Var_random,My_Percentile);
Var_5th_Random_Male = [Var_5th_Random_Male Prctile_Male(1)]; % 5th percentile
Var_95th_Random_Male = [Var_95th_Random_Male Prctile_Male(3)]; % 95th percentile

% Age 75
Weight_pool = Male_data_75(:,2); % Raw data of Weight in Kg;
Height_pool = Male_data_75(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Male = [Var_Raw_All_Male var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Male = [Var_Mean_Random_Male mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Male = prctile(Var_random,My_Percentile);
Var_5th_Random_Male = [Var_5th_Random_Male Prctile_Male(1)]; % 5th percentile
Var_95th_Random_Male = [Var_95th_Random_Male Prctile_Male(3)]; % 95th percentile

% Age 76
Weight_pool = Male_data_76(:,2); % Raw data of Weight in Kg;
Height_pool = Male_data_76(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Male = [Var_Raw_All_Male var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Male = [Var_Mean_Random_Male mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Male = prctile(Var_random,My_Percentile);
Var_5th_Random_Male = [Var_5th_Random_Male Prctile_Male(1)]; % 5th percentile
Var_95th_Random_Male = [Var_95th_Random_Male Prctile_Male(3)]; % 95th percentile

% Age 77
Weight_pool = Male_data_77(:,2); % Raw data of Weight in Kg;
Height_pool = Male_data_77(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Male = [Var_Raw_All_Male var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Male = [Var_Mean_Random_Male mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Male = prctile(Var_random,My_Percentile);
Var_5th_Random_Male = [Var_5th_Random_Male Prctile_Male(1)]; % 5th percentile
Var_95th_Random_Male = [Var_95th_Random_Male Prctile_Male(3)]; % 95th percentile

% Age 78
Weight_pool = Male_data_78(:,2); % Raw data of Weight in Kg;
Height_pool = Male_data_78(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Male = [Var_Raw_All_Male var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Male = [Var_Mean_Random_Male mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Male = prctile(Var_random,My_Percentile);
Var_5th_Random_Male = [Var_5th_Random_Male Prctile_Male(1)]; % 5th percentile
Var_95th_Random_Male = [Var_95th_Random_Male Prctile_Male(3)]; % 95th percentile

% Age 79
Weight_pool = Male_data_79(:,2); % Raw data of Weight in Kg;
Height_pool = Male_data_79(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Male = [Var_Raw_All_Male var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Male = [Var_Mean_Random_Male mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Male = prctile(Var_random,My_Percentile);
Var_5th_Random_Male = [Var_5th_Random_Male Prctile_Male(1)]; % 5th percentile
Var_95th_Random_Male = [Var_95th_Random_Male Prctile_Male(3)]; % 95th percentile

% Age 80
Weight_pool = Male_data_80(:,2); % Raw data of Weight in Kg;
Height_pool = Male_data_80(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Male = [Var_Raw_All_Male var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Male = [Var_Mean_Random_Male mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Male = prctile(Var_random,My_Percentile);
Var_5th_Random_Male = [Var_5th_Random_Male Prctile_Male(1)]; % 5th percentile
Var_95th_Random_Male = [Var_95th_Random_Male Prctile_Male(3)]; % 95th percentile

% Age 81
Weight_pool = Male_data_81(:,2); % Raw data of Weight in Kg;
Height_pool = Male_data_81(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Male = [Var_Raw_All_Male var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Male = [Var_Mean_Random_Male mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Male = prctile(Var_random,My_Percentile);
Var_5th_Random_Male = [Var_5th_Random_Male Prctile_Male(1)]; % 5th percentile
Var_95th_Random_Male = [Var_95th_Random_Male Prctile_Male(3)]; % 95th percentile

% Age 82
Weight_pool = Male_data_82(:,2); % Raw data of Weight in Kg;
Height_pool = Male_data_82(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Male = [Var_Raw_All_Male var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Male = [Var_Mean_Random_Male mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Male = prctile(Var_random,My_Percentile);
Var_5th_Random_Male = [Var_5th_Random_Male Prctile_Male(1)]; % 5th percentile
Var_95th_Random_Male = [Var_95th_Random_Male Prctile_Male(3)]; % 95th percentile

% Age 83
Weight_pool = Male_data_83(:,2); % Raw data of Weight in Kg;
Height_pool = Male_data_83(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Male = [Var_Raw_All_Male var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Male = [Var_Mean_Random_Male mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Male = prctile(Var_random,My_Percentile);
Var_5th_Random_Male = [Var_5th_Random_Male Prctile_Male(1)]; % 5th percentile
Var_95th_Random_Male = [Var_95th_Random_Male Prctile_Male(3)]; % 95th percentile

% Age 84
Weight_pool = Male_data_84(:,2); % Raw data of Weight in Kg;
Height_pool = Male_data_84(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Male = [Var_Raw_All_Male var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Male = [Var_Mean_Random_Male mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Male = prctile(Var_random,My_Percentile);
Var_5th_Random_Male = [Var_5th_Random_Male Prctile_Male(1)]; % 5th percentile
Var_95th_Random_Male = [Var_95th_Random_Male Prctile_Male(3)]; % 95th percentile

% Age 85
Weight_pool = Male_data_85(:,2); % Raw data of Weight in Kg;
Height_pool = Male_data_85(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Male = [Var_Raw_All_Male var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Male = [Var_Mean_Random_Male mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Male = prctile(Var_random,My_Percentile);
Var_5th_Random_Male = [Var_5th_Random_Male Prctile_Male(1)]; % 5th percentile
Var_95th_Random_Male = [Var_95th_Random_Male Prctile_Male(3)]; % 95th percentile

% Age 86
Weight_pool = Male_data_86(:,2); % Raw data of Weight in Kg;
Height_pool = Male_data_86(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Male = [Var_Raw_All_Male var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Male = [Var_Mean_Random_Male mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Male = prctile(Var_random,My_Percentile);
Var_5th_Random_Male = [Var_5th_Random_Male Prctile_Male(1)]; % 5th percentile
Var_95th_Random_Male = [Var_95th_Random_Male Prctile_Male(3)]; % 95th percentile

% Age 87
Weight_pool = Male_data_87(:,2); % Raw data of Weight in Kg;
Height_pool = Male_data_87(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Male = [Var_Raw_All_Male var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Male = [Var_Mean_Random_Male mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Male = prctile(Var_random,My_Percentile);
Var_5th_Random_Male = [Var_5th_Random_Male Prctile_Male(1)]; % 5th percentile
Var_95th_Random_Male = [Var_95th_Random_Male Prctile_Male(3)]; % 95th percentile

% Age 88
Weight_pool = Male_data_88(:,2); % Raw data of Weight in Kg;
Height_pool = Male_data_88(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Male = [Var_Raw_All_Male var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Male = [Var_Mean_Random_Male mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Male = prctile(Var_random,My_Percentile);
Var_5th_Random_Male = [Var_5th_Random_Male Prctile_Male(1)]; % 5th percentile
Var_95th_Random_Male = [Var_95th_Random_Male Prctile_Male(3)]; % 95th percentile

% Age 89
Weight_pool = Male_data_89(:,2); % Raw data of Weight in Kg;
Height_pool = Male_data_89(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Male = [Var_Raw_All_Male var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Male = [Var_Mean_Random_Male mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Male = prctile(Var_random,My_Percentile);
Var_5th_Random_Male = [Var_5th_Random_Male Prctile_Male(1)]; % 5th percentile
Var_95th_Random_Male = [Var_95th_Random_Male Prctile_Male(3)]; % 95th percentile

% Age 90
Weight_pool = Male_data_90(:,2); % Raw data of Weight in Kg;
Height_pool = Male_data_90(:,1)/100; % Raw data of Height in m;
% Linear fitting of the hyperbolic model: Weight = a + b*Weight*Height
X_data = Height_pool; % Height (m)
Y_data = Weight_pool; % Weight (Kg)
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(Height_pool);
sWHI_raw = zeros(M,1);
for i = 1:M
    sWHI_raw(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_pool(i,1);
end
Var_Raw_All_Male = [Var_Raw_All_Male var(sWHI_raw)]; % the standard deviation of sWHI in the Raw data
% Randomly match the weight with the height in the Height pool for 1000
% times, while keeping the weight unchanged
Var_random = zeros(1000,1); % the variance of sWHI_random
for k = 1:1000
    Height_random = zeros(M,1);
    for i = 1:M
        No = round(M*rand());
        if No ==0 % Make sure that the randomly generated number is not zero. This is a technical correction in the program.
            No = 1;
        end
        Height_random(i,1) = Height_pool(No,1); % Keep the weight unchanged and randomly select a match from the Height pool.
    end
    % sWHI = a/Weight + b*Height
    sWHI_random = zeros(M,1);
    for i = 1:M
        sWHI_random(i,1) = Coefficient_a/Weight_pool(i,1) + Coefficient_b*Height_random(i,1);
    end
    Var_random(k) = var(sWHI_random);
end
Var_Mean_Random_Male = [Var_Mean_Random_Male mean(Var_random)]; % the mean values of the standard deviation of sWHI cross the 1000 random data sets 
Prctile_Male = prctile(Var_random,My_Percentile);
Var_5th_Random_Male = [Var_5th_Random_Male Prctile_Male(1)]; % 5th percentile
Var_95th_Random_Male = [Var_95th_Random_Male Prctile_Male(3)]; % 95th percentile

%% We show the results
figure;
subplot(1,2,1)
hold on;
title('Female')
xlabel('Age (yrs)');
ylabel('Variance of sWHI');
ylim([0 0.005]);
xlim([0 91]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

set(gca,'XTick',[0 10 20 30 40 50 60 70 80 90],'XTicklabel',{'0' '10' '20' '30' '40' '50' '60' '70' '80' '90'});

yyy = 0:0.0001:0.01;
xxx = 10+yyy*0;
plot(xxx,yyy,'-.','linewidth',1,'color','k')

XX_Fill_1 = [Age,Age(end:-1:1)];
YY_Fill_1 = [Var_5th_Random_Female,Var_95th_Random_Female(end:-1:1)]; % 5th ~ 95th percentile range
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,My_Colors_4_1(2,:));
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);

H1 = plot(Age,Var_Mean_Random_Female,'LineWidth',My_LineWidth,'Color',My_Colors_4_1(2,:)); % mean of linear correlation coefficient accross the 1000 random data sets
H2 = plot(Age,Var_Raw_All_Female,'LineWidth',My_LineWidth,'Color',My_Colors_4_1(1,:)); % linear correlation coefficient of the raw data sets

% Legend
Legend = legend([H1 H2],'Mean across the 1000 random data sets', 'The raw data');
set(Legend,'Box','off','FontSize',12,'FontName',My_FontName)

subplot(1,2,2)
hold on;
title('Male')
xlabel('Age (yrs)');
ylabel('Variance of sWHI');
ylim([0 0.005]);
xlim([0 91]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

set(gca,'XTick',[0 12 20 30 40 50 60 70 80 90],'XTicklabel',{'0' '12' '20' '30' '40' '50' '60' '70' '80' '90'});

yyy = 0:0.0001:0.01;
xxx = 12+yyy*0;
plot(xxx,yyy,'-.','linewidth',1,'color','k')

XX_Fill_1 = [Age,Age(end:-1:1)];
YY_Fill_1 = [Var_5th_Random_Male,Var_95th_Random_Male(end:-1:1)]; % 5th ~ 95th percentile range
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,My_Colors_4_1(2,:));
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);

H1 = plot(Age,Var_Mean_Random_Male,'LineWidth',My_LineWidth,'Color',My_Colors_4_1(2,:)); % mean of linear correlation coefficient accross the 1000 random data sets
H2 = plot(Age,Var_Raw_All_Male,'LineWidth',My_LineWidth,'Color',My_Colors_4_1(1,:)); % linear correlation coefficient of the raw data sets

% Legend
Legend = legend([H1 H2],'Mean across the 1000 random data sets', 'The raw data');
set(Legend,'Box','off','FontSize',12,'FontName',My_FontName)

toc;
