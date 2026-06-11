
% Including:
% ELSA-Brasil
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
%% ELSA-Brasil.xls
% Loading the data
Female_data = xlsread('ELSA-Brasil.xls','Female');
Male_data = xlsread('ELSA-Brasil.xls','Male');
% Grouping by age
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
[M N] = size(Female_data); % No.	Age(ys)  Height(cm)	Weight(Kg)
for i = 1:M
    if Female_data(i,2) == 35
        Female_data_35 = [Female_data_35; Female_data(i,3) Female_data(i,4)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,2) == 36
        Female_data_36 = [Female_data_36; Female_data(i,3) Female_data(i,4)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,2) == 37
        Female_data_37 = [Female_data_37; Female_data(i,3) Female_data(i,4)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,2) == 38
        Female_data_38 = [Female_data_38; Female_data(i,3) Female_data(i,4)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,2) == 39
        Female_data_39 = [Female_data_39; Female_data(i,3) Female_data(i,4)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,2) == 40
        Female_data_40 = [Female_data_40; Female_data(i,3) Female_data(i,4)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,2) == 41
        Female_data_41 = [Female_data_41; Female_data(i,3) Female_data(i,4)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,2) == 42
        Female_data_42 = [Female_data_42; Female_data(i,3) Female_data(i,4)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,2) == 43
        Female_data_43 = [Female_data_43; Female_data(i,3) Female_data(i,4)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,2) == 44
        Female_data_44 = [Female_data_44; Female_data(i,3) Female_data(i,4)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,2) == 45
        Female_data_45 = [Female_data_45; Female_data(i,3) Female_data(i,4)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,2) == 46
        Female_data_46 = [Female_data_46; Female_data(i,3) Female_data(i,4)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,2) == 47
        Female_data_47 = [Female_data_47; Female_data(i,3) Female_data(i,4)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,2) == 48
        Female_data_48 = [Female_data_48; Female_data(i,3) Female_data(i,4)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,2) == 49
        Female_data_49 = [Female_data_49; Female_data(i,3) Female_data(i,4)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,2) == 50
        Female_data_50 = [Female_data_50; Female_data(i,3) Female_data(i,4)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,2) == 51
        Female_data_51 = [Female_data_51; Female_data(i,3) Female_data(i,4)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,2) == 52
        Female_data_52 = [Female_data_52; Female_data(i,3) Female_data(i,4)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,2) == 53
        Female_data_53 = [Female_data_53; Female_data(i,3) Female_data(i,4)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,2) == 54
        Female_data_54 = [Female_data_54; Female_data(i,3) Female_data(i,4)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,2) == 55
        Female_data_55 = [Female_data_55; Female_data(i,3) Female_data(i,4)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,2) == 56
        Female_data_56 = [Female_data_56; Female_data(i,3) Female_data(i,4)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,2) == 57
        Female_data_57 = [Female_data_57; Female_data(i,3) Female_data(i,4)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,2) == 58
        Female_data_58 = [Female_data_58; Female_data(i,3) Female_data(i,4)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,2) == 59
        Female_data_59 = [Female_data_59; Female_data(i,3) Female_data(i,4)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,2) == 60
        Female_data_60 = [Female_data_60; Female_data(i,3) Female_data(i,4)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,2) == 61
        Female_data_61 = [Female_data_61; Female_data(i,3) Female_data(i,4)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,2) == 62
        Female_data_62 = [Female_data_62; Female_data(i,3) Female_data(i,4)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,2) == 63
        Female_data_63 = [Female_data_63; Female_data(i,3) Female_data(i,4)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,2) == 64
        Female_data_64 = [Female_data_64; Female_data(i,3) Female_data(i,4)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,2) == 65
        Female_data_65 = [Female_data_65; Female_data(i,3) Female_data(i,4)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,2) == 66
        Female_data_66 = [Female_data_66; Female_data(i,3) Female_data(i,4)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,2) == 67
        Female_data_67 = [Female_data_67; Female_data(i,3) Female_data(i,4)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,2) == 68
        Female_data_68 = [Female_data_68; Female_data(i,3) Female_data(i,4)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,2) == 69
        Female_data_69 = [Female_data_69; Female_data(i,3) Female_data(i,4)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,2) == 70
        Female_data_70 = [Female_data_70; Female_data(i,3) Female_data(i,4)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,2) == 71
        Female_data_71 = [Female_data_71; Female_data(i,3) Female_data(i,4)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,2) == 72
        Female_data_72 = [Female_data_72; Female_data(i,3) Female_data(i,4)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,2) == 73
        Female_data_73 = [Female_data_73; Female_data(i,3) Female_data(i,4)]; % Height(cm) Weight(Kg)
    end
    if Female_data(i,2) == 74
        Female_data_74 = [Female_data_74; Female_data(i,3) Female_data(i,4)]; % Height(cm) Weight(Kg)
    end
