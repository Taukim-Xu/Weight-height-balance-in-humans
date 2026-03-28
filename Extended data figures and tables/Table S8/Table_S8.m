%% Source codes for Extended_Data_Table_8
%
%%
My_Percentile = [2 5 10 15 20 25 30 35 40 45 50 55 60 65 70 75 80 85 90 95 98]; % quantile distribution
%% Loading the sWHIs
% For All
load('dHr_Hp_America_ALL.mat') % Raw
% For Europe
load('dHr_Hp_Europe_ALL.mat') % Raw
% For America
load('dHr_Hp_America_ALL.mat') % Raw
% For Asia
load('dHr_Hp_Asia_ALL.mat') % Raw
%%
Save_data = [];
%% For All
% Female
My_data = dHr_Hp_Total_ALL_Female; % Raw
My_p = prctile(My_data,My_Percentile);
My_Mean = mean(My_data);
Save_data = [Save_data;My_p(1:11) My_Mean My_p(12:end) std(My_data)];
% Male
My_data = dHr_Hp_Total_ALL_Male; % Raw
My_p = prctile(My_data,My_Percentile);
My_Mean = mean(My_data);
Save_data = [Save_data;My_p(1:11) My_Mean My_p(12:end) std(My_data)];
%% For Europe
% Female
My_data = dHr_Hp_Europe_ALL_Female; % Raw
My_p = prctile(My_data,My_Percentile);
My_Mean = mean(My_data);
Save_data = [Save_data;My_p(1:11) My_Mean My_p(12:end) std(My_data)];
% Male
My_data = dHr_Hp_Europe_ALL_Male; % Raw
My_p = prctile(My_data,My_Percentile);
My_Mean = mean(My_data);
Save_data = [Save_data;My_p(1:11) My_Mean My_p(12:end) std(My_data)];
%% For America
% Female
My_data = dHr_Hp_America_ALL_Female; % Raw
My_p = prctile(My_data,My_Percentile);
My_Mean = mean(My_data);
Save_data = [Save_data;My_p(1:11) My_Mean My_p(12:end) std(My_data)];
% Male
My_data = dHr_Hp_America_ALL_Male; % Raw
My_p = prctile(My_data,My_Percentile);
My_Mean = mean(My_data);
Save_data = [Save_data;My_p(1:11) My_Mean My_p(12:end) std(My_data)];
%% For Asia
% Female
My_data = dHr_Hp_Asia_ALL_Female; % Raw
My_p = prctile(My_data,My_Percentile);
My_Mean = mean(My_data);
Save_data = [Save_data;My_p(1:11) My_Mean My_p(12:end) std(My_data)];
% Male
My_data = dHr_Hp_Asia_ALL_Male; % Raw
My_p = prctile(My_data,My_Percentile);
My_Mean = mean(My_data);
Save_data = [Save_data;My_p(1:11) My_Mean My_p(12:end) std(My_data)];

%%
Save_data = round(Save_data,6); % 精确到第六位
xlswrite('Extended Data Table 8.xlsx',Save_data,'Sheet1','C2');
