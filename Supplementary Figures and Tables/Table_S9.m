%% Source codes for Table S9
% We calculate the coefficients a and b for
% 08-Japan
% 
%%
c= 1;
%%
Save_data = [];
%% Loading the data

%% America_ALL
%% Load the data
load('.\All coefficients\08-Japan\Coefficients_a_and_b_c1_Japan.mat')
% We calculate the coefficients of a and b in 1=a/Weight+b*Height for this
% dataset
%% For Female
% Age: 1:8
Age = 1:8;
Coefficient_a = Coefficient_a_Female_1_Japanese_1_8;
Coefficient_b = Coefficient_b_Female_1_Japanese_1_8;
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

%% For Male
% Age: 1:8
Age = 1:8;
Coefficient_a = Coefficient_a_Male_1_Japanese_1_8;
Coefficient_b = Coefficient_b_Male_1_Japanese_1_8;
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

%% We save the data
Save_data = round(Save_data,6);
xlswrite('Table S9.xlsx',Save_data,'Sheet1','D2');
