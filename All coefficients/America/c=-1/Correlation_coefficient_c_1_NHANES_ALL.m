% We show the relative coefficients between Weight and Weight*Height^c for
% all NHANES datasets when exponent c = -1;
% Including:
% NHANES 1999-2000
% NHANES 2001-2002
% NHANES 2003-2004
% NHANES 2005-2006
% NHANES 2007-2008
% NHANES 2009-2010
% NHANES 2011-2012
% NHANES 2013-2014
% NHANES 2015-2016
% NHANES 2017-2018
% NHANES 2017-March 2020
% NHANES August 2021-August 2023
% NHANES ALL
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
%% NHANES 1999-2000.xlsx
% Loading the data
Female_data = xlsread('NHANES 1999-2000.xlsx','Female');
Male_data = xlsread('NHANES 1999-2000.xlsx','Male');
% Grouping by age
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
Female_data_85 = []; % >=85

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
Male_data_85 = []; % >=85

% For Female
[M N] = size(Female_data); % No.	Respondent sequence number	Age in years at screening	Standing Height (cm)	Weight (kg)
for i = 1:M
    if Female_data(i,3) == 2
        Female_data_2 = [Female_data_2; Female_data(i,4) Female_data(i,5)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,3) == 3
        Female_data_3 = [Female_data_3; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 4
        Female_data_4 = [Female_data_4; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 5
        Female_data_5 = [Female_data_5; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 6
        Female_data_6 = [Female_data_6; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 7
        Female_data_7 = [Female_data_7; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 8
        Female_data_8 = [Female_data_8; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 9
        Female_data_9 = [Female_data_9; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 10
        Female_data_10 = [Female_data_10; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 11
        Female_data_11 = [Female_data_11; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 12
        Female_data_12 = [Female_data_12; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 13
        Female_data_13 = [Female_data_13; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 14
        Female_data_14 = [Female_data_14; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 15
        Female_data_15 = [Female_data_15; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 16
        Female_data_16 = [Female_data_16; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 17
        Female_data_17 = [Female_data_17; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 18
        Female_data_18 = [Female_data_18; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 19
        Female_data_19 = [Female_data_19; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 20
        Female_data_20 = [Female_data_20; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 21
        Female_data_21 = [Female_data_21; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 22
        Female_data_22 = [Female_data_22; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 23
        Female_data_23 = [Female_data_23; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 24
        Female_data_24 = [Female_data_24; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 25
        Female_data_25 = [Female_data_25; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 26
        Female_data_26 = [Female_data_26; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 27
        Female_data_27 = [Female_data_27; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 28
        Female_data_28 = [Female_data_28; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 29
        Female_data_29 = [Female_data_29; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 30
        Female_data_30 = [Female_data_30; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 31
        Female_data_31 = [Female_data_31; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 32
        Female_data_32 = [Female_data_32; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 33
        Female_data_33 = [Female_data_33; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 34
        Female_data_34 = [Female_data_34; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 35
        Female_data_35 = [Female_data_35; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 36
        Female_data_36 = [Female_data_36; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 37
        Female_data_37 = [Female_data_37; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 38
        Female_data_38 = [Female_data_38; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 39
        Female_data_39 = [Female_data_39; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 40
        Female_data_40 = [Female_data_40; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 41
        Female_data_41 = [Female_data_41; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 42
        Female_data_42 = [Female_data_42; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 43
        Female_data_43 = [Female_data_43; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 44
        Female_data_44 = [Female_data_44; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 45
        Female_data_45 = [Female_data_45; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 46
        Female_data_46 = [Female_data_46; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 47
        Female_data_47 = [Female_data_47; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 48
        Female_data_48 = [Female_data_48; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 49
        Female_data_49 = [Female_data_49; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 50
        Female_data_50 = [Female_data_50; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 51
        Female_data_51 = [Female_data_51; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 52
        Female_data_52 = [Female_data_52; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 53
        Female_data_53 = [Female_data_53; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 54
        Female_data_54 = [Female_data_54; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 55
        Female_data_55 = [Female_data_55; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 56
        Female_data_56 = [Female_data_56; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 57
        Female_data_57 = [Female_data_57; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 58
        Female_data_58 = [Female_data_58; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 59
        Female_data_59 = [Female_data_59; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 60
        Female_data_60 = [Female_data_60; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 61
        Female_data_61 = [Female_data_61; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 62
        Female_data_62 = [Female_data_62; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 63
        Female_data_63 = [Female_data_63; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 64
        Female_data_64 = [Female_data_64; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 65
        Female_data_65 = [Female_data_65; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 66
        Female_data_66 = [Female_data_66; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 67
        Female_data_67 = [Female_data_67; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 68
        Female_data_68 = [Female_data_68; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 69
        Female_data_69 = [Female_data_69; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 70
        Female_data_70 = [Female_data_70; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 71
        Female_data_71 = [Female_data_71; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 72
        Female_data_72 = [Female_data_72; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 73
        Female_data_73 = [Female_data_73; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 74
        Female_data_74 = [Female_data_74; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 75
        Female_data_75 = [Female_data_75; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 76
        Female_data_76 = [Female_data_76; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 77
        Female_data_77 = [Female_data_77; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 78
        Female_data_78 = [Female_data_78; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 79
        Female_data_79 = [Female_data_79; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 80
        Female_data_80 = [Female_data_80; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 81
        Female_data_81 = [Female_data_81; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 82
        Female_data_82 = [Female_data_82; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 83
        Female_data_83 = [Female_data_83; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 84
        Female_data_84 = [Female_data_84; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 85
        Female_data_85 = [Female_data_85; Female_data(i,4) Female_data(i,5)];
    end
end

% For Male
[M N] = size(Male_data); % No.	Respondent sequence number	Age in years at screening	Standing Height (cm)	Weight (kg)
for i = 1:M
    if Male_data(i,3) == 2
        Male_data_2 = [Male_data_2; Male_data(i,4) Male_data(i,5)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,3) == 3
        Male_data_3 = [Male_data_3; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 4
        Male_data_4 = [Male_data_4; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 5
        Male_data_5 = [Male_data_5; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 6
        Male_data_6 = [Male_data_6; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 7
        Male_data_7 = [Male_data_7; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 8
        Male_data_8 = [Male_data_8; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 9
        Male_data_9 = [Male_data_9; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 10
        Male_data_10 = [Male_data_10; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 11
        Male_data_11 = [Male_data_11; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 12
        Male_data_12 = [Male_data_12; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 13
        Male_data_13 = [Male_data_13; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 14
        Male_data_14 = [Male_data_14; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 15
        Male_data_15 = [Male_data_15; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 16
        Male_data_16 = [Male_data_16; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 17
        Male_data_17 = [Male_data_17; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 18
        Male_data_18 = [Male_data_18; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 19
        Male_data_19 = [Male_data_19; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 20
        Male_data_20 = [Male_data_20; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 21
        Male_data_21 = [Male_data_21; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 22
        Male_data_22 = [Male_data_22; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 23
        Male_data_23 = [Male_data_23; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 24
        Male_data_24 = [Male_data_24; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 25
        Male_data_25 = [Male_data_25; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 26
        Male_data_26 = [Male_data_26; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 27
        Male_data_27 = [Male_data_27; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 28
        Male_data_28 = [Male_data_28; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 29
        Male_data_29 = [Male_data_29; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 30
        Male_data_30 = [Male_data_30; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 31
        Male_data_31 = [Male_data_31; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 32
        Male_data_32 = [Male_data_32; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 33
        Male_data_33 = [Male_data_33; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 34
        Male_data_34 = [Male_data_34; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 35
        Male_data_35 = [Male_data_35; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 36
        Male_data_36 = [Male_data_36; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 37
        Male_data_37 = [Male_data_37; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 38
        Male_data_38 = [Male_data_38; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 39
        Male_data_39 = [Male_data_39; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 40
        Male_data_40 = [Male_data_40; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 41
        Male_data_41 = [Male_data_41; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 42
        Male_data_42 = [Male_data_42; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 43
        Male_data_43 = [Male_data_43; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 44
        Male_data_44 = [Male_data_44; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 45
        Male_data_45 = [Male_data_45; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 46
        Male_data_46 = [Male_data_46; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 47
        Male_data_47 = [Male_data_47; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 48
        Male_data_48 = [Male_data_48; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 49
        Male_data_49 = [Male_data_49; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 50
        Male_data_50 = [Male_data_50; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 51
        Male_data_51 = [Male_data_51; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 52
        Male_data_52 = [Male_data_52; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 53
        Male_data_53 = [Male_data_53; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 54
        Male_data_54 = [Male_data_54; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 55
        Male_data_55 = [Male_data_55; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 56
        Male_data_56 = [Male_data_56; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 57
        Male_data_57 = [Male_data_57; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 58
        Male_data_58 = [Male_data_58; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 59
        Male_data_59 = [Male_data_59; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 60
        Male_data_60 = [Male_data_60; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 61
        Male_data_61 = [Male_data_61; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 62
        Male_data_62 = [Male_data_62; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 63
        Male_data_63 = [Male_data_63; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 64
        Male_data_64 = [Male_data_64; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 65
        Male_data_65 = [Male_data_65; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 66
        Male_data_66 = [Male_data_66; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 67
        Male_data_67 = [Male_data_67; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 68
        Male_data_68 = [Male_data_68; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 69
        Male_data_69 = [Male_data_69; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 70
        Male_data_70 = [Male_data_70; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 71
        Male_data_71 = [Male_data_71; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 72
        Male_data_72 = [Male_data_72; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 73
        Male_data_73 = [Male_data_73; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 74
        Male_data_74 = [Male_data_74; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 75
        Male_data_75 = [Male_data_75; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 76
        Male_data_76 = [Male_data_76; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 77
        Male_data_77 = [Male_data_77; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 78
        Male_data_78 = [Male_data_78; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 79
        Male_data_79 = [Male_data_79; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 80
        Male_data_80 = [Male_data_80; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 81
        Male_data_81 = [Male_data_81; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 82
        Male_data_82 = [Male_data_82; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 83
        Male_data_83 = [Male_data_83; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 84
        Male_data_84 = [Male_data_84; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 85
        Male_data_85 = [Male_data_85; Male_data(i,4) Male_data(i,5)];
    end
end

% We calculate the correlation coefficients
% Weight VS Weight*Height^c
Age_NHANES_1999_2000 = 2:85;
Corr_NHANES_1999_2000_Female = [My_Corr(Female_data_2(:,2),Female_data_2(:,2).*(Female_data_2(:,1)/100).^c) ...
    My_Corr(Female_data_3(:,2),Female_data_3(:,2).*(Female_data_3(:,1)/100).^c) ...
    My_Corr(Female_data_4(:,2),Female_data_4(:,2).*(Female_data_4(:,1)/100).^c) ...
    My_Corr(Female_data_5(:,2),Female_data_5(:,2).*(Female_data_5(:,1)/100).^c) ...
    My_Corr(Female_data_6(:,2),Female_data_6(:,2).*(Female_data_6(:,1)/100).^c) ...
    My_Corr(Female_data_7(:,2),Female_data_7(:,2).*(Female_data_7(:,1)/100).^c) ...
    My_Corr(Female_data_8(:,2),Female_data_8(:,2).*(Female_data_8(:,1)/100).^c) ...
    My_Corr(Female_data_9(:,2),Female_data_9(:,2).*(Female_data_9(:,1)/100).^c) ...
    My_Corr(Female_data_10(:,2),Female_data_10(:,2).*(Female_data_10(:,1)/100).^c) ...
    My_Corr(Female_data_11(:,2),Female_data_11(:,2).*(Female_data_11(:,1)/100).^c) ...
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
    My_Corr(Female_data_85(:,2),Female_data_85(:,2).*(Female_data_85(:,1)/100).^c)
    ];

Corr_NHANES_1999_2000_Male = [My_Corr(Male_data_2(:,2),Male_data_2(:,2).*(Male_data_2(:,1)/100).^c) ...
    My_Corr(Male_data_3(:,2),Male_data_3(:,2).*(Male_data_3(:,1)/100).^c) ...
    My_Corr(Male_data_4(:,2),Male_data_4(:,2).*(Male_data_4(:,1)/100).^c) ...
    My_Corr(Male_data_5(:,2),Male_data_5(:,2).*(Male_data_5(:,1)/100).^c) ...
    My_Corr(Male_data_6(:,2),Male_data_6(:,2).*(Male_data_6(:,1)/100).^c) ...
    My_Corr(Male_data_7(:,2),Male_data_7(:,2).*(Male_data_7(:,1)/100).^c) ...
    My_Corr(Male_data_8(:,2),Male_data_8(:,2).*(Male_data_8(:,1)/100).^c) ...
    My_Corr(Male_data_9(:,2),Male_data_9(:,2).*(Male_data_9(:,1)/100).^c) ...
    My_Corr(Male_data_10(:,2),Male_data_10(:,2).*(Male_data_10(:,1)/100).^c) ...
    My_Corr(Male_data_11(:,2),Male_data_11(:,2).*(Male_data_11(:,1)/100).^c) ...
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
    My_Corr(Male_data_85(:,2),Male_data_85(:,2).*(Male_data_85(:,1)/100).^c)
    ];

%% NHANES 2001-2002.xlsx
% Loading the data
Female_data = xlsread('NHANES 2001-2002.xlsx','Female');
Male_data = xlsread('NHANES 2001-2002.xlsx','Male');
% Grouping by age
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
Female_data_85 = []; % >=85

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
Male_data_85 = []; % >=85

% For Female
[M N] = size(Female_data); % No.	Respondent sequence number	Age in years at screening	Standing Height (cm)	Weight (kg)
for i = 1:M
    if Female_data(i,3) == 2
        Female_data_2 = [Female_data_2; Female_data(i,4) Female_data(i,5)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,3) == 3
        Female_data_3 = [Female_data_3; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 4
        Female_data_4 = [Female_data_4; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 5
        Female_data_5 = [Female_data_5; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 6
        Female_data_6 = [Female_data_6; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 7
        Female_data_7 = [Female_data_7; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 8
        Female_data_8 = [Female_data_8; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 9
        Female_data_9 = [Female_data_9; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 10
        Female_data_10 = [Female_data_10; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 11
        Female_data_11 = [Female_data_11; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 12
        Female_data_12 = [Female_data_12; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 13
        Female_data_13 = [Female_data_13; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 14
        Female_data_14 = [Female_data_14; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 15
        Female_data_15 = [Female_data_15; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 16
        Female_data_16 = [Female_data_16; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 17
        Female_data_17 = [Female_data_17; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 18
        Female_data_18 = [Female_data_18; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 19
        Female_data_19 = [Female_data_19; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 20
        Female_data_20 = [Female_data_20; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 21
        Female_data_21 = [Female_data_21; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 22
        Female_data_22 = [Female_data_22; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 23
        Female_data_23 = [Female_data_23; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 24
        Female_data_24 = [Female_data_24; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 25
        Female_data_25 = [Female_data_25; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 26
        Female_data_26 = [Female_data_26; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 27
        Female_data_27 = [Female_data_27; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 28
        Female_data_28 = [Female_data_28; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 29
        Female_data_29 = [Female_data_29; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 30
        Female_data_30 = [Female_data_30; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 31
        Female_data_31 = [Female_data_31; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 32
        Female_data_32 = [Female_data_32; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 33
        Female_data_33 = [Female_data_33; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 34
        Female_data_34 = [Female_data_34; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 35
        Female_data_35 = [Female_data_35; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 36
        Female_data_36 = [Female_data_36; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 37
        Female_data_37 = [Female_data_37; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 38
        Female_data_38 = [Female_data_38; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 39
        Female_data_39 = [Female_data_39; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 40
        Female_data_40 = [Female_data_40; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 41
        Female_data_41 = [Female_data_41; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 42
        Female_data_42 = [Female_data_42; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 43
        Female_data_43 = [Female_data_43; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 44
        Female_data_44 = [Female_data_44; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 45
        Female_data_45 = [Female_data_45; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 46
        Female_data_46 = [Female_data_46; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 47
        Female_data_47 = [Female_data_47; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 48
        Female_data_48 = [Female_data_48; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 49
        Female_data_49 = [Female_data_49; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 50
        Female_data_50 = [Female_data_50; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 51
        Female_data_51 = [Female_data_51; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 52
        Female_data_52 = [Female_data_52; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 53
        Female_data_53 = [Female_data_53; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 54
        Female_data_54 = [Female_data_54; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 55
        Female_data_55 = [Female_data_55; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 56
        Female_data_56 = [Female_data_56; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 57
        Female_data_57 = [Female_data_57; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 58
        Female_data_58 = [Female_data_58; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 59
        Female_data_59 = [Female_data_59; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 60
        Female_data_60 = [Female_data_60; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 61
        Female_data_61 = [Female_data_61; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 62
        Female_data_62 = [Female_data_62; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 63
        Female_data_63 = [Female_data_63; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 64
        Female_data_64 = [Female_data_64; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 65
        Female_data_65 = [Female_data_65; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 66
        Female_data_66 = [Female_data_66; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 67
        Female_data_67 = [Female_data_67; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 68
        Female_data_68 = [Female_data_68; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 69
        Female_data_69 = [Female_data_69; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 70
        Female_data_70 = [Female_data_70; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 71
        Female_data_71 = [Female_data_71; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 72
        Female_data_72 = [Female_data_72; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 73
        Female_data_73 = [Female_data_73; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 74
        Female_data_74 = [Female_data_74; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 75
        Female_data_75 = [Female_data_75; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 76
        Female_data_76 = [Female_data_76; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 77
        Female_data_77 = [Female_data_77; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 78
        Female_data_78 = [Female_data_78; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 79
        Female_data_79 = [Female_data_79; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 80
        Female_data_80 = [Female_data_80; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 81
        Female_data_81 = [Female_data_81; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 82
        Female_data_82 = [Female_data_82; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 83
        Female_data_83 = [Female_data_83; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 84
        Female_data_84 = [Female_data_84; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 85
        Female_data_85 = [Female_data_85; Female_data(i,4) Female_data(i,5)];
    end
end

% For Male
[M N] = size(Male_data); % No.	Respondent sequence number	Age in years at screening	Standing Height (cm)	Weight (kg)
for i = 1:M
    if Male_data(i,3) == 2
        Male_data_2 = [Male_data_2; Male_data(i,4) Male_data(i,5)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,3) == 3
        Male_data_3 = [Male_data_3; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 4
        Male_data_4 = [Male_data_4; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 5
        Male_data_5 = [Male_data_5; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 6
        Male_data_6 = [Male_data_6; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 7
        Male_data_7 = [Male_data_7; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 8
        Male_data_8 = [Male_data_8; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 9
        Male_data_9 = [Male_data_9; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 10
        Male_data_10 = [Male_data_10; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 11
        Male_data_11 = [Male_data_11; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 12
        Male_data_12 = [Male_data_12; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 13
        Male_data_13 = [Male_data_13; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 14
        Male_data_14 = [Male_data_14; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 15
        Male_data_15 = [Male_data_15; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 16
        Male_data_16 = [Male_data_16; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 17
        Male_data_17 = [Male_data_17; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 18
        Male_data_18 = [Male_data_18; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 19
        Male_data_19 = [Male_data_19; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 20
        Male_data_20 = [Male_data_20; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 21
        Male_data_21 = [Male_data_21; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 22
        Male_data_22 = [Male_data_22; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 23
        Male_data_23 = [Male_data_23; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 24
        Male_data_24 = [Male_data_24; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 25
        Male_data_25 = [Male_data_25; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 26
        Male_data_26 = [Male_data_26; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 27
        Male_data_27 = [Male_data_27; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 28
        Male_data_28 = [Male_data_28; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 29
        Male_data_29 = [Male_data_29; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 30
        Male_data_30 = [Male_data_30; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 31
        Male_data_31 = [Male_data_31; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 32
        Male_data_32 = [Male_data_32; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 33
        Male_data_33 = [Male_data_33; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 34
        Male_data_34 = [Male_data_34; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 35
        Male_data_35 = [Male_data_35; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 36
        Male_data_36 = [Male_data_36; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 37
        Male_data_37 = [Male_data_37; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 38
        Male_data_38 = [Male_data_38; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 39
        Male_data_39 = [Male_data_39; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 40
        Male_data_40 = [Male_data_40; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 41
        Male_data_41 = [Male_data_41; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 42
        Male_data_42 = [Male_data_42; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 43
        Male_data_43 = [Male_data_43; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 44
        Male_data_44 = [Male_data_44; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 45
        Male_data_45 = [Male_data_45; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 46
        Male_data_46 = [Male_data_46; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 47
        Male_data_47 = [Male_data_47; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 48
        Male_data_48 = [Male_data_48; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 49
        Male_data_49 = [Male_data_49; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 50
        Male_data_50 = [Male_data_50; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 51
        Male_data_51 = [Male_data_51; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 52
        Male_data_52 = [Male_data_52; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 53
        Male_data_53 = [Male_data_53; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 54
        Male_data_54 = [Male_data_54; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 55
        Male_data_55 = [Male_data_55; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 56
        Male_data_56 = [Male_data_56; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 57
        Male_data_57 = [Male_data_57; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 58
        Male_data_58 = [Male_data_58; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 59
        Male_data_59 = [Male_data_59; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 60
        Male_data_60 = [Male_data_60; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 61
        Male_data_61 = [Male_data_61; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 62
        Male_data_62 = [Male_data_62; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 63
        Male_data_63 = [Male_data_63; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 64
        Male_data_64 = [Male_data_64; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 65
        Male_data_65 = [Male_data_65; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 66
        Male_data_66 = [Male_data_66; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 67
        Male_data_67 = [Male_data_67; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 68
        Male_data_68 = [Male_data_68; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 69
        Male_data_69 = [Male_data_69; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 70
        Male_data_70 = [Male_data_70; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 71
        Male_data_71 = [Male_data_71; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 72
        Male_data_72 = [Male_data_72; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 73
        Male_data_73 = [Male_data_73; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 74
        Male_data_74 = [Male_data_74; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 75
        Male_data_75 = [Male_data_75; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 76
        Male_data_76 = [Male_data_76; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 77
        Male_data_77 = [Male_data_77; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 78
        Male_data_78 = [Male_data_78; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 79
        Male_data_79 = [Male_data_79; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 80
        Male_data_80 = [Male_data_80; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 81
        Male_data_81 = [Male_data_81; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 82
        Male_data_82 = [Male_data_82; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 83
        Male_data_83 = [Male_data_83; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 84
        Male_data_84 = [Male_data_84; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 85
        Male_data_85 = [Male_data_85; Male_data(i,4) Male_data(i,5)];
    end
end

% We calculate the correlation coefficients
% Weight VS Weight*Height^c
Age_NHANES_2001_2002 = 2:85;
Corr_NHANES_2001_2002_Female = [My_Corr(Female_data_2(:,2),Female_data_2(:,2).*(Female_data_2(:,1)/100).^c) ...
    My_Corr(Female_data_3(:,2),Female_data_3(:,2).*(Female_data_3(:,1)/100).^c) ...
    My_Corr(Female_data_4(:,2),Female_data_4(:,2).*(Female_data_4(:,1)/100).^c) ...
    My_Corr(Female_data_5(:,2),Female_data_5(:,2).*(Female_data_5(:,1)/100).^c) ...
    My_Corr(Female_data_6(:,2),Female_data_6(:,2).*(Female_data_6(:,1)/100).^c) ...
    My_Corr(Female_data_7(:,2),Female_data_7(:,2).*(Female_data_7(:,1)/100).^c) ...
    My_Corr(Female_data_8(:,2),Female_data_8(:,2).*(Female_data_8(:,1)/100).^c) ...
    My_Corr(Female_data_9(:,2),Female_data_9(:,2).*(Female_data_9(:,1)/100).^c) ...
    My_Corr(Female_data_10(:,2),Female_data_10(:,2).*(Female_data_10(:,1)/100).^c) ...
    My_Corr(Female_data_11(:,2),Female_data_11(:,2).*(Female_data_11(:,1)/100).^c) ...
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
    My_Corr(Female_data_85(:,2),Female_data_85(:,2).*(Female_data_85(:,1)/100).^c)
    ];

Corr_NHANES_2001_2002_Male = [My_Corr(Male_data_2(:,2),Male_data_2(:,2).*(Male_data_2(:,1)/100).^c) ...
    My_Corr(Male_data_3(:,2),Male_data_3(:,2).*(Male_data_3(:,1)/100).^c) ...
    My_Corr(Male_data_4(:,2),Male_data_4(:,2).*(Male_data_4(:,1)/100).^c) ...
    My_Corr(Male_data_5(:,2),Male_data_5(:,2).*(Male_data_5(:,1)/100).^c) ...
    My_Corr(Male_data_6(:,2),Male_data_6(:,2).*(Male_data_6(:,1)/100).^c) ...
    My_Corr(Male_data_7(:,2),Male_data_7(:,2).*(Male_data_7(:,1)/100).^c) ...
    My_Corr(Male_data_8(:,2),Male_data_8(:,2).*(Male_data_8(:,1)/100).^c) ...
    My_Corr(Male_data_9(:,2),Male_data_9(:,2).*(Male_data_9(:,1)/100).^c) ...
    My_Corr(Male_data_10(:,2),Male_data_10(:,2).*(Male_data_10(:,1)/100).^c) ...
    My_Corr(Male_data_11(:,2),Male_data_11(:,2).*(Male_data_11(:,1)/100).^c) ...
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
    My_Corr(Male_data_85(:,2),Male_data_85(:,2).*(Male_data_85(:,1)/100).^c)
    ];

%% NHANES 2003-2004.xlsx
% Loading the data
Female_data = xlsread('NHANES 2003-2004.xlsx','Female');
Male_data = xlsread('NHANES 2003-2004.xlsx','Male');
% Grouping by age
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
Female_data_85 = []; % >=85

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
Male_data_85 = []; % >=85

% For Female
[M N] = size(Female_data); % No.	Respondent sequence number	Age in years at screening	Standing Height (cm)	Weight (kg)
for i = 1:M
    if Female_data(i,3) == 2
        Female_data_2 = [Female_data_2; Female_data(i,4) Female_data(i,5)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,3) == 3
        Female_data_3 = [Female_data_3; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 4
        Female_data_4 = [Female_data_4; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 5
        Female_data_5 = [Female_data_5; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 6
        Female_data_6 = [Female_data_6; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 7
        Female_data_7 = [Female_data_7; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 8
        Female_data_8 = [Female_data_8; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 9
        Female_data_9 = [Female_data_9; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 10
        Female_data_10 = [Female_data_10; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 11
        Female_data_11 = [Female_data_11; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 12
        Female_data_12 = [Female_data_12; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 13
        Female_data_13 = [Female_data_13; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 14
        Female_data_14 = [Female_data_14; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 15
        Female_data_15 = [Female_data_15; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 16
        Female_data_16 = [Female_data_16; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 17
        Female_data_17 = [Female_data_17; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 18
        Female_data_18 = [Female_data_18; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 19
        Female_data_19 = [Female_data_19; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 20
        Female_data_20 = [Female_data_20; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 21
        Female_data_21 = [Female_data_21; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 22
        Female_data_22 = [Female_data_22; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 23
        Female_data_23 = [Female_data_23; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 24
        Female_data_24 = [Female_data_24; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 25
        Female_data_25 = [Female_data_25; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 26
        Female_data_26 = [Female_data_26; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 27
        Female_data_27 = [Female_data_27; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 28
        Female_data_28 = [Female_data_28; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 29
        Female_data_29 = [Female_data_29; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 30
        Female_data_30 = [Female_data_30; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 31
        Female_data_31 = [Female_data_31; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 32
        Female_data_32 = [Female_data_32; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 33
        Female_data_33 = [Female_data_33; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 34
        Female_data_34 = [Female_data_34; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 35
        Female_data_35 = [Female_data_35; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 36
        Female_data_36 = [Female_data_36; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 37
        Female_data_37 = [Female_data_37; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 38
        Female_data_38 = [Female_data_38; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 39
        Female_data_39 = [Female_data_39; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 40
        Female_data_40 = [Female_data_40; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 41
        Female_data_41 = [Female_data_41; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 42
        Female_data_42 = [Female_data_42; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 43
        Female_data_43 = [Female_data_43; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 44
        Female_data_44 = [Female_data_44; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 45
        Female_data_45 = [Female_data_45; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 46
        Female_data_46 = [Female_data_46; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 47
        Female_data_47 = [Female_data_47; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 48
        Female_data_48 = [Female_data_48; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 49
        Female_data_49 = [Female_data_49; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 50
        Female_data_50 = [Female_data_50; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 51
        Female_data_51 = [Female_data_51; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 52
        Female_data_52 = [Female_data_52; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 53
        Female_data_53 = [Female_data_53; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 54
        Female_data_54 = [Female_data_54; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 55
        Female_data_55 = [Female_data_55; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 56
        Female_data_56 = [Female_data_56; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 57
        Female_data_57 = [Female_data_57; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 58
        Female_data_58 = [Female_data_58; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 59
        Female_data_59 = [Female_data_59; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 60
        Female_data_60 = [Female_data_60; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 61
        Female_data_61 = [Female_data_61; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 62
        Female_data_62 = [Female_data_62; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 63
        Female_data_63 = [Female_data_63; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 64
        Female_data_64 = [Female_data_64; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 65
        Female_data_65 = [Female_data_65; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 66
        Female_data_66 = [Female_data_66; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 67
        Female_data_67 = [Female_data_67; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 68
        Female_data_68 = [Female_data_68; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 69
        Female_data_69 = [Female_data_69; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 70
        Female_data_70 = [Female_data_70; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 71
        Female_data_71 = [Female_data_71; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 72
        Female_data_72 = [Female_data_72; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 73
        Female_data_73 = [Female_data_73; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 74
        Female_data_74 = [Female_data_74; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 75
        Female_data_75 = [Female_data_75; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 76
        Female_data_76 = [Female_data_76; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 77
        Female_data_77 = [Female_data_77; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 78
        Female_data_78 = [Female_data_78; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 79
        Female_data_79 = [Female_data_79; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 80
        Female_data_80 = [Female_data_80; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 81
        Female_data_81 = [Female_data_81; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 82
        Female_data_82 = [Female_data_82; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 83
        Female_data_83 = [Female_data_83; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 84
        Female_data_84 = [Female_data_84; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 85
        Female_data_85 = [Female_data_85; Female_data(i,4) Female_data(i,5)];
    end
end

% For Male
[M N] = size(Male_data); % No.	Respondent sequence number	Age in years at screening	Standing Height (cm)	Weight (kg)
for i = 1:M
    if Male_data(i,3) == 2
        Male_data_2 = [Male_data_2; Male_data(i,4) Male_data(i,5)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,3) == 3
        Male_data_3 = [Male_data_3; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 4
        Male_data_4 = [Male_data_4; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 5
        Male_data_5 = [Male_data_5; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 6
        Male_data_6 = [Male_data_6; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 7
        Male_data_7 = [Male_data_7; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 8
        Male_data_8 = [Male_data_8; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 9
        Male_data_9 = [Male_data_9; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 10
        Male_data_10 = [Male_data_10; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 11
        Male_data_11 = [Male_data_11; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 12
        Male_data_12 = [Male_data_12; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 13
        Male_data_13 = [Male_data_13; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 14
        Male_data_14 = [Male_data_14; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 15
        Male_data_15 = [Male_data_15; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 16
        Male_data_16 = [Male_data_16; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 17
        Male_data_17 = [Male_data_17; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 18
        Male_data_18 = [Male_data_18; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 19
        Male_data_19 = [Male_data_19; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 20
        Male_data_20 = [Male_data_20; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 21
        Male_data_21 = [Male_data_21; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 22
        Male_data_22 = [Male_data_22; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 23
        Male_data_23 = [Male_data_23; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 24
        Male_data_24 = [Male_data_24; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 25
        Male_data_25 = [Male_data_25; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 26
        Male_data_26 = [Male_data_26; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 27
        Male_data_27 = [Male_data_27; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 28
        Male_data_28 = [Male_data_28; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 29
        Male_data_29 = [Male_data_29; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 30
        Male_data_30 = [Male_data_30; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 31
        Male_data_31 = [Male_data_31; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 32
        Male_data_32 = [Male_data_32; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 33
        Male_data_33 = [Male_data_33; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 34
        Male_data_34 = [Male_data_34; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 35
        Male_data_35 = [Male_data_35; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 36
        Male_data_36 = [Male_data_36; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 37
        Male_data_37 = [Male_data_37; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 38
        Male_data_38 = [Male_data_38; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 39
        Male_data_39 = [Male_data_39; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 40
        Male_data_40 = [Male_data_40; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 41
        Male_data_41 = [Male_data_41; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 42
        Male_data_42 = [Male_data_42; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 43
        Male_data_43 = [Male_data_43; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 44
        Male_data_44 = [Male_data_44; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 45
        Male_data_45 = [Male_data_45; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 46
        Male_data_46 = [Male_data_46; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 47
        Male_data_47 = [Male_data_47; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 48
        Male_data_48 = [Male_data_48; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 49
        Male_data_49 = [Male_data_49; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 50
        Male_data_50 = [Male_data_50; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 51
        Male_data_51 = [Male_data_51; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 52
        Male_data_52 = [Male_data_52; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 53
        Male_data_53 = [Male_data_53; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 54
        Male_data_54 = [Male_data_54; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 55
        Male_data_55 = [Male_data_55; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 56
        Male_data_56 = [Male_data_56; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 57
        Male_data_57 = [Male_data_57; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 58
        Male_data_58 = [Male_data_58; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 59
        Male_data_59 = [Male_data_59; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 60
        Male_data_60 = [Male_data_60; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 61
        Male_data_61 = [Male_data_61; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 62
        Male_data_62 = [Male_data_62; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 63
        Male_data_63 = [Male_data_63; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 64
        Male_data_64 = [Male_data_64; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 65
        Male_data_65 = [Male_data_65; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 66
        Male_data_66 = [Male_data_66; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 67
        Male_data_67 = [Male_data_67; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 68
        Male_data_68 = [Male_data_68; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 69
        Male_data_69 = [Male_data_69; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 70
        Male_data_70 = [Male_data_70; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 71
        Male_data_71 = [Male_data_71; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 72
        Male_data_72 = [Male_data_72; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 73
        Male_data_73 = [Male_data_73; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 74
        Male_data_74 = [Male_data_74; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 75
        Male_data_75 = [Male_data_75; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 76
        Male_data_76 = [Male_data_76; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 77
        Male_data_77 = [Male_data_77; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 78
        Male_data_78 = [Male_data_78; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 79
        Male_data_79 = [Male_data_79; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 80
        Male_data_80 = [Male_data_80; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 81
        Male_data_81 = [Male_data_81; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 82
        Male_data_82 = [Male_data_82; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 83
        Male_data_83 = [Male_data_83; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 84
        Male_data_84 = [Male_data_84; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 85
        Male_data_85 = [Male_data_85; Male_data(i,4) Male_data(i,5)];
    end
end

% We calculate the correlation coefficients
% Weight VS Weight*Height^c
Age_NHANES_2003_2004 = 2:85;
Corr_NHANES_2003_2004_Female = [My_Corr(Female_data_2(:,2),Female_data_2(:,2).*(Female_data_2(:,1)/100).^c) ...
    My_Corr(Female_data_3(:,2),Female_data_3(:,2).*(Female_data_3(:,1)/100).^c) ...
    My_Corr(Female_data_4(:,2),Female_data_4(:,2).*(Female_data_4(:,1)/100).^c) ...
    My_Corr(Female_data_5(:,2),Female_data_5(:,2).*(Female_data_5(:,1)/100).^c) ...
    My_Corr(Female_data_6(:,2),Female_data_6(:,2).*(Female_data_6(:,1)/100).^c) ...
    My_Corr(Female_data_7(:,2),Female_data_7(:,2).*(Female_data_7(:,1)/100).^c) ...
    My_Corr(Female_data_8(:,2),Female_data_8(:,2).*(Female_data_8(:,1)/100).^c) ...
    My_Corr(Female_data_9(:,2),Female_data_9(:,2).*(Female_data_9(:,1)/100).^c) ...
    My_Corr(Female_data_10(:,2),Female_data_10(:,2).*(Female_data_10(:,1)/100).^c) ...
    My_Corr(Female_data_11(:,2),Female_data_11(:,2).*(Female_data_11(:,1)/100).^c) ...
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
    My_Corr(Female_data_85(:,2),Female_data_85(:,2).*(Female_data_85(:,1)/100).^c)
    ];

Corr_NHANES_2003_2004_Male = [My_Corr(Male_data_2(:,2),Male_data_2(:,2).*(Male_data_2(:,1)/100).^c) ...
    My_Corr(Male_data_3(:,2),Male_data_3(:,2).*(Male_data_3(:,1)/100).^c) ...
    My_Corr(Male_data_4(:,2),Male_data_4(:,2).*(Male_data_4(:,1)/100).^c) ...
    My_Corr(Male_data_5(:,2),Male_data_5(:,2).*(Male_data_5(:,1)/100).^c) ...
    My_Corr(Male_data_6(:,2),Male_data_6(:,2).*(Male_data_6(:,1)/100).^c) ...
    My_Corr(Male_data_7(:,2),Male_data_7(:,2).*(Male_data_7(:,1)/100).^c) ...
    My_Corr(Male_data_8(:,2),Male_data_8(:,2).*(Male_data_8(:,1)/100).^c) ...
    My_Corr(Male_data_9(:,2),Male_data_9(:,2).*(Male_data_9(:,1)/100).^c) ...
    My_Corr(Male_data_10(:,2),Male_data_10(:,2).*(Male_data_10(:,1)/100).^c) ...
    My_Corr(Male_data_11(:,2),Male_data_11(:,2).*(Male_data_11(:,1)/100).^c) ...
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
    My_Corr(Male_data_85(:,2),Male_data_85(:,2).*(Male_data_85(:,1)/100).^c)
    ];

%% NHANES 2005-2006.xlsx
% Loading the data
Female_data = xlsread('NHANES 2005-2006.xlsx','Female');
Male_data = xlsread('NHANES 2005-2006.xlsx','Male');
% Grouping by age
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
Female_data_85 = []; % >=85

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
Male_data_85 = []; % >=85

% For Female
[M N] = size(Female_data); % No.	Respondent sequence number	Age in years at screening	Standing Height (cm)	Weight (kg)
for i = 1:M
    if Female_data(i,3) == 2
        Female_data_2 = [Female_data_2; Female_data(i,4) Female_data(i,5)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,3) == 3
        Female_data_3 = [Female_data_3; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 4
        Female_data_4 = [Female_data_4; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 5
        Female_data_5 = [Female_data_5; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 6
        Female_data_6 = [Female_data_6; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 7
        Female_data_7 = [Female_data_7; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 8
        Female_data_8 = [Female_data_8; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 9
        Female_data_9 = [Female_data_9; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 10
        Female_data_10 = [Female_data_10; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 11
        Female_data_11 = [Female_data_11; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 12
        Female_data_12 = [Female_data_12; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 13
        Female_data_13 = [Female_data_13; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 14
        Female_data_14 = [Female_data_14; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 15
        Female_data_15 = [Female_data_15; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 16
        Female_data_16 = [Female_data_16; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 17
        Female_data_17 = [Female_data_17; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 18
        Female_data_18 = [Female_data_18; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 19
        Female_data_19 = [Female_data_19; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 20
        Female_data_20 = [Female_data_20; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 21
        Female_data_21 = [Female_data_21; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 22
        Female_data_22 = [Female_data_22; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 23
        Female_data_23 = [Female_data_23; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 24
        Female_data_24 = [Female_data_24; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 25
        Female_data_25 = [Female_data_25; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 26
        Female_data_26 = [Female_data_26; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 27
        Female_data_27 = [Female_data_27; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 28
        Female_data_28 = [Female_data_28; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 29
        Female_data_29 = [Female_data_29; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 30
        Female_data_30 = [Female_data_30; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 31
        Female_data_31 = [Female_data_31; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 32
        Female_data_32 = [Female_data_32; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 33
        Female_data_33 = [Female_data_33; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 34
        Female_data_34 = [Female_data_34; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 35
        Female_data_35 = [Female_data_35; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 36
        Female_data_36 = [Female_data_36; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 37
        Female_data_37 = [Female_data_37; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 38
        Female_data_38 = [Female_data_38; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 39
        Female_data_39 = [Female_data_39; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 40
        Female_data_40 = [Female_data_40; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 41
        Female_data_41 = [Female_data_41; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 42
        Female_data_42 = [Female_data_42; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 43
        Female_data_43 = [Female_data_43; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 44
        Female_data_44 = [Female_data_44; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 45
        Female_data_45 = [Female_data_45; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 46
        Female_data_46 = [Female_data_46; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 47
        Female_data_47 = [Female_data_47; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 48
        Female_data_48 = [Female_data_48; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 49
        Female_data_49 = [Female_data_49; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 50
        Female_data_50 = [Female_data_50; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 51
        Female_data_51 = [Female_data_51; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 52
        Female_data_52 = [Female_data_52; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 53
        Female_data_53 = [Female_data_53; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 54
        Female_data_54 = [Female_data_54; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 55
        Female_data_55 = [Female_data_55; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 56
        Female_data_56 = [Female_data_56; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 57
        Female_data_57 = [Female_data_57; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 58
        Female_data_58 = [Female_data_58; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 59
        Female_data_59 = [Female_data_59; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 60
        Female_data_60 = [Female_data_60; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 61
        Female_data_61 = [Female_data_61; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 62
        Female_data_62 = [Female_data_62; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 63
        Female_data_63 = [Female_data_63; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 64
        Female_data_64 = [Female_data_64; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 65
        Female_data_65 = [Female_data_65; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 66
        Female_data_66 = [Female_data_66; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 67
        Female_data_67 = [Female_data_67; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 68
        Female_data_68 = [Female_data_68; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 69
        Female_data_69 = [Female_data_69; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 70
        Female_data_70 = [Female_data_70; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 71
        Female_data_71 = [Female_data_71; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 72
        Female_data_72 = [Female_data_72; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 73
        Female_data_73 = [Female_data_73; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 74
        Female_data_74 = [Female_data_74; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 75
        Female_data_75 = [Female_data_75; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 76
        Female_data_76 = [Female_data_76; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 77
        Female_data_77 = [Female_data_77; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 78
        Female_data_78 = [Female_data_78; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 79
        Female_data_79 = [Female_data_79; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 80
        Female_data_80 = [Female_data_80; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 81
        Female_data_81 = [Female_data_81; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 82
        Female_data_82 = [Female_data_82; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 83
        Female_data_83 = [Female_data_83; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 84
        Female_data_84 = [Female_data_84; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 85
        Female_data_85 = [Female_data_85; Female_data(i,4) Female_data(i,5)];
    end
end

% For Male
[M N] = size(Male_data); % No.	Respondent sequence number	Age in years at screening	Standing Height (cm)	Weight (kg)
for i = 1:M
    if Male_data(i,3) == 2
        Male_data_2 = [Male_data_2; Male_data(i,4) Male_data(i,5)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,3) == 3
        Male_data_3 = [Male_data_3; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 4
        Male_data_4 = [Male_data_4; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 5
        Male_data_5 = [Male_data_5; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 6
        Male_data_6 = [Male_data_6; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 7
        Male_data_7 = [Male_data_7; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 8
        Male_data_8 = [Male_data_8; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 9
        Male_data_9 = [Male_data_9; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 10
        Male_data_10 = [Male_data_10; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 11
        Male_data_11 = [Male_data_11; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 12
        Male_data_12 = [Male_data_12; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 13
        Male_data_13 = [Male_data_13; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 14
        Male_data_14 = [Male_data_14; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 15
        Male_data_15 = [Male_data_15; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 16
        Male_data_16 = [Male_data_16; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 17
        Male_data_17 = [Male_data_17; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 18
        Male_data_18 = [Male_data_18; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 19
        Male_data_19 = [Male_data_19; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 20
        Male_data_20 = [Male_data_20; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 21
        Male_data_21 = [Male_data_21; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 22
        Male_data_22 = [Male_data_22; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 23
        Male_data_23 = [Male_data_23; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 24
        Male_data_24 = [Male_data_24; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 25
        Male_data_25 = [Male_data_25; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 26
        Male_data_26 = [Male_data_26; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 27
        Male_data_27 = [Male_data_27; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 28
        Male_data_28 = [Male_data_28; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 29
        Male_data_29 = [Male_data_29; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 30
        Male_data_30 = [Male_data_30; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 31
        Male_data_31 = [Male_data_31; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 32
        Male_data_32 = [Male_data_32; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 33
        Male_data_33 = [Male_data_33; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 34
        Male_data_34 = [Male_data_34; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 35
        Male_data_35 = [Male_data_35; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 36
        Male_data_36 = [Male_data_36; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 37
        Male_data_37 = [Male_data_37; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 38
        Male_data_38 = [Male_data_38; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 39
        Male_data_39 = [Male_data_39; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 40
        Male_data_40 = [Male_data_40; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 41
        Male_data_41 = [Male_data_41; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 42
        Male_data_42 = [Male_data_42; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 43
        Male_data_43 = [Male_data_43; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 44
        Male_data_44 = [Male_data_44; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 45
        Male_data_45 = [Male_data_45; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 46
        Male_data_46 = [Male_data_46; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 47
        Male_data_47 = [Male_data_47; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 48
        Male_data_48 = [Male_data_48; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 49
        Male_data_49 = [Male_data_49; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 50
        Male_data_50 = [Male_data_50; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 51
        Male_data_51 = [Male_data_51; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 52
        Male_data_52 = [Male_data_52; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 53
        Male_data_53 = [Male_data_53; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 54
        Male_data_54 = [Male_data_54; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 55
        Male_data_55 = [Male_data_55; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 56
        Male_data_56 = [Male_data_56; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 57
        Male_data_57 = [Male_data_57; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 58
        Male_data_58 = [Male_data_58; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 59
        Male_data_59 = [Male_data_59; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 60
        Male_data_60 = [Male_data_60; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 61
        Male_data_61 = [Male_data_61; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 62
        Male_data_62 = [Male_data_62; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 63
        Male_data_63 = [Male_data_63; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 64
        Male_data_64 = [Male_data_64; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 65
        Male_data_65 = [Male_data_65; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 66
        Male_data_66 = [Male_data_66; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 67
        Male_data_67 = [Male_data_67; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 68
        Male_data_68 = [Male_data_68; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 69
        Male_data_69 = [Male_data_69; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 70
        Male_data_70 = [Male_data_70; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 71
        Male_data_71 = [Male_data_71; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 72
        Male_data_72 = [Male_data_72; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 73
        Male_data_73 = [Male_data_73; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 74
        Male_data_74 = [Male_data_74; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 75
        Male_data_75 = [Male_data_75; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 76
        Male_data_76 = [Male_data_76; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 77
        Male_data_77 = [Male_data_77; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 78
        Male_data_78 = [Male_data_78; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 79
        Male_data_79 = [Male_data_79; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 80
        Male_data_80 = [Male_data_80; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 81
        Male_data_81 = [Male_data_81; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 82
        Male_data_82 = [Male_data_82; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 83
        Male_data_83 = [Male_data_83; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 84
        Male_data_84 = [Male_data_84; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 85
        Male_data_85 = [Male_data_85; Male_data(i,4) Male_data(i,5)];
    end
end

% We calculate the correlation coefficients
% Weight VS Weight*Height^c
Age_NHANES_2005_2006 = 2:85;
Corr_NHANES_2005_2006_Female = [My_Corr(Female_data_2(:,2),Female_data_2(:,2).*(Female_data_2(:,1)/100).^c) ...
    My_Corr(Female_data_3(:,2),Female_data_3(:,2).*(Female_data_3(:,1)/100).^c) ...
    My_Corr(Female_data_4(:,2),Female_data_4(:,2).*(Female_data_4(:,1)/100).^c) ...
    My_Corr(Female_data_5(:,2),Female_data_5(:,2).*(Female_data_5(:,1)/100).^c) ...
    My_Corr(Female_data_6(:,2),Female_data_6(:,2).*(Female_data_6(:,1)/100).^c) ...
    My_Corr(Female_data_7(:,2),Female_data_7(:,2).*(Female_data_7(:,1)/100).^c) ...
    My_Corr(Female_data_8(:,2),Female_data_8(:,2).*(Female_data_8(:,1)/100).^c) ...
    My_Corr(Female_data_9(:,2),Female_data_9(:,2).*(Female_data_9(:,1)/100).^c) ...
    My_Corr(Female_data_10(:,2),Female_data_10(:,2).*(Female_data_10(:,1)/100).^c) ...
    My_Corr(Female_data_11(:,2),Female_data_11(:,2).*(Female_data_11(:,1)/100).^c) ...
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
    My_Corr(Female_data_85(:,2),Female_data_85(:,2).*(Female_data_85(:,1)/100).^c)
    ];

Corr_NHANES_2005_2006_Male = [My_Corr(Male_data_2(:,2),Male_data_2(:,2).*(Male_data_2(:,1)/100).^c) ...
    My_Corr(Male_data_3(:,2),Male_data_3(:,2).*(Male_data_3(:,1)/100).^c) ...
    My_Corr(Male_data_4(:,2),Male_data_4(:,2).*(Male_data_4(:,1)/100).^c) ...
    My_Corr(Male_data_5(:,2),Male_data_5(:,2).*(Male_data_5(:,1)/100).^c) ...
    My_Corr(Male_data_6(:,2),Male_data_6(:,2).*(Male_data_6(:,1)/100).^c) ...
    My_Corr(Male_data_7(:,2),Male_data_7(:,2).*(Male_data_7(:,1)/100).^c) ...
    My_Corr(Male_data_8(:,2),Male_data_8(:,2).*(Male_data_8(:,1)/100).^c) ...
    My_Corr(Male_data_9(:,2),Male_data_9(:,2).*(Male_data_9(:,1)/100).^c) ...
    My_Corr(Male_data_10(:,2),Male_data_10(:,2).*(Male_data_10(:,1)/100).^c) ...
    My_Corr(Male_data_11(:,2),Male_data_11(:,2).*(Male_data_11(:,1)/100).^c) ...
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
    My_Corr(Male_data_85(:,2),Male_data_85(:,2).*(Male_data_85(:,1)/100).^c)
    ];

%% NHANES 2007-2008.xlsx
% Loading the data
Female_data = xlsread('NHANES 2007-2008.xlsx','Female');
Male_data = xlsread('NHANES 2007-2008.xlsx','Male');
% Grouping by age
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
Female_data_80 = []; % >=80

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
Male_data_80 = []; % >=80

% For Female
[M N] = size(Female_data); % No.	Respondent sequence number	Age in years at screening	Standing Height (cm)	Weight (kg)
for i = 1:M
    if Female_data(i,3) == 2
        Female_data_2 = [Female_data_2; Female_data(i,4) Female_data(i,5)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,3) == 3
        Female_data_3 = [Female_data_3; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 4
        Female_data_4 = [Female_data_4; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 5
        Female_data_5 = [Female_data_5; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 6
        Female_data_6 = [Female_data_6; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 7
        Female_data_7 = [Female_data_7; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 8
        Female_data_8 = [Female_data_8; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 9
        Female_data_9 = [Female_data_9; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 10
        Female_data_10 = [Female_data_10; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 11
        Female_data_11 = [Female_data_11; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 12
        Female_data_12 = [Female_data_12; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 13
        Female_data_13 = [Female_data_13; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 14
        Female_data_14 = [Female_data_14; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 15
        Female_data_15 = [Female_data_15; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 16
        Female_data_16 = [Female_data_16; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 17
        Female_data_17 = [Female_data_17; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 18
        Female_data_18 = [Female_data_18; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 19
        Female_data_19 = [Female_data_19; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 20
        Female_data_20 = [Female_data_20; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 21
        Female_data_21 = [Female_data_21; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 22
        Female_data_22 = [Female_data_22; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 23
        Female_data_23 = [Female_data_23; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 24
        Female_data_24 = [Female_data_24; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 25
        Female_data_25 = [Female_data_25; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 26
        Female_data_26 = [Female_data_26; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 27
        Female_data_27 = [Female_data_27; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 28
        Female_data_28 = [Female_data_28; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 29
        Female_data_29 = [Female_data_29; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 30
        Female_data_30 = [Female_data_30; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 31
        Female_data_31 = [Female_data_31; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 32
        Female_data_32 = [Female_data_32; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 33
        Female_data_33 = [Female_data_33; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 34
        Female_data_34 = [Female_data_34; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 35
        Female_data_35 = [Female_data_35; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 36
        Female_data_36 = [Female_data_36; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 37
        Female_data_37 = [Female_data_37; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 38
        Female_data_38 = [Female_data_38; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 39
        Female_data_39 = [Female_data_39; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 40
        Female_data_40 = [Female_data_40; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 41
        Female_data_41 = [Female_data_41; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 42
        Female_data_42 = [Female_data_42; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 43
        Female_data_43 = [Female_data_43; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 44
        Female_data_44 = [Female_data_44; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 45
        Female_data_45 = [Female_data_45; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 46
        Female_data_46 = [Female_data_46; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 47
        Female_data_47 = [Female_data_47; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 48
        Female_data_48 = [Female_data_48; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 49
        Female_data_49 = [Female_data_49; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 50
        Female_data_50 = [Female_data_50; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 51
        Female_data_51 = [Female_data_51; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 52
        Female_data_52 = [Female_data_52; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 53
        Female_data_53 = [Female_data_53; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 54
        Female_data_54 = [Female_data_54; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 55
        Female_data_55 = [Female_data_55; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 56
        Female_data_56 = [Female_data_56; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 57
        Female_data_57 = [Female_data_57; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 58
        Female_data_58 = [Female_data_58; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 59
        Female_data_59 = [Female_data_59; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 60
        Female_data_60 = [Female_data_60; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 61
        Female_data_61 = [Female_data_61; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 62
        Female_data_62 = [Female_data_62; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 63
        Female_data_63 = [Female_data_63; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 64
        Female_data_64 = [Female_data_64; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 65
        Female_data_65 = [Female_data_65; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 66
        Female_data_66 = [Female_data_66; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 67
        Female_data_67 = [Female_data_67; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 68
        Female_data_68 = [Female_data_68; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 69
        Female_data_69 = [Female_data_69; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 70
        Female_data_70 = [Female_data_70; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 71
        Female_data_71 = [Female_data_71; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 72
        Female_data_72 = [Female_data_72; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 73
        Female_data_73 = [Female_data_73; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 74
        Female_data_74 = [Female_data_74; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 75
        Female_data_75 = [Female_data_75; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 76
        Female_data_76 = [Female_data_76; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 77
        Female_data_77 = [Female_data_77; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 78
        Female_data_78 = [Female_data_78; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 79
        Female_data_79 = [Female_data_79; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 80
        Female_data_80 = [Female_data_80; Female_data(i,4) Female_data(i,5)];
    end
end

% For Male
[M N] = size(Male_data); % No.	Respondent sequence number	Age in years at screening	Standing Height (cm)	Weight (kg)
for i = 1:M
    if Male_data(i,3) == 2
        Male_data_2 = [Male_data_2; Male_data(i,4) Male_data(i,5)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,3) == 3
        Male_data_3 = [Male_data_3; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 4
        Male_data_4 = [Male_data_4; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 5
        Male_data_5 = [Male_data_5; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 6
        Male_data_6 = [Male_data_6; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 7
        Male_data_7 = [Male_data_7; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 8
        Male_data_8 = [Male_data_8; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 9
        Male_data_9 = [Male_data_9; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 10
        Male_data_10 = [Male_data_10; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 11
        Male_data_11 = [Male_data_11; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 12
        Male_data_12 = [Male_data_12; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 13
        Male_data_13 = [Male_data_13; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 14
        Male_data_14 = [Male_data_14; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 15
        Male_data_15 = [Male_data_15; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 16
        Male_data_16 = [Male_data_16; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 17
        Male_data_17 = [Male_data_17; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 18
        Male_data_18 = [Male_data_18; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 19
        Male_data_19 = [Male_data_19; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 20
        Male_data_20 = [Male_data_20; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 21
        Male_data_21 = [Male_data_21; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 22
        Male_data_22 = [Male_data_22; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 23
        Male_data_23 = [Male_data_23; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 24
        Male_data_24 = [Male_data_24; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 25
        Male_data_25 = [Male_data_25; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 26
        Male_data_26 = [Male_data_26; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 27
        Male_data_27 = [Male_data_27; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 28
        Male_data_28 = [Male_data_28; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 29
        Male_data_29 = [Male_data_29; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 30
        Male_data_30 = [Male_data_30; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 31
        Male_data_31 = [Male_data_31; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 32
        Male_data_32 = [Male_data_32; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 33
        Male_data_33 = [Male_data_33; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 34
        Male_data_34 = [Male_data_34; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 35
        Male_data_35 = [Male_data_35; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 36
        Male_data_36 = [Male_data_36; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 37
        Male_data_37 = [Male_data_37; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 38
        Male_data_38 = [Male_data_38; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 39
        Male_data_39 = [Male_data_39; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 40
        Male_data_40 = [Male_data_40; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 41
        Male_data_41 = [Male_data_41; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 42
        Male_data_42 = [Male_data_42; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 43
        Male_data_43 = [Male_data_43; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 44
        Male_data_44 = [Male_data_44; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 45
        Male_data_45 = [Male_data_45; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 46
        Male_data_46 = [Male_data_46; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 47
        Male_data_47 = [Male_data_47; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 48
        Male_data_48 = [Male_data_48; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 49
        Male_data_49 = [Male_data_49; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 50
        Male_data_50 = [Male_data_50; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 51
        Male_data_51 = [Male_data_51; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 52
        Male_data_52 = [Male_data_52; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 53
        Male_data_53 = [Male_data_53; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 54
        Male_data_54 = [Male_data_54; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 55
        Male_data_55 = [Male_data_55; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 56
        Male_data_56 = [Male_data_56; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 57
        Male_data_57 = [Male_data_57; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 58
        Male_data_58 = [Male_data_58; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 59
        Male_data_59 = [Male_data_59; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 60
        Male_data_60 = [Male_data_60; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 61
        Male_data_61 = [Male_data_61; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 62
        Male_data_62 = [Male_data_62; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 63
        Male_data_63 = [Male_data_63; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 64
        Male_data_64 = [Male_data_64; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 65
        Male_data_65 = [Male_data_65; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 66
        Male_data_66 = [Male_data_66; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 67
        Male_data_67 = [Male_data_67; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 68
        Male_data_68 = [Male_data_68; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 69
        Male_data_69 = [Male_data_69; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 70
        Male_data_70 = [Male_data_70; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 71
        Male_data_71 = [Male_data_71; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 72
        Male_data_72 = [Male_data_72; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 73
        Male_data_73 = [Male_data_73; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 74
        Male_data_74 = [Male_data_74; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 75
        Male_data_75 = [Male_data_75; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 76
        Male_data_76 = [Male_data_76; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 77
        Male_data_77 = [Male_data_77; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 78
        Male_data_78 = [Male_data_78; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 79
        Male_data_79 = [Male_data_79; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 80
        Male_data_80 = [Male_data_80; Male_data(i,4) Male_data(i,5)];
    end
end

% We calculate the correlation coefficients
% Weight VS Weight*Height^c
Age_NHANES_2007_2008 = 2:80;
Corr_NHANES_2007_2008_Female = [My_Corr(Female_data_2(:,2),Female_data_2(:,2).*(Female_data_2(:,1)/100).^c) ...
    My_Corr(Female_data_3(:,2),Female_data_3(:,2).*(Female_data_3(:,1)/100).^c) ...
    My_Corr(Female_data_4(:,2),Female_data_4(:,2).*(Female_data_4(:,1)/100).^c) ...
    My_Corr(Female_data_5(:,2),Female_data_5(:,2).*(Female_data_5(:,1)/100).^c) ...
    My_Corr(Female_data_6(:,2),Female_data_6(:,2).*(Female_data_6(:,1)/100).^c) ...
    My_Corr(Female_data_7(:,2),Female_data_7(:,2).*(Female_data_7(:,1)/100).^c) ...
    My_Corr(Female_data_8(:,2),Female_data_8(:,2).*(Female_data_8(:,1)/100).^c) ...
    My_Corr(Female_data_9(:,2),Female_data_9(:,2).*(Female_data_9(:,1)/100).^c) ...
    My_Corr(Female_data_10(:,2),Female_data_10(:,2).*(Female_data_10(:,1)/100).^c) ...
    My_Corr(Female_data_11(:,2),Female_data_11(:,2).*(Female_data_11(:,1)/100).^c) ...
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
    My_Corr(Female_data_80(:,2),Female_data_80(:,2).*(Female_data_80(:,1)/100).^c)
    ];

Corr_NHANES_2007_2008_Male = [My_Corr(Male_data_2(:,2),Male_data_2(:,2).*(Male_data_2(:,1)/100).^c) ...
    My_Corr(Male_data_3(:,2),Male_data_3(:,2).*(Male_data_3(:,1)/100).^c) ...
    My_Corr(Male_data_4(:,2),Male_data_4(:,2).*(Male_data_4(:,1)/100).^c) ...
    My_Corr(Male_data_5(:,2),Male_data_5(:,2).*(Male_data_5(:,1)/100).^c) ...
    My_Corr(Male_data_6(:,2),Male_data_6(:,2).*(Male_data_6(:,1)/100).^c) ...
    My_Corr(Male_data_7(:,2),Male_data_7(:,2).*(Male_data_7(:,1)/100).^c) ...
    My_Corr(Male_data_8(:,2),Male_data_8(:,2).*(Male_data_8(:,1)/100).^c) ...
    My_Corr(Male_data_9(:,2),Male_data_9(:,2).*(Male_data_9(:,1)/100).^c) ...
    My_Corr(Male_data_10(:,2),Male_data_10(:,2).*(Male_data_10(:,1)/100).^c) ...
    My_Corr(Male_data_11(:,2),Male_data_11(:,2).*(Male_data_11(:,1)/100).^c) ...
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
    My_Corr(Male_data_80(:,2),Male_data_80(:,2).*(Male_data_80(:,1)/100).^c)
    ];

%% NHANES 2009-2010.xlsx
% Loading the data
Female_data = xlsread('NHANES 2009-2010.xlsx','Female');
Male_data = xlsread('NHANES 2009-2010.xlsx','Male');
% Grouping by age
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
Female_data_80 = []; % >=80

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
Male_data_80 = []; % >=85

% For Female
[M N] = size(Female_data); % No.	Respondent sequence number	Age in years at screening	Standing Height (cm)	Weight (kg)
for i = 1:M
    if Female_data(i,3) == 2
        Female_data_2 = [Female_data_2; Female_data(i,4) Female_data(i,5)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,3) == 3
        Female_data_3 = [Female_data_3; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 4
        Female_data_4 = [Female_data_4; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 5
        Female_data_5 = [Female_data_5; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 6
        Female_data_6 = [Female_data_6; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 7
        Female_data_7 = [Female_data_7; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 8
        Female_data_8 = [Female_data_8; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 9
        Female_data_9 = [Female_data_9; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 10
        Female_data_10 = [Female_data_10; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 11
        Female_data_11 = [Female_data_11; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 12
        Female_data_12 = [Female_data_12; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 13
        Female_data_13 = [Female_data_13; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 14
        Female_data_14 = [Female_data_14; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 15
        Female_data_15 = [Female_data_15; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 16
        Female_data_16 = [Female_data_16; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 17
        Female_data_17 = [Female_data_17; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 18
        Female_data_18 = [Female_data_18; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 19
        Female_data_19 = [Female_data_19; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 20
        Female_data_20 = [Female_data_20; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 21
        Female_data_21 = [Female_data_21; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 22
        Female_data_22 = [Female_data_22; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 23
        Female_data_23 = [Female_data_23; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 24
        Female_data_24 = [Female_data_24; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 25
        Female_data_25 = [Female_data_25; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 26
        Female_data_26 = [Female_data_26; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 27
        Female_data_27 = [Female_data_27; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 28
        Female_data_28 = [Female_data_28; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 29
        Female_data_29 = [Female_data_29; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 30
        Female_data_30 = [Female_data_30; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 31
        Female_data_31 = [Female_data_31; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 32
        Female_data_32 = [Female_data_32; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 33
        Female_data_33 = [Female_data_33; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 34
        Female_data_34 = [Female_data_34; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 35
        Female_data_35 = [Female_data_35; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 36
        Female_data_36 = [Female_data_36; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 37
        Female_data_37 = [Female_data_37; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 38
        Female_data_38 = [Female_data_38; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 39
        Female_data_39 = [Female_data_39; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 40
        Female_data_40 = [Female_data_40; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 41
        Female_data_41 = [Female_data_41; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 42
        Female_data_42 = [Female_data_42; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 43
        Female_data_43 = [Female_data_43; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 44
        Female_data_44 = [Female_data_44; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 45
        Female_data_45 = [Female_data_45; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 46
        Female_data_46 = [Female_data_46; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 47
        Female_data_47 = [Female_data_47; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 48
        Female_data_48 = [Female_data_48; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 49
        Female_data_49 = [Female_data_49; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 50
        Female_data_50 = [Female_data_50; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 51
        Female_data_51 = [Female_data_51; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 52
        Female_data_52 = [Female_data_52; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 53
        Female_data_53 = [Female_data_53; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 54
        Female_data_54 = [Female_data_54; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 55
        Female_data_55 = [Female_data_55; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 56
        Female_data_56 = [Female_data_56; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 57
        Female_data_57 = [Female_data_57; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 58
        Female_data_58 = [Female_data_58; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 59
        Female_data_59 = [Female_data_59; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 60
        Female_data_60 = [Female_data_60; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 61
        Female_data_61 = [Female_data_61; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 62
        Female_data_62 = [Female_data_62; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 63
        Female_data_63 = [Female_data_63; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 64
        Female_data_64 = [Female_data_64; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 65
        Female_data_65 = [Female_data_65; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 66
        Female_data_66 = [Female_data_66; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 67
        Female_data_67 = [Female_data_67; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 68
        Female_data_68 = [Female_data_68; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 69
        Female_data_69 = [Female_data_69; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 70
        Female_data_70 = [Female_data_70; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 71
        Female_data_71 = [Female_data_71; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 72
        Female_data_72 = [Female_data_72; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 73
        Female_data_73 = [Female_data_73; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 74
        Female_data_74 = [Female_data_74; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 75
        Female_data_75 = [Female_data_75; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 76
        Female_data_76 = [Female_data_76; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 77
        Female_data_77 = [Female_data_77; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 78
        Female_data_78 = [Female_data_78; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 79
        Female_data_79 = [Female_data_79; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 80
        Female_data_80 = [Female_data_80; Female_data(i,4) Female_data(i,5)];
    end
end

% For Male
[M N] = size(Male_data); % No.	Respondent sequence number	Age in years at screening	Standing Height (cm)	Weight (kg)
for i = 1:M
    if Male_data(i,3) == 2
        Male_data_2 = [Male_data_2; Male_data(i,4) Male_data(i,5)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,3) == 3
        Male_data_3 = [Male_data_3; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 4
        Male_data_4 = [Male_data_4; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 5
        Male_data_5 = [Male_data_5; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 6
        Male_data_6 = [Male_data_6; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 7
        Male_data_7 = [Male_data_7; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 8
        Male_data_8 = [Male_data_8; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 9
        Male_data_9 = [Male_data_9; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 10
        Male_data_10 = [Male_data_10; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 11
        Male_data_11 = [Male_data_11; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 12
        Male_data_12 = [Male_data_12; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 13
        Male_data_13 = [Male_data_13; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 14
        Male_data_14 = [Male_data_14; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 15
        Male_data_15 = [Male_data_15; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 16
        Male_data_16 = [Male_data_16; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 17
        Male_data_17 = [Male_data_17; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 18
        Male_data_18 = [Male_data_18; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 19
        Male_data_19 = [Male_data_19; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 20
        Male_data_20 = [Male_data_20; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 21
        Male_data_21 = [Male_data_21; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 22
        Male_data_22 = [Male_data_22; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 23
        Male_data_23 = [Male_data_23; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 24
        Male_data_24 = [Male_data_24; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 25
        Male_data_25 = [Male_data_25; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 26
        Male_data_26 = [Male_data_26; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 27
        Male_data_27 = [Male_data_27; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 28
        Male_data_28 = [Male_data_28; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 29
        Male_data_29 = [Male_data_29; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 30
        Male_data_30 = [Male_data_30; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 31
        Male_data_31 = [Male_data_31; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 32
        Male_data_32 = [Male_data_32; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 33
        Male_data_33 = [Male_data_33; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 34
        Male_data_34 = [Male_data_34; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 35
        Male_data_35 = [Male_data_35; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 36
        Male_data_36 = [Male_data_36; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 37
        Male_data_37 = [Male_data_37; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 38
        Male_data_38 = [Male_data_38; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 39
        Male_data_39 = [Male_data_39; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 40
        Male_data_40 = [Male_data_40; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 41
        Male_data_41 = [Male_data_41; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 42
        Male_data_42 = [Male_data_42; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 43
        Male_data_43 = [Male_data_43; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 44
        Male_data_44 = [Male_data_44; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 45
        Male_data_45 = [Male_data_45; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 46
        Male_data_46 = [Male_data_46; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 47
        Male_data_47 = [Male_data_47; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 48
        Male_data_48 = [Male_data_48; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 49
        Male_data_49 = [Male_data_49; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 50
        Male_data_50 = [Male_data_50; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 51
        Male_data_51 = [Male_data_51; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 52
        Male_data_52 = [Male_data_52; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 53
        Male_data_53 = [Male_data_53; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 54
        Male_data_54 = [Male_data_54; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 55
        Male_data_55 = [Male_data_55; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 56
        Male_data_56 = [Male_data_56; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 57
        Male_data_57 = [Male_data_57; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 58
        Male_data_58 = [Male_data_58; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 59
        Male_data_59 = [Male_data_59; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 60
        Male_data_60 = [Male_data_60; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 61
        Male_data_61 = [Male_data_61; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 62
        Male_data_62 = [Male_data_62; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 63
        Male_data_63 = [Male_data_63; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 64
        Male_data_64 = [Male_data_64; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 65
        Male_data_65 = [Male_data_65; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 66
        Male_data_66 = [Male_data_66; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 67
        Male_data_67 = [Male_data_67; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 68
        Male_data_68 = [Male_data_68; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 69
        Male_data_69 = [Male_data_69; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 70
        Male_data_70 = [Male_data_70; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 71
        Male_data_71 = [Male_data_71; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 72
        Male_data_72 = [Male_data_72; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 73
        Male_data_73 = [Male_data_73; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 74
        Male_data_74 = [Male_data_74; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 75
        Male_data_75 = [Male_data_75; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 76
        Male_data_76 = [Male_data_76; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 77
        Male_data_77 = [Male_data_77; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 78
        Male_data_78 = [Male_data_78; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 79
        Male_data_79 = [Male_data_79; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 80
        Male_data_80 = [Male_data_80; Male_data(i,4) Male_data(i,5)];
    end
end

% We calculate the correlation coefficients
% Weight VS Weight*Height^c
Age_NHANES_2009_2010 = 2:80;
Corr_NHANES_2009_2010_Female = [My_Corr(Female_data_2(:,2),Female_data_2(:,2).*(Female_data_2(:,1)/100).^c) ...
    My_Corr(Female_data_3(:,2),Female_data_3(:,2).*(Female_data_3(:,1)/100).^c) ...
    My_Corr(Female_data_4(:,2),Female_data_4(:,2).*(Female_data_4(:,1)/100).^c) ...
    My_Corr(Female_data_5(:,2),Female_data_5(:,2).*(Female_data_5(:,1)/100).^c) ...
    My_Corr(Female_data_6(:,2),Female_data_6(:,2).*(Female_data_6(:,1)/100).^c) ...
    My_Corr(Female_data_7(:,2),Female_data_7(:,2).*(Female_data_7(:,1)/100).^c) ...
    My_Corr(Female_data_8(:,2),Female_data_8(:,2).*(Female_data_8(:,1)/100).^c) ...
    My_Corr(Female_data_9(:,2),Female_data_9(:,2).*(Female_data_9(:,1)/100).^c) ...
    My_Corr(Female_data_10(:,2),Female_data_10(:,2).*(Female_data_10(:,1)/100).^c) ...
    My_Corr(Female_data_11(:,2),Female_data_11(:,2).*(Female_data_11(:,1)/100).^c) ...
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
    My_Corr(Female_data_80(:,2),Female_data_80(:,2).*(Female_data_80(:,1)/100).^c)
    ];

Corr_NHANES_2009_2010_Male = [My_Corr(Male_data_2(:,2),Male_data_2(:,2).*(Male_data_2(:,1)/100).^c) ...
    My_Corr(Male_data_3(:,2),Male_data_3(:,2).*(Male_data_3(:,1)/100).^c) ...
    My_Corr(Male_data_4(:,2),Male_data_4(:,2).*(Male_data_4(:,1)/100).^c) ...
    My_Corr(Male_data_5(:,2),Male_data_5(:,2).*(Male_data_5(:,1)/100).^c) ...
    My_Corr(Male_data_6(:,2),Male_data_6(:,2).*(Male_data_6(:,1)/100).^c) ...
    My_Corr(Male_data_7(:,2),Male_data_7(:,2).*(Male_data_7(:,1)/100).^c) ...
    My_Corr(Male_data_8(:,2),Male_data_8(:,2).*(Male_data_8(:,1)/100).^c) ...
    My_Corr(Male_data_9(:,2),Male_data_9(:,2).*(Male_data_9(:,1)/100).^c) ...
    My_Corr(Male_data_10(:,2),Male_data_10(:,2).*(Male_data_10(:,1)/100).^c) ...
    My_Corr(Male_data_11(:,2),Male_data_11(:,2).*(Male_data_11(:,1)/100).^c) ...
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
    My_Corr(Male_data_80(:,2),Male_data_80(:,2).*(Male_data_80(:,1)/100).^c)
    ];

%% NHANES 2011-2012.xlsx
% Loading the data
Female_data = xlsread('NHANES 2011-2012.xlsx','Female');
Male_data = xlsread('NHANES 2011-2012.xlsx','Male');
% Grouping by age
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
Female_data_80 = []; % >=80

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
Male_data_80 = []; % >=85

% For Female
[M N] = size(Female_data); % No.	Respondent sequence number	Age in years at screening	Standing Height (cm)	Weight (kg)
for i = 1:M
    if Female_data(i,3) == 2
        Female_data_2 = [Female_data_2; Female_data(i,4) Female_data(i,5)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,3) == 3
        Female_data_3 = [Female_data_3; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 4
        Female_data_4 = [Female_data_4; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 5
        Female_data_5 = [Female_data_5; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 6
        Female_data_6 = [Female_data_6; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 7
        Female_data_7 = [Female_data_7; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 8
        Female_data_8 = [Female_data_8; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 9
        Female_data_9 = [Female_data_9; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 10
        Female_data_10 = [Female_data_10; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 11
        Female_data_11 = [Female_data_11; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 12
        Female_data_12 = [Female_data_12; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 13
        Female_data_13 = [Female_data_13; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 14
        Female_data_14 = [Female_data_14; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 15
        Female_data_15 = [Female_data_15; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 16
        Female_data_16 = [Female_data_16; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 17
        Female_data_17 = [Female_data_17; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 18
        Female_data_18 = [Female_data_18; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 19
        Female_data_19 = [Female_data_19; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 20
        Female_data_20 = [Female_data_20; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 21
        Female_data_21 = [Female_data_21; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 22
        Female_data_22 = [Female_data_22; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 23
        Female_data_23 = [Female_data_23; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 24
        Female_data_24 = [Female_data_24; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 25
        Female_data_25 = [Female_data_25; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 26
        Female_data_26 = [Female_data_26; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 27
        Female_data_27 = [Female_data_27; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 28
        Female_data_28 = [Female_data_28; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 29
        Female_data_29 = [Female_data_29; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 30
        Female_data_30 = [Female_data_30; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 31
        Female_data_31 = [Female_data_31; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 32
        Female_data_32 = [Female_data_32; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 33
        Female_data_33 = [Female_data_33; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 34
        Female_data_34 = [Female_data_34; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 35
        Female_data_35 = [Female_data_35; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 36
        Female_data_36 = [Female_data_36; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 37
        Female_data_37 = [Female_data_37; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 38
        Female_data_38 = [Female_data_38; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 39
        Female_data_39 = [Female_data_39; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 40
        Female_data_40 = [Female_data_40; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 41
        Female_data_41 = [Female_data_41; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 42
        Female_data_42 = [Female_data_42; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 43
        Female_data_43 = [Female_data_43; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 44
        Female_data_44 = [Female_data_44; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 45
        Female_data_45 = [Female_data_45; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 46
        Female_data_46 = [Female_data_46; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 47
        Female_data_47 = [Female_data_47; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 48
        Female_data_48 = [Female_data_48; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 49
        Female_data_49 = [Female_data_49; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 50
        Female_data_50 = [Female_data_50; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 51
        Female_data_51 = [Female_data_51; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 52
        Female_data_52 = [Female_data_52; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 53
        Female_data_53 = [Female_data_53; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 54
        Female_data_54 = [Female_data_54; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 55
        Female_data_55 = [Female_data_55; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 56
        Female_data_56 = [Female_data_56; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 57
        Female_data_57 = [Female_data_57; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 58
        Female_data_58 = [Female_data_58; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 59
        Female_data_59 = [Female_data_59; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 60
        Female_data_60 = [Female_data_60; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 61
        Female_data_61 = [Female_data_61; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 62
        Female_data_62 = [Female_data_62; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 63
        Female_data_63 = [Female_data_63; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 64
        Female_data_64 = [Female_data_64; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 65
        Female_data_65 = [Female_data_65; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 66
        Female_data_66 = [Female_data_66; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 67
        Female_data_67 = [Female_data_67; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 68
        Female_data_68 = [Female_data_68; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 69
        Female_data_69 = [Female_data_69; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 70
        Female_data_70 = [Female_data_70; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 71
        Female_data_71 = [Female_data_71; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 72
        Female_data_72 = [Female_data_72; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 73
        Female_data_73 = [Female_data_73; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 74
        Female_data_74 = [Female_data_74; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 75
        Female_data_75 = [Female_data_75; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 76
        Female_data_76 = [Female_data_76; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 77
        Female_data_77 = [Female_data_77; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 78
        Female_data_78 = [Female_data_78; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 79
        Female_data_79 = [Female_data_79; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 80
        Female_data_80 = [Female_data_80; Female_data(i,4) Female_data(i,5)];
    end
end

% For Male
[M N] = size(Male_data); % No.	Respondent sequence number	Age in years at screening	Standing Height (cm)	Weight (kg)
for i = 1:M
    if Male_data(i,3) == 2
        Male_data_2 = [Male_data_2; Male_data(i,4) Male_data(i,5)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,3) == 3
        Male_data_3 = [Male_data_3; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 4
        Male_data_4 = [Male_data_4; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 5
        Male_data_5 = [Male_data_5; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 6
        Male_data_6 = [Male_data_6; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 7
        Male_data_7 = [Male_data_7; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 8
        Male_data_8 = [Male_data_8; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 9
        Male_data_9 = [Male_data_9; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 10
        Male_data_10 = [Male_data_10; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 11
        Male_data_11 = [Male_data_11; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 12
        Male_data_12 = [Male_data_12; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 13
        Male_data_13 = [Male_data_13; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 14
        Male_data_14 = [Male_data_14; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 15
        Male_data_15 = [Male_data_15; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 16
        Male_data_16 = [Male_data_16; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 17
        Male_data_17 = [Male_data_17; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 18
        Male_data_18 = [Male_data_18; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 19
        Male_data_19 = [Male_data_19; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 20
        Male_data_20 = [Male_data_20; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 21
        Male_data_21 = [Male_data_21; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 22
        Male_data_22 = [Male_data_22; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 23
        Male_data_23 = [Male_data_23; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 24
        Male_data_24 = [Male_data_24; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 25
        Male_data_25 = [Male_data_25; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 26
        Male_data_26 = [Male_data_26; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 27
        Male_data_27 = [Male_data_27; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 28
        Male_data_28 = [Male_data_28; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 29
        Male_data_29 = [Male_data_29; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 30
        Male_data_30 = [Male_data_30; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 31
        Male_data_31 = [Male_data_31; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 32
        Male_data_32 = [Male_data_32; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 33
        Male_data_33 = [Male_data_33; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 34
        Male_data_34 = [Male_data_34; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 35
        Male_data_35 = [Male_data_35; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 36
        Male_data_36 = [Male_data_36; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 37
        Male_data_37 = [Male_data_37; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 38
        Male_data_38 = [Male_data_38; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 39
        Male_data_39 = [Male_data_39; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 40
        Male_data_40 = [Male_data_40; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 41
        Male_data_41 = [Male_data_41; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 42
        Male_data_42 = [Male_data_42; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 43
        Male_data_43 = [Male_data_43; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 44
        Male_data_44 = [Male_data_44; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 45
        Male_data_45 = [Male_data_45; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 46
        Male_data_46 = [Male_data_46; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 47
        Male_data_47 = [Male_data_47; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 48
        Male_data_48 = [Male_data_48; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 49
        Male_data_49 = [Male_data_49; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 50
        Male_data_50 = [Male_data_50; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 51
        Male_data_51 = [Male_data_51; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 52
        Male_data_52 = [Male_data_52; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 53
        Male_data_53 = [Male_data_53; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 54
        Male_data_54 = [Male_data_54; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 55
        Male_data_55 = [Male_data_55; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 56
        Male_data_56 = [Male_data_56; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 57
        Male_data_57 = [Male_data_57; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 58
        Male_data_58 = [Male_data_58; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 59
        Male_data_59 = [Male_data_59; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 60
        Male_data_60 = [Male_data_60; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 61
        Male_data_61 = [Male_data_61; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 62
        Male_data_62 = [Male_data_62; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 63
        Male_data_63 = [Male_data_63; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 64
        Male_data_64 = [Male_data_64; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 65
        Male_data_65 = [Male_data_65; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 66
        Male_data_66 = [Male_data_66; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 67
        Male_data_67 = [Male_data_67; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 68
        Male_data_68 = [Male_data_68; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 69
        Male_data_69 = [Male_data_69; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 70
        Male_data_70 = [Male_data_70; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 71
        Male_data_71 = [Male_data_71; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 72
        Male_data_72 = [Male_data_72; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 73
        Male_data_73 = [Male_data_73; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 74
        Male_data_74 = [Male_data_74; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 75
        Male_data_75 = [Male_data_75; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 76
        Male_data_76 = [Male_data_76; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 77
        Male_data_77 = [Male_data_77; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 78
        Male_data_78 = [Male_data_78; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 79
        Male_data_79 = [Male_data_79; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 80
        Male_data_80 = [Male_data_80; Male_data(i,4) Male_data(i,5)];
    end
end

% We calculate the correlation coefficients
% Weight VS Weight*Height^c
Age_NHANES_2011_2012 = 2:80;
Corr_NHANES_2011_2012_Female = [My_Corr(Female_data_2(:,2),Female_data_2(:,2).*(Female_data_2(:,1)/100).^c) ...
    My_Corr(Female_data_3(:,2),Female_data_3(:,2).*(Female_data_3(:,1)/100).^c) ...
    My_Corr(Female_data_4(:,2),Female_data_4(:,2).*(Female_data_4(:,1)/100).^c) ...
    My_Corr(Female_data_5(:,2),Female_data_5(:,2).*(Female_data_5(:,1)/100).^c) ...
    My_Corr(Female_data_6(:,2),Female_data_6(:,2).*(Female_data_6(:,1)/100).^c) ...
    My_Corr(Female_data_7(:,2),Female_data_7(:,2).*(Female_data_7(:,1)/100).^c) ...
    My_Corr(Female_data_8(:,2),Female_data_8(:,2).*(Female_data_8(:,1)/100).^c) ...
    My_Corr(Female_data_9(:,2),Female_data_9(:,2).*(Female_data_9(:,1)/100).^c) ...
    My_Corr(Female_data_10(:,2),Female_data_10(:,2).*(Female_data_10(:,1)/100).^c) ...
    My_Corr(Female_data_11(:,2),Female_data_11(:,2).*(Female_data_11(:,1)/100).^c) ...
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
    My_Corr(Female_data_80(:,2),Female_data_80(:,2).*(Female_data_80(:,1)/100).^c)
    ];

Corr_NHANES_2011_2012_Male = [My_Corr(Male_data_2(:,2),Male_data_2(:,2).*(Male_data_2(:,1)/100).^c) ...
    My_Corr(Male_data_3(:,2),Male_data_3(:,2).*(Male_data_3(:,1)/100).^c) ...
    My_Corr(Male_data_4(:,2),Male_data_4(:,2).*(Male_data_4(:,1)/100).^c) ...
    My_Corr(Male_data_5(:,2),Male_data_5(:,2).*(Male_data_5(:,1)/100).^c) ...
    My_Corr(Male_data_6(:,2),Male_data_6(:,2).*(Male_data_6(:,1)/100).^c) ...
    My_Corr(Male_data_7(:,2),Male_data_7(:,2).*(Male_data_7(:,1)/100).^c) ...
    My_Corr(Male_data_8(:,2),Male_data_8(:,2).*(Male_data_8(:,1)/100).^c) ...
    My_Corr(Male_data_9(:,2),Male_data_9(:,2).*(Male_data_9(:,1)/100).^c) ...
    My_Corr(Male_data_10(:,2),Male_data_10(:,2).*(Male_data_10(:,1)/100).^c) ...
    My_Corr(Male_data_11(:,2),Male_data_11(:,2).*(Male_data_11(:,1)/100).^c) ...
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
    My_Corr(Male_data_80(:,2),Male_data_80(:,2).*(Male_data_80(:,1)/100).^c)
    ];

%% NHANES 2013-2014.xlsx
% Loading the data
Female_data = xlsread('NHANES 2013-2014.xlsx','Female');
Male_data = xlsread('NHANES 2013-2014.xlsx','Male');
% Grouping by age
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
Female_data_80 = []; % >=80

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
Male_data_80 = []; % >=85

% For Female
[M N] = size(Female_data); % No.	Respondent sequence number	Age in years at screening	Standing Height (cm)	Weight (kg)
for i = 1:M
    if Female_data(i,3) == 2
        Female_data_2 = [Female_data_2; Female_data(i,4) Female_data(i,5)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,3) == 3
        Female_data_3 = [Female_data_3; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 4
        Female_data_4 = [Female_data_4; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 5
        Female_data_5 = [Female_data_5; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 6
        Female_data_6 = [Female_data_6; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 7
        Female_data_7 = [Female_data_7; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 8
        Female_data_8 = [Female_data_8; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 9
        Female_data_9 = [Female_data_9; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 10
        Female_data_10 = [Female_data_10; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 11
        Female_data_11 = [Female_data_11; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 12
        Female_data_12 = [Female_data_12; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 13
        Female_data_13 = [Female_data_13; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 14
        Female_data_14 = [Female_data_14; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 15
        Female_data_15 = [Female_data_15; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 16
        Female_data_16 = [Female_data_16; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 17
        Female_data_17 = [Female_data_17; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 18
        Female_data_18 = [Female_data_18; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 19
        Female_data_19 = [Female_data_19; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 20
        Female_data_20 = [Female_data_20; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 21
        Female_data_21 = [Female_data_21; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 22
        Female_data_22 = [Female_data_22; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 23
        Female_data_23 = [Female_data_23; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 24
        Female_data_24 = [Female_data_24; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 25
        Female_data_25 = [Female_data_25; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 26
        Female_data_26 = [Female_data_26; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 27
        Female_data_27 = [Female_data_27; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 28
        Female_data_28 = [Female_data_28; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 29
        Female_data_29 = [Female_data_29; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 30
        Female_data_30 = [Female_data_30; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 31
        Female_data_31 = [Female_data_31; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 32
        Female_data_32 = [Female_data_32; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 33
        Female_data_33 = [Female_data_33; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 34
        Female_data_34 = [Female_data_34; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 35
        Female_data_35 = [Female_data_35; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 36
        Female_data_36 = [Female_data_36; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 37
        Female_data_37 = [Female_data_37; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 38
        Female_data_38 = [Female_data_38; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 39
        Female_data_39 = [Female_data_39; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 40
        Female_data_40 = [Female_data_40; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 41
        Female_data_41 = [Female_data_41; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 42
        Female_data_42 = [Female_data_42; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 43
        Female_data_43 = [Female_data_43; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 44
        Female_data_44 = [Female_data_44; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 45
        Female_data_45 = [Female_data_45; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 46
        Female_data_46 = [Female_data_46; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 47
        Female_data_47 = [Female_data_47; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 48
        Female_data_48 = [Female_data_48; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 49
        Female_data_49 = [Female_data_49; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 50
        Female_data_50 = [Female_data_50; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 51
        Female_data_51 = [Female_data_51; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 52
        Female_data_52 = [Female_data_52; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 53
        Female_data_53 = [Female_data_53; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 54
        Female_data_54 = [Female_data_54; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 55
        Female_data_55 = [Female_data_55; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 56
        Female_data_56 = [Female_data_56; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 57
        Female_data_57 = [Female_data_57; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 58
        Female_data_58 = [Female_data_58; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 59
        Female_data_59 = [Female_data_59; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 60
        Female_data_60 = [Female_data_60; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 61
        Female_data_61 = [Female_data_61; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 62
        Female_data_62 = [Female_data_62; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 63
        Female_data_63 = [Female_data_63; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 64
        Female_data_64 = [Female_data_64; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 65
        Female_data_65 = [Female_data_65; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 66
        Female_data_66 = [Female_data_66; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 67
        Female_data_67 = [Female_data_67; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 68
        Female_data_68 = [Female_data_68; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 69
        Female_data_69 = [Female_data_69; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 70
        Female_data_70 = [Female_data_70; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 71
        Female_data_71 = [Female_data_71; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 72
        Female_data_72 = [Female_data_72; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 73
        Female_data_73 = [Female_data_73; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 74
        Female_data_74 = [Female_data_74; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 75
        Female_data_75 = [Female_data_75; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 76
        Female_data_76 = [Female_data_76; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 77
        Female_data_77 = [Female_data_77; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 78
        Female_data_78 = [Female_data_78; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 79
        Female_data_79 = [Female_data_79; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 80
        Female_data_80 = [Female_data_80; Female_data(i,4) Female_data(i,5)];
    end
end

% For Male
[M N] = size(Male_data); % No.	Respondent sequence number	Age in years at screening	Standing Height (cm)	Weight (kg)
for i = 1:M
    if Male_data(i,3) == 2
        Male_data_2 = [Male_data_2; Male_data(i,4) Male_data(i,5)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,3) == 3
        Male_data_3 = [Male_data_3; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 4
        Male_data_4 = [Male_data_4; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 5
        Male_data_5 = [Male_data_5; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 6
        Male_data_6 = [Male_data_6; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 7
        Male_data_7 = [Male_data_7; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 8
        Male_data_8 = [Male_data_8; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 9
        Male_data_9 = [Male_data_9; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 10
        Male_data_10 = [Male_data_10; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 11
        Male_data_11 = [Male_data_11; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 12
        Male_data_12 = [Male_data_12; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 13
        Male_data_13 = [Male_data_13; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 14
        Male_data_14 = [Male_data_14; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 15
        Male_data_15 = [Male_data_15; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 16
        Male_data_16 = [Male_data_16; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 17
        Male_data_17 = [Male_data_17; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 18
        Male_data_18 = [Male_data_18; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 19
        Male_data_19 = [Male_data_19; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 20
        Male_data_20 = [Male_data_20; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 21
        Male_data_21 = [Male_data_21; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 22
        Male_data_22 = [Male_data_22; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 23
        Male_data_23 = [Male_data_23; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 24
        Male_data_24 = [Male_data_24; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 25
        Male_data_25 = [Male_data_25; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 26
        Male_data_26 = [Male_data_26; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 27
        Male_data_27 = [Male_data_27; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 28
        Male_data_28 = [Male_data_28; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 29
        Male_data_29 = [Male_data_29; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 30
        Male_data_30 = [Male_data_30; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 31
        Male_data_31 = [Male_data_31; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 32
        Male_data_32 = [Male_data_32; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 33
        Male_data_33 = [Male_data_33; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 34
        Male_data_34 = [Male_data_34; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 35
        Male_data_35 = [Male_data_35; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 36
        Male_data_36 = [Male_data_36; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 37
        Male_data_37 = [Male_data_37; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 38
        Male_data_38 = [Male_data_38; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 39
        Male_data_39 = [Male_data_39; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 40
        Male_data_40 = [Male_data_40; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 41
        Male_data_41 = [Male_data_41; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 42
        Male_data_42 = [Male_data_42; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 43
        Male_data_43 = [Male_data_43; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 44
        Male_data_44 = [Male_data_44; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 45
        Male_data_45 = [Male_data_45; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 46
        Male_data_46 = [Male_data_46; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 47
        Male_data_47 = [Male_data_47; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 48
        Male_data_48 = [Male_data_48; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 49
        Male_data_49 = [Male_data_49; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 50
        Male_data_50 = [Male_data_50; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 51
        Male_data_51 = [Male_data_51; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 52
        Male_data_52 = [Male_data_52; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 53
        Male_data_53 = [Male_data_53; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 54
        Male_data_54 = [Male_data_54; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 55
        Male_data_55 = [Male_data_55; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 56
        Male_data_56 = [Male_data_56; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 57
        Male_data_57 = [Male_data_57; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 58
        Male_data_58 = [Male_data_58; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 59
        Male_data_59 = [Male_data_59; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 60
        Male_data_60 = [Male_data_60; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 61
        Male_data_61 = [Male_data_61; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 62
        Male_data_62 = [Male_data_62; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 63
        Male_data_63 = [Male_data_63; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 64
        Male_data_64 = [Male_data_64; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 65
        Male_data_65 = [Male_data_65; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 66
        Male_data_66 = [Male_data_66; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 67
        Male_data_67 = [Male_data_67; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 68
        Male_data_68 = [Male_data_68; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 69
        Male_data_69 = [Male_data_69; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 70
        Male_data_70 = [Male_data_70; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 71
        Male_data_71 = [Male_data_71; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 72
        Male_data_72 = [Male_data_72; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 73
        Male_data_73 = [Male_data_73; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 74
        Male_data_74 = [Male_data_74; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 75
        Male_data_75 = [Male_data_75; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 76
        Male_data_76 = [Male_data_76; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 77
        Male_data_77 = [Male_data_77; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 78
        Male_data_78 = [Male_data_78; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 79
        Male_data_79 = [Male_data_79; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 80
        Male_data_80 = [Male_data_80; Male_data(i,4) Male_data(i,5)];
    end
end

% We calculate the correlation coefficients
% Weight VS Weight*Height^c
Age_NHANES_2013_2014 = 2:80;
Corr_NHANES_2013_2014_Female = [My_Corr(Female_data_2(:,2),Female_data_2(:,2).*(Female_data_2(:,1)/100).^c) ...
    My_Corr(Female_data_3(:,2),Female_data_3(:,2).*(Female_data_3(:,1)/100).^c) ...
    My_Corr(Female_data_4(:,2),Female_data_4(:,2).*(Female_data_4(:,1)/100).^c) ...
    My_Corr(Female_data_5(:,2),Female_data_5(:,2).*(Female_data_5(:,1)/100).^c) ...
    My_Corr(Female_data_6(:,2),Female_data_6(:,2).*(Female_data_6(:,1)/100).^c) ...
    My_Corr(Female_data_7(:,2),Female_data_7(:,2).*(Female_data_7(:,1)/100).^c) ...
    My_Corr(Female_data_8(:,2),Female_data_8(:,2).*(Female_data_8(:,1)/100).^c) ...
    My_Corr(Female_data_9(:,2),Female_data_9(:,2).*(Female_data_9(:,1)/100).^c) ...
    My_Corr(Female_data_10(:,2),Female_data_10(:,2).*(Female_data_10(:,1)/100).^c) ...
    My_Corr(Female_data_11(:,2),Female_data_11(:,2).*(Female_data_11(:,1)/100).^c) ...
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
    My_Corr(Female_data_80(:,2),Female_data_80(:,2).*(Female_data_80(:,1)/100).^c)
    ];

Corr_NHANES_2013_2014_Male = [My_Corr(Male_data_2(:,2),Male_data_2(:,2).*(Male_data_2(:,1)/100).^c) ...
    My_Corr(Male_data_3(:,2),Male_data_3(:,2).*(Male_data_3(:,1)/100).^c) ...
    My_Corr(Male_data_4(:,2),Male_data_4(:,2).*(Male_data_4(:,1)/100).^c) ...
    My_Corr(Male_data_5(:,2),Male_data_5(:,2).*(Male_data_5(:,1)/100).^c) ...
    My_Corr(Male_data_6(:,2),Male_data_6(:,2).*(Male_data_6(:,1)/100).^c) ...
    My_Corr(Male_data_7(:,2),Male_data_7(:,2).*(Male_data_7(:,1)/100).^c) ...
    My_Corr(Male_data_8(:,2),Male_data_8(:,2).*(Male_data_8(:,1)/100).^c) ...
    My_Corr(Male_data_9(:,2),Male_data_9(:,2).*(Male_data_9(:,1)/100).^c) ...
    My_Corr(Male_data_10(:,2),Male_data_10(:,2).*(Male_data_10(:,1)/100).^c) ...
    My_Corr(Male_data_11(:,2),Male_data_11(:,2).*(Male_data_11(:,1)/100).^c) ...
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
    My_Corr(Male_data_80(:,2),Male_data_80(:,2).*(Male_data_80(:,1)/100).^c)
    ];

%% NHANES 2015-2016.xlsx
% Loading the data
Female_data = xlsread('NHANES 2015-2016.xlsx','Female');
Male_data = xlsread('NHANES 2015-2016.xlsx','Male');
% Grouping by age
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
Female_data_80 = []; % >=80

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
Male_data_80 = []; % >=85

% For Female
[M N] = size(Female_data); % No.	Respondent sequence number	Age in years at screening	Standing Height (cm)	Weight (kg)
for i = 1:M
    if Female_data(i,3) == 2
        Female_data_2 = [Female_data_2; Female_data(i,4) Female_data(i,5)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,3) == 3
        Female_data_3 = [Female_data_3; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 4
        Female_data_4 = [Female_data_4; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 5
        Female_data_5 = [Female_data_5; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 6
        Female_data_6 = [Female_data_6; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 7
        Female_data_7 = [Female_data_7; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 8
        Female_data_8 = [Female_data_8; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 9
        Female_data_9 = [Female_data_9; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 10
        Female_data_10 = [Female_data_10; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 11
        Female_data_11 = [Female_data_11; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 12
        Female_data_12 = [Female_data_12; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 13
        Female_data_13 = [Female_data_13; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 14
        Female_data_14 = [Female_data_14; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 15
        Female_data_15 = [Female_data_15; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 16
        Female_data_16 = [Female_data_16; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 17
        Female_data_17 = [Female_data_17; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 18
        Female_data_18 = [Female_data_18; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 19
        Female_data_19 = [Female_data_19; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 20
        Female_data_20 = [Female_data_20; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 21
        Female_data_21 = [Female_data_21; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 22
        Female_data_22 = [Female_data_22; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 23
        Female_data_23 = [Female_data_23; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 24
        Female_data_24 = [Female_data_24; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 25
        Female_data_25 = [Female_data_25; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 26
        Female_data_26 = [Female_data_26; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 27
        Female_data_27 = [Female_data_27; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 28
        Female_data_28 = [Female_data_28; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 29
        Female_data_29 = [Female_data_29; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 30
        Female_data_30 = [Female_data_30; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 31
        Female_data_31 = [Female_data_31; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 32
        Female_data_32 = [Female_data_32; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 33
        Female_data_33 = [Female_data_33; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 34
        Female_data_34 = [Female_data_34; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 35
        Female_data_35 = [Female_data_35; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 36
        Female_data_36 = [Female_data_36; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 37
        Female_data_37 = [Female_data_37; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 38
        Female_data_38 = [Female_data_38; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 39
        Female_data_39 = [Female_data_39; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 40
        Female_data_40 = [Female_data_40; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 41
        Female_data_41 = [Female_data_41; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 42
        Female_data_42 = [Female_data_42; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 43
        Female_data_43 = [Female_data_43; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 44
        Female_data_44 = [Female_data_44; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 45
        Female_data_45 = [Female_data_45; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 46
        Female_data_46 = [Female_data_46; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 47
        Female_data_47 = [Female_data_47; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 48
        Female_data_48 = [Female_data_48; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 49
        Female_data_49 = [Female_data_49; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 50
        Female_data_50 = [Female_data_50; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 51
        Female_data_51 = [Female_data_51; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 52
        Female_data_52 = [Female_data_52; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 53
        Female_data_53 = [Female_data_53; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 54
        Female_data_54 = [Female_data_54; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 55
        Female_data_55 = [Female_data_55; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 56
        Female_data_56 = [Female_data_56; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 57
        Female_data_57 = [Female_data_57; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 58
        Female_data_58 = [Female_data_58; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 59
        Female_data_59 = [Female_data_59; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 60
        Female_data_60 = [Female_data_60; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 61
        Female_data_61 = [Female_data_61; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 62
        Female_data_62 = [Female_data_62; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 63
        Female_data_63 = [Female_data_63; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 64
        Female_data_64 = [Female_data_64; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 65
        Female_data_65 = [Female_data_65; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 66
        Female_data_66 = [Female_data_66; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 67
        Female_data_67 = [Female_data_67; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 68
        Female_data_68 = [Female_data_68; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 69
        Female_data_69 = [Female_data_69; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 70
        Female_data_70 = [Female_data_70; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 71
        Female_data_71 = [Female_data_71; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 72
        Female_data_72 = [Female_data_72; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 73
        Female_data_73 = [Female_data_73; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 74
        Female_data_74 = [Female_data_74; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 75
        Female_data_75 = [Female_data_75; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 76
        Female_data_76 = [Female_data_76; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 77
        Female_data_77 = [Female_data_77; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 78
        Female_data_78 = [Female_data_78; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 79
        Female_data_79 = [Female_data_79; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 80
        Female_data_80 = [Female_data_80; Female_data(i,4) Female_data(i,5)];
    end
end

% For Male
[M N] = size(Male_data); % No.	Respondent sequence number	Age in years at screening	Standing Height (cm)	Weight (kg)
for i = 1:M
    if Male_data(i,3) == 2
        Male_data_2 = [Male_data_2; Male_data(i,4) Male_data(i,5)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,3) == 3
        Male_data_3 = [Male_data_3; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 4
        Male_data_4 = [Male_data_4; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 5
        Male_data_5 = [Male_data_5; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 6
        Male_data_6 = [Male_data_6; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 7
        Male_data_7 = [Male_data_7; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 8
        Male_data_8 = [Male_data_8; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 9
        Male_data_9 = [Male_data_9; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 10
        Male_data_10 = [Male_data_10; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 11
        Male_data_11 = [Male_data_11; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 12
        Male_data_12 = [Male_data_12; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 13
        Male_data_13 = [Male_data_13; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 14
        Male_data_14 = [Male_data_14; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 15
        Male_data_15 = [Male_data_15; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 16
        Male_data_16 = [Male_data_16; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 17
        Male_data_17 = [Male_data_17; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 18
        Male_data_18 = [Male_data_18; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 19
        Male_data_19 = [Male_data_19; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 20
        Male_data_20 = [Male_data_20; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 21
        Male_data_21 = [Male_data_21; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 22
        Male_data_22 = [Male_data_22; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 23
        Male_data_23 = [Male_data_23; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 24
        Male_data_24 = [Male_data_24; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 25
        Male_data_25 = [Male_data_25; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 26
        Male_data_26 = [Male_data_26; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 27
        Male_data_27 = [Male_data_27; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 28
        Male_data_28 = [Male_data_28; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 29
        Male_data_29 = [Male_data_29; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 30
        Male_data_30 = [Male_data_30; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 31
        Male_data_31 = [Male_data_31; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 32
        Male_data_32 = [Male_data_32; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 33
        Male_data_33 = [Male_data_33; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 34
        Male_data_34 = [Male_data_34; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 35
        Male_data_35 = [Male_data_35; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 36
        Male_data_36 = [Male_data_36; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 37
        Male_data_37 = [Male_data_37; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 38
        Male_data_38 = [Male_data_38; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 39
        Male_data_39 = [Male_data_39; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 40
        Male_data_40 = [Male_data_40; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 41
        Male_data_41 = [Male_data_41; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 42
        Male_data_42 = [Male_data_42; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 43
        Male_data_43 = [Male_data_43; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 44
        Male_data_44 = [Male_data_44; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 45
        Male_data_45 = [Male_data_45; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 46
        Male_data_46 = [Male_data_46; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 47
        Male_data_47 = [Male_data_47; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 48
        Male_data_48 = [Male_data_48; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 49
        Male_data_49 = [Male_data_49; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 50
        Male_data_50 = [Male_data_50; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 51
        Male_data_51 = [Male_data_51; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 52
        Male_data_52 = [Male_data_52; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 53
        Male_data_53 = [Male_data_53; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 54
        Male_data_54 = [Male_data_54; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 55
        Male_data_55 = [Male_data_55; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 56
        Male_data_56 = [Male_data_56; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 57
        Male_data_57 = [Male_data_57; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 58
        Male_data_58 = [Male_data_58; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 59
        Male_data_59 = [Male_data_59; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 60
        Male_data_60 = [Male_data_60; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 61
        Male_data_61 = [Male_data_61; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 62
        Male_data_62 = [Male_data_62; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 63
        Male_data_63 = [Male_data_63; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 64
        Male_data_64 = [Male_data_64; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 65
        Male_data_65 = [Male_data_65; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 66
        Male_data_66 = [Male_data_66; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 67
        Male_data_67 = [Male_data_67; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 68
        Male_data_68 = [Male_data_68; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 69
        Male_data_69 = [Male_data_69; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 70
        Male_data_70 = [Male_data_70; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 71
        Male_data_71 = [Male_data_71; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 72
        Male_data_72 = [Male_data_72; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 73
        Male_data_73 = [Male_data_73; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 74
        Male_data_74 = [Male_data_74; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 75
        Male_data_75 = [Male_data_75; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 76
        Male_data_76 = [Male_data_76; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 77
        Male_data_77 = [Male_data_77; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 78
        Male_data_78 = [Male_data_78; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 79
        Male_data_79 = [Male_data_79; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 80
        Male_data_80 = [Male_data_80; Male_data(i,4) Male_data(i,5)];
    end
end

% We calculate the correlation coefficients
% Weight VS Weight*Height^c
Age_NHANES_2015_2016 = 2:80;
Corr_NHANES_2015_2016_Female = [My_Corr(Female_data_2(:,2),Female_data_2(:,2).*(Female_data_2(:,1)/100).^c) ...
    My_Corr(Female_data_3(:,2),Female_data_3(:,2).*(Female_data_3(:,1)/100).^c) ...
    My_Corr(Female_data_4(:,2),Female_data_4(:,2).*(Female_data_4(:,1)/100).^c) ...
    My_Corr(Female_data_5(:,2),Female_data_5(:,2).*(Female_data_5(:,1)/100).^c) ...
    My_Corr(Female_data_6(:,2),Female_data_6(:,2).*(Female_data_6(:,1)/100).^c) ...
    My_Corr(Female_data_7(:,2),Female_data_7(:,2).*(Female_data_7(:,1)/100).^c) ...
    My_Corr(Female_data_8(:,2),Female_data_8(:,2).*(Female_data_8(:,1)/100).^c) ...
    My_Corr(Female_data_9(:,2),Female_data_9(:,2).*(Female_data_9(:,1)/100).^c) ...
    My_Corr(Female_data_10(:,2),Female_data_10(:,2).*(Female_data_10(:,1)/100).^c) ...
    My_Corr(Female_data_11(:,2),Female_data_11(:,2).*(Female_data_11(:,1)/100).^c) ...
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
    My_Corr(Female_data_80(:,2),Female_data_80(:,2).*(Female_data_80(:,1)/100).^c)
    ];

Corr_NHANES_2015_2016_Male = [My_Corr(Male_data_2(:,2),Male_data_2(:,2).*(Male_data_2(:,1)/100).^c) ...
    My_Corr(Male_data_3(:,2),Male_data_3(:,2).*(Male_data_3(:,1)/100).^c) ...
    My_Corr(Male_data_4(:,2),Male_data_4(:,2).*(Male_data_4(:,1)/100).^c) ...
    My_Corr(Male_data_5(:,2),Male_data_5(:,2).*(Male_data_5(:,1)/100).^c) ...
    My_Corr(Male_data_6(:,2),Male_data_6(:,2).*(Male_data_6(:,1)/100).^c) ...
    My_Corr(Male_data_7(:,2),Male_data_7(:,2).*(Male_data_7(:,1)/100).^c) ...
    My_Corr(Male_data_8(:,2),Male_data_8(:,2).*(Male_data_8(:,1)/100).^c) ...
    My_Corr(Male_data_9(:,2),Male_data_9(:,2).*(Male_data_9(:,1)/100).^c) ...
    My_Corr(Male_data_10(:,2),Male_data_10(:,2).*(Male_data_10(:,1)/100).^c) ...
    My_Corr(Male_data_11(:,2),Male_data_11(:,2).*(Male_data_11(:,1)/100).^c) ...
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
    My_Corr(Male_data_80(:,2),Male_data_80(:,2).*(Male_data_80(:,1)/100).^c)
    ];

%% NHANES 2017-2018.xlsx
% Loading the data
Female_data = xlsread('NHANES 2017-2018.xlsx','Female');
Male_data = xlsread('NHANES 2017-2018.xlsx','Male');
% Grouping by age
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
Female_data_80 = []; % >=80

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
Male_data_80 = []; % >=85

% For Female
[M N] = size(Female_data); % No.	Respondent sequence number	Age in years at screening	Standing Height (cm)	Weight (kg)
for i = 1:M
    if Female_data(i,3) == 2
        Female_data_2 = [Female_data_2; Female_data(i,4) Female_data(i,5)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,3) == 3
        Female_data_3 = [Female_data_3; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 4
        Female_data_4 = [Female_data_4; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 5
        Female_data_5 = [Female_data_5; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 6
        Female_data_6 = [Female_data_6; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 7
        Female_data_7 = [Female_data_7; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 8
        Female_data_8 = [Female_data_8; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 9
        Female_data_9 = [Female_data_9; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 10
        Female_data_10 = [Female_data_10; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 11
        Female_data_11 = [Female_data_11; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 12
        Female_data_12 = [Female_data_12; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 13
        Female_data_13 = [Female_data_13; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 14
        Female_data_14 = [Female_data_14; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 15
        Female_data_15 = [Female_data_15; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 16
        Female_data_16 = [Female_data_16; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 17
        Female_data_17 = [Female_data_17; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 18
        Female_data_18 = [Female_data_18; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 19
        Female_data_19 = [Female_data_19; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 20
        Female_data_20 = [Female_data_20; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 21
        Female_data_21 = [Female_data_21; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 22
        Female_data_22 = [Female_data_22; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 23
        Female_data_23 = [Female_data_23; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 24
        Female_data_24 = [Female_data_24; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 25
        Female_data_25 = [Female_data_25; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 26
        Female_data_26 = [Female_data_26; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 27
        Female_data_27 = [Female_data_27; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 28
        Female_data_28 = [Female_data_28; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 29
        Female_data_29 = [Female_data_29; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 30
        Female_data_30 = [Female_data_30; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 31
        Female_data_31 = [Female_data_31; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 32
        Female_data_32 = [Female_data_32; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 33
        Female_data_33 = [Female_data_33; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 34
        Female_data_34 = [Female_data_34; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 35
        Female_data_35 = [Female_data_35; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 36
        Female_data_36 = [Female_data_36; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 37
        Female_data_37 = [Female_data_37; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 38
        Female_data_38 = [Female_data_38; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 39
        Female_data_39 = [Female_data_39; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 40
        Female_data_40 = [Female_data_40; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 41
        Female_data_41 = [Female_data_41; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 42
        Female_data_42 = [Female_data_42; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 43
        Female_data_43 = [Female_data_43; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 44
        Female_data_44 = [Female_data_44; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 45
        Female_data_45 = [Female_data_45; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 46
        Female_data_46 = [Female_data_46; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 47
        Female_data_47 = [Female_data_47; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 48
        Female_data_48 = [Female_data_48; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 49
        Female_data_49 = [Female_data_49; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 50
        Female_data_50 = [Female_data_50; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 51
        Female_data_51 = [Female_data_51; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 52
        Female_data_52 = [Female_data_52; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 53
        Female_data_53 = [Female_data_53; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 54
        Female_data_54 = [Female_data_54; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 55
        Female_data_55 = [Female_data_55; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 56
        Female_data_56 = [Female_data_56; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 57
        Female_data_57 = [Female_data_57; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 58
        Female_data_58 = [Female_data_58; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 59
        Female_data_59 = [Female_data_59; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 60
        Female_data_60 = [Female_data_60; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 61
        Female_data_61 = [Female_data_61; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 62
        Female_data_62 = [Female_data_62; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 63
        Female_data_63 = [Female_data_63; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 64
        Female_data_64 = [Female_data_64; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 65
        Female_data_65 = [Female_data_65; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 66
        Female_data_66 = [Female_data_66; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 67
        Female_data_67 = [Female_data_67; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 68
        Female_data_68 = [Female_data_68; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 69
        Female_data_69 = [Female_data_69; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 70
        Female_data_70 = [Female_data_70; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 71
        Female_data_71 = [Female_data_71; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 72
        Female_data_72 = [Female_data_72; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 73
        Female_data_73 = [Female_data_73; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 74
        Female_data_74 = [Female_data_74; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 75
        Female_data_75 = [Female_data_75; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 76
        Female_data_76 = [Female_data_76; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 77
        Female_data_77 = [Female_data_77; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 78
        Female_data_78 = [Female_data_78; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 79
        Female_data_79 = [Female_data_79; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 80
        Female_data_80 = [Female_data_80; Female_data(i,4) Female_data(i,5)];
    end
end

% For Male
[M N] = size(Male_data); % No.	Respondent sequence number	Age in years at screening	Standing Height (cm)	Weight (kg)
for i = 1:M
    if Male_data(i,3) == 2
        Male_data_2 = [Male_data_2; Male_data(i,4) Male_data(i,5)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,3) == 3
        Male_data_3 = [Male_data_3; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 4
        Male_data_4 = [Male_data_4; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 5
        Male_data_5 = [Male_data_5; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 6
        Male_data_6 = [Male_data_6; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 7
        Male_data_7 = [Male_data_7; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 8
        Male_data_8 = [Male_data_8; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 9
        Male_data_9 = [Male_data_9; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 10
        Male_data_10 = [Male_data_10; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 11
        Male_data_11 = [Male_data_11; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 12
        Male_data_12 = [Male_data_12; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 13
        Male_data_13 = [Male_data_13; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 14
        Male_data_14 = [Male_data_14; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 15
        Male_data_15 = [Male_data_15; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 16
        Male_data_16 = [Male_data_16; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 17
        Male_data_17 = [Male_data_17; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 18
        Male_data_18 = [Male_data_18; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 19
        Male_data_19 = [Male_data_19; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 20
        Male_data_20 = [Male_data_20; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 21
        Male_data_21 = [Male_data_21; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 22
        Male_data_22 = [Male_data_22; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 23
        Male_data_23 = [Male_data_23; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 24
        Male_data_24 = [Male_data_24; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 25
        Male_data_25 = [Male_data_25; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 26
        Male_data_26 = [Male_data_26; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 27
        Male_data_27 = [Male_data_27; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 28
        Male_data_28 = [Male_data_28; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 29
        Male_data_29 = [Male_data_29; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 30
        Male_data_30 = [Male_data_30; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 31
        Male_data_31 = [Male_data_31; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 32
        Male_data_32 = [Male_data_32; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 33
        Male_data_33 = [Male_data_33; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 34
        Male_data_34 = [Male_data_34; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 35
        Male_data_35 = [Male_data_35; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 36
        Male_data_36 = [Male_data_36; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 37
        Male_data_37 = [Male_data_37; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 38
        Male_data_38 = [Male_data_38; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 39
        Male_data_39 = [Male_data_39; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 40
        Male_data_40 = [Male_data_40; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 41
        Male_data_41 = [Male_data_41; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 42
        Male_data_42 = [Male_data_42; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 43
        Male_data_43 = [Male_data_43; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 44
        Male_data_44 = [Male_data_44; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 45
        Male_data_45 = [Male_data_45; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 46
        Male_data_46 = [Male_data_46; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 47
        Male_data_47 = [Male_data_47; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 48
        Male_data_48 = [Male_data_48; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 49
        Male_data_49 = [Male_data_49; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 50
        Male_data_50 = [Male_data_50; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 51
        Male_data_51 = [Male_data_51; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 52
        Male_data_52 = [Male_data_52; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 53
        Male_data_53 = [Male_data_53; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 54
        Male_data_54 = [Male_data_54; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 55
        Male_data_55 = [Male_data_55; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 56
        Male_data_56 = [Male_data_56; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 57
        Male_data_57 = [Male_data_57; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 58
        Male_data_58 = [Male_data_58; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 59
        Male_data_59 = [Male_data_59; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 60
        Male_data_60 = [Male_data_60; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 61
        Male_data_61 = [Male_data_61; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 62
        Male_data_62 = [Male_data_62; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 63
        Male_data_63 = [Male_data_63; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 64
        Male_data_64 = [Male_data_64; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 65
        Male_data_65 = [Male_data_65; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 66
        Male_data_66 = [Male_data_66; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 67
        Male_data_67 = [Male_data_67; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 68
        Male_data_68 = [Male_data_68; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 69
        Male_data_69 = [Male_data_69; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 70
        Male_data_70 = [Male_data_70; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 71
        Male_data_71 = [Male_data_71; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 72
        Male_data_72 = [Male_data_72; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 73
        Male_data_73 = [Male_data_73; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 74
        Male_data_74 = [Male_data_74; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 75
        Male_data_75 = [Male_data_75; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 76
        Male_data_76 = [Male_data_76; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 77
        Male_data_77 = [Male_data_77; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 78
        Male_data_78 = [Male_data_78; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 79
        Male_data_79 = [Male_data_79; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 80
        Male_data_80 = [Male_data_80; Male_data(i,4) Male_data(i,5)];
    end
end

% We calculate the correlation coefficients
% Weight VS Weight*Height^c
Age_NHANES_2017_2018 = 2:80;
Corr_NHANES_2017_2018_Female = [My_Corr(Female_data_2(:,2),Female_data_2(:,2).*(Female_data_2(:,1)/100).^c) ...
    My_Corr(Female_data_3(:,2),Female_data_3(:,2).*(Female_data_3(:,1)/100).^c) ...
    My_Corr(Female_data_4(:,2),Female_data_4(:,2).*(Female_data_4(:,1)/100).^c) ...
    My_Corr(Female_data_5(:,2),Female_data_5(:,2).*(Female_data_5(:,1)/100).^c) ...
    My_Corr(Female_data_6(:,2),Female_data_6(:,2).*(Female_data_6(:,1)/100).^c) ...
    My_Corr(Female_data_7(:,2),Female_data_7(:,2).*(Female_data_7(:,1)/100).^c) ...
    My_Corr(Female_data_8(:,2),Female_data_8(:,2).*(Female_data_8(:,1)/100).^c) ...
    My_Corr(Female_data_9(:,2),Female_data_9(:,2).*(Female_data_9(:,1)/100).^c) ...
    My_Corr(Female_data_10(:,2),Female_data_10(:,2).*(Female_data_10(:,1)/100).^c) ...
    My_Corr(Female_data_11(:,2),Female_data_11(:,2).*(Female_data_11(:,1)/100).^c) ...
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
    My_Corr(Female_data_80(:,2),Female_data_80(:,2).*(Female_data_80(:,1)/100).^c)
    ];

Corr_NHANES_2017_2018_Male = [My_Corr(Male_data_2(:,2),Male_data_2(:,2).*(Male_data_2(:,1)/100).^c) ...
    My_Corr(Male_data_3(:,2),Male_data_3(:,2).*(Male_data_3(:,1)/100).^c) ...
    My_Corr(Male_data_4(:,2),Male_data_4(:,2).*(Male_data_4(:,1)/100).^c) ...
    My_Corr(Male_data_5(:,2),Male_data_5(:,2).*(Male_data_5(:,1)/100).^c) ...
    My_Corr(Male_data_6(:,2),Male_data_6(:,2).*(Male_data_6(:,1)/100).^c) ...
    My_Corr(Male_data_7(:,2),Male_data_7(:,2).*(Male_data_7(:,1)/100).^c) ...
    My_Corr(Male_data_8(:,2),Male_data_8(:,2).*(Male_data_8(:,1)/100).^c) ...
    My_Corr(Male_data_9(:,2),Male_data_9(:,2).*(Male_data_9(:,1)/100).^c) ...
    My_Corr(Male_data_10(:,2),Male_data_10(:,2).*(Male_data_10(:,1)/100).^c) ...
    My_Corr(Male_data_11(:,2),Male_data_11(:,2).*(Male_data_11(:,1)/100).^c) ...
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
    My_Corr(Male_data_80(:,2),Male_data_80(:,2).*(Male_data_80(:,1)/100).^c)
    ];

%% NHANES 2017-March 2020.xlsx
% Loading the data
Female_data = xlsread('NHANES 2017-March 2020.xlsx','Female');
Male_data = xlsread('NHANES 2017-March 2020.xlsx','Male');
% Grouping by age
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
Female_data_80 = []; % >=80

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
Male_data_80 = []; % >=85

% For Female
[M N] = size(Female_data); % No.	Respondent sequence number	Age in years at screening	Standing Height (cm)	Weight (kg)
for i = 1:M
    if Female_data(i,3) == 2
        Female_data_2 = [Female_data_2; Female_data(i,4) Female_data(i,5)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,3) == 3
        Female_data_3 = [Female_data_3; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 4
        Female_data_4 = [Female_data_4; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 5
        Female_data_5 = [Female_data_5; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 6
        Female_data_6 = [Female_data_6; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 7
        Female_data_7 = [Female_data_7; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 8
        Female_data_8 = [Female_data_8; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 9
        Female_data_9 = [Female_data_9; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 10
        Female_data_10 = [Female_data_10; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 11
        Female_data_11 = [Female_data_11; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 12
        Female_data_12 = [Female_data_12; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 13
        Female_data_13 = [Female_data_13; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 14
        Female_data_14 = [Female_data_14; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 15
        Female_data_15 = [Female_data_15; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 16
        Female_data_16 = [Female_data_16; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 17
        Female_data_17 = [Female_data_17; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 18
        Female_data_18 = [Female_data_18; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 19
        Female_data_19 = [Female_data_19; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 20
        Female_data_20 = [Female_data_20; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 21
        Female_data_21 = [Female_data_21; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 22
        Female_data_22 = [Female_data_22; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 23
        Female_data_23 = [Female_data_23; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 24
        Female_data_24 = [Female_data_24; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 25
        Female_data_25 = [Female_data_25; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 26
        Female_data_26 = [Female_data_26; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 27
        Female_data_27 = [Female_data_27; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 28
        Female_data_28 = [Female_data_28; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 29
        Female_data_29 = [Female_data_29; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 30
        Female_data_30 = [Female_data_30; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 31
        Female_data_31 = [Female_data_31; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 32
        Female_data_32 = [Female_data_32; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 33
        Female_data_33 = [Female_data_33; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 34
        Female_data_34 = [Female_data_34; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 35
        Female_data_35 = [Female_data_35; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 36
        Female_data_36 = [Female_data_36; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 37
        Female_data_37 = [Female_data_37; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 38
        Female_data_38 = [Female_data_38; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 39
        Female_data_39 = [Female_data_39; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 40
        Female_data_40 = [Female_data_40; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 41
        Female_data_41 = [Female_data_41; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 42
        Female_data_42 = [Female_data_42; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 43
        Female_data_43 = [Female_data_43; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 44
        Female_data_44 = [Female_data_44; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 45
        Female_data_45 = [Female_data_45; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 46
        Female_data_46 = [Female_data_46; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 47
        Female_data_47 = [Female_data_47; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 48
        Female_data_48 = [Female_data_48; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 49
        Female_data_49 = [Female_data_49; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 50
        Female_data_50 = [Female_data_50; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 51
        Female_data_51 = [Female_data_51; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 52
        Female_data_52 = [Female_data_52; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 53
        Female_data_53 = [Female_data_53; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 54
        Female_data_54 = [Female_data_54; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 55
        Female_data_55 = [Female_data_55; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 56
        Female_data_56 = [Female_data_56; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 57
        Female_data_57 = [Female_data_57; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 58
        Female_data_58 = [Female_data_58; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 59
        Female_data_59 = [Female_data_59; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 60
        Female_data_60 = [Female_data_60; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 61
        Female_data_61 = [Female_data_61; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 62
        Female_data_62 = [Female_data_62; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 63
        Female_data_63 = [Female_data_63; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 64
        Female_data_64 = [Female_data_64; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 65
        Female_data_65 = [Female_data_65; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 66
        Female_data_66 = [Female_data_66; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 67
        Female_data_67 = [Female_data_67; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 68
        Female_data_68 = [Female_data_68; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 69
        Female_data_69 = [Female_data_69; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 70
        Female_data_70 = [Female_data_70; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 71
        Female_data_71 = [Female_data_71; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 72
        Female_data_72 = [Female_data_72; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 73
        Female_data_73 = [Female_data_73; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 74
        Female_data_74 = [Female_data_74; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 75
        Female_data_75 = [Female_data_75; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 76
        Female_data_76 = [Female_data_76; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 77
        Female_data_77 = [Female_data_77; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 78
        Female_data_78 = [Female_data_78; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 79
        Female_data_79 = [Female_data_79; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 80
        Female_data_80 = [Female_data_80; Female_data(i,4) Female_data(i,5)];
    end
end

% For Male
[M N] = size(Male_data); % No.	Respondent sequence number	Age in years at screening	Standing Height (cm)	Weight (kg)
for i = 1:M
    if Male_data(i,3) == 2
        Male_data_2 = [Male_data_2; Male_data(i,4) Male_data(i,5)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,3) == 3
        Male_data_3 = [Male_data_3; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 4
        Male_data_4 = [Male_data_4; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 5
        Male_data_5 = [Male_data_5; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 6
        Male_data_6 = [Male_data_6; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 7
        Male_data_7 = [Male_data_7; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 8
        Male_data_8 = [Male_data_8; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 9
        Male_data_9 = [Male_data_9; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 10
        Male_data_10 = [Male_data_10; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 11
        Male_data_11 = [Male_data_11; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 12
        Male_data_12 = [Male_data_12; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 13
        Male_data_13 = [Male_data_13; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 14
        Male_data_14 = [Male_data_14; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 15
        Male_data_15 = [Male_data_15; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 16
        Male_data_16 = [Male_data_16; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 17
        Male_data_17 = [Male_data_17; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 18
        Male_data_18 = [Male_data_18; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 19
        Male_data_19 = [Male_data_19; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 20
        Male_data_20 = [Male_data_20; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 21
        Male_data_21 = [Male_data_21; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 22
        Male_data_22 = [Male_data_22; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 23
        Male_data_23 = [Male_data_23; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 24
        Male_data_24 = [Male_data_24; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 25
        Male_data_25 = [Male_data_25; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 26
        Male_data_26 = [Male_data_26; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 27
        Male_data_27 = [Male_data_27; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 28
        Male_data_28 = [Male_data_28; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 29
        Male_data_29 = [Male_data_29; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 30
        Male_data_30 = [Male_data_30; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 31
        Male_data_31 = [Male_data_31; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 32
        Male_data_32 = [Male_data_32; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 33
        Male_data_33 = [Male_data_33; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 34
        Male_data_34 = [Male_data_34; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 35
        Male_data_35 = [Male_data_35; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 36
        Male_data_36 = [Male_data_36; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 37
        Male_data_37 = [Male_data_37; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 38
        Male_data_38 = [Male_data_38; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 39
        Male_data_39 = [Male_data_39; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 40
        Male_data_40 = [Male_data_40; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 41
        Male_data_41 = [Male_data_41; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 42
        Male_data_42 = [Male_data_42; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 43
        Male_data_43 = [Male_data_43; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 44
        Male_data_44 = [Male_data_44; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 45
        Male_data_45 = [Male_data_45; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 46
        Male_data_46 = [Male_data_46; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 47
        Male_data_47 = [Male_data_47; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 48
        Male_data_48 = [Male_data_48; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 49
        Male_data_49 = [Male_data_49; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 50
        Male_data_50 = [Male_data_50; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 51
        Male_data_51 = [Male_data_51; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 52
        Male_data_52 = [Male_data_52; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 53
        Male_data_53 = [Male_data_53; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 54
        Male_data_54 = [Male_data_54; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 55
        Male_data_55 = [Male_data_55; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 56
        Male_data_56 = [Male_data_56; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 57
        Male_data_57 = [Male_data_57; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 58
        Male_data_58 = [Male_data_58; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 59
        Male_data_59 = [Male_data_59; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 60
        Male_data_60 = [Male_data_60; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 61
        Male_data_61 = [Male_data_61; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 62
        Male_data_62 = [Male_data_62; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 63
        Male_data_63 = [Male_data_63; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 64
        Male_data_64 = [Male_data_64; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 65
        Male_data_65 = [Male_data_65; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 66
        Male_data_66 = [Male_data_66; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 67
        Male_data_67 = [Male_data_67; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 68
        Male_data_68 = [Male_data_68; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 69
        Male_data_69 = [Male_data_69; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 70
        Male_data_70 = [Male_data_70; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 71
        Male_data_71 = [Male_data_71; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 72
        Male_data_72 = [Male_data_72; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 73
        Male_data_73 = [Male_data_73; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 74
        Male_data_74 = [Male_data_74; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 75
        Male_data_75 = [Male_data_75; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 76
        Male_data_76 = [Male_data_76; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 77
        Male_data_77 = [Male_data_77; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 78
        Male_data_78 = [Male_data_78; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 79
        Male_data_79 = [Male_data_79; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 80
        Male_data_80 = [Male_data_80; Male_data(i,4) Male_data(i,5)];
    end
end

% We calculate the correlation coefficients
% Weight VS Weight*Height^c
Age_NHANES_2017_March_2020 = 2:80;
Corr_NHANES_2017_March_2020_Female = [My_Corr(Female_data_2(:,2),Female_data_2(:,2).*(Female_data_2(:,1)/100).^c) ...
    My_Corr(Female_data_3(:,2),Female_data_3(:,2).*(Female_data_3(:,1)/100).^c) ...
    My_Corr(Female_data_4(:,2),Female_data_4(:,2).*(Female_data_4(:,1)/100).^c) ...
    My_Corr(Female_data_5(:,2),Female_data_5(:,2).*(Female_data_5(:,1)/100).^c) ...
    My_Corr(Female_data_6(:,2),Female_data_6(:,2).*(Female_data_6(:,1)/100).^c) ...
    My_Corr(Female_data_7(:,2),Female_data_7(:,2).*(Female_data_7(:,1)/100).^c) ...
    My_Corr(Female_data_8(:,2),Female_data_8(:,2).*(Female_data_8(:,1)/100).^c) ...
    My_Corr(Female_data_9(:,2),Female_data_9(:,2).*(Female_data_9(:,1)/100).^c) ...
    My_Corr(Female_data_10(:,2),Female_data_10(:,2).*(Female_data_10(:,1)/100).^c) ...
    My_Corr(Female_data_11(:,2),Female_data_11(:,2).*(Female_data_11(:,1)/100).^c) ...
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
    My_Corr(Female_data_80(:,2),Female_data_80(:,2).*(Female_data_80(:,1)/100).^c)
    ];

Corr_NHANES_2017_March_2020_Male = [My_Corr(Male_data_2(:,2),Male_data_2(:,2).*(Male_data_2(:,1)/100).^c) ...
    My_Corr(Male_data_3(:,2),Male_data_3(:,2).*(Male_data_3(:,1)/100).^c) ...
    My_Corr(Male_data_4(:,2),Male_data_4(:,2).*(Male_data_4(:,1)/100).^c) ...
    My_Corr(Male_data_5(:,2),Male_data_5(:,2).*(Male_data_5(:,1)/100).^c) ...
    My_Corr(Male_data_6(:,2),Male_data_6(:,2).*(Male_data_6(:,1)/100).^c) ...
    My_Corr(Male_data_7(:,2),Male_data_7(:,2).*(Male_data_7(:,1)/100).^c) ...
    My_Corr(Male_data_8(:,2),Male_data_8(:,2).*(Male_data_8(:,1)/100).^c) ...
    My_Corr(Male_data_9(:,2),Male_data_9(:,2).*(Male_data_9(:,1)/100).^c) ...
    My_Corr(Male_data_10(:,2),Male_data_10(:,2).*(Male_data_10(:,1)/100).^c) ...
    My_Corr(Male_data_11(:,2),Male_data_11(:,2).*(Male_data_11(:,1)/100).^c) ...
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
    My_Corr(Male_data_80(:,2),Male_data_80(:,2).*(Male_data_80(:,1)/100).^c)
    ];

%% NHANES August 2021-August 2023.xlsx
% Loading the data
Female_data = xlsread('NHANES August 2021-August 2023.xlsx','Female');
Male_data = xlsread('NHANES August 2021-August 2023.xlsx','Male');
% Grouping by age
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
Female_data_80 = []; % >=80

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
Male_data_80 = []; % >=85

% For Female
[M N] = size(Female_data); % No.	Respondent sequence number	Age in years at screening	Standing Height (cm)	Weight (kg)
for i = 1:M
    if Female_data(i,3) == 2
        Female_data_2 = [Female_data_2; Female_data(i,4) Female_data(i,5)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,3) == 3
        Female_data_3 = [Female_data_3; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 4
        Female_data_4 = [Female_data_4; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 5
        Female_data_5 = [Female_data_5; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 6
        Female_data_6 = [Female_data_6; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 7
        Female_data_7 = [Female_data_7; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 8
        Female_data_8 = [Female_data_8; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 9
        Female_data_9 = [Female_data_9; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 10
        Female_data_10 = [Female_data_10; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 11
        Female_data_11 = [Female_data_11; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 12
        Female_data_12 = [Female_data_12; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 13
        Female_data_13 = [Female_data_13; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 14
        Female_data_14 = [Female_data_14; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 15
        Female_data_15 = [Female_data_15; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 16
        Female_data_16 = [Female_data_16; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 17
        Female_data_17 = [Female_data_17; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 18
        Female_data_18 = [Female_data_18; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 19
        Female_data_19 = [Female_data_19; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 20
        Female_data_20 = [Female_data_20; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 21
        Female_data_21 = [Female_data_21; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 22
        Female_data_22 = [Female_data_22; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 23
        Female_data_23 = [Female_data_23; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 24
        Female_data_24 = [Female_data_24; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 25
        Female_data_25 = [Female_data_25; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 26
        Female_data_26 = [Female_data_26; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 27
        Female_data_27 = [Female_data_27; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 28
        Female_data_28 = [Female_data_28; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 29
        Female_data_29 = [Female_data_29; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 30
        Female_data_30 = [Female_data_30; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 31
        Female_data_31 = [Female_data_31; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 32
        Female_data_32 = [Female_data_32; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 33
        Female_data_33 = [Female_data_33; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 34
        Female_data_34 = [Female_data_34; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 35
        Female_data_35 = [Female_data_35; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 36
        Female_data_36 = [Female_data_36; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 37
        Female_data_37 = [Female_data_37; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 38
        Female_data_38 = [Female_data_38; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 39
        Female_data_39 = [Female_data_39; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 40
        Female_data_40 = [Female_data_40; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 41
        Female_data_41 = [Female_data_41; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 42
        Female_data_42 = [Female_data_42; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 43
        Female_data_43 = [Female_data_43; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 44
        Female_data_44 = [Female_data_44; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 45
        Female_data_45 = [Female_data_45; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 46
        Female_data_46 = [Female_data_46; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 47
        Female_data_47 = [Female_data_47; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 48
        Female_data_48 = [Female_data_48; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 49
        Female_data_49 = [Female_data_49; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 50
        Female_data_50 = [Female_data_50; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 51
        Female_data_51 = [Female_data_51; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 52
        Female_data_52 = [Female_data_52; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 53
        Female_data_53 = [Female_data_53; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 54
        Female_data_54 = [Female_data_54; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 55
        Female_data_55 = [Female_data_55; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 56
        Female_data_56 = [Female_data_56; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 57
        Female_data_57 = [Female_data_57; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 58
        Female_data_58 = [Female_data_58; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 59
        Female_data_59 = [Female_data_59; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 60
        Female_data_60 = [Female_data_60; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 61
        Female_data_61 = [Female_data_61; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 62
        Female_data_62 = [Female_data_62; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 63
        Female_data_63 = [Female_data_63; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 64
        Female_data_64 = [Female_data_64; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 65
        Female_data_65 = [Female_data_65; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 66
        Female_data_66 = [Female_data_66; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 67
        Female_data_67 = [Female_data_67; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 68
        Female_data_68 = [Female_data_68; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 69
        Female_data_69 = [Female_data_69; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 70
        Female_data_70 = [Female_data_70; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 71
        Female_data_71 = [Female_data_71; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 72
        Female_data_72 = [Female_data_72; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 73
        Female_data_73 = [Female_data_73; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 74
        Female_data_74 = [Female_data_74; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 75
        Female_data_75 = [Female_data_75; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 76
        Female_data_76 = [Female_data_76; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 77
        Female_data_77 = [Female_data_77; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 78
        Female_data_78 = [Female_data_78; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 79
        Female_data_79 = [Female_data_79; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 80
        Female_data_80 = [Female_data_80; Female_data(i,4) Female_data(i,5)];
    end
end

% For Male
[M N] = size(Male_data); % No.	Respondent sequence number	Age in years at screening	Standing Height (cm)	Weight (kg)
for i = 1:M
    if Male_data(i,3) == 2
        Male_data_2 = [Male_data_2; Male_data(i,4) Male_data(i,5)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,3) == 3
        Male_data_3 = [Male_data_3; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 4
        Male_data_4 = [Male_data_4; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 5
        Male_data_5 = [Male_data_5; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 6
        Male_data_6 = [Male_data_6; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 7
        Male_data_7 = [Male_data_7; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 8
        Male_data_8 = [Male_data_8; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 9
        Male_data_9 = [Male_data_9; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 10
        Male_data_10 = [Male_data_10; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 11
        Male_data_11 = [Male_data_11; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 12
        Male_data_12 = [Male_data_12; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 13
        Male_data_13 = [Male_data_13; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 14
        Male_data_14 = [Male_data_14; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 15
        Male_data_15 = [Male_data_15; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 16
        Male_data_16 = [Male_data_16; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 17
        Male_data_17 = [Male_data_17; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 18
        Male_data_18 = [Male_data_18; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 19
        Male_data_19 = [Male_data_19; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 20
        Male_data_20 = [Male_data_20; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 21
        Male_data_21 = [Male_data_21; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 22
        Male_data_22 = [Male_data_22; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 23
        Male_data_23 = [Male_data_23; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 24
        Male_data_24 = [Male_data_24; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 25
        Male_data_25 = [Male_data_25; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 26
        Male_data_26 = [Male_data_26; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 27
        Male_data_27 = [Male_data_27; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 28
        Male_data_28 = [Male_data_28; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 29
        Male_data_29 = [Male_data_29; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 30
        Male_data_30 = [Male_data_30; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 31
        Male_data_31 = [Male_data_31; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 32
        Male_data_32 = [Male_data_32; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 33
        Male_data_33 = [Male_data_33; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 34
        Male_data_34 = [Male_data_34; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 35
        Male_data_35 = [Male_data_35; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 36
        Male_data_36 = [Male_data_36; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 37
        Male_data_37 = [Male_data_37; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 38
        Male_data_38 = [Male_data_38; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 39
        Male_data_39 = [Male_data_39; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 40
        Male_data_40 = [Male_data_40; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 41
        Male_data_41 = [Male_data_41; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 42
        Male_data_42 = [Male_data_42; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 43
        Male_data_43 = [Male_data_43; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 44
        Male_data_44 = [Male_data_44; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 45
        Male_data_45 = [Male_data_45; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 46
        Male_data_46 = [Male_data_46; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 47
        Male_data_47 = [Male_data_47; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 48
        Male_data_48 = [Male_data_48; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 49
        Male_data_49 = [Male_data_49; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 50
        Male_data_50 = [Male_data_50; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 51
        Male_data_51 = [Male_data_51; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 52
        Male_data_52 = [Male_data_52; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 53
        Male_data_53 = [Male_data_53; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 54
        Male_data_54 = [Male_data_54; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 55
        Male_data_55 = [Male_data_55; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 56
        Male_data_56 = [Male_data_56; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 57
        Male_data_57 = [Male_data_57; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 58
        Male_data_58 = [Male_data_58; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 59
        Male_data_59 = [Male_data_59; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 60
        Male_data_60 = [Male_data_60; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 61
        Male_data_61 = [Male_data_61; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 62
        Male_data_62 = [Male_data_62; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 63
        Male_data_63 = [Male_data_63; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 64
        Male_data_64 = [Male_data_64; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 65
        Male_data_65 = [Male_data_65; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 66
        Male_data_66 = [Male_data_66; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 67
        Male_data_67 = [Male_data_67; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 68
        Male_data_68 = [Male_data_68; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 69
        Male_data_69 = [Male_data_69; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 70
        Male_data_70 = [Male_data_70; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 71
        Male_data_71 = [Male_data_71; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 72
        Male_data_72 = [Male_data_72; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 73
        Male_data_73 = [Male_data_73; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 74
        Male_data_74 = [Male_data_74; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 75
        Male_data_75 = [Male_data_75; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 76
        Male_data_76 = [Male_data_76; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 77
        Male_data_77 = [Male_data_77; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 78
        Male_data_78 = [Male_data_78; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 79
        Male_data_79 = [Male_data_79; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 80
        Male_data_80 = [Male_data_80; Male_data(i,4) Male_data(i,5)];
    end
end

% We calculate the correlation coefficients
% Weight VS Weight*Height^c
Age_NHANES_August_2021_August_2023 = 2:80;
Corr_NHANES_August_2021_August_2023_Female = [My_Corr(Female_data_2(:,2),Female_data_2(:,2).*(Female_data_2(:,1)/100).^c) ...
    My_Corr(Female_data_3(:,2),Female_data_3(:,2).*(Female_data_3(:,1)/100).^c) ...
    My_Corr(Female_data_4(:,2),Female_data_4(:,2).*(Female_data_4(:,1)/100).^c) ...
    My_Corr(Female_data_5(:,2),Female_data_5(:,2).*(Female_data_5(:,1)/100).^c) ...
    My_Corr(Female_data_6(:,2),Female_data_6(:,2).*(Female_data_6(:,1)/100).^c) ...
    My_Corr(Female_data_7(:,2),Female_data_7(:,2).*(Female_data_7(:,1)/100).^c) ...
    My_Corr(Female_data_8(:,2),Female_data_8(:,2).*(Female_data_8(:,1)/100).^c) ...
    My_Corr(Female_data_9(:,2),Female_data_9(:,2).*(Female_data_9(:,1)/100).^c) ...
    My_Corr(Female_data_10(:,2),Female_data_10(:,2).*(Female_data_10(:,1)/100).^c) ...
    My_Corr(Female_data_11(:,2),Female_data_11(:,2).*(Female_data_11(:,1)/100).^c) ...
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
    My_Corr(Female_data_80(:,2),Female_data_80(:,2).*(Female_data_80(:,1)/100).^c)
    ];

Corr_NHANES_August_2021_August_2023_Male = [My_Corr(Male_data_2(:,2),Male_data_2(:,2).*(Male_data_2(:,1)/100).^c) ...
    My_Corr(Male_data_3(:,2),Male_data_3(:,2).*(Male_data_3(:,1)/100).^c) ...
    My_Corr(Male_data_4(:,2),Male_data_4(:,2).*(Male_data_4(:,1)/100).^c) ...
    My_Corr(Male_data_5(:,2),Male_data_5(:,2).*(Male_data_5(:,1)/100).^c) ...
    My_Corr(Male_data_6(:,2),Male_data_6(:,2).*(Male_data_6(:,1)/100).^c) ...
    My_Corr(Male_data_7(:,2),Male_data_7(:,2).*(Male_data_7(:,1)/100).^c) ...
    My_Corr(Male_data_8(:,2),Male_data_8(:,2).*(Male_data_8(:,1)/100).^c) ...
    My_Corr(Male_data_9(:,2),Male_data_9(:,2).*(Male_data_9(:,1)/100).^c) ...
    My_Corr(Male_data_10(:,2),Male_data_10(:,2).*(Male_data_10(:,1)/100).^c) ...
    My_Corr(Male_data_11(:,2),Male_data_11(:,2).*(Male_data_11(:,1)/100).^c) ...
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
    My_Corr(Male_data_80(:,2),Male_data_80(:,2).*(Male_data_80(:,1)/100).^c)
    ];

%% NHANES ALL.xlsx
% Loading the data
Female_data = xlsread('NHANES ALL.xlsx','Female');
Male_data = xlsread('NHANES ALL.xlsx','Male');
% Grouping by age
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
Female_data_85 = []; % >=85

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
Male_data_85 = []; % >=85

% For Female
[M N] = size(Female_data); % No.	Respondent sequence number	Age in years at screening	Standing Height (cm)	Weight (kg)
for i = 1:M
    if Female_data(i,3) == 2
        Female_data_2 = [Female_data_2; Female_data(i,4) Female_data(i,5)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,3) == 3
        Female_data_3 = [Female_data_3; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 4
        Female_data_4 = [Female_data_4; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 5
        Female_data_5 = [Female_data_5; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 6
        Female_data_6 = [Female_data_6; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 7
        Female_data_7 = [Female_data_7; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 8
        Female_data_8 = [Female_data_8; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 9
        Female_data_9 = [Female_data_9; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 10
        Female_data_10 = [Female_data_10; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 11
        Female_data_11 = [Female_data_11; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 12
        Female_data_12 = [Female_data_12; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 13
        Female_data_13 = [Female_data_13; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 14
        Female_data_14 = [Female_data_14; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 15
        Female_data_15 = [Female_data_15; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 16
        Female_data_16 = [Female_data_16; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 17
        Female_data_17 = [Female_data_17; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 18
        Female_data_18 = [Female_data_18; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 19
        Female_data_19 = [Female_data_19; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 20
        Female_data_20 = [Female_data_20; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 21
        Female_data_21 = [Female_data_21; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 22
        Female_data_22 = [Female_data_22; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 23
        Female_data_23 = [Female_data_23; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 24
        Female_data_24 = [Female_data_24; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 25
        Female_data_25 = [Female_data_25; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 26
        Female_data_26 = [Female_data_26; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 27
        Female_data_27 = [Female_data_27; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 28
        Female_data_28 = [Female_data_28; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 29
        Female_data_29 = [Female_data_29; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 30
        Female_data_30 = [Female_data_30; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 31
        Female_data_31 = [Female_data_31; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 32
        Female_data_32 = [Female_data_32; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 33
        Female_data_33 = [Female_data_33; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 34
        Female_data_34 = [Female_data_34; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 35
        Female_data_35 = [Female_data_35; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 36
        Female_data_36 = [Female_data_36; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 37
        Female_data_37 = [Female_data_37; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 38
        Female_data_38 = [Female_data_38; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 39
        Female_data_39 = [Female_data_39; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 40
        Female_data_40 = [Female_data_40; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 41
        Female_data_41 = [Female_data_41; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 42
        Female_data_42 = [Female_data_42; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 43
        Female_data_43 = [Female_data_43; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 44
        Female_data_44 = [Female_data_44; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 45
        Female_data_45 = [Female_data_45; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 46
        Female_data_46 = [Female_data_46; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 47
        Female_data_47 = [Female_data_47; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 48
        Female_data_48 = [Female_data_48; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 49
        Female_data_49 = [Female_data_49; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 50
        Female_data_50 = [Female_data_50; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 51
        Female_data_51 = [Female_data_51; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 52
        Female_data_52 = [Female_data_52; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 53
        Female_data_53 = [Female_data_53; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 54
        Female_data_54 = [Female_data_54; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 55
        Female_data_55 = [Female_data_55; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 56
        Female_data_56 = [Female_data_56; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 57
        Female_data_57 = [Female_data_57; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 58
        Female_data_58 = [Female_data_58; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 59
        Female_data_59 = [Female_data_59; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 60
        Female_data_60 = [Female_data_60; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 61
        Female_data_61 = [Female_data_61; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 62
        Female_data_62 = [Female_data_62; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 63
        Female_data_63 = [Female_data_63; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 64
        Female_data_64 = [Female_data_64; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 65
        Female_data_65 = [Female_data_65; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 66
        Female_data_66 = [Female_data_66; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 67
        Female_data_67 = [Female_data_67; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 68
        Female_data_68 = [Female_data_68; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 69
        Female_data_69 = [Female_data_69; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 70
        Female_data_70 = [Female_data_70; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 71
        Female_data_71 = [Female_data_71; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 72
        Female_data_72 = [Female_data_72; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 73
        Female_data_73 = [Female_data_73; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 74
        Female_data_74 = [Female_data_74; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 75
        Female_data_75 = [Female_data_75; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 76
        Female_data_76 = [Female_data_76; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 77
        Female_data_77 = [Female_data_77; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 78
        Female_data_78 = [Female_data_78; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 79
        Female_data_79 = [Female_data_79; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 80
        Female_data_80 = [Female_data_80; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 81
        Female_data_81 = [Female_data_81; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 82
        Female_data_82 = [Female_data_82; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 83
        Female_data_83 = [Female_data_83; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 84
        Female_data_84 = [Female_data_84; Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 85
        Female_data_85 = [Female_data_85; Female_data(i,4) Female_data(i,5)];
    end
end

% For Male
[M N] = size(Male_data); % No.	Respondent sequence number	Age in years at screening	Standing Height (cm)	Weight (kg)
for i = 1:M
    if Male_data(i,3) == 2
        Male_data_2 = [Male_data_2; Male_data(i,4) Male_data(i,5)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,3) == 3
        Male_data_3 = [Male_data_3; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 4
        Male_data_4 = [Male_data_4; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 5
        Male_data_5 = [Male_data_5; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 6
        Male_data_6 = [Male_data_6; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 7
        Male_data_7 = [Male_data_7; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 8
        Male_data_8 = [Male_data_8; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 9
        Male_data_9 = [Male_data_9; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 10
        Male_data_10 = [Male_data_10; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 11
        Male_data_11 = [Male_data_11; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 12
        Male_data_12 = [Male_data_12; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 13
        Male_data_13 = [Male_data_13; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 14
        Male_data_14 = [Male_data_14; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 15
        Male_data_15 = [Male_data_15; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 16
        Male_data_16 = [Male_data_16; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 17
        Male_data_17 = [Male_data_17; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 18
        Male_data_18 = [Male_data_18; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 19
        Male_data_19 = [Male_data_19; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 20
        Male_data_20 = [Male_data_20; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 21
        Male_data_21 = [Male_data_21; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 22
        Male_data_22 = [Male_data_22; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 23
        Male_data_23 = [Male_data_23; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 24
        Male_data_24 = [Male_data_24; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 25
        Male_data_25 = [Male_data_25; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 26
        Male_data_26 = [Male_data_26; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 27
        Male_data_27 = [Male_data_27; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 28
        Male_data_28 = [Male_data_28; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 29
        Male_data_29 = [Male_data_29; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 30
        Male_data_30 = [Male_data_30; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 31
        Male_data_31 = [Male_data_31; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 32
        Male_data_32 = [Male_data_32; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 33
        Male_data_33 = [Male_data_33; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 34
        Male_data_34 = [Male_data_34; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 35
        Male_data_35 = [Male_data_35; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 36
        Male_data_36 = [Male_data_36; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 37
        Male_data_37 = [Male_data_37; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 38
        Male_data_38 = [Male_data_38; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 39
        Male_data_39 = [Male_data_39; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 40
        Male_data_40 = [Male_data_40; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 41
        Male_data_41 = [Male_data_41; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 42
        Male_data_42 = [Male_data_42; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 43
        Male_data_43 = [Male_data_43; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 44
        Male_data_44 = [Male_data_44; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 45
        Male_data_45 = [Male_data_45; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 46
        Male_data_46 = [Male_data_46; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 47
        Male_data_47 = [Male_data_47; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 48
        Male_data_48 = [Male_data_48; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 49
        Male_data_49 = [Male_data_49; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 50
        Male_data_50 = [Male_data_50; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 51
        Male_data_51 = [Male_data_51; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 52
        Male_data_52 = [Male_data_52; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 53
        Male_data_53 = [Male_data_53; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 54
        Male_data_54 = [Male_data_54; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 55
        Male_data_55 = [Male_data_55; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 56
        Male_data_56 = [Male_data_56; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 57
        Male_data_57 = [Male_data_57; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 58
        Male_data_58 = [Male_data_58; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 59
        Male_data_59 = [Male_data_59; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 60
        Male_data_60 = [Male_data_60; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 61
        Male_data_61 = [Male_data_61; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 62
        Male_data_62 = [Male_data_62; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 63
        Male_data_63 = [Male_data_63; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 64
        Male_data_64 = [Male_data_64; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 65
        Male_data_65 = [Male_data_65; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 66
        Male_data_66 = [Male_data_66; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 67
        Male_data_67 = [Male_data_67; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 68
        Male_data_68 = [Male_data_68; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 69
        Male_data_69 = [Male_data_69; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 70
        Male_data_70 = [Male_data_70; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 71
        Male_data_71 = [Male_data_71; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 72
        Male_data_72 = [Male_data_72; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 73
        Male_data_73 = [Male_data_73; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 74
        Male_data_74 = [Male_data_74; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 75
        Male_data_75 = [Male_data_75; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 76
        Male_data_76 = [Male_data_76; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 77
        Male_data_77 = [Male_data_77; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 78
        Male_data_78 = [Male_data_78; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 79
        Male_data_79 = [Male_data_79; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 80
        Male_data_80 = [Male_data_80; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 81
        Male_data_81 = [Male_data_81; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 82
        Male_data_82 = [Male_data_82; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 83
        Male_data_83 = [Male_data_83; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 84
        Male_data_84 = [Male_data_84; Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 85
        Male_data_85 = [Male_data_85; Male_data(i,4) Male_data(i,5)];
    end
end

% We calculate the correlation coefficients
% Weight VS Weight*Height^c
Age_NHANES_ALL = 2:85;
Corr_NHANES_ALL_Female = [My_Corr(Female_data_2(:,2),Female_data_2(:,2).*(Female_data_2(:,1)/100).^c) ...
    My_Corr(Female_data_3(:,2),Female_data_3(:,2).*(Female_data_3(:,1)/100).^c) ...
    My_Corr(Female_data_4(:,2),Female_data_4(:,2).*(Female_data_4(:,1)/100).^c) ...
    My_Corr(Female_data_5(:,2),Female_data_5(:,2).*(Female_data_5(:,1)/100).^c) ...
    My_Corr(Female_data_6(:,2),Female_data_6(:,2).*(Female_data_6(:,1)/100).^c) ...
    My_Corr(Female_data_7(:,2),Female_data_7(:,2).*(Female_data_7(:,1)/100).^c) ...
    My_Corr(Female_data_8(:,2),Female_data_8(:,2).*(Female_data_8(:,1)/100).^c) ...
    My_Corr(Female_data_9(:,2),Female_data_9(:,2).*(Female_data_9(:,1)/100).^c) ...
    My_Corr(Female_data_10(:,2),Female_data_10(:,2).*(Female_data_10(:,1)/100).^c) ...
    My_Corr(Female_data_11(:,2),Female_data_11(:,2).*(Female_data_11(:,1)/100).^c) ...
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
    My_Corr(Female_data_85(:,2),Female_data_85(:,2).*(Female_data_85(:,1)/100).^c)
    ];

Corr_NHANES_ALL_Male = [My_Corr(Male_data_2(:,2),Male_data_2(:,2).*(Male_data_2(:,1)/100).^c) ...
    My_Corr(Male_data_3(:,2),Male_data_3(:,2).*(Male_data_3(:,1)/100).^c) ...
    My_Corr(Male_data_4(:,2),Male_data_4(:,2).*(Male_data_4(:,1)/100).^c) ...
    My_Corr(Male_data_5(:,2),Male_data_5(:,2).*(Male_data_5(:,1)/100).^c) ...
    My_Corr(Male_data_6(:,2),Male_data_6(:,2).*(Male_data_6(:,1)/100).^c) ...
    My_Corr(Male_data_7(:,2),Male_data_7(:,2).*(Male_data_7(:,1)/100).^c) ...
    My_Corr(Male_data_8(:,2),Male_data_8(:,2).*(Male_data_8(:,1)/100).^c) ...
    My_Corr(Male_data_9(:,2),Male_data_9(:,2).*(Male_data_9(:,1)/100).^c) ...
    My_Corr(Male_data_10(:,2),Male_data_10(:,2).*(Male_data_10(:,1)/100).^c) ...
    My_Corr(Male_data_11(:,2),Male_data_11(:,2).*(Male_data_11(:,1)/100).^c) ...
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
    My_Corr(Male_data_85(:,2),Male_data_85(:,2).*(Male_data_85(:,1)/100).^c)
    ];

%% We show the results
figure;
% For female
subplot(2,1,1);
hold on;
title('Female')
xlabel('Age (yr)');
ylabel('Correlation coefficients')
xlim([1 86]);
ylim([0.9 1]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

% NHANES 1999-2000
x_data = Age_NHANES_1999_2000;
y_data = Corr_NHANES_1999_2000_Female;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(1,:),'MarkerFaceColor','w');

% NHANES 2001-2002
x_data = Age_NHANES_2001_2002;
y_data = Corr_NHANES_2001_2002_Female;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(2,:),'MarkerFaceColor','w');

% NHANES 2003-2004
x_data = Age_NHANES_2003_2004;
y_data = Corr_NHANES_2003_2004_Female;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(3,:),'MarkerFaceColor','w');

% NHANES 2005-2006
x_data = Age_NHANES_2005_2006;
y_data = Corr_NHANES_2005_2006_Female;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(4,:),'MarkerFaceColor','w');

% NHANES 2007-2008
x_data = Age_NHANES_2007_2008;
y_data = Corr_NHANES_2007_2008_Female;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(5,:),'MarkerFaceColor','w');

% NHANES 2009-2010
x_data = Age_NHANES_2009_2010;
y_data = Corr_NHANES_2009_2010_Female;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(6,:),'MarkerFaceColor','w');

% NHANES 2011-2012
x_data = Age_NHANES_2011_2012;
y_data = Corr_NHANES_2011_2012_Female;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(7,:),'MarkerFaceColor','w');

% NHANES 2013-2014
x_data = Age_NHANES_2013_2014;
y_data = Corr_NHANES_2013_2014_Female;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(8,:),'MarkerFaceColor','w');

% NHANES 2015-2016
x_data = Age_NHANES_2015_2016;
y_data = Corr_NHANES_2015_2016_Female;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(9,:),'MarkerFaceColor','w');

% NHANES 2017-2018
x_data = Age_NHANES_2017_2018;
y_data = Corr_NHANES_2017_2018_Female;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(10,:),'MarkerFaceColor','w');

% NHANES 2017-March 2020
x_data = Age_NHANES_2017_March_2020;
y_data = Corr_NHANES_2017_March_2020_Female;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(11,:),'MarkerFaceColor','w');

% NHANES August 2021-August 2023
x_data = Age_NHANES_August_2021_August_2023;
y_data = Corr_NHANES_August_2021_August_2023_Female;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(12,:),'MarkerFaceColor','w');

% NHANES ALL
x_data = Age_NHANES_ALL;
y_data = Corr_NHANES_ALL_Female;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(13,:),'MarkerFaceColor','w');

% For Male
subplot(2,1,2);
hold on;
title('Male')
xlabel('Age (yr)');
ylabel('Correlation coefficients')
xlim([1 86]);
ylim([0.9 1]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

% NHANES 1999-2000
x_data = Age_NHANES_1999_2000;
y_data = Corr_NHANES_1999_2000_Male;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(1,:),'MarkerFaceColor','w');

% NHANES 2001-2002
x_data = Age_NHANES_2001_2002;
y_data = Corr_NHANES_2001_2002_Male;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(2,:),'MarkerFaceColor','w');

% NHANES 2003-2004
x_data = Age_NHANES_2003_2004;
y_data = Corr_NHANES_2003_2004_Female;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(3,:),'MarkerFaceColor','w');

% NHANES 2003-2004
x_data = Age_NHANES_2005_2006;
y_data = Corr_NHANES_2005_2006_Female;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(4,:),'MarkerFaceColor','w');

% NHANES 2007-2008
x_data = Age_NHANES_2007_2008;
y_data = Corr_NHANES_2007_2008_Male;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(5,:),'MarkerFaceColor','w');

% NHANES 2009-2010
x_data = Age_NHANES_2009_2010;
y_data = Corr_NHANES_2009_2010_Male;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(6,:),'MarkerFaceColor','w');

% NHANES 2011-2012
x_data = Age_NHANES_2011_2012;
y_data = Corr_NHANES_2011_2012_Male;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(7,:),'MarkerFaceColor','w');

% NHANES 2013-2014
x_data = Age_NHANES_2013_2014;
y_data = Corr_NHANES_2013_2014_Male;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(8,:),'MarkerFaceColor','w');

% NHANES 2015-2016
x_data = Age_NHANES_2015_2016;
y_data = Corr_NHANES_2015_2016_Male;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(9,:),'MarkerFaceColor','w');

% NHANES 2017-2018
x_data = Age_NHANES_2017_2018;
y_data = Corr_NHANES_2017_2018_Male;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(10,:),'MarkerFaceColor','w');

% NHANES 2017-March 2020
x_data = Age_NHANES_2017_March_2020;
y_data = Corr_NHANES_2017_March_2020_Male;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(11,:),'MarkerFaceColor','w');

% NHANES August 2021-August 2023
x_data = Age_NHANES_August_2021_August_2023;
y_data = Corr_NHANES_August_2021_August_2023_Male;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(12,:),'MarkerFaceColor','w');

% NHANES ALL
x_data = Age_NHANES_ALL;
y_data = Corr_NHANES_ALL_Male;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(13,:),'MarkerFaceColor','w');

%%
% We save the correlation analysis results
save('Correlation_coefficient_c_1_NHANES_ALL.mat','Age_NHANES_1999_2000','Corr_NHANES_1999_2000_Female','Corr_NHANES_1999_2000_Male',...
    'Age_NHANES_2001_2002','Corr_NHANES_2001_2002_Female','Corr_NHANES_2001_2002_Male',....
    'Age_NHANES_2003_2004','Corr_NHANES_2003_2004_Female','Corr_NHANES_2003_2004_Male',...
    'Age_NHANES_2005_2006','Corr_NHANES_2005_2006_Female','Corr_NHANES_2005_2006_Male',...
    'Age_NHANES_2007_2008','Corr_NHANES_2007_2008_Female','Corr_NHANES_2007_2008_Male',...
    'Age_NHANES_2009_2010','Corr_NHANES_2009_2010_Female','Corr_NHANES_2009_2010_Male',...
    'Age_NHANES_2011_2012','Corr_NHANES_2011_2012_Female','Corr_NHANES_2011_2012_Male',...
    'Age_NHANES_2013_2014','Corr_NHANES_2013_2014_Female','Corr_NHANES_2013_2014_Male',...
    'Age_NHANES_2015_2016','Corr_NHANES_2015_2016_Female','Corr_NHANES_2015_2016_Male',...
    'Age_NHANES_2017_2018','Corr_NHANES_2017_2018_Female','Corr_NHANES_2017_2018_Male',...
    'Age_NHANES_2017_March_2020','Corr_NHANES_2017_March_2020_Female','Corr_NHANES_2017_March_2020_Male',...
    'Age_NHANES_August_2021_August_2023','Corr_NHANES_August_2021_August_2023_Female','Corr_NHANES_August_2021_August_2023_Male',...
    'Age_NHANES_ALL','Corr_NHANES_ALL_Female','Corr_NHANES_ALL_Male');
