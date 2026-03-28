%% Source codes for BMI_All__.mat
% 针对所有国家数据，计算BMI(Weight/Height^2)
% 
%
tic;
%%
c = 1;
%%
Cut_off_Age = 25;
%% Parameter information for drawing
My_mark_type = '.';
My_LineWidth = 1.5;
My_LineWidth_1 = 1;
My_FontName = 'Times New Roman';
My_fontSize = 12;
My_Alpha = 1; % transparency of the filled area
My_MarkerSize = 2;
Edgealpha = 0;
Alpha = 0.2;
My_Percentile = [5 50 95]; % quantile distribution
Band_Width = 1;
%% Colors
load('My_Colors.mat')
%% Load and segment the data by age and gender
Female_data = [];
Male_data = [];
%% Europe
Female_data_temp = xlsread('./Raw_data/Data_Europe/Europe_ALL.xlsx','Female'); % No.	Age	Height(cm)	Weight(Kg)
Male_data_temp = xlsread('./Raw_data/Data_Europe/Europe_ALL.xlsx','Male'); % No. Age	Height(cm)	Weight(Kg)
Female_data = [Female_data;Female_data_temp(:,2:4)]; % Age Height(cm) Weight(Kg)
Male_data = [Male_data;Male_data_temp(:,2:4)]; % Age Height(cm) Weight(Kg)
%% America
Female_data_temp = xlsread('./Raw_data/Data_America/America_ALL.xlsx','Female'); % No.	Respondent sequence number	Age in years at screening	Standing Height (cm)	Weight (kg)
Male_data_temp = xlsread('./Raw_data/Data_America/America_ALL.xlsx','Male'); % No.	Respondent sequence number	Age in years at screening	Standing Height (cm)	Weight (kg)
Female_data = [Female_data;Female_data_temp(:,3:5)]; % Age Height(cm) Weight(Kg)
Male_data = [Male_data;Male_data_temp(:,3:5)]; % Age Height(cm) Weight(Kg)
%% Asia
Female_data_temp = xlsread('./Raw_data/Data_Asia/Asia_ALL.xlsx','Female'); % No.	Age	Height(cm)	Weight(Kg)
Male_data_temp = xlsread('./Raw_data/Data_Asia/Asia_ALL.xlsx','Male'); % No.	Age	Height(cm)	Weight(Kg)
Female_data = [Female_data;Female_data_temp(:,2:4)]; % Age Height(cm) Weight(Kg)
Male_data = [Male_data;Male_data_temp(:,2:4)]; % Age Height(cm) Weight(Kg)
%% Calculate the distribution of BMI
BMI_Female_All__ = [];
BMI_Male_All__ = [];
% For Female
[M N] = size(Female_data); % Age Height(cm) Weight(Kg)
for i = 1:M
    BMI_Female_All__ = [BMI_Female_All__ Female_data(i,3)/(Female_data(i,2)/100)^2];
end

% For Male
[M N] = size(Male_data); % Age Height(cm) Weight(Kg)
for i = 1:M
    BMI_Male_All__ = [BMI_Male_All__ Male_data(i,3)/(Male_data(i,2)/100)^2];
end
toc;

%% We save the data
save BMI_All__.mat BMI_Female_All__ BMI_Male_All__
