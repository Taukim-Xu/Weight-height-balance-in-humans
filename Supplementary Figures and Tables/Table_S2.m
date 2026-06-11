%% Source codes for Table S2
% We calculate the coefficients a and b for
% 01-NHANES
% 
%%
c= 1;
%%
Save_data = [];
%% Loading the data

%% America_ALL
%% Load the data
load('.\All coefficients\01-NHANES\Coefficient_a_and_b_c1_NHANES_ALL.mat')
% We calculate the coefficients of a and b in 1=a/Weight+b*Height for this
% dataset
%% For Female
% Age: 2:22
Age = 2:22;
Coefficient_a = Coefficient_a_Female_1_NHANES_ALL(1:21);
Coefficient_b = Coefficient_b_Female_1_NHANES_ALL(1:21);
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

% Age: 23:43
Age = 23:43;
Coefficient_a = Coefficient_a_Female_1_NHANES_ALL(22:42);
Coefficient_b = Coefficient_b_Female_1_NHANES_ALL(22:42);
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

% Age: 44:64
Age = 44:64;
Coefficient_a = Coefficient_a_Female_1_NHANES_ALL(43:63);
Coefficient_b = Coefficient_b_Female_1_NHANES_ALL(43:63);
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

% Age: 65:85
Age = 65:85;
Coefficient_a = Coefficient_a_Female_1_NHANES_ALL(64:84);
Coefficient_b = Coefficient_b_Female_1_NHANES_ALL(64:84);
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

%% For Male
% Age: 2:22
Age = 2:22;
Coefficient_a = Coefficient_a_Male_1_NHANES_ALL(1:21);
Coefficient_b = Coefficient_b_Male_1_NHANES_ALL(1:21);
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

% Age: 23:43
Age = 23:43;
Coefficient_a = Coefficient_a_Male_1_NHANES_ALL(22:42);
Coefficient_b = Coefficient_b_Male_1_NHANES_ALL(22:42);
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

% Age: 44:64
Age = 44:64;
Coefficient_a = Coefficient_a_Male_1_NHANES_ALL(43:63);
Coefficient_b = Coefficient_b_Male_1_NHANES_ALL(43:63);
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

% Age: 65:85
Age = 65:85;
Coefficient_a = Coefficient_a_Male_1_NHANES_ALL(64:84);
Coefficient_b = Coefficient_b_Male_1_NHANES_ALL(64:84);
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

%% We save the data
Save_data = round(Save_data,6);
xlswrite('Table S2.xlsx',Save_data,'Sheet1','D2');
