%% Source codes for dWr_Wp_America_0
% Age < 25
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
dWr_Wp_America_ALL_Female_0 = []; % Wr - Wp: The real weight minus the weight predicted by the model
dWr_Wp_America_ALL_Male_0 = []; % Wr - Wp: The real weight minus the weight predicted by the model
% Load and segment the data by age and gender
%% American
% NHANES 1999-2000
Female_data = xlsread('./Raw_data/Data_America/NHANES 1999-2000.xlsx','Female');
Male_data = xlsread('./Raw_data/Data_America/NHANES 1999-2000.xlsx','Male');

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

% For Female
[M N] = size(Female_data); % Height (cm) Weight (Kg)
for i = 1:M
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
end
% For Male
[M N] = size(Male_data); % Height (cm) Weight (Kg)
for i = 1:M
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
end

% we Calculate the sWHI distribution when c = 1; in a/Weight+b*Height^c
% For Female
Age = 2;
X_Temp = Female_data_2(:,1)/100; % Height (m)
Y_Temp = Female_data_2(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 3;
X_Temp = Female_data_3(:,1)/100; % Height (m)
Y_Temp = Female_data_3(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 4;
X_Temp = Female_data_4(:,1)/100; % Height (m)
Y_Temp = Female_data_4(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 5;
X_Temp = Female_data_5(:,1)/100; % Height (m)
Y_Temp = Female_data_5(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 6;
X_Temp = Female_data_6(:,1)/100; % Height (m)
Y_Temp = Female_data_6(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 7;
X_Temp = Female_data_7(:,1)/100; % Height (m)
Y_Temp = Female_data_7(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 8;
X_Temp = Female_data_8(:,1)/100; % Height (m)
Y_Temp = Female_data_8(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 9;
X_Temp = Female_data_9(:,1)/100; % Height (m)
Y_Temp = Female_data_9(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 10;
X_Temp = Female_data_10(:,1)/100; % Height (m)
Y_Temp = Female_data_10(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 11;
X_Temp = Female_data_11(:,1)/100; % Height (m)
Y_Temp = Female_data_11(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 12;
X_Temp = Female_data_12(:,1)/100; % Height (m)
Y_Temp = Female_data_12(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 13;
X_Temp = Female_data_13(:,1)/100; % Height (m)
Y_Temp = Female_data_13(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 14;
X_Temp = Female_data_14(:,1)/100; % Height (m)
Y_Temp = Female_data_14(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 15;
X_Temp = Female_data_15(:,1)/100; % Height (m)
Y_Temp = Female_data_15(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 16;
X_Temp = Female_data_16(:,1)/100; % Height (m)
Y_Temp = Female_data_16(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 17;
X_Temp = Female_data_17(:,1)/100; % Height (m)
Y_Temp = Female_data_17(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 18;
X_Temp = Female_data_18(:,1)/100; % Height (m)
Y_Temp = Female_data_18(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 19;
X_Temp = Female_data_19(:,1)/100; % Height (m)
Y_Temp = Female_data_19(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 20;
X_Temp = Female_data_20(:,1)/100; % Height (m)
Y_Temp = Female_data_20(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 21;
X_Temp = Female_data_21(:,1)/100; % Height (m)
Y_Temp = Female_data_21(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 22;
X_Temp = Female_data_22(:,1)/100; % Height (m)
Y_Temp = Female_data_22(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 23;
X_Temp = Female_data_23(:,1)/100; % Height (m)
Y_Temp = Female_data_23(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 24;
X_Temp = Female_data_24(:,1)/100; % Height (m)
Y_Temp = Female_data_24(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end

% For Male
Age = 2;
X_Temp = Male_data_2(:,1)/100; % Height (m)
Y_Temp = Male_data_2(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 3;
X_Temp = Male_data_3(:,1)/100; % Height (m)
Y_Temp = Male_data_3(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 4;
X_Temp = Male_data_4(:,1)/100; % Height (m)
Y_Temp = Male_data_4(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 5;
X_Temp = Male_data_5(:,1)/100; % Height (m)
Y_Temp = Male_data_5(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 6;
X_Temp = Male_data_6(:,1)/100; % Height (m)
Y_Temp = Male_data_6(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 7;
X_Temp = Male_data_7(:,1)/100; % Height (m)
Y_Temp = Male_data_7(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 8;
X_Temp = Male_data_8(:,1)/100; % Height (m)
Y_Temp = Male_data_8(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 9;
X_Temp = Male_data_9(:,1)/100; % Height (m)
Y_Temp = Male_data_9(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 10;
X_Temp = Male_data_10(:,1)/100; % Height (m)
Y_Temp = Male_data_10(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 11;
X_Temp = Male_data_11(:,1)/100; % Height (m)
Y_Temp = Male_data_11(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 12;
X_Temp = Male_data_12(:,1)/100; % Height (m)
Y_Temp = Male_data_12(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 13;
X_Temp = Male_data_13(:,1)/100; % Height (m)
Y_Temp = Male_data_13(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 14;
X_Temp = Male_data_14(:,1)/100; % Height (m)
Y_Temp = Male_data_14(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 15;
X_Temp = Male_data_15(:,1)/100; % Height (m)
Y_Temp = Male_data_15(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 16;
X_Temp = Male_data_16(:,1)/100; % Height (m)
Y_Temp = Male_data_16(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 17;
X_Temp = Male_data_17(:,1)/100; % Height (m)
Y_Temp = Male_data_17(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 18;
X_Temp = Male_data_18(:,1)/100; % Height (m)
Y_Temp = Male_data_18(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 19;
X_Temp = Male_data_19(:,1)/100; % Height (m)
Y_Temp = Male_data_19(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 20;
X_Temp = Male_data_20(:,1)/100; % Height (m)
Y_Temp = Male_data_20(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 21;
X_Temp = Male_data_21(:,1)/100; % Height (m)
Y_Temp = Male_data_21(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 22;
X_Temp = Male_data_22(:,1)/100; % Height (m)
Y_Temp = Male_data_22(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 23;
X_Temp = Male_data_23(:,1)/100; % Height (m)
Y_Temp = Male_data_23(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 24;
X_Temp = Male_data_24(:,1)/100; % Height (m)
Y_Temp = Male_data_24(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end

% NHANES 2001-2002
Female_data = xlsread('./Raw_data/Data_America/NHANES 2001-2002.xlsx','Female');
Male_data = xlsread('./Raw_data/Data_America/NHANES 2001-2002.xlsx','Male');

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

% For Female
[M N] = size(Female_data); % Height (cm) Weight (Kg)
for i = 1:M
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
end
% For Male
[M N] = size(Male_data); % Height (cm) Weight (Kg)
for i = 1:M
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
end

% we Calculate the sWHI distribution when c = 1; in a/Weight+b*Height^c
% For Female
Age = 2;
X_Temp = Female_data_2(:,1)/100; % Height (m)
Y_Temp = Female_data_2(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 3;
X_Temp = Female_data_3(:,1)/100; % Height (m)
Y_Temp = Female_data_3(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 4;
X_Temp = Female_data_4(:,1)/100; % Height (m)
Y_Temp = Female_data_4(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 5;
X_Temp = Female_data_5(:,1)/100; % Height (m)
Y_Temp = Female_data_5(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 6;
X_Temp = Female_data_6(:,1)/100; % Height (m)
Y_Temp = Female_data_6(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 7;
X_Temp = Female_data_7(:,1)/100; % Height (m)
Y_Temp = Female_data_7(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 8;
X_Temp = Female_data_8(:,1)/100; % Height (m)
Y_Temp = Female_data_8(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 9;
X_Temp = Female_data_9(:,1)/100; % Height (m)
Y_Temp = Female_data_9(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 10;
X_Temp = Female_data_10(:,1)/100; % Height (m)
Y_Temp = Female_data_10(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 11;
X_Temp = Female_data_11(:,1)/100; % Height (m)
Y_Temp = Female_data_11(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 12;
X_Temp = Female_data_12(:,1)/100; % Height (m)
Y_Temp = Female_data_12(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 13;
X_Temp = Female_data_13(:,1)/100; % Height (m)
Y_Temp = Female_data_13(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 14;
X_Temp = Female_data_14(:,1)/100; % Height (m)
Y_Temp = Female_data_14(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 15;
X_Temp = Female_data_15(:,1)/100; % Height (m)
Y_Temp = Female_data_15(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 16;
X_Temp = Female_data_16(:,1)/100; % Height (m)
Y_Temp = Female_data_16(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 17;
X_Temp = Female_data_17(:,1)/100; % Height (m)
Y_Temp = Female_data_17(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 18;
X_Temp = Female_data_18(:,1)/100; % Height (m)
Y_Temp = Female_data_18(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 19;
X_Temp = Female_data_19(:,1)/100; % Height (m)
Y_Temp = Female_data_19(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 20;
X_Temp = Female_data_20(:,1)/100; % Height (m)
Y_Temp = Female_data_20(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 21;
X_Temp = Female_data_21(:,1)/100; % Height (m)
Y_Temp = Female_data_21(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 22;
X_Temp = Female_data_22(:,1)/100; % Height (m)
Y_Temp = Female_data_22(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 23;
X_Temp = Female_data_23(:,1)/100; % Height (m)
Y_Temp = Female_data_23(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 24;
X_Temp = Female_data_24(:,1)/100; % Height (m)
Y_Temp = Female_data_24(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end

% For Male
Age = 2;
X_Temp = Male_data_2(:,1)/100; % Height (m)
Y_Temp = Male_data_2(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 3;
X_Temp = Male_data_3(:,1)/100; % Height (m)
Y_Temp = Male_data_3(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 4;
X_Temp = Male_data_4(:,1)/100; % Height (m)
Y_Temp = Male_data_4(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 5;
X_Temp = Male_data_5(:,1)/100; % Height (m)
Y_Temp = Male_data_5(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 6;
X_Temp = Male_data_6(:,1)/100; % Height (m)
Y_Temp = Male_data_6(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 7;
X_Temp = Male_data_7(:,1)/100; % Height (m)
Y_Temp = Male_data_7(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 8;
X_Temp = Male_data_8(:,1)/100; % Height (m)
Y_Temp = Male_data_8(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 9;
X_Temp = Male_data_9(:,1)/100; % Height (m)
Y_Temp = Male_data_9(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 10;
X_Temp = Male_data_10(:,1)/100; % Height (m)
Y_Temp = Male_data_10(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 11;
X_Temp = Male_data_11(:,1)/100; % Height (m)
Y_Temp = Male_data_11(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 12;
X_Temp = Male_data_12(:,1)/100; % Height (m)
Y_Temp = Male_data_12(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 13;
X_Temp = Male_data_13(:,1)/100; % Height (m)
Y_Temp = Male_data_13(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 14;
X_Temp = Male_data_14(:,1)/100; % Height (m)
Y_Temp = Male_data_14(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 15;
X_Temp = Male_data_15(:,1)/100; % Height (m)
Y_Temp = Male_data_15(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 16;
X_Temp = Male_data_16(:,1)/100; % Height (m)
Y_Temp = Male_data_16(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 17;
X_Temp = Male_data_17(:,1)/100; % Height (m)
Y_Temp = Male_data_17(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 18;
X_Temp = Male_data_18(:,1)/100; % Height (m)
Y_Temp = Male_data_18(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 19;
X_Temp = Male_data_19(:,1)/100; % Height (m)
Y_Temp = Male_data_19(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 20;
X_Temp = Male_data_20(:,1)/100; % Height (m)
Y_Temp = Male_data_20(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 21;
X_Temp = Male_data_21(:,1)/100; % Height (m)
Y_Temp = Male_data_21(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 22;
X_Temp = Male_data_22(:,1)/100; % Height (m)
Y_Temp = Male_data_22(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 23;
X_Temp = Male_data_23(:,1)/100; % Height (m)
Y_Temp = Male_data_23(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 24;
X_Temp = Male_data_24(:,1)/100; % Height (m)
Y_Temp = Male_data_24(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end

% NHANES 2003-2004
Female_data = xlsread('./Raw_data/Data_America/NHANES 2003-2004.xlsx','Female');
Male_data = xlsread('./Raw_data/Data_America/NHANES 2003-2004.xlsx','Male');

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

% For Female
[M N] = size(Female_data); % Height (cm) Weight (Kg)
for i = 1:M
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
end
% For Male
[M N] = size(Male_data); % Height (cm) Weight (Kg)
for i = 1:M
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
end

% we Calculate the sWHI distribution when c = 1; in a/Weight+b*Height^c
% For Female
Age = 2;
X_Temp = Female_data_2(:,1)/100; % Height (m)
Y_Temp = Female_data_2(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 3;
X_Temp = Female_data_3(:,1)/100; % Height (m)
Y_Temp = Female_data_3(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 4;
X_Temp = Female_data_4(:,1)/100; % Height (m)
Y_Temp = Female_data_4(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 5;
X_Temp = Female_data_5(:,1)/100; % Height (m)
Y_Temp = Female_data_5(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 6;
X_Temp = Female_data_6(:,1)/100; % Height (m)
Y_Temp = Female_data_6(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 7;
X_Temp = Female_data_7(:,1)/100; % Height (m)
Y_Temp = Female_data_7(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 8;
X_Temp = Female_data_8(:,1)/100; % Height (m)
Y_Temp = Female_data_8(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 9;
X_Temp = Female_data_9(:,1)/100; % Height (m)
Y_Temp = Female_data_9(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 10;
X_Temp = Female_data_10(:,1)/100; % Height (m)
Y_Temp = Female_data_10(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 11;
X_Temp = Female_data_11(:,1)/100; % Height (m)
Y_Temp = Female_data_11(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 12;
X_Temp = Female_data_12(:,1)/100; % Height (m)
Y_Temp = Female_data_12(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 13;
X_Temp = Female_data_13(:,1)/100; % Height (m)
Y_Temp = Female_data_13(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 14;
X_Temp = Female_data_14(:,1)/100; % Height (m)
Y_Temp = Female_data_14(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 15;
X_Temp = Female_data_15(:,1)/100; % Height (m)
Y_Temp = Female_data_15(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 16;
X_Temp = Female_data_16(:,1)/100; % Height (m)
Y_Temp = Female_data_16(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 17;
X_Temp = Female_data_17(:,1)/100; % Height (m)
Y_Temp = Female_data_17(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 18;
X_Temp = Female_data_18(:,1)/100; % Height (m)
Y_Temp = Female_data_18(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 19;
X_Temp = Female_data_19(:,1)/100; % Height (m)
Y_Temp = Female_data_19(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 20;
X_Temp = Female_data_20(:,1)/100; % Height (m)
Y_Temp = Female_data_20(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 21;
X_Temp = Female_data_21(:,1)/100; % Height (m)
Y_Temp = Female_data_21(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 22;
X_Temp = Female_data_22(:,1)/100; % Height (m)
Y_Temp = Female_data_22(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 23;
X_Temp = Female_data_23(:,1)/100; % Height (m)
Y_Temp = Female_data_23(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 24;
X_Temp = Female_data_24(:,1)/100; % Height (m)
Y_Temp = Female_data_24(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end

% For Male
Age = 2;
X_Temp = Male_data_2(:,1)/100; % Height (m)
Y_Temp = Male_data_2(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 3;
X_Temp = Male_data_3(:,1)/100; % Height (m)
Y_Temp = Male_data_3(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 4;
X_Temp = Male_data_4(:,1)/100; % Height (m)
Y_Temp = Male_data_4(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 5;
X_Temp = Male_data_5(:,1)/100; % Height (m)
Y_Temp = Male_data_5(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 6;
X_Temp = Male_data_6(:,1)/100; % Height (m)
Y_Temp = Male_data_6(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 7;
X_Temp = Male_data_7(:,1)/100; % Height (m)
Y_Temp = Male_data_7(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 8;
X_Temp = Male_data_8(:,1)/100; % Height (m)
Y_Temp = Male_data_8(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 9;
X_Temp = Male_data_9(:,1)/100; % Height (m)
Y_Temp = Male_data_9(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 10;
X_Temp = Male_data_10(:,1)/100; % Height (m)
Y_Temp = Male_data_10(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 11;
X_Temp = Male_data_11(:,1)/100; % Height (m)
Y_Temp = Male_data_11(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 12;
X_Temp = Male_data_12(:,1)/100; % Height (m)
Y_Temp = Male_data_12(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 13;
X_Temp = Male_data_13(:,1)/100; % Height (m)
Y_Temp = Male_data_13(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 14;
X_Temp = Male_data_14(:,1)/100; % Height (m)
Y_Temp = Male_data_14(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 15;
X_Temp = Male_data_15(:,1)/100; % Height (m)
Y_Temp = Male_data_15(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 16;
X_Temp = Male_data_16(:,1)/100; % Height (m)
Y_Temp = Male_data_16(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 17;
X_Temp = Male_data_17(:,1)/100; % Height (m)
Y_Temp = Male_data_17(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 18;
X_Temp = Male_data_18(:,1)/100; % Height (m)
Y_Temp = Male_data_18(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 19;
X_Temp = Male_data_19(:,1)/100; % Height (m)
Y_Temp = Male_data_19(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 20;
X_Temp = Male_data_20(:,1)/100; % Height (m)
Y_Temp = Male_data_20(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 21;
X_Temp = Male_data_21(:,1)/100; % Height (m)
Y_Temp = Male_data_21(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 22;
X_Temp = Male_data_22(:,1)/100; % Height (m)
Y_Temp = Male_data_22(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 23;
X_Temp = Male_data_23(:,1)/100; % Height (m)
Y_Temp = Male_data_23(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 24;
X_Temp = Male_data_24(:,1)/100; % Height (m)
Y_Temp = Male_data_24(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end

% NHANES 2005-2006
Female_data = xlsread('./Raw_data/Data_America/NHANES 2005-2006.xlsx','Female');
Male_data = xlsread('./Raw_data/Data_America/NHANES 2005-2006.xlsx','Male');

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

% For Female
[M N] = size(Female_data); % Height (cm) Weight (Kg)
for i = 1:M
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
end
% For Male
[M N] = size(Male_data); % Height (cm) Weight (Kg)
for i = 1:M
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
end

% we Calculate the sWHI distribution when c = 1; in a/Weight+b*Height^c
% For Female
Age = 2;
X_Temp = Female_data_2(:,1)/100; % Height (m)
Y_Temp = Female_data_2(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 3;
X_Temp = Female_data_3(:,1)/100; % Height (m)
Y_Temp = Female_data_3(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 4;
X_Temp = Female_data_4(:,1)/100; % Height (m)
Y_Temp = Female_data_4(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 5;
X_Temp = Female_data_5(:,1)/100; % Height (m)
Y_Temp = Female_data_5(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 6;
X_Temp = Female_data_6(:,1)/100; % Height (m)
Y_Temp = Female_data_6(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 7;
X_Temp = Female_data_7(:,1)/100; % Height (m)
Y_Temp = Female_data_7(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 8;
X_Temp = Female_data_8(:,1)/100; % Height (m)
Y_Temp = Female_data_8(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 9;
X_Temp = Female_data_9(:,1)/100; % Height (m)
Y_Temp = Female_data_9(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 10;
X_Temp = Female_data_10(:,1)/100; % Height (m)
Y_Temp = Female_data_10(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 11;
X_Temp = Female_data_11(:,1)/100; % Height (m)
Y_Temp = Female_data_11(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 12;
X_Temp = Female_data_12(:,1)/100; % Height (m)
Y_Temp = Female_data_12(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 13;
X_Temp = Female_data_13(:,1)/100; % Height (m)
Y_Temp = Female_data_13(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 14;
X_Temp = Female_data_14(:,1)/100; % Height (m)
Y_Temp = Female_data_14(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 15;
X_Temp = Female_data_15(:,1)/100; % Height (m)
Y_Temp = Female_data_15(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 16;
X_Temp = Female_data_16(:,1)/100; % Height (m)
Y_Temp = Female_data_16(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 17;
X_Temp = Female_data_17(:,1)/100; % Height (m)
Y_Temp = Female_data_17(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 18;
X_Temp = Female_data_18(:,1)/100; % Height (m)
Y_Temp = Female_data_18(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 19;
X_Temp = Female_data_19(:,1)/100; % Height (m)
Y_Temp = Female_data_19(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 20;
X_Temp = Female_data_20(:,1)/100; % Height (m)
Y_Temp = Female_data_20(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 21;
X_Temp = Female_data_21(:,1)/100; % Height (m)
Y_Temp = Female_data_21(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 22;
X_Temp = Female_data_22(:,1)/100; % Height (m)
Y_Temp = Female_data_22(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 23;
X_Temp = Female_data_23(:,1)/100; % Height (m)
Y_Temp = Female_data_23(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 24;
X_Temp = Female_data_24(:,1)/100; % Height (m)
Y_Temp = Female_data_24(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end

% For Male
Age = 2;
X_Temp = Male_data_2(:,1)/100; % Height (m)
Y_Temp = Male_data_2(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 3;
X_Temp = Male_data_3(:,1)/100; % Height (m)
Y_Temp = Male_data_3(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 4;
X_Temp = Male_data_4(:,1)/100; % Height (m)
Y_Temp = Male_data_4(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 5;
X_Temp = Male_data_5(:,1)/100; % Height (m)
Y_Temp = Male_data_5(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 6;
X_Temp = Male_data_6(:,1)/100; % Height (m)
Y_Temp = Male_data_6(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 7;
X_Temp = Male_data_7(:,1)/100; % Height (m)
Y_Temp = Male_data_7(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 8;
X_Temp = Male_data_8(:,1)/100; % Height (m)
Y_Temp = Male_data_8(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 9;
X_Temp = Male_data_9(:,1)/100; % Height (m)
Y_Temp = Male_data_9(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 10;
X_Temp = Male_data_10(:,1)/100; % Height (m)
Y_Temp = Male_data_10(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 11;
X_Temp = Male_data_11(:,1)/100; % Height (m)
Y_Temp = Male_data_11(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 12;
X_Temp = Male_data_12(:,1)/100; % Height (m)
Y_Temp = Male_data_12(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 13;
X_Temp = Male_data_13(:,1)/100; % Height (m)
Y_Temp = Male_data_13(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 14;
X_Temp = Male_data_14(:,1)/100; % Height (m)
Y_Temp = Male_data_14(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 15;
X_Temp = Male_data_15(:,1)/100; % Height (m)
Y_Temp = Male_data_15(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 16;
X_Temp = Male_data_16(:,1)/100; % Height (m)
Y_Temp = Male_data_16(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 17;
X_Temp = Male_data_17(:,1)/100; % Height (m)
Y_Temp = Male_data_17(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 18;
X_Temp = Male_data_18(:,1)/100; % Height (m)
Y_Temp = Male_data_18(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 19;
X_Temp = Male_data_19(:,1)/100; % Height (m)
Y_Temp = Male_data_19(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 20;
X_Temp = Male_data_20(:,1)/100; % Height (m)
Y_Temp = Male_data_20(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 21;
X_Temp = Male_data_21(:,1)/100; % Height (m)
Y_Temp = Male_data_21(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 22;
X_Temp = Male_data_22(:,1)/100; % Height (m)
Y_Temp = Male_data_22(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 23;
X_Temp = Male_data_23(:,1)/100; % Height (m)
Y_Temp = Male_data_23(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 24;
X_Temp = Male_data_24(:,1)/100; % Height (m)
Y_Temp = Male_data_24(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end

% NHANES 2007-2008
Female_data = xlsread('./Raw_data/Data_America/NHANES 2007-2008.xlsx','Female');
Male_data = xlsread('./Raw_data/Data_America/NHANES 2007-2008.xlsx','Male');

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

% For Female
[M N] = size(Female_data); % Height (cm) Weight (Kg)
for i = 1:M
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
end
% For Male
[M N] = size(Male_data); % Height (cm) Weight (Kg)
for i = 1:M
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
end

% we Calculate the sWHI distribution when c = 1; in a/Weight+b*Height^c
% For Female
Age = 2;
X_Temp = Female_data_2(:,1)/100; % Height (m)
Y_Temp = Female_data_2(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 3;
X_Temp = Female_data_3(:,1)/100; % Height (m)
Y_Temp = Female_data_3(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 4;
X_Temp = Female_data_4(:,1)/100; % Height (m)
Y_Temp = Female_data_4(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 5;
X_Temp = Female_data_5(:,1)/100; % Height (m)
Y_Temp = Female_data_5(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 6;
X_Temp = Female_data_6(:,1)/100; % Height (m)
Y_Temp = Female_data_6(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 7;
X_Temp = Female_data_7(:,1)/100; % Height (m)
Y_Temp = Female_data_7(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 8;
X_Temp = Female_data_8(:,1)/100; % Height (m)
Y_Temp = Female_data_8(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 9;
X_Temp = Female_data_9(:,1)/100; % Height (m)
Y_Temp = Female_data_9(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 10;
X_Temp = Female_data_10(:,1)/100; % Height (m)
Y_Temp = Female_data_10(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 11;
X_Temp = Female_data_11(:,1)/100; % Height (m)
Y_Temp = Female_data_11(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 12;
X_Temp = Female_data_12(:,1)/100; % Height (m)
Y_Temp = Female_data_12(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 13;
X_Temp = Female_data_13(:,1)/100; % Height (m)
Y_Temp = Female_data_13(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 14;
X_Temp = Female_data_14(:,1)/100; % Height (m)
Y_Temp = Female_data_14(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 15;
X_Temp = Female_data_15(:,1)/100; % Height (m)
Y_Temp = Female_data_15(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 16;
X_Temp = Female_data_16(:,1)/100; % Height (m)
Y_Temp = Female_data_16(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 17;
X_Temp = Female_data_17(:,1)/100; % Height (m)
Y_Temp = Female_data_17(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 18;
X_Temp = Female_data_18(:,1)/100; % Height (m)
Y_Temp = Female_data_18(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 19;
X_Temp = Female_data_19(:,1)/100; % Height (m)
Y_Temp = Female_data_19(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 20;
X_Temp = Female_data_20(:,1)/100; % Height (m)
Y_Temp = Female_data_20(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 21;
X_Temp = Female_data_21(:,1)/100; % Height (m)
Y_Temp = Female_data_21(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 22;
X_Temp = Female_data_22(:,1)/100; % Height (m)
Y_Temp = Female_data_22(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 23;
X_Temp = Female_data_23(:,1)/100; % Height (m)
Y_Temp = Female_data_23(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 24;
X_Temp = Female_data_24(:,1)/100; % Height (m)
Y_Temp = Female_data_24(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end

% For Male
Age = 2;
X_Temp = Male_data_2(:,1)/100; % Height (m)
Y_Temp = Male_data_2(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 3;
X_Temp = Male_data_3(:,1)/100; % Height (m)
Y_Temp = Male_data_3(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 4;
X_Temp = Male_data_4(:,1)/100; % Height (m)
Y_Temp = Male_data_4(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 5;
X_Temp = Male_data_5(:,1)/100; % Height (m)
Y_Temp = Male_data_5(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 6;
X_Temp = Male_data_6(:,1)/100; % Height (m)
Y_Temp = Male_data_6(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 7;
X_Temp = Male_data_7(:,1)/100; % Height (m)
Y_Temp = Male_data_7(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 8;
X_Temp = Male_data_8(:,1)/100; % Height (m)
Y_Temp = Male_data_8(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 9;
X_Temp = Male_data_9(:,1)/100; % Height (m)
Y_Temp = Male_data_9(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 10;
X_Temp = Male_data_10(:,1)/100; % Height (m)
Y_Temp = Male_data_10(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 11;
X_Temp = Male_data_11(:,1)/100; % Height (m)
Y_Temp = Male_data_11(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 12;
X_Temp = Male_data_12(:,1)/100; % Height (m)
Y_Temp = Male_data_12(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 13;
X_Temp = Male_data_13(:,1)/100; % Height (m)
Y_Temp = Male_data_13(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 14;
X_Temp = Male_data_14(:,1)/100; % Height (m)
Y_Temp = Male_data_14(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 15;
X_Temp = Male_data_15(:,1)/100; % Height (m)
Y_Temp = Male_data_15(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 16;
X_Temp = Male_data_16(:,1)/100; % Height (m)
Y_Temp = Male_data_16(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 17;
X_Temp = Male_data_17(:,1)/100; % Height (m)
Y_Temp = Male_data_17(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 18;
X_Temp = Male_data_18(:,1)/100; % Height (m)
Y_Temp = Male_data_18(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 19;
X_Temp = Male_data_19(:,1)/100; % Height (m)
Y_Temp = Male_data_19(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 20;
X_Temp = Male_data_20(:,1)/100; % Height (m)
Y_Temp = Male_data_20(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 21;
X_Temp = Male_data_21(:,1)/100; % Height (m)
Y_Temp = Male_data_21(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 22;
X_Temp = Male_data_22(:,1)/100; % Height (m)
Y_Temp = Male_data_22(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 23;
X_Temp = Male_data_23(:,1)/100; % Height (m)
Y_Temp = Male_data_23(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 24;
X_Temp = Male_data_24(:,1)/100; % Height (m)
Y_Temp = Male_data_24(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end

% NHANES 2009-2010
Female_data = xlsread('./Raw_data/Data_America/NHANES 2009-2010.xlsx','Female');
Male_data = xlsread('./Raw_data/Data_America/NHANES 2009-2010.xlsx','Male');

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

% For Female
[M N] = size(Female_data); % Height (cm) Weight (Kg)
for i = 1:M
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
end
% For Male
[M N] = size(Male_data); % Height (cm) Weight (Kg)
for i = 1:M
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
end

% we Calculate the sWHI distribution when c = 1; in a/Weight+b*Height^c
% For Female
Age = 2;
X_Temp = Female_data_2(:,1)/100; % Height (m)
Y_Temp = Female_data_2(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 3;
X_Temp = Female_data_3(:,1)/100; % Height (m)
Y_Temp = Female_data_3(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 4;
X_Temp = Female_data_4(:,1)/100; % Height (m)
Y_Temp = Female_data_4(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 5;
X_Temp = Female_data_5(:,1)/100; % Height (m)
Y_Temp = Female_data_5(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 6;
X_Temp = Female_data_6(:,1)/100; % Height (m)
Y_Temp = Female_data_6(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 7;
X_Temp = Female_data_7(:,1)/100; % Height (m)
Y_Temp = Female_data_7(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 8;
X_Temp = Female_data_8(:,1)/100; % Height (m)
Y_Temp = Female_data_8(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 9;
X_Temp = Female_data_9(:,1)/100; % Height (m)
Y_Temp = Female_data_9(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 10;
X_Temp = Female_data_10(:,1)/100; % Height (m)
Y_Temp = Female_data_10(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 11;
X_Temp = Female_data_11(:,1)/100; % Height (m)
Y_Temp = Female_data_11(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 12;
X_Temp = Female_data_12(:,1)/100; % Height (m)
Y_Temp = Female_data_12(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 13;
X_Temp = Female_data_13(:,1)/100; % Height (m)
Y_Temp = Female_data_13(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 14;
X_Temp = Female_data_14(:,1)/100; % Height (m)
Y_Temp = Female_data_14(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 15;
X_Temp = Female_data_15(:,1)/100; % Height (m)
Y_Temp = Female_data_15(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 16;
X_Temp = Female_data_16(:,1)/100; % Height (m)
Y_Temp = Female_data_16(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 17;
X_Temp = Female_data_17(:,1)/100; % Height (m)
Y_Temp = Female_data_17(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 18;
X_Temp = Female_data_18(:,1)/100; % Height (m)
Y_Temp = Female_data_18(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 19;
X_Temp = Female_data_19(:,1)/100; % Height (m)
Y_Temp = Female_data_19(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 20;
X_Temp = Female_data_20(:,1)/100; % Height (m)
Y_Temp = Female_data_20(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 21;
X_Temp = Female_data_21(:,1)/100; % Height (m)
Y_Temp = Female_data_21(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 22;
X_Temp = Female_data_22(:,1)/100; % Height (m)
Y_Temp = Female_data_22(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 23;
X_Temp = Female_data_23(:,1)/100; % Height (m)
Y_Temp = Female_data_23(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 24;
X_Temp = Female_data_24(:,1)/100; % Height (m)
Y_Temp = Female_data_24(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end

% For Male
Age = 2;
X_Temp = Male_data_2(:,1)/100; % Height (m)
Y_Temp = Male_data_2(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 3;
X_Temp = Male_data_3(:,1)/100; % Height (m)
Y_Temp = Male_data_3(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 4;
X_Temp = Male_data_4(:,1)/100; % Height (m)
Y_Temp = Male_data_4(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 5;
X_Temp = Male_data_5(:,1)/100; % Height (m)
Y_Temp = Male_data_5(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 6;
X_Temp = Male_data_6(:,1)/100; % Height (m)
Y_Temp = Male_data_6(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 7;
X_Temp = Male_data_7(:,1)/100; % Height (m)
Y_Temp = Male_data_7(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 8;
X_Temp = Male_data_8(:,1)/100; % Height (m)
Y_Temp = Male_data_8(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 9;
X_Temp = Male_data_9(:,1)/100; % Height (m)
Y_Temp = Male_data_9(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 10;
X_Temp = Male_data_10(:,1)/100; % Height (m)
Y_Temp = Male_data_10(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 11;
X_Temp = Male_data_11(:,1)/100; % Height (m)
Y_Temp = Male_data_11(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 12;
X_Temp = Male_data_12(:,1)/100; % Height (m)
Y_Temp = Male_data_12(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 13;
X_Temp = Male_data_13(:,1)/100; % Height (m)
Y_Temp = Male_data_13(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 14;
X_Temp = Male_data_14(:,1)/100; % Height (m)
Y_Temp = Male_data_14(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 15;
X_Temp = Male_data_15(:,1)/100; % Height (m)
Y_Temp = Male_data_15(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 16;
X_Temp = Male_data_16(:,1)/100; % Height (m)
Y_Temp = Male_data_16(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 17;
X_Temp = Male_data_17(:,1)/100; % Height (m)
Y_Temp = Male_data_17(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 18;
X_Temp = Male_data_18(:,1)/100; % Height (m)
Y_Temp = Male_data_18(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 19;
X_Temp = Male_data_19(:,1)/100; % Height (m)
Y_Temp = Male_data_19(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 20;
X_Temp = Male_data_20(:,1)/100; % Height (m)
Y_Temp = Male_data_20(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 21;
X_Temp = Male_data_21(:,1)/100; % Height (m)
Y_Temp = Male_data_21(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 22;
X_Temp = Male_data_22(:,1)/100; % Height (m)
Y_Temp = Male_data_22(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 23;
X_Temp = Male_data_23(:,1)/100; % Height (m)
Y_Temp = Male_data_23(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 24;
X_Temp = Male_data_24(:,1)/100; % Height (m)
Y_Temp = Male_data_24(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end

% NHANES 2011-2012
Female_data = xlsread('./Raw_data/Data_America/NHANES 2011-2012.xlsx','Female');
Male_data = xlsread('./Raw_data/Data_America/NHANES 2011-2012.xlsx','Male');

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

% For Female
[M N] = size(Female_data); % Height (cm) Weight (Kg)
for i = 1:M
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
end
% For Male
[M N] = size(Male_data); % Height (cm) Weight (Kg)
for i = 1:M
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
end

% we Calculate the sWHI distribution when c = 1; in a/Weight+b*Height^c
% For Female
Age = 2;
X_Temp = Female_data_2(:,1)/100; % Height (m)
Y_Temp = Female_data_2(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 3;
X_Temp = Female_data_3(:,1)/100; % Height (m)
Y_Temp = Female_data_3(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 4;
X_Temp = Female_data_4(:,1)/100; % Height (m)
Y_Temp = Female_data_4(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 5;
X_Temp = Female_data_5(:,1)/100; % Height (m)
Y_Temp = Female_data_5(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 6;
X_Temp = Female_data_6(:,1)/100; % Height (m)
Y_Temp = Female_data_6(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 7;
X_Temp = Female_data_7(:,1)/100; % Height (m)
Y_Temp = Female_data_7(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 8;
X_Temp = Female_data_8(:,1)/100; % Height (m)
Y_Temp = Female_data_8(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 9;
X_Temp = Female_data_9(:,1)/100; % Height (m)
Y_Temp = Female_data_9(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 10;
X_Temp = Female_data_10(:,1)/100; % Height (m)
Y_Temp = Female_data_10(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 11;
X_Temp = Female_data_11(:,1)/100; % Height (m)
Y_Temp = Female_data_11(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 12;
X_Temp = Female_data_12(:,1)/100; % Height (m)
Y_Temp = Female_data_12(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 13;
X_Temp = Female_data_13(:,1)/100; % Height (m)
Y_Temp = Female_data_13(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 14;
X_Temp = Female_data_14(:,1)/100; % Height (m)
Y_Temp = Female_data_14(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 15;
X_Temp = Female_data_15(:,1)/100; % Height (m)
Y_Temp = Female_data_15(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 16;
X_Temp = Female_data_16(:,1)/100; % Height (m)
Y_Temp = Female_data_16(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 17;
X_Temp = Female_data_17(:,1)/100; % Height (m)
Y_Temp = Female_data_17(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 18;
X_Temp = Female_data_18(:,1)/100; % Height (m)
Y_Temp = Female_data_18(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 19;
X_Temp = Female_data_19(:,1)/100; % Height (m)
Y_Temp = Female_data_19(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 20;
X_Temp = Female_data_20(:,1)/100; % Height (m)
Y_Temp = Female_data_20(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 21;
X_Temp = Female_data_21(:,1)/100; % Height (m)
Y_Temp = Female_data_21(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 22;
X_Temp = Female_data_22(:,1)/100; % Height (m)
Y_Temp = Female_data_22(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 23;
X_Temp = Female_data_23(:,1)/100; % Height (m)
Y_Temp = Female_data_23(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 24;
X_Temp = Female_data_24(:,1)/100; % Height (m)
Y_Temp = Female_data_24(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end

% For Male
Age = 2;
X_Temp = Male_data_2(:,1)/100; % Height (m)
Y_Temp = Male_data_2(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 3;
X_Temp = Male_data_3(:,1)/100; % Height (m)
Y_Temp = Male_data_3(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 4;
X_Temp = Male_data_4(:,1)/100; % Height (m)
Y_Temp = Male_data_4(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 5;
X_Temp = Male_data_5(:,1)/100; % Height (m)
Y_Temp = Male_data_5(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 6;
X_Temp = Male_data_6(:,1)/100; % Height (m)
Y_Temp = Male_data_6(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 7;
X_Temp = Male_data_7(:,1)/100; % Height (m)
Y_Temp = Male_data_7(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 8;
X_Temp = Male_data_8(:,1)/100; % Height (m)
Y_Temp = Male_data_8(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 9;
X_Temp = Male_data_9(:,1)/100; % Height (m)
Y_Temp = Male_data_9(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 10;
X_Temp = Male_data_10(:,1)/100; % Height (m)
Y_Temp = Male_data_10(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 11;
X_Temp = Male_data_11(:,1)/100; % Height (m)
Y_Temp = Male_data_11(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 12;
X_Temp = Male_data_12(:,1)/100; % Height (m)
Y_Temp = Male_data_12(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 13;
X_Temp = Male_data_13(:,1)/100; % Height (m)
Y_Temp = Male_data_13(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 14;
X_Temp = Male_data_14(:,1)/100; % Height (m)
Y_Temp = Male_data_14(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 15;
X_Temp = Male_data_15(:,1)/100; % Height (m)
Y_Temp = Male_data_15(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 16;
X_Temp = Male_data_16(:,1)/100; % Height (m)
Y_Temp = Male_data_16(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 17;
X_Temp = Male_data_17(:,1)/100; % Height (m)
Y_Temp = Male_data_17(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 18;
X_Temp = Male_data_18(:,1)/100; % Height (m)
Y_Temp = Male_data_18(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 19;
X_Temp = Male_data_19(:,1)/100; % Height (m)
Y_Temp = Male_data_19(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 20;
X_Temp = Male_data_20(:,1)/100; % Height (m)
Y_Temp = Male_data_20(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 21;
X_Temp = Male_data_21(:,1)/100; % Height (m)
Y_Temp = Male_data_21(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 22;
X_Temp = Male_data_22(:,1)/100; % Height (m)
Y_Temp = Male_data_22(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 23;
X_Temp = Male_data_23(:,1)/100; % Height (m)
Y_Temp = Male_data_23(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 24;
X_Temp = Male_data_24(:,1)/100; % Height (m)
Y_Temp = Male_data_24(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end

% NHANES 2013-2014
Female_data = xlsread('./Raw_data/Data_America/NHANES 2013-2014.xlsx','Female');
Male_data = xlsread('./Raw_data/Data_America/NHANES 2013-2014.xlsx','Male');

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

% For Female
[M N] = size(Female_data); % Height (cm) Weight (Kg)
for i = 1:M
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
end
% For Male
[M N] = size(Male_data); % Height (cm) Weight (Kg)
for i = 1:M
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
end

% we Calculate the sWHI distribution when c = 1; in a/Weight+b*Height^c
% For Female
Age = 2;
X_Temp = Female_data_2(:,1)/100; % Height (m)
Y_Temp = Female_data_2(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 3;
X_Temp = Female_data_3(:,1)/100; % Height (m)
Y_Temp = Female_data_3(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 4;
X_Temp = Female_data_4(:,1)/100; % Height (m)
Y_Temp = Female_data_4(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 5;
X_Temp = Female_data_5(:,1)/100; % Height (m)
Y_Temp = Female_data_5(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 6;
X_Temp = Female_data_6(:,1)/100; % Height (m)
Y_Temp = Female_data_6(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 7;
X_Temp = Female_data_7(:,1)/100; % Height (m)
Y_Temp = Female_data_7(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 8;
X_Temp = Female_data_8(:,1)/100; % Height (m)
Y_Temp = Female_data_8(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 9;
X_Temp = Female_data_9(:,1)/100; % Height (m)
Y_Temp = Female_data_9(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 10;
X_Temp = Female_data_10(:,1)/100; % Height (m)
Y_Temp = Female_data_10(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 11;
X_Temp = Female_data_11(:,1)/100; % Height (m)
Y_Temp = Female_data_11(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 12;
X_Temp = Female_data_12(:,1)/100; % Height (m)
Y_Temp = Female_data_12(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 13;
X_Temp = Female_data_13(:,1)/100; % Height (m)
Y_Temp = Female_data_13(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 14;
X_Temp = Female_data_14(:,1)/100; % Height (m)
Y_Temp = Female_data_14(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 15;
X_Temp = Female_data_15(:,1)/100; % Height (m)
Y_Temp = Female_data_15(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 16;
X_Temp = Female_data_16(:,1)/100; % Height (m)
Y_Temp = Female_data_16(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 17;
X_Temp = Female_data_17(:,1)/100; % Height (m)
Y_Temp = Female_data_17(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 18;
X_Temp = Female_data_18(:,1)/100; % Height (m)
Y_Temp = Female_data_18(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 19;
X_Temp = Female_data_19(:,1)/100; % Height (m)
Y_Temp = Female_data_19(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 20;
X_Temp = Female_data_20(:,1)/100; % Height (m)
Y_Temp = Female_data_20(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 21;
X_Temp = Female_data_21(:,1)/100; % Height (m)
Y_Temp = Female_data_21(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 22;
X_Temp = Female_data_22(:,1)/100; % Height (m)
Y_Temp = Female_data_22(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 23;
X_Temp = Female_data_23(:,1)/100; % Height (m)
Y_Temp = Female_data_23(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 24;
X_Temp = Female_data_24(:,1)/100; % Height (m)
Y_Temp = Female_data_24(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end

% For Male
Age = 2;
X_Temp = Male_data_2(:,1)/100; % Height (m)
Y_Temp = Male_data_2(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 3;
X_Temp = Male_data_3(:,1)/100; % Height (m)
Y_Temp = Male_data_3(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 4;
X_Temp = Male_data_4(:,1)/100; % Height (m)
Y_Temp = Male_data_4(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 5;
X_Temp = Male_data_5(:,1)/100; % Height (m)
Y_Temp = Male_data_5(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 6;
X_Temp = Male_data_6(:,1)/100; % Height (m)
Y_Temp = Male_data_6(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 7;
X_Temp = Male_data_7(:,1)/100; % Height (m)
Y_Temp = Male_data_7(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 8;
X_Temp = Male_data_8(:,1)/100; % Height (m)
Y_Temp = Male_data_8(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 9;
X_Temp = Male_data_9(:,1)/100; % Height (m)
Y_Temp = Male_data_9(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 10;
X_Temp = Male_data_10(:,1)/100; % Height (m)
Y_Temp = Male_data_10(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 11;
X_Temp = Male_data_11(:,1)/100; % Height (m)
Y_Temp = Male_data_11(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 12;
X_Temp = Male_data_12(:,1)/100; % Height (m)
Y_Temp = Male_data_12(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 13;
X_Temp = Male_data_13(:,1)/100; % Height (m)
Y_Temp = Male_data_13(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 14;
X_Temp = Male_data_14(:,1)/100; % Height (m)
Y_Temp = Male_data_14(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 15;
X_Temp = Male_data_15(:,1)/100; % Height (m)
Y_Temp = Male_data_15(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 16;
X_Temp = Male_data_16(:,1)/100; % Height (m)
Y_Temp = Male_data_16(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 17;
X_Temp = Male_data_17(:,1)/100; % Height (m)
Y_Temp = Male_data_17(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 18;
X_Temp = Male_data_18(:,1)/100; % Height (m)
Y_Temp = Male_data_18(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 19;
X_Temp = Male_data_19(:,1)/100; % Height (m)
Y_Temp = Male_data_19(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 20;
X_Temp = Male_data_20(:,1)/100; % Height (m)
Y_Temp = Male_data_20(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 21;
X_Temp = Male_data_21(:,1)/100; % Height (m)
Y_Temp = Male_data_21(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 22;
X_Temp = Male_data_22(:,1)/100; % Height (m)
Y_Temp = Male_data_22(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 23;
X_Temp = Male_data_23(:,1)/100; % Height (m)
Y_Temp = Male_data_23(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 24;
X_Temp = Male_data_24(:,1)/100; % Height (m)
Y_Temp = Male_data_24(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end

% NHANES 2015-2016
Female_data = xlsread('./Raw_data/Data_America/NHANES 2015-2016.xlsx','Female');
Male_data = xlsread('./Raw_data/Data_America/NHANES 2015-2016.xlsx','Male');

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

% For Female
[M N] = size(Female_data); % Height (cm) Weight (Kg)
for i = 1:M
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
end
% For Male
[M N] = size(Male_data); % Height (cm) Weight (Kg)
for i = 1:M
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
end

% we Calculate the sWHI distribution when c = 1; in a/Weight+b*Height^c
% For Female
Age = 2;
X_Temp = Female_data_2(:,1)/100; % Height (m)
Y_Temp = Female_data_2(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 3;
X_Temp = Female_data_3(:,1)/100; % Height (m)
Y_Temp = Female_data_3(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 4;
X_Temp = Female_data_4(:,1)/100; % Height (m)
Y_Temp = Female_data_4(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 5;
X_Temp = Female_data_5(:,1)/100; % Height (m)
Y_Temp = Female_data_5(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 6;
X_Temp = Female_data_6(:,1)/100; % Height (m)
Y_Temp = Female_data_6(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 7;
X_Temp = Female_data_7(:,1)/100; % Height (m)
Y_Temp = Female_data_7(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 8;
X_Temp = Female_data_8(:,1)/100; % Height (m)
Y_Temp = Female_data_8(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 9;
X_Temp = Female_data_9(:,1)/100; % Height (m)
Y_Temp = Female_data_9(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 10;
X_Temp = Female_data_10(:,1)/100; % Height (m)
Y_Temp = Female_data_10(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 11;
X_Temp = Female_data_11(:,1)/100; % Height (m)
Y_Temp = Female_data_11(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 12;
X_Temp = Female_data_12(:,1)/100; % Height (m)
Y_Temp = Female_data_12(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 13;
X_Temp = Female_data_13(:,1)/100; % Height (m)
Y_Temp = Female_data_13(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 14;
X_Temp = Female_data_14(:,1)/100; % Height (m)
Y_Temp = Female_data_14(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 15;
X_Temp = Female_data_15(:,1)/100; % Height (m)
Y_Temp = Female_data_15(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 16;
X_Temp = Female_data_16(:,1)/100; % Height (m)
Y_Temp = Female_data_16(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 17;
X_Temp = Female_data_17(:,1)/100; % Height (m)
Y_Temp = Female_data_17(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 18;
X_Temp = Female_data_18(:,1)/100; % Height (m)
Y_Temp = Female_data_18(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 19;
X_Temp = Female_data_19(:,1)/100; % Height (m)
Y_Temp = Female_data_19(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 20;
X_Temp = Female_data_20(:,1)/100; % Height (m)
Y_Temp = Female_data_20(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 21;
X_Temp = Female_data_21(:,1)/100; % Height (m)
Y_Temp = Female_data_21(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 22;
X_Temp = Female_data_22(:,1)/100; % Height (m)
Y_Temp = Female_data_22(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 23;
X_Temp = Female_data_23(:,1)/100; % Height (m)
Y_Temp = Female_data_23(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 24;
X_Temp = Female_data_24(:,1)/100; % Height (m)
Y_Temp = Female_data_24(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end

% For Male
Age = 2;
X_Temp = Male_data_2(:,1)/100; % Height (m)
Y_Temp = Male_data_2(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 3;
X_Temp = Male_data_3(:,1)/100; % Height (m)
Y_Temp = Male_data_3(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 4;
X_Temp = Male_data_4(:,1)/100; % Height (m)
Y_Temp = Male_data_4(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 5;
X_Temp = Male_data_5(:,1)/100; % Height (m)
Y_Temp = Male_data_5(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 6;
X_Temp = Male_data_6(:,1)/100; % Height (m)
Y_Temp = Male_data_6(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 7;
X_Temp = Male_data_7(:,1)/100; % Height (m)
Y_Temp = Male_data_7(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 8;
X_Temp = Male_data_8(:,1)/100; % Height (m)
Y_Temp = Male_data_8(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 9;
X_Temp = Male_data_9(:,1)/100; % Height (m)
Y_Temp = Male_data_9(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 10;
X_Temp = Male_data_10(:,1)/100; % Height (m)
Y_Temp = Male_data_10(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 11;
X_Temp = Male_data_11(:,1)/100; % Height (m)
Y_Temp = Male_data_11(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 12;
X_Temp = Male_data_12(:,1)/100; % Height (m)
Y_Temp = Male_data_12(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 13;
X_Temp = Male_data_13(:,1)/100; % Height (m)
Y_Temp = Male_data_13(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 14;
X_Temp = Male_data_14(:,1)/100; % Height (m)
Y_Temp = Male_data_14(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 15;
X_Temp = Male_data_15(:,1)/100; % Height (m)
Y_Temp = Male_data_15(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 16;
X_Temp = Male_data_16(:,1)/100; % Height (m)
Y_Temp = Male_data_16(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 17;
X_Temp = Male_data_17(:,1)/100; % Height (m)
Y_Temp = Male_data_17(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 18;
X_Temp = Male_data_18(:,1)/100; % Height (m)
Y_Temp = Male_data_18(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 19;
X_Temp = Male_data_19(:,1)/100; % Height (m)
Y_Temp = Male_data_19(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 20;
X_Temp = Male_data_20(:,1)/100; % Height (m)
Y_Temp = Male_data_20(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 21;
X_Temp = Male_data_21(:,1)/100; % Height (m)
Y_Temp = Male_data_21(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 22;
X_Temp = Male_data_22(:,1)/100; % Height (m)
Y_Temp = Male_data_22(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 23;
X_Temp = Male_data_23(:,1)/100; % Height (m)
Y_Temp = Male_data_23(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 24;
X_Temp = Male_data_24(:,1)/100; % Height (m)
Y_Temp = Male_data_24(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end

% NHANES 2017-2018
Female_data = xlsread('./Raw_data/Data_America/NHANES 2017-2018.xlsx','Female');
Male_data = xlsread('./Raw_data/Data_America/NHANES 2017-2018.xlsx','Male');

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

% For Female
[M N] = size(Female_data); % Height (cm) Weight (Kg)
for i = 1:M
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
end
% For Male
[M N] = size(Male_data); % Height (cm) Weight (Kg)
for i = 1:M
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
end

% we Calculate the sWHI distribution when c = 1; in a/Weight+b*Height^c
% For Female
Age = 2;
X_Temp = Female_data_2(:,1)/100; % Height (m)
Y_Temp = Female_data_2(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 3;
X_Temp = Female_data_3(:,1)/100; % Height (m)
Y_Temp = Female_data_3(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 4;
X_Temp = Female_data_4(:,1)/100; % Height (m)
Y_Temp = Female_data_4(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 5;
X_Temp = Female_data_5(:,1)/100; % Height (m)
Y_Temp = Female_data_5(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 6;
X_Temp = Female_data_6(:,1)/100; % Height (m)
Y_Temp = Female_data_6(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 7;
X_Temp = Female_data_7(:,1)/100; % Height (m)
Y_Temp = Female_data_7(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 8;
X_Temp = Female_data_8(:,1)/100; % Height (m)
Y_Temp = Female_data_8(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 9;
X_Temp = Female_data_9(:,1)/100; % Height (m)
Y_Temp = Female_data_9(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 10;
X_Temp = Female_data_10(:,1)/100; % Height (m)
Y_Temp = Female_data_10(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 11;
X_Temp = Female_data_11(:,1)/100; % Height (m)
Y_Temp = Female_data_11(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 12;
X_Temp = Female_data_12(:,1)/100; % Height (m)
Y_Temp = Female_data_12(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 13;
X_Temp = Female_data_13(:,1)/100; % Height (m)
Y_Temp = Female_data_13(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 14;
X_Temp = Female_data_14(:,1)/100; % Height (m)
Y_Temp = Female_data_14(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 15;
X_Temp = Female_data_15(:,1)/100; % Height (m)
Y_Temp = Female_data_15(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 16;
X_Temp = Female_data_16(:,1)/100; % Height (m)
Y_Temp = Female_data_16(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 17;
X_Temp = Female_data_17(:,1)/100; % Height (m)
Y_Temp = Female_data_17(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 18;
X_Temp = Female_data_18(:,1)/100; % Height (m)
Y_Temp = Female_data_18(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 19;
X_Temp = Female_data_19(:,1)/100; % Height (m)
Y_Temp = Female_data_19(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 20;
X_Temp = Female_data_20(:,1)/100; % Height (m)
Y_Temp = Female_data_20(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 21;
X_Temp = Female_data_21(:,1)/100; % Height (m)
Y_Temp = Female_data_21(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 22;
X_Temp = Female_data_22(:,1)/100; % Height (m)
Y_Temp = Female_data_22(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 23;
X_Temp = Female_data_23(:,1)/100; % Height (m)
Y_Temp = Female_data_23(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 24;
X_Temp = Female_data_24(:,1)/100; % Height (m)
Y_Temp = Female_data_24(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end

% For Male
Age = 2;
X_Temp = Male_data_2(:,1)/100; % Height (m)
Y_Temp = Male_data_2(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 3;
X_Temp = Male_data_3(:,1)/100; % Height (m)
Y_Temp = Male_data_3(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 4;
X_Temp = Male_data_4(:,1)/100; % Height (m)
Y_Temp = Male_data_4(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 5;
X_Temp = Male_data_5(:,1)/100; % Height (m)
Y_Temp = Male_data_5(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 6;
X_Temp = Male_data_6(:,1)/100; % Height (m)
Y_Temp = Male_data_6(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 7;
X_Temp = Male_data_7(:,1)/100; % Height (m)
Y_Temp = Male_data_7(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 8;
X_Temp = Male_data_8(:,1)/100; % Height (m)
Y_Temp = Male_data_8(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 9;
X_Temp = Male_data_9(:,1)/100; % Height (m)
Y_Temp = Male_data_9(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 10;
X_Temp = Male_data_10(:,1)/100; % Height (m)
Y_Temp = Male_data_10(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 11;
X_Temp = Male_data_11(:,1)/100; % Height (m)
Y_Temp = Male_data_11(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 12;
X_Temp = Male_data_12(:,1)/100; % Height (m)
Y_Temp = Male_data_12(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 13;
X_Temp = Male_data_13(:,1)/100; % Height (m)
Y_Temp = Male_data_13(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 14;
X_Temp = Male_data_14(:,1)/100; % Height (m)
Y_Temp = Male_data_14(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 15;
X_Temp = Male_data_15(:,1)/100; % Height (m)
Y_Temp = Male_data_15(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 16;
X_Temp = Male_data_16(:,1)/100; % Height (m)
Y_Temp = Male_data_16(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 17;
X_Temp = Male_data_17(:,1)/100; % Height (m)
Y_Temp = Male_data_17(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 18;
X_Temp = Male_data_18(:,1)/100; % Height (m)
Y_Temp = Male_data_18(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 19;
X_Temp = Male_data_19(:,1)/100; % Height (m)
Y_Temp = Male_data_19(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 20;
X_Temp = Male_data_20(:,1)/100; % Height (m)
Y_Temp = Male_data_20(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 21;
X_Temp = Male_data_21(:,1)/100; % Height (m)
Y_Temp = Male_data_21(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 22;
X_Temp = Male_data_22(:,1)/100; % Height (m)
Y_Temp = Male_data_22(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 23;
X_Temp = Male_data_23(:,1)/100; % Height (m)
Y_Temp = Male_data_23(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 24;
X_Temp = Male_data_24(:,1)/100; % Height (m)
Y_Temp = Male_data_24(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end

% NHANES 2017-March 2020
Female_data = xlsread('./Raw_data/Data_America/NHANES 2017-March 2020.xlsx','Female');
Male_data = xlsread('./Raw_data/Data_America/NHANES 2017-March 2020.xlsx','Male');

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

% For Female
[M N] = size(Female_data); % Height (cm) Weight (Kg)
for i = 1:M
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
end
% For Male
[M N] = size(Male_data); % Height (cm) Weight (Kg)
for i = 1:M
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
end

% we Calculate the sWHI distribution when c = 1; in a/Weight+b*Height^c
% For Female
Age = 2;
X_Temp = Female_data_2(:,1)/100; % Height (m)
Y_Temp = Female_data_2(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 3;
X_Temp = Female_data_3(:,1)/100; % Height (m)
Y_Temp = Female_data_3(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 4;
X_Temp = Female_data_4(:,1)/100; % Height (m)
Y_Temp = Female_data_4(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 5;
X_Temp = Female_data_5(:,1)/100; % Height (m)
Y_Temp = Female_data_5(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 6;
X_Temp = Female_data_6(:,1)/100; % Height (m)
Y_Temp = Female_data_6(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 7;
X_Temp = Female_data_7(:,1)/100; % Height (m)
Y_Temp = Female_data_7(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 8;
X_Temp = Female_data_8(:,1)/100; % Height (m)
Y_Temp = Female_data_8(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 9;
X_Temp = Female_data_9(:,1)/100; % Height (m)
Y_Temp = Female_data_9(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 10;
X_Temp = Female_data_10(:,1)/100; % Height (m)
Y_Temp = Female_data_10(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 11;
X_Temp = Female_data_11(:,1)/100; % Height (m)
Y_Temp = Female_data_11(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 12;
X_Temp = Female_data_12(:,1)/100; % Height (m)
Y_Temp = Female_data_12(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 13;
X_Temp = Female_data_13(:,1)/100; % Height (m)
Y_Temp = Female_data_13(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 14;
X_Temp = Female_data_14(:,1)/100; % Height (m)
Y_Temp = Female_data_14(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 15;
X_Temp = Female_data_15(:,1)/100; % Height (m)
Y_Temp = Female_data_15(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 16;
X_Temp = Female_data_16(:,1)/100; % Height (m)
Y_Temp = Female_data_16(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 17;
X_Temp = Female_data_17(:,1)/100; % Height (m)
Y_Temp = Female_data_17(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 18;
X_Temp = Female_data_18(:,1)/100; % Height (m)
Y_Temp = Female_data_18(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 19;
X_Temp = Female_data_19(:,1)/100; % Height (m)
Y_Temp = Female_data_19(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 20;
X_Temp = Female_data_20(:,1)/100; % Height (m)
Y_Temp = Female_data_20(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 21;
X_Temp = Female_data_21(:,1)/100; % Height (m)
Y_Temp = Female_data_21(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 22;
X_Temp = Female_data_22(:,1)/100; % Height (m)
Y_Temp = Female_data_22(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 23;
X_Temp = Female_data_23(:,1)/100; % Height (m)
Y_Temp = Female_data_23(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 24;
X_Temp = Female_data_24(:,1)/100; % Height (m)
Y_Temp = Female_data_24(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end

% For Male
Age = 2;
X_Temp = Male_data_2(:,1)/100; % Height (m)
Y_Temp = Male_data_2(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 3;
X_Temp = Male_data_3(:,1)/100; % Height (m)
Y_Temp = Male_data_3(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 4;
X_Temp = Male_data_4(:,1)/100; % Height (m)
Y_Temp = Male_data_4(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 5;
X_Temp = Male_data_5(:,1)/100; % Height (m)
Y_Temp = Male_data_5(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 6;
X_Temp = Male_data_6(:,1)/100; % Height (m)
Y_Temp = Male_data_6(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 7;
X_Temp = Male_data_7(:,1)/100; % Height (m)
Y_Temp = Male_data_7(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 8;
X_Temp = Male_data_8(:,1)/100; % Height (m)
Y_Temp = Male_data_8(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 9;
X_Temp = Male_data_9(:,1)/100; % Height (m)
Y_Temp = Male_data_9(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 10;
X_Temp = Male_data_10(:,1)/100; % Height (m)
Y_Temp = Male_data_10(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 11;
X_Temp = Male_data_11(:,1)/100; % Height (m)
Y_Temp = Male_data_11(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 12;
X_Temp = Male_data_12(:,1)/100; % Height (m)
Y_Temp = Male_data_12(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 13;
X_Temp = Male_data_13(:,1)/100; % Height (m)
Y_Temp = Male_data_13(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 14;
X_Temp = Male_data_14(:,1)/100; % Height (m)
Y_Temp = Male_data_14(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 15;
X_Temp = Male_data_15(:,1)/100; % Height (m)
Y_Temp = Male_data_15(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 16;
X_Temp = Male_data_16(:,1)/100; % Height (m)
Y_Temp = Male_data_16(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 17;
X_Temp = Male_data_17(:,1)/100; % Height (m)
Y_Temp = Male_data_17(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 18;
X_Temp = Male_data_18(:,1)/100; % Height (m)
Y_Temp = Male_data_18(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 19;
X_Temp = Male_data_19(:,1)/100; % Height (m)
Y_Temp = Male_data_19(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 20;
X_Temp = Male_data_20(:,1)/100; % Height (m)
Y_Temp = Male_data_20(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 21;
X_Temp = Male_data_21(:,1)/100; % Height (m)
Y_Temp = Male_data_21(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 22;
X_Temp = Male_data_22(:,1)/100; % Height (m)
Y_Temp = Male_data_22(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 23;
X_Temp = Male_data_23(:,1)/100; % Height (m)
Y_Temp = Male_data_23(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 24;
X_Temp = Male_data_24(:,1)/100; % Height (m)
Y_Temp = Male_data_24(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end

% NHANES August 2021-August 2023
Female_data = xlsread('./Raw_data/Data_America/NHANES August 2021-August 2023.xlsx','Female');
Male_data = xlsread('./Raw_data/Data_America/NHANES August 2021-August 2023.xlsx','Male');

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

% For Female
[M N] = size(Female_data); % Height (cm) Weight (Kg)
for i = 1:M
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
end
% For Male
[M N] = size(Male_data); % Height (cm) Weight (Kg)
for i = 1:M
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
end

% we Calculate the sWHI distribution when c = 1; in a/Weight+b*Height^c
% For Female
Age = 2;
X_Temp = Female_data_2(:,1)/100; % Height (m)
Y_Temp = Female_data_2(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 3;
X_Temp = Female_data_3(:,1)/100; % Height (m)
Y_Temp = Female_data_3(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 4;
X_Temp = Female_data_4(:,1)/100; % Height (m)
Y_Temp = Female_data_4(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 5;
X_Temp = Female_data_5(:,1)/100; % Height (m)
Y_Temp = Female_data_5(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 6;
X_Temp = Female_data_6(:,1)/100; % Height (m)
Y_Temp = Female_data_6(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 7;
X_Temp = Female_data_7(:,1)/100; % Height (m)
Y_Temp = Female_data_7(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 8;
X_Temp = Female_data_8(:,1)/100; % Height (m)
Y_Temp = Female_data_8(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 9;
X_Temp = Female_data_9(:,1)/100; % Height (m)
Y_Temp = Female_data_9(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 10;
X_Temp = Female_data_10(:,1)/100; % Height (m)
Y_Temp = Female_data_10(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 11;
X_Temp = Female_data_11(:,1)/100; % Height (m)
Y_Temp = Female_data_11(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 12;
X_Temp = Female_data_12(:,1)/100; % Height (m)
Y_Temp = Female_data_12(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 13;
X_Temp = Female_data_13(:,1)/100; % Height (m)
Y_Temp = Female_data_13(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 14;
X_Temp = Female_data_14(:,1)/100; % Height (m)
Y_Temp = Female_data_14(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 15;
X_Temp = Female_data_15(:,1)/100; % Height (m)
Y_Temp = Female_data_15(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 16;
X_Temp = Female_data_16(:,1)/100; % Height (m)
Y_Temp = Female_data_16(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 17;
X_Temp = Female_data_17(:,1)/100; % Height (m)
Y_Temp = Female_data_17(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 18;
X_Temp = Female_data_18(:,1)/100; % Height (m)
Y_Temp = Female_data_18(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 19;
X_Temp = Female_data_19(:,1)/100; % Height (m)
Y_Temp = Female_data_19(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 20;
X_Temp = Female_data_20(:,1)/100; % Height (m)
Y_Temp = Female_data_20(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 21;
X_Temp = Female_data_21(:,1)/100; % Height (m)
Y_Temp = Female_data_21(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 22;
X_Temp = Female_data_22(:,1)/100; % Height (m)
Y_Temp = Female_data_22(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 23;
X_Temp = Female_data_23(:,1)/100; % Height (m)
Y_Temp = Female_data_23(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 24;
X_Temp = Female_data_24(:,1)/100; % Height (m)
Y_Temp = Female_data_24(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end

% For Male
Age = 2;
X_Temp = Male_data_2(:,1)/100; % Height (m)
Y_Temp = Male_data_2(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 3;
X_Temp = Male_data_3(:,1)/100; % Height (m)
Y_Temp = Male_data_3(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 4;
X_Temp = Male_data_4(:,1)/100; % Height (m)
Y_Temp = Male_data_4(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 5;
X_Temp = Male_data_5(:,1)/100; % Height (m)
Y_Temp = Male_data_5(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 6;
X_Temp = Male_data_6(:,1)/100; % Height (m)
Y_Temp = Male_data_6(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 7;
X_Temp = Male_data_7(:,1)/100; % Height (m)
Y_Temp = Male_data_7(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 8;
X_Temp = Male_data_8(:,1)/100; % Height (m)
Y_Temp = Male_data_8(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 9;
X_Temp = Male_data_9(:,1)/100; % Height (m)
Y_Temp = Male_data_9(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 10;
X_Temp = Male_data_10(:,1)/100; % Height (m)
Y_Temp = Male_data_10(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 11;
X_Temp = Male_data_11(:,1)/100; % Height (m)
Y_Temp = Male_data_11(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 12;
X_Temp = Male_data_12(:,1)/100; % Height (m)
Y_Temp = Male_data_12(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 13;
X_Temp = Male_data_13(:,1)/100; % Height (m)
Y_Temp = Male_data_13(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 14;
X_Temp = Male_data_14(:,1)/100; % Height (m)
Y_Temp = Male_data_14(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 15;
X_Temp = Male_data_15(:,1)/100; % Height (m)
Y_Temp = Male_data_15(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 16;
X_Temp = Male_data_16(:,1)/100; % Height (m)
Y_Temp = Male_data_16(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 17;
X_Temp = Male_data_17(:,1)/100; % Height (m)
Y_Temp = Male_data_17(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 18;
X_Temp = Male_data_18(:,1)/100; % Height (m)
Y_Temp = Male_data_18(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 19;
X_Temp = Male_data_19(:,1)/100; % Height (m)
Y_Temp = Male_data_19(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 20;
X_Temp = Male_data_20(:,1)/100; % Height (m)
Y_Temp = Male_data_20(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 21;
X_Temp = Male_data_21(:,1)/100; % Height (m)
Y_Temp = Male_data_21(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 22;
X_Temp = Male_data_22(:,1)/100; % Height (m)
Y_Temp = Male_data_22(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 23;
X_Temp = Male_data_23(:,1)/100; % Height (m)
Y_Temp = Male_data_23(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
Age = 24;
X_Temp = Male_data_24(:,1)/100; % Height (m)
Y_Temp = Male_data_24(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
%% We save the data
save dWr_Wp_America_ALL_0.mat dWr_Wp_America_ALL_Female_0 dWr_Wp_America_ALL_Male_0
%%
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

% For America_ALL
Temp = dWr_Wp_America_ALL_Female_0;
My_P = prctile(Temp,[2 99]);
dWr_Wp_America_ALL_Female_0 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= My_P(1) && Temp(i) <= My_P(2)
        dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Temp(i)];
    end
end
nbins = 200;
figure;
HH_Female = histogram(dWr_Wp_America_ALL_Female_0,nbins);
figure;
nbins = 150;
HH_Male = histogram(dWr_Wp_America_ALL_Male_0,nbins);

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
My_P = prctile(dWr_Wp_America_ALL_Female_0,My_Percentile);
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
Prctile_Female = prctile(dWr_Wp_America_ALL_Female_0,My_Percentile);
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

% For America_ALL
Temp = dWr_Wp_America_ALL_Male_0;
My_P = prctile(Temp,[2 99]);
dWr_Wp_America_ALL_Male_0 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= My_P(1) && Temp(i) <= My_P(2)
        dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Temp(i)];
    end
end
nbins = 200;
figure;
HH_Male = histogram(dWr_Wp_America_ALL_Male_0,nbins);
figure;
nbins = 150;
HH_Male = histogram(dWr_Wp_America_ALL_Male_0,nbins);

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
My_P = prctile(dWr_Wp_America_ALL_Male_0,My_Percentile);
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
Prctile_Male = prctile(dWr_Wp_America_ALL_Male_0,My_Percentile);
XX = [Prctile_Male(1) Prctile_Male(1)]; 
YY = [0 1.2]; 
HH1 = plot(XX,YY,':','LineWidth',My_LineWidth-0.5,'Color',My_Colors_4_1(2,:)); % 5th
XX = [Prctile_Male(3) Prctile_Male(3)]; 
YY = [0 1.2]; 
HH2 = plot(XX,YY,'--','LineWidth',My_LineWidth-0.5,'Color',My_Colors_4_1(2,:)); % 95th

%%
toc;

