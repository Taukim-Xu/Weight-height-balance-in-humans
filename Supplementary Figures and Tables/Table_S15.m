%% Source codes for Table S15
%
tic;
%%
My_Percentile = [2 5 10 15 20 25 30 35 40 45 50 55 60 65 70 75 80 85 90 95 98]; % quantile distribution
%% dWr_Wp
% Loading the dWr_Wps
load('All coefficients\dWr_Wp_01_NHANES_0.mat')
load('All coefficients\dWr_Wp_02_ENSAUNT_0.mat')
load('All coefficients\dWr_Wp_03_KNHANES_0.mat')
load('All coefficients\dWr_Wp_04_SHARE_0.mat')
load('All coefficients\dWr_Wp_05_KSPF_0.mat')
load('All coefficients\dWr_Wp_06_ELSH_Brasil_0.mat')
load('All coefficients\dWr_Wp_07_China_0.mat')
load('All coefficients\dWr_Wp_08_Japan_0.mat')
load('All coefficients\dWr_Wp_09_Bangladesh_0.mat')
%%
% 01_NHANES
% Female
Temp = dWr_Wp_01_NHANES_Female__25;
dWr_Wp_01_NHANES_Female__25 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100
        dWr_Wp_01_NHANES_Female__25 = [dWr_Wp_01_NHANES_Female__25 Temp(i)];
    end
end
Temp = dWr_Wp_01_NHANES_Female__25_50;
dWr_Wp_01_NHANES_Female__25_50 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100
        dWr_Wp_01_NHANES_Female__25_50 = [dWr_Wp_01_NHANES_Female__25_50 Temp(i)];
    end
end
Temp = dWr_Wp_01_NHANES_Female__50;
dWr_Wp_01_NHANES_Female__50 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100
        dWr_Wp_01_NHANES_Female__50 = [dWr_Wp_01_NHANES_Female__50 Temp(i)];
    end
end
% Male
Temp = dWr_Wp_01_NHANES_Male__25;
dWr_Wp_01_NHANES_Male__25 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100
        dWr_Wp_01_NHANES_Male__25 = [dWr_Wp_01_NHANES_Male__25 Temp(i)];
    end
end
Temp = dWr_Wp_01_NHANES_Male__25_50;
dWr_Wp_01_NHANES_Male__25_50 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100
        dWr_Wp_01_NHANES_Male__25_50 = [dWr_Wp_01_NHANES_Male__25_50 Temp(i)];
    end
end
Temp = dWr_Wp_01_NHANES_Male__50;
dWr_Wp_01_NHANES_Male__50 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100
        dWr_Wp_01_NHANES_Male__50 = [dWr_Wp_01_NHANES_Male__50 Temp(i)];
    end
end

% 02_ENSAUNT
% Female
Temp = dWr_Wp_02_ENSAUNT_Female__25;
dWr_Wp_02_ENSAUNT_Female__25 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100
        dWr_Wp_02_ENSAUNT_Female__25 = [dWr_Wp_02_ENSAUNT_Female__25 Temp(i)];
    end
end
Temp = dWr_Wp_02_ENSAUNT_Female__25_50;
dWr_Wp_02_ENSAUNT_Female__25_50 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100
        dWr_Wp_02_ENSAUNT_Female__25_50 = [dWr_Wp_02_ENSAUNT_Female__25_50 Temp(i)];
    end
end
Temp = dWr_Wp_02_ENSAUNT_Female__50;
dWr_Wp_02_ENSAUNT_Female__50 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100
        dWr_Wp_02_ENSAUNT_Female__50 = [dWr_Wp_02_ENSAUNT_Female__50 Temp(i)];
    end
end
% Male
Temp = dWr_Wp_02_ENSAUNT_Male__25;
dWr_Wp_02_ENSAUNT_Male__25 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100
        dWr_Wp_02_ENSAUNT_Male__25 = [dWr_Wp_02_ENSAUNT_Male__25 Temp(i)];
    end
