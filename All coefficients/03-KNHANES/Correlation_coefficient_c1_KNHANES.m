% We show the relative coefficients between Weight and Weight*Height^c for
% all KNHANES datasets when exponent c = 1;
% Including:
% KNHANES 1998
% KNHANES 2001
% KNHANES 2005
% KNHANES 2007
% KNHANES 2008
% KNHANES 2009
% KNHANES 2010
% KNHANES 2011
% KNHANES 2012
% KNHANES 2013
% KNHANES 2014
% KNHANES 2015
% KNHANES 2016
% KNHANES 2017
% KNHANES 2018
% KNHANES 2019
% KNHANES 2020
% KNHANES 2021
% KNHANES 2022
% KNHANES 2023
% KNHANES 2024
% KNHANES ALL
%
tic;
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
%% KNHANES 1998.xlsx
% Loading the data
Female_data = xlsread('KNHANES\KNHANES 1998.xlsx','Female','B:D');
Male_data = xlsread('KNHANES\KNHANES 1998.xlsx','Male','B:D');
% Grouping by age
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

% For Female
[M N] = size(Female_data); % ID	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Female_data(i,1) == 10
        Female_data_10 = [Female_data_10; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 11
        Female_data_11 = [Female_data_11; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 12
        Female_data_12 = [Female_data_12; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 13
        Female_data_13 = [Female_data_13; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 14
        Female_data_14 = [Female_data_14; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 15
        Female_data_15 = [Female_data_15; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 16
        Female_data_16 = [Female_data_16; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 17
        Female_data_17 = [Female_data_17; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 18
        Female_data_18 = [Female_data_18; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 19
        Female_data_19 = [Female_data_19; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 20
        Female_data_20 = [Female_data_20; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 21
        Female_data_21 = [Female_data_21; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 22
        Female_data_22 = [Female_data_22; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 23
        Female_data_23 = [Female_data_23; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 24
        Female_data_24 = [Female_data_24; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 25
        Female_data_25 = [Female_data_25; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 26
        Female_data_26 = [Female_data_26; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 27
        Female_data_27 = [Female_data_27; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 28
        Female_data_28 = [Female_data_28; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 29
        Female_data_29 = [Female_data_29; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 30
        Female_data_30 = [Female_data_30; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 31
        Female_data_31 = [Female_data_31; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 32
        Female_data_32 = [Female_data_32; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 33
        Female_data_33 = [Female_data_33; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 34
        Female_data_34 = [Female_data_34; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 35
        Female_data_35 = [Female_data_35; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 36
        Female_data_36 = [Female_data_36; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 37
        Female_data_37 = [Female_data_37; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 38
        Female_data_38 = [Female_data_38; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 39
        Female_data_39 = [Female_data_39; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 40
        Female_data_40 = [Female_data_40; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 41
        Female_data_41 = [Female_data_41; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 42
        Female_data_42 = [Female_data_42; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 43
        Female_data_43 = [Female_data_43; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 44
        Female_data_44 = [Female_data_44; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 45
        Female_data_45 = [Female_data_45; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 46
        Female_data_46 = [Female_data_46; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 47
        Female_data_47 = [Female_data_47; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 48
        Female_data_48 = [Female_data_48; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 49
        Female_data_49 = [Female_data_49; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 50
        Female_data_50 = [Female_data_50; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 51
        Female_data_51 = [Female_data_51; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 52
        Female_data_52 = [Female_data_52; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 53
        Female_data_53 = [Female_data_53; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 54
        Female_data_54 = [Female_data_54; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 55
        Female_data_55 = [Female_data_55; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 56
        Female_data_56 = [Female_data_56; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 57
        Female_data_57 = [Female_data_57; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 58
        Female_data_58 = [Female_data_58; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 59
        Female_data_59 = [Female_data_59; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 60
        Female_data_60 = [Female_data_60; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 61
        Female_data_61 = [Female_data_61; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 62
        Female_data_62 = [Female_data_62; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 63
        Female_data_63 = [Female_data_63; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 64
        Female_data_64 = [Female_data_64; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 65
        Female_data_65 = [Female_data_65; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 66
        Female_data_66 = [Female_data_66; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 67
        Female_data_67 = [Female_data_67; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 68
        Female_data_68 = [Female_data_68; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 69
        Female_data_69 = [Female_data_69; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 70
        Female_data_70 = [Female_data_70; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 71
        Female_data_71 = [Female_data_71; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 72
        Female_data_72 = [Female_data_72; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 73
        Female_data_73 = [Female_data_73; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 74
        Female_data_74 = [Female_data_74; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 75
        Female_data_75 = [Female_data_75; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 76
        Female_data_76 = [Female_data_76; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 77
        Female_data_77 = [Female_data_77; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 78
        Female_data_78 = [Female_data_78; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 79
        Female_data_79 = [Female_data_79; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 80
        Female_data_80 = [Female_data_80; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
end
% For Male
[M N] = size(Male_data); % ID	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Male_data(i,1) == 10
        Male_data_10 = [Male_data_10; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 11
        Male_data_11 = [Male_data_11; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 12
        Male_data_12 = [Male_data_12; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 13
        Male_data_13 = [Male_data_13; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 14
        Male_data_14 = [Male_data_14; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 15
        Male_data_15 = [Male_data_15; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 16
        Male_data_16 = [Male_data_16; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 17
        Male_data_17 = [Male_data_17; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 18
        Male_data_18 = [Male_data_18; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 19
        Male_data_19 = [Male_data_19; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 20
        Male_data_20 = [Male_data_20; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 21
        Male_data_21 = [Male_data_21; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 22
        Male_data_22 = [Male_data_22; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 23
        Male_data_23 = [Male_data_23; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 24
        Male_data_24 = [Male_data_24; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 25
        Male_data_25 = [Male_data_25; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 26
        Male_data_26 = [Male_data_26; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 27
        Male_data_27 = [Male_data_27; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 28
        Male_data_28 = [Male_data_28; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 29
        Male_data_29 = [Male_data_29; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 30
        Male_data_30 = [Male_data_30; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 31
        Male_data_31 = [Male_data_31; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 32
        Male_data_32 = [Male_data_32; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 33
        Male_data_33 = [Male_data_33; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 34
        Male_data_34 = [Male_data_34; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 35
        Male_data_35 = [Male_data_35; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 36
        Male_data_36 = [Male_data_36; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 37
        Male_data_37 = [Male_data_37; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 38
        Male_data_38 = [Male_data_38; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 39
        Male_data_39 = [Male_data_39; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 40
        Male_data_40 = [Male_data_40; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 41
        Male_data_41 = [Male_data_41; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 42
        Male_data_42 = [Male_data_42; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 43
        Male_data_43 = [Male_data_43; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 44
        Male_data_44 = [Male_data_44; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 45
        Male_data_45 = [Male_data_45; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 46
        Male_data_46 = [Male_data_46; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 47
        Male_data_47 = [Male_data_47; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 48
        Male_data_48 = [Male_data_48; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 49
        Male_data_49 = [Male_data_49; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 50
        Male_data_50 = [Male_data_50; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 51
        Male_data_51 = [Male_data_51; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 52
        Male_data_52 = [Male_data_52; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 53
        Male_data_53 = [Male_data_53; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 54
        Male_data_54 = [Male_data_54; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 55
        Male_data_55 = [Male_data_55; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 56
        Male_data_56 = [Male_data_56; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 57
        Male_data_57 = [Male_data_57; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 58
        Male_data_58 = [Male_data_58; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 59
        Male_data_59 = [Male_data_59; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 60
        Male_data_60 = [Male_data_60; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 61
        Male_data_61 = [Male_data_61; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 62
        Male_data_62 = [Male_data_62; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 63
        Male_data_63 = [Male_data_63; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 64
        Male_data_64 = [Male_data_64; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 65
        Male_data_65 = [Male_data_65; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 66
        Male_data_66 = [Male_data_66; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 67
        Male_data_67 = [Male_data_67; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 68
        Male_data_68 = [Male_data_68; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 69
        Male_data_69 = [Male_data_69; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 70
        Male_data_70 = [Male_data_70; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 71
        Male_data_71 = [Male_data_71; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 72
        Male_data_72 = [Male_data_72; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 73
        Male_data_73 = [Male_data_73; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 74
        Male_data_74 = [Male_data_74; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 75
        Male_data_75 = [Male_data_75; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 76
        Male_data_76 = [Male_data_76; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 77
        Male_data_77 = [Male_data_77; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 78
        Male_data_78 = [Male_data_78; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 79
        Male_data_79 = [Male_data_79; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 80
        Male_data_80 = [Male_data_80; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
end
% We calculate the correlation coefficients
% Weight VS Weight*Height^c
Age_1_KNHANES_1998 = 10:78;
Corr_1_KNHANES_1998_Female = [...
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
    My_Corr(Female_data_78(:,2),Female_data_78(:,2).*(Female_data_78(:,1)/100).^c)
    ];

Corr_1_KNHANES_1998_Male = [...
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
    My_Corr(Male_data_78(:,2),Male_data_78(:,2).*(Male_data_78(:,1)/100).^c)
    ];

%% KNHANES 2001.xlsx
% Loading the data
Female_data = xlsread('KNHANES\KNHANES 2001.xlsx','Female','B:D');
Male_data = xlsread('KNHANES\KNHANES 2001.xlsx','Male','B:D');
% Grouping by age
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

% For Female
[M N] = size(Female_data); % ID	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Female_data(i,1) == 1
        Female_data_1 = [Female_data_1; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 2
        Female_data_2 = [Female_data_2; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 3
        Female_data_3 = [Female_data_3; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 4
        Female_data_4 = [Female_data_4; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 5
        Female_data_5 = [Female_data_5; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 6
        Female_data_6 = [Female_data_6; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 7
        Female_data_7 = [Female_data_7; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 8
        Female_data_8 = [Female_data_8; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 9
        Female_data_9 = [Female_data_9; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 10
        Female_data_10 = [Female_data_10; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 11
        Female_data_11 = [Female_data_11; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 12
        Female_data_12 = [Female_data_12; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 13
        Female_data_13 = [Female_data_13; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 14
        Female_data_14 = [Female_data_14; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 15
        Female_data_15 = [Female_data_15; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 16
        Female_data_16 = [Female_data_16; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 17
        Female_data_17 = [Female_data_17; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 18
        Female_data_18 = [Female_data_18; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 19
        Female_data_19 = [Female_data_19; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 20
        Female_data_20 = [Female_data_20; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 21
        Female_data_21 = [Female_data_21; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 22
        Female_data_22 = [Female_data_22; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 23
        Female_data_23 = [Female_data_23; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 24
        Female_data_24 = [Female_data_24; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 25
        Female_data_25 = [Female_data_25; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 26
        Female_data_26 = [Female_data_26; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 27
        Female_data_27 = [Female_data_27; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 28
        Female_data_28 = [Female_data_28; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 29
        Female_data_29 = [Female_data_29; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 30
        Female_data_30 = [Female_data_30; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 31
        Female_data_31 = [Female_data_31; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 32
        Female_data_32 = [Female_data_32; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 33
        Female_data_33 = [Female_data_33; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 34
        Female_data_34 = [Female_data_34; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 35
        Female_data_35 = [Female_data_35; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 36
        Female_data_36 = [Female_data_36; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 37
        Female_data_37 = [Female_data_37; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 38
        Female_data_38 = [Female_data_38; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 39
        Female_data_39 = [Female_data_39; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 40
        Female_data_40 = [Female_data_40; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 41
        Female_data_41 = [Female_data_41; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 42
        Female_data_42 = [Female_data_42; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 43
        Female_data_43 = [Female_data_43; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 44
        Female_data_44 = [Female_data_44; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 45
        Female_data_45 = [Female_data_45; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 46
        Female_data_46 = [Female_data_46; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 47
        Female_data_47 = [Female_data_47; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 48
        Female_data_48 = [Female_data_48; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 49
        Female_data_49 = [Female_data_49; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 50
        Female_data_50 = [Female_data_50; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 51
        Female_data_51 = [Female_data_51; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 52
        Female_data_52 = [Female_data_52; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 53
        Female_data_53 = [Female_data_53; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 54
        Female_data_54 = [Female_data_54; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 55
        Female_data_55 = [Female_data_55; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 56
        Female_data_56 = [Female_data_56; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 57
        Female_data_57 = [Female_data_57; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 58
        Female_data_58 = [Female_data_58; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 59
        Female_data_59 = [Female_data_59; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 60
        Female_data_60 = [Female_data_60; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 61
        Female_data_61 = [Female_data_61; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 62
        Female_data_62 = [Female_data_62; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 63
        Female_data_63 = [Female_data_63; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 64
        Female_data_64 = [Female_data_64; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 65
        Female_data_65 = [Female_data_65; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 66
        Female_data_66 = [Female_data_66; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 67
        Female_data_67 = [Female_data_67; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 68
        Female_data_68 = [Female_data_68; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 69
        Female_data_69 = [Female_data_69; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 70
        Female_data_70 = [Female_data_70; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 71
        Female_data_71 = [Female_data_71; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 72
        Female_data_72 = [Female_data_72; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 73
        Female_data_73 = [Female_data_73; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 74
        Female_data_74 = [Female_data_74; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 75
        Female_data_75 = [Female_data_75; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 76
        Female_data_76 = [Female_data_76; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 77
        Female_data_77 = [Female_data_77; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 78
        Female_data_78 = [Female_data_78; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
end
% For Male
[M N] = size(Male_data); % ID	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Male_data(i,1) == 1
        Male_data_1 = [Male_data_1; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 2
        Male_data_2 = [Male_data_2; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 3
        Male_data_3 = [Male_data_3; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 4
        Male_data_4 = [Male_data_4; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 5
        Male_data_5 = [Male_data_5; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 6
        Male_data_6 = [Male_data_6; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 7
        Male_data_7 = [Male_data_7; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 8
        Male_data_8 = [Male_data_8; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 9
        Male_data_9 = [Male_data_9; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 10
        Male_data_10 = [Male_data_10; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 11
        Male_data_11 = [Male_data_11; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 12
        Male_data_12 = [Male_data_12; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 13
        Male_data_13 = [Male_data_13; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 14
        Male_data_14 = [Male_data_14; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 15
        Male_data_15 = [Male_data_15; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 16
        Male_data_16 = [Male_data_16; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 17
        Male_data_17 = [Male_data_17; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 18
        Male_data_18 = [Male_data_18; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 19
        Male_data_19 = [Male_data_19; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 20
        Male_data_20 = [Male_data_20; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 21
        Male_data_21 = [Male_data_21; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 22
        Male_data_22 = [Male_data_22; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 23
        Male_data_23 = [Male_data_23; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 24
        Male_data_24 = [Male_data_24; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 25
        Male_data_25 = [Male_data_25; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 26
        Male_data_26 = [Male_data_26; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 27
        Male_data_27 = [Male_data_27; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 28
        Male_data_28 = [Male_data_28; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 29
        Male_data_29 = [Male_data_29; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 30
        Male_data_30 = [Male_data_30; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 31
        Male_data_31 = [Male_data_31; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 32
        Male_data_32 = [Male_data_32; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 33
        Male_data_33 = [Male_data_33; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 34
        Male_data_34 = [Male_data_34; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 35
        Male_data_35 = [Male_data_35; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 36
        Male_data_36 = [Male_data_36; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 37
        Male_data_37 = [Male_data_37; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 38
        Male_data_38 = [Male_data_38; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 39
        Male_data_39 = [Male_data_39; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 40
        Male_data_40 = [Male_data_40; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 41
        Male_data_41 = [Male_data_41; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 42
        Male_data_42 = [Male_data_42; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 43
        Male_data_43 = [Male_data_43; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 44
        Male_data_44 = [Male_data_44; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 45
        Male_data_45 = [Male_data_45; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 46
        Male_data_46 = [Male_data_46; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 47
        Male_data_47 = [Male_data_47; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 48
        Male_data_48 = [Male_data_48; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 49
        Male_data_49 = [Male_data_49; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 50
        Male_data_50 = [Male_data_50; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 51
        Male_data_51 = [Male_data_51; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 52
        Male_data_52 = [Male_data_52; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 53
        Male_data_53 = [Male_data_53; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 54
        Male_data_54 = [Male_data_54; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 55
        Male_data_55 = [Male_data_55; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 56
        Male_data_56 = [Male_data_56; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 57
        Male_data_57 = [Male_data_57; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 58
        Male_data_58 = [Male_data_58; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 59
        Male_data_59 = [Male_data_59; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 60
        Male_data_60 = [Male_data_60; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 61
        Male_data_61 = [Male_data_61; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 62
        Male_data_62 = [Male_data_62; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 63
        Male_data_63 = [Male_data_63; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 64
        Male_data_64 = [Male_data_64; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 65
        Male_data_65 = [Male_data_65; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 66
        Male_data_66 = [Male_data_66; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 67
        Male_data_67 = [Male_data_67; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 68
        Male_data_68 = [Male_data_68; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 69
        Male_data_69 = [Male_data_69; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 70
        Male_data_70 = [Male_data_70; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 71
        Male_data_71 = [Male_data_71; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 72
        Male_data_72 = [Male_data_72; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 73
        Male_data_73 = [Male_data_73; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 74
        Male_data_74 = [Male_data_74; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 75
        Male_data_75 = [Male_data_75; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 76
        Male_data_76 = [Male_data_76; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 77
        Male_data_77 = [Male_data_77; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 78
        Male_data_78 = [Male_data_78; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
end
% We calculate the correlation coefficients
% Weight VS Weight*Height^c
Age_1_KNHANES_2001 = 1:78;
Corr_1_KNHANES_2001_Female = [...
    My_Corr(Female_data_1(:,2),Female_data_1(:,2).*(Female_data_1(:,1)/100).^c) ...
    My_Corr(Female_data_2(:,2),Female_data_2(:,2).*(Female_data_2(:,1)/100).^c) ...
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
    My_Corr(Female_data_78(:,2),Female_data_78(:,2).*(Female_data_78(:,1)/100).^c)
    ];

Corr_1_KNHANES_2001_Male = [...
    My_Corr(Male_data_1(:,2),Male_data_1(:,2).*(Male_data_1(:,1)/100).^c) ...
    My_Corr(Male_data_2(:,2),Male_data_2(:,2).*(Male_data_2(:,1)/100).^c) ...
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
    My_Corr(Male_data_78(:,2),Male_data_78(:,2).*(Male_data_78(:,1)/100).^c)
    ];

%% KNHANES 2005.xlsx
% Loading the data
Female_data = xlsread('KNHANES\KNHANES 2005.xlsx','Female','B:D');
Male_data = xlsread('KNHANES\KNHANES 2005.xlsx','Male','B:D');
% Grouping by age
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

% For Female
[M N] = size(Female_data); % ID	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Female_data(i,1) == 1
        Female_data_1 = [Female_data_1; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 2
        Female_data_2 = [Female_data_2; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 3
        Female_data_3 = [Female_data_3; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 4
        Female_data_4 = [Female_data_4; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 5
        Female_data_5 = [Female_data_5; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 6
        Female_data_6 = [Female_data_6; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 7
        Female_data_7 = [Female_data_7; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 8
        Female_data_8 = [Female_data_8; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 9
        Female_data_9 = [Female_data_9; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 10
        Female_data_10 = [Female_data_10; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 11
        Female_data_11 = [Female_data_11; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 12
        Female_data_12 = [Female_data_12; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 13
        Female_data_13 = [Female_data_13; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 14
        Female_data_14 = [Female_data_14; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 15
        Female_data_15 = [Female_data_15; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 16
        Female_data_16 = [Female_data_16; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 17
        Female_data_17 = [Female_data_17; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 18
        Female_data_18 = [Female_data_18; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 19
        Female_data_19 = [Female_data_19; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 20
        Female_data_20 = [Female_data_20; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 21
        Female_data_21 = [Female_data_21; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 22
        Female_data_22 = [Female_data_22; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 23
        Female_data_23 = [Female_data_23; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 24
        Female_data_24 = [Female_data_24; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 25
        Female_data_25 = [Female_data_25; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 26
        Female_data_26 = [Female_data_26; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 27
        Female_data_27 = [Female_data_27; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 28
        Female_data_28 = [Female_data_28; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 29
        Female_data_29 = [Female_data_29; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 30
        Female_data_30 = [Female_data_30; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 31
        Female_data_31 = [Female_data_31; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 32
        Female_data_32 = [Female_data_32; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 33
        Female_data_33 = [Female_data_33; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 34
        Female_data_34 = [Female_data_34; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 35
        Female_data_35 = [Female_data_35; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 36
        Female_data_36 = [Female_data_36; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 37
        Female_data_37 = [Female_data_37; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 38
        Female_data_38 = [Female_data_38; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 39
        Female_data_39 = [Female_data_39; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 40
        Female_data_40 = [Female_data_40; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 41
        Female_data_41 = [Female_data_41; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 42
        Female_data_42 = [Female_data_42; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 43
        Female_data_43 = [Female_data_43; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 44
        Female_data_44 = [Female_data_44; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 45
        Female_data_45 = [Female_data_45; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 46
        Female_data_46 = [Female_data_46; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 47
        Female_data_47 = [Female_data_47; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 48
        Female_data_48 = [Female_data_48; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 49
        Female_data_49 = [Female_data_49; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 50
        Female_data_50 = [Female_data_50; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 51
        Female_data_51 = [Female_data_51; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 52
        Female_data_52 = [Female_data_52; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 53
        Female_data_53 = [Female_data_53; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 54
        Female_data_54 = [Female_data_54; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 55
        Female_data_55 = [Female_data_55; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 56
        Female_data_56 = [Female_data_56; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 57
        Female_data_57 = [Female_data_57; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 58
        Female_data_58 = [Female_data_58; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 59
        Female_data_59 = [Female_data_59; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 60
        Female_data_60 = [Female_data_60; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 61
        Female_data_61 = [Female_data_61; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 62
        Female_data_62 = [Female_data_62; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 63
        Female_data_63 = [Female_data_63; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 64
        Female_data_64 = [Female_data_64; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 65
        Female_data_65 = [Female_data_65; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 66
        Female_data_66 = [Female_data_66; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 67
        Female_data_67 = [Female_data_67; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 68
        Female_data_68 = [Female_data_68; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 69
        Female_data_69 = [Female_data_69; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 70
        Female_data_70 = [Female_data_70; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 71
        Female_data_71 = [Female_data_71; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 72
        Female_data_72 = [Female_data_72; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 73
        Female_data_73 = [Female_data_73; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 74
        Female_data_74 = [Female_data_74; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 75
        Female_data_75 = [Female_data_75; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 76
        Female_data_76 = [Female_data_76; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
end
% For Male
[M N] = size(Male_data); % ID	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Male_data(i,1) == 1
        Male_data_1 = [Male_data_1; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 2
        Male_data_2 = [Male_data_2; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 3
        Male_data_3 = [Male_data_3; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 4
        Male_data_4 = [Male_data_4; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 5
        Male_data_5 = [Male_data_5; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 6
        Male_data_6 = [Male_data_6; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 7
        Male_data_7 = [Male_data_7; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 8
        Male_data_8 = [Male_data_8; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 9
        Male_data_9 = [Male_data_9; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 10
        Male_data_10 = [Male_data_10; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 11
        Male_data_11 = [Male_data_11; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 12
        Male_data_12 = [Male_data_12; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 13
        Male_data_13 = [Male_data_13; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 14
        Male_data_14 = [Male_data_14; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 15
        Male_data_15 = [Male_data_15; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 16
        Male_data_16 = [Male_data_16; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 17
        Male_data_17 = [Male_data_17; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 18
        Male_data_18 = [Male_data_18; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 19
        Male_data_19 = [Male_data_19; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 20
        Male_data_20 = [Male_data_20; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 21
        Male_data_21 = [Male_data_21; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 22
        Male_data_22 = [Male_data_22; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 23
        Male_data_23 = [Male_data_23; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 24
        Male_data_24 = [Male_data_24; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 25
        Male_data_25 = [Male_data_25; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 26
        Male_data_26 = [Male_data_26; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 27
        Male_data_27 = [Male_data_27; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 28
        Male_data_28 = [Male_data_28; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 29
        Male_data_29 = [Male_data_29; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 30
        Male_data_30 = [Male_data_30; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 31
        Male_data_31 = [Male_data_31; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 32
        Male_data_32 = [Male_data_32; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 33
        Male_data_33 = [Male_data_33; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 34
        Male_data_34 = [Male_data_34; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 35
        Male_data_35 = [Male_data_35; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 36
        Male_data_36 = [Male_data_36; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 37
        Male_data_37 = [Male_data_37; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 38
        Male_data_38 = [Male_data_38; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 39
        Male_data_39 = [Male_data_39; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 40
        Male_data_40 = [Male_data_40; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 41
        Male_data_41 = [Male_data_41; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 42
        Male_data_42 = [Male_data_42; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 43
        Male_data_43 = [Male_data_43; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 44
        Male_data_44 = [Male_data_44; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 45
        Male_data_45 = [Male_data_45; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 46
        Male_data_46 = [Male_data_46; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 47
        Male_data_47 = [Male_data_47; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 48
        Male_data_48 = [Male_data_48; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 49
        Male_data_49 = [Male_data_49; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 50
        Male_data_50 = [Male_data_50; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 51
        Male_data_51 = [Male_data_51; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 52
        Male_data_52 = [Male_data_52; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 53
        Male_data_53 = [Male_data_53; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 54
        Male_data_54 = [Male_data_54; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 55
        Male_data_55 = [Male_data_55; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 56
        Male_data_56 = [Male_data_56; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 57
        Male_data_57 = [Male_data_57; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 58
        Male_data_58 = [Male_data_58; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 59
        Male_data_59 = [Male_data_59; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 60
        Male_data_60 = [Male_data_60; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 61
        Male_data_61 = [Male_data_61; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 62
        Male_data_62 = [Male_data_62; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 63
        Male_data_63 = [Male_data_63; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 64
        Male_data_64 = [Male_data_64; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 65
        Male_data_65 = [Male_data_65; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 66
        Male_data_66 = [Male_data_66; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 67
        Male_data_67 = [Male_data_67; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 68
        Male_data_68 = [Male_data_68; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 69
        Male_data_69 = [Male_data_69; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 70
        Male_data_70 = [Male_data_70; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 71
        Male_data_71 = [Male_data_71; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 72
        Male_data_72 = [Male_data_72; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 73
        Male_data_73 = [Male_data_73; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 74
        Male_data_74 = [Male_data_74; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 75
        Male_data_75 = [Male_data_75; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 76
        Male_data_76 = [Male_data_76; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
end
% We calculate the correlation coefficients
% Weight VS Weight*Height^c
Age_1_KNHANES_2005 = 1:76;
Corr_1_KNHANES_2005_Female = [...
    My_Corr(Female_data_1(:,2),Female_data_1(:,2).*(Female_data_1(:,1)/100).^c) ...
    My_Corr(Female_data_2(:,2),Female_data_2(:,2).*(Female_data_2(:,1)/100).^c) ...
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
    My_Corr(Female_data_76(:,2),Female_data_76(:,2).*(Female_data_76(:,1)/100).^c)
    ];

Corr_1_KNHANES_2005_Male = [...
    My_Corr(Male_data_1(:,2),Male_data_1(:,2).*(Male_data_1(:,1)/100).^c) ...
    My_Corr(Male_data_2(:,2),Male_data_2(:,2).*(Male_data_2(:,1)/100).^c) ...
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
    My_Corr(Male_data_76(:,2),Male_data_76(:,2).*(Male_data_76(:,1)/100).^c)
    ];

%% KNHANES 2007.xlsx
% Loading the data
Female_data = xlsread('KNHANES\KNHANES 2007.xlsx','Female','B:D');
Male_data = xlsread('KNHANES\KNHANES 2007.xlsx','Male','B:D');
% Grouping by age
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
Female_data_80 = []; % ==80

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
Male_data_80 = []; % ==80

% For Female
[M N] = size(Female_data); % ID	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Female_data(i,1) == 1
        Female_data_1 = [Female_data_1; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 2
        Female_data_2 = [Female_data_2; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 3
        Female_data_3 = [Female_data_3; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 4
        Female_data_4 = [Female_data_4; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 5
        Female_data_5 = [Female_data_5; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 6
        Female_data_6 = [Female_data_6; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 7
        Female_data_7 = [Female_data_7; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 8
        Female_data_8 = [Female_data_8; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 9
        Female_data_9 = [Female_data_9; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 10
        Female_data_10 = [Female_data_10; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 11
        Female_data_11 = [Female_data_11; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 12
        Female_data_12 = [Female_data_12; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 13
        Female_data_13 = [Female_data_13; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 14
        Female_data_14 = [Female_data_14; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 15
        Female_data_15 = [Female_data_15; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 16
        Female_data_16 = [Female_data_16; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 17
        Female_data_17 = [Female_data_17; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 18
        Female_data_18 = [Female_data_18; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 19
        Female_data_19 = [Female_data_19; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 20
        Female_data_20 = [Female_data_20; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 21
        Female_data_21 = [Female_data_21; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 22
        Female_data_22 = [Female_data_22; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 23
        Female_data_23 = [Female_data_23; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 24
        Female_data_24 = [Female_data_24; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 25
        Female_data_25 = [Female_data_25; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 26
        Female_data_26 = [Female_data_26; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 27
        Female_data_27 = [Female_data_27; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 28
        Female_data_28 = [Female_data_28; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 29
        Female_data_29 = [Female_data_29; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 30
        Female_data_30 = [Female_data_30; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 31
        Female_data_31 = [Female_data_31; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 32
        Female_data_32 = [Female_data_32; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 33
        Female_data_33 = [Female_data_33; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 34
        Female_data_34 = [Female_data_34; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 35
        Female_data_35 = [Female_data_35; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 36
        Female_data_36 = [Female_data_36; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 37
        Female_data_37 = [Female_data_37; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 38
        Female_data_38 = [Female_data_38; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 39
        Female_data_39 = [Female_data_39; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 40
        Female_data_40 = [Female_data_40; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 41
        Female_data_41 = [Female_data_41; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 42
        Female_data_42 = [Female_data_42; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 43
        Female_data_43 = [Female_data_43; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 44
        Female_data_44 = [Female_data_44; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 45
        Female_data_45 = [Female_data_45; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 46
        Female_data_46 = [Female_data_46; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 47
        Female_data_47 = [Female_data_47; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 48
        Female_data_48 = [Female_data_48; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 49
        Female_data_49 = [Female_data_49; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 50
        Female_data_50 = [Female_data_50; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 51
        Female_data_51 = [Female_data_51; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 52
        Female_data_52 = [Female_data_52; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 53
        Female_data_53 = [Female_data_53; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 54
        Female_data_54 = [Female_data_54; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 55
        Female_data_55 = [Female_data_55; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 56
        Female_data_56 = [Female_data_56; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 57
        Female_data_57 = [Female_data_57; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 58
        Female_data_58 = [Female_data_58; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 59
        Female_data_59 = [Female_data_59; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 60
        Female_data_60 = [Female_data_60; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 61
        Female_data_61 = [Female_data_61; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 62
        Female_data_62 = [Female_data_62; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 63
        Female_data_63 = [Female_data_63; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 64
        Female_data_64 = [Female_data_64; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 65
        Female_data_65 = [Female_data_65; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 66
        Female_data_66 = [Female_data_66; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 67
        Female_data_67 = [Female_data_67; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 68
        Female_data_68 = [Female_data_68; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 69
        Female_data_69 = [Female_data_69; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 70
        Female_data_70 = [Female_data_70; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 71
        Female_data_71 = [Female_data_71; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 72
        Female_data_72 = [Female_data_72; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 73
        Female_data_73 = [Female_data_73; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 74
        Female_data_74 = [Female_data_74; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 75
        Female_data_75 = [Female_data_75; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 76
        Female_data_76 = [Female_data_76; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 77
        Female_data_77 = [Female_data_77; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 78
        Female_data_78 = [Female_data_78; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 79
        Female_data_79 = [Female_data_79; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 80
        Female_data_80 = [Female_data_80; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
end
% For Male
[M N] = size(Male_data); % ID	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Male_data(i,1) == 1
        Male_data_1 = [Male_data_1; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 2
        Male_data_2 = [Male_data_2; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 3
        Male_data_3 = [Male_data_3; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 4
        Male_data_4 = [Male_data_4; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 5
        Male_data_5 = [Male_data_5; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 6
        Male_data_6 = [Male_data_6; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 7
        Male_data_7 = [Male_data_7; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 8
        Male_data_8 = [Male_data_8; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 9
        Male_data_9 = [Male_data_9; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 10
        Male_data_10 = [Male_data_10; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 11
        Male_data_11 = [Male_data_11; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 12
        Male_data_12 = [Male_data_12; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 13
        Male_data_13 = [Male_data_13; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 14
        Male_data_14 = [Male_data_14; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 15
        Male_data_15 = [Male_data_15; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 16
        Male_data_16 = [Male_data_16; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 17
        Male_data_17 = [Male_data_17; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 18
        Male_data_18 = [Male_data_18; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 19
        Male_data_19 = [Male_data_19; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 20
        Male_data_20 = [Male_data_20; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 21
        Male_data_21 = [Male_data_21; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 22
        Male_data_22 = [Male_data_22; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 23
        Male_data_23 = [Male_data_23; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 24
        Male_data_24 = [Male_data_24; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 25
        Male_data_25 = [Male_data_25; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 26
        Male_data_26 = [Male_data_26; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 27
        Male_data_27 = [Male_data_27; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 28
        Male_data_28 = [Male_data_28; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 29
        Male_data_29 = [Male_data_29; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 30
        Male_data_30 = [Male_data_30; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 31
        Male_data_31 = [Male_data_31; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 32
        Male_data_32 = [Male_data_32; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 33
        Male_data_33 = [Male_data_33; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 34
        Male_data_34 = [Male_data_34; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 35
        Male_data_35 = [Male_data_35; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 36
        Male_data_36 = [Male_data_36; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 37
        Male_data_37 = [Male_data_37; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 38
        Male_data_38 = [Male_data_38; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 39
        Male_data_39 = [Male_data_39; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 40
        Male_data_40 = [Male_data_40; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 41
        Male_data_41 = [Male_data_41; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 42
        Male_data_42 = [Male_data_42; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 43
        Male_data_43 = [Male_data_43; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 44
        Male_data_44 = [Male_data_44; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 45
        Male_data_45 = [Male_data_45; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 46
        Male_data_46 = [Male_data_46; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 47
        Male_data_47 = [Male_data_47; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 48
        Male_data_48 = [Male_data_48; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 49
        Male_data_49 = [Male_data_49; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 50
        Male_data_50 = [Male_data_50; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 51
        Male_data_51 = [Male_data_51; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 52
        Male_data_52 = [Male_data_52; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 53
        Male_data_53 = [Male_data_53; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 54
        Male_data_54 = [Male_data_54; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 55
        Male_data_55 = [Male_data_55; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 56
        Male_data_56 = [Male_data_56; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 57
        Male_data_57 = [Male_data_57; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 58
        Male_data_58 = [Male_data_58; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 59
        Male_data_59 = [Male_data_59; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 60
        Male_data_60 = [Male_data_60; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 61
        Male_data_61 = [Male_data_61; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 62
        Male_data_62 = [Male_data_62; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 63
        Male_data_63 = [Male_data_63; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 64
        Male_data_64 = [Male_data_64; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 65
        Male_data_65 = [Male_data_65; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 66
        Male_data_66 = [Male_data_66; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 67
        Male_data_67 = [Male_data_67; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 68
        Male_data_68 = [Male_data_68; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 69
        Male_data_69 = [Male_data_69; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 70
        Male_data_70 = [Male_data_70; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 71
        Male_data_71 = [Male_data_71; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 72
        Male_data_72 = [Male_data_72; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 73
        Male_data_73 = [Male_data_73; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 74
        Male_data_74 = [Male_data_74; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 75
        Male_data_75 = [Male_data_75; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 76
        Male_data_76 = [Male_data_76; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 77
        Male_data_77 = [Male_data_77; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 78
        Male_data_78 = [Male_data_78; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 79
        Male_data_79 = [Male_data_79; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 80
        Male_data_80 = [Male_data_80; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
end
% We calculate the correlation coefficients
% Weight VS Weight*Height^c
Age_1_KNHANES_2007 = 1:80;
Corr_1_KNHANES_2007_Female = [...
    My_Corr(Female_data_1(:,2),Female_data_1(:,2).*(Female_data_1(:,1)/100).^c) ...
    My_Corr(Female_data_2(:,2),Female_data_2(:,2).*(Female_data_2(:,1)/100).^c) ...
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

Corr_1_KNHANES_2007_Male = [...
    My_Corr(Male_data_1(:,2),Male_data_1(:,2).*(Male_data_1(:,1)/100).^c) ...
    My_Corr(Male_data_2(:,2),Male_data_2(:,2).*(Male_data_2(:,1)/100).^c) ...
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

%% KNHANES 2008.xlsx
% Loading the data
Female_data = xlsread('KNHANES\KNHANES 2008.xlsx','Female','B:D');
Male_data = xlsread('KNHANES\KNHANES 2008.xlsx','Male','B:D');
% Grouping by age
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
Female_data_80 = []; % ==80

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
Male_data_80 = []; % ==80

% For Female
[M N] = size(Female_data); % ID	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Female_data(i,1) == 1
        Female_data_1 = [Female_data_1; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 2
        Female_data_2 = [Female_data_2; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 3
        Female_data_3 = [Female_data_3; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 4
        Female_data_4 = [Female_data_4; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 5
        Female_data_5 = [Female_data_5; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 6
        Female_data_6 = [Female_data_6; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 7
        Female_data_7 = [Female_data_7; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 8
        Female_data_8 = [Female_data_8; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 9
        Female_data_9 = [Female_data_9; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 10
        Female_data_10 = [Female_data_10; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 11
        Female_data_11 = [Female_data_11; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 12
        Female_data_12 = [Female_data_12; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 13
        Female_data_13 = [Female_data_13; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 14
        Female_data_14 = [Female_data_14; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 15
        Female_data_15 = [Female_data_15; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 16
        Female_data_16 = [Female_data_16; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 17
        Female_data_17 = [Female_data_17; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 18
        Female_data_18 = [Female_data_18; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 19
        Female_data_19 = [Female_data_19; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 20
        Female_data_20 = [Female_data_20; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 21
        Female_data_21 = [Female_data_21; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 22
        Female_data_22 = [Female_data_22; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 23
        Female_data_23 = [Female_data_23; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 24
        Female_data_24 = [Female_data_24; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 25
        Female_data_25 = [Female_data_25; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 26
        Female_data_26 = [Female_data_26; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 27
        Female_data_27 = [Female_data_27; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 28
        Female_data_28 = [Female_data_28; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 29
        Female_data_29 = [Female_data_29; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 30
        Female_data_30 = [Female_data_30; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 31
        Female_data_31 = [Female_data_31; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 32
        Female_data_32 = [Female_data_32; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 33
        Female_data_33 = [Female_data_33; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 34
        Female_data_34 = [Female_data_34; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 35
        Female_data_35 = [Female_data_35; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 36
        Female_data_36 = [Female_data_36; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 37
        Female_data_37 = [Female_data_37; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 38
        Female_data_38 = [Female_data_38; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 39
        Female_data_39 = [Female_data_39; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 40
        Female_data_40 = [Female_data_40; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 41
        Female_data_41 = [Female_data_41; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 42
        Female_data_42 = [Female_data_42; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 43
        Female_data_43 = [Female_data_43; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 44
        Female_data_44 = [Female_data_44; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 45
        Female_data_45 = [Female_data_45; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 46
        Female_data_46 = [Female_data_46; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 47
        Female_data_47 = [Female_data_47; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 48
        Female_data_48 = [Female_data_48; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 49
        Female_data_49 = [Female_data_49; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 50
        Female_data_50 = [Female_data_50; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 51
        Female_data_51 = [Female_data_51; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 52
        Female_data_52 = [Female_data_52; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 53
        Female_data_53 = [Female_data_53; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 54
        Female_data_54 = [Female_data_54; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 55
        Female_data_55 = [Female_data_55; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 56
        Female_data_56 = [Female_data_56; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 57
        Female_data_57 = [Female_data_57; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 58
        Female_data_58 = [Female_data_58; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 59
        Female_data_59 = [Female_data_59; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 60
        Female_data_60 = [Female_data_60; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 61
        Female_data_61 = [Female_data_61; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 62
        Female_data_62 = [Female_data_62; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 63
        Female_data_63 = [Female_data_63; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 64
        Female_data_64 = [Female_data_64; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 65
        Female_data_65 = [Female_data_65; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 66
        Female_data_66 = [Female_data_66; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 67
        Female_data_67 = [Female_data_67; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 68
        Female_data_68 = [Female_data_68; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 69
        Female_data_69 = [Female_data_69; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 70
        Female_data_70 = [Female_data_70; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 71
        Female_data_71 = [Female_data_71; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 72
        Female_data_72 = [Female_data_72; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 73
        Female_data_73 = [Female_data_73; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 74
        Female_data_74 = [Female_data_74; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 75
        Female_data_75 = [Female_data_75; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 76
        Female_data_76 = [Female_data_76; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 77
        Female_data_77 = [Female_data_77; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 78
        Female_data_78 = [Female_data_78; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 79
        Female_data_79 = [Female_data_79; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 80
        Female_data_80 = [Female_data_80; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
end
% For Male
[M N] = size(Male_data); % ID	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Male_data(i,1) == 1
        Male_data_1 = [Male_data_1; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 2
        Male_data_2 = [Male_data_2; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 3
        Male_data_3 = [Male_data_3; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 4
        Male_data_4 = [Male_data_4; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 5
        Male_data_5 = [Male_data_5; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 6
        Male_data_6 = [Male_data_6; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 7
        Male_data_7 = [Male_data_7; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 8
        Male_data_8 = [Male_data_8; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 9
        Male_data_9 = [Male_data_9; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 10
        Male_data_10 = [Male_data_10; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 11
        Male_data_11 = [Male_data_11; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 12
        Male_data_12 = [Male_data_12; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 13
        Male_data_13 = [Male_data_13; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 14
        Male_data_14 = [Male_data_14; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 15
        Male_data_15 = [Male_data_15; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 16
        Male_data_16 = [Male_data_16; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 17
        Male_data_17 = [Male_data_17; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 18
        Male_data_18 = [Male_data_18; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 19
        Male_data_19 = [Male_data_19; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 20
        Male_data_20 = [Male_data_20; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 21
        Male_data_21 = [Male_data_21; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 22
        Male_data_22 = [Male_data_22; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 23
        Male_data_23 = [Male_data_23; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 24
        Male_data_24 = [Male_data_24; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 25
        Male_data_25 = [Male_data_25; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 26
        Male_data_26 = [Male_data_26; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 27
        Male_data_27 = [Male_data_27; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 28
        Male_data_28 = [Male_data_28; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 29
        Male_data_29 = [Male_data_29; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 30
        Male_data_30 = [Male_data_30; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 31
        Male_data_31 = [Male_data_31; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 32
        Male_data_32 = [Male_data_32; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 33
        Male_data_33 = [Male_data_33; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 34
        Male_data_34 = [Male_data_34; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 35
        Male_data_35 = [Male_data_35; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 36
        Male_data_36 = [Male_data_36; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 37
        Male_data_37 = [Male_data_37; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 38
        Male_data_38 = [Male_data_38; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 39
        Male_data_39 = [Male_data_39; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 40
        Male_data_40 = [Male_data_40; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 41
        Male_data_41 = [Male_data_41; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 42
        Male_data_42 = [Male_data_42; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 43
        Male_data_43 = [Male_data_43; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 44
        Male_data_44 = [Male_data_44; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 45
        Male_data_45 = [Male_data_45; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 46
        Male_data_46 = [Male_data_46; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 47
        Male_data_47 = [Male_data_47; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 48
        Male_data_48 = [Male_data_48; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 49
        Male_data_49 = [Male_data_49; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 50
        Male_data_50 = [Male_data_50; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 51
        Male_data_51 = [Male_data_51; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 52
        Male_data_52 = [Male_data_52; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 53
        Male_data_53 = [Male_data_53; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 54
        Male_data_54 = [Male_data_54; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 55
        Male_data_55 = [Male_data_55; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 56
        Male_data_56 = [Male_data_56; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 57
        Male_data_57 = [Male_data_57; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 58
        Male_data_58 = [Male_data_58; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 59
        Male_data_59 = [Male_data_59; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 60
        Male_data_60 = [Male_data_60; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 61
        Male_data_61 = [Male_data_61; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 62
        Male_data_62 = [Male_data_62; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 63
        Male_data_63 = [Male_data_63; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 64
        Male_data_64 = [Male_data_64; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 65
        Male_data_65 = [Male_data_65; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 66
        Male_data_66 = [Male_data_66; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 67
        Male_data_67 = [Male_data_67; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 68
        Male_data_68 = [Male_data_68; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 69
        Male_data_69 = [Male_data_69; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 70
        Male_data_70 = [Male_data_70; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 71
        Male_data_71 = [Male_data_71; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 72
        Male_data_72 = [Male_data_72; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 73
        Male_data_73 = [Male_data_73; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 74
        Male_data_74 = [Male_data_74; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 75
        Male_data_75 = [Male_data_75; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 76
        Male_data_76 = [Male_data_76; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 77
        Male_data_77 = [Male_data_77; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 78
        Male_data_78 = [Male_data_78; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 79
        Male_data_79 = [Male_data_79; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 80
        Male_data_80 = [Male_data_80; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
end
% We calculate the correlation coefficients
% Weight VS Weight*Height^c
Age_1_KNHANES_2008 = 1:80;
Corr_1_KNHANES_2008_Female = [...
    My_Corr(Female_data_1(:,2),Female_data_1(:,2).*(Female_data_1(:,1)/100).^c) ...
    My_Corr(Female_data_2(:,2),Female_data_2(:,2).*(Female_data_2(:,1)/100).^c) ...
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

Corr_1_KNHANES_2008_Male = [...
    My_Corr(Male_data_1(:,2),Male_data_1(:,2).*(Male_data_1(:,1)/100).^c) ...
    My_Corr(Male_data_2(:,2),Male_data_2(:,2).*(Male_data_2(:,1)/100).^c) ...
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

%% KNHANES 2009.xlsx
% Loading the data
Female_data = xlsread('KNHANES\KNHANES 2009.xlsx','Female','B:D');
Male_data = xlsread('KNHANES\KNHANES 2009.xlsx','Male','B:D');
% Grouping by age
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
Female_data_80 = []; % ==80

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
Male_data_80 = []; % ==80

% For Female
[M N] = size(Female_data); % ID	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Female_data(i,1) == 1
        Female_data_1 = [Female_data_1; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 2
        Female_data_2 = [Female_data_2; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 3
        Female_data_3 = [Female_data_3; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 4
        Female_data_4 = [Female_data_4; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 5
        Female_data_5 = [Female_data_5; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 6
        Female_data_6 = [Female_data_6; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 7
        Female_data_7 = [Female_data_7; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 8
        Female_data_8 = [Female_data_8; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 9
        Female_data_9 = [Female_data_9; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 10
        Female_data_10 = [Female_data_10; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 11
        Female_data_11 = [Female_data_11; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 12
        Female_data_12 = [Female_data_12; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 13
        Female_data_13 = [Female_data_13; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 14
        Female_data_14 = [Female_data_14; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 15
        Female_data_15 = [Female_data_15; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 16
        Female_data_16 = [Female_data_16; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 17
        Female_data_17 = [Female_data_17; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 18
        Female_data_18 = [Female_data_18; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 19
        Female_data_19 = [Female_data_19; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 20
        Female_data_20 = [Female_data_20; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 21
        Female_data_21 = [Female_data_21; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 22
        Female_data_22 = [Female_data_22; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 23
        Female_data_23 = [Female_data_23; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 24
        Female_data_24 = [Female_data_24; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 25
        Female_data_25 = [Female_data_25; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 26
        Female_data_26 = [Female_data_26; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 27
        Female_data_27 = [Female_data_27; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 28
        Female_data_28 = [Female_data_28; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 29
        Female_data_29 = [Female_data_29; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 30
        Female_data_30 = [Female_data_30; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 31
        Female_data_31 = [Female_data_31; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 32
        Female_data_32 = [Female_data_32; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 33
        Female_data_33 = [Female_data_33; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 34
        Female_data_34 = [Female_data_34; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 35
        Female_data_35 = [Female_data_35; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 36
        Female_data_36 = [Female_data_36; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 37
        Female_data_37 = [Female_data_37; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 38
        Female_data_38 = [Female_data_38; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 39
        Female_data_39 = [Female_data_39; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 40
        Female_data_40 = [Female_data_40; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 41
        Female_data_41 = [Female_data_41; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 42
        Female_data_42 = [Female_data_42; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 43
        Female_data_43 = [Female_data_43; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 44
        Female_data_44 = [Female_data_44; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 45
        Female_data_45 = [Female_data_45; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 46
        Female_data_46 = [Female_data_46; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 47
        Female_data_47 = [Female_data_47; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 48
        Female_data_48 = [Female_data_48; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 49
        Female_data_49 = [Female_data_49; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 50
        Female_data_50 = [Female_data_50; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 51
        Female_data_51 = [Female_data_51; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 52
        Female_data_52 = [Female_data_52; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 53
        Female_data_53 = [Female_data_53; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 54
        Female_data_54 = [Female_data_54; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 55
        Female_data_55 = [Female_data_55; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 56
        Female_data_56 = [Female_data_56; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 57
        Female_data_57 = [Female_data_57; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 58
        Female_data_58 = [Female_data_58; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 59
        Female_data_59 = [Female_data_59; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 60
        Female_data_60 = [Female_data_60; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 61
        Female_data_61 = [Female_data_61; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 62
        Female_data_62 = [Female_data_62; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 63
        Female_data_63 = [Female_data_63; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 64
        Female_data_64 = [Female_data_64; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 65
        Female_data_65 = [Female_data_65; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 66
        Female_data_66 = [Female_data_66; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 67
        Female_data_67 = [Female_data_67; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 68
        Female_data_68 = [Female_data_68; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 69
        Female_data_69 = [Female_data_69; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 70
        Female_data_70 = [Female_data_70; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 71
        Female_data_71 = [Female_data_71; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 72
        Female_data_72 = [Female_data_72; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 73
        Female_data_73 = [Female_data_73; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 74
        Female_data_74 = [Female_data_74; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 75
        Female_data_75 = [Female_data_75; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 76
        Female_data_76 = [Female_data_76; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 77
        Female_data_77 = [Female_data_77; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 78
        Female_data_78 = [Female_data_78; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 79
        Female_data_79 = [Female_data_79; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 80
        Female_data_80 = [Female_data_80; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
end
% For Male
[M N] = size(Male_data); % ID	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Male_data(i,1) == 1
        Male_data_1 = [Male_data_1; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 2
        Male_data_2 = [Male_data_2; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 3
        Male_data_3 = [Male_data_3; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 4
        Male_data_4 = [Male_data_4; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 5
        Male_data_5 = [Male_data_5; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 6
        Male_data_6 = [Male_data_6; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 7
        Male_data_7 = [Male_data_7; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 8
        Male_data_8 = [Male_data_8; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 9
        Male_data_9 = [Male_data_9; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 10
        Male_data_10 = [Male_data_10; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 11
        Male_data_11 = [Male_data_11; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 12
        Male_data_12 = [Male_data_12; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 13
        Male_data_13 = [Male_data_13; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 14
        Male_data_14 = [Male_data_14; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 15
        Male_data_15 = [Male_data_15; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 16
        Male_data_16 = [Male_data_16; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 17
        Male_data_17 = [Male_data_17; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 18
        Male_data_18 = [Male_data_18; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 19
        Male_data_19 = [Male_data_19; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 20
        Male_data_20 = [Male_data_20; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 21
        Male_data_21 = [Male_data_21; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 22
        Male_data_22 = [Male_data_22; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 23
        Male_data_23 = [Male_data_23; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 24
        Male_data_24 = [Male_data_24; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 25
        Male_data_25 = [Male_data_25; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 26
        Male_data_26 = [Male_data_26; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 27
        Male_data_27 = [Male_data_27; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 28
        Male_data_28 = [Male_data_28; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 29
        Male_data_29 = [Male_data_29; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 30
        Male_data_30 = [Male_data_30; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 31
        Male_data_31 = [Male_data_31; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 32
        Male_data_32 = [Male_data_32; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 33
        Male_data_33 = [Male_data_33; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 34
        Male_data_34 = [Male_data_34; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 35
        Male_data_35 = [Male_data_35; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 36
        Male_data_36 = [Male_data_36; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 37
        Male_data_37 = [Male_data_37; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 38
        Male_data_38 = [Male_data_38; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 39
        Male_data_39 = [Male_data_39; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 40
        Male_data_40 = [Male_data_40; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 41
        Male_data_41 = [Male_data_41; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 42
        Male_data_42 = [Male_data_42; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 43
        Male_data_43 = [Male_data_43; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 44
        Male_data_44 = [Male_data_44; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 45
        Male_data_45 = [Male_data_45; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 46
        Male_data_46 = [Male_data_46; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 47
        Male_data_47 = [Male_data_47; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 48
        Male_data_48 = [Male_data_48; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 49
        Male_data_49 = [Male_data_49; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 50
        Male_data_50 = [Male_data_50; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 51
        Male_data_51 = [Male_data_51; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 52
        Male_data_52 = [Male_data_52; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 53
        Male_data_53 = [Male_data_53; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 54
        Male_data_54 = [Male_data_54; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 55
        Male_data_55 = [Male_data_55; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 56
        Male_data_56 = [Male_data_56; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 57
        Male_data_57 = [Male_data_57; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 58
        Male_data_58 = [Male_data_58; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 59
        Male_data_59 = [Male_data_59; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 60
        Male_data_60 = [Male_data_60; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 61
        Male_data_61 = [Male_data_61; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 62
        Male_data_62 = [Male_data_62; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 63
        Male_data_63 = [Male_data_63; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 64
        Male_data_64 = [Male_data_64; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 65
        Male_data_65 = [Male_data_65; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 66
        Male_data_66 = [Male_data_66; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 67
        Male_data_67 = [Male_data_67; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 68
        Male_data_68 = [Male_data_68; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 69
        Male_data_69 = [Male_data_69; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 70
        Male_data_70 = [Male_data_70; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 71
        Male_data_71 = [Male_data_71; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 72
        Male_data_72 = [Male_data_72; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 73
        Male_data_73 = [Male_data_73; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 74
        Male_data_74 = [Male_data_74; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 75
        Male_data_75 = [Male_data_75; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 76
        Male_data_76 = [Male_data_76; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 77
        Male_data_77 = [Male_data_77; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 78
        Male_data_78 = [Male_data_78; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 79
        Male_data_79 = [Male_data_79; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 80
        Male_data_80 = [Male_data_80; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
end
% We calculate the correlation coefficients
% Weight VS Weight*Height^c
Age_1_KNHANES_2009 = 1:80;
Corr_1_KNHANES_2009_Female = [...
    My_Corr(Female_data_1(:,2),Female_data_1(:,2).*(Female_data_1(:,1)/100).^c) ...
    My_Corr(Female_data_2(:,2),Female_data_2(:,2).*(Female_data_2(:,1)/100).^c) ...
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

Corr_1_KNHANES_2009_Male = [...
    My_Corr(Male_data_1(:,2),Male_data_1(:,2).*(Male_data_1(:,1)/100).^c) ...
    My_Corr(Male_data_2(:,2),Male_data_2(:,2).*(Male_data_2(:,1)/100).^c) ...
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

%% KNHANES 2010.xlsx
% Loading the data
Female_data = xlsread('KNHANES\KNHANES 2010.xlsx','Female','B:D');
Male_data = xlsread('KNHANES\KNHANES 2010.xlsx','Male','B:D');
% Grouping by age
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
Female_data_80 = []; % ==80

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
Male_data_80 = []; % ==80

% For Female
[M N] = size(Female_data); % ID	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Female_data(i,1) == 1
        Female_data_1 = [Female_data_1; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 2
        Female_data_2 = [Female_data_2; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 3
        Female_data_3 = [Female_data_3; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 4
        Female_data_4 = [Female_data_4; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 5
        Female_data_5 = [Female_data_5; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 6
        Female_data_6 = [Female_data_6; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 7
        Female_data_7 = [Female_data_7; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 8
        Female_data_8 = [Female_data_8; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 9
        Female_data_9 = [Female_data_9; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 10
        Female_data_10 = [Female_data_10; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 11
        Female_data_11 = [Female_data_11; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 12
        Female_data_12 = [Female_data_12; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 13
        Female_data_13 = [Female_data_13; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 14
        Female_data_14 = [Female_data_14; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 15
        Female_data_15 = [Female_data_15; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 16
        Female_data_16 = [Female_data_16; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 17
        Female_data_17 = [Female_data_17; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 18
        Female_data_18 = [Female_data_18; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 19
        Female_data_19 = [Female_data_19; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 20
        Female_data_20 = [Female_data_20; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 21
        Female_data_21 = [Female_data_21; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 22
        Female_data_22 = [Female_data_22; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 23
        Female_data_23 = [Female_data_23; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 24
        Female_data_24 = [Female_data_24; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 25
        Female_data_25 = [Female_data_25; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 26
        Female_data_26 = [Female_data_26; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 27
        Female_data_27 = [Female_data_27; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 28
        Female_data_28 = [Female_data_28; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 29
        Female_data_29 = [Female_data_29; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 30
        Female_data_30 = [Female_data_30; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 31
        Female_data_31 = [Female_data_31; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 32
        Female_data_32 = [Female_data_32; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 33
        Female_data_33 = [Female_data_33; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 34
        Female_data_34 = [Female_data_34; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 35
        Female_data_35 = [Female_data_35; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 36
        Female_data_36 = [Female_data_36; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 37
        Female_data_37 = [Female_data_37; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 38
        Female_data_38 = [Female_data_38; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 39
        Female_data_39 = [Female_data_39; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 40
        Female_data_40 = [Female_data_40; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 41
        Female_data_41 = [Female_data_41; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 42
        Female_data_42 = [Female_data_42; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 43
        Female_data_43 = [Female_data_43; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 44
        Female_data_44 = [Female_data_44; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 45
        Female_data_45 = [Female_data_45; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 46
        Female_data_46 = [Female_data_46; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 47
        Female_data_47 = [Female_data_47; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 48
        Female_data_48 = [Female_data_48; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 49
        Female_data_49 = [Female_data_49; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 50
        Female_data_50 = [Female_data_50; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 51
        Female_data_51 = [Female_data_51; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 52
        Female_data_52 = [Female_data_52; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 53
        Female_data_53 = [Female_data_53; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 54
        Female_data_54 = [Female_data_54; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 55
        Female_data_55 = [Female_data_55; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 56
        Female_data_56 = [Female_data_56; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 57
        Female_data_57 = [Female_data_57; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 58
        Female_data_58 = [Female_data_58; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 59
        Female_data_59 = [Female_data_59; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 60
        Female_data_60 = [Female_data_60; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 61
        Female_data_61 = [Female_data_61; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 62
        Female_data_62 = [Female_data_62; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 63
        Female_data_63 = [Female_data_63; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 64
        Female_data_64 = [Female_data_64; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 65
        Female_data_65 = [Female_data_65; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 66
        Female_data_66 = [Female_data_66; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 67
        Female_data_67 = [Female_data_67; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 68
        Female_data_68 = [Female_data_68; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 69
        Female_data_69 = [Female_data_69; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 70
        Female_data_70 = [Female_data_70; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 71
        Female_data_71 = [Female_data_71; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 72
        Female_data_72 = [Female_data_72; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 73
        Female_data_73 = [Female_data_73; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 74
        Female_data_74 = [Female_data_74; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 75
        Female_data_75 = [Female_data_75; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 76
        Female_data_76 = [Female_data_76; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 77
        Female_data_77 = [Female_data_77; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 78
        Female_data_78 = [Female_data_78; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 79
        Female_data_79 = [Female_data_79; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 80
        Female_data_80 = [Female_data_80; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
end
% For Male
[M N] = size(Male_data); % ID	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Male_data(i,1) == 1
        Male_data_1 = [Male_data_1; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 2
        Male_data_2 = [Male_data_2; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 3
        Male_data_3 = [Male_data_3; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 4
        Male_data_4 = [Male_data_4; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 5
        Male_data_5 = [Male_data_5; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 6
        Male_data_6 = [Male_data_6; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 7
        Male_data_7 = [Male_data_7; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 8
        Male_data_8 = [Male_data_8; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 9
        Male_data_9 = [Male_data_9; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 10
        Male_data_10 = [Male_data_10; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 11
        Male_data_11 = [Male_data_11; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 12
        Male_data_12 = [Male_data_12; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 13
        Male_data_13 = [Male_data_13; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 14
        Male_data_14 = [Male_data_14; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 15
        Male_data_15 = [Male_data_15; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 16
        Male_data_16 = [Male_data_16; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 17
        Male_data_17 = [Male_data_17; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 18
        Male_data_18 = [Male_data_18; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 19
        Male_data_19 = [Male_data_19; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 20
        Male_data_20 = [Male_data_20; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 21
        Male_data_21 = [Male_data_21; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 22
        Male_data_22 = [Male_data_22; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 23
        Male_data_23 = [Male_data_23; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 24
        Male_data_24 = [Male_data_24; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 25
        Male_data_25 = [Male_data_25; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 26
        Male_data_26 = [Male_data_26; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 27
        Male_data_27 = [Male_data_27; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 28
        Male_data_28 = [Male_data_28; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 29
        Male_data_29 = [Male_data_29; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 30
        Male_data_30 = [Male_data_30; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 31
        Male_data_31 = [Male_data_31; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 32
        Male_data_32 = [Male_data_32; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 33
        Male_data_33 = [Male_data_33; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 34
        Male_data_34 = [Male_data_34; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 35
        Male_data_35 = [Male_data_35; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 36
        Male_data_36 = [Male_data_36; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 37
        Male_data_37 = [Male_data_37; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 38
        Male_data_38 = [Male_data_38; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 39
        Male_data_39 = [Male_data_39; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 40
        Male_data_40 = [Male_data_40; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 41
        Male_data_41 = [Male_data_41; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 42
        Male_data_42 = [Male_data_42; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 43
        Male_data_43 = [Male_data_43; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 44
        Male_data_44 = [Male_data_44; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 45
        Male_data_45 = [Male_data_45; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 46
        Male_data_46 = [Male_data_46; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 47
        Male_data_47 = [Male_data_47; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 48
        Male_data_48 = [Male_data_48; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 49
        Male_data_49 = [Male_data_49; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 50
        Male_data_50 = [Male_data_50; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 51
        Male_data_51 = [Male_data_51; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 52
        Male_data_52 = [Male_data_52; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 53
        Male_data_53 = [Male_data_53; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 54
        Male_data_54 = [Male_data_54; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 55
        Male_data_55 = [Male_data_55; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 56
        Male_data_56 = [Male_data_56; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 57
        Male_data_57 = [Male_data_57; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 58
        Male_data_58 = [Male_data_58; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 59
        Male_data_59 = [Male_data_59; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 60
        Male_data_60 = [Male_data_60; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 61
        Male_data_61 = [Male_data_61; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 62
        Male_data_62 = [Male_data_62; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 63
        Male_data_63 = [Male_data_63; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 64
        Male_data_64 = [Male_data_64; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 65
        Male_data_65 = [Male_data_65; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 66
        Male_data_66 = [Male_data_66; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 67
        Male_data_67 = [Male_data_67; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 68
        Male_data_68 = [Male_data_68; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 69
        Male_data_69 = [Male_data_69; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 70
        Male_data_70 = [Male_data_70; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 71
        Male_data_71 = [Male_data_71; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 72
        Male_data_72 = [Male_data_72; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 73
        Male_data_73 = [Male_data_73; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 74
        Male_data_74 = [Male_data_74; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 75
        Male_data_75 = [Male_data_75; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 76
        Male_data_76 = [Male_data_76; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 77
        Male_data_77 = [Male_data_77; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 78
        Male_data_78 = [Male_data_78; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 79
        Male_data_79 = [Male_data_79; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 80
        Male_data_80 = [Male_data_80; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
end
% We calculate the correlation coefficients
% Weight VS Weight*Height^c
Age_1_KNHANES_2010 = 1:80;
Corr_1_KNHANES_2010_Female = [...
    My_Corr(Female_data_1(:,2),Female_data_1(:,2).*(Female_data_1(:,1)/100).^c) ...
    My_Corr(Female_data_2(:,2),Female_data_2(:,2).*(Female_data_2(:,1)/100).^c) ...
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

Corr_1_KNHANES_2010_Male = [...
    My_Corr(Male_data_1(:,2),Male_data_1(:,2).*(Male_data_1(:,1)/100).^c) ...
    My_Corr(Male_data_2(:,2),Male_data_2(:,2).*(Male_data_2(:,1)/100).^c) ...
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

%% KNHANES 2011.xlsx
% Loading the data
Female_data = xlsread('KNHANES\KNHANES 2011.xlsx','Female','B:D');
Male_data = xlsread('KNHANES\KNHANES 2011.xlsx','Male','B:D');
% Grouping by age
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
Female_data_80 = []; % ==80

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
Male_data_80 = []; % ==80

% For Female
[M N] = size(Female_data); % ID	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Female_data(i,1) == 1
        Female_data_1 = [Female_data_1; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 2
        Female_data_2 = [Female_data_2; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 3
        Female_data_3 = [Female_data_3; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 4
        Female_data_4 = [Female_data_4; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 5
        Female_data_5 = [Female_data_5; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 6
        Female_data_6 = [Female_data_6; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 7
        Female_data_7 = [Female_data_7; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 8
        Female_data_8 = [Female_data_8; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 9
        Female_data_9 = [Female_data_9; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 10
        Female_data_10 = [Female_data_10; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 11
        Female_data_11 = [Female_data_11; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 12
        Female_data_12 = [Female_data_12; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 13
        Female_data_13 = [Female_data_13; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 14
        Female_data_14 = [Female_data_14; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 15
        Female_data_15 = [Female_data_15; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 16
        Female_data_16 = [Female_data_16; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 17
        Female_data_17 = [Female_data_17; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 18
        Female_data_18 = [Female_data_18; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 19
        Female_data_19 = [Female_data_19; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 20
        Female_data_20 = [Female_data_20; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 21
        Female_data_21 = [Female_data_21; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 22
        Female_data_22 = [Female_data_22; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 23
        Female_data_23 = [Female_data_23; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 24
        Female_data_24 = [Female_data_24; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 25
        Female_data_25 = [Female_data_25; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 26
        Female_data_26 = [Female_data_26; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 27
        Female_data_27 = [Female_data_27; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 28
        Female_data_28 = [Female_data_28; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 29
        Female_data_29 = [Female_data_29; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 30
        Female_data_30 = [Female_data_30; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 31
        Female_data_31 = [Female_data_31; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 32
        Female_data_32 = [Female_data_32; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 33
        Female_data_33 = [Female_data_33; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 34
        Female_data_34 = [Female_data_34; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 35
        Female_data_35 = [Female_data_35; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 36
        Female_data_36 = [Female_data_36; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 37
        Female_data_37 = [Female_data_37; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 38
        Female_data_38 = [Female_data_38; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 39
        Female_data_39 = [Female_data_39; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 40
        Female_data_40 = [Female_data_40; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 41
        Female_data_41 = [Female_data_41; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 42
        Female_data_42 = [Female_data_42; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 43
        Female_data_43 = [Female_data_43; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 44
        Female_data_44 = [Female_data_44; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 45
        Female_data_45 = [Female_data_45; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 46
        Female_data_46 = [Female_data_46; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 47
        Female_data_47 = [Female_data_47; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 48
        Female_data_48 = [Female_data_48; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 49
        Female_data_49 = [Female_data_49; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 50
        Female_data_50 = [Female_data_50; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 51
        Female_data_51 = [Female_data_51; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 52
        Female_data_52 = [Female_data_52; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 53
        Female_data_53 = [Female_data_53; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 54
        Female_data_54 = [Female_data_54; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 55
        Female_data_55 = [Female_data_55; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 56
        Female_data_56 = [Female_data_56; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 57
        Female_data_57 = [Female_data_57; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 58
        Female_data_58 = [Female_data_58; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 59
        Female_data_59 = [Female_data_59; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 60
        Female_data_60 = [Female_data_60; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 61
        Female_data_61 = [Female_data_61; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 62
        Female_data_62 = [Female_data_62; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 63
        Female_data_63 = [Female_data_63; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 64
        Female_data_64 = [Female_data_64; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 65
        Female_data_65 = [Female_data_65; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 66
        Female_data_66 = [Female_data_66; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 67
        Female_data_67 = [Female_data_67; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 68
        Female_data_68 = [Female_data_68; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 69
        Female_data_69 = [Female_data_69; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 70
        Female_data_70 = [Female_data_70; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 71
        Female_data_71 = [Female_data_71; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 72
        Female_data_72 = [Female_data_72; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 73
        Female_data_73 = [Female_data_73; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 74
        Female_data_74 = [Female_data_74; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 75
        Female_data_75 = [Female_data_75; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 76
        Female_data_76 = [Female_data_76; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 77
        Female_data_77 = [Female_data_77; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 78
        Female_data_78 = [Female_data_78; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 79
        Female_data_79 = [Female_data_79; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 80
        Female_data_80 = [Female_data_80; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
end
% For Male
[M N] = size(Male_data); % ID	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Male_data(i,1) == 1
        Male_data_1 = [Male_data_1; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 2
        Male_data_2 = [Male_data_2; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 3
        Male_data_3 = [Male_data_3; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 4
        Male_data_4 = [Male_data_4; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 5
        Male_data_5 = [Male_data_5; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 6
        Male_data_6 = [Male_data_6; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 7
        Male_data_7 = [Male_data_7; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 8
        Male_data_8 = [Male_data_8; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 9
        Male_data_9 = [Male_data_9; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 10
        Male_data_10 = [Male_data_10; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 11
        Male_data_11 = [Male_data_11; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 12
        Male_data_12 = [Male_data_12; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 13
        Male_data_13 = [Male_data_13; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 14
        Male_data_14 = [Male_data_14; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 15
        Male_data_15 = [Male_data_15; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 16
        Male_data_16 = [Male_data_16; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 17
        Male_data_17 = [Male_data_17; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 18
        Male_data_18 = [Male_data_18; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 19
        Male_data_19 = [Male_data_19; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 20
        Male_data_20 = [Male_data_20; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 21
        Male_data_21 = [Male_data_21; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 22
        Male_data_22 = [Male_data_22; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 23
        Male_data_23 = [Male_data_23; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 24
        Male_data_24 = [Male_data_24; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 25
        Male_data_25 = [Male_data_25; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 26
        Male_data_26 = [Male_data_26; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 27
        Male_data_27 = [Male_data_27; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 28
        Male_data_28 = [Male_data_28; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 29
        Male_data_29 = [Male_data_29; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 30
        Male_data_30 = [Male_data_30; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 31
        Male_data_31 = [Male_data_31; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 32
        Male_data_32 = [Male_data_32; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 33
        Male_data_33 = [Male_data_33; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 34
        Male_data_34 = [Male_data_34; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 35
        Male_data_35 = [Male_data_35; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 36
        Male_data_36 = [Male_data_36; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 37
        Male_data_37 = [Male_data_37; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 38
        Male_data_38 = [Male_data_38; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 39
        Male_data_39 = [Male_data_39; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 40
        Male_data_40 = [Male_data_40; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 41
        Male_data_41 = [Male_data_41; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 42
        Male_data_42 = [Male_data_42; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 43
        Male_data_43 = [Male_data_43; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 44
        Male_data_44 = [Male_data_44; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 45
        Male_data_45 = [Male_data_45; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 46
        Male_data_46 = [Male_data_46; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 47
        Male_data_47 = [Male_data_47; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 48
        Male_data_48 = [Male_data_48; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 49
        Male_data_49 = [Male_data_49; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 50
        Male_data_50 = [Male_data_50; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 51
        Male_data_51 = [Male_data_51; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 52
        Male_data_52 = [Male_data_52; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 53
        Male_data_53 = [Male_data_53; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 54
        Male_data_54 = [Male_data_54; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 55
        Male_data_55 = [Male_data_55; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 56
        Male_data_56 = [Male_data_56; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 57
        Male_data_57 = [Male_data_57; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 58
        Male_data_58 = [Male_data_58; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 59
        Male_data_59 = [Male_data_59; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 60
        Male_data_60 = [Male_data_60; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 61
        Male_data_61 = [Male_data_61; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 62
        Male_data_62 = [Male_data_62; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 63
        Male_data_63 = [Male_data_63; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 64
        Male_data_64 = [Male_data_64; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 65
        Male_data_65 = [Male_data_65; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 66
        Male_data_66 = [Male_data_66; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 67
        Male_data_67 = [Male_data_67; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 68
        Male_data_68 = [Male_data_68; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 69
        Male_data_69 = [Male_data_69; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 70
        Male_data_70 = [Male_data_70; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 71
        Male_data_71 = [Male_data_71; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 72
        Male_data_72 = [Male_data_72; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 73
        Male_data_73 = [Male_data_73; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 74
        Male_data_74 = [Male_data_74; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 75
        Male_data_75 = [Male_data_75; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 76
        Male_data_76 = [Male_data_76; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 77
        Male_data_77 = [Male_data_77; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 78
        Male_data_78 = [Male_data_78; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 79
        Male_data_79 = [Male_data_79; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 80
        Male_data_80 = [Male_data_80; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
end
% We calculate the correlation coefficients
% Weight VS Weight*Height^c
Age_1_KNHANES_2011 = 1:80;
Corr_1_KNHANES_2011_Female = [...
    My_Corr(Female_data_1(:,2),Female_data_1(:,2).*(Female_data_1(:,1)/100).^c) ...
    My_Corr(Female_data_2(:,2),Female_data_2(:,2).*(Female_data_2(:,1)/100).^c) ...
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

Corr_1_KNHANES_2011_Male = [...
    My_Corr(Male_data_1(:,2),Male_data_1(:,2).*(Male_data_1(:,1)/100).^c) ...
    My_Corr(Male_data_2(:,2),Male_data_2(:,2).*(Male_data_2(:,1)/100).^c) ...
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

%% KNHANES 2012.xlsx
% Loading the data
Female_data = xlsread('KNHANES\KNHANES 2012.xlsx','Female','B:D');
Male_data = xlsread('KNHANES\KNHANES 2012.xlsx','Male','B:D');
% Grouping by age
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
Female_data_80 = []; % ==80

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
Male_data_80 = []; % ==80

% For Female
[M N] = size(Female_data); % ID	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Female_data(i,1) == 1
        Female_data_1 = [Female_data_1; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 2
        Female_data_2 = [Female_data_2; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 3
        Female_data_3 = [Female_data_3; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 4
        Female_data_4 = [Female_data_4; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 5
        Female_data_5 = [Female_data_5; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 6
        Female_data_6 = [Female_data_6; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 7
        Female_data_7 = [Female_data_7; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 8
        Female_data_8 = [Female_data_8; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 9
        Female_data_9 = [Female_data_9; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 10
        Female_data_10 = [Female_data_10; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 11
        Female_data_11 = [Female_data_11; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 12
        Female_data_12 = [Female_data_12; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 13
        Female_data_13 = [Female_data_13; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 14
        Female_data_14 = [Female_data_14; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 15
        Female_data_15 = [Female_data_15; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 16
        Female_data_16 = [Female_data_16; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 17
        Female_data_17 = [Female_data_17; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 18
        Female_data_18 = [Female_data_18; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 19
        Female_data_19 = [Female_data_19; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 20
        Female_data_20 = [Female_data_20; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 21
        Female_data_21 = [Female_data_21; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 22
        Female_data_22 = [Female_data_22; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 23
        Female_data_23 = [Female_data_23; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 24
        Female_data_24 = [Female_data_24; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 25
        Female_data_25 = [Female_data_25; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 26
        Female_data_26 = [Female_data_26; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 27
        Female_data_27 = [Female_data_27; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 28
        Female_data_28 = [Female_data_28; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 29
        Female_data_29 = [Female_data_29; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 30
        Female_data_30 = [Female_data_30; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 31
        Female_data_31 = [Female_data_31; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 32
        Female_data_32 = [Female_data_32; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 33
        Female_data_33 = [Female_data_33; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 34
        Female_data_34 = [Female_data_34; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 35
        Female_data_35 = [Female_data_35; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 36
        Female_data_36 = [Female_data_36; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 37
        Female_data_37 = [Female_data_37; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 38
        Female_data_38 = [Female_data_38; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 39
        Female_data_39 = [Female_data_39; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 40
        Female_data_40 = [Female_data_40; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 41
        Female_data_41 = [Female_data_41; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 42
        Female_data_42 = [Female_data_42; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 43
        Female_data_43 = [Female_data_43; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 44
        Female_data_44 = [Female_data_44; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 45
        Female_data_45 = [Female_data_45; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 46
        Female_data_46 = [Female_data_46; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 47
        Female_data_47 = [Female_data_47; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 48
        Female_data_48 = [Female_data_48; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 49
        Female_data_49 = [Female_data_49; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 50
        Female_data_50 = [Female_data_50; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 51
        Female_data_51 = [Female_data_51; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 52
        Female_data_52 = [Female_data_52; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 53
        Female_data_53 = [Female_data_53; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 54
        Female_data_54 = [Female_data_54; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 55
        Female_data_55 = [Female_data_55; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 56
        Female_data_56 = [Female_data_56; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 57
        Female_data_57 = [Female_data_57; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 58
        Female_data_58 = [Female_data_58; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 59
        Female_data_59 = [Female_data_59; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 60
        Female_data_60 = [Female_data_60; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 61
        Female_data_61 = [Female_data_61; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 62
        Female_data_62 = [Female_data_62; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 63
        Female_data_63 = [Female_data_63; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 64
        Female_data_64 = [Female_data_64; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 65
        Female_data_65 = [Female_data_65; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 66
        Female_data_66 = [Female_data_66; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 67
        Female_data_67 = [Female_data_67; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 68
        Female_data_68 = [Female_data_68; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 69
        Female_data_69 = [Female_data_69; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 70
        Female_data_70 = [Female_data_70; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 71
        Female_data_71 = [Female_data_71; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 72
        Female_data_72 = [Female_data_72; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 73
        Female_data_73 = [Female_data_73; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 74
        Female_data_74 = [Female_data_74; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 75
        Female_data_75 = [Female_data_75; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 76
        Female_data_76 = [Female_data_76; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 77
        Female_data_77 = [Female_data_77; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 78
        Female_data_78 = [Female_data_78; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 79
        Female_data_79 = [Female_data_79; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 80
        Female_data_80 = [Female_data_80; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
end
% For Male
[M N] = size(Male_data); % ID	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Male_data(i,1) == 1
        Male_data_1 = [Male_data_1; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 2
        Male_data_2 = [Male_data_2; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 3
        Male_data_3 = [Male_data_3; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 4
        Male_data_4 = [Male_data_4; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 5
        Male_data_5 = [Male_data_5; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 6
        Male_data_6 = [Male_data_6; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 7
        Male_data_7 = [Male_data_7; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 8
        Male_data_8 = [Male_data_8; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 9
        Male_data_9 = [Male_data_9; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 10
        Male_data_10 = [Male_data_10; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 11
        Male_data_11 = [Male_data_11; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 12
        Male_data_12 = [Male_data_12; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 13
        Male_data_13 = [Male_data_13; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 14
        Male_data_14 = [Male_data_14; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 15
        Male_data_15 = [Male_data_15; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 16
        Male_data_16 = [Male_data_16; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 17
        Male_data_17 = [Male_data_17; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 18
        Male_data_18 = [Male_data_18; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 19
        Male_data_19 = [Male_data_19; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 20
        Male_data_20 = [Male_data_20; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 21
        Male_data_21 = [Male_data_21; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 22
        Male_data_22 = [Male_data_22; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 23
        Male_data_23 = [Male_data_23; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 24
        Male_data_24 = [Male_data_24; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 25
        Male_data_25 = [Male_data_25; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 26
        Male_data_26 = [Male_data_26; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 27
        Male_data_27 = [Male_data_27; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 28
        Male_data_28 = [Male_data_28; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 29
        Male_data_29 = [Male_data_29; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 30
        Male_data_30 = [Male_data_30; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 31
        Male_data_31 = [Male_data_31; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 32
        Male_data_32 = [Male_data_32; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 33
        Male_data_33 = [Male_data_33; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 34
        Male_data_34 = [Male_data_34; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 35
        Male_data_35 = [Male_data_35; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 36
        Male_data_36 = [Male_data_36; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 37
        Male_data_37 = [Male_data_37; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 38
        Male_data_38 = [Male_data_38; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 39
        Male_data_39 = [Male_data_39; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 40
        Male_data_40 = [Male_data_40; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 41
        Male_data_41 = [Male_data_41; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 42
        Male_data_42 = [Male_data_42; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 43
        Male_data_43 = [Male_data_43; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 44
        Male_data_44 = [Male_data_44; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 45
        Male_data_45 = [Male_data_45; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 46
        Male_data_46 = [Male_data_46; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 47
        Male_data_47 = [Male_data_47; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 48
        Male_data_48 = [Male_data_48; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 49
        Male_data_49 = [Male_data_49; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 50
        Male_data_50 = [Male_data_50; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 51
        Male_data_51 = [Male_data_51; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 52
        Male_data_52 = [Male_data_52; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 53
        Male_data_53 = [Male_data_53; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 54
        Male_data_54 = [Male_data_54; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 55
        Male_data_55 = [Male_data_55; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 56
        Male_data_56 = [Male_data_56; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 57
        Male_data_57 = [Male_data_57; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 58
        Male_data_58 = [Male_data_58; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 59
        Male_data_59 = [Male_data_59; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 60
        Male_data_60 = [Male_data_60; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 61
        Male_data_61 = [Male_data_61; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 62
        Male_data_62 = [Male_data_62; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 63
        Male_data_63 = [Male_data_63; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 64
        Male_data_64 = [Male_data_64; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 65
        Male_data_65 = [Male_data_65; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 66
        Male_data_66 = [Male_data_66; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 67
        Male_data_67 = [Male_data_67; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 68
        Male_data_68 = [Male_data_68; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 69
        Male_data_69 = [Male_data_69; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 70
        Male_data_70 = [Male_data_70; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 71
        Male_data_71 = [Male_data_71; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 72
        Male_data_72 = [Male_data_72; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 73
        Male_data_73 = [Male_data_73; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 74
        Male_data_74 = [Male_data_74; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 75
        Male_data_75 = [Male_data_75; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 76
        Male_data_76 = [Male_data_76; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 77
        Male_data_77 = [Male_data_77; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 78
        Male_data_78 = [Male_data_78; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 79
        Male_data_79 = [Male_data_79; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 80
        Male_data_80 = [Male_data_80; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
end
% We calculate the correlation coefficients
% Weight VS Weight*Height^c
Age_1_KNHANES_2012 = 1:80;
Corr_1_KNHANES_2012_Female = [...
    My_Corr(Female_data_1(:,2),Female_data_1(:,2).*(Female_data_1(:,1)/100).^c) ...
    My_Corr(Female_data_2(:,2),Female_data_2(:,2).*(Female_data_2(:,1)/100).^c) ...
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

Corr_1_KNHANES_2012_Male = [...
    My_Corr(Male_data_1(:,2),Male_data_1(:,2).*(Male_data_1(:,1)/100).^c) ...
    My_Corr(Male_data_2(:,2),Male_data_2(:,2).*(Male_data_2(:,1)/100).^c) ...
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

%% KNHANES 2013.xlsx
% Loading the data
Female_data = xlsread('KNHANES\KNHANES 2013.xlsx','Female','B:D');
Male_data = xlsread('KNHANES\KNHANES 2013.xlsx','Male','B:D');
% Grouping by age
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
Female_data_80 = []; % ==80

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
Male_data_80 = []; % ==80

% For Female
[M N] = size(Female_data); % ID	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Female_data(i,1) == 1
        Female_data_1 = [Female_data_1; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 2
        Female_data_2 = [Female_data_2; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 3
        Female_data_3 = [Female_data_3; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 4
        Female_data_4 = [Female_data_4; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 5
        Female_data_5 = [Female_data_5; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 6
        Female_data_6 = [Female_data_6; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 7
        Female_data_7 = [Female_data_7; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 8
        Female_data_8 = [Female_data_8; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 9
        Female_data_9 = [Female_data_9; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 10
        Female_data_10 = [Female_data_10; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 11
        Female_data_11 = [Female_data_11; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 12
        Female_data_12 = [Female_data_12; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 13
        Female_data_13 = [Female_data_13; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 14
        Female_data_14 = [Female_data_14; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 15
        Female_data_15 = [Female_data_15; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 16
        Female_data_16 = [Female_data_16; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 17
        Female_data_17 = [Female_data_17; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 18
        Female_data_18 = [Female_data_18; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 19
        Female_data_19 = [Female_data_19; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 20
        Female_data_20 = [Female_data_20; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 21
        Female_data_21 = [Female_data_21; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 22
        Female_data_22 = [Female_data_22; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 23
        Female_data_23 = [Female_data_23; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 24
        Female_data_24 = [Female_data_24; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 25
        Female_data_25 = [Female_data_25; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 26
        Female_data_26 = [Female_data_26; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 27
        Female_data_27 = [Female_data_27; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 28
        Female_data_28 = [Female_data_28; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 29
        Female_data_29 = [Female_data_29; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 30
        Female_data_30 = [Female_data_30; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 31
        Female_data_31 = [Female_data_31; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 32
        Female_data_32 = [Female_data_32; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 33
        Female_data_33 = [Female_data_33; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 34
        Female_data_34 = [Female_data_34; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 35
        Female_data_35 = [Female_data_35; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 36
        Female_data_36 = [Female_data_36; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 37
        Female_data_37 = [Female_data_37; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 38
        Female_data_38 = [Female_data_38; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 39
        Female_data_39 = [Female_data_39; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 40
        Female_data_40 = [Female_data_40; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 41
        Female_data_41 = [Female_data_41; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 42
        Female_data_42 = [Female_data_42; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 43
        Female_data_43 = [Female_data_43; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 44
        Female_data_44 = [Female_data_44; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 45
        Female_data_45 = [Female_data_45; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 46
        Female_data_46 = [Female_data_46; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 47
        Female_data_47 = [Female_data_47; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 48
        Female_data_48 = [Female_data_48; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 49
        Female_data_49 = [Female_data_49; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 50
        Female_data_50 = [Female_data_50; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 51
        Female_data_51 = [Female_data_51; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 52
        Female_data_52 = [Female_data_52; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 53
        Female_data_53 = [Female_data_53; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 54
        Female_data_54 = [Female_data_54; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 55
        Female_data_55 = [Female_data_55; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 56
        Female_data_56 = [Female_data_56; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 57
        Female_data_57 = [Female_data_57; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 58
        Female_data_58 = [Female_data_58; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 59
        Female_data_59 = [Female_data_59; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 60
        Female_data_60 = [Female_data_60; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 61
        Female_data_61 = [Female_data_61; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 62
        Female_data_62 = [Female_data_62; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 63
        Female_data_63 = [Female_data_63; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 64
        Female_data_64 = [Female_data_64; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 65
        Female_data_65 = [Female_data_65; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 66
        Female_data_66 = [Female_data_66; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 67
        Female_data_67 = [Female_data_67; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 68
        Female_data_68 = [Female_data_68; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 69
        Female_data_69 = [Female_data_69; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 70
        Female_data_70 = [Female_data_70; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 71
        Female_data_71 = [Female_data_71; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 72
        Female_data_72 = [Female_data_72; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 73
        Female_data_73 = [Female_data_73; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 74
        Female_data_74 = [Female_data_74; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 75
        Female_data_75 = [Female_data_75; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 76
        Female_data_76 = [Female_data_76; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 77
        Female_data_77 = [Female_data_77; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 78
        Female_data_78 = [Female_data_78; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 79
        Female_data_79 = [Female_data_79; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 80
        Female_data_80 = [Female_data_80; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
end
% For Male
[M N] = size(Male_data); % ID	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Male_data(i,1) == 1
        Male_data_1 = [Male_data_1; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 2
        Male_data_2 = [Male_data_2; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 3
        Male_data_3 = [Male_data_3; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 4
        Male_data_4 = [Male_data_4; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 5
        Male_data_5 = [Male_data_5; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 6
        Male_data_6 = [Male_data_6; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 7
        Male_data_7 = [Male_data_7; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 8
        Male_data_8 = [Male_data_8; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 9
        Male_data_9 = [Male_data_9; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 10
        Male_data_10 = [Male_data_10; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 11
        Male_data_11 = [Male_data_11; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 12
        Male_data_12 = [Male_data_12; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 13
        Male_data_13 = [Male_data_13; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 14
        Male_data_14 = [Male_data_14; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 15
        Male_data_15 = [Male_data_15; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 16
        Male_data_16 = [Male_data_16; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 17
        Male_data_17 = [Male_data_17; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 18
        Male_data_18 = [Male_data_18; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 19
        Male_data_19 = [Male_data_19; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 20
        Male_data_20 = [Male_data_20; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 21
        Male_data_21 = [Male_data_21; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 22
        Male_data_22 = [Male_data_22; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 23
        Male_data_23 = [Male_data_23; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 24
        Male_data_24 = [Male_data_24; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 25
        Male_data_25 = [Male_data_25; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 26
        Male_data_26 = [Male_data_26; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 27
        Male_data_27 = [Male_data_27; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 28
        Male_data_28 = [Male_data_28; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 29
        Male_data_29 = [Male_data_29; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 30
        Male_data_30 = [Male_data_30; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 31
        Male_data_31 = [Male_data_31; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 32
        Male_data_32 = [Male_data_32; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 33
        Male_data_33 = [Male_data_33; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 34
        Male_data_34 = [Male_data_34; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 35
        Male_data_35 = [Male_data_35; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 36
        Male_data_36 = [Male_data_36; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 37
        Male_data_37 = [Male_data_37; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 38
        Male_data_38 = [Male_data_38; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 39
        Male_data_39 = [Male_data_39; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 40
        Male_data_40 = [Male_data_40; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 41
        Male_data_41 = [Male_data_41; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 42
        Male_data_42 = [Male_data_42; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 43
        Male_data_43 = [Male_data_43; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 44
        Male_data_44 = [Male_data_44; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 45
        Male_data_45 = [Male_data_45; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 46
        Male_data_46 = [Male_data_46; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 47
        Male_data_47 = [Male_data_47; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 48
        Male_data_48 = [Male_data_48; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 49
        Male_data_49 = [Male_data_49; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 50
        Male_data_50 = [Male_data_50; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 51
        Male_data_51 = [Male_data_51; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 52
        Male_data_52 = [Male_data_52; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 53
        Male_data_53 = [Male_data_53; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 54
        Male_data_54 = [Male_data_54; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 55
        Male_data_55 = [Male_data_55; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 56
        Male_data_56 = [Male_data_56; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 57
        Male_data_57 = [Male_data_57; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 58
        Male_data_58 = [Male_data_58; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 59
        Male_data_59 = [Male_data_59; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 60
        Male_data_60 = [Male_data_60; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 61
        Male_data_61 = [Male_data_61; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 62
        Male_data_62 = [Male_data_62; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 63
        Male_data_63 = [Male_data_63; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 64
        Male_data_64 = [Male_data_64; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 65
        Male_data_65 = [Male_data_65; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 66
        Male_data_66 = [Male_data_66; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 67
        Male_data_67 = [Male_data_67; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 68
        Male_data_68 = [Male_data_68; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 69
        Male_data_69 = [Male_data_69; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 70
        Male_data_70 = [Male_data_70; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 71
        Male_data_71 = [Male_data_71; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 72
        Male_data_72 = [Male_data_72; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 73
        Male_data_73 = [Male_data_73; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 74
        Male_data_74 = [Male_data_74; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 75
        Male_data_75 = [Male_data_75; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 76
        Male_data_76 = [Male_data_76; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 77
        Male_data_77 = [Male_data_77; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 78
        Male_data_78 = [Male_data_78; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 79
        Male_data_79 = [Male_data_79; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 80
        Male_data_80 = [Male_data_80; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
end
% We calculate the correlation coefficients
% Weight VS Weight*Height^c
Age_1_KNHANES_2013 = 1:80;
Corr_1_KNHANES_2013_Female = [...
    My_Corr(Female_data_1(:,2),Female_data_1(:,2).*(Female_data_1(:,1)/100).^c) ...
    My_Corr(Female_data_2(:,2),Female_data_2(:,2).*(Female_data_2(:,1)/100).^c) ...
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

Corr_1_KNHANES_2013_Male = [...
    My_Corr(Male_data_1(:,2),Male_data_1(:,2).*(Male_data_1(:,1)/100).^c) ...
    My_Corr(Male_data_2(:,2),Male_data_2(:,2).*(Male_data_2(:,1)/100).^c) ...
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

%% KNHANES 2014.xlsx
% Loading the data
Female_data = xlsread('KNHANES\KNHANES 2014.xlsx','Female','B:D');
Male_data = xlsread('KNHANES\KNHANES 2014.xlsx','Male','B:D');
% Grouping by age
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
Female_data_80 = []; % ==80

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
Male_data_80 = []; % ==80

% For Female
[M N] = size(Female_data); % ID	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Female_data(i,1) == 1
        Female_data_1 = [Female_data_1; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 2
        Female_data_2 = [Female_data_2; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 3
        Female_data_3 = [Female_data_3; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 4
        Female_data_4 = [Female_data_4; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 5
        Female_data_5 = [Female_data_5; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 6
        Female_data_6 = [Female_data_6; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 7
        Female_data_7 = [Female_data_7; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 8
        Female_data_8 = [Female_data_8; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 9
        Female_data_9 = [Female_data_9; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 10
        Female_data_10 = [Female_data_10; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 11
        Female_data_11 = [Female_data_11; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 12
        Female_data_12 = [Female_data_12; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 13
        Female_data_13 = [Female_data_13; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 14
        Female_data_14 = [Female_data_14; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 15
        Female_data_15 = [Female_data_15; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 16
        Female_data_16 = [Female_data_16; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 17
        Female_data_17 = [Female_data_17; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 18
        Female_data_18 = [Female_data_18; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 19
        Female_data_19 = [Female_data_19; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 20
        Female_data_20 = [Female_data_20; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 21
        Female_data_21 = [Female_data_21; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 22
        Female_data_22 = [Female_data_22; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 23
        Female_data_23 = [Female_data_23; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 24
        Female_data_24 = [Female_data_24; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 25
        Female_data_25 = [Female_data_25; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 26
        Female_data_26 = [Female_data_26; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 27
        Female_data_27 = [Female_data_27; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 28
        Female_data_28 = [Female_data_28; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 29
        Female_data_29 = [Female_data_29; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 30
        Female_data_30 = [Female_data_30; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 31
        Female_data_31 = [Female_data_31; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 32
        Female_data_32 = [Female_data_32; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 33
        Female_data_33 = [Female_data_33; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 34
        Female_data_34 = [Female_data_34; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 35
        Female_data_35 = [Female_data_35; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 36
        Female_data_36 = [Female_data_36; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 37
        Female_data_37 = [Female_data_37; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 38
        Female_data_38 = [Female_data_38; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 39
        Female_data_39 = [Female_data_39; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 40
        Female_data_40 = [Female_data_40; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 41
        Female_data_41 = [Female_data_41; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 42
        Female_data_42 = [Female_data_42; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 43
        Female_data_43 = [Female_data_43; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 44
        Female_data_44 = [Female_data_44; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 45
        Female_data_45 = [Female_data_45; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 46
        Female_data_46 = [Female_data_46; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 47
        Female_data_47 = [Female_data_47; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 48
        Female_data_48 = [Female_data_48; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 49
        Female_data_49 = [Female_data_49; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 50
        Female_data_50 = [Female_data_50; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 51
        Female_data_51 = [Female_data_51; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 52
        Female_data_52 = [Female_data_52; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 53
        Female_data_53 = [Female_data_53; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 54
        Female_data_54 = [Female_data_54; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 55
        Female_data_55 = [Female_data_55; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 56
        Female_data_56 = [Female_data_56; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 57
        Female_data_57 = [Female_data_57; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 58
        Female_data_58 = [Female_data_58; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 59
        Female_data_59 = [Female_data_59; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 60
        Female_data_60 = [Female_data_60; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 61
        Female_data_61 = [Female_data_61; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 62
        Female_data_62 = [Female_data_62; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 63
        Female_data_63 = [Female_data_63; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 64
        Female_data_64 = [Female_data_64; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 65
        Female_data_65 = [Female_data_65; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 66
        Female_data_66 = [Female_data_66; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 67
        Female_data_67 = [Female_data_67; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 68
        Female_data_68 = [Female_data_68; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 69
        Female_data_69 = [Female_data_69; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 70
        Female_data_70 = [Female_data_70; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 71
        Female_data_71 = [Female_data_71; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 72
        Female_data_72 = [Female_data_72; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 73
        Female_data_73 = [Female_data_73; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 74
        Female_data_74 = [Female_data_74; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 75
        Female_data_75 = [Female_data_75; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 76
        Female_data_76 = [Female_data_76; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 77
        Female_data_77 = [Female_data_77; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 78
        Female_data_78 = [Female_data_78; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 79
        Female_data_79 = [Female_data_79; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 80
        Female_data_80 = [Female_data_80; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
end
% For Male
[M N] = size(Male_data); % ID	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Male_data(i,1) == 1
        Male_data_1 = [Male_data_1; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 2
        Male_data_2 = [Male_data_2; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 3
        Male_data_3 = [Male_data_3; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 4
        Male_data_4 = [Male_data_4; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 5
        Male_data_5 = [Male_data_5; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 6
        Male_data_6 = [Male_data_6; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 7
        Male_data_7 = [Male_data_7; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 8
        Male_data_8 = [Male_data_8; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 9
        Male_data_9 = [Male_data_9; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 10
        Male_data_10 = [Male_data_10; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 11
        Male_data_11 = [Male_data_11; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 12
        Male_data_12 = [Male_data_12; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 13
        Male_data_13 = [Male_data_13; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 14
        Male_data_14 = [Male_data_14; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 15
        Male_data_15 = [Male_data_15; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 16
        Male_data_16 = [Male_data_16; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 17
        Male_data_17 = [Male_data_17; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 18
        Male_data_18 = [Male_data_18; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 19
        Male_data_19 = [Male_data_19; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 20
        Male_data_20 = [Male_data_20; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 21
        Male_data_21 = [Male_data_21; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 22
        Male_data_22 = [Male_data_22; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 23
        Male_data_23 = [Male_data_23; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 24
        Male_data_24 = [Male_data_24; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 25
        Male_data_25 = [Male_data_25; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 26
        Male_data_26 = [Male_data_26; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 27
        Male_data_27 = [Male_data_27; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 28
        Male_data_28 = [Male_data_28; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 29
        Male_data_29 = [Male_data_29; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 30
        Male_data_30 = [Male_data_30; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 31
        Male_data_31 = [Male_data_31; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 32
        Male_data_32 = [Male_data_32; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 33
        Male_data_33 = [Male_data_33; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 34
        Male_data_34 = [Male_data_34; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 35
        Male_data_35 = [Male_data_35; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 36
        Male_data_36 = [Male_data_36; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 37
        Male_data_37 = [Male_data_37; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 38
        Male_data_38 = [Male_data_38; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 39
        Male_data_39 = [Male_data_39; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 40
        Male_data_40 = [Male_data_40; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 41
        Male_data_41 = [Male_data_41; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 42
        Male_data_42 = [Male_data_42; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 43
        Male_data_43 = [Male_data_43; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 44
        Male_data_44 = [Male_data_44; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 45
        Male_data_45 = [Male_data_45; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 46
        Male_data_46 = [Male_data_46; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 47
        Male_data_47 = [Male_data_47; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 48
        Male_data_48 = [Male_data_48; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 49
        Male_data_49 = [Male_data_49; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 50
        Male_data_50 = [Male_data_50; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 51
        Male_data_51 = [Male_data_51; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 52
        Male_data_52 = [Male_data_52; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 53
        Male_data_53 = [Male_data_53; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 54
        Male_data_54 = [Male_data_54; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 55
        Male_data_55 = [Male_data_55; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 56
        Male_data_56 = [Male_data_56; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 57
        Male_data_57 = [Male_data_57; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 58
        Male_data_58 = [Male_data_58; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 59
        Male_data_59 = [Male_data_59; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 60
        Male_data_60 = [Male_data_60; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 61
        Male_data_61 = [Male_data_61; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 62
        Male_data_62 = [Male_data_62; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 63
        Male_data_63 = [Male_data_63; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 64
        Male_data_64 = [Male_data_64; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 65
        Male_data_65 = [Male_data_65; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 66
        Male_data_66 = [Male_data_66; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 67
        Male_data_67 = [Male_data_67; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 68
        Male_data_68 = [Male_data_68; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 69
        Male_data_69 = [Male_data_69; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 70
        Male_data_70 = [Male_data_70; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 71
        Male_data_71 = [Male_data_71; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 72
        Male_data_72 = [Male_data_72; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 73
        Male_data_73 = [Male_data_73; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 74
        Male_data_74 = [Male_data_74; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 75
        Male_data_75 = [Male_data_75; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 76
        Male_data_76 = [Male_data_76; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 77
        Male_data_77 = [Male_data_77; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 78
        Male_data_78 = [Male_data_78; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 79
        Male_data_79 = [Male_data_79; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 80
        Male_data_80 = [Male_data_80; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
end
% We calculate the correlation coefficients
% Weight VS Weight*Height^c
Age_1_KNHANES_2014 = 1:80;
Corr_1_KNHANES_2014_Female = [...
    My_Corr(Female_data_1(:,2),Female_data_1(:,2).*(Female_data_1(:,1)/100).^c) ...
    My_Corr(Female_data_2(:,2),Female_data_2(:,2).*(Female_data_2(:,1)/100).^c) ...
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

Corr_1_KNHANES_2014_Male = [...
    My_Corr(Male_data_1(:,2),Male_data_1(:,2).*(Male_data_1(:,1)/100).^c) ...
    My_Corr(Male_data_2(:,2),Male_data_2(:,2).*(Male_data_2(:,1)/100).^c) ...
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

%% KNHANES 2015.xlsx
% Loading the data
Female_data = xlsread('KNHANES\KNHANES 2015.xlsx','Female','B:D');
Male_data = xlsread('KNHANES\KNHANES 2015.xlsx','Male','B:D');
% Grouping by age
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
Female_data_80 = []; % ==80

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
Male_data_80 = []; % ==80

% For Female
[M N] = size(Female_data); % ID	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Female_data(i,1) == 1
        Female_data_1 = [Female_data_1; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 2
        Female_data_2 = [Female_data_2; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 3
        Female_data_3 = [Female_data_3; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 4
        Female_data_4 = [Female_data_4; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 5
        Female_data_5 = [Female_data_5; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 6
        Female_data_6 = [Female_data_6; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 7
        Female_data_7 = [Female_data_7; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 8
        Female_data_8 = [Female_data_8; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 9
        Female_data_9 = [Female_data_9; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 10
        Female_data_10 = [Female_data_10; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 11
        Female_data_11 = [Female_data_11; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 12
        Female_data_12 = [Female_data_12; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 13
        Female_data_13 = [Female_data_13; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 14
        Female_data_14 = [Female_data_14; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 15
        Female_data_15 = [Female_data_15; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 16
        Female_data_16 = [Female_data_16; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 17
        Female_data_17 = [Female_data_17; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 18
        Female_data_18 = [Female_data_18; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 19
        Female_data_19 = [Female_data_19; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 20
        Female_data_20 = [Female_data_20; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 21
        Female_data_21 = [Female_data_21; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 22
        Female_data_22 = [Female_data_22; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 23
        Female_data_23 = [Female_data_23; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 24
        Female_data_24 = [Female_data_24; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 25
        Female_data_25 = [Female_data_25; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 26
        Female_data_26 = [Female_data_26; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 27
        Female_data_27 = [Female_data_27; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 28
        Female_data_28 = [Female_data_28; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 29
        Female_data_29 = [Female_data_29; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 30
        Female_data_30 = [Female_data_30; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 31
        Female_data_31 = [Female_data_31; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 32
        Female_data_32 = [Female_data_32; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 33
        Female_data_33 = [Female_data_33; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 34
        Female_data_34 = [Female_data_34; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 35
        Female_data_35 = [Female_data_35; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 36
        Female_data_36 = [Female_data_36; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 37
        Female_data_37 = [Female_data_37; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 38
        Female_data_38 = [Female_data_38; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 39
        Female_data_39 = [Female_data_39; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 40
        Female_data_40 = [Female_data_40; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 41
        Female_data_41 = [Female_data_41; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 42
        Female_data_42 = [Female_data_42; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 43
        Female_data_43 = [Female_data_43; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 44
        Female_data_44 = [Female_data_44; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 45
        Female_data_45 = [Female_data_45; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 46
        Female_data_46 = [Female_data_46; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 47
        Female_data_47 = [Female_data_47; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 48
        Female_data_48 = [Female_data_48; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 49
        Female_data_49 = [Female_data_49; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 50
        Female_data_50 = [Female_data_50; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 51
        Female_data_51 = [Female_data_51; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 52
        Female_data_52 = [Female_data_52; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 53
        Female_data_53 = [Female_data_53; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 54
        Female_data_54 = [Female_data_54; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 55
        Female_data_55 = [Female_data_55; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 56
        Female_data_56 = [Female_data_56; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 57
        Female_data_57 = [Female_data_57; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 58
        Female_data_58 = [Female_data_58; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 59
        Female_data_59 = [Female_data_59; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 60
        Female_data_60 = [Female_data_60; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 61
        Female_data_61 = [Female_data_61; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 62
        Female_data_62 = [Female_data_62; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 63
        Female_data_63 = [Female_data_63; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 64
        Female_data_64 = [Female_data_64; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 65
        Female_data_65 = [Female_data_65; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 66
        Female_data_66 = [Female_data_66; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 67
        Female_data_67 = [Female_data_67; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 68
        Female_data_68 = [Female_data_68; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 69
        Female_data_69 = [Female_data_69; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 70
        Female_data_70 = [Female_data_70; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 71
        Female_data_71 = [Female_data_71; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 72
        Female_data_72 = [Female_data_72; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 73
        Female_data_73 = [Female_data_73; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 74
        Female_data_74 = [Female_data_74; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 75
        Female_data_75 = [Female_data_75; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 76
        Female_data_76 = [Female_data_76; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 77
        Female_data_77 = [Female_data_77; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 78
        Female_data_78 = [Female_data_78; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 79
        Female_data_79 = [Female_data_79; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 80
        Female_data_80 = [Female_data_80; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
end
% For Male
[M N] = size(Male_data); % ID	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Male_data(i,1) == 1
        Male_data_1 = [Male_data_1; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 2
        Male_data_2 = [Male_data_2; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 3
        Male_data_3 = [Male_data_3; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 4
        Male_data_4 = [Male_data_4; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 5
        Male_data_5 = [Male_data_5; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 6
        Male_data_6 = [Male_data_6; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 7
        Male_data_7 = [Male_data_7; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 8
        Male_data_8 = [Male_data_8; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 9
        Male_data_9 = [Male_data_9; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 10
        Male_data_10 = [Male_data_10; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 11
        Male_data_11 = [Male_data_11; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 12
        Male_data_12 = [Male_data_12; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 13
        Male_data_13 = [Male_data_13; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 14
        Male_data_14 = [Male_data_14; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 15
        Male_data_15 = [Male_data_15; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 16
        Male_data_16 = [Male_data_16; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 17
        Male_data_17 = [Male_data_17; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 18
        Male_data_18 = [Male_data_18; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 19
        Male_data_19 = [Male_data_19; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 20
        Male_data_20 = [Male_data_20; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 21
        Male_data_21 = [Male_data_21; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 22
        Male_data_22 = [Male_data_22; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 23
        Male_data_23 = [Male_data_23; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 24
        Male_data_24 = [Male_data_24; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 25
        Male_data_25 = [Male_data_25; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 26
        Male_data_26 = [Male_data_26; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 27
        Male_data_27 = [Male_data_27; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 28
        Male_data_28 = [Male_data_28; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 29
        Male_data_29 = [Male_data_29; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 30
        Male_data_30 = [Male_data_30; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 31
        Male_data_31 = [Male_data_31; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 32
        Male_data_32 = [Male_data_32; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 33
        Male_data_33 = [Male_data_33; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 34
        Male_data_34 = [Male_data_34; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 35
        Male_data_35 = [Male_data_35; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 36
        Male_data_36 = [Male_data_36; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 37
        Male_data_37 = [Male_data_37; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 38
        Male_data_38 = [Male_data_38; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 39
        Male_data_39 = [Male_data_39; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 40
        Male_data_40 = [Male_data_40; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 41
        Male_data_41 = [Male_data_41; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 42
        Male_data_42 = [Male_data_42; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 43
        Male_data_43 = [Male_data_43; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 44
        Male_data_44 = [Male_data_44; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 45
        Male_data_45 = [Male_data_45; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 46
        Male_data_46 = [Male_data_46; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 47
        Male_data_47 = [Male_data_47; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 48
        Male_data_48 = [Male_data_48; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 49
        Male_data_49 = [Male_data_49; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 50
        Male_data_50 = [Male_data_50; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 51
        Male_data_51 = [Male_data_51; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 52
        Male_data_52 = [Male_data_52; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 53
        Male_data_53 = [Male_data_53; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 54
        Male_data_54 = [Male_data_54; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 55
        Male_data_55 = [Male_data_55; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 56
        Male_data_56 = [Male_data_56; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 57
        Male_data_57 = [Male_data_57; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 58
        Male_data_58 = [Male_data_58; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 59
        Male_data_59 = [Male_data_59; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 60
        Male_data_60 = [Male_data_60; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 61
        Male_data_61 = [Male_data_61; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 62
        Male_data_62 = [Male_data_62; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 63
        Male_data_63 = [Male_data_63; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 64
        Male_data_64 = [Male_data_64; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 65
        Male_data_65 = [Male_data_65; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 66
        Male_data_66 = [Male_data_66; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 67
        Male_data_67 = [Male_data_67; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 68
        Male_data_68 = [Male_data_68; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 69
        Male_data_69 = [Male_data_69; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 70
        Male_data_70 = [Male_data_70; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 71
        Male_data_71 = [Male_data_71; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 72
        Male_data_72 = [Male_data_72; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 73
        Male_data_73 = [Male_data_73; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 74
        Male_data_74 = [Male_data_74; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 75
        Male_data_75 = [Male_data_75; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 76
        Male_data_76 = [Male_data_76; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 77
        Male_data_77 = [Male_data_77; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 78
        Male_data_78 = [Male_data_78; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 79
        Male_data_79 = [Male_data_79; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 80
        Male_data_80 = [Male_data_80; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
end
% We calculate the correlation coefficients
% Weight VS Weight*Height^c
Age_1_KNHANES_2015 = 1:80;
Corr_1_KNHANES_2015_Female = [...
    My_Corr(Female_data_1(:,2),Female_data_1(:,2).*(Female_data_1(:,1)/100).^c) ...
    My_Corr(Female_data_2(:,2),Female_data_2(:,2).*(Female_data_2(:,1)/100).^c) ...
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

Corr_1_KNHANES_2015_Male = [...
    My_Corr(Male_data_1(:,2),Male_data_1(:,2).*(Male_data_1(:,1)/100).^c) ...
    My_Corr(Male_data_2(:,2),Male_data_2(:,2).*(Male_data_2(:,1)/100).^c) ...
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

%% KNHANES 2016.xlsx
% Loading the data
Female_data = xlsread('KNHANES\KNHANES 2016.xlsx','Female','B:D');
Male_data = xlsread('KNHANES\KNHANES 2016.xlsx','Male','B:D');
% Grouping by age
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
Female_data_80 = []; % ==80

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
Male_data_80 = []; % ==80

% For Female
[M N] = size(Female_data); % ID	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Female_data(i,1) == 1
        Female_data_1 = [Female_data_1; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 2
        Female_data_2 = [Female_data_2; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 3
        Female_data_3 = [Female_data_3; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 4
        Female_data_4 = [Female_data_4; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 5
        Female_data_5 = [Female_data_5; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 6
        Female_data_6 = [Female_data_6; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 7
        Female_data_7 = [Female_data_7; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 8
        Female_data_8 = [Female_data_8; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 9
        Female_data_9 = [Female_data_9; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 10
        Female_data_10 = [Female_data_10; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 11
        Female_data_11 = [Female_data_11; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 12
        Female_data_12 = [Female_data_12; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 13
        Female_data_13 = [Female_data_13; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 14
        Female_data_14 = [Female_data_14; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 15
        Female_data_15 = [Female_data_15; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 16
        Female_data_16 = [Female_data_16; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 17
        Female_data_17 = [Female_data_17; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 18
        Female_data_18 = [Female_data_18; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 19
        Female_data_19 = [Female_data_19; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 20
        Female_data_20 = [Female_data_20; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 21
        Female_data_21 = [Female_data_21; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 22
        Female_data_22 = [Female_data_22; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 23
        Female_data_23 = [Female_data_23; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 24
        Female_data_24 = [Female_data_24; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 25
        Female_data_25 = [Female_data_25; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 26
        Female_data_26 = [Female_data_26; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 27
        Female_data_27 = [Female_data_27; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 28
        Female_data_28 = [Female_data_28; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 29
        Female_data_29 = [Female_data_29; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 30
        Female_data_30 = [Female_data_30; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 31
        Female_data_31 = [Female_data_31; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 32
        Female_data_32 = [Female_data_32; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 33
        Female_data_33 = [Female_data_33; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 34
        Female_data_34 = [Female_data_34; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 35
        Female_data_35 = [Female_data_35; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 36
        Female_data_36 = [Female_data_36; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 37
        Female_data_37 = [Female_data_37; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 38
        Female_data_38 = [Female_data_38; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 39
        Female_data_39 = [Female_data_39; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 40
        Female_data_40 = [Female_data_40; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 41
        Female_data_41 = [Female_data_41; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 42
        Female_data_42 = [Female_data_42; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 43
        Female_data_43 = [Female_data_43; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 44
        Female_data_44 = [Female_data_44; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 45
        Female_data_45 = [Female_data_45; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 46
        Female_data_46 = [Female_data_46; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 47
        Female_data_47 = [Female_data_47; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 48
        Female_data_48 = [Female_data_48; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 49
        Female_data_49 = [Female_data_49; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 50
        Female_data_50 = [Female_data_50; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 51
        Female_data_51 = [Female_data_51; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 52
        Female_data_52 = [Female_data_52; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 53
        Female_data_53 = [Female_data_53; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 54
        Female_data_54 = [Female_data_54; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 55
        Female_data_55 = [Female_data_55; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 56
        Female_data_56 = [Female_data_56; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 57
        Female_data_57 = [Female_data_57; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 58
        Female_data_58 = [Female_data_58; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 59
        Female_data_59 = [Female_data_59; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 60
        Female_data_60 = [Female_data_60; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 61
        Female_data_61 = [Female_data_61; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 62
        Female_data_62 = [Female_data_62; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 63
        Female_data_63 = [Female_data_63; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 64
        Female_data_64 = [Female_data_64; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 65
        Female_data_65 = [Female_data_65; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 66
        Female_data_66 = [Female_data_66; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 67
        Female_data_67 = [Female_data_67; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 68
        Female_data_68 = [Female_data_68; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 69
        Female_data_69 = [Female_data_69; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 70
        Female_data_70 = [Female_data_70; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 71
        Female_data_71 = [Female_data_71; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 72
        Female_data_72 = [Female_data_72; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 73
        Female_data_73 = [Female_data_73; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 74
        Female_data_74 = [Female_data_74; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 75
        Female_data_75 = [Female_data_75; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 76
        Female_data_76 = [Female_data_76; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 77
        Female_data_77 = [Female_data_77; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 78
        Female_data_78 = [Female_data_78; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 79
        Female_data_79 = [Female_data_79; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 80
        Female_data_80 = [Female_data_80; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
end
% For Male
[M N] = size(Male_data); % ID	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Male_data(i,1) == 1
        Male_data_1 = [Male_data_1; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 2
        Male_data_2 = [Male_data_2; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 3
        Male_data_3 = [Male_data_3; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 4
        Male_data_4 = [Male_data_4; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 5
        Male_data_5 = [Male_data_5; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 6
        Male_data_6 = [Male_data_6; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 7
        Male_data_7 = [Male_data_7; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 8
        Male_data_8 = [Male_data_8; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 9
        Male_data_9 = [Male_data_9; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 10
        Male_data_10 = [Male_data_10; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 11
        Male_data_11 = [Male_data_11; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 12
        Male_data_12 = [Male_data_12; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 13
        Male_data_13 = [Male_data_13; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 14
        Male_data_14 = [Male_data_14; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 15
        Male_data_15 = [Male_data_15; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 16
        Male_data_16 = [Male_data_16; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 17
        Male_data_17 = [Male_data_17; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 18
        Male_data_18 = [Male_data_18; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 19
        Male_data_19 = [Male_data_19; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 20
        Male_data_20 = [Male_data_20; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 21
        Male_data_21 = [Male_data_21; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 22
        Male_data_22 = [Male_data_22; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 23
        Male_data_23 = [Male_data_23; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 24
        Male_data_24 = [Male_data_24; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 25
        Male_data_25 = [Male_data_25; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 26
        Male_data_26 = [Male_data_26; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 27
        Male_data_27 = [Male_data_27; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 28
        Male_data_28 = [Male_data_28; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 29
        Male_data_29 = [Male_data_29; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 30
        Male_data_30 = [Male_data_30; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 31
        Male_data_31 = [Male_data_31; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 32
        Male_data_32 = [Male_data_32; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 33
        Male_data_33 = [Male_data_33; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 34
        Male_data_34 = [Male_data_34; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 35
        Male_data_35 = [Male_data_35; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 36
        Male_data_36 = [Male_data_36; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 37
        Male_data_37 = [Male_data_37; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 38
        Male_data_38 = [Male_data_38; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 39
        Male_data_39 = [Male_data_39; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 40
        Male_data_40 = [Male_data_40; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 41
        Male_data_41 = [Male_data_41; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 42
        Male_data_42 = [Male_data_42; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 43
        Male_data_43 = [Male_data_43; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 44
        Male_data_44 = [Male_data_44; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 45
        Male_data_45 = [Male_data_45; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 46
        Male_data_46 = [Male_data_46; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 47
        Male_data_47 = [Male_data_47; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 48
        Male_data_48 = [Male_data_48; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 49
        Male_data_49 = [Male_data_49; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 50
        Male_data_50 = [Male_data_50; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 51
        Male_data_51 = [Male_data_51; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 52
        Male_data_52 = [Male_data_52; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 53
        Male_data_53 = [Male_data_53; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 54
        Male_data_54 = [Male_data_54; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 55
        Male_data_55 = [Male_data_55; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 56
        Male_data_56 = [Male_data_56; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 57
        Male_data_57 = [Male_data_57; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 58
        Male_data_58 = [Male_data_58; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 59
        Male_data_59 = [Male_data_59; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 60
        Male_data_60 = [Male_data_60; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 61
        Male_data_61 = [Male_data_61; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 62
        Male_data_62 = [Male_data_62; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 63
        Male_data_63 = [Male_data_63; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 64
        Male_data_64 = [Male_data_64; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 65
        Male_data_65 = [Male_data_65; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 66
        Male_data_66 = [Male_data_66; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 67
        Male_data_67 = [Male_data_67; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 68
        Male_data_68 = [Male_data_68; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 69
        Male_data_69 = [Male_data_69; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 70
        Male_data_70 = [Male_data_70; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 71
        Male_data_71 = [Male_data_71; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 72
        Male_data_72 = [Male_data_72; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 73
        Male_data_73 = [Male_data_73; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 74
        Male_data_74 = [Male_data_74; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 75
        Male_data_75 = [Male_data_75; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 76
        Male_data_76 = [Male_data_76; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 77
        Male_data_77 = [Male_data_77; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 78
        Male_data_78 = [Male_data_78; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 79
        Male_data_79 = [Male_data_79; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 80
        Male_data_80 = [Male_data_80; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
end
% We calculate the correlation coefficients
% Weight VS Weight*Height^c
Age_1_KNHANES_2016 = 1:80;
Corr_1_KNHANES_2016_Female = [...
    My_Corr(Female_data_1(:,2),Female_data_1(:,2).*(Female_data_1(:,1)/100).^c) ...
    My_Corr(Female_data_2(:,2),Female_data_2(:,2).*(Female_data_2(:,1)/100).^c) ...
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

Corr_1_KNHANES_2016_Male = [...
    My_Corr(Male_data_1(:,2),Male_data_1(:,2).*(Male_data_1(:,1)/100).^c) ...
    My_Corr(Male_data_2(:,2),Male_data_2(:,2).*(Male_data_2(:,1)/100).^c) ...
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

%% KNHANES 2017.xlsx
% Loading the data
Female_data = xlsread('KNHANES\KNHANES 2017.xlsx','Female','B:D');
Male_data = xlsread('KNHANES\KNHANES 2017.xlsx','Male','B:D');
% Grouping by age
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
Female_data_80 = []; % ==80

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
Male_data_80 = []; % ==80

% For Female
[M N] = size(Female_data); % ID	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Female_data(i,1) == 1
        Female_data_1 = [Female_data_1; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 2
        Female_data_2 = [Female_data_2; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 3
        Female_data_3 = [Female_data_3; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 4
        Female_data_4 = [Female_data_4; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 5
        Female_data_5 = [Female_data_5; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 6
        Female_data_6 = [Female_data_6; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 7
        Female_data_7 = [Female_data_7; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 8
        Female_data_8 = [Female_data_8; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 9
        Female_data_9 = [Female_data_9; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 10
        Female_data_10 = [Female_data_10; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 11
        Female_data_11 = [Female_data_11; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 12
        Female_data_12 = [Female_data_12; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 13
        Female_data_13 = [Female_data_13; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 14
        Female_data_14 = [Female_data_14; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 15
        Female_data_15 = [Female_data_15; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 16
        Female_data_16 = [Female_data_16; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 17
        Female_data_17 = [Female_data_17; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 18
        Female_data_18 = [Female_data_18; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 19
        Female_data_19 = [Female_data_19; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 20
        Female_data_20 = [Female_data_20; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 21
        Female_data_21 = [Female_data_21; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 22
        Female_data_22 = [Female_data_22; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 23
        Female_data_23 = [Female_data_23; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 24
        Female_data_24 = [Female_data_24; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 25
        Female_data_25 = [Female_data_25; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 26
        Female_data_26 = [Female_data_26; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 27
        Female_data_27 = [Female_data_27; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 28
        Female_data_28 = [Female_data_28; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 29
        Female_data_29 = [Female_data_29; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 30
        Female_data_30 = [Female_data_30; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 31
        Female_data_31 = [Female_data_31; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 32
        Female_data_32 = [Female_data_32; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 33
        Female_data_33 = [Female_data_33; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 34
        Female_data_34 = [Female_data_34; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 35
        Female_data_35 = [Female_data_35; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 36
        Female_data_36 = [Female_data_36; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 37
        Female_data_37 = [Female_data_37; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 38
        Female_data_38 = [Female_data_38; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 39
        Female_data_39 = [Female_data_39; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 40
        Female_data_40 = [Female_data_40; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 41
        Female_data_41 = [Female_data_41; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 42
        Female_data_42 = [Female_data_42; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 43
        Female_data_43 = [Female_data_43; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 44
        Female_data_44 = [Female_data_44; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 45
        Female_data_45 = [Female_data_45; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 46
        Female_data_46 = [Female_data_46; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 47
        Female_data_47 = [Female_data_47; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 48
        Female_data_48 = [Female_data_48; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 49
        Female_data_49 = [Female_data_49; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 50
        Female_data_50 = [Female_data_50; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 51
        Female_data_51 = [Female_data_51; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 52
        Female_data_52 = [Female_data_52; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 53
        Female_data_53 = [Female_data_53; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 54
        Female_data_54 = [Female_data_54; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 55
        Female_data_55 = [Female_data_55; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 56
        Female_data_56 = [Female_data_56; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 57
        Female_data_57 = [Female_data_57; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 58
        Female_data_58 = [Female_data_58; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 59
        Female_data_59 = [Female_data_59; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 60
        Female_data_60 = [Female_data_60; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 61
        Female_data_61 = [Female_data_61; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 62
        Female_data_62 = [Female_data_62; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 63
        Female_data_63 = [Female_data_63; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 64
        Female_data_64 = [Female_data_64; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 65
        Female_data_65 = [Female_data_65; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 66
        Female_data_66 = [Female_data_66; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 67
        Female_data_67 = [Female_data_67; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 68
        Female_data_68 = [Female_data_68; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 69
        Female_data_69 = [Female_data_69; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 70
        Female_data_70 = [Female_data_70; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 71
        Female_data_71 = [Female_data_71; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 72
        Female_data_72 = [Female_data_72; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 73
        Female_data_73 = [Female_data_73; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 74
        Female_data_74 = [Female_data_74; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 75
        Female_data_75 = [Female_data_75; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 76
        Female_data_76 = [Female_data_76; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 77
        Female_data_77 = [Female_data_77; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 78
        Female_data_78 = [Female_data_78; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 79
        Female_data_79 = [Female_data_79; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 80
        Female_data_80 = [Female_data_80; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
end
% For Male
[M N] = size(Male_data); % ID	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Male_data(i,1) == 1
        Male_data_1 = [Male_data_1; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 2
        Male_data_2 = [Male_data_2; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 3
        Male_data_3 = [Male_data_3; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 4
        Male_data_4 = [Male_data_4; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 5
        Male_data_5 = [Male_data_5; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 6
        Male_data_6 = [Male_data_6; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 7
        Male_data_7 = [Male_data_7; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 8
        Male_data_8 = [Male_data_8; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 9
        Male_data_9 = [Male_data_9; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 10
        Male_data_10 = [Male_data_10; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 11
        Male_data_11 = [Male_data_11; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 12
        Male_data_12 = [Male_data_12; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 13
        Male_data_13 = [Male_data_13; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 14
        Male_data_14 = [Male_data_14; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 15
        Male_data_15 = [Male_data_15; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 16
        Male_data_16 = [Male_data_16; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 17
        Male_data_17 = [Male_data_17; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 18
        Male_data_18 = [Male_data_18; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 19
        Male_data_19 = [Male_data_19; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 20
        Male_data_20 = [Male_data_20; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 21
        Male_data_21 = [Male_data_21; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 22
        Male_data_22 = [Male_data_22; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 23
        Male_data_23 = [Male_data_23; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 24
        Male_data_24 = [Male_data_24; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 25
        Male_data_25 = [Male_data_25; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 26
        Male_data_26 = [Male_data_26; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 27
        Male_data_27 = [Male_data_27; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 28
        Male_data_28 = [Male_data_28; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 29
        Male_data_29 = [Male_data_29; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 30
        Male_data_30 = [Male_data_30; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 31
        Male_data_31 = [Male_data_31; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 32
        Male_data_32 = [Male_data_32; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 33
        Male_data_33 = [Male_data_33; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 34
        Male_data_34 = [Male_data_34; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 35
        Male_data_35 = [Male_data_35; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 36
        Male_data_36 = [Male_data_36; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 37
        Male_data_37 = [Male_data_37; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 38
        Male_data_38 = [Male_data_38; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 39
        Male_data_39 = [Male_data_39; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 40
        Male_data_40 = [Male_data_40; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 41
        Male_data_41 = [Male_data_41; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 42
        Male_data_42 = [Male_data_42; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 43
        Male_data_43 = [Male_data_43; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 44
        Male_data_44 = [Male_data_44; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 45
        Male_data_45 = [Male_data_45; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 46
        Male_data_46 = [Male_data_46; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 47
        Male_data_47 = [Male_data_47; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 48
        Male_data_48 = [Male_data_48; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 49
        Male_data_49 = [Male_data_49; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 50
        Male_data_50 = [Male_data_50; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 51
        Male_data_51 = [Male_data_51; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 52
        Male_data_52 = [Male_data_52; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 53
        Male_data_53 = [Male_data_53; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 54
        Male_data_54 = [Male_data_54; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 55
        Male_data_55 = [Male_data_55; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 56
        Male_data_56 = [Male_data_56; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 57
        Male_data_57 = [Male_data_57; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 58
        Male_data_58 = [Male_data_58; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 59
        Male_data_59 = [Male_data_59; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 60
        Male_data_60 = [Male_data_60; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 61
        Male_data_61 = [Male_data_61; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 62
        Male_data_62 = [Male_data_62; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 63
        Male_data_63 = [Male_data_63; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 64
        Male_data_64 = [Male_data_64; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 65
        Male_data_65 = [Male_data_65; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 66
        Male_data_66 = [Male_data_66; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 67
        Male_data_67 = [Male_data_67; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 68
        Male_data_68 = [Male_data_68; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 69
        Male_data_69 = [Male_data_69; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 70
        Male_data_70 = [Male_data_70; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 71
        Male_data_71 = [Male_data_71; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 72
        Male_data_72 = [Male_data_72; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 73
        Male_data_73 = [Male_data_73; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 74
        Male_data_74 = [Male_data_74; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 75
        Male_data_75 = [Male_data_75; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 76
        Male_data_76 = [Male_data_76; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 77
        Male_data_77 = [Male_data_77; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 78
        Male_data_78 = [Male_data_78; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 79
        Male_data_79 = [Male_data_79; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 80
        Male_data_80 = [Male_data_80; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
end
% We calculate the correlation coefficients
% Weight VS Weight*Height^c
Age_1_KNHANES_2017 = 1:80;
Corr_1_KNHANES_2017_Female = [...
    My_Corr(Female_data_1(:,2),Female_data_1(:,2).*(Female_data_1(:,1)/100).^c) ...
    My_Corr(Female_data_2(:,2),Female_data_2(:,2).*(Female_data_2(:,1)/100).^c) ...
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

Corr_1_KNHANES_2017_Male = [...
    My_Corr(Male_data_1(:,2),Male_data_1(:,2).*(Male_data_1(:,1)/100).^c) ...
    My_Corr(Male_data_2(:,2),Male_data_2(:,2).*(Male_data_2(:,1)/100).^c) ...
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

%% KNHANES 2018.xlsx
% Loading the data
Female_data = xlsread('KNHANES\KNHANES 2018.xlsx','Female','B:D');
Male_data = xlsread('KNHANES\KNHANES 2018.xlsx','Male','B:D');
% Grouping by age
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
Female_data_80 = []; % ==80

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
Male_data_80 = []; % ==80

% For Female
[M N] = size(Female_data); % ID	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Female_data(i,1) == 1
        Female_data_1 = [Female_data_1; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 2
        Female_data_2 = [Female_data_2; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 3
        Female_data_3 = [Female_data_3; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 4
        Female_data_4 = [Female_data_4; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 5
        Female_data_5 = [Female_data_5; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 6
        Female_data_6 = [Female_data_6; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 7
        Female_data_7 = [Female_data_7; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 8
        Female_data_8 = [Female_data_8; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 9
        Female_data_9 = [Female_data_9; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 10
        Female_data_10 = [Female_data_10; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 11
        Female_data_11 = [Female_data_11; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 12
        Female_data_12 = [Female_data_12; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 13
        Female_data_13 = [Female_data_13; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 14
        Female_data_14 = [Female_data_14; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 15
        Female_data_15 = [Female_data_15; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 16
        Female_data_16 = [Female_data_16; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 17
        Female_data_17 = [Female_data_17; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 18
        Female_data_18 = [Female_data_18; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 19
        Female_data_19 = [Female_data_19; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 20
        Female_data_20 = [Female_data_20; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 21
        Female_data_21 = [Female_data_21; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 22
        Female_data_22 = [Female_data_22; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 23
        Female_data_23 = [Female_data_23; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 24
        Female_data_24 = [Female_data_24; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 25
        Female_data_25 = [Female_data_25; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 26
        Female_data_26 = [Female_data_26; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 27
        Female_data_27 = [Female_data_27; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 28
        Female_data_28 = [Female_data_28; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 29
        Female_data_29 = [Female_data_29; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 30
        Female_data_30 = [Female_data_30; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 31
        Female_data_31 = [Female_data_31; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 32
        Female_data_32 = [Female_data_32; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 33
        Female_data_33 = [Female_data_33; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 34
        Female_data_34 = [Female_data_34; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 35
        Female_data_35 = [Female_data_35; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 36
        Female_data_36 = [Female_data_36; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 37
        Female_data_37 = [Female_data_37; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 38
        Female_data_38 = [Female_data_38; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 39
        Female_data_39 = [Female_data_39; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 40
        Female_data_40 = [Female_data_40; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 41
        Female_data_41 = [Female_data_41; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 42
        Female_data_42 = [Female_data_42; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 43
        Female_data_43 = [Female_data_43; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 44
        Female_data_44 = [Female_data_44; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 45
        Female_data_45 = [Female_data_45; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 46
        Female_data_46 = [Female_data_46; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 47
        Female_data_47 = [Female_data_47; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 48
        Female_data_48 = [Female_data_48; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 49
        Female_data_49 = [Female_data_49; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 50
        Female_data_50 = [Female_data_50; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 51
        Female_data_51 = [Female_data_51; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 52
        Female_data_52 = [Female_data_52; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 53
        Female_data_53 = [Female_data_53; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 54
        Female_data_54 = [Female_data_54; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 55
        Female_data_55 = [Female_data_55; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 56
        Female_data_56 = [Female_data_56; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 57
        Female_data_57 = [Female_data_57; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 58
        Female_data_58 = [Female_data_58; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 59
        Female_data_59 = [Female_data_59; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 60
        Female_data_60 = [Female_data_60; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 61
        Female_data_61 = [Female_data_61; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 62
        Female_data_62 = [Female_data_62; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 63
        Female_data_63 = [Female_data_63; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 64
        Female_data_64 = [Female_data_64; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 65
        Female_data_65 = [Female_data_65; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 66
        Female_data_66 = [Female_data_66; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 67
        Female_data_67 = [Female_data_67; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 68
        Female_data_68 = [Female_data_68; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 69
        Female_data_69 = [Female_data_69; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 70
        Female_data_70 = [Female_data_70; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 71
        Female_data_71 = [Female_data_71; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 72
        Female_data_72 = [Female_data_72; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 73
        Female_data_73 = [Female_data_73; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 74
        Female_data_74 = [Female_data_74; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 75
        Female_data_75 = [Female_data_75; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 76
        Female_data_76 = [Female_data_76; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 77
        Female_data_77 = [Female_data_77; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 78
        Female_data_78 = [Female_data_78; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 79
        Female_data_79 = [Female_data_79; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 80
        Female_data_80 = [Female_data_80; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
end
% For Male
[M N] = size(Male_data); % ID	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Male_data(i,1) == 1
        Male_data_1 = [Male_data_1; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 2
        Male_data_2 = [Male_data_2; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 3
        Male_data_3 = [Male_data_3; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 4
        Male_data_4 = [Male_data_4; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 5
        Male_data_5 = [Male_data_5; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 6
        Male_data_6 = [Male_data_6; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 7
        Male_data_7 = [Male_data_7; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 8
        Male_data_8 = [Male_data_8; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 9
        Male_data_9 = [Male_data_9; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 10
        Male_data_10 = [Male_data_10; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 11
        Male_data_11 = [Male_data_11; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 12
        Male_data_12 = [Male_data_12; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 13
        Male_data_13 = [Male_data_13; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 14
        Male_data_14 = [Male_data_14; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 15
        Male_data_15 = [Male_data_15; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 16
        Male_data_16 = [Male_data_16; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 17
        Male_data_17 = [Male_data_17; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 18
        Male_data_18 = [Male_data_18; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 19
        Male_data_19 = [Male_data_19; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 20
        Male_data_20 = [Male_data_20; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 21
        Male_data_21 = [Male_data_21; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 22
        Male_data_22 = [Male_data_22; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 23
        Male_data_23 = [Male_data_23; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 24
        Male_data_24 = [Male_data_24; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 25
        Male_data_25 = [Male_data_25; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 26
        Male_data_26 = [Male_data_26; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 27
        Male_data_27 = [Male_data_27; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 28
        Male_data_28 = [Male_data_28; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 29
        Male_data_29 = [Male_data_29; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 30
        Male_data_30 = [Male_data_30; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 31
        Male_data_31 = [Male_data_31; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 32
        Male_data_32 = [Male_data_32; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 33
        Male_data_33 = [Male_data_33; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 34
        Male_data_34 = [Male_data_34; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 35
        Male_data_35 = [Male_data_35; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 36
        Male_data_36 = [Male_data_36; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 37
        Male_data_37 = [Male_data_37; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 38
        Male_data_38 = [Male_data_38; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 39
        Male_data_39 = [Male_data_39; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 40
        Male_data_40 = [Male_data_40; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 41
        Male_data_41 = [Male_data_41; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 42
        Male_data_42 = [Male_data_42; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 43
        Male_data_43 = [Male_data_43; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 44
        Male_data_44 = [Male_data_44; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 45
        Male_data_45 = [Male_data_45; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 46
        Male_data_46 = [Male_data_46; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 47
        Male_data_47 = [Male_data_47; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 48
        Male_data_48 = [Male_data_48; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 49
        Male_data_49 = [Male_data_49; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 50
        Male_data_50 = [Male_data_50; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 51
        Male_data_51 = [Male_data_51; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 52
        Male_data_52 = [Male_data_52; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 53
        Male_data_53 = [Male_data_53; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 54
        Male_data_54 = [Male_data_54; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 55
        Male_data_55 = [Male_data_55; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 56
        Male_data_56 = [Male_data_56; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 57
        Male_data_57 = [Male_data_57; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 58
        Male_data_58 = [Male_data_58; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 59
        Male_data_59 = [Male_data_59; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 60
        Male_data_60 = [Male_data_60; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 61
        Male_data_61 = [Male_data_61; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 62
        Male_data_62 = [Male_data_62; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 63
        Male_data_63 = [Male_data_63; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 64
        Male_data_64 = [Male_data_64; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 65
        Male_data_65 = [Male_data_65; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 66
        Male_data_66 = [Male_data_66; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 67
        Male_data_67 = [Male_data_67; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 68
        Male_data_68 = [Male_data_68; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 69
        Male_data_69 = [Male_data_69; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 70
        Male_data_70 = [Male_data_70; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 71
        Male_data_71 = [Male_data_71; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 72
        Male_data_72 = [Male_data_72; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 73
        Male_data_73 = [Male_data_73; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 74
        Male_data_74 = [Male_data_74; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 75
        Male_data_75 = [Male_data_75; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 76
        Male_data_76 = [Male_data_76; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 77
        Male_data_77 = [Male_data_77; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 78
        Male_data_78 = [Male_data_78; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 79
        Male_data_79 = [Male_data_79; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 80
        Male_data_80 = [Male_data_80; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
end
% We calculate the correlation coefficients
% Weight VS Weight*Height^c
Age_1_KNHANES_2018 = 1:80;
Corr_1_KNHANES_2018_Female = [...
    My_Corr(Female_data_1(:,2),Female_data_1(:,2).*(Female_data_1(:,1)/100).^c) ...
    My_Corr(Female_data_2(:,2),Female_data_2(:,2).*(Female_data_2(:,1)/100).^c) ...
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

Corr_1_KNHANES_2018_Male = [...
    My_Corr(Male_data_1(:,2),Male_data_1(:,2).*(Male_data_1(:,1)/100).^c) ...
    My_Corr(Male_data_2(:,2),Male_data_2(:,2).*(Male_data_2(:,1)/100).^c) ...
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

%% KNHANES 2019.xlsx
% Loading the data
Female_data = xlsread('KNHANES\KNHANES 2019.xlsx','Female','B:D');
Male_data = xlsread('KNHANES\KNHANES 2019.xlsx','Male','B:D');
% Grouping by age
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
Female_data_80 = []; % ==80

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
Male_data_80 = []; % ==80

% For Female
[M N] = size(Female_data); % ID	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Female_data(i,1) == 1
        Female_data_1 = [Female_data_1; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 2
        Female_data_2 = [Female_data_2; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 3
        Female_data_3 = [Female_data_3; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 4
        Female_data_4 = [Female_data_4; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 5
        Female_data_5 = [Female_data_5; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 6
        Female_data_6 = [Female_data_6; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 7
        Female_data_7 = [Female_data_7; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 8
        Female_data_8 = [Female_data_8; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 9
        Female_data_9 = [Female_data_9; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 10
        Female_data_10 = [Female_data_10; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 11
        Female_data_11 = [Female_data_11; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 12
        Female_data_12 = [Female_data_12; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 13
        Female_data_13 = [Female_data_13; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 14
        Female_data_14 = [Female_data_14; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 15
        Female_data_15 = [Female_data_15; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 16
        Female_data_16 = [Female_data_16; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 17
        Female_data_17 = [Female_data_17; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 18
        Female_data_18 = [Female_data_18; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 19
        Female_data_19 = [Female_data_19; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 20
        Female_data_20 = [Female_data_20; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 21
        Female_data_21 = [Female_data_21; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 22
        Female_data_22 = [Female_data_22; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 23
        Female_data_23 = [Female_data_23; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 24
        Female_data_24 = [Female_data_24; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 25
        Female_data_25 = [Female_data_25; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 26
        Female_data_26 = [Female_data_26; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 27
        Female_data_27 = [Female_data_27; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 28
        Female_data_28 = [Female_data_28; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 29
        Female_data_29 = [Female_data_29; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 30
        Female_data_30 = [Female_data_30; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 31
        Female_data_31 = [Female_data_31; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 32
        Female_data_32 = [Female_data_32; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 33
        Female_data_33 = [Female_data_33; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 34
        Female_data_34 = [Female_data_34; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 35
        Female_data_35 = [Female_data_35; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 36
        Female_data_36 = [Female_data_36; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 37
        Female_data_37 = [Female_data_37; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 38
        Female_data_38 = [Female_data_38; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 39
        Female_data_39 = [Female_data_39; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 40
        Female_data_40 = [Female_data_40; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 41
        Female_data_41 = [Female_data_41; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 42
        Female_data_42 = [Female_data_42; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 43
        Female_data_43 = [Female_data_43; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 44
        Female_data_44 = [Female_data_44; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 45
        Female_data_45 = [Female_data_45; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 46
        Female_data_46 = [Female_data_46; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 47
        Female_data_47 = [Female_data_47; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 48
        Female_data_48 = [Female_data_48; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 49
        Female_data_49 = [Female_data_49; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 50
        Female_data_50 = [Female_data_50; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 51
        Female_data_51 = [Female_data_51; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 52
        Female_data_52 = [Female_data_52; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 53
        Female_data_53 = [Female_data_53; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 54
        Female_data_54 = [Female_data_54; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 55
        Female_data_55 = [Female_data_55; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 56
        Female_data_56 = [Female_data_56; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 57
        Female_data_57 = [Female_data_57; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 58
        Female_data_58 = [Female_data_58; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 59
        Female_data_59 = [Female_data_59; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 60
        Female_data_60 = [Female_data_60; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 61
        Female_data_61 = [Female_data_61; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 62
        Female_data_62 = [Female_data_62; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 63
        Female_data_63 = [Female_data_63; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 64
        Female_data_64 = [Female_data_64; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 65
        Female_data_65 = [Female_data_65; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 66
        Female_data_66 = [Female_data_66; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 67
        Female_data_67 = [Female_data_67; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 68
        Female_data_68 = [Female_data_68; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 69
        Female_data_69 = [Female_data_69; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 70
        Female_data_70 = [Female_data_70; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 71
        Female_data_71 = [Female_data_71; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 72
        Female_data_72 = [Female_data_72; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 73
        Female_data_73 = [Female_data_73; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 74
        Female_data_74 = [Female_data_74; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 75
        Female_data_75 = [Female_data_75; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 76
        Female_data_76 = [Female_data_76; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 77
        Female_data_77 = [Female_data_77; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 78
        Female_data_78 = [Female_data_78; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 79
        Female_data_79 = [Female_data_79; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 80
        Female_data_80 = [Female_data_80; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
end
% For Male
[M N] = size(Male_data); % ID	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Male_data(i,1) == 1
        Male_data_1 = [Male_data_1; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 2
        Male_data_2 = [Male_data_2; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 3
        Male_data_3 = [Male_data_3; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 4
        Male_data_4 = [Male_data_4; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 5
        Male_data_5 = [Male_data_5; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 6
        Male_data_6 = [Male_data_6; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 7
        Male_data_7 = [Male_data_7; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 8
        Male_data_8 = [Male_data_8; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 9
        Male_data_9 = [Male_data_9; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 10
        Male_data_10 = [Male_data_10; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 11
        Male_data_11 = [Male_data_11; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 12
        Male_data_12 = [Male_data_12; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 13
        Male_data_13 = [Male_data_13; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 14
        Male_data_14 = [Male_data_14; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 15
        Male_data_15 = [Male_data_15; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 16
        Male_data_16 = [Male_data_16; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 17
        Male_data_17 = [Male_data_17; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 18
        Male_data_18 = [Male_data_18; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 19
        Male_data_19 = [Male_data_19; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 20
        Male_data_20 = [Male_data_20; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 21
        Male_data_21 = [Male_data_21; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 22
        Male_data_22 = [Male_data_22; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 23
        Male_data_23 = [Male_data_23; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 24
        Male_data_24 = [Male_data_24; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 25
        Male_data_25 = [Male_data_25; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 26
        Male_data_26 = [Male_data_26; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 27
        Male_data_27 = [Male_data_27; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 28
        Male_data_28 = [Male_data_28; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 29
        Male_data_29 = [Male_data_29; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 30
        Male_data_30 = [Male_data_30; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 31
        Male_data_31 = [Male_data_31; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 32
        Male_data_32 = [Male_data_32; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 33
        Male_data_33 = [Male_data_33; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 34
        Male_data_34 = [Male_data_34; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 35
        Male_data_35 = [Male_data_35; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 36
        Male_data_36 = [Male_data_36; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 37
        Male_data_37 = [Male_data_37; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 38
        Male_data_38 = [Male_data_38; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 39
        Male_data_39 = [Male_data_39; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 40
        Male_data_40 = [Male_data_40; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 41
        Male_data_41 = [Male_data_41; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 42
        Male_data_42 = [Male_data_42; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 43
        Male_data_43 = [Male_data_43; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 44
        Male_data_44 = [Male_data_44; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 45
        Male_data_45 = [Male_data_45; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 46
        Male_data_46 = [Male_data_46; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 47
        Male_data_47 = [Male_data_47; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 48
        Male_data_48 = [Male_data_48; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 49
        Male_data_49 = [Male_data_49; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 50
        Male_data_50 = [Male_data_50; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 51
        Male_data_51 = [Male_data_51; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 52
        Male_data_52 = [Male_data_52; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 53
        Male_data_53 = [Male_data_53; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 54
        Male_data_54 = [Male_data_54; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 55
        Male_data_55 = [Male_data_55; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 56
        Male_data_56 = [Male_data_56; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 57
        Male_data_57 = [Male_data_57; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 58
        Male_data_58 = [Male_data_58; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 59
        Male_data_59 = [Male_data_59; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 60
        Male_data_60 = [Male_data_60; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 61
        Male_data_61 = [Male_data_61; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 62
        Male_data_62 = [Male_data_62; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 63
        Male_data_63 = [Male_data_63; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 64
        Male_data_64 = [Male_data_64; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 65
        Male_data_65 = [Male_data_65; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 66
        Male_data_66 = [Male_data_66; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 67
        Male_data_67 = [Male_data_67; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 68
        Male_data_68 = [Male_data_68; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 69
        Male_data_69 = [Male_data_69; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 70
        Male_data_70 = [Male_data_70; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 71
        Male_data_71 = [Male_data_71; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 72
        Male_data_72 = [Male_data_72; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 73
        Male_data_73 = [Male_data_73; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 74
        Male_data_74 = [Male_data_74; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 75
        Male_data_75 = [Male_data_75; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 76
        Male_data_76 = [Male_data_76; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 77
        Male_data_77 = [Male_data_77; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 78
        Male_data_78 = [Male_data_78; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 79
        Male_data_79 = [Male_data_79; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 80
        Male_data_80 = [Male_data_80; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
end
% We calculate the correlation coefficients
% Weight VS Weight*Height^c
Age_1_KNHANES_2019 = 1:80;
Corr_1_KNHANES_2019_Female = [...
    My_Corr(Female_data_1(:,2),Female_data_1(:,2).*(Female_data_1(:,1)/100).^c) ...
    My_Corr(Female_data_2(:,2),Female_data_2(:,2).*(Female_data_2(:,1)/100).^c) ...
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

Corr_1_KNHANES_2019_Male = [...
    My_Corr(Male_data_1(:,2),Male_data_1(:,2).*(Male_data_1(:,1)/100).^c) ...
    My_Corr(Male_data_2(:,2),Male_data_2(:,2).*(Male_data_2(:,1)/100).^c) ...
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

%% KNHANES 2020.xlsx
% Loading the data
Female_data = xlsread('KNHANES\KNHANES 2020.xlsx','Female','B:D');
Male_data = xlsread('KNHANES\KNHANES 2020.xlsx','Male','B:D');
% Grouping by age
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
Female_data_80 = []; % ==80

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
Male_data_80 = []; % ==80

% For Female
[M N] = size(Female_data); % ID	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Female_data(i,1) == 1
        Female_data_1 = [Female_data_1; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 2
        Female_data_2 = [Female_data_2; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 3
        Female_data_3 = [Female_data_3; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 4
        Female_data_4 = [Female_data_4; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 5
        Female_data_5 = [Female_data_5; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 6
        Female_data_6 = [Female_data_6; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 7
        Female_data_7 = [Female_data_7; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 8
        Female_data_8 = [Female_data_8; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 9
        Female_data_9 = [Female_data_9; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 10
        Female_data_10 = [Female_data_10; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 11
        Female_data_11 = [Female_data_11; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 12
        Female_data_12 = [Female_data_12; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 13
        Female_data_13 = [Female_data_13; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 14
        Female_data_14 = [Female_data_14; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 15
        Female_data_15 = [Female_data_15; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 16
        Female_data_16 = [Female_data_16; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 17
        Female_data_17 = [Female_data_17; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 18
        Female_data_18 = [Female_data_18; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 19
        Female_data_19 = [Female_data_19; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 20
        Female_data_20 = [Female_data_20; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 21
        Female_data_21 = [Female_data_21; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 22
        Female_data_22 = [Female_data_22; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 23
        Female_data_23 = [Female_data_23; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 24
        Female_data_24 = [Female_data_24; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 25
        Female_data_25 = [Female_data_25; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 26
        Female_data_26 = [Female_data_26; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 27
        Female_data_27 = [Female_data_27; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 28
        Female_data_28 = [Female_data_28; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 29
        Female_data_29 = [Female_data_29; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 30
        Female_data_30 = [Female_data_30; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 31
        Female_data_31 = [Female_data_31; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 32
        Female_data_32 = [Female_data_32; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 33
        Female_data_33 = [Female_data_33; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 34
        Female_data_34 = [Female_data_34; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 35
        Female_data_35 = [Female_data_35; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 36
        Female_data_36 = [Female_data_36; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 37
        Female_data_37 = [Female_data_37; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 38
        Female_data_38 = [Female_data_38; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 39
        Female_data_39 = [Female_data_39; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 40
        Female_data_40 = [Female_data_40; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 41
        Female_data_41 = [Female_data_41; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 42
        Female_data_42 = [Female_data_42; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 43
        Female_data_43 = [Female_data_43; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 44
        Female_data_44 = [Female_data_44; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 45
        Female_data_45 = [Female_data_45; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 46
        Female_data_46 = [Female_data_46; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 47
        Female_data_47 = [Female_data_47; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 48
        Female_data_48 = [Female_data_48; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 49
        Female_data_49 = [Female_data_49; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 50
        Female_data_50 = [Female_data_50; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 51
        Female_data_51 = [Female_data_51; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 52
        Female_data_52 = [Female_data_52; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 53
        Female_data_53 = [Female_data_53; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 54
        Female_data_54 = [Female_data_54; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 55
        Female_data_55 = [Female_data_55; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 56
        Female_data_56 = [Female_data_56; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 57
        Female_data_57 = [Female_data_57; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 58
        Female_data_58 = [Female_data_58; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 59
        Female_data_59 = [Female_data_59; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 60
        Female_data_60 = [Female_data_60; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 61
        Female_data_61 = [Female_data_61; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 62
        Female_data_62 = [Female_data_62; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 63
        Female_data_63 = [Female_data_63; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 64
        Female_data_64 = [Female_data_64; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 65
        Female_data_65 = [Female_data_65; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 66
        Female_data_66 = [Female_data_66; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 67
        Female_data_67 = [Female_data_67; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 68
        Female_data_68 = [Female_data_68; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 69
        Female_data_69 = [Female_data_69; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 70
        Female_data_70 = [Female_data_70; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 71
        Female_data_71 = [Female_data_71; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 72
        Female_data_72 = [Female_data_72; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 73
        Female_data_73 = [Female_data_73; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 74
        Female_data_74 = [Female_data_74; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 75
        Female_data_75 = [Female_data_75; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 76
        Female_data_76 = [Female_data_76; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 77
        Female_data_77 = [Female_data_77; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 78
        Female_data_78 = [Female_data_78; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 79
        Female_data_79 = [Female_data_79; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 80
        Female_data_80 = [Female_data_80; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
end
% For Male
[M N] = size(Male_data); % ID	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Male_data(i,1) == 1
        Male_data_1 = [Male_data_1; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 2
        Male_data_2 = [Male_data_2; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 3
        Male_data_3 = [Male_data_3; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 4
        Male_data_4 = [Male_data_4; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 5
        Male_data_5 = [Male_data_5; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 6
        Male_data_6 = [Male_data_6; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 7
        Male_data_7 = [Male_data_7; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 8
        Male_data_8 = [Male_data_8; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 9
        Male_data_9 = [Male_data_9; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 10
        Male_data_10 = [Male_data_10; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 11
        Male_data_11 = [Male_data_11; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 12
        Male_data_12 = [Male_data_12; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 13
        Male_data_13 = [Male_data_13; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 14
        Male_data_14 = [Male_data_14; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 15
        Male_data_15 = [Male_data_15; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 16
        Male_data_16 = [Male_data_16; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 17
        Male_data_17 = [Male_data_17; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 18
        Male_data_18 = [Male_data_18; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 19
        Male_data_19 = [Male_data_19; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 20
        Male_data_20 = [Male_data_20; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 21
        Male_data_21 = [Male_data_21; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 22
        Male_data_22 = [Male_data_22; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 23
        Male_data_23 = [Male_data_23; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 24
        Male_data_24 = [Male_data_24; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 25
        Male_data_25 = [Male_data_25; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 26
        Male_data_26 = [Male_data_26; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 27
        Male_data_27 = [Male_data_27; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 28
        Male_data_28 = [Male_data_28; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 29
        Male_data_29 = [Male_data_29; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 30
        Male_data_30 = [Male_data_30; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 31
        Male_data_31 = [Male_data_31; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 32
        Male_data_32 = [Male_data_32; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 33
        Male_data_33 = [Male_data_33; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 34
        Male_data_34 = [Male_data_34; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 35
        Male_data_35 = [Male_data_35; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 36
        Male_data_36 = [Male_data_36; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 37
        Male_data_37 = [Male_data_37; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 38
        Male_data_38 = [Male_data_38; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 39
        Male_data_39 = [Male_data_39; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 40
        Male_data_40 = [Male_data_40; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 41
        Male_data_41 = [Male_data_41; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 42
        Male_data_42 = [Male_data_42; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 43
        Male_data_43 = [Male_data_43; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 44
        Male_data_44 = [Male_data_44; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 45
        Male_data_45 = [Male_data_45; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 46
        Male_data_46 = [Male_data_46; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 47
        Male_data_47 = [Male_data_47; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 48
        Male_data_48 = [Male_data_48; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 49
        Male_data_49 = [Male_data_49; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 50
        Male_data_50 = [Male_data_50; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 51
        Male_data_51 = [Male_data_51; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 52
        Male_data_52 = [Male_data_52; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 53
        Male_data_53 = [Male_data_53; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 54
        Male_data_54 = [Male_data_54; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 55
        Male_data_55 = [Male_data_55; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 56
        Male_data_56 = [Male_data_56; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 57
        Male_data_57 = [Male_data_57; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 58
        Male_data_58 = [Male_data_58; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 59
        Male_data_59 = [Male_data_59; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 60
        Male_data_60 = [Male_data_60; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 61
        Male_data_61 = [Male_data_61; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 62
        Male_data_62 = [Male_data_62; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 63
        Male_data_63 = [Male_data_63; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 64
        Male_data_64 = [Male_data_64; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 65
        Male_data_65 = [Male_data_65; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 66
        Male_data_66 = [Male_data_66; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 67
        Male_data_67 = [Male_data_67; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 68
        Male_data_68 = [Male_data_68; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 69
        Male_data_69 = [Male_data_69; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 70
        Male_data_70 = [Male_data_70; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 71
        Male_data_71 = [Male_data_71; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 72
        Male_data_72 = [Male_data_72; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 73
        Male_data_73 = [Male_data_73; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 74
        Male_data_74 = [Male_data_74; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 75
        Male_data_75 = [Male_data_75; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 76
        Male_data_76 = [Male_data_76; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 77
        Male_data_77 = [Male_data_77; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 78
        Male_data_78 = [Male_data_78; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 79
        Male_data_79 = [Male_data_79; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 80
        Male_data_80 = [Male_data_80; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
end
% We calculate the correlation coefficients
% Weight VS Weight*Height^c
Age_1_KNHANES_2020 = 1:80;
Corr_1_KNHANES_2020_Female = [...
    My_Corr(Female_data_1(:,2),Female_data_1(:,2).*(Female_data_1(:,1)/100).^c) ...
    My_Corr(Female_data_2(:,2),Female_data_2(:,2).*(Female_data_2(:,1)/100).^c) ...
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

Corr_1_KNHANES_2020_Male = [...
    My_Corr(Male_data_1(:,2),Male_data_1(:,2).*(Male_data_1(:,1)/100).^c) ...
    My_Corr(Male_data_2(:,2),Male_data_2(:,2).*(Male_data_2(:,1)/100).^c) ...
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

%% KNHANES 2021.xlsx
% Loading the data
Female_data = xlsread('KNHANES\KNHANES 2021.xlsx','Female','B:D');
Male_data = xlsread('KNHANES\KNHANES 2021.xlsx','Male','B:D');
% Grouping by age
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
Female_data_80 = []; % ==80

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
Male_data_80 = []; % ==80

% For Female
[M N] = size(Female_data); % ID	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Female_data(i,1) == 1
        Female_data_1 = [Female_data_1; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 2
        Female_data_2 = [Female_data_2; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 3
        Female_data_3 = [Female_data_3; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 4
        Female_data_4 = [Female_data_4; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 5
        Female_data_5 = [Female_data_5; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 6
        Female_data_6 = [Female_data_6; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 7
        Female_data_7 = [Female_data_7; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 8
        Female_data_8 = [Female_data_8; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 9
        Female_data_9 = [Female_data_9; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 10
        Female_data_10 = [Female_data_10; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 11
        Female_data_11 = [Female_data_11; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 12
        Female_data_12 = [Female_data_12; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 13
        Female_data_13 = [Female_data_13; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 14
        Female_data_14 = [Female_data_14; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 15
        Female_data_15 = [Female_data_15; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 16
        Female_data_16 = [Female_data_16; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 17
        Female_data_17 = [Female_data_17; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 18
        Female_data_18 = [Female_data_18; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 19
        Female_data_19 = [Female_data_19; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 20
        Female_data_20 = [Female_data_20; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 21
        Female_data_21 = [Female_data_21; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 22
        Female_data_22 = [Female_data_22; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 23
        Female_data_23 = [Female_data_23; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 24
        Female_data_24 = [Female_data_24; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 25
        Female_data_25 = [Female_data_25; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 26
        Female_data_26 = [Female_data_26; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 27
        Female_data_27 = [Female_data_27; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 28
        Female_data_28 = [Female_data_28; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 29
        Female_data_29 = [Female_data_29; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 30
        Female_data_30 = [Female_data_30; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 31
        Female_data_31 = [Female_data_31; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 32
        Female_data_32 = [Female_data_32; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 33
        Female_data_33 = [Female_data_33; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 34
        Female_data_34 = [Female_data_34; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 35
        Female_data_35 = [Female_data_35; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 36
        Female_data_36 = [Female_data_36; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 37
        Female_data_37 = [Female_data_37; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 38
        Female_data_38 = [Female_data_38; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 39
        Female_data_39 = [Female_data_39; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 40
        Female_data_40 = [Female_data_40; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 41
        Female_data_41 = [Female_data_41; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 42
        Female_data_42 = [Female_data_42; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 43
        Female_data_43 = [Female_data_43; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 44
        Female_data_44 = [Female_data_44; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 45
        Female_data_45 = [Female_data_45; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 46
        Female_data_46 = [Female_data_46; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 47
        Female_data_47 = [Female_data_47; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 48
        Female_data_48 = [Female_data_48; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 49
        Female_data_49 = [Female_data_49; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 50
        Female_data_50 = [Female_data_50; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 51
        Female_data_51 = [Female_data_51; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 52
        Female_data_52 = [Female_data_52; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 53
        Female_data_53 = [Female_data_53; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 54
        Female_data_54 = [Female_data_54; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 55
        Female_data_55 = [Female_data_55; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 56
        Female_data_56 = [Female_data_56; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 57
        Female_data_57 = [Female_data_57; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 58
        Female_data_58 = [Female_data_58; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 59
        Female_data_59 = [Female_data_59; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 60
        Female_data_60 = [Female_data_60; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 61
        Female_data_61 = [Female_data_61; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 62
        Female_data_62 = [Female_data_62; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 63
        Female_data_63 = [Female_data_63; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 64
        Female_data_64 = [Female_data_64; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 65
        Female_data_65 = [Female_data_65; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 66
        Female_data_66 = [Female_data_66; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 67
        Female_data_67 = [Female_data_67; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 68
        Female_data_68 = [Female_data_68; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 69
        Female_data_69 = [Female_data_69; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 70
        Female_data_70 = [Female_data_70; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 71
        Female_data_71 = [Female_data_71; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 72
        Female_data_72 = [Female_data_72; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 73
        Female_data_73 = [Female_data_73; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 74
        Female_data_74 = [Female_data_74; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 75
        Female_data_75 = [Female_data_75; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 76
        Female_data_76 = [Female_data_76; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 77
        Female_data_77 = [Female_data_77; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 78
        Female_data_78 = [Female_data_78; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 79
        Female_data_79 = [Female_data_79; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 80
        Female_data_80 = [Female_data_80; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
end
% For Male
[M N] = size(Male_data); % ID	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Male_data(i,1) == 1
        Male_data_1 = [Male_data_1; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 2
        Male_data_2 = [Male_data_2; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 3
        Male_data_3 = [Male_data_3; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 4
        Male_data_4 = [Male_data_4; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 5
        Male_data_5 = [Male_data_5; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 6
        Male_data_6 = [Male_data_6; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 7
        Male_data_7 = [Male_data_7; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 8
        Male_data_8 = [Male_data_8; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 9
        Male_data_9 = [Male_data_9; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 10
        Male_data_10 = [Male_data_10; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 11
        Male_data_11 = [Male_data_11; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 12
        Male_data_12 = [Male_data_12; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 13
        Male_data_13 = [Male_data_13; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 14
        Male_data_14 = [Male_data_14; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 15
        Male_data_15 = [Male_data_15; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 16
        Male_data_16 = [Male_data_16; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 17
        Male_data_17 = [Male_data_17; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 18
        Male_data_18 = [Male_data_18; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 19
        Male_data_19 = [Male_data_19; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 20
        Male_data_20 = [Male_data_20; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 21
        Male_data_21 = [Male_data_21; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 22
        Male_data_22 = [Male_data_22; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 23
        Male_data_23 = [Male_data_23; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 24
        Male_data_24 = [Male_data_24; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 25
        Male_data_25 = [Male_data_25; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 26
        Male_data_26 = [Male_data_26; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 27
        Male_data_27 = [Male_data_27; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 28
        Male_data_28 = [Male_data_28; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 29
        Male_data_29 = [Male_data_29; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 30
        Male_data_30 = [Male_data_30; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 31
        Male_data_31 = [Male_data_31; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 32
        Male_data_32 = [Male_data_32; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 33
        Male_data_33 = [Male_data_33; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 34
        Male_data_34 = [Male_data_34; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 35
        Male_data_35 = [Male_data_35; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 36
        Male_data_36 = [Male_data_36; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 37
        Male_data_37 = [Male_data_37; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 38
        Male_data_38 = [Male_data_38; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 39
        Male_data_39 = [Male_data_39; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 40
        Male_data_40 = [Male_data_40; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 41
        Male_data_41 = [Male_data_41; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 42
        Male_data_42 = [Male_data_42; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 43
        Male_data_43 = [Male_data_43; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 44
        Male_data_44 = [Male_data_44; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 45
        Male_data_45 = [Male_data_45; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 46
        Male_data_46 = [Male_data_46; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 47
        Male_data_47 = [Male_data_47; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 48
        Male_data_48 = [Male_data_48; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 49
        Male_data_49 = [Male_data_49; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 50
        Male_data_50 = [Male_data_50; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 51
        Male_data_51 = [Male_data_51; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 52
        Male_data_52 = [Male_data_52; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 53
        Male_data_53 = [Male_data_53; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 54
        Male_data_54 = [Male_data_54; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 55
        Male_data_55 = [Male_data_55; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 56
        Male_data_56 = [Male_data_56; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 57
        Male_data_57 = [Male_data_57; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 58
        Male_data_58 = [Male_data_58; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 59
        Male_data_59 = [Male_data_59; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 60
        Male_data_60 = [Male_data_60; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 61
        Male_data_61 = [Male_data_61; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 62
        Male_data_62 = [Male_data_62; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 63
        Male_data_63 = [Male_data_63; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 64
        Male_data_64 = [Male_data_64; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 65
        Male_data_65 = [Male_data_65; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 66
        Male_data_66 = [Male_data_66; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 67
        Male_data_67 = [Male_data_67; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 68
        Male_data_68 = [Male_data_68; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 69
        Male_data_69 = [Male_data_69; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 70
        Male_data_70 = [Male_data_70; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 71
        Male_data_71 = [Male_data_71; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 72
        Male_data_72 = [Male_data_72; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 73
        Male_data_73 = [Male_data_73; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 74
        Male_data_74 = [Male_data_74; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 75
        Male_data_75 = [Male_data_75; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 76
        Male_data_76 = [Male_data_76; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 77
        Male_data_77 = [Male_data_77; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 78
        Male_data_78 = [Male_data_78; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 79
        Male_data_79 = [Male_data_79; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 80
        Male_data_80 = [Male_data_80; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
end
% We calculate the correlation coefficients
% Weight VS Weight*Height^c
Age_1_KNHANES_2021 = 1:80;
Corr_1_KNHANES_2021_Female = [...
    My_Corr(Female_data_1(:,2),Female_data_1(:,2).*(Female_data_1(:,1)/100).^c) ...
    My_Corr(Female_data_2(:,2),Female_data_2(:,2).*(Female_data_2(:,1)/100).^c) ...
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

Corr_1_KNHANES_2021_Male = [...
    My_Corr(Male_data_1(:,2),Male_data_1(:,2).*(Male_data_1(:,1)/100).^c) ...
    My_Corr(Male_data_2(:,2),Male_data_2(:,2).*(Male_data_2(:,1)/100).^c) ...
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

%% KNHANES 2022.xlsx
% Loading the data
Female_data = xlsread('KNHANES\KNHANES 2022.xlsx','Female','B:D');
Male_data = xlsread('KNHANES\KNHANES 2022.xlsx','Male','B:D');
% Grouping by age
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
Female_data_80 = []; % ==80

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
Male_data_80 = []; % ==80

% For Female
[M N] = size(Female_data); % ID	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Female_data(i,1) == 1
        Female_data_1 = [Female_data_1; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 2
        Female_data_2 = [Female_data_2; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 3
        Female_data_3 = [Female_data_3; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 4
        Female_data_4 = [Female_data_4; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 5
        Female_data_5 = [Female_data_5; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 6
        Female_data_6 = [Female_data_6; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 7
        Female_data_7 = [Female_data_7; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 8
        Female_data_8 = [Female_data_8; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 9
        Female_data_9 = [Female_data_9; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 10
        Female_data_10 = [Female_data_10; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 11
        Female_data_11 = [Female_data_11; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 12
        Female_data_12 = [Female_data_12; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 13
        Female_data_13 = [Female_data_13; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 14
        Female_data_14 = [Female_data_14; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 15
        Female_data_15 = [Female_data_15; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 16
        Female_data_16 = [Female_data_16; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 17
        Female_data_17 = [Female_data_17; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 18
        Female_data_18 = [Female_data_18; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 19
        Female_data_19 = [Female_data_19; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 20
        Female_data_20 = [Female_data_20; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 21
        Female_data_21 = [Female_data_21; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 22
        Female_data_22 = [Female_data_22; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 23
        Female_data_23 = [Female_data_23; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 24
        Female_data_24 = [Female_data_24; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 25
        Female_data_25 = [Female_data_25; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 26
        Female_data_26 = [Female_data_26; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 27
        Female_data_27 = [Female_data_27; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 28
        Female_data_28 = [Female_data_28; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 29
        Female_data_29 = [Female_data_29; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 30
        Female_data_30 = [Female_data_30; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 31
        Female_data_31 = [Female_data_31; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 32
        Female_data_32 = [Female_data_32; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 33
        Female_data_33 = [Female_data_33; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 34
        Female_data_34 = [Female_data_34; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 35
        Female_data_35 = [Female_data_35; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 36
        Female_data_36 = [Female_data_36; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 37
        Female_data_37 = [Female_data_37; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 38
        Female_data_38 = [Female_data_38; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 39
        Female_data_39 = [Female_data_39; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 40
        Female_data_40 = [Female_data_40; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 41
        Female_data_41 = [Female_data_41; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 42
        Female_data_42 = [Female_data_42; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 43
        Female_data_43 = [Female_data_43; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 44
        Female_data_44 = [Female_data_44; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 45
        Female_data_45 = [Female_data_45; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 46
        Female_data_46 = [Female_data_46; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 47
        Female_data_47 = [Female_data_47; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 48
        Female_data_48 = [Female_data_48; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 49
        Female_data_49 = [Female_data_49; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 50
        Female_data_50 = [Female_data_50; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 51
        Female_data_51 = [Female_data_51; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 52
        Female_data_52 = [Female_data_52; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 53
        Female_data_53 = [Female_data_53; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 54
        Female_data_54 = [Female_data_54; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 55
        Female_data_55 = [Female_data_55; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 56
        Female_data_56 = [Female_data_56; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 57
        Female_data_57 = [Female_data_57; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 58
        Female_data_58 = [Female_data_58; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 59
        Female_data_59 = [Female_data_59; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 60
        Female_data_60 = [Female_data_60; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 61
        Female_data_61 = [Female_data_61; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 62
        Female_data_62 = [Female_data_62; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 63
        Female_data_63 = [Female_data_63; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 64
        Female_data_64 = [Female_data_64; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 65
        Female_data_65 = [Female_data_65; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 66
        Female_data_66 = [Female_data_66; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 67
        Female_data_67 = [Female_data_67; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 68
        Female_data_68 = [Female_data_68; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 69
        Female_data_69 = [Female_data_69; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 70
        Female_data_70 = [Female_data_70; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 71
        Female_data_71 = [Female_data_71; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 72
        Female_data_72 = [Female_data_72; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 73
        Female_data_73 = [Female_data_73; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 74
        Female_data_74 = [Female_data_74; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 75
        Female_data_75 = [Female_data_75; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 76
        Female_data_76 = [Female_data_76; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 77
        Female_data_77 = [Female_data_77; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 78
        Female_data_78 = [Female_data_78; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 79
        Female_data_79 = [Female_data_79; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 80
        Female_data_80 = [Female_data_80; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
end
% For Male
[M N] = size(Male_data); % ID	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Male_data(i,1) == 1
        Male_data_1 = [Male_data_1; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 2
        Male_data_2 = [Male_data_2; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 3
        Male_data_3 = [Male_data_3; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 4
        Male_data_4 = [Male_data_4; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 5
        Male_data_5 = [Male_data_5; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 6
        Male_data_6 = [Male_data_6; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 7
        Male_data_7 = [Male_data_7; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 8
        Male_data_8 = [Male_data_8; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 9
        Male_data_9 = [Male_data_9; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 10
        Male_data_10 = [Male_data_10; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 11
        Male_data_11 = [Male_data_11; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 12
        Male_data_12 = [Male_data_12; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 13
        Male_data_13 = [Male_data_13; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 14
        Male_data_14 = [Male_data_14; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 15
        Male_data_15 = [Male_data_15; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 16
        Male_data_16 = [Male_data_16; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 17
        Male_data_17 = [Male_data_17; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 18
        Male_data_18 = [Male_data_18; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 19
        Male_data_19 = [Male_data_19; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 20
        Male_data_20 = [Male_data_20; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 21
        Male_data_21 = [Male_data_21; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 22
        Male_data_22 = [Male_data_22; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 23
        Male_data_23 = [Male_data_23; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 24
        Male_data_24 = [Male_data_24; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 25
        Male_data_25 = [Male_data_25; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 26
        Male_data_26 = [Male_data_26; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 27
        Male_data_27 = [Male_data_27; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 28
        Male_data_28 = [Male_data_28; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 29
        Male_data_29 = [Male_data_29; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 30
        Male_data_30 = [Male_data_30; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 31
        Male_data_31 = [Male_data_31; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 32
        Male_data_32 = [Male_data_32; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 33
        Male_data_33 = [Male_data_33; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 34
        Male_data_34 = [Male_data_34; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 35
        Male_data_35 = [Male_data_35; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 36
        Male_data_36 = [Male_data_36; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 37
        Male_data_37 = [Male_data_37; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 38
        Male_data_38 = [Male_data_38; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 39
        Male_data_39 = [Male_data_39; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 40
        Male_data_40 = [Male_data_40; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 41
        Male_data_41 = [Male_data_41; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 42
        Male_data_42 = [Male_data_42; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 43
        Male_data_43 = [Male_data_43; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 44
        Male_data_44 = [Male_data_44; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 45
        Male_data_45 = [Male_data_45; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 46
        Male_data_46 = [Male_data_46; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 47
        Male_data_47 = [Male_data_47; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 48
        Male_data_48 = [Male_data_48; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 49
        Male_data_49 = [Male_data_49; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 50
        Male_data_50 = [Male_data_50; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 51
        Male_data_51 = [Male_data_51; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 52
        Male_data_52 = [Male_data_52; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 53
        Male_data_53 = [Male_data_53; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 54
        Male_data_54 = [Male_data_54; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 55
        Male_data_55 = [Male_data_55; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 56
        Male_data_56 = [Male_data_56; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 57
        Male_data_57 = [Male_data_57; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 58
        Male_data_58 = [Male_data_58; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 59
        Male_data_59 = [Male_data_59; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 60
        Male_data_60 = [Male_data_60; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 61
        Male_data_61 = [Male_data_61; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 62
        Male_data_62 = [Male_data_62; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 63
        Male_data_63 = [Male_data_63; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 64
        Male_data_64 = [Male_data_64; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 65
        Male_data_65 = [Male_data_65; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 66
        Male_data_66 = [Male_data_66; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 67
        Male_data_67 = [Male_data_67; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 68
        Male_data_68 = [Male_data_68; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 69
        Male_data_69 = [Male_data_69; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 70
        Male_data_70 = [Male_data_70; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 71
        Male_data_71 = [Male_data_71; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 72
        Male_data_72 = [Male_data_72; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 73
        Male_data_73 = [Male_data_73; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 74
        Male_data_74 = [Male_data_74; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 75
        Male_data_75 = [Male_data_75; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 76
        Male_data_76 = [Male_data_76; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 77
        Male_data_77 = [Male_data_77; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 78
        Male_data_78 = [Male_data_78; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 79
        Male_data_79 = [Male_data_79; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 80
        Male_data_80 = [Male_data_80; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
end
% We calculate the correlation coefficients
% Weight VS Weight*Height^c
Age_1_KNHANES_2022 = 1:80;
Corr_1_KNHANES_2022_Female = [...
    My_Corr(Female_data_1(:,2),Female_data_1(:,2).*(Female_data_1(:,1)/100).^c) ...
    My_Corr(Female_data_2(:,2),Female_data_2(:,2).*(Female_data_2(:,1)/100).^c) ...
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

Corr_1_KNHANES_2022_Male = [...
    My_Corr(Male_data_1(:,2),Male_data_1(:,2).*(Male_data_1(:,1)/100).^c) ...
    My_Corr(Male_data_2(:,2),Male_data_2(:,2).*(Male_data_2(:,1)/100).^c) ...
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

%% KNHANES 2023.xlsx
% Loading the data
Female_data = xlsread('KNHANES\KNHANES 2023.xlsx','Female','B:D');
Male_data = xlsread('KNHANES\KNHANES 2023.xlsx','Male','B:D');
% Grouping by age
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
Female_data_80 = []; % ==80

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
Male_data_80 = []; % ==80

% For Female
[M N] = size(Female_data); % ID	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Female_data(i,1) == 1
        Female_data_1 = [Female_data_1; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 2
        Female_data_2 = [Female_data_2; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 3
        Female_data_3 = [Female_data_3; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 4
        Female_data_4 = [Female_data_4; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 5
        Female_data_5 = [Female_data_5; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 6
        Female_data_6 = [Female_data_6; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 7
        Female_data_7 = [Female_data_7; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 8
        Female_data_8 = [Female_data_8; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 9
        Female_data_9 = [Female_data_9; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 10
        Female_data_10 = [Female_data_10; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 11
        Female_data_11 = [Female_data_11; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 12
        Female_data_12 = [Female_data_12; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 13
        Female_data_13 = [Female_data_13; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 14
        Female_data_14 = [Female_data_14; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 15
        Female_data_15 = [Female_data_15; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 16
        Female_data_16 = [Female_data_16; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 17
        Female_data_17 = [Female_data_17; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 18
        Female_data_18 = [Female_data_18; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 19
        Female_data_19 = [Female_data_19; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 20
        Female_data_20 = [Female_data_20; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 21
        Female_data_21 = [Female_data_21; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 22
        Female_data_22 = [Female_data_22; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 23
        Female_data_23 = [Female_data_23; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 24
        Female_data_24 = [Female_data_24; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 25
        Female_data_25 = [Female_data_25; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 26
        Female_data_26 = [Female_data_26; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 27
        Female_data_27 = [Female_data_27; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 28
        Female_data_28 = [Female_data_28; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 29
        Female_data_29 = [Female_data_29; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 30
        Female_data_30 = [Female_data_30; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 31
        Female_data_31 = [Female_data_31; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 32
        Female_data_32 = [Female_data_32; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 33
        Female_data_33 = [Female_data_33; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 34
        Female_data_34 = [Female_data_34; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 35
        Female_data_35 = [Female_data_35; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 36
        Female_data_36 = [Female_data_36; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 37
        Female_data_37 = [Female_data_37; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 38
        Female_data_38 = [Female_data_38; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 39
        Female_data_39 = [Female_data_39; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 40
        Female_data_40 = [Female_data_40; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 41
        Female_data_41 = [Female_data_41; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 42
        Female_data_42 = [Female_data_42; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 43
        Female_data_43 = [Female_data_43; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 44
        Female_data_44 = [Female_data_44; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 45
        Female_data_45 = [Female_data_45; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 46
        Female_data_46 = [Female_data_46; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 47
        Female_data_47 = [Female_data_47; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 48
        Female_data_48 = [Female_data_48; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 49
        Female_data_49 = [Female_data_49; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 50
        Female_data_50 = [Female_data_50; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 51
        Female_data_51 = [Female_data_51; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 52
        Female_data_52 = [Female_data_52; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 53
        Female_data_53 = [Female_data_53; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 54
        Female_data_54 = [Female_data_54; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 55
        Female_data_55 = [Female_data_55; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 56
        Female_data_56 = [Female_data_56; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 57
        Female_data_57 = [Female_data_57; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 58
        Female_data_58 = [Female_data_58; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 59
        Female_data_59 = [Female_data_59; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 60
        Female_data_60 = [Female_data_60; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 61
        Female_data_61 = [Female_data_61; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 62
        Female_data_62 = [Female_data_62; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 63
        Female_data_63 = [Female_data_63; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 64
        Female_data_64 = [Female_data_64; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 65
        Female_data_65 = [Female_data_65; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 66
        Female_data_66 = [Female_data_66; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 67
        Female_data_67 = [Female_data_67; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 68
        Female_data_68 = [Female_data_68; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 69
        Female_data_69 = [Female_data_69; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 70
        Female_data_70 = [Female_data_70; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 71
        Female_data_71 = [Female_data_71; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 72
        Female_data_72 = [Female_data_72; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 73
        Female_data_73 = [Female_data_73; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 74
        Female_data_74 = [Female_data_74; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 75
        Female_data_75 = [Female_data_75; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 76
        Female_data_76 = [Female_data_76; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 77
        Female_data_77 = [Female_data_77; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 78
        Female_data_78 = [Female_data_78; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 79
        Female_data_79 = [Female_data_79; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 80
        Female_data_80 = [Female_data_80; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
end
% For Male
[M N] = size(Male_data); % ID	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Male_data(i,1) == 1
        Male_data_1 = [Male_data_1; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 2
        Male_data_2 = [Male_data_2; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 3
        Male_data_3 = [Male_data_3; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 4
        Male_data_4 = [Male_data_4; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 5
        Male_data_5 = [Male_data_5; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 6
        Male_data_6 = [Male_data_6; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 7
        Male_data_7 = [Male_data_7; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 8
        Male_data_8 = [Male_data_8; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 9
        Male_data_9 = [Male_data_9; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 10
        Male_data_10 = [Male_data_10; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 11
        Male_data_11 = [Male_data_11; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 12
        Male_data_12 = [Male_data_12; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 13
        Male_data_13 = [Male_data_13; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 14
        Male_data_14 = [Male_data_14; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 15
        Male_data_15 = [Male_data_15; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 16
        Male_data_16 = [Male_data_16; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 17
        Male_data_17 = [Male_data_17; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 18
        Male_data_18 = [Male_data_18; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 19
        Male_data_19 = [Male_data_19; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 20
        Male_data_20 = [Male_data_20; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 21
        Male_data_21 = [Male_data_21; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 22
        Male_data_22 = [Male_data_22; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 23
        Male_data_23 = [Male_data_23; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 24
        Male_data_24 = [Male_data_24; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 25
        Male_data_25 = [Male_data_25; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 26
        Male_data_26 = [Male_data_26; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 27
        Male_data_27 = [Male_data_27; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 28
        Male_data_28 = [Male_data_28; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 29
        Male_data_29 = [Male_data_29; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 30
        Male_data_30 = [Male_data_30; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 31
        Male_data_31 = [Male_data_31; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 32
        Male_data_32 = [Male_data_32; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 33
        Male_data_33 = [Male_data_33; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 34
        Male_data_34 = [Male_data_34; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 35
        Male_data_35 = [Male_data_35; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 36
        Male_data_36 = [Male_data_36; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 37
        Male_data_37 = [Male_data_37; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 38
        Male_data_38 = [Male_data_38; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 39
        Male_data_39 = [Male_data_39; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 40
        Male_data_40 = [Male_data_40; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 41
        Male_data_41 = [Male_data_41; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 42
        Male_data_42 = [Male_data_42; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 43
        Male_data_43 = [Male_data_43; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 44
        Male_data_44 = [Male_data_44; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 45
        Male_data_45 = [Male_data_45; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 46
        Male_data_46 = [Male_data_46; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 47
        Male_data_47 = [Male_data_47; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 48
        Male_data_48 = [Male_data_48; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 49
        Male_data_49 = [Male_data_49; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 50
        Male_data_50 = [Male_data_50; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 51
        Male_data_51 = [Male_data_51; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 52
        Male_data_52 = [Male_data_52; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 53
        Male_data_53 = [Male_data_53; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 54
        Male_data_54 = [Male_data_54; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 55
        Male_data_55 = [Male_data_55; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 56
        Male_data_56 = [Male_data_56; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 57
        Male_data_57 = [Male_data_57; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 58
        Male_data_58 = [Male_data_58; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 59
        Male_data_59 = [Male_data_59; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 60
        Male_data_60 = [Male_data_60; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 61
        Male_data_61 = [Male_data_61; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 62
        Male_data_62 = [Male_data_62; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 63
        Male_data_63 = [Male_data_63; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 64
        Male_data_64 = [Male_data_64; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 65
        Male_data_65 = [Male_data_65; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 66
        Male_data_66 = [Male_data_66; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 67
        Male_data_67 = [Male_data_67; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 68
        Male_data_68 = [Male_data_68; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 69
        Male_data_69 = [Male_data_69; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 70
        Male_data_70 = [Male_data_70; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 71
        Male_data_71 = [Male_data_71; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 72
        Male_data_72 = [Male_data_72; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 73
        Male_data_73 = [Male_data_73; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 74
        Male_data_74 = [Male_data_74; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 75
        Male_data_75 = [Male_data_75; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 76
        Male_data_76 = [Male_data_76; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 77
        Male_data_77 = [Male_data_77; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 78
        Male_data_78 = [Male_data_78; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 79
        Male_data_79 = [Male_data_79; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 80
        Male_data_80 = [Male_data_80; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
end
% We calculate the correlation coefficients
% Weight VS Weight*Height^c
Age_1_KNHANES_2023 = 1:80;
Corr_1_KNHANES_2023_Female = [...
    My_Corr(Female_data_1(:,2),Female_data_1(:,2).*(Female_data_1(:,1)/100).^c) ...
    My_Corr(Female_data_2(:,2),Female_data_2(:,2).*(Female_data_2(:,1)/100).^c) ...
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

Corr_1_KNHANES_2023_Male = [...
    My_Corr(Male_data_1(:,2),Male_data_1(:,2).*(Male_data_1(:,1)/100).^c) ...
    My_Corr(Male_data_2(:,2),Male_data_2(:,2).*(Male_data_2(:,1)/100).^c) ...
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

%% KNHANES 2024.xlsx
% Loading the data
Female_data = xlsread('KNHANES\KNHANES 2024.xlsx','Female','B:D');
Male_data = xlsread('KNHANES\KNHANES 2024.xlsx','Male','B:D');
% Grouping by age
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
Female_data_80 = []; % ==80

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
Male_data_80 = []; % ==80

% For Female
[M N] = size(Female_data); % ID	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Female_data(i,1) == 1
        Female_data_1 = [Female_data_1; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 2
        Female_data_2 = [Female_data_2; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 3
        Female_data_3 = [Female_data_3; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 4
        Female_data_4 = [Female_data_4; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 5
        Female_data_5 = [Female_data_5; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 6
        Female_data_6 = [Female_data_6; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 7
        Female_data_7 = [Female_data_7; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 8
        Female_data_8 = [Female_data_8; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 9
        Female_data_9 = [Female_data_9; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 10
        Female_data_10 = [Female_data_10; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 11
        Female_data_11 = [Female_data_11; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 12
        Female_data_12 = [Female_data_12; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 13
        Female_data_13 = [Female_data_13; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 14
        Female_data_14 = [Female_data_14; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 15
        Female_data_15 = [Female_data_15; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 16
        Female_data_16 = [Female_data_16; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 17
        Female_data_17 = [Female_data_17; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 18
        Female_data_18 = [Female_data_18; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 19
        Female_data_19 = [Female_data_19; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 20
        Female_data_20 = [Female_data_20; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 21
        Female_data_21 = [Female_data_21; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 22
        Female_data_22 = [Female_data_22; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 23
        Female_data_23 = [Female_data_23; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 24
        Female_data_24 = [Female_data_24; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 25
        Female_data_25 = [Female_data_25; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 26
        Female_data_26 = [Female_data_26; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 27
        Female_data_27 = [Female_data_27; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 28
        Female_data_28 = [Female_data_28; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 29
        Female_data_29 = [Female_data_29; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 30
        Female_data_30 = [Female_data_30; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 31
        Female_data_31 = [Female_data_31; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 32
        Female_data_32 = [Female_data_32; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 33
        Female_data_33 = [Female_data_33; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 34
        Female_data_34 = [Female_data_34; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 35
        Female_data_35 = [Female_data_35; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 36
        Female_data_36 = [Female_data_36; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 37
        Female_data_37 = [Female_data_37; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 38
        Female_data_38 = [Female_data_38; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 39
        Female_data_39 = [Female_data_39; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 40
        Female_data_40 = [Female_data_40; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 41
        Female_data_41 = [Female_data_41; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 42
        Female_data_42 = [Female_data_42; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 43
        Female_data_43 = [Female_data_43; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 44
        Female_data_44 = [Female_data_44; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 45
        Female_data_45 = [Female_data_45; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 46
        Female_data_46 = [Female_data_46; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 47
        Female_data_47 = [Female_data_47; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 48
        Female_data_48 = [Female_data_48; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 49
        Female_data_49 = [Female_data_49; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 50
        Female_data_50 = [Female_data_50; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 51
        Female_data_51 = [Female_data_51; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 52
        Female_data_52 = [Female_data_52; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 53
        Female_data_53 = [Female_data_53; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 54
        Female_data_54 = [Female_data_54; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 55
        Female_data_55 = [Female_data_55; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 56
        Female_data_56 = [Female_data_56; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 57
        Female_data_57 = [Female_data_57; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 58
        Female_data_58 = [Female_data_58; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 59
        Female_data_59 = [Female_data_59; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 60
        Female_data_60 = [Female_data_60; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 61
        Female_data_61 = [Female_data_61; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 62
        Female_data_62 = [Female_data_62; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 63
        Female_data_63 = [Female_data_63; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 64
        Female_data_64 = [Female_data_64; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 65
        Female_data_65 = [Female_data_65; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 66
        Female_data_66 = [Female_data_66; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 67
        Female_data_67 = [Female_data_67; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 68
        Female_data_68 = [Female_data_68; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 69
        Female_data_69 = [Female_data_69; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 70
        Female_data_70 = [Female_data_70; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 71
        Female_data_71 = [Female_data_71; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 72
        Female_data_72 = [Female_data_72; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 73
        Female_data_73 = [Female_data_73; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 74
        Female_data_74 = [Female_data_74; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 75
        Female_data_75 = [Female_data_75; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 76
        Female_data_76 = [Female_data_76; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 77
        Female_data_77 = [Female_data_77; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 78
        Female_data_78 = [Female_data_78; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 79
        Female_data_79 = [Female_data_79; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 80
        Female_data_80 = [Female_data_80; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
end
% For Male
[M N] = size(Male_data); % ID	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Male_data(i,1) == 1
        Male_data_1 = [Male_data_1; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 2
        Male_data_2 = [Male_data_2; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 3
        Male_data_3 = [Male_data_3; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 4
        Male_data_4 = [Male_data_4; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 5
        Male_data_5 = [Male_data_5; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 6
        Male_data_6 = [Male_data_6; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 7
        Male_data_7 = [Male_data_7; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 8
        Male_data_8 = [Male_data_8; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 9
        Male_data_9 = [Male_data_9; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 10
        Male_data_10 = [Male_data_10; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 11
        Male_data_11 = [Male_data_11; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 12
        Male_data_12 = [Male_data_12; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 13
        Male_data_13 = [Male_data_13; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 14
        Male_data_14 = [Male_data_14; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 15
        Male_data_15 = [Male_data_15; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 16
        Male_data_16 = [Male_data_16; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 17
        Male_data_17 = [Male_data_17; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 18
        Male_data_18 = [Male_data_18; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 19
        Male_data_19 = [Male_data_19; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 20
        Male_data_20 = [Male_data_20; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 21
        Male_data_21 = [Male_data_21; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 22
        Male_data_22 = [Male_data_22; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 23
        Male_data_23 = [Male_data_23; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 24
        Male_data_24 = [Male_data_24; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 25
        Male_data_25 = [Male_data_25; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 26
        Male_data_26 = [Male_data_26; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 27
        Male_data_27 = [Male_data_27; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 28
        Male_data_28 = [Male_data_28; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 29
        Male_data_29 = [Male_data_29; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 30
        Male_data_30 = [Male_data_30; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 31
        Male_data_31 = [Male_data_31; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 32
        Male_data_32 = [Male_data_32; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 33
        Male_data_33 = [Male_data_33; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 34
        Male_data_34 = [Male_data_34; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 35
        Male_data_35 = [Male_data_35; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 36
        Male_data_36 = [Male_data_36; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 37
        Male_data_37 = [Male_data_37; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 38
        Male_data_38 = [Male_data_38; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 39
        Male_data_39 = [Male_data_39; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 40
        Male_data_40 = [Male_data_40; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 41
        Male_data_41 = [Male_data_41; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 42
        Male_data_42 = [Male_data_42; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 43
        Male_data_43 = [Male_data_43; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 44
        Male_data_44 = [Male_data_44; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 45
        Male_data_45 = [Male_data_45; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 46
        Male_data_46 = [Male_data_46; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 47
        Male_data_47 = [Male_data_47; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 48
        Male_data_48 = [Male_data_48; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 49
        Male_data_49 = [Male_data_49; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 50
        Male_data_50 = [Male_data_50; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 51
        Male_data_51 = [Male_data_51; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 52
        Male_data_52 = [Male_data_52; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 53
        Male_data_53 = [Male_data_53; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 54
        Male_data_54 = [Male_data_54; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 55
        Male_data_55 = [Male_data_55; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 56
        Male_data_56 = [Male_data_56; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 57
        Male_data_57 = [Male_data_57; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 58
        Male_data_58 = [Male_data_58; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 59
        Male_data_59 = [Male_data_59; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 60
        Male_data_60 = [Male_data_60; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 61
        Male_data_61 = [Male_data_61; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 62
        Male_data_62 = [Male_data_62; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 63
        Male_data_63 = [Male_data_63; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 64
        Male_data_64 = [Male_data_64; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 65
        Male_data_65 = [Male_data_65; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 66
        Male_data_66 = [Male_data_66; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 67
        Male_data_67 = [Male_data_67; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 68
        Male_data_68 = [Male_data_68; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 69
        Male_data_69 = [Male_data_69; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 70
        Male_data_70 = [Male_data_70; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 71
        Male_data_71 = [Male_data_71; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 72
        Male_data_72 = [Male_data_72; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 73
        Male_data_73 = [Male_data_73; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 74
        Male_data_74 = [Male_data_74; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 75
        Male_data_75 = [Male_data_75; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 76
        Male_data_76 = [Male_data_76; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 77
        Male_data_77 = [Male_data_77; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 78
        Male_data_78 = [Male_data_78; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 79
        Male_data_79 = [Male_data_79; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 80
        Male_data_80 = [Male_data_80; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
end
% We calculate the correlation coefficients
% Weight VS Weight*Height^c
Age_1_KNHANES_2024 = 1:80;
Corr_1_KNHANES_2024_Female = [...
    My_Corr(Female_data_1(:,2),Female_data_1(:,2).*(Female_data_1(:,1)/100).^c) ...
    My_Corr(Female_data_2(:,2),Female_data_2(:,2).*(Female_data_2(:,1)/100).^c) ...
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

Corr_1_KNHANES_2024_Male = [...
    My_Corr(Male_data_1(:,2),Male_data_1(:,2).*(Male_data_1(:,1)/100).^c) ...
    My_Corr(Male_data_2(:,2),Male_data_2(:,2).*(Male_data_2(:,1)/100).^c) ...
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

%% KNHANES ALL.xlsx
% Loading the data
Female_data = xlsread('KNHANES\KNHANES ALL.xlsx','Female','B:D');
Male_data = xlsread('KNHANES\KNHANES ALL.xlsx','Male','B:D');
% Grouping by age
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
Female_data_80 = []; % ==80

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
Male_data_80 = []; % ==80

% For Female
[M N] = size(Female_data); % ID	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Female_data(i,1) == 1
        Female_data_1 = [Female_data_1; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 2
        Female_data_2 = [Female_data_2; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 3
        Female_data_3 = [Female_data_3; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 4
        Female_data_4 = [Female_data_4; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 5
        Female_data_5 = [Female_data_5; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 6
        Female_data_6 = [Female_data_6; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 7
        Female_data_7 = [Female_data_7; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 8
        Female_data_8 = [Female_data_8; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 9
        Female_data_9 = [Female_data_9; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 10
        Female_data_10 = [Female_data_10; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 11
        Female_data_11 = [Female_data_11; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 12
        Female_data_12 = [Female_data_12; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 13
        Female_data_13 = [Female_data_13; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 14
        Female_data_14 = [Female_data_14; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 15
        Female_data_15 = [Female_data_15; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 16
        Female_data_16 = [Female_data_16; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 17
        Female_data_17 = [Female_data_17; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 18
        Female_data_18 = [Female_data_18; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 19
        Female_data_19 = [Female_data_19; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 20
        Female_data_20 = [Female_data_20; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 21
        Female_data_21 = [Female_data_21; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 22
        Female_data_22 = [Female_data_22; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 23
        Female_data_23 = [Female_data_23; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 24
        Female_data_24 = [Female_data_24; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 25
        Female_data_25 = [Female_data_25; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 26
        Female_data_26 = [Female_data_26; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 27
        Female_data_27 = [Female_data_27; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 28
        Female_data_28 = [Female_data_28; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 29
        Female_data_29 = [Female_data_29; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 30
        Female_data_30 = [Female_data_30; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 31
        Female_data_31 = [Female_data_31; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 32
        Female_data_32 = [Female_data_32; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 33
        Female_data_33 = [Female_data_33; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 34
        Female_data_34 = [Female_data_34; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 35
        Female_data_35 = [Female_data_35; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 36
        Female_data_36 = [Female_data_36; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 37
        Female_data_37 = [Female_data_37; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 38
        Female_data_38 = [Female_data_38; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 39
        Female_data_39 = [Female_data_39; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 40
        Female_data_40 = [Female_data_40; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 41
        Female_data_41 = [Female_data_41; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 42
        Female_data_42 = [Female_data_42; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 43
        Female_data_43 = [Female_data_43; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 44
        Female_data_44 = [Female_data_44; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 45
        Female_data_45 = [Female_data_45; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 46
        Female_data_46 = [Female_data_46; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 47
        Female_data_47 = [Female_data_47; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 48
        Female_data_48 = [Female_data_48; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 49
        Female_data_49 = [Female_data_49; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 50
        Female_data_50 = [Female_data_50; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 51
        Female_data_51 = [Female_data_51; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 52
        Female_data_52 = [Female_data_52; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 53
        Female_data_53 = [Female_data_53; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 54
        Female_data_54 = [Female_data_54; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 55
        Female_data_55 = [Female_data_55; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 56
        Female_data_56 = [Female_data_56; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 57
        Female_data_57 = [Female_data_57; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 58
        Female_data_58 = [Female_data_58; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 59
        Female_data_59 = [Female_data_59; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 60
        Female_data_60 = [Female_data_60; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 61
        Female_data_61 = [Female_data_61; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 62
        Female_data_62 = [Female_data_62; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 63
        Female_data_63 = [Female_data_63; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 64
        Female_data_64 = [Female_data_64; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 65
        Female_data_65 = [Female_data_65; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 66
        Female_data_66 = [Female_data_66; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 67
        Female_data_67 = [Female_data_67; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 68
        Female_data_68 = [Female_data_68; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 69
        Female_data_69 = [Female_data_69; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 70
        Female_data_70 = [Female_data_70; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 71
        Female_data_71 = [Female_data_71; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 72
        Female_data_72 = [Female_data_72; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 73
        Female_data_73 = [Female_data_73; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 74
        Female_data_74 = [Female_data_74; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 75
        Female_data_75 = [Female_data_75; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 76
        Female_data_76 = [Female_data_76; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 77
        Female_data_77 = [Female_data_77; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 78
        Female_data_78 = [Female_data_78; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 79
        Female_data_79 = [Female_data_79; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,1) == 80
        Female_data_80 = [Female_data_80; Female_data(i,2) Female_data(i,3)]; % Height(cm) Weight(Kg)
    end
end
% For Male
[M N] = size(Male_data); % ID	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Male_data(i,1) == 1
        Male_data_1 = [Male_data_1; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 2
        Male_data_2 = [Male_data_2; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 3
        Male_data_3 = [Male_data_3; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 4
        Male_data_4 = [Male_data_4; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 5
        Male_data_5 = [Male_data_5; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 6
        Male_data_6 = [Male_data_6; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 7
        Male_data_7 = [Male_data_7; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 8
        Male_data_8 = [Male_data_8; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 9
        Male_data_9 = [Male_data_9; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 10
        Male_data_10 = [Male_data_10; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 11
        Male_data_11 = [Male_data_11; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 12
        Male_data_12 = [Male_data_12; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 13
        Male_data_13 = [Male_data_13; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 14
        Male_data_14 = [Male_data_14; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 15
        Male_data_15 = [Male_data_15; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 16
        Male_data_16 = [Male_data_16; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 17
        Male_data_17 = [Male_data_17; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 18
        Male_data_18 = [Male_data_18; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 19
        Male_data_19 = [Male_data_19; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 20
        Male_data_20 = [Male_data_20; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 21
        Male_data_21 = [Male_data_21; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 22
        Male_data_22 = [Male_data_22; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 23
        Male_data_23 = [Male_data_23; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 24
        Male_data_24 = [Male_data_24; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 25
        Male_data_25 = [Male_data_25; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 26
        Male_data_26 = [Male_data_26; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 27
        Male_data_27 = [Male_data_27; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 28
        Male_data_28 = [Male_data_28; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 29
        Male_data_29 = [Male_data_29; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 30
        Male_data_30 = [Male_data_30; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 31
        Male_data_31 = [Male_data_31; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 32
        Male_data_32 = [Male_data_32; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 33
        Male_data_33 = [Male_data_33; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 34
        Male_data_34 = [Male_data_34; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 35
        Male_data_35 = [Male_data_35; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 36
        Male_data_36 = [Male_data_36; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 37
        Male_data_37 = [Male_data_37; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 38
        Male_data_38 = [Male_data_38; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 39
        Male_data_39 = [Male_data_39; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 40
        Male_data_40 = [Male_data_40; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 41
        Male_data_41 = [Male_data_41; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 42
        Male_data_42 = [Male_data_42; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 43
        Male_data_43 = [Male_data_43; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 44
        Male_data_44 = [Male_data_44; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 45
        Male_data_45 = [Male_data_45; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 46
        Male_data_46 = [Male_data_46; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 47
        Male_data_47 = [Male_data_47; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 48
        Male_data_48 = [Male_data_48; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 49
        Male_data_49 = [Male_data_49; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 50
        Male_data_50 = [Male_data_50; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 51
        Male_data_51 = [Male_data_51; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 52
        Male_data_52 = [Male_data_52; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 53
        Male_data_53 = [Male_data_53; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 54
        Male_data_54 = [Male_data_54; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 55
        Male_data_55 = [Male_data_55; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 56
        Male_data_56 = [Male_data_56; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 57
        Male_data_57 = [Male_data_57; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 58
        Male_data_58 = [Male_data_58; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 59
        Male_data_59 = [Male_data_59; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 60
        Male_data_60 = [Male_data_60; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 61
        Male_data_61 = [Male_data_61; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 62
        Male_data_62 = [Male_data_62; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 63
        Male_data_63 = [Male_data_63; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 64
        Male_data_64 = [Male_data_64; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 65
        Male_data_65 = [Male_data_65; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 66
        Male_data_66 = [Male_data_66; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 67
        Male_data_67 = [Male_data_67; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 68
        Male_data_68 = [Male_data_68; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 69
        Male_data_69 = [Male_data_69; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 70
        Male_data_70 = [Male_data_70; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 71
        Male_data_71 = [Male_data_71; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 72
        Male_data_72 = [Male_data_72; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 73
        Male_data_73 = [Male_data_73; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 74
        Male_data_74 = [Male_data_74; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 75
        Male_data_75 = [Male_data_75; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 76
        Male_data_76 = [Male_data_76; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 77
        Male_data_77 = [Male_data_77; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 78
        Male_data_78 = [Male_data_78; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 79
        Male_data_79 = [Male_data_79; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,1) == 80
        Male_data_80 = [Male_data_80; Male_data(i,2) Male_data(i,3)]; % Height(cm) Weight(Kg)
    end
end
% We calculate the correlation coefficients
% Weight VS Weight*Height^c
Age_1_KNHANES_ALL = 1:80;
Corr_1_KNHANES_ALL_Female = [...
    My_Corr(Female_data_1(:,2),Female_data_1(:,2).*(Female_data_1(:,1)/100).^c) ...
    My_Corr(Female_data_2(:,2),Female_data_2(:,2).*(Female_data_2(:,1)/100).^c) ...
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

Corr_1_KNHANES_ALL_Male = [...
    My_Corr(Male_data_1(:,2),Male_data_1(:,2).*(Male_data_1(:,1)/100).^c) ...
    My_Corr(Male_data_2(:,2),Male_data_2(:,2).*(Male_data_2(:,1)/100).^c) ...
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
% In the KNHANES_2007 dataset, there are less than 10 data entries for 20-year-old males.
Corr_1_KNHANES_2007_Male(20) = (Corr_1_KNHANES_2007_Male(19)+Corr_1_KNHANES_2007_Male(21))/2; % mean smoothing filtering
%% We show the results
figure;
% For female
subplot(2,1,1);
hold on;
title('Female')
xlabel('Age (yr)');
ylabel('Correlation coefficients')
xlim([0 81]);
ylim([0.9 1]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

% KNHANES 1998
x_data = Age_1_KNHANES_1998;
y_data = Corr_1_KNHANES_1998_Female;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(1,:),'MarkerFaceColor','w');

% KNHANES 2001
x_data = Age_1_KNHANES_2001;
y_data = Corr_1_KNHANES_2001_Female;
HH2 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(2,:),'MarkerFaceColor','w');

% KNHANES 2005
x_data = Age_1_KNHANES_2005;
y_data = Corr_1_KNHANES_2005_Female;
HH3 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(3,:),'MarkerFaceColor','w');

% KNHANES 2007
x_data = Age_1_KNHANES_2007;
y_data = Corr_1_KNHANES_2007_Female;
HH4 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(4,:),'MarkerFaceColor','w');

% KNHANES 2008
x_data = Age_1_KNHANES_2008;
y_data = Corr_1_KNHANES_2008_Female;
HH5 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(5,:),'MarkerFaceColor','w');

% KNHANES 2009
x_data = Age_1_KNHANES_2009;
y_data = Corr_1_KNHANES_2009_Female;
HH6 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(6,:),'MarkerFaceColor','w');

% KNHANES 2010
x_data = Age_1_KNHANES_2010;
y_data = Corr_1_KNHANES_2010_Female;
HH7 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(7,:),'MarkerFaceColor','w');

% KNHANES 2011
x_data = Age_1_KNHANES_2011;
y_data = Corr_1_KNHANES_2011_Female;
HH8 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(8,:),'MarkerFaceColor','w');

% KNHANES 2012
x_data = Age_1_KNHANES_2012;
y_data = Corr_1_KNHANES_2012_Female;
HH9 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(9,:),'MarkerFaceColor','w');

% KNHANES 2013
x_data = Age_1_KNHANES_2013;
y_data = Corr_1_KNHANES_2013_Female;
HH10 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(10,:),'MarkerFaceColor','w');

% KNHANES 2014
x_data = Age_1_KNHANES_2014;
y_data = Corr_1_KNHANES_2014_Female;
HH11 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(11,:),'MarkerFaceColor','w');

% KNHANES 2015
x_data = Age_1_KNHANES_2015;
y_data = Corr_1_KNHANES_2015_Female;
HH12 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(12,:),'MarkerFaceColor','w');

% KNHANES 2016
x_data = Age_1_KNHANES_2016;
y_data = Corr_1_KNHANES_2016_Female;
HH13 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(13,:),'MarkerFaceColor','w');

% KNHANES 2017
x_data = Age_1_KNHANES_2017;
y_data = Corr_1_KNHANES_2017_Female;
HH14 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(14,:),'MarkerFaceColor','w');

% KNHANES 2018
x_data = Age_1_KNHANES_2018;
y_data = Corr_1_KNHANES_2018_Female;
HH15 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(15,:),'MarkerFaceColor','w');

% KNHANES 2019
x_data = Age_1_KNHANES_2019;
y_data = Corr_1_KNHANES_2019_Female;
HH16 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(16,:),'MarkerFaceColor','w');

% KNHANES 2020
x_data = Age_1_KNHANES_2020;
y_data = Corr_1_KNHANES_2020_Female;
HH17 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(17,:),'MarkerFaceColor','w');

% KNHANES 2021
x_data = Age_1_KNHANES_2021;
y_data = Corr_1_KNHANES_2021_Female;
HH18 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(18,:),'MarkerFaceColor','w');

% KNHANES 2022
x_data = Age_1_KNHANES_2022;
y_data = Corr_1_KNHANES_2022_Female;
HH19 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(19,:),'MarkerFaceColor','w');

% KNHANES 2023
x_data = Age_1_KNHANES_2023;
y_data = Corr_1_KNHANES_2023_Female;
HH20 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(20,:),'MarkerFaceColor','w');

% KNHANES 2024
x_data = Age_1_KNHANES_2024;
y_data = Corr_1_KNHANES_2024_Female;
HH21 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(21,:),'MarkerFaceColor','w');

% KNHANES ALL
x_data = Age_1_KNHANES_ALL;
y_data = Corr_1_KNHANES_ALL_Female;
HH22 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(22,:),'MarkerFaceColor','w');

% For Male
subplot(2,1,2);
hold on;
title('Male')
xlabel('Age (yr)');
ylabel('Correlation coefficients')
xlim([0 81]);
ylim([0.9 1]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

% KNHANES 1998
x_data = Age_1_KNHANES_1998;
y_data = Corr_1_KNHANES_1998_Male;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(1,:),'MarkerFaceColor','w');

% KNHANES 2001
x_data = Age_1_KNHANES_2001;
y_data = Corr_1_KNHANES_2001_Male;
HH2 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(2,:),'MarkerFaceColor','w');

% KNHANES 2005
x_data = Age_1_KNHANES_2005;
y_data = Corr_1_KNHANES_2005_Male;
HH3 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(3,:),'MarkerFaceColor','w');

% KNHANES 2007
x_data = Age_1_KNHANES_2007;
y_data = Corr_1_KNHANES_2007_Male;
HH4 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(4,:),'MarkerFaceColor','w');

% KNHANES 2008
x_data = Age_1_KNHANES_2008;
y_data = Corr_1_KNHANES_2008_Male;
HH5 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(5,:),'MarkerFaceColor','w');

% KNHANES 2009
x_data = Age_1_KNHANES_2009;
y_data = Corr_1_KNHANES_2009_Male;
HH6 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(6,:),'MarkerFaceColor','w');

% KNHANES 2010
x_data = Age_1_KNHANES_2010;
y_data = Corr_1_KNHANES_2010_Male;
HH7 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(7,:),'MarkerFaceColor','w');

% KNHANES 2011
x_data = Age_1_KNHANES_2011;
y_data = Corr_1_KNHANES_2011_Male;
HH8 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(8,:),'MarkerFaceColor','w');

% KNHANES 2012
x_data = Age_1_KNHANES_2012;
y_data = Corr_1_KNHANES_2012_Male;
HH9 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(9,:),'MarkerFaceColor','w');

% KNHANES 2013
x_data = Age_1_KNHANES_2013;
y_data = Corr_1_KNHANES_2013_Male;
HH10 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(10,:),'MarkerFaceColor','w');

% KNHANES 2014
x_data = Age_1_KNHANES_2014;
y_data = Corr_1_KNHANES_2014_Male;
HH11 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(11,:),'MarkerFaceColor','w');

% KNHANES 2015
x_data = Age_1_KNHANES_2015;
y_data = Corr_1_KNHANES_2015_Male;
HH12 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(12,:),'MarkerFaceColor','w');

% KNHANES 2016
x_data = Age_1_KNHANES_2016;
y_data = Corr_1_KNHANES_2016_Male;
HH13 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(13,:),'MarkerFaceColor','w');

% KNHANES 2017
x_data = Age_1_KNHANES_2017;
y_data = Corr_1_KNHANES_2017_Male;
HH14 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(14,:),'MarkerFaceColor','w');

% KNHANES 2018
x_data = Age_1_KNHANES_2018;
y_data = Corr_1_KNHANES_2018_Male;
HH15 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(15,:),'MarkerFaceColor','w');

% KNHANES 2019
x_data = Age_1_KNHANES_2019;
y_data = Corr_1_KNHANES_2019_Male;
HH16 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(16,:),'MarkerFaceColor','w');

% KNHANES 2020
x_data = Age_1_KNHANES_2020;
y_data = Corr_1_KNHANES_2020_Male;
HH17 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(17,:),'MarkerFaceColor','w');

% KNHANES 2021
x_data = Age_1_KNHANES_2021;
y_data = Corr_1_KNHANES_2021_Male;
HH18 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(18,:),'MarkerFaceColor','w');

% KNHANES 2022
x_data = Age_1_KNHANES_2022;
y_data = Corr_1_KNHANES_2022_Male;
HH19 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(19,:),'MarkerFaceColor','w');

% KNHANES 2023
x_data = Age_1_KNHANES_2023;
y_data = Corr_1_KNHANES_2023_Male;
HH20 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(20,:),'MarkerFaceColor','w');

% KNHANES 2024
x_data = Age_1_KNHANES_2024;
y_data = Corr_1_KNHANES_2024_Male;
HH21 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(21,:),'MarkerFaceColor','w');

% KNHANES ALL
x_data = Age_1_KNHANES_ALL;
y_data = Corr_1_KNHANES_ALL_Male;
HH22 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(22,:),'MarkerFaceColor','w');

Legend = legend([HH1 HH2 HH3 HH4 HH5 HH6 HH7 HH8 HH9 HH10 HH11 HH12 HH13 HH14 HH15 HH16 HH17 HH18 HH19 HH20 HH21 HH22],...
    {...
    'KNHANES 1998',...
    'KNHANES 2001',...
    'KNHANES 2005',...
    'KNHANES 2007',...
    'KNHANES 2008',...
    'KNHANES 2009',...
    'KNHANES 2010',...
    'KNHANES 2011',...
    'KNHANES 2012',...
    'KNHANES 2013',...
    'KNHANES 2014',...
    'KNHANES 2015',...
    'KNHANES 2016',...
    'KNHANES 2017',...
    'KNHANES 2018',...
    'KNHANES 2019',...
    'KNHANES 2020',...
    'KNHANES 2021',...
    'KNHANES 2022',...
    'KNHANES 2023',...
    'KNHANES 2024',...
    'KNHANES ALL'});
set(Legend,'Box','off','location','SouthEast')

%%
% We save the correlation analysis results
save('Correlation_coefficient_c1_KNHANES.mat',...
    'Age_1_KNHANES_1998','Corr_1_KNHANES_1998_Female','Corr_1_KNHANES_1998_Male',...
    'Age_1_KNHANES_2001','Corr_1_KNHANES_2001_Female','Corr_1_KNHANES_2001_Male',...
    'Age_1_KNHANES_2005','Corr_1_KNHANES_2005_Female','Corr_1_KNHANES_2005_Male',...
    'Age_1_KNHANES_2007','Corr_1_KNHANES_2007_Female','Corr_1_KNHANES_2007_Male',...
    'Age_1_KNHANES_2008','Corr_1_KNHANES_2008_Female','Corr_1_KNHANES_2008_Male',...
    'Age_1_KNHANES_2009','Corr_1_KNHANES_2009_Female','Corr_1_KNHANES_2009_Male',...
    'Age_1_KNHANES_2010','Corr_1_KNHANES_2010_Female','Corr_1_KNHANES_2010_Male',...
    'Age_1_KNHANES_2011','Corr_1_KNHANES_2011_Female','Corr_1_KNHANES_2011_Male',...
    'Age_1_KNHANES_2012','Corr_1_KNHANES_2012_Female','Corr_1_KNHANES_2012_Male',...
    'Age_1_KNHANES_2013','Corr_1_KNHANES_2013_Female','Corr_1_KNHANES_2013_Male',...
    'Age_1_KNHANES_2014','Corr_1_KNHANES_2014_Female','Corr_1_KNHANES_2014_Male',...
    'Age_1_KNHANES_2015','Corr_1_KNHANES_2015_Female','Corr_1_KNHANES_2015_Male',...
    'Age_1_KNHANES_2016','Corr_1_KNHANES_2016_Female','Corr_1_KNHANES_2016_Male',...
    'Age_1_KNHANES_2017','Corr_1_KNHANES_2017_Female','Corr_1_KNHANES_2017_Male',...
    'Age_1_KNHANES_2018','Corr_1_KNHANES_2018_Female','Corr_1_KNHANES_2018_Male',...
    'Age_1_KNHANES_2019','Corr_1_KNHANES_2019_Female','Corr_1_KNHANES_2019_Male',...
    'Age_1_KNHANES_2020','Corr_1_KNHANES_2020_Female','Corr_1_KNHANES_2020_Male',...
    'Age_1_KNHANES_2021','Corr_1_KNHANES_2021_Female','Corr_1_KNHANES_2021_Male',...
    'Age_1_KNHANES_2022','Corr_1_KNHANES_2022_Female','Corr_1_KNHANES_2022_Male',...
    'Age_1_KNHANES_2023','Corr_1_KNHANES_2023_Female','Corr_1_KNHANES_2023_Male',...
    'Age_1_KNHANES_2024','Corr_1_KNHANES_2024_Female','Corr_1_KNHANES_2024_Male',...
    'Age_1_KNHANES_ALL','Corr_1_KNHANES_ALL_Female','Corr_1_KNHANES_ALL_Male');
toc;
%}