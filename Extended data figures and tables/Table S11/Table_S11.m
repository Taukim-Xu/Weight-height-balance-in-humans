%% Source codes for Table S11
% Characteristics of all participants by county.
%%
My_Percentile = [5 50 95]; % quantile distribution
My_N = 3;% The number of decimal places for rounding
%% 01-Europe
Save_data_Europe = [];
% 11_Austria.xlsx
Female = xlsread('.\Raw_data\Data_Europe\11_Austria.xlsx','Female'); % No.	Age	Height(cm)	Weight(Kg)
Male = xlsread('.\Raw_data\Data_Europe\11_Austria.xlsx','Male');
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
Save_data_Europe = [Save_data_Europe;Temp_save_1 Temp_save_2 Temp_save_3];
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
Save_data_Europe = [Save_data_Europe;Temp_save_1 Temp_save_2 Temp_save_3];
% 12_Germany.xlsx
Female = xlsread('.\Raw_data\Data_Europe\12_Germany.xlsx','Female');
Male = xlsread('.\Raw_data\Data_Europe\12_Germany.xlsx','Male');
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
Save_data_Europe = [Save_data_Europe;Temp_save_1 Temp_save_2 Temp_save_3];
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
Save_data_Europe = [Save_data_Europe;Temp_save_1 Temp_save_2 Temp_save_3];
% 13_Sweden.xlsx
Female = xlsread('.\Raw_data\Data_Europe\13_Sweden.xlsx','Female');
Male = xlsread('.\Raw_data\Data_Europe\13_Sweden.xlsx','Male');
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
Save_data_Europe = [Save_data_Europe;Temp_save_1 Temp_save_2 Temp_save_3];
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
Save_data_Europe = [Save_data_Europe;Temp_save_1 Temp_save_2 Temp_save_3];
% 14_Netherlands.xlsx
Female = xlsread('.\Raw_data\Data_Europe\14_Netherlands.xlsx','Female');
Male = xlsread('.\Raw_data\Data_Europe\14_Netherlands.xlsx','Male');
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
Save_data_Europe = [Save_data_Europe;Temp_save_1 Temp_save_2 Temp_save_3];
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
Save_data_Europe = [Save_data_Europe;Temp_save_1 Temp_save_2 Temp_save_3];
% 15_Spain.xlsx
Female = xlsread('.\Raw_data\Data_Europe\15_Spain.xlsx','Female');
Male = xlsread('.\Raw_data\Data_Europe\15_Spain.xlsx','Male');
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
Save_data_Europe = [Save_data_Europe;Temp_save_1 Temp_save_2 Temp_save_3];
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
Save_data_Europe = [Save_data_Europe;Temp_save_1 Temp_save_2 Temp_save_3];
% 16_Italy.xlsx
Female = xlsread('.\Raw_data\Data_Europe\16_Italy.xlsx','Female');
Male = xlsread('.\Raw_data\Data_Europe\16_Italy.xlsx','Male');
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
Save_data_Europe = [Save_data_Europe;Temp_save_1 Temp_save_2 Temp_save_3];
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
Save_data_Europe = [Save_data_Europe;Temp_save_1 Temp_save_2 Temp_save_3];
% 17_France.xlsx
Female = xlsread('.\Raw_data\Data_Europe\17_France.xlsx','Female');
Male = xlsread('.\Raw_data\Data_Europe\17_France.xlsx','Male');
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
Save_data_Europe = [Save_data_Europe;Temp_save_1 Temp_save_2 Temp_save_3];
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
Save_data_Europe = [Save_data_Europe;Temp_save_1 Temp_save_2 Temp_save_3];
% 18_Denmark.xlsx
Female = xlsread('.\Raw_data\Data_Europe\18_Denmark.xlsx','Female');
Male = xlsread('.\Raw_data\Data_Europe\18_Denmark.xlsx','Male');
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
Save_data_Europe = [Save_data_Europe;Temp_save_1 Temp_save_2 Temp_save_3];
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
Save_data_Europe = [Save_data_Europe;Temp_save_1 Temp_save_2 Temp_save_3];
% 19_Greece.xlsx
Female = xlsread('.\Raw_data\Data_Europe\19_Greece.xlsx','Female');
Male = xlsread('.\Raw_data\Data_Europe\19_Greece.xlsx','Male');
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
Save_data_Europe = [Save_data_Europe;Temp_save_1 Temp_save_2 Temp_save_3];
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
Save_data_Europe = [Save_data_Europe;Temp_save_1 Temp_save_2 Temp_save_3];
% 20_Switzerland.xlsx
Female = xlsread('.\Raw_data\Data_Europe\20_Switzerland.xlsx','Female');
Male = xlsread('.\Raw_data\Data_Europe\20_Switzerland.xlsx','Male');
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
Save_data_Europe = [Save_data_Europe;Temp_save_1 Temp_save_2 Temp_save_3];
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
Save_data_Europe = [Save_data_Europe;Temp_save_1 Temp_save_2 Temp_save_3];
% 23_Belgium.xlsx
Female = xlsread('.\Raw_data\Data_Europe\23_Belgium.xlsx','Female');
Male = xlsread('.\Raw_data\Data_Europe\23_Belgium.xlsx','Male');
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
Save_data_Europe = [Save_data_Europe;Temp_save_1 Temp_save_2 Temp_save_3];
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
Save_data_Europe = [Save_data_Europe;Temp_save_1 Temp_save_2 Temp_save_3];
% 28_Czech.xlsx
Female = xlsread('.\Raw_data\Data_Europe\28_Czech.xlsx','Female');
Male = xlsread('.\Raw_data\Data_Europe\28_Czech.xlsx','Male');
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
Save_data_Europe = [Save_data_Europe;Temp_save_1 Temp_save_2 Temp_save_3];
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
Save_data_Europe = [Save_data_Europe;Temp_save_1 Temp_save_2 Temp_save_3];
% 29_Poland.xlsx
Female = xlsread('.\Raw_data\Data_Europe\29_Poland.xlsx','Female');
Male = xlsread('.\Raw_data\Data_Europe\29_Poland.xlsx','Male');
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
Save_data_Europe = [Save_data_Europe;Temp_save_1 Temp_save_2 Temp_save_3];
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
Save_data_Europe = [Save_data_Europe;Temp_save_1 Temp_save_2 Temp_save_3];
% 31_Luxembourg.xlsx
Female = xlsread('.\Raw_data\Data_Europe\31_Luxembourg.xlsx','Female');
Male = xlsread('.\Raw_data\Data_Europe\31_Luxembourg.xlsx','Male');
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
Save_data_Europe = [Save_data_Europe;Temp_save_1 Temp_save_2 Temp_save_3];
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
Save_data_Europe = [Save_data_Europe;Temp_save_1 Temp_save_2 Temp_save_3];
% 32_Hungary.xlsx
Female = xlsread('.\Raw_data\Data_Europe\32_Hungary.xlsx','Female');
Male = xlsread('.\Raw_data\Data_Europe\32_Hungary.xlsx','Male');
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
Save_data_Europe = [Save_data_Europe;Temp_save_1 Temp_save_2 Temp_save_3];
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
Save_data_Europe = [Save_data_Europe;Temp_save_1 Temp_save_2 Temp_save_3];
% 33_Portugal.xlsx
Female = xlsread('.\Raw_data\Data_Europe\33_Portugal.xlsx','Female');
Male = xlsread('.\Raw_data\Data_Europe\33_Portugal.xlsx','Male');
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
Save_data_Europe = [Save_data_Europe;Temp_save_1 Temp_save_2 Temp_save_3];
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
Save_data_Europe = [Save_data_Europe;Temp_save_1 Temp_save_2 Temp_save_3];
% 34_Slovenia.xlsx
Female = xlsread('.\Raw_data\Data_Europe\34_Slovenia.xlsx','Female');
Male = xlsread('.\Raw_data\Data_Europe\34_Slovenia.xlsx','Male');
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
Save_data_Europe = [Save_data_Europe;Temp_save_1 Temp_save_2 Temp_save_3];
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
Save_data_Europe = [Save_data_Europe;Temp_save_1 Temp_save_2 Temp_save_3];
% 35_Estonia.xlsx
Female = xlsread('.\Raw_data\Data_Europe\35_Estonia.xlsx','Female');
Male = xlsread('.\Raw_data\Data_Europe\35_Estonia.xlsx','Male');
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
Save_data_Europe = [Save_data_Europe;Temp_save_1 Temp_save_2 Temp_save_3];
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
Save_data_Europe = [Save_data_Europe;Temp_save_1 Temp_save_2 Temp_save_3];
% 47_Croatia.xlsx
Female = xlsread('.\Raw_data\Data_Europe\47_Croatia.xlsx','Female');
Male = xlsread('.\Raw_data\Data_Europe\47_Croatia.xlsx','Male');
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
Save_data_Europe = [Save_data_Europe;Temp_save_1 Temp_save_2 Temp_save_3];
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
Save_data_Europe = [Save_data_Europe;Temp_save_1 Temp_save_2 Temp_save_3];
% 48_Lithuania.xlsx
Female = xlsread('.\Raw_data\Data_Europe\48_Lithuania.xlsx','Female');
Male = xlsread('.\Raw_data\Data_Europe\48_Lithuania.xlsx','Male');
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
Save_data_Europe = [Save_data_Europe;Temp_save_1 Temp_save_2 Temp_save_3];
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
Save_data_Europe = [Save_data_Europe;Temp_save_1 Temp_save_2 Temp_save_3];
% 51_Bulgaria.xlsx
Female = xlsread('.\Raw_data\Data_Europe\51_Bulgaria.xlsx','Female');
Male = xlsread('.\Raw_data\Data_Europe\51_Bulgaria.xlsx','Male');
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
Save_data_Europe = [Save_data_Europe;Temp_save_1 Temp_save_2 Temp_save_3];
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
Save_data_Europe = [Save_data_Europe;Temp_save_1 Temp_save_2 Temp_save_3];
% 53_Cyprus.xlsx
Female = xlsread('.\Raw_data\Data_Europe\53_Cyprus.xlsx','Female');
Male = xlsread('.\Raw_data\Data_Europe\53_Cyprus.xlsx','Male');
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
Save_data_Europe = [Save_data_Europe;Temp_save_1 Temp_save_2 Temp_save_3];
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
Save_data_Europe = [Save_data_Europe;Temp_save_1 Temp_save_2 Temp_save_3];
% 55_Finland.xlsx
Female = xlsread('.\Raw_data\Data_Europe\55_Finland.xlsx','Female');
Male = xlsread('.\Raw_data\Data_Europe\55_Finland.xlsx','Male');
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
Save_data_Europe = [Save_data_Europe;Temp_save_1 Temp_save_2 Temp_save_3];
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
Save_data_Europe = [Save_data_Europe;Temp_save_1 Temp_save_2 Temp_save_3];
% 57_Latvia.xlsx
Female = xlsread('.\Raw_data\Data_Europe\57_Latvia.xlsx','Female');
Male = xlsread('.\Raw_data\Data_Europe\57_Latvia.xlsx','Male');
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
Save_data_Europe = [Save_data_Europe;Temp_save_1 Temp_save_2 Temp_save_3];
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
Save_data_Europe = [Save_data_Europe;Temp_save_1 Temp_save_2 Temp_save_3];
% 59_Malta.xlsx
Female = xlsread('.\Raw_data\Data_Europe\59_Malta.xlsx','Female');
Male = xlsread('.\Raw_data\Data_Europe\59_Malta.xlsx','Male');
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
Save_data_Europe = [Save_data_Europe;Temp_save_1 Temp_save_2 Temp_save_3];
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
Save_data_Europe = [Save_data_Europe;Temp_save_1 Temp_save_2 Temp_save_3];
% 61_Romania.xlsx
Female = xlsread('.\Raw_data\Data_Europe\61_Romania.xlsx','Female');
Male = xlsread('.\Raw_data\Data_Europe\61_Romania.xlsx','Male');
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
Save_data_Europe = [Save_data_Europe;Temp_save_1 Temp_save_2 Temp_save_3];
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
Save_data_Europe = [Save_data_Europe;Temp_save_1 Temp_save_2 Temp_save_3];
% 63_Slovakia.xlsx
Female = xlsread('.\Raw_data\Data_Europe\63_Slovakia.xlsx','Female');
Male = xlsread('.\Raw_data\Data_Europe\63_Slovakia.xlsx','Male');
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
Save_data_Europe = [Save_data_Europe;Temp_save_1 Temp_save_2 Temp_save_3];
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
Save_data_Europe = [Save_data_Europe;Temp_save_1 Temp_save_2 Temp_save_3];
%}

