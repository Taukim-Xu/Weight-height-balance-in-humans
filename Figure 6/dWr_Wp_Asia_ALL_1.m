%% Source codes for dWr_Wp_Asia_ALL_1
% 25 <= Age < 50
tic;
%%
c = 1;
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
%% Calculate the distribution of sWHI
dWr_Wp_Asia_ALL_Female_1 = []; % Wr - Wp: The real weight minus the weight predicted by the model
dWr_Wp_Asia_ALL_Male_1 = []; % Wr - Wp: The real weight minus the weight predicted by the model
% Load and segment the data by age and gender
%% Asia
%% Korea
% KSPF, Korea
Female_data = [];
Male_data = [];
Temp_Female = xlsread('./Raw_data/Data_Asia/KSPF, Korea.xlsx','Female');
Temp_Male = xlsread('./Raw_data/Data_Asia/KSPF, Korea.xlsx','Male');
Female_data = [Female_data;Temp_Female];
Male_data= [Male_data;Temp_Male];

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

% For Female
[M N] = size(Female_data); % Height (cm) Weight (Kg)
for i = 1:M
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
end
% For Male
[M N] = size(Male_data); % Height (cm) Weight (Kg)
for i = 1:M
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
end

% we Calculate the sWHI distribution when c = 1; in a/Weight+b*Height^c
% For Female 
Age = 25;
X_Temp = Female_data_25(:,1)/100; % Height (m)
Y_Temp = Female_data_25(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_Asia_ALL_Female_1 = [dWr_Wp_Asia_ALL_Female_1 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 26;
X_Temp = Female_data_26(:,1)/100; % Height (m)
Y_Temp = Female_data_26(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_Asia_ALL_Female_1 = [dWr_Wp_Asia_ALL_Female_1 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 27;
X_Temp = Female_data_27(:,1)/100; % Height (m)
Y_Temp = Female_data_27(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_Asia_ALL_Female_1 = [dWr_Wp_Asia_ALL_Female_1 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 28;
X_Temp = Female_data_28(:,1)/100; % Height (m)
Y_Temp = Female_data_28(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_Asia_ALL_Female_1 = [dWr_Wp_Asia_ALL_Female_1 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 29;
X_Temp = Female_data_29(:,1)/100; % Height (m)
Y_Temp = Female_data_29(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_Asia_ALL_Female_1 = [dWr_Wp_Asia_ALL_Female_1 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 30;
X_Temp = Female_data_30(:,1)/100; % Height (m)
Y_Temp = Female_data_30(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_Asia_ALL_Female_1 = [dWr_Wp_Asia_ALL_Female_1 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 31;
X_Temp = Female_data_31(:,1)/100; % Height (m)
Y_Temp = Female_data_31(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_Asia_ALL_Female_1 = [dWr_Wp_Asia_ALL_Female_1 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 32;
X_Temp = Female_data_32(:,1)/100; % Height (m)
Y_Temp = Female_data_32(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_Asia_ALL_Female_1 = [dWr_Wp_Asia_ALL_Female_1 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 33;
X_Temp = Female_data_33(:,1)/100; % Height (m)
Y_Temp = Female_data_33(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_Asia_ALL_Female_1 = [dWr_Wp_Asia_ALL_Female_1 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 34;
X_Temp = Female_data_34(:,1)/100; % Height (m)
Y_Temp = Female_data_34(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_Asia_ALL_Female_1 = [dWr_Wp_Asia_ALL_Female_1 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 35;
X_Temp = Female_data_35(:,1)/100; % Height (m)
Y_Temp = Female_data_35(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_Asia_ALL_Female_1 = [dWr_Wp_Asia_ALL_Female_1 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 36;
X_Temp = Female_data_36(:,1)/100; % Height (m)
Y_Temp = Female_data_36(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_Asia_ALL_Female_1 = [dWr_Wp_Asia_ALL_Female_1 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 37;
X_Temp = Female_data_37(:,1)/100; % Height (m)
Y_Temp = Female_data_37(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_Asia_ALL_Female_1 = [dWr_Wp_Asia_ALL_Female_1 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 38;
X_Temp = Female_data_38(:,1)/100; % Height (m)
Y_Temp = Female_data_38(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_Asia_ALL_Female_1 = [dWr_Wp_Asia_ALL_Female_1 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 39;
X_Temp = Female_data_39(:,1)/100; % Height (m)
Y_Temp = Female_data_39(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_Asia_ALL_Female_1 = [dWr_Wp_Asia_ALL_Female_1 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 40;
X_Temp = Female_data_40(:,1)/100; % Height (m)
Y_Temp = Female_data_40(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_Asia_ALL_Female_1 = [dWr_Wp_Asia_ALL_Female_1 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 41;
X_Temp = Female_data_41(:,1)/100; % Height (m)
Y_Temp = Female_data_41(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_Asia_ALL_Female_1 = [dWr_Wp_Asia_ALL_Female_1 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 42;
X_Temp = Female_data_42(:,1)/100; % Height (m)
Y_Temp = Female_data_42(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_Asia_ALL_Female_1 = [dWr_Wp_Asia_ALL_Female_1 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 43;
X_Temp = Female_data_43(:,1)/100; % Height (m)
Y_Temp = Female_data_43(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_Asia_ALL_Female_1 = [dWr_Wp_Asia_ALL_Female_1 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 44;
X_Temp = Female_data_44(:,1)/100; % Height (m)
Y_Temp = Female_data_44(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_Asia_ALL_Female_1 = [dWr_Wp_Asia_ALL_Female_1 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 45;
X_Temp = Female_data_45(:,1)/100; % Height (m)
Y_Temp = Female_data_45(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_Asia_ALL_Female_1 = [dWr_Wp_Asia_ALL_Female_1 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 46;
X_Temp = Female_data_46(:,1)/100; % Height (m)
Y_Temp = Female_data_46(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_Asia_ALL_Female_1 = [dWr_Wp_Asia_ALL_Female_1 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 47;
X_Temp = Female_data_47(:,1)/100; % Height (m)
Y_Temp = Female_data_47(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_Asia_ALL_Female_1 = [dWr_Wp_Asia_ALL_Female_1 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 48;
X_Temp = Female_data_48(:,1)/100; % Height (m)
Y_Temp = Female_data_48(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_Asia_ALL_Female_1 = [dWr_Wp_Asia_ALL_Female_1 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 49;
X_Temp = Female_data_49(:,1)/100; % Height (m)
Y_Temp = Female_data_49(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_Asia_ALL_Female_1 = [dWr_Wp_Asia_ALL_Female_1 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end

% For Male
Age = 25;
X_Temp = Male_data_25(:,1)/100; % Height (m)
Y_Temp = Male_data_25(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_Asia_ALL_Male_1 = [dWr_Wp_Asia_ALL_Male_1 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 26;
X_Temp = Male_data_26(:,1)/100; % Height (m)
Y_Temp = Male_data_26(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_Asia_ALL_Male_1 = [dWr_Wp_Asia_ALL_Male_1 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 27;
X_Temp = Male_data_27(:,1)/100; % Height (m)
Y_Temp = Male_data_27(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_Asia_ALL_Male_1 = [dWr_Wp_Asia_ALL_Male_1 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 28;
X_Temp = Male_data_28(:,1)/100; % Height (m)
Y_Temp = Male_data_28(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_Asia_ALL_Male_1 = [dWr_Wp_Asia_ALL_Male_1 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 29;
X_Temp = Male_data_29(:,1)/100; % Height (m)
Y_Temp = Male_data_29(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_Asia_ALL_Male_1 = [dWr_Wp_Asia_ALL_Male_1 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 30;
X_Temp = Male_data_30(:,1)/100; % Height (m)
Y_Temp = Male_data_30(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_Asia_ALL_Male_1 = [dWr_Wp_Asia_ALL_Male_1 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 31;
X_Temp = Male_data_31(:,1)/100; % Height (m)
Y_Temp = Male_data_31(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_Asia_ALL_Male_1 = [dWr_Wp_Asia_ALL_Male_1 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 32;
X_Temp = Male_data_32(:,1)/100; % Height (m)
Y_Temp = Male_data_32(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_Asia_ALL_Male_1 = [dWr_Wp_Asia_ALL_Male_1 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 33;
X_Temp = Male_data_33(:,1)/100; % Height (m)
Y_Temp = Male_data_33(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_Asia_ALL_Male_1 = [dWr_Wp_Asia_ALL_Male_1 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 34;
X_Temp = Male_data_34(:,1)/100; % Height (m)
Y_Temp = Male_data_34(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_Asia_ALL_Male_1 = [dWr_Wp_Asia_ALL_Male_1 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 35;
X_Temp = Male_data_35(:,1)/100; % Height (m)
Y_Temp = Male_data_35(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_Asia_ALL_Male_1 = [dWr_Wp_Asia_ALL_Male_1 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 36;
X_Temp = Male_data_36(:,1)/100; % Height (m)
Y_Temp = Male_data_36(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_Asia_ALL_Male_1 = [dWr_Wp_Asia_ALL_Male_1 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 37;
X_Temp = Male_data_37(:,1)/100; % Height (m)
Y_Temp = Male_data_37(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_Asia_ALL_Male_1 = [dWr_Wp_Asia_ALL_Male_1 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 38;
X_Temp = Male_data_38(:,1)/100; % Height (m)
Y_Temp = Male_data_38(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_Asia_ALL_Male_1 = [dWr_Wp_Asia_ALL_Male_1 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 39;
X_Temp = Male_data_39(:,1)/100; % Height (m)
Y_Temp = Male_data_39(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_Asia_ALL_Male_1 = [dWr_Wp_Asia_ALL_Male_1 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 40;
X_Temp = Male_data_40(:,1)/100; % Height (m)
Y_Temp = Male_data_40(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_Asia_ALL_Male_1 = [dWr_Wp_Asia_ALL_Male_1 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 41;
X_Temp = Male_data_41(:,1)/100; % Height (m)
Y_Temp = Male_data_41(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_Asia_ALL_Male_1 = [dWr_Wp_Asia_ALL_Male_1 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 42;
X_Temp = Male_data_42(:,1)/100; % Height (m)
Y_Temp = Male_data_42(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_Asia_ALL_Male_1 = [dWr_Wp_Asia_ALL_Male_1 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 43;
X_Temp = Male_data_43(:,1)/100; % Height (m)
Y_Temp = Male_data_43(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_Asia_ALL_Male_1 = [dWr_Wp_Asia_ALL_Male_1 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 44;
X_Temp = Male_data_44(:,1)/100; % Height (m)
Y_Temp = Male_data_44(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_Asia_ALL_Male_1 = [dWr_Wp_Asia_ALL_Male_1 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 45;
X_Temp = Male_data_45(:,1)/100; % Height (m)
Y_Temp = Male_data_45(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_Asia_ALL_Male_1 = [dWr_Wp_Asia_ALL_Male_1 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 46;
X_Temp = Male_data_46(:,1)/100; % Height (m)
Y_Temp = Male_data_46(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_Asia_ALL_Male_1 = [dWr_Wp_Asia_ALL_Male_1 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 47;
X_Temp = Male_data_47(:,1)/100; % Height (m)
Y_Temp = Male_data_47(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_Asia_ALL_Male_1 = [dWr_Wp_Asia_ALL_Male_1 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 48;
X_Temp = Male_data_48(:,1)/100; % Height (m)
Y_Temp = Male_data_48(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_Asia_ALL_Male_1 = [dWr_Wp_Asia_ALL_Male_1 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 49;
X_Temp = Male_data_49(:,1)/100; % Height (m)
Y_Temp = Male_data_49(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_Asia_ALL_Male_1 = [dWr_Wp_Asia_ALL_Male_1 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
%% We save the data
save dWr_Wp_Asia_ALL_1.mat dWr_Wp_Asia_ALL_Female_1 dWr_Wp_Asia_ALL_Male_1
%% We show the results
%% 
FF = figure;
subplot(1,2,1); % For Female
hold on;
title('Female')
xlabel('Wr-Wp (Kg)');
ylabel('Normalized count')
xlim([-100 100]);
ylim([0 1.2]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)
%set(gca,'XTick',[0.85 0.9 0.935 1 1.066 1.1 1.15],'XTicklabel',{'0.85','0.9','0.935','1','1.066','1.1','1.15'});

% For Asia_ALL
Temp = dWr_Wp_Asia_ALL_Female_1;
My_P = prctile(Temp,[0.5 99.5]);
dWr_Wp_Asia_ALL_Female_1 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= My_P(1) && Temp(i) <= My_P(2)
        dWr_Wp_Asia_ALL_Female_1 = [dWr_Wp_Asia_ALL_Female_1 Temp(i)];
    end
end
nbins = 200;
figure;
HH_Female = histogram(dWr_Wp_Asia_ALL_Female_1,nbins);
figure;
nbins = 150;
HH_Male = histogram(dWr_Wp_Asia_ALL_Male_1,nbins);

figure(FF)
xx = HH_Female.BinEdges;
yy = HH_Female.Values/max(HH_Female.Values);
[M N] = size(HH_Female.BinEdges);
for i = 1:N-1
    X_Fill = [xx(i) xx(i+1) xx(i+1) xx(i)];
    Y_Fill = [0 0 yy(i) yy(i)];
    H = fill(X_Fill,Y_Fill,My_Colors_4_1(2,:));
    set(H,'edgealpha',0.1,'facealpha',My_Alpha);
end
My_P = prctile(dWr_Wp_Asia_ALL_Female_1,My_Percentile);
[M N] = size(HH_Female.BinEdges);
x_data = [];
y_data = HH_Female.Values;
for i = 1:N-1
    x_data = [x_data (xx(i)+xx(i+1))/2];
end
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = min(xx):0.001:max(xx);
YY = fitobject(XX);
H1 = plot(XX,YY/max(YY),'LineWidth',My_LineWidth,'Color',My_Colors_4_1(2,:));

% 5th and 95th
Prctile_Female = prctile(dWr_Wp_Asia_ALL_Female_1,My_Percentile);
XX = [Prctile_Female(1) Prctile_Female(1)]; 
YY = [0 1.2]; 
HH1 = plot(XX,YY,':','LineWidth',My_LineWidth-0.5,'Color',My_Colors_4_1(2,:)); % 5th
XX = [Prctile_Female(3) Prctile_Female(3)]; 
YY = [0 1.2]; 
HH2 = plot(XX,YY,'--','LineWidth',My_LineWidth-0.5,'Color',My_Colors_4_1(2,:)); % 95th

subplot(1,2,2); % For Male
hold on;
title('Male')
xlabel('Wr-Wp (Kg)');
%ylabel('Normalized count')
xlim([-100 100]);
ylim([0 1.2]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)
%set(gca,'XTick',[0.85 0.9 0.935 1 1.066 1.1 1.15],'XTicklabel',{'0.85','0.9','0.935','1','1.066','1.1','1.15'});

% For Asia_ALL
Temp = dWr_Wp_Asia_ALL_Male_1;
My_P = prctile(Temp,[0.5 99.5]);
dWr_Wp_Asia_ALL_Male_1 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= My_P(1) && Temp(i) <= My_P(2)
        dWr_Wp_Asia_ALL_Male_1 = [dWr_Wp_Asia_ALL_Male_1 Temp(i)];
    end
end
nbins = 200;
figure;
HH_Male = histogram(dWr_Wp_Asia_ALL_Male_1,nbins);
figure;
nbins = 150;
HH_Male = histogram(dWr_Wp_Asia_ALL_Male_1,nbins);

figure(FF)
xx = HH_Male.BinEdges;
yy = HH_Male.Values/max(HH_Male.Values);
[M N] = size(HH_Male.BinEdges);
for i = 1:N-1
    X_Fill = [xx(i) xx(i+1) xx(i+1) xx(i)];
    Y_Fill = [0 0 yy(i) yy(i)];
    H = fill(X_Fill,Y_Fill,My_Colors_4_1(2,:));
    set(H,'edgealpha',0.1,'facealpha',My_Alpha);
end
My_P = prctile(dWr_Wp_Asia_ALL_Male_1,My_Percentile);
[M N] = size(HH_Male.BinEdges);
x_data = [];
y_data = HH_Male.Values;
for i = 1:N-1
    x_data = [x_data (xx(i)+xx(i+1))/2];
end
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = min(xx):0.001:max(xx);
YY = fitobject(XX);
H1 = plot(XX,YY/max(YY),'LineWidth',My_LineWidth,'Color',My_Colors_4_1(2,:));

% 5th and 95th
Prctile_Male = prctile(dWr_Wp_Asia_ALL_Male_1,My_Percentile);
XX = [Prctile_Male(1) Prctile_Male(1)]; 
YY = [0 1.2]; 
HH1 = plot(XX,YY,':','LineWidth',My_LineWidth-0.5,'Color',My_Colors_4_1(2,:)); % 5th
XX = [Prctile_Male(3) Prctile_Male(3)]; 
YY = [0 1.2]; 
HH2 = plot(XX,YY,'--','LineWidth',My_LineWidth-0.5,'Color',My_Colors_4_1(2,:)); % 95th
%%
toc;

