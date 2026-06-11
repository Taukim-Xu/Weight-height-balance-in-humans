%% Source codes for Table S11
%
%%
My_Percentile = [2 5 10 15 20 25 30 35 40 45 50 55 60 65 70 75 80 85 90 95 98]; % quantile distribution
%% sWHI
% Loading the sWHIs
load('All coefficients\sWHI_01_NHANES__.mat')
load('All coefficients\sWHI_02_ENSAUNT__.mat')
load('All coefficients\sWHI_03_KNHANES__.mat')
load('All coefficients\sWHI_04_SHARE__.mat')
load('All coefficients\sWHI_05_KSPF__.mat')
load('All coefficients\sWHI_06_ELSH_Brasil__.mat')
load('All coefficients\sWHI_07_China__.mat')
load('All coefficients\sWHI_08_Japan__.mat')
load('All coefficients\sWHI_09_Bangladesh__.mat')
%%
Save_data = [];
%% 01_NHANES
% Female
My_data = sWHI_Female_01_NHANES_All__; % Raw
My_p = prctile(My_data,My_Percentile);
My_Mean = mean(My_data);
Save_data = [Save_data;My_p(1:11) My_Mean My_p(12:end) std(My_data)];
% Male
My_data = sWHI_Male_01_NHANES_All__; % Raw
My_p = prctile(My_data,My_Percentile);
My_Mean = mean(My_data);
Save_data = [Save_data;My_p(1:11) My_Mean My_p(12:end) std(My_data)];

%% 02_ENSAUNT
% Female
My_data = sWHI_Female_02_ENSAUNT_All__; % Raw
My_p = prctile(My_data,My_Percentile);
My_Mean = mean(My_data);
Save_data = [Save_data;My_p(1:11) My_Mean My_p(12:end) std(My_data)];
% Male
My_data = sWHI_Male_02_ENSAUNT_All__; % Raw
My_p = prctile(My_data,My_Percentile);
My_Mean = mean(My_data);
Save_data = [Save_data;My_p(1:11) My_Mean My_p(12:end) std(My_data)];

%% 03_KNHANES
% Female
My_data = sWHI_Female_03_KNHANES_All__; % Raw
My_p = prctile(My_data,My_Percentile);
My_Mean = mean(My_data);
Save_data = [Save_data;My_p(1:11) My_Mean My_p(12:end) std(My_data)];
% Male
My_data = sWHI_Male_03_KNHANES_All__; % Raw
My_p = prctile(My_data,My_Percentile);
My_Mean = mean(My_data);
Save_data = [Save_data;My_p(1:11) My_Mean My_p(12:end) std(My_data)];

%% 04_SHARE
% Female
My_data = sWHI_Female_04_SHARE_All__; % Raw
My_p = prctile(My_data,My_Percentile);
My_Mean = mean(My_data);
Save_data = [Save_data;My_p(1:11) My_Mean My_p(12:end) std(My_data)];
% Male
My_data = sWHI_Male_04_SHARE_All__; % Raw
My_p = prctile(My_data,My_Percentile);
My_Mean = mean(My_data);
Save_data = [Save_data;My_p(1:11) My_Mean My_p(12:end) std(My_data)];

%% 05_KSPF
% Female
My_data = sWHI_Female_05_KSPF_All__; % Raw
My_p = prctile(My_data,My_Percentile);
My_Mean = mean(My_data);
Save_data = [Save_data;My_p(1:11) My_Mean My_p(12:end) std(My_data)];
% Male
My_data = sWHI_Male_05_KSPF_All__; % Raw
My_p = prctile(My_data,My_Percentile);
My_Mean = mean(My_data);
Save_data = [Save_data;My_p(1:11) My_Mean My_p(12:end) std(My_data)];

%% 06_ELSH_Brasil
% Female
My_data = sWHI_Female_06_ELSH_Brasil_All__; % Raw
My_p = prctile(My_data,My_Percentile);
My_Mean = mean(My_data);
Save_data = [Save_data;My_p(1:11) My_Mean My_p(12:end) std(My_data)];
% Male
My_data = sWHI_Male_06_ELSH_Brasil_All__; % Raw
My_p = prctile(My_data,My_Percentile);
My_Mean = mean(My_data);
Save_data = [Save_data;My_p(1:11) My_Mean My_p(12:end) std(My_data)];

%% 07_China
% Female
My_data = sWHI_Female_07_China_All__; % Raw
My_p = prctile(My_data,My_Percentile);
My_Mean = mean(My_data);
Save_data = [Save_data;My_p(1:11) My_Mean My_p(12:end) std(My_data)];
% Male
My_data = sWHI_Male_07_China_All__; % Raw
My_p = prctile(My_data,My_Percentile);
My_Mean = mean(My_data);
Save_data = [Save_data;My_p(1:11) My_Mean My_p(12:end) std(My_data)];

%% 08_Japan
% Female
My_data = sWHI_Female_08_Japan_All__; % Raw
My_p = prctile(My_data,My_Percentile);
My_Mean = mean(My_data);
Save_data = [Save_data;My_p(1:11) My_Mean My_p(12:end) std(My_data)];
% Male
My_data = sWHI_Male_08_Japan_All__; % Raw
My_p = prctile(My_data,My_Percentile);
My_Mean = mean(My_data);
Save_data = [Save_data;My_p(1:11) My_Mean My_p(12:end) std(My_data)];

%% 09_Bangladesh
% Female
My_data = sWHI_Female_09_Bangladesh_All__; % Raw
My_p = prctile(My_data,My_Percentile);
My_Mean = mean(My_data);
Save_data = [Save_data;My_p(1:11) My_Mean My_p(12:end) std(My_data)];

%%
Save_data = round(Save_data,6); % 精确到第六位
xlswrite('Table S11.xlsx',Save_data,'Sheet1','C2');

