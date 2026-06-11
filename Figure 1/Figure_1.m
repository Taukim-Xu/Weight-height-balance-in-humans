%% Source codes for Figure 1
% Linear correlation coefficient between Weight and Weight*Height for females
% 01-NHANES
% 02-ENSAUNT
% 03-KNHANES
% 04-SHARE
% 05-KSPF
% 06-ELSH-Brasil
% 07-China
% 08-Japan
% 09-Bangladesh
% 
%% Parameter information for drawing
My_mark_type = '.';
My_LineWidth = 2;
My_LineWidth_1 = 1.5;
My_FontName = 'Times New Roman';
My_fontSize = 12;
My_Alpha = 1; % transparency of the filled area
My_MarkerSize = 4;
Edgealpha = 0;
Alpha = 0.15;
My_Percentile = [5 50 95]; % quantile distribution
%% Colors
load('My_Colors.mat')
%% 
FF = figure;
% For Female
subplot(1,3,1)
hold on;
title('Female')
xlabel('Age (yr)');
ylabel('Correlation coefficients')
xlim([-1 91]);
ylim([0.93 1]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

set(gca,'XTick',[0 10 20 30 40 50 60 70 80 90]);
yyy = 0.9:0.01:1;
xxx = 10+yyy*0;
plot(xxx,yyy,'-.','linewidth',1,'color','k')

xxx = 0:1:90;
yyy = 0.97+xxx*0;
plot(xxx,yyy,'-.','linewidth',1,'color','k')

%% 05-KSPF
load('All coefficients/Correlation_coefficient_c1_KSPF.mat')
% 
xxx_data = Age_KSPF_Korea;
yyy_data = Corr_KSPF_Korea_Female;
[fitobject,gof] = fit(xxx_data',yyy_data','smooth');
X = min(xxx_data):(max(xxx_data)-min(xxx_data))/25:max(xxx_data);
Y = fitobject(X);
Y = Y';
HH5 = plot(X,Y,'LineWidth',My_LineWidth,'Color',My_Colors_9(5,:)); % Mean

%% 06-ELSH-Brasil
load('All coefficients/Correlation_coefficient_c_1_ELSA_Brasil.mat')
% 
xxx_data = Age_1_ELSA_Brasil;
yyy_data = Corr_1_ELSA_Brasil_Female;
[fitobject,gof] = fit(xxx_data',yyy_data','smooth');
X = min(xxx_data):(max(xxx_data)-min(xxx_data))/25:max(xxx_data);
Y = fitobject(X);
Y = Y';
HH6 = plot(X,Y,'LineWidth',My_LineWidth,'Color',My_Colors_9(6,:)); % Mean

%% 07-China
load('All coefficients/Correlation_coefficient_c1_China.mat')
% Age_1_CHARLS
xxx_data = Age_1_CHARLS;
yyy_data = Corr_1_CHARLS_Female;
[fitobject,gof] = fit(xxx_data',yyy_data','smooth');
X = min(xxx_data):(max(xxx_data)-min(xxx_data))/25:max(xxx_data);
Y = fitobject(X);
Y = Y';
HH7 = plot(X,Y,'LineWidth',My_LineWidth,'Color',My_Colors_9(7,:)); % Mean
% Age_BCCPDS_7_21_China
xxx_data = Age_BCCPDS_7_21_China;
yyy_data = Corr_BCCPDS_7_21_China_Female;
[fitobject,gof] = fit(xxx_data',yyy_data','smooth');
X = min(xxx_data):(max(xxx_data)-min(xxx_data))/25:max(xxx_data);
Y = fitobject(X);
Y = Y';
HH7 = plot(X,Y,'LineWidth',My_LineWidth,'Color',My_Colors_9(7,:)); % Mean
% Age_Chongqing_6_21_China
xxx_data = Age_Chongqing_6_21_China;
yyy_data = Corr_Chongqing_6_21_China_Female;
[fitobject,gof] = fit(xxx_data',yyy_data','smooth');
X = min(xxx_data):(max(xxx_data)-min(xxx_data))/25:max(xxx_data);
Y = fitobject(X);
Y = Y';
HH7 = plot(X,Y,'LineWidth',My_LineWidth,'Color',My_Colors_9(7,:)); % Mean
% Age_Jilin_China
xxx_data = Age_Jilin_China;
yyy_data = Corr_Jilin_China_Female;
[fitobject,gof] = fit(xxx_data',yyy_data','smooth');
X = min(xxx_data):(max(xxx_data)-min(xxx_data))/25:max(xxx_data);
Y = fitobject(X);
Y = Y';
HH7 = plot(X,Y,'LineWidth',My_LineWidth,'Color',My_Colors_9(7,:)); % Mean

%% 08-Japan
load('All coefficients/Correlation_coefficient_c1_Japan.mat')
% 
xxx_data = Age_Japanese_1_8;
yyy_data = Corr_Japanese_1_8_Female;
[fitobject,gof] = fit(xxx_data',yyy_data','smooth');
X = min(xxx_data):(max(xxx_data)-min(xxx_data))/25:max(xxx_data);
Y = fitobject(X);
Y = Y';
HH8 = plot(X,Y,'LineWidth',My_LineWidth,'Color',My_Colors_9(8,:)); % Mean

%% 09-Bangladesh
load('All coefficients/Correlation_coefficient_c1_Bangladesh.mat')
% 
xxx_data = Age_Bangladesh_2011_14;
yyy_data = Corr_Bangladesh_2011_14_Female;
[fitobject,gof] = fit(xxx_data',yyy_data','smooth');
X = min(xxx_data):(max(xxx_data)-min(xxx_data))/25:max(xxx_data);
Y = fitobject(X);
Y = Y';
HH9 = plot(X,Y,'LineWidth',My_LineWidth,'Color',My_Colors_9(9,:)); % Mean

%% 01-NHANES
load('All coefficients/My_percentiles_Corr_c_1_01_NHANES.mat')
load('All coefficients/Correlation_coefficient_c_1_NHANES_ALL.mat')
% 5th percentile
xx_data = My_Age_Female;
yy_data = My_5th_Female;
[fitobject,gof] = fit(xx_data',yy_data','smooth');
XX = min(xx_data):(max(xx_data)-min(xx_data))/25:max(xx_data);
YY = fitobject(XX);
YY = YY';
% 95th percentile
x_data = My_Age_Female;
y_data = My_95th_Female;
[fitobject,gof] = fit(x_data',y_data','smooth');
X = min(x_data):(max(x_data)-min(x_data))/25:max(x_data);
Y = fitobject(X);
Y = Y';
% Fill
XX_Fill_1 = [XX,X(end:-1:1)]; % 5th ~ 95th
YY_Fill_1 = [YY,Y(end:-1:1)];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,My_Colors_9(1,:));
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);
% NHANES_ALL
xxx_data = Age_1_NHANES_ALL;
yyy_data = Corr_1_NHANES_ALL_Female;
[fitobject,gof] = fit(xxx_data',yyy_data','smooth');
XX = min(xxx_data):(max(xxx_data)-min(xxx_data))/25:max(xxx_data);
YY = fitobject(XX);
YY = YY';
HH1 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',My_Colors_9(1,:)); % NHANES_ALL

