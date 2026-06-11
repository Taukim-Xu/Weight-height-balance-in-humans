%% Source codes for BMI_02_ENSAUNT__.mat
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
%% ENSANUT ALL
Female_data = xlsread('./Raw data/02-ENSAUNT/ENSANUT ALL.xlsx','Female','B:D'); %	Age	Height(cm)	Weight(Kg)
Male_data = xlsread('./Raw data/02-ENSAUNT/ENSANUT ALL.xlsx','Male','B:D'); % Age	Height(cm)	Weight(Kg)
%% Calculate the distribution of BMI
BMI_Female_02_ENSAUNT__ = [];
BMI_Male_02_ENSAUNT__ = [];
% For Female
[M N] = size(Female_data); % Age Height(cm) Weight(Kg)
for i = 1:M
    BMI_Female_02_ENSAUNT__ = [BMI_Female_02_ENSAUNT__ Female_data(i,3)/(Female_data(i,2)/100)^2];
end

% For Male
[M N] = size(Male_data); % Age Height(cm) Weight(Kg)
for i = 1:M
    BMI_Male_02_ENSAUNT__ = [BMI_Male_02_ENSAUNT__ Male_data(i,3)/(Male_data(i,2)/100)^2];
end
toc;

%% We save the data
save BMI_02_ENSAUNT__.mat BMI_Female_02_ENSAUNT__ BMI_Male_02_ENSAUNT__
