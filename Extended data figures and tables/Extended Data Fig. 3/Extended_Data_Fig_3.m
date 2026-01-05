%% Source codes for Extended Data Fig. 3
% Linear correlation coefficient between Weight and Weight*Height for all 
% the NHANES experiments
%
%% Colors
load('My_Colors.mat')
%% Loading the correlation coefficients
load('./02-America/Correlation_coefficient_c1_NHANES_ALL.mat')
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

% NHANES_1999_2000
x_data = Age_NHANES_1999_2000;
y_data = Corr_NHANES_1999_2000_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(1,:));
% NHANES_2001_2002
x_data = Age_NHANES_2001_2002;
y_data = Corr_NHANES_2001_2002_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(2,:));
% NHANES_2003_2004
x_data = Age_NHANES_2003_2004;
y_data = Corr_NHANES_2003_2004_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(3,:));
% NHANES_2005_2006
x_data = Age_NHANES_2005_2006;
y_data = Corr_NHANES_2005_2006_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(4,:));
% NHANES_2007_2008
x_data = Age_NHANES_2007_2008;
y_data = Corr_NHANES_2007_2008_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(5,:));
% NHANES_2009_2010
x_data = Age_NHANES_2009_2010;
y_data = Corr_NHANES_2009_2010_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(6,:));
% NHANES_2011_2012
x_data = Age_NHANES_2011_2012;
y_data = Corr_NHANES_2011_2012_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(7,:));
% NHANES_2013_2014
x_data = Age_NHANES_2013_2014;
y_data = Corr_NHANES_2013_2014_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(8,:));
% NHANES_2015_2016
x_data = Age_NHANES_2015_2016;
y_data = Corr_NHANES_2015_2016_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(9,:));
% NHANES_2017_2018
x_data = Age_NHANES_2017_2018;
y_data = Corr_NHANES_2017_2018_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(10,:));
% NHANES_2017_March_2020
x_data = Age_NHANES_2017_March_2020;
y_data = Corr_NHANES_2017_March_2020_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(11,:));
% NHANES_August_2021_August_2023
x_data = Age_NHANES_August_2021_August_2023;
y_data = Corr_NHANES_August_2021_August_2023_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(12,:));

% For Male
subplot(1,3,2);
hold on;
title('Male')
xlabel('Age (yr)');
%ylabel('Correlation coefficients')
xlim([0 91]);
ylim([0.90 1]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

% NHANES_1999_2000
x_data = Age_NHANES_1999_2000;
y_data = Corr_NHANES_1999_2000_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(1,:));
% NHANES_2001_2002
x_data = Age_NHANES_2001_2002;
y_data = Corr_NHANES_2001_2002_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(2,:));
% NHANES_2003_2004
x_data = Age_NHANES_2003_2004;
y_data = Corr_NHANES_2003_2004_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(3,:));
% NHANES_2005_2006
x_data = Age_NHANES_2005_2006;
y_data = Corr_NHANES_2005_2006_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(4,:));
% NHANES_2007_2008
x_data = Age_NHANES_2007_2008;
y_data = Corr_NHANES_2007_2008_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(5,:));
% NHANES_2009_2010
x_data = Age_NHANES_2009_2010;
y_data = Corr_NHANES_2009_2010_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(6,:));
% NHANES_2011_2012
x_data = Age_NHANES_2011_2012;
y_data = Corr_NHANES_2011_2012_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(7,:));
% NHANES_2013_2014
x_data = Age_NHANES_2013_2014;
y_data = Corr_NHANES_2013_2014_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(8,:));
% NHANES_2015_2016
x_data = Age_NHANES_2015_2016;
y_data = Corr_NHANES_2015_2016_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(9,:));
% NHANES_2017_2018
x_data = Age_NHANES_2017_2018;
y_data = Corr_NHANES_2017_2018_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(10,:));
% NHANES_2017_March_2020
x_data = Age_NHANES_2017_March_2020;
y_data = Corr_NHANES_2017_March_2020_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(11,:));
% NHANES_August_2021_August_2023
x_data = Age_NHANES_August_2021_August_2023;
y_data = Corr_NHANES_August_2021_August_2023_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(12,:));

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
Legend = legend([H1 H2 H3 H4 H5 H6 H7 H8 H9 H10 H11 H12],...
    'NHANES-1999-2000',...
    'NHANES-2001-2002',...
    'NHANES-2003-2004',...
    'NHANES-2005-2006',...
    'NHANES-2007-2008',...
    'NHANES-2009-2010',...
    'NHANES-2011-2012',...
    'NHANES-2013-2014',...
    'NHANES-2015-2016',...
    'NHANES-2017-2018',...
    'NHANES-2017-March-2020',...
    'NHANES-August-2021-August-2023',...
    'Location','southwest');
set(Legend,'Box','off','FontSize',9)