end
% For Male
[M N] = size(Male_data); % No.	Age(ys)	Weight(Kg)	Height(cm)
for i = 1:M
    if Male_data(i,2) == 35
        Male_data_35 = [Male_data_35; Male_data(i,3) Male_data(i,4)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,2) == 36
        Male_data_36 = [Male_data_36; Male_data(i,3) Male_data(i,4)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,2) == 37
        Male_data_37 = [Male_data_37; Male_data(i,3) Male_data(i,4)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,2) == 38
        Male_data_38 = [Male_data_38; Male_data(i,3) Male_data(i,4)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,2) == 39
        Male_data_39 = [Male_data_39; Male_data(i,3) Male_data(i,4)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,2) == 40
        Male_data_40 = [Male_data_40; Male_data(i,3) Male_data(i,4)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,2) == 41
        Male_data_41 = [Male_data_41; Male_data(i,3) Male_data(i,4)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,2) == 42
        Male_data_42 = [Male_data_42; Male_data(i,3) Male_data(i,4)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,2) == 43
        Male_data_43 = [Male_data_43; Male_data(i,3) Male_data(i,4)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,2) == 44
        Male_data_44 = [Male_data_44; Male_data(i,3) Male_data(i,4)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,2) == 45
        Male_data_45 = [Male_data_45; Male_data(i,3) Male_data(i,4)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,2) == 46
        Male_data_46 = [Male_data_46; Male_data(i,3) Male_data(i,4)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,2) == 47
        Male_data_47 = [Male_data_47; Male_data(i,3) Male_data(i,4)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,2) == 48
        Male_data_48 = [Male_data_48; Male_data(i,3) Male_data(i,4)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,2) == 49
        Male_data_49 = [Male_data_49; Male_data(i,3) Male_data(i,4)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,2) == 50
        Male_data_50 = [Male_data_50; Male_data(i,3) Male_data(i,4)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,2) == 51
        Male_data_51 = [Male_data_51; Male_data(i,3) Male_data(i,4)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,2) == 52
        Male_data_52 = [Male_data_52; Male_data(i,3) Male_data(i,4)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,2) == 53
        Male_data_53 = [Male_data_53; Male_data(i,3) Male_data(i,4)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,2) == 54
        Male_data_54 = [Male_data_54; Male_data(i,3) Male_data(i,4)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,2) == 55
        Male_data_55 = [Male_data_55; Male_data(i,3) Male_data(i,4)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,2) == 56
        Male_data_56 = [Male_data_56; Male_data(i,3) Male_data(i,4)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,2) == 57
        Male_data_57 = [Male_data_57; Male_data(i,3) Male_data(i,4)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,2) == 58
        Male_data_58 = [Male_data_58; Male_data(i,3) Male_data(i,4)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,2) == 59
        Male_data_59 = [Male_data_59; Male_data(i,3) Male_data(i,4)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,2) == 60
        Male_data_60 = [Male_data_60; Male_data(i,3) Male_data(i,4)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,2) == 61
        Male_data_61 = [Male_data_61; Male_data(i,3) Male_data(i,4)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,2) == 62
        Male_data_62 = [Male_data_62; Male_data(i,3) Male_data(i,4)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,2) == 63
        Male_data_63 = [Male_data_63; Male_data(i,3) Male_data(i,4)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,2) == 64
        Male_data_64 = [Male_data_64; Male_data(i,3) Male_data(i,4)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,2) == 65
        Male_data_65 = [Male_data_65; Male_data(i,3) Male_data(i,4)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,2) == 66
        Male_data_66 = [Male_data_66; Male_data(i,3) Male_data(i,4)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,2) == 67
        Male_data_67 = [Male_data_67; Male_data(i,3) Male_data(i,4)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,2) == 68
        Male_data_68 = [Male_data_68; Male_data(i,3) Male_data(i,4)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,2) == 69
        Male_data_69 = [Male_data_69; Male_data(i,3) Male_data(i,4)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,2) == 70
        Male_data_70 = [Male_data_70; Male_data(i,3) Male_data(i,4)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,2) == 71
        Male_data_71 = [Male_data_71; Male_data(i,3) Male_data(i,4)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,2) == 72
        Male_data_72 = [Male_data_72; Male_data(i,3) Male_data(i,4)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,2) == 73
        Male_data_73 = [Male_data_73; Male_data(i,3) Male_data(i,4)]; % Height(cm) Weight(Kg)
    end
    if Male_data(i,2) == 74
        Male_data_74 = [Male_data_74; Male_data(i,3) Male_data(i,4)]; % Height(cm) Weight(Kg)
    end
end

% We calculate the coefficients of a and b in 1=a/Weight+b*Height for this
% dataset
Age_ELSA_Brasil = 35:74;
Coefficient_a_Female_1_ELSA_Brasil = [];
Coefficient_b_Female_1_ELSA_Brasil = [];
Coefficient_a_Male_1_ELSA_Brasil = [];
Coefficient_b_Male_1_ELSA_Brasil = [];

