%% Source codes for Extended Data Fig. 4
% Linear correlation coefficient between Weight and Weight*Height for all 
% the Asian countries
%
%% Colors
load('My_Colors.mat')
%% Loading the correlation coefficients
load('./03-Asian/Correlation_coefficient_c1_Asia.mat')
%% Parameter information for drawing
My_mark_type = '.';
My_LineWidth = 1;
My_LineWidth_1 = 1.5;
My_FontName = 'Times New Roman';
My_fontSize = 12;
My_Alpha = 1; % transparency of the filled area
My_MarkerSize = 4;
Edgealpha = 0;
Alpha = 1;
My_Percentile = [5 50 95]; % quantile distribution
%% We show the results
figure;
% For Female
subplot(1,3,1);
hold on;
title('Female')
xlabel('Age (yr)');
ylabel('Correlation coefficients')
xlim([0 91]);
ylim([0.90 1]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

% 25_Israel
x_data = Age_25_Israel;
y_data = Corr_25_Israel_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_9(1,:));
% BCCPDS_7_21_China
x_data = Age_BCCPDS_7_21_China;
y_data = Corr_BCCPDS_7_21_China_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_9(2,:));
% Chongqing_6_21_China
x_data = Age_Chongqing_6_21_China;
y_data = Corr_Chongqing_6_21_China_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_9(3,:));
% Japanese_1_8
x_data = Age_Japanese_1_8;
y_data = Corr_Japanese_1_8_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_9(4,:));
% Jilin_China
x_data = Age_Jilin_China;
y_data = Corr_Jilin_China_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_9(5,:));
% KSPF_Korea
x_data = Age_KSPF_Korea;
y_data = Corr_KSPF_Korea_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_9(6,:));
% Bangladesh_2011_14
x_data = Age_Bangladesh_2011_14;
y_data = Corr_Bangladesh_2011_14_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_9(7,:));


% For Male
subplot(1,3,2);
hold on;
title('Male')
xlabel('Age (yr)');
%ylabel('Correlation coefficients')
xlim([0 91]);
ylim([0.90 1]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

% 25_Israel
x_data = Age_25_Israel;
y_data = Corr_25_Israel_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_9(1,:));
% BCCPDS_7_21_China
x_data = Age_BCCPDS_7_21_China;
y_data = Corr_BCCPDS_7_21_China_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_9(2,:));
% Chongqing_6_21_China
x_data = Age_Chongqing_6_21_China;
y_data = Corr_Chongqing_6_21_China_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_9(3,:));
% Japanese_1_8
x_data = Age_Japanese_1_8;
y_data = Corr_Japanese_1_8_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_9(4,:));
% Jilin_China
x_data = Age_Jilin_China;
y_data = Corr_Jilin_China_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_9(5,:));
% KSPF_Korea
x_data = Age_KSPF_Korea;
y_data = Corr_KSPF_Korea_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_9(6,:));

%% Legend
subplot(1,3,3)
hold on
xlim([0 1]);
ylim([0 1]);
ax = gca;
ax.YAxis.Visible = 'off';
ax.XAxis.Visible = 'off';

H1 = plot([-2 -2],[-2 -1],'-','LineWidth',My_LineWidth,'Color',My_Colors_9(1,:));
H2 = plot([-2 -2],[-2 -1],'-','LineWidth',My_LineWidth,'Color',My_Colors_9(2,:));
H3 = plot([-2 -2],[-2 -1],'-','LineWidth',My_LineWidth,'Color',My_Colors_9(3,:));
H4 = plot([-2 -2],[-2 -1],'-','LineWidth',My_LineWidth,'Color',My_Colors_9(4,:));
H5 = plot([-2 -2],[-2 -1],'-','LineWidth',My_LineWidth,'Color',My_Colors_9(5,:));
H6 = plot([-2 -2],[-2 -1],'-','LineWidth',My_LineWidth,'Color',My_Colors_9(6,:));
H7 = plot([-2 -2],[-2 -1],'-','LineWidth',My_LineWidth,'Color',My_Colors_9(7,:));
Legend = legend([H1 H2 H3 H4 H5 H6 H7],...
    '25-Israel',...
    'BCCPDS-7-21-China',...
    'Chongqing-6-21-China',...
    'Japanese-1-8',...
    'Jilin-China',...
    'KSPF-Korea',...
    'Bangladesh-2011-14',...
    'Location','southwest');
set(Legend,'Box','off','FontSize',9)
