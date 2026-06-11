%% Source codes for ENSANUT_2012.m

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
Female_data = xlsread('ENSANUT 2012.xlsx','Female');
Male_data = xlsread('ENSANUT 2012.xlsx','Male');
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
