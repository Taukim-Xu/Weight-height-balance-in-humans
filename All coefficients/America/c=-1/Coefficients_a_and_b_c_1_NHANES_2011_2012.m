%% In this code, we calculate the coefficients of a and b in 1=a/Weight+b*Height^c, 
% when c = -1 for NHANES 2011-2012
%
% NHANES 2011-2012.xlsx
%
%%
c = -1;
%% Parameter information for drawing
My_LineWidth = 1.5;
My_MarkerSize = 7;
My_FontName = 'Times New Roman';
My_fontSize = 12;
Edgealpha = 0;
Alpha = 1;
%% Colors
Color_1 = [239 118 122]/255;
Color_2 = [69 105 144]/255;
Color_3 = [72 192 170]/255;
Color_4 = [0 191 196]/255;
%% Loading the data
% Data source: https://wwwn.cdc.gov/nchs/nhanes/default.aspx
Female_data = xlsread('NHANES 2011-2012.xlsx','Female');
Male_data = xlsread('NHANES 2011-2012.xlsx','Male');
% Stratified by age and gender
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
Female_data_80 = []; % >= 80

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
Male_data_80 = []; % >= 80

% For Female
[M N] = size(Female_data); % Height (cm); Weight (Kg)
for i=1:M
    if Female_data(i,3) == 2
        Female_data_2 = [Female_data_2;Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 3
        Female_data_3 = [Female_data_3;Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 4
        Female_data_4 = [Female_data_4;Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 5
        Female_data_5 = [Female_data_5;Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 6
        Female_data_6 = [Female_data_6;Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 7
        Female_data_7 = [Female_data_7;Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 8
        Female_data_8 = [Female_data_8;Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 9
        Female_data_9 = [Female_data_9;Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 10
        Female_data_10 = [Female_data_10;Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 11
        Female_data_11 = [Female_data_11;Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 12
        Female_data_12 = [Female_data_12;Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 13
        Female_data_13 = [Female_data_13;Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 14
        Female_data_14 = [Female_data_14;Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 15
        Female_data_15 = [Female_data_15;Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 16
        Female_data_16 = [Female_data_16;Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 17
        Female_data_17 = [Female_data_17;Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 18
        Female_data_18 = [Female_data_18;Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 19
        Female_data_19 = [Female_data_19;Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 20
        Female_data_20 = [Female_data_20;Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 21
        Female_data_21 = [Female_data_21;Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 22
        Female_data_22 = [Female_data_22;Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 23
        Female_data_23 = [Female_data_23;Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 24
        Female_data_24 = [Female_data_24;Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 25
        Female_data_25 = [Female_data_25;Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 26
        Female_data_26 = [Female_data_26;Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 27
        Female_data_27 = [Female_data_27;Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 28
        Female_data_28 = [Female_data_28;Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 29
        Female_data_29 = [Female_data_29;Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 30
        Female_data_30 = [Female_data_30;Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 31
        Female_data_31 = [Female_data_31;Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 32
        Female_data_32 = [Female_data_32;Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 33
        Female_data_33 = [Female_data_33;Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 34
        Female_data_34 = [Female_data_34;Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 35
        Female_data_35 = [Female_data_35;Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 36
        Female_data_36 = [Female_data_36;Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 37
        Female_data_37 = [Female_data_37;Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 38
        Female_data_38 = [Female_data_38;Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 39
        Female_data_39 = [Female_data_39;Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 40
        Female_data_40 = [Female_data_40;Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 41
        Female_data_41 = [Female_data_41;Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 42
        Female_data_42 = [Female_data_42;Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 43
        Female_data_43 = [Female_data_43;Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 44
        Female_data_44 = [Female_data_44;Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 45
        Female_data_45 = [Female_data_45;Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 46
        Female_data_46 = [Female_data_46;Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 47
        Female_data_47 = [Female_data_47;Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 48
        Female_data_48 = [Female_data_48;Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 49
        Female_data_49 = [Female_data_49;Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 50
        Female_data_50 = [Female_data_50;Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 51
        Female_data_51 = [Female_data_51;Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 52
        Female_data_52 = [Female_data_52;Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 53
        Female_data_53 = [Female_data_53;Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 54
        Female_data_54 = [Female_data_54;Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 55
        Female_data_55 = [Female_data_55;Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 56
        Female_data_56 = [Female_data_56;Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 57
        Female_data_57 = [Female_data_57;Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 58
        Female_data_58 = [Female_data_58;Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 59
        Female_data_59 = [Female_data_59;Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 60
        Female_data_60 = [Female_data_60;Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 61
        Female_data_61 = [Female_data_61;Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 62
        Female_data_62 = [Female_data_62;Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 63
        Female_data_63 = [Female_data_63;Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 64
        Female_data_64 = [Female_data_64;Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 65
        Female_data_65 = [Female_data_65;Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 66
        Female_data_66 = [Female_data_66;Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 67
        Female_data_67 = [Female_data_67;Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 68
        Female_data_68 = [Female_data_68;Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 69
        Female_data_69 = [Female_data_69;Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 70
        Female_data_70 = [Female_data_70;Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 71
        Female_data_71 = [Female_data_71;Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 72
        Female_data_72 = [Female_data_72;Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 73
        Female_data_73 = [Female_data_73;Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 74
        Female_data_74 = [Female_data_74;Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 75
        Female_data_75 = [Female_data_75;Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 76
        Female_data_76 = [Female_data_76;Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 77
        Female_data_77 = [Female_data_77;Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 78
        Female_data_78 = [Female_data_78;Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) == 79
        Female_data_79 = [Female_data_79;Female_data(i,4) Female_data(i,5)];
    end
    if Female_data(i,3) >= 80
        Female_data_80 = [Female_data_80;Female_data(i,4) Female_data(i,5)];
    end
end

% For Male
[M N] = size(Male_data); % Height (cm); Weight (Kg)
for i=1:M
    if Male_data(i,3) == 2
        Male_data_2 = [Male_data_2;Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 3
        Male_data_3 = [Male_data_3;Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 4
        Male_data_4 = [Male_data_4;Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 5
        Male_data_5 = [Male_data_5;Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 6
        Male_data_6 = [Male_data_6;Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 7
        Male_data_7 = [Male_data_7;Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 8
        Male_data_8 = [Male_data_8;Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 9
        Male_data_9 = [Male_data_9;Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 10
        Male_data_10 = [Male_data_10;Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 11
        Male_data_11 = [Male_data_11;Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 12
        Male_data_12 = [Male_data_12;Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 13
        Male_data_13 = [Male_data_13;Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 14
        Male_data_14 = [Male_data_14;Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 15
        Male_data_15 = [Male_data_15;Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 16
        Male_data_16 = [Male_data_16;Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 17
        Male_data_17 = [Male_data_17;Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 18
        Male_data_18 = [Male_data_18;Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 19
        Male_data_19 = [Male_data_19;Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 20
        Male_data_20 = [Male_data_20;Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 21
        Male_data_21 = [Male_data_21;Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 22
        Male_data_22 = [Male_data_22;Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 23
        Male_data_23 = [Male_data_23;Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 24
        Male_data_24 = [Male_data_24;Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 25
        Male_data_25 = [Male_data_25;Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 26
        Male_data_26 = [Male_data_26;Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 27
        Male_data_27 = [Male_data_27;Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 28
        Male_data_28 = [Male_data_28;Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 29
        Male_data_29 = [Male_data_29;Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 30
        Male_data_30 = [Male_data_30;Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 31
        Male_data_31 = [Male_data_31;Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 32
        Male_data_32 = [Male_data_32;Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 33
        Male_data_33 = [Male_data_33;Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 34
        Male_data_34 = [Male_data_34;Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 35
        Male_data_35 = [Male_data_35;Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 36
        Male_data_36 = [Male_data_36;Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 37
        Male_data_37 = [Male_data_37;Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 38
        Male_data_38 = [Male_data_38;Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 39
        Male_data_39 = [Male_data_39;Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 40
        Male_data_40 = [Male_data_40;Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 41
        Male_data_41 = [Male_data_41;Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 42
        Male_data_42 = [Male_data_42;Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 43
        Male_data_43 = [Male_data_43;Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 44
        Male_data_44 = [Male_data_44;Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 45
        Male_data_45 = [Male_data_45;Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 46
        Male_data_46 = [Male_data_46;Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 47
        Male_data_47 = [Male_data_47;Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 48
        Male_data_48 = [Male_data_48;Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 49
        Male_data_49 = [Male_data_49;Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 50
        Male_data_50 = [Male_data_50;Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 51
        Male_data_51 = [Male_data_51;Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 52
        Male_data_52 = [Male_data_52;Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 53
        Male_data_53 = [Male_data_53;Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 54
        Male_data_54 = [Male_data_54;Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 55
        Male_data_55 = [Male_data_55;Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 56
        Male_data_56 = [Male_data_56;Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 57
        Male_data_57 = [Male_data_57;Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 58
        Male_data_58 = [Male_data_58;Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 59
        Male_data_59 = [Male_data_59;Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 60
        Male_data_60 = [Male_data_60;Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 61
        Male_data_61 = [Male_data_61;Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 62
        Male_data_62 = [Male_data_62;Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 63
        Male_data_63 = [Male_data_63;Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 64
        Male_data_64 = [Male_data_64;Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 65
        Male_data_65 = [Male_data_65;Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 66
        Male_data_66 = [Male_data_66;Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 67
        Male_data_67 = [Male_data_67;Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 68
        Male_data_68 = [Male_data_68;Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 69
        Male_data_69 = [Male_data_69;Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 70
        Male_data_70 = [Male_data_70;Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 71
        Male_data_71 = [Male_data_71;Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 72
        Male_data_72 = [Male_data_72;Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 73
        Male_data_73 = [Male_data_73;Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 74
        Male_data_74 = [Male_data_74;Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 75
        Male_data_75 = [Male_data_75;Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 76
        Male_data_76 = [Male_data_76;Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 77
        Male_data_77 = [Male_data_77;Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 78
        Male_data_78 = [Male_data_78;Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) == 79
        Male_data_79 = [Male_data_79;Male_data(i,4) Male_data(i,5)];
    end
    if Male_data(i,3) >= 80
        Male_data_80 = [Male_data_80;Male_data(i,4) Male_data(i,5)];
    end
end

% We calculate the coefficients of a and b in 1=a/Weight+b*Height for this
% dataset
Coefficient_a_Female_1_NHANES_2011_2012 = [];
Coefficient_b_Female_1_NHANES_2011_2012 = [];
Coefficient_a_Male_1_NHANES_2011_2012 = [];
Coefficient_b_Male_1_NHANES_2011_2012 = [];

% For Female
% Age 2
X_data = (Female_data_2(:,1)/100).^c; % Height (m)
Y_data = Female_data_2(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_NHANES_2011_2012 = [Coefficient_a_Female_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Female_1_NHANES_2011_2012 = [Coefficient_b_Female_1_NHANES_2011_2012 PP(1)];
% Age 3
X_data = (Female_data_3(:,1)/100).^c; % Height (m)
Y_data = Female_data_3(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_NHANES_2011_2012 = [Coefficient_a_Female_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Female_1_NHANES_2011_2012 = [Coefficient_b_Female_1_NHANES_2011_2012 PP(1)];
% Age 4
X_data = (Female_data_4(:,1)/100).^c; % Height (m)
Y_data = Female_data_4(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_NHANES_2011_2012 = [Coefficient_a_Female_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Female_1_NHANES_2011_2012 = [Coefficient_b_Female_1_NHANES_2011_2012 PP(1)];
% Age 5
X_data = (Female_data_5(:,1)/100).^c; % Height (m)
Y_data = Female_data_5(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_NHANES_2011_2012 = [Coefficient_a_Female_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Female_1_NHANES_2011_2012 = [Coefficient_b_Female_1_NHANES_2011_2012 PP(1)];
% Age 6
X_data = (Female_data_6(:,1)/100).^c; % Height (m)
Y_data = Female_data_6(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_NHANES_2011_2012 = [Coefficient_a_Female_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Female_1_NHANES_2011_2012 = [Coefficient_b_Female_1_NHANES_2011_2012 PP(1)];
% Age 7
X_data = (Female_data_7(:,1)/100).^c; % Height (m)
Y_data = Female_data_7(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_NHANES_2011_2012 = [Coefficient_a_Female_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Female_1_NHANES_2011_2012 = [Coefficient_b_Female_1_NHANES_2011_2012 PP(1)];
% Age 8
X_data = (Female_data_8(:,1)/100).^c; % Height (m)
Y_data = Female_data_8(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_NHANES_2011_2012 = [Coefficient_a_Female_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Female_1_NHANES_2011_2012 = [Coefficient_b_Female_1_NHANES_2011_2012 PP(1)];
% Age 9
X_data = (Female_data_9(:,1)/100).^c; % Height (m)
Y_data = Female_data_9(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_NHANES_2011_2012 = [Coefficient_a_Female_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Female_1_NHANES_2011_2012 = [Coefficient_b_Female_1_NHANES_2011_2012 PP(1)];
% Age 10
X_data = (Female_data_10(:,1)/100).^c; % Height (m)
Y_data = Female_data_10(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_NHANES_2011_2012 = [Coefficient_a_Female_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Female_1_NHANES_2011_2012 = [Coefficient_b_Female_1_NHANES_2011_2012 PP(1)];
% Age 11
X_data = (Female_data_11(:,1)/100).^c; % Height (m)
Y_data = Female_data_11(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_NHANES_2011_2012 = [Coefficient_a_Female_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Female_1_NHANES_2011_2012 = [Coefficient_b_Female_1_NHANES_2011_2012 PP(1)];
% Age 12
X_data = (Female_data_12(:,1)/100).^c; % Height (m)
Y_data = Female_data_12(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_NHANES_2011_2012 = [Coefficient_a_Female_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Female_1_NHANES_2011_2012 = [Coefficient_b_Female_1_NHANES_2011_2012 PP(1)];
% Age 13
X_data = (Female_data_13(:,1)/100).^c; % Height (m)
Y_data = Female_data_13(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_NHANES_2011_2012 = [Coefficient_a_Female_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Female_1_NHANES_2011_2012 = [Coefficient_b_Female_1_NHANES_2011_2012 PP(1)];
% Age 14
X_data = (Female_data_14(:,1)/100).^c; % Height (m)
Y_data = Female_data_14(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_NHANES_2011_2012 = [Coefficient_a_Female_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Female_1_NHANES_2011_2012 = [Coefficient_b_Female_1_NHANES_2011_2012 PP(1)];
% Age 15
X_data = (Female_data_15(:,1)/100).^c; % Height (m)
Y_data = Female_data_15(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_NHANES_2011_2012 = [Coefficient_a_Female_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Female_1_NHANES_2011_2012 = [Coefficient_b_Female_1_NHANES_2011_2012 PP(1)];
% Age 16
X_data = (Female_data_16(:,1)/100).^c; % Height (m)
Y_data = Female_data_16(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_NHANES_2011_2012 = [Coefficient_a_Female_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Female_1_NHANES_2011_2012 = [Coefficient_b_Female_1_NHANES_2011_2012 PP(1)];
% Age 17
X_data = (Female_data_17(:,1)/100).^c; % Height (m)
Y_data = Female_data_17(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_NHANES_2011_2012 = [Coefficient_a_Female_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Female_1_NHANES_2011_2012 = [Coefficient_b_Female_1_NHANES_2011_2012 PP(1)];
% Age 18
X_data = (Female_data_18(:,1)/100).^c; % Height (m)
Y_data = Female_data_18(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_NHANES_2011_2012 = [Coefficient_a_Female_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Female_1_NHANES_2011_2012 = [Coefficient_b_Female_1_NHANES_2011_2012 PP(1)];
% Age 19
X_data = (Female_data_19(:,1)/100).^c; % Height (m)
Y_data = Female_data_19(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_NHANES_2011_2012 = [Coefficient_a_Female_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Female_1_NHANES_2011_2012 = [Coefficient_b_Female_1_NHANES_2011_2012 PP(1)];
% Age 20
X_data = (Female_data_20(:,1)/100).^c; % Height (m)
Y_data = Female_data_20(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_NHANES_2011_2012 = [Coefficient_a_Female_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Female_1_NHANES_2011_2012 = [Coefficient_b_Female_1_NHANES_2011_2012 PP(1)];
% Age 21
X_data = (Female_data_21(:,1)/100).^c; % Height (m)
Y_data = Female_data_21(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_NHANES_2011_2012 = [Coefficient_a_Female_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Female_1_NHANES_2011_2012 = [Coefficient_b_Female_1_NHANES_2011_2012 PP(1)];
% Age 22
X_data = (Female_data_22(:,1)/100).^c; % Height (m)
Y_data = Female_data_22(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_NHANES_2011_2012 = [Coefficient_a_Female_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Female_1_NHANES_2011_2012 = [Coefficient_b_Female_1_NHANES_2011_2012 PP(1)];
% Age 23
X_data = (Female_data_23(:,1)/100).^c; % Height (m)
Y_data = Female_data_23(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_NHANES_2011_2012 = [Coefficient_a_Female_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Female_1_NHANES_2011_2012 = [Coefficient_b_Female_1_NHANES_2011_2012 PP(1)];
% Age 24
X_data = (Female_data_24(:,1)/100).^c; % Height (m)
Y_data = Female_data_24(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_NHANES_2011_2012 = [Coefficient_a_Female_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Female_1_NHANES_2011_2012 = [Coefficient_b_Female_1_NHANES_2011_2012 PP(1)];
% Age 25
X_data = (Female_data_25(:,1)/100).^c; % Height (m)
Y_data = Female_data_25(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_NHANES_2011_2012 = [Coefficient_a_Female_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Female_1_NHANES_2011_2012 = [Coefficient_b_Female_1_NHANES_2011_2012 PP(1)];
% Age 26
X_data = (Female_data_26(:,1)/100).^c; % Height (m)
Y_data = Female_data_26(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_NHANES_2011_2012 = [Coefficient_a_Female_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Female_1_NHANES_2011_2012 = [Coefficient_b_Female_1_NHANES_2011_2012 PP(1)];
% Age 27
X_data = (Female_data_27(:,1)/100).^c; % Height (m)
Y_data = Female_data_27(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_NHANES_2011_2012 = [Coefficient_a_Female_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Female_1_NHANES_2011_2012 = [Coefficient_b_Female_1_NHANES_2011_2012 PP(1)];
% Age 28
X_data = (Female_data_28(:,1)/100).^c; % Height (m)
Y_data = Female_data_28(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_NHANES_2011_2012 = [Coefficient_a_Female_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Female_1_NHANES_2011_2012 = [Coefficient_b_Female_1_NHANES_2011_2012 PP(1)];
% Age 29
X_data = (Female_data_29(:,1)/100).^c; % Height (m)
Y_data = Female_data_29(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_NHANES_2011_2012 = [Coefficient_a_Female_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Female_1_NHANES_2011_2012 = [Coefficient_b_Female_1_NHANES_2011_2012 PP(1)];
% Age 30
X_data = (Female_data_30(:,1)/100).^c; % Height (m)
Y_data = Female_data_30(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_NHANES_2011_2012 = [Coefficient_a_Female_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Female_1_NHANES_2011_2012 = [Coefficient_b_Female_1_NHANES_2011_2012 PP(1)];
% Age 31
X_data = (Female_data_31(:,1)/100).^c; % Height (m)
Y_data = Female_data_31(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_NHANES_2011_2012 = [Coefficient_a_Female_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Female_1_NHANES_2011_2012 = [Coefficient_b_Female_1_NHANES_2011_2012 PP(1)];
% Age 32
X_data = (Female_data_32(:,1)/100).^c; % Height (m)
Y_data = Female_data_32(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_NHANES_2011_2012 = [Coefficient_a_Female_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Female_1_NHANES_2011_2012 = [Coefficient_b_Female_1_NHANES_2011_2012 PP(1)];
% Age 33
X_data = (Female_data_33(:,1)/100).^c; % Height (m)
Y_data = Female_data_33(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_NHANES_2011_2012 = [Coefficient_a_Female_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Female_1_NHANES_2011_2012 = [Coefficient_b_Female_1_NHANES_2011_2012 PP(1)];
% Age 34
X_data = (Female_data_34(:,1)/100).^c; % Height (m)
Y_data = Female_data_34(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_NHANES_2011_2012 = [Coefficient_a_Female_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Female_1_NHANES_2011_2012 = [Coefficient_b_Female_1_NHANES_2011_2012 PP(1)];
% Age 35
X_data = (Female_data_35(:,1)/100).^c; % Height (m)
Y_data = Female_data_35(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_NHANES_2011_2012 = [Coefficient_a_Female_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Female_1_NHANES_2011_2012 = [Coefficient_b_Female_1_NHANES_2011_2012 PP(1)];
% Age 36
X_data = (Female_data_36(:,1)/100).^c; % Height (m)
Y_data = Female_data_36(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_NHANES_2011_2012 = [Coefficient_a_Female_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Female_1_NHANES_2011_2012 = [Coefficient_b_Female_1_NHANES_2011_2012 PP(1)];
% Age 37
X_data = (Female_data_37(:,1)/100).^c; % Height (m)
Y_data = Female_data_37(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_NHANES_2011_2012 = [Coefficient_a_Female_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Female_1_NHANES_2011_2012 = [Coefficient_b_Female_1_NHANES_2011_2012 PP(1)];
% Age 38
X_data = (Female_data_38(:,1)/100).^c; % Height (m)
Y_data = Female_data_38(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_NHANES_2011_2012 = [Coefficient_a_Female_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Female_1_NHANES_2011_2012 = [Coefficient_b_Female_1_NHANES_2011_2012 PP(1)];
% Age 39
X_data = (Female_data_39(:,1)/100).^c; % Height (m)
Y_data = Female_data_39(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_NHANES_2011_2012 = [Coefficient_a_Female_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Female_1_NHANES_2011_2012 = [Coefficient_b_Female_1_NHANES_2011_2012 PP(1)];
% Age 40
X_data = (Female_data_40(:,1)/100).^c; % Height (m)
Y_data = Female_data_40(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_NHANES_2011_2012 = [Coefficient_a_Female_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Female_1_NHANES_2011_2012 = [Coefficient_b_Female_1_NHANES_2011_2012 PP(1)];
% Age 41
X_data = (Female_data_41(:,1)/100).^c; % Height (m)
Y_data = Female_data_41(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_NHANES_2011_2012 = [Coefficient_a_Female_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Female_1_NHANES_2011_2012 = [Coefficient_b_Female_1_NHANES_2011_2012 PP(1)];
% Age 42
X_data = (Female_data_42(:,1)/100).^c; % Height (m)
Y_data = Female_data_42(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_NHANES_2011_2012 = [Coefficient_a_Female_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Female_1_NHANES_2011_2012 = [Coefficient_b_Female_1_NHANES_2011_2012 PP(1)];
% Age 43
X_data = (Female_data_43(:,1)/100).^c; % Height (m)
Y_data = Female_data_43(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_NHANES_2011_2012 = [Coefficient_a_Female_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Female_1_NHANES_2011_2012 = [Coefficient_b_Female_1_NHANES_2011_2012 PP(1)];
% Age 44
X_data = (Female_data_44(:,1)/100).^c; % Height (m)
Y_data = Female_data_44(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_NHANES_2011_2012 = [Coefficient_a_Female_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Female_1_NHANES_2011_2012 = [Coefficient_b_Female_1_NHANES_2011_2012 PP(1)];
% Age 45
X_data = (Female_data_45(:,1)/100).^c; % Height (m)
Y_data = Female_data_45(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_NHANES_2011_2012 = [Coefficient_a_Female_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Female_1_NHANES_2011_2012 = [Coefficient_b_Female_1_NHANES_2011_2012 PP(1)];
% Age 46
X_data = (Female_data_46(:,1)/100).^c; % Height (m)
Y_data = Female_data_46(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_NHANES_2011_2012 = [Coefficient_a_Female_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Female_1_NHANES_2011_2012 = [Coefficient_b_Female_1_NHANES_2011_2012 PP(1)];
% Age 47
X_data = (Female_data_47(:,1)/100).^c; % Height (m)
Y_data = Female_data_47(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_NHANES_2011_2012 = [Coefficient_a_Female_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Female_1_NHANES_2011_2012 = [Coefficient_b_Female_1_NHANES_2011_2012 PP(1)];
% Age 48
X_data = (Female_data_48(:,1)/100).^c; % Height (m)
Y_data = Female_data_48(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_NHANES_2011_2012 = [Coefficient_a_Female_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Female_1_NHANES_2011_2012 = [Coefficient_b_Female_1_NHANES_2011_2012 PP(1)];
% Age 49
X_data = (Female_data_49(:,1)/100).^c; % Height (m)
Y_data = Female_data_49(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_NHANES_2011_2012 = [Coefficient_a_Female_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Female_1_NHANES_2011_2012 = [Coefficient_b_Female_1_NHANES_2011_2012 PP(1)];
% Age 50
X_data = (Female_data_50(:,1)/100).^c; % Height (m)
Y_data = Female_data_50(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_NHANES_2011_2012 = [Coefficient_a_Female_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Female_1_NHANES_2011_2012 = [Coefficient_b_Female_1_NHANES_2011_2012 PP(1)];
% Age 51
X_data = (Female_data_51(:,1)/100).^c; % Height (m)
Y_data = Female_data_51(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_NHANES_2011_2012 = [Coefficient_a_Female_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Female_1_NHANES_2011_2012 = [Coefficient_b_Female_1_NHANES_2011_2012 PP(1)];
% Age 52
X_data = (Female_data_52(:,1)/100).^c; % Height (m)
Y_data = Female_data_52(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_NHANES_2011_2012 = [Coefficient_a_Female_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Female_1_NHANES_2011_2012 = [Coefficient_b_Female_1_NHANES_2011_2012 PP(1)];
% Age 53
X_data = (Female_data_53(:,1)/100).^c; % Height (m)
Y_data = Female_data_53(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_NHANES_2011_2012 = [Coefficient_a_Female_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Female_1_NHANES_2011_2012 = [Coefficient_b_Female_1_NHANES_2011_2012 PP(1)];
% Age 54
X_data = (Female_data_54(:,1)/100).^c; % Height (m)
Y_data = Female_data_54(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_NHANES_2011_2012 = [Coefficient_a_Female_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Female_1_NHANES_2011_2012 = [Coefficient_b_Female_1_NHANES_2011_2012 PP(1)];
% Age 55
X_data = (Female_data_55(:,1)/100).^c; % Height (m)
Y_data = Female_data_55(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_NHANES_2011_2012 = [Coefficient_a_Female_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Female_1_NHANES_2011_2012 = [Coefficient_b_Female_1_NHANES_2011_2012 PP(1)];
% Age 56
X_data = (Female_data_56(:,1)/100).^c; % Height (m)
Y_data = Female_data_56(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_NHANES_2011_2012 = [Coefficient_a_Female_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Female_1_NHANES_2011_2012 = [Coefficient_b_Female_1_NHANES_2011_2012 PP(1)];
% Age 57
X_data = (Female_data_57(:,1)/100).^c; % Height (m)
Y_data = Female_data_57(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_NHANES_2011_2012 = [Coefficient_a_Female_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Female_1_NHANES_2011_2012 = [Coefficient_b_Female_1_NHANES_2011_2012 PP(1)];
% Age 58
X_data = (Female_data_58(:,1)/100).^c; % Height (m)
Y_data = Female_data_58(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_NHANES_2011_2012 = [Coefficient_a_Female_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Female_1_NHANES_2011_2012 = [Coefficient_b_Female_1_NHANES_2011_2012 PP(1)];
% Age 59
X_data = (Female_data_59(:,1)/100).^c; % Height (m)
Y_data = Female_data_59(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_NHANES_2011_2012 = [Coefficient_a_Female_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Female_1_NHANES_2011_2012 = [Coefficient_b_Female_1_NHANES_2011_2012 PP(1)];
% Age 60
X_data = (Female_data_60(:,1)/100).^c; % Height (m)
Y_data = Female_data_60(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_NHANES_2011_2012 = [Coefficient_a_Female_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Female_1_NHANES_2011_2012 = [Coefficient_b_Female_1_NHANES_2011_2012 PP(1)];
% Age 61
X_data = (Female_data_61(:,1)/100).^c; % Height (m)
Y_data = Female_data_61(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_NHANES_2011_2012 = [Coefficient_a_Female_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Female_1_NHANES_2011_2012 = [Coefficient_b_Female_1_NHANES_2011_2012 PP(1)];
% Age 62
X_data = (Female_data_62(:,1)/100).^c; % Height (m)
Y_data = Female_data_62(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_NHANES_2011_2012 = [Coefficient_a_Female_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Female_1_NHANES_2011_2012 = [Coefficient_b_Female_1_NHANES_2011_2012 PP(1)];
% Age 63
X_data = (Female_data_63(:,1)/100).^c; % Height (m)
Y_data = Female_data_63(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_NHANES_2011_2012 = [Coefficient_a_Female_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Female_1_NHANES_2011_2012 = [Coefficient_b_Female_1_NHANES_2011_2012 PP(1)];
% Age 64
X_data = (Female_data_64(:,1)/100).^c; % Height (m)
Y_data = Female_data_64(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_NHANES_2011_2012 = [Coefficient_a_Female_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Female_1_NHANES_2011_2012 = [Coefficient_b_Female_1_NHANES_2011_2012 PP(1)];
% Age 65
X_data = (Female_data_65(:,1)/100).^c; % Height (m)
Y_data = Female_data_65(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_NHANES_2011_2012 = [Coefficient_a_Female_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Female_1_NHANES_2011_2012 = [Coefficient_b_Female_1_NHANES_2011_2012 PP(1)];
% Age 66
X_data = (Female_data_66(:,1)/100).^c; % Height (m)
Y_data = Female_data_66(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_NHANES_2011_2012 = [Coefficient_a_Female_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Female_1_NHANES_2011_2012 = [Coefficient_b_Female_1_NHANES_2011_2012 PP(1)];
% Age 67
X_data = (Female_data_67(:,1)/100).^c; % Height (m)
Y_data = Female_data_67(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_NHANES_2011_2012 = [Coefficient_a_Female_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Female_1_NHANES_2011_2012 = [Coefficient_b_Female_1_NHANES_2011_2012 PP(1)];
% Age 68
X_data = (Female_data_68(:,1)/100).^c; % Height (m)
Y_data = Female_data_68(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_NHANES_2011_2012 = [Coefficient_a_Female_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Female_1_NHANES_2011_2012 = [Coefficient_b_Female_1_NHANES_2011_2012 PP(1)];
% Age 69
X_data = (Female_data_69(:,1)/100).^c; % Height (m)
Y_data = Female_data_69(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_NHANES_2011_2012 = [Coefficient_a_Female_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Female_1_NHANES_2011_2012 = [Coefficient_b_Female_1_NHANES_2011_2012 PP(1)];
% Age 70
X_data = (Female_data_70(:,1)/100).^c; % Height (m)
Y_data = Female_data_70(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_NHANES_2011_2012 = [Coefficient_a_Female_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Female_1_NHANES_2011_2012 = [Coefficient_b_Female_1_NHANES_2011_2012 PP(1)];
% Age 71
X_data = (Female_data_71(:,1)/100).^c; % Height (m)
Y_data = Female_data_71(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_NHANES_2011_2012 = [Coefficient_a_Female_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Female_1_NHANES_2011_2012 = [Coefficient_b_Female_1_NHANES_2011_2012 PP(1)];
% Age 72
X_data = (Female_data_72(:,1)/100).^c; % Height (m)
Y_data = Female_data_72(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_NHANES_2011_2012 = [Coefficient_a_Female_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Female_1_NHANES_2011_2012 = [Coefficient_b_Female_1_NHANES_2011_2012 PP(1)];
% Age 73
X_data = (Female_data_73(:,1)/100).^c; % Height (m)
Y_data = Female_data_73(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_NHANES_2011_2012 = [Coefficient_a_Female_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Female_1_NHANES_2011_2012 = [Coefficient_b_Female_1_NHANES_2011_2012 PP(1)];
% Age 74
X_data = (Female_data_74(:,1)/100).^c; % Height (m)
Y_data = Female_data_74(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_NHANES_2011_2012 = [Coefficient_a_Female_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Female_1_NHANES_2011_2012 = [Coefficient_b_Female_1_NHANES_2011_2012 PP(1)];
% Age 75
X_data = (Female_data_75(:,1)/100).^c; % Height (m)
Y_data = Female_data_75(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_NHANES_2011_2012 = [Coefficient_a_Female_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Female_1_NHANES_2011_2012 = [Coefficient_b_Female_1_NHANES_2011_2012 PP(1)];
% Age 76
X_data = (Female_data_76(:,1)/100).^c; % Height (m)
Y_data = Female_data_76(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_NHANES_2011_2012 = [Coefficient_a_Female_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Female_1_NHANES_2011_2012 = [Coefficient_b_Female_1_NHANES_2011_2012 PP(1)];
% Age 77
X_data = (Female_data_77(:,1)/100).^c; % Height (m)
Y_data = Female_data_77(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_NHANES_2011_2012 = [Coefficient_a_Female_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Female_1_NHANES_2011_2012 = [Coefficient_b_Female_1_NHANES_2011_2012 PP(1)];
% Age 78
X_data = (Female_data_78(:,1)/100).^c; % Height (m)
Y_data = Female_data_78(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_NHANES_2011_2012 = [Coefficient_a_Female_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Female_1_NHANES_2011_2012 = [Coefficient_b_Female_1_NHANES_2011_2012 PP(1)];
% Age 79
X_data = (Female_data_79(:,1)/100).^c; % Height (m)
Y_data = Female_data_79(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_NHANES_2011_2012 = [Coefficient_a_Female_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Female_1_NHANES_2011_2012 = [Coefficient_b_Female_1_NHANES_2011_2012 PP(1)];
% Age >=80
X_data = (Female_data_80(:,1)/100).^c; % Height (m)
Y_data = Female_data_80(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_NHANES_2011_2012 = [Coefficient_a_Female_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Female_1_NHANES_2011_2012 = [Coefficient_b_Female_1_NHANES_2011_2012 PP(1)];

% For Male
% Age 2
X_data = (Male_data_2(:,1)/100).^c; % Height (m)
Y_data = Male_data_2(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_NHANES_2011_2012 = [Coefficient_a_Male_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Male_1_NHANES_2011_2012 = [Coefficient_b_Male_1_NHANES_2011_2012 PP(1)];
% Age 3
X_data = (Male_data_3(:,1)/100).^c; % Height (m)
Y_data = Male_data_3(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_NHANES_2011_2012 = [Coefficient_a_Male_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Male_1_NHANES_2011_2012 = [Coefficient_b_Male_1_NHANES_2011_2012 PP(1)];
% Age 4
X_data = (Male_data_4(:,1)/100).^c; % Height (m)
Y_data = Male_data_4(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_NHANES_2011_2012 = [Coefficient_a_Male_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Male_1_NHANES_2011_2012 = [Coefficient_b_Male_1_NHANES_2011_2012 PP(1)];
% Age 5
X_data = (Male_data_5(:,1)/100).^c; % Height (m)
Y_data = Male_data_5(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_NHANES_2011_2012 = [Coefficient_a_Male_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Male_1_NHANES_2011_2012 = [Coefficient_b_Male_1_NHANES_2011_2012 PP(1)];
% Age 6
X_data = (Male_data_6(:,1)/100).^c; % Height (m)
Y_data = Male_data_6(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_NHANES_2011_2012 = [Coefficient_a_Male_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Male_1_NHANES_2011_2012 = [Coefficient_b_Male_1_NHANES_2011_2012 PP(1)];
% Age 7
X_data = (Male_data_7(:,1)/100).^c; % Height (m)
Y_data = Male_data_7(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_NHANES_2011_2012 = [Coefficient_a_Male_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Male_1_NHANES_2011_2012 = [Coefficient_b_Male_1_NHANES_2011_2012 PP(1)];
% Age 8
X_data = (Male_data_8(:,1)/100).^c; % Height (m)
Y_data = Male_data_8(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_NHANES_2011_2012 = [Coefficient_a_Male_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Male_1_NHANES_2011_2012 = [Coefficient_b_Male_1_NHANES_2011_2012 PP(1)];
% Age 9
X_data = (Male_data_9(:,1)/100).^c; % Height (m)
Y_data = Male_data_9(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_NHANES_2011_2012 = [Coefficient_a_Male_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Male_1_NHANES_2011_2012 = [Coefficient_b_Male_1_NHANES_2011_2012 PP(1)];
% Age 10
X_data = (Male_data_10(:,1)/100).^c; % Height (m)
Y_data = Male_data_10(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_NHANES_2011_2012 = [Coefficient_a_Male_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Male_1_NHANES_2011_2012 = [Coefficient_b_Male_1_NHANES_2011_2012 PP(1)];
% Age 11
X_data = (Male_data_11(:,1)/100).^c; % Height (m)
Y_data = Male_data_11(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_NHANES_2011_2012 = [Coefficient_a_Male_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Male_1_NHANES_2011_2012 = [Coefficient_b_Male_1_NHANES_2011_2012 PP(1)];
% Age 12
X_data = (Male_data_12(:,1)/100).^c; % Height (m)
Y_data = Male_data_12(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_NHANES_2011_2012 = [Coefficient_a_Male_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Male_1_NHANES_2011_2012 = [Coefficient_b_Male_1_NHANES_2011_2012 PP(1)];
% Age 13
X_data = (Male_data_13(:,1)/100).^c; % Height (m)
Y_data = Male_data_13(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_NHANES_2011_2012 = [Coefficient_a_Male_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Male_1_NHANES_2011_2012 = [Coefficient_b_Male_1_NHANES_2011_2012 PP(1)];
% Age 14
X_data = (Male_data_14(:,1)/100).^c; % Height (m)
Y_data = Male_data_14(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_NHANES_2011_2012 = [Coefficient_a_Male_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Male_1_NHANES_2011_2012 = [Coefficient_b_Male_1_NHANES_2011_2012 PP(1)];
% Age 15
X_data = (Male_data_15(:,1)/100).^c; % Height (m)
Y_data = Male_data_15(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_NHANES_2011_2012 = [Coefficient_a_Male_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Male_1_NHANES_2011_2012 = [Coefficient_b_Male_1_NHANES_2011_2012 PP(1)];
% Age 16
X_data = (Male_data_16(:,1)/100).^c; % Height (m)
Y_data = Male_data_16(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_NHANES_2011_2012 = [Coefficient_a_Male_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Male_1_NHANES_2011_2012 = [Coefficient_b_Male_1_NHANES_2011_2012 PP(1)];
% Age 17
X_data = (Male_data_17(:,1)/100).^c; % Height (m)
Y_data = Male_data_17(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_NHANES_2011_2012 = [Coefficient_a_Male_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Male_1_NHANES_2011_2012 = [Coefficient_b_Male_1_NHANES_2011_2012 PP(1)];
% Age 18
X_data = (Male_data_18(:,1)/100).^c; % Height (m)
Y_data = Male_data_18(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_NHANES_2011_2012 = [Coefficient_a_Male_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Male_1_NHANES_2011_2012 = [Coefficient_b_Male_1_NHANES_2011_2012 PP(1)];
% Age 19
X_data = (Male_data_19(:,1)/100).^c; % Height (m)
Y_data = Male_data_19(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_NHANES_2011_2012 = [Coefficient_a_Male_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Male_1_NHANES_2011_2012 = [Coefficient_b_Male_1_NHANES_2011_2012 PP(1)];
% Age 20
X_data = (Male_data_20(:,1)/100).^c; % Height (m)
Y_data = Male_data_20(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_NHANES_2011_2012 = [Coefficient_a_Male_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Male_1_NHANES_2011_2012 = [Coefficient_b_Male_1_NHANES_2011_2012 PP(1)];
% Age 21
X_data = (Male_data_21(:,1)/100).^c; % Height (m)
Y_data = Male_data_21(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_NHANES_2011_2012 = [Coefficient_a_Male_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Male_1_NHANES_2011_2012 = [Coefficient_b_Male_1_NHANES_2011_2012 PP(1)];
% Age 22
X_data = (Male_data_22(:,1)/100).^c; % Height (m)
Y_data = Male_data_22(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_NHANES_2011_2012 = [Coefficient_a_Male_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Male_1_NHANES_2011_2012 = [Coefficient_b_Male_1_NHANES_2011_2012 PP(1)];
% Age 23
X_data = (Male_data_23(:,1)/100).^c; % Height (m)
Y_data = Male_data_23(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_NHANES_2011_2012 = [Coefficient_a_Male_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Male_1_NHANES_2011_2012 = [Coefficient_b_Male_1_NHANES_2011_2012 PP(1)];
% Age 24
X_data = (Male_data_24(:,1)/100).^c; % Height (m)
Y_data = Male_data_24(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_NHANES_2011_2012 = [Coefficient_a_Male_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Male_1_NHANES_2011_2012 = [Coefficient_b_Male_1_NHANES_2011_2012 PP(1)];
% Age 25
X_data = (Male_data_25(:,1)/100).^c; % Height (m)
Y_data = Male_data_25(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_NHANES_2011_2012 = [Coefficient_a_Male_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Male_1_NHANES_2011_2012 = [Coefficient_b_Male_1_NHANES_2011_2012 PP(1)];
% Age 26
X_data = (Male_data_26(:,1)/100).^c; % Height (m)
Y_data = Male_data_26(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_NHANES_2011_2012 = [Coefficient_a_Male_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Male_1_NHANES_2011_2012 = [Coefficient_b_Male_1_NHANES_2011_2012 PP(1)];
% Age 27
X_data = (Male_data_27(:,1)/100).^c; % Height (m)
Y_data = Male_data_27(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_NHANES_2011_2012 = [Coefficient_a_Male_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Male_1_NHANES_2011_2012 = [Coefficient_b_Male_1_NHANES_2011_2012 PP(1)];
% Age 28
X_data = (Male_data_28(:,1)/100).^c; % Height (m)
Y_data = Male_data_28(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_NHANES_2011_2012 = [Coefficient_a_Male_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Male_1_NHANES_2011_2012 = [Coefficient_b_Male_1_NHANES_2011_2012 PP(1)];
% Age 29
X_data = (Male_data_29(:,1)/100).^c; % Height (m)
Y_data = Male_data_29(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_NHANES_2011_2012 = [Coefficient_a_Male_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Male_1_NHANES_2011_2012 = [Coefficient_b_Male_1_NHANES_2011_2012 PP(1)];
% Age 30
X_data = (Male_data_30(:,1)/100).^c; % Height (m)
Y_data = Male_data_30(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_NHANES_2011_2012 = [Coefficient_a_Male_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Male_1_NHANES_2011_2012 = [Coefficient_b_Male_1_NHANES_2011_2012 PP(1)];
% Age 31
X_data = (Male_data_31(:,1)/100).^c; % Height (m)
Y_data = Male_data_31(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_NHANES_2011_2012 = [Coefficient_a_Male_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Male_1_NHANES_2011_2012 = [Coefficient_b_Male_1_NHANES_2011_2012 PP(1)];
% Age 32
X_data = (Male_data_32(:,1)/100).^c; % Height (m)
Y_data = Male_data_32(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_NHANES_2011_2012 = [Coefficient_a_Male_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Male_1_NHANES_2011_2012 = [Coefficient_b_Male_1_NHANES_2011_2012 PP(1)];
% Age 33
X_data = (Male_data_33(:,1)/100).^c; % Height (m)
Y_data = Male_data_33(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_NHANES_2011_2012 = [Coefficient_a_Male_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Male_1_NHANES_2011_2012 = [Coefficient_b_Male_1_NHANES_2011_2012 PP(1)];
% Age 34
X_data = (Male_data_34(:,1)/100).^c; % Height (m)
Y_data = Male_data_34(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_NHANES_2011_2012 = [Coefficient_a_Male_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Male_1_NHANES_2011_2012 = [Coefficient_b_Male_1_NHANES_2011_2012 PP(1)];
% Age 35
X_data = (Male_data_35(:,1)/100).^c; % Height (m)
Y_data = Male_data_35(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_NHANES_2011_2012 = [Coefficient_a_Male_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Male_1_NHANES_2011_2012 = [Coefficient_b_Male_1_NHANES_2011_2012 PP(1)];
% Age 36
X_data = (Male_data_36(:,1)/100).^c; % Height (m)
Y_data = Male_data_36(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_NHANES_2011_2012 = [Coefficient_a_Male_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Male_1_NHANES_2011_2012 = [Coefficient_b_Male_1_NHANES_2011_2012 PP(1)];
% Age 37
X_data = (Male_data_37(:,1)/100).^c; % Height (m)
Y_data = Male_data_37(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_NHANES_2011_2012 = [Coefficient_a_Male_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Male_1_NHANES_2011_2012 = [Coefficient_b_Male_1_NHANES_2011_2012 PP(1)];
% Age 38
X_data = (Male_data_38(:,1)/100).^c; % Height (m)
Y_data = Male_data_38(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_NHANES_2011_2012 = [Coefficient_a_Male_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Male_1_NHANES_2011_2012 = [Coefficient_b_Male_1_NHANES_2011_2012 PP(1)];
% Age 39
X_data = (Male_data_39(:,1)/100).^c; % Height (m)
Y_data = Male_data_39(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_NHANES_2011_2012 = [Coefficient_a_Male_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Male_1_NHANES_2011_2012 = [Coefficient_b_Male_1_NHANES_2011_2012 PP(1)];
% Age 40
X_data = (Male_data_40(:,1)/100).^c; % Height (m)
Y_data = Male_data_40(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_NHANES_2011_2012 = [Coefficient_a_Male_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Male_1_NHANES_2011_2012 = [Coefficient_b_Male_1_NHANES_2011_2012 PP(1)];
% Age 41
X_data = (Male_data_41(:,1)/100).^c; % Height (m)
Y_data = Male_data_41(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_NHANES_2011_2012 = [Coefficient_a_Male_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Male_1_NHANES_2011_2012 = [Coefficient_b_Male_1_NHANES_2011_2012 PP(1)];
% Age 42
X_data = (Male_data_42(:,1)/100).^c; % Height (m)
Y_data = Male_data_42(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_NHANES_2011_2012 = [Coefficient_a_Male_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Male_1_NHANES_2011_2012 = [Coefficient_b_Male_1_NHANES_2011_2012 PP(1)];
% Age 43
X_data = (Male_data_43(:,1)/100).^c; % Height (m)
Y_data = Male_data_43(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_NHANES_2011_2012 = [Coefficient_a_Male_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Male_1_NHANES_2011_2012 = [Coefficient_b_Male_1_NHANES_2011_2012 PP(1)];
% Age 44
X_data = (Male_data_44(:,1)/100).^c; % Height (m)
Y_data = Male_data_44(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_NHANES_2011_2012 = [Coefficient_a_Male_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Male_1_NHANES_2011_2012 = [Coefficient_b_Male_1_NHANES_2011_2012 PP(1)];
% Age 45
X_data = (Male_data_45(:,1)/100).^c; % Height (m)
Y_data = Male_data_45(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_NHANES_2011_2012 = [Coefficient_a_Male_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Male_1_NHANES_2011_2012 = [Coefficient_b_Male_1_NHANES_2011_2012 PP(1)];
% Age 46
X_data = (Male_data_46(:,1)/100).^c; % Height (m)
Y_data = Male_data_46(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_NHANES_2011_2012 = [Coefficient_a_Male_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Male_1_NHANES_2011_2012 = [Coefficient_b_Male_1_NHANES_2011_2012 PP(1)];
% Age 47
X_data = (Male_data_47(:,1)/100).^c; % Height (m)
Y_data = Male_data_47(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_NHANES_2011_2012 = [Coefficient_a_Male_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Male_1_NHANES_2011_2012 = [Coefficient_b_Male_1_NHANES_2011_2012 PP(1)];
% Age 48
X_data = (Male_data_48(:,1)/100).^c; % Height (m)
Y_data = Male_data_48(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_NHANES_2011_2012 = [Coefficient_a_Male_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Male_1_NHANES_2011_2012 = [Coefficient_b_Male_1_NHANES_2011_2012 PP(1)];
% Age 49
X_data = (Male_data_49(:,1)/100).^c; % Height (m)
Y_data = Male_data_49(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_NHANES_2011_2012 = [Coefficient_a_Male_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Male_1_NHANES_2011_2012 = [Coefficient_b_Male_1_NHANES_2011_2012 PP(1)];
% Age 50
X_data = (Male_data_50(:,1)/100).^c; % Height (m)
Y_data = Male_data_50(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_NHANES_2011_2012 = [Coefficient_a_Male_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Male_1_NHANES_2011_2012 = [Coefficient_b_Male_1_NHANES_2011_2012 PP(1)];
% Age 51
X_data = (Male_data_51(:,1)/100).^c; % Height (m)
Y_data = Male_data_51(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_NHANES_2011_2012 = [Coefficient_a_Male_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Male_1_NHANES_2011_2012 = [Coefficient_b_Male_1_NHANES_2011_2012 PP(1)];
% Age 52
X_data = (Male_data_52(:,1)/100).^c; % Height (m)
Y_data = Male_data_52(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_NHANES_2011_2012 = [Coefficient_a_Male_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Male_1_NHANES_2011_2012 = [Coefficient_b_Male_1_NHANES_2011_2012 PP(1)];
% Age 53
X_data = (Male_data_53(:,1)/100).^c; % Height (m)
Y_data = Male_data_53(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_NHANES_2011_2012 = [Coefficient_a_Male_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Male_1_NHANES_2011_2012 = [Coefficient_b_Male_1_NHANES_2011_2012 PP(1)];
% Age 54
X_data = (Male_data_54(:,1)/100).^c; % Height (m)
Y_data = Male_data_54(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_NHANES_2011_2012 = [Coefficient_a_Male_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Male_1_NHANES_2011_2012 = [Coefficient_b_Male_1_NHANES_2011_2012 PP(1)];
% Age 55
X_data = (Male_data_55(:,1)/100).^c; % Height (m)
Y_data = Male_data_55(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_NHANES_2011_2012 = [Coefficient_a_Male_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Male_1_NHANES_2011_2012 = [Coefficient_b_Male_1_NHANES_2011_2012 PP(1)];
% Age 56
X_data = (Male_data_56(:,1)/100).^c; % Height (m)
Y_data = Male_data_56(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_NHANES_2011_2012 = [Coefficient_a_Male_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Male_1_NHANES_2011_2012 = [Coefficient_b_Male_1_NHANES_2011_2012 PP(1)];
% Age 57
X_data = (Male_data_57(:,1)/100).^c; % Height (m)
Y_data = Male_data_57(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_NHANES_2011_2012 = [Coefficient_a_Male_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Male_1_NHANES_2011_2012 = [Coefficient_b_Male_1_NHANES_2011_2012 PP(1)];
% Age 58
X_data = (Male_data_58(:,1)/100).^c; % Height (m)
Y_data = Male_data_58(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_NHANES_2011_2012 = [Coefficient_a_Male_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Male_1_NHANES_2011_2012 = [Coefficient_b_Male_1_NHANES_2011_2012 PP(1)];
% Age 59
X_data = (Male_data_59(:,1)/100).^c; % Height (m)
Y_data = Male_data_59(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_NHANES_2011_2012 = [Coefficient_a_Male_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Male_1_NHANES_2011_2012 = [Coefficient_b_Male_1_NHANES_2011_2012 PP(1)];
% Age 60
X_data = (Male_data_60(:,1)/100).^c; % Height (m)
Y_data = Male_data_60(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_NHANES_2011_2012 = [Coefficient_a_Male_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Male_1_NHANES_2011_2012 = [Coefficient_b_Male_1_NHANES_2011_2012 PP(1)];
% Age 61
X_data = (Male_data_61(:,1)/100).^c; % Height (m)
Y_data = Male_data_61(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_NHANES_2011_2012 = [Coefficient_a_Male_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Male_1_NHANES_2011_2012 = [Coefficient_b_Male_1_NHANES_2011_2012 PP(1)];
% Age 62
X_data = (Male_data_62(:,1)/100).^c; % Height (m)
Y_data = Male_data_62(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_NHANES_2011_2012 = [Coefficient_a_Male_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Male_1_NHANES_2011_2012 = [Coefficient_b_Male_1_NHANES_2011_2012 PP(1)];
% Age 63
X_data = (Male_data_63(:,1)/100).^c; % Height (m)
Y_data = Male_data_63(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_NHANES_2011_2012 = [Coefficient_a_Male_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Male_1_NHANES_2011_2012 = [Coefficient_b_Male_1_NHANES_2011_2012 PP(1)];
% Age 64
X_data = (Male_data_64(:,1)/100).^c; % Height (m)
Y_data = Male_data_64(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_NHANES_2011_2012 = [Coefficient_a_Male_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Male_1_NHANES_2011_2012 = [Coefficient_b_Male_1_NHANES_2011_2012 PP(1)];
% Age 65
X_data = (Male_data_65(:,1)/100).^c; % Height (m)
Y_data = Male_data_65(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_NHANES_2011_2012 = [Coefficient_a_Male_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Male_1_NHANES_2011_2012 = [Coefficient_b_Male_1_NHANES_2011_2012 PP(1)];
% Age 66
X_data = (Male_data_66(:,1)/100).^c; % Height (m)
Y_data = Male_data_66(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_NHANES_2011_2012 = [Coefficient_a_Male_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Male_1_NHANES_2011_2012 = [Coefficient_b_Male_1_NHANES_2011_2012 PP(1)];
% Age 67
X_data = (Male_data_67(:,1)/100).^c; % Height (m)
Y_data = Male_data_67(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_NHANES_2011_2012 = [Coefficient_a_Male_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Male_1_NHANES_2011_2012 = [Coefficient_b_Male_1_NHANES_2011_2012 PP(1)];
% Age 68
X_data = (Male_data_68(:,1)/100).^c; % Height (m)
Y_data = Male_data_68(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_NHANES_2011_2012 = [Coefficient_a_Male_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Male_1_NHANES_2011_2012 = [Coefficient_b_Male_1_NHANES_2011_2012 PP(1)];
% Age 69
X_data = (Male_data_69(:,1)/100).^c; % Height (m)
Y_data = Male_data_69(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_NHANES_2011_2012 = [Coefficient_a_Male_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Male_1_NHANES_2011_2012 = [Coefficient_b_Male_1_NHANES_2011_2012 PP(1)];
% Age 70
X_data = (Male_data_70(:,1)/100).^c; % Height (m)
Y_data = Male_data_70(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_NHANES_2011_2012 = [Coefficient_a_Male_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Male_1_NHANES_2011_2012 = [Coefficient_b_Male_1_NHANES_2011_2012 PP(1)];
% Age 71
X_data = (Male_data_71(:,1)/100).^c; % Height (m)
Y_data = Male_data_71(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_NHANES_2011_2012 = [Coefficient_a_Male_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Male_1_NHANES_2011_2012 = [Coefficient_b_Male_1_NHANES_2011_2012 PP(1)];
% Age 72
X_data = (Male_data_72(:,1)/100).^c; % Height (m)
Y_data = Male_data_72(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_NHANES_2011_2012 = [Coefficient_a_Male_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Male_1_NHANES_2011_2012 = [Coefficient_b_Male_1_NHANES_2011_2012 PP(1)];
% Age 73
X_data = (Male_data_73(:,1)/100).^c; % Height (m)
Y_data = Male_data_73(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_NHANES_2011_2012 = [Coefficient_a_Male_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Male_1_NHANES_2011_2012 = [Coefficient_b_Male_1_NHANES_2011_2012 PP(1)];
% Age 74
X_data = (Male_data_74(:,1)/100).^c; % Height (m)
Y_data = Male_data_74(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_NHANES_2011_2012 = [Coefficient_a_Male_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Male_1_NHANES_2011_2012 = [Coefficient_b_Male_1_NHANES_2011_2012 PP(1)];
% Age 75
X_data = (Male_data_75(:,1)/100).^c; % Height (m)
Y_data = Male_data_75(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_NHANES_2011_2012 = [Coefficient_a_Male_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Male_1_NHANES_2011_2012 = [Coefficient_b_Male_1_NHANES_2011_2012 PP(1)];
% Age 76
X_data = (Male_data_76(:,1)/100).^c; % Height (m)
Y_data = Male_data_76(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_NHANES_2011_2012 = [Coefficient_a_Male_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Male_1_NHANES_2011_2012 = [Coefficient_b_Male_1_NHANES_2011_2012 PP(1)];
% Age 77
X_data = (Male_data_77(:,1)/100).^c; % Height (m)
Y_data = Male_data_77(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_NHANES_2011_2012 = [Coefficient_a_Male_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Male_1_NHANES_2011_2012 = [Coefficient_b_Male_1_NHANES_2011_2012 PP(1)];
% Age 78
X_data = (Male_data_78(:,1)/100).^c; % Height (m)
Y_data = Male_data_78(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_NHANES_2011_2012 = [Coefficient_a_Male_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Male_1_NHANES_2011_2012 = [Coefficient_b_Male_1_NHANES_2011_2012 PP(1)];
% Age 79
X_data = (Male_data_79(:,1)/100).^c; % Height (m)
Y_data = Male_data_79(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_NHANES_2011_2012 = [Coefficient_a_Male_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Male_1_NHANES_2011_2012 = [Coefficient_b_Male_1_NHANES_2011_2012 PP(1)];
% Age >=80
X_data = (Male_data_80(:,1)/100).^c; % Height (m)
Y_data = Male_data_80(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_NHANES_2011_2012 = [Coefficient_a_Male_1_NHANES_2011_2012 PP(2)];
Coefficient_b_Male_1_NHANES_2011_2012 = [Coefficient_b_Male_1_NHANES_2011_2012 PP(1)];

% We show the results
Age = 2:80;
figure;
% For coefficient a
subplot(1,2,1);
hold on;
xlabel('Age/yr');
ylabel('Coefficient a')
xlim([1 81]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

x_data = Age;
y_data = Coefficient_a_Female_1_NHANES_2011_2012; % Female
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize+1,'Color',Color_1,'MarkerFaceColor','w');

x_data = Age;
y_data = Coefficient_a_Male_1_NHANES_2011_2012; % Male
HH2 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_2,'MarkerFaceColor','w');

Legend = legend([HH1 HH2],'Female','Male','Location','southwest');
set(Legend,'Box','off')

% For coefficient b
subplot(1,2,2);
hold on;
xlabel('Age/yr');
ylabel('Coefficient b')
xlim([1 81]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

x_data = Age;
y_data = Coefficient_b_Female_1_NHANES_2011_2012; % Female
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize+1,'Color',Color_1,'MarkerFaceColor','w');

x_data = Age;
y_data = Coefficient_b_Male_1_NHANES_2011_2012; % Male
HH2 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_2,'MarkerFaceColor','w');

Legend = legend([HH1 HH2],'Female','Male','Location','southwest');
set(Legend,'Box','off')

% We save the coefficients a and b
Age_NHANES_2011_2012 = Age;
save('Coefficient_a_and_b_c_1_NHANES_2011_2012.mat','Age_NHANES_2011_2012','Coefficient_a_Female_1_NHANES_2011_2012',...
    'Coefficient_b_Female_1_NHANES_2011_2012','Coefficient_a_Male_1_NHANES_2011_2012','Coefficient_b_Male_1_NHANES_2011_2012');