%% 02-American
Save_data_American = [];
Female = [];
Male = [];
% Data_America 1999-2000.xlsx
Temp_Female = xlsread('.\Raw_data\Data_America\NHANES 1999-2000.xlsx','Female');
Temp_Male = xlsread('.\Raw_data\Data_America\NHANES 1999-2000.xlsx','Male');
Female = [Female;Temp_Female(:,1) Temp_Female(:,3:5)]; % No.	Age	Height(cm)	Weight(Kg)
Male = [Male;Temp_Male(:,1) Temp_Male(:,3:5)];
% Data_America 2001-2002.xlsx
Temp_Female = xlsread('.\Raw_data\Data_America\NHANES 2001-2002.xlsx','Female');
Temp_Male = xlsread('.\Raw_data\Data_America\NHANES 2001-2002.xlsx','Male');
Female = [Female;Temp_Female(:,1) Temp_Female(:,3:5)]; % No.	Age	Height(cm)	Weight(Kg)
Male = [Male;Temp_Male(:,1) Temp_Male(:,3:5)];
% Data_America 2003-2004.xlsx
Temp_Female = xlsread('.\Raw_data\Data_America\NHANES 2003-2004.xlsx','Female');
Temp_Male = xlsread('.\Raw_data\Data_America\NHANES 2003-2004.xlsx','Male');
Female = [Female;Temp_Female(:,1) Temp_Female(:,3:5)]; % No.	Age	Height(cm)	Weight(Kg)
Male = [Male;Temp_Male(:,1) Temp_Male(:,3:5)];
% Data_America 2005-2006.xlsx
Temp_Female = xlsread('.\Raw_data\Data_America\NHANES 2005-2006.xlsx','Female');
Temp_Male = xlsread('.\Raw_data\Data_America\NHANES 2005-2006.xlsx','Male');
Female = [Female;Temp_Female(:,1) Temp_Female(:,3:5)]; % No.	Age	Height(cm)	Weight(Kg)
Male = [Male;Temp_Male(:,1) Temp_Male(:,3:5)];
% Data_America 2007-2008.xlsx
Temp_Female = xlsread('.\Raw_data\Data_America\NHANES 2007-2008.xlsx','Female');
Temp_Male = xlsread('.\Raw_data\Data_America\NHANES 2007-2008.xlsx','Male');
Female = [Female;Temp_Female(:,1) Temp_Female(:,3:5)]; % No.	Age	Height(cm)	Weight(Kg)
Male = [Male;Temp_Male(:,1) Temp_Male(:,3:5)];
% Data_America 2009-2010.xlsx
Temp_Female = xlsread('.\Raw_data\Data_America\NHANES 2009-2010.xlsx','Female');
Temp_Male = xlsread('.\Raw_data\Data_America\NHANES 2009-2010.xlsx','Male');
Female = [Female;Temp_Female(:,1) Temp_Female(:,3:5)]; % No.	Age	Height(cm)	Weight(Kg)
Male = [Male;Temp_Male(:,1) Temp_Male(:,3:5)];
% Data_America 2011-2012.xlsx
Temp_Female = xlsread('.\Raw_data\Data_America\NHANES 2011-2012.xlsx','Female');
Temp_Male = xlsread('.\Raw_data\Data_America\NHANES 2011-2012.xlsx','Male');
Female = [Female;Temp_Female(:,1) Temp_Female(:,3:5)]; % No.	Age	Height(cm)	Weight(Kg)
Male = [Male;Temp_Male(:,1) Temp_Male(:,3:5)];
% Data_America 2013-2014.xlsx
Temp_Female = xlsread('.\Raw_data\Data_America\NHANES 2013-2014.xlsx','Female');
Temp_Male = xlsread('.\Raw_data\Data_America\NHANES 2013-2014.xlsx','Male');
Female = [Female;Temp_Female(:,1) Temp_Female(:,3:5)]; % No.	Age	Height(cm)	Weight(Kg)
Male = [Male;Temp_Male(:,1) Temp_Male(:,3:5)];
% Data_America 2015-2016.xlsx
Temp_Female = xlsread('.\Raw_data\Data_America\NHANES 2015-2016.xlsx','Female');
Temp_Male = xlsread('.\Raw_data\Data_America\NHANES 2015-2016.xlsx','Male');
Female = [Female;Temp_Female(:,1) Temp_Female(:,3:5)]; % No.	Age	Height(cm)	Weight(Kg)
Male = [Male;Temp_Male(:,1) Temp_Male(:,3:5)];
% Data_America 2017-2018.xlsx
Temp_Female = xlsread('.\Raw_data\Data_America\NHANES 2017-2018.xlsx','Female');
Temp_Male = xlsread('.\Raw_data\Data_America\NHANES 2017-2018.xlsx','Male');
Female = [Female;Temp_Female(:,1) Temp_Female(:,3:5)]; % No.	Age	Height(cm)	Weight(Kg)
Male = [Male;Temp_Male(:,1) Temp_Male(:,3:5)];
% Data_America 2017-March 2020.xlsx
Temp_Female = xlsread('.\Raw_data\Data_America\NHANES 2017-March 2020.xlsx','Female');
Temp_Male = xlsread('.\Raw_data\Data_America\NHANES 2017-March 2020.xlsx','Male');
Female = [Female;Temp_Female(:,1) Temp_Female(:,3:5)]; % No.	Age	Height(cm)	Weight(Kg)
Male = [Male;Temp_Male(:,1) Temp_Male(:,3:5)];
% Data_America August 2021-August 2023.xlsx
Temp_Female = xlsread('.\Raw_data\Data_America\NHANES August 2021-August 2023.xlsx','Female');
Temp_Male = xlsread('.\Raw_data\Data_America\NHANES August 2021-August 2023.xlsx','Male');
Female = [Female;Temp_Female(:,1) Temp_Female(:,3:5)]; % No.	Age	Height(cm)	Weight(Kg)
Male = [Male;Temp_Male(:,1) Temp_Male(:,3:5)];

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
Save_data_American = [Save_data_American;Temp_save_1 Temp_save_2 Temp_save_3];
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
Save_data_American = [Save_data_American;Temp_save_1 Temp_save_2 Temp_save_3];

