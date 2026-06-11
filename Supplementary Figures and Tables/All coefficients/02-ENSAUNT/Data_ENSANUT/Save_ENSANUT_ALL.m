%%
Save_data_Female = [];
Save_data_Male = [];
%% ENSANUT 2006
Female_data = xlsread('Data_ENSANUT\ENSANUT 2006.xlsx','Female');
Male_data = xlsread('Data_ENSANUT\ENSANUT 2006.xlsx','Male');
Save_data_Female = [Save_data_Female;Female_data];
Save_data_Male = [Save_data_Male;Male_data];
%% ENSANUT 2012
Female_data = xlsread('Data_ENSANUT\ENSANUT 2012.xlsx','Female');
Male_data = xlsread('Data_ENSANUT\ENSANUT 2012.xlsx','Male');
Save_data_Female = [Save_data_Female;Female_data];
Save_data_Male = [Save_data_Male;Male_data];
%% ENSANUT 2016
Female_data = xlsread('Data_ENSANUT\ENSANUT 2016.xlsx','Female');
Male_data = xlsread('Data_ENSANUT\ENSANUT 2016.xlsx','Male');
Save_data_Female = [Save_data_Female;Female_data];
Save_data_Male = [Save_data_Male;Male_data];
%% ENSANUT 2018
Female_data = xlsread('Data_ENSANUT\ENSANUT 2018.xlsx','Female');
Male_data = xlsread('Data_ENSANUT\ENSANUT 2018.xlsx','Male');
Save_data_Female = [Save_data_Female;Female_data];
Save_data_Male = [Save_data_Male;Male_data];
%% ENSANUT 100K 2018
Female_data = xlsread('Data_ENSANUT\ENSANUT 100K 2018.xlsx','Female');
Male_data = xlsread('Data_ENSANUT\ENSANUT 100K 2018.xlsx','Male');
Save_data_Female = [Save_data_Female;Female_data];
Save_data_Male = [Save_data_Male;Male_data];
%% Save the data
xlswrite('ENSANUT ALL.xlsx',Save_data_Female,'Female','A2')
xlswrite('ENSANUT ALL.xlsx',Save_data_Male,'Male','A2')



