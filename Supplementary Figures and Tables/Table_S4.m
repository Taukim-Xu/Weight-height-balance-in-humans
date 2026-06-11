%% Source codes for Table S4
% We calculate the coefficients a and b for
% 03-KNHANES
% 
%%
c= 1;
%%
Save_data = [];
%% Loading the data

%% America_ALL
%% Load the data
load('.\All coefficients\03-KNHANES\Coefficients_a_and_b_c1_KNHANES.mat')
% We calculate the coefficients of a and b in 1=a/Weight+b*Height for this
% dataset
%% For Female
% Age: 1:21
Age = 1:21;
Coefficient_a = Coefficient_a_Female_1_KNHANES_ALL(1:21);
Coefficient_b = Coefficient_b_Female_1_KNHANES_ALL(1:21);
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

% Age: 22:42
Age = 22:42;
Coefficient_a = Coefficient_a_Female_1_KNHANES_ALL(22:42);
Coefficient_b = Coefficient_b_Female_1_KNHANES_ALL(22:42);
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

% Age: 43:63
Age = 43:63;
Coefficient_a = Coefficient_a_Female_1_KNHANES_ALL(43:63);
Coefficient_b = Coefficient_b_Female_1_KNHANES_ALL(43:63);
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

% Age: 64:84
Age = 64:84;
Coefficient_a = [Coefficient_a_Female_1_KNHANES_ALL(64:80) 0 0 0 0];
Coefficient_b = [Coefficient_b_Female_1_KNHANES_ALL(64:80) 0 0 0 0];
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

%% For Male
% Age: 1:21
Age = 1:21;
Coefficient_a = Coefficient_a_Male_1_KNHANES_ALL(1:21);
Coefficient_b = Coefficient_b_Male_1_KNHANES_ALL(1:21);
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

% Age: 22:42
Age = 22:42;
Coefficient_a = Coefficient_a_Male_1_KNHANES_ALL(22:42);
Coefficient_b = Coefficient_b_Male_1_KNHANES_ALL(22:42);
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

% Age: 43:63
Age = 43:63;
Coefficient_a = Coefficient_a_Male_1_KNHANES_ALL(43:63);
Coefficient_b = Coefficient_b_Male_1_KNHANES_ALL(43:63);
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

% Age: 64:84
Age = 64:84;
Coefficient_a = [Coefficient_a_Male_1_KNHANES_ALL(64:80) 0 0 0 0];
Coefficient_b = [Coefficient_b_Male_1_KNHANES_ALL(64:80) 0 0 0 0];
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

%% We save the data
Save_data = round(Save_data,6);
xlswrite('Table S4.xlsx',Save_data,'Sheet1','D2');
