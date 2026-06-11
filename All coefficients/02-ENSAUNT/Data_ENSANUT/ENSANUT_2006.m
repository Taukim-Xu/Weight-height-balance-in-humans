%% Source codes for ENSANUT_2006.m

%% Parameter information for drawing
My_LineWidth = 1.5;
My_MarkerSize = 7;
My_FontName = 'Times New Roman';
My_fontSize = 12;
Edgealpha = 0;
Alpha = 1;
%% Colors
load('My_Colors.mat')
%%
%% Loading the data
%% ENSANUT 2012
Female_data = xlsread('Data_ENSANUT\ENSANUT 2012.xlsx','Female');
Male_data = xlsread('Data_ENSANUT\ENSANUT 2012.xlsx','Male');
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
end
My_percentile = [1 99]; % 1th and 99th percentiles
% For Female
% Lower limit
Female_Age_1_Low_Weight = 0;
Female_Age_2_Low_Weight = 0;
Female_Age_3_Low_Weight = 0;
Female_Age_4_Low_Weight = 0;
Female_Age_5_Low_Weight = 0;
Female_Age_6_Low_Weight = 0;
Female_Age_7_Low_Weight = 0;
Female_Age_8_Low_Weight = 0;
Female_Age_9_Low_Weight = 0;
Female_Age_10_Low_Weight = 0;
Female_Age_11_Low_Weight = 0;
Female_Age_12_Low_Weight = 0;
Female_Age_13_Low_Weight = 0;
Female_Age_14_Low_Weight = 0;
Female_Age_15_Low_Weight = 0;
Female_Age_16_Low_Weight = 0;
Female_Age_17_Low_Weight = 0;
Female_Age_18_Low_Weight = 0;
Female_Age_19_Low_Weight = 0;
Female_Age_20_Low_Weight = 0;
Female_Age_21_Low_Weight = 0;
Female_Age_22_Low_Weight = 0;
Female_Age_23_Low_Weight = 0;
Female_Age_24_Low_Weight = 0;
Female_Age_25_Low_Weight = 0;
Female_Age_26_Low_Weight = 0;
Female_Age_27_Low_Weight = 0;
Female_Age_28_Low_Weight = 0;
Female_Age_29_Low_Weight = 0;
Female_Age_30_Low_Weight = 0;
Female_Age_31_Low_Weight = 0;
Female_Age_32_Low_Weight = 0;
Female_Age_33_Low_Weight = 0;
Female_Age_34_Low_Weight = 0;
Female_Age_35_Low_Weight = 0;
Female_Age_36_Low_Weight = 0;
Female_Age_37_Low_Weight = 0;
Female_Age_38_Low_Weight = 0;
Female_Age_39_Low_Weight = 0;
Female_Age_40_Low_Weight = 0;
Female_Age_41_Low_Weight = 0;
Female_Age_42_Low_Weight = 0;
Female_Age_43_Low_Weight = 0;
Female_Age_44_Low_Weight = 0;
Female_Age_45_Low_Weight = 0;
Female_Age_46_Low_Weight = 0;
Female_Age_47_Low_Weight = 0;
Female_Age_48_Low_Weight = 0;
Female_Age_49_Low_Weight = 0;
Female_Age_50_Low_Weight = 0;
Female_Age_51_Low_Weight = 0;
Female_Age_52_Low_Weight = 0;
Female_Age_53_Low_Weight = 0;
Female_Age_54_Low_Weight = 0;
Female_Age_55_Low_Weight = 0;
Female_Age_56_Low_Weight = 0;
Female_Age_57_Low_Weight = 0;
Female_Age_58_Low_Weight = 0;
Female_Age_59_Low_Weight = 0;
Female_Age_60_Low_Weight = 0;
Female_Age_61_Low_Weight = 0;
Female_Age_62_Low_Weight = 0;
Female_Age_63_Low_Weight = 0;
Female_Age_64_Low_Weight = 0;
Female_Age_65_Low_Weight = 0;
Female_Age_66_Low_Weight = 0;
Female_Age_67_Low_Weight = 0;
Female_Age_68_Low_Weight = 0;
Female_Age_69_Low_Weight = 0;
Female_Age_70_Low_Weight = 0;
Female_Age_71_Low_Weight = 0;
Female_Age_72_Low_Weight = 0;
Female_Age_73_Low_Weight = 0;
Female_Age_74_Low_Weight = 0;
Female_Age_75_Low_Weight = 0;
Female_Age_76_Low_Weight = 0;
Female_Age_77_Low_Weight = 0;
Female_Age_78_Low_Weight = 0;
Female_Age_79_Low_Weight = 0;
Female_Age_80_Low_Weight = 0;
Female_Age_81_Low_Weight = 0;
Female_Age_82_Low_Weight = 0;
Female_Age_83_Low_Weight = 0;
Female_Age_84_Low_Weight = 0;
Female_Age_85_Low_Weight = 0;

Female_Age_1_Low_Height = 0;
Female_Age_2_Low_Height = 0;
Female_Age_3_Low_Height = 0;
Female_Age_4_Low_Height = 0;
Female_Age_5_Low_Height = 0;
Female_Age_6_Low_Height = 0;
Female_Age_7_Low_Height = 0;
Female_Age_8_Low_Height = 0;
Female_Age_9_Low_Height = 0;
Female_Age_10_Low_Height = 0;
Female_Age_11_Low_Height = 0;
Female_Age_12_Low_Height = 0;
Female_Age_13_Low_Height = 0;
Female_Age_14_Low_Height = 0;
Female_Age_15_Low_Height = 0;
Female_Age_16_Low_Height = 0;
Female_Age_17_Low_Height = 0;
Female_Age_18_Low_Height = 0;
Female_Age_19_Low_Height = 0;
Female_Age_20_Low_Height = 0;
Female_Age_21_Low_Height = 0;
Female_Age_22_Low_Height = 0;
Female_Age_23_Low_Height = 0;
Female_Age_24_Low_Height = 0;
Female_Age_25_Low_Height = 0;
Female_Age_26_Low_Height = 0;
Female_Age_27_Low_Height = 0;
Female_Age_28_Low_Height = 0;
Female_Age_29_Low_Height = 0;
Female_Age_30_Low_Height = 0;
Female_Age_31_Low_Height = 0;
Female_Age_32_Low_Height = 0;
Female_Age_33_Low_Height = 0;
Female_Age_34_Low_Height = 0;
Female_Age_35_Low_Height = 0;
Female_Age_36_Low_Height = 0;
Female_Age_37_Low_Height = 0;
Female_Age_38_Low_Height = 0;
Female_Age_39_Low_Height = 0;
Female_Age_40_Low_Height = 0;
Female_Age_41_Low_Height = 0;
Female_Age_42_Low_Height = 0;
Female_Age_43_Low_Height = 0;
Female_Age_44_Low_Height = 0;
Female_Age_45_Low_Height = 0;
Female_Age_46_Low_Height = 0;
Female_Age_47_Low_Height = 0;
Female_Age_48_Low_Height = 0;
Female_Age_49_Low_Height = 0;
Female_Age_50_Low_Height = 0;
Female_Age_51_Low_Height = 0;
Female_Age_52_Low_Height = 0;
Female_Age_53_Low_Height = 0;
Female_Age_54_Low_Height = 0;
Female_Age_55_Low_Height = 0;
Female_Age_56_Low_Height = 0;
Female_Age_57_Low_Height = 0;
Female_Age_58_Low_Height = 0;
Female_Age_59_Low_Height = 0;
Female_Age_60_Low_Height = 0;
Female_Age_61_Low_Height = 0;
Female_Age_62_Low_Height = 0;
Female_Age_63_Low_Height = 0;
Female_Age_64_Low_Height = 0;
Female_Age_65_Low_Height = 0;
Female_Age_66_Low_Height = 0;
Female_Age_67_Low_Height = 0;
Female_Age_68_Low_Height = 0;
Female_Age_69_Low_Height = 0;
Female_Age_70_Low_Height = 0;
Female_Age_71_Low_Height = 0;
Female_Age_72_Low_Height = 0;
Female_Age_73_Low_Height = 0;
Female_Age_74_Low_Height = 0;
Female_Age_75_Low_Height = 0;
Female_Age_76_Low_Height = 0;
Female_Age_77_Low_Height = 0;
Female_Age_78_Low_Height = 0;
Female_Age_79_Low_Height = 0;
Female_Age_80_Low_Height = 0;
Female_Age_81_Low_Height = 0;
Female_Age_82_Low_Height = 0;
Female_Age_83_Low_Height = 0;
Female_Age_84_Low_Height = 0;
Female_Age_85_Low_Height = 0;

% Upper limit
Female_Age_1_Up_Weight = 0;
Female_Age_2_Up_Weight = 0;
Female_Age_3_Up_Weight = 0;
Female_Age_4_Up_Weight = 0;
Female_Age_5_Up_Weight = 0;
Female_Age_6_Up_Weight = 0;
Female_Age_7_Up_Weight = 0;
Female_Age_8_Up_Weight = 0;
Female_Age_9_Up_Weight = 0;
Female_Age_10_Up_Weight = 0;
Female_Age_11_Up_Weight = 0;
Female_Age_12_Up_Weight = 0;
Female_Age_13_Up_Weight = 0;
Female_Age_14_Up_Weight = 0;
Female_Age_15_Up_Weight = 0;
Female_Age_16_Up_Weight = 0;
Female_Age_17_Up_Weight = 0;
Female_Age_18_Up_Weight = 0;
Female_Age_19_Up_Weight = 0;
Female_Age_20_Up_Weight = 0;
Female_Age_21_Up_Weight = 0;
Female_Age_22_Up_Weight = 0;
Female_Age_23_Up_Weight = 0;
Female_Age_24_Up_Weight = 0;
Female_Age_25_Up_Weight = 0;
Female_Age_26_Up_Weight = 0;
Female_Age_27_Up_Weight = 0;
Female_Age_28_Up_Weight = 0;
Female_Age_29_Up_Weight = 0;
Female_Age_30_Up_Weight = 0;
Female_Age_31_Up_Weight = 0;
Female_Age_32_Up_Weight = 0;
Female_Age_33_Up_Weight = 0;
Female_Age_34_Up_Weight = 0;
Female_Age_35_Up_Weight = 0;
Female_Age_36_Up_Weight = 0;
Female_Age_37_Up_Weight = 0;
Female_Age_38_Up_Weight = 0;
Female_Age_39_Up_Weight = 0;
Female_Age_40_Up_Weight = 0;
Female_Age_41_Up_Weight = 0;
Female_Age_42_Up_Weight = 0;
Female_Age_43_Up_Weight = 0;
Female_Age_44_Up_Weight = 0;
Female_Age_45_Up_Weight = 0;
Female_Age_46_Up_Weight = 0;
Female_Age_47_Up_Weight = 0;
Female_Age_48_Up_Weight = 0;
Female_Age_49_Up_Weight = 0;
Female_Age_50_Up_Weight = 0;
Female_Age_51_Up_Weight = 0;
Female_Age_52_Up_Weight = 0;
Female_Age_53_Up_Weight = 0;
Female_Age_54_Up_Weight = 0;
Female_Age_55_Up_Weight = 0;
Female_Age_56_Up_Weight = 0;
Female_Age_57_Up_Weight = 0;
Female_Age_58_Up_Weight = 0;
Female_Age_59_Up_Weight = 0;
Female_Age_60_Up_Weight = 0;
Female_Age_61_Up_Weight = 0;
Female_Age_62_Up_Weight = 0;
Female_Age_63_Up_Weight = 0;
Female_Age_64_Up_Weight = 0;
Female_Age_65_Up_Weight = 0;
Female_Age_66_Up_Weight = 0;
Female_Age_67_Up_Weight = 0;
Female_Age_68_Up_Weight = 0;
Female_Age_69_Up_Weight = 0;
Female_Age_70_Up_Weight = 0;
Female_Age_71_Up_Weight = 0;
Female_Age_72_Up_Weight = 0;
Female_Age_73_Up_Weight = 0;
Female_Age_74_Up_Weight = 0;
Female_Age_75_Up_Weight = 0;
Female_Age_76_Up_Weight = 0;
Female_Age_77_Up_Weight = 0;
Female_Age_78_Up_Weight = 0;
Female_Age_79_Up_Weight = 0;
Female_Age_80_Up_Weight = 0;
Female_Age_81_Up_Weight = 0;
Female_Age_82_Up_Weight = 0;
Female_Age_83_Up_Weight = 0;
Female_Age_84_Up_Weight = 0;
Female_Age_85_Up_Weight = 0;

Female_Age_1_Up_Height = 0;
Female_Age_2_Up_Height = 0;
Female_Age_3_Up_Height = 0;
Female_Age_4_Up_Height = 0;
Female_Age_5_Up_Height = 0;
Female_Age_6_Up_Height = 0;
Female_Age_7_Up_Height = 0;
Female_Age_8_Up_Height = 0;
Female_Age_9_Up_Height = 0;
Female_Age_10_Up_Height = 0;
Female_Age_11_Up_Height = 0;
Female_Age_12_Up_Height = 0;
Female_Age_13_Up_Height = 0;
Female_Age_14_Up_Height = 0;
Female_Age_15_Up_Height = 0;
Female_Age_16_Up_Height = 0;
Female_Age_17_Up_Height = 0;
Female_Age_18_Up_Height = 0;
Female_Age_19_Up_Height = 0;
Female_Age_20_Up_Height = 0;
Female_Age_21_Up_Height = 0;
Female_Age_22_Up_Height = 0;
Female_Age_23_Up_Height = 0;
Female_Age_24_Up_Height = 0;
Female_Age_25_Up_Height = 0;
Female_Age_26_Up_Height = 0;
Female_Age_27_Up_Height = 0;
Female_Age_28_Up_Height = 0;
Female_Age_29_Up_Height = 0;
Female_Age_30_Up_Height = 0;
Female_Age_31_Up_Height = 0;
Female_Age_32_Up_Height = 0;
Female_Age_33_Up_Height = 0;
Female_Age_34_Up_Height = 0;
Female_Age_35_Up_Height = 0;
Female_Age_36_Up_Height = 0;
Female_Age_37_Up_Height = 0;
Female_Age_38_Up_Height = 0;
Female_Age_39_Up_Height = 0;
Female_Age_40_Up_Height = 0;
Female_Age_41_Up_Height = 0;
Female_Age_42_Up_Height = 0;
Female_Age_43_Up_Height = 0;
Female_Age_44_Up_Height = 0;
Female_Age_45_Up_Height = 0;
Female_Age_46_Up_Height = 0;
Female_Age_47_Up_Height = 0;
Female_Age_48_Up_Height = 0;
Female_Age_49_Up_Height = 0;
Female_Age_50_Up_Height = 0;
Female_Age_51_Up_Height = 0;
Female_Age_52_Up_Height = 0;
Female_Age_53_Up_Height = 0;
Female_Age_54_Up_Height = 0;
Female_Age_55_Up_Height = 0;
Female_Age_56_Up_Height = 0;
Female_Age_57_Up_Height = 0;
Female_Age_58_Up_Height = 0;
Female_Age_59_Up_Height = 0;
Female_Age_60_Up_Height = 0;
Female_Age_61_Up_Height = 0;
Female_Age_62_Up_Height = 0;
Female_Age_63_Up_Height = 0;
Female_Age_64_Up_Height = 0;
Female_Age_65_Up_Height = 0;
Female_Age_66_Up_Height = 0;
Female_Age_67_Up_Height = 0;
Female_Age_68_Up_Height = 0;
Female_Age_69_Up_Height = 0;
Female_Age_70_Up_Height = 0;
Female_Age_71_Up_Height = 0;
Female_Age_72_Up_Height = 0;
Female_Age_73_Up_Height = 0;
Female_Age_74_Up_Height = 0;
Female_Age_75_Up_Height = 0;
Female_Age_76_Up_Height = 0;
Female_Age_77_Up_Height = 0;
Female_Age_78_Up_Height = 0;
Female_Age_79_Up_Height = 0;
Female_Age_80_Up_Height = 0;
Female_Age_81_Up_Height = 0;
Female_Age_82_Up_Height = 0;
Female_Age_83_Up_Height = 0;
Female_Age_84_Up_Height = 0;
Female_Age_85_Up_Height = 0;

% For Male
% Lower limit
Male_Age_1_Low_Weight = 0;
Male_Age_2_Low_Weight = 0;
Male_Age_3_Low_Weight = 0;
Male_Age_4_Low_Weight = 0;
Male_Age_5_Low_Weight = 0;
Male_Age_6_Low_Weight = 0;
Male_Age_7_Low_Weight = 0;
Male_Age_8_Low_Weight = 0;
Male_Age_9_Low_Weight = 0;
Male_Age_10_Low_Weight = 0;
Male_Age_11_Low_Weight = 0;
Male_Age_12_Low_Weight = 0;
Male_Age_13_Low_Weight = 0;
Male_Age_14_Low_Weight = 0;
Male_Age_15_Low_Weight = 0;
Male_Age_16_Low_Weight = 0;
Male_Age_17_Low_Weight = 0;
Male_Age_18_Low_Weight = 0;
Male_Age_19_Low_Weight = 0;
Male_Age_20_Low_Weight = 0;
Male_Age_21_Low_Weight = 0;
Male_Age_22_Low_Weight = 0;
Male_Age_23_Low_Weight = 0;
Male_Age_24_Low_Weight = 0;
Male_Age_25_Low_Weight = 0;
Male_Age_26_Low_Weight = 0;
Male_Age_27_Low_Weight = 0;
Male_Age_28_Low_Weight = 0;
Male_Age_29_Low_Weight = 0;
Male_Age_30_Low_Weight = 0;
Male_Age_31_Low_Weight = 0;
Male_Age_32_Low_Weight = 0;
Male_Age_33_Low_Weight = 0;
Male_Age_34_Low_Weight = 0;
Male_Age_35_Low_Weight = 0;
Male_Age_36_Low_Weight = 0;
Male_Age_37_Low_Weight = 0;
Male_Age_38_Low_Weight = 0;
Male_Age_39_Low_Weight = 0;
Male_Age_40_Low_Weight = 0;
Male_Age_41_Low_Weight = 0;
Male_Age_42_Low_Weight = 0;
Male_Age_43_Low_Weight = 0;
Male_Age_44_Low_Weight = 0;
Male_Age_45_Low_Weight = 0;
Male_Age_46_Low_Weight = 0;
Male_Age_47_Low_Weight = 0;
Male_Age_48_Low_Weight = 0;
Male_Age_49_Low_Weight = 0;
Male_Age_50_Low_Weight = 0;
Male_Age_51_Low_Weight = 0;
Male_Age_52_Low_Weight = 0;
Male_Age_53_Low_Weight = 0;
Male_Age_54_Low_Weight = 0;
Male_Age_55_Low_Weight = 0;
Male_Age_56_Low_Weight = 0;
Male_Age_57_Low_Weight = 0;
Male_Age_58_Low_Weight = 0;
Male_Age_59_Low_Weight = 0;
Male_Age_60_Low_Weight = 0;
Male_Age_61_Low_Weight = 0;
Male_Age_62_Low_Weight = 0;
Male_Age_63_Low_Weight = 0;
Male_Age_64_Low_Weight = 0;
Male_Age_65_Low_Weight = 0;
Male_Age_66_Low_Weight = 0;
Male_Age_67_Low_Weight = 0;
Male_Age_68_Low_Weight = 0;
Male_Age_69_Low_Weight = 0;
Male_Age_70_Low_Weight = 0;
Male_Age_71_Low_Weight = 0;
Male_Age_72_Low_Weight = 0;
Male_Age_73_Low_Weight = 0;
Male_Age_74_Low_Weight = 0;
Male_Age_75_Low_Weight = 0;
Male_Age_76_Low_Weight = 0;
Male_Age_77_Low_Weight = 0;
Male_Age_78_Low_Weight = 0;
Male_Age_79_Low_Weight = 0;
Male_Age_80_Low_Weight = 0;
Male_Age_81_Low_Weight = 0;
Male_Age_82_Low_Weight = 0;
Male_Age_83_Low_Weight = 0;
Male_Age_84_Low_Weight = 0;
Male_Age_85_Low_Weight = 0;

Male_Age_1_Low_Height = 0;
Male_Age_2_Low_Height = 0;
Male_Age_3_Low_Height = 0;
Male_Age_4_Low_Height = 0;
Male_Age_5_Low_Height = 0;
Male_Age_6_Low_Height = 0;
Male_Age_7_Low_Height = 0;
Male_Age_8_Low_Height = 0;
Male_Age_9_Low_Height = 0;
Male_Age_10_Low_Height = 0;
Male_Age_11_Low_Height = 0;
Male_Age_12_Low_Height = 0;
Male_Age_13_Low_Height = 0;
Male_Age_14_Low_Height = 0;
Male_Age_15_Low_Height = 0;
Male_Age_16_Low_Height = 0;
Male_Age_17_Low_Height = 0;
Male_Age_18_Low_Height = 0;
Male_Age_19_Low_Height = 0;
Male_Age_20_Low_Height = 0;
Male_Age_21_Low_Height = 0;
Male_Age_22_Low_Height = 0;
Male_Age_23_Low_Height = 0;
Male_Age_24_Low_Height = 0;
Male_Age_25_Low_Height = 0;
Male_Age_26_Low_Height = 0;
Male_Age_27_Low_Height = 0;
Male_Age_28_Low_Height = 0;
Male_Age_29_Low_Height = 0;
Male_Age_30_Low_Height = 0;
Male_Age_31_Low_Height = 0;
Male_Age_32_Low_Height = 0;
Male_Age_33_Low_Height = 0;
Male_Age_34_Low_Height = 0;
Male_Age_35_Low_Height = 0;
Male_Age_36_Low_Height = 0;
Male_Age_37_Low_Height = 0;
Male_Age_38_Low_Height = 0;
Male_Age_39_Low_Height = 0;
Male_Age_40_Low_Height = 0;
Male_Age_41_Low_Height = 0;
Male_Age_42_Low_Height = 0;
Male_Age_43_Low_Height = 0;
Male_Age_44_Low_Height = 0;
Male_Age_45_Low_Height = 0;
Male_Age_46_Low_Height = 0;
Male_Age_47_Low_Height = 0;
Male_Age_48_Low_Height = 0;
Male_Age_49_Low_Height = 0;
Male_Age_50_Low_Height = 0;
Male_Age_51_Low_Height = 0;
Male_Age_52_Low_Height = 0;
Male_Age_53_Low_Height = 0;
Male_Age_54_Low_Height = 0;
Male_Age_55_Low_Height = 0;
Male_Age_56_Low_Height = 0;
Male_Age_57_Low_Height = 0;
Male_Age_58_Low_Height = 0;
Male_Age_59_Low_Height = 0;
Male_Age_60_Low_Height = 0;
Male_Age_61_Low_Height = 0;
Male_Age_62_Low_Height = 0;
Male_Age_63_Low_Height = 0;
Male_Age_64_Low_Height = 0;
Male_Age_65_Low_Height = 0;
Male_Age_66_Low_Height = 0;
Male_Age_67_Low_Height = 0;
Male_Age_68_Low_Height = 0;
Male_Age_69_Low_Height = 0;
Male_Age_70_Low_Height = 0;
Male_Age_71_Low_Height = 0;
Male_Age_72_Low_Height = 0;
Male_Age_73_Low_Height = 0;
Male_Age_74_Low_Height = 0;
Male_Age_75_Low_Height = 0;
Male_Age_76_Low_Height = 0;
Male_Age_77_Low_Height = 0;
Male_Age_78_Low_Height = 0;
Male_Age_79_Low_Height = 0;
Male_Age_80_Low_Height = 0;
Male_Age_81_Low_Height = 0;
Male_Age_82_Low_Height = 0;
Male_Age_83_Low_Height = 0;
Male_Age_84_Low_Height = 0;
Male_Age_85_Low_Height = 0;

