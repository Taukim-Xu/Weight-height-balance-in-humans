%% Source codes for Figure 4(a)
% Scatter plots of individual-level weight versus height data for 
% selected ages (2, 5, 10, 15, 20, 40, 60, and 80 years)
%
%%
c = 1;
%% Parameter information for drawing
My_mark_type = '.';
My_LineWidth = 1.5;
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
%
%% Load and segment the data by age and gender
Female_data = [];
Male_data = [];
%% Total_ALL
Female_data_temp = xlsread('./Raw_data/Total_ALL.xlsx','Female'); % No.	Age	Height(cm)	Weight(Kg)
Male_data_temp = xlsread('./Raw_data/Total_ALL.xlsx','Male'); % No. Age	Height(cm)	Weight(Kg)
Female_data = [Female_data;Female_data_temp(:,1:4)]; % No. Age Height(cm) Weight(Kg)
Male_data = [Male_data;Male_data_temp(:,1:4)]; % No. Age Height(cm) Weight(Kg)
%
%
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
%% We show the results
FF = figure;
% For Female
% Aged 2
subplot(2,9,1)
hold on;
title('Aged 2')
%xlabel('Weight (Kg)');
ylabel('Height (m)');
ylim([0.6 1.3]);
xlim([0 30]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

X_data = Female_data_2(:,2); % Weight (Kg)
Y_data = Female_data_2(:,1)/100; % Height (m)
Z_data = X_data.*Y_data; % Weight*Height (Kg.m)
Ln_Height = log(Y_data); % ln(Height) (m)
Ln_Weight = log(X_data); % ln(Weight) (Kg)
PP = polyfit(Z_data,X_data,1); %  Weight = a + b*Weight*Height
a = PP(2);
b = PP(1);
%
H1 = plot(X_data,Y_data,'o','linewidth',My_LineWidth_1,'Color',[0 0 0],'MarkerSize',5, ...
    'MarkerFaceColor',My_Colors_3(2,:));
X_temp = min(X_data):0.01:max(X_data); % Weight
Y_temp = (X_temp-a)/b./X_temp; % Height = (Weight-a)/b/Weight 
H1 = plot(X_temp,Y_temp,'linewidth',My_LineWidth,'Color',My_Colors_4(4,:)); 
XXX = 0:1:180;
Y_temp = 1/b+(XXX.*0); % Height = 1/b;
H2 = plot(XXX,Y_temp,'linewidth',My_LineWidth,'Color',My_Colors_4(3,:)); % Height = 1/b;
XXX = 0:0.1:2.2;
X_temp = a + XXX.*0; % Weight = a;
H3 = plot(X_temp,XXX,'linewidth',My_LineWidth,'Color',My_Colors_4(2,:)); % Weight = a;
%Legend = legend([H1 H2 H3],'Hyperbolic constraint','Height = 1/b','Weight = a','Location','Northeast');
%set(Legend,'Box','off')

% Aged 5
subplot(2,9,2)
hold on;
title('Aged 5')
%xlabel('Weight (Kg)');
%ylabel('Height (m)');
ylim([0.8 1.5]);
xlim([0 50]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

X_data = Female_data_5(:,2); % Weight (Kg)
Y_data = Female_data_5(:,1)/100; % Height (m)
Z_data = X_data.*Y_data; % Weight*Height (Kg.m)
Ln_Height = log(Y_data); % ln(Height) (m)
Ln_Weight = log(X_data); % ln(Weight) (Kg)
PP = polyfit(Z_data,X_data,1); %  Weight = a + b*Weight*Height
a = PP(2);
b = PP(1);
%
H1 = plot(X_data,Y_data,'o','linewidth',My_LineWidth_1,'Color',[0 0 0],'MarkerSize',5, ...
    'MarkerFaceColor',My_Colors_3(2,:));
X_temp = min(X_data):0.01:max(X_data); % Weight
Y_temp = (X_temp-a)/b./X_temp; % Height = (Weight-a)/b/Weight 
H1 = plot(X_temp,Y_temp,'linewidth',My_LineWidth,'Color',My_Colors_4(4,:)); 
XXX = 0:1:180;
Y_temp = 1/b+(XXX.*0); % Height = 1/b;
H2 = plot(XXX,Y_temp,'linewidth',My_LineWidth,'Color',My_Colors_4(3,:)); % Height = 1/b;
XXX = 0:0.1:2.2;
X_temp = a + XXX.*0; % Weight = a;
H3 = plot(X_temp,XXX,'linewidth',My_LineWidth,'Color',My_Colors_4(2,:)); % Weight = a;
%Legend = legend([H1 H2 H3],'Hyperbolic constraint','Height = 1/b','Weight = a','Location','Northeast');
%set(Legend,'Box','off')

% Aged 10
subplot(2,9,3)
hold on;
title('Aged 10')
%xlabel('Weight (Kg)');
%ylabel('Height (m)');
ylim([1 1.8]);
xlim([0 120]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

X_data = Female_data_10(:,2); % Weight (Kg)
Y_data = Female_data_10(:,1)/100; % Height (m)
Z_data = X_data.*Y_data; % Weight*Height (Kg.m)
Ln_Height = log(Y_data); % ln(Height) (m)
Ln_Weight = log(X_data); % ln(Weight) (Kg)
PP = polyfit(Z_data,X_data,1); %  Weight = a + b*Weight*Height
a = PP(2);
b = PP(1);
%
H1 = plot(X_data,Y_data,'o','linewidth',My_LineWidth_1,'Color',[0 0 0],'MarkerSize',5, ...
    'MarkerFaceColor',My_Colors_3(2,:));
X_temp = min(X_data):0.01:max(X_data); % Weight
Y_temp = (X_temp-a)/b./X_temp; % Height = (Weight-a)/b/Weight 
H1 = plot(X_temp,Y_temp,'linewidth',My_LineWidth,'Color',My_Colors_4(4,:)); 
XXX = 0:1:180;
Y_temp = 1/b+(XXX.*0); % Height = 1/b;
H2 = plot(XXX,Y_temp,'linewidth',My_LineWidth,'Color',My_Colors_4(3,:)); % Height = 1/b;
XXX = 0:0.1:2.2;
X_temp = a + XXX.*0; % Weight = a;
H3 = plot(X_temp,XXX,'linewidth',My_LineWidth,'Color',My_Colors_4(2,:)); % Weight = a;
%Legend = legend([H1 H2 H3],'Hyperbolic constraint','Height = 1/b','Weight = a','Location','Northeast');
%set(Legend,'Box','off')

% Aged 15
subplot(2,9,4)
hold on;
title('Aged 15')
%xlabel('Weight (Kg)');
%ylabel('Height (m)');
ylim([1 2.1]);
xlim([0 170]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

X_data = Female_data_15(:,2); % Weight (Kg)
Y_data = Female_data_15(:,1)/100; % Height (m)
Z_data = X_data.*Y_data; % Weight*Height (Kg.m)
Ln_Height = log(Y_data); % ln(Height) (m)
Ln_Weight = log(X_data); % ln(Weight) (Kg)
PP = polyfit(Z_data,X_data,1); %  Weight = a + b*Weight*Height
a = PP(2);
b = PP(1);
%
H1 = plot(X_data,Y_data,'o','linewidth',My_LineWidth_1,'Color',[0 0 0],'MarkerSize',5, ...
    'MarkerFaceColor',My_Colors_3(2,:));
X_temp = min(X_data):0.01:max(X_data); % Weight
Y_temp = (X_temp-a)/b./X_temp; % Height = (Weight-a)/b/Weight 
H1 = plot(X_temp,Y_temp,'linewidth',My_LineWidth,'Color',My_Colors_4(4,:)); 
XXX = 0:1:180;
Y_temp = 1/b+(XXX.*0); % Height = 1/b;
H2 = plot(XXX,Y_temp,'linewidth',My_LineWidth,'Color',My_Colors_4(3,:)); % Height = 1/b;
XXX = 0:0.1:2.2;
X_temp = a + XXX.*0; % Weight = a;
H3 = plot(X_temp,XXX,'linewidth',My_LineWidth,'Color',My_Colors_4(2,:)); % Weight = a;
%Legend = legend([H1 H2 H3],'Hyperbolic constraint','Height = 1/b','Weight = a','Location','Northeast');
%set(Legend,'Box','off')

% Aged 20
subplot(2,9,5)
hold on;
title('Aged 20')
%xlabel('Weight (Kg)');
%ylabel('Height (m)');
ylim([1 2.1]);
xlim([0 170]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

X_data = Female_data_20(:,2); % Weight (Kg)
Y_data = Female_data_20(:,1)/100; % Height (m)
Z_data = X_data.*Y_data; % Weight*Height (Kg.m)
Ln_Height = log(Y_data); % ln(Height) (m)
Ln_Weight = log(X_data); % ln(Weight) (Kg)
PP = polyfit(Z_data,X_data,1); %  Weight = a + b*Weight*Height
a = PP(2);
b = PP(1);
%
H1 = plot(X_data,Y_data,'o','linewidth',My_LineWidth_1,'Color',[0 0 0],'MarkerSize',5, ...
    'MarkerFaceColor',My_Colors_3(2,:));
X_temp = min(X_data):0.01:max(X_data); % Weight
Y_temp = (X_temp-a)/b./X_temp; % Height = (Weight-a)/b/Weight 
H1 = plot(X_temp,Y_temp,'linewidth',My_LineWidth,'Color',My_Colors_4(4,:)); 
XXX = 0:1:180;
Y_temp = 1/b+(XXX.*0); % Height = 1/b;
H2 = plot(XXX,Y_temp,'linewidth',My_LineWidth,'Color',My_Colors_4(3,:)); % Height = 1/b;
XXX = 0:0.1:2.2;
X_temp = a + XXX.*0; % Weight = a;
H3 = plot(X_temp,XXX,'linewidth',My_LineWidth,'Color',My_Colors_4(2,:)); % Weight = a;
%Legend = legend([H1 H2 H3],'Hyperbolic constraint','Height = 1/b','Weight = a','Location','Northeast');
%set(Legend,'Box','off')

% Aged 40
subplot(2,9,6)
hold on;
title('Aged 40')
%xlabel('Weight (Kg)');
%ylabel('Height (m)');
ylim([1 2.1]);
xlim([0 170]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

X_data = Female_data_40(:,2); % Weight (Kg)
Y_data = Female_data_40(:,1)/100; % Height (m)
Z_data = X_data.*Y_data; % Weight*Height (Kg.m)
Ln_Height = log(Y_data); % ln(Height) (m)
Ln_Weight = log(X_data); % ln(Weight) (Kg)
PP = polyfit(Z_data,X_data,1); %  Weight = a + b*Weight*Height
a = PP(2);
b = PP(1);
%
H1 = plot(X_data,Y_data,'o','linewidth',My_LineWidth_1,'Color',[0 0 0],'MarkerSize',5, ...
    'MarkerFaceColor',My_Colors_3(2,:));
X_temp = min(X_data):0.01:max(X_data); % Weight
Y_temp = (X_temp-a)/b./X_temp; % Height = (Weight-a)/b/Weight 
H1 = plot(X_temp,Y_temp,'linewidth',My_LineWidth,'Color',My_Colors_4(4,:)); 
XXX = 0:1:180;
Y_temp = 1/b+(XXX.*0); % Height = 1/b;
H2 = plot(XXX,Y_temp,'linewidth',My_LineWidth,'Color',My_Colors_4(3,:)); % Height = 1/b;
XXX = 0:0.1:2.2;
X_temp = a + XXX.*0; % Weight = a;
H3 = plot(X_temp,XXX,'linewidth',My_LineWidth,'Color',My_Colors_4(2,:)); % Weight = a;
%Legend = legend([H1 H2 H3],'Hyperbolic constraint','Height = 1/b','Weight = a','Location','Northeast');
%set(Legend,'Box','off')

% Aged 60
subplot(2,9,7)
hold on;
title('Aged 60')
%xlabel('Weight (Kg)');
%ylabel('Height (m)');
ylim([1 2.1]);
xlim([0 170]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

X_data = Female_data_60(:,2); % Weight (Kg)
Y_data = Female_data_60(:,1)/100; % Height (m)
Z_data = X_data.*Y_data; % Weight*Height (Kg.m)
Ln_Height = log(Y_data); % ln(Height) (m)
Ln_Weight = log(X_data); % ln(Weight) (Kg)
PP = polyfit(Z_data,X_data,1); %  Weight = a + b*Weight*Height
a = PP(2);
b = PP(1);
%
H1 = plot(X_data,Y_data,'o','linewidth',My_LineWidth_1,'Color',[0 0 0],'MarkerSize',5, ...
    'MarkerFaceColor',My_Colors_3(2,:));
X_temp = min(X_data):0.01:max(X_data); % Weight
Y_temp = (X_temp-a)/b./X_temp; % Height = (Weight-a)/b/Weight 
H1 = plot(X_temp,Y_temp,'linewidth',My_LineWidth,'Color',My_Colors_4(4,:)); 
XXX = 0:1:180;
Y_temp = 1/b+(XXX.*0); % Height = 1/b;
H2 = plot(XXX,Y_temp,'linewidth',My_LineWidth,'Color',My_Colors_4(3,:)); % Height = 1/b;
XXX = 0:0.1:2.2;
X_temp = a + XXX.*0; % Weight = a;
H3 = plot(X_temp,XXX,'linewidth',My_LineWidth,'Color',My_Colors_4(2,:)); % Weight = a;
%Legend = legend([H1 H2 H3],'Hyperbolic constraint','Height = 1/b','Weight = a','Location','Northeast');
%set(Legend,'Box','off')

% Aged 60
subplot(2,9,8)
hold on;
title('Aged 80')
%xlabel('Weight (Kg)');
%ylabel('Height (m)');
ylim([1 2.1]);
xlim([0 170]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

X_data = Female_data_80(:,2); % Weight (Kg)
Y_data = Female_data_80(:,1)/100; % Height (m)
Z_data = X_data.*Y_data; % Weight*Height (Kg.m)
Ln_Height = log(Y_data); % ln(Height) (m)
Ln_Weight = log(X_data); % ln(Weight) (Kg)
PP = polyfit(Z_data,X_data,1); %  Weight = a + b*Weight*Height
a = PP(2);
b = PP(1);
%
H1 = plot(X_data,Y_data,'o','linewidth',My_LineWidth_1,'Color',[0 0 0],'MarkerSize',5, ...
    'MarkerFaceColor',My_Colors_3(2,:));
X_temp = min(X_data):0.01:max(X_data); % Weight
Y_temp = (X_temp-a)/b./X_temp; % Height = (Weight-a)/b/Weight 
H1 = plot(X_temp,Y_temp,'linewidth',My_LineWidth,'Color',My_Colors_4(4,:)); 
XXX = 0:1:180;
Y_temp = 1/b+(XXX.*0); % Height = 1/b;
H2 = plot(XXX,Y_temp,'linewidth',My_LineWidth,'Color',My_Colors_4(3,:)); % Height = 1/b;
XXX = 0:0.1:2.2;
X_temp = a + XXX.*0; % Weight = a;
H3 = plot(X_temp,XXX,'linewidth',My_LineWidth,'Color',My_Colors_4(2,:)); % Weight = a;
%Legend = legend([H1 H2 H3],'Hyperbolic constraint','Height = 1/b','Weight = a','Location','Northeast');
%set(Legend,'Box','off')

% For Male
% Aged 2
subplot(2,9,10)
hold on;
%title('Aged 2')
xlabel('Weight (Kg)');
ylabel('Height (m)');
ylim([0.6 1.3]);
xlim([0 30]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

X_data = Male_data_2(:,2); % Weight (Kg)
Y_data = Male_data_2(:,1)/100; % Height (m)
Z_data = X_data.*Y_data; % Weight*Height (Kg.m)
Ln_Height = log(Y_data); % ln(Height) (m)
Ln_Weight = log(X_data); % ln(Weight) (Kg)
PP = polyfit(Z_data,X_data,1); %  Weight = a + b*Weight*Height
a = PP(2);
b = PP(1);
%
H1 = plot(X_data,Y_data,'o','linewidth',My_LineWidth_1,'Color',[0 0 0],'MarkerSize',5, ...
    'MarkerFaceColor',My_Colors_3(3,:));
X_temp = min(X_data):0.01:max(X_data); % Weight
Y_temp = (X_temp-a)/b./X_temp; % Height = (Weight-a)/b/Weight 
H1 = plot(X_temp,Y_temp,'linewidth',My_LineWidth,'Color',My_Colors_4(4,:)); 
XXX = 0:1:180;
Y_temp = 1/b+(XXX.*0); % Height = 1/b;
H2 = plot(XXX,Y_temp,'linewidth',My_LineWidth,'Color',My_Colors_4(3,:)); % Height = 1/b;
XXX = 0:0.1:2.2;
X_temp = a + XXX.*0; % Weight = a;
H3 = plot(X_temp,XXX,'linewidth',My_LineWidth,'Color',My_Colors_4(2,:)); % Weight = a;
%Legend = legend([H1 H2 H3],'Hyperbolic constraint','Height = 1/b','Weight = a','Location','Northeast');
%set(Legend,'Box','off')

% Aged 5
subplot(2,9,11)
hold on;
%title('Aged 5')
xlabel('Weight (Kg)');
%ylabel('Height (m)');
ylim([0.8 1.5]);
xlim([0 50]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

X_data = Male_data_5(:,2); % Weight (Kg)
Y_data = Male_data_5(:,1)/100; % Height (m)
Z_data = X_data.*Y_data; % Weight*Height (Kg.m)
Ln_Height = log(Y_data); % ln(Height) (m)
Ln_Weight = log(X_data); % ln(Weight) (Kg)
PP = polyfit(Z_data,X_data,1); %  Weight = a + b*Weight*Height
a = PP(2);
b = PP(1);
%
H1 = plot(X_data,Y_data,'o','linewidth',My_LineWidth_1,'Color',[0 0 0],'MarkerSize',5, ...
    'MarkerFaceColor',My_Colors_3(3,:));
X_temp = min(X_data):0.01:max(X_data); % Weight
Y_temp = (X_temp-a)/b./X_temp; % Height = (Weight-a)/b/Weight 
H1 = plot(X_temp,Y_temp,'linewidth',My_LineWidth,'Color',My_Colors_4(4,:)); 
XXX = 0:1:180;
Y_temp = 1/b+(XXX.*0); % Height = 1/b;
H2 = plot(XXX,Y_temp,'linewidth',My_LineWidth,'Color',My_Colors_4(3,:)); % Height = 1/b;
XXX = 0:0.1:2.2;
X_temp = a + XXX.*0; % Weight = a;
H3 = plot(X_temp,XXX,'linewidth',My_LineWidth,'Color',My_Colors_4(2,:)); % Weight = a;
%Legend = legend([H1 H2 H3],'Hyperbolic constraint','Height = 1/b','Weight = a','Location','Northeast');
%set(Legend,'Box','off')

% Aged 10
subplot(2,9,12)
hold on;
%title('Aged 10')
xlabel('Weight (Kg)');
%ylabel('Height (m)');
ylim([1 1.8]);
xlim([0 120]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

X_data = Male_data_10(:,2); % Weight (Kg)
Y_data = Male_data_10(:,1)/100; % Height (m)
Z_data = X_data.*Y_data; % Weight*Height (Kg.m)
Ln_Height = log(Y_data); % ln(Height) (m)
Ln_Weight = log(X_data); % ln(Weight) (Kg)
PP = polyfit(Z_data,X_data,1); %  Weight = a + b*Weight*Height
a = PP(2);
b = PP(1);
%
H1 = plot(X_data,Y_data,'o','linewidth',My_LineWidth_1,'Color',[0 0 0],'MarkerSize',5, ...
    'MarkerFaceColor',My_Colors_3(3,:));
X_temp = min(X_data):0.01:max(X_data); % Weight
Y_temp = (X_temp-a)/b./X_temp; % Height = (Weight-a)/b/Weight 
H1 = plot(X_temp,Y_temp,'linewidth',My_LineWidth,'Color',My_Colors_4(4,:)); 
XXX = 0:1:180;
Y_temp = 1/b+(XXX.*0); % Height = 1/b;
H2 = plot(XXX,Y_temp,'linewidth',My_LineWidth,'Color',My_Colors_4(3,:)); % Height = 1/b;
XXX = 0:0.1:2.2;
X_temp = a + XXX.*0; % Weight = a;
H3 = plot(X_temp,XXX,'linewidth',My_LineWidth,'Color',My_Colors_4(2,:)); % Weight = a;
%Legend = legend([H1 H2 H3],'Hyperbolic constraint','Height = 1/b','Weight = a','Location','Northeast');
%set(Legend,'Box','off')

% Aged 15
subplot(2,9,13)
hold on;
%title('Aged 15')
xlabel('Weight (Kg)');
%ylabel('Height (m)');
ylim([1.3 2.1]);
xlim([0 170]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

X_data = Male_data_15(:,2); % Weight (Kg)
Y_data = Male_data_15(:,1)/100; % Height (m)
Z_data = X_data.*Y_data; % Weight*Height (Kg.m)
Ln_Height = log(Y_data); % ln(Height) (m)
Ln_Weight = log(X_data); % ln(Weight) (Kg)
PP = polyfit(Z_data,X_data,1); %  Weight = a + b*Weight*Height
a = PP(2);
b = PP(1);
%
H1 = plot(X_data,Y_data,'o','linewidth',My_LineWidth_1,'Color',[0 0 0],'MarkerSize',5, ...
    'MarkerFaceColor',My_Colors_3(3,:));
X_temp = min(X_data):0.01:max(X_data); % Weight
Y_temp = (X_temp-a)/b./X_temp; % Height = (Weight-a)/b/Weight 
H1 = plot(X_temp,Y_temp,'linewidth',My_LineWidth,'Color',My_Colors_4(4,:)); 
XXX = 0:1:180;
Y_temp = 1/b+(XXX.*0); % Height = 1/b;
H2 = plot(XXX,Y_temp,'linewidth',My_LineWidth,'Color',My_Colors_4(3,:)); % Height = 1/b;
XXX = 0:0.1:2.2;
X_temp = a + XXX.*0; % Weight = a;
H3 = plot(X_temp,XXX,'linewidth',My_LineWidth,'Color',My_Colors_4(2,:)); % Weight = a;
%Legend = legend([H1 H2 H3],'Hyperbolic constraint','Height = 1/b','Weight = a','Location','Northeast');
%set(Legend,'Box','off')

% Aged 20
subplot(2,9,14)
hold on;
%title('Aged 20')
xlabel('Weight (Kg)');
%ylabel('Height (m)');
ylim([1.3 2.1]);
xlim([0 170]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

X_data = Male_data_20(:,2); % Weight (Kg)
Y_data = Male_data_20(:,1)/100; % Height (m)
Z_data = X_data.*Y_data; % Weight*Height (Kg.m)
Ln_Height = log(Y_data); % ln(Height) (m)
Ln_Weight = log(X_data); % ln(Weight) (Kg)
PP = polyfit(Z_data,X_data,1); %  Weight = a + b*Weight*Height
a = PP(2);
b = PP(1);
%
H1 = plot(X_data,Y_data,'o','linewidth',My_LineWidth_1,'Color',[0 0 0],'MarkerSize',5, ...
    'MarkerFaceColor',My_Colors_3(3,:));
X_temp = min(X_data):0.01:max(X_data); % Weight
Y_temp = (X_temp-a)/b./X_temp; % Height = (Weight-a)/b/Weight 
H1 = plot(X_temp,Y_temp,'linewidth',My_LineWidth,'Color',My_Colors_4(4,:)); 
XXX = 0:1:180;
Y_temp = 1/b+(XXX.*0); % Height = 1/b;
H2 = plot(XXX,Y_temp,'linewidth',My_LineWidth,'Color',My_Colors_4(3,:)); % Height = 1/b;
XXX = 0:0.1:2.2;
X_temp = a + XXX.*0; % Weight = a;
H3 = plot(X_temp,XXX,'linewidth',My_LineWidth,'Color',My_Colors_4(2,:)); % Weight = a;
%Legend = legend([H1 H2 H3],'Hyperbolic constraint','Height = 1/b','Weight = a','Location','Northeast');
%set(Legend,'Box','off')

% Aged 40
subplot(2,9,15)
hold on;
%title('Aged 40')
xlabel('Weight (Kg)');
%ylabel('Height (m)');
ylim([1.3 2.1]);
xlim([0 170]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

X_data = Male_data_40(:,2); % Weight (Kg)
Y_data = Male_data_40(:,1)/100; % Height (m)
Z_data = X_data.*Y_data; % Weight*Height (Kg.m)
Ln_Height = log(Y_data); % ln(Height) (m)
Ln_Weight = log(X_data); % ln(Weight) (Kg)
PP = polyfit(Z_data,X_data,1); %  Weight = a + b*Weight*Height
a = PP(2);
b = PP(1);
%
H1 = plot(X_data,Y_data,'o','linewidth',My_LineWidth_1,'Color',[0 0 0],'MarkerSize',5, ...
    'MarkerFaceColor',My_Colors_3(3,:));
X_temp = min(X_data):0.01:max(X_data); % Weight
Y_temp = (X_temp-a)/b./X_temp; % Height = (Weight-a)/b/Weight 
H1 = plot(X_temp,Y_temp,'linewidth',My_LineWidth,'Color',My_Colors_4(4,:)); 
XXX = 0:1:180;
Y_temp = 1/b+(XXX.*0); % Height = 1/b;
H2 = plot(XXX,Y_temp,'linewidth',My_LineWidth,'Color',My_Colors_4(3,:)); % Height = 1/b;
XXX = 0:0.1:2.2;
X_temp = a + XXX.*0; % Weight = a;
H3 = plot(X_temp,XXX,'linewidth',My_LineWidth,'Color',My_Colors_4(2,:)); % Weight = a;
%Legend = legend([H1 H2 H3],'Hyperbolic constraint','Height = 1/b','Weight = a','Location','Northeast');
%set(Legend,'Box','off')

% Aged 60
subplot(2,9,16)
hold on;
%title('Aged 60')
xlabel('Weight (Kg)');
%ylabel('Height (m)');
ylim([1.3 2.1]);
xlim([0 170]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

X_data = Male_data_60(:,2); % Weight (Kg)
Y_data = Male_data_60(:,1)/100; % Height (m)
Z_data = X_data.*Y_data; % Weight*Height (Kg.m)
Ln_Height = log(Y_data); % ln(Height) (m)
Ln_Weight = log(X_data); % ln(Weight) (Kg)
PP = polyfit(Z_data,X_data,1); %  Weight = a + b*Weight*Height
a = PP(2);
b = PP(1);
%
H1 = plot(X_data,Y_data,'o','linewidth',My_LineWidth_1,'Color',[0 0 0],'MarkerSize',5, ...
    'MarkerFaceColor',My_Colors_3(3,:));
X_temp = min(X_data):0.01:max(X_data); % Weight
Y_temp = (X_temp-a)/b./X_temp; % Height = (Weight-a)/b/Weight 
H1 = plot(X_temp,Y_temp,'linewidth',My_LineWidth,'Color',My_Colors_4(4,:)); 
XXX = 0:1:180;
Y_temp = 1/b+(XXX.*0); % Height = 1/b;
H2 = plot(XXX,Y_temp,'linewidth',My_LineWidth,'Color',My_Colors_4(3,:)); % Height = 1/b;
XXX = 0:0.1:2.2;
X_temp = a + XXX.*0; % Weight = a;
H3 = plot(X_temp,XXX,'linewidth',My_LineWidth,'Color',My_Colors_4(2,:)); % Weight = a;
%Legend = legend([H1 H2 H3],'Hyperbolic constraint','Height = 1/b','Weight = a','Location','Northeast');
%set(Legend,'Box','off')

% Aged 60
subplot(2,9,17)
hold on;
%title('Aged 80')
xlabel('Weight (Kg)');
%ylabel('Height (m)');
ylim([1.3 2.1]);
xlim([0 170]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

X_data = Male_data_80(:,2); % Weight (Kg)
Y_data = Male_data_80(:,1)/100; % Height (m)
Z_data = X_data.*Y_data; % Weight*Height (Kg.m)
Ln_Height = log(Y_data); % ln(Height) (m)
Ln_Weight = log(X_data); % ln(Weight) (Kg)
PP = polyfit(Z_data,X_data,1); %  Weight = a + b*Weight*Height
a = PP(2);
b = PP(1);
%
H1 = plot(X_data,Y_data,'o','linewidth',My_LineWidth_1,'Color',[0 0 0],'MarkerSize',5, ...
    'MarkerFaceColor',My_Colors_3(3,:));
X_temp = min(X_data):0.01:max(X_data); % Weight
Y_temp = (X_temp-a)/b./X_temp; % Height = (Weight-a)/b/Weight 
H1 = plot(X_temp,Y_temp,'linewidth',My_LineWidth,'Color',My_Colors_4(4,:)); 
XXX = 0:1:180;
Y_temp = 1/b+(XXX.*0); % Height = 1/b;
H2 = plot(XXX,Y_temp,'linewidth',My_LineWidth,'Color',My_Colors_4(3,:)); % Height = 1/b;
XXX = 0:0.1:2.2;
X_temp = a + XXX.*0; % Weight = a;
H3 = plot(X_temp,XXX,'linewidth',My_LineWidth,'Color',My_Colors_4(2,:)); % Weight = a;
%Legend = legend([H1 H2 H3],'Hyperbolic constraint','Height = 1/b','Weight = a','Location','southeastoutside');
%set(Legend,'Box','off')

% legend
subplot(2,9,18)
hold on;
%title('Aged 80')
xlabel('Weight (Kg)');
%ylabel('Height (m)');
ylim([0 1]);
xlim([0 1]);
ax = gca;
ax.YAxis.Visible = 'off';
ax.XAxis.Visible = 'off';
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

X_data = Male_data_80(:,2); % Weight (Kg)
Y_data = Male_data_80(:,1)/100; % Height (m)
Z_data = X_data.*Y_data; % Weight*Height (Kg.m)
Ln_Height = log(Y_data); % ln(Height) (m)
Ln_Weight = log(X_data); % ln(Weight) (Kg)
PP = polyfit(Z_data,X_data,1); %  Weight = a + b*Weight*Height
a = PP(2);
b = PP(1);
%
X_temp = -1:0.1:0; % Weight
Y_temp = -1:0.1:0; % Height = (Weight-a)/b/Weight 
H1 = plot(X_temp,Y_temp,'linewidth',My_LineWidth,'Color',My_Colors_4(4,:)); 
H2 = plot(X_temp,Y_temp,'linewidth',My_LineWidth,'Color',My_Colors_4(3,:)); % Height = 1/b;
H3 = plot(X_temp,Y_temp,'linewidth',My_LineWidth,'Color',My_Colors_4(2,:)); % Weight = a;
Legend = legend([H1 H2 H3],'Hyperbolic constraint','Height = 1/b','Weight = a','Location','southeastoutside');
set(Legend,'Box','off')