end
Temp = dWr_Wp_02_ENSAUNT_Male__25_50;
dWr_Wp_02_ENSAUNT_Male__25_50 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100
        dWr_Wp_02_ENSAUNT_Male__25_50 = [dWr_Wp_02_ENSAUNT_Male__25_50 Temp(i)];
    end
end
Temp = dWr_Wp_02_ENSAUNT_Male__50;
dWr_Wp_02_ENSAUNT_Male__50 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100
        dWr_Wp_02_ENSAUNT_Male__50 = [dWr_Wp_02_ENSAUNT_Male__50 Temp(i)];
    end
end

% 03_KNHANES
% Female
Temp = dWr_Wp_03_KNHANES_Female__25;
dWr_Wp_03_KNHANES_Female__25 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100
        dWr_Wp_03_KNHANES_Female__25 = [dWr_Wp_03_KNHANES_Female__25 Temp(i)];
    end
end
Temp = dWr_Wp_03_KNHANES_Female__25_50;
dWr_Wp_03_KNHANES_Female__25_50 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100
        dWr_Wp_03_KNHANES_Female__25_50 = [dWr_Wp_03_KNHANES_Female__25_50 Temp(i)];
    end
end
Temp = dWr_Wp_03_KNHANES_Female__50;
dWr_Wp_03_KNHANES_Female__50 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100
        dWr_Wp_03_KNHANES_Female__50 = [dWr_Wp_03_KNHANES_Female__50 Temp(i)];
    end
end
% Male
Temp = dWr_Wp_03_KNHANES_Male__25;
dWr_Wp_03_KNHANES_Male__25 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100
        dWr_Wp_03_KNHANES_Male__25 = [dWr_Wp_03_KNHANES_Male__25 Temp(i)];
    end
end
Temp = dWr_Wp_03_KNHANES_Male__25_50;
dWr_Wp_03_KNHANES_Male__25_50 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100
        dWr_Wp_03_KNHANES_Male__25_50 = [dWr_Wp_03_KNHANES_Male__25_50 Temp(i)];
    end
end
Temp = dWr_Wp_03_KNHANES_Male__50;
dWr_Wp_03_KNHANES_Male__50 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100
        dWr_Wp_03_KNHANES_Male__50 = [dWr_Wp_03_KNHANES_Male__50 Temp(i)];
    end
end

% 05_KSPF
% Female
Temp = dWr_Wp_05_KSPF_Female__25;
dWr_Wp_05_KSPF_Female__25 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100
        dWr_Wp_05_KSPF_Female__25 = [dWr_Wp_05_KSPF_Female__25 Temp(i)];
    end
end
Temp = dWr_Wp_05_KSPF_Female__25_50;
dWr_Wp_05_KSPF_Female__25_50 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100
        dWr_Wp_05_KSPF_Female__25_50 = [dWr_Wp_05_KSPF_Female__25_50 Temp(i)];
    end
end
Temp = dWr_Wp_05_KSPF_Female__50;
dWr_Wp_05_KSPF_Female__50 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100
        dWr_Wp_05_KSPF_Female__50 = [dWr_Wp_05_KSPF_Female__50 Temp(i)];
    end
end
% Male
Temp = dWr_Wp_05_KSPF_Male__25;
dWr_Wp_05_KSPF_Male__25 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100
        dWr_Wp_05_KSPF_Male__25 = [dWr_Wp_05_KSPF_Male__25 Temp(i)];
    end
end
Temp = dWr_Wp_05_KSPF_Male__25_50;
dWr_Wp_05_KSPF_Male__25_50 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100
        dWr_Wp_05_KSPF_Male__25_50 = [dWr_Wp_05_KSPF_Male__25_50 Temp(i)];
    end
end
Temp = dWr_Wp_05_KSPF_Male__50;
dWr_Wp_05_KSPF_Male__50 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100
        dWr_Wp_05_KSPF_Male__50 = [dWr_Wp_05_KSPF_Male__50 Temp(i)];
    end