% Upper limit
Male_Age_1_Up_Weight = 0;
Male_Age_2_Up_Weight = 0;
Male_Age_3_Up_Weight = 0;
Male_Age_4_Up_Weight = 0;
Male_Age_5_Up_Weight = 0;
Male_Age_6_Up_Weight = 0;
Male_Age_7_Up_Weight = 0;
Male_Age_8_Up_Weight = 0;
Male_Age_9_Up_Weight = 0;
Male_Age_10_Up_Weight = 0;
Male_Age_11_Up_Weight = 0;
Male_Age_12_Up_Weight = 0;
Male_Age_13_Up_Weight = 0;
Male_Age_14_Up_Weight = 0;
Male_Age_15_Up_Weight = 0;
Male_Age_16_Up_Weight = 0;
Male_Age_17_Up_Weight = 0;
Male_Age_18_Up_Weight = 0;
Male_Age_19_Up_Weight = 0;
Male_Age_20_Up_Weight = 0;
Male_Age_21_Up_Weight = 0;
Male_Age_22_Up_Weight = 0;
Male_Age_23_Up_Weight = 0;
Male_Age_24_Up_Weight = 0;
Male_Age_25_Up_Weight = 0;
Male_Age_26_Up_Weight = 0;
Male_Age_27_Up_Weight = 0;
Male_Age_28_Up_Weight = 0;
Male_Age_29_Up_Weight = 0;
Male_Age_30_Up_Weight = 0;
Male_Age_31_Up_Weight = 0;
Male_Age_32_Up_Weight = 0;
Male_Age_33_Up_Weight = 0;
Male_Age_34_Up_Weight = 0;
Male_Age_35_Up_Weight = 0;
Male_Age_36_Up_Weight = 0;
Male_Age_37_Up_Weight = 0;
Male_Age_38_Up_Weight = 0;
Male_Age_39_Up_Weight = 0;
Male_Age_40_Up_Weight = 0;
Male_Age_41_Up_Weight = 0;
Male_Age_42_Up_Weight = 0;
Male_Age_43_Up_Weight = 0;
Male_Age_44_Up_Weight = 0;
Male_Age_45_Up_Weight = 0;
Male_Age_46_Up_Weight = 0;
Male_Age_47_Up_Weight = 0;
Male_Age_48_Up_Weight = 0;
Male_Age_49_Up_Weight = 0;
Male_Age_50_Up_Weight = 0;
Male_Age_51_Up_Weight = 0;
Male_Age_52_Up_Weight = 0;
Male_Age_53_Up_Weight = 0;
Male_Age_54_Up_Weight = 0;
Male_Age_55_Up_Weight = 0;
Male_Age_56_Up_Weight = 0;
Male_Age_57_Up_Weight = 0;
Male_Age_58_Up_Weight = 0;
Male_Age_59_Up_Weight = 0;
Male_Age_60_Up_Weight = 0;
Male_Age_61_Up_Weight = 0;
Male_Age_62_Up_Weight = 0;
Male_Age_63_Up_Weight = 0;
Male_Age_64_Up_Weight = 0;
Male_Age_65_Up_Weight = 0;
Male_Age_66_Up_Weight = 0;
Male_Age_67_Up_Weight = 0;
Male_Age_68_Up_Weight = 0;
Male_Age_69_Up_Weight = 0;
Male_Age_70_Up_Weight = 0;
Male_Age_71_Up_Weight = 0;
Male_Age_72_Up_Weight = 0;
Male_Age_73_Up_Weight = 0;
Male_Age_74_Up_Weight = 0;
Male_Age_75_Up_Weight = 0;
Male_Age_76_Up_Weight = 0;
Male_Age_77_Up_Weight = 0;
Male_Age_78_Up_Weight = 0;
Male_Age_79_Up_Weight = 0;
Male_Age_80_Up_Weight = 0;
Male_Age_81_Up_Weight = 0;
Male_Age_82_Up_Weight = 0;
Male_Age_83_Up_Weight = 0;
Male_Age_84_Up_Weight = 0;
Male_Age_85_Up_Weight = 0;

Male_Age_1_Up_Height = 0;
Male_Age_2_Up_Height = 0;
Male_Age_3_Up_Height = 0;
Male_Age_4_Up_Height = 0;
Male_Age_5_Up_Height = 0;
Male_Age_6_Up_Height = 0;
Male_Age_7_Up_Height = 0;
Male_Age_8_Up_Height = 0;
Male_Age_9_Up_Height = 0;
Male_Age_10_Up_Height = 0;
Male_Age_11_Up_Height = 0;
Male_Age_12_Up_Height = 0;
Male_Age_13_Up_Height = 0;
Male_Age_14_Up_Height = 0;
Male_Age_15_Up_Height = 0;
Male_Age_16_Up_Height = 0;
Male_Age_17_Up_Height = 0;
Male_Age_18_Up_Height = 0;
Male_Age_19_Up_Height = 0;
Male_Age_20_Up_Height = 0;
Male_Age_21_Up_Height = 0;
Male_Age_22_Up_Height = 0;
Male_Age_23_Up_Height = 0;
Male_Age_24_Up_Height = 0;
Male_Age_25_Up_Height = 0;
Male_Age_26_Up_Height = 0;
Male_Age_27_Up_Height = 0;
Male_Age_28_Up_Height = 0;
Male_Age_29_Up_Height = 0;
Male_Age_30_Up_Height = 0;
Male_Age_31_Up_Height = 0;
Male_Age_32_Up_Height = 0;
Male_Age_33_Up_Height = 0;
Male_Age_34_Up_Height = 0;
Male_Age_35_Up_Height = 0;
Male_Age_36_Up_Height = 0;
Male_Age_37_Up_Height = 0;
Male_Age_38_Up_Height = 0;
Male_Age_39_Up_Height = 0;
Male_Age_40_Up_Height = 0;
Male_Age_41_Up_Height = 0;
Male_Age_42_Up_Height = 0;
Male_Age_43_Up_Height = 0;
Male_Age_44_Up_Height = 0;
Male_Age_45_Up_Height = 0;
Male_Age_46_Up_Height = 0;
Male_Age_47_Up_Height = 0;
Male_Age_48_Up_Height = 0;
Male_Age_49_Up_Height = 0;
Male_Age_50_Up_Height = 0;
Male_Age_51_Up_Height = 0;
Male_Age_52_Up_Height = 0;
Male_Age_53_Up_Height = 0;
Male_Age_54_Up_Height = 0;
Male_Age_55_Up_Height = 0;
Male_Age_56_Up_Height = 0;
Male_Age_57_Up_Height = 0;
Male_Age_58_Up_Height = 0;
Male_Age_59_Up_Height = 0;
Male_Age_60_Up_Height = 0;
Male_Age_61_Up_Height = 0;
Male_Age_62_Up_Height = 0;
Male_Age_63_Up_Height = 0;
Male_Age_64_Up_Height = 0;
Male_Age_65_Up_Height = 0;
Male_Age_66_Up_Height = 0;
Male_Age_67_Up_Height = 0;
Male_Age_68_Up_Height = 0;
Male_Age_69_Up_Height = 0;
Male_Age_70_Up_Height = 0;
Male_Age_71_Up_Height = 0;
Male_Age_72_Up_Height = 0;
Male_Age_73_Up_Height = 0;
Male_Age_74_Up_Height = 0;
Male_Age_75_Up_Height = 0;
Male_Age_76_Up_Height = 0;
Male_Age_77_Up_Height = 0;
Male_Age_78_Up_Height = 0;
Male_Age_79_Up_Height = 0;
Male_Age_80_Up_Height = 0;
Male_Age_81_Up_Height = 0;
Male_Age_82_Up_Height = 0;
Male_Age_83_Up_Height = 0;
Male_Age_84_Up_Height = 0;
Male_Age_85_Up_Height = 0;

% For Female
% Age 1
PP = prctile(Female_data_1(:,1),My_percentile); % Height
Female_Age_1_Low_Height = PP(1);
Female_Age_1_Up_Height = PP(2);
PP = prctile(Female_data_1(:,2),My_percentile); % Weight
Female_Age_1_Low_Weight = PP(1);
Female_Age_1_Up_Weight = PP(2);
% Age 2
PP = prctile(Female_data_2(:,1),My_percentile); % Height
Female_Age_2_Low_Height = PP(1);
Female_Age_2_Up_Height = PP(2);
PP = prctile(Female_data_2(:,2),My_percentile); % Weight
Female_Age_2_Low_Weight = PP(1);
Female_Age_2_Up_Weight = PP(2);
% Age 3
PP = prctile(Female_data_3(:,1),My_percentile); % Height
Female_Age_3_Low_Height = PP(1);
Female_Age_3_Up_Height = PP(2);
PP = prctile(Female_data_3(:,2),My_percentile); % Weight
Female_Age_3_Low_Weight = PP(1);
Female_Age_3_Up_Weight = PP(2);
% Age 4
PP = prctile(Female_data_4(:,1),My_percentile); % Height
Female_Age_4_Low_Height = PP(1);
Female_Age_4_Up_Height = PP(2);
PP = prctile(Female_data_4(:,2),My_percentile); % Weight
Female_Age_4_Low_Weight = PP(1);
Female_Age_4_Up_Weight = PP(2);
% Age 5
PP = prctile(Female_data_5(:,1),My_percentile); % Height
Female_Age_5_Low_Height = PP(1);
Female_Age_5_Up_Height = PP(2);
PP = prctile(Female_data_5(:,2),My_percentile); % Weight
Female_Age_5_Low_Weight = PP(1);
Female_Age_5_Up_Weight = PP(2);
% Age 6
PP = prctile(Female_data_6(:,1),My_percentile); % Height
Female_Age_6_Low_Height = PP(1);
Female_Age_6_Up_Height = PP(2);
PP = prctile(Female_data_6(:,2),My_percentile); % Weight
Female_Age_6_Low_Weight = PP(1);
Female_Age_6_Up_Weight = PP(2);
% Age 7
PP = prctile(Female_data_7(:,1),My_percentile); % Height
Female_Age_7_Low_Height = PP(1);
Female_Age_7_Up_Height = PP(2);
PP = prctile(Female_data_7(:,2),My_percentile); % Weight
Female_Age_7_Low_Weight = PP(1);
Female_Age_7_Up_Weight = PP(2);
% Age 8
PP = prctile(Female_data_8(:,1),My_percentile); % Height
Female_Age_8_Low_Height = PP(1);
Female_Age_8_Up_Height = PP(2);
PP = prctile(Female_data_8(:,2),My_percentile); % Weight
Female_Age_8_Low_Weight = PP(1);
Female_Age_8_Up_Weight = PP(2);
% Age 9
PP = prctile(Female_data_9(:,1),My_percentile); % Height
Female_Age_9_Low_Height = PP(1);
Female_Age_9_Up_Height = PP(2);
PP = prctile(Female_data_9(:,2),My_percentile); % Weight
Female_Age_9_Low_Weight = PP(1);
Female_Age_9_Up_Weight = PP(2);
% Age 10
PP = prctile(Female_data_10(:,1),My_percentile); % Height
Female_Age_10_Low_Height = PP(1);
Female_Age_10_Up_Height = PP(2);
PP = prctile(Female_data_10(:,2),My_percentile); % Weight
Female_Age_10_Low_Weight = PP(1);
Female_Age_10_Up_Weight = PP(2);
% Age 11
PP = prctile(Female_data_11(:,1),My_percentile); % Height
Female_Age_11_Low_Height = PP(1);
Female_Age_11_Up_Height = PP(2);
PP = prctile(Female_data_11(:,2),My_percentile); % Weight
Female_Age_11_Low_Weight = PP(1);
Female_Age_11_Up_Weight = PP(2);
% Age 12
PP = prctile(Female_data_12(:,1),My_percentile); % Height
Female_Age_12_Low_Height = PP(1);
Female_Age_12_Up_Height = PP(2);
PP = prctile(Female_data_12(:,2),My_percentile); % Weight
Female_Age_12_Low_Weight = PP(1);
Female_Age_12_Up_Weight = PP(2);
% Age 13
PP = prctile(Female_data_13(:,1),My_percentile); % Height
Female_Age_13_Low_Height = PP(1);
Female_Age_13_Up_Height = PP(2);
PP = prctile(Female_data_13(:,2),My_percentile); % Weight
Female_Age_13_Low_Weight = PP(1);
Female_Age_13_Up_Weight = PP(2);
% Age 14
PP = prctile(Female_data_14(:,1),My_percentile); % Height
Female_Age_14_Low_Height = PP(1);
Female_Age_14_Up_Height = PP(2);
PP = prctile(Female_data_14(:,2),My_percentile); % Weight
Female_Age_14_Low_Weight = PP(1);
Female_Age_14_Up_Weight = PP(2);
% Age 15
PP = prctile(Female_data_15(:,1),My_percentile); % Height
Female_Age_15_Low_Height = PP(1);
Female_Age_15_Up_Height = PP(2);
PP = prctile(Female_data_15(:,2),My_percentile); % Weight
Female_Age_15_Low_Weight = PP(1);
Female_Age_15_Up_Weight = PP(2);
% Age 16
PP = prctile(Female_data_16(:,1),My_percentile); % Height
Female_Age_16_Low_Height = PP(1);
Female_Age_16_Up_Height = PP(2);
PP = prctile(Female_data_16(:,2),My_percentile); % Weight
Female_Age_16_Low_Weight = PP(1);
Female_Age_16_Up_Weight = PP(2);
% Age 17
PP = prctile(Female_data_17(:,1),My_percentile); % Height
Female_Age_17_Low_Height = PP(1);
Female_Age_17_Up_Height = PP(2);
PP = prctile(Female_data_17(:,2),My_percentile); % Weight
Female_Age_17_Low_Weight = PP(1);
Female_Age_17_Up_Weight = PP(2);
% Age 18
PP = prctile(Female_data_18(:,1),My_percentile); % Height
Female_Age_18_Low_Height = PP(1);
Female_Age_18_Up_Height = PP(2);
PP = prctile(Female_data_18(:,2),My_percentile); % Weight
Female_Age_18_Low_Weight = PP(1);
Female_Age_18_Up_Weight = PP(2);
% Age 19
PP = prctile(Female_data_19(:,1),My_percentile); % Height
Female_Age_19_Low_Height = PP(1);
Female_Age_19_Up_Height = PP(2);
PP = prctile(Female_data_19(:,2),My_percentile); % Weight
Female_Age_19_Low_Weight = PP(1);
Female_Age_19_Up_Weight = PP(2);
% Age 20
PP = prctile(Female_data_20(:,1),My_percentile); % Height
Female_Age_20_Low_Height = PP(1);
Female_Age_20_Up_Height = PP(2);
PP = prctile(Female_data_20(:,2),My_percentile); % Weight
Female_Age_20_Low_Weight = PP(1);
Female_Age_20_Up_Weight = PP(2);
% Age 21
PP = prctile(Female_data_21(:,1),My_percentile); % Height
Female_Age_21_Low_Height = PP(1);
Female_Age_21_Up_Height = PP(2);
PP = prctile(Female_data_21(:,2),My_percentile); % Weight
Female_Age_21_Low_Weight = PP(1);
Female_Age_21_Up_Weight = PP(2);
% Age 22
PP = prctile(Female_data_22(:,1),My_percentile); % Height
Female_Age_22_Low_Height = PP(1);
Female_Age_22_Up_Height = PP(2);
PP = prctile(Female_data_22(:,2),My_percentile); % Weight
Female_Age_22_Low_Weight = PP(1);
Female_Age_22_Up_Weight = PP(2);
% Age 23
PP = prctile(Female_data_23(:,1),My_percentile); % Height
Female_Age_23_Low_Height = PP(1);
Female_Age_23_Up_Height = PP(2);
PP = prctile(Female_data_23(:,2),My_percentile); % Weight
Female_Age_23_Low_Weight = PP(1);
Female_Age_23_Up_Weight = PP(2);
% Age 24
PP = prctile(Female_data_24(:,1),My_percentile); % Height
Female_Age_24_Low_Height = PP(1);
Female_Age_24_Up_Height = PP(2);
PP = prctile(Female_data_24(:,2),My_percentile); % Weight
Female_Age_24_Low_Weight = PP(1);
Female_Age_24_Up_Weight = PP(2);
% Age 25
PP = prctile(Female_data_25(:,1),My_percentile); % Height
Female_Age_25_Low_Height = PP(1);
Female_Age_25_Up_Height = PP(2);
PP = prctile(Female_data_25(:,2),My_percentile); % Weight
Female_Age_25_Low_Weight = PP(1);
Female_Age_25_Up_Weight = PP(2);
% Age 26
PP = prctile(Female_data_26(:,1),My_percentile); % Height
Female_Age_26_Low_Height = PP(1);
Female_Age_26_Up_Height = PP(2);
PP = prctile(Female_data_26(:,2),My_percentile); % Weight
Female_Age_26_Low_Weight = PP(1);
Female_Age_26_Up_Weight = PP(2);
% Age 27
PP = prctile(Female_data_27(:,1),My_percentile); % Height
Female_Age_27_Low_Height = PP(1);
Female_Age_27_Up_Height = PP(2);
PP = prctile(Female_data_27(:,2),My_percentile); % Weight
Female_Age_27_Low_Weight = PP(1);
Female_Age_27_Up_Weight = PP(2);
% Age 28
PP = prctile(Female_data_28(:,1),My_percentile); % Height
Female_Age_28_Low_Height = PP(1);
Female_Age_28_Up_Height = PP(2);
PP = prctile(Female_data_28(:,2),My_percentile); % Weight
Female_Age_28_Low_Weight = PP(1);
Female_Age_28_Up_Weight = PP(2);
% Age 29
PP = prctile(Female_data_29(:,1),My_percentile); % Height
Female_Age_29_Low_Height = PP(1);
Female_Age_29_Up_Height = PP(2);
PP = prctile(Female_data_29(:,2),My_percentile); % Weight
Female_Age_29_Low_Weight = PP(1);
Female_Age_29_Up_Weight = PP(2);
% Age 30
PP = prctile(Female_data_30(:,1),My_percentile); % Height
Female_Age_30_Low_Height = PP(1);
Female_Age_30_Up_Height = PP(2);
PP = prctile(Female_data_30(:,2),My_percentile); % Weight
Female_Age_30_Low_Weight = PP(1);
Female_Age_30_Up_Weight = PP(2);
% Age 31
PP = prctile(Female_data_31(:,1),My_percentile); % Height
Female_Age_31_Low_Height = PP(1);
Female_Age_31_Up_Height = PP(2);
PP = prctile(Female_data_31(:,2),My_percentile); % Weight
Female_Age_31_Low_Weight = PP(1);
Female_Age_31_Up_Weight = PP(2);
% Age 32
PP = prctile(Female_data_32(:,1),My_percentile); % Height
Female_Age_32_Low_Height = PP(1);
Female_Age_32_Up_Height = PP(2);
PP = prctile(Female_data_32(:,2),My_percentile); % Weight
Female_Age_32_Low_Weight = PP(1);
Female_Age_32_Up_Weight = PP(2);
% Age 33
PP = prctile(Female_data_33(:,1),My_percentile); % Height
Female_Age_33_Low_Height = PP(1);
Female_Age_33_Up_Height = PP(2);
PP = prctile(Female_data_33(:,2),My_percentile); % Weight
Female_Age_33_Low_Weight = PP(1);
Female_Age_33_Up_Weight = PP(2);
% Age 34
PP = prctile(Female_data_34(:,1),My_percentile); % Height
Female_Age_34_Low_Height = PP(1);
Female_Age_34_Up_Height = PP(2);
PP = prctile(Female_data_34(:,2),My_percentile); % Weight
Female_Age_34_Low_Weight = PP(1);
Female_Age_34_Up_Weight = PP(2);
% Age 35
PP = prctile(Female_data_35(:,1),My_percentile); % Height
Female_Age_35_Low_Height = PP(1);
Female_Age_35_Up_Height = PP(2);
PP = prctile(Female_data_35(:,2),My_percentile); % Weight
Female_Age_35_Low_Weight = PP(1);
Female_Age_35_Up_Weight = PP(2);
% Age 36
PP = prctile(Female_data_36(:,1),My_percentile); % Height
Female_Age_36_Low_Height = PP(1);
Female_Age_36_Up_Height = PP(2);
PP = prctile(Female_data_36(:,2),My_percentile); % Weight
Female_Age_36_Low_Weight = PP(1);
Female_Age_36_Up_Weight = PP(2);
% Age 37
PP = prctile(Female_data_37(:,1),My_percentile); % Height
Female_Age_37_Low_Height = PP(1);
Female_Age_37_Up_Height = PP(2);
PP = prctile(Female_data_37(:,2),My_percentile); % Weight
Female_Age_37_Low_Weight = PP(1);
Female_Age_37_Up_Weight = PP(2);
% Age 38
PP = prctile(Female_data_38(:,1),My_percentile); % Height
Female_Age_38_Low_Height = PP(1);
Female_Age_38_Up_Height = PP(2);
PP = prctile(Female_data_38(:,2),My_percentile); % Weight
Female_Age_38_Low_Weight = PP(1);
Female_Age_38_Up_Weight = PP(2);
% Age 39
PP = prctile(Female_data_39(:,1),My_percentile); % Height
Female_Age_39_Low_Height = PP(1);
Female_Age_39_Up_Height = PP(2);
PP = prctile(Female_data_39(:,2),My_percentile); % Weight
Female_Age_39_Low_Weight = PP(1);
Female_Age_39_Up_Weight = PP(2);
% Age 40
PP = prctile(Female_data_40(:,1),My_percentile); % Height
Female_Age_40_Low_Height = PP(1);
Female_Age_40_Up_Height = PP(2);
PP = prctile(Female_data_40(:,2),My_percentile); % Weight
Female_Age_40_Low_Weight = PP(1);
Female_Age_40_Up_Weight = PP(2);
% Age 41
PP = prctile(Female_data_41(:,1),My_percentile); % Height
Female_Age_41_Low_Height = PP(1);
Female_Age_41_Up_Height = PP(2);
PP = prctile(Female_data_41(:,2),My_percentile); % Weight
Female_Age_41_Low_Weight = PP(1);
Female_Age_41_Up_Weight = PP(2);
% Age 42
PP = prctile(Female_data_42(:,1),My_percentile); % Height
Female_Age_42_Low_Height = PP(1);
Female_Age_42_Up_Height = PP(2);
PP = prctile(Female_data_42(:,2),My_percentile); % Weight
Female_Age_42_Low_Weight = PP(1);
Female_Age_42_Up_Weight = PP(2);
% Age 43
PP = prctile(Female_data_43(:,1),My_percentile); % Height
Female_Age_43_Low_Height = PP(1);
Female_Age_43_Up_Height = PP(2);
PP = prctile(Female_data_43(:,2),My_percentile); % Weight
Female_Age_43_Low_Weight = PP(1);
Female_Age_43_Up_Weight = PP(2);
% Age 44
PP = prctile(Female_data_44(:,1),My_percentile); % Height
Female_Age_44_Low_Height = PP(1);
Female_Age_44_Up_Height = PP(2);
PP = prctile(Female_data_44(:,2),My_percentile); % Weight
Female_Age_44_Low_Weight = PP(1);
Female_Age_44_Up_Weight = PP(2);
% Age 45
PP = prctile(Female_data_45(:,1),My_percentile); % Height
Female_Age_45_Low_Height = PP(1);
Female_Age_45_Up_Height = PP(2);
PP = prctile(Female_data_45(:,2),My_percentile); % Weight
Female_Age_45_Low_Weight = PP(1);
Female_Age_45_Up_Weight = PP(2);
% Age 46
PP = prctile(Female_data_46(:,1),My_percentile); % Height
Female_Age_46_Low_Height = PP(1);
Female_Age_46_Up_Height = PP(2);
PP = prctile(Female_data_46(:,2),My_percentile); % Weight
Female_Age_46_Low_Weight = PP(1);
Female_Age_46_Up_Weight = PP(2);
% Age 47
PP = prctile(Female_data_47(:,1),My_percentile); % Height
Female_Age_47_Low_Height = PP(1);
Female_Age_47_Up_Height = PP(2);
PP = prctile(Female_data_47(:,2),My_percentile); % Weight
Female_Age_47_Low_Weight = PP(1);
Female_Age_47_Up_Weight = PP(2);
% Age 48
PP = prctile(Female_data_48(:,1),My_percentile); % Height
Female_Age_48_Low_Height = PP(1);
Female_Age_48_Up_Height = PP(2);
PP = prctile(Female_data_48(:,2),My_percentile); % Weight
Female_Age_48_Low_Weight = PP(1);
Female_Age_48_Up_Weight = PP(2);
% Age 49
PP = prctile(Female_data_49(:,1),My_percentile); % Height
Female_Age_49_Low_Height = PP(1);
Female_Age_49_Up_Height = PP(2);
PP = prctile(Female_data_49(:,2),My_percentile); % Weight
Female_Age_49_Low_Weight = PP(1);
Female_Age_49_Up_Weight = PP(2);
% Age 50
PP = prctile(Female_data_50(:,1),My_percentile); % Height
Female_Age_50_Low_Height = PP(1);
Female_Age_50_Up_Height = PP(2);
PP = prctile(Female_data_50(:,2),My_percentile); % Weight
Female_Age_50_Low_Weight = PP(1);
Female_Age_50_Up_Weight = PP(2);
% Age 51
PP = prctile(Female_data_51(:,1),My_percentile); % Height
Female_Age_51_Low_Height = PP(1);
Female_Age_51_Up_Height = PP(2);
PP = prctile(Female_data_51(:,2),My_percentile); % Weight
Female_Age_51_Low_Weight = PP(1);
Female_Age_51_Up_Weight = PP(2);
% Age 52
PP = prctile(Female_data_52(:,1),My_percentile); % Height
Female_Age_52_Low_Height = PP(1);
Female_Age_52_Up_Height = PP(2);
PP = prctile(Female_data_52(:,2),My_percentile); % Weight
Female_Age_52_Low_Weight = PP(1);
Female_Age_52_Up_Weight = PP(2);
% Age 53
PP = prctile(Female_data_53(:,1),My_percentile); % Height
Female_Age_53_Low_Height = PP(1);
Female_Age_53_Up_Height = PP(2);
PP = prctile(Female_data_53(:,2),My_percentile); % Weight
Female_Age_53_Low_Weight = PP(1);
Female_Age_53_Up_Weight = PP(2);
% Age 54
PP = prctile(Female_data_54(:,1),My_percentile); % Height
Female_Age_54_Low_Height = PP(1);
Female_Age_54_Up_Height = PP(2);
PP = prctile(Female_data_54(:,2),My_percentile); % Weight
Female_Age_54_Low_Weight = PP(1);
Female_Age_54_Up_Weight = PP(2);
% Age 55
PP = prctile(Female_data_55(:,1),My_percentile); % Height
Female_Age_55_Low_Height = PP(1);
Female_Age_55_Up_Height = PP(2);
PP = prctile(Female_data_55(:,2),My_percentile); % Weight
Female_Age_55_Low_Weight = PP(1);
Female_Age_55_Up_Weight = PP(2);
% Age 56
PP = prctile(Female_data_56(:,1),My_percentile); % Height
Female_Age_56_Low_Height = PP(1);
Female_Age_56_Up_Height = PP(2);
PP = prctile(Female_data_56(:,2),My_percentile); % Weight
Female_Age_56_Low_Weight = PP(1);
Female_Age_56_Up_Weight = PP(2);
% Age 57
PP = prctile(Female_data_57(:,1),My_percentile); % Height
Female_Age_57_Low_Height = PP(1);
Female_Age_57_Up_Height = PP(2);
PP = prctile(Female_data_57(:,2),My_percentile); % Weight
Female_Age_57_Low_Weight = PP(1);
Female_Age_57_Up_Weight = PP(2);
% Age 58
PP = prctile(Female_data_58(:,1),My_percentile); % Height
Female_Age_58_Low_Height = PP(1);
Female_Age_58_Up_Height = PP(2);
PP = prctile(Female_data_58(:,2),My_percentile); % Weight
Female_Age_58_Low_Weight = PP(1);
Female_Age_58_Up_Weight = PP(2);
% Age 59
PP = prctile(Female_data_59(:,1),My_percentile); % Height
Female_Age_59_Low_Height = PP(1);
Female_Age_59_Up_Height = PP(2);
PP = prctile(Female_data_59(:,2),My_percentile); % Weight
Female_Age_59_Low_Weight = PP(1);
Female_Age_59_Up_Weight = PP(2);
% Age 60
PP = prctile(Female_data_60(:,1),My_percentile); % Height
Female_Age_60_Low_Height = PP(1);
Female_Age_60_Up_Height = PP(2);
PP = prctile(Female_data_60(:,2),My_percentile); % Weight
Female_Age_60_Low_Weight = PP(1);
Female_Age_60_Up_Weight = PP(2);
% Age 61
PP = prctile(Female_data_61(:,1),My_percentile); % Height
Female_Age_61_Low_Height = PP(1);
Female_Age_61_Up_Height = PP(2);
PP = prctile(Female_data_61(:,2),My_percentile); % Weight
Female_Age_61_Low_Weight = PP(1);
Female_Age_61_Up_Weight = PP(2);
% Age 62
PP = prctile(Female_data_62(:,1),My_percentile); % Height
Female_Age_62_Low_Height = PP(1);
Female_Age_62_Up_Height = PP(2);
PP = prctile(Female_data_62(:,2),My_percentile); % Weight
Female_Age_62_Low_Weight = PP(1);
Female_Age_62_Up_Weight = PP(2);
% Age 63
PP = prctile(Female_data_63(:,1),My_percentile); % Height
Female_Age_63_Low_Height = PP(1);
Female_Age_63_Up_Height = PP(2);
PP = prctile(Female_data_63(:,2),My_percentile); % Weight
Female_Age_63_Low_Weight = PP(1);
Female_Age_63_Up_Weight = PP(2);
% Age 64
PP = prctile(Female_data_64(:,1),My_percentile); % Height
Female_Age_64_Low_Height = PP(1);
Female_Age_64_Up_Height = PP(2);
PP = prctile(Female_data_64(:,2),My_percentile); % Weight
Female_Age_64_Low_Weight = PP(1);
Female_Age_64_Up_Weight = PP(2);
% Age 65
PP = prctile(Female_data_65(:,1),My_percentile); % Height
Female_Age_65_Low_Height = PP(1);
Female_Age_65_Up_Height = PP(2);
PP = prctile(Female_data_65(:,2),My_percentile); % Weight
Female_Age_65_Low_Weight = PP(1);
Female_Age_65_Up_Weight = PP(2);
% Age 66
PP = prctile(Female_data_66(:,1),My_percentile); % Height
Female_Age_66_Low_Height = PP(1);
Female_Age_66_Up_Height = PP(2);
PP = prctile(Female_data_66(:,2),My_percentile); % Weight
Female_Age_66_Low_Weight = PP(1);
Female_Age_66_Up_Weight = PP(2);
% Age 67
PP = prctile(Female_data_67(:,1),My_percentile); % Height
Female_Age_67_Low_Height = PP(1);
Female_Age_67_Up_Height = PP(2);
PP = prctile(Female_data_67(:,2),My_percentile); % Weight
Female_Age_67_Low_Weight = PP(1);
Female_Age_67_Up_Weight = PP(2);
% Age 68
PP = prctile(Female_data_68(:,1),My_percentile); % Height
Female_Age_68_Low_Height = PP(1);
Female_Age_68_Up_Height = PP(2);
PP = prctile(Female_data_68(:,2),My_percentile); % Weight
Female_Age_68_Low_Weight = PP(1);
Female_Age_68_Up_Weight = PP(2);
% Age 69
PP = prctile(Female_data_69(:,1),My_percentile); % Height
Female_Age_69_Low_Height = PP(1);
Female_Age_69_Up_Height = PP(2);
PP = prctile(Female_data_69(:,2),My_percentile); % Weight
Female_Age_69_Low_Weight = PP(1);
Female_Age_69_Up_Weight = PP(2);
% Age 70
PP = prctile(Female_data_70(:,1),My_percentile); % Height
Female_Age_70_Low_Height = PP(1);
Female_Age_70_Up_Height = PP(2);
PP = prctile(Female_data_70(:,2),My_percentile); % Weight
Female_Age_70_Low_Weight = PP(1);
Female_Age_70_Up_Weight = PP(2);
% Age 71
PP = prctile(Female_data_71(:,1),My_percentile); % Height
Female_Age_71_Low_Height = PP(1);
Female_Age_71_Up_Height = PP(2);
PP = prctile(Female_data_71(:,2),My_percentile); % Weight
Female_Age_71_Low_Weight = PP(1);
Female_Age_71_Up_Weight = PP(2);
% Age 72
PP = prctile(Female_data_72(:,1),My_percentile); % Height
Female_Age_72_Low_Height = PP(1);
Female_Age_72_Up_Height = PP(2);
PP = prctile(Female_data_72(:,2),My_percentile); % Weight
Female_Age_72_Low_Weight = PP(1);
Female_Age_72_Up_Weight = PP(2);
% Age 73
PP = prctile(Female_data_73(:,1),My_percentile); % Height
Female_Age_73_Low_Height = PP(1);
Female_Age_73_Up_Height = PP(2);
PP = prctile(Female_data_73(:,2),My_percentile); % Weight
Female_Age_73_Low_Weight = PP(1);
Female_Age_73_Up_Weight = PP(2);
% Age 74
PP = prctile(Female_data_74(:,1),My_percentile); % Height
Female_Age_74_Low_Height = PP(1);
Female_Age_74_Up_Height = PP(2);
PP = prctile(Female_data_74(:,2),My_percentile); % Weight
Female_Age_74_Low_Weight = PP(1);
Female_Age_74_Up_Weight = PP(2);
% Age 75
PP = prctile(Female_data_75(:,1),My_percentile); % Height
Female_Age_75_Low_Height = PP(1);
Female_Age_75_Up_Height = PP(2);
PP = prctile(Female_data_75(:,2),My_percentile); % Weight
Female_Age_75_Low_Weight = PP(1);
Female_Age_75_Up_Weight = PP(2);
% Age 76
PP = prctile(Female_data_76(:,1),My_percentile); % Height
Female_Age_76_Low_Height = PP(1);
Female_Age_76_Up_Height = PP(2);
PP = prctile(Female_data_76(:,2),My_percentile); % Weight
Female_Age_76_Low_Weight = PP(1);
Female_Age_76_Up_Weight = PP(2);
% Age 77
PP = prctile(Female_data_77(:,1),My_percentile); % Height
Female_Age_77_Low_Height = PP(1);
Female_Age_77_Up_Height = PP(2);
PP = prctile(Female_data_77(:,2),My_percentile); % Weight
Female_Age_77_Low_Weight = PP(1);
Female_Age_77_Up_Weight = PP(2);
% Age 78
PP = prctile(Female_data_78(:,1),My_percentile); % Height
Female_Age_78_Low_Height = PP(1);
Female_Age_78_Up_Height = PP(2);
PP = prctile(Female_data_78(:,2),My_percentile); % Weight
Female_Age_78_Low_Weight = PP(1);
Female_Age_78_Up_Weight = PP(2);
% Age 79
PP = prctile(Female_data_79(:,1),My_percentile); % Height
Female_Age_79_Low_Height = PP(1);
Female_Age_79_Up_Height = PP(2);
PP = prctile(Female_data_79(:,2),My_percentile); % Weight
Female_Age_79_Low_Weight = PP(1);
Female_Age_79_Up_Weight = PP(2);
% Age 80
PP = prctile(Female_data_80(:,1),My_percentile); % Height
Female_Age_80_Low_Height = PP(1);
Female_Age_80_Up_Height = PP(2);
PP = prctile(Female_data_80(:,2),My_percentile); % Weight
Female_Age_80_Low_Weight = PP(1);
Female_Age_80_Up_Weight = PP(2);
% Age 81
PP = prctile(Female_data_81(:,1),My_percentile); % Height
Female_Age_81_Low_Height = PP(1);
Female_Age_81_Up_Height = PP(2);
PP = prctile(Female_data_81(:,2),My_percentile); % Weight
Female_Age_81_Low_Weight = PP(1);
Female_Age_81_Up_Weight = PP(2);
% Age 82
PP = prctile(Female_data_82(:,1),My_percentile); % Height
Female_Age_82_Low_Height = PP(1);
Female_Age_82_Up_Height = PP(2);
PP = prctile(Female_data_82(:,2),My_percentile); % Weight
Female_Age_82_Low_Weight = PP(1);
Female_Age_82_Up_Weight = PP(2);
% Age 83
PP = prctile(Female_data_83(:,1),My_percentile); % Height
Female_Age_83_Low_Height = PP(1);
Female_Age_83_Up_Height = PP(2);
PP = prctile(Female_data_83(:,2),My_percentile); % Weight
Female_Age_83_Low_Weight = PP(1);
Female_Age_83_Up_Weight = PP(2);
% Age 84
PP = prctile(Female_data_84(:,1),My_percentile); % Height
Female_Age_84_Low_Height = PP(1);
Female_Age_84_Up_Height = PP(2);
PP = prctile(Female_data_84(:,2),My_percentile); % Weight
Female_Age_84_Low_Weight = PP(1);
Female_Age_84_Up_Weight = PP(2);
% Age 85
PP = prctile(Female_data_85(:,1),My_percentile); % Height
Female_Age_85_Low_Height = PP(1);
Female_Age_85_Up_Height = PP(2);
PP = prctile(Female_data_85(:,2),My_percentile); % Weight
Female_Age_85_Low_Weight = PP(1);
Female_Age_85_Up_Weight = PP(2);

