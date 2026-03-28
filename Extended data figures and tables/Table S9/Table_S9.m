%% Source codes for Extended_Data_Table_9
%
%%
My_Percentile = [2 5 10 15 20 25 30 35 40 45 50 55 60 65 70 75 80 85 90 95 98]; % quantile distribution
%% Loading the Wr-Wp
% For Europe
load('dWr_Wp_Europe_ALL_2.mat') % Raw
% For America
load('dWr_Wp_America_ALL_0.mat') % Raw
load('dWr_Wp_America_ALL_1.mat') % Raw
load('dWr_Wp_America_ALL_2.mat') % Raw
% For Asia
load('dWr_Wp_Asia_ALL_0.mat') % Raw
load('dWr_Wp_Asia_ALL_1.mat') % Raw
load('dWr_Wp_Asia_ALL_2.mat') % Raw
%% Removal of outliers
% Europe
% Female
% Age >= 50
Temp = dWr_Wp_Europe_ALL_Female_2;
dWr_Wp_Europe_ALL_Female_2 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100 % -100 <= Wr-Wp <= 100
        dWr_Wp_Europe_ALL_Female_2 = [dWr_Wp_Europe_ALL_Female_2 Temp(i)];
    end
end
% Male
% Age >= 50
Temp = dWr_Wp_Europe_ALL_Male_2;
dWr_Wp_Europe_ALL_Male_2 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100 % -100 <= Wr-Wp <= 100
        dWr_Wp_Europe_ALL_Male_2 = [dWr_Wp_Europe_ALL_Male_2 Temp(i)];
    end
end
% America
% Female
% Age < 25
Temp = dWr_Wp_America_ALL_Female_0;
dWr_Wp_America_ALL_Female_0 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100 % -100 <= Wr-Wp <= 100
        dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Temp(i)];
    end
end
% 25 <= Age < 50
Temp = dWr_Wp_America_ALL_Female_1;
dWr_Wp_America_ALL_Female_1 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100 % -100 <= Wr-Wp <= 100
        dWr_Wp_America_ALL_Female_1 = [dWr_Wp_America_ALL_Female_1 Temp(i)];
    end
end
% Age >= 50
Temp = dWr_Wp_America_ALL_Female_2;
dWr_Wp_America_ALL_Female_2 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100 % -100 <= Wr-Wp <= 100
        dWr_Wp_America_ALL_Female_2 = [dWr_Wp_America_ALL_Female_2 Temp(i)];
    end
end
% Male
% Age < 25
Temp = dWr_Wp_America_ALL_Male_0;
dWr_Wp_America_ALL_Male_0 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100 % -100 <= Wr-Wp <= 100
        dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Temp(i)];
    end
end
% 25 <= Age < 50
Temp = dWr_Wp_America_ALL_Male_1;
dWr_Wp_America_ALL_Male_1 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100 % -100 <= Wr-Wp <= 100
        dWr_Wp_America_ALL_Male_1 = [dWr_Wp_America_ALL_Male_1 Temp(i)];
    end
end
% Age >= 50
Temp = dWr_Wp_America_ALL_Male_2;
dWr_Wp_America_ALL_Male_2 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100 % -100 <= Wr-Wp <= 100
        dWr_Wp_America_ALL_Male_2 = [dWr_Wp_America_ALL_Male_2 Temp(i)];
    end
end
% Asia
% Female
% Age < 25
Temp = dWr_Wp_Asia_ALL_Female_0;
dWr_Wp_Asia_ALL_Female_0 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100 % -100 <= Wr-Wp <= 100
        dWr_Wp_Asia_ALL_Female_0 = [dWr_Wp_Asia_ALL_Female_0 Temp(i)];
    end
end
% 25 <= Age < 50
Temp = dWr_Wp_Asia_ALL_Female_1;
dWr_Wp_Asia_ALL_Female_1 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100 % -100 <= Wr-Wp <= 100
        dWr_Wp_Asia_ALL_Female_1 = [dWr_Wp_Asia_ALL_Female_1 Temp(i)];
    end
end
% Age >= 50
Temp = dWr_Wp_Asia_ALL_Female_2;
dWr_Wp_Asia_ALL_Female_2 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100 % -100 <= Wr-Wp <= 100
        dWr_Wp_Asia_ALL_Female_2 = [dWr_Wp_Asia_ALL_Female_2 Temp(i)];
    end
end
% Male
% Age < 25
Temp = dWr_Wp_Asia_ALL_Male_0;
dWr_Wp_Asia_ALL_Male_0 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100 % -100 <= Wr-Wp <= 100
        dWr_Wp_Asia_ALL_Male_0 = [dWr_Wp_Asia_ALL_Male_0 Temp(i)];
    end
