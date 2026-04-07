%% Source codes for Fig. S8(A)
%% We compared the fitting effects of different fitting models on the weight-height 
% data of a given gender and age group by using parameters such as goodness-of-fit (r2)
% Note: We uniformly use height to predict weight.
%
% The Allometric model: Weight = m*Height^k; ln(Weight) = ln(m) + k*ln(Height)
% The Hyperbolic model: Weight = a + b*Weight*Height; Height = (Weight-a)/(b*Weight)
% The Exponential model: Weight = p · exp(Height · q); ln(Weight) = ln(p) + Height · q
% The Cube model: Weight = k30 + k3 * Height^3
% The Quadratic model: Weight = k20 + k2 * Height^2
% The Linear model: Weight = k10 + k1 * Height
% The Binomial model: Weight = k40 + k41*Height^2 + k42*Height
% The Trinomial model: Weight = k50 + k51*Height^3 + k52*Height^2 + k53*Height
% 
% Important Note: It took approximately 120 seconds to run this code on the author's own computer.
% Important Note: In the regression, we do not impose the biologically implausible constraint that weight must be zero when height is zero.
% Forcing this constraint would result in substantially negative R² for the linear, quadratic, and cubic models.
tic;
%{
%% Parameter information for drawing
My_mark_type = '.';
My_LineWidth = 2;
My_LineWidth_1 = 1;
My_FontName = 'Times New Roman';
My_fontSize = 12;
My_Alpha = 0.2; % transparency of the filled area
My_MarkerSize = 2;
Edgealpha = 0;
Alpha = 0.2;
My_Percentile = [5 50 95]; % quantile distribution
Band_Width = 1;
%% Colors
load('My_Colors.mat')
%% Load and segment the data by age and gender
%
%% Total_ALL
Female_data = xlsread('./Raw_data/Total_ALL.xlsx','Female'); % No.	Age	Height(cm)	Weight(Kg)
Male_data = xlsread('./Raw_data/Total_ALL.xlsx','Male'); % No. Age	Height(cm)	Weight(Kg)
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
%%
FF = figure;
% For Female
% Preparing the data
Height_Data = Female_data_8(:,1)/100; % Raw data of Height in m;
Weight_Data = Female_data_8(:,2); % Raw data of Weight in Kg;
Title_Text = 'Female (Age = 8)';

% Fitting
% 01 - Allometric model: Weight = m*Height^k; ln(Weight) = ln(m) + k*ln(Height)
log10_Height = log10(Height_Data); % log10(Height)
log10_Weight = log10(Weight_Data); % log10(Weight)
BB = polyfit(log10_Height,log10_Weight,1); % linear fitting: ln(Weight) = ln(m) + k*ln(Height)
m = 10^BB(2);
k = BB(1);

% 02 - Hyperbolic model: Weight = a + b*Weight*Height; Weight = a/(1-b*Height); Height = (Weight-a)/(b*Weight)
Weight_X_Height_Data = Weight_Data.*Height_Data; % Weight*Height
CC = polyfit(Weight_X_Height_Data,Weight_Data,1); % linear fitting: Weight = a + b*Weight*Height
a = CC(2);
b = CC(1);

% 03 - Exponential model: Weight = p · exp(Height · q); ln(Weight) = ln(p) + Height · q
ln_Weight = log(Weight_Data); % ln(Weight)
ln_Height = log(Height_Data); % ln(Height)
DD = polyfit(Height_Data,ln_Weight,1); % ln(Weight) = ln(p) + Height · q
p = exp(DD(2));
q = DD(1);

% 04 - Cube model: Weight = k30 + k3 * Height^3
Height_Cube = Height_Data.^3;
EE = polyfit(Height_Cube,Weight_Data,1); % Weight = k30 + k3 * Height^3
k30 = EE(2);
k3 = EE(1);

% 05 - Quadratic model: Weight = k20 + k2 * Height^2
Height_Quadratic = Height_Data.^2;
FF = polyfit(Height_Quadratic,Weight_Data,1); % Weight = k20 + k2 * Height^2
k20 = FF(2);
k2 = FF(1);

% 06 - Linear model: Weight = k10 + k1 * Height
GG = polyfit(Height_Data,Weight_Data,1); % Weight = k10 + k1 * Height
k10 = GG(2);
k1 = GG(1);

% 07 - Binomial model: Weight = k40 + k41*Height^2 + k42*Height
HH = polyfit(Height_Data,Weight_Data,2); % Weight = k40 + k41*Height^2 + k42*Height
k40 = HH(3);
k41 = HH(1);
k42 = HH(2);

% 08 - Trinomial model: Weight = k50 + k51*Height^3 + k52*Height^2 + k53*Height
II = polyfit(Height_Data,Weight_Data,3); % Weight = k50 + k51*Height^3 + k52*Height^2 + k53*Height
k50 = II(4);
k51 = II(1);
k52 = II(2);
k53 = II(3);

% Calculatting the R-squared
% R-squared is calculated using the formula R-squared = 1 - SSE/SST;
% SSE stands for Sum of Squared Errors; SST stands for Total Sum of Squares

% 01 - Allometric model: Weight = m*Height^k; ln(Weight) = ln(m) + k*ln(Height)
SSE_Allometric = 0; % SSE value
SST_Allometric = 0; % SST value
Mean_Weight = mean(Weight_Data); % the mean of Weight
[M N] = size(Height_Data);
for i = 1:M
    % the difference between the actual value and the predicted value.
    Residual = Weight_Data(i) - m*Height_Data(i)^k; % Weight = m*Height^k
    SSE_Allometric = SSE_Allometric + Residual^2; % SSE
    SST_Allometric = SST_Allometric + (Weight_Data(i)-Mean_Weight)^2; % SST
end
R2_Allometric_Female = 1 - SSE_Allometric/SST_Allometric; % the R-squared

% 02 - The Hyperbolic model: Weight = a + b*Weight*Height; Height = (Weight-a)/(b*Weight);
% We use the weight to predict height.
SSE_Hyperbolic = 0; % SSE value
SST_Hyperbolic = 0; % SST value
Mean_Height = mean(Height_Data); % the mean of weight
[M N] = size(Weight_Data);
for i = 1:M
    % the difference between the actual value and the predicted value.
    Residual = Height_Data(i) - (Weight_Data(i)-a)./(b*Weight_Data(i)); % Height = (Weight-a)/(b*Weight);
    SSE_Hyperbolic = SSE_Hyperbolic + Residual^2; % SSE
    SST_Hyperbolic = SST_Hyperbolic + (Height_Data(i)-Mean_Height)^2; % SST
end
R2_Hyperbolic_Female = 1 - SSE_Hyperbolic/SST_Hyperbolic; % the R-squared

% 03 - Exponential model: Weight = p · exp(Height · q); ln(Weight) = ln(p) + Height · q
SSE_Exponential = 0; % SSE value
SST_Exponential = 0; % SST value
Mean_Weight = mean(Weight_Data); % the mean of weight
[M N] = size(Height_Data);
for i = 1:M
    % the difference between the actual value and the predicted value.
    Residual = Weight_Data(i) - (p*exp(Height_Data(i)*q)); % Weight = p · exp(Height · q)
    SSE_Exponential = SSE_Exponential + Residual^2; % SSE
    SST_Exponential = SST_Exponential + (Weight_Data(i)-Mean_Weight)^2; % SST
end
R2_Exponential_Female = 1 - SSE_Exponential/SST_Exponential; % the R-squared

% 04 - Cube model: Weight = k30 + k3 * Height^3
SSE_Cube = 0; % SSE value
SST_Cube = 0; % SST value
Mean_Weight = mean(Weight_Data); % the mean of weight
[M N] = size(Height_Data);
for i = 1:M
    % the difference between the actual value and the predicted value.
    Residual = Weight_Data(i) - (k30 + k3*(Height_Data(i)^3)); % Weight = k30 + k3 * Height^3
    SSE_Cube = SSE_Cube + Residual^2; % SSE
    SST_Cube = SST_Cube + (Weight_Data(i)-Mean_Weight)^2; % SST
end
R2_Cube_Female = 1 - SSE_Cube/SST_Cube; % the R-squared

% 05 - Quadratic model: Weight = k20 + k2 * Height^2
SSE_Quadratic = 0; % SSE value
SST_Quadratic = 0; % SST value
Mean_Weight = mean(Weight_Data); % the mean of weight
[M N] = size(Height_Data);
for i = 1:M
    % the difference between the actual value and the predicted value.
    Residual = Weight_Data(i) - (k20 + k2*(Height_Data(i)^2)); % Weight = k20 + k2 * Height^2
    SSE_Quadratic = SSE_Quadratic + Residual^2; % SSE
    SST_Quadratic = SST_Quadratic + (Weight_Data(i)-Mean_Weight)^2; % SST
end
R2_Quadratic_Female = 1 - SSE_Quadratic/SST_Quadratic; % the R-squared

% 06 - Linear model: Weight = k10 + k1 * Height
SSE_Linear = 0; % SSE value
SST_Linear = 0; % SST value
Mean_Weight = mean(Weight_Data); % the mean of weight
[M N] = size(Height_Data);
for i = 1:M
    % the difference between the actual value and the predicted value.
    Residual = Weight_Data(i) - (k10 + k1*Height_Data(i)); % Weight = k10 + k1 * Height
    SSE_Linear = SSE_Linear + Residual^2; % SSE
    SST_Linear = SST_Linear + (Weight_Data(i)-Mean_Weight)^2; % SST
end
R2_Linear_Female = 1 - SSE_Linear/SST_Linear; % the R-squared

% 07 - Binomial model: Weight = k40 + k41*Height^2 + k42*Height
SSE_Binomial = 0; % SSE value
SST_Binomial = 0; % SST value
Mean_Weight = mean(Weight_Data); % the mean of weight
[M N] = size(Height_Data);
for i = 1:M
    % the difference between the actual value and the predicted value.
    Residual = Weight_Data(i) - (k40 +k41*(Height_Data(i)^2) + k42*Height_Data(i)); % Weight = k40 + k41*Height^2 + k42*Height
    SSE_Binomial = SSE_Binomial + Residual^2; % SSE
    SST_Binomial = SST_Binomial + (Weight_Data(i)-Mean_Weight)^2; % SST
end
R2_Binomial_Female = 1 - SSE_Binomial/SST_Binomial; % the R-squared

% 08 - Trinomial model: Weight = k50 + k51*Height^3 + k52*Height^2 + k53*Height
SSE_Trinomial = 0; % SSE value
SST_Trinomial = 0; % SST value
Mean_Weight = mean(Weight_Data); % the mean of weight
[M N] = size(Height_Data);
for i = 1:M
    % the difference between the actual value and the predicted value.
    Residual = Weight_Data(i) - (k50 + k51*(Height_Data(i)^3) + k52*(Height_Data(i)^2) + k53*Height_Data(i)); % Weight = k50 + k51*Height^3 + k52*Height^2 + k53*Height
    SSE_Trinomial = SSE_Trinomial + Residual^2; % SSE
    SST_Trinomial = SST_Trinomial + (Weight_Data(i)-Mean_Weight)^2; % SST
end
R2_Trinomial_Female = 1 - SSE_Trinomial/SST_Trinomial; % the R-squared

% We show the results
subplot(1,2,1) % scatterplots and the curves
hold on;
title(Title_Text)
ylabel('Weight (Kg)')
xlabel('Height (m)');
ylim([10 130]);
xlim([1 1.8]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

% The scatterplots of the raw data
H1 = plot(Height_Data,Weight_Data,'o','linewidth',My_LineWidth_1,'Color',[0 0 0],'MarkerSize',5, ...
    'MarkerFaceColor',My_Colors_3(1,:));
% Plot the curve of the Allometric model: Height = m*Weight^k; ln(Height) = ln(m) + k*ln(Weight)
X_data = min(Height_Data)-0.1:0.001:max(Height_Data)+0.1; % Height (m)
Y_data = m.*X_data.^k; % Weight = m*Height^k
HH_Allometric = plot(X_data,Y_data,'-.','Color',My_Colors_9(1,:),'LineWidth',My_LineWidth);
% Plot the curve of the Hyperbolic model: Weight = a/(1-b*Height) Height = (Weight-a)/(b*Weight);
X_data = min(Weight_Data):0.01:max(Weight_Data); % Weight (Kg)
Y_data = (X_data - a)./(b.*X_data); % Height = (Weight-a)/(b*Weight);
HH_Hyperbolic = plot(Y_data,X_data,'-.','Color',My_Colors_9(2,:),'LineWidth',My_LineWidth);
% Plot the curve of the Exponential model: Weight = p · exp(Height · q); ln(Weight) = ln(p) + Height · q
X_data = min(Height_Data)-0.1:0.001:max(Height_Data)+0.1; % Height (m)
Y_data = p.*exp(X_data.*q); % Weight = p · exp(Height · q)
HH_Exponential = plot(X_data,Y_data,'-.','Color',My_Colors_9(3,:),'LineWidth',My_LineWidth);
% Plot the curve of the Cube model: Weight = k30 + k3 * Height^3
X_data = min(Height_Data)-0.1:0.001:max(Height_Data)+0.1; % Height (m)
Y_data = k30 + k3.*X_data.^3; % Weight = k30 + k3 * Height^3
HH_Cube = plot(X_data,Y_data,'-.','Color',My_Colors_9(4,:),'LineWidth',My_LineWidth);
% Plot the curve of the Quadratic model: Weight = k20 + k2 * Height^2
X_data = min(Height_Data)-0.1:0.001:max(Height_Data)+0.1; % Height (m)
Y_data = k20 + k2.*X_data.^2; % Weight = k20 + k2 * Height^2
HH_Quadratic = plot(X_data,Y_data,'-.','Color',My_Colors_9(5,:),'LineWidth',My_LineWidth);
% Plot the curve of the Linear model: Weight = k10 + k1 * Height
X_data = min(Height_Data)-0.1:0.001:max(Height_Data)+0.1; % Height (m)
Y_data = k10 + k1.*X_data; % Weight = k10 + k1 * Height
HH_Linear = plot(X_data,Y_data,'-.','Color',My_Colors_9(6,:),'LineWidth',My_LineWidth);
% Plot the curve of the Binomial model: Weight = k40 + k41*Height^2 + k42*Height
X_data = min(Height_Data)-0.1:0.001:max(Height_Data)+0.1; % Height (m)
Y_data = k40 + k41.*X_data.^2 + k42.*X_data; % Weight = k40 + k41*Height^2 + k42*Height
HH_Binomial = plot(X_data,Y_data,'-.','Color',My_Colors_9(7,:),'LineWidth',My_LineWidth);
% Plot the curve of the Trinomial model: Weight = k50 + k51*Height^3 + k52*Height^2 + k53*Height
X_data = min(Height_Data)-0.1:0.001:max(Height_Data)+0.1; % Height (m)
Y_data = k50 + k51.*X_data.^3 + k52.*X_data.^2 + k53.*X_data; % Weight = k50 + k51*Height^3 + k52*Height^2 + k53*Height
HH_Trinomial = plot(X_data,Y_data,'-.','Color',My_Colors_9(8,:),'LineWidth',My_LineWidth);

% Legend
Text_Allometric = ['The Allometric model; R^2 = ' num2str(round(R2_Allometric_Female,4))];
Text_Hyperbolic = ['The Hyperbolic model; R^2 = ' num2str(round(R2_Hyperbolic_Female,4))];
Text_Exponential = ['The Exponential model; R^2 = ' num2str(round(R2_Exponential_Female,4))];
Text_Cube = ['The Cube model; R^2 = ' num2str(round(R2_Cube_Female,4))];
Text_Quadratic = ['The Quadratic model; R^2 = ' num2str(round(R2_Quadratic_Female,4))];
Text_Linear = ['The Linear model; R^2 = ' num2str(round(R2_Linear_Female,4))];
Text_Binomial = ['The Binomial model; R^2 = ' num2str(round(R2_Binomial_Female,4))];
Text_Trinomial = ['The Trinomial model; R^2 = ' num2str(round(R2_Trinomial_Female,4))];

Legend = legend([HH_Allometric HH_Hyperbolic HH_Exponential HH_Cube HH_Quadratic HH_Linear HH_Binomial HH_Trinomial],...
    Text_Allometric,Text_Hyperbolic,Text_Exponential,Text_Cube,Text_Quadratic,Text_Linear,Text_Binomial,Text_Trinomial,'Location','northwest');
set(Legend,'Box','off','FontSize',12,'FontName',My_FontName)

% For Male
% Preparing the data
Height_Data = Male_data_8(:,1)/100; % Raw data of Height in m;
Weight_Data = Male_data_8(:,2); % Raw data of Weight in Kg;
Title_Text = 'Male (Age = 8)';

% Fitting
% 01 - Allometric model: Weight = m*Height^k; ln(Weight) = ln(m) + k*ln(Height)
log10_Height = log10(Height_Data); % log10(Height)
log10_Weight = log10(Weight_Data); % log10(Weight)
BB = polyfit(log10_Height,log10_Weight,1); % linear fitting: ln(Weight) = ln(m) + k*ln(Height)
m = 10^BB(2);
k = BB(1);

% 02 - Hyperbolic model: Weight = a + b*Weight*Height; Weight = a/(1-b*Height); Height = (Weight-a)/(b*Weight)
Weight_X_Height_Data = Weight_Data.*Height_Data; % Weight*Height
CC = polyfit(Weight_X_Height_Data,Weight_Data,1); % linear fitting: Weight = a + b*Weight*Height
a = CC(2);
b = CC(1);

% 03 - Exponential model: Weight = p · exp(Height · q); ln(Weight) = ln(p) + Height · q
ln_Weight = log(Weight_Data); % ln(Weight)
ln_Height = log(Height_Data); % ln(Height)
DD = polyfit(Height_Data,ln_Weight,1); % ln(Weight) = ln(p) + Height · q
p = exp(DD(2));
q = DD(1);

% 04 - Cube model: Weight = k30 + k3 * Height^3
Height_Cube = Height_Data.^3;
EE = polyfit(Height_Cube,Weight_Data,1); % Weight = k30 + k3 * Height^3
k30 = EE(2);
k3 = EE(1);

% 05 - Quadratic model: Weight = k20 + k2 * Height^2
Height_Quadratic = Height_Data.^2;
FF = polyfit(Height_Quadratic,Weight_Data,1); % Weight = k20 + k2 * Height^2
k20 = FF(2);
k2 = FF(1);

% 06 - Linear model: Weight = k10 + k1 * Height
GG = polyfit(Height_Data,Weight_Data,1); % Weight = k10 + k1 * Height
k10 = GG(2);
k1 = GG(1);

% 07 - Binomial model: Weight = k40 + k41*Height^2 + k42*Height
HH = polyfit(Height_Data,Weight_Data,2); % Weight = k40 + k41*Height^2 + k42*Height
k40 = HH(3);
k41 = HH(1);
k42 = HH(2);

% 08 - Trinomial model: Weight = k50 + k51*Height^3 + k52*Height^2 + k53*Height
II = polyfit(Height_Data,Weight_Data,3); % Weight = k50 + k51*Height^3 + k52*Height^2 + k53*Height
k50 = II(4);
k51 = II(1);
k52 = II(2);
k53 = II(3);

% Calculatting the R-squared
% R-squared is calculated using the formula R-squared = 1 - SSE/SST;
% SSE stands for Sum of Squared Errors; SST stands for Total Sum of Squares

% 01 - Allometric model: Weight = m*Height^k; ln(Weight) = ln(m) + k*ln(Height)
SSE_Allometric = 0; % SSE value
SST_Allometric = 0; % SST value
Mean_Weight = mean(Weight_Data); % the mean of Weight
[M N] = size(Height_Data);
for i = 1:M
    % the difference between the actual value and the predicted value.
    Residual = Weight_Data(i) - m*Height_Data(i)^k; % Weight = m*Height^k
    SSE_Allometric = SSE_Allometric + Residual^2; % SSE
    SST_Allometric = SST_Allometric + (Weight_Data(i)-Mean_Weight)^2; % SST
end
R2_Allometric_Male = 1 - SSE_Allometric/SST_Allometric; % the R-squared

% 02 - The Hyperbolic model: Weight = a + b*Weight*Height; Height = (Weight-a)/(b*Weight);
% We use the weight to predict height.
SSE_Hyperbolic = 0; % SSE value
SST_Hyperbolic = 0; % SST value
Mean_Height = mean(Height_Data); % the mean of weight
[M N] = size(Weight_Data);
for i = 1:M
    % the difference between the actual value and the predicted value.
    Residual = Height_Data(i) - (Weight_Data(i)-a)./(b*Weight_Data(i)); % Height = (Weight-a)/(b*Weight);
    SSE_Hyperbolic = SSE_Hyperbolic + Residual^2; % SSE
    SST_Hyperbolic = SST_Hyperbolic + (Height_Data(i)-Mean_Height)^2; % SST
end
R2_Hyperbolic_Male = 1 - SSE_Hyperbolic/SST_Hyperbolic; % the R-squared

% 03 - Exponential model: Weight = p · exp(Height · q); ln(Weight) = ln(p) + Height · q
SSE_Exponential = 0; % SSE value
SST_Exponential = 0; % SST value
Mean_Weight = mean(Weight_Data); % the mean of weight
[M N] = size(Height_Data);
for i = 1:M
    % the difference between the actual value and the predicted value.
    Residual = Weight_Data(i) - (p*exp(Height_Data(i)*q)); % Weight = p · exp(Height · q)
    SSE_Exponential = SSE_Exponential + Residual^2; % SSE
    SST_Exponential = SST_Exponential + (Weight_Data(i)-Mean_Weight)^2; % SST
end
R2_Exponential_Male = 1 - SSE_Exponential/SST_Exponential; % the R-squared

% 04 - Cube model: Weight = k30 + k3 * Height^3
SSE_Cube = 0; % SSE value
SST_Cube = 0; % SST value
Mean_Weight = mean(Weight_Data); % the mean of weight
[M N] = size(Height_Data);
for i = 1:M
    % the difference between the actual value and the predicted value.
    Residual = Weight_Data(i) - (k30 + k3*(Height_Data(i)^3)); % Weight = k30 + k3 * Height^3
    SSE_Cube = SSE_Cube + Residual^2; % SSE
    SST_Cube = SST_Cube + (Weight_Data(i)-Mean_Weight)^2; % SST
end
R2_Cube_Male = 1 - SSE_Cube/SST_Cube; % the R-squared

% 05 - Quadratic model: Weight = k20 + k2 * Height^2
SSE_Quadratic = 0; % SSE value
SST_Quadratic = 0; % SST value
Mean_Weight = mean(Weight_Data); % the mean of weight
[M N] = size(Height_Data);
for i = 1:M
    % the difference between the actual value and the predicted value.
    Residual = Weight_Data(i) - (k20 + k2*(Height_Data(i)^2)); % Weight = k20 + k2 * Height^2
    SSE_Quadratic = SSE_Quadratic + Residual^2; % SSE
    SST_Quadratic = SST_Quadratic + (Weight_Data(i)-Mean_Weight)^2; % SST
end
R2_Quadratic_Male = 1 - SSE_Quadratic/SST_Quadratic; % the R-squared

% 06 - Linear model: Weight = k10 + k1 * Height
SSE_Linear = 0; % SSE value
SST_Linear = 0; % SST value
Mean_Weight = mean(Weight_Data); % the mean of weight
[M N] = size(Height_Data);
for i = 1:M
    % the difference between the actual value and the predicted value.
    Residual = Weight_Data(i) - (k10 + k1*Height_Data(i)); % Weight = k10 + k1 * Height
    SSE_Linear = SSE_Linear + Residual^2; % SSE
    SST_Linear = SST_Linear + (Weight_Data(i)-Mean_Weight)^2; % SST
end
R2_Linear_Male = 1 - SSE_Linear/SST_Linear; % the R-squared

% 07 - Binomial model: Weight = k40 + k41*Height^2 + k42*Height
SSE_Binomial = 0; % SSE value
SST_Binomial = 0; % SST value
Mean_Weight = mean(Weight_Data); % the mean of weight
[M N] = size(Height_Data);
for i = 1:M
    % the difference between the actual value and the predicted value.
    Residual = Weight_Data(i) - (k40 +k41*(Height_Data(i)^2) + k42*Height_Data(i)); % Weight = k40 + k41*Height^2 + k42*Height
    SSE_Binomial = SSE_Binomial + Residual^2; % SSE
    SST_Binomial = SST_Binomial + (Weight_Data(i)-Mean_Weight)^2; % SST
end
R2_Binomial_Male = 1 - SSE_Binomial/SST_Binomial; % the R-squared

% 08 - Trinomial model: Weight = k50 + k51*Height^3 + k52*Height^2 + k53*Height
SSE_Trinomial = 0; % SSE value
SST_Trinomial = 0; % SST value
Mean_Weight = mean(Weight_Data); % the mean of weight
[M N] = size(Height_Data);
for i = 1:M
    % the difference between the actual value and the predicted value.
    Residual = Weight_Data(i) - (k50 + k51*(Height_Data(i)^3) + k52*(Height_Data(i)^2) + k53*Height_Data(i)); % Weight = k50 + k51*Height^3 + k52*Height^2 + k53*Height
    SSE_Trinomial = SSE_Trinomial + Residual^2; % SSE
    SST_Trinomial = SST_Trinomial + (Weight_Data(i)-Mean_Weight)^2; % SST
end
R2_Trinomial_Male = 1 - SSE_Trinomial/SST_Trinomial; % the R-squared

% We show the results
subplot(1,2,2) % scatterplots and the curves
hold on;
title(Title_Text)
ylabel('Weight (Kg)')
xlabel('Height (m)');
ylim([10 130]);
xlim([1 1.8]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

% The scatterplots of the raw data
H1 = plot(Height_Data,Weight_Data,'o','linewidth',My_LineWidth_1,'Color',[0 0 0],'MarkerSize',5, ...
    'MarkerFaceColor',My_Colors_3(2,:));
% Plot the curve of the Allometric model: Height = m*Weight^k; ln(Height) = ln(m) + k*ln(Weight)
X_data = min(Height_Data)-0.1:0.001:max(Height_Data)+0.1; % Height (m)
Y_data = m.*X_data.^k; % Weight = m*Height^k
HH_Allometric = plot(X_data,Y_data,'-.','Color',My_Colors_9(1,:),'LineWidth',My_LineWidth);
% Plot the curve of the Hyperbolic model: Weight = a/(1-b*Height) Height = (Weight-a)/(b*Weight);
X_data = min(Weight_Data):0.01:max(Weight_Data); % Weight (Kg)
Y_data = (X_data - a)./(b.*X_data); % Height = (Weight-a)/(b*Weight);
HH_Hyperbolic = plot(Y_data,X_data,'-.','Color',My_Colors_9(2,:),'LineWidth',My_LineWidth);
% Plot the curve of the Exponential model: Weight = p · exp(Height · q); ln(Weight) = ln(p) + Height · q
X_data = min(Height_Data)-0.1:0.001:max(Height_Data)+0.1; % Height (m)
Y_data = p.*exp(X_data.*q); % Weight = p · exp(Height · q)
HH_Exponential = plot(X_data,Y_data,'-.','Color',My_Colors_9(3,:),'LineWidth',My_LineWidth);
% Plot the curve of the Cube model: Weight = k30 + k3 * Height^3
X_data = min(Height_Data)-0.1:0.001:max(Height_Data)+0.1; % Height (m)
Y_data = k30 + k3.*X_data.^3; % Weight = k30 + k3 * Height^3
HH_Cube = plot(X_data,Y_data,'-.','Color',My_Colors_9(4,:),'LineWidth',My_LineWidth);
% Plot the curve of the Quadratic model: Weight = k20 + k2 * Height^2
X_data = min(Height_Data)-0.1:0.001:max(Height_Data)+0.1; % Height (m)
Y_data = k20 + k2.*X_data.^2; % Weight = k20 + k2 * Height^2
HH_Quadratic = plot(X_data,Y_data,'-.','Color',My_Colors_9(5,:),'LineWidth',My_LineWidth);
% Plot the curve of the Linear model: Weight = k10 + k1 * Height
X_data = min(Height_Data)-0.1:0.001:max(Height_Data)+0.1; % Height (m)
Y_data = k10 + k1.*X_data; % Weight = k10 + k1 * Height
HH_Linear = plot(X_data,Y_data,'-.','Color',My_Colors_9(6,:),'LineWidth',My_LineWidth);
% Plot the curve of the Binomial model: Weight = k40 + k41*Height^2 + k42*Height
X_data = min(Height_Data)-0.1:0.001:max(Height_Data)+0.1; % Height (m)
Y_data = k40 + k41.*X_data.^2 + k42.*X_data; % Weight = k40 + k41*Height^2 + k42*Height
HH_Binomial = plot(X_data,Y_data,'-.','Color',My_Colors_9(7,:),'LineWidth',My_LineWidth);
% Plot the curve of the Trinomial model: Weight = k50 + k51*Height^3 + k52*Height^2 + k53*Height
X_data = min(Height_Data)-0.1:0.001:max(Height_Data)+0.1; % Height (m)
Y_data = k50 + k51.*X_data.^3 + k52.*X_data.^2 + k53.*X_data; % Weight = k50 + k51*Height^3 + k52*Height^2 + k53*Height
HH_Trinomial = plot(X_data,Y_data,'-.','Color',My_Colors_9(8,:),'LineWidth',My_LineWidth);

% Legend
Text_Allometric = ['The Allometric model; R^2 = ' num2str(round(R2_Allometric_Male,4))];
Text_Hyperbolic = ['The Hyperbolic model; R^2 = ' num2str(round(R2_Hyperbolic_Male,4))];
Text_Exponential = ['The Exponential model; R^2 = ' num2str(round(R2_Exponential_Male,4))];
Text_Cube = ['The Cube model; R^2 = ' num2str(round(R2_Cube_Male,4))];
Text_Quadratic = ['The Quadratic model; R^2 = ' num2str(round(R2_Quadratic_Male,4))];
Text_Linear = ['The Linear model; R^2 = ' num2str(round(R2_Linear_Male,4))];
Text_Binomial = ['The Binomial model; R^2 = ' num2str(round(R2_Binomial_Male,4))];
Text_Trinomial = ['The Trinomial model; R^2 = ' num2str(round(R2_Trinomial_Male,4))];

Legend = legend([HH_Allometric HH_Hyperbolic HH_Exponential HH_Cube HH_Quadratic HH_Linear HH_Binomial HH_Trinomial],...
    Text_Allometric,Text_Hyperbolic,Text_Exponential,Text_Cube,Text_Quadratic,Text_Linear,Text_Binomial,Text_Trinomial,'Location','northwest');
set(Legend,'Box','off','FontSize',12,'FontName',My_FontName)

toc;
