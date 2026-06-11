% We show the correlation coefficient between Weight and Weight*Height^c for
% all Asia datasets when exponent c = 1;
% Including:
% KSPF, Korea - 韩国
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

%% KSPF, Korea (Age 11~90)
% Loading the data
Female_data = xlsread('KSPF, Korea.xlsx','Female');
Male_data = xlsread('KSPF, Korea.xlsx','Male');
% Grouping by age
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
[M N] = size(Female_data); % No.	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Female_data(i,2) == 11
        Female_data_11 = [Female_data_11; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 12
        Female_data_12 = [Female_data_12; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 13
        Female_data_13 = [Female_data_13; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 14
        Female_data_14 = [Female_data_14; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 15
        Female_data_15 = [Female_data_15; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 16
        Female_data_16 = [Female_data_16; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 17
        Female_data_17 = [Female_data_17; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 18
        Female_data_18 = [Female_data_18; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 19
        Female_data_19 = [Female_data_19; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 20
        Female_data_20 = [Female_data_20; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 21
        Female_data_21 = [Female_data_21; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 22
        Female_data_22 = [Female_data_22; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 23
        Female_data_23 = [Female_data_23; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 24
        Female_data_24 = [Female_data_24; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 25
        Female_data_25 = [Female_data_25; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 26
        Female_data_26 = [Female_data_26; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 27
        Female_data_27 = [Female_data_27; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 28
        Female_data_28 = [Female_data_28; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 29
        Female_data_29 = [Female_data_29; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 30
        Female_data_30 = [Female_data_30; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 31
        Female_data_31 = [Female_data_31; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 32
        Female_data_32 = [Female_data_32; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 33
        Female_data_33 = [Female_data_33; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 34
        Female_data_34 = [Female_data_34; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 35
        Female_data_35 = [Female_data_35; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 36
        Female_data_36 = [Female_data_36; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 37
        Female_data_37 = [Female_data_37; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 38
        Female_data_38 = [Female_data_38; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 39
        Female_data_39 = [Female_data_39; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 40
        Female_data_40 = [Female_data_40; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 41
        Female_data_41 = [Female_data_41; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 42
        Female_data_42 = [Female_data_42; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 43
        Female_data_43 = [Female_data_43; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 44
        Female_data_44 = [Female_data_44; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 45
        Female_data_45 = [Female_data_45; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 46
        Female_data_46 = [Female_data_46; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 47
        Female_data_47 = [Female_data_47; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 48
        Female_data_48 = [Female_data_48; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 49
        Female_data_49 = [Female_data_49; Female_data(i,3) Female_data(i,4)];
    end
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
    if Male_data(i,2) == 11
        Male_data_11 = [Male_data_11; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 12
        Male_data_12 = [Male_data_12; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 13
        Male_data_13 = [Male_data_13; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 14
        Male_data_14 = [Male_data_14; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 15
        Male_data_15 = [Male_data_15; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 16
        Male_data_16 = [Male_data_16; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 17
        Male_data_17 = [Male_data_17; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 18
        Male_data_18 = [Male_data_18; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 19
        Male_data_19 = [Male_data_19; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 20
        Male_data_20 = [Male_data_20; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 21
        Male_data_21 = [Male_data_21; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 22
        Male_data_22 = [Male_data_22; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 23
        Male_data_23 = [Male_data_23; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 24
        Male_data_24 = [Male_data_24; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 25
        Male_data_25 = [Male_data_25; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 26
        Male_data_26 = [Male_data_26; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 27
        Male_data_27 = [Male_data_27; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 28
        Male_data_28 = [Male_data_28; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 29
        Male_data_29 = [Male_data_29; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 30
        Male_data_30 = [Male_data_30; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 31
        Male_data_31 = [Male_data_31; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 32
        Male_data_32 = [Male_data_32; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 33
        Male_data_33 = [Male_data_33; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 34
        Male_data_34 = [Male_data_34; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 35
        Male_data_35 = [Male_data_35; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 36
        Male_data_36 = [Male_data_36; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 37
        Male_data_37 = [Male_data_37; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 38
        Male_data_38 = [Male_data_38; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 39
        Male_data_39 = [Male_data_39; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 40
        Male_data_40 = [Male_data_40; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 41
        Male_data_41 = [Male_data_41; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 42
        Male_data_42 = [Male_data_42; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 43
        Male_data_43 = [Male_data_43; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 44
        Male_data_44 = [Male_data_44; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 45
        Male_data_45 = [Male_data_45; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 46
        Male_data_46 = [Male_data_46; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 47
        Male_data_47 = [Male_data_47; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 48
        Male_data_48 = [Male_data_48; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 49
        Male_data_49 = [Male_data_49; Male_data(i,3) Male_data(i,4)];
    end
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

% We calculate the correlation coefficients
% Weight VS Weight*Height^c
Age_KSPF_Korea = 11:90;
Corr_KSPF_Korea_Female = [My_Corr(Female_data_11(:,2),Female_data_11(:,2).*(Female_data_11(:,1)/100).^c) ...
    My_Corr(Female_data_12(:,2),Female_data_12(:,2).*(Female_data_12(:,1)/100).^c) ...
    My_Corr(Female_data_13(:,2),Female_data_13(:,2).*(Female_data_13(:,1)/100).^c) ...
    My_Corr(Female_data_14(:,2),Female_data_14(:,2).*(Female_data_14(:,1)/100).^c) ...
    My_Corr(Female_data_15(:,2),Female_data_15(:,2).*(Female_data_15(:,1)/100).^c) ...
    My_Corr(Female_data_16(:,2),Female_data_16(:,2).*(Female_data_16(:,1)/100).^c) ...
    My_Corr(Female_data_17(:,2),Female_data_17(:,2).*(Female_data_17(:,1)/100).^c) ...
    My_Corr(Female_data_18(:,2),Female_data_18(:,2).*(Female_data_18(:,1)/100).^c) ...
    My_Corr(Female_data_19(:,2),Female_data_19(:,2).*(Female_data_19(:,1)/100).^c) ...
    My_Corr(Female_data_20(:,2),Female_data_20(:,2).*(Female_data_20(:,1)/100).^c) ...
    My_Corr(Female_data_21(:,2),Female_data_21(:,2).*(Female_data_21(:,1)/100).^c) ...
    My_Corr(Female_data_22(:,2),Female_data_22(:,2).*(Female_data_22(:,1)/100).^c) ...
    My_Corr(Female_data_23(:,2),Female_data_23(:,2).*(Female_data_23(:,1)/100).^c) ...
    My_Corr(Female_data_24(:,2),Female_data_24(:,2).*(Female_data_24(:,1)/100).^c) ...
    My_Corr(Female_data_25(:,2),Female_data_25(:,2).*(Female_data_25(:,1)/100).^c) ...
    My_Corr(Female_data_26(:,2),Female_data_26(:,2).*(Female_data_26(:,1)/100).^c) ...
    My_Corr(Female_data_27(:,2),Female_data_27(:,2).*(Female_data_27(:,1)/100).^c) ...
    My_Corr(Female_data_28(:,2),Female_data_28(:,2).*(Female_data_28(:,1)/100).^c) ...
    My_Corr(Female_data_29(:,2),Female_data_29(:,2).*(Female_data_29(:,1)/100).^c) ...
    My_Corr(Female_data_30(:,2),Female_data_30(:,2).*(Female_data_30(:,1)/100).^c) ...
    My_Corr(Female_data_31(:,2),Female_data_31(:,2).*(Female_data_31(:,1)/100).^c) ...
    My_Corr(Female_data_32(:,2),Female_data_32(:,2).*(Female_data_32(:,1)/100).^c) ...
    My_Corr(Female_data_33(:,2),Female_data_33(:,2).*(Female_data_33(:,1)/100).^c) ...
    My_Corr(Female_data_34(:,2),Female_data_34(:,2).*(Female_data_34(:,1)/100).^c) ...
    My_Corr(Female_data_35(:,2),Female_data_35(:,2).*(Female_data_35(:,1)/100).^c) ...
    My_Corr(Female_data_36(:,2),Female_data_36(:,2).*(Female_data_36(:,1)/100).^c) ...
    My_Corr(Female_data_37(:,2),Female_data_37(:,2).*(Female_data_37(:,1)/100).^c) ...
    My_Corr(Female_data_38(:,2),Female_data_38(:,2).*(Female_data_38(:,1)/100).^c) ...
    My_Corr(Female_data_39(:,2),Female_data_39(:,2).*(Female_data_39(:,1)/100).^c) ...
    My_Corr(Female_data_40(:,2),Female_data_40(:,2).*(Female_data_40(:,1)/100).^c) ...
    My_Corr(Female_data_41(:,2),Female_data_41(:,2).*(Female_data_41(:,1)/100).^c) ...
    My_Corr(Female_data_42(:,2),Female_data_42(:,2).*(Female_data_42(:,1)/100).^c) ...
    My_Corr(Female_data_43(:,2),Female_data_43(:,2).*(Female_data_43(:,1)/100).^c) ...
    My_Corr(Female_data_44(:,2),Female_data_44(:,2).*(Female_data_44(:,1)/100).^c) ...
    My_Corr(Female_data_45(:,2),Female_data_45(:,2).*(Female_data_45(:,1)/100).^c) ...
    My_Corr(Female_data_46(:,2),Female_data_46(:,2).*(Female_data_46(:,1)/100).^c) ...
    My_Corr(Female_data_47(:,2),Female_data_47(:,2).*(Female_data_47(:,1)/100).^c) ...
    My_Corr(Female_data_48(:,2),Female_data_48(:,2).*(Female_data_48(:,1)/100).^c) ...
    My_Corr(Female_data_49(:,2),Female_data_49(:,2).*(Female_data_49(:,1)/100).^c) ...
    My_Corr(Female_data_50(:,2),Female_data_50(:,2).*(Female_data_50(:,1)/100).^c) ...
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

Corr_KSPF_Korea_Male = [My_Corr(Male_data_11(:,2),Male_data_11(:,2).*(Male_data_11(:,1)/100).^c) ...
    My_Corr(Male_data_12(:,2),Male_data_12(:,2).*(Male_data_12(:,1)/100).^c) ...
    My_Corr(Male_data_13(:,2),Male_data_13(:,2).*(Male_data_13(:,1)/100).^c) ...
    My_Corr(Male_data_14(:,2),Male_data_14(:,2).*(Male_data_14(:,1)/100).^c) ...
    My_Corr(Male_data_15(:,2),Male_data_15(:,2).*(Male_data_15(:,1)/100).^c) ...
    My_Corr(Male_data_16(:,2),Male_data_16(:,2).*(Male_data_16(:,1)/100).^c) ...
    My_Corr(Male_data_17(:,2),Male_data_17(:,2).*(Male_data_17(:,1)/100).^c) ...
    My_Corr(Male_data_18(:,2),Male_data_18(:,2).*(Male_data_18(:,1)/100).^c) ...
    My_Corr(Male_data_19(:,2),Male_data_19(:,2).*(Male_data_19(:,1)/100).^c) ...
    My_Corr(Male_data_20(:,2),Male_data_20(:,2).*(Male_data_20(:,1)/100).^c) ...
    My_Corr(Male_data_21(:,2),Male_data_21(:,2).*(Male_data_21(:,1)/100).^c) ...
    My_Corr(Male_data_22(:,2),Male_data_22(:,2).*(Male_data_22(:,1)/100).^c) ...
    My_Corr(Male_data_23(:,2),Male_data_23(:,2).*(Male_data_23(:,1)/100).^c) ...
    My_Corr(Male_data_24(:,2),Male_data_24(:,2).*(Male_data_24(:,1)/100).^c) ...
    My_Corr(Male_data_25(:,2),Male_data_25(:,2).*(Male_data_25(:,1)/100).^c) ...
    My_Corr(Male_data_26(:,2),Male_data_26(:,2).*(Male_data_26(:,1)/100).^c) ...
    My_Corr(Male_data_27(:,2),Male_data_27(:,2).*(Male_data_27(:,1)/100).^c) ...
    My_Corr(Male_data_28(:,2),Male_data_28(:,2).*(Male_data_28(:,1)/100).^c) ...
    My_Corr(Male_data_29(:,2),Male_data_29(:,2).*(Male_data_29(:,1)/100).^c) ...
    My_Corr(Male_data_30(:,2),Male_data_30(:,2).*(Male_data_30(:,1)/100).^c) ...
    My_Corr(Male_data_31(:,2),Male_data_31(:,2).*(Male_data_31(:,1)/100).^c) ...
    My_Corr(Male_data_32(:,2),Male_data_32(:,2).*(Male_data_32(:,1)/100).^c) ...
    My_Corr(Male_data_33(:,2),Male_data_33(:,2).*(Male_data_33(:,1)/100).^c) ...
    My_Corr(Male_data_34(:,2),Male_data_34(:,2).*(Male_data_34(:,1)/100).^c) ...
    My_Corr(Male_data_35(:,2),Male_data_35(:,2).*(Male_data_35(:,1)/100).^c) ...
    My_Corr(Male_data_36(:,2),Male_data_36(:,2).*(Male_data_36(:,1)/100).^c) ...
    My_Corr(Male_data_37(:,2),Male_data_37(:,2).*(Male_data_37(:,1)/100).^c) ...
    My_Corr(Male_data_38(:,2),Male_data_38(:,2).*(Male_data_38(:,1)/100).^c) ...
    My_Corr(Male_data_39(:,2),Male_data_39(:,2).*(Male_data_39(:,1)/100).^c) ...
    My_Corr(Male_data_40(:,2),Male_data_40(:,2).*(Male_data_40(:,1)/100).^c) ...
    My_Corr(Male_data_41(:,2),Male_data_41(:,2).*(Male_data_41(:,1)/100).^c) ...
    My_Corr(Male_data_42(:,2),Male_data_42(:,2).*(Male_data_42(:,1)/100).^c) ...
    My_Corr(Male_data_43(:,2),Male_data_43(:,2).*(Male_data_43(:,1)/100).^c) ...
    My_Corr(Male_data_44(:,2),Male_data_44(:,2).*(Male_data_44(:,1)/100).^c) ...
    My_Corr(Male_data_45(:,2),Male_data_45(:,2).*(Male_data_45(:,1)/100).^c) ...
    My_Corr(Male_data_46(:,2),Male_data_46(:,2).*(Male_data_46(:,1)/100).^c) ...
    My_Corr(Male_data_47(:,2),Male_data_47(:,2).*(Male_data_47(:,1)/100).^c) ...
    My_Corr(Male_data_48(:,2),Male_data_48(:,2).*(Male_data_48(:,1)/100).^c) ...
    My_Corr(Male_data_49(:,2),Male_data_49(:,2).*(Male_data_49(:,1)/100).^c) ...
    My_Corr(Male_data_50(:,2),Male_data_50(:,2).*(Male_data_50(:,1)/100).^c) ...
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
xlim([0 91]);
ylim([0.95 1]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

% KSPF, Korea
x_data = Age_KSPF_Korea;
y_data = Corr_KSPF_Korea_Female;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(5,:),'MarkerFaceColor','w');

% For Male
subplot(2,1,2);
hold on;
title('Male')
xlabel('Age (yr)');
ylabel('Correlation coefficients')
xlim([0 91]);
ylim([0.95 1]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

% KSPF, Korea
x_data = Age_KSPF_Korea;
y_data = Corr_KSPF_Korea_Male;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(5,:),'MarkerFaceColor','w');


%%
% We save the correlation analysis results
save('Correlation_coefficient_c1_KSPF.mat',...
    'Age_KSPF_Korea','Corr_KSPF_Korea_Female','Corr_KSPF_Korea_Male');
