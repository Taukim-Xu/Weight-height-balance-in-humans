%% Source codes for Table S6
% We calculate the coefficients a and b for
% 05-KSPF
% 
%%
c= 1;
%%
Save_data = [];
%% Loading the data

%% America_ALL
%% Load the data
load('.\All coefficients\05-KSPF\Coefficients_a_and_b_c1_KSPF.mat')
% We calculate the coefficients of a and b in 1=a/Weight+b*Height for this
% dataset
%% For Female
% Age: 11:30
Age = 11:30;
Coefficient_a = Coefficient_a_Female_1_KSPF_Korea(1:20);
Coefficient_b = Coefficient_b_Female_1_KSPF_Korea(1:20);
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

% Age: 31:50
Age = 31:50;
Coefficient_a = Coefficient_a_Female_1_KSPF_Korea(21:40);
Coefficient_b = Coefficient_b_Female_1_KSPF_Korea(21:40);
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

% Age: 51:70
Age = 51:70;
Coefficient_a = Coefficient_a_Female_1_KSPF_Korea(41:60);
Coefficient_b = Coefficient_b_Female_1_KSPF_Korea(41:60);
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

% Age: 71:90
Age = 71:90;
Coefficient_a = Coefficient_a_Female_1_KSPF_Korea(61:80);
Coefficient_b = Coefficient_b_Female_1_KSPF_Korea(61:80);
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

%% For Male
% Age: 11:30
Age = 11:30;
Coefficient_a = Coefficient_a_Male_1_KSPF_Korea(1:20);
Coefficient_b = Coefficient_b_Male_1_KSPF_Korea(1:20);
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

% Age: 31:50
Age = 31:50;
Coefficient_a = Coefficient_a_Male_1_KSPF_Korea(21:40);
Coefficient_b = Coefficient_b_Male_1_KSPF_Korea(21:40);
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

% Age: 51:70
Age = 51:70;
Coefficient_a = Coefficient_a_Male_1_KSPF_Korea(41:60);
Coefficient_b = Coefficient_b_Male_1_KSPF_Korea(41:60);
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

% Age: 71:90
Age = 71:90;
Coefficient_a = Coefficient_a_Male_1_KSPF_Korea(61:80);
Coefficient_b = Coefficient_b_Male_1_KSPF_Korea(61:80);
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

%% We save the data
Save_data = round(Save_data,6);
xlswrite('Table S6.xlsx',Save_data,'Sheet1','D2');
