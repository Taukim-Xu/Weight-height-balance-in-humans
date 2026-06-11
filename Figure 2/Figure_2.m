%% Source codes for Figure 2
% We show how the coefficients a and b vary with age
%
%% Parameter information for drawing
My_mark_type = '.';
My_LineWidth = 1.5;
My_LineWidth_1 = 2;
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
figure;
%% For Female
subplot(2,3,1)
hold on;
title('Female')
%xlabel('Age (yr)');
ylabel('Coefficient a')
xlim([0 91]);
ylim([0 20]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

set(gca,'XTick',[0 10 20 30 40 50 60 70 80 90]);
%% 05-KSPF
load('All coefficients/Coefficients_a_and_b_c1_KSPF.mat')
xx_data = Age_KSPF_Korea;
yy_data = Coefficient_a_Female_1_KSPF_Korea;
[fitobject,gof] = fit(xx_data',yy_data','smooth');
XX = min(xx_data):(max(xx_data)-min(xx_data))/20:max(xx_data);
YY = fitobject(XX);
YY = YY';
HH5 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',My_Colors_9(5,:)); % Age_KSPF_Korea

%% 06-ELSH-Brasil
load('All coefficients/Coefficients_a_and_b_c1_ELSA_Brasil.mat')
xx_data = Age_ELSA_Brasil;
yy_data = Coefficient_a_Female_1_ELSA_Brasil;
[fitobject,gof] = fit(xx_data',yy_data','smooth');
XX = min(xx_data):(max(xx_data)-min(xx_data))/20:max(xx_data);
YY = fitobject(XX);
YY = YY';
HH6 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',My_Colors_9(6,:)); % Age_ELSA_Brasil

%% 07-China
load('All coefficients/Coefficients_a_and_b_c1_China.mat')
xx_data = Age_BCCPDS_7_21_China;
yy_data = Coefficient_a_Female_1_BCCPDS_7_21_China;
[fitobject,gof] = fit(xx_data',yy_data','smooth');
XX = min(xx_data):(max(xx_data)-min(xx_data))/20:max(xx_data);
YY = fitobject(XX);
YY = YY';
HH7 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',My_Colors_9(7,:)); % Age_BCCPDS_7_21_China

xx_data = Age_CHARLS_China;
yy_data = Coefficient_a_Female_1_CHARLS_China;
[fitobject,gof] = fit(xx_data',yy_data','smooth');
XX = min(xx_data):(max(xx_data)-min(xx_data))/20:max(xx_data);
YY = fitobject(XX);
YY = YY';
HH7 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',My_Colors_9(7,:)); % Age_CHARLS_China

xx_data = Age_Chongqing_6_21_China;
yy_data = Coefficient_a_Female_1_Chongqing_6_21_China;
[fitobject,gof] = fit(xx_data',yy_data','smooth');
XX = min(xx_data):(max(xx_data)-min(xx_data))/20:max(xx_data);
YY = fitobject(XX);
YY = YY';
HH7 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',My_Colors_9(7,:)); % Age_Chongqing_6_21_China

xx_data = Age_Jilin_China;
yy_data = Coefficient_a_Female_1_Jilin_China;
[fitobject,gof] = fit(xx_data',yy_data','smooth');
XX = min(xx_data):(max(xx_data)-min(xx_data))/20:max(xx_data);
YY = fitobject(XX);
YY = YY';
HH7 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',My_Colors_9(7,:)); % Age_Jilin_China

%% 08-Japan
load('All coefficients/Coefficients_a_and_b_c1_Japan.mat')
xx_data = Age_Japanese_1_8;
yy_data = Coefficient_a_Female_1_Japanese_1_8;
[fitobject,gof] = fit(xx_data',yy_data','smooth');
XX = min(xx_data):(max(xx_data)-min(xx_data))/20:max(xx_data);
YY = fitobject(XX);
YY = YY';
HH8 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',My_Colors_9(8,:)); % Age_Japanese_1_8

%% 09-Bangladesh
load('All coefficients/Coefficients_a_and_b_c1_Bangladesh.mat')
xx_data = Age_Bangladesh_2011_14;
yy_data = Coefficient_a_Female_1_Bangladesh_2011_14;
[fitobject,gof] = fit(xx_data',yy_data','smooth');
XX = min(xx_data):(max(xx_data)-min(xx_data))/20:max(xx_data);
YY = fitobject(XX);
YY = YY';
HH9 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',My_Colors_9(9,:)); % Age_Bangladesh_2011_14

%% 01-NHANES
load('All coefficients/My_percentiles_Coefficient_ab_c1_01_NHANES.mat')
load('All coefficients/Coefficient_a_and_b_c1_NHANES_ALL.mat')
% 5th percentile
xx_data = My_Age_Female;
yy_data = My_5th_Coefficient_a_Female;
[fitobject,gof] = fit(xx_data',yy_data','smooth');
XX = min(xx_data):(max(xx_data)-min(xx_data))/25:max(xx_data);
YY = fitobject(XX);
YY = YY';
% 95th percentile
x_data = My_Age_Female;
y_data = My_95th_Coefficient_a_Female;
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
xxx_data = Age_NHANES_ALL;
yyy_data = Coefficient_a_Female_1_NHANES_ALL;
[fitobject,gof] = fit(xxx_data',yyy_data','smooth');
XX = min(xxx_data):(max(xxx_data)-min(xxx_data))/25:max(xxx_data);
YY = fitobject(XX);
YY = YY';
HH1 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',My_Colors_9(1,:)); % NHANES_ALL

%% 02-ENSAUNT
load('All coefficients/My_percentiles_Coefficient_ab_c1_02_ENSAUNT.mat')
load('All coefficients/Coefficients_a_and_b_c1_ENSAUT_ALL.mat')
% 5th percentile
xx_data = My_Age_Female;
yy_data = My_5th_Coefficient_a_Female;
[fitobject,gof] = fit(xx_data',yy_data','smooth');
XX = min(xx_data):(max(xx_data)-min(xx_data))/25:max(xx_data);
YY = fitobject(XX);
%XX = xx_data;
%YY = yy_data;
YY = YY';
% 95th percentile
x_data = My_Age_Female;
y_data = My_95th_Coefficient_a_Female;
[fitobject,gof] = fit(x_data',y_data','smooth');
X = min(x_data):(max(x_data)-min(x_data))/25:max(x_data);
Y = fitobject(X);
%X = x_data;
%Y = y_data;
Y = Y';
% Fill
XX_Fill_1 = [XX,X(end:-1:1)]; % 5th ~ 95th
YY_Fill_1 = [YY,Y(end:-1:1)];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,My_Colors_9(2,:));
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);
% ENSANUT_ALL
xxx_data = Age_ENSANUT_ALL;
yyy_data = Coefficient_a_Female_1_ENSANUT_ALL;
[fitobject,gof] = fit(xxx_data',yyy_data','smooth');
%XX = min(xxx_data):(max(xxx_data)-min(xxx_data))/25:max(xxx_data);
%YY = fitobject(XX);
XX = xxx_data;
YY = yyy_data;
YY = YY';
HH2 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',My_Colors_9(2,:)); % ENSANUT_ALL

