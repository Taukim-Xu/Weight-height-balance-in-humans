%% Source codes for dWr_Wp_09_Bangladesh_0.m
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
dWr_Wp_09_Bangladesh_Female__25 = []; % Age < 25
% Load and segment the data by age and gender
%% Bangladesh_2011_14
% Bangladesh_2011_14
Female_data = xlsread('./Raw data/09-Bangladesh/Bangladesh_2011_14.xlsx','Female','B:D');

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
[M N] = size(Female_data); % Height (cm) Weight (Kg)
for i = 1:M
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

% we Calculate the sWHI distribution when c = 1; in a/Weight+b*Height^c
% For Female
% Age < 25
% Age = 10;
X_Temp = Female_data_10(:,1)/100; % Height (m)
Y_Temp = Female_data_10(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_09_Bangladesh_Female__25 = [dWr_Wp_09_Bangladesh_Female__25 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
% Age = 11;
X_Temp = Female_data_11(:,1)/100; % Height (m)
Y_Temp = Female_data_11(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_09_Bangladesh_Female__25 = [dWr_Wp_09_Bangladesh_Female__25 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
% Age = 12;
X_Temp = Female_data_12(:,1)/100; % Height (m)
Y_Temp = Female_data_12(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_09_Bangladesh_Female__25 = [dWr_Wp_09_Bangladesh_Female__25 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
% Age = 13;
X_Temp = Female_data_13(:,1)/100; % Height (m)
Y_Temp = Female_data_13(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_09_Bangladesh_Female__25 = [dWr_Wp_09_Bangladesh_Female__25 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
% Age = 14;
X_Temp = Female_data_14(:,1)/100; % Height (m)
Y_Temp = Female_data_14(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_09_Bangladesh_Female__25 = [dWr_Wp_09_Bangladesh_Female__25 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
% Age = 15;
X_Temp = Female_data_15(:,1)/100; % Height (m)
Y_Temp = Female_data_15(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_09_Bangladesh_Female__25 = [dWr_Wp_09_Bangladesh_Female__25 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
% Age = 16;
X_Temp = Female_data_16(:,1)/100; % Height (m)
Y_Temp = Female_data_16(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_09_Bangladesh_Female__25 = [dWr_Wp_09_Bangladesh_Female__25 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
% Age = 17;
X_Temp = Female_data_17(:,1)/100; % Height (m)
Y_Temp = Female_data_17(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_09_Bangladesh_Female__25 = [dWr_Wp_09_Bangladesh_Female__25 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
% Age = 18;
X_Temp = Female_data_18(:,1)/100; % Height (m)
Y_Temp = Female_data_18(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_09_Bangladesh_Female__25 = [dWr_Wp_09_Bangladesh_Female__25 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end
% Age = 19;
X_Temp = Female_data_19(:,1)/100; % Height (m)
Y_Temp = Female_data_19(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    dWr_Wp_09_Bangladesh_Female__25 = [dWr_Wp_09_Bangladesh_Female__25 Y_Temp(i) - Coefficient_a/(1-Coefficient_b*X_Temp(i))]; % Wr - Wp
end

%%
toc;
%% We save the data
save dWr_Wp_09_Bangladesh_0.mat dWr_Wp_09_Bangladesh_Female__25