%% 02-ENSAUNT
load('All coefficients/My_percentiles_Corr_c_1_02_ENSANUT.mat')
load('All coefficients/Correlation_coefficient_c_1_ENSANUT_ALL.mat')
% 5th percentile
xx_data = My_Age_Female;
yy_data = My_5th_Female;
[fitobject,gof] = fit(xx_data',yy_data','smooth');
XX = min(xx_data):(max(xx_data)-min(xx_data))/25:max(xx_data);
YY = fitobject(XX);
YY = YY';
% 95th percentile
x_data = My_Age_Female;
y_data = My_95th_Female;
[fitobject,gof] = fit(x_data',y_data','smooth');
X = min(x_data):(max(x_data)-min(x_data))/25:max(x_data);
Y = fitobject(X);
Y = Y';
% Fill
XX_Fill_1 = [XX,X(end:-1:1)]; % 5th ~ 95th
YY_Fill_1 = [YY,Y(end:-1:1)];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,My_Colors_9(2,:));
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);
% ENSANUT_ALL
xxx_data = Age_1_ENSANUT_ALL;
yyy_data = Corr_1_ENSANUT_ALL_Female;
[fitobject,gof] = fit(xxx_data',yyy_data','smooth');
XX = min(xxx_data):(max(xxx_data)-min(xxx_data))/25:max(xxx_data);
YY = fitobject(XX);
YY = YY';
HH2 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',My_Colors_9(2,:)); % ENSANUT_ALL

%% 03-KNHANES
load('All coefficients/My_percentiles_Corr_c_1_03_KNHANES.mat')
load('All coefficients/Correlation_coefficient_c1_KNHANES.mat')
% 5th percentile
xx_data = My_Age_Female;
yy_data = My_5th_Female;
[fitobject,gof] = fit(xx_data',yy_data','smooth');
XX = min(xx_data):(max(xx_data)-min(xx_data))/25:max(xx_data);
YY = fitobject(XX);
YY = YY';
% 95th percentile
x_data = My_Age_Female;
y_data = My_95th_Female;
[fitobject,gof] = fit(x_data',y_data','smooth');
X = min(x_data):(max(x_data)-min(x_data))/25:max(x_data);
Y = fitobject(X);
Y = Y';
% Fill
XX_Fill_1 = [XX,X(end:-1:1)]; % 5th ~ 95th
YY_Fill_1 = [YY,Y(end:-1:1)];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,My_Colors_9(3,:));
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);
% KNHANES_ALL
xxx_data = Age_1_KNHANES_ALL;
yyy_data = Corr_1_KNHANES_ALL_Female;
[fitobject,gof] = fit(xxx_data',yyy_data','smooth');
XX = min(xxx_data):(max(xxx_data)-min(xxx_data))/25:max(xxx_data);
YY = fitobject(XX);
YY = YY';
HH3 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',My_Colors_9(3,:)); % KNHANES_ALL