%% 03-Asian
Save_data_Asian = [];
% KSPF, Korea.xlsx
Female = xlsread('.\Raw_data\Data_Asia\KSPF, Korea.xlsx','Female');
Male = xlsread('.\Raw_data\Data_Asia\KSPF, Korea.xlsx','Male');
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
Save_data_Asian = [Save_data_Asian;Temp_save_1 Temp_save_2 Temp_save_3];
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
Save_data_Asian = [Save_data_Asian;Temp_save_1 Temp_save_2 Temp_save_3];

% Japan
% Japanese_1_8.xlsx
Female = xlsread('.\Raw_data\Data_Asia\Japanese_1_8.xlsx','Female');
Male = xlsread('.\Raw_data\Data_Asia\Japanese_1_8.xlsx','Male');
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
Save_data_Asian = [Save_data_Asian;Temp_save_1 Temp_save_2 Temp_save_3];
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
Save_data_Asian = [Save_data_Asian;Temp_save_1 Temp_save_2 Temp_save_3];

% China
% Jilin_China.xlsx
Female = [];
Male = [];
Temp_Female = xlsread('.\Raw_data\Data_Asia\Jilin_China.xlsx','Female');
Temp_Male = xlsread('.\Raw_data\Data_Asia\Jilin_China.xlsx','Male');
Female = [Female;Temp_Female];
Male = [Male;Temp_Male];
% Chongqing_6_21_China.xlsx
Temp_Female = xlsread('.\Raw_data\Data_Asia\Chongqing_6_21_China.xlsx','Female');
Temp_Male = xlsread('.\Raw_data\Data_Asia\Chongqing_6_21_China.xlsx','Male');
Female = [Female;Temp_Female];
Male = [Male;Temp_Male];
% BCCPDS_7_21_China.xlsx
Temp_Female = xlsread('.\Raw_data\Data_Asia\BCCPDS_7_21_China.xlsx','Female');
Temp_Male = xlsread('.\Raw_data\Data_Asia\BCCPDS_7_21_China.xlsx','Male');
Female = [Female;Temp_Female];
Male = [Male;Temp_Male];

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
Save_data_Asian = [Save_data_Asian;Temp_save_1 Temp_save_2 Temp_save_3];
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
Save_data_Asian = [Save_data_Asian;Temp_save_1 Temp_save_2 Temp_save_3];

% Israel
% 25_Israel.xlsx
Female = xlsread('.\Raw_data\Data_Asia\25_Israel.xlsx','Female');
Male = xlsread('.\Raw_data\Data_Asia\25_Israel.xlsx','Male');

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
Save_data_Asian = [Save_data_Asian;Temp_save_1 Temp_save_2 Temp_save_3];
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
Save_data_Asian = [Save_data_Asian;Temp_save_1 Temp_save_2 Temp_save_3];

% Bangladesh
% Bangladesh_2011_14.xlsx
Female = [];
Temp_Female = xlsread('.\Raw_data\Data_Asia\Bangladesh_2011_14.xlsx','Female');
Female = [Female;Temp_Female];
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
Save_data_Asian = [Save_data_Asian;Temp_save_1 Temp_save_2 Temp_save_3];

%%
xlswrite('Table S11.xlsx',Save_data_Europe,'Data_Europe','C3');
xlswrite('Table S11.xlsx',Save_data_American,'Data_America','C3');
xlswrite('Table S11.xlsx',Save_data_Asian,'Data_Asia','C3');
