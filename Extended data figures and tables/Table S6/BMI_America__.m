%% Source codes for BMI_America__.mat
% 针对所有美洲国家数据，计算BMI(Weight/Height^2)
% 
%
tic;
%%
c = 1;
%%
Cut_off_Age = 25;
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
%% Calculate the distribution of BMI
BMI_Female_America__ = [];
BMI_Male_America__ = [];
% Load and segment the data by age and gender
%% American
Female_data = []; % No.	Age	Height(cm)	Weight(Kg)
Male_data = []; % No. Age	Height(cm)	Weight(Kg)
% NHANES August 2021-August 2023
Temp_Female = xlsread('./Raw_data/Data_America/NHANES August 2021-August 2023.xlsx','Female');
Temp_Male = xlsread('./Raw_data/Data_America/NHANES August 2021-August 2023.xlsx','Male');
Female_data = [Female_data;Temp_Female(:,2:5)];
Male_data= [Male_data;Temp_Male(:,2:5)];

% NHANES 2017-March 2020
Temp_Female = xlsread('./Raw_data/Data_America/NHANES 2017-March 2020.xlsx','Female');
Temp_Male = xlsread('./Raw_data/Data_America/NHANES 2017-March 2020.xlsx','Male');
Female_data = [Female_data;Temp_Female(:,2:5)];
Male_data= [Male_data;Temp_Male(:,2:5)];

% NHANES 2017-2018
Temp_Female = xlsread('./Raw_data/Data_America/NHANES 2017-2018.xlsx','Female');
Temp_Male = xlsread('./Raw_data/Data_America/NHANES 2017-2018.xlsx','Male');
Female_data = [Female_data;Temp_Female(:,2:5)];
Male_data= [Male_data;Temp_Male(:,2:5)];

% NHANES 2015-2016
Temp_Female = xlsread('./Raw_data/Data_America/NHANES 2015-2016.xlsx','Female');
Temp_Male = xlsread('./Raw_data/Data_America/NHANES 2015-2016.xlsx','Male');
Female_data = [Female_data;Temp_Female(:,2:5)];
Male_data= [Male_data;Temp_Male(:,2:5)];

% NHANES 2013-2014
Temp_Female = xlsread('./Raw_data/Data_America/NHANES 2013-2014.xlsx','Female');
Temp_Male = xlsread('./Raw_data/Data_America/NHANES 2013-2014.xlsx','Male');
Female_data = [Female_data;Temp_Female(:,2:5)];
Male_data= [Male_data;Temp_Male(:,2:5)];

% NHANES 2011-2012
Temp_Female = xlsread('./Raw_data/Data_America/NHANES 2011-2012.xlsx','Female');
Temp_Male = xlsread('./Raw_data/Data_America/NHANES 2011-2012.xlsx','Male');
Female_data = [Female_data;Temp_Female(:,2:5)];
Male_data= [Male_data;Temp_Male(:,2:5)];

% Data from women in NHANES 2005-2006, NHANES 2007-2008 and NHANES 2009-2010 were excluded
%
% NHANES 2009-2010
%Temp_Female = xlsread('./Raw_data/Data_America/NHANES 2009-2010.xlsx','Female');
Temp_Male = xlsread('./Raw_data/Data_America/NHANES 2009-2010.xlsx','Male');
%Female_data = [Female_data;Temp_Female(:,2:5)];
Male_data= [Male_data;Temp_Male(:,2:5)];

% NHANES 2007-2008
%Temp_Female = xlsread('./Raw_data/Data_America/NHANES 2007-2008.xlsx','Female');
Temp_Male = xlsread('./Raw_data/Data_America/NHANES 2007-2008.xlsx','Male');
%Female_data = [Female_data;Temp_Female(:,2:5)];
Male_data= [Male_data;Temp_Male(:,2:5)];

% NHANES 2005-2006
%Temp_Female = xlsread('./Raw_data/Data_America/NHANES 2005-2006.xlsx','Female');
Temp_Male = xlsread('./Raw_data/Data_America/NHANES 2005-2006.xlsx','Male');
%Female_data = [Female_data;Temp_Female(:,2:5)];
Male_data= [Male_data;Temp_Male(:,2:5)];
%}