%% 04-SHARE
load('All coefficients/My_percentiles_Corr_c_1_04_SHARE.mat')
% 5th percentile
xx_data = My_Age_Female;
yy_data = My_5th_Female;
[fitobject,gof] = fit(xx_data',yy_data','smooth');
XX = min(xx_data):(max(xx_data)-min(xx_data))/25:max(xx_data);
YY = fitobject(XX);
YY = YY';
% 95th percentile
x_data = My_Age_Female;
y_data = My_95th_Female;
[fitobject,gof] = fit(x_data',y_data','smooth');
X = min(x_data):(max(x_data)-min(x_data))/25:max(x_data);
Y = fitobject(X);
Y = Y';
% Fill
XX_Fill_1 = [XX,X(end:-1:1)]; % 5th ~ 95th
YY_Fill_1 = [YY,Y(end:-1:1)];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,My_Colors_9(4,:));
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);
% Mean
xxx_data = My_Age_Female;
yyy_data = My_mean_Female;
[fitobject,gof] = fit(xxx_data',yyy_data','smooth');
XX = min(xxx_data):(max(xxx_data)-min(xxx_data))/25:max(xxx_data);
YY = fitobject(XX);
YY = YY';
HH4 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',My_Colors_9(4,:)); % Mean

%
%%
Legend = legend([HH1 HH2 HH3 HH4 HH5 HH6 HH7 HH8 HH9],...
    '01-NHANES, the USA',...
    '02-ENSAUNT, Mexico',...
    '03-KNHANES, Republic of Korea',...
    '04-SHARE, 27 European countries and Israel',...
    '05-KSPF, Republic of Korea',...
    '06-ELSH, Brasil',...
    '07-China',...
    '08-Japan',...
    '09-Bangladesh');
set(Legend,'Box','off','location','Southeast')

% For Male
subplot(1,3,2)
hold on;
title('Male')
xlabel('Age (yr)');
%ylabel('Correlation coefficients')
xlim([-1 91]);
ylim([0.93 1]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

set(gca,'XTick',[0 10 20 30 40 50 60 70 80 90]);
yyy = 0.9:0.01:1;
xxx = 10+yyy*0;
plot(xxx,yyy,'-.','linewidth',1,'color','k')

xxx = 0:1:90;
yyy = 0.97+xxx*0;
plot(xxx,yyy,'-.','linewidth',1,'color','k')

%% 05-KSPF
load('All coefficients/Correlation_coefficient_c1_KSPF.mat')
% 
xxx_data = Age_KSPF_Korea;
yyy_data = Corr_KSPF_Korea_Male;
[fitobject,gof] = fit(xxx_data',yyy_data','smooth');
X = min(xxx_data):(max(xxx_data)-min(xxx_data))/25:max(xxx_data);
Y = fitobject(X);
Y = Y';
HH5 = plot(X,Y,'LineWidth',My_LineWidth,'Color',My_Colors_9(5,:)); % Mean

%% 06-ELSH-Brasil
load('All coefficients/Correlation_coefficient_c_1_ELSA_Brasil.mat')
% 
xxx_data = Age_1_ELSA_Brasil;
yyy_data = Corr_1_ELSA_Brasil_Male;
[fitobject,gof] = fit(xxx_data',yyy_data','smooth');
X = min(xxx_data):(max(xxx_data)-min(xxx_data))/25:max(xxx_data);
Y = fitobject(X);
Y = Y';
HH6 = plot(X,Y,'LineWidth',My_LineWidth,'Color',My_Colors_9(6,:)); % Mean

%% 07-China
load('All coefficients/Correlation_coefficient_c1_China.mat')
% Age_1_CHARLS
xxx_data = Age_1_CHARLS;
yyy_data = Corr_1_CHARLS_Male;
[fitobject,gof] = fit(xxx_data',yyy_data','smooth');
X = min(xxx_data):(max(xxx_data)-min(xxx_data))/25:max(xxx_data);
Y = fitobject(X);
Y = Y';
HH7 = plot(X,Y,'LineWidth',My_LineWidth,'Color',My_Colors_9(7,:)); % Mean
% Age_BCCPDS_7_21_China
xxx_data = Age_BCCPDS_7_21_China;
yyy_data = Corr_BCCPDS_7_21_China_Male;
[fitobject,gof] = fit(xxx_data',yyy_data','smooth');
X = min(xxx_data):(max(xxx_data)-min(xxx_data))/25:max(xxx_data);
Y = fitobject(X);
Y = Y';
HH7 = plot(X,Y,'LineWidth',My_LineWidth,'Color',My_Colors_9(7,:)); % Mean
% Age_Chongqing_6_21_China
xxx_data = Age_Chongqing_6_21_China;
yyy_data = Corr_Chongqing_6_21_China_Male;
[fitobject,gof] = fit(xxx_data',yyy_data','smooth');
X = min(xxx_data):(max(xxx_data)-min(xxx_data))/25:max(xxx_data);
Y = fitobject(X);
Y = Y';
HH7 = plot(X,Y,'LineWidth',My_LineWidth,'Color',My_Colors_9(7,:)); % Mean
% Age_Jilin_China
xxx_data = Age_Jilin_China;
yyy_data = Corr_Jilin_China_Male;
[fitobject,gof] = fit(xxx_data',yyy_data','smooth');
X = min(xxx_data):(max(xxx_data)-min(xxx_data))/25:max(xxx_data);
Y = fitobject(X);
Y = Y';
HH7 = plot(X,Y,'LineWidth',My_LineWidth,'Color',My_Colors_9(7,:)); % Mean

%% 08-Japan
load('All coefficients/Correlation_coefficient_c1_Japan.mat')
% 
xxx_data = Age_Japanese_1_8;
yyy_data = Corr_Japanese_1_8_Male;
[fitobject,gof] = fit(xxx_data',yyy_data','smooth');
X = min(xxx_data):(max(xxx_data)-min(xxx_data))/25:max(xxx_data);
Y = fitobject(X);
Y = Y';
HH8 = plot(X,Y,'LineWidth',My_LineWidth,'Color',My_Colors_9(8,:)); % Mean

%% 01-NHANES
load('All coefficients/My_percentiles_Corr_c_1_01_NHANES.mat')
load('All coefficients/Correlation_coefficient_c_1_NHANES_ALL.mat')
% 5th percentile
xx_data = My_Age_Male;
yy_data = My_5th_Male;
[fitobject,gof] = fit(xx_data',yy_data','smooth');
XX = min(xx_data):(max(xx_data)-min(xx_data))/25:max(xx_data);
YY = fitobject(XX);
YY = YY';
% 95th percentile
x_data = My_Age_Male;
y_data = My_95th_Male;
[fitobject,gof] = fit(x_data',y_data','smooth');
X = min(x_data):(max(x_data)-min(x_data))/25:max(x_data);
Y = fitobject(X);
Y = Y';
% Fill
XX_Fill_1 = [XX,X(end:-1:1)]; % 5th ~ 95th
YY_Fill_1 = [YY,Y(end:-1:1)];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,My_Colors_9(1,:));
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);
% NHANES_ALL
xxx_data = Age_1_NHANES_ALL;
yyy_data = Corr_1_NHANES_ALL_Male;
[fitobject,gof] = fit(xxx_data',yyy_data','smooth');
XX = min(xxx_data):(max(xxx_data)-min(xxx_data))/25:max(xxx_data);
YY = fitobject(XX);
YY = YY';
HH1 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',My_Colors_9(1,:)); % NHANES_ALL