% For Female
% Age 35
X_data = (Female_data_35(:,1)/100).^c; % Height (m)
Y_data = Female_data_35(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_ELSA_Brasil = [Coefficient_a_Female_1_ELSA_Brasil PP(2)];
Coefficient_b_Female_1_ELSA_Brasil = [Coefficient_b_Female_1_ELSA_Brasil PP(1)];
% Age 36
X_data = (Female_data_36(:,1)/100).^c; % Height (m)
Y_data = Female_data_36(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_ELSA_Brasil = [Coefficient_a_Female_1_ELSA_Brasil PP(2)];
Coefficient_b_Female_1_ELSA_Brasil = [Coefficient_b_Female_1_ELSA_Brasil PP(1)];
% Age 37
X_data = (Female_data_37(:,1)/100).^c; % Height (m)
Y_data = Female_data_37(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_ELSA_Brasil = [Coefficient_a_Female_1_ELSA_Brasil PP(2)];
Coefficient_b_Female_1_ELSA_Brasil = [Coefficient_b_Female_1_ELSA_Brasil PP(1)];
% Age 38
X_data = (Female_data_38(:,1)/100).^c; % Height (m)
Y_data = Female_data_38(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_ELSA_Brasil = [Coefficient_a_Female_1_ELSA_Brasil PP(2)];
Coefficient_b_Female_1_ELSA_Brasil = [Coefficient_b_Female_1_ELSA_Brasil PP(1)];
% Age 39
X_data = (Female_data_39(:,1)/100).^c; % Height (m)
Y_data = Female_data_39(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_ELSA_Brasil = [Coefficient_a_Female_1_ELSA_Brasil PP(2)];
Coefficient_b_Female_1_ELSA_Brasil = [Coefficient_b_Female_1_ELSA_Brasil PP(1)];
% Age 40
X_data = (Female_data_40(:,1)/100).^c; % Height (m)
Y_data = Female_data_40(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_ELSA_Brasil = [Coefficient_a_Female_1_ELSA_Brasil PP(2)];
Coefficient_b_Female_1_ELSA_Brasil = [Coefficient_b_Female_1_ELSA_Brasil PP(1)];
% Age 41
X_data = (Female_data_41(:,1)/100).^c; % Height (m)
Y_data = Female_data_41(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_ELSA_Brasil = [Coefficient_a_Female_1_ELSA_Brasil PP(2)];
Coefficient_b_Female_1_ELSA_Brasil = [Coefficient_b_Female_1_ELSA_Brasil PP(1)];
% Age 42
X_data = (Female_data_42(:,1)/100).^c; % Height (m)
Y_data = Female_data_42(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_ELSA_Brasil = [Coefficient_a_Female_1_ELSA_Brasil PP(2)];
Coefficient_b_Female_1_ELSA_Brasil = [Coefficient_b_Female_1_ELSA_Brasil PP(1)];
% Age 43
X_data = (Female_data_43(:,1)/100).^c; % Height (m)
Y_data = Female_data_43(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_ELSA_Brasil = [Coefficient_a_Female_1_ELSA_Brasil PP(2)];
Coefficient_b_Female_1_ELSA_Brasil = [Coefficient_b_Female_1_ELSA_Brasil PP(1)];
% Age 44
X_data = (Female_data_44(:,1)/100).^c; % Height (m)
Y_data = Female_data_44(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_ELSA_Brasil = [Coefficient_a_Female_1_ELSA_Brasil PP(2)];
Coefficient_b_Female_1_ELSA_Brasil = [Coefficient_b_Female_1_ELSA_Brasil PP(1)];
% Age 45
X_data = (Female_data_45(:,1)/100).^c; % Height (m)
Y_data = Female_data_45(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_ELSA_Brasil = [Coefficient_a_Female_1_ELSA_Brasil PP(2)];
Coefficient_b_Female_1_ELSA_Brasil = [Coefficient_b_Female_1_ELSA_Brasil PP(1)];
% Age 46
X_data = (Female_data_46(:,1)/100).^c; % Height (m)
Y_data = Female_data_46(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_ELSA_Brasil = [Coefficient_a_Female_1_ELSA_Brasil PP(2)];
Coefficient_b_Female_1_ELSA_Brasil = [Coefficient_b_Female_1_ELSA_Brasil PP(1)];
% Age 47
X_data = (Female_data_47(:,1)/100).^c; % Height (m)
Y_data = Female_data_47(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_ELSA_Brasil = [Coefficient_a_Female_1_ELSA_Brasil PP(2)];
Coefficient_b_Female_1_ELSA_Brasil = [Coefficient_b_Female_1_ELSA_Brasil PP(1)];
% Age 48
X_data = (Female_data_48(:,1)/100).^c; % Height (m)
Y_data = Female_data_48(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_ELSA_Brasil = [Coefficient_a_Female_1_ELSA_Brasil PP(2)];
Coefficient_b_Female_1_ELSA_Brasil = [Coefficient_b_Female_1_ELSA_Brasil PP(1)];
% Age 49
X_data = (Female_data_49(:,1)/100).^c; % Height (m)
Y_data = Female_data_49(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_ELSA_Brasil = [Coefficient_a_Female_1_ELSA_Brasil PP(2)];
Coefficient_b_Female_1_ELSA_Brasil = [Coefficient_b_Female_1_ELSA_Brasil PP(1)];
% Age 50
X_data = (Female_data_50(:,1)/100).^c; % Height (m)
Y_data = Female_data_50(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_ELSA_Brasil = [Coefficient_a_Female_1_ELSA_Brasil PP(2)];
Coefficient_b_Female_1_ELSA_Brasil = [Coefficient_b_Female_1_ELSA_Brasil PP(1)];
% Age 51
X_data = (Female_data_51(:,1)/100).^c; % Height (m)
Y_data = Female_data_51(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_ELSA_Brasil = [Coefficient_a_Female_1_ELSA_Brasil PP(2)];
Coefficient_b_Female_1_ELSA_Brasil = [Coefficient_b_Female_1_ELSA_Brasil PP(1)];
% Age 52
X_data = (Female_data_52(:,1)/100).^c; % Height (m)
Y_data = Female_data_52(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_ELSA_Brasil = [Coefficient_a_Female_1_ELSA_Brasil PP(2)];
Coefficient_b_Female_1_ELSA_Brasil = [Coefficient_b_Female_1_ELSA_Brasil PP(1)];
% Age 53
X_data = (Female_data_53(:,1)/100).^c; % Height (m)
Y_data = Female_data_53(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_ELSA_Brasil = [Coefficient_a_Female_1_ELSA_Brasil PP(2)];
Coefficient_b_Female_1_ELSA_Brasil = [Coefficient_b_Female_1_ELSA_Brasil PP(1)];
% Age 54
X_data = (Female_data_54(:,1)/100).^c; % Height (m)
Y_data = Female_data_54(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_ELSA_Brasil = [Coefficient_a_Female_1_ELSA_Brasil PP(2)];
Coefficient_b_Female_1_ELSA_Brasil = [Coefficient_b_Female_1_ELSA_Brasil PP(1)];
% Age 55
X_data = (Female_data_55(:,1)/100).^c; % Height (m)
Y_data = Female_data_55(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_ELSA_Brasil = [Coefficient_a_Female_1_ELSA_Brasil PP(2)];
Coefficient_b_Female_1_ELSA_Brasil = [Coefficient_b_Female_1_ELSA_Brasil PP(1)];
% Age 56
X_data = (Female_data_56(:,1)/100).^c; % Height (m)
Y_data = Female_data_56(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_ELSA_Brasil = [Coefficient_a_Female_1_ELSA_Brasil PP(2)];
Coefficient_b_Female_1_ELSA_Brasil = [Coefficient_b_Female_1_ELSA_Brasil PP(1)];
% Age 57
X_data = (Female_data_57(:,1)/100).^c; % Height (m)
Y_data = Female_data_57(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_ELSA_Brasil = [Coefficient_a_Female_1_ELSA_Brasil PP(2)];
Coefficient_b_Female_1_ELSA_Brasil = [Coefficient_b_Female_1_ELSA_Brasil PP(1)];
% Age 58
X_data = (Female_data_58(:,1)/100).^c; % Height (m)
Y_data = Female_data_58(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_ELSA_Brasil = [Coefficient_a_Female_1_ELSA_Brasil PP(2)];
Coefficient_b_Female_1_ELSA_Brasil = [Coefficient_b_Female_1_ELSA_Brasil PP(1)];
% Age 59
X_data = (Female_data_59(:,1)/100).^c; % Height (m)
Y_data = Female_data_59(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_ELSA_Brasil = [Coefficient_a_Female_1_ELSA_Brasil PP(2)];
Coefficient_b_Female_1_ELSA_Brasil = [Coefficient_b_Female_1_ELSA_Brasil PP(1)];
% Age 60
X_data = (Female_data_60(:,1)/100).^c; % Height (m)
Y_data = Female_data_60(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_ELSA_Brasil = [Coefficient_a_Female_1_ELSA_Brasil PP(2)];
Coefficient_b_Female_1_ELSA_Brasil = [Coefficient_b_Female_1_ELSA_Brasil PP(1)];
% Age 61
X_data = (Female_data_61(:,1)/100).^c; % Height (m)
Y_data = Female_data_61(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_ELSA_Brasil = [Coefficient_a_Female_1_ELSA_Brasil PP(2)];
Coefficient_b_Female_1_ELSA_Brasil = [Coefficient_b_Female_1_ELSA_Brasil PP(1)];
% Age 62
X_data = (Female_data_62(:,1)/100).^c; % Height (m)
Y_data = Female_data_62(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_ELSA_Brasil = [Coefficient_a_Female_1_ELSA_Brasil PP(2)];
Coefficient_b_Female_1_ELSA_Brasil = [Coefficient_b_Female_1_ELSA_Brasil PP(1)];
% Age 63
X_data = (Female_data_63(:,1)/100).^c; % Height (m)
Y_data = Female_data_63(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_ELSA_Brasil = [Coefficient_a_Female_1_ELSA_Brasil PP(2)];
Coefficient_b_Female_1_ELSA_Brasil = [Coefficient_b_Female_1_ELSA_Brasil PP(1)];
% Age 64
X_data = (Female_data_64(:,1)/100).^c; % Height (m)
Y_data = Female_data_64(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_ELSA_Brasil = [Coefficient_a_Female_1_ELSA_Brasil PP(2)];
Coefficient_b_Female_1_ELSA_Brasil = [Coefficient_b_Female_1_ELSA_Brasil PP(1)];
% Age 65
X_data = (Female_data_65(:,1)/100).^c; % Height (m)
Y_data = Female_data_65(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_ELSA_Brasil = [Coefficient_a_Female_1_ELSA_Brasil PP(2)];
Coefficient_b_Female_1_ELSA_Brasil = [Coefficient_b_Female_1_ELSA_Brasil PP(1)];
% Age 66
X_data = (Female_data_66(:,1)/100).^c; % Height (m)
Y_data = Female_data_66(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_ELSA_Brasil = [Coefficient_a_Female_1_ELSA_Brasil PP(2)];
Coefficient_b_Female_1_ELSA_Brasil = [Coefficient_b_Female_1_ELSA_Brasil PP(1)];
% Age 67
X_data = (Female_data_67(:,1)/100).^c; % Height (m)
Y_data = Female_data_67(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_ELSA_Brasil = [Coefficient_a_Female_1_ELSA_Brasil PP(2)];
Coefficient_b_Female_1_ELSA_Brasil = [Coefficient_b_Female_1_ELSA_Brasil PP(1)];
% Age 68
X_data = (Female_data_68(:,1)/100).^c; % Height (m)
Y_data = Female_data_68(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_ELSA_Brasil = [Coefficient_a_Female_1_ELSA_Brasil PP(2)];
Coefficient_b_Female_1_ELSA_Brasil = [Coefficient_b_Female_1_ELSA_Brasil PP(1)];
% Age 69
X_data = (Female_data_69(:,1)/100).^c; % Height (m)
Y_data = Female_data_69(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_ELSA_Brasil = [Coefficient_a_Female_1_ELSA_Brasil PP(2)];
Coefficient_b_Female_1_ELSA_Brasil = [Coefficient_b_Female_1_ELSA_Brasil PP(1)];
% Age 70
X_data = (Female_data_70(:,1)/100).^c; % Height (m)
Y_data = Female_data_70(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_ELSA_Brasil = [Coefficient_a_Female_1_ELSA_Brasil PP(2)];
Coefficient_b_Female_1_ELSA_Brasil = [Coefficient_b_Female_1_ELSA_Brasil PP(1)];
% Age 71
X_data = (Female_data_71(:,1)/100).^c; % Height (m)
Y_data = Female_data_71(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_ELSA_Brasil = [Coefficient_a_Female_1_ELSA_Brasil PP(2)];
Coefficient_b_Female_1_ELSA_Brasil = [Coefficient_b_Female_1_ELSA_Brasil PP(1)];
% Age 72
X_data = (Female_data_72(:,1)/100).^c; % Height (m)
Y_data = Female_data_72(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_ELSA_Brasil = [Coefficient_a_Female_1_ELSA_Brasil PP(2)];
Coefficient_b_Female_1_ELSA_Brasil = [Coefficient_b_Female_1_ELSA_Brasil PP(1)];
% Age 73
X_data = (Female_data_73(:,1)/100).^c; % Height (m)
Y_data = Female_data_73(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_ELSA_Brasil = [Coefficient_a_Female_1_ELSA_Brasil PP(2)];
Coefficient_b_Female_1_ELSA_Brasil = [Coefficient_b_Female_1_ELSA_Brasil PP(1)];
% Age 74
X_data = (Female_data_74(:,1)/100).^c; % Height (m)
Y_data = Female_data_74(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_ELSA_Brasil = [Coefficient_a_Female_1_ELSA_Brasil PP(2)];
Coefficient_b_Female_1_ELSA_Brasil = [Coefficient_b_Female_1_ELSA_Brasil PP(1)];

% For Male
% Age 35
X_data = (Male_data_35(:,1)/100).^c; % Height (m)
Y_data = Male_data_35(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_ELSA_Brasil = [Coefficient_a_Male_1_ELSA_Brasil PP(2)];
Coefficient_b_Male_1_ELSA_Brasil = [Coefficient_b_Male_1_ELSA_Brasil PP(1)];
% Age 36
X_data = (Male_data_36(:,1)/100).^c; % Height (m)
Y_data = Male_data_36(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_ELSA_Brasil = [Coefficient_a_Male_1_ELSA_Brasil PP(2)];
Coefficient_b_Male_1_ELSA_Brasil = [Coefficient_b_Male_1_ELSA_Brasil PP(1)];
% Age 37
X_data = (Male_data_37(:,1)/100).^c; % Height (m)
Y_data = Male_data_37(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_ELSA_Brasil = [Coefficient_a_Male_1_ELSA_Brasil PP(2)];
Coefficient_b_Male_1_ELSA_Brasil = [Coefficient_b_Male_1_ELSA_Brasil PP(1)];
% Age 38
X_data = (Male_data_38(:,1)/100).^c; % Height (m)
Y_data = Male_data_38(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_ELSA_Brasil = [Coefficient_a_Male_1_ELSA_Brasil PP(2)];
Coefficient_b_Male_1_ELSA_Brasil = [Coefficient_b_Male_1_ELSA_Brasil PP(1)];
% Age 39
X_data = (Male_data_39(:,1)/100).^c; % Height (m)
Y_data = Male_data_39(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_ELSA_Brasil = [Coefficient_a_Male_1_ELSA_Brasil PP(2)];
Coefficient_b_Male_1_ELSA_Brasil = [Coefficient_b_Male_1_ELSA_Brasil PP(1)];
% Age 40
X_data = (Male_data_40(:,1)/100).^c; % Height (m)
Y_data = Male_data_40(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_ELSA_Brasil = [Coefficient_a_Male_1_ELSA_Brasil PP(2)];
Coefficient_b_Male_1_ELSA_Brasil = [Coefficient_b_Male_1_ELSA_Brasil PP(1)];
% Age 41
X_data = (Male_data_41(:,1)/100).^c; % Height (m)
Y_data = Male_data_41(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_ELSA_Brasil = [Coefficient_a_Male_1_ELSA_Brasil PP(2)];
Coefficient_b_Male_1_ELSA_Brasil = [Coefficient_b_Male_1_ELSA_Brasil PP(1)];
% Age 42
X_data = (Male_data_42(:,1)/100).^c; % Height (m)
Y_data = Male_data_42(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_ELSA_Brasil = [Coefficient_a_Male_1_ELSA_Brasil PP(2)];
Coefficient_b_Male_1_ELSA_Brasil = [Coefficient_b_Male_1_ELSA_Brasil PP(1)];
% Age 43
X_data = (Male_data_43(:,1)/100).^c; % Height (m)
Y_data = Male_data_43(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_ELSA_Brasil = [Coefficient_a_Male_1_ELSA_Brasil PP(2)];
Coefficient_b_Male_1_ELSA_Brasil = [Coefficient_b_Male_1_ELSA_Brasil PP(1)];
% Age 44
X_data = (Male_data_44(:,1)/100).^c; % Height (m)
Y_data = Male_data_44(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_ELSA_Brasil = [Coefficient_a_Male_1_ELSA_Brasil PP(2)];
Coefficient_b_Male_1_ELSA_Brasil = [Coefficient_b_Male_1_ELSA_Brasil PP(1)];
% Age 45
X_data = (Male_data_45(:,1)/100).^c; % Height (m)
Y_data = Male_data_45(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_ELSA_Brasil = [Coefficient_a_Male_1_ELSA_Brasil PP(2)];
Coefficient_b_Male_1_ELSA_Brasil = [Coefficient_b_Male_1_ELSA_Brasil PP(1)];
% Age 46
X_data = (Male_data_46(:,1)/100).^c; % Height (m)
Y_data = Male_data_46(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_ELSA_Brasil = [Coefficient_a_Male_1_ELSA_Brasil PP(2)];
Coefficient_b_Male_1_ELSA_Brasil = [Coefficient_b_Male_1_ELSA_Brasil PP(1)];
% Age 47
X_data = (Male_data_47(:,1)/100).^c; % Height (m)
Y_data = Male_data_47(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_ELSA_Brasil = [Coefficient_a_Male_1_ELSA_Brasil PP(2)];
Coefficient_b_Male_1_ELSA_Brasil = [Coefficient_b_Male_1_ELSA_Brasil PP(1)];
% Age 48
X_data = (Male_data_48(:,1)/100).^c; % Height (m)
Y_data = Male_data_48(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_ELSA_Brasil = [Coefficient_a_Male_1_ELSA_Brasil PP(2)];
Coefficient_b_Male_1_ELSA_Brasil = [Coefficient_b_Male_1_ELSA_Brasil PP(1)];
% Age 49
X_data = (Male_data_49(:,1)/100).^c; % Height (m)
Y_data = Male_data_49(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_ELSA_Brasil = [Coefficient_a_Male_1_ELSA_Brasil PP(2)];
Coefficient_b_Male_1_ELSA_Brasil = [Coefficient_b_Male_1_ELSA_Brasil PP(1)];
% Age 50
X_data = (Male_data_50(:,1)/100).^c; % Height (m)
Y_data = Male_data_50(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_ELSA_Brasil = [Coefficient_a_Male_1_ELSA_Brasil PP(2)];
Coefficient_b_Male_1_ELSA_Brasil = [Coefficient_b_Male_1_ELSA_Brasil PP(1)];
% Age 51
X_data = (Male_data_51(:,1)/100).^c; % Height (m)
Y_data = Male_data_51(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_ELSA_Brasil = [Coefficient_a_Male_1_ELSA_Brasil PP(2)];
Coefficient_b_Male_1_ELSA_Brasil = [Coefficient_b_Male_1_ELSA_Brasil PP(1)];
% Age 52
X_data = (Male_data_52(:,1)/100).^c; % Height (m)
Y_data = Male_data_52(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_ELSA_Brasil = [Coefficient_a_Male_1_ELSA_Brasil PP(2)];
Coefficient_b_Male_1_ELSA_Brasil = [Coefficient_b_Male_1_ELSA_Brasil PP(1)];
% Age 53
X_data = (Male_data_53(:,1)/100).^c; % Height (m)
Y_data = Male_data_53(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_ELSA_Brasil = [Coefficient_a_Male_1_ELSA_Brasil PP(2)];
Coefficient_b_Male_1_ELSA_Brasil = [Coefficient_b_Male_1_ELSA_Brasil PP(1)];
% Age 54
X_data = (Male_data_54(:,1)/100).^c; % Height (m)
Y_data = Male_data_54(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_ELSA_Brasil = [Coefficient_a_Male_1_ELSA_Brasil PP(2)];
Coefficient_b_Male_1_ELSA_Brasil = [Coefficient_b_Male_1_ELSA_Brasil PP(1)];
% Age 55
X_data = (Male_data_55(:,1)/100).^c; % Height (m)
Y_data = Male_data_55(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_ELSA_Brasil = [Coefficient_a_Male_1_ELSA_Brasil PP(2)];
Coefficient_b_Male_1_ELSA_Brasil = [Coefficient_b_Male_1_ELSA_Brasil PP(1)];
% Age 56
X_data = (Male_data_56(:,1)/100).^c; % Height (m)
Y_data = Male_data_56(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_ELSA_Brasil = [Coefficient_a_Male_1_ELSA_Brasil PP(2)];
Coefficient_b_Male_1_ELSA_Brasil = [Coefficient_b_Male_1_ELSA_Brasil PP(1)];
% Age 57
X_data = (Male_data_57(:,1)/100).^c; % Height (m)
Y_data = Male_data_57(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_ELSA_Brasil = [Coefficient_a_Male_1_ELSA_Brasil PP(2)];
Coefficient_b_Male_1_ELSA_Brasil = [Coefficient_b_Male_1_ELSA_Brasil PP(1)];
% Age 58
X_data = (Male_data_58(:,1)/100).^c; % Height (m)
Y_data = Male_data_58(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_ELSA_Brasil = [Coefficient_a_Male_1_ELSA_Brasil PP(2)];
Coefficient_b_Male_1_ELSA_Brasil = [Coefficient_b_Male_1_ELSA_Brasil PP(1)];
% Age 59
X_data = (Male_data_59(:,1)/100).^c; % Height (m)
Y_data = Male_data_59(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_ELSA_Brasil = [Coefficient_a_Male_1_ELSA_Brasil PP(2)];
Coefficient_b_Male_1_ELSA_Brasil = [Coefficient_b_Male_1_ELSA_Brasil PP(1)];
% Age 60
X_data = (Male_data_60(:,1)/100).^c; % Height (m)
Y_data = Male_data_60(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_ELSA_Brasil = [Coefficient_a_Male_1_ELSA_Brasil PP(2)];
Coefficient_b_Male_1_ELSA_Brasil = [Coefficient_b_Male_1_ELSA_Brasil PP(1)];
% Age 61
X_data = (Male_data_61(:,1)/100).^c; % Height (m)
Y_data = Male_data_61(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_ELSA_Brasil = [Coefficient_a_Male_1_ELSA_Brasil PP(2)];
Coefficient_b_Male_1_ELSA_Brasil = [Coefficient_b_Male_1_ELSA_Brasil PP(1)];
% Age 62
X_data = (Male_data_62(:,1)/100).^c; % Height (m)
Y_data = Male_data_62(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_ELSA_Brasil = [Coefficient_a_Male_1_ELSA_Brasil PP(2)];
Coefficient_b_Male_1_ELSA_Brasil = [Coefficient_b_Male_1_ELSA_Brasil PP(1)];
% Age 63
X_data = (Male_data_63(:,1)/100).^c; % Height (m)
Y_data = Male_data_63(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_ELSA_Brasil = [Coefficient_a_Male_1_ELSA_Brasil PP(2)];
Coefficient_b_Male_1_ELSA_Brasil = [Coefficient_b_Male_1_ELSA_Brasil PP(1)];
% Age 64
X_data = (Male_data_64(:,1)/100).^c; % Height (m)
Y_data = Male_data_64(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_ELSA_Brasil = [Coefficient_a_Male_1_ELSA_Brasil PP(2)];
Coefficient_b_Male_1_ELSA_Brasil = [Coefficient_b_Male_1_ELSA_Brasil PP(1)];
% Age 65
X_data = (Male_data_65(:,1)/100).^c; % Height (m)
Y_data = Male_data_65(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_ELSA_Brasil = [Coefficient_a_Male_1_ELSA_Brasil PP(2)];
Coefficient_b_Male_1_ELSA_Brasil = [Coefficient_b_Male_1_ELSA_Brasil PP(1)];
% Age 66
X_data = (Male_data_66(:,1)/100).^c; % Height (m)
Y_data = Male_data_66(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_ELSA_Brasil = [Coefficient_a_Male_1_ELSA_Brasil PP(2)];
Coefficient_b_Male_1_ELSA_Brasil = [Coefficient_b_Male_1_ELSA_Brasil PP(1)];
% Age 67
X_data = (Male_data_67(:,1)/100).^c; % Height (m)
Y_data = Male_data_67(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_ELSA_Brasil = [Coefficient_a_Male_1_ELSA_Brasil PP(2)];
Coefficient_b_Male_1_ELSA_Brasil = [Coefficient_b_Male_1_ELSA_Brasil PP(1)];
% Age 68
X_data = (Male_data_68(:,1)/100).^c; % Height (m)
Y_data = Male_data_68(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_ELSA_Brasil = [Coefficient_a_Male_1_ELSA_Brasil PP(2)];
Coefficient_b_Male_1_ELSA_Brasil = [Coefficient_b_Male_1_ELSA_Brasil PP(1)];
% Age 69
X_data = (Male_data_69(:,1)/100).^c; % Height (m)
Y_data = Male_data_69(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_ELSA_Brasil = [Coefficient_a_Male_1_ELSA_Brasil PP(2)];
Coefficient_b_Male_1_ELSA_Brasil = [Coefficient_b_Male_1_ELSA_Brasil PP(1)];
% Age 70
X_data = (Male_data_70(:,1)/100).^c; % Height (m)
Y_data = Male_data_70(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_ELSA_Brasil = [Coefficient_a_Male_1_ELSA_Brasil PP(2)];
Coefficient_b_Male_1_ELSA_Brasil = [Coefficient_b_Male_1_ELSA_Brasil PP(1)];
% Age 71
X_data = (Male_data_71(:,1)/100).^c; % Height (m)
Y_data = Male_data_71(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_ELSA_Brasil = [Coefficient_a_Male_1_ELSA_Brasil PP(2)];
Coefficient_b_Male_1_ELSA_Brasil = [Coefficient_b_Male_1_ELSA_Brasil PP(1)];
% Age 72
X_data = (Male_data_72(:,1)/100).^c; % Height (m)
Y_data = Male_data_72(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_ELSA_Brasil = [Coefficient_a_Male_1_ELSA_Brasil PP(2)];
Coefficient_b_Male_1_ELSA_Brasil = [Coefficient_b_Male_1_ELSA_Brasil PP(1)];
% Age 73
X_data = (Male_data_73(:,1)/100).^c; % Height (m)
Y_data = Male_data_73(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_ELSA_Brasil = [Coefficient_a_Male_1_ELSA_Brasil PP(2)];
Coefficient_b_Male_1_ELSA_Brasil = [Coefficient_b_Male_1_ELSA_Brasil PP(1)];
% Age 74
X_data = (Male_data_74(:,1)/100).^c; % Height (m)
Y_data = Male_data_74(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_ELSA_Brasil = [Coefficient_a_Male_1_ELSA_Brasil PP(2)];
Coefficient_b_Male_1_ELSA_Brasil = [Coefficient_b_Male_1_ELSA_Brasil PP(1)];

%% We show the results
figure;
% For Female
subplot(2,2,1); % Coefficient a for female
hold on;
title('Female')
xlabel('Age (yr)');
ylabel('Coefficient a')
xlim([0 91]);
ylim([0 14]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

% KSPF, Korea
x_data = Age_ELSA_Brasil;
y_data = Coefficient_a_Female_1_ELSA_Brasil;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(1,:),'MarkerFaceColor','w');

subplot(2,2,3); % Coefficient a for female
hold on;
title('Female')
xlabel('Age (yr)');
ylabel('Coefficient b')
xlim([0 91]);
ylim([0.4 1.2]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

% KSPF, Korea
x_data = Age_ELSA_Brasil;
y_data = Coefficient_b_Female_1_ELSA_Brasil;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(1,:),'MarkerFaceColor','w');

% For Male
subplot(2,2,2); % Coefficient a for male
hold on;
title('Male')
xlabel('Age (yr)');
ylabel('Coefficient a')
xlim([0 91]);
ylim([0 20]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

% KSPF, Korea
x_data = Age_ELSA_Brasil;
y_data = Coefficient_a_Male_1_ELSA_Brasil;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(1,:),'MarkerFaceColor','w');

subplot(2,2,4); % Coefficient a for male
hold on;
title('Male')
xlabel('Age (yr)');
ylabel('Coefficient b')
xlim([0 91]);
ylim([0.4 1.2]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

% KSPF, Korea
x_data = Age_ELSA_Brasil;
y_data = Coefficient_b_Male_1_ELSA_Brasil;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(1,:),'MarkerFaceColor','w');

%%
% We save the correlation analysis results
save('Coefficients_a_and_b_c1_ELSA_Brasil.mat',...
    'Age_ELSA_Brasil','Coefficient_a_Female_1_ELSA_Brasil','Coefficient_b_Female_1_ELSA_Brasil',...
    'Coefficient_a_Male_1_ELSA_Brasil','Coefficient_b_Male_1_ELSA_Brasil');