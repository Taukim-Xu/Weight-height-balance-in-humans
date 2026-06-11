%% Source codes for BMI_All__0.mat
% The data will be divided into three groups: Age < 25, 25 <= Age < 50, and Age >= 50.
%
tic;
%%
c = 1;
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

%% 01-NHANES
Female_data_temp = xlsread('./Raw data/01-NHANES/NHANES_ALL.xlsx','Female','C:E'); % Age	Height(cm)	Weight(Kg)
Male_data_temp = xlsread('./Raw data/01-NHANES/NHANES_ALL.xlsx','Male','C:E'); % Age	Height(cm)	Weight(Kg)
Female_data = [Female_data;Female_data_temp];
Male_data = [Male_data;Male_data_temp];
%% 02-ENSAUNT
Female_data_temp = xlsread('./Raw data/02-ENSAUNT/ENSANUT ALL.xlsx','Female','B:D'); % Age	Height(cm)	Weight(Kg)
Male_data_temp = xlsread('./Raw data/02-ENSAUNT/ENSANUT ALL.xlsx','Male','B:D'); % Age	Height(cm)	Weight(Kg)
Female_data = [Female_data;Female_data_temp];
Male_data = [Male_data;Male_data_temp];
%% 03-KNHANES
Female_data_temp = xlsread('./Raw data/03-KNHANES/KNHANES_ALL.xlsx','Female','B:D'); % Age	Height(cm)	Weight(Kg)
Male_data_temp = xlsread('./Raw data/03-KNHANES/KNHANES_ALL.xlsx','Male','B:D'); % Age	Height(cm)	Weight(Kg)
Female_data = [Female_data;Female_data_temp];
Male_data = [Male_data;Male_data_temp];
%% 04-SHARE
Female_data_temp = xlsread('./Raw data/04-SHARE/SHARE_ALL.xlsx','Female','B:D'); % Age	Height(cm)	Weight(Kg)
Male_data_temp = xlsread('./Raw data/04-SHARE/SHARE_ALL.xlsx','Male','B:D'); % Age	Height(cm)	Weight(Kg)
Female_data = [Female_data;Female_data_temp];
Male_data = [Male_data;Male_data_temp];
%% 05-KSPF
Female_data_temp = xlsread('./Raw data/05-KSPF/KSPF, Korea.xlsx','Female','B:D'); % Age	Height(cm)	Weight(Kg)
Male_data_temp = xlsread('./Raw data/05-KSPF/KSPF, Korea.xlsx','Male','B:D'); % Age	Height(cm)	Weight(Kg)
Female_data = [Female_data;Female_data_temp];
Male_data = [Male_data;Male_data_temp];
%% 06-ELSH-Brasil
Female_data_temp = xlsread('./Raw data/06-ELSH-Brasil/ELSA-Brasil.xls','Female','B:D'); % Age	Height(cm)	Weight(Kg)
Male_data_temp = xlsread('./Raw data/06-ELSH-Brasil/ELSA-Brasil.xls','Male','B:D'); % Age	Height(cm)	Weight(Kg)
Female_data = [Female_data;Female_data_temp];
Male_data = [Male_data;Male_data_temp];
%% 07-China
Female_data_temp = xlsread('./Raw data/07-China/China_ALL.xlsx','Female','B:D'); % Age	Height(cm)	Weight(Kg)
Male_data_temp = xlsread('./Raw data/07-China/China_ALL.xlsx','Male','B:D'); % Age	Height(cm)	Weight(Kg)
Female_data = [Female_data;Female_data_temp];
Male_data = [Male_data;Male_data_temp];
%% 08-Japan
Female_data_temp = xlsread('./Raw data/08-Japan/Japanese_1_8.xlsx','Female','B:D'); % Age	Height(cm)	Weight(Kg)
Male_data_temp = xlsread('./Raw data/08-Japan/Japanese_1_8.xlsx','Male','B:D'); % Age	Height(cm)	Weight(Kg)
Female_data = [Female_data;Female_data_temp];
Male_data = [Male_data;Male_data_temp];
%% 09-Bangladesh
Female_data_temp = xlsread('./Raw data/09-Bangladesh/Bangladesh_2011_14.xlsx','Female','B:D'); % Age	Height(cm)	Weight(Kg)
Female_data = [Female_data;Female_data_temp];
%% Calculate the distribution of BMI
BMI_Female_All__25 = []; % Age < 25
BMI_Male_All__25 = []; % Age < 25
BMI_Female_All__25_50 = []; % 25<= Age < 50
BMI_Male_All__25_50 = []; % 25<= Age < 50
BMI_Female_All__50 = []; % Age >= 50
BMI_Male_All__50 = []; % Age >= 50

% For Female
[M N] = size(Female_data); % Age Height(cm) Weight(Kg)
for i = 1:M
    if Female_data(i,1) < 25 % Age < 25
        BMI_Female_All__25 = [BMI_Female_All__25 Female_data(i,3)/(Female_data(i,2)/100)^2];
    end
    if Female_data(i,1) >= 25 && Female_data(i,1) < 50 % 25<= Age < 50
        BMI_Female_All__25_50 = [BMI_Female_All__25_50 Female_data(i,3)/(Female_data(i,2)/100)^2];
    end
    if Female_data(i,1) >= 50 % Age >= 50
        BMI_Female_All__50 = [BMI_Female_All__50 Female_data(i,3)/(Female_data(i,2)/100)^2];
    end
end

% For Male
[M N] = size(Male_data); % Age Height(cm) Weight(Kg)
for i = 1:M
    if Male_data(i,1) < 25 % Age < 25
        BMI_Male_All__25 = [BMI_Male_All__25 Male_data(i,3)/(Male_data(i,2)/100)^2];
    end
    if Male_data(i,1) >= 25 && Male_data(i,1) < 50 % 25<= Age < 50
        BMI_Male_All__25_50 = [BMI_Male_All__25_50 Male_data(i,3)/(Male_data(i,2)/100)^2];
    end
    if Male_data(i,1) >= 50 % Age >= 50
        BMI_Male_All__50 = [BMI_Male_All__50 Male_data(i,3)/(Male_data(i,2)/100)^2];
    end
end
toc;
%% We save the data
save BMI_All__0.mat BMI_Female_All__25 BMI_Male_All__25 ...
    BMI_Female_All__25_50 BMI_Male_All__25_50 ...
    BMI_Female_All__50 BMI_Male_All__50