% Male
% Age 1
PP = prctile(Male_data_1(:,1),My_percentile); % Height
Male_Age_1_Low_Height = PP(1);
Male_Age_1_Up_Height = PP(2);
PP = prctile(Male_data_1(:,2),My_percentile); % Weight
Male_Age_1_Low_Weight = PP(1);
Male_Age_1_Up_Weight = PP(2);
% Age 2
PP = prctile(Male_data_2(:,1),My_percentile); % Height
Male_Age_2_Low_Height = PP(1);
Male_Age_2_Up_Height = PP(2);
PP = prctile(Male_data_2(:,2),My_percentile); % Weight
Male_Age_2_Low_Weight = PP(1);
Male_Age_2_Up_Weight = PP(2);
% Age 3
PP = prctile(Male_data_3(:,1),My_percentile); % Height
Male_Age_3_Low_Height = PP(1);
Male_Age_3_Up_Height = PP(2);
PP = prctile(Male_data_3(:,2),My_percentile); % Weight
Male_Age_3_Low_Weight = PP(1);
Male_Age_3_Up_Weight = PP(2);
% Age 4
PP = prctile(Male_data_4(:,1),My_percentile); % Height
Male_Age_4_Low_Height = PP(1);
Male_Age_4_Up_Height = PP(2);
PP = prctile(Male_data_4(:,2),My_percentile); % Weight
Male_Age_4_Low_Weight = PP(1);
Male_Age_4_Up_Weight = PP(2);
% Age 5
PP = prctile(Male_data_5(:,1),My_percentile); % Height
Male_Age_5_Low_Height = PP(1);
Male_Age_5_Up_Height = PP(2);
PP = prctile(Male_data_5(:,2),My_percentile); % Weight
Male_Age_5_Low_Weight = PP(1);
Male_Age_5_Up_Weight = PP(2);
% Age 6
PP = prctile(Male_data_6(:,1),My_percentile); % Height
Male_Age_6_Low_Height = PP(1);
Male_Age_6_Up_Height = PP(2);
PP = prctile(Male_data_6(:,2),My_percentile); % Weight
Male_Age_6_Low_Weight = PP(1);
Male_Age_6_Up_Weight = PP(2);
% Age 7
PP = prctile(Male_data_7(:,1),My_percentile); % Height
Male_Age_7_Low_Height = PP(1);
Male_Age_7_Up_Height = PP(2);
PP = prctile(Male_data_7(:,2),My_percentile); % Weight
Male_Age_7_Low_Weight = PP(1);
Male_Age_7_Up_Weight = PP(2);
% Age 8
PP = prctile(Male_data_8(:,1),My_percentile); % Height
Male_Age_8_Low_Height = PP(1);
Male_Age_8_Up_Height = PP(2);
PP = prctile(Male_data_8(:,2),My_percentile); % Weight
Male_Age_8_Low_Weight = PP(1);
Male_Age_8_Up_Weight = PP(2);
% Age 9
PP = prctile(Male_data_9(:,1),My_percentile); % Height
Male_Age_9_Low_Height = PP(1);
Male_Age_9_Up_Height = PP(2);
PP = prctile(Male_data_9(:,2),My_percentile); % Weight
Male_Age_9_Low_Weight = PP(1);
Male_Age_9_Up_Weight = PP(2);
% Age 10
PP = prctile(Male_data_10(:,1),My_percentile); % Height
Male_Age_10_Low_Height = PP(1);
Male_Age_10_Up_Height = PP(2);
PP = prctile(Male_data_10(:,2),My_percentile); % Weight
Male_Age_10_Low_Weight = PP(1);
Male_Age_10_Up_Weight = PP(2);
% Age 11
PP = prctile(Male_data_11(:,1),My_percentile); % Height
Male_Age_11_Low_Height = PP(1);
Male_Age_11_Up_Height = PP(2);
PP = prctile(Male_data_11(:,2),My_percentile); % Weight
Male_Age_11_Low_Weight = PP(1);
Male_Age_11_Up_Weight = PP(2);
% Age 12
PP = prctile(Male_data_12(:,1),My_percentile); % Height
Male_Age_12_Low_Height = PP(1);
Male_Age_12_Up_Height = PP(2);
PP = prctile(Male_data_12(:,2),My_percentile); % Weight
Male_Age_12_Low_Weight = PP(1);
Male_Age_12_Up_Weight = PP(2);
% Age 13
PP = prctile(Male_data_13(:,1),My_percentile); % Height
Male_Age_13_Low_Height = PP(1);
Male_Age_13_Up_Height = PP(2);
PP = prctile(Male_data_13(:,2),My_percentile); % Weight
Male_Age_13_Low_Weight = PP(1);
Male_Age_13_Up_Weight = PP(2);
% Age 14
PP = prctile(Male_data_14(:,1),My_percentile); % Height
Male_Age_14_Low_Height = PP(1);
Male_Age_14_Up_Height = PP(2);
PP = prctile(Male_data_14(:,2),My_percentile); % Weight
Male_Age_14_Low_Weight = PP(1);
Male_Age_14_Up_Weight = PP(2);
% Age 15
PP = prctile(Male_data_15(:,1),My_percentile); % Height
Male_Age_15_Low_Height = PP(1);
Male_Age_15_Up_Height = PP(2);
PP = prctile(Male_data_15(:,2),My_percentile); % Weight
Male_Age_15_Low_Weight = PP(1);
Male_Age_15_Up_Weight = PP(2);
% Age 16
PP = prctile(Male_data_16(:,1),My_percentile); % Height
Male_Age_16_Low_Height = PP(1);
Male_Age_16_Up_Height = PP(2);
PP = prctile(Male_data_16(:,2),My_percentile); % Weight
Male_Age_16_Low_Weight = PP(1);
Male_Age_16_Up_Weight = PP(2);
% Age 17
PP = prctile(Male_data_17(:,1),My_percentile); % Height
Male_Age_17_Low_Height = PP(1);
Male_Age_17_Up_Height = PP(2);
PP = prctile(Male_data_17(:,2),My_percentile); % Weight
Male_Age_17_Low_Weight = PP(1);
Male_Age_17_Up_Weight = PP(2);
% Age 18
PP = prctile(Male_data_18(:,1),My_percentile); % Height
Male_Age_18_Low_Height = PP(1);
Male_Age_18_Up_Height = PP(2);
PP = prctile(Male_data_18(:,2),My_percentile); % Weight
Male_Age_18_Low_Weight = PP(1);
Male_Age_18_Up_Weight = PP(2);
% Age 19
PP = prctile(Male_data_19(:,1),My_percentile); % Height
Male_Age_19_Low_Height = PP(1);
Male_Age_19_Up_Height = PP(2);
PP = prctile(Male_data_19(:,2),My_percentile); % Weight
Male_Age_19_Low_Weight = PP(1);
Male_Age_19_Up_Weight = PP(2);
% Age 20
PP = prctile(Male_data_20(:,1),My_percentile); % Height
Male_Age_20_Low_Height = PP(1);
Male_Age_20_Up_Height = PP(2);
PP = prctile(Male_data_20(:,2),My_percentile); % Weight
Male_Age_20_Low_Weight = PP(1);
Male_Age_20_Up_Weight = PP(2);
% Age 21
PP = prctile(Male_data_21(:,1),My_percentile); % Height
Male_Age_21_Low_Height = PP(1);
Male_Age_21_Up_Height = PP(2);
PP = prctile(Male_data_21(:,2),My_percentile); % Weight
Male_Age_21_Low_Weight = PP(1);
Male_Age_21_Up_Weight = PP(2);
% Age 22
PP = prctile(Male_data_22(:,1),My_percentile); % Height
Male_Age_22_Low_Height = PP(1);
Male_Age_22_Up_Height = PP(2);
PP = prctile(Male_data_22(:,2),My_percentile); % Weight
Male_Age_22_Low_Weight = PP(1);
Male_Age_22_Up_Weight = PP(2);
% Age 23
PP = prctile(Male_data_23(:,1),My_percentile); % Height
Male_Age_23_Low_Height = PP(1);
Male_Age_23_Up_Height = PP(2);
PP = prctile(Male_data_23(:,2),My_percentile); % Weight
Male_Age_23_Low_Weight = PP(1);
Male_Age_23_Up_Weight = PP(2);
% Age 24
PP = prctile(Male_data_24(:,1),My_percentile); % Height
Male_Age_24_Low_Height = PP(1);
Male_Age_24_Up_Height = PP(2);
PP = prctile(Male_data_24(:,2),My_percentile); % Weight
Male_Age_24_Low_Weight = PP(1);
Male_Age_24_Up_Weight = PP(2);
% Age 25
PP = prctile(Male_data_25(:,1),My_percentile); % Height
Male_Age_25_Low_Height = PP(1);
Male_Age_25_Up_Height = PP(2);
PP = prctile(Male_data_25(:,2),My_percentile); % Weight
Male_Age_25_Low_Weight = PP(1);
Male_Age_25_Up_Weight = PP(2);
% Age 26
PP = prctile(Male_data_26(:,1),My_percentile); % Height
Male_Age_26_Low_Height = PP(1);
Male_Age_26_Up_Height = PP(2);
PP = prctile(Male_data_26(:,2),My_percentile); % Weight
Male_Age_26_Low_Weight = PP(1);
Male_Age_26_Up_Weight = PP(2);
% Age 27
PP = prctile(Male_data_27(:,1),My_percentile); % Height
Male_Age_27_Low_Height = PP(1);
Male_Age_27_Up_Height = PP(2);
PP = prctile(Male_data_27(:,2),My_percentile); % Weight
Male_Age_27_Low_Weight = PP(1);
Male_Age_27_Up_Weight = PP(2);
% Age 28
PP = prctile(Male_data_28(:,1),My_percentile); % Height
Male_Age_28_Low_Height = PP(1);
Male_Age_28_Up_Height = PP(2);
PP = prctile(Male_data_28(:,2),My_percentile); % Weight
Male_Age_28_Low_Weight = PP(1);
Male_Age_28_Up_Weight = PP(2);
% Age 29
PP = prctile(Male_data_29(:,1),My_percentile); % Height
Male_Age_29_Low_Height = PP(1);
Male_Age_29_Up_Height = PP(2);
PP = prctile(Male_data_29(:,2),My_percentile); % Weight
Male_Age_29_Low_Weight = PP(1);
Male_Age_29_Up_Weight = PP(2);
% Age 30
PP = prctile(Male_data_30(:,1),My_percentile); % Height
Male_Age_30_Low_Height = PP(1);
Male_Age_30_Up_Height = PP(2);
PP = prctile(Male_data_30(:,2),My_percentile); % Weight
Male_Age_30_Low_Weight = PP(1);
Male_Age_30_Up_Weight = PP(2);
% Age 31
PP = prctile(Male_data_31(:,1),My_percentile); % Height
Male_Age_31_Low_Height = PP(1);
Male_Age_31_Up_Height = PP(2);
PP = prctile(Male_data_31(:,2),My_percentile); % Weight
Male_Age_31_Low_Weight = PP(1);
Male_Age_31_Up_Weight = PP(2);
% Age 32
PP = prctile(Male_data_32(:,1),My_percentile); % Height
Male_Age_32_Low_Height = PP(1);
Male_Age_32_Up_Height = PP(2);
PP = prctile(Male_data_32(:,2),My_percentile); % Weight
Male_Age_32_Low_Weight = PP(1);
Male_Age_32_Up_Weight = PP(2);
% Age 33
PP = prctile(Male_data_33(:,1),My_percentile); % Height
Male_Age_33_Low_Height = PP(1);
Male_Age_33_Up_Height = PP(2);
PP = prctile(Male_data_33(:,2),My_percentile); % Weight
Male_Age_33_Low_Weight = PP(1);
Male_Age_33_Up_Weight = PP(2);
% Age 34
PP = prctile(Male_data_34(:,1),My_percentile); % Height
Male_Age_34_Low_Height = PP(1);
Male_Age_34_Up_Height = PP(2);
PP = prctile(Male_data_34(:,2),My_percentile); % Weight
Male_Age_34_Low_Weight = PP(1);
Male_Age_34_Up_Weight = PP(2);
% Age 35
PP = prctile(Male_data_35(:,1),My_percentile); % Height
Male_Age_35_Low_Height = PP(1);
Male_Age_35_Up_Height = PP(2);
PP = prctile(Male_data_35(:,2),My_percentile); % Weight
Male_Age_35_Low_Weight = PP(1);
Male_Age_35_Up_Weight = PP(2);
% Age 36
PP = prctile(Male_data_36(:,1),My_percentile); % Height
Male_Age_36_Low_Height = PP(1);
Male_Age_36_Up_Height = PP(2);
PP = prctile(Male_data_36(:,2),My_percentile); % Weight
Male_Age_36_Low_Weight = PP(1);
Male_Age_36_Up_Weight = PP(2);
% Age 37
PP = prctile(Male_data_37(:,1),My_percentile); % Height
Male_Age_37_Low_Height = PP(1);
Male_Age_37_Up_Height = PP(2);
PP = prctile(Male_data_37(:,2),My_percentile); % Weight
Male_Age_37_Low_Weight = PP(1);
Male_Age_37_Up_Weight = PP(2);
% Age 38
PP = prctile(Male_data_38(:,1),My_percentile); % Height
Male_Age_38_Low_Height = PP(1);
Male_Age_38_Up_Height = PP(2);
PP = prctile(Male_data_38(:,2),My_percentile); % Weight
Male_Age_38_Low_Weight = PP(1);
Male_Age_38_Up_Weight = PP(2);
% Age 39
PP = prctile(Male_data_39(:,1),My_percentile); % Height
Male_Age_39_Low_Height = PP(1);
Male_Age_39_Up_Height = PP(2);
PP = prctile(Male_data_39(:,2),My_percentile); % Weight
Male_Age_39_Low_Weight = PP(1);
Male_Age_39_Up_Weight = PP(2);
% Age 40
PP = prctile(Male_data_40(:,1),My_percentile); % Height
Male_Age_40_Low_Height = PP(1);
Male_Age_40_Up_Height = PP(2);
PP = prctile(Male_data_40(:,2),My_percentile); % Weight
Male_Age_40_Low_Weight = PP(1);
Male_Age_40_Up_Weight = PP(2);
% Age 41
PP = prctile(Male_data_41(:,1),My_percentile); % Height
Male_Age_41_Low_Height = PP(1);
Male_Age_41_Up_Height = PP(2);
PP = prctile(Male_data_41(:,2),My_percentile); % Weight
Male_Age_41_Low_Weight = PP(1);
Male_Age_41_Up_Weight = PP(2);
% Age 42
PP = prctile(Male_data_42(:,1),My_percentile); % Height
Male_Age_42_Low_Height = PP(1);
Male_Age_42_Up_Height = PP(2);
PP = prctile(Male_data_42(:,2),My_percentile); % Weight
Male_Age_42_Low_Weight = PP(1);
Male_Age_42_Up_Weight = PP(2);
% Age 43
PP = prctile(Male_data_43(:,1),My_percentile); % Height
Male_Age_43_Low_Height = PP(1);
Male_Age_43_Up_Height = PP(2);
PP = prctile(Male_data_43(:,2),My_percentile); % Weight
Male_Age_43_Low_Weight = PP(1);
Male_Age_43_Up_Weight = PP(2);
% Age 44
PP = prctile(Male_data_44(:,1),My_percentile); % Height
Male_Age_44_Low_Height = PP(1);
Male_Age_44_Up_Height = PP(2);
PP = prctile(Male_data_44(:,2),My_percentile); % Weight
Male_Age_44_Low_Weight = PP(1);
Male_Age_44_Up_Weight = PP(2);
% Age 45
PP = prctile(Male_data_45(:,1),My_percentile); % Height
Male_Age_45_Low_Height = PP(1);
Male_Age_45_Up_Height = PP(2);
PP = prctile(Male_data_45(:,2),My_percentile); % Weight
Male_Age_45_Low_Weight = PP(1);
Male_Age_45_Up_Weight = PP(2);
% Age 46
PP = prctile(Male_data_46(:,1),My_percentile); % Height
Male_Age_46_Low_Height = PP(1);
Male_Age_46_Up_Height = PP(2);
PP = prctile(Male_data_46(:,2),My_percentile); % Weight
Male_Age_46_Low_Weight = PP(1);
Male_Age_46_Up_Weight = PP(2);
% Age 47
PP = prctile(Male_data_47(:,1),My_percentile); % Height
Male_Age_47_Low_Height = PP(1);
Male_Age_47_Up_Height = PP(2);
PP = prctile(Male_data_47(:,2),My_percentile); % Weight
Male_Age_47_Low_Weight = PP(1);
Male_Age_47_Up_Weight = PP(2);
% Age 48
PP = prctile(Male_data_48(:,1),My_percentile); % Height
Male_Age_48_Low_Height = PP(1);
Male_Age_48_Up_Height = PP(2);
PP = prctile(Male_data_48(:,2),My_percentile); % Weight
Male_Age_48_Low_Weight = PP(1);
Male_Age_48_Up_Weight = PP(2);
% Age 49
PP = prctile(Male_data_49(:,1),My_percentile); % Height
Male_Age_49_Low_Height = PP(1);
Male_Age_49_Up_Height = PP(2);
PP = prctile(Male_data_49(:,2),My_percentile); % Weight
Male_Age_49_Low_Weight = PP(1);
Male_Age_49_Up_Weight = PP(2);
% Age 50
PP = prctile(Male_data_50(:,1),My_percentile); % Height
Male_Age_50_Low_Height = PP(1);
Male_Age_50_Up_Height = PP(2);
PP = prctile(Male_data_50(:,2),My_percentile); % Weight
Male_Age_50_Low_Weight = PP(1);
Male_Age_50_Up_Weight = PP(2);
% Age 51
PP = prctile(Male_data_51(:,1),My_percentile); % Height
Male_Age_51_Low_Height = PP(1);
Male_Age_51_Up_Height = PP(2);
PP = prctile(Male_data_51(:,2),My_percentile); % Weight
Male_Age_51_Low_Weight = PP(1);
Male_Age_51_Up_Weight = PP(2);
% Age 52
PP = prctile(Male_data_52(:,1),My_percentile); % Height
Male_Age_52_Low_Height = PP(1);
Male_Age_52_Up_Height = PP(2);
PP = prctile(Male_data_52(:,2),My_percentile); % Weight
Male_Age_52_Low_Weight = PP(1);
Male_Age_52_Up_Weight = PP(2);
% Age 53
PP = prctile(Male_data_53(:,1),My_percentile); % Height
Male_Age_53_Low_Height = PP(1);
Male_Age_53_Up_Height = PP(2);
PP = prctile(Male_data_53(:,2),My_percentile); % Weight
Male_Age_53_Low_Weight = PP(1);
Male_Age_53_Up_Weight = PP(2);
% Age 54
PP = prctile(Male_data_54(:,1),My_percentile); % Height
Male_Age_54_Low_Height = PP(1);
Male_Age_54_Up_Height = PP(2);
PP = prctile(Male_data_54(:,2),My_percentile); % Weight
Male_Age_54_Low_Weight = PP(1);
Male_Age_54_Up_Weight = PP(2);
% Age 55
PP = prctile(Male_data_55(:,1),My_percentile); % Height
Male_Age_55_Low_Height = PP(1);
Male_Age_55_Up_Height = PP(2);
PP = prctile(Male_data_55(:,2),My_percentile); % Weight
Male_Age_55_Low_Weight = PP(1);
Male_Age_55_Up_Weight = PP(2);
% Age 56
PP = prctile(Male_data_56(:,1),My_percentile); % Height
Male_Age_56_Low_Height = PP(1);
Male_Age_56_Up_Height = PP(2);
PP = prctile(Male_data_56(:,2),My_percentile); % Weight
Male_Age_56_Low_Weight = PP(1);
Male_Age_56_Up_Weight = PP(2);
% Age 57
PP = prctile(Male_data_57(:,1),My_percentile); % Height
Male_Age_57_Low_Height = PP(1);
Male_Age_57_Up_Height = PP(2);
PP = prctile(Male_data_57(:,2),My_percentile); % Weight
Male_Age_57_Low_Weight = PP(1);
Male_Age_57_Up_Weight = PP(2);
% Age 58
PP = prctile(Male_data_58(:,1),My_percentile); % Height
Male_Age_58_Low_Height = PP(1);
Male_Age_58_Up_Height = PP(2);
PP = prctile(Male_data_58(:,2),My_percentile); % Weight
Male_Age_58_Low_Weight = PP(1);
Male_Age_58_Up_Weight = PP(2);
% Age 59
PP = prctile(Male_data_59(:,1),My_percentile); % Height
Male_Age_59_Low_Height = PP(1);
Male_Age_59_Up_Height = PP(2);
PP = prctile(Male_data_59(:,2),My_percentile); % Weight
Male_Age_59_Low_Weight = PP(1);
Male_Age_59_Up_Weight = PP(2);
% Age 60
PP = prctile(Male_data_60(:,1),My_percentile); % Height
Male_Age_60_Low_Height = PP(1);
Male_Age_60_Up_Height = PP(2);
PP = prctile(Male_data_60(:,2),My_percentile); % Weight
Male_Age_60_Low_Weight = PP(1);
Male_Age_60_Up_Weight = PP(2);
% Age 61
PP = prctile(Male_data_61(:,1),My_percentile); % Height
Male_Age_61_Low_Height = PP(1);
Male_Age_61_Up_Height = PP(2);
PP = prctile(Male_data_61(:,2),My_percentile); % Weight
Male_Age_61_Low_Weight = PP(1);
Male_Age_61_Up_Weight = PP(2);
% Age 62
PP = prctile(Male_data_62(:,1),My_percentile); % Height
Male_Age_62_Low_Height = PP(1);
Male_Age_62_Up_Height = PP(2);
PP = prctile(Male_data_62(:,2),My_percentile); % Weight
Male_Age_62_Low_Weight = PP(1);
Male_Age_62_Up_Weight = PP(2);
% Age 63
PP = prctile(Male_data_63(:,1),My_percentile); % Height
Male_Age_63_Low_Height = PP(1);
Male_Age_63_Up_Height = PP(2);
PP = prctile(Male_data_63(:,2),My_percentile); % Weight
Male_Age_63_Low_Weight = PP(1);
Male_Age_63_Up_Weight = PP(2);
% Age 64
PP = prctile(Male_data_64(:,1),My_percentile); % Height
Male_Age_64_Low_Height = PP(1);
Male_Age_64_Up_Height = PP(2);
PP = prctile(Male_data_64(:,2),My_percentile); % Weight
Male_Age_64_Low_Weight = PP(1);
Male_Age_64_Up_Weight = PP(2);
% Age 65
PP = prctile(Male_data_65(:,1),My_percentile); % Height
Male_Age_65_Low_Height = PP(1);
Male_Age_65_Up_Height = PP(2);
PP = prctile(Male_data_65(:,2),My_percentile); % Weight
Male_Age_65_Low_Weight = PP(1);
Male_Age_65_Up_Weight = PP(2);
% Age 66
PP = prctile(Male_data_66(:,1),My_percentile); % Height
Male_Age_66_Low_Height = PP(1);
Male_Age_66_Up_Height = PP(2);
PP = prctile(Male_data_66(:,2),My_percentile); % Weight
Male_Age_66_Low_Weight = PP(1);
Male_Age_66_Up_Weight = PP(2);
% Age 67
PP = prctile(Male_data_67(:,1),My_percentile); % Height
Male_Age_67_Low_Height = PP(1);
Male_Age_67_Up_Height = PP(2);
PP = prctile(Male_data_67(:,2),My_percentile); % Weight
Male_Age_67_Low_Weight = PP(1);
Male_Age_67_Up_Weight = PP(2);
% Age 68
PP = prctile(Male_data_68(:,1),My_percentile); % Height
Male_Age_68_Low_Height = PP(1);
Male_Age_68_Up_Height = PP(2);
PP = prctile(Male_data_68(:,2),My_percentile); % Weight
Male_Age_68_Low_Weight = PP(1);
Male_Age_68_Up_Weight = PP(2);
% Age 69
PP = prctile(Male_data_69(:,1),My_percentile); % Height
Male_Age_69_Low_Height = PP(1);
Male_Age_69_Up_Height = PP(2);
PP = prctile(Male_data_69(:,2),My_percentile); % Weight
Male_Age_69_Low_Weight = PP(1);
Male_Age_69_Up_Weight = PP(2);
% Age 70
PP = prctile(Male_data_70(:,1),My_percentile); % Height
Male_Age_70_Low_Height = PP(1);
Male_Age_70_Up_Height = PP(2);
PP = prctile(Male_data_70(:,2),My_percentile); % Weight
Male_Age_70_Low_Weight = PP(1);
Male_Age_70_Up_Weight = PP(2);
% Age 71
PP = prctile(Male_data_71(:,1),My_percentile); % Height
Male_Age_71_Low_Height = PP(1);
Male_Age_71_Up_Height = PP(2);
PP = prctile(Male_data_71(:,2),My_percentile); % Weight
Male_Age_71_Low_Weight = PP(1);
Male_Age_71_Up_Weight = PP(2);
% Age 72
PP = prctile(Male_data_72(:,1),My_percentile); % Height
Male_Age_72_Low_Height = PP(1);
Male_Age_72_Up_Height = PP(2);
PP = prctile(Male_data_72(:,2),My_percentile); % Weight
Male_Age_72_Low_Weight = PP(1);
Male_Age_72_Up_Weight = PP(2);
% Age 73
PP = prctile(Male_data_73(:,1),My_percentile); % Height
Male_Age_73_Low_Height = PP(1);
Male_Age_73_Up_Height = PP(2);
PP = prctile(Male_data_73(:,2),My_percentile); % Weight
Male_Age_73_Low_Weight = PP(1);
Male_Age_73_Up_Weight = PP(2);
% Age 74
PP = prctile(Male_data_74(:,1),My_percentile); % Height
Male_Age_74_Low_Height = PP(1);
Male_Age_74_Up_Height = PP(2);
PP = prctile(Male_data_74(:,2),My_percentile); % Weight
Male_Age_74_Low_Weight = PP(1);
Male_Age_74_Up_Weight = PP(2);
% Age 75
PP = prctile(Male_data_75(:,1),My_percentile); % Height
Male_Age_75_Low_Height = PP(1);
Male_Age_75_Up_Height = PP(2);
PP = prctile(Male_data_75(:,2),My_percentile); % Weight
Male_Age_75_Low_Weight = PP(1);
Male_Age_75_Up_Weight = PP(2);
% Age 76
PP = prctile(Male_data_76(:,1),My_percentile); % Height
Male_Age_76_Low_Height = PP(1);
Male_Age_76_Up_Height = PP(2);
PP = prctile(Male_data_76(:,2),My_percentile); % Weight
Male_Age_76_Low_Weight = PP(1);
Male_Age_76_Up_Weight = PP(2);
% Age 77
PP = prctile(Male_data_77(:,1),My_percentile); % Height
Male_Age_77_Low_Height = PP(1);
Male_Age_77_Up_Height = PP(2);
PP = prctile(Male_data_77(:,2),My_percentile); % Weight
Male_Age_77_Low_Weight = PP(1);
Male_Age_77_Up_Weight = PP(2);
% Age 78
PP = prctile(Male_data_78(:,1),My_percentile); % Height
Male_Age_78_Low_Height = PP(1);
Male_Age_78_Up_Height = PP(2);
PP = prctile(Male_data_78(:,2),My_percentile); % Weight
Male_Age_78_Low_Weight = PP(1);
Male_Age_78_Up_Weight = PP(2);
% Age 79
PP = prctile(Male_data_79(:,1),My_percentile); % Height
Male_Age_79_Low_Height = PP(1);
Male_Age_79_Up_Height = PP(2);
PP = prctile(Male_data_79(:,2),My_percentile); % Weight
Male_Age_79_Low_Weight = PP(1);
Male_Age_79_Up_Weight = PP(2);
% Age 80
PP = prctile(Male_data_80(:,1),My_percentile); % Height
Male_Age_80_Low_Height = PP(1);
Male_Age_80_Up_Height = PP(2);
PP = prctile(Male_data_80(:,2),My_percentile); % Weight
Male_Age_80_Low_Weight = PP(1);
Male_Age_80_Up_Weight = PP(2);
% Age 81
PP = prctile(Male_data_81(:,1),My_percentile); % Height
Male_Age_81_Low_Height = PP(1);
Male_Age_81_Up_Height = PP(2);
PP = prctile(Male_data_81(:,2),My_percentile); % Weight
Male_Age_81_Low_Weight = PP(1);
Male_Age_81_Up_Weight = PP(2);
% Age 82
PP = prctile(Male_data_82(:,1),My_percentile); % Height
Male_Age_82_Low_Height = PP(1);
Male_Age_82_Up_Height = PP(2);
PP = prctile(Male_data_82(:,2),My_percentile); % Weight
Male_Age_82_Low_Weight = PP(1);
Male_Age_82_Up_Weight = PP(2);
% Age 83
PP = prctile(Male_data_83(:,1),My_percentile); % Height
Male_Age_83_Low_Height = PP(1);
Male_Age_83_Up_Height = PP(2);
PP = prctile(Male_data_83(:,2),My_percentile); % Weight
Male_Age_83_Low_Weight = PP(1);
Male_Age_83_Up_Weight = PP(2);
% Age 84
PP = prctile(Male_data_84(:,1),My_percentile); % Height
Male_Age_84_Low_Height = PP(1);
Male_Age_84_Up_Height = PP(2);
PP = prctile(Male_data_84(:,2),My_percentile); % Weight
Male_Age_84_Low_Weight = PP(1);
Male_Age_84_Up_Weight = PP(2);
% Age 85
PP = prctile(Male_data_85(:,1),My_percentile); % Height
Male_Age_85_Low_Height = PP(1);
Male_Age_85_Up_Height = PP(2);
PP = prctile(Male_data_85(:,2),My_percentile); % Weight
Male_Age_85_Low_Weight = PP(1);
Male_Age_85_Up_Weight = PP(2);
%% ENSANUT 2006
Female_data = xlsread('Data_ENSANUT\ENSANUT 2006.xlsx','Female-old');
Male_data = xlsread('Data_ENSANUT\ENSANUT 2006.xlsx','Male-old');
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
end

