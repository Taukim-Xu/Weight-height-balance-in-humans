%% Source codes for Fig. S1
% Linear correlation coefficient between Weight and Weight*Height for all 
% the KNHANES experiments
%
%% Colors
load('My_Colors.mat')
%% Loading the correlation coefficients
load('./All coefficients/03-KNHANES/Correlation_coefficient_c1_KNHANES.mat')
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

% KNHANES_1998
x_data = Age_1_KNHANES_1998;
y_data = Corr_1_KNHANES_1998_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(1,:));
% KNHANES_2001
x_data = Age_1_KNHANES_2001;
y_data = Corr_1_KNHANES_2001_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(2,:));
% KNHANES_2005
x_data = Age_1_KNHANES_2005;
y_data = Corr_1_KNHANES_2005_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(3,:));
% KNHANES_2007
x_data = Age_1_KNHANES_2007;
y_data = Corr_1_KNHANES_2007_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(4,:));
% KNHANES_2008
x_data = Age_1_KNHANES_2008;
y_data = Corr_1_KNHANES_2008_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(5,:));
% KNHANES_2009
x_data = Age_1_KNHANES_2009;
y_data = Corr_1_KNHANES_2009_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(6,:));
% KNHANES_2010
x_data = Age_1_KNHANES_2010;
y_data = Corr_1_KNHANES_2010_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(7,:));
% KNHANES_2011
x_data = Age_1_KNHANES_2011;
y_data = Corr_1_KNHANES_2011_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(8,:));
% KNHANES_2012
x_data = Age_1_KNHANES_2012;
y_data = Corr_1_KNHANES_2012_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(9,:));
% KNHANES_2013
x_data = Age_1_KNHANES_2013;
y_data = Corr_1_KNHANES_2013_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(10,:));
% KNHANES_2014
x_data = Age_1_KNHANES_2014;
y_data = Corr_1_KNHANES_2014_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(11,:));
% KNHANES_2015
x_data = Age_1_KNHANES_2015;
y_data = Corr_1_KNHANES_2015_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(12,:));
% KNHANES_2016
x_data = Age_1_KNHANES_2016;
y_data = Corr_1_KNHANES_2016_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(13,:));
% KNHANES_2017
x_data = Age_1_KNHANES_2017;
y_data = Corr_1_KNHANES_2017_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(14,:));
% KNHANES_2018
x_data = Age_1_KNHANES_2018;
y_data = Corr_1_KNHANES_2018_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(15,:));
% KNHANES_2019
x_data = Age_1_KNHANES_2019;
y_data = Corr_1_KNHANES_2019_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(16,:));
% KNHANES_2020
x_data = Age_1_KNHANES_2020;
y_data = Corr_1_KNHANES_2020_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(17,:));
% KNHANES_2021
x_data = Age_1_KNHANES_2021;
y_data = Corr_1_KNHANES_2021_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(18,:));
% KNHANES_2022
x_data = Age_1_KNHANES_2022;
y_data = Corr_1_KNHANES_2022_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(19,:));
% KNHANES_2023
x_data = Age_1_KNHANES_2023;
y_data = Corr_1_KNHANES_2023_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(20,:));
% KNHANES_2024
x_data = Age_1_KNHANES_2024;
y_data = Corr_1_KNHANES_2024_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(21,:));
% KNHANES_ALL
x_data = Age_1_KNHANES_ALL;
y_data = Corr_1_KNHANES_ALL_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(22,:));