end

% 07_China
% Female
Temp = dWr_Wp_07_China_Female__25;
dWr_Wp_07_China_Female__25 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100
        dWr_Wp_07_China_Female__25 = [dWr_Wp_07_China_Female__25 Temp(i)];
    end
end
Temp = dWr_Wp_07_China_Female__25_50;
dWr_Wp_07_China_Female__25_50 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100
        dWr_Wp_07_China_Female__25_50 = [dWr_Wp_07_China_Female__25_50 Temp(i)];
    end
end
Temp = dWr_Wp_07_China_Female__50;
dWr_Wp_07_China_Female__50 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100
        dWr_Wp_07_China_Female__50 = [dWr_Wp_07_China_Female__50 Temp(i)];
    end
end
% Male
Temp = dWr_Wp_07_China_Male__25;
dWr_Wp_07_China_Male__25 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100
        dWr_Wp_07_China_Male__25 = [dWr_Wp_07_China_Male__25 Temp(i)];
    end
end
Temp = dWr_Wp_07_China_Male__25_50;
dWr_Wp_07_China_Male__25_50 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100
        dWr_Wp_07_China_Male__25_50 = [dWr_Wp_07_China_Male__25_50 Temp(i)];
    end
end
Temp = dWr_Wp_07_China_Male__50;
dWr_Wp_07_China_Male__50 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100
        dWr_Wp_07_China_Male__50 = [dWr_Wp_07_China_Male__50 Temp(i)];
    end
end

% 06_ELSH_Brasil
% Female
Temp = dWr_Wp_06_ELSH_Brasil_Female__25_50;
dWr_Wp_06_ELSH_Brasil_Female__25_50 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100
        dWr_Wp_06_ELSH_Brasil_Female__25_50 = [dWr_Wp_06_ELSH_Brasil_Female__25_50 Temp(i)];
    end
end
Temp = dWr_Wp_06_ELSH_Brasil_Female__50;
dWr_Wp_06_ELSH_Brasil_Female__50 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100
        dWr_Wp_06_ELSH_Brasil_Female__50 = [dWr_Wp_06_ELSH_Brasil_Female__50 Temp(i)];
    end
end
% Male
Temp = dWr_Wp_06_ELSH_Brasil_Male__25_50;
dWr_Wp_06_ELSH_Brasil_Male__25_50 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100
        dWr_Wp_06_ELSH_Brasil_Male__25_50 = [dWr_Wp_06_ELSH_Brasil_Male__25_50 Temp(i)];
    end
end
Temp = dWr_Wp_06_ELSH_Brasil_Male__50;
dWr_Wp_06_ELSH_Brasil_Male__50 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100
        dWr_Wp_06_ELSH_Brasil_Male__50 = [dWr_Wp_06_ELSH_Brasil_Male__50 Temp(i)];
    end
end

% 04_SHARE
% Female
Temp = dWr_Wp_04_SHARE_Female__50;
dWr_Wp_04_SHARE_Female__50 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100
        dWr_Wp_04_SHARE_Female__50 = [dWr_Wp_04_SHARE_Female__50 Temp(i)];
    end
end
% Male
Temp = dWr_Wp_04_SHARE_Male__50;
dWr_Wp_04_SHARE_Male__50 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100
        dWr_Wp_04_SHARE_Male__50 = [dWr_Wp_04_SHARE_Male__50 Temp(i)];
    end
end

% 09_Bangladesh
% Female
Temp = dWr_Wp_09_Bangladesh_Female__25;
dWr_Wp_09_Bangladesh_Female__25 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100
        dWr_Wp_09_Bangladesh_Female__25 = [dWr_Wp_09_Bangladesh_Female__25 Temp(i)];
    end
end

% 08_Japan
% Female
Temp = dWr_Wp_08_Japan_Female__25;
dWr_Wp_08_Japan_Female__25 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100
        dWr_Wp_08_Japan_Female__25 = [dWr_Wp_08_Japan_Female__25 Temp(i)];
    end