% NHANES 2003-2004
Temp_Female = xlsread('./Raw_data/Data_America/NHANES 2003-2004.xlsx','Female');
Temp_Male = xlsread('./Raw_data/Data_America/NHANES 2003-2004.xlsx','Male');
Female_data = [Female_data;Temp_Female(:,2:5)];
Male_data= [Male_data;Temp_Male(:,2:5)];

% NHANES 2001-2002
Temp_Female = xlsread('./Raw_data/Data_America/NHANES 2001-2002.xlsx','Female');
Temp_Male = xlsread('./Raw_data/Data_America/NHANES 2001-2002.xlsx','Male');
Female_data = [Female_data;Temp_Female(:,2:5)];
Male_data= [Male_data;Temp_Male(:,2:5)];

% NHANES 1999-2000
Temp_Female = xlsread('./Raw_data/Data_America/NHANES 1999-2000.xlsx','Female');
Temp_Male = xlsread('./Raw_data/Data_America/NHANES 1999-2000.xlsx','Male');
Female_data = [Female_data;Temp_Female(:,2:5)];
Male_data= [Male_data;Temp_Male(:,2:5)];

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

% For Female
[M N] = size(Female_data); % Height (cm) Weight (Kg)
for i = 1:M
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
    if Female_data(i,2) >= 85
        Female_data_85 = [Female_data_85;Female_data(i,3) Female_data(i,4)];
    end
end
% For Male
[M N] = size(Male_data); % Height (cm) Weight (Kg)
for i = 1:M
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
    if Male_data(i,2) >= 85
        Male_data_85 = [Male_data_85;Male_data(i,3) Male_data(i,4)];
    end
end

