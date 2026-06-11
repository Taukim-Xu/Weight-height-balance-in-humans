%% Source codes for Total_All
Save_data_Female = [];
Save_data_Male = [];
%% 01-NHANES
Female_data = xlsread('01-NHANES\NHANES_ALL.xlsx','Female','C:E');
Male_data = xlsread('01-NHANES\NHANES_ALL.xlsx','Male','C:E');
Save_data_Female = [Save_data_Female;Female_data];
Save_data_Male = [Save_data_Male;Male_data];
%% 02-ENSAUNT
Female_data = xlsread('02-ENSAUNT\ENSANUT ALL.xlsx','Female','B:D');
Male_data = xlsread('02-ENSAUNT\ENSANUT ALL.xlsx','Male','B:D');
Save_data_Female = [Save_data_Female;Female_data];
Save_data_Male = [Save_data_Male;Male_data];
%% 03-KNHANES
Female_data = xlsread('03-KNHANES\KNHANES_ALL.xlsx','Female','B:D');
Male_data = xlsread('03-KNHANES\KNHANES_ALL.xlsx','Male','B:D');
Save_data_Female = [Save_data_Female;Female_data];
Save_data_Male = [Save_data_Male;Male_data];
%% 04-SHARE
Female_data = xlsread('04-SHARE\SHARE_ALL.xlsx','Female','B:D');
Male_data = xlsread('04-SHARE\SHARE_ALL.xlsx','Male','B:D');
Save_data_Female = [Save_data_Female;Female_data];
Save_data_Male = [Save_data_Male;Male_data];
%% 05-KSPF
Female_data = xlsread('05-KSPF\KSPF, Korea.xlsx','Female','B:D');
Male_data = xlsread('05-KSPF\KSPF, Korea.xlsx','Male','B:D');
Save_data_Female = [Save_data_Female;Female_data];
Save_data_Male = [Save_data_Male;Male_data];
%% 06-ELSH-Brasil
Female_data = xlsread('06-ELSH-Brasil\ELSA-Brasil.xls','Female','B:D');
Male_data = xlsread('06-ELSH-Brasil\ELSA-Brasil.xls','Male','B:D');
Save_data_Female = [Save_data_Female;Female_data];
Save_data_Male = [Save_data_Male;Male_data];
%% 07-China
Female_data = xlsread('07-China\China_ALL.xlsx','Female','B:D');
Male_data = xlsread('07-China\China_ALL.xlsx','Male','B:D');
Save_data_Female = [Save_data_Female;Female_data];
Save_data_Male = [Save_data_Male;Male_data];
%% 08-Japan
Female_data = xlsread('08-Japan\Japanese_1_8.xlsx','Female','B:D');
Male_data = xlsread('08-Japan\Japanese_1_8.xlsx','Male','B:D');
Save_data_Female = [Save_data_Female;Female_data];
Save_data_Male = [Save_data_Male;Male_data];
%% 09-Bangladesh
Female_data = xlsread('09-Bangladesh\Bangladesh_2011_14.xlsx','Female','B:D');
Save_data_Female = [Save_data_Female;Female_data];
%% 
xlswrite('Total_All.xlsx',Save_data_Female,'Female','B2');
xlswrite('Total_All.xlsx',Save_data_Male,'Male','B2');