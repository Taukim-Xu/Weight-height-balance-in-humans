%% Source codes for Table S6
% We calculate the coefficients a and b for
% 06-ELSH-Brasil
% 
%%
c= 1;
%%
Save_data = [];
%% Loading the data

%% America_ALL
%% Load the data
load('.\All coefficients\06-ELSH-Brasil\Coefficients_a_and_b_c1_ELSA_Brasil.mat')
% We calculate the coefficients of a and b in 1=a/Weight+b*Height for this
% dataset
%% For Female
% Age: 35:54
Age = 35:54;
Coefficient_a = Coefficient_a_Female_1_ELSA_Brasil(1:20);
Coefficient_b = Coefficient_b_Female_1_ELSA_Brasil(1:20);
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

% Age: 55:74
Age = 55:74;
Coefficient_a = Coefficient_a_Female_1_ELSA_Brasil(21:40);
Coefficient_b = Coefficient_b_Female_1_ELSA_Brasil(21:40);
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

%% For Male
% Age: 35:54
Age = 35:54;
Coefficient_a = Coefficient_a_Male_1_ELSA_Brasil(1:20);
Coefficient_b = Coefficient_b_Male_1_ELSA_Brasil(1:20);
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

% Age: 55:74
Age = 55:74;
Coefficient_a = Coefficient_a_Male_1_ELSA_Brasil(21:40);
Coefficient_b = Coefficient_b_Male_1_ELSA_Brasil(21:40);
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

%% We save the data
Save_data = round(Save_data,6);
xlswrite('Table S7.xlsx',Save_data,'Sheet1','D2');
