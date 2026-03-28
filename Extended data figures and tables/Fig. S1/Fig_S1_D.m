%% Source codes for Extended_Data_Fig_2_d
% Linear correlation coefficient between Weight and Weight*Height for all 
% the European countries
% (D) - Eastern Europe
% 57_Latvia
% 48_Lithuania
% 35_Estonia
%
%% Colors
load('My_Colors.mat')
%% Loading the correlation coefficients
load('./01-Europe/Correlation_coefficient_c1_Eastern_Europe.mat')
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

% 35_Estonia
x_data = Age_35_Estonia;
y_data = Corr_35_Estonia_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_10(1,:));
% 48_Lithuania
x_data = Age_48_Lithuania;
y_data = Corr_48_Lithuania_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_10(2,:));
% 57_Latvia
x_data = Age_57_Latvia;
y_data = Corr_57_Latvia_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_10(3,:));

% For Male
subplot(1,3,2);
hold on;
title('Male')
xlabel('Age (yr)');
%ylabel('Correlation coefficients')
xlim([49 91]);
ylim([0.90 1]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

% 35_Estonia
x_data = Age_35_Estonia;
y_data = Corr_35_Estonia_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_10(1,:));
% 48_Lithuania
x_data = Age_48_Lithuania;
y_data = Corr_48_Lithuania_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_10(2,:));
% 57_Latvia
x_data = Age_57_Latvia;
y_data = Corr_57_Latvia_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_10(3,:));

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
Legend = legend([H1 H2 H3],...
    '35-Estonia',...
    '48-Lithuania',...
    '57-Latvia',...
    'Location','southwest');
set(Legend,'Box','off','FontSize',9)
