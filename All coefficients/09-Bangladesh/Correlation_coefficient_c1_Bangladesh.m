% We show the correlation coefficient between Weight and Weight*Height^c for
% all Asia datasets when exponent c = 1;
% Including:
% Jilin_China - 吉林，中国
% Japanese_1_8 - 日本
% Chongqing_6_21_China - 重庆，中国
% BCCPDS_7_21_China - 全国，中国
% KSPF, Korea - 韩国
% Bangladesh_2011_14 - 孟加拉国
% 25_Israel - 以色列
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

%% Bangladesh_2011_14
% Loading the data
Female_data = xlsread('Bangladesh_2011_14.xlsx','Female');
% Grouping by age
Female_data_10 = [];
Female_data_11 = [];
Female_data_12 = [];
Female_data_13 = [];
Female_data_14 = [];
Female_data_15 = [];
Female_data_16 = [];
Female_data_17 = [];
Female_data_18 = [];
Female_data_19 = [];

% For Female
[M N] = size(Female_data); % No.	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Female_data(i,2) == 10
        Female_data_10 = [Female_data_10; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 11
        Female_data_11 = [Female_data_11; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 12
        Female_data_12 = [Female_data_12; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 13
        Female_data_13 = [Female_data_13; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 14
        Female_data_14 = [Female_data_14; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 15
        Female_data_15 = [Female_data_15; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 16
        Female_data_16 = [Female_data_16; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 17
        Female_data_17 = [Female_data_17; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 18
        Female_data_18 = [Female_data_18; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 19
        Female_data_19 = [Female_data_19; Female_data(i,3) Female_data(i,4)];
    end
end

% We calculate the correlation coefficients
% Weight VS Weight*Height^c
Age_Bangladesh_2011_14 = 10:19;
Corr_Bangladesh_2011_14_Female = [My_Corr(Female_data_10(:,2),Female_data_10(:,2).*(Female_data_10(:,1)/100).^c) ...
    My_Corr(Female_data_11(:,2),Female_data_11(:,2).*(Female_data_11(:,1)/100).^c) ...
    My_Corr(Female_data_12(:,2),Female_data_12(:,2).*(Female_data_12(:,1)/100).^c) ...
    My_Corr(Female_data_13(:,2),Female_data_13(:,2).*(Female_data_13(:,1)/100).^c) ...
    My_Corr(Female_data_14(:,2),Female_data_14(:,2).*(Female_data_14(:,1)/100).^c) ...
    My_Corr(Female_data_15(:,2),Female_data_15(:,2).*(Female_data_15(:,1)/100).^c) ...
    My_Corr(Female_data_16(:,2),Female_data_16(:,2).*(Female_data_16(:,1)/100).^c) ...
    My_Corr(Female_data_17(:,2),Female_data_17(:,2).*(Female_data_17(:,1)/100).^c) ...
    My_Corr(Female_data_18(:,2),Female_data_18(:,2).*(Female_data_18(:,1)/100).^c) ...
    My_Corr(Female_data_19(:,2),Female_data_19(:,2).*(Female_data_19(:,1)/100).^c)];
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
% Bangladesh_2011_14
x_data = Age_Bangladesh_2011_14;
y_data = Corr_Bangladesh_2011_14_Female;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(7,:),'MarkerFaceColor','w');


%%
% We save the correlation analysis results
save('Correlation_coefficient_c1_Bangladesh.mat',...
    'Age_Bangladesh_2011_14','Corr_Bangladesh_2011_14_Female');
