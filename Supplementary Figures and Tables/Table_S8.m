%% Source codes for Table S8
% We calculate the coefficients a and b for
% 07-China
% 
%%
c= 1;
%%
Save_data = [];
%% Loading the data

%% America_ALL
%% Load the data
load('.\All coefficients\07-China\Coefficients_a_and_b_c1_China.mat')
% We calculate the coefficients of a and b in 1=a/Weight+b*Height for this
% dataset
%% Chongqing_6_21_China
%% For Female
% Age: 6:25
Age = 6:25;
Coefficient_a = [Coefficient_a_Female_1_Chongqing_6_21_China 0 0 0 0];
Coefficient_b = [Coefficient_b_Female_1_Chongqing_6_21_China 0 0 0 0];
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

%% For Male
% Age: 6:25
Age = 6:25;
Coefficient_a = [Coefficient_a_Male_1_Chongqing_6_21_China 0 0 0 0];
Coefficient_b = [Coefficient_b_Male_1_Chongqing_6_21_China 0 0 0 0];
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

%% BCCPDS_7_21_China
%% For Female
% Age: 6:25
Age = 6:25;
Coefficient_a = [0 Coefficient_a_Female_1_BCCPDS_7_21_China 0 0 0 0];
Coefficient_b = [0 Coefficient_b_Female_1_BCCPDS_7_21_China 0 0 0 0];
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

%% For Male
% Age: 6:25
Age = 6:25;
Coefficient_a = [0 Coefficient_a_Male_1_BCCPDS_7_21_China 0 0 0 0];
Coefficient_b = [0 Coefficient_b_Male_1_BCCPDS_7_21_China 0 0 0 0];
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

%% Jilin_China
%% For Female
% Age: 6:25
Age = 6:25;
Coefficient_a = [0 Coefficient_a_Female_1_Jilin_China 0 0 0 0 0 0 0];
Coefficient_b = [0 Coefficient_b_Female_1_Jilin_China 0 0 0 0 0 0 0];
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

%% For Male
% Age: 6:25
Age = 6:25;
Coefficient_a = [0 Coefficient_a_Male_1_Jilin_China 0 0 0 0 0 0 0];
Coefficient_b = [0 Coefficient_b_Male_1_Jilin_China 0 0 0 0 0 0 0];
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

%% Age_CHARLS_China
%% For Female
% Age: 41:60
Age = 41:60;
Coefficient_a = Coefficient_a_Female_1_CHARLS_China(1:20);
Coefficient_b = Coefficient_b_Female_1_CHARLS_China(1:20);
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

% Age: 61:80
Age = 61:80;
Coefficient_a = Coefficient_a_Female_1_CHARLS_China(21:40);
Coefficient_b = Coefficient_b_Female_1_CHARLS_China(21:40);
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

% Age: 81:100
Age = 81:100;
Coefficient_a = [Coefficient_a_Female_1_CHARLS_China(41:end) 0 0 0 0 0 0 0 0 0 0 0 0 0];
Coefficient_b = [Coefficient_b_Female_1_CHARLS_China(41:end) 0 0 0 0 0 0 0 0 0 0 0 0 0];
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

%% For Male
% Age: 41:60
Age = 41:60;
Coefficient_a = Coefficient_a_Male_1_CHARLS_China(1:20);
Coefficient_b = Coefficient_b_Male_1_CHARLS_China(1:20);
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

% Age: 61:80
Age = 61:80;
Coefficient_a = Coefficient_a_Male_1_CHARLS_China(21:40);
Coefficient_b = Coefficient_b_Male_1_CHARLS_China(21:40);
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

% Age: 81:100
Age = 81:100;
Coefficient_a = [Coefficient_a_Male_1_CHARLS_China(41:end) 0 0 0 0 0 0 0 0 0 0 0 0 0];
Coefficient_b = [Coefficient_b_Male_1_CHARLS_China(41:end) 0 0 0 0 0 0 0 0 0 0 0 0 0];
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

%% We save the data
Save_data = round(Save_data,6);
xlswrite('Table S8.xlsx',Save_data,'Sheet1','D2');
