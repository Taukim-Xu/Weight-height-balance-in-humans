%% Source codes for Table S7
%
%%
My_Percentile = [2 5 10 15 20 25 30 35 40 45 50 55 60 65 70 75 80 85 90 95 98]; % quantile distribution
%% Loading the sWHIs
load('sWHI_All__0.mat') % Raw; sWHI_Female_All__25 sWHI_Male_All__25 --> Age < 25; sWHI_Female_All__25_50 sWHI_Male_All__25_50 --> 25<= Age < 50; sWHI_Female_All__50 sWHI_Male_All__50 --> Age >= 50
%%
Save_data = [];
%%
% Female
% Age < 25
My_data = sWHI_Female_All__25; % Raw
My_p = prctile(My_data,My_Percentile);
My_Mean = mean(My_data);
Save_data = [Save_data;My_p(1:11) My_Mean My_p(12:end) std(My_data)];
% 25<= Age < 50
My_data = sWHI_Female_All__25_50; % Raw
My_p = prctile(My_data,My_Percentile);
My_Mean = mean(My_data);
Save_data = [Save_data;My_p(1:11) My_Mean My_p(12:end) std(My_data)];
% Age >= 50
My_data = sWHI_Female_All__50; % Raw
My_p = prctile(My_data,My_Percentile);
My_Mean = mean(My_data);
Save_data = [Save_data;My_p(1:11) My_Mean My_p(12:end) std(My_data)];

% Male
% Age < 25
My_data = sWHI_Male_All__25; % Raw
My_p = prctile(My_data,My_Percentile);
My_Mean = mean(My_data);
Save_data = [Save_data;My_p(1:11) My_Mean My_p(12:end) std(My_data)];
% 25<= Age < 50
My_data = sWHI_Male_All__25_50; % Raw
My_p = prctile(My_data,My_Percentile);
My_Mean = mean(My_data);
Save_data = [Save_data;My_p(1:11) My_Mean My_p(12:end) std(My_data)];
% Age >= 50
My_data = sWHI_Male_All__50; % Raw
My_p = prctile(My_data,My_Percentile);
My_Mean = mean(My_data);
Save_data = [Save_data;My_p(1:11) My_Mean My_p(12:end) std(My_data)];

%%
Save_data = round(Save_data,6); % 精确到小数点后六位
xlswrite('Table S7.xlsx',Save_data,'Sheet1','C2');
