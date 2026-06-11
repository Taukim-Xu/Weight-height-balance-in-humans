%% Source codes for sWHI_08_Japan__.mat
% Weight = a + b*Weight*Height^c
%
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
%% ENSANUT ALL
sWHI_Female_08_Japan_All__ = []; % For all ages
sWHI_Male_08_Japan_All__ = []; % For all ages

Female_data = xlsread('./Raw data/08-Japan/Japanese_1_8.xlsx','Female','B:D');
Male_data = xlsread('./Raw data/08-Japan/Japanese_1_8.xlsx','Male','B:D');

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
[M N] = size(Female_data); % Height (cm) Weight (Kg)
for i = 1:M
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
[M N] = size(Male_data); % Height (cm) Weight (Kg)
for i = 1:M
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

% we Calculate the sWHI distribution when c = 1; in a/Weight+b*Height^c
% For Female
% Age = 1;
X_Temp = Female_data_1(:,1)/100; % Height (m)
Y_Temp = Female_data_1(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Female_08_Japan_All__ = [sWHI_Female_08_Japan_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 2;
X_Temp = Female_data_2(:,1)/100; % Height (m)
Y_Temp = Female_data_2(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Female_08_Japan_All__ = [sWHI_Female_08_Japan_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 3;
X_Temp = Female_data_3(:,1)/100; % Height (m)
Y_Temp = Female_data_3(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Female_08_Japan_All__ = [sWHI_Female_08_Japan_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 4;
X_Temp = Female_data_4(:,1)/100; % Height (m)
Y_Temp = Female_data_4(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Female_08_Japan_All__ = [sWHI_Female_08_Japan_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 5;
X_Temp = Female_data_5(:,1)/100; % Height (m)
Y_Temp = Female_data_5(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Female_08_Japan_All__ = [sWHI_Female_08_Japan_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 6;
X_Temp = Female_data_6(:,1)/100; % Height (m)
Y_Temp = Female_data_6(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Female_08_Japan_All__ = [sWHI_Female_08_Japan_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 7;
X_Temp = Female_data_7(:,1)/100; % Height (m)
Y_Temp = Female_data_7(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Female_08_Japan_All__ = [sWHI_Female_08_Japan_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 8;
X_Temp = Female_data_8(:,1)/100; % Height (m)
Y_Temp = Female_data_8(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Female_08_Japan_All__ = [sWHI_Female_08_Japan_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end

% For Male
% Age = 1;
X_Temp = Male_data_1(:,1)/100; % Height (m)
Y_Temp = Male_data_1(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Male_08_Japan_All__ = [sWHI_Male_08_Japan_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 2;
X_Temp = Male_data_2(:,1)/100; % Height (m)
Y_Temp = Male_data_2(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Male_08_Japan_All__ = [sWHI_Male_08_Japan_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 3;
X_Temp = Male_data_3(:,1)/100; % Height (m)
Y_Temp = Male_data_3(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Male_08_Japan_All__ = [sWHI_Male_08_Japan_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 4;
X_Temp = Male_data_4(:,1)/100; % Height (m)
Y_Temp = Male_data_4(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Male_08_Japan_All__ = [sWHI_Male_08_Japan_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 5;
X_Temp = Male_data_5(:,1)/100; % Height (m)
Y_Temp = Male_data_5(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Male_08_Japan_All__ = [sWHI_Male_08_Japan_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 6;
X_Temp = Male_data_6(:,1)/100; % Height (m)
Y_Temp = Male_data_6(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Male_08_Japan_All__ = [sWHI_Male_08_Japan_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 7;
X_Temp = Male_data_7(:,1)/100; % Height (m)
Y_Temp = Male_data_7(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Male_08_Japan_All__ = [sWHI_Male_08_Japan_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end
% Age = 8;
X_Temp = Male_data_8(:,1)/100; % Height (m)
Y_Temp = Male_data_8(:,2); % Weight (Kg)
Z_Temp = X_Temp.*Y_Temp; % Weight*Height (Kg.m)
PP = polyfit(Z_Temp,Y_Temp,1); % linear fitting;  Weight = a + b*Weight*Height
Coefficient_a = PP(2);
Coefficient_b = PP(1);
[M N] = size(X_Temp);
for i = 1:M
    sWHI_Male_08_Japan_All__ = [sWHI_Male_08_Japan_All__ Coefficient_a/Y_Temp(i)+Coefficient_b*X_Temp(i)^c]; % a/Weight+b*Height
end

%% We save the data 
save sWHI_08_Japan__.mat sWHI_Female_08_Japan_All__ sWHI_Male_08_Japan_All__