%% 02-ENSAUNT
load('All coefficients/My_percentiles_Corr_c_1_02_ENSANUT.mat')
load('All coefficients/Correlation_coefficient_c_1_ENSANUT_ALL.mat')
% 5th percentile
xx_data = My_Age_Male;
yy_data = My_5th_Male;
[fitobject,gof] = fit(xx_data',yy_data','smooth');
XX = min(xx_data):(max(xx_data)-min(xx_data))/25:max(xx_data);
YY = fitobject(XX);
YY = YY';
% 95th percentile
x_data = My_Age_Male;
y_data = My_95th_Male;
[fitobject,gof] = fit(x_data',y_data','smooth');
X = min(x_data):(max(x_data)-min(x_data))/25:max(x_data);
Y = fitobject(X);
Y = Y';
% Fill
XX_Fill_1 = [XX,X(end:-1:1)]; % 5th ~ 95th
YY_Fill_1 = [YY,Y(end:-1:1)];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,My_Colors_9(2,:));
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);
% ENSANUT_ALL
xxx_data = Age_1_ENSANUT_ALL;
yyy_data = Corr_1_ENSANUT_ALL_Male;
[fitobject,gof] = fit(xxx_data',yyy_data','smooth');
XX = min(xxx_data):(max(xxx_data)-min(xxx_data))/25:max(xxx_data);
YY = fitobject(XX);
YY = YY';
HH2 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',My_Colors_9(2,:)); % ENSANUT_ALL

%% 03-KNHANES
load('All coefficients/My_percentiles_Corr_c_1_03_KNHANES.mat')
load('All coefficients/Correlation_coefficient_c1_KNHANES.mat')
% 5th percentile
xx_data = My_Age_Male;
yy_data = My_5th_Male;
[fitobject,gof] = fit(xx_data',yy_data','smooth');
XX = min(xx_data):(max(xx_data)-min(xx_data))/25:max(xx_data);
YY = fitobject(XX);
YY = YY';
% 95th percentile
x_data = My_Age_Male;
y_data = My_95th_Male;
[fitobject,gof] = fit(x_data',y_data','smooth');
X = min(x_data):(max(x_data)-min(x_data))/25:max(x_data);
Y = fitobject(X);
Y = Y';
% Fill
XX_Fill_1 = [XX,X(end:-1:1)]; % 5th ~ 95th
YY_Fill_1 = [YY,Y(end:-1:1)];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,My_Colors_9(3,:));
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);
% KNHANES_ALL
xxx_data = Age_1_KNHANES_ALL;
yyy_data = Corr_1_KNHANES_ALL_Male;
[fitobject,gof] = fit(xxx_data',yyy_data','smooth');
XX = min(xxx_data):(max(xxx_data)-min(xxx_data))/25:max(xxx_data);
YY = fitobject(XX);
YY = YY';
HH3 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',My_Colors_9(3,:)); % KNHANES_ALL