end
% 25 <= Age < 50
Temp = dWr_Wp_Asia_ALL_Male_1;
dWr_Wp_Asia_ALL_Male_1 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100 % -100 <= Wr-Wp <= 100
        dWr_Wp_Asia_ALL_Male_1 = [dWr_Wp_Asia_ALL_Male_1 Temp(i)];
    end
end
% Age >= 50
Temp = dWr_Wp_Asia_ALL_Male_2;
dWr_Wp_Asia_ALL_Male_2 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100 % -100 <= Wr-Wp <= 100
        dWr_Wp_Asia_ALL_Male_2 = [dWr_Wp_Asia_ALL_Male_2 Temp(i)];
    end
end
%%
Save_data = [];
%% For All
%% For Europe
% Female
My_data = dWr_Wp_Europe_ALL_Female_2; % Age>=50
My_p = prctile(My_data,My_Percentile);
My_Mean = mean(My_data);
Save_data = [Save_data;My_p(1:11) My_Mean My_p(12:end) std(My_data)];
% Male
My_data = dWr_Wp_Europe_ALL_Male_2; % Age>=50
My_p = prctile(My_data,My_Percentile);
My_Mean = mean(My_data);
Save_data = [Save_data;My_p(1:11) My_Mean My_p(12:end) std(My_data)];
%% For America
% Female
My_data = dWr_Wp_America_ALL_Female_0; % Age<25
My_p = prctile(My_data,My_Percentile);
My_Mean = mean(My_data);
Save_data = [Save_data;My_p(1:11) My_Mean My_p(12:end) std(My_data)];
My_data = dWr_Wp_America_ALL_Female_1; % 25<=Age<50
My_p = prctile(My_data,My_Percentile);
My_Mean = mean(My_data);
Save_data = [Save_data;My_p(1:11) My_Mean My_p(12:end) std(My_data)];
My_data = dWr_Wp_America_ALL_Female_2; % Age>=50
My_p = prctile(My_data,My_Percentile);
My_Mean = mean(My_data);
Save_data = [Save_data;My_p(1:11) My_Mean My_p(12:end) std(My_data)];
% Male
My_data = dWr_Wp_America_ALL_Male_0; % Age<25
My_p = prctile(My_data,My_Percentile);
My_Mean = mean(My_data);
Save_data = [Save_data;My_p(1:11) My_Mean My_p(12:end) std(My_data)];
My_data = dWr_Wp_America_ALL_Male_1; % 25<=Age<50
My_p = prctile(My_data,My_Percentile);
My_Mean = mean(My_data);
Save_data = [Save_data;My_p(1:11) My_Mean My_p(12:end) std(My_data)];
My_data = dWr_Wp_America_ALL_Male_2; % Age>=50
My_p = prctile(My_data,My_Percentile);
My_Mean = mean(My_data);
Save_data = [Save_data;My_p(1:11) My_Mean My_p(12:end) std(My_data)];
%% For Asia
% Female
My_data = dWr_Wp_Asia_ALL_Female_0; % Age<25
My_p = prctile(My_data,My_Percentile);
My_Mean = mean(My_data);
Save_data = [Save_data;My_p(1:11) My_Mean My_p(12:end) std(My_data)];
My_data = dWr_Wp_Asia_ALL_Female_1; % 25<=Age<50
My_p = prctile(My_data,My_Percentile);
My_Mean = mean(My_data);
Save_data = [Save_data;My_p(1:11) My_Mean My_p(12:end) std(My_data)];
My_data = dWr_Wp_Asia_ALL_Female_2; % Age>=50
My_p = prctile(My_data,My_Percentile);
My_Mean = mean(My_data);
Save_data = [Save_data;My_p(1:11) My_Mean My_p(12:end) std(My_data)];
% Male
My_data = dWr_Wp_Asia_ALL_Male_0; % Age<25
My_p = prctile(My_data,My_Percentile);
My_Mean = mean(My_data);
Save_data = [Save_data;My_p(1:11) My_Mean My_p(12:end) std(My_data)];
My_data = dWr_Wp_Asia_ALL_Male_1; % 25<=Age<50
My_p = prctile(My_data,My_Percentile);
My_Mean = mean(My_data);
Save_data = [Save_data;My_p(1:11) My_Mean My_p(12:end) std(My_data)];
My_data = dWr_Wp_Asia_ALL_Male_2; % Age>=50
My_p = prctile(My_data,My_Percentile);
My_Mean = mean(My_data);
Save_data = [Save_data;My_p(1:11) My_Mean My_p(12:end) std(My_data)];
%%
Save_data = round(Save_data,6); % 精确到第六位
xlswrite('Extended Data Table 9.xlsx',Save_data,'Sheet1','D2');
