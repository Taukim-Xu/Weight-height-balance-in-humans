%% Source codes for Fig. S2
% Linear correlation coefficient between Weight and Weight*Height for all 
% the ENSAUNT experiments
%
%% Colors
load('My_Colors.mat')
%% Loading the correlation coefficients
load('./All coefficients/02-ENSAUNT/Correlation_coefficient_c_1_ENSANUT_ALL.mat')
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

% ENSANUT_2006
x_data = Age_1_ENSANUT_2006;
y_data = Corr_1_ENSANUT_2006_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(1,:));
% ENSANUT_2012
x_data = Age_1_ENSANUT_2012;
y_data = Corr_1_ENSANUT_2012_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(2,:));
% ENSANUT_2016
x_data = Age_1_ENSANUT_2016;
y_data = Corr_1_ENSANUT_2016_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(3,:));
% ENSANUT_2018
x_data = Age_1_ENSANUT_2018;
y_data = Corr_1_ENSANUT_2018_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(4,:));
% ENSANUT_100K_2018
x_data = Age_1_ENSANUT_100K_2018;
y_data = Corr_1_ENSANUT_100K_2018_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(5,:));
% ENSANUT_ALL
x_data = Age_1_ENSANUT_ALL;
y_data = Corr_1_ENSANUT_ALL_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(6,:));


% For Male
subplot(1,3,2);
hold on;
title('Male')
xlabel('Age (yr)');
%ylabel('Correlation coefficients')
xlim([0 91]);
ylim([0.90 1]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

% ENSANUT_2006
x_data = Age_1_ENSANUT_2006;
y_data = Corr_1_ENSANUT_2006_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(1,:));
% ENSANUT_2012
x_data = Age_1_ENSANUT_2012;
y_data = Corr_1_ENSANUT_2012_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(2,:));
% ENSANUT_2016
x_data = Age_1_ENSANUT_2016;
y_data = Corr_1_ENSANUT_2016_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(3,:));
% ENSANUT_2018
x_data = Age_1_ENSANUT_2018;
y_data = Corr_1_ENSANUT_2018_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(4,:));
% ENSANUT_100K_2018
x_data = Age_1_ENSANUT_100K_2018;
y_data = Corr_1_ENSANUT_100K_2018_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(5,:));
% ENSANUT_ALL
x_data = Age_1_ENSANUT_ALL;
y_data = Corr_1_ENSANUT_ALL_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(6,:));

%% Legend
subplot(1,3,3)
hold on
xlim([0 1]);
ylim([0 1]);
ax = gca;
ax.YAxis.Visible = 'off';
ax.XAxis.Visible = 'off';

H1 = plot([-2 -2],[-2 -1],'-','LineWidth',My_LineWidth,'Color',My_Colors_28(1,:));
H2 = plot([-2 -2],[-2 -1],'-','LineWidth',My_LineWidth,'Color',My_Colors_28(2,:));
H3 = plot([-2 -2],[-2 -1],'-','LineWidth',My_LineWidth,'Color',My_Colors_28(3,:));
H4 = plot([-2 -2],[-2 -1],'-','LineWidth',My_LineWidth,'Color',My_Colors_28(4,:));
H5 = plot([-2 -2],[-2 -1],'-','LineWidth',My_LineWidth,'Color',My_Colors_28(5,:));
H6 = plot([-2 -2],[-2 -1],'-','LineWidth',My_LineWidth,'Color',My_Colors_28(6,:));

Legend = legend([H1 H2 H3 H4 H5 H6],...
    'ENSANUT-2006',...
    'ENSANUT-2012',...
    'ENSANUT-2016',...
    'ENSANUT-2018',...
    'ENSANUT-100K-2018',...
    'ENSANUT-All',...
    'Location','southwest');
set(Legend,'Box','off','FontSize',9)