% For Female
Save_data_Female = [];
% Age 1
[M N] = size(Female_data_1);
Temp = Female_data_1;
Female_data_1 = [];
for i = 1: M
    if Temp(i,1) >= Female_Age_1_Low_Height && Temp(i,1) <= Female_Age_1_Up_Height && ...
            Temp(i,2) >= Female_Age_1_Low_Weight && Temp(i,2) <= Female_Age_1_Up_Weight
        Female_data_1 = [Female_data_1; Temp(i,1) Temp(i,2)];
        Save_data_Female = [Save_data_Female;1 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 2
[M N] = size(Female_data_2);
Temp = Female_data_2;
Female_data_2 = [];
for i = 1: M
    if Temp(i,1) >= Female_Age_2_Low_Height && Temp(i,1) <= Female_Age_2_Up_Height && ...
            Temp(i,2) >= Female_Age_2_Low_Weight && Temp(i,2) <= Female_Age_2_Up_Weight
        Female_data_2 = [Female_data_2; Temp(i,1) Temp(i,2)];
        Save_data_Female = [Save_data_Female;2 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 3
[M N] = size(Female_data_3);
Temp = Female_data_3;
Female_data_3 = [];
for i = 1: M
    if Temp(i,1) >= Female_Age_3_Low_Height && Temp(i,1) <= Female_Age_3_Up_Height && ...
            Temp(i,2) >= Female_Age_3_Low_Weight && Temp(i,2) <= Female_Age_3_Up_Weight
        Female_data_3 = [Female_data_3; Temp(i,1) Temp(i,2)];
        Save_data_Female = [Save_data_Female;3 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 4
[M N] = size(Female_data_4);
Temp = Female_data_4;
Female_data_4 = [];
for i = 1: M
    if Temp(i,1) >= Female_Age_4_Low_Height && Temp(i,1) <= Female_Age_4_Up_Height && ...
            Temp(i,2) >= Female_Age_4_Low_Weight && Temp(i,2) <= Female_Age_4_Up_Weight
        Female_data_4 = [Female_data_4; Temp(i,1) Temp(i,2)];
        Save_data_Female = [Save_data_Female;4 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 5
[M N] = size(Female_data_5);
Temp = Female_data_5;
Female_data_5 = [];
for i = 1: M
    if Temp(i,1) >= Female_Age_5_Low_Height && Temp(i,1) <= Female_Age_5_Up_Height && ...
            Temp(i,2) >= Female_Age_5_Low_Weight && Temp(i,2) <= Female_Age_5_Up_Weight
        Female_data_5 = [Female_data_5; Temp(i,1) Temp(i,2)];
        Save_data_Female = [Save_data_Female;5 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 6
[M N] = size(Female_data_6);
Temp = Female_data_6;
Female_data_6 = [];
for i = 1: M
    if Temp(i,1) >= Female_Age_6_Low_Height && Temp(i,1) <= Female_Age_6_Up_Height && ...
            Temp(i,2) >= Female_Age_6_Low_Weight && Temp(i,2) <= Female_Age_6_Up_Weight
        Female_data_6 = [Female_data_6; Temp(i,1) Temp(i,2)];
        Save_data_Female = [Save_data_Female;6 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 7
[M N] = size(Female_data_7);
Temp = Female_data_7;
Female_data_7 = [];
for i = 1: M
    if Temp(i,1) >= Female_Age_7_Low_Height && Temp(i,1) <= Female_Age_7_Up_Height && ...
            Temp(i,2) >= Female_Age_7_Low_Weight && Temp(i,2) <= Female_Age_7_Up_Weight
        Female_data_7 = [Female_data_7; Temp(i,1) Temp(i,2)];
        Save_data_Female = [Save_data_Female;7 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 8
[M N] = size(Female_data_8);
Temp = Female_data_8;
Female_data_8 = [];
for i = 1: M
    if Temp(i,1) >= Female_Age_8_Low_Height && Temp(i,1) <= Female_Age_8_Up_Height && ...
            Temp(i,2) >= Female_Age_8_Low_Weight && Temp(i,2) <= Female_Age_8_Up_Weight
        Female_data_8 = [Female_data_8; Temp(i,1) Temp(i,2)];
        Save_data_Female = [Save_data_Female;8 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 9
[M N] = size(Female_data_9);
Temp = Female_data_9;
Female_data_9 = [];
for i = 1: M
    if Temp(i,1) >= Female_Age_9_Low_Height && Temp(i,1) <= Female_Age_9_Up_Height && ...
            Temp(i,2) >= Female_Age_9_Low_Weight && Temp(i,2) <= Female_Age_9_Up_Weight
        Female_data_9 = [Female_data_9; Temp(i,1) Temp(i,2)];
        Save_data_Female = [Save_data_Female;9 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 10
[M N] = size(Female_data_10);
Temp = Female_data_10;
Female_data_10 = [];
for i = 1: M
    if Temp(i,1) >= Female_Age_10_Low_Height && Temp(i,1) <= Female_Age_10_Up_Height && ...
            Temp(i,2) >= Female_Age_10_Low_Weight && Temp(i,2) <= Female_Age_10_Up_Weight
        Female_data_10 = [Female_data_10; Temp(i,1) Temp(i,2)];
        Save_data_Female = [Save_data_Female;10 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 11
[M N] = size(Female_data_11);
Temp = Female_data_11;
Female_data_11 = [];
for i = 1: M
    if Temp(i,1) >= Female_Age_11_Low_Height && Temp(i,1) <= Female_Age_11_Up_Height && ...
            Temp(i,2) >= Female_Age_11_Low_Weight && Temp(i,2) <= Female_Age_11_Up_Weight
        Female_data_11 = [Female_data_11; Temp(i,1) Temp(i,2)];
        Save_data_Female = [Save_data_Female;11 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 12
[M N] = size(Female_data_12);
Temp = Female_data_12;
Female_data_12 = [];
for i = 1: M
    if Temp(i,1) >= Female_Age_12_Low_Height && Temp(i,1) <= Female_Age_12_Up_Height && ...
            Temp(i,2) >= Female_Age_12_Low_Weight && Temp(i,2) <= Female_Age_12_Up_Weight
        Female_data_12 = [Female_data_12; Temp(i,1) Temp(i,2)];
        Save_data_Female = [Save_data_Female;12 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 13
[M N] = size(Female_data_13);
Temp = Female_data_13;
Female_data_13 = [];
for i = 1: M
    if Temp(i,1) >= Female_Age_13_Low_Height && Temp(i,1) <= Female_Age_13_Up_Height && ...
            Temp(i,2) >= Female_Age_13_Low_Weight && Temp(i,2) <= Female_Age_13_Up_Weight
        Female_data_13 = [Female_data_13; Temp(i,1) Temp(i,2)];
        Save_data_Female = [Save_data_Female;13 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 14
[M N] = size(Female_data_14);
Temp = Female_data_14;
Female_data_14 = [];
for i = 1: M
    if Temp(i,1) >= Female_Age_14_Low_Height && Temp(i,1) <= Female_Age_14_Up_Height && ...
            Temp(i,2) >= Female_Age_14_Low_Weight && Temp(i,2) <= Female_Age_14_Up_Weight
        Female_data_14 = [Female_data_14; Temp(i,1) Temp(i,2)];
        Save_data_Female = [Save_data_Female;14 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 15
[M N] = size(Female_data_15);
Temp = Female_data_15;
Female_data_15 = [];
for i = 1: M
    if Temp(i,1) >= Female_Age_15_Low_Height && Temp(i,1) <= Female_Age_15_Up_Height && ...
            Temp(i,2) >= Female_Age_15_Low_Weight && Temp(i,2) <= Female_Age_15_Up_Weight
        Female_data_15 = [Female_data_15; Temp(i,1) Temp(i,2)];
        Save_data_Female = [Save_data_Female;15 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 16
[M N] = size(Female_data_16);
Temp = Female_data_16;
Female_data_16 = [];
for i = 1: M
    if Temp(i,1) >= Female_Age_16_Low_Height && Temp(i,1) <= Female_Age_16_Up_Height && ...
            Temp(i,2) >= Female_Age_16_Low_Weight && Temp(i,2) <= Female_Age_16_Up_Weight
        Female_data_16 = [Female_data_16; Temp(i,1) Temp(i,2)];
        Save_data_Female = [Save_data_Female;16 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 17
[M N] = size(Female_data_17);
Temp = Female_data_17;
Female_data_17 = [];
for i = 1: M
    if Temp(i,1) >= Female_Age_17_Low_Height && Temp(i,1) <= Female_Age_17_Up_Height && ...
            Temp(i,2) >= Female_Age_17_Low_Weight && Temp(i,2) <= Female_Age_17_Up_Weight
        Female_data_17 = [Female_data_17; Temp(i,1) Temp(i,2)];
        Save_data_Female = [Save_data_Female;17 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 18
[M N] = size(Female_data_18);
Temp = Female_data_18;
Female_data_18 = [];
for i = 1: M
    if Temp(i,1) >= Female_Age_18_Low_Height && Temp(i,1) <= Female_Age_18_Up_Height && ...
            Temp(i,2) >= Female_Age_18_Low_Weight && Temp(i,2) <= Female_Age_18_Up_Weight
        Female_data_18 = [Female_data_18; Temp(i,1) Temp(i,2)];
        Save_data_Female = [Save_data_Female;18 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 19
[M N] = size(Female_data_19);
Temp = Female_data_19;
Female_data_19 = [];
for i = 1: M
    if Temp(i,1) >= Female_Age_19_Low_Height && Temp(i,1) <= Female_Age_19_Up_Height && ...
            Temp(i,2) >= Female_Age_19_Low_Weight && Temp(i,2) <= Female_Age_19_Up_Weight
        Female_data_19 = [Female_data_19; Temp(i,1) Temp(i,2)];
        Save_data_Female = [Save_data_Female;19 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 20
[M N] = size(Female_data_10);
Temp = Female_data_10;
Female_data_10 = [];
for i = 1: M
    if Temp(i,1) >= Female_Age_20_Low_Height && Temp(i,1) <= Female_Age_20_Up_Height && ...
            Temp(i,2) >= Female_Age_20_Low_Weight && Temp(i,2) <= Female_Age_20_Up_Weight
        Female_data_10 = [Female_data_10; Temp(i,1) Temp(i,2)];
        Save_data_Female = [Save_data_Female;20 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 21
[M N] = size(Female_data_11);
Temp = Female_data_11;
Female_data_11 = [];
for i = 1: M
    if Temp(i,1) >= Female_Age_21_Low_Height && Temp(i,1) <= Female_Age_21_Up_Height && ...
            Temp(i,2) >= Female_Age_21_Low_Weight && Temp(i,2) <= Female_Age_21_Up_Weight
        Female_data_11 = [Female_data_11; Temp(i,1) Temp(i,2)];
        Save_data_Female = [Save_data_Female;21 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 22
[M N] = size(Female_data_12);
Temp = Female_data_12;
Female_data_12 = [];
for i = 1: M
    if Temp(i,1) >= Female_Age_22_Low_Height && Temp(i,1) <= Female_Age_22_Up_Height && ...
            Temp(i,2) >= Female_Age_22_Low_Weight && Temp(i,2) <= Female_Age_22_Up_Weight
        Female_data_12 = [Female_data_12; Temp(i,1) Temp(i,2)];
        Save_data_Female = [Save_data_Female;22 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 23
[M N] = size(Female_data_13);
Temp = Female_data_13;
Female_data_13 = [];
for i = 1: M
    if Temp(i,1) >= Female_Age_23_Low_Height && Temp(i,1) <= Female_Age_23_Up_Height && ...
            Temp(i,2) >= Female_Age_23_Low_Weight && Temp(i,2) <= Female_Age_23_Up_Weight
        Female_data_13 = [Female_data_13; Temp(i,1) Temp(i,2)];
        Save_data_Female = [Save_data_Female;23 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 24
[M N] = size(Female_data_14);
Temp = Female_data_14;
Female_data_14 = [];
for i = 1: M
    if Temp(i,1) >= Female_Age_24_Low_Height && Temp(i,1) <= Female_Age_24_Up_Height && ...
            Temp(i,2) >= Female_Age_24_Low_Weight && Temp(i,2) <= Female_Age_24_Up_Weight
        Female_data_14 = [Female_data_14; Temp(i,1) Temp(i,2)];
        Save_data_Female = [Save_data_Female;24 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 25
[M N] = size(Female_data_15);
Temp = Female_data_15;
Female_data_15 = [];
for i = 1: M
    if Temp(i,1) >= Female_Age_25_Low_Height && Temp(i,1) <= Female_Age_25_Up_Height && ...
            Temp(i,2) >= Female_Age_25_Low_Weight && Temp(i,2) <= Female_Age_25_Up_Weight
        Female_data_15 = [Female_data_15; Temp(i,1) Temp(i,2)];
        Save_data_Female = [Save_data_Female;25 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 26
[M N] = size(Female_data_16);
Temp = Female_data_16;
Female_data_16 = [];
for i = 1: M
    if Temp(i,1) >= Female_Age_26_Low_Height && Temp(i,1) <= Female_Age_26_Up_Height && ...
            Temp(i,2) >= Female_Age_26_Low_Weight && Temp(i,2) <= Female_Age_26_Up_Weight
        Female_data_16 = [Female_data_16; Temp(i,1) Temp(i,2)];
        Save_data_Female = [Save_data_Female;26 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 27
[M N] = size(Female_data_17);
Temp = Female_data_17;
Female_data_17 = [];
for i = 1: M
    if Temp(i,1) >= Female_Age_27_Low_Height && Temp(i,1) <= Female_Age_27_Up_Height && ...
            Temp(i,2) >= Female_Age_27_Low_Weight && Temp(i,2) <= Female_Age_27_Up_Weight
        Female_data_17 = [Female_data_17; Temp(i,1) Temp(i,2)];
        Save_data_Female = [Save_data_Female;27 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 28
[M N] = size(Female_data_18);
Temp = Female_data_18;
Female_data_18 = [];
for i = 1: M
    if Temp(i,1) >= Female_Age_28_Low_Height && Temp(i,1) <= Female_Age_28_Up_Height && ...
            Temp(i,2) >= Female_Age_28_Low_Weight && Temp(i,2) <= Female_Age_28_Up_Weight
        Female_data_18 = [Female_data_18; Temp(i,1) Temp(i,2)];
        Save_data_Female = [Save_data_Female;28 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 29
[M N] = size(Female_data_19);
Temp = Female_data_19;
Female_data_19 = [];
for i = 1: M
    if Temp(i,1) >= Female_Age_29_Low_Height && Temp(i,1) <= Female_Age_29_Up_Height && ...
            Temp(i,2) >= Female_Age_29_Low_Weight && Temp(i,2) <= Female_Age_29_Up_Weight
        Female_data_19 = [Female_data_19; Temp(i,1) Temp(i,2)];
        Save_data_Female = [Save_data_Female;29 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 30
[M N] = size(Female_data_30);
Temp = Female_data_30;
Female_data_30 = [];
for i = 1: M
    if Temp(i,1) >= Female_Age_30_Low_Height && Temp(i,1) <= Female_Age_30_Up_Height && ...
            Temp(i,2) >= Female_Age_30_Low_Weight && Temp(i,2) <= Female_Age_30_Up_Weight
        Female_data_30 = [Female_data_30; Temp(i,1) Temp(i,2)];
        Save_data_Female = [Save_data_Female;30 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 31
[M N] = size(Female_data_31);
Temp = Female_data_31;
Female_data_31 = [];
for i = 1: M
    if Temp(i,1) >= Female_Age_31_Low_Height && Temp(i,1) <= Female_Age_31_Up_Height && ...
            Temp(i,2) >= Female_Age_31_Low_Weight && Temp(i,2) <= Female_Age_31_Up_Weight
        Female_data_31 = [Female_data_31; Temp(i,1) Temp(i,2)];
        Save_data_Female = [Save_data_Female;31 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 32
[M N] = size(Female_data_32);
Temp = Female_data_32;
Female_data_32 = [];
for i = 1: M
    if Temp(i,1) >= Female_Age_32_Low_Height && Temp(i,1) <= Female_Age_32_Up_Height && ...
            Temp(i,2) >= Female_Age_32_Low_Weight && Temp(i,2) <= Female_Age_32_Up_Weight
        Female_data_32 = [Female_data_32; Temp(i,1) Temp(i,2)];
        Save_data_Female = [Save_data_Female;32 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 33
[M N] = size(Female_data_33);
Temp = Female_data_33;
Female_data_33 = [];
for i = 1: M
    if Temp(i,1) >= Female_Age_33_Low_Height && Temp(i,1) <= Female_Age_33_Up_Height && ...
            Temp(i,2) >= Female_Age_33_Low_Weight && Temp(i,2) <= Female_Age_33_Up_Weight
        Female_data_33 = [Female_data_33; Temp(i,1) Temp(i,2)];
        Save_data_Female = [Save_data_Female;33 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 34
[M N] = size(Female_data_34);
Temp = Female_data_34;
Female_data_34 = [];
for i = 1: M
    if Temp(i,1) >= Female_Age_34_Low_Height && Temp(i,1) <= Female_Age_34_Up_Height && ...
            Temp(i,2) >= Female_Age_34_Low_Weight && Temp(i,2) <= Female_Age_34_Up_Weight
        Female_data_34 = [Female_data_34; Temp(i,1) Temp(i,2)];
        Save_data_Female = [Save_data_Female;34 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 35
[M N] = size(Female_data_35);
Temp = Female_data_35;
Female_data_35 = [];
for i = 1: M
    if Temp(i,1) >= Female_Age_35_Low_Height && Temp(i,1) <= Female_Age_35_Up_Height && ...
            Temp(i,2) >= Female_Age_35_Low_Weight && Temp(i,2) <= Female_Age_35_Up_Weight
        Female_data_35 = [Female_data_35; Temp(i,1) Temp(i,2)];
        Save_data_Female = [Save_data_Female;35 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 36
[M N] = size(Female_data_36);
Temp = Female_data_36;
Female_data_36 = [];
for i = 1: M
    if Temp(i,1) >= Female_Age_36_Low_Height && Temp(i,1) <= Female_Age_36_Up_Height && ...
            Temp(i,2) >= Female_Age_36_Low_Weight && Temp(i,2) <= Female_Age_36_Up_Weight
        Female_data_36 = [Female_data_36; Temp(i,1) Temp(i,2)];
        Save_data_Female = [Save_data_Female;36 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 37
[M N] = size(Female_data_37);
Temp = Female_data_37;
Female_data_37 = [];
for i = 1: M
    if Temp(i,1) >= Female_Age_37_Low_Height && Temp(i,1) <= Female_Age_37_Up_Height && ...
            Temp(i,2) >= Female_Age_37_Low_Weight && Temp(i,2) <= Female_Age_37_Up_Weight
        Female_data_37 = [Female_data_37; Temp(i,1) Temp(i,2)];
        Save_data_Female = [Save_data_Female;37 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 38
[M N] = size(Female_data_38);
Temp = Female_data_38;
Female_data_38 = [];
for i = 1: M
    if Temp(i,1) >= Female_Age_38_Low_Height && Temp(i,1) <= Female_Age_38_Up_Height && ...
            Temp(i,2) >= Female_Age_38_Low_Weight && Temp(i,2) <= Female_Age_38_Up_Weight
        Female_data_38 = [Female_data_38; Temp(i,1) Temp(i,2)];
        Save_data_Female = [Save_data_Female;38 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 39
[M N] = size(Female_data_39);
Temp = Female_data_39;
Female_data_39 = [];
for i = 1: M
    if Temp(i,1) >= Female_Age_39_Low_Height && Temp(i,1) <= Female_Age_39_Up_Height && ...
            Temp(i,2) >= Female_Age_39_Low_Weight && Temp(i,2) <= Female_Age_39_Up_Weight
        Female_data_39 = [Female_data_39; Temp(i,1) Temp(i,2)];
        Save_data_Female = [Save_data_Female;39 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 40
[M N] = size(Female_data_40);
Temp = Female_data_40;
Female_data_40 = [];
for i = 1: M
    if Temp(i,1) >= Female_Age_40_Low_Height && Temp(i,1) <= Female_Age_40_Up_Height && ...
            Temp(i,2) >= Female_Age_40_Low_Weight && Temp(i,2) <= Female_Age_40_Up_Weight
        Female_data_40 = [Female_data_40; Temp(i,1) Temp(i,2)];
        Save_data_Female = [Save_data_Female;40 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 41
[M N] = size(Female_data_41);
Temp = Female_data_41;
Female_data_41 = [];
for i = 1: M
    if Temp(i,1) >= Female_Age_41_Low_Height && Temp(i,1) <= Female_Age_41_Up_Height && ...
            Temp(i,2) >= Female_Age_41_Low_Weight && Temp(i,2) <= Female_Age_41_Up_Weight
        Female_data_41 = [Female_data_41; Temp(i,1) Temp(i,2)];
        Save_data_Female = [Save_data_Female;41 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 42
[M N] = size(Female_data_42);
Temp = Female_data_42;
Female_data_42 = [];
for i = 1: M
    if Temp(i,1) >= Female_Age_42_Low_Height && Temp(i,1) <= Female_Age_42_Up_Height && ...
            Temp(i,2) >= Female_Age_42_Low_Weight && Temp(i,2) <= Female_Age_42_Up_Weight
        Female_data_42 = [Female_data_42; Temp(i,1) Temp(i,2)];
        Save_data_Female = [Save_data_Female;42 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 43
[M N] = size(Female_data_43);
Temp = Female_data_43;
Female_data_43 = [];
for i = 1: M
    if Temp(i,1) >= Female_Age_43_Low_Height && Temp(i,1) <= Female_Age_43_Up_Height && ...
            Temp(i,2) >= Female_Age_43_Low_Weight && Temp(i,2) <= Female_Age_43_Up_Weight
        Female_data_43 = [Female_data_43; Temp(i,1) Temp(i,2)];
        Save_data_Female = [Save_data_Female;43 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 44
[M N] = size(Female_data_44);
Temp = Female_data_44;
Female_data_44 = [];
for i = 1: M
    if Temp(i,1) >= Female_Age_44_Low_Height && Temp(i,1) <= Female_Age_44_Up_Height && ...
            Temp(i,2) >= Female_Age_44_Low_Weight && Temp(i,2) <= Female_Age_44_Up_Weight
        Female_data_44 = [Female_data_44; Temp(i,1) Temp(i,2)];
        Save_data_Female = [Save_data_Female;44 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 45
[M N] = size(Female_data_45);
Temp = Female_data_45;
Female_data_45 = [];
for i = 1: M
    if Temp(i,1) >= Female_Age_45_Low_Height && Temp(i,1) <= Female_Age_45_Up_Height && ...
            Temp(i,2) >= Female_Age_45_Low_Weight && Temp(i,2) <= Female_Age_45_Up_Weight
        Female_data_45 = [Female_data_45; Temp(i,1) Temp(i,2)];
        Save_data_Female = [Save_data_Female;45 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 46
[M N] = size(Female_data_46);
Temp = Female_data_46;
Female_data_46 = [];
for i = 1: M
    if Temp(i,1) >= Female_Age_46_Low_Height && Temp(i,1) <= Female_Age_46_Up_Height && ...
            Temp(i,2) >= Female_Age_46_Low_Weight && Temp(i,2) <= Female_Age_46_Up_Weight
        Female_data_46 = [Female_data_46; Temp(i,1) Temp(i,2)];
        Save_data_Female = [Save_data_Female;46 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 47
[M N] = size(Female_data_47);
Temp = Female_data_47;
Female_data_47 = [];
for i = 1: M
    if Temp(i,1) >= Female_Age_47_Low_Height && Temp(i,1) <= Female_Age_47_Up_Height && ...
            Temp(i,2) >= Female_Age_47_Low_Weight && Temp(i,2) <= Female_Age_47_Up_Weight
        Female_data_47 = [Female_data_47; Temp(i,1) Temp(i,2)];
        Save_data_Female = [Save_data_Female;47 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 48
[M N] = size(Female_data_48);
Temp = Female_data_48;
Female_data_48 = [];
for i = 1: M
    if Temp(i,1) >= Female_Age_48_Low_Height && Temp(i,1) <= Female_Age_48_Up_Height && ...
            Temp(i,2) >= Female_Age_48_Low_Weight && Temp(i,2) <= Female_Age_48_Up_Weight
        Female_data_48 = [Female_data_48; Temp(i,1) Temp(i,2)];
        Save_data_Female = [Save_data_Female;48 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 49
[M N] = size(Female_data_49);
Temp = Female_data_49;
Female_data_49 = [];
for i = 1: M
    if Temp(i,1) >= Female_Age_49_Low_Height && Temp(i,1) <= Female_Age_49_Up_Height && ...
            Temp(i,2) >= Female_Age_49_Low_Weight && Temp(i,2) <= Female_Age_49_Up_Weight
        Female_data_49 = [Female_data_49; Temp(i,1) Temp(i,2)];
        Save_data_Female = [Save_data_Female;49 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 50
[M N] = size(Female_data_50);
Temp = Female_data_50;
Female_data_50 = [];
for i = 1: M
    if Temp(i,1) >= Female_Age_50_Low_Height && Temp(i,1) <= Female_Age_50_Up_Height && ...
            Temp(i,2) >= Female_Age_50_Low_Weight && Temp(i,2) <= Female_Age_50_Up_Weight
        Female_data_50 = [Female_data_50; Temp(i,1) Temp(i,2)];
        Save_data_Female = [Save_data_Female;50 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 51
[M N] = size(Female_data_51);
Temp = Female_data_51;
Female_data_51 = [];
for i = 1: M
    if Temp(i,1) >= Female_Age_51_Low_Height && Temp(i,1) <= Female_Age_51_Up_Height && ...
            Temp(i,2) >= Female_Age_51_Low_Weight && Temp(i,2) <= Female_Age_51_Up_Weight
        Female_data_51 = [Female_data_51; Temp(i,1) Temp(i,2)];
        Save_data_Female = [Save_data_Female;51 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 52
[M N] = size(Female_data_52);
Temp = Female_data_52;
Female_data_52 = [];
for i = 1: M
    if Temp(i,1) >= Female_Age_52_Low_Height && Temp(i,1) <= Female_Age_52_Up_Height && ...
            Temp(i,2) >= Female_Age_52_Low_Weight && Temp(i,2) <= Female_Age_52_Up_Weight
        Female_data_52 = [Female_data_52; Temp(i,1) Temp(i,2)];
        Save_data_Female = [Save_data_Female;52 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 53
[M N] = size(Female_data_53);
Temp = Female_data_53;
Female_data_53 = [];
for i = 1: M
    if Temp(i,1) >= Female_Age_53_Low_Height && Temp(i,1) <= Female_Age_53_Up_Height && ...
            Temp(i,2) >= Female_Age_53_Low_Weight && Temp(i,2) <= Female_Age_53_Up_Weight
        Female_data_53 = [Female_data_53; Temp(i,1) Temp(i,2)];
        Save_data_Female = [Save_data_Female;53 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 54
[M N] = size(Female_data_54);
Temp = Female_data_54;
Female_data_54 = [];
for i = 1: M
    if Temp(i,1) >= Female_Age_54_Low_Height && Temp(i,1) <= Female_Age_54_Up_Height && ...
            Temp(i,2) >= Female_Age_54_Low_Weight && Temp(i,2) <= Female_Age_54_Up_Weight
        Female_data_54 = [Female_data_54; Temp(i,1) Temp(i,2)];
        Save_data_Female = [Save_data_Female;54 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 55
[M N] = size(Female_data_55);
Temp = Female_data_55;
Female_data_55 = [];
for i = 1: M
    if Temp(i,1) >= Female_Age_55_Low_Height && Temp(i,1) <= Female_Age_55_Up_Height && ...
            Temp(i,2) >= Female_Age_55_Low_Weight && Temp(i,2) <= Female_Age_55_Up_Weight
        Female_data_55 = [Female_data_55; Temp(i,1) Temp(i,2)];
        Save_data_Female = [Save_data_Female;55 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 56
[M N] = size(Female_data_56);
Temp = Female_data_56;
Female_data_56 = [];
for i = 1: M
    if Temp(i,1) >= Female_Age_56_Low_Height && Temp(i,1) <= Female_Age_56_Up_Height && ...
            Temp(i,2) >= Female_Age_56_Low_Weight && Temp(i,2) <= Female_Age_56_Up_Weight
        Female_data_56 = [Female_data_56; Temp(i,1) Temp(i,2)];
        Save_data_Female = [Save_data_Female;56 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 57
[M N] = size(Female_data_57);
Temp = Female_data_57;
Female_data_57 = [];
for i = 1: M
    if Temp(i,1) >= Female_Age_57_Low_Height && Temp(i,1) <= Female_Age_57_Up_Height && ...
            Temp(i,2) >= Female_Age_57_Low_Weight && Temp(i,2) <= Female_Age_57_Up_Weight
        Female_data_57 = [Female_data_57; Temp(i,1) Temp(i,2)];
        Save_data_Female = [Save_data_Female;57 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 58
[M N] = size(Female_data_58);
Temp = Female_data_58;
Female_data_58 = [];
for i = 1: M
    if Temp(i,1) >= Female_Age_58_Low_Height && Temp(i,1) <= Female_Age_58_Up_Height && ...
            Temp(i,2) >= Female_Age_58_Low_Weight && Temp(i,2) <= Female_Age_58_Up_Weight
        Female_data_58 = [Female_data_58; Temp(i,1) Temp(i,2)];
        Save_data_Female = [Save_data_Female;58 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 59
[M N] = size(Female_data_59);
Temp = Female_data_59;
Female_data_59 = [];
for i = 1: M
    if Temp(i,1) >= Female_Age_59_Low_Height && Temp(i,1) <= Female_Age_59_Up_Height && ...
            Temp(i,2) >= Female_Age_59_Low_Weight && Temp(i,2) <= Female_Age_59_Up_Weight
        Female_data_59 = [Female_data_59; Temp(i,1) Temp(i,2)];
        Save_data_Female = [Save_data_Female;59 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 60
[M N] = size(Female_data_60);
Temp = Female_data_60;
Female_data_60 = [];
for i = 1: M
    if Temp(i,1) >= Female_Age_60_Low_Height && Temp(i,1) <= Female_Age_60_Up_Height && ...
            Temp(i,2) >= Female_Age_60_Low_Weight && Temp(i,2) <= Female_Age_60_Up_Weight
        Female_data_60 = [Female_data_60; Temp(i,1) Temp(i,2)];
        Save_data_Female = [Save_data_Female;60 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 61
[M N] = size(Female_data_61);
Temp = Female_data_61;
Female_data_61 = [];
for i = 1: M
    if Temp(i,1) >= Female_Age_61_Low_Height && Temp(i,1) <= Female_Age_61_Up_Height && ...
            Temp(i,2) >= Female_Age_61_Low_Weight && Temp(i,2) <= Female_Age_61_Up_Weight
        Female_data_61 = [Female_data_61; Temp(i,1) Temp(i,2)];
        Save_data_Female = [Save_data_Female;61 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 62
[M N] = size(Female_data_62);
Temp = Female_data_62;
Female_data_62 = [];
for i = 1: M
    if Temp(i,1) >= Female_Age_62_Low_Height && Temp(i,1) <= Female_Age_62_Up_Height && ...
            Temp(i,2) >= Female_Age_62_Low_Weight && Temp(i,2) <= Female_Age_62_Up_Weight
        Female_data_62 = [Female_data_62; Temp(i,1) Temp(i,2)];
        Save_data_Female = [Save_data_Female;62 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 63
[M N] = size(Female_data_63);
Temp = Female_data_63;
Female_data_63 = [];
for i = 1: M
    if Temp(i,1) >= Female_Age_63_Low_Height && Temp(i,1) <= Female_Age_63_Up_Height && ...
            Temp(i,2) >= Female_Age_63_Low_Weight && Temp(i,2) <= Female_Age_63_Up_Weight
        Female_data_63 = [Female_data_63; Temp(i,1) Temp(i,2)];
        Save_data_Female = [Save_data_Female;63 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 64
[M N] = size(Female_data_64);
Temp = Female_data_64;
Female_data_64 = [];
for i = 1: M
    if Temp(i,1) >= Female_Age_64_Low_Height && Temp(i,1) <= Female_Age_64_Up_Height && ...
            Temp(i,2) >= Female_Age_64_Low_Weight && Temp(i,2) <= Female_Age_64_Up_Weight
        Female_data_64 = [Female_data_64; Temp(i,1) Temp(i,2)];
        Save_data_Female = [Save_data_Female;64 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 65
[M N] = size(Female_data_65);
Temp = Female_data_65;
Female_data_65 = [];
for i = 1: M
    if Temp(i,1) >= Female_Age_65_Low_Height && Temp(i,1) <= Female_Age_65_Up_Height && ...
            Temp(i,2) >= Female_Age_65_Low_Weight && Temp(i,2) <= Female_Age_65_Up_Weight
        Female_data_65 = [Female_data_65; Temp(i,1) Temp(i,2)];
        Save_data_Female = [Save_data_Female;65 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 66
[M N] = size(Female_data_66);
Temp = Female_data_66;
Female_data_66 = [];
for i = 1: M
    if Temp(i,1) >= Female_Age_66_Low_Height && Temp(i,1) <= Female_Age_66_Up_Height && ...
            Temp(i,2) >= Female_Age_66_Low_Weight && Temp(i,2) <= Female_Age_66_Up_Weight
        Female_data_66 = [Female_data_66; Temp(i,1) Temp(i,2)];
        Save_data_Female = [Save_data_Female;66 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 67
[M N] = size(Female_data_67);
Temp = Female_data_67;
Female_data_67 = [];
for i = 1: M
    if Temp(i,1) >= Female_Age_67_Low_Height && Temp(i,1) <= Female_Age_67_Up_Height && ...
            Temp(i,2) >= Female_Age_67_Low_Weight && Temp(i,2) <= Female_Age_67_Up_Weight
        Female_data_67 = [Female_data_67; Temp(i,1) Temp(i,2)];
        Save_data_Female = [Save_data_Female;67 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 68
[M N] = size(Female_data_68);
Temp = Female_data_68;
Female_data_68 = [];
for i = 1: M
    if Temp(i,1) >= Female_Age_68_Low_Height && Temp(i,1) <= Female_Age_68_Up_Height && ...
            Temp(i,2) >= Female_Age_68_Low_Weight && Temp(i,2) <= Female_Age_68_Up_Weight
        Female_data_68 = [Female_data_68; Temp(i,1) Temp(i,2)];
        Save_data_Female = [Save_data_Female;68 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 69
[M N] = size(Female_data_69);
Temp = Female_data_69;
Female_data_69 = [];
for i = 1: M
    if Temp(i,1) >= Female_Age_69_Low_Height && Temp(i,1) <= Female_Age_69_Up_Height && ...
            Temp(i,2) >= Female_Age_69_Low_Weight && Temp(i,2) <= Female_Age_69_Up_Weight
        Female_data_69 = [Female_data_69; Temp(i,1) Temp(i,2)];
        Save_data_Female = [Save_data_Female;69 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 70
[M N] = size(Female_data_70);
Temp = Female_data_70;
Female_data_70 = [];
for i = 1: M
    if Temp(i,1) >= Female_Age_70_Low_Height && Temp(i,1) <= Female_Age_70_Up_Height && ...
            Temp(i,2) >= Female_Age_70_Low_Weight && Temp(i,2) <= Female_Age_70_Up_Weight
        Female_data_70 = [Female_data_70; Temp(i,1) Temp(i,2)];
        Save_data_Female = [Save_data_Female;70 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 71
[M N] = size(Female_data_71);
Temp = Female_data_71;
Female_data_71 = [];
for i = 1: M
    if Temp(i,1) >= Female_Age_71_Low_Height && Temp(i,1) <= Female_Age_71_Up_Height && ...
            Temp(i,2) >= Female_Age_71_Low_Weight && Temp(i,2) <= Female_Age_71_Up_Weight
        Female_data_71 = [Female_data_71; Temp(i,1) Temp(i,2)];
        Save_data_Female = [Save_data_Female;71 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 72
[M N] = size(Female_data_72);
Temp = Female_data_72;
Female_data_72 = [];
for i = 1: M
    if Temp(i,1) >= Female_Age_72_Low_Height && Temp(i,1) <= Female_Age_72_Up_Height && ...
            Temp(i,2) >= Female_Age_72_Low_Weight && Temp(i,2) <= Female_Age_72_Up_Weight
        Female_data_72 = [Female_data_72; Temp(i,1) Temp(i,2)];
        Save_data_Female = [Save_data_Female;72 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 73
[M N] = size(Female_data_73);
Temp = Female_data_73;
Female_data_73 = [];
for i = 1: M
    if Temp(i,1) >= Female_Age_73_Low_Height && Temp(i,1) <= Female_Age_73_Up_Height && ...
            Temp(i,2) >= Female_Age_73_Low_Weight && Temp(i,2) <= Female_Age_73_Up_Weight
        Female_data_73 = [Female_data_73; Temp(i,1) Temp(i,2)];
        Save_data_Female = [Save_data_Female;73 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 74
[M N] = size(Female_data_74);
Temp = Female_data_74;
Female_data_74 = [];
for i = 1: M
    if Temp(i,1) >= Female_Age_74_Low_Height && Temp(i,1) <= Female_Age_74_Up_Height && ...
            Temp(i,2) >= Female_Age_74_Low_Weight && Temp(i,2) <= Female_Age_74_Up_Weight
        Female_data_74 = [Female_data_74; Temp(i,1) Temp(i,2)];
        Save_data_Female = [Save_data_Female;74 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 75
[M N] = size(Female_data_75);
Temp = Female_data_75;
Female_data_75 = [];
for i = 1: M
    if Temp(i,1) >= Female_Age_75_Low_Height && Temp(i,1) <= Female_Age_75_Up_Height && ...
            Temp(i,2) >= Female_Age_75_Low_Weight && Temp(i,2) <= Female_Age_75_Up_Weight
        Female_data_75 = [Female_data_75; Temp(i,1) Temp(i,2)];
        Save_data_Female = [Save_data_Female;75 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 76
[M N] = size(Female_data_76);
Temp = Female_data_76;
Female_data_76 = [];
for i = 1: M
    if Temp(i,1) >= Female_Age_76_Low_Height && Temp(i,1) <= Female_Age_76_Up_Height && ...
            Temp(i,2) >= Female_Age_76_Low_Weight && Temp(i,2) <= Female_Age_76_Up_Weight
        Female_data_76 = [Female_data_76; Temp(i,1) Temp(i,2)];
        Save_data_Female = [Save_data_Female;76 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 77
[M N] = size(Female_data_77);
Temp = Female_data_77;
Female_data_77 = [];
for i = 1: M
    if Temp(i,1) >= Female_Age_77_Low_Height && Temp(i,1) <= Female_Age_77_Up_Height && ...
            Temp(i,2) >= Female_Age_77_Low_Weight && Temp(i,2) <= Female_Age_77_Up_Weight
        Female_data_77 = [Female_data_77; Temp(i,1) Temp(i,2)];
        Save_data_Female = [Save_data_Female;77 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 78
[M N] = size(Female_data_78);
Temp = Female_data_78;
Female_data_78 = [];
for i = 1: M
    if Temp(i,1) >= Female_Age_78_Low_Height && Temp(i,1) <= Female_Age_78_Up_Height && ...
            Temp(i,2) >= Female_Age_78_Low_Weight && Temp(i,2) <= Female_Age_78_Up_Weight
        Female_data_78 = [Female_data_78; Temp(i,1) Temp(i,2)];
        Save_data_Female = [Save_data_Female;78 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 79
[M N] = size(Female_data_79);
Temp = Female_data_79;
Female_data_79 = [];
for i = 1: M
    if Temp(i,1) >= Female_Age_79_Low_Height && Temp(i,1) <= Female_Age_79_Up_Height && ...
            Temp(i,2) >= Female_Age_79_Low_Weight && Temp(i,2) <= Female_Age_79_Up_Weight
        Female_data_79 = [Female_data_79; Temp(i,1) Temp(i,2)];
        Save_data_Female = [Save_data_Female;79 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 80
[M N] = size(Female_data_80);
Temp = Female_data_80;
Female_data_80 = [];
for i = 1: M
    if Temp(i,1) >= Female_Age_80_Low_Height && Temp(i,1) <= Female_Age_80_Up_Height && ...
            Temp(i,2) >= Female_Age_80_Low_Weight && Temp(i,2) <= Female_Age_80_Up_Weight
        Female_data_80 = [Female_data_80; Temp(i,1) Temp(i,2)];
        Save_data_Female = [Save_data_Female;80 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 81
[M N] = size(Female_data_81);
Temp = Female_data_81;
Female_data_81 = [];
for i = 1: M
    if Temp(i,1) >= Female_Age_81_Low_Height && Temp(i,1) <= Female_Age_81_Up_Height && ...
            Temp(i,2) >= Female_Age_81_Low_Weight && Temp(i,2) <= Female_Age_81_Up_Weight
        Female_data_81 = [Female_data_81; Temp(i,1) Temp(i,2)];
        Save_data_Female = [Save_data_Female;81 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 82
[M N] = size(Female_data_82);
Temp = Female_data_82;
Female_data_82 = [];
for i = 1: M
    if Temp(i,1) >= Female_Age_82_Low_Height && Temp(i,1) <= Female_Age_82_Up_Height && ...
            Temp(i,2) >= Female_Age_82_Low_Weight && Temp(i,2) <= Female_Age_82_Up_Weight
        Female_data_82 = [Female_data_82; Temp(i,1) Temp(i,2)];
        Save_data_Female = [Save_data_Female;82 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 83
[M N] = size(Female_data_83);
Temp = Female_data_83;
Female_data_83 = [];
for i = 1: M
    if Temp(i,1) >= Female_Age_83_Low_Height && Temp(i,1) <= Female_Age_83_Up_Height && ...
            Temp(i,2) >= Female_Age_83_Low_Weight && Temp(i,2) <= Female_Age_83_Up_Weight
        Female_data_83 = [Female_data_83; Temp(i,1) Temp(i,2)];
        Save_data_Female = [Save_data_Female;83 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 84
[M N] = size(Female_data_84);
Temp = Female_data_84;
Female_data_84 = [];
for i = 1: M
    if Temp(i,1) >= Female_Age_84_Low_Height && Temp(i,1) <= Female_Age_84_Up_Height && ...
            Temp(i,2) >= Female_Age_84_Low_Weight && Temp(i,2) <= Female_Age_84_Up_Weight
        Female_data_84 = [Female_data_84; Temp(i,1) Temp(i,2)];
        Save_data_Female = [Save_data_Female;84 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 85
[M N] = size(Female_data_85);
Temp = Female_data_85;
Female_data_85 = [];
for i = 1: M
    if Temp(i,1) >= Female_Age_85_Low_Height && Temp(i,1) <= Female_Age_85_Up_Height && ...
            Temp(i,2) >= Female_Age_85_Low_Weight && Temp(i,2) <= Female_Age_85_Up_Weight
        Female_data_85 = [Female_data_85; Temp(i,1) Temp(i,2)];
        Save_data_Female = [Save_data_Female;85 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end

% For Male
Save_data_Male = [];
% Age 1
[M N] = size(Male_data_1);
Temp = Male_data_1;
Male_data_1 = [];
for i = 1: M
    if Temp(i,1) >= Male_Age_1_Low_Height && Temp(i,1) <= Male_Age_1_Up_Height && ...
            Temp(i,2) >= Male_Age_1_Low_Weight && Temp(i,2) <= Male_Age_1_Up_Weight
        Male_data_1 = [Male_data_1; Temp(i,1) Temp(i,2)];
        Save_data_Male = [Save_data_Male;1 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 2
[M N] = size(Male_data_2);
Temp = Male_data_2;
Male_data_2 = [];
for i = 1: M
    if Temp(i,1) >= Male_Age_2_Low_Height && Temp(i,1) <= Male_Age_2_Up_Height && ...
            Temp(i,2) >= Male_Age_2_Low_Weight && Temp(i,2) <= Male_Age_2_Up_Weight
        Male_data_2 = [Male_data_2; Temp(i,1) Temp(i,2)];
        Save_data_Male = [Save_data_Male;2 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 3
[M N] = size(Male_data_3);
Temp = Male_data_3;
Male_data_3 = [];
for i = 1: M
    if Temp(i,1) >= Male_Age_3_Low_Height && Temp(i,1) <= Male_Age_3_Up_Height && ...
            Temp(i,2) >= Male_Age_3_Low_Weight && Temp(i,2) <= Male_Age_3_Up_Weight
        Male_data_3 = [Male_data_3; Temp(i,1) Temp(i,2)];
        Save_data_Male = [Save_data_Male;3 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 4
[M N] = size(Male_data_4);
Temp = Male_data_4;
Male_data_4 = [];
for i = 1: M
    if Temp(i,1) >= Male_Age_4_Low_Height && Temp(i,1) <= Male_Age_4_Up_Height && ...
            Temp(i,2) >= Male_Age_4_Low_Weight && Temp(i,2) <= Male_Age_4_Up_Weight
        Male_data_4 = [Male_data_4; Temp(i,1) Temp(i,2)];
        Save_data_Male = [Save_data_Male;4 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 5
[M N] = size(Male_data_5);
Temp = Male_data_5;
Male_data_5 = [];
for i = 1: M
    if Temp(i,1) >= Male_Age_5_Low_Height && Temp(i,1) <= Male_Age_5_Up_Height && ...
            Temp(i,2) >= Male_Age_5_Low_Weight && Temp(i,2) <= Male_Age_5_Up_Weight
        Male_data_5 = [Male_data_5; Temp(i,1) Temp(i,2)];
        Save_data_Male = [Save_data_Male;5 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 6
[M N] = size(Male_data_6);
Temp = Male_data_6;
Male_data_6 = [];
for i = 1: M
    if Temp(i,1) >= Male_Age_6_Low_Height && Temp(i,1) <= Male_Age_6_Up_Height && ...
            Temp(i,2) >= Male_Age_6_Low_Weight && Temp(i,2) <= Male_Age_6_Up_Weight
        Male_data_6 = [Male_data_6; Temp(i,1) Temp(i,2)];
        Save_data_Male = [Save_data_Male;6 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 7
[M N] = size(Male_data_7);
Temp = Male_data_7;
Male_data_7 = [];
for i = 1: M
    if Temp(i,1) >= Male_Age_7_Low_Height && Temp(i,1) <= Male_Age_7_Up_Height && ...
            Temp(i,2) >= Male_Age_7_Low_Weight && Temp(i,2) <= Male_Age_7_Up_Weight
        Male_data_7 = [Male_data_7; Temp(i,1) Temp(i,2)];
        Save_data_Male = [Save_data_Male;7 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 8
[M N] = size(Male_data_8);
Temp = Male_data_8;
Male_data_8 = [];
for i = 1: M
    if Temp(i,1) >= Male_Age_8_Low_Height && Temp(i,1) <= Male_Age_8_Up_Height && ...
            Temp(i,2) >= Male_Age_8_Low_Weight && Temp(i,2) <= Male_Age_8_Up_Weight
        Male_data_8 = [Male_data_8; Temp(i,1) Temp(i,2)];
        Save_data_Male = [Save_data_Male;8 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 9
[M N] = size(Male_data_9);
Temp = Male_data_9;
Male_data_9 = [];
for i = 1: M
    if Temp(i,1) >= Male_Age_9_Low_Height && Temp(i,1) <= Male_Age_9_Up_Height && ...
            Temp(i,2) >= Male_Age_9_Low_Weight && Temp(i,2) <= Male_Age_9_Up_Weight
        Male_data_9 = [Male_data_9; Temp(i,1) Temp(i,2)];
        Save_data_Male = [Save_data_Male;9 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 10
[M N] = size(Male_data_10);
Temp = Male_data_10;
Male_data_10 = [];
for i = 1: M
    if Temp(i,1) >= Male_Age_10_Low_Height && Temp(i,1) <= Male_Age_10_Up_Height && ...
            Temp(i,2) >= Male_Age_10_Low_Weight && Temp(i,2) <= Male_Age_10_Up_Weight
        Male_data_10 = [Male_data_10; Temp(i,1) Temp(i,2)];
        Save_data_Male = [Save_data_Male;10 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 11
[M N] = size(Male_data_11);
Temp = Male_data_11;
Male_data_11 = [];
for i = 1: M
    if Temp(i,1) >= Male_Age_11_Low_Height && Temp(i,1) <= Male_Age_11_Up_Height && ...
            Temp(i,2) >= Male_Age_11_Low_Weight && Temp(i,2) <= Male_Age_11_Up_Weight
        Male_data_11 = [Male_data_11; Temp(i,1) Temp(i,2)];
        Save_data_Male = [Save_data_Male;11 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 12
[M N] = size(Male_data_12);
Temp = Male_data_12;
Male_data_12 = [];
for i = 1: M
    if Temp(i,1) >= Male_Age_12_Low_Height && Temp(i,1) <= Male_Age_12_Up_Height && ...
            Temp(i,2) >= Male_Age_12_Low_Weight && Temp(i,2) <= Male_Age_12_Up_Weight
        Male_data_12 = [Male_data_12; Temp(i,1) Temp(i,2)];
        Save_data_Male = [Save_data_Male;12 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 13
[M N] = size(Male_data_13);
Temp = Male_data_13;
Male_data_13 = [];
for i = 1: M
    if Temp(i,1) >= Male_Age_13_Low_Height && Temp(i,1) <= Male_Age_13_Up_Height && ...
            Temp(i,2) >= Male_Age_13_Low_Weight && Temp(i,2) <= Male_Age_13_Up_Weight
        Male_data_13 = [Male_data_13; Temp(i,1) Temp(i,2)];
        Save_data_Male = [Save_data_Male;13 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 14
[M N] = size(Male_data_14);
Temp = Male_data_14;
Male_data_14 = [];
for i = 1: M
    if Temp(i,1) >= Male_Age_14_Low_Height && Temp(i,1) <= Male_Age_14_Up_Height && ...
            Temp(i,2) >= Male_Age_14_Low_Weight && Temp(i,2) <= Male_Age_14_Up_Weight
        Male_data_14 = [Male_data_14; Temp(i,1) Temp(i,2)];
        Save_data_Male = [Save_data_Male;14 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 15
[M N] = size(Male_data_15);
Temp = Male_data_15;
Male_data_15 = [];
for i = 1: M
    if Temp(i,1) >= Male_Age_15_Low_Height && Temp(i,1) <= Male_Age_15_Up_Height && ...
            Temp(i,2) >= Male_Age_15_Low_Weight && Temp(i,2) <= Male_Age_15_Up_Weight
        Male_data_15 = [Male_data_15; Temp(i,1) Temp(i,2)];
        Save_data_Male = [Save_data_Male;15 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 16
[M N] = size(Male_data_16);
Temp = Male_data_16;
Male_data_16 = [];
for i = 1: M
    if Temp(i,1) >= Male_Age_16_Low_Height && Temp(i,1) <= Male_Age_16_Up_Height && ...
            Temp(i,2) >= Male_Age_16_Low_Weight && Temp(i,2) <= Male_Age_16_Up_Weight
        Male_data_16 = [Male_data_16; Temp(i,1) Temp(i,2)];
        Save_data_Male = [Save_data_Male;16 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 17
[M N] = size(Male_data_17);
Temp = Male_data_17;
Male_data_17 = [];
for i = 1: M
    if Temp(i,1) >= Male_Age_17_Low_Height && Temp(i,1) <= Male_Age_17_Up_Height && ...
            Temp(i,2) >= Male_Age_17_Low_Weight && Temp(i,2) <= Male_Age_17_Up_Weight
        Male_data_17 = [Male_data_17; Temp(i,1) Temp(i,2)];
        Save_data_Male = [Save_data_Male;17 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 18
[M N] = size(Male_data_18);
Temp = Male_data_18;
Male_data_18 = [];
for i = 1: M
    if Temp(i,1) >= Male_Age_18_Low_Height && Temp(i,1) <= Male_Age_18_Up_Height && ...
            Temp(i,2) >= Male_Age_18_Low_Weight && Temp(i,2) <= Male_Age_18_Up_Weight
        Male_data_18 = [Male_data_18; Temp(i,1) Temp(i,2)];
        Save_data_Male = [Save_data_Male;18 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 19
[M N] = size(Male_data_19);
Temp = Male_data_19;
Male_data_19 = [];
for i = 1: M
    if Temp(i,1) >= Male_Age_19_Low_Height && Temp(i,1) <= Male_Age_19_Up_Height && ...
            Temp(i,2) >= Male_Age_19_Low_Weight && Temp(i,2) <= Male_Age_19_Up_Weight
        Male_data_19 = [Male_data_19; Temp(i,1) Temp(i,2)];
        Save_data_Male = [Save_data_Male;19 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 20
[M N] = size(Male_data_10);
Temp = Male_data_10;
Male_data_10 = [];
for i = 1: M
    if Temp(i,1) >= Male_Age_20_Low_Height && Temp(i,1) <= Male_Age_20_Up_Height && ...
            Temp(i,2) >= Male_Age_20_Low_Weight && Temp(i,2) <= Male_Age_20_Up_Weight
        Male_data_10 = [Male_data_10; Temp(i,1) Temp(i,2)];
        Save_data_Male = [Save_data_Male;20 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 21
[M N] = size(Male_data_11);
Temp = Male_data_11;
Male_data_11 = [];
for i = 1: M
    if Temp(i,1) >= Male_Age_21_Low_Height && Temp(i,1) <= Male_Age_21_Up_Height && ...
            Temp(i,2) >= Male_Age_21_Low_Weight && Temp(i,2) <= Male_Age_21_Up_Weight
        Male_data_11 = [Male_data_11; Temp(i,1) Temp(i,2)];
        Save_data_Male = [Save_data_Male;21 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 22
[M N] = size(Male_data_12);
Temp = Male_data_12;
Male_data_12 = [];
for i = 1: M
    if Temp(i,1) >= Male_Age_22_Low_Height && Temp(i,1) <= Male_Age_22_Up_Height && ...
            Temp(i,2) >= Male_Age_22_Low_Weight && Temp(i,2) <= Male_Age_22_Up_Weight
        Male_data_12 = [Male_data_12; Temp(i,1) Temp(i,2)];
        Save_data_Male = [Save_data_Male;22 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 23
[M N] = size(Male_data_13);
Temp = Male_data_13;
Male_data_13 = [];
for i = 1: M
    if Temp(i,1) >= Male_Age_23_Low_Height && Temp(i,1) <= Male_Age_23_Up_Height && ...
            Temp(i,2) >= Male_Age_23_Low_Weight && Temp(i,2) <= Male_Age_23_Up_Weight
        Male_data_13 = [Male_data_13; Temp(i,1) Temp(i,2)];
        Save_data_Male = [Save_data_Male;23 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 24
[M N] = size(Male_data_14);
Temp = Male_data_14;
Male_data_14 = [];
for i = 1: M
    if Temp(i,1) >= Male_Age_24_Low_Height && Temp(i,1) <= Male_Age_24_Up_Height && ...
            Temp(i,2) >= Male_Age_24_Low_Weight && Temp(i,2) <= Male_Age_24_Up_Weight
        Male_data_14 = [Male_data_14; Temp(i,1) Temp(i,2)];
        Save_data_Male = [Save_data_Male;24 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 25
[M N] = size(Male_data_15);
Temp = Male_data_15;
Male_data_15 = [];
for i = 1: M
    if Temp(i,1) >= Male_Age_25_Low_Height && Temp(i,1) <= Male_Age_25_Up_Height && ...
            Temp(i,2) >= Male_Age_25_Low_Weight && Temp(i,2) <= Male_Age_25_Up_Weight
        Male_data_15 = [Male_data_15; Temp(i,1) Temp(i,2)];
        Save_data_Male = [Save_data_Male;25 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 26
[M N] = size(Male_data_16);
Temp = Male_data_16;
Male_data_16 = [];
for i = 1: M
    if Temp(i,1) >= Male_Age_26_Low_Height && Temp(i,1) <= Male_Age_26_Up_Height && ...
            Temp(i,2) >= Male_Age_26_Low_Weight && Temp(i,2) <= Male_Age_26_Up_Weight
        Male_data_16 = [Male_data_16; Temp(i,1) Temp(i,2)];
        Save_data_Male = [Save_data_Male;26 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 27
[M N] = size(Male_data_17);
Temp = Male_data_17;
Male_data_17 = [];
for i = 1: M
    if Temp(i,1) >= Male_Age_27_Low_Height && Temp(i,1) <= Male_Age_27_Up_Height && ...
            Temp(i,2) >= Male_Age_27_Low_Weight && Temp(i,2) <= Male_Age_27_Up_Weight
        Male_data_17 = [Male_data_17; Temp(i,1) Temp(i,2)];
        Save_data_Male = [Save_data_Male;27 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 28
[M N] = size(Male_data_18);
Temp = Male_data_18;
Male_data_18 = [];
for i = 1: M
    if Temp(i,1) >= Male_Age_28_Low_Height && Temp(i,1) <= Male_Age_28_Up_Height && ...
            Temp(i,2) >= Male_Age_28_Low_Weight && Temp(i,2) <= Male_Age_28_Up_Weight
        Male_data_18 = [Male_data_18; Temp(i,1) Temp(i,2)];
        Save_data_Male = [Save_data_Male;28 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 29
[M N] = size(Male_data_19);
Temp = Male_data_19;
Male_data_19 = [];
for i = 1: M
    if Temp(i,1) >= Male_Age_29_Low_Height && Temp(i,1) <= Male_Age_29_Up_Height && ...
            Temp(i,2) >= Male_Age_29_Low_Weight && Temp(i,2) <= Male_Age_29_Up_Weight
        Male_data_19 = [Male_data_19; Temp(i,1) Temp(i,2)];
        Save_data_Male = [Save_data_Male;29 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 30
[M N] = size(Male_data_30);
Temp = Male_data_30;
Male_data_30 = [];
for i = 1: M
    if Temp(i,1) >= Male_Age_30_Low_Height && Temp(i,1) <= Male_Age_30_Up_Height && ...
            Temp(i,2) >= Male_Age_30_Low_Weight && Temp(i,2) <= Male_Age_30_Up_Weight
        Male_data_30 = [Male_data_30; Temp(i,1) Temp(i,2)];
        Save_data_Male = [Save_data_Male;30 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 31
[M N] = size(Male_data_31);
Temp = Male_data_31;
Male_data_31 = [];
for i = 1: M
    if Temp(i,1) >= Male_Age_31_Low_Height && Temp(i,1) <= Male_Age_31_Up_Height && ...
            Temp(i,2) >= Male_Age_31_Low_Weight && Temp(i,2) <= Male_Age_31_Up_Weight
        Male_data_31 = [Male_data_31; Temp(i,1) Temp(i,2)];
        Save_data_Male = [Save_data_Male;31 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 32
[M N] = size(Male_data_32);
Temp = Male_data_32;
Male_data_32 = [];
for i = 1: M
    if Temp(i,1) >= Male_Age_32_Low_Height && Temp(i,1) <= Male_Age_32_Up_Height && ...
            Temp(i,2) >= Male_Age_32_Low_Weight && Temp(i,2) <= Male_Age_32_Up_Weight
        Male_data_32 = [Male_data_32; Temp(i,1) Temp(i,2)];
        Save_data_Male = [Save_data_Male;32 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 33
[M N] = size(Male_data_33);
Temp = Male_data_33;
Male_data_33 = [];
for i = 1: M
    if Temp(i,1) >= Male_Age_33_Low_Height && Temp(i,1) <= Male_Age_33_Up_Height && ...
            Temp(i,2) >= Male_Age_33_Low_Weight && Temp(i,2) <= Male_Age_33_Up_Weight
        Male_data_33 = [Male_data_33; Temp(i,1) Temp(i,2)];
        Save_data_Male = [Save_data_Male;33 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 34
[M N] = size(Male_data_34);
Temp = Male_data_34;
Male_data_34 = [];
for i = 1: M
    if Temp(i,1) >= Male_Age_34_Low_Height && Temp(i,1) <= Male_Age_34_Up_Height && ...
            Temp(i,2) >= Male_Age_34_Low_Weight && Temp(i,2) <= Male_Age_34_Up_Weight
        Male_data_34 = [Male_data_34; Temp(i,1) Temp(i,2)];
        Save_data_Male = [Save_data_Male;34 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 35
[M N] = size(Male_data_35);
Temp = Male_data_35;
Male_data_35 = [];
for i = 1: M
    if Temp(i,1) >= Male_Age_35_Low_Height && Temp(i,1) <= Male_Age_35_Up_Height && ...
            Temp(i,2) >= Male_Age_35_Low_Weight && Temp(i,2) <= Male_Age_35_Up_Weight
        Male_data_35 = [Male_data_35; Temp(i,1) Temp(i,2)];
        Save_data_Male = [Save_data_Male;35 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 36
[M N] = size(Male_data_36);
Temp = Male_data_36;
Male_data_36 = [];
for i = 1: M
    if Temp(i,1) >= Male_Age_36_Low_Height && Temp(i,1) <= Male_Age_36_Up_Height && ...
            Temp(i,2) >= Male_Age_36_Low_Weight && Temp(i,2) <= Male_Age_36_Up_Weight
        Male_data_36 = [Male_data_36; Temp(i,1) Temp(i,2)];
        Save_data_Male = [Save_data_Male;36 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 37
[M N] = size(Male_data_37);
Temp = Male_data_37;
Male_data_37 = [];
for i = 1: M
    if Temp(i,1) >= Male_Age_37_Low_Height && Temp(i,1) <= Male_Age_37_Up_Height && ...
            Temp(i,2) >= Male_Age_37_Low_Weight && Temp(i,2) <= Male_Age_37_Up_Weight
        Male_data_37 = [Male_data_37; Temp(i,1) Temp(i,2)];
        Save_data_Male = [Save_data_Male;37 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 38
[M N] = size(Male_data_38);
Temp = Male_data_38;
Male_data_38 = [];
for i = 1: M
    if Temp(i,1) >= Male_Age_38_Low_Height && Temp(i,1) <= Male_Age_38_Up_Height && ...
            Temp(i,2) >= Male_Age_38_Low_Weight && Temp(i,2) <= Male_Age_38_Up_Weight
        Male_data_38 = [Male_data_38; Temp(i,1) Temp(i,2)];
        Save_data_Male = [Save_data_Male;38 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 39
[M N] = size(Male_data_39);
Temp = Male_data_39;
Male_data_39 = [];
for i = 1: M
    if Temp(i,1) >= Male_Age_39_Low_Height && Temp(i,1) <= Male_Age_39_Up_Height && ...
            Temp(i,2) >= Male_Age_39_Low_Weight && Temp(i,2) <= Male_Age_39_Up_Weight
        Male_data_39 = [Male_data_39; Temp(i,1) Temp(i,2)];
        Save_data_Male = [Save_data_Male;39 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 40
[M N] = size(Male_data_40);
Temp = Male_data_40;
Male_data_40 = [];
for i = 1: M
    if Temp(i,1) >= Male_Age_40_Low_Height && Temp(i,1) <= Male_Age_40_Up_Height && ...
            Temp(i,2) >= Male_Age_40_Low_Weight && Temp(i,2) <= Male_Age_40_Up_Weight
        Male_data_40 = [Male_data_40; Temp(i,1) Temp(i,2)];
        Save_data_Male = [Save_data_Male;40 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 41
[M N] = size(Male_data_41);
Temp = Male_data_41;
Male_data_41 = [];
for i = 1: M
    if Temp(i,1) >= Male_Age_41_Low_Height && Temp(i,1) <= Male_Age_41_Up_Height && ...
            Temp(i,2) >= Male_Age_41_Low_Weight && Temp(i,2) <= Male_Age_41_Up_Weight
        Male_data_41 = [Male_data_41; Temp(i,1) Temp(i,2)];
        Save_data_Male = [Save_data_Male;41 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 42
[M N] = size(Male_data_42);
Temp = Male_data_42;
Male_data_42 = [];
for i = 1: M
    if Temp(i,1) >= Male_Age_42_Low_Height && Temp(i,1) <= Male_Age_42_Up_Height && ...
            Temp(i,2) >= Male_Age_42_Low_Weight && Temp(i,2) <= Male_Age_42_Up_Weight
        Male_data_42 = [Male_data_42; Temp(i,1) Temp(i,2)];
        Save_data_Male = [Save_data_Male;42 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 43
[M N] = size(Male_data_43);
Temp = Male_data_43;
Male_data_43 = [];
for i = 1: M
    if Temp(i,1) >= Male_Age_43_Low_Height && Temp(i,1) <= Male_Age_43_Up_Height && ...
            Temp(i,2) >= Male_Age_43_Low_Weight && Temp(i,2) <= Male_Age_43_Up_Weight
        Male_data_43 = [Male_data_43; Temp(i,1) Temp(i,2)];
        Save_data_Male = [Save_data_Male;43 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 44
[M N] = size(Male_data_44);
Temp = Male_data_44;
Male_data_44 = [];
for i = 1: M
    if Temp(i,1) >= Male_Age_44_Low_Height && Temp(i,1) <= Male_Age_44_Up_Height && ...
            Temp(i,2) >= Male_Age_44_Low_Weight && Temp(i,2) <= Male_Age_44_Up_Weight
        Male_data_44 = [Male_data_44; Temp(i,1) Temp(i,2)];
        Save_data_Male = [Save_data_Male;44 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 45
[M N] = size(Male_data_45);
Temp = Male_data_45;
Male_data_45 = [];
for i = 1: M
    if Temp(i,1) >= Male_Age_45_Low_Height && Temp(i,1) <= Male_Age_45_Up_Height && ...
            Temp(i,2) >= Male_Age_45_Low_Weight && Temp(i,2) <= Male_Age_45_Up_Weight
        Male_data_45 = [Male_data_45; Temp(i,1) Temp(i,2)];
        Save_data_Male = [Save_data_Male;45 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 46
[M N] = size(Male_data_46);
Temp = Male_data_46;
Male_data_46 = [];
for i = 1: M
    if Temp(i,1) >= Male_Age_46_Low_Height && Temp(i,1) <= Male_Age_46_Up_Height && ...
            Temp(i,2) >= Male_Age_46_Low_Weight && Temp(i,2) <= Male_Age_46_Up_Weight
        Male_data_46 = [Male_data_46; Temp(i,1) Temp(i,2)];
        Save_data_Male = [Save_data_Male;46 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 47
[M N] = size(Male_data_47);
Temp = Male_data_47;
Male_data_47 = [];
for i = 1: M
    if Temp(i,1) >= Male_Age_47_Low_Height && Temp(i,1) <= Male_Age_47_Up_Height && ...
            Temp(i,2) >= Male_Age_47_Low_Weight && Temp(i,2) <= Male_Age_47_Up_Weight
        Male_data_47 = [Male_data_47; Temp(i,1) Temp(i,2)];
        Save_data_Male = [Save_data_Male;47 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 48
[M N] = size(Male_data_48);
Temp = Male_data_48;
Male_data_48 = [];
for i = 1: M
    if Temp(i,1) >= Male_Age_48_Low_Height && Temp(i,1) <= Male_Age_48_Up_Height && ...
            Temp(i,2) >= Male_Age_48_Low_Weight && Temp(i,2) <= Male_Age_48_Up_Weight
        Male_data_48 = [Male_data_48; Temp(i,1) Temp(i,2)];
        Save_data_Male = [Save_data_Male;48 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 49
[M N] = size(Male_data_49);
Temp = Male_data_49;
Male_data_49 = [];
for i = 1: M
    if Temp(i,1) >= Male_Age_49_Low_Height && Temp(i,1) <= Male_Age_49_Up_Height && ...
            Temp(i,2) >= Male_Age_49_Low_Weight && Temp(i,2) <= Male_Age_49_Up_Weight
        Male_data_49 = [Male_data_49; Temp(i,1) Temp(i,2)];
        Save_data_Male = [Save_data_Male;49 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 50
[M N] = size(Male_data_50);
Temp = Male_data_50;
Male_data_50 = [];
for i = 1: M
    if Temp(i,1) >= Male_Age_50_Low_Height && Temp(i,1) <= Male_Age_50_Up_Height && ...
            Temp(i,2) >= Male_Age_50_Low_Weight && Temp(i,2) <= Male_Age_50_Up_Weight
        Male_data_50 = [Male_data_50; Temp(i,1) Temp(i,2)];
        Save_data_Male = [Save_data_Male;50 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 51
[M N] = size(Male_data_51);
Temp = Male_data_51;
Male_data_51 = [];
for i = 1: M
    if Temp(i,1) >= Male_Age_51_Low_Height && Temp(i,1) <= Male_Age_51_Up_Height && ...
            Temp(i,2) >= Male_Age_51_Low_Weight && Temp(i,2) <= Male_Age_51_Up_Weight
        Male_data_51 = [Male_data_51; Temp(i,1) Temp(i,2)];
        Save_data_Male = [Save_data_Male;51 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 52
[M N] = size(Male_data_52);
Temp = Male_data_52;
Male_data_52 = [];
for i = 1: M
    if Temp(i,1) >= Male_Age_52_Low_Height && Temp(i,1) <= Male_Age_52_Up_Height && ...
            Temp(i,2) >= Male_Age_52_Low_Weight && Temp(i,2) <= Male_Age_52_Up_Weight
        Male_data_52 = [Male_data_52; Temp(i,1) Temp(i,2)];
        Save_data_Male = [Save_data_Male;52 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 53
[M N] = size(Male_data_53);
Temp = Male_data_53;
Male_data_53 = [];
for i = 1: M
    if Temp(i,1) >= Male_Age_53_Low_Height && Temp(i,1) <= Male_Age_53_Up_Height && ...
            Temp(i,2) >= Male_Age_53_Low_Weight && Temp(i,2) <= Male_Age_53_Up_Weight
        Male_data_53 = [Male_data_53; Temp(i,1) Temp(i,2)];
        Save_data_Male = [Save_data_Male;53 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 54
[M N] = size(Male_data_54);
Temp = Male_data_54;
Male_data_54 = [];
for i = 1: M
    if Temp(i,1) >= Male_Age_54_Low_Height && Temp(i,1) <= Male_Age_54_Up_Height && ...
            Temp(i,2) >= Male_Age_54_Low_Weight && Temp(i,2) <= Male_Age_54_Up_Weight
        Male_data_54 = [Male_data_54; Temp(i,1) Temp(i,2)];
        Save_data_Male = [Save_data_Male;54 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 55
[M N] = size(Male_data_55);
Temp = Male_data_55;
Male_data_55 = [];
for i = 1: M
    if Temp(i,1) >= Male_Age_55_Low_Height && Temp(i,1) <= Male_Age_55_Up_Height && ...
            Temp(i,2) >= Male_Age_55_Low_Weight && Temp(i,2) <= Male_Age_55_Up_Weight
        Male_data_55 = [Male_data_55; Temp(i,1) Temp(i,2)];
        Save_data_Male = [Save_data_Male;55 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 56
[M N] = size(Male_data_56);
Temp = Male_data_56;
Male_data_56 = [];
for i = 1: M
    if Temp(i,1) >= Male_Age_56_Low_Height && Temp(i,1) <= Male_Age_56_Up_Height && ...
            Temp(i,2) >= Male_Age_56_Low_Weight && Temp(i,2) <= Male_Age_56_Up_Weight
        Male_data_56 = [Male_data_56; Temp(i,1) Temp(i,2)];
        Save_data_Male = [Save_data_Male;56 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 57
[M N] = size(Male_data_57);
Temp = Male_data_57;
Male_data_57 = [];
for i = 1: M
    if Temp(i,1) >= Male_Age_57_Low_Height && Temp(i,1) <= Male_Age_57_Up_Height && ...
            Temp(i,2) >= Male_Age_57_Low_Weight && Temp(i,2) <= Male_Age_57_Up_Weight
        Male_data_57 = [Male_data_57; Temp(i,1) Temp(i,2)];
        Save_data_Male = [Save_data_Male;57 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 58
[M N] = size(Male_data_58);
Temp = Male_data_58;
Male_data_58 = [];
for i = 1: M
    if Temp(i,1) >= Male_Age_58_Low_Height && Temp(i,1) <= Male_Age_58_Up_Height && ...
            Temp(i,2) >= Male_Age_58_Low_Weight && Temp(i,2) <= Male_Age_58_Up_Weight
        Male_data_58 = [Male_data_58; Temp(i,1) Temp(i,2)];
        Save_data_Male = [Save_data_Male;58 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 59
[M N] = size(Male_data_59);
Temp = Male_data_59;
Male_data_59 = [];
for i = 1: M
    if Temp(i,1) >= Male_Age_59_Low_Height && Temp(i,1) <= Male_Age_59_Up_Height && ...
            Temp(i,2) >= Male_Age_59_Low_Weight && Temp(i,2) <= Male_Age_59_Up_Weight
        Male_data_59 = [Male_data_59; Temp(i,1) Temp(i,2)];
        Save_data_Male = [Save_data_Male;59 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 60
[M N] = size(Male_data_60);
Temp = Male_data_60;
Male_data_60 = [];
for i = 1: M
    if Temp(i,1) >= Male_Age_60_Low_Height && Temp(i,1) <= Male_Age_60_Up_Height && ...
            Temp(i,2) >= Male_Age_60_Low_Weight && Temp(i,2) <= Male_Age_60_Up_Weight
        Male_data_60 = [Male_data_60; Temp(i,1) Temp(i,2)];
        Save_data_Male = [Save_data_Male;60 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 61
[M N] = size(Male_data_61);
Temp = Male_data_61;
Male_data_61 = [];
for i = 1: M
    if Temp(i,1) >= Male_Age_61_Low_Height && Temp(i,1) <= Male_Age_61_Up_Height && ...
            Temp(i,2) >= Male_Age_61_Low_Weight && Temp(i,2) <= Male_Age_61_Up_Weight
        Male_data_61 = [Male_data_61; Temp(i,1) Temp(i,2)];
        Save_data_Male = [Save_data_Male;61 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 62
[M N] = size(Male_data_62);
Temp = Male_data_62;
Male_data_62 = [];
for i = 1: M
    if Temp(i,1) >= Male_Age_62_Low_Height && Temp(i,1) <= Male_Age_62_Up_Height && ...
            Temp(i,2) >= Male_Age_62_Low_Weight && Temp(i,2) <= Male_Age_62_Up_Weight
        Male_data_62 = [Male_data_62; Temp(i,1) Temp(i,2)];
        Save_data_Male = [Save_data_Male;62 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 63
[M N] = size(Male_data_63);
Temp = Male_data_63;
Male_data_63 = [];
for i = 1: M
    if Temp(i,1) >= Male_Age_63_Low_Height && Temp(i,1) <= Male_Age_63_Up_Height && ...
            Temp(i,2) >= Male_Age_63_Low_Weight && Temp(i,2) <= Male_Age_63_Up_Weight
        Male_data_63 = [Male_data_63; Temp(i,1) Temp(i,2)];
        Save_data_Male = [Save_data_Male;63 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 64
[M N] = size(Male_data_64);
Temp = Male_data_64;
Male_data_64 = [];
for i = 1: M
    if Temp(i,1) >= Male_Age_64_Low_Height && Temp(i,1) <= Male_Age_64_Up_Height && ...
            Temp(i,2) >= Male_Age_64_Low_Weight && Temp(i,2) <= Male_Age_64_Up_Weight
        Male_data_64 = [Male_data_64; Temp(i,1) Temp(i,2)];
        Save_data_Male = [Save_data_Male;64 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 65
[M N] = size(Male_data_65);
Temp = Male_data_65;
Male_data_65 = [];
for i = 1: M
    if Temp(i,1) >= Male_Age_65_Low_Height && Temp(i,1) <= Male_Age_65_Up_Height && ...
            Temp(i,2) >= Male_Age_65_Low_Weight && Temp(i,2) <= Male_Age_65_Up_Weight
        Male_data_65 = [Male_data_65; Temp(i,1) Temp(i,2)];
        Save_data_Male = [Save_data_Male;65 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 66
[M N] = size(Male_data_66);
Temp = Male_data_66;
Male_data_66 = [];
for i = 1: M
    if Temp(i,1) >= Male_Age_66_Low_Height && Temp(i,1) <= Male_Age_66_Up_Height && ...
            Temp(i,2) >= Male_Age_66_Low_Weight && Temp(i,2) <= Male_Age_66_Up_Weight
        Male_data_66 = [Male_data_66; Temp(i,1) Temp(i,2)];
        Save_data_Male = [Save_data_Male;66 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 67
[M N] = size(Male_data_67);
Temp = Male_data_67;
Male_data_67 = [];
for i = 1: M
    if Temp(i,1) >= Male_Age_67_Low_Height && Temp(i,1) <= Male_Age_67_Up_Height && ...
            Temp(i,2) >= Male_Age_67_Low_Weight && Temp(i,2) <= Male_Age_67_Up_Weight
        Male_data_67 = [Male_data_67; Temp(i,1) Temp(i,2)];
        Save_data_Male = [Save_data_Male;67 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 68
[M N] = size(Male_data_68);
Temp = Male_data_68;
Male_data_68 = [];
for i = 1: M
    if Temp(i,1) >= Male_Age_68_Low_Height && Temp(i,1) <= Male_Age_68_Up_Height && ...
            Temp(i,2) >= Male_Age_68_Low_Weight && Temp(i,2) <= Male_Age_68_Up_Weight
        Male_data_68 = [Male_data_68; Temp(i,1) Temp(i,2)];
        Save_data_Male = [Save_data_Male;68 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 69
[M N] = size(Male_data_69);
Temp = Male_data_69;
Male_data_69 = [];
for i = 1: M
    if Temp(i,1) >= Male_Age_69_Low_Height && Temp(i,1) <= Male_Age_69_Up_Height && ...
            Temp(i,2) >= Male_Age_69_Low_Weight && Temp(i,2) <= Male_Age_69_Up_Weight
        Male_data_69 = [Male_data_69; Temp(i,1) Temp(i,2)];
        Save_data_Male = [Save_data_Male;69 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 70
[M N] = size(Male_data_70);
Temp = Male_data_70;
Male_data_70 = [];
for i = 1: M
    if Temp(i,1) >= Male_Age_70_Low_Height && Temp(i,1) <= Male_Age_70_Up_Height && ...
            Temp(i,2) >= Male_Age_70_Low_Weight && Temp(i,2) <= Male_Age_70_Up_Weight
        Male_data_70 = [Male_data_70; Temp(i,1) Temp(i,2)];
        Save_data_Male = [Save_data_Male;70 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 71
[M N] = size(Male_data_71);
Temp = Male_data_71;
Male_data_71 = [];
for i = 1: M
    if Temp(i,1) >= Male_Age_71_Low_Height && Temp(i,1) <= Male_Age_71_Up_Height && ...
            Temp(i,2) >= Male_Age_71_Low_Weight && Temp(i,2) <= Male_Age_71_Up_Weight
        Male_data_71 = [Male_data_71; Temp(i,1) Temp(i,2)];
        Save_data_Male = [Save_data_Male;71 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 72
[M N] = size(Male_data_72);
Temp = Male_data_72;
Male_data_72 = [];
for i = 1: M
    if Temp(i,1) >= Male_Age_72_Low_Height && Temp(i,1) <= Male_Age_72_Up_Height && ...
            Temp(i,2) >= Male_Age_72_Low_Weight && Temp(i,2) <= Male_Age_72_Up_Weight
        Male_data_72 = [Male_data_72; Temp(i,1) Temp(i,2)];
        Save_data_Male = [Save_data_Male;72 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 73
[M N] = size(Male_data_73);
Temp = Male_data_73;
Male_data_73 = [];
for i = 1: M
    if Temp(i,1) >= Male_Age_73_Low_Height && Temp(i,1) <= Male_Age_73_Up_Height && ...
            Temp(i,2) >= Male_Age_73_Low_Weight && Temp(i,2) <= Male_Age_73_Up_Weight
        Male_data_73 = [Male_data_73; Temp(i,1) Temp(i,2)];
        Save_data_Male = [Save_data_Male;73 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 74
[M N] = size(Male_data_74);
Temp = Male_data_74;
Male_data_74 = [];
for i = 1: M
    if Temp(i,1) >= Male_Age_74_Low_Height && Temp(i,1) <= Male_Age_74_Up_Height && ...
            Temp(i,2) >= Male_Age_74_Low_Weight && Temp(i,2) <= Male_Age_74_Up_Weight
        Male_data_74 = [Male_data_74; Temp(i,1) Temp(i,2)];
        Save_data_Male = [Save_data_Male;74 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 75
[M N] = size(Male_data_75);
Temp = Male_data_75;
Male_data_75 = [];
for i = 1: M
    if Temp(i,1) >= Male_Age_75_Low_Height && Temp(i,1) <= Male_Age_75_Up_Height && ...
            Temp(i,2) >= Male_Age_75_Low_Weight && Temp(i,2) <= Male_Age_75_Up_Weight
        Male_data_75 = [Male_data_75; Temp(i,1) Temp(i,2)];
        Save_data_Male = [Save_data_Male;75 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 76
[M N] = size(Male_data_76);
Temp = Male_data_76;
Male_data_76 = [];
for i = 1: M
    if Temp(i,1) >= Male_Age_76_Low_Height && Temp(i,1) <= Male_Age_76_Up_Height && ...
            Temp(i,2) >= Male_Age_76_Low_Weight && Temp(i,2) <= Male_Age_76_Up_Weight
        Male_data_76 = [Male_data_76; Temp(i,1) Temp(i,2)];
        Save_data_Male = [Save_data_Male;76 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 77
[M N] = size(Male_data_77);
Temp = Male_data_77;
Male_data_77 = [];
for i = 1: M
    if Temp(i,1) >= Male_Age_77_Low_Height && Temp(i,1) <= Male_Age_77_Up_Height && ...
            Temp(i,2) >= Male_Age_77_Low_Weight && Temp(i,2) <= Male_Age_77_Up_Weight
        Male_data_77 = [Male_data_77; Temp(i,1) Temp(i,2)];
        Save_data_Male = [Save_data_Male;77 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 78
[M N] = size(Male_data_78);
Temp = Male_data_78;
Male_data_78 = [];
for i = 1: M
    if Temp(i,1) >= Male_Age_78_Low_Height && Temp(i,1) <= Male_Age_78_Up_Height && ...
            Temp(i,2) >= Male_Age_78_Low_Weight && Temp(i,2) <= Male_Age_78_Up_Weight
        Male_data_78 = [Male_data_78; Temp(i,1) Temp(i,2)];
        Save_data_Male = [Save_data_Male;78 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 79
[M N] = size(Male_data_79);
Temp = Male_data_79;
Male_data_79 = [];
for i = 1: M
    if Temp(i,1) >= Male_Age_79_Low_Height && Temp(i,1) <= Male_Age_79_Up_Height && ...
            Temp(i,2) >= Male_Age_79_Low_Weight && Temp(i,2) <= Male_Age_79_Up_Weight
        Male_data_79 = [Male_data_79; Temp(i,1) Temp(i,2)];
        Save_data_Male = [Save_data_Male;79 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 80
[M N] = size(Male_data_80);
Temp = Male_data_80;
Male_data_80 = [];
for i = 1: M
    if Temp(i,1) >= Male_Age_80_Low_Height && Temp(i,1) <= Male_Age_80_Up_Height && ...
            Temp(i,2) >= Male_Age_80_Low_Weight && Temp(i,2) <= Male_Age_80_Up_Weight
        Male_data_80 = [Male_data_80; Temp(i,1) Temp(i,2)];
        Save_data_Male = [Save_data_Male;80 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 81
[M N] = size(Male_data_81);
Temp = Male_data_81;
Male_data_81 = [];
for i = 1: M
    if Temp(i,1) >= Male_Age_81_Low_Height && Temp(i,1) <= Male_Age_81_Up_Height && ...
            Temp(i,2) >= Male_Age_81_Low_Weight && Temp(i,2) <= Male_Age_81_Up_Weight
        Male_data_81 = [Male_data_81; Temp(i,1) Temp(i,2)];
        Save_data_Male = [Save_data_Male;81 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 82
[M N] = size(Male_data_82);
Temp = Male_data_82;
Male_data_82 = [];
for i = 1: M
    if Temp(i,1) >= Male_Age_82_Low_Height && Temp(i,1) <= Male_Age_82_Up_Height && ...
            Temp(i,2) >= Male_Age_82_Low_Weight && Temp(i,2) <= Male_Age_82_Up_Weight
        Male_data_82 = [Male_data_82; Temp(i,1) Temp(i,2)];
        Save_data_Male = [Save_data_Male;82 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 83
[M N] = size(Male_data_83);
Temp = Male_data_83;
Male_data_83 = [];
for i = 1: M
    if Temp(i,1) >= Male_Age_83_Low_Height && Temp(i,1) <= Male_Age_83_Up_Height && ...
            Temp(i,2) >= Male_Age_83_Low_Weight && Temp(i,2) <= Male_Age_83_Up_Weight
        Male_data_83 = [Male_data_83; Temp(i,1) Temp(i,2)];
        Save_data_Male = [Save_data_Male;83 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 84
[M N] = size(Male_data_84);
Temp = Male_data_84;
Male_data_84 = [];
for i = 1: M
    if Temp(i,1) >= Male_Age_84_Low_Height && Temp(i,1) <= Male_Age_84_Up_Height && ...
            Temp(i,2) >= Male_Age_84_Low_Weight && Temp(i,2) <= Male_Age_84_Up_Weight
        Male_data_84 = [Male_data_84; Temp(i,1) Temp(i,2)];
        Save_data_Male = [Save_data_Male;84 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
% Age 85
[M N] = size(Male_data_85);
Temp = Male_data_85;
Male_data_85 = [];
for i = 1: M
    if Temp(i,1) >= Male_Age_85_Low_Height && Temp(i,1) <= Male_Age_85_Up_Height && ...
            Temp(i,2) >= Male_Age_85_Low_Weight && Temp(i,2) <= Male_Age_85_Up_Weight
        Male_data_85 = [Male_data_85; Temp(i,1) Temp(i,2)];
        Save_data_Male = [Save_data_Male;85 Temp(i,1) Temp(i,2)]; % Age Height(cm) Weight(Kg)
    end
end
%
%%
figure;hold on;
title('Female, Age: 1')
plot(Female_data_1(:,1),Female_data_1(:,2),'o')
figure;hold on;
title('Female, Age: 2')
plot(Female_data_2(:,1),Female_data_2(:,2),'o')
figure;hold on;
title('Female, Age: 3')
plot(Female_data_3(:,1),Female_data_3(:,2),'o')
figure;hold on;
title('Female, Age: 4')
plot(Female_data_4(:,1),Female_data_4(:,2),'o')
figure;hold on;
title('Female, Age: 5')
plot(Female_data_5(:,1),Female_data_5(:,2),'o')
figure;hold on;
title('Female, Age: 6')
plot(Female_data_6(:,1),Female_data_6(:,2),'o')
figure;hold on;
title('Female, Age: 7')
plot(Female_data_7(:,1),Female_data_7(:,2),'o')
figure;hold on;
title('Female, Age: 8')
plot(Female_data_8(:,1),Female_data_8(:,2),'o')
figure;hold on;
title('Female, Age: 9')
plot(Female_data_9(:,1),Female_data_9(:,2),'o')
figure;hold on;
title('Female, Age: 10')
plot(Female_data_10(:,1),Female_data_10(:,2),'o')
figure;hold on;
title('Female, Age: 11')
plot(Female_data_11(:,1),Female_data_11(:,2),'o')
figure;hold on;
title('Female, Age: 12')
plot(Female_data_12(:,1),Female_data_12(:,2),'o')
figure;hold on;
title('Female, Age: 13')
plot(Female_data_13(:,1),Female_data_13(:,2),'o')
figure;hold on;
title('Female, Age: 14')
plot(Female_data_14(:,1),Female_data_14(:,2),'o')
figure;hold on;
title('Female, Age: 15')
plot(Female_data_15(:,1),Female_data_15(:,2),'o')
figure;hold on;
title('Female, Age: 16')
plot(Female_data_16(:,1),Female_data_16(:,2),'o')
figure;hold on;
title('Female, Age: 17')
plot(Female_data_17(:,1),Female_data_17(:,2),'o')
figure;hold on;
title('Female, Age: 18')
plot(Female_data_18(:,1),Female_data_18(:,2),'o')
figure;hold on;
title('Female, Age: 19')
plot(Female_data_19(:,1),Female_data_19(:,2),'o')
figure;hold on;
title('Female, Age: 20')
plot(Female_data_20(:,1),Female_data_20(:,2),'o')
figure;hold on;
title('Female, Age: 21')
plot(Female_data_21(:,1),Female_data_21(:,2),'o')
figure;hold on;
title('Female, Age: 22')
plot(Female_data_22(:,1),Female_data_22(:,2),'o')
figure;hold on;
title('Female, Age: 23')
plot(Female_data_23(:,1),Female_data_23(:,2),'o')
figure;hold on;
title('Female, Age: 24')
plot(Female_data_24(:,1),Female_data_24(:,2),'o')
figure;hold on;
title('Female, Age: 25')
plot(Female_data_25(:,1),Female_data_25(:,2),'o')
figure;hold on;
title('Female, Age: 26')
plot(Female_data_26(:,1),Female_data_26(:,2),'o')
figure;hold on;
title('Female, Age: 27')
plot(Female_data_27(:,1),Female_data_27(:,2),'o')
figure;hold on;
title('Female, Age: 28')
plot(Female_data_28(:,1),Female_data_28(:,2),'o')
figure;hold on;
title('Female, Age: 29')
plot(Female_data_29(:,1),Female_data_29(:,2),'o')
figure;hold on;
title('Female, Age: 30')
plot(Female_data_30(:,1),Female_data_30(:,2),'o')
figure;hold on;
title('Female, Age: 31')
plot(Female_data_31(:,1),Female_data_31(:,2),'o')
figure;hold on;
title('Female, Age: 32')
plot(Female_data_32(:,1),Female_data_32(:,2),'o')
figure;hold on;
title('Female, Age: 33')
plot(Female_data_33(:,1),Female_data_33(:,2),'o')
figure;hold on;
title('Female, Age: 34')
plot(Female_data_34(:,1),Female_data_34(:,2),'o')
figure;hold on;
title('Female, Age: 35')
plot(Female_data_35(:,1),Female_data_35(:,2),'o')
figure;hold on;
title('Female, Age: 36')
plot(Female_data_36(:,1),Female_data_36(:,2),'o')
figure;hold on;
title('Female, Age: 37')
plot(Female_data_37(:,1),Female_data_37(:,2),'o')
figure;hold on;
title('Female, Age: 38')
plot(Female_data_38(:,1),Female_data_38(:,2),'o')
figure;hold on;
title('Female, Age: 39')
plot(Female_data_39(:,1),Female_data_39(:,2),'o')
figure;hold on;
title('Female, Age: 40')
plot(Female_data_40(:,1),Female_data_40(:,2),'o')
figure;hold on;
title('Female, Age: 41')
plot(Female_data_41(:,1),Female_data_41(:,2),'o')
figure;hold on;
title('Female, Age: 42')
plot(Female_data_42(:,1),Female_data_42(:,2),'o')
figure;hold on;
title('Female, Age: 43')
plot(Female_data_43(:,1),Female_data_43(:,2),'o')
figure;hold on;
title('Female, Age: 44')
plot(Female_data_44(:,1),Female_data_44(:,2),'o')
figure;hold on;
title('Female, Age: 45')
plot(Female_data_45(:,1),Female_data_45(:,2),'o')
figure;hold on;
title('Female, Age: 46')
plot(Female_data_46(:,1),Female_data_46(:,2),'o')
figure;hold on;
title('Female, Age: 47')
plot(Female_data_47(:,1),Female_data_47(:,2),'o')
figure;hold on;
title('Female, Age: 48')
plot(Female_data_48(:,1),Female_data_48(:,2),'o')
figure;hold on;
title('Female, Age: 49')
plot(Female_data_49(:,1),Female_data_49(:,2),'o')
figure;hold on;
title('Female, Age: 50')
plot(Female_data_50(:,1),Female_data_50(:,2),'o')
figure;hold on;
title('Female, Age: 51')
plot(Female_data_51(:,1),Female_data_51(:,2),'o')
figure;hold on;
title('Female, Age: 52')
plot(Female_data_52(:,1),Female_data_52(:,2),'o')
figure;hold on;
title('Female, Age: 53')
plot(Female_data_53(:,1),Female_data_53(:,2),'o')
figure;hold on;
title('Female, Age: 54')
plot(Female_data_54(:,1),Female_data_54(:,2),'o')
figure;hold on;
title('Female, Age: 55')
plot(Female_data_55(:,1),Female_data_55(:,2),'o')
figure;hold on;
title('Female, Age: 56')
plot(Female_data_56(:,1),Female_data_56(:,2),'o')
figure;hold on;
title('Female, Age: 57')
plot(Female_data_57(:,1),Female_data_57(:,2),'o')
figure;hold on;
title('Female, Age: 58')
plot(Female_data_58(:,1),Female_data_58(:,2),'o')
figure;hold on;
title('Female, Age: 59')
plot(Female_data_59(:,1),Female_data_59(:,2),'o')
figure;hold on;
title('Female, Age: 60')
plot(Female_data_60(:,1),Female_data_60(:,2),'o')
figure;hold on;
title('Female, Age: 61')
plot(Female_data_61(:,1),Female_data_61(:,2),'o')
figure;hold on;
title('Female, Age: 62')
plot(Female_data_62(:,1),Female_data_62(:,2),'o')
figure;hold on;
title('Female, Age: 63')
plot(Female_data_63(:,1),Female_data_63(:,2),'o')
figure;hold on;
title('Female, Age: 64')
plot(Female_data_64(:,1),Female_data_64(:,2),'o')
figure;hold on;
title('Female, Age: 65')
plot(Female_data_65(:,1),Female_data_65(:,2),'o')
figure;hold on;
title('Female, Age: 66')
plot(Female_data_66(:,1),Female_data_66(:,2),'o')
figure;hold on;
title('Female, Age: 67')
plot(Female_data_67(:,1),Female_data_67(:,2),'o')
figure;hold on;
title('Female, Age: 68')
plot(Female_data_68(:,1),Female_data_68(:,2),'o')
figure;hold on;
title('Female, Age: 69')
plot(Female_data_69(:,1),Female_data_69(:,2),'o')
figure;hold on;
title('Female, Age: 70')
plot(Female_data_70(:,1),Female_data_70(:,2),'o')
figure;hold on;
title('Female, Age: 71')
plot(Female_data_71(:,1),Female_data_71(:,2),'o')
figure;hold on;
title('Female, Age: 72')
plot(Female_data_72(:,1),Female_data_72(:,2),'o')
figure;hold on;
title('Female, Age: 73')
plot(Female_data_73(:,1),Female_data_73(:,2),'o')
figure;hold on;
title('Female, Age: 74')
plot(Female_data_74(:,1),Female_data_74(:,2),'o')
figure;hold on;
title('Female, Age: 75')
plot(Female_data_75(:,1),Female_data_75(:,2),'o')
figure;hold on;
title('Female, Age: 76')
plot(Female_data_76(:,1),Female_data_76(:,2),'o')
figure;hold on;
title('Female, Age: 77')
plot(Female_data_77(:,1),Female_data_77(:,2),'o')
figure;hold on;
title('Female, Age: 78')
plot(Female_data_78(:,1),Female_data_78(:,2),'o')
figure;hold on;
title('Female, Age: 79')
plot(Female_data_79(:,1),Female_data_79(:,2),'o')
figure;hold on;
title('Female, Age: 80')
plot(Female_data_80(:,1),Female_data_80(:,2),'o')
figure;hold on;
title('Female, Age: 81')
plot(Female_data_81(:,1),Female_data_81(:,2),'o')
figure;hold on;
title('Female, Age: 82')
plot(Female_data_82(:,1),Female_data_82(:,2),'o')
figure;hold on;
title('Female, Age: 83')
plot(Female_data_83(:,1),Female_data_83(:,2),'o')
figure;hold on;
title('Female, Age: 84')
plot(Female_data_84(:,1),Female_data_84(:,2),'o')
figure;hold on;
title('Female, Age: 85')
plot(Female_data_85(:,1),Female_data_85(:,2),'o')

%
figure;hold on;
title('Male, Age: 1')
plot(Male_data_1(:,1),Male_data_1(:,2),'o')
figure;hold on;
title('Male, Age: 2')
plot(Male_data_2(:,1),Male_data_2(:,2),'o')
figure;hold on;
title('Male, Age: 3')
plot(Male_data_3(:,1),Male_data_3(:,2),'o')
figure;hold on;
title('Male, Age: 4')
plot(Male_data_4(:,1),Male_data_4(:,2),'o')
figure;hold on;
title('Male, Age: 5')
plot(Male_data_5(:,1),Male_data_5(:,2),'o')
figure;hold on;
title('Male, Age: 6')
plot(Male_data_6(:,1),Male_data_6(:,2),'o')
figure;hold on;
title('Male, Age: 7')
plot(Male_data_7(:,1),Male_data_7(:,2),'o')
figure;hold on;
title('Male, Age: 8')
plot(Male_data_8(:,1),Male_data_8(:,2),'o')
figure;hold on;
title('Male, Age: 9')
plot(Male_data_9(:,1),Male_data_9(:,2),'o')
figure;hold on;
title('Male, Age: 10')
plot(Male_data_10(:,1),Male_data_10(:,2),'o')
figure;hold on;
title('Male, Age: 11')
plot(Male_data_11(:,1),Male_data_11(:,2),'o')
figure;hold on;
title('Male, Age: 12')
plot(Male_data_12(:,1),Male_data_12(:,2),'o')
figure;hold on;
title('Male, Age: 13')
plot(Male_data_13(:,1),Male_data_13(:,2),'o')
figure;hold on;
title('Male, Age: 14')
plot(Male_data_14(:,1),Male_data_14(:,2),'o')
figure;hold on;
title('Male, Age: 15')
plot(Male_data_15(:,1),Male_data_15(:,2),'o')
figure;hold on;
title('Male, Age: 16')
plot(Male_data_16(:,1),Male_data_16(:,2),'o')
figure;hold on;
title('Male, Age: 17')
plot(Male_data_17(:,1),Male_data_17(:,2),'o')
figure;hold on;
title('Male, Age: 18')
plot(Male_data_18(:,1),Male_data_18(:,2),'o')
figure;hold on;
title('Male, Age: 19')
plot(Male_data_19(:,1),Male_data_19(:,2),'o')
figure;hold on;
title('Male, Age: 20')
plot(Male_data_20(:,1),Male_data_20(:,2),'o')
figure;hold on;
title('Male, Age: 21')
plot(Male_data_21(:,1),Male_data_21(:,2),'o')
figure;hold on;
title('Male, Age: 22')
plot(Male_data_22(:,1),Male_data_22(:,2),'o')
figure;hold on;
title('Male, Age: 23')
plot(Male_data_23(:,1),Male_data_23(:,2),'o')
figure;hold on;
title('Male, Age: 24')
plot(Male_data_24(:,1),Male_data_24(:,2),'o')
figure;hold on;
title('Male, Age: 25')
plot(Male_data_25(:,1),Male_data_25(:,2),'o')
figure;hold on;
title('Male, Age: 26')
plot(Male_data_26(:,1),Male_data_26(:,2),'o')
figure;hold on;
title('Male, Age: 27')
plot(Male_data_27(:,1),Male_data_27(:,2),'o')
figure;hold on;
title('Male, Age: 28')
plot(Male_data_28(:,1),Male_data_28(:,2),'o')
figure;hold on;
title('Male, Age: 29')
plot(Male_data_29(:,1),Male_data_29(:,2),'o')
figure;hold on;
title('Male, Age: 30')
plot(Male_data_30(:,1),Male_data_30(:,2),'o')
figure;hold on;
title('Male, Age: 31')
plot(Male_data_31(:,1),Male_data_31(:,2),'o')
figure;hold on;
title('Male, Age: 32')
plot(Male_data_32(:,1),Male_data_32(:,2),'o')
figure;hold on;
title('Male, Age: 33')
plot(Male_data_33(:,1),Male_data_33(:,2),'o')
figure;hold on;
title('Male, Age: 34')
plot(Male_data_34(:,1),Male_data_34(:,2),'o')
figure;hold on;
title('Male, Age: 35')
plot(Male_data_35(:,1),Male_data_35(:,2),'o')
figure;hold on;
title('Male, Age: 36')
plot(Male_data_36(:,1),Male_data_36(:,2),'o')
figure;hold on;
title('Male, Age: 37')
plot(Male_data_37(:,1),Male_data_37(:,2),'o')
figure;hold on;
title('Male, Age: 38')
plot(Male_data_38(:,1),Male_data_38(:,2),'o')
figure;hold on;
title('Male, Age: 39')
plot(Male_data_39(:,1),Male_data_39(:,2),'o')
figure;hold on;
title('Male, Age: 40')
plot(Male_data_40(:,1),Male_data_40(:,2),'o')
figure;hold on;
title('Male, Age: 41')
plot(Male_data_41(:,1),Male_data_41(:,2),'o')
figure;hold on;
title('Male, Age: 42')
plot(Male_data_42(:,1),Male_data_42(:,2),'o')
figure;hold on;
title('Male, Age: 43')
plot(Male_data_43(:,1),Male_data_43(:,2),'o')
figure;hold on;
title('Male, Age: 44')
plot(Male_data_44(:,1),Male_data_44(:,2),'o')
figure;hold on;
title('Male, Age: 45')
plot(Male_data_45(:,1),Male_data_45(:,2),'o')
figure;hold on;
title('Male, Age: 46')
plot(Male_data_46(:,1),Male_data_46(:,2),'o')
figure;hold on;
title('Male, Age: 47')
plot(Male_data_47(:,1),Male_data_47(:,2),'o')
figure;hold on;
title('Male, Age: 48')
plot(Male_data_48(:,1),Male_data_48(:,2),'o')
figure;hold on;
title('Male, Age: 49')
plot(Male_data_49(:,1),Male_data_49(:,2),'o')
figure;hold on;
title('Male, Age: 50')
plot(Male_data_50(:,1),Male_data_50(:,2),'o')
figure;hold on;
title('Male, Age: 51')
plot(Male_data_51(:,1),Male_data_51(:,2),'o')
figure;hold on;
title('Male, Age: 52')
plot(Male_data_52(:,1),Male_data_52(:,2),'o')
figure;hold on;
title('Male, Age: 53')
plot(Male_data_53(:,1),Male_data_53(:,2),'o')
figure;hold on;
title('Male, Age: 54')
plot(Male_data_54(:,1),Male_data_54(:,2),'o')
figure;hold on;
title('Male, Age: 55')
plot(Male_data_55(:,1),Male_data_55(:,2),'o')
figure;hold on;
title('Male, Age: 56')
plot(Male_data_56(:,1),Male_data_56(:,2),'o')
figure;hold on;
title('Male, Age: 57')
plot(Male_data_57(:,1),Male_data_57(:,2),'o')
figure;hold on;
title('Male, Age: 58')
plot(Male_data_58(:,1),Male_data_58(:,2),'o')
figure;hold on;
title('Male, Age: 59')
plot(Male_data_59(:,1),Male_data_59(:,2),'o')
figure;hold on;
title('Male, Age: 60')
plot(Male_data_60(:,1),Male_data_60(:,2),'o')
figure;hold on;
title('Male, Age: 61')
plot(Male_data_61(:,1),Male_data_61(:,2),'o')
figure;hold on;
title('Male, Age: 62')
plot(Male_data_62(:,1),Male_data_62(:,2),'o')
figure;hold on;
title('Male, Age: 63')
plot(Male_data_63(:,1),Male_data_63(:,2),'o')
figure;hold on;
title('Male, Age: 64')
plot(Male_data_64(:,1),Male_data_64(:,2),'o')
figure;hold on;
title('Male, Age: 65')
plot(Male_data_65(:,1),Male_data_65(:,2),'o')
figure;hold on;
title('Male, Age: 66')
plot(Male_data_66(:,1),Male_data_66(:,2),'o')
figure;hold on;
title('Male, Age: 67')
plot(Male_data_67(:,1),Male_data_67(:,2),'o')
figure;hold on;
title('Male, Age: 68')
plot(Male_data_68(:,1),Male_data_68(:,2),'o')
figure;hold on;
title('Male, Age: 69')
plot(Male_data_69(:,1),Male_data_69(:,2),'o')
figure;hold on;
title('Male, Age: 70')
plot(Male_data_70(:,1),Male_data_70(:,2),'o')
figure;hold on;
title('Male, Age: 71')
plot(Male_data_71(:,1),Male_data_71(:,2),'o')
figure;hold on;
title('Male, Age: 72')
plot(Male_data_72(:,1),Male_data_72(:,2),'o')
figure;hold on;
title('Male, Age: 73')
plot(Male_data_73(:,1),Male_data_73(:,2),'o')
figure;hold on;
title('Male, Age: 74')
plot(Male_data_74(:,1),Male_data_74(:,2),'o')
figure;hold on;
title('Male, Age: 75')
plot(Male_data_75(:,1),Male_data_75(:,2),'o')
figure;hold on;
title('Male, Age: 76')
plot(Male_data_76(:,1),Male_data_76(:,2),'o')
figure;hold on;
title('Male, Age: 77')
plot(Male_data_77(:,1),Male_data_77(:,2),'o')
figure;hold on;
title('Male, Age: 78')
plot(Male_data_78(:,1),Male_data_78(:,2),'o')
figure;hold on;
title('Male, Age: 79')
plot(Male_data_79(:,1),Male_data_79(:,2),'o')
figure;hold on;
title('Male, Age: 80')
plot(Male_data_80(:,1),Male_data_80(:,2),'o')
figure;hold on;
title('Male, Age: 81')
plot(Male_data_81(:,1),Male_data_81(:,2),'o')
figure;hold on;
title('Male, Age: 82')
plot(Male_data_82(:,1),Male_data_82(:,2),'o')
figure;hold on;
title('Male, Age: 83')
plot(Male_data_83(:,1),Male_data_83(:,2),'o')
figure;hold on;
title('Male, Age: 84')
plot(Male_data_84(:,1),Male_data_84(:,2),'o')
figure;hold on;
title('Male, Age: 85')
plot(Male_data_85(:,1),Male_data_85(:,2),'o')
%}

xlswrite('ENSANUT 2006.xlsx',Save_data_Female,'Female','B2')
xlswrite('ENSANUT 2006.xlsx',Save_data_Male,'Male','B2')
