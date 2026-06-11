%% Source codes for Figure 3(C)
% Compare the proportion of females and males whose height exceeds the theoretical limit
% 
%
tic;
%% Parameter information for drawing
My_mark_type = '.';
My_LineWidth = 2;
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
%% We show the results
FF = figure;
% Proportion
% For Female
subplot(2,1,1)
hold on;
title('Female')
xlabel('Age (yr)');
ylabel('Proportion (%)');
ylim([0 10]);
xlim([0 91]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)
% For Male
subplot(2,1,2)
hold on;
title('Male')
xlabel('Age (yr)');
ylabel('Proportion (%)');
ylim([0 10]);
xlim([0 91]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

%% Load and segment the data by age and gender
%% 01-NHANES
Female_data = xlsread('./Raw data/01-NHANES/NHANES_ALL.xlsx','Female','C:E'); % Age	Height(cm)	Weight(Kg)
Male_data = xlsread('./Raw data/01-NHANES/NHANES_ALL.xlsx','Male','C:E'); % Age	Height(cm)	Weight(Kg)
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
[M N] = size(Female_data); % Height (cm); Weight (Kg)
for i=1:M
    if Female_data(i,1) == 2
        Female_data_2 = [Female_data_2;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 3
        Female_data_3 = [Female_data_3;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 4
        Female_data_4 = [Female_data_4;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 5
        Female_data_5 = [Female_data_5;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 6
        Female_data_6 = [Female_data_6;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 7
        Female_data_7 = [Female_data_7;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 8
        Female_data_8 = [Female_data_8;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 9
        Female_data_9 = [Female_data_9;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 10
        Female_data_10 = [Female_data_10;Female_data(i,2) Female_data(i,3)];
    end
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
end

% For Male
[M N] = size(Male_data); % Height (cm); Weight (Kg)
for i=1:M
    if Male_data(i,1) == 2
        Male_data_2 = [Male_data_2;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 3
        Male_data_3 = [Male_data_3;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 4
        Male_data_4 = [Male_data_4;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 5
        Male_data_5 = [Male_data_5;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 6
        Male_data_6 = [Male_data_6;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 7
        Male_data_7 = [Male_data_7;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 8
        Male_data_8 = [Male_data_8;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 9
        Male_data_9 = [Male_data_9;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 10
        Male_data_10 = [Male_data_10;Male_data(i,2) Male_data(i,3)];
    end
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
end

% For 01-NHANES
load('All coefficients\01-NHANES\Coefficient_a_and_b_c1_NHANES_ALL.mat')
% upper limit for height
Age_01_NHANES = 2:85;
Number_Ht_01_NHANES_Female = []; % The number of individuals whose height exceeds the theoretical limit
Number_Ht_01_NHANES_Male = [];
Proportion_Ht_01_NHANES_Female = []; % The proportion of individuals whose height exceeds the theoretical limit
Proportion_Ht_01_NHANES_Male = [];
Coefficient_b_Female_1_NHANES_ALL = [0 Coefficient_b_Female_1_NHANES_ALL];
Coefficient_b_Male_1_NHANES_ALL = [0 Coefficient_b_Male_1_NHANES_ALL];

% For Female
% Aged 2
Y_data = Female_data_2(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_NHANES_ALL(2);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Female = [Number_Ht_01_NHANES_Female My_Number];
Proportion_Ht_01_NHANES_Female = [Proportion_Ht_01_NHANES_Female My_Number/M*100];
% Aged 3
Y_data = Female_data_3(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_NHANES_ALL(3);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Female = [Number_Ht_01_NHANES_Female My_Number];
Proportion_Ht_01_NHANES_Female = [Proportion_Ht_01_NHANES_Female My_Number/M*100];
% Aged 4
Y_data = Female_data_4(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_NHANES_ALL(4);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Female = [Number_Ht_01_NHANES_Female My_Number];
Proportion_Ht_01_NHANES_Female = [Proportion_Ht_01_NHANES_Female My_Number/M*100];
% Aged 5
Y_data = Female_data_5(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_NHANES_ALL(5);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Female = [Number_Ht_01_NHANES_Female My_Number];
Proportion_Ht_01_NHANES_Female = [Proportion_Ht_01_NHANES_Female My_Number/M*100];
% Aged 6
Y_data = Female_data_6(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_NHANES_ALL(6);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Female = [Number_Ht_01_NHANES_Female My_Number];
Proportion_Ht_01_NHANES_Female = [Proportion_Ht_01_NHANES_Female My_Number/M*100];
% Aged 7
Y_data = Female_data_7(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_NHANES_ALL(7);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Female = [Number_Ht_01_NHANES_Female My_Number];
Proportion_Ht_01_NHANES_Female = [Proportion_Ht_01_NHANES_Female My_Number/M*100];
% Aged 8
Y_data = Female_data_8(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_NHANES_ALL(8);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Female = [Number_Ht_01_NHANES_Female My_Number];
Proportion_Ht_01_NHANES_Female = [Proportion_Ht_01_NHANES_Female My_Number/M*100];
% Aged 9
Y_data = Female_data_9(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_NHANES_ALL(9);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Female = [Number_Ht_01_NHANES_Female My_Number];
Proportion_Ht_01_NHANES_Female = [Proportion_Ht_01_NHANES_Female My_Number/M*100];
% Aged 10
Y_data = Female_data_10(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_NHANES_ALL(10);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Female = [Number_Ht_01_NHANES_Female My_Number];
Proportion_Ht_01_NHANES_Female = [Proportion_Ht_01_NHANES_Female My_Number/M*100];
% Aged 11
Y_data = Female_data_11(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_NHANES_ALL(11);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Female = [Number_Ht_01_NHANES_Female My_Number];
Proportion_Ht_01_NHANES_Female = [Proportion_Ht_01_NHANES_Female My_Number/M*100];
% Aged 12
Y_data = Female_data_12(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_NHANES_ALL(12);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Female = [Number_Ht_01_NHANES_Female My_Number];
Proportion_Ht_01_NHANES_Female = [Proportion_Ht_01_NHANES_Female My_Number/M*100];
% Aged 13
Y_data = Female_data_13(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_NHANES_ALL(13);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Female = [Number_Ht_01_NHANES_Female My_Number];
Proportion_Ht_01_NHANES_Female = [Proportion_Ht_01_NHANES_Female My_Number/M*100];
% Aged 14
Y_data = Female_data_14(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_NHANES_ALL(14);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Female = [Number_Ht_01_NHANES_Female My_Number];
Proportion_Ht_01_NHANES_Female = [Proportion_Ht_01_NHANES_Female My_Number/M*100];
% Aged 15
Y_data = Female_data_15(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_NHANES_ALL(15);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Female = [Number_Ht_01_NHANES_Female My_Number];
Proportion_Ht_01_NHANES_Female = [Proportion_Ht_01_NHANES_Female My_Number/M*100];
% Aged 16
Y_data = Female_data_16(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_NHANES_ALL(16);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Female = [Number_Ht_01_NHANES_Female My_Number];
Proportion_Ht_01_NHANES_Female = [Proportion_Ht_01_NHANES_Female My_Number/M*100];
% Aged 17
Y_data = Female_data_17(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_NHANES_ALL(17);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Female = [Number_Ht_01_NHANES_Female My_Number];
Proportion_Ht_01_NHANES_Female = [Proportion_Ht_01_NHANES_Female My_Number/M*100];
% Aged 18
Y_data = Female_data_18(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_NHANES_ALL(18);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Female = [Number_Ht_01_NHANES_Female My_Number];
Proportion_Ht_01_NHANES_Female = [Proportion_Ht_01_NHANES_Female My_Number/M*100];
% Aged 19
Y_data = Female_data_19(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_NHANES_ALL(19);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Female = [Number_Ht_01_NHANES_Female My_Number];
Proportion_Ht_01_NHANES_Female = [Proportion_Ht_01_NHANES_Female My_Number/M*100];
% Aged 20
Y_data = Female_data_20(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_NHANES_ALL(20);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Female = [Number_Ht_01_NHANES_Female My_Number];
Proportion_Ht_01_NHANES_Female = [Proportion_Ht_01_NHANES_Female My_Number/M*100];
% Aged 21
Y_data = Female_data_21(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_NHANES_ALL(21);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Female = [Number_Ht_01_NHANES_Female My_Number];
Proportion_Ht_01_NHANES_Female = [Proportion_Ht_01_NHANES_Female My_Number/M*100];
% Aged 22
Y_data = Female_data_22(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_NHANES_ALL(22);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Female = [Number_Ht_01_NHANES_Female My_Number];
Proportion_Ht_01_NHANES_Female = [Proportion_Ht_01_NHANES_Female My_Number/M*100];
% Aged 23
Y_data = Female_data_23(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_NHANES_ALL(23);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Female = [Number_Ht_01_NHANES_Female My_Number];
Proportion_Ht_01_NHANES_Female = [Proportion_Ht_01_NHANES_Female My_Number/M*100];
% Aged 24
Y_data = Female_data_24(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_NHANES_ALL(24);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Female = [Number_Ht_01_NHANES_Female My_Number];
Proportion_Ht_01_NHANES_Female = [Proportion_Ht_01_NHANES_Female My_Number/M*100];
% Aged 25
Y_data = Female_data_25(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_NHANES_ALL(25);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Female = [Number_Ht_01_NHANES_Female My_Number];
Proportion_Ht_01_NHANES_Female = [Proportion_Ht_01_NHANES_Female My_Number/M*100];
% Aged 26
Y_data = Female_data_26(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_NHANES_ALL(26);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Female = [Number_Ht_01_NHANES_Female My_Number];
Proportion_Ht_01_NHANES_Female = [Proportion_Ht_01_NHANES_Female My_Number/M*100];
% Aged 27
Y_data = Female_data_27(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_NHANES_ALL(27);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Female = [Number_Ht_01_NHANES_Female My_Number];
Proportion_Ht_01_NHANES_Female = [Proportion_Ht_01_NHANES_Female My_Number/M*100];
% Aged 28
Y_data = Female_data_28(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_NHANES_ALL(28);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Female = [Number_Ht_01_NHANES_Female My_Number];
Proportion_Ht_01_NHANES_Female = [Proportion_Ht_01_NHANES_Female My_Number/M*100];
% Aged 29
Y_data = Female_data_29(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_NHANES_ALL(29);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Female = [Number_Ht_01_NHANES_Female My_Number];
Proportion_Ht_01_NHANES_Female = [Proportion_Ht_01_NHANES_Female My_Number/M*100];
% Aged 30
Y_data = Female_data_30(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_NHANES_ALL(30);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Female = [Number_Ht_01_NHANES_Female My_Number];
Proportion_Ht_01_NHANES_Female = [Proportion_Ht_01_NHANES_Female My_Number/M*100];
% Aged 31
Y_data = Female_data_31(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_NHANES_ALL(31);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Female = [Number_Ht_01_NHANES_Female My_Number];
Proportion_Ht_01_NHANES_Female = [Proportion_Ht_01_NHANES_Female My_Number/M*100];
% Aged 32
Y_data = Female_data_32(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_NHANES_ALL(32);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Female = [Number_Ht_01_NHANES_Female My_Number];
Proportion_Ht_01_NHANES_Female = [Proportion_Ht_01_NHANES_Female My_Number/M*100];
% Aged 33
Y_data = Female_data_33(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_NHANES_ALL(33);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Female = [Number_Ht_01_NHANES_Female My_Number];
Proportion_Ht_01_NHANES_Female = [Proportion_Ht_01_NHANES_Female My_Number/M*100];
% Aged 34
Y_data = Female_data_34(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_NHANES_ALL(34);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Female = [Number_Ht_01_NHANES_Female My_Number];
Proportion_Ht_01_NHANES_Female = [Proportion_Ht_01_NHANES_Female My_Number/M*100];
% Aged 35
Y_data = Female_data_35(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_NHANES_ALL(35);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Female = [Number_Ht_01_NHANES_Female My_Number];
Proportion_Ht_01_NHANES_Female = [Proportion_Ht_01_NHANES_Female My_Number/M*100];
% Aged 36
Y_data = Female_data_36(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_NHANES_ALL(36);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Female = [Number_Ht_01_NHANES_Female My_Number];
Proportion_Ht_01_NHANES_Female = [Proportion_Ht_01_NHANES_Female My_Number/M*100];
% Aged 37
Y_data = Female_data_37(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_NHANES_ALL(37);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Female = [Number_Ht_01_NHANES_Female My_Number];
Proportion_Ht_01_NHANES_Female = [Proportion_Ht_01_NHANES_Female My_Number/M*100];
% Aged 38
Y_data = Female_data_38(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_NHANES_ALL(38);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Female = [Number_Ht_01_NHANES_Female My_Number];
Proportion_Ht_01_NHANES_Female = [Proportion_Ht_01_NHANES_Female My_Number/M*100];
% Aged 39
Y_data = Female_data_39(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_NHANES_ALL(39);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Female = [Number_Ht_01_NHANES_Female My_Number];
Proportion_Ht_01_NHANES_Female = [Proportion_Ht_01_NHANES_Female My_Number/M*100];
% Aged 40
Y_data = Female_data_40(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_NHANES_ALL(40);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Female = [Number_Ht_01_NHANES_Female My_Number];
Proportion_Ht_01_NHANES_Female = [Proportion_Ht_01_NHANES_Female My_Number/M*100];
% Aged 41
Y_data = Female_data_41(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_NHANES_ALL(41);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Female = [Number_Ht_01_NHANES_Female My_Number];
Proportion_Ht_01_NHANES_Female = [Proportion_Ht_01_NHANES_Female My_Number/M*100];
% Aged 42
Y_data = Female_data_42(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_NHANES_ALL(42);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Female = [Number_Ht_01_NHANES_Female My_Number];
Proportion_Ht_01_NHANES_Female = [Proportion_Ht_01_NHANES_Female My_Number/M*100];
% Aged 43
Y_data = Female_data_43(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_NHANES_ALL(43);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Female = [Number_Ht_01_NHANES_Female My_Number];
Proportion_Ht_01_NHANES_Female = [Proportion_Ht_01_NHANES_Female My_Number/M*100];
% Aged 44
Y_data = Female_data_44(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_NHANES_ALL(44);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Female = [Number_Ht_01_NHANES_Female My_Number];
Proportion_Ht_01_NHANES_Female = [Proportion_Ht_01_NHANES_Female My_Number/M*100];
% Aged 45
Y_data = Female_data_45(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_NHANES_ALL(45);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Female = [Number_Ht_01_NHANES_Female My_Number];
Proportion_Ht_01_NHANES_Female = [Proportion_Ht_01_NHANES_Female My_Number/M*100];
% Aged 46
Y_data = Female_data_46(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_NHANES_ALL(46);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Female = [Number_Ht_01_NHANES_Female My_Number];
Proportion_Ht_01_NHANES_Female = [Proportion_Ht_01_NHANES_Female My_Number/M*100];
% Aged 47
Y_data = Female_data_47(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_NHANES_ALL(47);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Female = [Number_Ht_01_NHANES_Female My_Number];
Proportion_Ht_01_NHANES_Female = [Proportion_Ht_01_NHANES_Female My_Number/M*100];
% Aged 48
Y_data = Female_data_48(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_NHANES_ALL(48);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Female = [Number_Ht_01_NHANES_Female My_Number];
Proportion_Ht_01_NHANES_Female = [Proportion_Ht_01_NHANES_Female My_Number/M*100];
% Aged 49
Y_data = Female_data_49(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_NHANES_ALL(49);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Female = [Number_Ht_01_NHANES_Female My_Number];
Proportion_Ht_01_NHANES_Female = [Proportion_Ht_01_NHANES_Female My_Number/M*100];
% Aged 50
Y_data = Female_data_50(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_NHANES_ALL(50);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Female = [Number_Ht_01_NHANES_Female My_Number];
Proportion_Ht_01_NHANES_Female = [Proportion_Ht_01_NHANES_Female My_Number/M*100];
% Aged 51
Y_data = Female_data_51(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_NHANES_ALL(51);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Female = [Number_Ht_01_NHANES_Female My_Number];
Proportion_Ht_01_NHANES_Female = [Proportion_Ht_01_NHANES_Female My_Number/M*100];
% Aged 52
Y_data = Female_data_52(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_NHANES_ALL(52);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Female = [Number_Ht_01_NHANES_Female My_Number];
Proportion_Ht_01_NHANES_Female = [Proportion_Ht_01_NHANES_Female My_Number/M*100];
% Aged 53
Y_data = Female_data_53(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_NHANES_ALL(53);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Female = [Number_Ht_01_NHANES_Female My_Number];
Proportion_Ht_01_NHANES_Female = [Proportion_Ht_01_NHANES_Female My_Number/M*100];
% Aged 54
Y_data = Female_data_54(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_NHANES_ALL(54);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Female = [Number_Ht_01_NHANES_Female My_Number];
Proportion_Ht_01_NHANES_Female = [Proportion_Ht_01_NHANES_Female My_Number/M*100];
% Aged 55
Y_data = Female_data_55(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_NHANES_ALL(55);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Female = [Number_Ht_01_NHANES_Female My_Number];
Proportion_Ht_01_NHANES_Female = [Proportion_Ht_01_NHANES_Female My_Number/M*100];
% Aged 56
Y_data = Female_data_56(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_NHANES_ALL(56);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Female = [Number_Ht_01_NHANES_Female My_Number];
Proportion_Ht_01_NHANES_Female = [Proportion_Ht_01_NHANES_Female My_Number/M*100];
% Aged 57
Y_data = Female_data_57(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_NHANES_ALL(57);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Female = [Number_Ht_01_NHANES_Female My_Number];
Proportion_Ht_01_NHANES_Female = [Proportion_Ht_01_NHANES_Female My_Number/M*100];
% Aged 58
Y_data = Female_data_58(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_NHANES_ALL(58);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Female = [Number_Ht_01_NHANES_Female My_Number];
Proportion_Ht_01_NHANES_Female = [Proportion_Ht_01_NHANES_Female My_Number/M*100];
% Aged 59
Y_data = Female_data_59(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_NHANES_ALL(59);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Female = [Number_Ht_01_NHANES_Female My_Number];
Proportion_Ht_01_NHANES_Female = [Proportion_Ht_01_NHANES_Female My_Number/M*100];
% Aged 60
Y_data = Female_data_60(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_NHANES_ALL(60);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Female = [Number_Ht_01_NHANES_Female My_Number];
Proportion_Ht_01_NHANES_Female = [Proportion_Ht_01_NHANES_Female My_Number/M*100];
% Aged 61
Y_data = Female_data_61(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_NHANES_ALL(61);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Female = [Number_Ht_01_NHANES_Female My_Number];
Proportion_Ht_01_NHANES_Female = [Proportion_Ht_01_NHANES_Female My_Number/M*100];
% Aged 62
Y_data = Female_data_62(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_NHANES_ALL(62);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Female = [Number_Ht_01_NHANES_Female My_Number];
Proportion_Ht_01_NHANES_Female = [Proportion_Ht_01_NHANES_Female My_Number/M*100];
% Aged 63
Y_data = Female_data_63(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_NHANES_ALL(63);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Female = [Number_Ht_01_NHANES_Female My_Number];
Proportion_Ht_01_NHANES_Female = [Proportion_Ht_01_NHANES_Female My_Number/M*100];
% Aged 64
Y_data = Female_data_64(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_NHANES_ALL(64);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Female = [Number_Ht_01_NHANES_Female My_Number];
Proportion_Ht_01_NHANES_Female = [Proportion_Ht_01_NHANES_Female My_Number/M*100];
% Aged 65
Y_data = Female_data_65(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_NHANES_ALL(65);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Female = [Number_Ht_01_NHANES_Female My_Number];
Proportion_Ht_01_NHANES_Female = [Proportion_Ht_01_NHANES_Female My_Number/M*100];
% Aged 66
Y_data = Female_data_66(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_NHANES_ALL(66);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Female = [Number_Ht_01_NHANES_Female My_Number];
Proportion_Ht_01_NHANES_Female = [Proportion_Ht_01_NHANES_Female My_Number/M*100];
% Aged 67
Y_data = Female_data_67(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_NHANES_ALL(67);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Female = [Number_Ht_01_NHANES_Female My_Number];
Proportion_Ht_01_NHANES_Female = [Proportion_Ht_01_NHANES_Female My_Number/M*100];
% Aged 68
Y_data = Female_data_68(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_NHANES_ALL(68);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Female = [Number_Ht_01_NHANES_Female My_Number];
Proportion_Ht_01_NHANES_Female = [Proportion_Ht_01_NHANES_Female My_Number/M*100];
% Aged 69
Y_data = Female_data_69(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_NHANES_ALL(69);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Female = [Number_Ht_01_NHANES_Female My_Number];
Proportion_Ht_01_NHANES_Female = [Proportion_Ht_01_NHANES_Female My_Number/M*100];
% Aged 70
Y_data = Female_data_70(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_NHANES_ALL(70);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Female = [Number_Ht_01_NHANES_Female My_Number];
Proportion_Ht_01_NHANES_Female = [Proportion_Ht_01_NHANES_Female My_Number/M*100];
% Aged 71
Y_data = Female_data_71(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_NHANES_ALL(71);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Female = [Number_Ht_01_NHANES_Female My_Number];
Proportion_Ht_01_NHANES_Female = [Proportion_Ht_01_NHANES_Female My_Number/M*100];
% Aged 72
Y_data = Female_data_72(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_NHANES_ALL(72);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Female = [Number_Ht_01_NHANES_Female My_Number];
Proportion_Ht_01_NHANES_Female = [Proportion_Ht_01_NHANES_Female My_Number/M*100];
% Aged 73
Y_data = Female_data_73(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_NHANES_ALL(73);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Female = [Number_Ht_01_NHANES_Female My_Number];
Proportion_Ht_01_NHANES_Female = [Proportion_Ht_01_NHANES_Female My_Number/M*100];
% Aged 74
Y_data = Female_data_74(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_NHANES_ALL(74);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Female = [Number_Ht_01_NHANES_Female My_Number];
Proportion_Ht_01_NHANES_Female = [Proportion_Ht_01_NHANES_Female My_Number/M*100];
% Aged 75
Y_data = Female_data_75(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_NHANES_ALL(75);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Female = [Number_Ht_01_NHANES_Female My_Number];
Proportion_Ht_01_NHANES_Female = [Proportion_Ht_01_NHANES_Female My_Number/M*100];
% Aged 76
Y_data = Female_data_76(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_NHANES_ALL(76);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Female = [Number_Ht_01_NHANES_Female My_Number];
Proportion_Ht_01_NHANES_Female = [Proportion_Ht_01_NHANES_Female My_Number/M*100];
% Aged 77
Y_data = Female_data_77(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_NHANES_ALL(77);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Female = [Number_Ht_01_NHANES_Female My_Number];
Proportion_Ht_01_NHANES_Female = [Proportion_Ht_01_NHANES_Female My_Number/M*100];
% Aged 78
Y_data = Female_data_78(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_NHANES_ALL(78);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Female = [Number_Ht_01_NHANES_Female My_Number];
Proportion_Ht_01_NHANES_Female = [Proportion_Ht_01_NHANES_Female My_Number/M*100];
% Aged 79
Y_data = Female_data_79(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_NHANES_ALL(79);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Female = [Number_Ht_01_NHANES_Female My_Number];
Proportion_Ht_01_NHANES_Female = [Proportion_Ht_01_NHANES_Female My_Number/M*100];
% Aged 80
Y_data = Female_data_80(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_NHANES_ALL(80);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Female = [Number_Ht_01_NHANES_Female My_Number];
Proportion_Ht_01_NHANES_Female = [Proportion_Ht_01_NHANES_Female My_Number/M*100];
% Aged 81
Y_data = Female_data_81(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_NHANES_ALL(81);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Female = [Number_Ht_01_NHANES_Female My_Number];
Proportion_Ht_01_NHANES_Female = [Proportion_Ht_01_NHANES_Female My_Number/M*100];
% Aged 82
Y_data = Female_data_82(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_NHANES_ALL(82);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Female = [Number_Ht_01_NHANES_Female My_Number];
Proportion_Ht_01_NHANES_Female = [Proportion_Ht_01_NHANES_Female My_Number/M*100];
% Aged 83
Y_data = Female_data_83(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_NHANES_ALL(83);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Female = [Number_Ht_01_NHANES_Female My_Number];
Proportion_Ht_01_NHANES_Female = [Proportion_Ht_01_NHANES_Female My_Number/M*100];
% Aged 84
Y_data = Female_data_84(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_NHANES_ALL(84);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Female = [Number_Ht_01_NHANES_Female My_Number];
Proportion_Ht_01_NHANES_Female = [Proportion_Ht_01_NHANES_Female My_Number/M*100];
% Aged 85
Y_data = Female_data_85(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_NHANES_ALL(85);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Female = [Number_Ht_01_NHANES_Female My_Number];
Proportion_Ht_01_NHANES_Female = [Proportion_Ht_01_NHANES_Female My_Number/M*100];

% For Male
% Aged 2
Y_data = Male_data_2(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_NHANES_ALL(2);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Male = [Number_Ht_01_NHANES_Male My_Number];
Proportion_Ht_01_NHANES_Male = [Proportion_Ht_01_NHANES_Male My_Number/M*100];
% Aged 3
Y_data = Male_data_3(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_NHANES_ALL(3);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Male = [Number_Ht_01_NHANES_Male My_Number];
Proportion_Ht_01_NHANES_Male = [Proportion_Ht_01_NHANES_Male My_Number/M*100];
% Aged 4
Y_data = Male_data_4(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_NHANES_ALL(4);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Male = [Number_Ht_01_NHANES_Male My_Number];
Proportion_Ht_01_NHANES_Male = [Proportion_Ht_01_NHANES_Male My_Number/M*100];
% Aged 5
Y_data = Male_data_5(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_NHANES_ALL(5);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Male = [Number_Ht_01_NHANES_Male My_Number];
Proportion_Ht_01_NHANES_Male = [Proportion_Ht_01_NHANES_Male My_Number/M*100];
% Aged 6
Y_data = Male_data_6(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_NHANES_ALL(6);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Male = [Number_Ht_01_NHANES_Male My_Number];
Proportion_Ht_01_NHANES_Male = [Proportion_Ht_01_NHANES_Male My_Number/M*100];
% Aged 7
Y_data = Male_data_7(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_NHANES_ALL(7);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Male = [Number_Ht_01_NHANES_Male My_Number];
Proportion_Ht_01_NHANES_Male = [Proportion_Ht_01_NHANES_Male My_Number/M*100];
% Aged 8
Y_data = Male_data_8(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_NHANES_ALL(8);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Male = [Number_Ht_01_NHANES_Male My_Number];
Proportion_Ht_01_NHANES_Male = [Proportion_Ht_01_NHANES_Male My_Number/M*100];
% Aged 9
Y_data = Male_data_9(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_NHANES_ALL(9);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Male = [Number_Ht_01_NHANES_Male My_Number];
Proportion_Ht_01_NHANES_Male = [Proportion_Ht_01_NHANES_Male My_Number/M*100];
% Aged 10
Y_data = Male_data_10(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_NHANES_ALL(10);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Male = [Number_Ht_01_NHANES_Male My_Number];
Proportion_Ht_01_NHANES_Male = [Proportion_Ht_01_NHANES_Male My_Number/M*100];
% Aged 11
Y_data = Male_data_11(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_NHANES_ALL(11);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Male = [Number_Ht_01_NHANES_Male My_Number];
Proportion_Ht_01_NHANES_Male = [Proportion_Ht_01_NHANES_Male My_Number/M*100];
% Aged 12
Y_data = Male_data_12(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_NHANES_ALL(12);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Male = [Number_Ht_01_NHANES_Male My_Number];
Proportion_Ht_01_NHANES_Male = [Proportion_Ht_01_NHANES_Male My_Number/M*100];
% Aged 13
Y_data = Male_data_13(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_NHANES_ALL(13);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Male = [Number_Ht_01_NHANES_Male My_Number];
Proportion_Ht_01_NHANES_Male = [Proportion_Ht_01_NHANES_Male My_Number/M*100];
% Aged 14
Y_data = Male_data_14(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_NHANES_ALL(14);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Male = [Number_Ht_01_NHANES_Male My_Number];
Proportion_Ht_01_NHANES_Male = [Proportion_Ht_01_NHANES_Male My_Number/M*100];
% Aged 15
Y_data = Male_data_15(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_NHANES_ALL(15);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Male = [Number_Ht_01_NHANES_Male My_Number];
Proportion_Ht_01_NHANES_Male = [Proportion_Ht_01_NHANES_Male My_Number/M*100];
% Aged 16
Y_data = Male_data_16(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_NHANES_ALL(16);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Male = [Number_Ht_01_NHANES_Male My_Number];
Proportion_Ht_01_NHANES_Male = [Proportion_Ht_01_NHANES_Male My_Number/M*100];
% Aged 17
Y_data = Male_data_17(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_NHANES_ALL(17);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Male = [Number_Ht_01_NHANES_Male My_Number];
Proportion_Ht_01_NHANES_Male = [Proportion_Ht_01_NHANES_Male My_Number/M*100];
% Aged 18
Y_data = Male_data_18(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_NHANES_ALL(18);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Male = [Number_Ht_01_NHANES_Male My_Number];
Proportion_Ht_01_NHANES_Male = [Proportion_Ht_01_NHANES_Male My_Number/M*100];
% Aged 19
Y_data = Male_data_19(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_NHANES_ALL(19);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Male = [Number_Ht_01_NHANES_Male My_Number];
Proportion_Ht_01_NHANES_Male = [Proportion_Ht_01_NHANES_Male My_Number/M*100];
% Aged 20
Y_data = Male_data_20(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_NHANES_ALL(20);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Male = [Number_Ht_01_NHANES_Male My_Number];
Proportion_Ht_01_NHANES_Male = [Proportion_Ht_01_NHANES_Male My_Number/M*100];
% Aged 21
Y_data = Male_data_21(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_NHANES_ALL(21);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Male = [Number_Ht_01_NHANES_Male My_Number];
Proportion_Ht_01_NHANES_Male = [Proportion_Ht_01_NHANES_Male My_Number/M*100];
% Aged 22
Y_data = Male_data_22(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_NHANES_ALL(22);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Male = [Number_Ht_01_NHANES_Male My_Number];
Proportion_Ht_01_NHANES_Male = [Proportion_Ht_01_NHANES_Male My_Number/M*100];
% Aged 23
Y_data = Male_data_23(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_NHANES_ALL(23);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Male = [Number_Ht_01_NHANES_Male My_Number];
Proportion_Ht_01_NHANES_Male = [Proportion_Ht_01_NHANES_Male My_Number/M*100];
% Aged 24
Y_data = Male_data_24(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_NHANES_ALL(24);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Male = [Number_Ht_01_NHANES_Male My_Number];
Proportion_Ht_01_NHANES_Male = [Proportion_Ht_01_NHANES_Male My_Number/M*100];
% Aged 25
Y_data = Male_data_25(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_NHANES_ALL(25);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Male = [Number_Ht_01_NHANES_Male My_Number];
Proportion_Ht_01_NHANES_Male = [Proportion_Ht_01_NHANES_Male My_Number/M*100];
% Aged 26
Y_data = Male_data_26(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_NHANES_ALL(26);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Male = [Number_Ht_01_NHANES_Male My_Number];
Proportion_Ht_01_NHANES_Male = [Proportion_Ht_01_NHANES_Male My_Number/M*100];
% Aged 27
Y_data = Male_data_27(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_NHANES_ALL(27);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Male = [Number_Ht_01_NHANES_Male My_Number];
Proportion_Ht_01_NHANES_Male = [Proportion_Ht_01_NHANES_Male My_Number/M*100];
% Aged 28
Y_data = Male_data_28(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_NHANES_ALL(28);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Male = [Number_Ht_01_NHANES_Male My_Number];
Proportion_Ht_01_NHANES_Male = [Proportion_Ht_01_NHANES_Male My_Number/M*100];
% Aged 29
Y_data = Male_data_29(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_NHANES_ALL(29);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Male = [Number_Ht_01_NHANES_Male My_Number];
Proportion_Ht_01_NHANES_Male = [Proportion_Ht_01_NHANES_Male My_Number/M*100];
% Aged 30
Y_data = Male_data_30(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_NHANES_ALL(30);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Male = [Number_Ht_01_NHANES_Male My_Number];
Proportion_Ht_01_NHANES_Male = [Proportion_Ht_01_NHANES_Male My_Number/M*100];
% Aged 31
Y_data = Male_data_31(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_NHANES_ALL(31);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Male = [Number_Ht_01_NHANES_Male My_Number];
Proportion_Ht_01_NHANES_Male = [Proportion_Ht_01_NHANES_Male My_Number/M*100];
% Aged 32
Y_data = Male_data_32(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_NHANES_ALL(32);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Male = [Number_Ht_01_NHANES_Male My_Number];
Proportion_Ht_01_NHANES_Male = [Proportion_Ht_01_NHANES_Male My_Number/M*100];
% Aged 33
Y_data = Male_data_33(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_NHANES_ALL(33);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Male = [Number_Ht_01_NHANES_Male My_Number];
Proportion_Ht_01_NHANES_Male = [Proportion_Ht_01_NHANES_Male My_Number/M*100];
% Aged 34
Y_data = Male_data_34(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_NHANES_ALL(34);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Male = [Number_Ht_01_NHANES_Male My_Number];
Proportion_Ht_01_NHANES_Male = [Proportion_Ht_01_NHANES_Male My_Number/M*100];
% Aged 35
Y_data = Male_data_35(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_NHANES_ALL(35);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Male = [Number_Ht_01_NHANES_Male My_Number];
Proportion_Ht_01_NHANES_Male = [Proportion_Ht_01_NHANES_Male My_Number/M*100];
% Aged 36
Y_data = Male_data_36(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_NHANES_ALL(36);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Male = [Number_Ht_01_NHANES_Male My_Number];
Proportion_Ht_01_NHANES_Male = [Proportion_Ht_01_NHANES_Male My_Number/M*100];
% Aged 37
Y_data = Male_data_37(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_NHANES_ALL(37);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Male = [Number_Ht_01_NHANES_Male My_Number];
Proportion_Ht_01_NHANES_Male = [Proportion_Ht_01_NHANES_Male My_Number/M*100];
% Aged 38
Y_data = Male_data_38(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_NHANES_ALL(38);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Male = [Number_Ht_01_NHANES_Male My_Number];
Proportion_Ht_01_NHANES_Male = [Proportion_Ht_01_NHANES_Male My_Number/M*100];
% Aged 39
Y_data = Male_data_39(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_NHANES_ALL(39);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Male = [Number_Ht_01_NHANES_Male My_Number];
Proportion_Ht_01_NHANES_Male = [Proportion_Ht_01_NHANES_Male My_Number/M*100];
% Aged 40
Y_data = Male_data_40(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_NHANES_ALL(40);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Male = [Number_Ht_01_NHANES_Male My_Number];
Proportion_Ht_01_NHANES_Male = [Proportion_Ht_01_NHANES_Male My_Number/M*100];
% Aged 41
Y_data = Male_data_41(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_NHANES_ALL(41);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Male = [Number_Ht_01_NHANES_Male My_Number];
Proportion_Ht_01_NHANES_Male = [Proportion_Ht_01_NHANES_Male My_Number/M*100];
% Aged 42
Y_data = Male_data_42(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_NHANES_ALL(42);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Male = [Number_Ht_01_NHANES_Male My_Number];
Proportion_Ht_01_NHANES_Male = [Proportion_Ht_01_NHANES_Male My_Number/M*100];
% Aged 43
Y_data = Male_data_43(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_NHANES_ALL(43);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Male = [Number_Ht_01_NHANES_Male My_Number];
Proportion_Ht_01_NHANES_Male = [Proportion_Ht_01_NHANES_Male My_Number/M*100];
% Aged 44
Y_data = Male_data_44(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_NHANES_ALL(44);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Male = [Number_Ht_01_NHANES_Male My_Number];
Proportion_Ht_01_NHANES_Male = [Proportion_Ht_01_NHANES_Male My_Number/M*100];
% Aged 45
Y_data = Male_data_45(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_NHANES_ALL(45);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Male = [Number_Ht_01_NHANES_Male My_Number];
Proportion_Ht_01_NHANES_Male = [Proportion_Ht_01_NHANES_Male My_Number/M*100];
% Aged 46
Y_data = Male_data_46(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_NHANES_ALL(46);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Male = [Number_Ht_01_NHANES_Male My_Number];
Proportion_Ht_01_NHANES_Male = [Proportion_Ht_01_NHANES_Male My_Number/M*100];
% Aged 47
Y_data = Male_data_47(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_NHANES_ALL(47);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Male = [Number_Ht_01_NHANES_Male My_Number];
Proportion_Ht_01_NHANES_Male = [Proportion_Ht_01_NHANES_Male My_Number/M*100];
% Aged 48
Y_data = Male_data_48(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_NHANES_ALL(48);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Male = [Number_Ht_01_NHANES_Male My_Number];
Proportion_Ht_01_NHANES_Male = [Proportion_Ht_01_NHANES_Male My_Number/M*100];
% Aged 49
Y_data = Male_data_49(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_NHANES_ALL(49);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Male = [Number_Ht_01_NHANES_Male My_Number];
Proportion_Ht_01_NHANES_Male = [Proportion_Ht_01_NHANES_Male My_Number/M*100];
% Aged 50
Y_data = Male_data_50(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_NHANES_ALL(50);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Male = [Number_Ht_01_NHANES_Male My_Number];
Proportion_Ht_01_NHANES_Male = [Proportion_Ht_01_NHANES_Male My_Number/M*100];
% Aged 51
Y_data = Male_data_51(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_NHANES_ALL(51);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Male = [Number_Ht_01_NHANES_Male My_Number];
Proportion_Ht_01_NHANES_Male = [Proportion_Ht_01_NHANES_Male My_Number/M*100];
% Aged 52
Y_data = Male_data_52(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_NHANES_ALL(52);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Male = [Number_Ht_01_NHANES_Male My_Number];
Proportion_Ht_01_NHANES_Male = [Proportion_Ht_01_NHANES_Male My_Number/M*100];
% Aged 53
Y_data = Male_data_53(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_NHANES_ALL(53);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Male = [Number_Ht_01_NHANES_Male My_Number];
Proportion_Ht_01_NHANES_Male = [Proportion_Ht_01_NHANES_Male My_Number/M*100];
% Aged 54
Y_data = Male_data_54(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_NHANES_ALL(54);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Male = [Number_Ht_01_NHANES_Male My_Number];
Proportion_Ht_01_NHANES_Male = [Proportion_Ht_01_NHANES_Male My_Number/M*100];
% Aged 55
Y_data = Male_data_55(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_NHANES_ALL(55);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Male = [Number_Ht_01_NHANES_Male My_Number];
Proportion_Ht_01_NHANES_Male = [Proportion_Ht_01_NHANES_Male My_Number/M*100];
% Aged 56
Y_data = Male_data_56(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_NHANES_ALL(56);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Male = [Number_Ht_01_NHANES_Male My_Number];
Proportion_Ht_01_NHANES_Male = [Proportion_Ht_01_NHANES_Male My_Number/M*100];
% Aged 57
Y_data = Male_data_57(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_NHANES_ALL(57);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Male = [Number_Ht_01_NHANES_Male My_Number];
Proportion_Ht_01_NHANES_Male = [Proportion_Ht_01_NHANES_Male My_Number/M*100];
% Aged 58
Y_data = Male_data_58(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_NHANES_ALL(58);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Male = [Number_Ht_01_NHANES_Male My_Number];
Proportion_Ht_01_NHANES_Male = [Proportion_Ht_01_NHANES_Male My_Number/M*100];
% Aged 59
Y_data = Male_data_59(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_NHANES_ALL(59);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Male = [Number_Ht_01_NHANES_Male My_Number];
Proportion_Ht_01_NHANES_Male = [Proportion_Ht_01_NHANES_Male My_Number/M*100];
% Aged 60
Y_data = Male_data_60(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_NHANES_ALL(60);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Male = [Number_Ht_01_NHANES_Male My_Number];
Proportion_Ht_01_NHANES_Male = [Proportion_Ht_01_NHANES_Male My_Number/M*100];
% Aged 61
Y_data = Male_data_61(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_NHANES_ALL(61);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Male = [Number_Ht_01_NHANES_Male My_Number];
Proportion_Ht_01_NHANES_Male = [Proportion_Ht_01_NHANES_Male My_Number/M*100];
% Aged 62
Y_data = Male_data_62(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_NHANES_ALL(62);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Male = [Number_Ht_01_NHANES_Male My_Number];
Proportion_Ht_01_NHANES_Male = [Proportion_Ht_01_NHANES_Male My_Number/M*100];
% Aged 63
Y_data = Male_data_63(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_NHANES_ALL(63);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Male = [Number_Ht_01_NHANES_Male My_Number];
Proportion_Ht_01_NHANES_Male = [Proportion_Ht_01_NHANES_Male My_Number/M*100];
% Aged 64
Y_data = Male_data_64(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_NHANES_ALL(64);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Male = [Number_Ht_01_NHANES_Male My_Number];
Proportion_Ht_01_NHANES_Male = [Proportion_Ht_01_NHANES_Male My_Number/M*100];
% Aged 65
Y_data = Male_data_65(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_NHANES_ALL(65);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Male = [Number_Ht_01_NHANES_Male My_Number];
Proportion_Ht_01_NHANES_Male = [Proportion_Ht_01_NHANES_Male My_Number/M*100];
% Aged 66
Y_data = Male_data_66(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_NHANES_ALL(66);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Male = [Number_Ht_01_NHANES_Male My_Number];
Proportion_Ht_01_NHANES_Male = [Proportion_Ht_01_NHANES_Male My_Number/M*100];
% Aged 67
Y_data = Male_data_67(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_NHANES_ALL(67);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Male = [Number_Ht_01_NHANES_Male My_Number];
Proportion_Ht_01_NHANES_Male = [Proportion_Ht_01_NHANES_Male My_Number/M*100];
% Aged 68
Y_data = Male_data_68(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_NHANES_ALL(68);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Male = [Number_Ht_01_NHANES_Male My_Number];
Proportion_Ht_01_NHANES_Male = [Proportion_Ht_01_NHANES_Male My_Number/M*100];
% Aged 69
Y_data = Male_data_69(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_NHANES_ALL(69);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Male = [Number_Ht_01_NHANES_Male My_Number];
Proportion_Ht_01_NHANES_Male = [Proportion_Ht_01_NHANES_Male My_Number/M*100];
% Aged 70
Y_data = Male_data_70(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_NHANES_ALL(70);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Male = [Number_Ht_01_NHANES_Male My_Number];
Proportion_Ht_01_NHANES_Male = [Proportion_Ht_01_NHANES_Male My_Number/M*100];
% Aged 71
Y_data = Male_data_71(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_NHANES_ALL(71);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Male = [Number_Ht_01_NHANES_Male My_Number];
Proportion_Ht_01_NHANES_Male = [Proportion_Ht_01_NHANES_Male My_Number/M*100];
% Aged 72
Y_data = Male_data_72(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_NHANES_ALL(72);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Male = [Number_Ht_01_NHANES_Male My_Number];
Proportion_Ht_01_NHANES_Male = [Proportion_Ht_01_NHANES_Male My_Number/M*100];
% Aged 73
Y_data = Male_data_73(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_NHANES_ALL(73);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Male = [Number_Ht_01_NHANES_Male My_Number];
Proportion_Ht_01_NHANES_Male = [Proportion_Ht_01_NHANES_Male My_Number/M*100];
% Aged 74
Y_data = Male_data_74(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_NHANES_ALL(74);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Male = [Number_Ht_01_NHANES_Male My_Number];
Proportion_Ht_01_NHANES_Male = [Proportion_Ht_01_NHANES_Male My_Number/M*100];
% Aged 75
Y_data = Male_data_75(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_NHANES_ALL(75);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Male = [Number_Ht_01_NHANES_Male My_Number];
Proportion_Ht_01_NHANES_Male = [Proportion_Ht_01_NHANES_Male My_Number/M*100];
% Aged 76
Y_data = Male_data_76(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_NHANES_ALL(76);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Male = [Number_Ht_01_NHANES_Male My_Number];
Proportion_Ht_01_NHANES_Male = [Proportion_Ht_01_NHANES_Male My_Number/M*100];
% Aged 77
Y_data = Male_data_77(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_NHANES_ALL(77);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Male = [Number_Ht_01_NHANES_Male My_Number];
Proportion_Ht_01_NHANES_Male = [Proportion_Ht_01_NHANES_Male My_Number/M*100];
% Aged 78
Y_data = Male_data_78(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_NHANES_ALL(78);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Male = [Number_Ht_01_NHANES_Male My_Number];
Proportion_Ht_01_NHANES_Male = [Proportion_Ht_01_NHANES_Male My_Number/M*100];
% Aged 79
Y_data = Male_data_79(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_NHANES_ALL(79);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Male = [Number_Ht_01_NHANES_Male My_Number];
Proportion_Ht_01_NHANES_Male = [Proportion_Ht_01_NHANES_Male My_Number/M*100];
% Aged 80
Y_data = Male_data_80(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_NHANES_ALL(80);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Male = [Number_Ht_01_NHANES_Male My_Number];
Proportion_Ht_01_NHANES_Male = [Proportion_Ht_01_NHANES_Male My_Number/M*100];
% Aged 81
Y_data = Male_data_81(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_NHANES_ALL(81);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Male = [Number_Ht_01_NHANES_Male My_Number];
Proportion_Ht_01_NHANES_Male = [Proportion_Ht_01_NHANES_Male My_Number/M*100];
% Aged 82
Y_data = Male_data_82(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_NHANES_ALL(82);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Male = [Number_Ht_01_NHANES_Male My_Number];
Proportion_Ht_01_NHANES_Male = [Proportion_Ht_01_NHANES_Male My_Number/M*100];
% Aged 83
Y_data = Male_data_83(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_NHANES_ALL(83);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Male = [Number_Ht_01_NHANES_Male My_Number];
Proportion_Ht_01_NHANES_Male = [Proportion_Ht_01_NHANES_Male My_Number/M*100];
% Aged 84
Y_data = Male_data_84(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_NHANES_ALL(84);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Male = [Number_Ht_01_NHANES_Male My_Number];
Proportion_Ht_01_NHANES_Male = [Proportion_Ht_01_NHANES_Male My_Number/M*100];
% Aged 85
Y_data = Male_data_85(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_NHANES_ALL(85);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_01_NHANES_Male = [Number_Ht_01_NHANES_Male My_Number];
Proportion_Ht_01_NHANES_Male = [Proportion_Ht_01_NHANES_Male My_Number/M*100];

%% 02-ENSAUNT
Female_data = xlsread('./Raw data/02-ENSAUNT/ENSANUT ALL.xlsx','Female','B:D'); % Age	Height(cm)	Weight(Kg)
Male_data = xlsread('./Raw data/02-ENSAUNT/ENSANUT ALL.xlsx','Male','B:D'); % Age	Height(cm)	Weight(Kg)
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
    if Female_data(i,1) == 1
        Female_data_1 = [Female_data_1;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 2
        Female_data_2 = [Female_data_2;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 3
        Female_data_3 = [Female_data_3;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 4
        Female_data_4 = [Female_data_4;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 5
        Female_data_5 = [Female_data_5;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 6
        Female_data_6 = [Female_data_6;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 7
        Female_data_7 = [Female_data_7;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 8
        Female_data_8 = [Female_data_8;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 9
        Female_data_9 = [Female_data_9;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 10
        Female_data_10 = [Female_data_10;Female_data(i,2) Female_data(i,3)];
    end
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
end

% For Male
[M N] = size(Male_data); % Height (cm); Weight (Kg)
for i=1:M
    if Male_data(i,1) == 1
        Male_data_1 = [Male_data_1;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 2
        Male_data_2 = [Male_data_2;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 3
        Male_data_3 = [Male_data_3;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 4
        Male_data_4 = [Male_data_4;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 5
        Male_data_5 = [Male_data_5;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 6
        Male_data_6 = [Male_data_6;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 7
        Male_data_7 = [Male_data_7;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 8
        Male_data_8 = [Male_data_8;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 9
        Male_data_9 = [Male_data_9;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 10
        Male_data_10 = [Male_data_10;Male_data(i,2) Male_data(i,3)];
    end
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
end

% For 02-ENSAUNT
load('All coefficients\02-ENSAUNT\Coefficients_a_and_b_c1_ENSAUT_ALL.mat')
% upper limit for height
Age_02_ENSAUNT = 1:85;
Number_Ht_02_ENSAUNT_Female = []; % The number of individuals whose height exceeds the theoretical limit
Number_Ht_02_ENSAUNT_Male = [];
Proportion_Ht_02_ENSAUNT_Female = []; % The proportion of individuals whose height exceeds the theoretical limit
Proportion_Ht_02_ENSAUNT_Male = [];

% For Female
% Aged 1
Y_data = Female_data_1(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ENSANUT_ALL(1);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Female = [Number_Ht_02_ENSAUNT_Female My_Number];
Proportion_Ht_02_ENSAUNT_Female = [Proportion_Ht_02_ENSAUNT_Female My_Number/M*100];
% Aged 2
Y_data = Female_data_2(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ENSANUT_ALL(2);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Female = [Number_Ht_02_ENSAUNT_Female My_Number];
Proportion_Ht_02_ENSAUNT_Female = [Proportion_Ht_02_ENSAUNT_Female My_Number/M*100];
% Aged 3
Y_data = Female_data_3(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ENSANUT_ALL(3);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Female = [Number_Ht_02_ENSAUNT_Female My_Number];
Proportion_Ht_02_ENSAUNT_Female = [Proportion_Ht_02_ENSAUNT_Female My_Number/M*100];
% Aged 4
Y_data = Female_data_4(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ENSANUT_ALL(4);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Female = [Number_Ht_02_ENSAUNT_Female My_Number];
Proportion_Ht_02_ENSAUNT_Female = [Proportion_Ht_02_ENSAUNT_Female My_Number/M*100];
% Aged 5
Y_data = Female_data_5(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ENSANUT_ALL(5);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Female = [Number_Ht_02_ENSAUNT_Female My_Number];
Proportion_Ht_02_ENSAUNT_Female = [Proportion_Ht_02_ENSAUNT_Female My_Number/M*100];
% Aged 6
Y_data = Female_data_6(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ENSANUT_ALL(6);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Female = [Number_Ht_02_ENSAUNT_Female My_Number];
Proportion_Ht_02_ENSAUNT_Female = [Proportion_Ht_02_ENSAUNT_Female My_Number/M*100];
% Aged 7
Y_data = Female_data_7(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ENSANUT_ALL(7);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Female = [Number_Ht_02_ENSAUNT_Female My_Number];
Proportion_Ht_02_ENSAUNT_Female = [Proportion_Ht_02_ENSAUNT_Female My_Number/M*100];
% Aged 8
Y_data = Female_data_8(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ENSANUT_ALL(8);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Female = [Number_Ht_02_ENSAUNT_Female My_Number];
Proportion_Ht_02_ENSAUNT_Female = [Proportion_Ht_02_ENSAUNT_Female My_Number/M*100];
% Aged 9
Y_data = Female_data_9(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ENSANUT_ALL(9);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Female = [Number_Ht_02_ENSAUNT_Female My_Number];
Proportion_Ht_02_ENSAUNT_Female = [Proportion_Ht_02_ENSAUNT_Female My_Number/M*100];
% Aged 10
Y_data = Female_data_10(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ENSANUT_ALL(10);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Female = [Number_Ht_02_ENSAUNT_Female My_Number];
Proportion_Ht_02_ENSAUNT_Female = [Proportion_Ht_02_ENSAUNT_Female My_Number/M*100];
% Aged 11
Y_data = Female_data_11(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ENSANUT_ALL(11);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Female = [Number_Ht_02_ENSAUNT_Female My_Number];
Proportion_Ht_02_ENSAUNT_Female = [Proportion_Ht_02_ENSAUNT_Female My_Number/M*100];
% Aged 12
Y_data = Female_data_12(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ENSANUT_ALL(12);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Female = [Number_Ht_02_ENSAUNT_Female My_Number];
Proportion_Ht_02_ENSAUNT_Female = [Proportion_Ht_02_ENSAUNT_Female My_Number/M*100];
% Aged 13
Y_data = Female_data_13(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ENSANUT_ALL(13);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Female = [Number_Ht_02_ENSAUNT_Female My_Number];
Proportion_Ht_02_ENSAUNT_Female = [Proportion_Ht_02_ENSAUNT_Female My_Number/M*100];
% Aged 14
Y_data = Female_data_14(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ENSANUT_ALL(14);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Female = [Number_Ht_02_ENSAUNT_Female My_Number];
Proportion_Ht_02_ENSAUNT_Female = [Proportion_Ht_02_ENSAUNT_Female My_Number/M*100];
% Aged 15
Y_data = Female_data_15(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ENSANUT_ALL(15);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Female = [Number_Ht_02_ENSAUNT_Female My_Number];
Proportion_Ht_02_ENSAUNT_Female = [Proportion_Ht_02_ENSAUNT_Female My_Number/M*100];
% Aged 16
Y_data = Female_data_16(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ENSANUT_ALL(16);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Female = [Number_Ht_02_ENSAUNT_Female My_Number];
Proportion_Ht_02_ENSAUNT_Female = [Proportion_Ht_02_ENSAUNT_Female My_Number/M*100];
% Aged 17
Y_data = Female_data_17(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ENSANUT_ALL(17);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Female = [Number_Ht_02_ENSAUNT_Female My_Number];
Proportion_Ht_02_ENSAUNT_Female = [Proportion_Ht_02_ENSAUNT_Female My_Number/M*100];
% Aged 18
Y_data = Female_data_18(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ENSANUT_ALL(18);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Female = [Number_Ht_02_ENSAUNT_Female My_Number];
Proportion_Ht_02_ENSAUNT_Female = [Proportion_Ht_02_ENSAUNT_Female My_Number/M*100];
% Aged 19
Y_data = Female_data_19(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ENSANUT_ALL(19);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Female = [Number_Ht_02_ENSAUNT_Female My_Number];
Proportion_Ht_02_ENSAUNT_Female = [Proportion_Ht_02_ENSAUNT_Female My_Number/M*100];
% Aged 20
Y_data = Female_data_20(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ENSANUT_ALL(20);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Female = [Number_Ht_02_ENSAUNT_Female My_Number];
Proportion_Ht_02_ENSAUNT_Female = [Proportion_Ht_02_ENSAUNT_Female My_Number/M*100];
% Aged 21
Y_data = Female_data_21(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ENSANUT_ALL(21);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Female = [Number_Ht_02_ENSAUNT_Female My_Number];
Proportion_Ht_02_ENSAUNT_Female = [Proportion_Ht_02_ENSAUNT_Female My_Number/M*100];
% Aged 22
Y_data = Female_data_22(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ENSANUT_ALL(22);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Female = [Number_Ht_02_ENSAUNT_Female My_Number];
Proportion_Ht_02_ENSAUNT_Female = [Proportion_Ht_02_ENSAUNT_Female My_Number/M*100];
% Aged 23
Y_data = Female_data_23(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ENSANUT_ALL(23);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Female = [Number_Ht_02_ENSAUNT_Female My_Number];
Proportion_Ht_02_ENSAUNT_Female = [Proportion_Ht_02_ENSAUNT_Female My_Number/M*100];
% Aged 24
Y_data = Female_data_24(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ENSANUT_ALL(24);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Female = [Number_Ht_02_ENSAUNT_Female My_Number];
Proportion_Ht_02_ENSAUNT_Female = [Proportion_Ht_02_ENSAUNT_Female My_Number/M*100];
% Aged 25
Y_data = Female_data_25(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ENSANUT_ALL(25);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Female = [Number_Ht_02_ENSAUNT_Female My_Number];
Proportion_Ht_02_ENSAUNT_Female = [Proportion_Ht_02_ENSAUNT_Female My_Number/M*100];
% Aged 26
Y_data = Female_data_26(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ENSANUT_ALL(26);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Female = [Number_Ht_02_ENSAUNT_Female My_Number];
Proportion_Ht_02_ENSAUNT_Female = [Proportion_Ht_02_ENSAUNT_Female My_Number/M*100];
% Aged 27
Y_data = Female_data_27(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ENSANUT_ALL(27);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Female = [Number_Ht_02_ENSAUNT_Female My_Number];
Proportion_Ht_02_ENSAUNT_Female = [Proportion_Ht_02_ENSAUNT_Female My_Number/M*100];
% Aged 28
Y_data = Female_data_28(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ENSANUT_ALL(28);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Female = [Number_Ht_02_ENSAUNT_Female My_Number];
Proportion_Ht_02_ENSAUNT_Female = [Proportion_Ht_02_ENSAUNT_Female My_Number/M*100];
% Aged 29
Y_data = Female_data_29(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ENSANUT_ALL(29);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Female = [Number_Ht_02_ENSAUNT_Female My_Number];
Proportion_Ht_02_ENSAUNT_Female = [Proportion_Ht_02_ENSAUNT_Female My_Number/M*100];
% Aged 30
Y_data = Female_data_30(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ENSANUT_ALL(30);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Female = [Number_Ht_02_ENSAUNT_Female My_Number];
Proportion_Ht_02_ENSAUNT_Female = [Proportion_Ht_02_ENSAUNT_Female My_Number/M*100];
% Aged 31
Y_data = Female_data_31(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ENSANUT_ALL(31);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Female = [Number_Ht_02_ENSAUNT_Female My_Number];
Proportion_Ht_02_ENSAUNT_Female = [Proportion_Ht_02_ENSAUNT_Female My_Number/M*100];
% Aged 32
Y_data = Female_data_32(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ENSANUT_ALL(32);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Female = [Number_Ht_02_ENSAUNT_Female My_Number];
Proportion_Ht_02_ENSAUNT_Female = [Proportion_Ht_02_ENSAUNT_Female My_Number/M*100];
% Aged 33
Y_data = Female_data_33(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ENSANUT_ALL(33);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Female = [Number_Ht_02_ENSAUNT_Female My_Number];
Proportion_Ht_02_ENSAUNT_Female = [Proportion_Ht_02_ENSAUNT_Female My_Number/M*100];
% Aged 34
Y_data = Female_data_34(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ENSANUT_ALL(34);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Female = [Number_Ht_02_ENSAUNT_Female My_Number];
Proportion_Ht_02_ENSAUNT_Female = [Proportion_Ht_02_ENSAUNT_Female My_Number/M*100];
% Aged 35
Y_data = Female_data_35(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ENSANUT_ALL(35);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Female = [Number_Ht_02_ENSAUNT_Female My_Number];
Proportion_Ht_02_ENSAUNT_Female = [Proportion_Ht_02_ENSAUNT_Female My_Number/M*100];
% Aged 36
Y_data = Female_data_36(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ENSANUT_ALL(36);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Female = [Number_Ht_02_ENSAUNT_Female My_Number];
Proportion_Ht_02_ENSAUNT_Female = [Proportion_Ht_02_ENSAUNT_Female My_Number/M*100];
% Aged 37
Y_data = Female_data_37(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ENSANUT_ALL(37);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Female = [Number_Ht_02_ENSAUNT_Female My_Number];
Proportion_Ht_02_ENSAUNT_Female = [Proportion_Ht_02_ENSAUNT_Female My_Number/M*100];
% Aged 38
Y_data = Female_data_38(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ENSANUT_ALL(38);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Female = [Number_Ht_02_ENSAUNT_Female My_Number];
Proportion_Ht_02_ENSAUNT_Female = [Proportion_Ht_02_ENSAUNT_Female My_Number/M*100];
% Aged 39
Y_data = Female_data_39(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ENSANUT_ALL(39);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Female = [Number_Ht_02_ENSAUNT_Female My_Number];
Proportion_Ht_02_ENSAUNT_Female = [Proportion_Ht_02_ENSAUNT_Female My_Number/M*100];
% Aged 40
Y_data = Female_data_40(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ENSANUT_ALL(40);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Female = [Number_Ht_02_ENSAUNT_Female My_Number];
Proportion_Ht_02_ENSAUNT_Female = [Proportion_Ht_02_ENSAUNT_Female My_Number/M*100];
% Aged 41
Y_data = Female_data_41(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ENSANUT_ALL(41);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Female = [Number_Ht_02_ENSAUNT_Female My_Number];
Proportion_Ht_02_ENSAUNT_Female = [Proportion_Ht_02_ENSAUNT_Female My_Number/M*100];
% Aged 42
Y_data = Female_data_42(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ENSANUT_ALL(42);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Female = [Number_Ht_02_ENSAUNT_Female My_Number];
Proportion_Ht_02_ENSAUNT_Female = [Proportion_Ht_02_ENSAUNT_Female My_Number/M*100];
% Aged 43
Y_data = Female_data_43(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ENSANUT_ALL(43);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Female = [Number_Ht_02_ENSAUNT_Female My_Number];
Proportion_Ht_02_ENSAUNT_Female = [Proportion_Ht_02_ENSAUNT_Female My_Number/M*100];
% Aged 44
Y_data = Female_data_44(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ENSANUT_ALL(44);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Female = [Number_Ht_02_ENSAUNT_Female My_Number];
Proportion_Ht_02_ENSAUNT_Female = [Proportion_Ht_02_ENSAUNT_Female My_Number/M*100];
% Aged 45
Y_data = Female_data_45(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ENSANUT_ALL(45);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Female = [Number_Ht_02_ENSAUNT_Female My_Number];
Proportion_Ht_02_ENSAUNT_Female = [Proportion_Ht_02_ENSAUNT_Female My_Number/M*100];
% Aged 46
Y_data = Female_data_46(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ENSANUT_ALL(46);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Female = [Number_Ht_02_ENSAUNT_Female My_Number];
Proportion_Ht_02_ENSAUNT_Female = [Proportion_Ht_02_ENSAUNT_Female My_Number/M*100];
% Aged 47
Y_data = Female_data_47(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ENSANUT_ALL(47);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Female = [Number_Ht_02_ENSAUNT_Female My_Number];
Proportion_Ht_02_ENSAUNT_Female = [Proportion_Ht_02_ENSAUNT_Female My_Number/M*100];
% Aged 48
Y_data = Female_data_48(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ENSANUT_ALL(48);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Female = [Number_Ht_02_ENSAUNT_Female My_Number];
Proportion_Ht_02_ENSAUNT_Female = [Proportion_Ht_02_ENSAUNT_Female My_Number/M*100];
% Aged 49
Y_data = Female_data_49(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ENSANUT_ALL(49);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Female = [Number_Ht_02_ENSAUNT_Female My_Number];
Proportion_Ht_02_ENSAUNT_Female = [Proportion_Ht_02_ENSAUNT_Female My_Number/M*100];
% Aged 50
Y_data = Female_data_50(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ENSANUT_ALL(50);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Female = [Number_Ht_02_ENSAUNT_Female My_Number];
Proportion_Ht_02_ENSAUNT_Female = [Proportion_Ht_02_ENSAUNT_Female My_Number/M*100];
% Aged 51
Y_data = Female_data_51(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ENSANUT_ALL(51);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Female = [Number_Ht_02_ENSAUNT_Female My_Number];
Proportion_Ht_02_ENSAUNT_Female = [Proportion_Ht_02_ENSAUNT_Female My_Number/M*100];
% Aged 52
Y_data = Female_data_52(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ENSANUT_ALL(52);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Female = [Number_Ht_02_ENSAUNT_Female My_Number];
Proportion_Ht_02_ENSAUNT_Female = [Proportion_Ht_02_ENSAUNT_Female My_Number/M*100];
% Aged 53
Y_data = Female_data_53(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ENSANUT_ALL(53);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Female = [Number_Ht_02_ENSAUNT_Female My_Number];
Proportion_Ht_02_ENSAUNT_Female = [Proportion_Ht_02_ENSAUNT_Female My_Number/M*100];
% Aged 54
Y_data = Female_data_54(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ENSANUT_ALL(54);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Female = [Number_Ht_02_ENSAUNT_Female My_Number];
Proportion_Ht_02_ENSAUNT_Female = [Proportion_Ht_02_ENSAUNT_Female My_Number/M*100];
% Aged 55
Y_data = Female_data_55(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ENSANUT_ALL(55);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Female = [Number_Ht_02_ENSAUNT_Female My_Number];
Proportion_Ht_02_ENSAUNT_Female = [Proportion_Ht_02_ENSAUNT_Female My_Number/M*100];
% Aged 56
Y_data = Female_data_56(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ENSANUT_ALL(56);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Female = [Number_Ht_02_ENSAUNT_Female My_Number];
Proportion_Ht_02_ENSAUNT_Female = [Proportion_Ht_02_ENSAUNT_Female My_Number/M*100];
% Aged 57
Y_data = Female_data_57(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ENSANUT_ALL(57);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Female = [Number_Ht_02_ENSAUNT_Female My_Number];
Proportion_Ht_02_ENSAUNT_Female = [Proportion_Ht_02_ENSAUNT_Female My_Number/M*100];
% Aged 58
Y_data = Female_data_58(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ENSANUT_ALL(58);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Female = [Number_Ht_02_ENSAUNT_Female My_Number];
Proportion_Ht_02_ENSAUNT_Female = [Proportion_Ht_02_ENSAUNT_Female My_Number/M*100];
% Aged 59
Y_data = Female_data_59(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ENSANUT_ALL(59);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Female = [Number_Ht_02_ENSAUNT_Female My_Number];
Proportion_Ht_02_ENSAUNT_Female = [Proportion_Ht_02_ENSAUNT_Female My_Number/M*100];
% Aged 60
Y_data = Female_data_60(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ENSANUT_ALL(60);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Female = [Number_Ht_02_ENSAUNT_Female My_Number];
Proportion_Ht_02_ENSAUNT_Female = [Proportion_Ht_02_ENSAUNT_Female My_Number/M*100];
% Aged 61
Y_data = Female_data_61(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ENSANUT_ALL(61);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Female = [Number_Ht_02_ENSAUNT_Female My_Number];
Proportion_Ht_02_ENSAUNT_Female = [Proportion_Ht_02_ENSAUNT_Female My_Number/M*100];
% Aged 62
Y_data = Female_data_62(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ENSANUT_ALL(62);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Female = [Number_Ht_02_ENSAUNT_Female My_Number];
Proportion_Ht_02_ENSAUNT_Female = [Proportion_Ht_02_ENSAUNT_Female My_Number/M*100];
% Aged 63
Y_data = Female_data_63(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ENSANUT_ALL(63);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Female = [Number_Ht_02_ENSAUNT_Female My_Number];
Proportion_Ht_02_ENSAUNT_Female = [Proportion_Ht_02_ENSAUNT_Female My_Number/M*100];
% Aged 64
Y_data = Female_data_64(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ENSANUT_ALL(64);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Female = [Number_Ht_02_ENSAUNT_Female My_Number];
Proportion_Ht_02_ENSAUNT_Female = [Proportion_Ht_02_ENSAUNT_Female My_Number/M*100];
% Aged 65
Y_data = Female_data_65(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ENSANUT_ALL(65);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Female = [Number_Ht_02_ENSAUNT_Female My_Number];
Proportion_Ht_02_ENSAUNT_Female = [Proportion_Ht_02_ENSAUNT_Female My_Number/M*100];
% Aged 66
Y_data = Female_data_66(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ENSANUT_ALL(66);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Female = [Number_Ht_02_ENSAUNT_Female My_Number];
Proportion_Ht_02_ENSAUNT_Female = [Proportion_Ht_02_ENSAUNT_Female My_Number/M*100];
% Aged 67
Y_data = Female_data_67(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ENSANUT_ALL(67);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Female = [Number_Ht_02_ENSAUNT_Female My_Number];
Proportion_Ht_02_ENSAUNT_Female = [Proportion_Ht_02_ENSAUNT_Female My_Number/M*100];
% Aged 68
Y_data = Female_data_68(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ENSANUT_ALL(68);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Female = [Number_Ht_02_ENSAUNT_Female My_Number];
Proportion_Ht_02_ENSAUNT_Female = [Proportion_Ht_02_ENSAUNT_Female My_Number/M*100];
% Aged 69
Y_data = Female_data_69(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ENSANUT_ALL(69);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Female = [Number_Ht_02_ENSAUNT_Female My_Number];
Proportion_Ht_02_ENSAUNT_Female = [Proportion_Ht_02_ENSAUNT_Female My_Number/M*100];
% Aged 70
Y_data = Female_data_70(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ENSANUT_ALL(70);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Female = [Number_Ht_02_ENSAUNT_Female My_Number];
Proportion_Ht_02_ENSAUNT_Female = [Proportion_Ht_02_ENSAUNT_Female My_Number/M*100];
% Aged 71
Y_data = Female_data_71(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ENSANUT_ALL(71);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Female = [Number_Ht_02_ENSAUNT_Female My_Number];
Proportion_Ht_02_ENSAUNT_Female = [Proportion_Ht_02_ENSAUNT_Female My_Number/M*100];
% Aged 72
Y_data = Female_data_72(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ENSANUT_ALL(72);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Female = [Number_Ht_02_ENSAUNT_Female My_Number];
Proportion_Ht_02_ENSAUNT_Female = [Proportion_Ht_02_ENSAUNT_Female My_Number/M*100];
% Aged 73
Y_data = Female_data_73(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ENSANUT_ALL(73);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Female = [Number_Ht_02_ENSAUNT_Female My_Number];
Proportion_Ht_02_ENSAUNT_Female = [Proportion_Ht_02_ENSAUNT_Female My_Number/M*100];
% Aged 74
Y_data = Female_data_74(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ENSANUT_ALL(74);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Female = [Number_Ht_02_ENSAUNT_Female My_Number];
Proportion_Ht_02_ENSAUNT_Female = [Proportion_Ht_02_ENSAUNT_Female My_Number/M*100];
% Aged 75
Y_data = Female_data_75(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ENSANUT_ALL(75);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Female = [Number_Ht_02_ENSAUNT_Female My_Number];
Proportion_Ht_02_ENSAUNT_Female = [Proportion_Ht_02_ENSAUNT_Female My_Number/M*100];
% Aged 76
Y_data = Female_data_76(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ENSANUT_ALL(76);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Female = [Number_Ht_02_ENSAUNT_Female My_Number];
Proportion_Ht_02_ENSAUNT_Female = [Proportion_Ht_02_ENSAUNT_Female My_Number/M*100];
% Aged 77
Y_data = Female_data_77(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ENSANUT_ALL(77);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Female = [Number_Ht_02_ENSAUNT_Female My_Number];
Proportion_Ht_02_ENSAUNT_Female = [Proportion_Ht_02_ENSAUNT_Female My_Number/M*100];
% Aged 78
Y_data = Female_data_78(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ENSANUT_ALL(78);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Female = [Number_Ht_02_ENSAUNT_Female My_Number];
Proportion_Ht_02_ENSAUNT_Female = [Proportion_Ht_02_ENSAUNT_Female My_Number/M*100];
% Aged 79
Y_data = Female_data_79(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ENSANUT_ALL(79);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Female = [Number_Ht_02_ENSAUNT_Female My_Number];
Proportion_Ht_02_ENSAUNT_Female = [Proportion_Ht_02_ENSAUNT_Female My_Number/M*100];
% Aged 80
Y_data = Female_data_80(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ENSANUT_ALL(80);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Female = [Number_Ht_02_ENSAUNT_Female My_Number];
Proportion_Ht_02_ENSAUNT_Female = [Proportion_Ht_02_ENSAUNT_Female My_Number/M*100];
% Aged 81
Y_data = Female_data_81(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ENSANUT_ALL(81);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Female = [Number_Ht_02_ENSAUNT_Female My_Number];
Proportion_Ht_02_ENSAUNT_Female = [Proportion_Ht_02_ENSAUNT_Female My_Number/M*100];
% Aged 82
Y_data = Female_data_82(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ENSANUT_ALL(82);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Female = [Number_Ht_02_ENSAUNT_Female My_Number];
Proportion_Ht_02_ENSAUNT_Female = [Proportion_Ht_02_ENSAUNT_Female My_Number/M*100];
% Aged 83
Y_data = Female_data_83(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ENSANUT_ALL(83);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Female = [Number_Ht_02_ENSAUNT_Female My_Number];
Proportion_Ht_02_ENSAUNT_Female = [Proportion_Ht_02_ENSAUNT_Female My_Number/M*100];
% Aged 84
Y_data = Female_data_84(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ENSANUT_ALL(84);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Female = [Number_Ht_02_ENSAUNT_Female My_Number];
Proportion_Ht_02_ENSAUNT_Female = [Proportion_Ht_02_ENSAUNT_Female My_Number/M*100];
% Aged 85
Y_data = Female_data_85(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ENSANUT_ALL(85);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Female = [Number_Ht_02_ENSAUNT_Female My_Number];
Proportion_Ht_02_ENSAUNT_Female = [Proportion_Ht_02_ENSAUNT_Female My_Number/M*100];

Proportion_Ht_02_ENSAUNT_Female(end-2) = (Proportion_Ht_02_ENSAUNT_Female(end-3) + Proportion_Ht_02_ENSAUNT_Female(end-1))/2;

% For Male
% Aged 1
Y_data = Male_data_1(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ENSANUT_ALL(1);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Male = [Number_Ht_02_ENSAUNT_Male My_Number];
Proportion_Ht_02_ENSAUNT_Male = [Proportion_Ht_02_ENSAUNT_Male My_Number/M*100];
% Aged 2
Y_data = Male_data_2(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ENSANUT_ALL(2);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Male = [Number_Ht_02_ENSAUNT_Male My_Number];
Proportion_Ht_02_ENSAUNT_Male = [Proportion_Ht_02_ENSAUNT_Male My_Number/M*100];
% Aged 3
Y_data = Male_data_3(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ENSANUT_ALL(3);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Male = [Number_Ht_02_ENSAUNT_Male My_Number];
Proportion_Ht_02_ENSAUNT_Male = [Proportion_Ht_02_ENSAUNT_Male My_Number/M*100];
% Aged 4
Y_data = Male_data_4(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ENSANUT_ALL(4);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Male = [Number_Ht_02_ENSAUNT_Male My_Number];
Proportion_Ht_02_ENSAUNT_Male = [Proportion_Ht_02_ENSAUNT_Male My_Number/M*100];
% Aged 5
Y_data = Male_data_5(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ENSANUT_ALL(5);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Male = [Number_Ht_02_ENSAUNT_Male My_Number];
Proportion_Ht_02_ENSAUNT_Male = [Proportion_Ht_02_ENSAUNT_Male My_Number/M*100];
% Aged 6
Y_data = Male_data_6(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ENSANUT_ALL(6);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Male = [Number_Ht_02_ENSAUNT_Male My_Number];
Proportion_Ht_02_ENSAUNT_Male = [Proportion_Ht_02_ENSAUNT_Male My_Number/M*100];
% Aged 7
Y_data = Male_data_7(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ENSANUT_ALL(7);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Male = [Number_Ht_02_ENSAUNT_Male My_Number];
Proportion_Ht_02_ENSAUNT_Male = [Proportion_Ht_02_ENSAUNT_Male My_Number/M*100];
% Aged 8
Y_data = Male_data_8(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ENSANUT_ALL(8);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Male = [Number_Ht_02_ENSAUNT_Male My_Number];
Proportion_Ht_02_ENSAUNT_Male = [Proportion_Ht_02_ENSAUNT_Male My_Number/M*100];
% Aged 9
Y_data = Male_data_9(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ENSANUT_ALL(9);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Male = [Number_Ht_02_ENSAUNT_Male My_Number];
Proportion_Ht_02_ENSAUNT_Male = [Proportion_Ht_02_ENSAUNT_Male My_Number/M*100];
% Aged 10
Y_data = Male_data_10(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ENSANUT_ALL(10);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Male = [Number_Ht_02_ENSAUNT_Male My_Number];
Proportion_Ht_02_ENSAUNT_Male = [Proportion_Ht_02_ENSAUNT_Male My_Number/M*100];
% Aged 11
Y_data = Male_data_11(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ENSANUT_ALL(11);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Male = [Number_Ht_02_ENSAUNT_Male My_Number];
Proportion_Ht_02_ENSAUNT_Male = [Proportion_Ht_02_ENSAUNT_Male My_Number/M*100];
% Aged 12
Y_data = Male_data_12(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ENSANUT_ALL(12);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Male = [Number_Ht_02_ENSAUNT_Male My_Number];
Proportion_Ht_02_ENSAUNT_Male = [Proportion_Ht_02_ENSAUNT_Male My_Number/M*100];
% Aged 13
Y_data = Male_data_13(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ENSANUT_ALL(13);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Male = [Number_Ht_02_ENSAUNT_Male My_Number];
Proportion_Ht_02_ENSAUNT_Male = [Proportion_Ht_02_ENSAUNT_Male My_Number/M*100];
% Aged 14
Y_data = Male_data_14(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ENSANUT_ALL(14);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Male = [Number_Ht_02_ENSAUNT_Male My_Number];
Proportion_Ht_02_ENSAUNT_Male = [Proportion_Ht_02_ENSAUNT_Male My_Number/M*100];
% Aged 15
Y_data = Male_data_15(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ENSANUT_ALL(15);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Male = [Number_Ht_02_ENSAUNT_Male My_Number];
Proportion_Ht_02_ENSAUNT_Male = [Proportion_Ht_02_ENSAUNT_Male My_Number/M*100];
% Aged 16
Y_data = Male_data_16(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ENSANUT_ALL(16);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Male = [Number_Ht_02_ENSAUNT_Male My_Number];
Proportion_Ht_02_ENSAUNT_Male = [Proportion_Ht_02_ENSAUNT_Male My_Number/M*100];
% Aged 17
Y_data = Male_data_17(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ENSANUT_ALL(17);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Male = [Number_Ht_02_ENSAUNT_Male My_Number];
Proportion_Ht_02_ENSAUNT_Male = [Proportion_Ht_02_ENSAUNT_Male My_Number/M*100];
% Aged 18
Y_data = Male_data_18(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ENSANUT_ALL(18);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Male = [Number_Ht_02_ENSAUNT_Male My_Number];
Proportion_Ht_02_ENSAUNT_Male = [Proportion_Ht_02_ENSAUNT_Male My_Number/M*100];
% Aged 19
Y_data = Male_data_19(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ENSANUT_ALL(19);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Male = [Number_Ht_02_ENSAUNT_Male My_Number];
Proportion_Ht_02_ENSAUNT_Male = [Proportion_Ht_02_ENSAUNT_Male My_Number/M*100];
% Aged 20
Y_data = Male_data_20(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ENSANUT_ALL(20);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Male = [Number_Ht_02_ENSAUNT_Male My_Number];
Proportion_Ht_02_ENSAUNT_Male = [Proportion_Ht_02_ENSAUNT_Male My_Number/M*100];
% Aged 21
Y_data = Male_data_21(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ENSANUT_ALL(21);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Male = [Number_Ht_02_ENSAUNT_Male My_Number];
Proportion_Ht_02_ENSAUNT_Male = [Proportion_Ht_02_ENSAUNT_Male My_Number/M*100];
% Aged 22
Y_data = Male_data_22(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ENSANUT_ALL(22);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Male = [Number_Ht_02_ENSAUNT_Male My_Number];
Proportion_Ht_02_ENSAUNT_Male = [Proportion_Ht_02_ENSAUNT_Male My_Number/M*100];
% Aged 23
Y_data = Male_data_23(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ENSANUT_ALL(23);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Male = [Number_Ht_02_ENSAUNT_Male My_Number];
Proportion_Ht_02_ENSAUNT_Male = [Proportion_Ht_02_ENSAUNT_Male My_Number/M*100];
% Aged 24
Y_data = Male_data_24(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ENSANUT_ALL(24);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Male = [Number_Ht_02_ENSAUNT_Male My_Number];
Proportion_Ht_02_ENSAUNT_Male = [Proportion_Ht_02_ENSAUNT_Male My_Number/M*100];
% Aged 25
Y_data = Male_data_25(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ENSANUT_ALL(25);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Male = [Number_Ht_02_ENSAUNT_Male My_Number];
Proportion_Ht_02_ENSAUNT_Male = [Proportion_Ht_02_ENSAUNT_Male My_Number/M*100];
% Aged 26
Y_data = Male_data_26(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ENSANUT_ALL(26);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Male = [Number_Ht_02_ENSAUNT_Male My_Number];
Proportion_Ht_02_ENSAUNT_Male = [Proportion_Ht_02_ENSAUNT_Male My_Number/M*100];
% Aged 27
Y_data = Male_data_27(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ENSANUT_ALL(27);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Male = [Number_Ht_02_ENSAUNT_Male My_Number];
Proportion_Ht_02_ENSAUNT_Male = [Proportion_Ht_02_ENSAUNT_Male My_Number/M*100];
% Aged 28
Y_data = Male_data_28(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ENSANUT_ALL(28);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Male = [Number_Ht_02_ENSAUNT_Male My_Number];
Proportion_Ht_02_ENSAUNT_Male = [Proportion_Ht_02_ENSAUNT_Male My_Number/M*100];
% Aged 29
Y_data = Male_data_29(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ENSANUT_ALL(29);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Male = [Number_Ht_02_ENSAUNT_Male My_Number];
Proportion_Ht_02_ENSAUNT_Male = [Proportion_Ht_02_ENSAUNT_Male My_Number/M*100];
% Aged 30
Y_data = Male_data_30(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ENSANUT_ALL(30);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Male = [Number_Ht_02_ENSAUNT_Male My_Number];
Proportion_Ht_02_ENSAUNT_Male = [Proportion_Ht_02_ENSAUNT_Male My_Number/M*100];
% Aged 31
Y_data = Male_data_31(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ENSANUT_ALL(31);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Male = [Number_Ht_02_ENSAUNT_Male My_Number];
Proportion_Ht_02_ENSAUNT_Male = [Proportion_Ht_02_ENSAUNT_Male My_Number/M*100];
% Aged 32
Y_data = Male_data_32(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ENSANUT_ALL(32);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Male = [Number_Ht_02_ENSAUNT_Male My_Number];
Proportion_Ht_02_ENSAUNT_Male = [Proportion_Ht_02_ENSAUNT_Male My_Number/M*100];
% Aged 33
Y_data = Male_data_33(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ENSANUT_ALL(33);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Male = [Number_Ht_02_ENSAUNT_Male My_Number];
Proportion_Ht_02_ENSAUNT_Male = [Proportion_Ht_02_ENSAUNT_Male My_Number/M*100];
% Aged 34
Y_data = Male_data_34(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ENSANUT_ALL(34);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Male = [Number_Ht_02_ENSAUNT_Male My_Number];
Proportion_Ht_02_ENSAUNT_Male = [Proportion_Ht_02_ENSAUNT_Male My_Number/M*100];
% Aged 35
Y_data = Male_data_35(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ENSANUT_ALL(35);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Male = [Number_Ht_02_ENSAUNT_Male My_Number];
Proportion_Ht_02_ENSAUNT_Male = [Proportion_Ht_02_ENSAUNT_Male My_Number/M*100];
% Aged 36
Y_data = Male_data_36(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ENSANUT_ALL(36);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Male = [Number_Ht_02_ENSAUNT_Male My_Number];
Proportion_Ht_02_ENSAUNT_Male = [Proportion_Ht_02_ENSAUNT_Male My_Number/M*100];
% Aged 37
Y_data = Male_data_37(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ENSANUT_ALL(37);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Male = [Number_Ht_02_ENSAUNT_Male My_Number];
Proportion_Ht_02_ENSAUNT_Male = [Proportion_Ht_02_ENSAUNT_Male My_Number/M*100];
% Aged 38
Y_data = Male_data_38(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ENSANUT_ALL(38);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Male = [Number_Ht_02_ENSAUNT_Male My_Number];
Proportion_Ht_02_ENSAUNT_Male = [Proportion_Ht_02_ENSAUNT_Male My_Number/M*100];
% Aged 39
Y_data = Male_data_39(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ENSANUT_ALL(39);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Male = [Number_Ht_02_ENSAUNT_Male My_Number];
Proportion_Ht_02_ENSAUNT_Male = [Proportion_Ht_02_ENSAUNT_Male My_Number/M*100];
% Aged 40
Y_data = Male_data_40(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ENSANUT_ALL(40);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Male = [Number_Ht_02_ENSAUNT_Male My_Number];
Proportion_Ht_02_ENSAUNT_Male = [Proportion_Ht_02_ENSAUNT_Male My_Number/M*100];
% Aged 41
Y_data = Male_data_41(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ENSANUT_ALL(41);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Male = [Number_Ht_02_ENSAUNT_Male My_Number];
Proportion_Ht_02_ENSAUNT_Male = [Proportion_Ht_02_ENSAUNT_Male My_Number/M*100];
% Aged 42
Y_data = Male_data_42(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ENSANUT_ALL(42);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Male = [Number_Ht_02_ENSAUNT_Male My_Number];
Proportion_Ht_02_ENSAUNT_Male = [Proportion_Ht_02_ENSAUNT_Male My_Number/M*100];
% Aged 43
Y_data = Male_data_43(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ENSANUT_ALL(43);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Male = [Number_Ht_02_ENSAUNT_Male My_Number];
Proportion_Ht_02_ENSAUNT_Male = [Proportion_Ht_02_ENSAUNT_Male My_Number/M*100];
% Aged 44
Y_data = Male_data_44(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ENSANUT_ALL(44);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Male = [Number_Ht_02_ENSAUNT_Male My_Number];
Proportion_Ht_02_ENSAUNT_Male = [Proportion_Ht_02_ENSAUNT_Male My_Number/M*100];
% Aged 45
Y_data = Male_data_45(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ENSANUT_ALL(45);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Male = [Number_Ht_02_ENSAUNT_Male My_Number];
Proportion_Ht_02_ENSAUNT_Male = [Proportion_Ht_02_ENSAUNT_Male My_Number/M*100];
% Aged 46
Y_data = Male_data_46(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ENSANUT_ALL(46);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Male = [Number_Ht_02_ENSAUNT_Male My_Number];
Proportion_Ht_02_ENSAUNT_Male = [Proportion_Ht_02_ENSAUNT_Male My_Number/M*100];
% Aged 47
Y_data = Male_data_47(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ENSANUT_ALL(47);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Male = [Number_Ht_02_ENSAUNT_Male My_Number];
Proportion_Ht_02_ENSAUNT_Male = [Proportion_Ht_02_ENSAUNT_Male My_Number/M*100];
% Aged 48
Y_data = Male_data_48(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ENSANUT_ALL(48);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Male = [Number_Ht_02_ENSAUNT_Male My_Number];
Proportion_Ht_02_ENSAUNT_Male = [Proportion_Ht_02_ENSAUNT_Male My_Number/M*100];
% Aged 49
Y_data = Male_data_49(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ENSANUT_ALL(49);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Male = [Number_Ht_02_ENSAUNT_Male My_Number];
Proportion_Ht_02_ENSAUNT_Male = [Proportion_Ht_02_ENSAUNT_Male My_Number/M*100];
% Aged 50
Y_data = Male_data_50(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ENSANUT_ALL(50);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Male = [Number_Ht_02_ENSAUNT_Male My_Number];
Proportion_Ht_02_ENSAUNT_Male = [Proportion_Ht_02_ENSAUNT_Male My_Number/M*100];
% Aged 51
Y_data = Male_data_51(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ENSANUT_ALL(51);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Male = [Number_Ht_02_ENSAUNT_Male My_Number];
Proportion_Ht_02_ENSAUNT_Male = [Proportion_Ht_02_ENSAUNT_Male My_Number/M*100];
% Aged 52
Y_data = Male_data_52(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ENSANUT_ALL(52);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Male = [Number_Ht_02_ENSAUNT_Male My_Number];
Proportion_Ht_02_ENSAUNT_Male = [Proportion_Ht_02_ENSAUNT_Male My_Number/M*100];
% Aged 53
Y_data = Male_data_53(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ENSANUT_ALL(53);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Male = [Number_Ht_02_ENSAUNT_Male My_Number];
Proportion_Ht_02_ENSAUNT_Male = [Proportion_Ht_02_ENSAUNT_Male My_Number/M*100];
% Aged 54
Y_data = Male_data_54(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ENSANUT_ALL(54);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Male = [Number_Ht_02_ENSAUNT_Male My_Number];
Proportion_Ht_02_ENSAUNT_Male = [Proportion_Ht_02_ENSAUNT_Male My_Number/M*100];
% Aged 55
Y_data = Male_data_55(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ENSANUT_ALL(55);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Male = [Number_Ht_02_ENSAUNT_Male My_Number];
Proportion_Ht_02_ENSAUNT_Male = [Proportion_Ht_02_ENSAUNT_Male My_Number/M*100];
% Aged 56
Y_data = Male_data_56(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ENSANUT_ALL(56);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Male = [Number_Ht_02_ENSAUNT_Male My_Number];
Proportion_Ht_02_ENSAUNT_Male = [Proportion_Ht_02_ENSAUNT_Male My_Number/M*100];
% Aged 57
Y_data = Male_data_57(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ENSANUT_ALL(57);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Male = [Number_Ht_02_ENSAUNT_Male My_Number];
Proportion_Ht_02_ENSAUNT_Male = [Proportion_Ht_02_ENSAUNT_Male My_Number/M*100];
% Aged 58
Y_data = Male_data_58(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ENSANUT_ALL(58);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Male = [Number_Ht_02_ENSAUNT_Male My_Number];
Proportion_Ht_02_ENSAUNT_Male = [Proportion_Ht_02_ENSAUNT_Male My_Number/M*100];
% Aged 59
Y_data = Male_data_59(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ENSANUT_ALL(59);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Male = [Number_Ht_02_ENSAUNT_Male My_Number];
Proportion_Ht_02_ENSAUNT_Male = [Proportion_Ht_02_ENSAUNT_Male My_Number/M*100];
% Aged 60
Y_data = Male_data_60(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ENSANUT_ALL(60);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Male = [Number_Ht_02_ENSAUNT_Male My_Number];
Proportion_Ht_02_ENSAUNT_Male = [Proportion_Ht_02_ENSAUNT_Male My_Number/M*100];
% Aged 61
Y_data = Male_data_61(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ENSANUT_ALL(61);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Male = [Number_Ht_02_ENSAUNT_Male My_Number];
Proportion_Ht_02_ENSAUNT_Male = [Proportion_Ht_02_ENSAUNT_Male My_Number/M*100];
% Aged 62
Y_data = Male_data_62(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ENSANUT_ALL(62);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Male = [Number_Ht_02_ENSAUNT_Male My_Number];
Proportion_Ht_02_ENSAUNT_Male = [Proportion_Ht_02_ENSAUNT_Male My_Number/M*100];
% Aged 63
Y_data = Male_data_63(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ENSANUT_ALL(63);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Male = [Number_Ht_02_ENSAUNT_Male My_Number];
Proportion_Ht_02_ENSAUNT_Male = [Proportion_Ht_02_ENSAUNT_Male My_Number/M*100];
% Aged 64
Y_data = Male_data_64(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ENSANUT_ALL(64);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Male = [Number_Ht_02_ENSAUNT_Male My_Number];
Proportion_Ht_02_ENSAUNT_Male = [Proportion_Ht_02_ENSAUNT_Male My_Number/M*100];
% Aged 65
Y_data = Male_data_65(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ENSANUT_ALL(65);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Male = [Number_Ht_02_ENSAUNT_Male My_Number];
Proportion_Ht_02_ENSAUNT_Male = [Proportion_Ht_02_ENSAUNT_Male My_Number/M*100];
% Aged 66
Y_data = Male_data_66(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ENSANUT_ALL(66);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Male = [Number_Ht_02_ENSAUNT_Male My_Number];
Proportion_Ht_02_ENSAUNT_Male = [Proportion_Ht_02_ENSAUNT_Male My_Number/M*100];
% Aged 67
Y_data = Male_data_67(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ENSANUT_ALL(67);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Male = [Number_Ht_02_ENSAUNT_Male My_Number];
Proportion_Ht_02_ENSAUNT_Male = [Proportion_Ht_02_ENSAUNT_Male My_Number/M*100];
% Aged 68
Y_data = Male_data_68(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ENSANUT_ALL(68);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Male = [Number_Ht_02_ENSAUNT_Male My_Number];
Proportion_Ht_02_ENSAUNT_Male = [Proportion_Ht_02_ENSAUNT_Male My_Number/M*100];
% Aged 69
Y_data = Male_data_69(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ENSANUT_ALL(69);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Male = [Number_Ht_02_ENSAUNT_Male My_Number];
Proportion_Ht_02_ENSAUNT_Male = [Proportion_Ht_02_ENSAUNT_Male My_Number/M*100];
% Aged 70
Y_data = Male_data_70(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ENSANUT_ALL(70);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Male = [Number_Ht_02_ENSAUNT_Male My_Number];
Proportion_Ht_02_ENSAUNT_Male = [Proportion_Ht_02_ENSAUNT_Male My_Number/M*100];
% Aged 71
Y_data = Male_data_71(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ENSANUT_ALL(71);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Male = [Number_Ht_02_ENSAUNT_Male My_Number];
Proportion_Ht_02_ENSAUNT_Male = [Proportion_Ht_02_ENSAUNT_Male My_Number/M*100];
% Aged 72
Y_data = Male_data_72(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ENSANUT_ALL(72);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Male = [Number_Ht_02_ENSAUNT_Male My_Number];
Proportion_Ht_02_ENSAUNT_Male = [Proportion_Ht_02_ENSAUNT_Male My_Number/M*100];
% Aged 73
Y_data = Male_data_73(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ENSANUT_ALL(73);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Male = [Number_Ht_02_ENSAUNT_Male My_Number];
Proportion_Ht_02_ENSAUNT_Male = [Proportion_Ht_02_ENSAUNT_Male My_Number/M*100];
% Aged 74
Y_data = Male_data_74(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ENSANUT_ALL(74);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Male = [Number_Ht_02_ENSAUNT_Male My_Number];
Proportion_Ht_02_ENSAUNT_Male = [Proportion_Ht_02_ENSAUNT_Male My_Number/M*100];
% Aged 75
Y_data = Male_data_75(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ENSANUT_ALL(75);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Male = [Number_Ht_02_ENSAUNT_Male My_Number];
Proportion_Ht_02_ENSAUNT_Male = [Proportion_Ht_02_ENSAUNT_Male My_Number/M*100];
% Aged 76
Y_data = Male_data_76(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ENSANUT_ALL(76);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Male = [Number_Ht_02_ENSAUNT_Male My_Number];
Proportion_Ht_02_ENSAUNT_Male = [Proportion_Ht_02_ENSAUNT_Male My_Number/M*100];
% Aged 77
Y_data = Male_data_77(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ENSANUT_ALL(77);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Male = [Number_Ht_02_ENSAUNT_Male My_Number];
Proportion_Ht_02_ENSAUNT_Male = [Proportion_Ht_02_ENSAUNT_Male My_Number/M*100];
% Aged 78
Y_data = Male_data_78(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ENSANUT_ALL(78);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Male = [Number_Ht_02_ENSAUNT_Male My_Number];
Proportion_Ht_02_ENSAUNT_Male = [Proportion_Ht_02_ENSAUNT_Male My_Number/M*100];
% Aged 79
Y_data = Male_data_79(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ENSANUT_ALL(79);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Male = [Number_Ht_02_ENSAUNT_Male My_Number];
Proportion_Ht_02_ENSAUNT_Male = [Proportion_Ht_02_ENSAUNT_Male My_Number/M*100];
% Aged 80
Y_data = Male_data_80(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ENSANUT_ALL(80);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Male = [Number_Ht_02_ENSAUNT_Male My_Number];
Proportion_Ht_02_ENSAUNT_Male = [Proportion_Ht_02_ENSAUNT_Male My_Number/M*100];
% Aged 81
Y_data = Male_data_81(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ENSANUT_ALL(81);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Male = [Number_Ht_02_ENSAUNT_Male My_Number];
Proportion_Ht_02_ENSAUNT_Male = [Proportion_Ht_02_ENSAUNT_Male My_Number/M*100];
% Aged 82
Y_data = Male_data_82(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ENSANUT_ALL(82);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Male = [Number_Ht_02_ENSAUNT_Male My_Number];
Proportion_Ht_02_ENSAUNT_Male = [Proportion_Ht_02_ENSAUNT_Male My_Number/M*100];
% Aged 83
Y_data = Male_data_83(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ENSANUT_ALL(83);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Male = [Number_Ht_02_ENSAUNT_Male My_Number];
Proportion_Ht_02_ENSAUNT_Male = [Proportion_Ht_02_ENSAUNT_Male My_Number/M*100];
% Aged 84
Y_data = Male_data_84(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ENSANUT_ALL(84);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Male = [Number_Ht_02_ENSAUNT_Male My_Number];
Proportion_Ht_02_ENSAUNT_Male = [Proportion_Ht_02_ENSAUNT_Male My_Number/M*100];
% Aged 85
Y_data = Male_data_85(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ENSANUT_ALL(85);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_02_ENSAUNT_Male = [Number_Ht_02_ENSAUNT_Male My_Number];
Proportion_Ht_02_ENSAUNT_Male = [Proportion_Ht_02_ENSAUNT_Male My_Number/M*100];

%% 03-KNHANES
Female_data = xlsread('./Raw data/03-KNHANES/KNHANES_ALL.xlsx','Female','B:D'); % Age	Height(cm)	Weight(Kg)
Male_data = xlsread('./Raw data/03-KNHANES/KNHANES_ALL.xlsx','Male','B:D'); % Age	Height(cm)	Weight(Kg)
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

% For Female
[M N] = size(Female_data); % Height (cm); Weight (Kg)
for i=1:M
    if Female_data(i,1) == 1
        Female_data_1 = [Female_data_1;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 2
        Female_data_2 = [Female_data_2;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 3
        Female_data_3 = [Female_data_3;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 4
        Female_data_4 = [Female_data_4;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 5
        Female_data_5 = [Female_data_5;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 6
        Female_data_6 = [Female_data_6;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 7
        Female_data_7 = [Female_data_7;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 8
        Female_data_8 = [Female_data_8;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 9
        Female_data_9 = [Female_data_9;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 10
        Female_data_10 = [Female_data_10;Female_data(i,2) Female_data(i,3)];
    end
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
end

% For Male
[M N] = size(Male_data); % Height (cm); Weight (Kg)
for i=1:M
    if Male_data(i,1) == 1
        Male_data_1 = [Male_data_1;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 2
        Male_data_2 = [Male_data_2;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 3
        Male_data_3 = [Male_data_3;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 4
        Male_data_4 = [Male_data_4;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 5
        Male_data_5 = [Male_data_5;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 6
        Male_data_6 = [Male_data_6;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 7
        Male_data_7 = [Male_data_7;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 8
        Male_data_8 = [Male_data_8;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 9
        Male_data_9 = [Male_data_9;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 10
        Male_data_10 = [Male_data_10;Male_data(i,2) Male_data(i,3)];
    end
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
end

% For 03-KNHANES
load('All coefficients\03-KNHANES\Coefficients_a_and_b_c1_KNHANES.mat')
% upper limit for height
Age_03_KNHANES = 1:80;
Number_Ht_03_KNHANES_Female = []; % The number of individuals whose height exceeds the theoretical limit
Number_Ht_03_KNHANES_Male = [];
Proportion_Ht_03_KNHANES_Female = []; % The proportion of individuals whose height exceeds the theoretical limit
Proportion_Ht_03_KNHANES_Male = [];

% For Female
% Aged 1
Y_data = Female_data_1(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KNHANES_ALL(1);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Female = [Number_Ht_03_KNHANES_Female My_Number];
Proportion_Ht_03_KNHANES_Female = [Proportion_Ht_03_KNHANES_Female My_Number/M*100];
% Aged 2
Y_data = Female_data_2(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KNHANES_ALL(2);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Female = [Number_Ht_03_KNHANES_Female My_Number];
Proportion_Ht_03_KNHANES_Female = [Proportion_Ht_03_KNHANES_Female My_Number/M*100];
% Aged 3
Y_data = Female_data_3(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KNHANES_ALL(3);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Female = [Number_Ht_03_KNHANES_Female My_Number];
Proportion_Ht_03_KNHANES_Female = [Proportion_Ht_03_KNHANES_Female My_Number/M*100];
% Aged 4
Y_data = Female_data_4(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KNHANES_ALL(4);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Female = [Number_Ht_03_KNHANES_Female My_Number];
Proportion_Ht_03_KNHANES_Female = [Proportion_Ht_03_KNHANES_Female My_Number/M*100];
% Aged 5
Y_data = Female_data_5(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KNHANES_ALL(5);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Female = [Number_Ht_03_KNHANES_Female My_Number];
Proportion_Ht_03_KNHANES_Female = [Proportion_Ht_03_KNHANES_Female My_Number/M*100];
% Aged 6
Y_data = Female_data_6(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KNHANES_ALL(6);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Female = [Number_Ht_03_KNHANES_Female My_Number];
Proportion_Ht_03_KNHANES_Female = [Proportion_Ht_03_KNHANES_Female My_Number/M*100];
% Aged 7
Y_data = Female_data_7(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KNHANES_ALL(7);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Female = [Number_Ht_03_KNHANES_Female My_Number];
Proportion_Ht_03_KNHANES_Female = [Proportion_Ht_03_KNHANES_Female My_Number/M*100];
% Aged 8
Y_data = Female_data_8(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KNHANES_ALL(8);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Female = [Number_Ht_03_KNHANES_Female My_Number];
Proportion_Ht_03_KNHANES_Female = [Proportion_Ht_03_KNHANES_Female My_Number/M*100];
% Aged 9
Y_data = Female_data_9(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KNHANES_ALL(9);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Female = [Number_Ht_03_KNHANES_Female My_Number];
Proportion_Ht_03_KNHANES_Female = [Proportion_Ht_03_KNHANES_Female My_Number/M*100];
% Aged 10
Y_data = Female_data_10(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KNHANES_ALL(10);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Female = [Number_Ht_03_KNHANES_Female My_Number];
Proportion_Ht_03_KNHANES_Female = [Proportion_Ht_03_KNHANES_Female My_Number/M*100];
% Aged 11
Y_data = Female_data_11(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KNHANES_ALL(11);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Female = [Number_Ht_03_KNHANES_Female My_Number];
Proportion_Ht_03_KNHANES_Female = [Proportion_Ht_03_KNHANES_Female My_Number/M*100];
% Aged 12
Y_data = Female_data_12(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KNHANES_ALL(12);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Female = [Number_Ht_03_KNHANES_Female My_Number];
Proportion_Ht_03_KNHANES_Female = [Proportion_Ht_03_KNHANES_Female My_Number/M*100];
% Aged 13
Y_data = Female_data_13(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KNHANES_ALL(13);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Female = [Number_Ht_03_KNHANES_Female My_Number];
Proportion_Ht_03_KNHANES_Female = [Proportion_Ht_03_KNHANES_Female My_Number/M*100];
% Aged 14
Y_data = Female_data_14(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KNHANES_ALL(14);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Female = [Number_Ht_03_KNHANES_Female My_Number];
Proportion_Ht_03_KNHANES_Female = [Proportion_Ht_03_KNHANES_Female My_Number/M*100];
% Aged 15
Y_data = Female_data_15(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KNHANES_ALL(15);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Female = [Number_Ht_03_KNHANES_Female My_Number];
Proportion_Ht_03_KNHANES_Female = [Proportion_Ht_03_KNHANES_Female My_Number/M*100];
% Aged 16
Y_data = Female_data_16(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KNHANES_ALL(16);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Female = [Number_Ht_03_KNHANES_Female My_Number];
Proportion_Ht_03_KNHANES_Female = [Proportion_Ht_03_KNHANES_Female My_Number/M*100];
% Aged 17
Y_data = Female_data_17(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KNHANES_ALL(17);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Female = [Number_Ht_03_KNHANES_Female My_Number];
Proportion_Ht_03_KNHANES_Female = [Proportion_Ht_03_KNHANES_Female My_Number/M*100];
% Aged 18
Y_data = Female_data_18(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KNHANES_ALL(18);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Female = [Number_Ht_03_KNHANES_Female My_Number];
Proportion_Ht_03_KNHANES_Female = [Proportion_Ht_03_KNHANES_Female My_Number/M*100];
% Aged 19
Y_data = Female_data_19(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KNHANES_ALL(19);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Female = [Number_Ht_03_KNHANES_Female My_Number];
Proportion_Ht_03_KNHANES_Female = [Proportion_Ht_03_KNHANES_Female My_Number/M*100];
% Aged 20
Y_data = Female_data_20(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KNHANES_ALL(20);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Female = [Number_Ht_03_KNHANES_Female My_Number];
Proportion_Ht_03_KNHANES_Female = [Proportion_Ht_03_KNHANES_Female My_Number/M*100];
% Aged 21
Y_data = Female_data_21(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KNHANES_ALL(21);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Female = [Number_Ht_03_KNHANES_Female My_Number];
Proportion_Ht_03_KNHANES_Female = [Proportion_Ht_03_KNHANES_Female My_Number/M*100];
% Aged 22
Y_data = Female_data_22(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KNHANES_ALL(22);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Female = [Number_Ht_03_KNHANES_Female My_Number];
Proportion_Ht_03_KNHANES_Female = [Proportion_Ht_03_KNHANES_Female My_Number/M*100];
% Aged 23
Y_data = Female_data_23(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KNHANES_ALL(23);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Female = [Number_Ht_03_KNHANES_Female My_Number];
Proportion_Ht_03_KNHANES_Female = [Proportion_Ht_03_KNHANES_Female My_Number/M*100];
% Aged 24
Y_data = Female_data_24(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KNHANES_ALL(24);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Female = [Number_Ht_03_KNHANES_Female My_Number];
Proportion_Ht_03_KNHANES_Female = [Proportion_Ht_03_KNHANES_Female My_Number/M*100];
% Aged 25
Y_data = Female_data_25(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KNHANES_ALL(25);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Female = [Number_Ht_03_KNHANES_Female My_Number];
Proportion_Ht_03_KNHANES_Female = [Proportion_Ht_03_KNHANES_Female My_Number/M*100];
% Aged 26
Y_data = Female_data_26(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KNHANES_ALL(26);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Female = [Number_Ht_03_KNHANES_Female My_Number];
Proportion_Ht_03_KNHANES_Female = [Proportion_Ht_03_KNHANES_Female My_Number/M*100];
% Aged 27
Y_data = Female_data_27(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KNHANES_ALL(27);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Female = [Number_Ht_03_KNHANES_Female My_Number];
Proportion_Ht_03_KNHANES_Female = [Proportion_Ht_03_KNHANES_Female My_Number/M*100];
% Aged 28
Y_data = Female_data_28(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KNHANES_ALL(28);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Female = [Number_Ht_03_KNHANES_Female My_Number];
Proportion_Ht_03_KNHANES_Female = [Proportion_Ht_03_KNHANES_Female My_Number/M*100];
% Aged 29
Y_data = Female_data_29(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KNHANES_ALL(29);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Female = [Number_Ht_03_KNHANES_Female My_Number];
Proportion_Ht_03_KNHANES_Female = [Proportion_Ht_03_KNHANES_Female My_Number/M*100];
% Aged 30
Y_data = Female_data_30(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KNHANES_ALL(30);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Female = [Number_Ht_03_KNHANES_Female My_Number];
Proportion_Ht_03_KNHANES_Female = [Proportion_Ht_03_KNHANES_Female My_Number/M*100];
% Aged 31
Y_data = Female_data_31(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KNHANES_ALL(31);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Female = [Number_Ht_03_KNHANES_Female My_Number];
Proportion_Ht_03_KNHANES_Female = [Proportion_Ht_03_KNHANES_Female My_Number/M*100];
% Aged 32
Y_data = Female_data_32(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KNHANES_ALL(32);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Female = [Number_Ht_03_KNHANES_Female My_Number];
Proportion_Ht_03_KNHANES_Female = [Proportion_Ht_03_KNHANES_Female My_Number/M*100];
% Aged 33
Y_data = Female_data_33(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KNHANES_ALL(33);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Female = [Number_Ht_03_KNHANES_Female My_Number];
Proportion_Ht_03_KNHANES_Female = [Proportion_Ht_03_KNHANES_Female My_Number/M*100];
% Aged 34
Y_data = Female_data_34(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KNHANES_ALL(34);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Female = [Number_Ht_03_KNHANES_Female My_Number];
Proportion_Ht_03_KNHANES_Female = [Proportion_Ht_03_KNHANES_Female My_Number/M*100];
% Aged 35
Y_data = Female_data_35(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KNHANES_ALL(35);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Female = [Number_Ht_03_KNHANES_Female My_Number];
Proportion_Ht_03_KNHANES_Female = [Proportion_Ht_03_KNHANES_Female My_Number/M*100];
% Aged 36
Y_data = Female_data_36(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KNHANES_ALL(36);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Female = [Number_Ht_03_KNHANES_Female My_Number];
Proportion_Ht_03_KNHANES_Female = [Proportion_Ht_03_KNHANES_Female My_Number/M*100];
% Aged 37
Y_data = Female_data_37(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KNHANES_ALL(37);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Female = [Number_Ht_03_KNHANES_Female My_Number];
Proportion_Ht_03_KNHANES_Female = [Proportion_Ht_03_KNHANES_Female My_Number/M*100];
% Aged 38
Y_data = Female_data_38(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KNHANES_ALL(38);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Female = [Number_Ht_03_KNHANES_Female My_Number];
Proportion_Ht_03_KNHANES_Female = [Proportion_Ht_03_KNHANES_Female My_Number/M*100];
% Aged 39
Y_data = Female_data_39(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KNHANES_ALL(39);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Female = [Number_Ht_03_KNHANES_Female My_Number];
Proportion_Ht_03_KNHANES_Female = [Proportion_Ht_03_KNHANES_Female My_Number/M*100];
% Aged 40
Y_data = Female_data_40(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KNHANES_ALL(40);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Female = [Number_Ht_03_KNHANES_Female My_Number];
Proportion_Ht_03_KNHANES_Female = [Proportion_Ht_03_KNHANES_Female My_Number/M*100];
% Aged 41
Y_data = Female_data_41(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KNHANES_ALL(41);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Female = [Number_Ht_03_KNHANES_Female My_Number];
Proportion_Ht_03_KNHANES_Female = [Proportion_Ht_03_KNHANES_Female My_Number/M*100];
% Aged 42
Y_data = Female_data_42(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KNHANES_ALL(42);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Female = [Number_Ht_03_KNHANES_Female My_Number];
Proportion_Ht_03_KNHANES_Female = [Proportion_Ht_03_KNHANES_Female My_Number/M*100];
% Aged 43
Y_data = Female_data_43(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KNHANES_ALL(43);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Female = [Number_Ht_03_KNHANES_Female My_Number];
Proportion_Ht_03_KNHANES_Female = [Proportion_Ht_03_KNHANES_Female My_Number/M*100];
% Aged 44
Y_data = Female_data_44(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KNHANES_ALL(44);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Female = [Number_Ht_03_KNHANES_Female My_Number];
Proportion_Ht_03_KNHANES_Female = [Proportion_Ht_03_KNHANES_Female My_Number/M*100];
% Aged 45
Y_data = Female_data_45(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KNHANES_ALL(45);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Female = [Number_Ht_03_KNHANES_Female My_Number];
Proportion_Ht_03_KNHANES_Female = [Proportion_Ht_03_KNHANES_Female My_Number/M*100];
% Aged 46
Y_data = Female_data_46(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KNHANES_ALL(46);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Female = [Number_Ht_03_KNHANES_Female My_Number];
Proportion_Ht_03_KNHANES_Female = [Proportion_Ht_03_KNHANES_Female My_Number/M*100];
% Aged 47
Y_data = Female_data_47(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KNHANES_ALL(47);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Female = [Number_Ht_03_KNHANES_Female My_Number];
Proportion_Ht_03_KNHANES_Female = [Proportion_Ht_03_KNHANES_Female My_Number/M*100];
% Aged 48
Y_data = Female_data_48(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KNHANES_ALL(48);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Female = [Number_Ht_03_KNHANES_Female My_Number];
Proportion_Ht_03_KNHANES_Female = [Proportion_Ht_03_KNHANES_Female My_Number/M*100];
% Aged 49
Y_data = Female_data_49(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KNHANES_ALL(49);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Female = [Number_Ht_03_KNHANES_Female My_Number];
Proportion_Ht_03_KNHANES_Female = [Proportion_Ht_03_KNHANES_Female My_Number/M*100];
% Aged 50
Y_data = Female_data_50(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KNHANES_ALL(50);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Female = [Number_Ht_03_KNHANES_Female My_Number];
Proportion_Ht_03_KNHANES_Female = [Proportion_Ht_03_KNHANES_Female My_Number/M*100];
% Aged 51
Y_data = Female_data_51(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KNHANES_ALL(51);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Female = [Number_Ht_03_KNHANES_Female My_Number];
Proportion_Ht_03_KNHANES_Female = [Proportion_Ht_03_KNHANES_Female My_Number/M*100];
% Aged 52
Y_data = Female_data_52(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KNHANES_ALL(52);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Female = [Number_Ht_03_KNHANES_Female My_Number];
Proportion_Ht_03_KNHANES_Female = [Proportion_Ht_03_KNHANES_Female My_Number/M*100];
% Aged 53
Y_data = Female_data_53(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KNHANES_ALL(53);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Female = [Number_Ht_03_KNHANES_Female My_Number];
Proportion_Ht_03_KNHANES_Female = [Proportion_Ht_03_KNHANES_Female My_Number/M*100];
% Aged 54
Y_data = Female_data_54(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KNHANES_ALL(54);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Female = [Number_Ht_03_KNHANES_Female My_Number];
Proportion_Ht_03_KNHANES_Female = [Proportion_Ht_03_KNHANES_Female My_Number/M*100];
% Aged 55
Y_data = Female_data_55(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KNHANES_ALL(55);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Female = [Number_Ht_03_KNHANES_Female My_Number];
Proportion_Ht_03_KNHANES_Female = [Proportion_Ht_03_KNHANES_Female My_Number/M*100];
% Aged 56
Y_data = Female_data_56(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KNHANES_ALL(56);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Female = [Number_Ht_03_KNHANES_Female My_Number];
Proportion_Ht_03_KNHANES_Female = [Proportion_Ht_03_KNHANES_Female My_Number/M*100];
% Aged 57
Y_data = Female_data_57(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KNHANES_ALL(57);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Female = [Number_Ht_03_KNHANES_Female My_Number];
Proportion_Ht_03_KNHANES_Female = [Proportion_Ht_03_KNHANES_Female My_Number/M*100];
% Aged 58
Y_data = Female_data_58(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KNHANES_ALL(58);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Female = [Number_Ht_03_KNHANES_Female My_Number];
Proportion_Ht_03_KNHANES_Female = [Proportion_Ht_03_KNHANES_Female My_Number/M*100];
% Aged 59
Y_data = Female_data_59(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KNHANES_ALL(59);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Female = [Number_Ht_03_KNHANES_Female My_Number];
Proportion_Ht_03_KNHANES_Female = [Proportion_Ht_03_KNHANES_Female My_Number/M*100];
% Aged 60
Y_data = Female_data_60(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KNHANES_ALL(60);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Female = [Number_Ht_03_KNHANES_Female My_Number];
Proportion_Ht_03_KNHANES_Female = [Proportion_Ht_03_KNHANES_Female My_Number/M*100];
% Aged 61
Y_data = Female_data_61(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KNHANES_ALL(61);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Female = [Number_Ht_03_KNHANES_Female My_Number];
Proportion_Ht_03_KNHANES_Female = [Proportion_Ht_03_KNHANES_Female My_Number/M*100];
% Aged 62
Y_data = Female_data_62(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KNHANES_ALL(62);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Female = [Number_Ht_03_KNHANES_Female My_Number];
Proportion_Ht_03_KNHANES_Female = [Proportion_Ht_03_KNHANES_Female My_Number/M*100];
% Aged 63
Y_data = Female_data_63(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KNHANES_ALL(63);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Female = [Number_Ht_03_KNHANES_Female My_Number];
Proportion_Ht_03_KNHANES_Female = [Proportion_Ht_03_KNHANES_Female My_Number/M*100];
% Aged 64
Y_data = Female_data_64(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KNHANES_ALL(64);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Female = [Number_Ht_03_KNHANES_Female My_Number];
Proportion_Ht_03_KNHANES_Female = [Proportion_Ht_03_KNHANES_Female My_Number/M*100];
% Aged 65
Y_data = Female_data_65(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KNHANES_ALL(65);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Female = [Number_Ht_03_KNHANES_Female My_Number];
Proportion_Ht_03_KNHANES_Female = [Proportion_Ht_03_KNHANES_Female My_Number/M*100];
% Aged 66
Y_data = Female_data_66(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KNHANES_ALL(66);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Female = [Number_Ht_03_KNHANES_Female My_Number];
Proportion_Ht_03_KNHANES_Female = [Proportion_Ht_03_KNHANES_Female My_Number/M*100];
% Aged 67
Y_data = Female_data_67(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KNHANES_ALL(67);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Female = [Number_Ht_03_KNHANES_Female My_Number];
Proportion_Ht_03_KNHANES_Female = [Proportion_Ht_03_KNHANES_Female My_Number/M*100];
% Aged 68
Y_data = Female_data_68(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KNHANES_ALL(68);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Female = [Number_Ht_03_KNHANES_Female My_Number];
Proportion_Ht_03_KNHANES_Female = [Proportion_Ht_03_KNHANES_Female My_Number/M*100];
% Aged 69
Y_data = Female_data_69(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KNHANES_ALL(69);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Female = [Number_Ht_03_KNHANES_Female My_Number];
Proportion_Ht_03_KNHANES_Female = [Proportion_Ht_03_KNHANES_Female My_Number/M*100];
% Aged 70
Y_data = Female_data_70(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KNHANES_ALL(70);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Female = [Number_Ht_03_KNHANES_Female My_Number];
Proportion_Ht_03_KNHANES_Female = [Proportion_Ht_03_KNHANES_Female My_Number/M*100];
% Aged 71
Y_data = Female_data_71(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KNHANES_ALL(71);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Female = [Number_Ht_03_KNHANES_Female My_Number];
Proportion_Ht_03_KNHANES_Female = [Proportion_Ht_03_KNHANES_Female My_Number/M*100];
% Aged 72
Y_data = Female_data_72(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KNHANES_ALL(72);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Female = [Number_Ht_03_KNHANES_Female My_Number];
Proportion_Ht_03_KNHANES_Female = [Proportion_Ht_03_KNHANES_Female My_Number/M*100];
% Aged 73
Y_data = Female_data_73(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KNHANES_ALL(73);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Female = [Number_Ht_03_KNHANES_Female My_Number];
Proportion_Ht_03_KNHANES_Female = [Proportion_Ht_03_KNHANES_Female My_Number/M*100];
% Aged 74
Y_data = Female_data_74(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KNHANES_ALL(74);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Female = [Number_Ht_03_KNHANES_Female My_Number];
Proportion_Ht_03_KNHANES_Female = [Proportion_Ht_03_KNHANES_Female My_Number/M*100];
% Aged 75
Y_data = Female_data_75(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KNHANES_ALL(75);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Female = [Number_Ht_03_KNHANES_Female My_Number];
Proportion_Ht_03_KNHANES_Female = [Proportion_Ht_03_KNHANES_Female My_Number/M*100];
% Aged 76
Y_data = Female_data_76(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KNHANES_ALL(76);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Female = [Number_Ht_03_KNHANES_Female My_Number];
Proportion_Ht_03_KNHANES_Female = [Proportion_Ht_03_KNHANES_Female My_Number/M*100];
% Aged 77
Y_data = Female_data_77(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KNHANES_ALL(77);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Female = [Number_Ht_03_KNHANES_Female My_Number];
Proportion_Ht_03_KNHANES_Female = [Proportion_Ht_03_KNHANES_Female My_Number/M*100];
% Aged 78
Y_data = Female_data_78(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KNHANES_ALL(78);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Female = [Number_Ht_03_KNHANES_Female My_Number];
Proportion_Ht_03_KNHANES_Female = [Proportion_Ht_03_KNHANES_Female My_Number/M*100];
% Aged 79
Y_data = Female_data_79(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KNHANES_ALL(79);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Female = [Number_Ht_03_KNHANES_Female My_Number];
Proportion_Ht_03_KNHANES_Female = [Proportion_Ht_03_KNHANES_Female My_Number/M*100];
% Aged 80
Y_data = Female_data_80(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KNHANES_ALL(80);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Female = [Number_Ht_03_KNHANES_Female My_Number];
Proportion_Ht_03_KNHANES_Female = [Proportion_Ht_03_KNHANES_Female My_Number/M*100];

% For Male
% Aged 1
Y_data = Male_data_1(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KNHANES_ALL(1);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Male = [Number_Ht_03_KNHANES_Male My_Number];
Proportion_Ht_03_KNHANES_Male = [Proportion_Ht_03_KNHANES_Male My_Number/M*100];
% Aged 2
Y_data = Male_data_2(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KNHANES_ALL(2);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Male = [Number_Ht_03_KNHANES_Male My_Number];
Proportion_Ht_03_KNHANES_Male = [Proportion_Ht_03_KNHANES_Male My_Number/M*100];
% Aged 3
Y_data = Male_data_3(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KNHANES_ALL(3);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Male = [Number_Ht_03_KNHANES_Male My_Number];
Proportion_Ht_03_KNHANES_Male = [Proportion_Ht_03_KNHANES_Male My_Number/M*100];
% Aged 4
Y_data = Male_data_4(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KNHANES_ALL(4);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Male = [Number_Ht_03_KNHANES_Male My_Number];
Proportion_Ht_03_KNHANES_Male = [Proportion_Ht_03_KNHANES_Male My_Number/M*100];
% Aged 5
Y_data = Male_data_5(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KNHANES_ALL(5);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Male = [Number_Ht_03_KNHANES_Male My_Number];
Proportion_Ht_03_KNHANES_Male = [Proportion_Ht_03_KNHANES_Male My_Number/M*100];
% Aged 6
Y_data = Male_data_6(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KNHANES_ALL(6);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Male = [Number_Ht_03_KNHANES_Male My_Number];
Proportion_Ht_03_KNHANES_Male = [Proportion_Ht_03_KNHANES_Male My_Number/M*100];
% Aged 7
Y_data = Male_data_7(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KNHANES_ALL(7);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Male = [Number_Ht_03_KNHANES_Male My_Number];
Proportion_Ht_03_KNHANES_Male = [Proportion_Ht_03_KNHANES_Male My_Number/M*100];
% Aged 8
Y_data = Male_data_8(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KNHANES_ALL(8);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Male = [Number_Ht_03_KNHANES_Male My_Number];
Proportion_Ht_03_KNHANES_Male = [Proportion_Ht_03_KNHANES_Male My_Number/M*100];
% Aged 9
Y_data = Male_data_9(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KNHANES_ALL(9);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Male = [Number_Ht_03_KNHANES_Male My_Number];
Proportion_Ht_03_KNHANES_Male = [Proportion_Ht_03_KNHANES_Male My_Number/M*100];
% Aged 10
Y_data = Male_data_10(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KNHANES_ALL(10);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Male = [Number_Ht_03_KNHANES_Male My_Number];
Proportion_Ht_03_KNHANES_Male = [Proportion_Ht_03_KNHANES_Male My_Number/M*100];
% Aged 11
Y_data = Male_data_11(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KNHANES_ALL(11);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Male = [Number_Ht_03_KNHANES_Male My_Number];
Proportion_Ht_03_KNHANES_Male = [Proportion_Ht_03_KNHANES_Male My_Number/M*100];
% Aged 12
Y_data = Male_data_12(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KNHANES_ALL(12);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Male = [Number_Ht_03_KNHANES_Male My_Number];
Proportion_Ht_03_KNHANES_Male = [Proportion_Ht_03_KNHANES_Male My_Number/M*100];
% Aged 13
Y_data = Male_data_13(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KNHANES_ALL(13);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Male = [Number_Ht_03_KNHANES_Male My_Number];
Proportion_Ht_03_KNHANES_Male = [Proportion_Ht_03_KNHANES_Male My_Number/M*100];
% Aged 14
Y_data = Male_data_14(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KNHANES_ALL(14);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Male = [Number_Ht_03_KNHANES_Male My_Number];
Proportion_Ht_03_KNHANES_Male = [Proportion_Ht_03_KNHANES_Male My_Number/M*100];
% Aged 15
Y_data = Male_data_15(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KNHANES_ALL(15);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Male = [Number_Ht_03_KNHANES_Male My_Number];
Proportion_Ht_03_KNHANES_Male = [Proportion_Ht_03_KNHANES_Male My_Number/M*100];
% Aged 16
Y_data = Male_data_16(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KNHANES_ALL(16);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Male = [Number_Ht_03_KNHANES_Male My_Number];
Proportion_Ht_03_KNHANES_Male = [Proportion_Ht_03_KNHANES_Male My_Number/M*100];
% Aged 17
Y_data = Male_data_17(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KNHANES_ALL(17);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Male = [Number_Ht_03_KNHANES_Male My_Number];
Proportion_Ht_03_KNHANES_Male = [Proportion_Ht_03_KNHANES_Male My_Number/M*100];
% Aged 18
Y_data = Male_data_18(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KNHANES_ALL(18);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Male = [Number_Ht_03_KNHANES_Male My_Number];
Proportion_Ht_03_KNHANES_Male = [Proportion_Ht_03_KNHANES_Male My_Number/M*100];
% Aged 19
Y_data = Male_data_19(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KNHANES_ALL(19);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Male = [Number_Ht_03_KNHANES_Male My_Number];
Proportion_Ht_03_KNHANES_Male = [Proportion_Ht_03_KNHANES_Male My_Number/M*100];
% Aged 20
Y_data = Male_data_20(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KNHANES_ALL(20);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Male = [Number_Ht_03_KNHANES_Male My_Number];
Proportion_Ht_03_KNHANES_Male = [Proportion_Ht_03_KNHANES_Male My_Number/M*100];
% Aged 21
Y_data = Male_data_21(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KNHANES_ALL(21);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Male = [Number_Ht_03_KNHANES_Male My_Number];
Proportion_Ht_03_KNHANES_Male = [Proportion_Ht_03_KNHANES_Male My_Number/M*100];
% Aged 22
Y_data = Male_data_22(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KNHANES_ALL(22);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Male = [Number_Ht_03_KNHANES_Male My_Number];
Proportion_Ht_03_KNHANES_Male = [Proportion_Ht_03_KNHANES_Male My_Number/M*100];
% Aged 23
Y_data = Male_data_23(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KNHANES_ALL(23);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Male = [Number_Ht_03_KNHANES_Male My_Number];
Proportion_Ht_03_KNHANES_Male = [Proportion_Ht_03_KNHANES_Male My_Number/M*100];
% Aged 24
Y_data = Male_data_24(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KNHANES_ALL(24);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Male = [Number_Ht_03_KNHANES_Male My_Number];
Proportion_Ht_03_KNHANES_Male = [Proportion_Ht_03_KNHANES_Male My_Number/M*100];
% Aged 25
Y_data = Male_data_25(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KNHANES_ALL(25);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Male = [Number_Ht_03_KNHANES_Male My_Number];
Proportion_Ht_03_KNHANES_Male = [Proportion_Ht_03_KNHANES_Male My_Number/M*100];
% Aged 26
Y_data = Male_data_26(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KNHANES_ALL(26);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Male = [Number_Ht_03_KNHANES_Male My_Number];
Proportion_Ht_03_KNHANES_Male = [Proportion_Ht_03_KNHANES_Male My_Number/M*100];
% Aged 27
Y_data = Male_data_27(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KNHANES_ALL(27);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Male = [Number_Ht_03_KNHANES_Male My_Number];
Proportion_Ht_03_KNHANES_Male = [Proportion_Ht_03_KNHANES_Male My_Number/M*100];
% Aged 28
Y_data = Male_data_28(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KNHANES_ALL(28);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Male = [Number_Ht_03_KNHANES_Male My_Number];
Proportion_Ht_03_KNHANES_Male = [Proportion_Ht_03_KNHANES_Male My_Number/M*100];
% Aged 29
Y_data = Male_data_29(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KNHANES_ALL(29);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Male = [Number_Ht_03_KNHANES_Male My_Number];
Proportion_Ht_03_KNHANES_Male = [Proportion_Ht_03_KNHANES_Male My_Number/M*100];
% Aged 30
Y_data = Male_data_30(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KNHANES_ALL(30);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Male = [Number_Ht_03_KNHANES_Male My_Number];
Proportion_Ht_03_KNHANES_Male = [Proportion_Ht_03_KNHANES_Male My_Number/M*100];
% Aged 31
Y_data = Male_data_31(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KNHANES_ALL(31);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Male = [Number_Ht_03_KNHANES_Male My_Number];
Proportion_Ht_03_KNHANES_Male = [Proportion_Ht_03_KNHANES_Male My_Number/M*100];
% Aged 32
Y_data = Male_data_32(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KNHANES_ALL(32);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Male = [Number_Ht_03_KNHANES_Male My_Number];
Proportion_Ht_03_KNHANES_Male = [Proportion_Ht_03_KNHANES_Male My_Number/M*100];
% Aged 33
Y_data = Male_data_33(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KNHANES_ALL(33);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Male = [Number_Ht_03_KNHANES_Male My_Number];
Proportion_Ht_03_KNHANES_Male = [Proportion_Ht_03_KNHANES_Male My_Number/M*100];
% Aged 34
Y_data = Male_data_34(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KNHANES_ALL(34);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Male = [Number_Ht_03_KNHANES_Male My_Number];
Proportion_Ht_03_KNHANES_Male = [Proportion_Ht_03_KNHANES_Male My_Number/M*100];
% Aged 35
Y_data = Male_data_35(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KNHANES_ALL(35);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Male = [Number_Ht_03_KNHANES_Male My_Number];
Proportion_Ht_03_KNHANES_Male = [Proportion_Ht_03_KNHANES_Male My_Number/M*100];
% Aged 36
Y_data = Male_data_36(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KNHANES_ALL(36);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Male = [Number_Ht_03_KNHANES_Male My_Number];
Proportion_Ht_03_KNHANES_Male = [Proportion_Ht_03_KNHANES_Male My_Number/M*100];
% Aged 37
Y_data = Male_data_37(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KNHANES_ALL(37);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Male = [Number_Ht_03_KNHANES_Male My_Number];
Proportion_Ht_03_KNHANES_Male = [Proportion_Ht_03_KNHANES_Male My_Number/M*100];
% Aged 38
Y_data = Male_data_38(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KNHANES_ALL(38);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Male = [Number_Ht_03_KNHANES_Male My_Number];
Proportion_Ht_03_KNHANES_Male = [Proportion_Ht_03_KNHANES_Male My_Number/M*100];
% Aged 39
Y_data = Male_data_39(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KNHANES_ALL(39);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Male = [Number_Ht_03_KNHANES_Male My_Number];
Proportion_Ht_03_KNHANES_Male = [Proportion_Ht_03_KNHANES_Male My_Number/M*100];
% Aged 40
Y_data = Male_data_40(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KNHANES_ALL(40);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Male = [Number_Ht_03_KNHANES_Male My_Number];
Proportion_Ht_03_KNHANES_Male = [Proportion_Ht_03_KNHANES_Male My_Number/M*100];
% Aged 41
Y_data = Male_data_41(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KNHANES_ALL(41);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Male = [Number_Ht_03_KNHANES_Male My_Number];
Proportion_Ht_03_KNHANES_Male = [Proportion_Ht_03_KNHANES_Male My_Number/M*100];
% Aged 42
Y_data = Male_data_42(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KNHANES_ALL(42);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Male = [Number_Ht_03_KNHANES_Male My_Number];
Proportion_Ht_03_KNHANES_Male = [Proportion_Ht_03_KNHANES_Male My_Number/M*100];
% Aged 43
Y_data = Male_data_43(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KNHANES_ALL(43);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Male = [Number_Ht_03_KNHANES_Male My_Number];
Proportion_Ht_03_KNHANES_Male = [Proportion_Ht_03_KNHANES_Male My_Number/M*100];
% Aged 44
Y_data = Male_data_44(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KNHANES_ALL(44);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Male = [Number_Ht_03_KNHANES_Male My_Number];
Proportion_Ht_03_KNHANES_Male = [Proportion_Ht_03_KNHANES_Male My_Number/M*100];
% Aged 45
Y_data = Male_data_45(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KNHANES_ALL(45);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Male = [Number_Ht_03_KNHANES_Male My_Number];
Proportion_Ht_03_KNHANES_Male = [Proportion_Ht_03_KNHANES_Male My_Number/M*100];
% Aged 46
Y_data = Male_data_46(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KNHANES_ALL(46);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Male = [Number_Ht_03_KNHANES_Male My_Number];
Proportion_Ht_03_KNHANES_Male = [Proportion_Ht_03_KNHANES_Male My_Number/M*100];
% Aged 47
Y_data = Male_data_47(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KNHANES_ALL(47);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Male = [Number_Ht_03_KNHANES_Male My_Number];
Proportion_Ht_03_KNHANES_Male = [Proportion_Ht_03_KNHANES_Male My_Number/M*100];
% Aged 48
Y_data = Male_data_48(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KNHANES_ALL(48);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Male = [Number_Ht_03_KNHANES_Male My_Number];
Proportion_Ht_03_KNHANES_Male = [Proportion_Ht_03_KNHANES_Male My_Number/M*100];
% Aged 49
Y_data = Male_data_49(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KNHANES_ALL(49);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Male = [Number_Ht_03_KNHANES_Male My_Number];
Proportion_Ht_03_KNHANES_Male = [Proportion_Ht_03_KNHANES_Male My_Number/M*100];
% Aged 50
Y_data = Male_data_50(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KNHANES_ALL(50);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Male = [Number_Ht_03_KNHANES_Male My_Number];
Proportion_Ht_03_KNHANES_Male = [Proportion_Ht_03_KNHANES_Male My_Number/M*100];
% Aged 51
Y_data = Male_data_51(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KNHANES_ALL(51);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Male = [Number_Ht_03_KNHANES_Male My_Number];
Proportion_Ht_03_KNHANES_Male = [Proportion_Ht_03_KNHANES_Male My_Number/M*100];
% Aged 52
Y_data = Male_data_52(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KNHANES_ALL(52);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Male = [Number_Ht_03_KNHANES_Male My_Number];
Proportion_Ht_03_KNHANES_Male = [Proportion_Ht_03_KNHANES_Male My_Number/M*100];
% Aged 53
Y_data = Male_data_53(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KNHANES_ALL(53);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Male = [Number_Ht_03_KNHANES_Male My_Number];
Proportion_Ht_03_KNHANES_Male = [Proportion_Ht_03_KNHANES_Male My_Number/M*100];
% Aged 54
Y_data = Male_data_54(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KNHANES_ALL(54);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Male = [Number_Ht_03_KNHANES_Male My_Number];
Proportion_Ht_03_KNHANES_Male = [Proportion_Ht_03_KNHANES_Male My_Number/M*100];
% Aged 55
Y_data = Male_data_55(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KNHANES_ALL(55);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Male = [Number_Ht_03_KNHANES_Male My_Number];
Proportion_Ht_03_KNHANES_Male = [Proportion_Ht_03_KNHANES_Male My_Number/M*100];
% Aged 56
Y_data = Male_data_56(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KNHANES_ALL(56);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Male = [Number_Ht_03_KNHANES_Male My_Number];
Proportion_Ht_03_KNHANES_Male = [Proportion_Ht_03_KNHANES_Male My_Number/M*100];
% Aged 57
Y_data = Male_data_57(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KNHANES_ALL(57);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Male = [Number_Ht_03_KNHANES_Male My_Number];
Proportion_Ht_03_KNHANES_Male = [Proportion_Ht_03_KNHANES_Male My_Number/M*100];
% Aged 58
Y_data = Male_data_58(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KNHANES_ALL(58);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Male = [Number_Ht_03_KNHANES_Male My_Number];
Proportion_Ht_03_KNHANES_Male = [Proportion_Ht_03_KNHANES_Male My_Number/M*100];
% Aged 59
Y_data = Male_data_59(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KNHANES_ALL(59);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Male = [Number_Ht_03_KNHANES_Male My_Number];
Proportion_Ht_03_KNHANES_Male = [Proportion_Ht_03_KNHANES_Male My_Number/M*100];
% Aged 60
Y_data = Male_data_60(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KNHANES_ALL(60);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Male = [Number_Ht_03_KNHANES_Male My_Number];
Proportion_Ht_03_KNHANES_Male = [Proportion_Ht_03_KNHANES_Male My_Number/M*100];
% Aged 61
Y_data = Male_data_61(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KNHANES_ALL(61);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Male = [Number_Ht_03_KNHANES_Male My_Number];
Proportion_Ht_03_KNHANES_Male = [Proportion_Ht_03_KNHANES_Male My_Number/M*100];
% Aged 62
Y_data = Male_data_62(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KNHANES_ALL(62);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Male = [Number_Ht_03_KNHANES_Male My_Number];
Proportion_Ht_03_KNHANES_Male = [Proportion_Ht_03_KNHANES_Male My_Number/M*100];
% Aged 63
Y_data = Male_data_63(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KNHANES_ALL(63);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Male = [Number_Ht_03_KNHANES_Male My_Number];
Proportion_Ht_03_KNHANES_Male = [Proportion_Ht_03_KNHANES_Male My_Number/M*100];
% Aged 64
Y_data = Male_data_64(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KNHANES_ALL(64);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Male = [Number_Ht_03_KNHANES_Male My_Number];
Proportion_Ht_03_KNHANES_Male = [Proportion_Ht_03_KNHANES_Male My_Number/M*100];
% Aged 65
Y_data = Male_data_65(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KNHANES_ALL(65);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Male = [Number_Ht_03_KNHANES_Male My_Number];
Proportion_Ht_03_KNHANES_Male = [Proportion_Ht_03_KNHANES_Male My_Number/M*100];
% Aged 66
Y_data = Male_data_66(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KNHANES_ALL(66);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Male = [Number_Ht_03_KNHANES_Male My_Number];
Proportion_Ht_03_KNHANES_Male = [Proportion_Ht_03_KNHANES_Male My_Number/M*100];
% Aged 67
Y_data = Male_data_67(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KNHANES_ALL(67);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Male = [Number_Ht_03_KNHANES_Male My_Number];
Proportion_Ht_03_KNHANES_Male = [Proportion_Ht_03_KNHANES_Male My_Number/M*100];
% Aged 68
Y_data = Male_data_68(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KNHANES_ALL(68);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Male = [Number_Ht_03_KNHANES_Male My_Number];
Proportion_Ht_03_KNHANES_Male = [Proportion_Ht_03_KNHANES_Male My_Number/M*100];
% Aged 69
Y_data = Male_data_69(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KNHANES_ALL(69);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Male = [Number_Ht_03_KNHANES_Male My_Number];
Proportion_Ht_03_KNHANES_Male = [Proportion_Ht_03_KNHANES_Male My_Number/M*100];
% Aged 70
Y_data = Male_data_70(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KNHANES_ALL(70);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Male = [Number_Ht_03_KNHANES_Male My_Number];
Proportion_Ht_03_KNHANES_Male = [Proportion_Ht_03_KNHANES_Male My_Number/M*100];
% Aged 71
Y_data = Male_data_71(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KNHANES_ALL(71);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Male = [Number_Ht_03_KNHANES_Male My_Number];
Proportion_Ht_03_KNHANES_Male = [Proportion_Ht_03_KNHANES_Male My_Number/M*100];
% Aged 72
Y_data = Male_data_72(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KNHANES_ALL(72);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Male = [Number_Ht_03_KNHANES_Male My_Number];
Proportion_Ht_03_KNHANES_Male = [Proportion_Ht_03_KNHANES_Male My_Number/M*100];
% Aged 73
Y_data = Male_data_73(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KNHANES_ALL(73);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Male = [Number_Ht_03_KNHANES_Male My_Number];
Proportion_Ht_03_KNHANES_Male = [Proportion_Ht_03_KNHANES_Male My_Number/M*100];
% Aged 74
Y_data = Male_data_74(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KNHANES_ALL(74);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Male = [Number_Ht_03_KNHANES_Male My_Number];
Proportion_Ht_03_KNHANES_Male = [Proportion_Ht_03_KNHANES_Male My_Number/M*100];
% Aged 75
Y_data = Male_data_75(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KNHANES_ALL(75);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Male = [Number_Ht_03_KNHANES_Male My_Number];
Proportion_Ht_03_KNHANES_Male = [Proportion_Ht_03_KNHANES_Male My_Number/M*100];
% Aged 76
Y_data = Male_data_76(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KNHANES_ALL(76);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Male = [Number_Ht_03_KNHANES_Male My_Number];
Proportion_Ht_03_KNHANES_Male = [Proportion_Ht_03_KNHANES_Male My_Number/M*100];
% Aged 77
Y_data = Male_data_77(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KNHANES_ALL(77);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Male = [Number_Ht_03_KNHANES_Male My_Number];
Proportion_Ht_03_KNHANES_Male = [Proportion_Ht_03_KNHANES_Male My_Number/M*100];
% Aged 78
Y_data = Male_data_78(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KNHANES_ALL(78);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Male = [Number_Ht_03_KNHANES_Male My_Number];
Proportion_Ht_03_KNHANES_Male = [Proportion_Ht_03_KNHANES_Male My_Number/M*100];
% Aged 79
Y_data = Male_data_79(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KNHANES_ALL(79);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Male = [Number_Ht_03_KNHANES_Male My_Number];
Proportion_Ht_03_KNHANES_Male = [Proportion_Ht_03_KNHANES_Male My_Number/M*100];
% Aged 80
Y_data = Male_data_80(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KNHANES_ALL(80);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_03_KNHANES_Male = [Number_Ht_03_KNHANES_Male My_Number];
Proportion_Ht_03_KNHANES_Male = [Proportion_Ht_03_KNHANES_Male My_Number/M*100];

%% 04-SHARE
load('.\Raw data\04-SHARE\My_percentiles_Ht_Limit_04_SHARE.mat')
% For Female
subplot(2,1,1)
% 5th percentile
xx_data = My_Age_Female;
yy_data = My_5th_Female;
[fitobject,gof] = fit(xx_data',yy_data','smooth');
XX = min(xx_data):(max(xx_data)-min(xx_data))/25:max(xx_data);
YY = fitobject(XX);
YY = YY';
% 95th percentile
x_data = My_Age_Female;
y_data = My_95th_Female;
[fitobject,gof] = fit(x_data',y_data','smooth');
X = min(x_data):(max(x_data)-min(x_data))/25:max(x_data);
Y = fitobject(X);
Y = Y';
% Fill
XX_Fill_1 = [XX,X(end:-1:1)]; % 5th ~ 95th
YY_Fill_1 = [YY,Y(end:-1:1)];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,My_Colors_9(4,:));
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);
% Mean
xxx_data = My_Age_Female;
yyy_data = My_mean_Female;
[fitobject,gof] = fit(xxx_data',yyy_data','smooth');
XX = min(xxx_data):(max(xxx_data)-min(xxx_data))/25:max(xxx_data);
YY = fitobject(XX);
YY = YY';
HH4 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',My_Colors_9(4,:)); % Mean

% For Male
subplot(2,1,2)
% 5th percentile
xx_data = My_Age_Male;
yy_data = My_5th_Male;
[fitobject,gof] = fit(xx_data',yy_data','smooth');
XX = min(xx_data):(max(xx_data)-min(xx_data))/25:max(xx_data);
YY = fitobject(XX);
YY = YY';
% 95th percentile
x_data = My_Age_Male;
y_data = My_95th_Male;
[fitobject,gof] = fit(x_data',y_data','smooth');
X = min(x_data):(max(x_data)-min(x_data))/25:max(x_data);
Y = fitobject(X);
Y = Y';
% Fill
XX_Fill_1 = [XX,X(end:-1:1)]; % 5th ~ 95th
YY_Fill_1 = [YY,Y(end:-1:1)];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,My_Colors_9(4,:));
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);
% Mean
xxx_data = My_Age_Male;
yyy_data = My_mean_Male;
[fitobject,gof] = fit(xxx_data',yyy_data','smooth');
XX = min(xxx_data):(max(xxx_data)-min(xxx_data))/25:max(xxx_data);
YY = fitobject(XX);
YY = YY';
HH4 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',My_Colors_9(4,:)); % Mean

%% 05-KSPF
Female_data = xlsread('./Raw data/05-KSPF/KSPF, Korea.xlsx','Female','B:D'); % Age	Height(cm)	Weight(Kg)
Male_data = xlsread('./Raw data/05-KSPF/KSPF, Korea.xlsx','Male','B:D'); % Age	Height(cm)	Weight(Kg)
% Stratified by age and gender
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
[M N] = size(Female_data); % Height (cm); Weight (Kg)
for i=1:M
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
[M N] = size(Male_data); % Height (cm); Weight (Kg)
for i=1:M
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

% For 05-KSPF
load('All coefficients\05-KSPF\Coefficients_a_and_b_c1_KSPF.mat')
% upper limit for height
Age_05_KSPF = 11:90;
Number_Ht_05_KSPF_Female = []; % The number of individuals whose height exceeds the theoretical limit
Number_Ht_05_KSPF_Male = [];
Proportion_Ht_05_KSPF_Female = []; % The proportion of individuals whose height exceeds the theoretical limit
Proportion_Ht_05_KSPF_Male = [];

% For Female
% Aged 11
Y_data = Female_data_11(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KSPF_Korea(1);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Female = [Number_Ht_05_KSPF_Female My_Number];
Proportion_Ht_05_KSPF_Female = [Proportion_Ht_05_KSPF_Female My_Number/M*100];
% Aged 12
Y_data = Female_data_12(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KSPF_Korea(2);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Female = [Number_Ht_05_KSPF_Female My_Number];
Proportion_Ht_05_KSPF_Female = [Proportion_Ht_05_KSPF_Female My_Number/M*100];
% Aged 13
Y_data = Female_data_13(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KSPF_Korea(3);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Female = [Number_Ht_05_KSPF_Female My_Number];
Proportion_Ht_05_KSPF_Female = [Proportion_Ht_05_KSPF_Female My_Number/M*100];
% Aged 14
Y_data = Female_data_14(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KSPF_Korea(4);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Female = [Number_Ht_05_KSPF_Female My_Number];
Proportion_Ht_05_KSPF_Female = [Proportion_Ht_05_KSPF_Female My_Number/M*100];
% Aged 15
Y_data = Female_data_15(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KSPF_Korea(5);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Female = [Number_Ht_05_KSPF_Female My_Number];
Proportion_Ht_05_KSPF_Female = [Proportion_Ht_05_KSPF_Female My_Number/M*100];
% Aged 16
Y_data = Female_data_16(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KSPF_Korea(6);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Female = [Number_Ht_05_KSPF_Female My_Number];
Proportion_Ht_05_KSPF_Female = [Proportion_Ht_05_KSPF_Female My_Number/M*100];
% Aged 17
Y_data = Female_data_17(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KSPF_Korea(7);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Female = [Number_Ht_05_KSPF_Female My_Number];
Proportion_Ht_05_KSPF_Female = [Proportion_Ht_05_KSPF_Female My_Number/M*100];
% Aged 18
Y_data = Female_data_18(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KSPF_Korea(8);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Female = [Number_Ht_05_KSPF_Female My_Number];
Proportion_Ht_05_KSPF_Female = [Proportion_Ht_05_KSPF_Female My_Number/M*100];
% Aged 19
Y_data = Female_data_19(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KSPF_Korea(9);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Female = [Number_Ht_05_KSPF_Female My_Number];
Proportion_Ht_05_KSPF_Female = [Proportion_Ht_05_KSPF_Female My_Number/M*100];
% Aged 20
Y_data = Female_data_20(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KSPF_Korea(10);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Female = [Number_Ht_05_KSPF_Female My_Number];
Proportion_Ht_05_KSPF_Female = [Proportion_Ht_05_KSPF_Female My_Number/M*100];
% Aged 21
Y_data = Female_data_21(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KSPF_Korea(11);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Female = [Number_Ht_05_KSPF_Female My_Number];
Proportion_Ht_05_KSPF_Female = [Proportion_Ht_05_KSPF_Female My_Number/M*100];
% Aged 22
Y_data = Female_data_22(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KSPF_Korea(12);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Female = [Number_Ht_05_KSPF_Female My_Number];
Proportion_Ht_05_KSPF_Female = [Proportion_Ht_05_KSPF_Female My_Number/M*100];
% Aged 23
Y_data = Female_data_23(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KSPF_Korea(13);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Female = [Number_Ht_05_KSPF_Female My_Number];
Proportion_Ht_05_KSPF_Female = [Proportion_Ht_05_KSPF_Female My_Number/M*100];
% Aged 24
Y_data = Female_data_24(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KSPF_Korea(14);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Female = [Number_Ht_05_KSPF_Female My_Number];
Proportion_Ht_05_KSPF_Female = [Proportion_Ht_05_KSPF_Female My_Number/M*100];
% Aged 25
Y_data = Female_data_25(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KSPF_Korea(15);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Female = [Number_Ht_05_KSPF_Female My_Number];
Proportion_Ht_05_KSPF_Female = [Proportion_Ht_05_KSPF_Female My_Number/M*100];
% Aged 26
Y_data = Female_data_26(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KSPF_Korea(16);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Female = [Number_Ht_05_KSPF_Female My_Number];
Proportion_Ht_05_KSPF_Female = [Proportion_Ht_05_KSPF_Female My_Number/M*100];
% Aged 27
Y_data = Female_data_27(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KSPF_Korea(17);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Female = [Number_Ht_05_KSPF_Female My_Number];
Proportion_Ht_05_KSPF_Female = [Proportion_Ht_05_KSPF_Female My_Number/M*100];
% Aged 28
Y_data = Female_data_28(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KSPF_Korea(18);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Female = [Number_Ht_05_KSPF_Female My_Number];
Proportion_Ht_05_KSPF_Female = [Proportion_Ht_05_KSPF_Female My_Number/M*100];
% Aged 29
Y_data = Female_data_29(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KSPF_Korea(19);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Female = [Number_Ht_05_KSPF_Female My_Number];
Proportion_Ht_05_KSPF_Female = [Proportion_Ht_05_KSPF_Female My_Number/M*100];
% Aged 30
Y_data = Female_data_30(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KSPF_Korea(20);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Female = [Number_Ht_05_KSPF_Female My_Number];
Proportion_Ht_05_KSPF_Female = [Proportion_Ht_05_KSPF_Female My_Number/M*100];
% Aged 31
Y_data = Female_data_31(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KSPF_Korea(21);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Female = [Number_Ht_05_KSPF_Female My_Number];
Proportion_Ht_05_KSPF_Female = [Proportion_Ht_05_KSPF_Female My_Number/M*100];
% Aged 32
Y_data = Female_data_32(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KSPF_Korea(22);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Female = [Number_Ht_05_KSPF_Female My_Number];
Proportion_Ht_05_KSPF_Female = [Proportion_Ht_05_KSPF_Female My_Number/M*100];
% Aged 33
Y_data = Female_data_33(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KSPF_Korea(23);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Female = [Number_Ht_05_KSPF_Female My_Number];
Proportion_Ht_05_KSPF_Female = [Proportion_Ht_05_KSPF_Female My_Number/M*100];
% Aged 34
Y_data = Female_data_34(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KSPF_Korea(24);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Female = [Number_Ht_05_KSPF_Female My_Number];
Proportion_Ht_05_KSPF_Female = [Proportion_Ht_05_KSPF_Female My_Number/M*100];
% Aged 35
Y_data = Female_data_35(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KSPF_Korea(25);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Female = [Number_Ht_05_KSPF_Female My_Number];
Proportion_Ht_05_KSPF_Female = [Proportion_Ht_05_KSPF_Female My_Number/M*100];
% Aged 36
Y_data = Female_data_36(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KSPF_Korea(26);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Female = [Number_Ht_05_KSPF_Female My_Number];
Proportion_Ht_05_KSPF_Female = [Proportion_Ht_05_KSPF_Female My_Number/M*100];
% Aged 37
Y_data = Female_data_37(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KSPF_Korea(27);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Female = [Number_Ht_05_KSPF_Female My_Number];
Proportion_Ht_05_KSPF_Female = [Proportion_Ht_05_KSPF_Female My_Number/M*100];
% Aged 38
Y_data = Female_data_38(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KSPF_Korea(28);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Female = [Number_Ht_05_KSPF_Female My_Number];
Proportion_Ht_05_KSPF_Female = [Proportion_Ht_05_KSPF_Female My_Number/M*100];
% Aged 39
Y_data = Female_data_39(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KSPF_Korea(29);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Female = [Number_Ht_05_KSPF_Female My_Number];
Proportion_Ht_05_KSPF_Female = [Proportion_Ht_05_KSPF_Female My_Number/M*100];
% Aged 40
Y_data = Female_data_40(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KSPF_Korea(30);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Female = [Number_Ht_05_KSPF_Female My_Number];
Proportion_Ht_05_KSPF_Female = [Proportion_Ht_05_KSPF_Female My_Number/M*100];
% Aged 41
Y_data = Female_data_41(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KSPF_Korea(31);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Female = [Number_Ht_05_KSPF_Female My_Number];
Proportion_Ht_05_KSPF_Female = [Proportion_Ht_05_KSPF_Female My_Number/M*100];
% Aged 42
Y_data = Female_data_42(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KSPF_Korea(32);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Female = [Number_Ht_05_KSPF_Female My_Number];
Proportion_Ht_05_KSPF_Female = [Proportion_Ht_05_KSPF_Female My_Number/M*100];
% Aged 43
Y_data = Female_data_43(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KSPF_Korea(33);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Female = [Number_Ht_05_KSPF_Female My_Number];
Proportion_Ht_05_KSPF_Female = [Proportion_Ht_05_KSPF_Female My_Number/M*100];
% Aged 44
Y_data = Female_data_44(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KSPF_Korea(34);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Female = [Number_Ht_05_KSPF_Female My_Number];
Proportion_Ht_05_KSPF_Female = [Proportion_Ht_05_KSPF_Female My_Number/M*100];
% Aged 45
Y_data = Female_data_45(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KSPF_Korea(35);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Female = [Number_Ht_05_KSPF_Female My_Number];
Proportion_Ht_05_KSPF_Female = [Proportion_Ht_05_KSPF_Female My_Number/M*100];
% Aged 46
Y_data = Female_data_46(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KSPF_Korea(36);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Female = [Number_Ht_05_KSPF_Female My_Number];
Proportion_Ht_05_KSPF_Female = [Proportion_Ht_05_KSPF_Female My_Number/M*100];
% Aged 47
Y_data = Female_data_47(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KSPF_Korea(37);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Female = [Number_Ht_05_KSPF_Female My_Number];
Proportion_Ht_05_KSPF_Female = [Proportion_Ht_05_KSPF_Female My_Number/M*100];
% Aged 48
Y_data = Female_data_48(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KSPF_Korea(38);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Female = [Number_Ht_05_KSPF_Female My_Number];
Proportion_Ht_05_KSPF_Female = [Proportion_Ht_05_KSPF_Female My_Number/M*100];
% Aged 49
Y_data = Female_data_49(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KSPF_Korea(39);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Female = [Number_Ht_05_KSPF_Female My_Number];
Proportion_Ht_05_KSPF_Female = [Proportion_Ht_05_KSPF_Female My_Number/M*100];
% Aged 50
Y_data = Female_data_50(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KSPF_Korea(40);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Female = [Number_Ht_05_KSPF_Female My_Number];
Proportion_Ht_05_KSPF_Female = [Proportion_Ht_05_KSPF_Female My_Number/M*100];
% Aged 51
Y_data = Female_data_51(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KSPF_Korea(41);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Female = [Number_Ht_05_KSPF_Female My_Number];
Proportion_Ht_05_KSPF_Female = [Proportion_Ht_05_KSPF_Female My_Number/M*100];
% Aged 52
Y_data = Female_data_52(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KSPF_Korea(42);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Female = [Number_Ht_05_KSPF_Female My_Number];
Proportion_Ht_05_KSPF_Female = [Proportion_Ht_05_KSPF_Female My_Number/M*100];
% Aged 53
Y_data = Female_data_53(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KSPF_Korea(43);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Female = [Number_Ht_05_KSPF_Female My_Number];
Proportion_Ht_05_KSPF_Female = [Proportion_Ht_05_KSPF_Female My_Number/M*100];
% Aged 54
Y_data = Female_data_54(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KSPF_Korea(44);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Female = [Number_Ht_05_KSPF_Female My_Number];
Proportion_Ht_05_KSPF_Female = [Proportion_Ht_05_KSPF_Female My_Number/M*100];
% Aged 55
Y_data = Female_data_55(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KSPF_Korea(45);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Female = [Number_Ht_05_KSPF_Female My_Number];
Proportion_Ht_05_KSPF_Female = [Proportion_Ht_05_KSPF_Female My_Number/M*100];
% Aged 56
Y_data = Female_data_56(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KSPF_Korea(46);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Female = [Number_Ht_05_KSPF_Female My_Number];
Proportion_Ht_05_KSPF_Female = [Proportion_Ht_05_KSPF_Female My_Number/M*100];
% Aged 57
Y_data = Female_data_57(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KSPF_Korea(47);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Female = [Number_Ht_05_KSPF_Female My_Number];
Proportion_Ht_05_KSPF_Female = [Proportion_Ht_05_KSPF_Female My_Number/M*100];
% Aged 58
Y_data = Female_data_58(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KSPF_Korea(48);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Female = [Number_Ht_05_KSPF_Female My_Number];
Proportion_Ht_05_KSPF_Female = [Proportion_Ht_05_KSPF_Female My_Number/M*100];
% Aged 59
Y_data = Female_data_59(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KSPF_Korea(49);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Female = [Number_Ht_05_KSPF_Female My_Number];
Proportion_Ht_05_KSPF_Female = [Proportion_Ht_05_KSPF_Female My_Number/M*100];
% Aged 60
Y_data = Female_data_60(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KSPF_Korea(50);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Female = [Number_Ht_05_KSPF_Female My_Number];
Proportion_Ht_05_KSPF_Female = [Proportion_Ht_05_KSPF_Female My_Number/M*100];
% Aged 61
Y_data = Female_data_61(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KSPF_Korea(51);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Female = [Number_Ht_05_KSPF_Female My_Number];
Proportion_Ht_05_KSPF_Female = [Proportion_Ht_05_KSPF_Female My_Number/M*100];
% Aged 62
Y_data = Female_data_62(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KSPF_Korea(52);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Female = [Number_Ht_05_KSPF_Female My_Number];
Proportion_Ht_05_KSPF_Female = [Proportion_Ht_05_KSPF_Female My_Number/M*100];
% Aged 63
Y_data = Female_data_63(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KSPF_Korea(53);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Female = [Number_Ht_05_KSPF_Female My_Number];
Proportion_Ht_05_KSPF_Female = [Proportion_Ht_05_KSPF_Female My_Number/M*100];
% Aged 64
Y_data = Female_data_64(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KSPF_Korea(54);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Female = [Number_Ht_05_KSPF_Female My_Number];
Proportion_Ht_05_KSPF_Female = [Proportion_Ht_05_KSPF_Female My_Number/M*100];
% Aged 65
Y_data = Female_data_65(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KSPF_Korea(55);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Female = [Number_Ht_05_KSPF_Female My_Number];
Proportion_Ht_05_KSPF_Female = [Proportion_Ht_05_KSPF_Female My_Number/M*100];
% Aged 66
Y_data = Female_data_66(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KSPF_Korea(56);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Female = [Number_Ht_05_KSPF_Female My_Number];
Proportion_Ht_05_KSPF_Female = [Proportion_Ht_05_KSPF_Female My_Number/M*100];
% Aged 67
Y_data = Female_data_67(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KSPF_Korea(57);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Female = [Number_Ht_05_KSPF_Female My_Number];
Proportion_Ht_05_KSPF_Female = [Proportion_Ht_05_KSPF_Female My_Number/M*100];
% Aged 68
Y_data = Female_data_68(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KSPF_Korea(58);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Female = [Number_Ht_05_KSPF_Female My_Number];
Proportion_Ht_05_KSPF_Female = [Proportion_Ht_05_KSPF_Female My_Number/M*100];
% Aged 69
Y_data = Female_data_69(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KSPF_Korea(59);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Female = [Number_Ht_05_KSPF_Female My_Number];
Proportion_Ht_05_KSPF_Female = [Proportion_Ht_05_KSPF_Female My_Number/M*100];
% Aged 70
Y_data = Female_data_70(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KSPF_Korea(60);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Female = [Number_Ht_05_KSPF_Female My_Number];
Proportion_Ht_05_KSPF_Female = [Proportion_Ht_05_KSPF_Female My_Number/M*100];
% Aged 71
Y_data = Female_data_71(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KSPF_Korea(61);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Female = [Number_Ht_05_KSPF_Female My_Number];
Proportion_Ht_05_KSPF_Female = [Proportion_Ht_05_KSPF_Female My_Number/M*100];
% Aged 72
Y_data = Female_data_72(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KSPF_Korea(62);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Female = [Number_Ht_05_KSPF_Female My_Number];
Proportion_Ht_05_KSPF_Female = [Proportion_Ht_05_KSPF_Female My_Number/M*100];
% Aged 73
Y_data = Female_data_73(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KSPF_Korea(63);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Female = [Number_Ht_05_KSPF_Female My_Number];
Proportion_Ht_05_KSPF_Female = [Proportion_Ht_05_KSPF_Female My_Number/M*100];
% Aged 74
Y_data = Female_data_74(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KSPF_Korea(64);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Female = [Number_Ht_05_KSPF_Female My_Number];
Proportion_Ht_05_KSPF_Female = [Proportion_Ht_05_KSPF_Female My_Number/M*100];
% Aged 75
Y_data = Female_data_75(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KSPF_Korea(65);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Female = [Number_Ht_05_KSPF_Female My_Number];
Proportion_Ht_05_KSPF_Female = [Proportion_Ht_05_KSPF_Female My_Number/M*100];
% Aged 76
Y_data = Female_data_76(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KSPF_Korea(66);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Female = [Number_Ht_05_KSPF_Female My_Number];
Proportion_Ht_05_KSPF_Female = [Proportion_Ht_05_KSPF_Female My_Number/M*100];
% Aged 77
Y_data = Female_data_77(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KSPF_Korea(67);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Female = [Number_Ht_05_KSPF_Female My_Number];
Proportion_Ht_05_KSPF_Female = [Proportion_Ht_05_KSPF_Female My_Number/M*100];
% Aged 78
Y_data = Female_data_78(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KSPF_Korea(68);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Female = [Number_Ht_05_KSPF_Female My_Number];
Proportion_Ht_05_KSPF_Female = [Proportion_Ht_05_KSPF_Female My_Number/M*100];
% Aged 79
Y_data = Female_data_79(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KSPF_Korea(69);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Female = [Number_Ht_05_KSPF_Female My_Number];
Proportion_Ht_05_KSPF_Female = [Proportion_Ht_05_KSPF_Female My_Number/M*100];
% Aged 80
Y_data = Female_data_80(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KSPF_Korea(70);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Female = [Number_Ht_05_KSPF_Female My_Number];
Proportion_Ht_05_KSPF_Female = [Proportion_Ht_05_KSPF_Female My_Number/M*100];
% Aged 81
Y_data = Female_data_81(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KSPF_Korea(71);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Female = [Number_Ht_05_KSPF_Female My_Number];
Proportion_Ht_05_KSPF_Female = [Proportion_Ht_05_KSPF_Female My_Number/M*100];
% Aged 82
Y_data = Female_data_82(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KSPF_Korea(72);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Female = [Number_Ht_05_KSPF_Female My_Number];
Proportion_Ht_05_KSPF_Female = [Proportion_Ht_05_KSPF_Female My_Number/M*100];
% Aged 83
Y_data = Female_data_83(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KSPF_Korea(73);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Female = [Number_Ht_05_KSPF_Female My_Number];
Proportion_Ht_05_KSPF_Female = [Proportion_Ht_05_KSPF_Female My_Number/M*100];
% Aged 84
Y_data = Female_data_84(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KSPF_Korea(74);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Female = [Number_Ht_05_KSPF_Female My_Number];
Proportion_Ht_05_KSPF_Female = [Proportion_Ht_05_KSPF_Female My_Number/M*100];
% Aged 85
Y_data = Female_data_85(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KSPF_Korea(75);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Female = [Number_Ht_05_KSPF_Female My_Number];
Proportion_Ht_05_KSPF_Female = [Proportion_Ht_05_KSPF_Female My_Number/M*100];
% Aged 86
Y_data = Female_data_86(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KSPF_Korea(76);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Female = [Number_Ht_05_KSPF_Female My_Number];
Proportion_Ht_05_KSPF_Female = [Proportion_Ht_05_KSPF_Female My_Number/M*100];
% Aged 87
Y_data = Female_data_87(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KSPF_Korea(77);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Female = [Number_Ht_05_KSPF_Female My_Number];
Proportion_Ht_05_KSPF_Female = [Proportion_Ht_05_KSPF_Female My_Number/M*100];
% Aged 88
Y_data = Female_data_88(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KSPF_Korea(78);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Female = [Number_Ht_05_KSPF_Female My_Number];
Proportion_Ht_05_KSPF_Female = [Proportion_Ht_05_KSPF_Female My_Number/M*100];
% Aged 89
Y_data = Female_data_89(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KSPF_Korea(79);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Female = [Number_Ht_05_KSPF_Female My_Number];
Proportion_Ht_05_KSPF_Female = [Proportion_Ht_05_KSPF_Female My_Number/M*100];
% Aged 90
Y_data = Female_data_90(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_KSPF_Korea(80);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Female = [Number_Ht_05_KSPF_Female My_Number];
Proportion_Ht_05_KSPF_Female = [Proportion_Ht_05_KSPF_Female My_Number/M*100];

% For Male
% Aged 11
Y_data = Male_data_11(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KSPF_Korea(1);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Male = [Number_Ht_05_KSPF_Male My_Number];
Proportion_Ht_05_KSPF_Male = [Proportion_Ht_05_KSPF_Male My_Number/M*100];
% Aged 12
Y_data = Male_data_12(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KSPF_Korea(2);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Male = [Number_Ht_05_KSPF_Male My_Number];
Proportion_Ht_05_KSPF_Male = [Proportion_Ht_05_KSPF_Male My_Number/M*100];
% Aged 13
Y_data = Male_data_13(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KSPF_Korea(3);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Male = [Number_Ht_05_KSPF_Male My_Number];
Proportion_Ht_05_KSPF_Male = [Proportion_Ht_05_KSPF_Male My_Number/M*100];
% Aged 14
Y_data = Male_data_14(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KSPF_Korea(4);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Male = [Number_Ht_05_KSPF_Male My_Number];
Proportion_Ht_05_KSPF_Male = [Proportion_Ht_05_KSPF_Male My_Number/M*100];
% Aged 15
Y_data = Male_data_15(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KSPF_Korea(5);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Male = [Number_Ht_05_KSPF_Male My_Number];
Proportion_Ht_05_KSPF_Male = [Proportion_Ht_05_KSPF_Male My_Number/M*100];
% Aged 16
Y_data = Male_data_16(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KSPF_Korea(6);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Male = [Number_Ht_05_KSPF_Male My_Number];
Proportion_Ht_05_KSPF_Male = [Proportion_Ht_05_KSPF_Male My_Number/M*100];
% Aged 17
Y_data = Male_data_17(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KSPF_Korea(7);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Male = [Number_Ht_05_KSPF_Male My_Number];
Proportion_Ht_05_KSPF_Male = [Proportion_Ht_05_KSPF_Male My_Number/M*100];
% Aged 18
Y_data = Male_data_18(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KSPF_Korea(8);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Male = [Number_Ht_05_KSPF_Male My_Number];
Proportion_Ht_05_KSPF_Male = [Proportion_Ht_05_KSPF_Male My_Number/M*100];
% Aged 19
Y_data = Male_data_19(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KSPF_Korea(9);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Male = [Number_Ht_05_KSPF_Male My_Number];
Proportion_Ht_05_KSPF_Male = [Proportion_Ht_05_KSPF_Male My_Number/M*100];
% Aged 20
Y_data = Male_data_20(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KSPF_Korea(10);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Male = [Number_Ht_05_KSPF_Male My_Number];
Proportion_Ht_05_KSPF_Male = [Proportion_Ht_05_KSPF_Male My_Number/M*100];
% Aged 21
Y_data = Male_data_21(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KSPF_Korea(11);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Male = [Number_Ht_05_KSPF_Male My_Number];
Proportion_Ht_05_KSPF_Male = [Proportion_Ht_05_KSPF_Male My_Number/M*100];
% Aged 22
Y_data = Male_data_22(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KSPF_Korea(12);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Male = [Number_Ht_05_KSPF_Male My_Number];
Proportion_Ht_05_KSPF_Male = [Proportion_Ht_05_KSPF_Male My_Number/M*100];
% Aged 23
Y_data = Male_data_23(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KSPF_Korea(13);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Male = [Number_Ht_05_KSPF_Male My_Number];
Proportion_Ht_05_KSPF_Male = [Proportion_Ht_05_KSPF_Male My_Number/M*100];
% Aged 24
Y_data = Male_data_24(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KSPF_Korea(14);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Male = [Number_Ht_05_KSPF_Male My_Number];
Proportion_Ht_05_KSPF_Male = [Proportion_Ht_05_KSPF_Male My_Number/M*100];
% Aged 25
Y_data = Male_data_25(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KSPF_Korea(15);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Male = [Number_Ht_05_KSPF_Male My_Number];
Proportion_Ht_05_KSPF_Male = [Proportion_Ht_05_KSPF_Male My_Number/M*100];
% Aged 26
Y_data = Male_data_26(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KSPF_Korea(16);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Male = [Number_Ht_05_KSPF_Male My_Number];
Proportion_Ht_05_KSPF_Male = [Proportion_Ht_05_KSPF_Male My_Number/M*100];
% Aged 27
Y_data = Male_data_27(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KSPF_Korea(17);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Male = [Number_Ht_05_KSPF_Male My_Number];
Proportion_Ht_05_KSPF_Male = [Proportion_Ht_05_KSPF_Male My_Number/M*100];
% Aged 28
Y_data = Male_data_28(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KSPF_Korea(18);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Male = [Number_Ht_05_KSPF_Male My_Number];
Proportion_Ht_05_KSPF_Male = [Proportion_Ht_05_KSPF_Male My_Number/M*100];
% Aged 29
Y_data = Male_data_29(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KSPF_Korea(19);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Male = [Number_Ht_05_KSPF_Male My_Number];
Proportion_Ht_05_KSPF_Male = [Proportion_Ht_05_KSPF_Male My_Number/M*100];
% Aged 30
Y_data = Male_data_30(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KSPF_Korea(20);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Male = [Number_Ht_05_KSPF_Male My_Number];
Proportion_Ht_05_KSPF_Male = [Proportion_Ht_05_KSPF_Male My_Number/M*100];
% Aged 31
Y_data = Male_data_31(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KSPF_Korea(21);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Male = [Number_Ht_05_KSPF_Male My_Number];
Proportion_Ht_05_KSPF_Male = [Proportion_Ht_05_KSPF_Male My_Number/M*100];
% Aged 32
Y_data = Male_data_32(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KSPF_Korea(22);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Male = [Number_Ht_05_KSPF_Male My_Number];
Proportion_Ht_05_KSPF_Male = [Proportion_Ht_05_KSPF_Male My_Number/M*100];
% Aged 33
Y_data = Male_data_33(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KSPF_Korea(23);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Male = [Number_Ht_05_KSPF_Male My_Number];
Proportion_Ht_05_KSPF_Male = [Proportion_Ht_05_KSPF_Male My_Number/M*100];
% Aged 34
Y_data = Male_data_34(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KSPF_Korea(24);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Male = [Number_Ht_05_KSPF_Male My_Number];
Proportion_Ht_05_KSPF_Male = [Proportion_Ht_05_KSPF_Male My_Number/M*100];
% Aged 35
Y_data = Male_data_35(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KSPF_Korea(25);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Male = [Number_Ht_05_KSPF_Male My_Number];
Proportion_Ht_05_KSPF_Male = [Proportion_Ht_05_KSPF_Male My_Number/M*100];
% Aged 36
Y_data = Male_data_36(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KSPF_Korea(26);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Male = [Number_Ht_05_KSPF_Male My_Number];
Proportion_Ht_05_KSPF_Male = [Proportion_Ht_05_KSPF_Male My_Number/M*100];
% Aged 37
Y_data = Male_data_37(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KSPF_Korea(27);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Male = [Number_Ht_05_KSPF_Male My_Number];
Proportion_Ht_05_KSPF_Male = [Proportion_Ht_05_KSPF_Male My_Number/M*100];
% Aged 38
Y_data = Male_data_38(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KSPF_Korea(28);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Male = [Number_Ht_05_KSPF_Male My_Number];
Proportion_Ht_05_KSPF_Male = [Proportion_Ht_05_KSPF_Male My_Number/M*100];
% Aged 39
Y_data = Male_data_39(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KSPF_Korea(29);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Male = [Number_Ht_05_KSPF_Male My_Number];
Proportion_Ht_05_KSPF_Male = [Proportion_Ht_05_KSPF_Male My_Number/M*100];
% Aged 40
Y_data = Male_data_40(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KSPF_Korea(30);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Male = [Number_Ht_05_KSPF_Male My_Number];
Proportion_Ht_05_KSPF_Male = [Proportion_Ht_05_KSPF_Male My_Number/M*100];
% Aged 41
Y_data = Male_data_41(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KSPF_Korea(31);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Male = [Number_Ht_05_KSPF_Male My_Number];
Proportion_Ht_05_KSPF_Male = [Proportion_Ht_05_KSPF_Male My_Number/M*100];
% Aged 42
Y_data = Male_data_42(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KSPF_Korea(32);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Male = [Number_Ht_05_KSPF_Male My_Number];
Proportion_Ht_05_KSPF_Male = [Proportion_Ht_05_KSPF_Male My_Number/M*100];
% Aged 43
Y_data = Male_data_43(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KSPF_Korea(33);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Male = [Number_Ht_05_KSPF_Male My_Number];
Proportion_Ht_05_KSPF_Male = [Proportion_Ht_05_KSPF_Male My_Number/M*100];
% Aged 44
Y_data = Male_data_44(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KSPF_Korea(34);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Male = [Number_Ht_05_KSPF_Male My_Number];
Proportion_Ht_05_KSPF_Male = [Proportion_Ht_05_KSPF_Male My_Number/M*100];
% Aged 45
Y_data = Male_data_45(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KSPF_Korea(35);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Male = [Number_Ht_05_KSPF_Male My_Number];
Proportion_Ht_05_KSPF_Male = [Proportion_Ht_05_KSPF_Male My_Number/M*100];
% Aged 46
Y_data = Male_data_46(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KSPF_Korea(36);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Male = [Number_Ht_05_KSPF_Male My_Number];
Proportion_Ht_05_KSPF_Male = [Proportion_Ht_05_KSPF_Male My_Number/M*100];
% Aged 47
Y_data = Male_data_47(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KSPF_Korea(37);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Male = [Number_Ht_05_KSPF_Male My_Number];
Proportion_Ht_05_KSPF_Male = [Proportion_Ht_05_KSPF_Male My_Number/M*100];
% Aged 48
Y_data = Male_data_48(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KSPF_Korea(38);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Male = [Number_Ht_05_KSPF_Male My_Number];
Proportion_Ht_05_KSPF_Male = [Proportion_Ht_05_KSPF_Male My_Number/M*100];
% Aged 49
Y_data = Male_data_49(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KSPF_Korea(39);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Male = [Number_Ht_05_KSPF_Male My_Number];
Proportion_Ht_05_KSPF_Male = [Proportion_Ht_05_KSPF_Male My_Number/M*100];
% Aged 50
Y_data = Male_data_50(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KSPF_Korea(40);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Male = [Number_Ht_05_KSPF_Male My_Number];
Proportion_Ht_05_KSPF_Male = [Proportion_Ht_05_KSPF_Male My_Number/M*100];
% Aged 51
Y_data = Male_data_51(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KSPF_Korea(41);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Male = [Number_Ht_05_KSPF_Male My_Number];
Proportion_Ht_05_KSPF_Male = [Proportion_Ht_05_KSPF_Male My_Number/M*100];
% Aged 52
Y_data = Male_data_52(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KSPF_Korea(42);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Male = [Number_Ht_05_KSPF_Male My_Number];
Proportion_Ht_05_KSPF_Male = [Proportion_Ht_05_KSPF_Male My_Number/M*100];
% Aged 53
Y_data = Male_data_53(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KSPF_Korea(43);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Male = [Number_Ht_05_KSPF_Male My_Number];
Proportion_Ht_05_KSPF_Male = [Proportion_Ht_05_KSPF_Male My_Number/M*100];
% Aged 54
Y_data = Male_data_54(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KSPF_Korea(44);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Male = [Number_Ht_05_KSPF_Male My_Number];
Proportion_Ht_05_KSPF_Male = [Proportion_Ht_05_KSPF_Male My_Number/M*100];
% Aged 55
Y_data = Male_data_55(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KSPF_Korea(45);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Male = [Number_Ht_05_KSPF_Male My_Number];
Proportion_Ht_05_KSPF_Male = [Proportion_Ht_05_KSPF_Male My_Number/M*100];
% Aged 56
Y_data = Male_data_56(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KSPF_Korea(46);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Male = [Number_Ht_05_KSPF_Male My_Number];
Proportion_Ht_05_KSPF_Male = [Proportion_Ht_05_KSPF_Male My_Number/M*100];
% Aged 57
Y_data = Male_data_57(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KSPF_Korea(47);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Male = [Number_Ht_05_KSPF_Male My_Number];
Proportion_Ht_05_KSPF_Male = [Proportion_Ht_05_KSPF_Male My_Number/M*100];
% Aged 58
Y_data = Male_data_58(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KSPF_Korea(48);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Male = [Number_Ht_05_KSPF_Male My_Number];
Proportion_Ht_05_KSPF_Male = [Proportion_Ht_05_KSPF_Male My_Number/M*100];
% Aged 59
Y_data = Male_data_59(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KSPF_Korea(49);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Male = [Number_Ht_05_KSPF_Male My_Number];
Proportion_Ht_05_KSPF_Male = [Proportion_Ht_05_KSPF_Male My_Number/M*100];
% Aged 60
Y_data = Male_data_60(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KSPF_Korea(50);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Male = [Number_Ht_05_KSPF_Male My_Number];
Proportion_Ht_05_KSPF_Male = [Proportion_Ht_05_KSPF_Male My_Number/M*100];
% Aged 61
Y_data = Male_data_61(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KSPF_Korea(51);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Male = [Number_Ht_05_KSPF_Male My_Number];
Proportion_Ht_05_KSPF_Male = [Proportion_Ht_05_KSPF_Male My_Number/M*100];
% Aged 62
Y_data = Male_data_62(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KSPF_Korea(52);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Male = [Number_Ht_05_KSPF_Male My_Number];
Proportion_Ht_05_KSPF_Male = [Proportion_Ht_05_KSPF_Male My_Number/M*100];
% Aged 63
Y_data = Male_data_63(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KSPF_Korea(53);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Male = [Number_Ht_05_KSPF_Male My_Number];
Proportion_Ht_05_KSPF_Male = [Proportion_Ht_05_KSPF_Male My_Number/M*100];
% Aged 64
Y_data = Male_data_64(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KSPF_Korea(54);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Male = [Number_Ht_05_KSPF_Male My_Number];
Proportion_Ht_05_KSPF_Male = [Proportion_Ht_05_KSPF_Male My_Number/M*100];
% Aged 65
Y_data = Male_data_65(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KSPF_Korea(55);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Male = [Number_Ht_05_KSPF_Male My_Number];
Proportion_Ht_05_KSPF_Male = [Proportion_Ht_05_KSPF_Male My_Number/M*100];
% Aged 66
Y_data = Male_data_66(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KSPF_Korea(56);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Male = [Number_Ht_05_KSPF_Male My_Number];
Proportion_Ht_05_KSPF_Male = [Proportion_Ht_05_KSPF_Male My_Number/M*100];
% Aged 67
Y_data = Male_data_67(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KSPF_Korea(57);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Male = [Number_Ht_05_KSPF_Male My_Number];
Proportion_Ht_05_KSPF_Male = [Proportion_Ht_05_KSPF_Male My_Number/M*100];
% Aged 68
Y_data = Male_data_68(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KSPF_Korea(58);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Male = [Number_Ht_05_KSPF_Male My_Number];
Proportion_Ht_05_KSPF_Male = [Proportion_Ht_05_KSPF_Male My_Number/M*100];
% Aged 69
Y_data = Male_data_69(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KSPF_Korea(59);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Male = [Number_Ht_05_KSPF_Male My_Number];
Proportion_Ht_05_KSPF_Male = [Proportion_Ht_05_KSPF_Male My_Number/M*100];
% Aged 70
Y_data = Male_data_70(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KSPF_Korea(60);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Male = [Number_Ht_05_KSPF_Male My_Number];
Proportion_Ht_05_KSPF_Male = [Proportion_Ht_05_KSPF_Male My_Number/M*100];
% Aged 71
Y_data = Male_data_71(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KSPF_Korea(61);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Male = [Number_Ht_05_KSPF_Male My_Number];
Proportion_Ht_05_KSPF_Male = [Proportion_Ht_05_KSPF_Male My_Number/M*100];
% Aged 72
Y_data = Male_data_72(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KSPF_Korea(62);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Male = [Number_Ht_05_KSPF_Male My_Number];
Proportion_Ht_05_KSPF_Male = [Proportion_Ht_05_KSPF_Male My_Number/M*100];
% Aged 73
Y_data = Male_data_73(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KSPF_Korea(63);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Male = [Number_Ht_05_KSPF_Male My_Number];
Proportion_Ht_05_KSPF_Male = [Proportion_Ht_05_KSPF_Male My_Number/M*100];
% Aged 74
Y_data = Male_data_74(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KSPF_Korea(64);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Male = [Number_Ht_05_KSPF_Male My_Number];
Proportion_Ht_05_KSPF_Male = [Proportion_Ht_05_KSPF_Male My_Number/M*100];
% Aged 75
Y_data = Male_data_75(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KSPF_Korea(65);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Male = [Number_Ht_05_KSPF_Male My_Number];
Proportion_Ht_05_KSPF_Male = [Proportion_Ht_05_KSPF_Male My_Number/M*100];
% Aged 76
Y_data = Male_data_76(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KSPF_Korea(66);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Male = [Number_Ht_05_KSPF_Male My_Number];
Proportion_Ht_05_KSPF_Male = [Proportion_Ht_05_KSPF_Male My_Number/M*100];
% Aged 77
Y_data = Male_data_77(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KSPF_Korea(67);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Male = [Number_Ht_05_KSPF_Male My_Number];
Proportion_Ht_05_KSPF_Male = [Proportion_Ht_05_KSPF_Male My_Number/M*100];
% Aged 78
Y_data = Male_data_78(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KSPF_Korea(68);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Male = [Number_Ht_05_KSPF_Male My_Number];
Proportion_Ht_05_KSPF_Male = [Proportion_Ht_05_KSPF_Male My_Number/M*100];
% Aged 79
Y_data = Male_data_79(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KSPF_Korea(69);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Male = [Number_Ht_05_KSPF_Male My_Number];
Proportion_Ht_05_KSPF_Male = [Proportion_Ht_05_KSPF_Male My_Number/M*100];
% Aged 80
Y_data = Male_data_80(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KSPF_Korea(70);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Male = [Number_Ht_05_KSPF_Male My_Number];
Proportion_Ht_05_KSPF_Male = [Proportion_Ht_05_KSPF_Male My_Number/M*100];
% Aged 81
Y_data = Male_data_81(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KSPF_Korea(71);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Male = [Number_Ht_05_KSPF_Male My_Number];
Proportion_Ht_05_KSPF_Male = [Proportion_Ht_05_KSPF_Male My_Number/M*100];
% Aged 82
Y_data = Male_data_82(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KSPF_Korea(72);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Male = [Number_Ht_05_KSPF_Male My_Number];
Proportion_Ht_05_KSPF_Male = [Proportion_Ht_05_KSPF_Male My_Number/M*100];
% Aged 83
Y_data = Male_data_83(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KSPF_Korea(73);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Male = [Number_Ht_05_KSPF_Male My_Number];
Proportion_Ht_05_KSPF_Male = [Proportion_Ht_05_KSPF_Male My_Number/M*100];
% Aged 84
Y_data = Male_data_84(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KSPF_Korea(74);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Male = [Number_Ht_05_KSPF_Male My_Number];
Proportion_Ht_05_KSPF_Male = [Proportion_Ht_05_KSPF_Male My_Number/M*100];
% Aged 85
Y_data = Male_data_85(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KSPF_Korea(75);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Male = [Number_Ht_05_KSPF_Male My_Number];
Proportion_Ht_05_KSPF_Male = [Proportion_Ht_05_KSPF_Male My_Number/M*100];
% Aged 86
Y_data = Male_data_86(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KSPF_Korea(76);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Male = [Number_Ht_05_KSPF_Male My_Number];
Proportion_Ht_05_KSPF_Male = [Proportion_Ht_05_KSPF_Male My_Number/M*100];
% Aged 87
Y_data = Male_data_87(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KSPF_Korea(77);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Male = [Number_Ht_05_KSPF_Male My_Number];
Proportion_Ht_05_KSPF_Male = [Proportion_Ht_05_KSPF_Male My_Number/M*100];
% Aged 88
Y_data = Male_data_88(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KSPF_Korea(78);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Male = [Number_Ht_05_KSPF_Male My_Number];
Proportion_Ht_05_KSPF_Male = [Proportion_Ht_05_KSPF_Male My_Number/M*100];
% Aged 89
Y_data = Male_data_89(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KSPF_Korea(79);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Male = [Number_Ht_05_KSPF_Male My_Number];
Proportion_Ht_05_KSPF_Male = [Proportion_Ht_05_KSPF_Male My_Number/M*100];
% Aged 90
Y_data = Male_data_90(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_KSPF_Korea(80);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_05_KSPF_Male = [Number_Ht_05_KSPF_Male My_Number];
Proportion_Ht_05_KSPF_Male = [Proportion_Ht_05_KSPF_Male My_Number/M*100];

%% 06-ELSH-Brasil
Female_data = xlsread('./Raw data/06-ELSH-Brasil/ELSA-Brasil.xls','Female','B:D'); % Age	Height(cm)	Weight(Kg)
Male_data = xlsread('./Raw data/06-ELSH-Brasil/ELSA-Brasil.xls','Male','B:D'); % Age	Height(cm)	Weight(Kg)
% Stratified by age and gender
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

% For Female
[M N] = size(Female_data); % Height (cm); Weight (Kg)
for i=1:M
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
end

% For Male
[M N] = size(Male_data); % Height (cm); Weight (Kg)
for i=1:M
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
end

% For 06-ELSH-Brasil
load('All coefficients\06-ELSH-Brasil\Coefficients_a_and_b_c1_ELSA_Brasil.mat')
% upper limit for height
Age_06_ELSH_Brasil = 35:74;
Number_Ht_06_ELSH_Brasil_Female = []; % The number of individuals whose height exceeds the theoretical limit
Number_Ht_06_ELSH_Brasil_Male = [];
Proportion_Ht_06_ELSH_Brasil_Female = []; % The proportion of individuals whose height exceeds the theoretical limit
Proportion_Ht_06_ELSH_Brasil_Male = [];

% For Female
% Aged 35
Y_data = Female_data_35(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ELSA_Brasil(1);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_06_ELSH_Brasil_Female = [Number_Ht_06_ELSH_Brasil_Female My_Number];
Proportion_Ht_06_ELSH_Brasil_Female = [Proportion_Ht_06_ELSH_Brasil_Female My_Number/M*100];
% Aged 36
Y_data = Female_data_36(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ELSA_Brasil(2);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_06_ELSH_Brasil_Female = [Number_Ht_06_ELSH_Brasil_Female My_Number];
Proportion_Ht_06_ELSH_Brasil_Female = [Proportion_Ht_06_ELSH_Brasil_Female My_Number/M*100];
% Aged 37
Y_data = Female_data_37(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ELSA_Brasil(3);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_06_ELSH_Brasil_Female = [Number_Ht_06_ELSH_Brasil_Female My_Number];
Proportion_Ht_06_ELSH_Brasil_Female = [Proportion_Ht_06_ELSH_Brasil_Female My_Number/M*100];
% Aged 38
Y_data = Female_data_38(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ELSA_Brasil(4);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_06_ELSH_Brasil_Female = [Number_Ht_06_ELSH_Brasil_Female My_Number];
Proportion_Ht_06_ELSH_Brasil_Female = [Proportion_Ht_06_ELSH_Brasil_Female My_Number/M*100];
% Aged 39
Y_data = Female_data_39(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ELSA_Brasil(5);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_06_ELSH_Brasil_Female = [Number_Ht_06_ELSH_Brasil_Female My_Number];
Proportion_Ht_06_ELSH_Brasil_Female = [Proportion_Ht_06_ELSH_Brasil_Female My_Number/M*100];
% Aged 40
Y_data = Female_data_40(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ELSA_Brasil(6);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_06_ELSH_Brasil_Female = [Number_Ht_06_ELSH_Brasil_Female My_Number];
Proportion_Ht_06_ELSH_Brasil_Female = [Proportion_Ht_06_ELSH_Brasil_Female My_Number/M*100];
% Aged 41
Y_data = Female_data_41(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ELSA_Brasil(7);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_06_ELSH_Brasil_Female = [Number_Ht_06_ELSH_Brasil_Female My_Number];
Proportion_Ht_06_ELSH_Brasil_Female = [Proportion_Ht_06_ELSH_Brasil_Female My_Number/M*100];
% Aged 42
Y_data = Female_data_42(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ELSA_Brasil(8);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_06_ELSH_Brasil_Female = [Number_Ht_06_ELSH_Brasil_Female My_Number];
Proportion_Ht_06_ELSH_Brasil_Female = [Proportion_Ht_06_ELSH_Brasil_Female My_Number/M*100];
% Aged 43
Y_data = Female_data_43(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ELSA_Brasil(9);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_06_ELSH_Brasil_Female = [Number_Ht_06_ELSH_Brasil_Female My_Number];
Proportion_Ht_06_ELSH_Brasil_Female = [Proportion_Ht_06_ELSH_Brasil_Female My_Number/M*100];
% Aged 44
Y_data = Female_data_44(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ELSA_Brasil(10);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_06_ELSH_Brasil_Female = [Number_Ht_06_ELSH_Brasil_Female My_Number];
Proportion_Ht_06_ELSH_Brasil_Female = [Proportion_Ht_06_ELSH_Brasil_Female My_Number/M*100];
% Aged 45
Y_data = Female_data_45(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ELSA_Brasil(11);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_06_ELSH_Brasil_Female = [Number_Ht_06_ELSH_Brasil_Female My_Number];
Proportion_Ht_06_ELSH_Brasil_Female = [Proportion_Ht_06_ELSH_Brasil_Female My_Number/M*100];
% Aged 46
Y_data = Female_data_46(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ELSA_Brasil(12);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_06_ELSH_Brasil_Female = [Number_Ht_06_ELSH_Brasil_Female My_Number];
Proportion_Ht_06_ELSH_Brasil_Female = [Proportion_Ht_06_ELSH_Brasil_Female My_Number/M*100];
% Aged 47
Y_data = Female_data_47(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ELSA_Brasil(13);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_06_ELSH_Brasil_Female = [Number_Ht_06_ELSH_Brasil_Female My_Number];
Proportion_Ht_06_ELSH_Brasil_Female = [Proportion_Ht_06_ELSH_Brasil_Female My_Number/M*100];
% Aged 48
Y_data = Female_data_48(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ELSA_Brasil(14);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_06_ELSH_Brasil_Female = [Number_Ht_06_ELSH_Brasil_Female My_Number];
Proportion_Ht_06_ELSH_Brasil_Female = [Proportion_Ht_06_ELSH_Brasil_Female My_Number/M*100];
% Aged 49
Y_data = Female_data_49(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ELSA_Brasil(15);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_06_ELSH_Brasil_Female = [Number_Ht_06_ELSH_Brasil_Female My_Number];
Proportion_Ht_06_ELSH_Brasil_Female = [Proportion_Ht_06_ELSH_Brasil_Female My_Number/M*100];
% Aged 50
Y_data = Female_data_50(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ELSA_Brasil(16);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_06_ELSH_Brasil_Female = [Number_Ht_06_ELSH_Brasil_Female My_Number];
Proportion_Ht_06_ELSH_Brasil_Female = [Proportion_Ht_06_ELSH_Brasil_Female My_Number/M*100];
% Aged 51
Y_data = Female_data_51(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ELSA_Brasil(17);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_06_ELSH_Brasil_Female = [Number_Ht_06_ELSH_Brasil_Female My_Number];
Proportion_Ht_06_ELSH_Brasil_Female = [Proportion_Ht_06_ELSH_Brasil_Female My_Number/M*100];
% Aged 52
Y_data = Female_data_52(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ELSA_Brasil(18);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_06_ELSH_Brasil_Female = [Number_Ht_06_ELSH_Brasil_Female My_Number];
Proportion_Ht_06_ELSH_Brasil_Female = [Proportion_Ht_06_ELSH_Brasil_Female My_Number/M*100];
% Aged 53
Y_data = Female_data_53(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ELSA_Brasil(19);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_06_ELSH_Brasil_Female = [Number_Ht_06_ELSH_Brasil_Female My_Number];
Proportion_Ht_06_ELSH_Brasil_Female = [Proportion_Ht_06_ELSH_Brasil_Female My_Number/M*100];
% Aged 54
Y_data = Female_data_54(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ELSA_Brasil(20);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_06_ELSH_Brasil_Female = [Number_Ht_06_ELSH_Brasil_Female My_Number];
Proportion_Ht_06_ELSH_Brasil_Female = [Proportion_Ht_06_ELSH_Brasil_Female My_Number/M*100];
% Aged 55
Y_data = Female_data_55(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ELSA_Brasil(21);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_06_ELSH_Brasil_Female = [Number_Ht_06_ELSH_Brasil_Female My_Number];
Proportion_Ht_06_ELSH_Brasil_Female = [Proportion_Ht_06_ELSH_Brasil_Female My_Number/M*100];
% Aged 56
Y_data = Female_data_56(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ELSA_Brasil(22);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_06_ELSH_Brasil_Female = [Number_Ht_06_ELSH_Brasil_Female My_Number];
Proportion_Ht_06_ELSH_Brasil_Female = [Proportion_Ht_06_ELSH_Brasil_Female My_Number/M*100];
% Aged 57
Y_data = Female_data_57(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ELSA_Brasil(23);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_06_ELSH_Brasil_Female = [Number_Ht_06_ELSH_Brasil_Female My_Number];
Proportion_Ht_06_ELSH_Brasil_Female = [Proportion_Ht_06_ELSH_Brasil_Female My_Number/M*100];
% Aged 58
Y_data = Female_data_58(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ELSA_Brasil(24);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_06_ELSH_Brasil_Female = [Number_Ht_06_ELSH_Brasil_Female My_Number];
Proportion_Ht_06_ELSH_Brasil_Female = [Proportion_Ht_06_ELSH_Brasil_Female My_Number/M*100];
% Aged 59
Y_data = Female_data_59(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ELSA_Brasil(25);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_06_ELSH_Brasil_Female = [Number_Ht_06_ELSH_Brasil_Female My_Number];
Proportion_Ht_06_ELSH_Brasil_Female = [Proportion_Ht_06_ELSH_Brasil_Female My_Number/M*100];
% Aged 60
Y_data = Female_data_60(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ELSA_Brasil(26);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_06_ELSH_Brasil_Female = [Number_Ht_06_ELSH_Brasil_Female My_Number];
Proportion_Ht_06_ELSH_Brasil_Female = [Proportion_Ht_06_ELSH_Brasil_Female My_Number/M*100];
% Aged 61
Y_data = Female_data_61(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ELSA_Brasil(27);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_06_ELSH_Brasil_Female = [Number_Ht_06_ELSH_Brasil_Female My_Number];
Proportion_Ht_06_ELSH_Brasil_Female = [Proportion_Ht_06_ELSH_Brasil_Female My_Number/M*100];
% Aged 62
Y_data = Female_data_62(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ELSA_Brasil(28);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_06_ELSH_Brasil_Female = [Number_Ht_06_ELSH_Brasil_Female My_Number];
Proportion_Ht_06_ELSH_Brasil_Female = [Proportion_Ht_06_ELSH_Brasil_Female My_Number/M*100];
% Aged 63
Y_data = Female_data_63(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ELSA_Brasil(29);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_06_ELSH_Brasil_Female = [Number_Ht_06_ELSH_Brasil_Female My_Number];
Proportion_Ht_06_ELSH_Brasil_Female = [Proportion_Ht_06_ELSH_Brasil_Female My_Number/M*100];
% Aged 64
Y_data = Female_data_64(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ELSA_Brasil(30);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_06_ELSH_Brasil_Female = [Number_Ht_06_ELSH_Brasil_Female My_Number];
Proportion_Ht_06_ELSH_Brasil_Female = [Proportion_Ht_06_ELSH_Brasil_Female My_Number/M*100];
% Aged 65
Y_data = Female_data_65(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ELSA_Brasil(31);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_06_ELSH_Brasil_Female = [Number_Ht_06_ELSH_Brasil_Female My_Number];
Proportion_Ht_06_ELSH_Brasil_Female = [Proportion_Ht_06_ELSH_Brasil_Female My_Number/M*100];
% Aged 66
Y_data = Female_data_66(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ELSA_Brasil(32);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_06_ELSH_Brasil_Female = [Number_Ht_06_ELSH_Brasil_Female My_Number];
Proportion_Ht_06_ELSH_Brasil_Female = [Proportion_Ht_06_ELSH_Brasil_Female My_Number/M*100];
% Aged 67
Y_data = Female_data_67(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ELSA_Brasil(33);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_06_ELSH_Brasil_Female = [Number_Ht_06_ELSH_Brasil_Female My_Number];
Proportion_Ht_06_ELSH_Brasil_Female = [Proportion_Ht_06_ELSH_Brasil_Female My_Number/M*100];
% Aged 68
Y_data = Female_data_68(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ELSA_Brasil(34);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_06_ELSH_Brasil_Female = [Number_Ht_06_ELSH_Brasil_Female My_Number];
Proportion_Ht_06_ELSH_Brasil_Female = [Proportion_Ht_06_ELSH_Brasil_Female My_Number/M*100];
% Aged 69
Y_data = Female_data_69(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ELSA_Brasil(35);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_06_ELSH_Brasil_Female = [Number_Ht_06_ELSH_Brasil_Female My_Number];
Proportion_Ht_06_ELSH_Brasil_Female = [Proportion_Ht_06_ELSH_Brasil_Female My_Number/M*100];
% Aged 70
Y_data = Female_data_70(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ELSA_Brasil(36);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_06_ELSH_Brasil_Female = [Number_Ht_06_ELSH_Brasil_Female My_Number];
Proportion_Ht_06_ELSH_Brasil_Female = [Proportion_Ht_06_ELSH_Brasil_Female My_Number/M*100];
% Aged 71
Y_data = Female_data_71(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ELSA_Brasil(37);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_06_ELSH_Brasil_Female = [Number_Ht_06_ELSH_Brasil_Female My_Number];
Proportion_Ht_06_ELSH_Brasil_Female = [Proportion_Ht_06_ELSH_Brasil_Female My_Number/M*100];
% Aged 72
Y_data = Female_data_72(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ELSA_Brasil(38);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_06_ELSH_Brasil_Female = [Number_Ht_06_ELSH_Brasil_Female My_Number];
Proportion_Ht_06_ELSH_Brasil_Female = [Proportion_Ht_06_ELSH_Brasil_Female My_Number/M*100];
% Aged 73
Y_data = Female_data_73(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ELSA_Brasil(39);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_06_ELSH_Brasil_Female = [Number_Ht_06_ELSH_Brasil_Female My_Number];
Proportion_Ht_06_ELSH_Brasil_Female = [Proportion_Ht_06_ELSH_Brasil_Female My_Number/M*100];
% Aged 74
Y_data = Female_data_74(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_ELSA_Brasil(40);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_06_ELSH_Brasil_Female = [Number_Ht_06_ELSH_Brasil_Female My_Number];
Proportion_Ht_06_ELSH_Brasil_Female = [Proportion_Ht_06_ELSH_Brasil_Female My_Number/M*100];

Proportion_Ht_06_ELSH_Brasil_Female(32) = (Proportion_Ht_06_ELSH_Brasil_Female(31) + Proportion_Ht_06_ELSH_Brasil_Female(33)/2);

% For Male
% Aged 35
Y_data = Male_data_35(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ELSA_Brasil(1);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_06_ELSH_Brasil_Male = [Number_Ht_06_ELSH_Brasil_Male My_Number];
Proportion_Ht_06_ELSH_Brasil_Male = [Proportion_Ht_06_ELSH_Brasil_Male My_Number/M*100];
% Aged 36
Y_data = Male_data_36(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ELSA_Brasil(2);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_06_ELSH_Brasil_Male = [Number_Ht_06_ELSH_Brasil_Male My_Number];
Proportion_Ht_06_ELSH_Brasil_Male = [Proportion_Ht_06_ELSH_Brasil_Male My_Number/M*100];
% Aged 37
Y_data = Male_data_37(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ELSA_Brasil(3);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_06_ELSH_Brasil_Male = [Number_Ht_06_ELSH_Brasil_Male My_Number];
Proportion_Ht_06_ELSH_Brasil_Male = [Proportion_Ht_06_ELSH_Brasil_Male My_Number/M*100];
% Aged 38
Y_data = Male_data_38(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ELSA_Brasil(4);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_06_ELSH_Brasil_Male = [Number_Ht_06_ELSH_Brasil_Male My_Number];
Proportion_Ht_06_ELSH_Brasil_Male = [Proportion_Ht_06_ELSH_Brasil_Male My_Number/M*100];
% Aged 39
Y_data = Male_data_39(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ELSA_Brasil(5);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_06_ELSH_Brasil_Male = [Number_Ht_06_ELSH_Brasil_Male My_Number];
Proportion_Ht_06_ELSH_Brasil_Male = [Proportion_Ht_06_ELSH_Brasil_Male My_Number/M*100];
% Aged 40
Y_data = Male_data_40(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ELSA_Brasil(6);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_06_ELSH_Brasil_Male = [Number_Ht_06_ELSH_Brasil_Male My_Number];
Proportion_Ht_06_ELSH_Brasil_Male = [Proportion_Ht_06_ELSH_Brasil_Male My_Number/M*100];
% Aged 41
Y_data = Male_data_41(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ELSA_Brasil(7);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_06_ELSH_Brasil_Male = [Number_Ht_06_ELSH_Brasil_Male My_Number];
Proportion_Ht_06_ELSH_Brasil_Male = [Proportion_Ht_06_ELSH_Brasil_Male My_Number/M*100];
% Aged 42
Y_data = Male_data_42(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ELSA_Brasil(8);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_06_ELSH_Brasil_Male = [Number_Ht_06_ELSH_Brasil_Male My_Number];
Proportion_Ht_06_ELSH_Brasil_Male = [Proportion_Ht_06_ELSH_Brasil_Male My_Number/M*100];
% Aged 43
Y_data = Male_data_43(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ELSA_Brasil(9);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_06_ELSH_Brasil_Male = [Number_Ht_06_ELSH_Brasil_Male My_Number];
Proportion_Ht_06_ELSH_Brasil_Male = [Proportion_Ht_06_ELSH_Brasil_Male My_Number/M*100];
% Aged 44
Y_data = Male_data_44(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ELSA_Brasil(10);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_06_ELSH_Brasil_Male = [Number_Ht_06_ELSH_Brasil_Male My_Number];
Proportion_Ht_06_ELSH_Brasil_Male = [Proportion_Ht_06_ELSH_Brasil_Male My_Number/M*100];
% Aged 45
Y_data = Male_data_45(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ELSA_Brasil(11);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_06_ELSH_Brasil_Male = [Number_Ht_06_ELSH_Brasil_Male My_Number];
Proportion_Ht_06_ELSH_Brasil_Male = [Proportion_Ht_06_ELSH_Brasil_Male My_Number/M*100];
% Aged 46
Y_data = Male_data_46(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ELSA_Brasil(12);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_06_ELSH_Brasil_Male = [Number_Ht_06_ELSH_Brasil_Male My_Number];
Proportion_Ht_06_ELSH_Brasil_Male = [Proportion_Ht_06_ELSH_Brasil_Male My_Number/M*100];
% Aged 47
Y_data = Male_data_47(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ELSA_Brasil(13);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_06_ELSH_Brasil_Male = [Number_Ht_06_ELSH_Brasil_Male My_Number];
Proportion_Ht_06_ELSH_Brasil_Male = [Proportion_Ht_06_ELSH_Brasil_Male My_Number/M*100];
% Aged 48
Y_data = Male_data_48(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ELSA_Brasil(14);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_06_ELSH_Brasil_Male = [Number_Ht_06_ELSH_Brasil_Male My_Number];
Proportion_Ht_06_ELSH_Brasil_Male = [Proportion_Ht_06_ELSH_Brasil_Male My_Number/M*100];
% Aged 49
Y_data = Male_data_49(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ELSA_Brasil(15);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_06_ELSH_Brasil_Male = [Number_Ht_06_ELSH_Brasil_Male My_Number];
Proportion_Ht_06_ELSH_Brasil_Male = [Proportion_Ht_06_ELSH_Brasil_Male My_Number/M*100];
% Aged 50
Y_data = Male_data_50(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ELSA_Brasil(16);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_06_ELSH_Brasil_Male = [Number_Ht_06_ELSH_Brasil_Male My_Number];
Proportion_Ht_06_ELSH_Brasil_Male = [Proportion_Ht_06_ELSH_Brasil_Male My_Number/M*100];
% Aged 51
Y_data = Male_data_51(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ELSA_Brasil(17);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_06_ELSH_Brasil_Male = [Number_Ht_06_ELSH_Brasil_Male My_Number];
Proportion_Ht_06_ELSH_Brasil_Male = [Proportion_Ht_06_ELSH_Brasil_Male My_Number/M*100];
% Aged 52
Y_data = Male_data_52(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ELSA_Brasil(18);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_06_ELSH_Brasil_Male = [Number_Ht_06_ELSH_Brasil_Male My_Number];
Proportion_Ht_06_ELSH_Brasil_Male = [Proportion_Ht_06_ELSH_Brasil_Male My_Number/M*100];
% Aged 53
Y_data = Male_data_53(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ELSA_Brasil(19);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_06_ELSH_Brasil_Male = [Number_Ht_06_ELSH_Brasil_Male My_Number];
Proportion_Ht_06_ELSH_Brasil_Male = [Proportion_Ht_06_ELSH_Brasil_Male My_Number/M*100];
% Aged 54
Y_data = Male_data_54(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ELSA_Brasil(20);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_06_ELSH_Brasil_Male = [Number_Ht_06_ELSH_Brasil_Male My_Number];
Proportion_Ht_06_ELSH_Brasil_Male = [Proportion_Ht_06_ELSH_Brasil_Male My_Number/M*100];
% Aged 55
Y_data = Male_data_55(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ELSA_Brasil(21);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_06_ELSH_Brasil_Male = [Number_Ht_06_ELSH_Brasil_Male My_Number];
Proportion_Ht_06_ELSH_Brasil_Male = [Proportion_Ht_06_ELSH_Brasil_Male My_Number/M*100];
% Aged 56
Y_data = Male_data_56(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ELSA_Brasil(22);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_06_ELSH_Brasil_Male = [Number_Ht_06_ELSH_Brasil_Male My_Number];
Proportion_Ht_06_ELSH_Brasil_Male = [Proportion_Ht_06_ELSH_Brasil_Male My_Number/M*100];
% Aged 57
Y_data = Male_data_57(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ELSA_Brasil(23);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_06_ELSH_Brasil_Male = [Number_Ht_06_ELSH_Brasil_Male My_Number];
Proportion_Ht_06_ELSH_Brasil_Male = [Proportion_Ht_06_ELSH_Brasil_Male My_Number/M*100];
% Aged 58
Y_data = Male_data_58(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ELSA_Brasil(24);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_06_ELSH_Brasil_Male = [Number_Ht_06_ELSH_Brasil_Male My_Number];
Proportion_Ht_06_ELSH_Brasil_Male = [Proportion_Ht_06_ELSH_Brasil_Male My_Number/M*100];
% Aged 59
Y_data = Male_data_59(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ELSA_Brasil(25);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_06_ELSH_Brasil_Male = [Number_Ht_06_ELSH_Brasil_Male My_Number];
Proportion_Ht_06_ELSH_Brasil_Male = [Proportion_Ht_06_ELSH_Brasil_Male My_Number/M*100];
% Aged 60
Y_data = Male_data_60(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ELSA_Brasil(26);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_06_ELSH_Brasil_Male = [Number_Ht_06_ELSH_Brasil_Male My_Number];
Proportion_Ht_06_ELSH_Brasil_Male = [Proportion_Ht_06_ELSH_Brasil_Male My_Number/M*100];
% Aged 61
Y_data = Male_data_61(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ELSA_Brasil(27);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_06_ELSH_Brasil_Male = [Number_Ht_06_ELSH_Brasil_Male My_Number];
Proportion_Ht_06_ELSH_Brasil_Male = [Proportion_Ht_06_ELSH_Brasil_Male My_Number/M*100];
% Aged 62
Y_data = Male_data_62(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ELSA_Brasil(28);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_06_ELSH_Brasil_Male = [Number_Ht_06_ELSH_Brasil_Male My_Number];
Proportion_Ht_06_ELSH_Brasil_Male = [Proportion_Ht_06_ELSH_Brasil_Male My_Number/M*100];
% Aged 63
Y_data = Male_data_63(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ELSA_Brasil(29);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_06_ELSH_Brasil_Male = [Number_Ht_06_ELSH_Brasil_Male My_Number];
Proportion_Ht_06_ELSH_Brasil_Male = [Proportion_Ht_06_ELSH_Brasil_Male My_Number/M*100];
% Aged 64
Y_data = Male_data_64(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ELSA_Brasil(30);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_06_ELSH_Brasil_Male = [Number_Ht_06_ELSH_Brasil_Male My_Number];
Proportion_Ht_06_ELSH_Brasil_Male = [Proportion_Ht_06_ELSH_Brasil_Male My_Number/M*100];
% Aged 65
Y_data = Male_data_65(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ELSA_Brasil(31);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_06_ELSH_Brasil_Male = [Number_Ht_06_ELSH_Brasil_Male My_Number];
Proportion_Ht_06_ELSH_Brasil_Male = [Proportion_Ht_06_ELSH_Brasil_Male My_Number/M*100];
% Aged 66
Y_data = Male_data_66(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ELSA_Brasil(32);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_06_ELSH_Brasil_Male = [Number_Ht_06_ELSH_Brasil_Male My_Number];
Proportion_Ht_06_ELSH_Brasil_Male = [Proportion_Ht_06_ELSH_Brasil_Male My_Number/M*100];
% Aged 67
Y_data = Male_data_67(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ELSA_Brasil(33);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_06_ELSH_Brasil_Male = [Number_Ht_06_ELSH_Brasil_Male My_Number];
Proportion_Ht_06_ELSH_Brasil_Male = [Proportion_Ht_06_ELSH_Brasil_Male My_Number/M*100];
% Aged 68
Y_data = Male_data_68(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ELSA_Brasil(34);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_06_ELSH_Brasil_Male = [Number_Ht_06_ELSH_Brasil_Male My_Number];
Proportion_Ht_06_ELSH_Brasil_Male = [Proportion_Ht_06_ELSH_Brasil_Male My_Number/M*100];
% Aged 69
Y_data = Male_data_69(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ELSA_Brasil(35);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_06_ELSH_Brasil_Male = [Number_Ht_06_ELSH_Brasil_Male My_Number];
Proportion_Ht_06_ELSH_Brasil_Male = [Proportion_Ht_06_ELSH_Brasil_Male My_Number/M*100];
% Aged 70
Y_data = Male_data_70(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ELSA_Brasil(36);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_06_ELSH_Brasil_Male = [Number_Ht_06_ELSH_Brasil_Male My_Number];
Proportion_Ht_06_ELSH_Brasil_Male = [Proportion_Ht_06_ELSH_Brasil_Male My_Number/M*100];
% Aged 71
Y_data = Male_data_71(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ELSA_Brasil(37);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_06_ELSH_Brasil_Male = [Number_Ht_06_ELSH_Brasil_Male My_Number];
Proportion_Ht_06_ELSH_Brasil_Male = [Proportion_Ht_06_ELSH_Brasil_Male My_Number/M*100];
% Aged 72
Y_data = Male_data_72(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ELSA_Brasil(38);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_06_ELSH_Brasil_Male = [Number_Ht_06_ELSH_Brasil_Male My_Number];
Proportion_Ht_06_ELSH_Brasil_Male = [Proportion_Ht_06_ELSH_Brasil_Male My_Number/M*100];
% Aged 73
Y_data = Male_data_73(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ELSA_Brasil(39);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_06_ELSH_Brasil_Male = [Number_Ht_06_ELSH_Brasil_Male My_Number];
Proportion_Ht_06_ELSH_Brasil_Male = [Proportion_Ht_06_ELSH_Brasil_Male My_Number/M*100];
% Aged 74
Y_data = Male_data_74(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_ELSA_Brasil(40);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_06_ELSH_Brasil_Male = [Number_Ht_06_ELSH_Brasil_Male My_Number];
Proportion_Ht_06_ELSH_Brasil_Male = [Proportion_Ht_06_ELSH_Brasil_Male My_Number/M*100];

%% 07-China
% Jilin_China
Female_data = xlsread('./Raw data/07-China/Jilin_China.xlsx','Female','B:D'); % Age	Height(cm)	Weight(Kg)
Male_data = xlsread('./Raw data/07-China/Jilin_China.xlsx','Male','B:D'); % Age	Height(cm)	Weight(Kg)
% Stratified by age and gender
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

% For Female
[M N] = size(Female_data); % Height (cm); Weight (Kg)
for i=1:M
    if Female_data(i,1) == 7
        Female_data_7 = [Female_data_7;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 8
        Female_data_8 = [Female_data_8;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 9
        Female_data_9 = [Female_data_9;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 10
        Female_data_10 = [Female_data_10;Female_data(i,2) Female_data(i,3)];
    end
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
end

% For Male
[M N] = size(Male_data); % Height (cm); Weight (Kg)
for i=1:M
    if Male_data(i,1) == 7
        Male_data_7 = [Male_data_7;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 8
        Male_data_8 = [Male_data_8;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 9
        Male_data_9 = [Male_data_9;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 10
        Male_data_10 = [Male_data_10;Male_data(i,2) Male_data(i,3)];
    end
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
end

% For Jilin_China
load('All coefficients\07-China\Coefficients_a_and_b_c1_China.mat')
% upper limit for height
Age_07_China_Jilin_China = 7:18;
Number_Ht_07_China_Jilin_China_Female = []; % The number of individuals whose height exceeds the theoretical limit
Number_Ht_07_China_Jilin_China_Male = [];
Proportion_Ht_07_China_Jilin_China_Female = []; % The proportion of individuals whose height exceeds the theoretical limit
Proportion_Ht_07_China_Jilin_China_Male = [];

% For Female
% Aged 7
Y_data = Female_data_7(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_Jilin_China(1);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_Jilin_China_Female = [Number_Ht_07_China_Jilin_China_Female My_Number];
Proportion_Ht_07_China_Jilin_China_Female = [Proportion_Ht_07_China_Jilin_China_Female My_Number/M*100];
% Aged 8
Y_data = Female_data_8(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_Jilin_China(2);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_Jilin_China_Female = [Number_Ht_07_China_Jilin_China_Female My_Number];
Proportion_Ht_07_China_Jilin_China_Female = [Proportion_Ht_07_China_Jilin_China_Female My_Number/M*100];
% Aged 9
Y_data = Female_data_9(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_Jilin_China(3);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_Jilin_China_Female = [Number_Ht_07_China_Jilin_China_Female My_Number];
Proportion_Ht_07_China_Jilin_China_Female = [Proportion_Ht_07_China_Jilin_China_Female My_Number/M*100];
% Aged 10
Y_data = Female_data_10(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_Jilin_China(4);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_Jilin_China_Female = [Number_Ht_07_China_Jilin_China_Female My_Number];
Proportion_Ht_07_China_Jilin_China_Female = [Proportion_Ht_07_China_Jilin_China_Female My_Number/M*100];
% Aged 11
Y_data = Female_data_11(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_Jilin_China(5);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_Jilin_China_Female = [Number_Ht_07_China_Jilin_China_Female My_Number];
Proportion_Ht_07_China_Jilin_China_Female = [Proportion_Ht_07_China_Jilin_China_Female My_Number/M*100];
% Aged 12
Y_data = Female_data_12(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_Jilin_China(6);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_Jilin_China_Female = [Number_Ht_07_China_Jilin_China_Female My_Number];
Proportion_Ht_07_China_Jilin_China_Female = [Proportion_Ht_07_China_Jilin_China_Female My_Number/M*100];
% Aged 13
Y_data = Female_data_13(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_Jilin_China(7);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_Jilin_China_Female = [Number_Ht_07_China_Jilin_China_Female My_Number];
Proportion_Ht_07_China_Jilin_China_Female = [Proportion_Ht_07_China_Jilin_China_Female My_Number/M*100];
% Aged 14
Y_data = Female_data_14(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_Jilin_China(8);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_Jilin_China_Female = [Number_Ht_07_China_Jilin_China_Female My_Number];
Proportion_Ht_07_China_Jilin_China_Female = [Proportion_Ht_07_China_Jilin_China_Female My_Number/M*100];
% Aged 15
Y_data = Female_data_15(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_Jilin_China(9);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_Jilin_China_Female = [Number_Ht_07_China_Jilin_China_Female My_Number];
Proportion_Ht_07_China_Jilin_China_Female = [Proportion_Ht_07_China_Jilin_China_Female My_Number/M*100];
% Aged 16
Y_data = Female_data_16(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_Jilin_China(10);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_Jilin_China_Female = [Number_Ht_07_China_Jilin_China_Female My_Number];
Proportion_Ht_07_China_Jilin_China_Female = [Proportion_Ht_07_China_Jilin_China_Female My_Number/M*100];
% Aged 17
Y_data = Female_data_17(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_Jilin_China(11);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_Jilin_China_Female = [Number_Ht_07_China_Jilin_China_Female My_Number];
Proportion_Ht_07_China_Jilin_China_Female = [Proportion_Ht_07_China_Jilin_China_Female My_Number/M*100];
% Aged 18
Y_data = Female_data_18(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_Jilin_China(12);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_Jilin_China_Female = [Number_Ht_07_China_Jilin_China_Female My_Number];
Proportion_Ht_07_China_Jilin_China_Female = [Proportion_Ht_07_China_Jilin_China_Female My_Number/M*100];

% For Male
% Aged 7
Y_data = Male_data_7(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_Jilin_China(1);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_Jilin_China_Male = [Number_Ht_07_China_Jilin_China_Male My_Number];
Proportion_Ht_07_China_Jilin_China_Male = [Proportion_Ht_07_China_Jilin_China_Male My_Number/M*100];
% Aged 8
Y_data = Male_data_8(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_Jilin_China(2);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_Jilin_China_Male = [Number_Ht_07_China_Jilin_China_Male My_Number];
Proportion_Ht_07_China_Jilin_China_Male = [Proportion_Ht_07_China_Jilin_China_Male My_Number/M*100];
% Aged 9
Y_data = Male_data_9(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_Jilin_China(3);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_Jilin_China_Male = [Number_Ht_07_China_Jilin_China_Male My_Number];
Proportion_Ht_07_China_Jilin_China_Male = [Proportion_Ht_07_China_Jilin_China_Male My_Number/M*100];
% Aged 10
Y_data = Male_data_10(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_Jilin_China(4);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_Jilin_China_Male = [Number_Ht_07_China_Jilin_China_Male My_Number];
Proportion_Ht_07_China_Jilin_China_Male = [Proportion_Ht_07_China_Jilin_China_Male My_Number/M*100];
% Aged 11
Y_data = Male_data_11(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_Jilin_China(5);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_Jilin_China_Male = [Number_Ht_07_China_Jilin_China_Male My_Number];
Proportion_Ht_07_China_Jilin_China_Male = [Proportion_Ht_07_China_Jilin_China_Male My_Number/M*100];
% Aged 12
Y_data = Male_data_12(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_Jilin_China(6);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_Jilin_China_Male = [Number_Ht_07_China_Jilin_China_Male My_Number];
Proportion_Ht_07_China_Jilin_China_Male = [Proportion_Ht_07_China_Jilin_China_Male My_Number/M*100];
% Aged 13
Y_data = Male_data_13(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_Jilin_China(7);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_Jilin_China_Male = [Number_Ht_07_China_Jilin_China_Male My_Number];
Proportion_Ht_07_China_Jilin_China_Male = [Proportion_Ht_07_China_Jilin_China_Male My_Number/M*100];
% Aged 14
Y_data = Male_data_14(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_Jilin_China(8);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_Jilin_China_Male = [Number_Ht_07_China_Jilin_China_Male My_Number];
Proportion_Ht_07_China_Jilin_China_Male = [Proportion_Ht_07_China_Jilin_China_Male My_Number/M*100];
% Aged 15
Y_data = Male_data_15(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_Jilin_China(9);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_Jilin_China_Male = [Number_Ht_07_China_Jilin_China_Male My_Number];
Proportion_Ht_07_China_Jilin_China_Male = [Proportion_Ht_07_China_Jilin_China_Male My_Number/M*100];
% Aged 16
Y_data = Male_data_16(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_Jilin_China(10);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_Jilin_China_Male = [Number_Ht_07_China_Jilin_China_Male My_Number];
Proportion_Ht_07_China_Jilin_China_Male = [Proportion_Ht_07_China_Jilin_China_Male My_Number/M*100];
% Aged 17
Y_data = Male_data_17(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_Jilin_China(11);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_Jilin_China_Male = [Number_Ht_07_China_Jilin_China_Male My_Number];
Proportion_Ht_07_China_Jilin_China_Male = [Proportion_Ht_07_China_Jilin_China_Male My_Number/M*100];
% Aged 18
Y_data = Male_data_18(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_Jilin_China(12);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_Jilin_China_Male = [Number_Ht_07_China_Jilin_China_Male My_Number];
Proportion_Ht_07_China_Jilin_China_Male = [Proportion_Ht_07_China_Jilin_China_Male My_Number/M*100];

% Chongqing_6_21_China
Female_data = xlsread('./Raw data/07-China/Chongqing_6_21_China.xlsx','Female','B:D'); % Age	Height(cm)	Weight(Kg)
Male_data = xlsread('./Raw data/07-China/Chongqing_6_21_China.xlsx','Male','B:D'); % Age	Height(cm)	Weight(Kg)
% Stratified by age and gender
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

% For Female
[M N] = size(Female_data); % Height (cm); Weight (Kg)
for i=1:M
    if Female_data(i,1) == 6
        Female_data_6 = [Female_data_6;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 7
        Female_data_7 = [Female_data_7;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 8
        Female_data_8 = [Female_data_8;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 9
        Female_data_9 = [Female_data_9;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 10
        Female_data_10 = [Female_data_10;Female_data(i,2) Female_data(i,3)];
    end
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
end

% For Male
[M N] = size(Male_data); % Height (cm); Weight (Kg)
for i=1:M
    if Male_data(i,1) == 6
        Male_data_6 = [Male_data_6;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 7
        Male_data_7 = [Male_data_7;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 8
        Male_data_8 = [Male_data_8;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 9
        Male_data_9 = [Male_data_9;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 10
        Male_data_10 = [Male_data_10;Male_data(i,2) Male_data(i,3)];
    end
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
end

% For Chongqing_6_21_China
load('All coefficients\07-China\Coefficients_a_and_b_c1_China.mat')
% upper limit for height
Age_07_China_Chongqing_6_21_China = 6:21;
Number_Ht_07_China_Chongqing_6_21_China_Female = []; % The number of individuals whose height exceeds the theoretical limit
Number_Ht_07_China_Chongqing_6_21_China_Male = [];
Proportion_Ht_07_China_Chongqing_6_21_China_Female = []; % The proportion of individuals whose height exceeds the theoretical limit
Proportion_Ht_07_China_Chongqing_6_21_China_Male = [];

% For Female
% Aged 6
Y_data = Female_data_6(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_Chongqing_6_21_China(1);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_Chongqing_6_21_China_Female = [Number_Ht_07_China_Chongqing_6_21_China_Female My_Number];
Proportion_Ht_07_China_Chongqing_6_21_China_Female = [Proportion_Ht_07_China_Chongqing_6_21_China_Female My_Number/M*100];
% Aged 7
Y_data = Female_data_7(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_Chongqing_6_21_China(2);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_Chongqing_6_21_China_Female = [Number_Ht_07_China_Chongqing_6_21_China_Female My_Number];
Proportion_Ht_07_China_Chongqing_6_21_China_Female = [Proportion_Ht_07_China_Chongqing_6_21_China_Female My_Number/M*100];
% Aged 8
Y_data = Female_data_8(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_Chongqing_6_21_China(3);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_Chongqing_6_21_China_Female = [Number_Ht_07_China_Chongqing_6_21_China_Female My_Number];
Proportion_Ht_07_China_Chongqing_6_21_China_Female = [Proportion_Ht_07_China_Chongqing_6_21_China_Female My_Number/M*100];
% Aged 9
Y_data = Female_data_9(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_Chongqing_6_21_China(4);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_Chongqing_6_21_China_Female = [Number_Ht_07_China_Chongqing_6_21_China_Female My_Number];
Proportion_Ht_07_China_Chongqing_6_21_China_Female = [Proportion_Ht_07_China_Chongqing_6_21_China_Female My_Number/M*100];
% Aged 10
Y_data = Female_data_10(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_Chongqing_6_21_China(5);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_Chongqing_6_21_China_Female = [Number_Ht_07_China_Chongqing_6_21_China_Female My_Number];
Proportion_Ht_07_China_Chongqing_6_21_China_Female = [Proportion_Ht_07_China_Chongqing_6_21_China_Female My_Number/M*100];
% Aged 11
Y_data = Female_data_11(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_Chongqing_6_21_China(6);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_Chongqing_6_21_China_Female = [Number_Ht_07_China_Chongqing_6_21_China_Female My_Number];
Proportion_Ht_07_China_Chongqing_6_21_China_Female = [Proportion_Ht_07_China_Chongqing_6_21_China_Female My_Number/M*100];
% Aged 12
Y_data = Female_data_12(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_Chongqing_6_21_China(7);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_Chongqing_6_21_China_Female = [Number_Ht_07_China_Chongqing_6_21_China_Female My_Number];
Proportion_Ht_07_China_Chongqing_6_21_China_Female = [Proportion_Ht_07_China_Chongqing_6_21_China_Female My_Number/M*100];
% Aged 13
Y_data = Female_data_13(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_Chongqing_6_21_China(8);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_Chongqing_6_21_China_Female = [Number_Ht_07_China_Chongqing_6_21_China_Female My_Number];
Proportion_Ht_07_China_Chongqing_6_21_China_Female = [Proportion_Ht_07_China_Chongqing_6_21_China_Female My_Number/M*100];
% Aged 14
Y_data = Female_data_14(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_Chongqing_6_21_China(9);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_Chongqing_6_21_China_Female = [Number_Ht_07_China_Chongqing_6_21_China_Female My_Number];
Proportion_Ht_07_China_Chongqing_6_21_China_Female = [Proportion_Ht_07_China_Chongqing_6_21_China_Female My_Number/M*100];
% Aged 15
Y_data = Female_data_15(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_Chongqing_6_21_China(10);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_Chongqing_6_21_China_Female = [Number_Ht_07_China_Chongqing_6_21_China_Female My_Number];
Proportion_Ht_07_China_Chongqing_6_21_China_Female = [Proportion_Ht_07_China_Chongqing_6_21_China_Female My_Number/M*100];
% Aged 16
Y_data = Female_data_16(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_Chongqing_6_21_China(11);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_Chongqing_6_21_China_Female = [Number_Ht_07_China_Chongqing_6_21_China_Female My_Number];
Proportion_Ht_07_China_Chongqing_6_21_China_Female = [Proportion_Ht_07_China_Chongqing_6_21_China_Female My_Number/M*100];
% Aged 17
Y_data = Female_data_17(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_Chongqing_6_21_China(12);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_Chongqing_6_21_China_Female = [Number_Ht_07_China_Chongqing_6_21_China_Female My_Number];
Proportion_Ht_07_China_Chongqing_6_21_China_Female = [Proportion_Ht_07_China_Chongqing_6_21_China_Female My_Number/M*100];
% Aged 18
Y_data = Female_data_18(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_Chongqing_6_21_China(13);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_Chongqing_6_21_China_Female = [Number_Ht_07_China_Chongqing_6_21_China_Female My_Number];
Proportion_Ht_07_China_Chongqing_6_21_China_Female = [Proportion_Ht_07_China_Chongqing_6_21_China_Female My_Number/M*100];
% Aged 19
Y_data = Female_data_19(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_Chongqing_6_21_China(14);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_Chongqing_6_21_China_Female = [Number_Ht_07_China_Chongqing_6_21_China_Female My_Number];
Proportion_Ht_07_China_Chongqing_6_21_China_Female = [Proportion_Ht_07_China_Chongqing_6_21_China_Female My_Number/M*100];
% Aged 20
Y_data = Female_data_20(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_Chongqing_6_21_China(15);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_Chongqing_6_21_China_Female = [Number_Ht_07_China_Chongqing_6_21_China_Female My_Number];
Proportion_Ht_07_China_Chongqing_6_21_China_Female = [Proportion_Ht_07_China_Chongqing_6_21_China_Female My_Number/M*100];
% Aged 21
Y_data = Female_data_21(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_Chongqing_6_21_China(16);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_Chongqing_6_21_China_Female = [Number_Ht_07_China_Chongqing_6_21_China_Female My_Number];
Proportion_Ht_07_China_Chongqing_6_21_China_Female = [Proportion_Ht_07_China_Chongqing_6_21_China_Female My_Number/M*100];

% For Male
% Aged 6
Y_data = Male_data_6(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_Chongqing_6_21_China(1);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_Chongqing_6_21_China_Male = [Number_Ht_07_China_Chongqing_6_21_China_Male My_Number];
Proportion_Ht_07_China_Chongqing_6_21_China_Male = [Proportion_Ht_07_China_Chongqing_6_21_China_Male My_Number/M*100];
% Aged 7
Y_data = Male_data_7(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_Chongqing_6_21_China(2);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_Chongqing_6_21_China_Male = [Number_Ht_07_China_Chongqing_6_21_China_Male My_Number];
Proportion_Ht_07_China_Chongqing_6_21_China_Male = [Proportion_Ht_07_China_Chongqing_6_21_China_Male My_Number/M*100];
% Aged 8
Y_data = Male_data_8(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_Chongqing_6_21_China(3);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_Chongqing_6_21_China_Male = [Number_Ht_07_China_Chongqing_6_21_China_Male My_Number];
Proportion_Ht_07_China_Chongqing_6_21_China_Male = [Proportion_Ht_07_China_Chongqing_6_21_China_Male My_Number/M*100];
% Aged 9
Y_data = Male_data_9(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_Chongqing_6_21_China(4);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_Chongqing_6_21_China_Male = [Number_Ht_07_China_Chongqing_6_21_China_Male My_Number];
Proportion_Ht_07_China_Chongqing_6_21_China_Male = [Proportion_Ht_07_China_Chongqing_6_21_China_Male My_Number/M*100];
% Aged 10
Y_data = Male_data_10(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_Chongqing_6_21_China(5);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_Chongqing_6_21_China_Male = [Number_Ht_07_China_Chongqing_6_21_China_Male My_Number];
Proportion_Ht_07_China_Chongqing_6_21_China_Male = [Proportion_Ht_07_China_Chongqing_6_21_China_Male My_Number/M*100];
% Aged 11
Y_data = Male_data_11(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_Chongqing_6_21_China(6);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_Chongqing_6_21_China_Male = [Number_Ht_07_China_Chongqing_6_21_China_Male My_Number];
Proportion_Ht_07_China_Chongqing_6_21_China_Male = [Proportion_Ht_07_China_Chongqing_6_21_China_Male My_Number/M*100];
% Aged 12
Y_data = Male_data_12(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_Chongqing_6_21_China(7);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_Chongqing_6_21_China_Male = [Number_Ht_07_China_Chongqing_6_21_China_Male My_Number];
Proportion_Ht_07_China_Chongqing_6_21_China_Male = [Proportion_Ht_07_China_Chongqing_6_21_China_Male My_Number/M*100];
% Aged 13
Y_data = Male_data_13(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_Chongqing_6_21_China(8);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_Chongqing_6_21_China_Male = [Number_Ht_07_China_Chongqing_6_21_China_Male My_Number];
Proportion_Ht_07_China_Chongqing_6_21_China_Male = [Proportion_Ht_07_China_Chongqing_6_21_China_Male My_Number/M*100];
% Aged 14
Y_data = Male_data_14(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_Chongqing_6_21_China(9);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_Chongqing_6_21_China_Male = [Number_Ht_07_China_Chongqing_6_21_China_Male My_Number];
Proportion_Ht_07_China_Chongqing_6_21_China_Male = [Proportion_Ht_07_China_Chongqing_6_21_China_Male My_Number/M*100];
% Aged 15
Y_data = Male_data_15(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_Chongqing_6_21_China(10);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_Chongqing_6_21_China_Male = [Number_Ht_07_China_Chongqing_6_21_China_Male My_Number];
Proportion_Ht_07_China_Chongqing_6_21_China_Male = [Proportion_Ht_07_China_Chongqing_6_21_China_Male My_Number/M*100];
% Aged 16
Y_data = Male_data_16(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_Chongqing_6_21_China(11);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_Chongqing_6_21_China_Male = [Number_Ht_07_China_Chongqing_6_21_China_Male My_Number];
Proportion_Ht_07_China_Chongqing_6_21_China_Male = [Proportion_Ht_07_China_Chongqing_6_21_China_Male My_Number/M*100];
% Aged 17
Y_data = Male_data_17(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_Chongqing_6_21_China(12);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_Chongqing_6_21_China_Male = [Number_Ht_07_China_Chongqing_6_21_China_Male My_Number];
Proportion_Ht_07_China_Chongqing_6_21_China_Male = [Proportion_Ht_07_China_Chongqing_6_21_China_Male My_Number/M*100];
% Aged 18
Y_data = Male_data_18(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_Chongqing_6_21_China(13);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_Chongqing_6_21_China_Male = [Number_Ht_07_China_Chongqing_6_21_China_Male My_Number];
Proportion_Ht_07_China_Chongqing_6_21_China_Male = [Proportion_Ht_07_China_Chongqing_6_21_China_Male My_Number/M*100];
% Aged 19
Y_data = Male_data_19(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_Chongqing_6_21_China(14);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_Chongqing_6_21_China_Male = [Number_Ht_07_China_Chongqing_6_21_China_Male My_Number];
Proportion_Ht_07_China_Chongqing_6_21_China_Male = [Proportion_Ht_07_China_Chongqing_6_21_China_Male My_Number/M*100];
% Aged 20
Y_data = Male_data_20(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_Chongqing_6_21_China(15);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_Chongqing_6_21_China_Male = [Number_Ht_07_China_Chongqing_6_21_China_Male My_Number];
Proportion_Ht_07_China_Chongqing_6_21_China_Male = [Proportion_Ht_07_China_Chongqing_6_21_China_Male My_Number/M*100];
% Aged 21
Y_data = Male_data_21(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_Chongqing_6_21_China(16);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_Chongqing_6_21_China_Male = [Number_Ht_07_China_Chongqing_6_21_China_Male My_Number];
Proportion_Ht_07_China_Chongqing_6_21_China_Male = [Proportion_Ht_07_China_Chongqing_6_21_China_Male My_Number/M*100];

% BCCPDS_7_21_China
Female_data = xlsread('./Raw data/07-China/BCCPDS_7_21_China.xlsx','Female','B:D'); % Age	Height(cm)	Weight(Kg)
Male_data = xlsread('./Raw data/07-China/BCCPDS_7_21_China.xlsx','Male','B:D'); % Age	Height(cm)	Weight(Kg)
% Stratified by age and gender
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

% For Female
[M N] = size(Female_data); % Height (cm); Weight (Kg)
for i=1:M
    if Female_data(i,1) == 7
        Female_data_7 = [Female_data_7;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 8
        Female_data_8 = [Female_data_8;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 9
        Female_data_9 = [Female_data_9;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 10
        Female_data_10 = [Female_data_10;Female_data(i,2) Female_data(i,3)];
    end
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
end

% For Male
[M N] = size(Male_data); % Height (cm); Weight (Kg)
for i=1:M
    if Male_data(i,1) == 7
        Male_data_7 = [Male_data_7;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 8
        Male_data_8 = [Male_data_8;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 9
        Male_data_9 = [Male_data_9;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 10
        Male_data_10 = [Male_data_10;Male_data(i,2) Male_data(i,3)];
    end
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
end

% For Chongqing_6_21_China
load('All coefficients\07-China\Coefficients_a_and_b_c1_China.mat')
% upper limit for height
Age_07_China_BCCPDS_7_21_China = 7:21;
Number_Ht_07_China_BCCPDS_7_21_China_Female = []; % The number of individuals whose height exceeds the theoretical limit
Number_Ht_07_China_BCCPDS_7_21_China_Male = [];
Proportion_Ht_07_China_BCCPDS_7_21_China_Female = []; % The proportion of individuals whose height exceeds the theoretical limit
Proportion_Ht_07_China_BCCPDS_7_21_China_Male = [];

% For Female
% Aged 7
Y_data = Female_data_7(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_BCCPDS_7_21_China(1);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_BCCPDS_7_21_China_Female = [Number_Ht_07_China_BCCPDS_7_21_China_Female My_Number];
Proportion_Ht_07_China_BCCPDS_7_21_China_Female = [Proportion_Ht_07_China_BCCPDS_7_21_China_Female My_Number/M*100];
% Aged 8
Y_data = Female_data_8(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_BCCPDS_7_21_China(2);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_BCCPDS_7_21_China_Female = [Number_Ht_07_China_BCCPDS_7_21_China_Female My_Number];
Proportion_Ht_07_China_BCCPDS_7_21_China_Female = [Proportion_Ht_07_China_BCCPDS_7_21_China_Female My_Number/M*100];
% Aged 9
Y_data = Female_data_9(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_BCCPDS_7_21_China(3);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_BCCPDS_7_21_China_Female = [Number_Ht_07_China_BCCPDS_7_21_China_Female My_Number];
Proportion_Ht_07_China_BCCPDS_7_21_China_Female = [Proportion_Ht_07_China_BCCPDS_7_21_China_Female My_Number/M*100];
% Aged 10
Y_data = Female_data_10(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_BCCPDS_7_21_China(4);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_BCCPDS_7_21_China_Female = [Number_Ht_07_China_BCCPDS_7_21_China_Female My_Number];
Proportion_Ht_07_China_BCCPDS_7_21_China_Female = [Proportion_Ht_07_China_BCCPDS_7_21_China_Female My_Number/M*100];
% Aged 11
Y_data = Female_data_11(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_BCCPDS_7_21_China(5);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_BCCPDS_7_21_China_Female = [Number_Ht_07_China_BCCPDS_7_21_China_Female My_Number];
Proportion_Ht_07_China_BCCPDS_7_21_China_Female = [Proportion_Ht_07_China_BCCPDS_7_21_China_Female My_Number/M*100];
% Aged 12
Y_data = Female_data_12(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_BCCPDS_7_21_China(6);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_BCCPDS_7_21_China_Female = [Number_Ht_07_China_BCCPDS_7_21_China_Female My_Number];
Proportion_Ht_07_China_BCCPDS_7_21_China_Female = [Proportion_Ht_07_China_BCCPDS_7_21_China_Female My_Number/M*100];
% Aged 13
Y_data = Female_data_13(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_BCCPDS_7_21_China(7);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_BCCPDS_7_21_China_Female = [Number_Ht_07_China_BCCPDS_7_21_China_Female My_Number];
Proportion_Ht_07_China_BCCPDS_7_21_China_Female = [Proportion_Ht_07_China_BCCPDS_7_21_China_Female My_Number/M*100];
% Aged 14
Y_data = Female_data_14(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_BCCPDS_7_21_China(8);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_BCCPDS_7_21_China_Female = [Number_Ht_07_China_BCCPDS_7_21_China_Female My_Number];
Proportion_Ht_07_China_BCCPDS_7_21_China_Female = [Proportion_Ht_07_China_BCCPDS_7_21_China_Female My_Number/M*100];
% Aged 15
Y_data = Female_data_15(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_BCCPDS_7_21_China(9);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_BCCPDS_7_21_China_Female = [Number_Ht_07_China_BCCPDS_7_21_China_Female My_Number];
Proportion_Ht_07_China_BCCPDS_7_21_China_Female = [Proportion_Ht_07_China_BCCPDS_7_21_China_Female My_Number/M*100];
% Aged 16
Y_data = Female_data_16(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_BCCPDS_7_21_China(10);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_BCCPDS_7_21_China_Female = [Number_Ht_07_China_BCCPDS_7_21_China_Female My_Number];
Proportion_Ht_07_China_BCCPDS_7_21_China_Female = [Proportion_Ht_07_China_BCCPDS_7_21_China_Female My_Number/M*100];
% Aged 17
Y_data = Female_data_17(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_BCCPDS_7_21_China(11);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_BCCPDS_7_21_China_Female = [Number_Ht_07_China_BCCPDS_7_21_China_Female My_Number];
Proportion_Ht_07_China_BCCPDS_7_21_China_Female = [Proportion_Ht_07_China_BCCPDS_7_21_China_Female My_Number/M*100];
% Aged 18
Y_data = Female_data_18(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_BCCPDS_7_21_China(12);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_BCCPDS_7_21_China_Female = [Number_Ht_07_China_BCCPDS_7_21_China_Female My_Number];
Proportion_Ht_07_China_BCCPDS_7_21_China_Female = [Proportion_Ht_07_China_BCCPDS_7_21_China_Female My_Number/M*100];
% Aged 19
Y_data = Female_data_19(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_BCCPDS_7_21_China(13);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_BCCPDS_7_21_China_Female = [Number_Ht_07_China_BCCPDS_7_21_China_Female My_Number];
Proportion_Ht_07_China_BCCPDS_7_21_China_Female = [Proportion_Ht_07_China_BCCPDS_7_21_China_Female My_Number/M*100];
% Aged 20
Y_data = Female_data_20(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_BCCPDS_7_21_China(14);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_BCCPDS_7_21_China_Female = [Number_Ht_07_China_BCCPDS_7_21_China_Female My_Number];
Proportion_Ht_07_China_BCCPDS_7_21_China_Female = [Proportion_Ht_07_China_BCCPDS_7_21_China_Female My_Number/M*100];
% Aged 21
Y_data = Female_data_21(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_BCCPDS_7_21_China(15);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_BCCPDS_7_21_China_Female = [Number_Ht_07_China_BCCPDS_7_21_China_Female My_Number];
Proportion_Ht_07_China_BCCPDS_7_21_China_Female = [Proportion_Ht_07_China_BCCPDS_7_21_China_Female My_Number/M*100];

% For Male
% Aged 7
Y_data = Male_data_7(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_BCCPDS_7_21_China(1);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_BCCPDS_7_21_China_Male = [Number_Ht_07_China_BCCPDS_7_21_China_Male My_Number];
Proportion_Ht_07_China_BCCPDS_7_21_China_Male = [Proportion_Ht_07_China_BCCPDS_7_21_China_Male My_Number/M*100];
% Aged 8
Y_data = Male_data_8(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_BCCPDS_7_21_China(2);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_BCCPDS_7_21_China_Male = [Number_Ht_07_China_BCCPDS_7_21_China_Male My_Number];
Proportion_Ht_07_China_BCCPDS_7_21_China_Male = [Proportion_Ht_07_China_BCCPDS_7_21_China_Male My_Number/M*100];
% Aged 9
Y_data = Male_data_9(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_BCCPDS_7_21_China(3);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_BCCPDS_7_21_China_Male = [Number_Ht_07_China_BCCPDS_7_21_China_Male My_Number];
Proportion_Ht_07_China_BCCPDS_7_21_China_Male = [Proportion_Ht_07_China_BCCPDS_7_21_China_Male My_Number/M*100];
% Aged 10
Y_data = Male_data_10(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_BCCPDS_7_21_China(4);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_BCCPDS_7_21_China_Male = [Number_Ht_07_China_BCCPDS_7_21_China_Male My_Number];
Proportion_Ht_07_China_BCCPDS_7_21_China_Male = [Proportion_Ht_07_China_BCCPDS_7_21_China_Male My_Number/M*100];
% Aged 11
Y_data = Male_data_11(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_BCCPDS_7_21_China(5);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_BCCPDS_7_21_China_Male = [Number_Ht_07_China_BCCPDS_7_21_China_Male My_Number];
Proportion_Ht_07_China_BCCPDS_7_21_China_Male = [Proportion_Ht_07_China_BCCPDS_7_21_China_Male My_Number/M*100];
% Aged 12
Y_data = Male_data_12(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_BCCPDS_7_21_China(6);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_BCCPDS_7_21_China_Male = [Number_Ht_07_China_BCCPDS_7_21_China_Male My_Number];
Proportion_Ht_07_China_BCCPDS_7_21_China_Male = [Proportion_Ht_07_China_BCCPDS_7_21_China_Male My_Number/M*100];
% Aged 13
Y_data = Male_data_13(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_BCCPDS_7_21_China(7);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_BCCPDS_7_21_China_Male = [Number_Ht_07_China_BCCPDS_7_21_China_Male My_Number];
Proportion_Ht_07_China_BCCPDS_7_21_China_Male = [Proportion_Ht_07_China_BCCPDS_7_21_China_Male My_Number/M*100];
% Aged 14
Y_data = Male_data_14(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_BCCPDS_7_21_China(8);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_BCCPDS_7_21_China_Male = [Number_Ht_07_China_BCCPDS_7_21_China_Male My_Number];
Proportion_Ht_07_China_BCCPDS_7_21_China_Male = [Proportion_Ht_07_China_BCCPDS_7_21_China_Male My_Number/M*100];
% Aged 15
Y_data = Male_data_15(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_BCCPDS_7_21_China(9);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_BCCPDS_7_21_China_Male = [Number_Ht_07_China_BCCPDS_7_21_China_Male My_Number];
Proportion_Ht_07_China_BCCPDS_7_21_China_Male = [Proportion_Ht_07_China_BCCPDS_7_21_China_Male My_Number/M*100];
% Aged 16
Y_data = Male_data_16(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_BCCPDS_7_21_China(10);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_BCCPDS_7_21_China_Male = [Number_Ht_07_China_BCCPDS_7_21_China_Male My_Number];
Proportion_Ht_07_China_BCCPDS_7_21_China_Male = [Proportion_Ht_07_China_BCCPDS_7_21_China_Male My_Number/M*100];
% Aged 17
Y_data = Male_data_17(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_BCCPDS_7_21_China(11);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_BCCPDS_7_21_China_Male = [Number_Ht_07_China_BCCPDS_7_21_China_Male My_Number];
Proportion_Ht_07_China_BCCPDS_7_21_China_Male = [Proportion_Ht_07_China_BCCPDS_7_21_China_Male My_Number/M*100];
% Aged 18
Y_data = Male_data_18(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_BCCPDS_7_21_China(12);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_BCCPDS_7_21_China_Male = [Number_Ht_07_China_BCCPDS_7_21_China_Male My_Number];
Proportion_Ht_07_China_BCCPDS_7_21_China_Male = [Proportion_Ht_07_China_BCCPDS_7_21_China_Male My_Number/M*100];
% Aged 19
Y_data = Male_data_19(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_BCCPDS_7_21_China(13);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_BCCPDS_7_21_China_Male = [Number_Ht_07_China_BCCPDS_7_21_China_Male My_Number];
Proportion_Ht_07_China_BCCPDS_7_21_China_Male = [Proportion_Ht_07_China_BCCPDS_7_21_China_Male My_Number/M*100];
% Aged 20
Y_data = Male_data_20(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_BCCPDS_7_21_China(14);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_BCCPDS_7_21_China_Male = [Number_Ht_07_China_BCCPDS_7_21_China_Male My_Number];
Proportion_Ht_07_China_BCCPDS_7_21_China_Male = [Proportion_Ht_07_China_BCCPDS_7_21_China_Male My_Number/M*100];
% Aged 21
Y_data = Male_data_21(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_BCCPDS_7_21_China(15);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_BCCPDS_7_21_China_Male = [Number_Ht_07_China_BCCPDS_7_21_China_Male My_Number];
Proportion_Ht_07_China_BCCPDS_7_21_China_Male = [Proportion_Ht_07_China_BCCPDS_7_21_China_Male My_Number/M*100];

% CHARLS All
Female_data = xlsread('./Raw data/07-China/CHARLS All.xlsx','Female','B:D'); % Age	Height(cm)	Weight(Kg)
Male_data = xlsread('./Raw data/07-China/CHARLS All.xlsx','Male','B:D'); % Age	Height(cm)	Weight(Kg)
% Stratified by age and gender
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

% For Female
[M N] = size(Female_data); % Height (cm); Weight (Kg)
for i=1:M
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
end

% For Male
[M N] = size(Male_data); % Height (cm); Weight (Kg)
for i=1:M
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
end

% For CHARLS All
load('All coefficients\07-China\Coefficients_a_and_b_c1_China.mat')
% upper limit for height
Age_07_China_CHARLS_All = 41:87;
Number_Ht_07_China_CHARLS_All_Female = []; % The number of individuals whose height exceeds the theoretical limit
Number_Ht_07_China_CHARLS_All_Male = [];
Proportion_Ht_07_China_CHARLS_All_Female = []; % The proportion of individuals whose height exceeds the theoretical limit
Proportion_Ht_07_China_CHARLS_All_Male = [];

% For Female
% Aged 41
Y_data = Female_data_41(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_CHARLS_China(1);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_CHARLS_All_Female = [Number_Ht_07_China_CHARLS_All_Female My_Number];
Proportion_Ht_07_China_CHARLS_All_Female = [Proportion_Ht_07_China_CHARLS_All_Female My_Number/M*100];
% Aged 42
Y_data = Female_data_42(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_CHARLS_China(2);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_CHARLS_All_Female = [Number_Ht_07_China_CHARLS_All_Female My_Number];
Proportion_Ht_07_China_CHARLS_All_Female = [Proportion_Ht_07_China_CHARLS_All_Female My_Number/M*100];
% Aged 43
Y_data = Female_data_43(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_CHARLS_China(3);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_CHARLS_All_Female = [Number_Ht_07_China_CHARLS_All_Female My_Number];
Proportion_Ht_07_China_CHARLS_All_Female = [Proportion_Ht_07_China_CHARLS_All_Female My_Number/M*100];
% Aged 44
Y_data = Female_data_44(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_CHARLS_China(4);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_CHARLS_All_Female = [Number_Ht_07_China_CHARLS_All_Female My_Number];
Proportion_Ht_07_China_CHARLS_All_Female = [Proportion_Ht_07_China_CHARLS_All_Female My_Number/M*100];
% Aged 45
Y_data = Female_data_45(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_CHARLS_China(5);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_CHARLS_All_Female = [Number_Ht_07_China_CHARLS_All_Female My_Number];
Proportion_Ht_07_China_CHARLS_All_Female = [Proportion_Ht_07_China_CHARLS_All_Female My_Number/M*100];
% Aged 46
Y_data = Female_data_46(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_CHARLS_China(6);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_CHARLS_All_Female = [Number_Ht_07_China_CHARLS_All_Female My_Number];
Proportion_Ht_07_China_CHARLS_All_Female = [Proportion_Ht_07_China_CHARLS_All_Female My_Number/M*100];
% Aged 47
Y_data = Female_data_47(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_CHARLS_China(7);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_CHARLS_All_Female = [Number_Ht_07_China_CHARLS_All_Female My_Number];
Proportion_Ht_07_China_CHARLS_All_Female = [Proportion_Ht_07_China_CHARLS_All_Female My_Number/M*100];
% Aged 48
Y_data = Female_data_48(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_CHARLS_China(8);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_CHARLS_All_Female = [Number_Ht_07_China_CHARLS_All_Female My_Number];
Proportion_Ht_07_China_CHARLS_All_Female = [Proportion_Ht_07_China_CHARLS_All_Female My_Number/M*100];
% Aged 49
Y_data = Female_data_49(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_CHARLS_China(9);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_CHARLS_All_Female = [Number_Ht_07_China_CHARLS_All_Female My_Number];
Proportion_Ht_07_China_CHARLS_All_Female = [Proportion_Ht_07_China_CHARLS_All_Female My_Number/M*100];
% Aged 50
Y_data = Female_data_50(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_CHARLS_China(10);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_CHARLS_All_Female = [Number_Ht_07_China_CHARLS_All_Female My_Number];
Proportion_Ht_07_China_CHARLS_All_Female = [Proportion_Ht_07_China_CHARLS_All_Female My_Number/M*100];
% Aged 51
Y_data = Female_data_51(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_CHARLS_China(11);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_CHARLS_All_Female = [Number_Ht_07_China_CHARLS_All_Female My_Number];
Proportion_Ht_07_China_CHARLS_All_Female = [Proportion_Ht_07_China_CHARLS_All_Female My_Number/M*100];
% Aged 52
Y_data = Female_data_52(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_CHARLS_China(12);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_CHARLS_All_Female = [Number_Ht_07_China_CHARLS_All_Female My_Number];
Proportion_Ht_07_China_CHARLS_All_Female = [Proportion_Ht_07_China_CHARLS_All_Female My_Number/M*100];
% Aged 53
Y_data = Female_data_53(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_CHARLS_China(13);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_CHARLS_All_Female = [Number_Ht_07_China_CHARLS_All_Female My_Number];
Proportion_Ht_07_China_CHARLS_All_Female = [Proportion_Ht_07_China_CHARLS_All_Female My_Number/M*100];
% Aged 54
Y_data = Female_data_54(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_CHARLS_China(14);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_CHARLS_All_Female = [Number_Ht_07_China_CHARLS_All_Female My_Number];
Proportion_Ht_07_China_CHARLS_All_Female = [Proportion_Ht_07_China_CHARLS_All_Female My_Number/M*100];
% Aged 55
Y_data = Female_data_55(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_CHARLS_China(15);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_CHARLS_All_Female = [Number_Ht_07_China_CHARLS_All_Female My_Number];
Proportion_Ht_07_China_CHARLS_All_Female = [Proportion_Ht_07_China_CHARLS_All_Female My_Number/M*100];
% Aged 56
Y_data = Female_data_56(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_CHARLS_China(16);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_CHARLS_All_Female = [Number_Ht_07_China_CHARLS_All_Female My_Number];
Proportion_Ht_07_China_CHARLS_All_Female = [Proportion_Ht_07_China_CHARLS_All_Female My_Number/M*100];
% Aged 57
Y_data = Female_data_57(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_CHARLS_China(17);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_CHARLS_All_Female = [Number_Ht_07_China_CHARLS_All_Female My_Number];
Proportion_Ht_07_China_CHARLS_All_Female = [Proportion_Ht_07_China_CHARLS_All_Female My_Number/M*100];
% Aged 58
Y_data = Female_data_58(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_CHARLS_China(18);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_CHARLS_All_Female = [Number_Ht_07_China_CHARLS_All_Female My_Number];
Proportion_Ht_07_China_CHARLS_All_Female = [Proportion_Ht_07_China_CHARLS_All_Female My_Number/M*100];
% Aged 59
Y_data = Female_data_59(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_CHARLS_China(19);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_CHARLS_All_Female = [Number_Ht_07_China_CHARLS_All_Female My_Number];
Proportion_Ht_07_China_CHARLS_All_Female = [Proportion_Ht_07_China_CHARLS_All_Female My_Number/M*100];
% Aged 60
Y_data = Female_data_60(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_CHARLS_China(20);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_CHARLS_All_Female = [Number_Ht_07_China_CHARLS_All_Female My_Number];
Proportion_Ht_07_China_CHARLS_All_Female = [Proportion_Ht_07_China_CHARLS_All_Female My_Number/M*100];
% Aged 61
Y_data = Female_data_61(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_CHARLS_China(21);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_CHARLS_All_Female = [Number_Ht_07_China_CHARLS_All_Female My_Number];
Proportion_Ht_07_China_CHARLS_All_Female = [Proportion_Ht_07_China_CHARLS_All_Female My_Number/M*100];
% Aged 62
Y_data = Female_data_62(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_CHARLS_China(22);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_CHARLS_All_Female = [Number_Ht_07_China_CHARLS_All_Female My_Number];
Proportion_Ht_07_China_CHARLS_All_Female = [Proportion_Ht_07_China_CHARLS_All_Female My_Number/M*100];
% Aged 63
Y_data = Female_data_63(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_CHARLS_China(23);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_CHARLS_All_Female = [Number_Ht_07_China_CHARLS_All_Female My_Number];
Proportion_Ht_07_China_CHARLS_All_Female = [Proportion_Ht_07_China_CHARLS_All_Female My_Number/M*100];
% Aged 64
Y_data = Female_data_64(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_CHARLS_China(24);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_CHARLS_All_Female = [Number_Ht_07_China_CHARLS_All_Female My_Number];
Proportion_Ht_07_China_CHARLS_All_Female = [Proportion_Ht_07_China_CHARLS_All_Female My_Number/M*100];
% Aged 65
Y_data = Female_data_65(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_CHARLS_China(25);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_CHARLS_All_Female = [Number_Ht_07_China_CHARLS_All_Female My_Number];
Proportion_Ht_07_China_CHARLS_All_Female = [Proportion_Ht_07_China_CHARLS_All_Female My_Number/M*100];
% Aged 66
Y_data = Female_data_66(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_CHARLS_China(26);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_CHARLS_All_Female = [Number_Ht_07_China_CHARLS_All_Female My_Number];
Proportion_Ht_07_China_CHARLS_All_Female = [Proportion_Ht_07_China_CHARLS_All_Female My_Number/M*100];
% Aged 67
Y_data = Female_data_67(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_CHARLS_China(27);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_CHARLS_All_Female = [Number_Ht_07_China_CHARLS_All_Female My_Number];
Proportion_Ht_07_China_CHARLS_All_Female = [Proportion_Ht_07_China_CHARLS_All_Female My_Number/M*100];
% Aged 68
Y_data = Female_data_68(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_CHARLS_China(28);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_CHARLS_All_Female = [Number_Ht_07_China_CHARLS_All_Female My_Number];
Proportion_Ht_07_China_CHARLS_All_Female = [Proportion_Ht_07_China_CHARLS_All_Female My_Number/M*100];
% Aged 69
Y_data = Female_data_69(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_CHARLS_China(29);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_CHARLS_All_Female = [Number_Ht_07_China_CHARLS_All_Female My_Number];
Proportion_Ht_07_China_CHARLS_All_Female = [Proportion_Ht_07_China_CHARLS_All_Female My_Number/M*100];
% Aged 70
Y_data = Female_data_70(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_CHARLS_China(30);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_CHARLS_All_Female = [Number_Ht_07_China_CHARLS_All_Female My_Number];
Proportion_Ht_07_China_CHARLS_All_Female = [Proportion_Ht_07_China_CHARLS_All_Female My_Number/M*100];
% Aged 71
Y_data = Female_data_71(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_CHARLS_China(31);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_CHARLS_All_Female = [Number_Ht_07_China_CHARLS_All_Female My_Number];
Proportion_Ht_07_China_CHARLS_All_Female = [Proportion_Ht_07_China_CHARLS_All_Female My_Number/M*100];
% Aged 72
Y_data = Female_data_72(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_CHARLS_China(32);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_CHARLS_All_Female = [Number_Ht_07_China_CHARLS_All_Female My_Number];
Proportion_Ht_07_China_CHARLS_All_Female = [Proportion_Ht_07_China_CHARLS_All_Female My_Number/M*100];
% Aged 73
Y_data = Female_data_73(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_CHARLS_China(33);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_CHARLS_All_Female = [Number_Ht_07_China_CHARLS_All_Female My_Number];
Proportion_Ht_07_China_CHARLS_All_Female = [Proportion_Ht_07_China_CHARLS_All_Female My_Number/M*100];
% Aged 74
Y_data = Female_data_74(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_CHARLS_China(34);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_CHARLS_All_Female = [Number_Ht_07_China_CHARLS_All_Female My_Number];
Proportion_Ht_07_China_CHARLS_All_Female = [Proportion_Ht_07_China_CHARLS_All_Female My_Number/M*100];
% Aged 75
Y_data = Female_data_75(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_CHARLS_China(35);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_CHARLS_All_Female = [Number_Ht_07_China_CHARLS_All_Female My_Number];
Proportion_Ht_07_China_CHARLS_All_Female = [Proportion_Ht_07_China_CHARLS_All_Female My_Number/M*100];
% Aged 76
Y_data = Female_data_76(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_CHARLS_China(36);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_CHARLS_All_Female = [Number_Ht_07_China_CHARLS_All_Female My_Number];
Proportion_Ht_07_China_CHARLS_All_Female = [Proportion_Ht_07_China_CHARLS_All_Female My_Number/M*100];
% Aged 77
Y_data = Female_data_77(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_CHARLS_China(37);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_CHARLS_All_Female = [Number_Ht_07_China_CHARLS_All_Female My_Number];
Proportion_Ht_07_China_CHARLS_All_Female = [Proportion_Ht_07_China_CHARLS_All_Female My_Number/M*100];
% Aged 78
Y_data = Female_data_78(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_CHARLS_China(38);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_CHARLS_All_Female = [Number_Ht_07_China_CHARLS_All_Female My_Number];
Proportion_Ht_07_China_CHARLS_All_Female = [Proportion_Ht_07_China_CHARLS_All_Female My_Number/M*100];
% Aged 79
Y_data = Female_data_79(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_CHARLS_China(39);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_CHARLS_All_Female = [Number_Ht_07_China_CHARLS_All_Female My_Number];
Proportion_Ht_07_China_CHARLS_All_Female = [Proportion_Ht_07_China_CHARLS_All_Female My_Number/M*100];
% Aged 80
Y_data = Female_data_80(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_CHARLS_China(40);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_CHARLS_All_Female = [Number_Ht_07_China_CHARLS_All_Female My_Number];
Proportion_Ht_07_China_CHARLS_All_Female = [Proportion_Ht_07_China_CHARLS_All_Female My_Number/M*100];
% Aged 81
Y_data = Female_data_81(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_CHARLS_China(41);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_CHARLS_All_Female = [Number_Ht_07_China_CHARLS_All_Female My_Number];
Proportion_Ht_07_China_CHARLS_All_Female = [Proportion_Ht_07_China_CHARLS_All_Female My_Number/M*100];
% Aged 82
Y_data = Female_data_82(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_CHARLS_China(42);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_CHARLS_All_Female = [Number_Ht_07_China_CHARLS_All_Female My_Number];
Proportion_Ht_07_China_CHARLS_All_Female = [Proportion_Ht_07_China_CHARLS_All_Female My_Number/M*100];
% Aged 83
Y_data = Female_data_83(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_CHARLS_China(43);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_CHARLS_All_Female = [Number_Ht_07_China_CHARLS_All_Female My_Number];
Proportion_Ht_07_China_CHARLS_All_Female = [Proportion_Ht_07_China_CHARLS_All_Female My_Number/M*100];
% Aged 84
Y_data = Female_data_84(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_CHARLS_China(44);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_CHARLS_All_Female = [Number_Ht_07_China_CHARLS_All_Female My_Number];
Proportion_Ht_07_China_CHARLS_All_Female = [Proportion_Ht_07_China_CHARLS_All_Female My_Number/M*100];
% Aged 85
Y_data = Female_data_85(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_CHARLS_China(45);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_CHARLS_All_Female = [Number_Ht_07_China_CHARLS_All_Female My_Number];
Proportion_Ht_07_China_CHARLS_All_Female = [Proportion_Ht_07_China_CHARLS_All_Female My_Number/M*100];
% Aged 86
Y_data = Female_data_86(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_CHARLS_China(46);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_CHARLS_All_Female = [Number_Ht_07_China_CHARLS_All_Female My_Number];
Proportion_Ht_07_China_CHARLS_All_Female = [Proportion_Ht_07_China_CHARLS_All_Female My_Number/M*100];
% Aged 87
Y_data = Female_data_87(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_CHARLS_China(47);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_CHARLS_All_Female = [Number_Ht_07_China_CHARLS_All_Female My_Number];
Proportion_Ht_07_China_CHARLS_All_Female = [Proportion_Ht_07_China_CHARLS_All_Female My_Number/M*100];

% For Male
% Aged 41
Y_data = Male_data_41(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_CHARLS_China(1);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_CHARLS_All_Male = [Number_Ht_07_China_CHARLS_All_Male My_Number];
Proportion_Ht_07_China_CHARLS_All_Male = [Proportion_Ht_07_China_CHARLS_All_Male My_Number/M*100];
% Aged 42
Y_data = Male_data_42(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_CHARLS_China(2);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_CHARLS_All_Male = [Number_Ht_07_China_CHARLS_All_Male My_Number];
Proportion_Ht_07_China_CHARLS_All_Male = [Proportion_Ht_07_China_CHARLS_All_Male My_Number/M*100];
% Aged 43
Y_data = Male_data_43(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_CHARLS_China(3);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_CHARLS_All_Male = [Number_Ht_07_China_CHARLS_All_Male My_Number];
Proportion_Ht_07_China_CHARLS_All_Male = [Proportion_Ht_07_China_CHARLS_All_Male My_Number/M*100];
% Aged 44
Y_data = Male_data_44(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_CHARLS_China(4);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_CHARLS_All_Male = [Number_Ht_07_China_CHARLS_All_Male My_Number];
Proportion_Ht_07_China_CHARLS_All_Male = [Proportion_Ht_07_China_CHARLS_All_Male My_Number/M*100];
% Aged 45
Y_data = Male_data_45(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_CHARLS_China(5);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_CHARLS_All_Male = [Number_Ht_07_China_CHARLS_All_Male My_Number];
Proportion_Ht_07_China_CHARLS_All_Male = [Proportion_Ht_07_China_CHARLS_All_Male My_Number/M*100];
% Aged 46
Y_data = Male_data_46(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_CHARLS_China(6);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_CHARLS_All_Male = [Number_Ht_07_China_CHARLS_All_Male My_Number];
Proportion_Ht_07_China_CHARLS_All_Male = [Proportion_Ht_07_China_CHARLS_All_Male My_Number/M*100];
% Aged 47
Y_data = Male_data_47(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_CHARLS_China(7);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_CHARLS_All_Male = [Number_Ht_07_China_CHARLS_All_Male My_Number];
Proportion_Ht_07_China_CHARLS_All_Male = [Proportion_Ht_07_China_CHARLS_All_Male My_Number/M*100];
% Aged 48
Y_data = Male_data_48(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_CHARLS_China(8);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_CHARLS_All_Male = [Number_Ht_07_China_CHARLS_All_Male My_Number];
Proportion_Ht_07_China_CHARLS_All_Male = [Proportion_Ht_07_China_CHARLS_All_Male My_Number/M*100];
% Aged 49
Y_data = Male_data_49(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_CHARLS_China(9);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_CHARLS_All_Male = [Number_Ht_07_China_CHARLS_All_Male My_Number];
Proportion_Ht_07_China_CHARLS_All_Male = [Proportion_Ht_07_China_CHARLS_All_Male My_Number/M*100];
% Aged 50
Y_data = Male_data_50(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_CHARLS_China(10);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_CHARLS_All_Male = [Number_Ht_07_China_CHARLS_All_Male My_Number];
Proportion_Ht_07_China_CHARLS_All_Male = [Proportion_Ht_07_China_CHARLS_All_Male My_Number/M*100];
% Aged 51
Y_data = Male_data_51(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_CHARLS_China(11);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_CHARLS_All_Male = [Number_Ht_07_China_CHARLS_All_Male My_Number];
Proportion_Ht_07_China_CHARLS_All_Male = [Proportion_Ht_07_China_CHARLS_All_Male My_Number/M*100];
% Aged 52
Y_data = Male_data_52(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_CHARLS_China(12);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_CHARLS_All_Male = [Number_Ht_07_China_CHARLS_All_Male My_Number];
Proportion_Ht_07_China_CHARLS_All_Male = [Proportion_Ht_07_China_CHARLS_All_Male My_Number/M*100];
% Aged 53
Y_data = Male_data_53(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_CHARLS_China(13);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_CHARLS_All_Male = [Number_Ht_07_China_CHARLS_All_Male My_Number];
Proportion_Ht_07_China_CHARLS_All_Male = [Proportion_Ht_07_China_CHARLS_All_Male My_Number/M*100];
% Aged 54
Y_data = Male_data_54(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_CHARLS_China(14);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_CHARLS_All_Male = [Number_Ht_07_China_CHARLS_All_Male My_Number];
Proportion_Ht_07_China_CHARLS_All_Male = [Proportion_Ht_07_China_CHARLS_All_Male My_Number/M*100];
% Aged 55
Y_data = Male_data_55(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_CHARLS_China(15);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_CHARLS_All_Male = [Number_Ht_07_China_CHARLS_All_Male My_Number];
Proportion_Ht_07_China_CHARLS_All_Male = [Proportion_Ht_07_China_CHARLS_All_Male My_Number/M*100];
% Aged 56
Y_data = Male_data_56(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_CHARLS_China(16);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_CHARLS_All_Male = [Number_Ht_07_China_CHARLS_All_Male My_Number];
Proportion_Ht_07_China_CHARLS_All_Male = [Proportion_Ht_07_China_CHARLS_All_Male My_Number/M*100];
% Aged 57
Y_data = Male_data_57(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_CHARLS_China(17);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_CHARLS_All_Male = [Number_Ht_07_China_CHARLS_All_Male My_Number];
Proportion_Ht_07_China_CHARLS_All_Male = [Proportion_Ht_07_China_CHARLS_All_Male My_Number/M*100];
% Aged 58
Y_data = Male_data_58(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_CHARLS_China(18);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_CHARLS_All_Male = [Number_Ht_07_China_CHARLS_All_Male My_Number];
Proportion_Ht_07_China_CHARLS_All_Male = [Proportion_Ht_07_China_CHARLS_All_Male My_Number/M*100];
% Aged 59
Y_data = Male_data_59(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_CHARLS_China(19);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_CHARLS_All_Male = [Number_Ht_07_China_CHARLS_All_Male My_Number];
Proportion_Ht_07_China_CHARLS_All_Male = [Proportion_Ht_07_China_CHARLS_All_Male My_Number/M*100];
% Aged 60
Y_data = Male_data_60(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_CHARLS_China(20);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_CHARLS_All_Male = [Number_Ht_07_China_CHARLS_All_Male My_Number];
Proportion_Ht_07_China_CHARLS_All_Male = [Proportion_Ht_07_China_CHARLS_All_Male My_Number/M*100];
% Aged 61
Y_data = Male_data_61(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_CHARLS_China(21);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_CHARLS_All_Male = [Number_Ht_07_China_CHARLS_All_Male My_Number];
Proportion_Ht_07_China_CHARLS_All_Male = [Proportion_Ht_07_China_CHARLS_All_Male My_Number/M*100];
% Aged 62
Y_data = Male_data_62(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_CHARLS_China(22);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_CHARLS_All_Male = [Number_Ht_07_China_CHARLS_All_Male My_Number];
Proportion_Ht_07_China_CHARLS_All_Male = [Proportion_Ht_07_China_CHARLS_All_Male My_Number/M*100];
% Aged 63
Y_data = Male_data_63(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_CHARLS_China(23);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_CHARLS_All_Male = [Number_Ht_07_China_CHARLS_All_Male My_Number];
Proportion_Ht_07_China_CHARLS_All_Male = [Proportion_Ht_07_China_CHARLS_All_Male My_Number/M*100];
% Aged 64
Y_data = Male_data_64(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_CHARLS_China(24);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_CHARLS_All_Male = [Number_Ht_07_China_CHARLS_All_Male My_Number];
Proportion_Ht_07_China_CHARLS_All_Male = [Proportion_Ht_07_China_CHARLS_All_Male My_Number/M*100];
% Aged 65
Y_data = Male_data_65(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_CHARLS_China(25);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_CHARLS_All_Male = [Number_Ht_07_China_CHARLS_All_Male My_Number];
Proportion_Ht_07_China_CHARLS_All_Male = [Proportion_Ht_07_China_CHARLS_All_Male My_Number/M*100];
% Aged 66
Y_data = Male_data_66(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_CHARLS_China(26);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_CHARLS_All_Male = [Number_Ht_07_China_CHARLS_All_Male My_Number];
Proportion_Ht_07_China_CHARLS_All_Male = [Proportion_Ht_07_China_CHARLS_All_Male My_Number/M*100];
% Aged 67
Y_data = Male_data_67(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_CHARLS_China(27);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_CHARLS_All_Male = [Number_Ht_07_China_CHARLS_All_Male My_Number];
Proportion_Ht_07_China_CHARLS_All_Male = [Proportion_Ht_07_China_CHARLS_All_Male My_Number/M*100];
% Aged 68
Y_data = Male_data_68(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_CHARLS_China(28);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_CHARLS_All_Male = [Number_Ht_07_China_CHARLS_All_Male My_Number];
Proportion_Ht_07_China_CHARLS_All_Male = [Proportion_Ht_07_China_CHARLS_All_Male My_Number/M*100];
% Aged 69
Y_data = Male_data_69(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_CHARLS_China(29);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_CHARLS_All_Male = [Number_Ht_07_China_CHARLS_All_Male My_Number];
Proportion_Ht_07_China_CHARLS_All_Male = [Proportion_Ht_07_China_CHARLS_All_Male My_Number/M*100];
% Aged 70
Y_data = Male_data_70(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_CHARLS_China(30);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_CHARLS_All_Male = [Number_Ht_07_China_CHARLS_All_Male My_Number];
Proportion_Ht_07_China_CHARLS_All_Male = [Proportion_Ht_07_China_CHARLS_All_Male My_Number/M*100];
% Aged 71
Y_data = Male_data_71(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_CHARLS_China(31);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_CHARLS_All_Male = [Number_Ht_07_China_CHARLS_All_Male My_Number];
Proportion_Ht_07_China_CHARLS_All_Male = [Proportion_Ht_07_China_CHARLS_All_Male My_Number/M*100];
% Aged 72
Y_data = Male_data_72(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_CHARLS_China(32);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_CHARLS_All_Male = [Number_Ht_07_China_CHARLS_All_Male My_Number];
Proportion_Ht_07_China_CHARLS_All_Male = [Proportion_Ht_07_China_CHARLS_All_Male My_Number/M*100];
% Aged 73
Y_data = Male_data_73(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_CHARLS_China(33);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_CHARLS_All_Male = [Number_Ht_07_China_CHARLS_All_Male My_Number];
Proportion_Ht_07_China_CHARLS_All_Male = [Proportion_Ht_07_China_CHARLS_All_Male My_Number/M*100];
% Aged 74
Y_data = Male_data_74(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_CHARLS_China(34);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_CHARLS_All_Male = [Number_Ht_07_China_CHARLS_All_Male My_Number];
Proportion_Ht_07_China_CHARLS_All_Male = [Proportion_Ht_07_China_CHARLS_All_Male My_Number/M*100];
% Aged 75
Y_data = Male_data_75(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_CHARLS_China(35);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_CHARLS_All_Male = [Number_Ht_07_China_CHARLS_All_Male My_Number];
Proportion_Ht_07_China_CHARLS_All_Male = [Proportion_Ht_07_China_CHARLS_All_Male My_Number/M*100];
% Aged 76
Y_data = Male_data_76(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_CHARLS_China(36);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_CHARLS_All_Male = [Number_Ht_07_China_CHARLS_All_Male My_Number];
Proportion_Ht_07_China_CHARLS_All_Male = [Proportion_Ht_07_China_CHARLS_All_Male My_Number/M*100];
% Aged 77
Y_data = Male_data_77(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_CHARLS_China(37);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_CHARLS_All_Male = [Number_Ht_07_China_CHARLS_All_Male My_Number];
Proportion_Ht_07_China_CHARLS_All_Male = [Proportion_Ht_07_China_CHARLS_All_Male My_Number/M*100];
% Aged 78
Y_data = Male_data_78(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_CHARLS_China(38);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_CHARLS_All_Male = [Number_Ht_07_China_CHARLS_All_Male My_Number];
Proportion_Ht_07_China_CHARLS_All_Male = [Proportion_Ht_07_China_CHARLS_All_Male My_Number/M*100];
% Aged 79
Y_data = Male_data_79(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_CHARLS_China(39);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_CHARLS_All_Male = [Number_Ht_07_China_CHARLS_All_Male My_Number];
Proportion_Ht_07_China_CHARLS_All_Male = [Proportion_Ht_07_China_CHARLS_All_Male My_Number/M*100];
% Aged 80
Y_data = Male_data_80(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_CHARLS_China(40);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_CHARLS_All_Male = [Number_Ht_07_China_CHARLS_All_Male My_Number];
Proportion_Ht_07_China_CHARLS_All_Male = [Proportion_Ht_07_China_CHARLS_All_Male My_Number/M*100];
% Aged 81
Y_data = Male_data_81(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_CHARLS_China(41);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_CHARLS_All_Male = [Number_Ht_07_China_CHARLS_All_Male My_Number];
Proportion_Ht_07_China_CHARLS_All_Male = [Proportion_Ht_07_China_CHARLS_All_Male My_Number/M*100];
% Aged 82
Y_data = Male_data_82(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_CHARLS_China(42);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_CHARLS_All_Male = [Number_Ht_07_China_CHARLS_All_Male My_Number];
Proportion_Ht_07_China_CHARLS_All_Male = [Proportion_Ht_07_China_CHARLS_All_Male My_Number/M*100];
% Aged 83
Y_data = Male_data_83(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_CHARLS_China(43);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_CHARLS_All_Male = [Number_Ht_07_China_CHARLS_All_Male My_Number];
Proportion_Ht_07_China_CHARLS_All_Male = [Proportion_Ht_07_China_CHARLS_All_Male My_Number/M*100];
% Aged 84
Y_data = Male_data_84(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_CHARLS_China(44);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_CHARLS_All_Male = [Number_Ht_07_China_CHARLS_All_Male My_Number];
Proportion_Ht_07_China_CHARLS_All_Male = [Proportion_Ht_07_China_CHARLS_All_Male My_Number/M*100];
% Aged 85
Y_data = Male_data_85(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_CHARLS_China(45);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_CHARLS_All_Male = [Number_Ht_07_China_CHARLS_All_Male My_Number];
Proportion_Ht_07_China_CHARLS_All_Male = [Proportion_Ht_07_China_CHARLS_All_Male My_Number/M*100];
% Aged 86
Y_data = Male_data_86(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_CHARLS_China(46);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_CHARLS_All_Male = [Number_Ht_07_China_CHARLS_All_Male My_Number];
Proportion_Ht_07_China_CHARLS_All_Male = [Proportion_Ht_07_China_CHARLS_All_Male My_Number/M*100];
% Aged 87
Y_data = Male_data_87(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_CHARLS_China(47);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_07_China_CHARLS_All_Male = [Number_Ht_07_China_CHARLS_All_Male My_Number];
Proportion_Ht_07_China_CHARLS_All_Male = [Proportion_Ht_07_China_CHARLS_All_Male My_Number/M*100];

%% 08-Japan
Female_data = xlsread('./Raw data/08-Japan/Japanese_1_8.xlsx','Female','B:D'); % Age	Height(cm)	Weight(Kg)
Male_data = xlsread('./Raw data/08-Japan/Japanese_1_8.xlsx','Male','B:D'); % Age	Height(cm)	Weight(Kg)
% Stratified by age and gender
Female_data_1 = [];
Female_data_2 = [];
Female_data_3 = [];
Female_data_4 = [];
Female_data_5 = [];
Female_data_6 = [];
Female_data_7 = [];
Female_data_8 = [];

Male_data_1 = [];
Male_data_2 = [];
Male_data_3 = [];
Male_data_4 = [];
Male_data_5 = [];
Male_data_6 = [];
Male_data_7 = [];
Male_data_8 = [];

% For Female
[M N] = size(Female_data); % Height (cm); Weight (Kg)
for i=1:M
    if Female_data(i,1) == 1
        Female_data_1 = [Female_data_1;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 2
        Female_data_2 = [Female_data_2;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 3
        Female_data_3 = [Female_data_3;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 4
        Female_data_4 = [Female_data_4;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 5
        Female_data_5 = [Female_data_5;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 6
        Female_data_6 = [Female_data_6;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 7
        Female_data_7 = [Female_data_7;Female_data(i,2) Female_data(i,3)];
    end
    if Female_data(i,1) == 8
        Female_data_8 = [Female_data_8;Female_data(i,2) Female_data(i,3)];
    end
end

% For Male
[M N] = size(Male_data); % Height (cm); Weight (Kg)
for i=1:M
    if Male_data(i,1) == 1
        Male_data_1 = [Male_data_1;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 2
        Male_data_2 = [Male_data_2;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 3
        Male_data_3 = [Male_data_3;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 4
        Male_data_4 = [Male_data_4;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 5
        Male_data_5 = [Male_data_5;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 6
        Male_data_6 = [Male_data_6;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 7
        Male_data_7 = [Male_data_7;Male_data(i,2) Male_data(i,3)];
    end
    if Male_data(i,1) == 8
        Male_data_8 = [Male_data_8;Male_data(i,2) Male_data(i,3)];
    end
end

% For 08-Japan
load('All coefficients\08-Japan\Coefficients_a_and_b_c1_Japan.mat')
% upper limit for height
Age_08_Japan = 1:8;
Number_Ht_08_Japan_Female = []; % The number of individuals whose height exceeds the theoretical limit
Number_Ht_08_Japan_Male = [];
Proportion_Ht_08_Japan_Female = []; % The proportion of individuals whose height exceeds the theoretical limit
Proportion_Ht_08_Japan_Male = [];

% For Female
% Aged 1
Y_data = Female_data_1(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_Japanese_1_8(1);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_08_Japan_Female = [Number_Ht_08_Japan_Female My_Number];
Proportion_Ht_08_Japan_Female = [Proportion_Ht_08_Japan_Female My_Number/M*100];
% Aged 2
Y_data = Female_data_2(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_Japanese_1_8(2);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_08_Japan_Female = [Number_Ht_08_Japan_Female My_Number];
Proportion_Ht_08_Japan_Female = [Proportion_Ht_08_Japan_Female My_Number/M*100];
% Aged 3
Y_data = Female_data_3(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_Japanese_1_8(3);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_08_Japan_Female = [Number_Ht_08_Japan_Female My_Number];
Proportion_Ht_08_Japan_Female = [Proportion_Ht_08_Japan_Female My_Number/M*100];
% Aged 4
Y_data = Female_data_4(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_Japanese_1_8(4);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_08_Japan_Female = [Number_Ht_08_Japan_Female My_Number];
Proportion_Ht_08_Japan_Female = [Proportion_Ht_08_Japan_Female My_Number/M*100];
% Aged 5
Y_data = Female_data_5(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_Japanese_1_8(5);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_08_Japan_Female = [Number_Ht_08_Japan_Female My_Number];
Proportion_Ht_08_Japan_Female = [Proportion_Ht_08_Japan_Female My_Number/M*100];
% Aged 6
Y_data = Female_data_6(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_Japanese_1_8(6);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_08_Japan_Female = [Number_Ht_08_Japan_Female My_Number];
Proportion_Ht_08_Japan_Female = [Proportion_Ht_08_Japan_Female My_Number/M*100];
% Aged 7
Y_data = Female_data_7(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_Japanese_1_8(7);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_08_Japan_Female = [Number_Ht_08_Japan_Female My_Number];
Proportion_Ht_08_Japan_Female = [Proportion_Ht_08_Japan_Female My_Number/M*100];
% Aged 8
Y_data = Female_data_8(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Female_1_Japanese_1_8(8);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_08_Japan_Female = [Number_Ht_08_Japan_Female My_Number];
Proportion_Ht_08_Japan_Female = [Proportion_Ht_08_Japan_Female My_Number/M*100];

% For Male
% Aged 1
Y_data = Male_data_1(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_Japanese_1_8(1);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_08_Japan_Male = [Number_Ht_08_Japan_Male My_Number];
Proportion_Ht_08_Japan_Male = [Proportion_Ht_08_Japan_Male My_Number/M*100];
% Aged 2
Y_data = Male_data_2(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_Japanese_1_8(2);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_08_Japan_Male = [Number_Ht_08_Japan_Male My_Number];
Proportion_Ht_08_Japan_Male = [Proportion_Ht_08_Japan_Male My_Number/M*100];
% Aged 3
Y_data = Male_data_3(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_Japanese_1_8(3);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_08_Japan_Male = [Number_Ht_08_Japan_Male My_Number];
Proportion_Ht_08_Japan_Male = [Proportion_Ht_08_Japan_Male My_Number/M*100];
% Aged 4
Y_data = Male_data_4(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_Japanese_1_8(4);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_08_Japan_Male = [Number_Ht_08_Japan_Male My_Number];
Proportion_Ht_08_Japan_Male = [Proportion_Ht_08_Japan_Male My_Number/M*100];
% Aged 5
Y_data = Male_data_5(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_Japanese_1_8(5);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_08_Japan_Male = [Number_Ht_08_Japan_Male My_Number];
Proportion_Ht_08_Japan_Male = [Proportion_Ht_08_Japan_Male My_Number/M*100];
% Aged 6
Y_data = Male_data_6(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_Japanese_1_8(6);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_08_Japan_Male = [Number_Ht_08_Japan_Male My_Number];
Proportion_Ht_08_Japan_Male = [Proportion_Ht_08_Japan_Male My_Number/M*100];
% Aged 7
Y_data = Male_data_7(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_Japanese_1_8(7);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_08_Japan_Male = [Number_Ht_08_Japan_Male My_Number];
Proportion_Ht_08_Japan_Male = [Proportion_Ht_08_Japan_Male My_Number/M*100];
% Aged 8
Y_data = Male_data_8(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_b_Male_1_Japanese_1_8(8);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_08_Japan_Male = [Number_Ht_08_Japan_Male My_Number];
Proportion_Ht_08_Japan_Male = [Proportion_Ht_08_Japan_Male My_Number/M*100];

%% 09-Bangladesh
Female_data = xlsread('./Raw data/09-Bangladesh/Bangladesh_2011_14.xlsx','Female','B:D'); % Age	Height(cm)	Weight(Kg)
% Stratified by age and gender
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

% For Female
[M N] = size(Female_data); % Height (cm); Weight (Kg)
for i=1:M
    if Female_data(i,1) == 10
        Female_data_10 = [Female_data_10;Female_data(i,2) Female_data(i,3)];
    end
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
end

% For 09-Bangladesh
load('All coefficients\09-Bangladesh\Coefficients_a_and_b_c1_Bangladesh.mat')
% upper limit for height
Age_09_Bangladesh = 10:19;
Number_Ht_09_Bangladesh_Female = []; % The number of individuals whose height exceeds the theoretical limit

Proportion_Ht_09_Bangladesh_Female = []; % The proportion of individuals whose height exceeds the theoretical limit

% For Female
% Aged 10
Y_data = Female_data_10(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_a_Female_1_Bangladesh_2011_14(1);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_09_Bangladesh_Female = [Number_Ht_09_Bangladesh_Female My_Number];
Proportion_Ht_09_Bangladesh_Female = [Proportion_Ht_09_Bangladesh_Female My_Number/M*100];
% Aged 11
Y_data = Female_data_11(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_a_Female_1_Bangladesh_2011_14(2);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_09_Bangladesh_Female = [Number_Ht_09_Bangladesh_Female My_Number];
Proportion_Ht_09_Bangladesh_Female = [Proportion_Ht_09_Bangladesh_Female My_Number/M*100];
% Aged 12
Y_data = Female_data_12(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_a_Female_1_Bangladesh_2011_14(3);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_09_Bangladesh_Female = [Number_Ht_09_Bangladesh_Female My_Number];
Proportion_Ht_09_Bangladesh_Female = [Proportion_Ht_09_Bangladesh_Female My_Number/M*100];
% Aged 13
Y_data = Female_data_13(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_a_Female_1_Bangladesh_2011_14(4);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_09_Bangladesh_Female = [Number_Ht_09_Bangladesh_Female My_Number];
Proportion_Ht_09_Bangladesh_Female = [Proportion_Ht_09_Bangladesh_Female My_Number/M*100];
% Aged 14
Y_data = Female_data_14(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_a_Female_1_Bangladesh_2011_14(5);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_09_Bangladesh_Female = [Number_Ht_09_Bangladesh_Female My_Number];
Proportion_Ht_09_Bangladesh_Female = [Proportion_Ht_09_Bangladesh_Female My_Number/M*100];
% Aged 15
Y_data = Female_data_15(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_a_Female_1_Bangladesh_2011_14(6);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_09_Bangladesh_Female = [Number_Ht_09_Bangladesh_Female My_Number];
Proportion_Ht_09_Bangladesh_Female = [Proportion_Ht_09_Bangladesh_Female My_Number/M*100];
% Aged 16
Y_data = Female_data_16(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_a_Female_1_Bangladesh_2011_14(7);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_09_Bangladesh_Female = [Number_Ht_09_Bangladesh_Female My_Number];
Proportion_Ht_09_Bangladesh_Female = [Proportion_Ht_09_Bangladesh_Female My_Number/M*100];
% Aged 17
Y_data = Female_data_17(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_a_Female_1_Bangladesh_2011_14(8);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_09_Bangladesh_Female = [Number_Ht_09_Bangladesh_Female My_Number];
Proportion_Ht_09_Bangladesh_Female = [Proportion_Ht_09_Bangladesh_Female My_Number/M*100];
% Aged 18
Y_data = Female_data_18(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_a_Female_1_Bangladesh_2011_14(9);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_09_Bangladesh_Female = [Number_Ht_09_Bangladesh_Female My_Number];
Proportion_Ht_09_Bangladesh_Female = [Proportion_Ht_09_Bangladesh_Female My_Number/M*100];
% Aged 19
Y_data = Female_data_19(:,1)/100; % Height (m)
Ht_Limit = 1/Coefficient_a_Female_1_Bangladesh_2011_14(10);
[M N] = size(Y_data);
My_Number = 0;
for i = 1:M
    if Y_data(i) > Ht_Limit
        My_Number = My_Number+1;
    end
end
Number_Ht_09_Bangladesh_Female = [Number_Ht_09_Bangladesh_Female My_Number];
Proportion_Ht_09_Bangladesh_Female = [Proportion_Ht_09_Bangladesh_Female My_Number/M*100];

%% We show the results
% Proportion
% For Female
subplot(2,1,1)
hold on;

% 01-NHANES
X_data = Age_01_NHANES;
Y_data = Proportion_Ht_01_NHANES_Female;
[fitobject,gof] = fit(X_data',Y_data','smooth');
X = min(X_data):(max(X_data)-min(X_data))/25:max(X_data);
Y = fitobject(X);
Y = Y';
H1 = plot(X,Y,'linewidth',My_LineWidth,'Color',My_Colors_9(1,:));

% 02-ENSAUNT
X_data = Age_02_ENSAUNT;
Y_data = Proportion_Ht_02_ENSAUNT_Female;
[fitobject,gof] = fit(X_data',Y_data','smooth');
X = min(X_data):(max(X_data)-min(X_data))/25:max(X_data);
Y = fitobject(X);
Y = Y';
H2 = plot(X,Y,'linewidth',My_LineWidth,'Color',My_Colors_9(2,:));

% 03-KNHANES
X_data = Age_03_KNHANES;
Y_data = Proportion_Ht_03_KNHANES_Female;
[fitobject,gof] = fit(X_data',Y_data','smooth');
X = min(X_data):(max(X_data)-min(X_data))/25:max(X_data);
Y = fitobject(X);
Y = Y';
H3 = plot(X,Y,'linewidth',My_LineWidth,'Color',My_Colors_9(3,:));

% 05-KSPF
X_data = Age_05_KSPF;
Y_data = Proportion_Ht_05_KSPF_Female;
[fitobject,gof] = fit(X_data',Y_data','smooth');
X = min(X_data):(max(X_data)-min(X_data))/25:max(X_data);
Y = fitobject(X);
Y = Y';
H5 = plot(X,Y,'linewidth',My_LineWidth,'Color',My_Colors_9(5,:));

% 06-ELSH-Brasil
X_data = Age_06_ELSH_Brasil;
Y_data = Proportion_Ht_06_ELSH_Brasil_Female;
[fitobject,gof] = fit(X_data',Y_data','smooth');
X = min(X_data):(max(X_data)-min(X_data))/25:max(X_data);
Y = fitobject(X);
Y = Y';
H6 = plot(X,Y,'linewidth',My_LineWidth,'Color',My_Colors_9(6,:));

% 07-China
% Jilin_China
X_data = Age_07_China_Jilin_China;
Y_data = Proportion_Ht_07_China_Jilin_China_Female;
[fitobject,gof] = fit(X_data',Y_data','smooth');
X = min(X_data):(max(X_data)-min(X_data))/25:max(X_data);
Y = fitobject(X);
Y = Y';
H7 = plot(X,Y,'linewidth',My_LineWidth,'Color',My_Colors_9(7,:));
% Chongqing_6_21_China
X_data = Age_07_China_Chongqing_6_21_China;
Y_data = Proportion_Ht_07_China_Chongqing_6_21_China_Female;
H7 = plot(X,Y,'linewidth',My_LineWidth,'Color',My_Colors_9(7,:));
% Chongqing_6_21_China
X_data = Age_07_China_BCCPDS_7_21_China;
Y_data = Proportion_Ht_07_China_BCCPDS_7_21_China_Female;
[fitobject,gof] = fit(X_data',Y_data','smooth');
X = min(X_data):(max(X_data)-min(X_data))/25:max(X_data);
Y = fitobject(X);
Y = Y';
H7 = plot(X,Y,'linewidth',My_LineWidth,'Color',My_Colors_9(7,:));
% CHARLS All
X_data = Age_07_China_CHARLS_All;
Y_data = Proportion_Ht_07_China_CHARLS_All_Female;
[fitobject,gof] = fit(X_data',Y_data','smooth');
X = min(X_data):(max(X_data)-min(X_data))/25:max(X_data);
Y = fitobject(X);
Y = Y';
H7 = plot(X,Y,'linewidth',My_LineWidth,'Color',My_Colors_9(7,:));

% 08-Japan
X_data = Age_08_Japan;
Y_data = Proportion_Ht_08_Japan_Female;
[fitobject,gof] = fit(X_data',Y_data','smooth');
X = min(X_data):(max(X_data)-min(X_data))/25:max(X_data);
Y = fitobject(X);
Y = Y';
H8 = plot(X,Y,'linewidth',My_LineWidth,'Color',My_Colors_9(8,:));

% 09-Bangladesh
X_data = Age_09_Bangladesh;
Y_data = Proportion_Ht_09_Bangladesh_Female;
[fitobject,gof] = fit(X_data',Y_data','smooth');
X = min(X_data):(max(X_data)-min(X_data))/25:max(X_data);
Y = fitobject(X);
Y = Y';
H9 = plot(X,Y,'linewidth',My_LineWidth,'Color',My_Colors_9(9,:));

% For Male
subplot(2,1,2)
hold on;

% 01-NHANES
X_data = Age_01_NHANES;
Y_data = Proportion_Ht_01_NHANES_Male;
[fitobject,gof] = fit(X_data',Y_data','smooth');
X = min(X_data):(max(X_data)-min(X_data))/25:max(X_data);
Y = fitobject(X);
Y = Y';
H1 = plot(X,Y,'linewidth',My_LineWidth,'Color',My_Colors_9(1,:));

% 02-ENSAUNT
X_data = Age_02_ENSAUNT;
Y_data = Proportion_Ht_02_ENSAUNT_Male;
[fitobject,gof] = fit(X_data',Y_data','smooth');
X = min(X_data):(max(X_data)-min(X_data))/25:max(X_data);
Y = fitobject(X);
Y = Y';
H2 = plot(X,Y,'linewidth',My_LineWidth,'Color',My_Colors_9(2,:));

% 03-KNHANES
X_data = Age_03_KNHANES;
Y_data = Proportion_Ht_03_KNHANES_Male;
[fitobject,gof] = fit(X_data',Y_data','smooth');
X = min(X_data):(max(X_data)-min(X_data))/25:max(X_data);
Y = fitobject(X);
Y = Y';
H3 = plot(X,Y,'linewidth',My_LineWidth,'Color',My_Colors_9(3,:));

% 05-KSPF
X_data = Age_05_KSPF;
Y_data = Proportion_Ht_05_KSPF_Male;
[fitobject,gof] = fit(X_data',Y_data','smooth');
X = min(X_data):(max(X_data)-min(X_data))/25:max(X_data);
Y = fitobject(X);
Y = Y';
H5 = plot(X,Y,'linewidth',My_LineWidth,'Color',My_Colors_9(5,:));

% 06-ELSH-Brasil
X_data = Age_06_ELSH_Brasil;
Y_data = Proportion_Ht_06_ELSH_Brasil_Male;
[fitobject,gof] = fit(X_data',Y_data','smooth');
X = min(X_data):(max(X_data)-min(X_data))/25:max(X_data);
Y = fitobject(X);
Y = Y';
H6 = plot(X,Y,'linewidth',My_LineWidth,'Color',My_Colors_9(6,:));

% 07-China
% Jilin_China
X_data = Age_07_China_Jilin_China;
Y_data = Proportion_Ht_07_China_Jilin_China_Male;
[fitobject,gof] = fit(X_data',Y_data','smooth');
X = min(X_data):(max(X_data)-min(X_data))/25:max(X_data);
Y = fitobject(X);
Y = Y';
H7 = plot(X,Y,'linewidth',My_LineWidth,'Color',My_Colors_9(7,:));
% Chongqing_6_21_China
X_data = Age_07_China_Chongqing_6_21_China;
Y_data = Proportion_Ht_07_China_Chongqing_6_21_China_Male;
[fitobject,gof] = fit(X_data',Y_data','smooth');
X = min(X_data):(max(X_data)-min(X_data))/25:max(X_data);
Y = fitobject(X);
Y = Y';
H7 = plot(X,Y,'linewidth',My_LineWidth,'Color',My_Colors_9(7,:));
% Chongqing_6_21_China
X_data = Age_07_China_BCCPDS_7_21_China;
Y_data = Proportion_Ht_07_China_BCCPDS_7_21_China_Male;
[fitobject,gof] = fit(X_data',Y_data','smooth');
X = min(X_data):(max(X_data)-min(X_data))/25:max(X_data);
Y = fitobject(X);
Y = Y';
H7 = plot(X,Y,'linewidth',My_LineWidth,'Color',My_Colors_9(7,:));
% CHARLS All
X_data = Age_07_China_CHARLS_All;
Y_data = Proportion_Ht_07_China_CHARLS_All_Male;
[fitobject,gof] = fit(X_data',Y_data','smooth');
X = min(X_data):(max(X_data)-min(X_data))/25:max(X_data);
Y = fitobject(X);
Y = Y';
H7 = plot(X,Y,'linewidth',My_LineWidth,'Color',My_Colors_9(7,:));

% 08-Japan
X_data = Age_08_Japan;
Y_data = Proportion_Ht_08_Japan_Male;
[fitobject,gof] = fit(X_data',Y_data','smooth');
X = min(X_data):(max(X_data)-min(X_data))/25:max(X_data);
Y = fitobject(X);
Y = Y';
H8 = plot(X,Y,'linewidth',My_LineWidth,'Color',My_Colors_9(8,:));

H1 = plot([0 0],[-1 -1],'linewidth',My_LineWidth,'Color',My_Colors_9(1,:));
H2 = plot([0 0],[-1 -1],'linewidth',My_LineWidth,'Color',My_Colors_9(2,:));
H3 = plot([0 0],[-1 -1],'linewidth',My_LineWidth,'Color',My_Colors_9(3,:));
H4 = plot([0 0],[-1 -1],'linewidth',My_LineWidth,'Color',My_Colors_9(4,:));
H5 = plot([0 0],[-1 -1],'linewidth',My_LineWidth,'Color',My_Colors_9(5,:));
H6 = plot([0 0],[-1 -1],'linewidth',My_LineWidth,'Color',My_Colors_9(6,:));
H7 = plot([0 0],[-1 -1],'linewidth',My_LineWidth,'Color',My_Colors_9(7,:));
H8 = plot([0 0],[-1 -1],'linewidth',My_LineWidth,'Color',My_Colors_9(8,:));
H9 = plot([0 0],[-1 -1],'linewidth',My_LineWidth,'Color',My_Colors_9(9,:));

Legend = legend([H1 H2 H3 H4 H5 H6 H7 H8 H9],...
    '01-NHANES','02-ENSAUNT','03-KNHANES','04-SHARE','05-KSPF','06-ELSH-Brasil','07-China','08-Japan','09-Bangladesh',...
    'Location','NorthWest');
set(Legend,'Box','off')

%{
% We save the data
save('Figure_3C.mat',...
    'Age_Total_ALL','Proportion_Ht_Total_ALL_Female','Proportion_Ht_Total_ALL_Male',...
    'Number_Ht_Total_ALL_Female','Number_Ht_Total_ALL_Male',...
    'Age_America_ALL','Proportion_Ht_America_ALL_Female','Proportion_Ht_America_ALL_Male',...
    'Number_Ht_America_ALL_Female','Number_Ht_America_ALL_Male',...
    'Age_Asia_ALL','Proportion_Ht_Asia_ALL_Female','Proportion_Ht_Asia_ALL_Male',...
    'Number_Ht_Asia_ALL_Female','Number_Ht_Asia_ALL_Male',...
    'Age_Europe_ALL','Proportion_Ht_Europe_ALL_Female','Proportion_Ht_Europe_ALL_Male',...
    'Number_Ht_Europe_ALL_Female','Number_Ht_Europe_ALL_Male');
%}
toc;