% we Calculate the BMI distribution
% For Female
Age = 2;
X_Temp = Female_data_2(:,1)/100; % Height (m)
Y_Temp = Female_data_2(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_America__ = [BMI_Female_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 3;
X_Temp = Female_data_3(:,1)/100; % Height (m)
Y_Temp = Female_data_3(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_America__ = [BMI_Female_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 4;
X_Temp = Female_data_4(:,1)/100; % Height (m)
Y_Temp = Female_data_4(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_America__ = [BMI_Female_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 5;
X_Temp = Female_data_5(:,1)/100; % Height (m)
Y_Temp = Female_data_5(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_America__ = [BMI_Female_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 6;
X_Temp = Female_data_6(:,1)/100; % Height (m)
Y_Temp = Female_data_6(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_America__ = [BMI_Female_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 7;
X_Temp = Female_data_7(:,1)/100; % Height (m)
Y_Temp = Female_data_7(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_America__ = [BMI_Female_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 8;
X_Temp = Female_data_8(:,1)/100; % Height (m)
Y_Temp = Female_data_8(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_America__ = [BMI_Female_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 9;
X_Temp = Female_data_9(:,1)/100; % Height (m)
Y_Temp = Female_data_9(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_America__ = [BMI_Female_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 10;
X_Temp = Female_data_10(:,1)/100; % Height (m)
Y_Temp = Female_data_10(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_America__ = [BMI_Female_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 11;
X_Temp = Female_data_11(:,1)/100; % Height (m)
Y_Temp = Female_data_11(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_America__ = [BMI_Female_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 12;
X_Temp = Female_data_12(:,1)/100; % Height (m)
Y_Temp = Female_data_12(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_America__ = [BMI_Female_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 13;
X_Temp = Female_data_13(:,1)/100; % Height (m)
Y_Temp = Female_data_13(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_America__ = [BMI_Female_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 14;
X_Temp = Female_data_14(:,1)/100; % Height (m)
Y_Temp = Female_data_14(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_America__ = [BMI_Female_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 15;
X_Temp = Female_data_15(:,1)/100; % Height (m)
Y_Temp = Female_data_15(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_America__ = [BMI_Female_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 16;
X_Temp = Female_data_16(:,1)/100; % Height (m)
Y_Temp = Female_data_16(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_America__ = [BMI_Female_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 17;
X_Temp = Female_data_17(:,1)/100; % Height (m)
Y_Temp = Female_data_17(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_America__ = [BMI_Female_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 18;
X_Temp = Female_data_18(:,1)/100; % Height (m)
Y_Temp = Female_data_18(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_America__ = [BMI_Female_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 19;
X_Temp = Female_data_19(:,1)/100; % Height (m)
Y_Temp = Female_data_19(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_America__ = [BMI_Female_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 20;
X_Temp = Female_data_20(:,1)/100; % Height (m)
Y_Temp = Female_data_20(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_America__ = [BMI_Female_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 21;
X_Temp = Female_data_21(:,1)/100; % Height (m)
Y_Temp = Female_data_21(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_America__ = [BMI_Female_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 22;
X_Temp = Female_data_22(:,1)/100; % Height (m)
Y_Temp = Female_data_22(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_America__ = [BMI_Female_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 23;
X_Temp = Female_data_23(:,1)/100; % Height (m)
Y_Temp = Female_data_23(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_America__ = [BMI_Female_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 24;
X_Temp = Female_data_24(:,1)/100; % Height (m)
Y_Temp = Female_data_24(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_America__ = [BMI_Female_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 25;
X_Temp = Female_data_25(:,1)/100; % Height (m)
Y_Temp = Female_data_25(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_America__ = [BMI_Female_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 26;
X_Temp = Female_data_26(:,1)/100; % Height (m)
Y_Temp = Female_data_26(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_America__ = [BMI_Female_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 27;
X_Temp = Female_data_27(:,1)/100; % Height (m)
Y_Temp = Female_data_27(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_America__ = [BMI_Female_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 28;
X_Temp = Female_data_28(:,1)/100; % Height (m)
Y_Temp = Female_data_28(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_America__ = [BMI_Female_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 29;
X_Temp = Female_data_29(:,1)/100; % Height (m)
Y_Temp = Female_data_29(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_America__ = [BMI_Female_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 30;
X_Temp = Female_data_30(:,1)/100; % Height (m)
Y_Temp = Female_data_30(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_America__ = [BMI_Female_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 31;
X_Temp = Female_data_31(:,1)/100; % Height (m)
Y_Temp = Female_data_31(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_America__ = [BMI_Female_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 32;
X_Temp = Female_data_32(:,1)/100; % Height (m)
Y_Temp = Female_data_32(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_America__ = [BMI_Female_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 33;
X_Temp = Female_data_33(:,1)/100; % Height (m)
Y_Temp = Female_data_33(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_America__ = [BMI_Female_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 34;
X_Temp = Female_data_34(:,1)/100; % Height (m)
Y_Temp = Female_data_34(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_America__ = [BMI_Female_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 35;
X_Temp = Female_data_35(:,1)/100; % Height (m)
Y_Temp = Female_data_35(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_America__ = [BMI_Female_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 36;
X_Temp = Female_data_36(:,1)/100; % Height (m)
Y_Temp = Female_data_36(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_America__ = [BMI_Female_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 37;
X_Temp = Female_data_37(:,1)/100; % Height (m)
Y_Temp = Female_data_37(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_America__ = [BMI_Female_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 38;
X_Temp = Female_data_38(:,1)/100; % Height (m)
Y_Temp = Female_data_38(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_America__ = [BMI_Female_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 39;
X_Temp = Female_data_39(:,1)/100; % Height (m)
Y_Temp = Female_data_39(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_America__ = [BMI_Female_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 40;
X_Temp = Female_data_40(:,1)/100; % Height (m)
Y_Temp = Female_data_40(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_America__ = [BMI_Female_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 41;
X_Temp = Female_data_41(:,1)/100; % Height (m)
Y_Temp = Female_data_41(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_America__ = [BMI_Female_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 42;
X_Temp = Female_data_42(:,1)/100; % Height (m)
Y_Temp = Female_data_42(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_America__ = [BMI_Female_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 43;
X_Temp = Female_data_43(:,1)/100; % Height (m)
Y_Temp = Female_data_43(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_America__ = [BMI_Female_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 44;
X_Temp = Female_data_44(:,1)/100; % Height (m)
Y_Temp = Female_data_44(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_America__ = [BMI_Female_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 45;
X_Temp = Female_data_45(:,1)/100; % Height (m)
Y_Temp = Female_data_45(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_America__ = [BMI_Female_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 46;
X_Temp = Female_data_46(:,1)/100; % Height (m)
Y_Temp = Female_data_46(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_America__ = [BMI_Female_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 47;
X_Temp = Female_data_47(:,1)/100; % Height (m)
Y_Temp = Female_data_47(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_America__ = [BMI_Female_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 48;
X_Temp = Female_data_48(:,1)/100; % Height (m)
Y_Temp = Female_data_48(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_America__ = [BMI_Female_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 49;
X_Temp = Female_data_49(:,1)/100; % Height (m)
Y_Temp = Female_data_49(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_America__ = [BMI_Female_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 50;
X_Temp = Female_data_50(:,1)/100; % Height (m)
Y_Temp = Female_data_50(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_America__ = [BMI_Female_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 51;
X_Temp = Female_data_51(:,1)/100; % Height (m)
Y_Temp = Female_data_51(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_America__ = [BMI_Female_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 52;
X_Temp = Female_data_52(:,1)/100; % Height (m)
Y_Temp = Female_data_52(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_America__ = [BMI_Female_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 53;
X_Temp = Female_data_53(:,1)/100; % Height (m)
Y_Temp = Female_data_53(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_America__ = [BMI_Female_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 54;
X_Temp = Female_data_54(:,1)/100; % Height (m)
Y_Temp = Female_data_54(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_America__ = [BMI_Female_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 55;
X_Temp = Female_data_55(:,1)/100; % Height (m)
Y_Temp = Female_data_55(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_America__ = [BMI_Female_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 56;
X_Temp = Female_data_56(:,1)/100; % Height (m)
Y_Temp = Female_data_56(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_America__ = [BMI_Female_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 57;
X_Temp = Female_data_57(:,1)/100; % Height (m)
Y_Temp = Female_data_57(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_America__ = [BMI_Female_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 58;
X_Temp = Female_data_58(:,1)/100; % Height (m)
Y_Temp = Female_data_58(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_America__ = [BMI_Female_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 59;
X_Temp = Female_data_59(:,1)/100; % Height (m)
Y_Temp = Female_data_59(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_America__ = [BMI_Female_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 60;
X_Temp = Female_data_60(:,1)/100; % Height (m)
Y_Temp = Female_data_60(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_America__ = [BMI_Female_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 61;
X_Temp = Female_data_61(:,1)/100; % Height (m)
Y_Temp = Female_data_61(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_America__ = [BMI_Female_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 62;
X_Temp = Female_data_62(:,1)/100; % Height (m)
Y_Temp = Female_data_62(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_America__ = [BMI_Female_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 63;
X_Temp = Female_data_63(:,1)/100; % Height (m)
Y_Temp = Female_data_63(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_America__ = [BMI_Female_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 64;
X_Temp = Female_data_64(:,1)/100; % Height (m)
Y_Temp = Female_data_64(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_America__ = [BMI_Female_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 65;
X_Temp = Female_data_65(:,1)/100; % Height (m)
Y_Temp = Female_data_65(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_America__ = [BMI_Female_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 66;
X_Temp = Female_data_66(:,1)/100; % Height (m)
Y_Temp = Female_data_66(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_America__ = [BMI_Female_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 67;
X_Temp = Female_data_67(:,1)/100; % Height (m)
Y_Temp = Female_data_67(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_America__ = [BMI_Female_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 68;
X_Temp = Female_data_68(:,1)/100; % Height (m)
Y_Temp = Female_data_68(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_America__ = [BMI_Female_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 69;
X_Temp = Female_data_69(:,1)/100; % Height (m)
Y_Temp = Female_data_69(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_America__ = [BMI_Female_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 70;
X_Temp = Female_data_70(:,1)/100; % Height (m)
Y_Temp = Female_data_70(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_America__ = [BMI_Female_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 71;
X_Temp = Female_data_71(:,1)/100; % Height (m)
Y_Temp = Female_data_71(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_America__ = [BMI_Female_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 72;
X_Temp = Female_data_72(:,1)/100; % Height (m)
Y_Temp = Female_data_72(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_America__ = [BMI_Female_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 73;
X_Temp = Female_data_73(:,1)/100; % Height (m)
Y_Temp = Female_data_73(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_America__ = [BMI_Female_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 74;
X_Temp = Female_data_74(:,1)/100; % Height (m)
Y_Temp = Female_data_74(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_America__ = [BMI_Female_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 75;
X_Temp = Female_data_75(:,1)/100; % Height (m)
Y_Temp = Female_data_75(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_America__ = [BMI_Female_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 76;
X_Temp = Female_data_76(:,1)/100; % Height (m)
Y_Temp = Female_data_76(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_America__ = [BMI_Female_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 77;
X_Temp = Female_data_77(:,1)/100; % Height (m)
Y_Temp = Female_data_77(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_America__ = [BMI_Female_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 78;
X_Temp = Female_data_78(:,1)/100; % Height (m)
Y_Temp = Female_data_78(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_America__ = [BMI_Female_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 79;
X_Temp = Female_data_79(:,1)/100; % Height (m)
Y_Temp = Female_data_79(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_America__ = [BMI_Female_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 80;
X_Temp = Female_data_80(:,1)/100; % Height (m)
Y_Temp = Female_data_80(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_America__ = [BMI_Female_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 81;
X_Temp = Female_data_81(:,1)/100; % Height (m)
Y_Temp = Female_data_81(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_America__ = [BMI_Female_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 82;
X_Temp = Female_data_82(:,1)/100; % Height (m)
Y_Temp = Female_data_82(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_America__ = [BMI_Female_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 83;
X_Temp = Female_data_83(:,1)/100; % Height (m)
Y_Temp = Female_data_83(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_America__ = [BMI_Female_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 84;
X_Temp = Female_data_84(:,1)/100; % Height (m)
Y_Temp = Female_data_84(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_America__ = [BMI_Female_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 85;
X_Temp = Female_data_85(:,1)/100; % Height (m)
Y_Temp = Female_data_85(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_America__ = [BMI_Female_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end

% For Male
Age = 2;
X_Temp = Male_data_2(:,1)/100; % Height (m)
Y_Temp = Male_data_2(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_America__ = [BMI_Male_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 3;
X_Temp = Male_data_3(:,1)/100; % Height (m)
Y_Temp = Male_data_3(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_America__ = [BMI_Male_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 4;
X_Temp = Male_data_4(:,1)/100; % Height (m)
Y_Temp = Male_data_4(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_America__ = [BMI_Male_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 5;
X_Temp = Male_data_5(:,1)/100; % Height (m)
Y_Temp = Male_data_5(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_America__ = [BMI_Male_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 6;
X_Temp = Male_data_6(:,1)/100; % Height (m)
Y_Temp = Male_data_6(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_America__ = [BMI_Male_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 7;
X_Temp = Male_data_7(:,1)/100; % Height (m)
Y_Temp = Male_data_7(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_America__ = [BMI_Male_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 8;
X_Temp = Male_data_8(:,1)/100; % Height (m)
Y_Temp = Male_data_8(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_America__ = [BMI_Male_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 9;
X_Temp = Male_data_9(:,1)/100; % Height (m)
Y_Temp = Male_data_9(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_America__ = [BMI_Male_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 10;
X_Temp = Male_data_10(:,1)/100; % Height (m)
Y_Temp = Male_data_10(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_America__ = [BMI_Male_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 11;
X_Temp = Male_data_11(:,1)/100; % Height (m)
Y_Temp = Male_data_11(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_America__ = [BMI_Male_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 12;
X_Temp = Male_data_12(:,1)/100; % Height (m)
Y_Temp = Male_data_12(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_America__ = [BMI_Male_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 13;
X_Temp = Male_data_13(:,1)/100; % Height (m)
Y_Temp = Male_data_13(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_America__ = [BMI_Male_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 14;
X_Temp = Male_data_14(:,1)/100; % Height (m)
Y_Temp = Male_data_14(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_America__ = [BMI_Male_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 15;
X_Temp = Male_data_15(:,1)/100; % Height (m)
Y_Temp = Male_data_15(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_America__ = [BMI_Male_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 16;
X_Temp = Male_data_16(:,1)/100; % Height (m)
Y_Temp = Male_data_16(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_America__ = [BMI_Male_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 17;
X_Temp = Male_data_17(:,1)/100; % Height (m)
Y_Temp = Male_data_17(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_America__ = [BMI_Male_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 18;
X_Temp = Male_data_18(:,1)/100; % Height (m)
Y_Temp = Male_data_18(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_America__ = [BMI_Male_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 19;
X_Temp = Male_data_19(:,1)/100; % Height (m)
Y_Temp = Male_data_19(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_America__ = [BMI_Male_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 20;
X_Temp = Male_data_20(:,1)/100; % Height (m)
Y_Temp = Male_data_20(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_America__ = [BMI_Male_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 21;
X_Temp = Male_data_21(:,1)/100; % Height (m)
Y_Temp = Male_data_21(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_America__ = [BMI_Male_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 22;
X_Temp = Male_data_22(:,1)/100; % Height (m)
Y_Temp = Male_data_22(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_America__ = [BMI_Male_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 23;
X_Temp = Male_data_23(:,1)/100; % Height (m)
Y_Temp = Male_data_23(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_America__ = [BMI_Male_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 24;
X_Temp = Male_data_24(:,1)/100; % Height (m)
Y_Temp = Male_data_24(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_America__ = [BMI_Male_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 25;
X_Temp = Male_data_25(:,1)/100; % Height (m)
Y_Temp = Male_data_25(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_America__ = [BMI_Male_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 26;
X_Temp = Male_data_26(:,1)/100; % Height (m)
Y_Temp = Male_data_26(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_America__ = [BMI_Male_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 27;
X_Temp = Male_data_27(:,1)/100; % Height (m)
Y_Temp = Male_data_27(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_America__ = [BMI_Male_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 28;
X_Temp = Male_data_28(:,1)/100; % Height (m)
Y_Temp = Male_data_28(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_America__ = [BMI_Male_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 29;
X_Temp = Male_data_29(:,1)/100; % Height (m)
Y_Temp = Male_data_29(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_America__ = [BMI_Male_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 30;
X_Temp = Male_data_30(:,1)/100; % Height (m)
Y_Temp = Male_data_30(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_America__ = [BMI_Male_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 31;
X_Temp = Male_data_31(:,1)/100; % Height (m)
Y_Temp = Male_data_31(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_America__ = [BMI_Male_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 32;
X_Temp = Male_data_32(:,1)/100; % Height (m)
Y_Temp = Male_data_32(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_America__ = [BMI_Male_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 33;
X_Temp = Male_data_33(:,1)/100; % Height (m)
Y_Temp = Male_data_33(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_America__ = [BMI_Male_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 34;
X_Temp = Male_data_34(:,1)/100; % Height (m)
Y_Temp = Male_data_34(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_America__ = [BMI_Male_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 35;
X_Temp = Male_data_35(:,1)/100; % Height (m)
Y_Temp = Male_data_35(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_America__ = [BMI_Male_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 36;
X_Temp = Male_data_36(:,1)/100; % Height (m)
Y_Temp = Male_data_36(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_America__ = [BMI_Male_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 37;
X_Temp = Male_data_37(:,1)/100; % Height (m)
Y_Temp = Male_data_37(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_America__ = [BMI_Male_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 38;
X_Temp = Male_data_38(:,1)/100; % Height (m)
Y_Temp = Male_data_38(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_America__ = [BMI_Male_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 39;
X_Temp = Male_data_39(:,1)/100; % Height (m)
Y_Temp = Male_data_39(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_America__ = [BMI_Male_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 40;
X_Temp = Male_data_40(:,1)/100; % Height (m)
Y_Temp = Male_data_40(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_America__ = [BMI_Male_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 41;
X_Temp = Male_data_41(:,1)/100; % Height (m)
Y_Temp = Male_data_41(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_America__ = [BMI_Male_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 42;
X_Temp = Male_data_42(:,1)/100; % Height (m)
Y_Temp = Male_data_42(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_America__ = [BMI_Male_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 43;
X_Temp = Male_data_43(:,1)/100; % Height (m)
Y_Temp = Male_data_43(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_America__ = [BMI_Male_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 44;
X_Temp = Male_data_44(:,1)/100; % Height (m)
Y_Temp = Male_data_44(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_America__ = [BMI_Male_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 45;
X_Temp = Male_data_45(:,1)/100; % Height (m)
Y_Temp = Male_data_45(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_America__ = [BMI_Male_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 46;
X_Temp = Male_data_46(:,1)/100; % Height (m)
Y_Temp = Male_data_46(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_America__ = [BMI_Male_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 47;
X_Temp = Male_data_47(:,1)/100; % Height (m)
Y_Temp = Male_data_47(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_America__ = [BMI_Male_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 48;
X_Temp = Male_data_48(:,1)/100; % Height (m)
Y_Temp = Male_data_48(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_America__ = [BMI_Male_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 49;
X_Temp = Male_data_49(:,1)/100; % Height (m)
Y_Temp = Male_data_49(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_America__ = [BMI_Male_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 50;
X_Temp = Male_data_50(:,1)/100; % Height (m)
Y_Temp = Male_data_50(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_America__ = [BMI_Male_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 51;
X_Temp = Male_data_51(:,1)/100; % Height (m)
Y_Temp = Male_data_51(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_America__ = [BMI_Male_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 52;
X_Temp = Male_data_52(:,1)/100; % Height (m)
Y_Temp = Male_data_52(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_America__ = [BMI_Male_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 53;
X_Temp = Male_data_53(:,1)/100; % Height (m)
Y_Temp = Male_data_53(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_America__ = [BMI_Male_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 54;
X_Temp = Male_data_54(:,1)/100; % Height (m)
Y_Temp = Male_data_54(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_America__ = [BMI_Male_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 55;
X_Temp = Male_data_55(:,1)/100; % Height (m)
Y_Temp = Male_data_55(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_America__ = [BMI_Male_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 56;
X_Temp = Male_data_56(:,1)/100; % Height (m)
Y_Temp = Male_data_56(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_America__ = [BMI_Male_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 57;
X_Temp = Male_data_57(:,1)/100; % Height (m)
Y_Temp = Male_data_57(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_America__ = [BMI_Male_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 58;
X_Temp = Male_data_58(:,1)/100; % Height (m)
Y_Temp = Male_data_58(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_America__ = [BMI_Male_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 59;
X_Temp = Male_data_59(:,1)/100; % Height (m)
Y_Temp = Male_data_59(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_America__ = [BMI_Male_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 60;
X_Temp = Male_data_60(:,1)/100; % Height (m)
Y_Temp = Male_data_60(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_America__ = [BMI_Male_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 61;
X_Temp = Male_data_61(:,1)/100; % Height (m)
Y_Temp = Male_data_61(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_America__ = [BMI_Male_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 62;
X_Temp = Male_data_62(:,1)/100; % Height (m)
Y_Temp = Male_data_62(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_America__ = [BMI_Male_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 63;
X_Temp = Male_data_63(:,1)/100; % Height (m)
Y_Temp = Male_data_63(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_America__ = [BMI_Male_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 64;
X_Temp = Male_data_64(:,1)/100; % Height (m)
Y_Temp = Male_data_64(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_America__ = [BMI_Male_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 65;
X_Temp = Male_data_65(:,1)/100; % Height (m)
Y_Temp = Male_data_65(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_America__ = [BMI_Male_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 66;
X_Temp = Male_data_66(:,1)/100; % Height (m)
Y_Temp = Male_data_66(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_America__ = [BMI_Male_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 67;
X_Temp = Male_data_67(:,1)/100; % Height (m)
Y_Temp = Male_data_67(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_America__ = [BMI_Male_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 68;
X_Temp = Male_data_68(:,1)/100; % Height (m)
Y_Temp = Male_data_68(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_America__ = [BMI_Male_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 69;
X_Temp = Male_data_69(:,1)/100; % Height (m)
Y_Temp = Male_data_69(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_America__ = [BMI_Male_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 70;
X_Temp = Male_data_70(:,1)/100; % Height (m)
Y_Temp = Male_data_70(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_America__ = [BMI_Male_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 71;
X_Temp = Male_data_71(:,1)/100; % Height (m)
Y_Temp = Male_data_71(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_America__ = [BMI_Male_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 72;
X_Temp = Male_data_72(:,1)/100; % Height (m)
Y_Temp = Male_data_72(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_America__ = [BMI_Male_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 73;
X_Temp = Male_data_73(:,1)/100; % Height (m)
Y_Temp = Male_data_73(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_America__ = [BMI_Male_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 74;
X_Temp = Male_data_74(:,1)/100; % Height (m)
Y_Temp = Male_data_74(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_America__ = [BMI_Male_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 75;
X_Temp = Male_data_75(:,1)/100; % Height (m)
Y_Temp = Male_data_75(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_America__ = [BMI_Male_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 76;
X_Temp = Male_data_76(:,1)/100; % Height (m)
Y_Temp = Male_data_76(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_America__ = [BMI_Male_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 77;
X_Temp = Male_data_77(:,1)/100; % Height (m)
Y_Temp = Male_data_77(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_America__ = [BMI_Male_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 78;
X_Temp = Male_data_78(:,1)/100; % Height (m)
Y_Temp = Male_data_78(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_America__ = [BMI_Male_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 79;
X_Temp = Male_data_79(:,1)/100; % Height (m)
Y_Temp = Male_data_79(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_America__ = [BMI_Male_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 80;
X_Temp = Male_data_80(:,1)/100; % Height (m)
Y_Temp = Male_data_80(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_America__ = [BMI_Male_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 81;
X_Temp = Male_data_81(:,1)/100; % Height (m)
Y_Temp = Male_data_81(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_America__ = [BMI_Male_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 82;
X_Temp = Male_data_82(:,1)/100; % Height (m)
Y_Temp = Male_data_82(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_America__ = [BMI_Male_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 83;
X_Temp = Male_data_83(:,1)/100; % Height (m)
Y_Temp = Male_data_83(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_America__ = [BMI_Male_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 84;
X_Temp = Male_data_84(:,1)/100; % Height (m)
Y_Temp = Male_data_84(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_America__ = [BMI_Male_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 85;
X_Temp = Male_data_85(:,1)/100; % Height (m)
Y_Temp = Male_data_85(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_America__ = [BMI_Male_America__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end

%% We show the results
nbins = 100;
figure;
HH_Female = histogram(BMI_Female_America__,nbins);
figure;
nbins = 100;
HH_Male = histogram(BMI_Male_America__,nbins);
FF = figure;
% For Female
subplot(1,2,1);
hold on;
title('Female')
xlabel('BMI');
ylabel('Count')
xlim([10 50]);
%ylim([-5 25]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

xx = HH_Female.BinEdges;
yy = HH_Female.Values;

[M N] = size(HH_Female.BinEdges);
for i = 1:N-1
    X_Fill = [xx(i) xx(i+1) xx(i+1) xx(i)];
    Y_Fill = [0 0 yy(i) yy(i)];
    H = fill(X_Fill,Y_Fill,My_Colors_4_1(1,:));
    set(H,'edgealpha',1,'facealpha',My_Alpha);
end
x_data = [];
y_data = HH_Female.Values;
for i = 1:N-1
    x_data = [x_data (xx(i)+xx(i+1))/2];
end
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = min(xx):0.01:max(xx);
YY = fitobject(XX);
H1 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',My_Colors_4_1(1,:));

% text - 
My_Percentile = [5 10 25 50 75 90 95]; % quantile distribution
My_P = prctile(BMI_Female_America__,My_Percentile);
Text = ['95th=' num2str(My_P(7)) newline() ...
    '90th=' num2str(My_P(6)) newline() ...
    '75th=' num2str(My_P(5)) newline() ...
    '50th=' num2str(My_P(4)) newline() ...
    '25th=' num2str(My_P(3)) newline() ...
    '10th=' num2str(My_P(2)) newline() ...
    '5th=' num2str(My_P(1)) newline()];
Text = text(45,0.8*max(yy),Text,'FontSize',12,'FontName',My_FontName,'HorizontalAlignment','right');

% For Male
subplot(1,2,2);
hold on;
title('Male')
xlabel('BMI');
ylabel('Count')
xlim([10 50]);
%ylim([-5 25]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

xx = HH_Male.BinEdges;
yy = HH_Male.Values;

[M N] = size(HH_Male.BinEdges);
for i = 1:N-1
    X_Fill = [xx(i) xx(i+1) xx(i+1) xx(i)];
    Y_Fill = [0 0 yy(i) yy(i)];
    H = fill(X_Fill,Y_Fill,My_Colors_4_1(2,:));
    set(H,'edgealpha',1,'facealpha',My_Alpha);
end
x_data = [];
y_data = HH_Male.Values;
for i = 1:N-1
    x_data = [x_data (xx(i)+xx(i+1))/2];
end
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = min(xx):0.01:max(xx);
YY = fitobject(XX);
H1 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',My_Colors_4_1(2,:));

% text - 
My_Percentile = [5 10 25 50 75 90 95]; % quantile distribution
My_P = prctile(BMI_Male_America__,My_Percentile);
Text = ['95th=' num2str(My_P(7)) newline() ...
    '90th=' num2str(My_P(6)) newline() ...
    '75th=' num2str(My_P(5)) newline() ...
    '50th=' num2str(My_P(4)) newline() ...
    '25th=' num2str(My_P(3)) newline() ...
    '10th=' num2str(My_P(2)) newline() ...
    '5th=' num2str(My_P(1)) newline()];
Text = text(45,0.8*max(yy),Text,'FontSize',12,'FontName',My_FontName,'HorizontalAlignment','right');

%
toc;

%% We save the data
save BMI_America__.mat BMI_Female_America__ BMI_Male_America__
