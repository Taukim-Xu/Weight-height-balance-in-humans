% We show the correlation coefficient between Weight and Weight*Height^c for
% all China datasets when exponent c = 1;
% Including:
% Jilin_China - 吉林，中国
% Japanese_1_8 - 日本
% Chongqing_6_21_China - 重庆，中国
% BCCPDS_7_21_China - 全国，中国
% CHARLS - 全国，中国
%
%%
c = 1;
%% Colors
load('My_Colors.mat')
%% Parameter information for drawing
My_mark_type = '.';
My_LineWidth = 1.5;
My_FontName = 'Times New Roman';
My_fontSize = 12;
My_Alpha = 1; % transparency of the filled area
My_MarkerSize = 7;
Edgealpha = 0;
Alpha = 1;
My_Percentile = [5 10 25 50 75 90 95]; % quantile distribution

%% Japanese_1_8
% Loading the data
Female_data = xlsread('Japanese_1_8.xlsx','Female');
Male_data = xlsread('Japanese_1_8.xlsx','Male');
% Grouping by age
Female_data_1 = [];
Female_data_2 = [];
Female_data_3 = [];
Female_data_4 = [];
Female_data_5 = [];
Female_data_6 = [];
Female_data_7 = [];
Female_data_8 = [];

Male_data_1 = [];
Male_data_2 = [];
Male_data_3 = [];
Male_data_4 = [];
Male_data_5 = [];
Male_data_6 = [];
Male_data_7 = [];
Male_data_8 = [];

% For Female
[M N] = size(Female_data); % No.	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Female_data(i,2) == 1
        Female_data_1 = [Female_data_1; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 2
        Female_data_2 = [Female_data_2; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 3
        Female_data_3 = [Female_data_3; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 4
        Female_data_4 = [Female_data_4; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 5
        Female_data_5 = [Female_data_5; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 6
        Female_data_6 = [Female_data_6; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 7
        Female_data_7 = [Female_data_7; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 8
        Female_data_8 = [Female_data_8; Female_data(i,3) Female_data(i,4)];
    end
end

% For Male
[M N] = size(Male_data); % No.	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Male_data(i,2) == 1
        Male_data_1 = [Male_data_1; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 2
        Male_data_2 = [Male_data_2; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 3
        Male_data_3 = [Male_data_3; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 4
        Male_data_4 = [Male_data_4; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 5
        Male_data_5 = [Male_data_5; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 6
        Male_data_6 = [Male_data_6; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 7
        Male_data_7 = [Male_data_7; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 8
        Male_data_8 = [Male_data_8; Male_data(i,3) Male_data(i,4)];
    end
end

% We calculate the correlation coefficients
% Weight VS Weight*Height^c
Age_Japanese_1_8 = 1:8;
Corr_Japanese_1_8_Female = [My_Corr(Female_data_1(:,2),Female_data_1(:,2).*(Female_data_1(:,1)/100).^c) ...
    My_Corr(Female_data_2(:,2),Female_data_2(:,2).*(Female_data_2(:,1)/100).^c) ...
    My_Corr(Female_data_3(:,2),Female_data_3(:,2).*(Female_data_3(:,1)/100).^c) ...
    My_Corr(Female_data_4(:,2),Female_data_4(:,2).*(Female_data_4(:,1)/100).^c) ...
    My_Corr(Female_data_5(:,2),Female_data_5(:,2).*(Female_data_5(:,1)/100).^c) ...
    My_Corr(Female_data_6(:,2),Female_data_6(:,2).*(Female_data_6(:,1)/100).^c) ...
    My_Corr(Female_data_7(:,2),Female_data_7(:,2).*(Female_data_7(:,1)/100).^c) ...
    My_Corr(Female_data_8(:,2),Female_data_8(:,2).*(Female_data_8(:,1)/100).^c)];

Corr_Japanese_1_8_Male = [My_Corr(Male_data_1(:,2),Male_data_1(:,2).*(Male_data_1(:,1)/100).^c) ...
    My_Corr(Male_data_2(:,2),Male_data_2(:,2).*(Male_data_2(:,1)/100).^c) ...
    My_Corr(Male_data_3(:,2),Male_data_3(:,2).*(Male_data_3(:,1)/100).^c) ...
    My_Corr(Male_data_4(:,2),Male_data_4(:,2).*(Male_data_4(:,1)/100).^c) ...
    My_Corr(Male_data_5(:,2),Male_data_5(:,2).*(Male_data_5(:,1)/100).^c) ...
    My_Corr(Male_data_6(:,2),Male_data_6(:,2).*(Male_data_6(:,1)/100).^c) ...
    My_Corr(Male_data_7(:,2),Male_data_7(:,2).*(Male_data_7(:,1)/100).^c) ...
    My_Corr(Male_data_8(:,2),Male_data_8(:,2).*(Male_data_8(:,1)/100).^c)];

%% We show the results
figure;
% For female
subplot(2,1,1);
hold on;
title('Female')
xlabel('Age (yr)');
ylabel('Correlation coefficients')
xlim([0 91]);
ylim([0.95 1]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

% Japanese_1_8
x_data = Age_Japanese_1_8;
y_data = Corr_Japanese_1_8_Female;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_3(2,:),'MarkerFaceColor','w');

% For Male
subplot(2,1,2);
hold on;
title('Male')
xlabel('Age (yr)');
ylabel('Correlation coefficients')
xlim([0 91]);
ylim([0.95 1]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

% Japanese_1_8
x_data = Age_Japanese_1_8;
y_data = Corr_Japanese_1_8_Male;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_3(2,:),'MarkerFaceColor','w');

%%
% We save the correlation analysis results
save('Correlation_coefficient_c1_Japan.mat','Age_Japanese_1_8','Corr_Japanese_1_8_Female','Corr_Japanese_1_8_Male');
