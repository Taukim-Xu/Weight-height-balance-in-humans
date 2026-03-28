%% Source codes for Extended_Data_Fig_2_b
% Linear correlation coefficient between Weight and Weight*Height for all 
% the European countries
% (B): Western_Europe
% 55_Finland
% 31_Luxembourg
% 23_Belgium
% 17_France
% 14_Netherlands
%
%% Colors
load('My_Colors.mat')
%% Loading the correlation coefficients
% Western_Europe
load('./01-Europe/Correlation_coefficient_c1_Western_Europe.mat')
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

% 14_Netherlands
x_data = Age_14_Netherlands;
y_data = Corr_14_Netherlands_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_10(1,:));
% 17_France
x_data = Age_17_France;
y_data = Corr_17_France_Female;
H2 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_10(2,:));
% 23_Belgium
x_data = Age_23_Belgium;
y_data = Corr_23_Belgium_Female;
H3 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_10(3,:));
% 31_Luxembourg
x_data = Age_31_Luxembourg;
y_data = Corr_31_Luxembourg_Female;
H4 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_10(4,:));
% 55_Finland
x_data = Age_55_Finland;
y_data = Corr_55_Finland_Female;
H5 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_10(5,:));

% For Male
subplot(1,3,2);
hold on;
title('Male')
xlabel('Age (yr)');
%ylabel('Correlation coefficients')
xlim([49 91]);
ylim([0.90 1]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

% 14_Netherlands
x_data = Age_14_Netherlands;
y_data = Corr_14_Netherlands_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_10(1,:));
% 17_France
x_data = Age_17_France;
y_data = Corr_17_France_Male;
H2 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_10(2,:));
% 23_Belgium
x_data = Age_23_Belgium;
y_data = Corr_23_Belgium_Male;
H3 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_10(3,:));
% 31_Luxembourg
x_data = Age_31_Luxembourg;
y_data = Corr_31_Luxembourg_Male;
H4 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_10(4,:));
% 55_Finland
x_data = Age_55_Finland;
y_data = Corr_55_Finland_Male;
H5 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_10(5,:));

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
Legend = legend([H1 H2 H3 H4 H5],'14-Netherlands',...
    '17-France',...
    '23-Belgium',...
    '31-Luxembourg',...
    '55-Finland',...
    'Location','southwest');
set(Legend,'Box','off','FontSize',9)
