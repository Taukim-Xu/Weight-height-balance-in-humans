%% Source codes for Table S11
% Characteristics of all participants by experiment batch.
tic;
%%
My_Percentile = [5 50 95]; % quantile distribution
My_N = 3;% The number of decimal places for rounding
%%
Save_data = [];
%% 01-NHANES
Female = xlsread('.\Raw data\01-NHANES\NHANES_ALL.xlsx','Female','C:E'); % No.	Age	Height(cm)	Weight(Kg)
Male = xlsread('.\Raw data\01-NHANES\NHANES_ALL.xlsx','Male','C:E');
% For Female
Temp_data = Female(:,1); % Age
My_p = prctile(Temp_data,My_Percentile);
Temp_save_1 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Female(:,3); % Weight(Kg)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_2 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Female(:,2)/100; % Height(m)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_3 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Save_data = [Save_data;Temp_save_1 Temp_save_2 Temp_save_3];
% For Male
Temp_data = Male(:,1); % Age
My_p = prctile(Temp_data,My_Percentile);
Temp_save_1 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Male(:,3); % Weight(Kg)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_2 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Male(:,2)/100; % Height(m)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_3 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Save_data = [Save_data;Temp_save_1 Temp_save_2 Temp_save_3];
%% 02-ENSAUNT
Female = xlsread('.\Raw data\02-ENSAUNT\ENSANUT ALL.xlsx','Female','A:D'); % No.	Age	Height(cm)	Weight(Kg)
Male = xlsread('.\Raw data\02-ENSAUNT\ENSANUT ALL.xlsx','Male','A:D');
% For Female
Temp_data = Female(:,2); % Age
My_p = prctile(Temp_data,My_Percentile);
Temp_save_1 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Female(:,4); % Weight(Kg)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_2 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Female(:,3)/100; % Height(m)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_3 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Save_data = [Save_data;Temp_save_1 Temp_save_2 Temp_save_3];
% For Male
Temp_data = Male(:,2); % Age
My_p = prctile(Temp_data,My_Percentile);
Temp_save_1 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Male(:,4); % Weight(Kg)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_2 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Male(:,3)/100; % Height(m)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_3 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Save_data = [Save_data;Temp_save_1 Temp_save_2 Temp_save_3];
%% 03-KNHANES
Female = xlsread('.\Raw data\03-KNHANES\KNHANES_ALL.xlsx','Female','A:D'); % No.	Age	Height(cm)	Weight(Kg)
Male = xlsread('.\Raw data\03-KNHANES\KNHANES_ALL.xlsx','Male','A:D');
% For Female
Temp_data = Female(:,2); % Age
My_p = prctile(Temp_data,My_Percentile);
Temp_save_1 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Female(:,4); % Weight(Kg)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_2 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Female(:,3)/100; % Height(m)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_3 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Save_data = [Save_data;Temp_save_1 Temp_save_2 Temp_save_3];
% For Male
Temp_data = Male(:,2); % Age
My_p = prctile(Temp_data,My_Percentile);
Temp_save_1 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Male(:,4); % Weight(Kg)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_2 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Male(:,3)/100; % Height(m)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_3 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Save_data = [Save_data;Temp_save_1 Temp_save_2 Temp_save_3];
%% 04-SHARE
% 11_Austria.xlsx
Female = xlsread('.\Raw data\04-SHARE\11_Austria.xlsx','Female'); % No.	Age	Height(cm)	Weight(Kg)
Male = xlsread('.\Raw data\04-SHARE\11_Austria.xlsx','Male');
% For Female
Temp_data = Female(:,2); % Age
My_p = prctile(Temp_data,My_Percentile);
Temp_save_1 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Female(:,4); % Weight(Kg)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_2 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Female(:,3)/100; % Height(m)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_3 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Save_data = [Save_data;Temp_save_1 Temp_save_2 Temp_save_3];
% For Male
Temp_data = Male(:,2); % Age
My_p = prctile(Temp_data,My_Percentile);
Temp_save_1 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Male(:,4); % Weight(Kg)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_2 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Male(:,3)/100; % Height(m)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_3 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Save_data = [Save_data;Temp_save_1 Temp_save_2 Temp_save_3];
% 12_Germany.xlsx
Female = xlsread('.\Raw data\04-SHARE\12_Germany.xlsx','Female');
Male = xlsread('.\Raw data\04-SHARE\12_Germany.xlsx','Male');
% For Female
Temp_data = Female(:,2); % Age
My_p = prctile(Temp_data,My_Percentile);
Temp_save_1 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Female(:,4); % Weight(Kg)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_2 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Female(:,3)/100; % Height(m)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_3 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Save_data = [Save_data;Temp_save_1 Temp_save_2 Temp_save_3];
% For Male
Temp_data = Male(:,2); % Age
My_p = prctile(Temp_data,My_Percentile);
Temp_save_1 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Male(:,4); % Weight(Kg)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_2 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Male(:,3)/100; % Height(m)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_3 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Save_data = [Save_data;Temp_save_1 Temp_save_2 Temp_save_3];
% 13_Sweden.xlsx
Female = xlsread('.\Raw data\04-SHARE\13_Sweden.xlsx','Female');
Male = xlsread('.\Raw data\04-SHARE\13_Sweden.xlsx','Male');
% For Female
Temp_data = Female(:,2); % Age
My_p = prctile(Temp_data,My_Percentile);
Temp_save_1 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Female(:,4); % Weight(Kg)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_2 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Female(:,3)/100; % Height(m)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_3 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Save_data = [Save_data;Temp_save_1 Temp_save_2 Temp_save_3];
% For Male
Temp_data = Male(:,2); % Age
My_p = prctile(Temp_data,My_Percentile);
Temp_save_1 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Male(:,4); % Weight(Kg)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_2 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Male(:,3)/100; % Height(m)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_3 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Save_data = [Save_data;Temp_save_1 Temp_save_2 Temp_save_3];
% 14_Netherlands.xlsx
Female = xlsread('.\Raw data\04-SHARE\14_Netherlands.xlsx','Female');
Male = xlsread('.\Raw data\04-SHARE\14_Netherlands.xlsx','Male');
% For Female
Temp_data = Female(:,2); % Age
My_p = prctile(Temp_data,My_Percentile);
Temp_save_1 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Female(:,4); % Weight(Kg)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_2 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Female(:,3)/100; % Height(m)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_3 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Save_data = [Save_data;Temp_save_1 Temp_save_2 Temp_save_3];
% For Male
Temp_data = Male(:,2); % Age
My_p = prctile(Temp_data,My_Percentile);
Temp_save_1 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Male(:,4); % Weight(Kg)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_2 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Male(:,3)/100; % Height(m)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_3 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Save_data = [Save_data;Temp_save_1 Temp_save_2 Temp_save_3];
% 15_Spain.xlsx
Female = xlsread('.\Raw data\04-SHARE\15_Spain.xlsx','Female');
Male = xlsread('.\Raw data\04-SHARE\15_Spain.xlsx','Male');
% For Female
Temp_data = Female(:,2); % Age
My_p = prctile(Temp_data,My_Percentile);
Temp_save_1 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Female(:,4); % Weight(Kg)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_2 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Female(:,3)/100; % Height(m)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_3 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Save_data = [Save_data;Temp_save_1 Temp_save_2 Temp_save_3];
% For Male
Temp_data = Male(:,2); % Age
My_p = prctile(Temp_data,My_Percentile);
Temp_save_1 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Male(:,4); % Weight(Kg)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_2 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Male(:,3)/100; % Height(m)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_3 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Save_data = [Save_data;Temp_save_1 Temp_save_2 Temp_save_3];
% 16_Italy.xlsx
Female = xlsread('.\Raw data\04-SHARE\16_Italy.xlsx','Female');
Male = xlsread('.\Raw data\04-SHARE\16_Italy.xlsx','Male');
% For Female
Temp_data = Female(:,2); % Age
My_p = prctile(Temp_data,My_Percentile);
Temp_save_1 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Female(:,4); % Weight(Kg)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_2 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Female(:,3)/100; % Height(m)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_3 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Save_data = [Save_data;Temp_save_1 Temp_save_2 Temp_save_3];
% For Male
Temp_data = Male(:,2); % Age
My_p = prctile(Temp_data,My_Percentile);
Temp_save_1 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Male(:,4); % Weight(Kg)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_2 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Male(:,3)/100; % Height(m)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_3 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Save_data = [Save_data;Temp_save_1 Temp_save_2 Temp_save_3];
% 17_France.xlsx
Female = xlsread('.\Raw data\04-SHARE\17_France.xlsx','Female');
Male = xlsread('.\Raw data\04-SHARE\17_France.xlsx','Male');
% For Female
Temp_data = Female(:,2); % Age
My_p = prctile(Temp_data,My_Percentile);
Temp_save_1 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Female(:,4); % Weight(Kg)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_2 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Female(:,3)/100; % Height(m)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_3 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Save_data = [Save_data;Temp_save_1 Temp_save_2 Temp_save_3];
% For Male
Temp_data = Male(:,2); % Age
My_p = prctile(Temp_data,My_Percentile);
Temp_save_1 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Male(:,4); % Weight(Kg)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_2 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Male(:,3)/100; % Height(m)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_3 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Save_data = [Save_data;Temp_save_1 Temp_save_2 Temp_save_3];
% 18_Denmark.xlsx
Female = xlsread('.\Raw data\04-SHARE\18_Denmark.xlsx','Female');
Male = xlsread('.\Raw data\04-SHARE\18_Denmark.xlsx','Male');
% For Female
Temp_data = Female(:,2); % Age
My_p = prctile(Temp_data,My_Percentile);
Temp_save_1 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Female(:,4); % Weight(Kg)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_2 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Female(:,3)/100; % Height(m)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_3 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Save_data = [Save_data;Temp_save_1 Temp_save_2 Temp_save_3];
% For Male
Temp_data = Male(:,2); % Age
My_p = prctile(Temp_data,My_Percentile);
Temp_save_1 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Male(:,4); % Weight(Kg)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_2 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Male(:,3)/100; % Height(m)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_3 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Save_data = [Save_data;Temp_save_1 Temp_save_2 Temp_save_3];
% 19_Greece.xlsx
Female = xlsread('.\Raw data\04-SHARE\19_Greece.xlsx','Female');
Male = xlsread('.\Raw data\04-SHARE\19_Greece.xlsx','Male');
% For Female
Temp_data = Female(:,2); % Age
My_p = prctile(Temp_data,My_Percentile);
Temp_save_1 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Female(:,4); % Weight(Kg)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_2 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Female(:,3)/100; % Height(m)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_3 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Save_data = [Save_data;Temp_save_1 Temp_save_2 Temp_save_3];
% For Male
Temp_data = Male(:,2); % Age
My_p = prctile(Temp_data,My_Percentile);
Temp_save_1 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Male(:,4); % Weight(Kg)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_2 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Male(:,3)/100; % Height(m)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_3 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Save_data = [Save_data;Temp_save_1 Temp_save_2 Temp_save_3];
% 20_Switzerland.xlsx
Female = xlsread('.\Raw data\04-SHARE\20_Switzerland.xlsx','Female');
Male = xlsread('.\Raw data\04-SHARE\20_Switzerland.xlsx','Male');
% For Female
Temp_data = Female(:,2); % Age
My_p = prctile(Temp_data,My_Percentile);
Temp_save_1 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Female(:,4); % Weight(Kg)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_2 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Female(:,3)/100; % Height(m)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_3 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Save_data = [Save_data;Temp_save_1 Temp_save_2 Temp_save_3];
% For Male
Temp_data = Male(:,2); % Age
My_p = prctile(Temp_data,My_Percentile);
Temp_save_1 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Male(:,4); % Weight(Kg)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_2 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Male(:,3)/100; % Height(m)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_3 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Save_data = [Save_data;Temp_save_1 Temp_save_2 Temp_save_3];
% 23_Belgium.xlsx
Female = xlsread('.\Raw data\04-SHARE\23_Belgium.xlsx','Female');
Male = xlsread('.\Raw data\04-SHARE\23_Belgium.xlsx','Male');
% For Female
Temp_data = Female(:,2); % Age
My_p = prctile(Temp_data,My_Percentile);
Temp_save_1 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Female(:,4); % Weight(Kg)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_2 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Female(:,3)/100; % Height(m)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_3 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Save_data = [Save_data;Temp_save_1 Temp_save_2 Temp_save_3];
% For Male
Temp_data = Male(:,2); % Age
My_p = prctile(Temp_data,My_Percentile);
Temp_save_1 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Male(:,4); % Weight(Kg)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_2 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Male(:,3)/100; % Height(m)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_3 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Save_data = [Save_data;Temp_save_1 Temp_save_2 Temp_save_3];
% 25_Israel.xlsx
Female = xlsread('.\Raw data\04-SHARE\25_Israel.xlsx','Female');
Male = xlsread('.\Raw data\04-SHARE\25_Israel.xlsx','Male');
% For Female
Temp_data = Female(:,2); % Age
My_p = prctile(Temp_data,My_Percentile);
Temp_save_1 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Female(:,4); % Weight(Kg)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_2 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Female(:,3)/100; % Height(m)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_3 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Save_data = [Save_data;Temp_save_1 Temp_save_2 Temp_save_3];
% For Male
Temp_data = Male(:,2); % Age
My_p = prctile(Temp_data,My_Percentile);
Temp_save_1 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Male(:,4); % Weight(Kg)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_2 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Male(:,3)/100; % Height(m)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_3 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Save_data = [Save_data;Temp_save_1 Temp_save_2 Temp_save_3];
% 28_Czech.xlsx
Female = xlsread('.\Raw data\04-SHARE\28_Czech.xlsx','Female');
Male = xlsread('.\Raw data\04-SHARE\28_Czech.xlsx','Male');
% For Female
Temp_data = Female(:,2); % Age
My_p = prctile(Temp_data,My_Percentile);
Temp_save_1 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Female(:,4); % Weight(Kg)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_2 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Female(:,3)/100; % Height(m)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_3 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Save_data = [Save_data;Temp_save_1 Temp_save_2 Temp_save_3];
% For Male
Temp_data = Male(:,2); % Age
My_p = prctile(Temp_data,My_Percentile);
Temp_save_1 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Male(:,4); % Weight(Kg)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_2 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Male(:,3)/100; % Height(m)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_3 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Save_data = [Save_data;Temp_save_1 Temp_save_2 Temp_save_3];
% 29_Poland.xlsx
Female = xlsread('.\Raw data\04-SHARE\29_Poland.xlsx','Female');
Male = xlsread('.\Raw data\04-SHARE\29_Poland.xlsx','Male');
% For Female
Temp_data = Female(:,2); % Age
My_p = prctile(Temp_data,My_Percentile);
Temp_save_1 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Female(:,4); % Weight(Kg)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_2 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Female(:,3)/100; % Height(m)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_3 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Save_data = [Save_data;Temp_save_1 Temp_save_2 Temp_save_3];
% For Male
Temp_data = Male(:,2); % Age
My_p = prctile(Temp_data,My_Percentile);
Temp_save_1 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Male(:,4); % Weight(Kg)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_2 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Male(:,3)/100; % Height(m)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_3 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Save_data = [Save_data;Temp_save_1 Temp_save_2 Temp_save_3];
% 31_Luxembourg.xlsx
Female = xlsread('.\Raw data\04-SHARE\31_Luxembourg.xlsx','Female');
Male = xlsread('.\Raw data\04-SHARE\31_Luxembourg.xlsx','Male');
% For Female
Temp_data = Female(:,2); % Age
My_p = prctile(Temp_data,My_Percentile);
Temp_save_1 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Female(:,4); % Weight(Kg)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_2 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Female(:,3)/100; % Height(m)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_3 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Save_data = [Save_data;Temp_save_1 Temp_save_2 Temp_save_3];
% For Male
Temp_data = Male(:,2); % Age
My_p = prctile(Temp_data,My_Percentile);
Temp_save_1 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Male(:,4); % Weight(Kg)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_2 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Male(:,3)/100; % Height(m)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_3 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Save_data = [Save_data;Temp_save_1 Temp_save_2 Temp_save_3];
% 32_Hungary.xlsx
Female = xlsread('.\Raw data\04-SHARE\32_Hungary.xlsx','Female');
Male = xlsread('.\Raw data\04-SHARE\32_Hungary.xlsx','Male');
% For Female
Temp_data = Female(:,2); % Age
My_p = prctile(Temp_data,My_Percentile);
Temp_save_1 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Female(:,4); % Weight(Kg)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_2 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Female(:,3)/100; % Height(m)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_3 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Save_data = [Save_data;Temp_save_1 Temp_save_2 Temp_save_3];
% For Male
Temp_data = Male(:,2); % Age
My_p = prctile(Temp_data,My_Percentile);
Temp_save_1 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Male(:,4); % Weight(Kg)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_2 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Male(:,3)/100; % Height(m)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_3 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Save_data = [Save_data;Temp_save_1 Temp_save_2 Temp_save_3];
% 33_Portugal.xlsx
Female = xlsread('.\Raw data\04-SHARE\33_Portugal.xlsx','Female');
Male = xlsread('.\Raw data\04-SHARE\33_Portugal.xlsx','Male');
% For Female
Temp_data = Female(:,2); % Age
My_p = prctile(Temp_data,My_Percentile);
Temp_save_1 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Female(:,4); % Weight(Kg)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_2 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Female(:,3)/100; % Height(m)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_3 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Save_data = [Save_data;Temp_save_1 Temp_save_2 Temp_save_3];
% For Male
Temp_data = Male(:,2); % Age
My_p = prctile(Temp_data,My_Percentile);
Temp_save_1 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Male(:,4); % Weight(Kg)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_2 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Male(:,3)/100; % Height(m)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_3 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Save_data = [Save_data;Temp_save_1 Temp_save_2 Temp_save_3];
% 34_Slovenia.xlsx
Female = xlsread('.\Raw data\04-SHARE\34_Slovenia.xlsx','Female');
Male = xlsread('.\Raw data\04-SHARE\34_Slovenia.xlsx','Male');
% For Female
Temp_data = Female(:,2); % Age
My_p = prctile(Temp_data,My_Percentile);
Temp_save_1 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Female(:,4); % Weight(Kg)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_2 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Female(:,3)/100; % Height(m)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_3 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Save_data = [Save_data;Temp_save_1 Temp_save_2 Temp_save_3];
% For Male
Temp_data = Male(:,2); % Age
My_p = prctile(Temp_data,My_Percentile);
Temp_save_1 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Male(:,4); % Weight(Kg)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_2 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Male(:,3)/100; % Height(m)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_3 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Save_data = [Save_data;Temp_save_1 Temp_save_2 Temp_save_3];
% 35_Estonia.xlsx
Female = xlsread('.\Raw data\04-SHARE\35_Estonia.xlsx','Female');
Male = xlsread('.\Raw data\04-SHARE\35_Estonia.xlsx','Male');
% For Female
Temp_data = Female(:,2); % Age
My_p = prctile(Temp_data,My_Percentile);
Temp_save_1 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Female(:,4); % Weight(Kg)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_2 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Female(:,3)/100; % Height(m)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_3 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Save_data = [Save_data;Temp_save_1 Temp_save_2 Temp_save_3];
% For Male
Temp_data = Male(:,2); % Age
My_p = prctile(Temp_data,My_Percentile);
Temp_save_1 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Male(:,4); % Weight(Kg)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_2 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Male(:,3)/100; % Height(m)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_3 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Save_data = [Save_data;Temp_save_1 Temp_save_2 Temp_save_3];
% 47_Croatia.xlsx
Female = xlsread('.\Raw data\04-SHARE\47_Croatia.xlsx','Female');
Male = xlsread('.\Raw data\04-SHARE\47_Croatia.xlsx','Male');
% For Female
Temp_data = Female(:,2); % Age
My_p = prctile(Temp_data,My_Percentile);
Temp_save_1 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Female(:,4); % Weight(Kg)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_2 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Female(:,3)/100; % Height(m)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_3 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Save_data = [Save_data;Temp_save_1 Temp_save_2 Temp_save_3];
% For Male
Temp_data = Male(:,2); % Age
My_p = prctile(Temp_data,My_Percentile);
Temp_save_1 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Male(:,4); % Weight(Kg)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_2 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Male(:,3)/100; % Height(m)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_3 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Save_data = [Save_data;Temp_save_1 Temp_save_2 Temp_save_3];
% 48_Lithuania.xlsx
Female = xlsread('.\Raw data\04-SHARE\48_Lithuania.xlsx','Female');
Male = xlsread('.\Raw data\04-SHARE\48_Lithuania.xlsx','Male');
% For Female
Temp_data = Female(:,2); % Age
My_p = prctile(Temp_data,My_Percentile);
Temp_save_1 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Female(:,4); % Weight(Kg)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_2 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Female(:,3)/100; % Height(m)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_3 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Save_data = [Save_data;Temp_save_1 Temp_save_2 Temp_save_3];
% For Male
Temp_data = Male(:,2); % Age
My_p = prctile(Temp_data,My_Percentile);
Temp_save_1 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Male(:,4); % Weight(Kg)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_2 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Male(:,3)/100; % Height(m)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_3 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Save_data = [Save_data;Temp_save_1 Temp_save_2 Temp_save_3];
% 51_Bulgaria.xlsx
Female = xlsread('.\Raw data\04-SHARE\51_Bulgaria.xlsx','Female');
Male = xlsread('.\Raw data\04-SHARE\51_Bulgaria.xlsx','Male');
% For Female
Temp_data = Female(:,2); % Age
My_p = prctile(Temp_data,My_Percentile);
Temp_save_1 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Female(:,4); % Weight(Kg)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_2 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Female(:,3)/100; % Height(m)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_3 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Save_data = [Save_data;Temp_save_1 Temp_save_2 Temp_save_3];
% For Male
Temp_data = Male(:,2); % Age
My_p = prctile(Temp_data,My_Percentile);
Temp_save_1 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Male(:,4); % Weight(Kg)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_2 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Male(:,3)/100; % Height(m)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_3 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Save_data = [Save_data;Temp_save_1 Temp_save_2 Temp_save_3];
% 53_Cyprus.xlsx
Female = xlsread('.\Raw data\04-SHARE\53_Cyprus.xlsx','Female');
Male = xlsread('.\Raw data\04-SHARE\53_Cyprus.xlsx','Male');
% For Female
Temp_data = Female(:,2); % Age
My_p = prctile(Temp_data,My_Percentile);
Temp_save_1 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Female(:,4); % Weight(Kg)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_2 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Female(:,3)/100; % Height(m)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_3 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Save_data = [Save_data;Temp_save_1 Temp_save_2 Temp_save_3];
% For Male
Temp_data = Male(:,2); % Age
My_p = prctile(Temp_data,My_Percentile);
Temp_save_1 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Male(:,4); % Weight(Kg)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_2 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Male(:,3)/100; % Height(m)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_3 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Save_data = [Save_data;Temp_save_1 Temp_save_2 Temp_save_3];
% 55_Finland.xlsx
Female = xlsread('.\Raw data\04-SHARE\55_Finland.xlsx','Female');
Male = xlsread('.\Raw data\04-SHARE\55_Finland.xlsx','Male');
% For Female
Temp_data = Female(:,2); % Age
My_p = prctile(Temp_data,My_Percentile);
Temp_save_1 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Female(:,4); % Weight(Kg)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_2 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Female(:,3)/100; % Height(m)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_3 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Save_data = [Save_data;Temp_save_1 Temp_save_2 Temp_save_3];
% For Male
Temp_data = Male(:,2); % Age
My_p = prctile(Temp_data,My_Percentile);
Temp_save_1 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Male(:,4); % Weight(Kg)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_2 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Male(:,3)/100; % Height(m)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_3 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Save_data = [Save_data;Temp_save_1 Temp_save_2 Temp_save_3];
% 57_Latvia.xlsx
Female = xlsread('.\Raw data\04-SHARE\57_Latvia.xlsx','Female');
Male = xlsread('.\Raw data\04-SHARE\57_Latvia.xlsx','Male');
% For Female
Temp_data = Female(:,2); % Age
My_p = prctile(Temp_data,My_Percentile);
Temp_save_1 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Female(:,4); % Weight(Kg)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_2 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Female(:,3)/100; % Height(m)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_3 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Save_data = [Save_data;Temp_save_1 Temp_save_2 Temp_save_3];
% For Male
Temp_data = Male(:,2); % Age
My_p = prctile(Temp_data,My_Percentile);
Temp_save_1 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Male(:,4); % Weight(Kg)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_2 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Male(:,3)/100; % Height(m)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_3 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Save_data = [Save_data;Temp_save_1 Temp_save_2 Temp_save_3];
% 59_Malta.xlsx
Female = xlsread('.\Raw data\04-SHARE\59_Malta.xlsx','Female');
Male = xlsread('.\Raw data\04-SHARE\59_Malta.xlsx','Male');
% For Female
Temp_data = Female(:,2); % Age
My_p = prctile(Temp_data,My_Percentile);
Temp_save_1 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Female(:,4); % Weight(Kg)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_2 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Female(:,3)/100; % Height(m)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_3 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Save_data = [Save_data;Temp_save_1 Temp_save_2 Temp_save_3];
% For Male
Temp_data = Male(:,2); % Age
My_p = prctile(Temp_data,My_Percentile);
Temp_save_1 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Male(:,4); % Weight(Kg)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_2 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Male(:,3)/100; % Height(m)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_3 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Save_data = [Save_data;Temp_save_1 Temp_save_2 Temp_save_3];
% 61_Romania.xlsx
Female = xlsread('.\Raw data\04-SHARE\61_Romania.xlsx','Female');
Male = xlsread('.\Raw data\04-SHARE\61_Romania.xlsx','Male');
% For Female
Temp_data = Female(:,2); % Age
My_p = prctile(Temp_data,My_Percentile);
Temp_save_1 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Female(:,4); % Weight(Kg)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_2 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Female(:,3)/100; % Height(m)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_3 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Save_data = [Save_data;Temp_save_1 Temp_save_2 Temp_save_3];
% For Male
Temp_data = Male(:,2); % Age
My_p = prctile(Temp_data,My_Percentile);
Temp_save_1 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Male(:,4); % Weight(Kg)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_2 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Male(:,3)/100; % Height(m)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_3 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Save_data = [Save_data;Temp_save_1 Temp_save_2 Temp_save_3];
% 63_Slovakia.xlsx
Female = xlsread('.\Raw data\04-SHARE\63_Slovakia.xlsx','Female');
Male = xlsread('.\Raw data\04-SHARE\63_Slovakia.xlsx','Male');
% For Female
Temp_data = Female(:,2); % Age
My_p = prctile(Temp_data,My_Percentile);
Temp_save_1 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Female(:,4); % Weight(Kg)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_2 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Female(:,3)/100; % Height(m)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_3 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Save_data = [Save_data;Temp_save_1 Temp_save_2 Temp_save_3];
% For Male
Temp_data = Male(:,2); % Age
My_p = prctile(Temp_data,My_Percentile);
Temp_save_1 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Male(:,4); % Weight(Kg)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_2 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Male(:,3)/100; % Height(m)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_3 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Save_data = [Save_data;Temp_save_1 Temp_save_2 Temp_save_3];
%% 05-KSPF
Female = xlsread('.\Raw data\05-KSPF\KSPF, Korea.xlsx','Female','A:D'); % No.	Age	Height(cm)	Weight(Kg)
Male = xlsread('.\Raw data\05-KSPF\KSPF, Korea.xlsx','Male','A:D');
% For Female
Temp_data = Female(:,2); % Age
My_p = prctile(Temp_data,My_Percentile);
Temp_save_1 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Female(:,4); % Weight(Kg)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_2 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Female(:,3)/100; % Height(m)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_3 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Save_data = [Save_data;Temp_save_1 Temp_save_2 Temp_save_3];
% For Male
Temp_data = Male(:,2); % Age
My_p = prctile(Temp_data,My_Percentile);
Temp_save_1 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Male(:,4); % Weight(Kg)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_2 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Male(:,3)/100; % Height(m)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_3 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Save_data = [Save_data;Temp_save_1 Temp_save_2 Temp_save_3];
%% 06-ELSH-Brasil
Female = xlsread('.\Raw data\06-ELSH-Brasil\ELSA-Brasil.xls','Female','A:D'); % No.	Age	Height(cm)	Weight(Kg)
Male = xlsread('.\Raw data\06-ELSH-Brasil\ELSA-Brasil.xls','Male','A:D');
% For Female
Temp_data = Female(:,2); % Age
My_p = prctile(Temp_data,My_Percentile);
Temp_save_1 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Female(:,4); % Weight(Kg)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_2 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Female(:,3)/100; % Height(m)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_3 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Save_data = [Save_data;Temp_save_1 Temp_save_2 Temp_save_3];
% For Male
Temp_data = Male(:,2); % Age
My_p = prctile(Temp_data,My_Percentile);
Temp_save_1 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Male(:,4); % Weight(Kg)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_2 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Male(:,3)/100; % Height(m)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_3 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Save_data = [Save_data;Temp_save_1 Temp_save_2 Temp_save_3];
%% 07-China
% BCCPDS
Female = xlsread('.\Raw data\07-China\BCCPDS_7_21_China.xlsx','Female','A:D'); % No.	Age	Height(cm)	Weight(Kg)
Male = xlsread('.\Raw data\07-China\BCCPDS_7_21_China.xlsx','Male','A:D');
% For Female
Temp_data = Female(:,2); % Age
My_p = prctile(Temp_data,My_Percentile);
Temp_save_1 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Female(:,4); % Weight(Kg)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_2 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Female(:,3)/100; % Height(m)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_3 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Save_data = [Save_data;Temp_save_1 Temp_save_2 Temp_save_3];
% For Male
Temp_data = Male(:,2); % Age
My_p = prctile(Temp_data,My_Percentile);
Temp_save_1 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Male(:,4); % Weight(Kg)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_2 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Male(:,3)/100; % Height(m)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_3 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Save_data = [Save_data;Temp_save_1 Temp_save_2 Temp_save_3];
% Jilin, China
Female = xlsread('.\Raw data\07-China\Jilin_China.xlsx','Female','A:D'); % No.	Age	Height(cm)	Weight(Kg)
Male = xlsread('.\Raw data\07-China\Jilin_China.xlsx','Male','A:D');
% For Female
Temp_data = Female(:,2); % Age
My_p = prctile(Temp_data,My_Percentile);
Temp_save_1 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Female(:,4); % Weight(Kg)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_2 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Female(:,3)/100; % Height(m)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_3 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Save_data = [Save_data;Temp_save_1 Temp_save_2 Temp_save_3];
% For Male
Temp_data = Male(:,2); % Age
My_p = prctile(Temp_data,My_Percentile);
Temp_save_1 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Male(:,4); % Weight(Kg)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_2 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Male(:,3)/100; % Height(m)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_3 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Save_data = [Save_data;Temp_save_1 Temp_save_2 Temp_save_3];
% Chongqing, China
Female = xlsread('.\Raw data\07-China\Chongqing_6_21_China.xlsx','Female','A:D'); % No.	Age	Height(cm)	Weight(Kg)
Male = xlsread('.\Raw data\07-China\Chongqing_6_21_China.xlsx','Male','A:D');
% For Female
Temp_data = Female(:,2); % Age
My_p = prctile(Temp_data,My_Percentile);
Temp_save_1 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Female(:,4); % Weight(Kg)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_2 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Female(:,3)/100; % Height(m)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_3 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Save_data = [Save_data;Temp_save_1 Temp_save_2 Temp_save_3];
% For Male
Temp_data = Male(:,2); % Age
My_p = prctile(Temp_data,My_Percentile);
Temp_save_1 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Male(:,4); % Weight(Kg)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_2 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Male(:,3)/100; % Height(m)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_3 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Save_data = [Save_data;Temp_save_1 Temp_save_2 Temp_save_3];
% CHARLS
Female = xlsread('.\Raw data\07-China\CHARLS All.xlsx','Female','A:D'); % No.	Age	Height(cm)	Weight(Kg)
Male = xlsread('.\Raw data\07-China\CHARLS All.xlsx','Male','A:D');
% For Female
Temp_data = Female(:,2); % Age
My_p = prctile(Temp_data,My_Percentile);
Temp_save_1 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Female(:,4); % Weight(Kg)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_2 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Female(:,3)/100; % Height(m)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_3 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Save_data = [Save_data;Temp_save_1 Temp_save_2 Temp_save_3];
% For Male
Temp_data = Male(:,2); % Age
My_p = prctile(Temp_data,My_Percentile);
Temp_save_1 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Male(:,4); % Weight(Kg)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_2 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Male(:,3)/100; % Height(m)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_3 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Save_data = [Save_data;Temp_save_1 Temp_save_2 Temp_save_3];
%% 08-Japan
Female = xlsread('.\Raw data\08-Japan\Japanese_1_8.xlsx','Female','A:D'); % No.	Age	Height(cm)	Weight(Kg)
Male = xlsread('.\Raw data\08-Japan\Japanese_1_8.xlsx','Male','A:D');
% For Female
Temp_data = Female(:,2); % Age
My_p = prctile(Temp_data,My_Percentile);
Temp_save_1 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Female(:,4); % Weight(Kg)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_2 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Female(:,3)/100; % Height(m)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_3 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Save_data = [Save_data;Temp_save_1 Temp_save_2 Temp_save_3];
% For Male
Temp_data = Male(:,2); % Age
My_p = prctile(Temp_data,My_Percentile);
Temp_save_1 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Male(:,4); % Weight(Kg)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_2 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Male(:,3)/100; % Height(m)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_3 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Save_data = [Save_data;Temp_save_1 Temp_save_2 Temp_save_3];
%% 09-Bangladesh
Female = xlsread('.\Raw data\09-Bangladesh\Bangladesh_2011_14.xlsx','Female','A:D'); % No.	Age	Height(cm)	Weight(Kg)
% For Female
Temp_data = Female(:,2); % Age
My_p = prctile(Temp_data,My_Percentile);
Temp_save_1 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Female(:,4); % Weight(Kg)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_2 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Temp_data = Female(:,3)/100; % Height(m)
My_p = prctile(Temp_data,My_Percentile);
Temp_save_3 = [round(mean(Temp_data),My_N) round(std(Temp_data),My_N) round(My_p(1),My_N) round(My_p(2),My_N) round(My_p(3),My_N)];
Save_data = [Save_data;Temp_save_1 Temp_save_2 Temp_save_3];

%%
xlswrite('Table S17.xlsx',Save_data,'Data_All','D3');

toc;