% For Male
subplot(1,3,2);
hold on;
title('Male')
xlabel('Age (yr)');
%ylabel('Correlation coefficients')
xlim([0 91]);
ylim([0.90 1]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

% KNHANES_1998
x_data = Age_1_KNHANES_1998;
y_data = Corr_1_KNHANES_1998_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(1,:));
% KNHANES_2001
x_data = Age_1_KNHANES_2001;
y_data = Corr_1_KNHANES_2001_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(2,:));
% KNHANES_2005
x_data = Age_1_KNHANES_2005;
y_data = Corr_1_KNHANES_2005_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(3,:));
% KNHANES_2007
x_data = Age_1_KNHANES_2007;
y_data = Corr_1_KNHANES_2007_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(4,:));
% KNHANES_2008
x_data = Age_1_KNHANES_2008;
y_data = Corr_1_KNHANES_2008_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(5,:));
% KNHANES_2009
x_data = Age_1_KNHANES_2009;
y_data = Corr_1_KNHANES_2009_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(6,:));
% KNHANES_2010
x_data = Age_1_KNHANES_2010;
y_data = Corr_1_KNHANES_2010_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(7,:));
% KNHANES_2011
x_data = Age_1_KNHANES_2011;
y_data = Corr_1_KNHANES_2011_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(8,:));
% KNHANES_2012
x_data = Age_1_KNHANES_2012;
y_data = Corr_1_KNHANES_2012_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(9,:));
% KNHANES_2013
x_data = Age_1_KNHANES_2013;
y_data = Corr_1_KNHANES_2013_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(10,:));
% KNHANES_2014
x_data = Age_1_KNHANES_2014;
y_data = Corr_1_KNHANES_2014_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(11,:));
% KNHANES_2015
x_data = Age_1_KNHANES_2015;
y_data = Corr_1_KNHANES_2015_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(12,:));
% KNHANES_2016
x_data = Age_1_KNHANES_2016;
y_data = Corr_1_KNHANES_2016_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(13,:));
% KNHANES_2017
x_data = Age_1_KNHANES_2017;
y_data = Corr_1_KNHANES_2017_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(14,:));
% KNHANES_2018
x_data = Age_1_KNHANES_2018;
y_data = Corr_1_KNHANES_2018_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(15,:));
% KNHANES_2019
x_data = Age_1_KNHANES_2019;
y_data = Corr_1_KNHANES_2019_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(16,:));
% KNHANES_2020
x_data = Age_1_KNHANES_2020;
y_data = Corr_1_KNHANES_2020_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(17,:));
% KNHANES_2021
x_data = Age_1_KNHANES_2021;
y_data = Corr_1_KNHANES_2021_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(18,:));
% KNHANES_2022
x_data = Age_1_KNHANES_2022;
y_data = Corr_1_KNHANES_2022_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(19,:));
% KNHANES_2023
x_data = Age_1_KNHANES_2023;
y_data = Corr_1_KNHANES_2023_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(20,:));
% KNHANES_2024
x_data = Age_1_KNHANES_2024;
y_data = Corr_1_KNHANES_2024_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(21,:));
% KNHANES_ALL
x_data = Age_1_KNHANES_ALL;
y_data = Corr_1_KNHANES_ALL_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(22,:));

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
H7 = plot([-2 -2],[-2 -1],'-','LineWidth',My_LineWidth,'Color',My_Colors_28(7,:));
H8 = plot([-2 -2],[-2 -1],'-','LineWidth',My_LineWidth,'Color',My_Colors_28(8,:));
H9 = plot([-2 -2],[-2 -1],'-','LineWidth',My_LineWidth,'Color',My_Colors_28(9,:));
H10 = plot([-2 -2],[-2 -1],'-','LineWidth',My_LineWidth,'Color',My_Colors_28(10,:));
H11 = plot([-2 -2],[-2 -1],'-','LineWidth',My_LineWidth,'Color',My_Colors_28(11,:));
H12 = plot([-2 -2],[-2 -1],'-','LineWidth',My_LineWidth,'Color',My_Colors_28(12,:));
H13 = plot([-2 -2],[-2 -1],'-','LineWidth',My_LineWidth,'Color',My_Colors_28(13,:));
H14 = plot([-2 -2],[-2 -1],'-','LineWidth',My_LineWidth,'Color',My_Colors_28(14,:));
H15 = plot([-2 -2],[-2 -1],'-','LineWidth',My_LineWidth,'Color',My_Colors_28(15,:));
H16 = plot([-2 -2],[-2 -1],'-','LineWidth',My_LineWidth,'Color',My_Colors_28(16,:));
H17 = plot([-2 -2],[-2 -1],'-','LineWidth',My_LineWidth,'Color',My_Colors_28(17,:));
H18 = plot([-2 -2],[-2 -1],'-','LineWidth',My_LineWidth,'Color',My_Colors_28(18,:));
H19 = plot([-2 -2],[-2 -1],'-','LineWidth',My_LineWidth,'Color',My_Colors_28(19,:));
H20 = plot([-2 -2],[-2 -1],'-','LineWidth',My_LineWidth,'Color',My_Colors_28(20,:));
H21 = plot([-2 -2],[-2 -1],'-','LineWidth',My_LineWidth,'Color',My_Colors_28(21,:));
H22 = plot([-2 -2],[-2 -1],'-','LineWidth',My_LineWidth,'Color',My_Colors_28(22,:));
Legend = legend([H1 H2 H3 H4 H5 H6 H7 H8 H9 H10 H11 H12 H13 H14 H15 H16 H17 H18 H19 H20 H21 H22],...
    'KNHANES-1998',...
    'KNHANES-2001',...
    'KNHANES-2005',...
    'KNHANES-2007',...
    'KNHANES-2008',...
    'KNHANES-2009',...
    'KNHANES-2010',...
    'KNHANES-2011',...
    'KNHANES-2012',...
    'KNHANES-2013',...
    'KNHANES-2014',...
    'KNHANES-2015',...
    'KNHANES-2016',...
    'KNHANES-2017',...
    'KNHANES-2018',...
    'KNHANES-2019',...
    'KNHANES-2020',...
    'KNHANES-2021',...
    'KNHANES-2022',...
    'KNHANES-All',...
    'Location','southwest');
set(Legend,'Box','off','FontSize',9)