%% 03-KNHANES
load('All coefficients/My_percentiles_Coefficient_ab_c1_03_KNHANES.mat')
load('All coefficients/Coefficients_a_and_b_c1_KNHANES.mat')
% 5th percentile
xx_data = My_Age_Female;
yy_data = My_5th_Coefficient_a_Female;
[fitobject,gof] = fit(xx_data',yy_data','smooth');
XX = min(xx_data):(max(xx_data)-min(xx_data))/25:max(xx_data);
YY = fitobject(XX);
YY = YY';
% 95th percentile
x_data = My_Age_Female;
y_data = My_95th_Coefficient_a_Female;
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
xxx_data = Age_KNHANES_ALL;
yyy_data = Coefficient_a_Female_1_KNHANES_ALL;
[fitobject,gof] = fit(xxx_data',yyy_data','smooth');
XX = min(xxx_data):(max(xxx_data)-min(xxx_data))/25:max(xxx_data);
YY = fitobject(XX);
YY = YY';
HH3 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',My_Colors_9(3,:)); % KNHANES_ALL

%% 04-SHARE
load('All coefficients/My_percentiles_Coefficient_ab_c1_04_SHARE.mat')
% 5th percentile
xx_data = My_Age_Female;
yy_data = My_5th_Coefficient_a_Female;
[fitobject,gof] = fit(xx_data',yy_data','smooth');
XX = min(xx_data):(max(xx_data)-min(xx_data))/25:max(xx_data);
YY = fitobject(XX);
YY = YY';
% 95th percentile
x_data = My_Age_Female;
y_data = My_95th_Coefficient_a_Female;
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
yyy_data = My_mean_Coefficient_a_Female;
[fitobject,gof] = fit(xxx_data',yyy_data','smooth');
XX = min(xxx_data):(max(xxx_data)-min(xxx_data))/25:max(xxx_data);
YY = fitobject(XX);
YY = YY';
HH4 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',My_Colors_9(4,:)); % Mean

