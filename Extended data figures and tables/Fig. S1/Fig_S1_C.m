%% Source codes for Extended_Data_Fig_2_
% Linear correlation coefficient between Weight and Weight*Height for all 
% the European countries
% (C) - Central Europe
% 11_Austria
% 12_Germany
% 20_Switzerland
% 28_Czech
% 29_Poland
% 32_Hungary
% 63_Slovakia
%
%% Colors
load('My_Colors.mat')
%% Loading the correlation coefficients
load('./01-Europe/Correlation_coefficient_c1_Eastern_Central_Europe.mat')
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
xlim([49 91]);
ylim([0.90 1]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

% 11_Austria
x_data = Age_11_Austria;
y_data = Corr_11_Austria_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_10(1,:));
% 12_Germany
x_data = Age_12_Germany;
y_data = Corr_12_Germany_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_10(2,:));
% 20_Switzerland
x_data = Age_20_Switzerland;
y_data = Corr_20_Switzerland_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_10(3,:));
% 28_Czech
x_data = Age_28_Czech;
y_data = Corr_28_Czech_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_10(4,:));
% 29_Poland
x_data = Age_29_Poland;
y_data = Corr_29_Poland_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_10(5,:));
% 32_Hungary
x_data = Age_32_Hungary;
y_data = Corr_32_Hungary_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_10(6,:));
% 63_Slovakia
x_data = Age_63_Slovakia;
y_data = Corr_63_Slovakia_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_10(7,:));


% For Male
subplot(1,3,2);
hold on;
title('Male')
xlabel('Age (yr)');
%ylabel('Correlation coefficients')
xlim([49 91]);
ylim([0.90 1]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

% 11_Austria
x_data = Age_11_Austria;
y_data = Corr_11_Austria_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_10(1,:));
% 12_Germany
x_data = Age_12_Germany;
y_data = Corr_12_Germany_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_10(2,:));
% 20_Switzerland
x_data = Age_20_Switzerland;
y_data = Corr_20_Switzerland_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_10(3,:));
% 28_Czech
x_data = Age_28_Czech;
y_data = Corr_28_Czech_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_10(4,:));
% 29_Poland
x_data = Age_29_Poland;
y_data = Corr_29_Poland_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_10(5,:));
% 32_Hungary
x_data = Age_32_Hungary;
y_data = Corr_32_Hungary_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_10(6,:));
% 63_Slovakia
x_data = Age_63_Slovakia;
y_data = Corr_63_Slovakia_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_10(7,:));

%% Legend
subplot(1,3,3)
hold on
xlim([0 1]);
ylim([0 1]);
ax = gca;
ax.YAxis.Visible = 'off';
ax.XAxis.Visible = 'off';

H1 = plot([-2 -2],[-2 -1],'-','LineWidth',My_LineWidth,'Color',My_Colors_10(1,:));
H2 = plot([-2 -2],[-2 -1],'-','LineWidth',My_LineWidth,'Color',My_Colors_10(2,:));
H3 = plot([-2 -2],[-2 -1],'-','LineWidth',My_LineWidth,'Color',My_Colors_10(3,:));
H4 = plot([-2 -2],[-2 -1],'-','LineWidth',My_LineWidth,'Color',My_Colors_10(4,:));
H5 = plot([-2 -2],[-2 -1],'-','LineWidth',My_LineWidth,'Color',My_Colors_10(5,:));
H6 = plot([-2 -2],[-2 -1],'-','LineWidth',My_LineWidth,'Color',My_Colors_10(6,:));
H7 = plot([-2 -2],[-2 -1],'-','LineWidth',My_LineWidth,'Color',My_Colors_10(7,:));
Legend = legend([H1 H2 H3 H4 H5 H6 H7],...
    '11-Austria',...
    '12-Germany',...
    '20-Switzerland',...
    '28-Czech',...
    '29-Poland',...
    '32-Hungary',...
    '63-Slovakia',...
    'Location','southwest');
set(Legend,'Box','off','FontSize',9)