end
% Male
Temp = dWr_Wp_08_Japan_Male__25;
dWr_Wp_08_Japan_Male__25 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100
        dWr_Wp_08_Japan_Male__25 = [dWr_Wp_08_Japan_Male__25 Temp(i)];
    end
end


%%
Save_data = [];
%% Age < 25
% 01_NHANES
% Female
My_data = dWr_Wp_01_NHANES_Female__25; % Raw
My_p = prctile(My_data,My_Percentile);
My_Mean = mean(My_data);
Save_data = [Save_data;My_p(1:11) My_Mean My_p(12:end) std(My_data)];
% Male
My_data = dWr_Wp_01_NHANES_Male__25; % Raw
My_p = prctile(My_data,My_Percentile);
My_Mean = mean(My_data);
Save_data = [Save_data;My_p(1:11) My_Mean My_p(12:end) std(My_data)];
% 02_ENSAUNT
% Female
My_data = dWr_Wp_02_ENSAUNT_Female__25; % Raw
My_p = prctile(My_data,My_Percentile);
My_Mean = mean(My_data);
Save_data = [Save_data;My_p(1:11) My_Mean My_p(12:end) std(My_data)];
% Male
My_data = dWr_Wp_02_ENSAUNT_Male__25; % Raw
My_p = prctile(My_data,My_Percentile);
My_Mean = mean(My_data);
Save_data = [Save_data;My_p(1:11) My_Mean My_p(12:end) std(My_data)];
% 03_KNHANES
% Female
My_data = dWr_Wp_03_KNHANES_Female__25; % Raw
My_p = prctile(My_data,My_Percentile);
My_Mean = mean(My_data);
Save_data = [Save_data;My_p(1:11) My_Mean My_p(12:end) std(My_data)];
% Male
My_data = dWr_Wp_03_KNHANES_Male__25; % Raw
My_p = prctile(My_data,My_Percentile);
My_Mean = mean(My_data);
Save_data = [Save_data;My_p(1:11) My_Mean My_p(12:end) std(My_data)];
% 05_KSPF
% Female
My_data = dWr_Wp_05_KSPF_Female__25; % Raw
My_p = prctile(My_data,My_Percentile);
My_Mean = mean(My_data);
Save_data = [Save_data;My_p(1:11) My_Mean My_p(12:end) std(My_data)];
% Male
My_data = dWr_Wp_05_KSPF_Male__25; % Raw
My_p = prctile(My_data,My_Percentile);
My_Mean = mean(My_data);
Save_data = [Save_data;My_p(1:11) My_Mean My_p(12:end) std(My_data)];
% 07_China
% Female
My_data = dWr_Wp_07_China_Female__25; % Raw
My_p = prctile(My_data,My_Percentile);
My_Mean = mean(My_data);
Save_data = [Save_data;My_p(1:11) My_Mean My_p(12:end) std(My_data)];
% Male
My_data = dWr_Wp_07_China_Male__25; % Raw
My_p = prctile(My_data,My_Percentile);
My_Mean = mean(My_data);
Save_data = [Save_data;My_p(1:11) My_Mean My_p(12:end) std(My_data)];
% 08_Japan
% Female
My_data = dWr_Wp_08_Japan_Female__25; % Raw
My_p = prctile(My_data,My_Percentile);
My_Mean = mean(My_data);
Save_data = [Save_data;My_p(1:11) My_Mean My_p(12:end) std(My_data)];
% Male
My_data = dWr_Wp_08_Japan_Male__25; % Raw
My_p = prctile(My_data,My_Percentile);
My_Mean = mean(My_data);
Save_data = [Save_data;My_p(1:11) My_Mean My_p(12:end) std(My_data)];
% 09_Bangladesh
% Female
My_data = dWr_Wp_09_Bangladesh_Female__25; % Raw
My_p = prctile(My_data,My_Percentile);
My_Mean = mean(My_data);
Save_data = [Save_data;My_p(1:11) My_Mean My_p(12:end) std(My_data)];

