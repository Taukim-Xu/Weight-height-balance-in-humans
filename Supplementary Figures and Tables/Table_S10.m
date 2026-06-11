%% Source codes for Table S10
% We calculate the coefficients a and b for
% 09-Bangladesh
% 
%%
c= 1;
%%
Save_data = [];
%% Loading the data

%% America_ALL
%% Load the data
load('.\All coefficients\09-Bangladesh\Coefficients_a_and_b_c1_Bangladesh.mat')
% We calculate the coefficients of a and b in 1=a/Weight+b*Height for this
% dataset
%% For Female
% Age: 10:19
Age = 10:19;
Coefficient_a = Coefficient_a_Female_1_Bangladesh_2011_14;
Coefficient_b = Coefficient_b_Female_1_Bangladesh_2011_14;
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

%% We save the data
Save_data = round(Save_data,6);
xlswrite('Table S10.xlsx',Save_data,'Sheet1','D2');
