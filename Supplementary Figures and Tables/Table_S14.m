%% Source codes for Table S14
%
%%
My_Percentile = [2 5 10 15 20 25 30 35 40 45 50 55 60 65 70 75 80 85 90 95 98]; % quantile distribution
%% dHr_Hp
% Loading the dHr_Hps
load('All coefficients\dHr_Hp_01_NHANES.mat')
load('All coefficients\dHr_Hp_02_ENSAUNT.mat')
load('All coefficients\dHr_Hp_03_KNHANES.mat')
load('All coefficients\dHr_Hp_04_SHARE.mat')
load('All coefficients\dHr_Hp_05_KSPF.mat')
load('All coefficients\dHr_Hp_06_ELSH_Brasil.mat')
load('All coefficients\dHr_Hp_07_China.mat')
load('All coefficients\dHr_Hp_08_Japan.mat')
load('All coefficients\dHr_Hp_09_Bangladesh.mat')
%%
Save_data = [];
%% 01_NHANES
% Female
My_data = dHr_Hp_01_NHANES_Female; % Raw
My_p = prctile(My_data,My_Percentile);
My_Mean = mean(My_data);
Save_data = [Save_data;My_p(1:11) My_Mean My_p(12:end) std(My_data)];
% Male
My_data = dHr_Hp_01_NHANES_Male; % Raw
My_p = prctile(My_data,My_Percentile);
My_Mean = mean(My_data);
Save_data = [Save_data;My_p(1:11) My_Mean My_p(12:end) std(My_data)];

%% 02_ENSAUNT
% Female
My_data = dHr_Hp_02_ENSAUNT_Female; % Raw
My_p = prctile(My_data,My_Percentile);
My_Mean = mean(My_data);
Save_data = [Save_data;My_p(1:11) My_Mean My_p(12:end) std(My_data)];
% Male
My_data = dHr_Hp_02_ENSAUNT_Male; % Raw
My_p = prctile(My_data,My_Percentile);
My_Mean = mean(My_data);
Save_data = [Save_data;My_p(1:11) My_Mean My_p(12:end) std(My_data)];

%% 03_KNHANES
% Female
My_data = dHr_Hp_03_KNHANES_Female; % Raw
My_p = prctile(My_data,My_Percentile);
My_Mean = mean(My_data);
Save_data = [Save_data;My_p(1:11) My_Mean My_p(12:end) std(My_data)];
% Male
My_data = dHr_Hp_03_KNHANES_Male; % Raw
My_p = prctile(My_data,My_Percentile);
My_Mean = mean(My_data);
Save_data = [Save_data;My_p(1:11) My_Mean My_p(12:end) std(My_data)];

%% 04_SHARE
% Female
My_data = dHr_Hp_04_SHARE_Female; % Raw
My_p = prctile(My_data,My_Percentile);
My_Mean = mean(My_data);
Save_data = [Save_data;My_p(1:11) My_Mean My_p(12:end) std(My_data)];
% Male
My_data = dHr_Hp_04_SHARE_Male; % Raw
My_p = prctile(My_data,My_Percentile);
My_Mean = mean(My_data);
Save_data = [Save_data;My_p(1:11) My_Mean My_p(12:end) std(My_data)];

%% 05_KSPF
% Female
My_data = dHr_Hp_05_KSPF_Female; % Raw
My_p = prctile(My_data,My_Percentile);
My_Mean = mean(My_data);
Save_data = [Save_data;My_p(1:11) My_Mean My_p(12:end) std(My_data)];
% Male
My_data = dHr_Hp_05_KSPF_Male; % Raw
My_p = prctile(My_data,My_Percentile);
My_Mean = mean(My_data);
Save_data = [Save_data;My_p(1:11) My_Mean My_p(12:end) std(My_data)];

%% 06_ELSH_Brasil
% Female
My_data = dHr_Hp_06_ELSH_Brasil_Female; % Raw
My_p = prctile(My_data,My_Percentile);
My_Mean = mean(My_data);
Save_data = [Save_data;My_p(1:11) My_Mean My_p(12:end) std(My_data)];
% Male
My_data = dHr_Hp_06_ELSH_Brasil_Male; % Raw
My_p = prctile(My_data,My_Percentile);
My_Mean = mean(My_data);
Save_data = [Save_data;My_p(1:11) My_Mean My_p(12:end) std(My_data)];

%% 07_China
% Female
My_data = dHr_Hp_07_China_Female; % Raw
My_p = prctile(My_data,My_Percentile);
My_Mean = mean(My_data);
Save_data = [Save_data;My_p(1:11) My_Mean My_p(12:end) std(My_data)];
% Male
My_data = dHr_Hp_07_China_Male; % Raw
My_p = prctile(My_data,My_Percentile);
My_Mean = mean(My_data);
Save_data = [Save_data;My_p(1:11) My_Mean My_p(12:end) std(My_data)];

%% 08_Japan
% Female
My_data = dHr_Hp_08_Japan_Female; % Raw
My_p = prctile(My_data,My_Percentile);
My_Mean = mean(My_data);
Save_data = [Save_data;My_p(1:11) My_Mean My_p(12:end) std(My_data)];
% Male
My_data = dHr_Hp_08_Japan_Male; % Raw
My_p = prctile(My_data,My_Percentile);
My_Mean = mean(My_data);
Save_data = [Save_data;My_p(1:11) My_Mean My_p(12:end) std(My_data)];

%% 09_Bangladesh
% Female
My_data = dHr_Hp_09_Bangladesh_Female; % Raw
My_p = prctile(My_data,My_Percentile);
My_Mean = mean(My_data);
Save_data = [Save_data;My_p(1:11) My_Mean My_p(12:end) std(My_data)];
%%
Save_data = round(Save_data,6); % 精确到第六位
xlswrite('Table S14.xlsx',Save_data,'Sheet1','C2');