%% 04-SHARE
load('All coefficients/My_percentiles_Corr_c_1_04_SHARE.mat')
% 5th percentile
xx_data = My_Age_Male;
yy_data = My_5th_Male;
[fitobject,gof] = fit(xx_data',yy_data','smooth');
XX = min(xx_data):(max(xx_data)-min(xx_data))/25:max(xx_data);
YY = fitobject(XX);
YY = YY';
% 95th percentile
x_data = My_Age_Male;
y_data = My_95th_Male;
[fitobject,gof] = fit(x_data',y_data','smooth');
X = min(x_data):(max(x_data)-min(x_data))/25:max(x_data);
Y = fitobject(X);
Y = Y';
% Fill
XX_Fill_1 = [XX,X(end:-1:1)]; % 5th ~ 95th
YY_Fill_1 = [YY,Y(end:-1:1)];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,My_Colors_9(4,:));
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);
% Mean
xxx_data = My_Age_Male;
yyy_data = My_mean_Male;
[fitobject,gof] = fit(xxx_data',yyy_data','smooth');
XX = min(xxx_data):(max(xxx_data)-min(xxx_data))/25:max(xxx_data);
YY = fitobject(XX);
YY = YY';
HH4 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',My_Colors_9(4,:)); % Mean

%
%%
Legend = legend([HH1 HH2 HH3 HH4 HH5 HH6 HH7 HH8],...
    '01-NHANES, the USA',...
    '02-ENSAUNT, Mexico',...
    '03-KNHANES, Republic of Korea',...
    '04-SHARE, 27 European countries and Israel',...
    '05-KSPF, Republic of Korea',...
    '06-ELSH, Brasil',...
    '07-China',...
    '08-Japan');
set(Legend,'Box','off','location','Southeast')

%%
%%
subplot(1,3,3)
hold on;
title('Box plot')
xlim([0.2 4.4]);
ylim([0.93 1]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)
%ax = gca;
%ax.YAxis.Visible = 'off';
Band_Width = 0.6; % Length
set(gca,'XTick',[1.5 3.5],'XTicklabel',{'Female','Male'});

xxx = 0:0.1:9;
yyy = 0.97+xxx*0;
plot(xxx,yyy,'-.','linewidth',1,'color','k')

% Loading the correlation coefficients
load('All coefficients\Correlation_coefficient_c_1_NHANES_ALL.mat')
load('All coefficients\Correlation_coefficient_c_1_ENSANUT_ALL.mat')
load('All coefficients\Correlation_coefficient_c1_KNHANES.mat')
load('All coefficients\Correlation_coefficient_c1_SHARE.mat')
load('All coefficients\Correlation_coefficient_c1_KSPF.mat')
load('All coefficients\Correlation_coefficient_c_1_ELSA_Brasil.mat')
load('All coefficients\Correlation_coefficient_c1_China.mat')
load('All coefficients\Correlation_coefficient_c1_Japan.mat')
load('All coefficients\Correlation_coefficient_c1_Bangladesh.mat')
%% We merge them.
%% For Female
Corr_All_Female = [...
    Corr_1_NHANES_1999_2000_Female Corr_1_NHANES_2001_2002_Female Corr_1_NHANES_2003_2004_Female Corr_1_NHANES_2005_2006_Female ...
    Corr_1_NHANES_2007_2008_Female Corr_1_NHANES_2009_2010_Female Corr_1_NHANES_2011_2012_Female Corr_1_NHANES_2013_2014_Female ...
    Corr_1_NHANES_2015_2016_Female Corr_1_NHANES_2017_2018_Female Corr_1_NHANES_2017_March_2020_Female ...
    Corr_1_NHANES_August_2021_August_2023_Female Corr_1_NHANES_ALL_Female ...
    ...
    Corr_1_ENSANUT_100K_2018_Female Corr_1_ENSANUT_2006_Female Corr_1_ENSANUT_2012_Female Corr_1_ENSANUT_2016_Female Corr_1_ENSANUT_2018_Female ...
    Corr_1_ENSANUT_ALL_Female ...
    ...
    Corr_1_KNHANES_1998_Female Corr_1_KNHANES_2001_Female Corr_1_KNHANES_2005_Female Corr_1_KNHANES_2007_Female Corr_1_KNHANES_2008_Female ...
    Corr_1_KNHANES_2009_Female Corr_1_KNHANES_2010_Female Corr_1_KNHANES_2011_Female Corr_1_KNHANES_2012_Female Corr_1_KNHANES_2013_Female ...
    Corr_1_KNHANES_2014_Female Corr_1_KNHANES_2015_Female Corr_1_KNHANES_2016_Female Corr_1_KNHANES_2017_Female Corr_1_KNHANES_2018_Female ...
    Corr_1_KNHANES_2019_Female Corr_1_KNHANES_2020_Female Corr_1_KNHANES_2021_Female Corr_1_KNHANES_2022_Female Corr_1_KNHANES_2023_Female ...
    Corr_1_KNHANES_2024_Female Corr_1_KNHANES_ALL_Female ...
    ...
    Corr_11_Austria_Female Corr_12_Germany_Female Corr_13_Sweden_Female Corr_14_Netherlands_Female Corr_15_Spain_Female Corr_16_Italy_Female ...
    Corr_17_France_Female Corr_18_Denmark_Female Corr_19_Greece_Female Corr_20_Switzerland_Female Corr_23_Belgium_Female Corr_25_Israel_Female ...
    Corr_28_Czech_Female Corr_29_Poland_Female Corr_31_Luxembourg_Female Corr_32_Hungary_Female Corr_33_Portugal_Female Corr_34_Slovenia_Female ...
    Corr_35_Estonia_Female Corr_47_Croatia_Female Corr_48_Lithuania_Female Corr_51_Bulgaria_Female Corr_53_Cyprus_Female Corr_55_Finland_Female ...
    Corr_57_Latvia_Female Corr_59_Malta_Female Corr_61_Romania_Female Corr_63_Slovakia_Female ...
    ...
    Corr_KSPF_Korea_Female ...
    ...
    Corr_1_ELSA_Brasil_Female ...
    ...
    Corr_1_CHARLS_Female Corr_BCCPDS_7_21_China_Female Corr_Chongqing_6_21_China_Female Corr_Jilin_China_Female ...
    ...
    Corr_Japanese_1_8_Female ...
    ...
    Corr_Bangladesh_2011_14_Female...
    ];

