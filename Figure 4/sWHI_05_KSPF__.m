%% Source codes for sWHI_05_KSPF__.mat
% Weight = a + b*Weight*Height^c
%
tic;
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
%% Calculate the distribution of sWHI
%% KSPF, Korea
sWHI_Female_05_KSPF_All__ = []; % For all ages
sWHI_Male_05_KSPF_All__ = []; % For all ages

Female_data = xlsread('./Raw data/05-KSPF/KSPF, Korea.xlsx','Female','B:D');
Male_data = xlsread('./Raw data/05-KSPF/KSPF, Korea.xlsx','Male','B:D');

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
Female_data_90 = [];

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
Male_data_90 = [];

% For Female
[M N] = size(Female_data); % Height (cm) Weight (Kg)
for i = 1:M
    if Female_data(i,1) == 11
        Female_data_11 = [Female_data_11;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 12
        Female_data_12 = [Female_data_12;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 13
        Female_data_13 = [Female_data_13;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 14
        Female_data_14 = [Female_data_14;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 15
        Female_data_15 = [Female_data_15;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 16
        Female_data_16 = [Female_data_16;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 17
        Female_data_17 = [Female_data_17;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 18
        Female_data_18 = [Female_data_18;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 19
        Female_data_19 = [Female_data_19;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 20
        Female_data_20 = [Female_data_20;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 21
        Female_data_21 = [Female_data_21;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 22
        Female_data_22 = [Female_data_22;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 23
        Female_data_23 = [Female_data_23;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 24
        Female_data_24 = [Female_data_24;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 25
        Female_data_25 = [Female_data_25;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 26
        Female_data_26 = [Female_data_26;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 27
        Female_data_27 = [Female_data_27;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 28
        Female_data_28 = [Female_data_28;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 29
        Female_data_29 = [Female_data_29;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 30
        Female_data_30 = [Female_data_30;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 31
        Female_data_31 = [Female_data_31;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 32
        Female_data_32 = [Female_data_32;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 33
        Female_data_33 = [Female_data_33;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 34
        Female_data_34 = [Female_data_34;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 35
        Female_data_35 = [Female_data_35;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 36
        Female_data_36 = [Female_data_36;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 37
        Female_data_37 = [Female_data_37;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 38
        Female_data_38 = [Female_data_38;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 39
        Female_data_39 = [Female_data_39;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 40
        Female_data_40 = [Female_data_40;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 41
        Female_data_41 = [Female_data_41;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 42
        Female_data_42 = [Female_data_42;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 43
        Female_data_43 = [Female_data_43;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 44
        Female_data_44 = [Female_data_44;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 45
        Female_data_45 = [Female_data_45;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 46
        Female_data_46 = [Female_data_46;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 47
        Female_data_47 = [Female_data_47;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 48
        Female_data_48 = [Female_data_48;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 49
        Female_data_49 = [Female_data_49;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 50
        Female_data_50 = [Female_data_50;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 51
        Female_data_51 = [Female_data_51;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 52
        Female_data_52 = [Female_data_52;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 53
        Female_data_53 = [Female_data_53;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 54
        Female_data_54 = [Female_data_54;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 55
        Female_data_55 = [Female_data_55;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 56
        Female_data_56 = [Female_data_56;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 57
        Female_data_57 = [Female_data_57;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 58
        Female_data_58 = [Female_data_58;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 59
        Female_data_59 = [Female_data_59;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 60
        Female_data_60 = [Female_data_60;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 61
        Female_data_61 = [Female_data_61;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 62
        Female_data_62 = [Female_data_62;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 63
        Female_data_63 = [Female_data_63;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 64
        Female_data_64 = [Female_data_64;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 65
        Female_data_65 = [Female_data_65;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 66
        Female_data_66 = [Female_data_66;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 67
        Female_data_67 = [Female_data_67;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 68
        Female_data_68 = [Female_data_68;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 69
        Female_data_69 = [Female_data_69;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 70
        Female_data_70 = [Female_data_70;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 71
        Female_data_71 = [Female_data_71;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 72
        Female_data_72 = [Female_data_72;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 73
        Female_data_73 = [Female_data_73;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 74
        Female_data_74 = [Female_data_74;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 75
        Female_data_75 = [Female_data_75;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 76
        Female_data_76 = [Female_data_76;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 77
        Female_data_77 = [Female_data_77;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 78
        Female_data_78 = [Female_data_78;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 79
        Female_data_79 = [Female_data_79;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 80
        Female_data_80 = [Female_data_80;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 81
        Female_data_81 = [Female_data_81;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 82
        Female_data_82 = [Female_data_82;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 83
        Female_data_83 = [Female_data_83;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 84
        Female_data_84 = [Female_data_84;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 85
        Female_data_85 = [Female_data_85;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 86
        Female_data_86 = [Female_data_86;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 87
        Female_data_87 = [Female_data_87;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 88
        Female_data_88 = [Female_data_88;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 89
        Female_data_89 = [Female_data_89;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 90
        Female_data_90 = [Female_data_90;Female_data(i,2) Female_data(i,3)];
    end
end
% For Male
[M N] = size(Male_data); % Height (cm) Weight (Kg)
for i = 1:M
    if Male_data(i,1) == 11
        Male_data_11 = [Male_data_11;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 12
        Male_data_12 = [Male_data_12;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 13
        Male_data_13 = [Male_data_13;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 14
        Male_data_14 = [Male_data_14;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 15
        Male_data_15 = [Male_data_15;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 16
        Male_data_16 = [Male_data_16;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 17
        Male_data_17 = [Male_data_17;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 18
        Male_data_18 = [Male_data_18;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 19
        Male_data_19 = [Male_data_19;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 20
        Male_data_20 = [Male_data_20;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 21
        Male_data_21 = [Male_data_21;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 22
        Male_data_22 = [Male_data_22;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 23
        Male_data_23 = [Male_data_23;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 24
        Male_data_24 = [Male_data_24;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 25
        Male_data_25 = [Male_data_25;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 26
        Male_data_26 = [Male_data_26;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 27
        Male_data_27 = [Male_data_27;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 28
        Male_data_28 = [Male_data_28;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 29
        Male_data_29 = [Male_data_29;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 30
        Male_data_30 = [Male_data_30;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 31
        Male_data_31 = [Male_data_31;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 32
        Male_data_32 = [Male_data_32;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 33
        Male_data_33 = [Male_data_33;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 34
        Male_data_34 = [Male_data_34;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 35
        Male_data_35 = [Male_data_35;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 36
        Male_data_36 = [Male_data_36;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 37
        Male_data_37 = [Male_data_37;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 38
        Male_data_38 = [Male_data_38;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 39
        Male_data_39 = [Male_data_39;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 40
        Male_data_40 = [Male_data_40;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 41
        Male_data_41 = [Male_data_41;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 42
        Male_data_42 = [Male_data_42;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 43
        Male_data_43 = [Male_data_43;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 44
        Male_data_44 = [Male_data_44;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 45
        Male_data_45 = [Male_data_45;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 46
        Male_data_46 = [Male_data_46;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 47
        Male_data_47 = [Male_data_47;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 48
        Male_data_48 = [Male_data_48;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 49
        Male_data_49 = [Male_data_49;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 50
        Male_data_50 = [Male_data_50;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 51
        Male_data_51 = [Male_data_51;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 52
        Male_data_52 = [Male_data_52;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 53
        Male_data_53 = [Male_data_53;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 54
        Male_data_54 = [Male_data_54;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 55
        Male_data_55 = [Male_data_55;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 56
        Male_data_56 = [Male_data_56;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 57
        Male_data_57 = [Male_data_57;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 58
        Male_data_58 = [Male_data_58;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 59
        Male_data_59 = [Male_data_59;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 60
        Male_data_60 = [Male_data_60;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 61
        Male_data_61 = [Male_data_61;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 62
        Male_data_62 = [Male_data_62;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 63
        Male_data_63 = [Male_data_63;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 64
        Male_data_64 = [Male_data_64;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 65
        Male_data_65 = [Male_data_65;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 66
        Male_data_66 = [Male_data_66;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 67
        Male_data_67 = [Male_data_67;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 68
        Male_data_68 = [Male_data_68;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 69
        Male_data_69 = [Male_data_69;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 70
        Male_data_70 = [Male_data_70;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 71
        Male_data_71 = [Male_data_71;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 72
        Male_data_72 = [Male_data_72;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 73
        Male_data_73 = [Male_data_73;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 74
        Male_data_74 = [Male_data_74;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 75
        Male_data_75 = [Male_data_75;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 76
        Male_data_76 = [Male_data_76;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 77
        Male_data_77 = [Male_data_77;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 78
        Male_data_78 = [Male_data_78;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 79
        Male_data_79 = [Male_data_79;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 80
        Male_data_80 = [Male_data_80;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 81
        Male_data_81 = [Male_data_81;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 82
        Male_data_82 = [Male_data_82;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 83
        Male_data_83 = [Male_data_83;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 84
        Male_data_84 = [Male_data_84;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 85
        Male_data_85 = [Male_data_85;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 86
        Male_data_86 = [Male_data_86;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 87
        Male_data_87 = [Male_data_87;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 88
        Male_data_88 = [Male_data_88;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 89
        Male_data_89 = [Male_data_89;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 90
        Male_data_90 = [Male_data_90;Male_data(i,2) Male_data(i,3)];
    end
end

% we Calculate the sWHI distribution when c = 1; in a/Weight+b*Height^c
% For Female
% Age = 11;
X_Temp = Female_data_11(:,1)/100; % Height (m)
Y_Temp = Female_data_11(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Female_05_KSPF_All__ = [sWHI_Female_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 12;
X_Temp = Female_data_12(:,1)/100; % Height (m)
Y_Temp = Female_data_12(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Female_05_KSPF_All__ = [sWHI_Female_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 13;
X_Temp = Female_data_13(:,1)/100; % Height (m)
Y_Temp = Female_data_13(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Female_05_KSPF_All__ = [sWHI_Female_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 14;
X_Temp = Female_data_14(:,1)/100; % Height (m)
Y_Temp = Female_data_14(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Female_05_KSPF_All__ = [sWHI_Female_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 15;
X_Temp = Female_data_15(:,1)/100; % Height (m)
Y_Temp = Female_data_15(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Female_05_KSPF_All__ = [sWHI_Female_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 16;
X_Temp = Female_data_16(:,1)/100; % Height (m)
Y_Temp = Female_data_16(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Female_05_KSPF_All__ = [sWHI_Female_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 17;
X_Temp = Female_data_17(:,1)/100; % Height (m)
Y_Temp = Female_data_17(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Female_05_KSPF_All__ = [sWHI_Female_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 18;
X_Temp = Female_data_18(:,1)/100; % Height (m)
Y_Temp = Female_data_18(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Female_05_KSPF_All__ = [sWHI_Female_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 19;
X_Temp = Female_data_19(:,1)/100; % Height (m)
Y_Temp = Female_data_19(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Female_05_KSPF_All__ = [sWHI_Female_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 20;
X_Temp = Female_data_20(:,1)/100; % Height (m)
Y_Temp = Female_data_20(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Female_05_KSPF_All__ = [sWHI_Female_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 21;
X_Temp = Female_data_21(:,1)/100; % Height (m)
Y_Temp = Female_data_21(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Female_05_KSPF_All__ = [sWHI_Female_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 22;
X_Temp = Female_data_22(:,1)/100; % Height (m)
Y_Temp = Female_data_22(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Female_05_KSPF_All__ = [sWHI_Female_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 23;
X_Temp = Female_data_23(:,1)/100; % Height (m)
Y_Temp = Female_data_23(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Female_05_KSPF_All__ = [sWHI_Female_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 24;
X_Temp = Female_data_24(:,1)/100; % Height (m)
Y_Temp = Female_data_24(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Female_05_KSPF_All__ = [sWHI_Female_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 25;
X_Temp = Female_data_25(:,1)/100; % Height (m)
Y_Temp = Female_data_25(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Female_05_KSPF_All__ = [sWHI_Female_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 26;
X_Temp = Female_data_26(:,1)/100; % Height (m)
Y_Temp = Female_data_26(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Female_05_KSPF_All__ = [sWHI_Female_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 27;
X_Temp = Female_data_27(:,1)/100; % Height (m)
Y_Temp = Female_data_27(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Female_05_KSPF_All__ = [sWHI_Female_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 28;
X_Temp = Female_data_28(:,1)/100; % Height (m)
Y_Temp = Female_data_28(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Female_05_KSPF_All__ = [sWHI_Female_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 29;
X_Temp = Female_data_29(:,1)/100; % Height (m)
Y_Temp = Female_data_29(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Female_05_KSPF_All__ = [sWHI_Female_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 30;
X_Temp = Female_data_30(:,1)/100; % Height (m)
Y_Temp = Female_data_30(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Female_05_KSPF_All__ = [sWHI_Female_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 31;
X_Temp = Female_data_31(:,1)/100; % Height (m)
Y_Temp = Female_data_31(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Female_05_KSPF_All__ = [sWHI_Female_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 32;
X_Temp = Female_data_32(:,1)/100; % Height (m)
Y_Temp = Female_data_32(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Female_05_KSPF_All__ = [sWHI_Female_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 33;
X_Temp = Female_data_33(:,1)/100; % Height (m)
Y_Temp = Female_data_33(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Female_05_KSPF_All__ = [sWHI_Female_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 34;
X_Temp = Female_data_34(:,1)/100; % Height (m)
Y_Temp = Female_data_34(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Female_05_KSPF_All__ = [sWHI_Female_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 35;
X_Temp = Female_data_35(:,1)/100; % Height (m)
Y_Temp = Female_data_35(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Female_05_KSPF_All__ = [sWHI_Female_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 36;
X_Temp = Female_data_36(:,1)/100; % Height (m)
Y_Temp = Female_data_36(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Female_05_KSPF_All__ = [sWHI_Female_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 37;
X_Temp = Female_data_37(:,1)/100; % Height (m)
Y_Temp = Female_data_37(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Female_05_KSPF_All__ = [sWHI_Female_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 38;
X_Temp = Female_data_38(:,1)/100; % Height (m)
Y_Temp = Female_data_38(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Female_05_KSPF_All__ = [sWHI_Female_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 39;
X_Temp = Female_data_39(:,1)/100; % Height (m)
Y_Temp = Female_data_39(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Female_05_KSPF_All__ = [sWHI_Female_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 40;
X_Temp = Female_data_40(:,1)/100; % Height (m)
Y_Temp = Female_data_40(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Female_05_KSPF_All__ = [sWHI_Female_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 41;
X_Temp = Female_data_41(:,1)/100; % Height (m)
Y_Temp = Female_data_41(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Female_05_KSPF_All__ = [sWHI_Female_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 42;
X_Temp = Female_data_42(:,1)/100; % Height (m)
Y_Temp = Female_data_42(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Female_05_KSPF_All__ = [sWHI_Female_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 43;
X_Temp = Female_data_43(:,1)/100; % Height (m)
Y_Temp = Female_data_43(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Female_05_KSPF_All__ = [sWHI_Female_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 44;
X_Temp = Female_data_44(:,1)/100; % Height (m)
Y_Temp = Female_data_44(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Female_05_KSPF_All__ = [sWHI_Female_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 45;
X_Temp = Female_data_45(:,1)/100; % Height (m)
Y_Temp = Female_data_45(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Female_05_KSPF_All__ = [sWHI_Female_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 46;
X_Temp = Female_data_46(:,1)/100; % Height (m)
Y_Temp = Female_data_46(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Female_05_KSPF_All__ = [sWHI_Female_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 47;
X_Temp = Female_data_47(:,1)/100; % Height (m)
Y_Temp = Female_data_47(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Female_05_KSPF_All__ = [sWHI_Female_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 48;
X_Temp = Female_data_48(:,1)/100; % Height (m)
Y_Temp = Female_data_48(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Female_05_KSPF_All__ = [sWHI_Female_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 49;
X_Temp = Female_data_49(:,1)/100; % Height (m)
Y_Temp = Female_data_49(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Female_05_KSPF_All__ = [sWHI_Female_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 50;
X_Temp = Female_data_50(:,1)/100; % Height (m)
Y_Temp = Female_data_50(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Female_05_KSPF_All__ = [sWHI_Female_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 51;
X_Temp = Female_data_51(:,1)/100; % Height (m)
Y_Temp = Female_data_51(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Female_05_KSPF_All__ = [sWHI_Female_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 52;
X_Temp = Female_data_52(:,1)/100; % Height (m)
Y_Temp = Female_data_52(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Female_05_KSPF_All__ = [sWHI_Female_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 53;
X_Temp = Female_data_53(:,1)/100; % Height (m)
Y_Temp = Female_data_53(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Female_05_KSPF_All__ = [sWHI_Female_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 54;
X_Temp = Female_data_54(:,1)/100; % Height (m)
Y_Temp = Female_data_54(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Female_05_KSPF_All__ = [sWHI_Female_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 55;
X_Temp = Female_data_55(:,1)/100; % Height (m)
Y_Temp = Female_data_55(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Female_05_KSPF_All__ = [sWHI_Female_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 56;
X_Temp = Female_data_56(:,1)/100; % Height (m)
Y_Temp = Female_data_56(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Female_05_KSPF_All__ = [sWHI_Female_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 57;
X_Temp = Female_data_57(:,1)/100; % Height (m)
Y_Temp = Female_data_57(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Female_05_KSPF_All__ = [sWHI_Female_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 58;
X_Temp = Female_data_58(:,1)/100; % Height (m)
Y_Temp = Female_data_58(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Female_05_KSPF_All__ = [sWHI_Female_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 59;
X_Temp = Female_data_59(:,1)/100; % Height (m)
Y_Temp = Female_data_59(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Female_05_KSPF_All__ = [sWHI_Female_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 60;
X_Temp = Female_data_60(:,1)/100; % Height (m)
Y_Temp = Female_data_60(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Female_05_KSPF_All__ = [sWHI_Female_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 61;
X_Temp = Female_data_61(:,1)/100; % Height (m)
Y_Temp = Female_data_61(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Female_05_KSPF_All__ = [sWHI_Female_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 62;
X_Temp = Female_data_62(:,1)/100; % Height (m)
Y_Temp = Female_data_62(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Female_05_KSPF_All__ = [sWHI_Female_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 63;
X_Temp = Female_data_63(:,1)/100; % Height (m)
Y_Temp = Female_data_63(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Female_05_KSPF_All__ = [sWHI_Female_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 64;
X_Temp = Female_data_64(:,1)/100; % Height (m)
Y_Temp = Female_data_64(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Female_05_KSPF_All__ = [sWHI_Female_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 65;
X_Temp = Female_data_65(:,1)/100; % Height (m)
Y_Temp = Female_data_65(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Female_05_KSPF_All__ = [sWHI_Female_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 66;
X_Temp = Female_data_66(:,1)/100; % Height (m)
Y_Temp = Female_data_66(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Female_05_KSPF_All__ = [sWHI_Female_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 67;
X_Temp = Female_data_67(:,1)/100; % Height (m)
Y_Temp = Female_data_67(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Female_05_KSPF_All__ = [sWHI_Female_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 68;
X_Temp = Female_data_68(:,1)/100; % Height (m)
Y_Temp = Female_data_68(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Female_05_KSPF_All__ = [sWHI_Female_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 69;
X_Temp = Female_data_69(:,1)/100; % Height (m)
Y_Temp = Female_data_69(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Female_05_KSPF_All__ = [sWHI_Female_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 70;
X_Temp = Female_data_70(:,1)/100; % Height (m)
Y_Temp = Female_data_70(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Female_05_KSPF_All__ = [sWHI_Female_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 71;
X_Temp = Female_data_71(:,1)/100; % Height (m)
Y_Temp = Female_data_71(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Female_05_KSPF_All__ = [sWHI_Female_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 72;
X_Temp = Female_data_72(:,1)/100; % Height (m)
Y_Temp = Female_data_72(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Female_05_KSPF_All__ = [sWHI_Female_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 73;
X_Temp = Female_data_73(:,1)/100; % Height (m)
Y_Temp = Female_data_73(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Female_05_KSPF_All__ = [sWHI_Female_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 74;
X_Temp = Female_data_74(:,1)/100; % Height (m)
Y_Temp = Female_data_74(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Female_05_KSPF_All__ = [sWHI_Female_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 75;
X_Temp = Female_data_75(:,1)/100; % Height (m)
Y_Temp = Female_data_75(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Female_05_KSPF_All__ = [sWHI_Female_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 76;
X_Temp = Female_data_76(:,1)/100; % Height (m)
Y_Temp = Female_data_76(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Female_05_KSPF_All__ = [sWHI_Female_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 77;
X_Temp = Female_data_77(:,1)/100; % Height (m)
Y_Temp = Female_data_77(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Female_05_KSPF_All__ = [sWHI_Female_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 78;
X_Temp = Female_data_78(:,1)/100; % Height (m)
Y_Temp = Female_data_78(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Female_05_KSPF_All__ = [sWHI_Female_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 79;
X_Temp = Female_data_79(:,1)/100; % Height (m)
Y_Temp = Female_data_79(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Female_05_KSPF_All__ = [sWHI_Female_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 80;
X_Temp = Female_data_80(:,1)/100; % Height (m)
Y_Temp = Female_data_80(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Female_05_KSPF_All__ = [sWHI_Female_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 81;
X_Temp = Female_data_81(:,1)/100; % Height (m)
Y_Temp = Female_data_81(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Female_05_KSPF_All__ = [sWHI_Female_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 82;
X_Temp = Female_data_82(:,1)/100; % Height (m)
Y_Temp = Female_data_82(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Female_05_KSPF_All__ = [sWHI_Female_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 83;
X_Temp = Female_data_83(:,1)/100; % Height (m)
Y_Temp = Female_data_83(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Female_05_KSPF_All__ = [sWHI_Female_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 84;
X_Temp = Female_data_84(:,1)/100; % Height (m)
Y_Temp = Female_data_84(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Female_05_KSPF_All__ = [sWHI_Female_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 85;
X_Temp = Female_data_85(:,1)/100; % Height (m)
Y_Temp = Female_data_85(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Female_05_KSPF_All__ = [sWHI_Female_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 86;
X_Temp = Female_data_86(:,1)/100; % Height (m)
Y_Temp = Female_data_86(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Female_05_KSPF_All__ = [sWHI_Female_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 87;
X_Temp = Female_data_87(:,1)/100; % Height (m)
Y_Temp = Female_data_87(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Female_05_KSPF_All__ = [sWHI_Female_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 88;
X_Temp = Female_data_88(:,1)/100; % Height (m)
Y_Temp = Female_data_88(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Female_05_KSPF_All__ = [sWHI_Female_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 89;
X_Temp = Female_data_89(:,1)/100; % Height (m)
Y_Temp = Female_data_89(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Female_05_KSPF_All__ = [sWHI_Female_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 90;
X_Temp = Female_data_90(:,1)/100; % Height (m)
Y_Temp = Female_data_90(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Female_05_KSPF_All__ = [sWHI_Female_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end

% For Male
% Age = 11;
X_Temp = Male_data_11(:,1)/100; % Height (m)
Y_Temp = Male_data_11(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Male_05_KSPF_All__ = [sWHI_Male_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 12;
X_Temp = Male_data_12(:,1)/100; % Height (m)
Y_Temp = Male_data_12(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Male_05_KSPF_All__ = [sWHI_Male_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 13;
X_Temp = Male_data_13(:,1)/100; % Height (m)
Y_Temp = Male_data_13(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Male_05_KSPF_All__ = [sWHI_Male_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 14;
X_Temp = Male_data_14(:,1)/100; % Height (m)
Y_Temp = Male_data_14(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Male_05_KSPF_All__ = [sWHI_Male_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 15;
X_Temp = Male_data_15(:,1)/100; % Height (m)
Y_Temp = Male_data_15(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Male_05_KSPF_All__ = [sWHI_Male_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 16;
X_Temp = Male_data_16(:,1)/100; % Height (m)
Y_Temp = Male_data_16(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Male_05_KSPF_All__ = [sWHI_Male_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 17;
X_Temp = Male_data_17(:,1)/100; % Height (m)
Y_Temp = Male_data_17(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Male_05_KSPF_All__ = [sWHI_Male_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 18;
X_Temp = Male_data_18(:,1)/100; % Height (m)
Y_Temp = Male_data_18(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Male_05_KSPF_All__ = [sWHI_Male_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 19;
X_Temp = Male_data_19(:,1)/100; % Height (m)
Y_Temp = Male_data_19(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Male_05_KSPF_All__ = [sWHI_Male_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 20;
X_Temp = Male_data_20(:,1)/100; % Height (m)
Y_Temp = Male_data_20(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Male_05_KSPF_All__ = [sWHI_Male_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 21;
X_Temp = Male_data_21(:,1)/100; % Height (m)
Y_Temp = Male_data_21(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Male_05_KSPF_All__ = [sWHI_Male_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 22;
X_Temp = Male_data_22(:,1)/100; % Height (m)
Y_Temp = Male_data_22(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Male_05_KSPF_All__ = [sWHI_Male_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 23;
X_Temp = Male_data_23(:,1)/100; % Height (m)
Y_Temp = Male_data_23(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Male_05_KSPF_All__ = [sWHI_Male_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 24;
X_Temp = Male_data_24(:,1)/100; % Height (m)
Y_Temp = Male_data_24(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Male_05_KSPF_All__ = [sWHI_Male_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 25;
X_Temp = Male_data_25(:,1)/100; % Height (m)
Y_Temp = Male_data_25(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Male_05_KSPF_All__ = [sWHI_Male_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 26;
X_Temp = Male_data_26(:,1)/100; % Height (m)
Y_Temp = Male_data_26(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Male_05_KSPF_All__ = [sWHI_Male_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 27;
X_Temp = Male_data_27(:,1)/100; % Height (m)
Y_Temp = Male_data_27(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Male_05_KSPF_All__ = [sWHI_Male_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 28;
X_Temp = Male_data_28(:,1)/100; % Height (m)
Y_Temp = Male_data_28(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Male_05_KSPF_All__ = [sWHI_Male_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 29;
X_Temp = Male_data_29(:,1)/100; % Height (m)
Y_Temp = Male_data_29(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Male_05_KSPF_All__ = [sWHI_Male_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 30;
X_Temp = Male_data_30(:,1)/100; % Height (m)
Y_Temp = Male_data_30(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Male_05_KSPF_All__ = [sWHI_Male_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 31;
X_Temp = Male_data_31(:,1)/100; % Height (m)
Y_Temp = Male_data_31(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Male_05_KSPF_All__ = [sWHI_Male_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 32;
X_Temp = Male_data_32(:,1)/100; % Height (m)
Y_Temp = Male_data_32(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Male_05_KSPF_All__ = [sWHI_Male_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 33;
X_Temp = Male_data_33(:,1)/100; % Height (m)
Y_Temp = Male_data_33(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Male_05_KSPF_All__ = [sWHI_Male_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 34;
X_Temp = Male_data_34(:,1)/100; % Height (m)
Y_Temp = Male_data_34(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Male_05_KSPF_All__ = [sWHI_Male_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 35;
X_Temp = Male_data_35(:,1)/100; % Height (m)
Y_Temp = Male_data_35(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Male_05_KSPF_All__ = [sWHI_Male_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 36;
X_Temp = Male_data_36(:,1)/100; % Height (m)
Y_Temp = Male_data_36(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Male_05_KSPF_All__ = [sWHI_Male_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 37;
X_Temp = Male_data_37(:,1)/100; % Height (m)
Y_Temp = Male_data_37(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Male_05_KSPF_All__ = [sWHI_Male_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 38;
X_Temp = Male_data_38(:,1)/100; % Height (m)
Y_Temp = Male_data_38(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Male_05_KSPF_All__ = [sWHI_Male_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 39;
X_Temp = Male_data_39(:,1)/100; % Height (m)
Y_Temp = Male_data_39(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Male_05_KSPF_All__ = [sWHI_Male_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 40;
X_Temp = Male_data_40(:,1)/100; % Height (m)
Y_Temp = Male_data_40(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Male_05_KSPF_All__ = [sWHI_Male_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 41;
X_Temp = Male_data_41(:,1)/100; % Height (m)
Y_Temp = Male_data_41(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Male_05_KSPF_All__ = [sWHI_Male_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 42;
X_Temp = Male_data_42(:,1)/100; % Height (m)
Y_Temp = Male_data_42(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Male_05_KSPF_All__ = [sWHI_Male_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 43;
X_Temp = Male_data_43(:,1)/100; % Height (m)
Y_Temp = Male_data_43(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Male_05_KSPF_All__ = [sWHI_Male_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 44;
X_Temp = Male_data_44(:,1)/100; % Height (m)
Y_Temp = Male_data_44(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Male_05_KSPF_All__ = [sWHI_Male_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 45;
X_Temp = Male_data_45(:,1)/100; % Height (m)
Y_Temp = Male_data_45(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Male_05_KSPF_All__ = [sWHI_Male_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 46;
X_Temp = Male_data_46(:,1)/100; % Height (m)
Y_Temp = Male_data_46(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Male_05_KSPF_All__ = [sWHI_Male_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 47;
X_Temp = Male_data_47(:,1)/100; % Height (m)
Y_Temp = Male_data_47(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Male_05_KSPF_All__ = [sWHI_Male_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 48;
X_Temp = Male_data_48(:,1)/100; % Height (m)
Y_Temp = Male_data_48(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Male_05_KSPF_All__ = [sWHI_Male_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 49;
X_Temp = Male_data_49(:,1)/100; % Height (m)
Y_Temp = Male_data_49(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Male_05_KSPF_All__ = [sWHI_Male_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 50;
X_Temp = Male_data_50(:,1)/100; % Height (m)
Y_Temp = Male_data_50(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Male_05_KSPF_All__ = [sWHI_Male_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 51;
X_Temp = Male_data_51(:,1)/100; % Height (m)
Y_Temp = Male_data_51(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Male_05_KSPF_All__ = [sWHI_Male_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 52;
X_Temp = Male_data_52(:,1)/100; % Height (m)
Y_Temp = Male_data_52(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Male_05_KSPF_All__ = [sWHI_Male_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 53;
X_Temp = Male_data_53(:,1)/100; % Height (m)
Y_Temp = Male_data_53(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Male_05_KSPF_All__ = [sWHI_Male_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 54;
X_Temp = Male_data_54(:,1)/100; % Height (m)
Y_Temp = Male_data_54(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Male_05_KSPF_All__ = [sWHI_Male_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 55;
X_Temp = Male_data_55(:,1)/100; % Height (m)
Y_Temp = Male_data_55(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Male_05_KSPF_All__ = [sWHI_Male_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 56;
X_Temp = Male_data_56(:,1)/100; % Height (m)
Y_Temp = Male_data_56(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Male_05_KSPF_All__ = [sWHI_Male_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 57;
X_Temp = Male_data_57(:,1)/100; % Height (m)
Y_Temp = Male_data_57(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Male_05_KSPF_All__ = [sWHI_Male_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 58;
X_Temp = Male_data_58(:,1)/100; % Height (m)
Y_Temp = Male_data_58(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Male_05_KSPF_All__ = [sWHI_Male_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 59;
X_Temp = Male_data_59(:,1)/100; % Height (m)
Y_Temp = Male_data_59(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Male_05_KSPF_All__ = [sWHI_Male_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 60;
X_Temp = Male_data_60(:,1)/100; % Height (m)
Y_Temp = Male_data_60(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Male_05_KSPF_All__ = [sWHI_Male_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 61;
X_Temp = Male_data_61(:,1)/100; % Height (m)
Y_Temp = Male_data_61(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Male_05_KSPF_All__ = [sWHI_Male_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 62;
X_Temp = Male_data_62(:,1)/100; % Height (m)
Y_Temp = Male_data_62(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Male_05_KSPF_All__ = [sWHI_Male_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 63;
X_Temp = Male_data_63(:,1)/100; % Height (m)
Y_Temp = Male_data_63(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Male_05_KSPF_All__ = [sWHI_Male_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 64;
X_Temp = Male_data_64(:,1)/100; % Height (m)
Y_Temp = Male_data_64(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Male_05_KSPF_All__ = [sWHI_Male_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 65;
X_Temp = Male_data_65(:,1)/100; % Height (m)
Y_Temp = Male_data_65(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Male_05_KSPF_All__ = [sWHI_Male_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 66;
X_Temp = Male_data_66(:,1)/100; % Height (m)
Y_Temp = Male_data_66(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Male_05_KSPF_All__ = [sWHI_Male_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 67;
X_Temp = Male_data_67(:,1)/100; % Height (m)
Y_Temp = Male_data_67(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Male_05_KSPF_All__ = [sWHI_Male_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 68;
X_Temp = Male_data_68(:,1)/100; % Height (m)
Y_Temp = Male_data_68(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Male_05_KSPF_All__ = [sWHI_Male_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 69;
X_Temp = Male_data_69(:,1)/100; % Height (m)
Y_Temp = Male_data_69(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Male_05_KSPF_All__ = [sWHI_Male_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 70;
X_Temp = Male_data_70(:,1)/100; % Height (m)
Y_Temp = Male_data_70(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Male_05_KSPF_All__ = [sWHI_Male_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 71;
X_Temp = Male_data_71(:,1)/100; % Height (m)
Y_Temp = Male_data_71(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Male_05_KSPF_All__ = [sWHI_Male_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 72;
X_Temp = Male_data_72(:,1)/100; % Height (m)
Y_Temp = Male_data_72(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Male_05_KSPF_All__ = [sWHI_Male_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 73;
X_Temp = Male_data_73(:,1)/100; % Height (m)
Y_Temp = Male_data_73(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Male_05_KSPF_All__ = [sWHI_Male_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 74;
X_Temp = Male_data_74(:,1)/100; % Height (m)
Y_Temp = Male_data_74(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Male_05_KSPF_All__ = [sWHI_Male_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 75;
X_Temp = Male_data_75(:,1)/100; % Height (m)
Y_Temp = Male_data_75(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Male_05_KSPF_All__ = [sWHI_Male_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 76;
X_Temp = Male_data_76(:,1)/100; % Height (m)
Y_Temp = Male_data_76(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Male_05_KSPF_All__ = [sWHI_Male_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 77;
X_Temp = Male_data_77(:,1)/100; % Height (m)
Y_Temp = Male_data_77(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Male_05_KSPF_All__ = [sWHI_Male_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 78;
X_Temp = Male_data_78(:,1)/100; % Height (m)
Y_Temp = Male_data_78(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Male_05_KSPF_All__ = [sWHI_Male_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 79;
X_Temp = Male_data_79(:,1)/100; % Height (m)
Y_Temp = Male_data_79(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Male_05_KSPF_All__ = [sWHI_Male_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 80;
X_Temp = Male_data_80(:,1)/100; % Height (m)
Y_Temp = Male_data_80(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Male_05_KSPF_All__ = [sWHI_Male_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 81;
X_Temp = Male_data_81(:,1)/100; % Height (m)
Y_Temp = Male_data_81(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Male_05_KSPF_All__ = [sWHI_Male_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 82;
X_Temp = Male_data_82(:,1)/100; % Height (m)
Y_Temp = Male_data_82(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Male_05_KSPF_All__ = [sWHI_Male_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 83;
X_Temp = Male_data_83(:,1)/100; % Height (m)
Y_Temp = Male_data_83(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Male_05_KSPF_All__ = [sWHI_Male_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 84;
X_Temp = Male_data_84(:,1)/100; % Height (m)
Y_Temp = Male_data_84(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Male_05_KSPF_All__ = [sWHI_Male_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 85;
X_Temp = Male_data_85(:,1)/100; % Height (m)
Y_Temp = Male_data_85(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Male_05_KSPF_All__ = [sWHI_Male_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 86;
X_Temp = Male_data_86(:,1)/100; % Height (m)
Y_Temp = Male_data_86(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Male_05_KSPF_All__ = [sWHI_Male_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 87;
X_Temp = Male_data_87(:,1)/100; % Height (m)
Y_Temp = Male_data_87(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Male_05_KSPF_All__ = [sWHI_Male_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 88;
X_Temp = Male_data_88(:,1)/100; % Height (m)
Y_Temp = Male_data_88(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Male_05_KSPF_All__ = [sWHI_Male_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 89;
X_Temp = Male_data_89(:,1)/100; % Height (m)
Y_Temp = Male_data_89(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Male_05_KSPF_All__ = [sWHI_Male_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 90;
X_Temp = Male_data_90(:,1)/100; % Height (m)
Y_Temp = Male_data_90(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Male_05_KSPF_All__ = [sWHI_Male_05_KSPF_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end

%% We save the data 
save sWHI_05_KSPF__.mat sWHI_Female_05_KSPF_All__ sWHI_Male_05_KSPF_All__
