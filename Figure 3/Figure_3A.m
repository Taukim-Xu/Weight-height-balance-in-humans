%% Source codes for Figure 3(A)
% Reveal the changing trends of the minimum weight and maximum height 
% requirements across different continents with respect to age.
% 
%
%% Parameter information for drawing
My_mark_type = '.';
My_LineWidth = 2;
My_LineWidth_1 = 1;
My_FontName = 'Times New Roman';
My_fontSize = 12;
My_Alpha = 1; % transparency of the filled area
My_MarkerSize = 2;
Edgealpha = 0;
Alpha = 0.2;
My_Percentile = [5 50 95]; % quantile distribution
Band_Width = 1;
%% Colors
load('My_Colors.mat')
%% We show the results
FF = figure;
subplot(2,3,1)
hold on;
title('Female')
%xlabel('Age (yr)');
ylabel('Lower limit for weight (Kg)');
ylim([0 20]);
xlim([0 91]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

subplot(2,3,2)
hold on;
title('Male')
%xlabel('Age (yr)');
%ylabel('Lower limit for weight (Kg)');
ylim([0 20]);
xlim([0 91]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

subplot(2,3,4)
hold on;
%title('Female')
xlabel('Age (yr)');
ylabel('Upper limit for height (m)');
ylim([1 2.2]);
xlim([0 91]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

subplot(2,3,5)
hold on;
%title('Female')
xlabel('Age (yr)');
%ylabel('Upper limit for height (m)');
ylim([1 2.2]);
xlim([0 91]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)
%
%% 05-KSPF
load('All coefficients\05-KSPF\Coefficients_a_and_b_c1_KSPF.mat')
subplot(2,3,1)
hold on;
% Coefficient_a
xxx_data = Age_KSPF_Korea;
yyy_data = Coefficient_a_Female_1_KSPF_Korea;
[fitobject,gof] = fit(xxx_data',yyy_data','smooth');
X = min(xxx_data):(max(xxx_data)-min(xxx_data))/25:max(xxx_data);
Y = fitobject(X);
Y = Y';
HH5 = plot(X,Y,'LineWidth',My_LineWidth,'Color',My_Colors_9(5,:)); % Coefficient_a_Female_1_KSPF_Korea

subplot(2,3,2)
hold on;
% Coefficient_a
xxx_data = Age_KSPF_Korea;
yyy_data = Coefficient_a_Male_1_KSPF_Korea;
[fitobject,gof] = fit(xxx_data',yyy_data','smooth');
X = min(xxx_data):(max(xxx_data)-min(xxx_data))/25:max(xxx_data);
Y = fitobject(X);
Y = Y';
HH5 = plot(X,Y,'LineWidth',My_LineWidth,'Color',My_Colors_9(5,:)); % Coefficient_a_Male_1_KSPF_Korea

subplot(2,3,4)
hold on;
% Coefficient_b
xxx_data = Age_KSPF_Korea;
yyy_data = 1./Coefficient_b_Female_1_KSPF_Korea;
[fitobject,gof] = fit(xxx_data',yyy_data','smooth');
X = min(xxx_data):(max(xxx_data)-min(xxx_data))/25:max(xxx_data);
Y = fitobject(X);
Y = Y';
HH5 = plot(X,Y,'LineWidth',My_LineWidth,'Color',My_Colors_9(5,:)); % Coefficient_b_Female_1_KSPF_Korea

subplot(2,3,5)
hold on;
% Coefficient_b
xxx_data = Age_KSPF_Korea;
yyy_data = 1./Coefficient_b_Male_1_KSPF_Korea;
[fitobject,gof] = fit(xxx_data',yyy_data','smooth');
X = min(xxx_data):(max(xxx_data)-min(xxx_data))/25:max(xxx_data);
Y = fitobject(X);
Y = Y';
HH5 = plot(X,Y,'LineWidth',My_LineWidth,'Color',My_Colors_9(5,:)); % Coefficient_b_Male_1_KSPF_Korea

%% 06-ELSH-Brasil
load('All coefficients\06-ELSH-Brasil\Coefficients_a_and_b_c1_ELSA_Brasil.mat')
subplot(2,3,1)
hold on;
% Coefficient_a
xxx_data = Age_ELSA_Brasil;
yyy_data = Coefficient_a_Female_1_ELSA_Brasil;
[fitobject,gof] = fit(xxx_data',yyy_data','smooth');
X = min(xxx_data):(max(xxx_data)-min(xxx_data))/25:max(xxx_data);
Y = fitobject(X);
Y = Y';
HH6 = plot(X,Y,'LineWidth',My_LineWidth,'Color',My_Colors_9(6,:)); % Coefficient_a_Female_1_ELSA_Brasil

subplot(2,3,2)
hold on;
% Coefficient_a
xxx_data = Age_ELSA_Brasil;
yyy_data = Coefficient_a_Male_1_ELSA_Brasil;
[fitobject,gof] = fit(xxx_data',yyy_data','smooth');
X = min(xxx_data):(max(xxx_data)-min(xxx_data))/25:max(xxx_data);
Y = fitobject(X);
Y = Y';
HH6 = plot(X,Y,'LineWidth',My_LineWidth,'Color',My_Colors_9(6,:)); % Coefficient_a_Male_1_ELSA_Brasil

subplot(2,3,4)
hold on;
% Coefficient_b
xxx_data = Age_ELSA_Brasil;
yyy_data = 1./Coefficient_b_Female_1_ELSA_Brasil;
[fitobject,gof] = fit(xxx_data',yyy_data','smooth');
X = min(xxx_data):(max(xxx_data)-min(xxx_data))/25:max(xxx_data);
Y = fitobject(X);
Y = Y';
HH6 = plot(X,Y,'LineWidth',My_LineWidth,'Color',My_Colors_9(6,:)); % Coefficient_b_Female_1_ELSA_Brasil

subplot(2,3,5)
hold on;
% Coefficient_b
xxx_data = Age_ELSA_Brasil;
yyy_data = 1./Coefficient_b_Male_1_ELSA_Brasil;
[fitobject,gof] = fit(xxx_data',yyy_data','smooth');
X = min(xxx_data):(max(xxx_data)-min(xxx_data))/25:max(xxx_data);
Y = fitobject(X);
Y = Y';
HH6 = plot(X,Y,'LineWidth',My_LineWidth,'Color',My_Colors_9(6,:)); % Coefficient_b_Male_1_ELSA_Brasil

%% 07-China
load('All coefficients\07-China\Coefficients_a_and_b_c1_China.mat')
subplot(2,3,1)
hold on;
% Coefficient_a
xxx_data = Age_BCCPDS_7_21_China;
yyy_data = Coefficient_a_Female_1_BCCPDS_7_21_China;
[fitobject,gof] = fit(xxx_data',yyy_data','smooth');
X = min(xxx_data):(max(xxx_data)-min(xxx_data))/25:max(xxx_data);
Y = fitobject(X);
Y = Y';
HH7 = plot(X,Y,'LineWidth',My_LineWidth,'Color',My_Colors_9(7,:)); % Coefficient_a_Female_1_BCCPDS_7_21_China

xxx_data = Age_CHARLS_China;
yyy_data = Coefficient_a_Female_1_CHARLS_China;
[fitobject,gof] = fit(xxx_data',yyy_data','smooth');
X = min(xxx_data):(max(xxx_data)-min(xxx_data))/25:max(xxx_data);
Y = fitobject(X);
Y = Y';
HH7 = plot(X,Y,'LineWidth',My_LineWidth,'Color',My_Colors_9(7,:)); % Coefficient_a_Female_1_CHARLS_China

xxx_data = Age_Chongqing_6_21_China;
yyy_data = Coefficient_a_Female_1_Chongqing_6_21_China;
[fitobject,gof] = fit(xxx_data',yyy_data','smooth');
X = min(xxx_data):(max(xxx_data)-min(xxx_data))/25:max(xxx_data);
Y = fitobject(X);
Y = Y';
HH7 = plot(X,Y,'LineWidth',My_LineWidth,'Color',My_Colors_9(7,:)); % Coefficient_a_Female_1_Chongqing_6_21_China

xxx_data = Age_Jilin_China;
yyy_data = Coefficient_a_Female_1_Jilin_China;
[fitobject,gof] = fit(xxx_data',yyy_data','smooth');
X = min(xxx_data):(max(xxx_data)-min(xxx_data))/25:max(xxx_data);
Y = fitobject(X);
Y = Y';
HH7 = plot(X,Y,'LineWidth',My_LineWidth,'Color',My_Colors_9(7,:)); % Coefficient_a_Female_1_Jilin_China

subplot(2,3,2)
hold on;
% Coefficient_a
xxx_data = Age_BCCPDS_7_21_China;
yyy_data = Coefficient_a_Male_1_BCCPDS_7_21_China;
[fitobject,gof] = fit(xxx_data',yyy_data','smooth');
X = min(xxx_data):(max(xxx_data)-min(xxx_data))/25:max(xxx_data);
Y = fitobject(X);
Y = Y';
HH7 = plot(X,Y,'LineWidth',My_LineWidth,'Color',My_Colors_9(7,:)); % Coefficient_a_Male_1_BCCPDS_7_21_China

xxx_data = Age_CHARLS_China;
yyy_data = Coefficient_a_Male_1_CHARLS_China;
[fitobject,gof] = fit(xxx_data',yyy_data','smooth');
X = min(xxx_data):(max(xxx_data)-min(xxx_data))/25:max(xxx_data);
Y = fitobject(X);
Y = Y';
HH7 = plot(X,Y,'LineWidth',My_LineWidth,'Color',My_Colors_9(7,:)); % Coefficient_a_Male_1_CHARLS_China

xxx_data = Age_Chongqing_6_21_China;
yyy_data = Coefficient_a_Male_1_Chongqing_6_21_China;
[fitobject,gof] = fit(xxx_data',yyy_data','smooth');
X = min(xxx_data):(max(xxx_data)-min(xxx_data))/25:max(xxx_data);
Y = fitobject(X);
Y = Y';
HH7 = plot(X,Y,'LineWidth',My_LineWidth,'Color',My_Colors_9(7,:)); % Coefficient_a_Male_1_Chongqing_6_21_China

xxx_data = Age_Jilin_China;
yyy_data = Coefficient_a_Male_1_Jilin_China;
[fitobject,gof] = fit(xxx_data',yyy_data','smooth');
X = min(xxx_data):(max(xxx_data)-min(xxx_data))/25:max(xxx_data);
Y = fitobject(X);
Y = Y';
HH7 = plot(X,Y,'LineWidth',My_LineWidth,'Color',My_Colors_9(7,:)); % Coefficient_a_Male_1_Jilin_China

subplot(2,3,4)
hold on;
% Coefficient_b
xxx_data = Age_BCCPDS_7_21_China;
yyy_data = 1./Coefficient_b_Female_1_BCCPDS_7_21_China;
[fitobject,gof] = fit(xxx_data',yyy_data','smooth');
X = min(xxx_data):(max(xxx_data)-min(xxx_data))/25:max(xxx_data);
Y = fitobject(X);
Y = Y';
HH7 = plot(X,Y,'LineWidth',My_LineWidth,'Color',My_Colors_9(7,:)); % Coefficient_b_Female_1_BCCPDS_7_21_China

xxx_data = Age_CHARLS_China;
yyy_data = 1./Coefficient_b_Female_1_CHARLS_China;
[fitobject,gof] = fit(xxx_data',yyy_data','smooth');
X = min(xxx_data):(max(xxx_data)-min(xxx_data))/25:max(xxx_data);
Y = fitobject(X);
Y = Y';
HH7 = plot(X,Y,'LineWidth',My_LineWidth,'Color',My_Colors_9(7,:)); % Coefficient_b_Female_1_CHARLS_China

xxx_data = Age_Chongqing_6_21_China;
yyy_data = 1./Coefficient_b_Female_1_Chongqing_6_21_China;
[fitobject,gof] = fit(xxx_data',yyy_data','smooth');
X = min(xxx_data):(max(xxx_data)-min(xxx_data))/25:max(xxx_data);
Y = fitobject(X);
Y = Y';
HH7 = plot(X,Y,'LineWidth',My_LineWidth,'Color',My_Colors_9(7,:)); % Coefficient_b_Female_1_Chongqing_6_21_China

xxx_data = Age_Jilin_China;
yyy_data = 1./Coefficient_b_Female_1_Jilin_China;
[fitobject,gof] = fit(xxx_data',yyy_data','smooth');
X = min(xxx_data):(max(xxx_data)-min(xxx_data))/25:max(xxx_data);
Y = fitobject(X);
Y = Y';
HH7 = plot(X,Y,'LineWidth',My_LineWidth,'Color',My_Colors_9(7,:)); % Coefficient_b_Female_1_Jilin_China

subplot(2,3,5)
hold on;
% Coefficient_b
xxx_data = Age_BCCPDS_7_21_China;
yyy_data = 1./Coefficient_b_Male_1_BCCPDS_7_21_China;
[fitobject,gof] = fit(xxx_data',yyy_data','smooth');
X = min(xxx_data):(max(xxx_data)-min(xxx_data))/25:max(xxx_data);
Y = fitobject(X);
Y = Y';
HH7 = plot(X,Y,'LineWidth',My_LineWidth,'Color',My_Colors_9(7,:)); % Coefficient_b_Male_1_BCCPDS_7_21_China

xxx_data = Age_CHARLS_China;
yyy_data = 1./Coefficient_b_Male_1_CHARLS_China;
[fitobject,gof] = fit(xxx_data',yyy_data','smooth');
X = min(xxx_data):(max(xxx_data)-min(xxx_data))/25:max(xxx_data);
Y = fitobject(X);
Y = Y';
HH7 = plot(X,Y,'LineWidth',My_LineWidth,'Color',My_Colors_9(7,:)); % Coefficient_b_Male_1_CHARLS_China

xxx_data = Age_Chongqing_6_21_China;
yyy_data = 1./Coefficient_b_Male_1_Chongqing_6_21_China;
[fitobject,gof] = fit(xxx_data',yyy_data','smooth');
X = min(xxx_data):(max(xxx_data)-min(xxx_data))/25:max(xxx_data);
Y = fitobject(X);
Y = Y';
HH7 = plot(X,Y,'LineWidth',My_LineWidth,'Color',My_Colors_9(7,:)); % Coefficient_b_Male_1_Chongqing_6_21_China

xxx_data = Age_Jilin_China;
yyy_data = 1./Coefficient_b_Male_1_Jilin_China;
[fitobject,gof] = fit(xxx_data',yyy_data','smooth');
X = min(xxx_data):(max(xxx_data)-min(xxx_data))/25:max(xxx_data);
Y = fitobject(X);
Y = Y';
HH7 = plot(X,Y,'LineWidth',My_LineWidth,'Color',My_Colors_9(7,:)); % Coefficient_b_Male_1_Jilin_China

%% 08-Japan
load('All coefficients\08-Japan\Coefficients_a_and_b_c1_Japan.mat')
subplot(2,3,1)
hold on;
% Coefficient_a
xxx_data = Age_Japanese_1_8;
yyy_data = Coefficient_a_Female_1_Japanese_1_8;
[fitobject,gof] = fit(xxx_data',yyy_data','smooth');
X = min(xxx_data):(max(xxx_data)-min(xxx_data))/25:max(xxx_data);
Y = fitobject(X);
Y = Y';
HH8 = plot(X,Y,'LineWidth',My_LineWidth,'Color',My_Colors_9(8,:)); % Coefficient_a_Female_1_Japanese_1_8

subplot(2,3,2)
hold on;
% Coefficient_a
xxx_data = Age_Japanese_1_8;
yyy_data = Coefficient_a_Male_1_Japanese_1_8;
[fitobject,gof] = fit(xxx_data',yyy_data','smooth');
X = min(xxx_data):(max(xxx_data)-min(xxx_data))/25:max(xxx_data);
Y = fitobject(X);
Y = Y';
HH8 = plot(X,Y,'LineWidth',My_LineWidth,'Color',My_Colors_9(8,:)); % Coefficient_a_Male_1_Japanese_1_8

subplot(2,3,4)
hold on;
% Coefficient_b
xxx_data = Age_Japanese_1_8;
yyy_data = 1./Coefficient_b_Female_1_Japanese_1_8;
[fitobject,gof] = fit(xxx_data',yyy_data','smooth');
X = min(xxx_data):(max(xxx_data)-min(xxx_data))/25:max(xxx_data);
Y = fitobject(X);
Y = Y';
HH8 = plot(X,Y,'LineWidth',My_LineWidth,'Color',My_Colors_9(8,:)); % Coefficient_b_Female_1_Japanese_1_8

subplot(2,3,5)
hold on;
% Coefficient_b
xxx_data = Age_Japanese_1_8;
yyy_data = 1./Coefficient_b_Male_1_Japanese_1_8;
[fitobject,gof] = fit(xxx_data',yyy_data','smooth');
X = min(xxx_data):(max(xxx_data)-min(xxx_data))/25:max(xxx_data);
Y = fitobject(X);
Y = Y';
HH8 = plot(X,Y,'LineWidth',My_LineWidth,'Color',My_Colors_9(8,:)); % Coefficient_b_Male_1_Japanese_1_8

%% 09-Bangladesh
load('All coefficients\09-Bangladesh\Coefficients_a_and_b_c1_Bangladesh.mat')
subplot(2,3,1)
hold on;
% Coefficient_a
xxx_data = Age_Bangladesh_2011_14;
yyy_data = Coefficient_a_Female_1_Bangladesh_2011_14;
[fitobject,gof] = fit(xxx_data',yyy_data','smooth');
X = min(xxx_data):(max(xxx_data)-min(xxx_data))/25:max(xxx_data);
Y = fitobject(X);
Y = Y';
HH9 = plot(X,Y,'LineWidth',My_LineWidth,'Color',My_Colors_9(9,:)); % Coefficient_a_Female_1_Bangladesh_2011_14

subplot(2,3,4)
hold on;
% Coefficient_b
xxx_data = Age_Bangladesh_2011_14;
yyy_data = 1./Coefficient_b_Female_1_Bangladesh_2011_14;
[fitobject,gof] = fit(xxx_data',yyy_data','smooth');
X = min(xxx_data):(max(xxx_data)-min(xxx_data))/25:max(xxx_data);
Y = fitobject(X);
Y = Y';
HH9 = plot(X,Y,'LineWidth',My_LineWidth,'Color',My_Colors_9(9,:)); % Coefficient_b_Female_1_Bangladesh_2011_14

%% 01-NHANES
load('All coefficients\01-NHANES\Coefficient_a_and_b_c1_NHANES_ALL.mat')
subplot(2,3,1)
hold on;
% Coefficient_a
xxx_data = Age_NHANES_ALL;
yyy_data = Coefficient_a_Female_1_NHANES_ALL;
[fitobject,gof] = fit(xxx_data',yyy_data','smooth');
X = min(xxx_data):(max(xxx_data)-min(xxx_data))/25:max(xxx_data);
Y = fitobject(X);
Y = Y';
HH1 = plot(X,Y,'LineWidth',My_LineWidth,'Color',My_Colors_9(1,:)); % Coefficient_a_Female_1_NHANES_ALL

subplot(2,3,2)
hold on;
% Coefficient_a
xxx_data = Age_NHANES_ALL;
yyy_data = Coefficient_a_Male_1_NHANES_ALL;
[fitobject,gof] = fit(xxx_data',yyy_data','smooth');
X = min(xxx_data):(max(xxx_data)-min(xxx_data))/25:max(xxx_data);
Y = fitobject(X);
Y = Y';
HH1 = plot(X,Y,'LineWidth',My_LineWidth,'Color',My_Colors_9(1,:)); % Coefficient_a_Male_1_NHANES_ALL

subplot(2,3,4)
hold on;
% Coefficient_b
xxx_data = Age_NHANES_ALL;
yyy_data = 1./Coefficient_b_Female_1_NHANES_ALL;
[fitobject,gof] = fit(xxx_data',yyy_data','smooth');
X = min(xxx_data):(max(xxx_data)-min(xxx_data))/25:max(xxx_data);
Y = fitobject(X);
Y = Y';
HH1 = plot(X,Y,'LineWidth',My_LineWidth,'Color',My_Colors_9(1,:)); % Coefficient_b_Female_1_NHANES_ALL

subplot(2,3,5)
hold on;
% Coefficient_b
xxx_data = Age_NHANES_ALL;
yyy_data = 1./Coefficient_b_Male_1_NHANES_ALL;
[fitobject,gof] = fit(xxx_data',yyy_data','smooth');
X = min(xxx_data):(max(xxx_data)-min(xxx_data))/25:max(xxx_data);
Y = fitobject(X);
Y = Y';
HH1 = plot(X,Y,'LineWidth',My_LineWidth,'Color',My_Colors_9(1,:)); % Coefficient_b_Male_1_NHANES_ALL

%% 02-ENSAUNT
load('All coefficients\02-ENSAUNT\Coefficients_a_and_b_c1_ENSAUT_ALL.mat')
subplot(2,3,1)
hold on;
% Coefficient_a
xxx_data = Age_ENSANUT_ALL;
yyy_data = Coefficient_a_Female_1_ENSANUT_ALL;
[fitobject,gof] = fit(xxx_data',yyy_data','smooth');
X = min(xxx_data):(max(xxx_data)-min(xxx_data))/25:max(xxx_data);
Y = fitobject(X);
Y = Y';
HH2 = plot(X,Y,'LineWidth',My_LineWidth,'Color',My_Colors_9(2,:)); % Coefficient_a_Female_1_ENSANUT_ALL

subplot(2,3,2)
hold on;
% Coefficient_a
xxx_data = Age_ENSANUT_ALL;
yyy_data = Coefficient_a_Male_1_ENSANUT_ALL;
[fitobject,gof] = fit(xxx_data',yyy_data','smooth');
X = min(xxx_data):(max(xxx_data)-min(xxx_data))/25:max(xxx_data);
Y = fitobject(X);
Y = Y';
HH2 = plot(X,Y,'LineWidth',My_LineWidth,'Color',My_Colors_9(2,:)); % Coefficient_a_Male_1_ENSANUT_ALL

subplot(2,3,4)
hold on;
% Coefficient_b
xxx_data = Age_ENSANUT_ALL;
yyy_data = 1./Coefficient_b_Female_1_ENSANUT_ALL;
[fitobject,gof] = fit(xxx_data',yyy_data','smooth');
X = min(xxx_data):(max(xxx_data)-min(xxx_data))/25:max(xxx_data);
Y = fitobject(X);
Y = Y';
HH2 = plot(X,Y,'LineWidth',My_LineWidth,'Color',My_Colors_9(2,:)); % Coefficient_b_Female_1_ENSANUT_ALL

subplot(2,3,5)
hold on;
% Coefficient_b
xxx_data = Age_ENSANUT_ALL;
yyy_data = 1./Coefficient_b_Male_1_ENSANUT_ALL;
[fitobject,gof] = fit(xxx_data',yyy_data','smooth');
X = min(xxx_data):(max(xxx_data)-min(xxx_data))/25:max(xxx_data);
Y = fitobject(X);
Y = Y';
HH2 = plot(X,Y,'LineWidth',My_LineWidth,'Color',My_Colors_9(2,:)); % Coefficient_b_Male_1_ENSANUT_ALL

%% 03-KNHANES
load('All coefficients\03-KNHANES\Coefficients_a_and_b_c1_KNHANES.mat')
subplot(2,3,1)
hold on;
% Coefficient_a
xxx_data = Age_KNHANES_ALL;
yyy_data = Coefficient_a_Female_1_KNHANES_ALL;
[fitobject,gof] = fit(xxx_data',yyy_data','smooth');
X = min(xxx_data):(max(xxx_data)-min(xxx_data))/25:max(xxx_data);
Y = fitobject(X);
Y = Y';
HH3 = plot(X,Y,'LineWidth',My_LineWidth,'Color',My_Colors_9(3,:)); % Coefficient_a_Female_1_KNHANES_ALL

subplot(2,3,2)
hold on;
% Coefficient_a
xxx_data = Age_KNHANES_ALL;
yyy_data = Coefficient_a_Male_1_KNHANES_ALL;
[fitobject,gof] = fit(xxx_data',yyy_data','smooth');
X = min(xxx_data):(max(xxx_data)-min(xxx_data))/25:max(xxx_data);
Y = fitobject(X);
Y = Y';
HH3 = plot(X,Y,'LineWidth',My_LineWidth,'Color',My_Colors_9(3,:)); % Coefficient_a_Male_1_KNHANES_ALL

subplot(2,3,4)
hold on;
% Coefficient_b
xxx_data = Age_KNHANES_ALL;
yyy_data = 1./Coefficient_b_Female_1_KNHANES_ALL;
[fitobject,gof] = fit(xxx_data',yyy_data','smooth');
X = min(xxx_data):(max(xxx_data)-min(xxx_data))/25:max(xxx_data);
Y = fitobject(X);
Y = Y';
HH3 = plot(X,Y,'LineWidth',My_LineWidth,'Color',My_Colors_9(3,:)); % Coefficient_b_Female_1_KNHANES_ALL

subplot(2,3,5)
hold on;
% Coefficient_b
xxx_data = Age_KNHANES_ALL;
yyy_data = 1./Coefficient_b_Male_1_KNHANES_ALL;
[fitobject,gof] = fit(xxx_data',yyy_data','smooth');
X = min(xxx_data):(max(xxx_data)-min(xxx_data))/25:max(xxx_data);
Y = fitobject(X);
Y = Y';
HH3 = plot(X,Y,'LineWidth',My_LineWidth,'Color',My_Colors_9(3,:)); % Coefficient_b_Male_1_KNHANES_ALL

%% 04-SHARE
load('All coefficients/04-SHARE/My_percentiles_Lower_Upper_Limits_SHARE.mat')
% Coefficient_a
subplot(2,3,1)
hold on;
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

subplot(2,3,2)
hold on;
% Coefficient_b
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

subplot(2,3,4)
hold on;
% Coefficient_a
% 5th percentile
xx_data = My_Age_Female;
yy_data = 1./My_5th_Coefficient_b_Female;
[fitobject,gof] = fit(xx_data',yy_data','smooth');
XX = min(xx_data):(max(xx_data)-min(xx_data))/25:max(xx_data);
YY = fitobject(XX);
YY = YY';
% 95th percentile
x_data = My_Age_Female;
y_data = 1./My_95th_Coefficient_b_Female;
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
yyy_data = 1./My_mean_Coefficient_b_Female;
[fitobject,gof] = fit(xxx_data',yyy_data','smooth');
XX = min(xxx_data):(max(xxx_data)-min(xxx_data))/25:max(xxx_data);
YY = fitobject(XX);
YY = YY';
HH4 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',My_Colors_9(4,:)); % Mean

subplot(2,3,5)
hold on;
% Coefficient_b
% 5th percentile
xx_data = My_Age_Male;
yy_data = 1./My_5th_Coefficient_b_Male;
[fitobject,gof] = fit(xx_data',yy_data','smooth');
XX = min(xx_data):(max(xx_data)-min(xx_data))/25:max(xx_data);
YY = fitobject(XX);
YY = YY';
% 95th percentile
x_data = My_Age_Male;
y_data = 1./My_95th_Coefficient_b_Male;
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
yyy_data = 1./My_mean_Coefficient_b_Male;
[fitobject,gof] = fit(xxx_data',yyy_data','smooth');
XX = min(xxx_data):(max(xxx_data)-min(xxx_data))/25:max(xxx_data);
YY = fitobject(XX);
YY = YY';
HH4 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',My_Colors_9(4,:)); % Mean

subplot(2,3,3)
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