% Data outside the 5th and 95th
Corr_All_Female_Outside_5th = [];
Corr_All_Female_Inside = [];
Corr_All_Female_Outside_95th = [];

My_p = [5 10 25 50 75 90 95]; % percentiles
Corr_All_Female_Percentiles = prctile(Corr_All_Female,My_p);
% Female
[M N] = size(Corr_All_Female);
for i = 1:N
    if Corr_All_Female(i) < Corr_All_Female_Percentiles(1)
        Corr_All_Female_Outside_5th = [Corr_All_Female_Outside_5th Corr_All_Female(i)];
    end
    if Corr_All_Female(i) >= Corr_All_Female_Percentiles(1) && Corr_All_Female(i) <= Corr_All_Female_Percentiles(7)
        Corr_All_Female_Inside = [Corr_All_Female_Inside Corr_All_Female(i)];
    end
    if Corr_All_Female(i) > Corr_All_Female_Percentiles(7)
        Corr_All_Female_Outside_95th = [Corr_All_Female_Outside_95th Corr_All_Female(i)];
    end
end

% Female
XX_Fill = [1-Band_Width/2 1+Band_Width/2 1+Band_Width/2 1-Band_Width/2];
YY_Fill = [Corr_All_Female_Percentiles(3) Corr_All_Female_Percentiles(3) Corr_All_Female_Percentiles(4) Corr_All_Female_Percentiles(4)]; % 25至50
H1 = fill(XX_Fill,YY_Fill,My_Colors_9(1,:),'linewidth',My_LineWidth_1);
set(H1,'edgealpha',1,'facealpha',Alpha);
YY_Fill = [Corr_All_Female_Percentiles(4) Corr_All_Female_Percentiles(4) Corr_All_Female_Percentiles(5) Corr_All_Female_Percentiles(5)]; % 50至75
H1 = fill(XX_Fill,YY_Fill,My_Colors_9(1,:));
set(H1,'edgealpha',1,'facealpha',Alpha,'linewidth',My_LineWidth_1);
XX_Line = 1+[-Band_Width/3 Band_Width/3];
YY_Line = [Corr_All_Female_Percentiles(1) Corr_All_Female_Percentiles(1)]; % %5 percentile
LL = line(XX_Line,YY_Line,'linewidth',My_LineWidth_1,'Color',[0 0 0]);
YY_Line = [Corr_All_Female_Percentiles(7) Corr_All_Female_Percentiles(7)]; % %95 percentile
LL = line(XX_Line,YY_Line,'linewidth',My_LineWidth_1,'Color',[0 0 0]);
XX_Line = [1 1];
YY_Line = [Corr_All_Female_Percentiles(1) Corr_All_Female_Percentiles(3)];
LL = line(XX_Line,YY_Line,'LineStyle','--','linewidth',My_LineWidth_1,'Color',[0 0 0]);
YY_Line = [Corr_All_Female_Percentiles(5) Corr_All_Female_Percentiles(7)];
LL = line(XX_Line,YY_Line,'LineStyle','--','linewidth',My_LineWidth_1,'Color',[0 0 0]);

