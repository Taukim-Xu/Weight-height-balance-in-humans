%% Source codes for Asia_ALL
Save_data_Female = [];
Save_data_Male = [];
%% 25_Israel
Female_data = xlsread('25_Israel.xlsx','Female');
Male_data = xlsread('25_Israel.xlsx','Male');
Save_data_Female = [Save_data_Female;Female_data(:,2:4)];
Save_data_Male = [Save_data_Male;Male_data(:,2:4)];
%% BCCPDS_7_21_China
Female_data = xlsread('BCCPDS_7_21_China.xlsx','Female');
Male_data = xlsread('BCCPDS_7_21_China.xlsx','Male');
Save_data_Female = [Save_data_Female;Female_data(:,2:4)];
Save_data_Male = [Save_data_Male;Male_data(:,2:4)];
%% Chongqing_6_21_China
Female_data = xlsread('Chongqing_6_21_China.xlsx','Female');
Male_data = xlsread('Chongqing_6_21_China.xlsx','Male');
Save_data_Female = [Save_data_Female;Female_data(:,2:4)];
Save_data_Male = [Save_data_Male;Male_data(:,2:4)];
%% Jilin_China
Female_data = xlsread('Jilin_China.xlsx','Female');
Male_data = xlsread('Jilin_China.xlsx','Male');
Save_data_Female = [Save_data_Female;Female_data(:,2:4)];
Save_data_Male = [Save_data_Male;Male_data(:,2:4)];
%% Japanese_1_8
Female_data = xlsread('Japanese_1_8.xlsx','Female');
Male_data = xlsread('Japanese_1_8.xlsx','Male');
Save_data_Female = [Save_data_Female;Female_data(:,2:4)];
Save_data_Male = [Save_data_Male;Male_data(:,2:4)];
%% KSPF, Korea
Female_data = xlsread('KSPF, Korea.xlsx','Female');
Male_data = xlsread('KSPF, Korea.xlsx','Male');
Save_data_Female = [Save_data_Female;Female_data(:,2:4)];
Save_data_Male = [Save_data_Male;Male_data(:,2:4)];
%% Bangladesh_2011_14
Female_data = xlsread('Bangladesh_2011_14.xlsx','Female');
Save_data_Female = [Save_data_Female;Female_data(:,2:4)];
%% 
Save_data = [Save_data_Female;Save_data_Male];
xlswrite('Asia_ALL.xlsx',Save_data_Female,'Female','B2');
xlswrite('Asia_ALL.xlsx',Save_data_Male,'Male','B2');
xlswrite('Asia_ALL.xlsx',Save_data,'ALL','C2');

