%% Source codes for Table S3
% We calculate the coefficients a and b for
% 02-ENSAUNT
% 
%%
c= 1;
%%
Save_data = [];
%% Loading the data

%% America_ALL
%% Load the data
load('.\All coefficients\02-ENSAUNT\Coefficients_a_and_b_c1_ENSAUT_ALL.mat')
% We calculate the coefficients of a and b in 1=a/Weight+b*Height for this
% dataset
%% For Female
% Age: 1:22
Age = 1:22;
Coefficient_a = Coefficient_a_Female_1_ENSANUT_ALL(1:22);
Coefficient_b = Coefficient_b_Female_1_ENSANUT_ALL(1:22);
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

% Age: 23:44
Age = 23:44;
Coefficient_a = Coefficient_a_Female_1_ENSANUT_ALL(23:44);
Coefficient_b = Coefficient_b_Female_1_ENSANUT_ALL(23:44);
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

% Age: 45:66
Age = 45:66;
Coefficient_a = Coefficient_a_Female_1_ENSANUT_ALL(45:66);
Coefficient_b = Coefficient_b_Female_1_ENSANUT_ALL(45:66);
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

% Age: 67:88
Age = 67:88;
Coefficient_a = [Coefficient_a_Female_1_ENSANUT_ALL(67:85) 0 0 0];
Coefficient_b = [Coefficient_b_Female_1_ENSANUT_ALL(67:85) 0 0 0];
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

%% For Male
% Age: 1:22
Age = 1:22;
Coefficient_a = Coefficient_a_Male_1_ENSANUT_ALL(1:22);
Coefficient_b = Coefficient_b_Male_1_ENSANUT_ALL(1:22);
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

% Age: 23:44
Age = 23:44;
Coefficient_a = Coefficient_a_Male_1_ENSANUT_ALL(23:44);
Coefficient_b = Coefficient_b_Male_1_ENSANUT_ALL(23:44);
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

% Age: 45:66
Age = 45:66;
Coefficient_a = Coefficient_a_Male_1_ENSANUT_ALL(45:66);
Coefficient_b = Coefficient_b_Male_1_ENSANUT_ALL(45:66);
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

% Age: 67:88
Age = 67:88;
Coefficient_a = [Coefficient_a_Male_1_ENSANUT_ALL(67:85) 0 0 0];
Coefficient_b = [Coefficient_b_Male_1_ENSANUT_ALL(67:85) 0 0 0];
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

%% We save the data
Save_data = round(Save_data,6);
xlswrite('Table S3.xlsx',Save_data,'Sheet1','D2');