% r<0.97
[M N] = size(Corr_All_Female); % All
N_All_Female = N;
My_N_All_Female = 0;
for i = 1:N
    if Corr_All_Female(i) < 0.97
        My_N_All_Female = My_N_All_Female + 1;
    end
end
% text
My_text = ['r < 0.97' newline() '(' num2str(round((My_N_All_Female/N_All_Female)*100,1)) '%)'];
XX_Text = 1.5;
YY_Text = 0.952;
Text = text(XX_Text,YY_Text,My_text,'FontSize',12,'FontName',My_FontName,'HorizontalAlignment','center');

% r<0.95
[M N] = size(Corr_All_Female); % All
N_All_Female = N;
My_N_All_Female = 0;
for i = 1:N
    if Corr_All_Female(i) < 0.95
        My_N_All_Female = My_N_All_Female + 1;
    end
end
% text
My_text = ['r < 0.95' newline() '(' num2str(round((My_N_All_Female/N_All_Female)*100,1)) '%)'];
XX_Text = 1.5;
YY_Text = 0.945;
Text = text(XX_Text,YY_Text,My_text,'FontSize',12,'FontName',My_FontName,'HorizontalAlignment','center');

% distribution curve
nbins = 50;
figure;
HH_Female = histogram(Corr_All_Female,nbins);
figure(FF);
xx = HH_Female.BinEdges;
yy = HH_Female.Values;
x_data = [];
y_data = HH_Female.Values;
[M N] = size(HH_Female.BinEdges);
for i = 1:N-1
    x_data = [x_data (xx(i)+xx(i+1))/2];