%
%% 25 <= Age < 50
% 01_NHANES
% Female
My_data = dWr_Wp_01_NHANES_Female__25_50; % Raw
My_p = prctile(My_data,My_Percentile);
My_Mean = mean(My_data);
Save_data = [Save_data;My_p(1:11) My_Mean My_p(12:end) std(My_data)];
% Male
My_data = dWr_Wp_01_NHANES_Male__25_50; % Raw
My_p = prctile(My_data,My_Percentile);
My_Mean = mean(My_data);
Save_data = [Save_data;My_p(1:11) My_Mean My_p(12:end) std(My_data)];
% 02_ENSAUNT
% Female
My_data = dWr_Wp_02_ENSAUNT_Female__25_50; % Raw
My_p = prctile(My_data,My_Percentile);
My_Mean = mean(My_data);
Save_data = [Save_data;My_p(1:11) My_Mean My_p(12:end) std(My_data)];
% Male
My_data = dWr_Wp_02_ENSAUNT_Male__25_50; % Raw
My_p = prctile(My_data,My_Percentile);
My_Mean = mean(My_data);
Save_data = [Save_data;My_p(1:11) My_Mean My_p(12:end) std(My_data)];
% 03_KNHANES
% Female
My_data = dWr_Wp_03_KNHANES_Female__25_50; % Raw
My_p = prctile(My_data,My_Percentile);
My_Mean = mean(My_data);
Save_data = [Save_data;My_p(1:11) My_Mean My_p(12:end) std(My_data)];
% Male
My_data = dWr_Wp_03_KNHANES_Male__25_50; % Raw
My_p = prctile(My_data,My_Percentile);
My_Mean = mean(My_data);
Save_data = [Save_data;My_p(1:11) My_Mean My_p(12:end) std(My_data)];
% 05_KSPF
% Female
My_data = dWr_Wp_05_KSPF_Female__25_50; % Raw
My_p = prctile(My_data,My_Percentile);
My_Mean = mean(My_data);
Save_data = [Save_data;My_p(1:11) My_Mean My_p(12:end) std(My_data)];
% Male
My_data = dWr_Wp_05_KSPF_Male__25_50; % Raw
My_p = prctile(My_data,My_Percentile);
My_Mean = mean(My_data);
Save_data = [Save_data;My_p(1:11) My_Mean My_p(12:end) std(My_data)];
% 06_ELSH_Brasil
% Female
My_data = dWr_Wp_06_ELSH_Brasil_Female__25_50; % Raw
My_p = prctile(My_data,My_Percentile);
My_Mean = mean(My_data);
Save_data = [Save_data;My_p(1:11) My_Mean My_p(12:end) std(My_data)];
% Male
My_data = dWr_Wp_06_ELSH_Brasil_Male__25_50; % Raw
My_p = prctile(My_data,My_Percentile);
My_Mean = mean(My_data);
Save_data = [Save_data;My_p(1:11) My_Mean My_p(12:end) std(My_data)];
% 07_China
% Female
My_data = dWr_Wp_07_China_Female__25_50; % Raw
My_p = prctile(My_data,My_Percentile);
My_Mean = mean(My_data);
Save_data = [Save_data;My_p(1:11) My_Mean My_p(12:end) std(My_data)];
% Male
My_data = dWr_Wp_07_China_Male__25_50; % Raw
My_p = prctile(My_data,My_Percentile);
My_Mean = mean(My_data);
Save_data = [Save_data;My_p(1:11) My_Mean My_p(12:end) std(My_data)];
%}
%
%% Age >= 50
% 01_NHANES
% Female
My_data = dWr_Wp_01_NHANES_Female__50; % Raw
My_p = prctile(My_data,My_Percentile);
My_Mean = mean(My_data);
Save_data = [Save_data;My_p(1:11) My_Mean My_p(12:end) std(My_data)];
% Male
My_data = dWr_Wp_01_NHANES_Male__50; % Raw
My_p = prctile(My_data,My_Percentile);
My_Mean = mean(My_data);
Save_data = [Save_data;My_p(1:11) My_Mean My_p(12:end) std(My_data)];
% 02_ENSAUNT
% Female
My_data = dWr_Wp_02_ENSAUNT_Female__50; % Raw
My_p = prctile(My_data,My_Percentile);
My_Mean = mean(My_data);
Save_data = [Save_data;My_p(1:11) My_Mean My_p(12:end) std(My_data)];
% Male
My_data = dWr_Wp_02_ENSAUNT_Male__50; % Raw
My_p = prctile(My_data,My_Percentile);
My_Mean = mean(My_data);
Save_data = [Save_data;My_p(1:11) My_Mean My_p(12:end) std(My_data)];
% 03_KNHANES
% Female
My_data = dWr_Wp_03_KNHANES_Female__50; % Raw
My_p = prctile(My_data,My_Percentile);
My_Mean = mean(My_data);
Save_data = [Save_data;My_p(1:11) My_Mean My_p(12:end) std(My_data)];
% Male
My_data = dWr_Wp_03_KNHANES_Male__50; % Raw
My_p = prctile(My_data,My_Percentile);
My_Mean = mean(My_data);
Save_data = [Save_data;My_p(1:11) My_Mean My_p(12:end) std(My_data)];
% 04_SHARE
% Female
My_data = dWr_Wp_04_SHARE_Female__50; % Raw
My_p = prctile(My_data,My_Percentile);
My_Mean = mean(My_data);
Save_data = [Save_data;My_p(1:11) My_Mean My_p(12:end) std(My_data)];
% Male
My_data = dWr_Wp_04_SHARE_Male__50; % Raw
My_p = prctile(My_data,My_Percentile);
My_Mean = mean(My_data);
Save_data = [Save_data;My_p(1:11) My_Mean My_p(12:end) std(My_data)];
% 05_KSPF
% Female
My_data = dWr_Wp_05_KSPF_Female__50; % Raw
My_p = prctile(My_data,My_Percentile);
My_Mean = mean(My_data);
Save_data = [Save_data;My_p(1:11) My_Mean My_p(12:end) std(My_data)];
% Male
My_data = dWr_Wp_05_KSPF_Male__50; % Raw
My_p = prctile(My_data,My_Percentile);
My_Mean = mean(My_data);
Save_data = [Save_data;My_p(1:11) My_Mean My_p(12:end) std(My_data)];
% 06_ELSH_Brasil
% Female
My_data = dWr_Wp_06_ELSH_Brasil_Female__50; % Raw
My_p = prctile(My_data,My_Percentile);
My_Mean = mean(My_data);
Save_data = [Save_data;My_p(1:11) My_Mean My_p(12:end) std(My_data)];
% Male
My_data = dWr_Wp_06_ELSH_Brasil_Male__50; % Raw
My_p = prctile(My_data,My_Percentile);
My_Mean = mean(My_data);
Save_data = [Save_data;My_p(1:11) My_Mean My_p(12:end) std(My_data)];
% 07_China
% Female
My_data = dWr_Wp_07_China_Female__50; % Raw
My_p = prctile(My_data,My_Percentile);
My_Mean = mean(My_data);
Save_data = [Save_data;My_p(1:11) My_Mean My_p(12:end) std(My_data)];
% Male
My_data = dWr_Wp_07_China_Male__50; % Raw
My_p = prctile(My_data,My_Percentile);
My_Mean = mean(My_data);
Save_data = [Save_data;My_p(1:11) My_Mean My_p(12:end) std(My_data)];
%}
%%
Save_data = round(Save_data,6); % 精确到第六位
xlswrite('Table S15.xlsx',Save_data,'Sheet1','D2');

toc;