subplot(2,3,4)
hold on;
%title('Female')
xlabel('Age (yr)');
ylabel('Coefficient b')
xlim([0 91]);
ylim([0.4 1.1]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

set(gca,'XTick',[0 10 20 30 40 50 60 70 80 90]);
%% 05-KSPF
load('All coefficients/Coefficients_a_and_b_c1_KSPF.mat')
xx_data = Age_KSPF_Korea;
yy_data = Coefficient_b_Female_1_KSPF_Korea;
[fitobject,gof] = fit(xx_data',yy_data','smooth');
XX = min(xx_data):(max(xx_data)-min(xx_data))/20:max(xx_data);
YY = fitobject(XX);
YY = YY';
HH5 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',My_Colors_9(5,:)); % Age_KSPF_Korea

%% 06-ELSH-Brasil
load('All coefficients/Coefficients_a_and_b_c1_ELSA_Brasil.mat')
xx_data = Age_ELSA_Brasil;
yy_data = Coefficient_b_Female_1_ELSA_Brasil;
[fitobject,gof] = fit(xx_data',yy_data','smooth');
XX = min(xx_data):(max(xx_data)-min(xx_data))/20:max(xx_data);
YY = fitobject(XX);
YY = YY';
HH6 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',My_Colors_9(6,:)); % Age_ELSA_Brasil

%% 07-China
load('All coefficients/Coefficients_a_and_b_c1_China.mat')
xx_data = Age_BCCPDS_7_21_China;
yy_data = Coefficient_b_Female_1_BCCPDS_7_21_China;
[fitobject,gof] = fit(xx_data',yy_data','smooth');
XX = min(xx_data):(max(xx_data)-min(xx_data))/20:max(xx_data);
YY = fitobject(XX);
YY = YY';
HH7 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',My_Colors_9(7,:)); % Age_BCCPDS_7_21_China

xx_data = Age_CHARLS_China;
yy_data = Coefficient_b_Female_1_CHARLS_China;
[fitobject,gof] = fit(xx_data',yy_data','smooth');
XX = min(xx_data):(max(xx_data)-min(xx_data))/20:max(xx_data);
YY = fitobject(XX);
YY = YY';
HH7 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',My_Colors_9(7,:)); % Age_CHARLS_China

xx_data = Age_Chongqing_6_21_China;
yy_data = Coefficient_b_Female_1_Chongqing_6_21_China;
[fitobject,gof] = fit(xx_data',yy_data','smooth');
XX = min(xx_data):(max(xx_data)-min(xx_data))/20:max(xx_data);
YY = fitobject(XX);
YY = YY';
HH7 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',My_Colors_9(7,:)); % Age_Chongqing_6_21_China

xx_data = Age_Jilin_China;
yy_data = Coefficient_b_Female_1_Jilin_China;
[fitobject,gof] = fit(xx_data',yy_data','smooth');
XX = min(xx_data):(max(xx_data)-min(xx_data))/20:max(xx_data);
YY = fitobject(XX);
YY = YY';
HH7 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',My_Colors_9(7,:)); % Age_Jilin_China

%% 08-Japan
load('All coefficients/Coefficients_a_and_b_c1_Japan.mat')
xx_data = Age_Japanese_1_8;
yy_data = Coefficient_b_Female_1_Japanese_1_8;
[fitobject,gof] = fit(xx_data',yy_data','smooth');
XX = min(xx_data):(max(xx_data)-min(xx_data))/20:max(xx_data);
YY = fitobject(XX);
YY = YY';
HH8 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',My_Colors_9(8,:)); % Age_Japanese_1_8

%% 09-Bangladesh
load('All coefficients/Coefficients_a_and_b_c1_Bangladesh.mat')
xx_data = Age_Bangladesh_2011_14;
yy_data = Coefficient_b_Female_1_Bangladesh_2011_14;
[fitobject,gof] = fit(xx_data',yy_data','smooth');
XX = min(xx_data):(max(xx_data)-min(xx_data))/20:max(xx_data);
YY = fitobject(XX);
YY = YY';
HH9 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',My_Colors_9(9,:)); % Age_Bangladesh_2011_14

%% 01-NHANES
load('All coefficients/My_percentiles_Coefficient_ab_c1_01_NHANES.mat')
load('All coefficients/Coefficient_a_and_b_c1_NHANES_ALL.mat')
% 5th percentile
xx_data = My_Age_Female;
yy_data = My_5th_Coefficient_b_Female;
[fitobject,gof] = fit(xx_data',yy_data','smooth');
XX = min(xx_data):(max(xx_data)-min(xx_data))/25:max(xx_data);
YY = fitobject(XX);
YY = YY';
% 95th percentile
x_data = My_Age_Female;
y_data = My_95th_Coefficient_b_Female;
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
xxx_data = Age_NHANES_ALL;
yyy_data = Coefficient_b_Female_1_NHANES_ALL;
[fitobject,gof] = fit(xxx_data',yyy_data','smooth');
XX = min(xxx_data):(max(xxx_data)-min(xxx_data))/25:max(xxx_data);
YY = fitobject(XX);
YY = YY';
HH1 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',My_Colors_9(1,:)); % NHANES_ALL

%% 02-ENSAUNT
load('All coefficients/My_percentiles_Coefficient_ab_c1_02_ENSAUNT.mat')
load('All coefficients/Coefficients_a_and_b_c1_ENSAUT_ALL.mat')
% 5th percentile
xx_data = My_Age_Female;
yy_data = My_5th_Coefficient_b_Female;
[fitobject,gof] = fit(xx_data',yy_data','smooth');
XX = min(xx_data):(max(xx_data)-min(xx_data))/25:max(xx_data);
YY = fitobject(XX);
YY = YY';
% 95th percentile
x_data = My_Age_Female;
y_data = My_95th_Coefficient_b_Female;
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
xxx_data = Age_ENSANUT_ALL;
yyy_data = Coefficient_b_Female_1_ENSANUT_ALL;
[fitobject,gof] = fit(xxx_data',yyy_data','smooth');
XX = min(xxx_data):(max(xxx_data)-min(xxx_data))/25:max(xxx_data);
YY = fitobject(XX);
YY = YY';
HH2 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',My_Colors_9(2,:)); % ENSANUT_ALL

%% 03-KNHANES
load('All coefficients/My_percentiles_Coefficient_ab_c1_03_KNHANES.mat')
load('All coefficients/Coefficients_a_and_b_c1_KNHANES.mat')
% 5th percentile
xx_data = My_Age_Female;
yy_data = My_5th_Coefficient_b_Female;
[fitobject,gof] = fit(xx_data',yy_data','smooth');
XX = min(xx_data):(max(xx_data)-min(xx_data))/25:max(xx_data);
YY = fitobject(XX);
YY = YY';
% 95th percentile
x_data = My_Age_Female;
y_data = My_95th_Coefficient_b_Female;
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
xxx_data = Age_KNHANES_ALL;
yyy_data = Coefficient_b_Female_1_KNHANES_ALL;
[fitobject,gof] = fit(xxx_data',yyy_data','smooth');
XX = min(xxx_data):(max(xxx_data)-min(xxx_data))/25:max(xxx_data);
YY = fitobject(XX);
YY = YY';
HH3 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',My_Colors_9(3,:)); % KNHANES_ALL

%% 04-SHARE
load('All coefficients/My_percentiles_Coefficient_ab_c1_04_SHARE.mat')
% 5th percentile
xx_data = My_Age_Female;
yy_data = My_5th_Coefficient_b_Female;
[fitobject,gof] = fit(xx_data',yy_data','smooth');
XX = min(xx_data):(max(xx_data)-min(xx_data))/25:max(xx_data);
YY = fitobject(XX);
YY = YY';
% 95th percentile
x_data = My_Age_Female;
y_data = My_95th_Coefficient_b_Female;
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
yyy_data = My_mean_Coefficient_b_Female;
[fitobject,gof] = fit(xxx_data',yyy_data','smooth');
XX = min(xxx_data):(max(xxx_data)-min(xxx_data))/25:max(xxx_data);
YY = fitobject(XX);
YY = YY';
HH4 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',My_Colors_9(4,:)); % Mean

%% For Male
subplot(2,3,2)
hold on;
title('Male')
%xlabel('Age (yr)');
%ylabel('Coefficient a')
xlim([0 91]);
ylim([0 20]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

set(gca,'XTick',[0 10 20 30 40 50 60 70 80 90]);
%% 05-KSPF
load('All coefficients/Coefficients_a_and_b_c1_KSPF.mat')
xx_data = Age_KSPF_Korea;
yy_data = Coefficient_a_Male_1_KSPF_Korea;
[fitobject,gof] = fit(xx_data',yy_data','smooth');
XX = min(xx_data):(max(xx_data)-min(xx_data))/20:max(xx_data);
YY = fitobject(XX);
YY = YY';
HH5 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',My_Colors_9(5,:)); % Age_KSPF_Korea

%% 06-ELSH-Brasil
load('All coefficients/Coefficients_a_and_b_c1_ELSA_Brasil.mat')
xx_data = Age_ELSA_Brasil;
yy_data = Coefficient_a_Male_1_ELSA_Brasil;
[fitobject,gof] = fit(xx_data',yy_data','smooth');
XX = min(xx_data):(max(xx_data)-min(xx_data))/20:max(xx_data);
YY = fitobject(XX);
YY = YY';
HH6 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',My_Colors_9(6,:)); % Age_ELSA_Brasil

%% 07-China
load('All coefficients/Coefficients_a_and_b_c1_China.mat')
xx_data = Age_BCCPDS_7_21_China;
yy_data = Coefficient_a_Male_1_BCCPDS_7_21_China;
[fitobject,gof] = fit(xx_data',yy_data','smooth');
XX = min(xx_data):(max(xx_data)-min(xx_data))/20:max(xx_data);
YY = fitobject(XX);
YY = YY';
HH7 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',My_Colors_9(7,:)); % Age_BCCPDS_7_21_China

xx_data = Age_CHARLS_China;
yy_data = Coefficient_a_Male_1_CHARLS_China;
[fitobject,gof] = fit(xx_data',yy_data','smooth');
XX = min(xx_data):(max(xx_data)-min(xx_data))/20:max(xx_data);
YY = fitobject(XX);
YY = YY';
HH7 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',My_Colors_9(7,:)); % Age_CHARLS_China

xx_data = Age_Chongqing_6_21_China;
yy_data = Coefficient_a_Male_1_Chongqing_6_21_China;
[fitobject,gof] = fit(xx_data',yy_data','smooth');
XX = min(xx_data):(max(xx_data)-min(xx_data))/20:max(xx_data);
YY = fitobject(XX);
YY = YY';
HH7 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',My_Colors_9(7,:)); % Age_Chongqing_6_21_China

xx_data = Age_Jilin_China;
yy_data = Coefficient_a_Male_1_Jilin_China;
[fitobject,gof] = fit(xx_data',yy_data','smooth');
XX = min(xx_data):(max(xx_data)-min(xx_data))/20:max(xx_data);
YY = fitobject(XX);
YY = YY';
HH7 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',My_Colors_9(7,:)); % Age_Jilin_China

%% 08-Japan
load('All coefficients/Coefficients_a_and_b_c1_Japan.mat')
xx_data = Age_Japanese_1_8;
yy_data = Coefficient_a_Male_1_Japanese_1_8;
[fitobject,gof] = fit(xx_data',yy_data','smooth');
XX = min(xx_data):(max(xx_data)-min(xx_data))/20:max(xx_data);
YY = fitobject(XX);
YY = YY';
HH8 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',My_Colors_9(8,:)); % Age_Japanese_1_8

%% 01-NHANES
load('All coefficients/My_percentiles_Coefficient_ab_c1_01_NHANES.mat')
load('All coefficients/Coefficient_a_and_b_c1_NHANES_ALL.mat')
% 5th percentile
xx_data = My_Age_Male;
yy_data = My_5th_Coefficient_a_Male;
[fitobject,gof] = fit(xx_data',yy_data','smooth');
XX = min(xx_data):(max(xx_data)-min(xx_data))/25:max(xx_data);
YY = fitobject(XX);
YY = YY';
% 95th percentile
x_data = My_Age_Male;
y_data = My_95th_Coefficient_a_Male;
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
xxx_data = Age_NHANES_ALL;
yyy_data = Coefficient_a_Male_1_NHANES_ALL;
[fitobject,gof] = fit(xxx_data',yyy_data','smooth');
XX = min(xxx_data):(max(xxx_data)-min(xxx_data))/25:max(xxx_data);
YY = fitobject(XX);
YY = YY';
HH1 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',My_Colors_9(1,:)); % NHANES_ALL

%% 02-ENSAUNT
load('All coefficients/My_percentiles_Coefficient_ab_c1_02_ENSAUNT.mat')
load('All coefficients/Coefficients_a_and_b_c1_ENSAUT_ALL.mat')
% 5th percentile
xx_data = My_Age_Male;
yy_data = My_5th_Coefficient_a_Male;
[fitobject,gof] = fit(xx_data',yy_data','smooth');
XX = min(xx_data):(max(xx_data)-min(xx_data))/25:max(xx_data);
YY = fitobject(XX);
YY = YY';
% 95th percentile
x_data = My_Age_Male;
y_data = My_95th_Coefficient_a_Male;
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
xxx_data = Age_ENSANUT_ALL;
yyy_data = Coefficient_a_Male_1_ENSANUT_ALL;
[fitobject,gof] = fit(xxx_data',yyy_data','smooth');
XX = min(xxx_data):(max(xxx_data)-min(xxx_data))/25:max(xxx_data);
YY = fitobject(XX);
YY = YY';
HH2 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',My_Colors_9(2,:)); % ENSANUT_ALL

%% 03-KNHANES
load('All coefficients/My_percentiles_Coefficient_ab_c1_03_KNHANES.mat')
load('All coefficients/Coefficients_a_and_b_c1_KNHANES.mat')
% 5th percentile
xx_data = My_Age_Male;
yy_data = My_5th_Coefficient_a_Male;
[fitobject,gof] = fit(xx_data',yy_data','smooth');
XX = min(xx_data):(max(xx_data)-min(xx_data))/25:max(xx_data);
YY = fitobject(XX);
YY = YY';
% 95th percentile
x_data = My_Age_Male;
y_data = My_95th_Coefficient_a_Male;
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
xxx_data = Age_KNHANES_ALL;
yyy_data = Coefficient_a_Male_1_KNHANES_ALL;
[fitobject,gof] = fit(xxx_data',yyy_data','smooth');
XX = min(xxx_data):(max(xxx_data)-min(xxx_data))/25:max(xxx_data);
YY = fitobject(XX);
YY = YY';
HH3 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',My_Colors_9(3,:)); % KNHANES_ALL

%% 04-SHARE
load('All coefficients/My_percentiles_Coefficient_ab_c1_04_SHARE.mat')
% 5th percentile
xx_data = My_Age_Male;
yy_data = My_5th_Coefficient_a_Male;
[fitobject,gof] = fit(xx_data',yy_data','smooth');
XX = min(xx_data):(max(xx_data)-min(xx_data))/25:max(xx_data);
YY = fitobject(XX);
YY = YY';
% 95th percentile
x_data = My_Age_Male;
y_data = My_95th_Coefficient_a_Male;
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
yyy_data = My_mean_Coefficient_a_Male;
[fitobject,gof] = fit(xxx_data',yyy_data','smooth');
XX = min(xxx_data):(max(xxx_data)-min(xxx_data))/25:max(xxx_data);
YY = fitobject(XX);
YY = YY';
HH4 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',My_Colors_9(4,:)); % Mean

subplot(2,3,5)
hold on;
%title('Male')
xlabel('Age (yr)');
%ylabel('Coefficient b')
xlim([0 91]);
ylim([0.4 1.1]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

set(gca,'XTick',[0 10 20 30 40 50 60 70 80 90]);
%% 05-KSPF
load('All coefficients/Coefficients_a_and_b_c1_KSPF.mat')
xx_data = Age_KSPF_Korea;
yy_data = Coefficient_b_Male_1_KSPF_Korea;
[fitobject,gof] = fit(xx_data',yy_data','smooth');
XX = min(xx_data):(max(xx_data)-min(xx_data))/20:max(xx_data);
YY = fitobject(XX);
YY = YY';
HH5 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',My_Colors_9(5,:)); % Age_KSPF_Korea

%% 06-ELSH-Brasil
load('All coefficients/Coefficients_a_and_b_c1_ELSA_Brasil.mat')
xx_data = Age_ELSA_Brasil;
yy_data = Coefficient_b_Male_1_ELSA_Brasil;
[fitobject,gof] = fit(xx_data',yy_data','smooth');
XX = min(xx_data):(max(xx_data)-min(xx_data))/20:max(xx_data);
YY = fitobject(XX);
YY = YY';
HH6 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',My_Colors_9(6,:)); % Age_ELSA_Brasil

%% 07-China
load('All coefficients/Coefficients_a_and_b_c1_China.mat')
xx_data = Age_BCCPDS_7_21_China;
yy_data = Coefficient_b_Male_1_BCCPDS_7_21_China;
[fitobject,gof] = fit(xx_data',yy_data','smooth');
XX = min(xx_data):(max(xx_data)-min(xx_data))/20:max(xx_data);
YY = fitobject(XX);
YY = YY';
HH7 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',My_Colors_9(7,:)); % Age_BCCPDS_7_21_China

xx_data = Age_CHARLS_China;
yy_data = Coefficient_b_Male_1_CHARLS_China;
[fitobject,gof] = fit(xx_data',yy_data','smooth');
XX = min(xx_data):(max(xx_data)-min(xx_data))/20:max(xx_data);
YY = fitobject(XX);
YY = YY';
HH7 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',My_Colors_9(7,:)); % Age_CHARLS_China

xx_data = Age_Chongqing_6_21_China;
yy_data = Coefficient_b_Male_1_Chongqing_6_21_China;
[fitobject,gof] = fit(xx_data',yy_data','smooth');
XX = min(xx_data):(max(xx_data)-min(xx_data))/20:max(xx_data);
YY = fitobject(XX);
YY = YY';
HH7 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',My_Colors_9(7,:)); % Age_Chongqing_6_21_China

xx_data = Age_Jilin_China;
yy_data = Coefficient_b_Male_1_Jilin_China;
[fitobject,gof] = fit(xx_data',yy_data','smooth');
XX = min(xx_data):(max(xx_data)-min(xx_data))/20:max(xx_data);
YY = fitobject(XX);
YY = YY';
HH7 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',My_Colors_9(7,:)); % Age_Jilin_China

%% 08-Japan
load('All coefficients/Coefficients_a_and_b_c1_Japan.mat')
xx_data = Age_Japanese_1_8;
yy_data = Coefficient_b_Male_1_Japanese_1_8;
[fitobject,gof] = fit(xx_data',yy_data','smooth');
XX = min(xx_data):(max(xx_data)-min(xx_data))/20:max(xx_data);
YY = fitobject(XX);
YY = YY';
HH8 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',My_Colors_9(8,:)); % Age_Japanese_1_8

%% 01-NHANES
load('All coefficients/My_percentiles_Coefficient_ab_c1_01_NHANES.mat')
load('All coefficients/Coefficient_a_and_b_c1_NHANES_ALL.mat')
% 5th percentile
xx_data = My_Age_Male;
yy_data = My_5th_Coefficient_b_Male;
[fitobject,gof] = fit(xx_data',yy_data','smooth');
XX = min(xx_data):(max(xx_data)-min(xx_data))/25:max(xx_data);
YY = fitobject(XX);
YY = YY';
% 95th percentile
x_data = My_Age_Male;
y_data = My_95th_Coefficient_b_Male;
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
xxx_data = Age_NHANES_ALL;
yyy_data = Coefficient_b_Male_1_NHANES_ALL;
[fitobject,gof] = fit(xxx_data',yyy_data','smooth');
XX = min(xxx_data):(max(xxx_data)-min(xxx_data))/25:max(xxx_data);
YY = fitobject(XX);
YY = YY';
HH1 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',My_Colors_9(1,:)); % NHANES_ALL

%% 02-ENSAUNT
load('All coefficients/My_percentiles_Coefficient_ab_c1_02_ENSAUNT.mat')
load('All coefficients/Coefficients_a_and_b_c1_ENSAUT_ALL.mat')
% 5th percentile
xx_data = My_Age_Male;
yy_data = My_5th_Coefficient_b_Male;
[fitobject,gof] = fit(xx_data',yy_data','smooth');
XX = min(xx_data):(max(xx_data)-min(xx_data))/25:max(xx_data);
YY = fitobject(XX);
YY = YY';
% 95th percentile
x_data = My_Age_Male;
y_data = My_95th_Coefficient_b_Male;
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
xxx_data = Age_ENSANUT_ALL;
yyy_data = Coefficient_b_Male_1_ENSANUT_ALL;
[fitobject,gof] = fit(xxx_data',yyy_data','smooth');
XX = min(xxx_data):(max(xxx_data)-min(xxx_data))/25:max(xxx_data);
YY = fitobject(XX);
YY = YY';
HH2 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',My_Colors_9(2,:)); % ENSANUT_ALL

%% 03-KNHANES
load('All coefficients/My_percentiles_Coefficient_ab_c1_03_KNHANES.mat')
load('All coefficients/Coefficients_a_and_b_c1_KNHANES.mat')
% 5th percentile
xx_data = My_Age_Male;
yy_data = My_5th_Coefficient_b_Male;
[fitobject,gof] = fit(xx_data',yy_data','smooth');
XX = min(xx_data):(max(xx_data)-min(xx_data))/25:max(xx_data);
YY = fitobject(XX);
YY = YY';
% 95th percentile
x_data = My_Age_Male;
y_data = My_95th_Coefficient_b_Male;
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
xxx_data = Age_KNHANES_ALL;
yyy_data = Coefficient_b_Male_1_KNHANES_ALL;
[fitobject,gof] = fit(xxx_data',yyy_data','smooth');
XX = min(xxx_data):(max(xxx_data)-min(xxx_data))/25:max(xxx_data);
YY = fitobject(XX);
YY = YY';
HH3 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',My_Colors_9(3,:)); % KNHANES_ALL

%% 04-SHARE
load('All coefficients/My_percentiles_Coefficient_ab_c1_04_SHARE.mat')
% 5th percentile
xx_data = My_Age_Male;
yy_data = My_5th_Coefficient_b_Male;
[fitobject,gof] = fit(xx_data',yy_data','smooth');
XX = min(xx_data):(max(xx_data)-min(xx_data))/25:max(xx_data);
YY = fitobject(XX);
YY = YY';
% 95th percentile
x_data = My_Age_Male;
y_data = My_95th_Coefficient_b_Male;
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
yyy_data = My_mean_Coefficient_b_Male;
[fitobject,gof] = fit(xxx_data',yyy_data','smooth');
XX = min(xxx_data):(max(xxx_data)-min(xxx_data))/25:max(xxx_data);
YY = fitobject(XX);
YY = YY';
HH4 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',My_Colors_9(4,:)); % Mean

subplot(2,3,6)
hold on;
xlim([0 1]);
ylim([0 1]);

HH1 = plot([0 0],[-1 -1],'LineWidth',My_LineWidth,'Color',My_Colors_9(1,:)); % Mean
HH2 = plot([0 0],[-1 -1],'LineWidth',My_LineWidth,'Color',My_Colors_9(2,:)); % Mean
HH3 = plot([0 0],[-1 -1],'LineWidth',My_LineWidth,'Color',My_Colors_9(3,:)); % Mean
HH4 = plot([0 0],[-1 -1],'LineWidth',My_LineWidth,'Color',My_Colors_9(4,:)); % Mean
HH5 = plot([0 0],[-1 -1],'LineWidth',My_LineWidth,'Color',My_Colors_9(5,:)); % Mean
HH6 = plot([0 0],[-1 -1],'LineWidth',My_LineWidth,'Color',My_Colors_9(6,:)); % Mean
HH7 = plot([0 0],[-1 -1],'LineWidth',My_LineWidth,'Color',My_Colors_9(7,:)); % Mean
HH8 = plot([0 0],[-1 -1],'LineWidth',My_LineWidth,'Color',My_Colors_9(8,:)); % Mean
HH9 = plot([0 0],[-1 -1],'LineWidth',My_LineWidth,'Color',My_Colors_9(9,:)); % Mean

ax = gca;
ax.YAxis.Visible = 'off';
ax.XAxis.Visible = 'off';
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