end
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = Corr_All_Female_Percentiles(1):0.0005:Corr_All_Female_Percentiles(7);
YY = fitobject(XX)/max(fitobject(XX))*0.8+1;
H1 = plot(YY,XX,'LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(1,:));

%%  For Male
Corr_All_Male = [...
    Corr_1_NHANES_1999_2000_Male Corr_1_NHANES_2001_2002_Male Corr_1_NHANES_2003_2004_Male Corr_1_NHANES_2005_2006_Male ...
    Corr_1_NHANES_2007_2008_Male Corr_1_NHANES_2009_2010_Male Corr_1_NHANES_2011_2012_Male Corr_1_NHANES_2013_2014_Male ...
    Corr_1_NHANES_2015_2016_Male Corr_1_NHANES_2017_2018_Male Corr_1_NHANES_2017_March_2020_Male ...
    Corr_1_NHANES_August_2021_August_2023_Male Corr_1_NHANES_ALL_Male ...
    ...
    Corr_1_ENSANUT_100K_2018_Male Corr_1_ENSANUT_2006_Male Corr_1_ENSANUT_2012_Male Corr_1_ENSANUT_2016_Male Corr_1_ENSANUT_2018_Male ...
    Corr_1_ENSANUT_ALL_Male ...
    ...
    Corr_1_KNHANES_1998_Male Corr_1_KNHANES_2001_Male Corr_1_KNHANES_2005_Male Corr_1_KNHANES_2007_Male Corr_1_KNHANES_2008_Male ...
    Corr_1_KNHANES_2009_Male Corr_1_KNHANES_2010_Male Corr_1_KNHANES_2011_Male Corr_1_KNHANES_2012_Male Corr_1_KNHANES_2013_Male ...
    Corr_1_KNHANES_2014_Male Corr_1_KNHANES_2015_Male Corr_1_KNHANES_2016_Male Corr_1_KNHANES_2017_Male Corr_1_KNHANES_2018_Male ...
    Corr_1_KNHANES_2019_Male Corr_1_KNHANES_2020_Male Corr_1_KNHANES_2021_Male Corr_1_KNHANES_2022_Male Corr_1_KNHANES_2023_Male ...
    Corr_1_KNHANES_2024_Male Corr_1_KNHANES_ALL_Male ...
    ...
    Corr_11_Austria_Male Corr_12_Germany_Male Corr_13_Sweden_Male Corr_14_Netherlands_Male Corr_15_Spain_Male Corr_16_Italy_Male ...
    Corr_17_France_Male Corr_18_Denmark_Male Corr_19_Greece_Male Corr_20_Switzerland_Male Corr_23_Belgium_Male Corr_25_Israel_Male ...
    Corr_28_Czech_Male Corr_29_Poland_Male Corr_31_Luxembourg_Male Corr_32_Hungary_Male Corr_33_Portugal_Male Corr_34_Slovenia_Male ...
    Corr_35_Estonia_Male Corr_47_Croatia_Male Corr_48_Lithuania_Male Corr_51_Bulgaria_Male Corr_53_Cyprus_Male Corr_55_Finland_Male ...
    Corr_57_Latvia_Male Corr_59_Malta_Male Corr_61_Romania_Male Corr_63_Slovakia_Male ...
    ...
    Corr_KSPF_Korea_Male ...
    ...
    Corr_1_ELSA_Brasil_Male ...
    ...
    Corr_1_CHARLS_Male Corr_BCCPDS_7_21_China_Male Corr_Chongqing_6_21_China_Male Corr_Jilin_China_Male ...
    ...
    Corr_Japanese_1_8_Male ...
    ];

% Data outside the 5th and 95th
Corr_All_Male_Outside_5th = [];
Corr_All_Male_Inside = [];
Corr_All_Male_Outside_95th = [];

My_p = [5 10 25 50 75 90 95]; % percentiles
Corr_All_Male_Percentiles = prctile(Corr_All_Male,My_p);
% Male
[M N] = size(Corr_All_Male);
for i = 1:N
    if Corr_All_Male(i) < Corr_All_Male_Percentiles(1)
        Corr_All_Male_Outside_5th = [Corr_All_Male_Outside_5th Corr_All_Male(i)];
    end
    if Corr_All_Male(i) >= Corr_All_Male_Percentiles(1) && Corr_All_Male(i) <= Corr_All_Male_Percentiles(7)
        Corr_All_Male_Inside = [Corr_All_Male_Inside Corr_All_Male(i)];
    end
    if Corr_All_Male(i) > Corr_All_Male_Percentiles(7)
        Corr_All_Male_Outside_95th = [Corr_All_Male_Outside_95th Corr_All_Male(i)];
    end
end

% Male
XX_Fill = [3-Band_Width/2 3+Band_Width/2 3+Band_Width/2 3-Band_Width/2];
YY_Fill = [Corr_All_Male_Percentiles(3) Corr_All_Male_Percentiles(3) Corr_All_Male_Percentiles(4) Corr_All_Male_Percentiles(4)]; % 25至50
H1 = fill(XX_Fill,YY_Fill,My_Colors_9(2,:),'linewidth',My_LineWidth_1);
set(H1,'edgealpha',1,'facealpha',Alpha);
YY_Fill = [Corr_All_Male_Percentiles(4) Corr_All_Male_Percentiles(4) Corr_All_Male_Percentiles(5) Corr_All_Male_Percentiles(5)]; % 50至75
H1 = fill(XX_Fill,YY_Fill,My_Colors_9(2,:));
set(H1,'edgealpha',1,'facealpha',Alpha,'linewidth',My_LineWidth_1);
XX_Line = 3+[-Band_Width/3 Band_Width/3];
YY_Line = [Corr_All_Male_Percentiles(1) Corr_All_Male_Percentiles(1)]; % %5 percentile
LL = line(XX_Line,YY_Line,'linewidth',My_LineWidth_1,'Color',[0 0 0]);
YY_Line = [Corr_All_Male_Percentiles(7) Corr_All_Male_Percentiles(7)]; % %95 percentile
LL = line(XX_Line,YY_Line,'linewidth',My_LineWidth_1,'Color',[0 0 0]);
XX_Line = [3 3];
YY_Line = [Corr_All_Male_Percentiles(1) Corr_All_Male_Percentiles(3)];
LL = line(XX_Line,YY_Line,'LineStyle','--','linewidth',My_LineWidth_1,'Color',[0 0 0]);
YY_Line = [Corr_All_Male_Percentiles(5) Corr_All_Male_Percentiles(7)];
LL = line(XX_Line,YY_Line,'LineStyle','--','linewidth',My_LineWidth_1,'Color',[0 0 0]);

% r<0.97
[M N] = size(Corr_All_Male); % All
N_All_Male = N;
My_N_All_Male = 0;
for i = 1:N
    if Corr_All_Male(i) < 0.97
        My_N_All_Male = My_N_All_Male + 1;
    end
end
% text
My_text = ['r < 0.97' newline() '(' num2str(round((My_N_All_Male/N_All_Male)*100,1)) '%)'];
XX_Text = 3.5;
YY_Text = 0.952;
Text = text(XX_Text,YY_Text,My_text,'FontSize',12,'FontName',My_FontName,'HorizontalAlignment','center');

% r<0.95
[M N] = size(Corr_All_Male); % All
N_All_Male = N;
My_N_All_Male = 0;
for i = 1:N
    if Corr_All_Male(i) < 0.95
        My_N_All_Male = My_N_All_Male + 1;
    end
end
% text
My_text = ['r < 0.95' newline() '(' num2str(round((My_N_All_Male/N_All_Male)*100,1)) '%)'];
XX_Text = 3.5;
YY_Text = 0.945;
Text = text(XX_Text,YY_Text,My_text,'FontSize',12,'FontName',My_FontName,'HorizontalAlignment','center');

% distribution curve
nbins = 50;
figure;
HH_Male = histogram(Corr_All_Male,nbins);
figure(FF);
xx = HH_Male.BinEdges;
yy = HH_Male.Values;
x_data = [];
y_data = HH_Male.Values;
[M N] = size(HH_Male.BinEdges);
for i = 1:N-1
    x_data = [x_data (xx(i)+xx(i+1))/2];
end
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = Corr_All_Male_Percentiles(1):0.0005:Corr_All_Male_Percentiles(7);
YY = fitobject(XX)/max(fitobject(XX))*0.8+3;
H1 = plot(YY,XX,'LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(2,:));
%}