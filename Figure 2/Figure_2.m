%% Source codes for Figure 2
% We show how the coefficients a and b vary with age
% Smooth
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
subplot(2,2,1)
hold on;
title('Female')
%xlabel('Age (yr)');
ylabel('Coefficient a')
xlim([0 91]);
ylim([0 20]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

set(gca,'XTick',[0 11 20 30 40 50 60 70 80 90]);
yyy = 0.9:0.01:1;
xxx = 11+yyy*0;
plot(xxx,yyy,'-.','linewidth',0.1,'color','k')
%{
yyy = 0.9:0.01:1;
xxx = 86+yyy*0;
plot(xxx,yyy,'-.','linewidth',0.1,'color','k')
%}

% All
load('My_percentiles_Corr_Coefficient_ab_c1_All.mat')
xx_data = My_Age_Female;
yy_data = My_5th_Coefficient_a_Female;
[fitobject,gof] = fit(xx_data',yy_data','smooth');
XX = min(xx_data):(max(xx_data)-min(xx_data))/20:max(xx_data);
YY = fitobject(XX);
YY = YY';

x_data = My_Age_Female;
y_data = My_95th_Coefficient_a_Female;
[fitobject,gof] = fit(x_data',y_data','smooth');
X = min(x_data):(max(x_data)-min(x_data))/20:max(x_data);
Y = fitobject(X);
Y = Y';

XX_Fill_1 = [XX,X(end:-1:1)]; % 5th ~ 95th
YY_Fill_1 = [YY,Y(end:-1:1)];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,My_Colors_4_1(1,:));
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);

%plot(xx_data,yy_data,'o','Color',My_Colors_4_1(1,:));
%plot(x_data,y_data,'s','Color',My_Colors_4_1(1,:));

xxx_data = My_Age_Female;
yyy_data = My_mean_Coefficient_a_Female;
%plot(xxx_data,yyy_data,'*','Color',My_Colors_4_1(1,:));
[fitobject,gof] = fit(xxx_data',yyy_data','smooth');
XXX = min(xxx_data):(max(xxx_data)-min(xxx_data))/20:max(xxx_data);
YYY = fitobject(XXX);
YYY = YYY';
HH1 = plot(XXX,YYY,'LineWidth',My_LineWidth_1,'Color',My_Colors_4_1(1,:)); % mean

% Europe
load('My_percentiles_Corr_Coefficient_ab_c1_Europe.mat')
xx_data = My_Age_Female;
yy_data = My_5th_Coefficient_a_Female;
[fitobject,gof] = fit(xx_data',yy_data','smooth');
XX = min(xx_data):(max(xx_data)-min(xx_data))/20:max(xx_data);
YY = fitobject(XX);
YY = YY';

x_data = My_Age_Female;
y_data = My_95th_Coefficient_a_Female;
[fitobject,gof] = fit(x_data',y_data','smooth');
X = min(x_data):(max(x_data)-min(x_data))/20:max(x_data);
Y = fitobject(X);
Y = Y';

XX_Fill_1 = [XX,X(end:-1:1)]; % 5th ~ 95th
YY_Fill_1 = [YY,Y(end:-1:1)];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,My_Colors_4_1(2,:));
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);

%plot(xx_data,yy_data,'o','Color',My_Colors_4_1(1,:));
%plot(x_data,y_data,'s','Color',My_Colors_4_1(1,:));

xxx_data = My_Age_Female;
yyy_data = My_mean_Coefficient_a_Female;
%plot(xxx_data,yyy_data,'*','Color',My_Colors_4_1(1,:));
[fitobject,gof] = fit(xxx_data',yyy_data','smooth');
XXX = min(xxx_data):(max(xxx_data)-min(xxx_data))/20:max(xxx_data);
YYY = fitobject(XXX);
YYY = YYY';
HH2 = plot(XXX,YYY,'LineWidth',My_LineWidth_1,'Color',My_Colors_4_1(2,:)); % mean

% America
load('My_percentiles_Corr_Coefficient_ab_c1_America.mat')
xx_data = My_Age_Female;
yy_data = My_5th_Coefficient_a_Female;
[fitobject,gof] = fit(xx_data',yy_data','smooth');
XX = min(xx_data):(max(xx_data)-min(xx_data))/20:max(xx_data);
YY = fitobject(XX);
YY = YY';

x_data = My_Age_Female;
y_data = My_95th_Coefficient_a_Female;
[fitobject,gof] = fit(x_data',y_data','smooth');
X = min(x_data):(max(x_data)-min(x_data))/20:max(x_data);
Y = fitobject(X);
Y = Y';

XX_Fill_1 = [XX,X(end:-1:1)]; % 5th ~ 95th
YY_Fill_1 = [YY,Y(end:-1:1)];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,My_Colors_4_1(3,:));
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);

%plot(xx_data,yy_data,'o','Color',My_Colors_4_1(1,:));
%plot(x_data,y_data,'s','Color',My_Colors_4_1(1,:));

xxx_data = My_Age_Female;
yyy_data = My_mean_Coefficient_a_Female;
%plot(xxx_data,yyy_data,'*','Color',My_Colors_4_1(1,:));
[fitobject,gof] = fit(xxx_data',yyy_data','smooth');
XXX = min(xxx_data):(max(xxx_data)-min(xxx_data))/20:max(xxx_data);
YYY = fitobject(XXX);
YYY = YYY';
HH3 = plot(XXX,YYY,'LineWidth',My_LineWidth_1,'Color',My_Colors_4_1(3,:)); % mean

% Asian
load('My_percentiles_Corr_Coefficient_ab_c1_Asian.mat')
xx_data = My_Age_Female;
yy_data = My_5th_Coefficient_a_Female;
[fitobject,gof] = fit(xx_data',yy_data','smooth');
XX = min(xx_data):(max(xx_data)-min(xx_data))/20:max(xx_data);
YY = fitobject(XX);
YY = YY';

x_data = My_Age_Female;
y_data = My_95th_Coefficient_a_Female;
[fitobject,gof] = fit(x_data',y_data','smooth');
X = min(x_data):(max(x_data)-min(x_data))/20:max(x_data);
Y = fitobject(X);
Y = Y';

XX_Fill_1 = [XX,X(end:-1:1)]; % 5th ~ 95th
YY_Fill_1 = [YY,Y(end:-1:1)];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,My_Colors_4_1(4,:));
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);

%plot(xx_data,yy_data,'o','Color',My_Colors_4_1(1,:));
%plot(x_data,y_data,'s','Color',My_Colors_4_1(1,:));

xxx_data = My_Age_Female;
yyy_data = My_mean_Coefficient_a_Female;
%plot(xxx_data,yyy_data,'*','Color',My_Colors_4_1(1,:));
[fitobject,gof] = fit(xxx_data',yyy_data','smooth');
XXX = min(xxx_data):(max(xxx_data)-min(xxx_data))/20:max(xxx_data);
YYY = fitobject(XXX);
YYY = YYY';
HH4 = plot(XXX,YYY,'LineWidth',My_LineWidth_1,'Color',My_Colors_4_1(4,:)); % mean

Legend = legend([HH1 HH2 HH3 HH4],...
    'All',...
    'Europe',...
    'America',...
    'Asian');
set(Legend,'Box','off','location','NorthWest')

subplot(2,2,3)
hold on;
%title('Male')
xlabel('Age (yr)');
ylabel('Coefficient b')
xlim([0 91]);
ylim([0.4 1]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

set(gca,'XTick',[0 11 20 30 40 50 60 70 80 90]);


% All
load('My_percentiles_Corr_Coefficient_ab_c1_All.mat')
xx_data = My_Age_Female;
yy_data = My_5th_Coefficient_b_Female;
[fitobject,gof] = fit(xx_data',yy_data','smooth');
XX = min(xx_data):(max(xx_data)-min(xx_data))/20:max(xx_data);
YY = fitobject(XX);
YY = YY';

x_data = My_Age_Female;
y_data = My_95th_Coefficient_b_Female;
[fitobject,gof] = fit(x_data',y_data','smooth');
X = min(x_data):(max(x_data)-min(x_data))/20:max(x_data);
Y = fitobject(X);
Y = Y';

XX_Fill_1 = [XX,X(end:-1:1)]; % 5th ~ 95th
YY_Fill_1 = [YY,Y(end:-1:1)];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,My_Colors_4_1(1,:));
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);

%plot(xx_data,yy_data,'o','Color',My_Colors_4_1(1,:));
%plot(x_data,y_data,'s','Color',My_Colors_4_1(1,:));

xxx_data = My_Age_Female;
yyy_data = My_mean_Coefficient_b_Female;
%plot(xxx_data,yyy_data,'*','Color',My_Colors_4_1(1,:));
[fitobject,gof] = fit(xxx_data',yyy_data','smooth');
XXX = min(xxx_data):(max(xxx_data)-min(xxx_data))/20:max(xxx_data);
YYY = fitobject(XXX);
YYY = YYY';
HH1 = plot(XXX,YYY,'LineWidth',My_LineWidth_1,'Color',My_Colors_4_1(1,:)); % mean

% Europe
load('My_percentiles_Corr_Coefficient_ab_c1_Europe.mat')
xx_data = My_Age_Female;
yy_data = My_5th_Coefficient_b_Female;
[fitobject,gof] = fit(xx_data',yy_data','smooth');
XX = min(xx_data):(max(xx_data)-min(xx_data))/20:max(xx_data);
YY = fitobject(XX);
YY = YY';

x_data = My_Age_Female;
y_data = My_95th_Coefficient_b_Female;
[fitobject,gof] = fit(x_data',y_data','smooth');
X = min(x_data):(max(x_data)-min(x_data))/20:max(x_data);
Y = fitobject(X);
Y = Y';

XX_Fill_1 = [XX,X(end:-1:1)]; % 5th ~ 95th
YY_Fill_1 = [YY,Y(end:-1:1)];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,My_Colors_4_1(2,:));
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);

%plot(xx_data,yy_data,'o','Color',My_Colors_4_1(1,:));
%plot(x_data,y_data,'s','Color',My_Colors_4_1(1,:));

xxx_data = My_Age_Female;
yyy_data = My_mean_Coefficient_b_Female;
%plot(xxx_data,yyy_data,'*','Color',My_Colors_4_1(1,:));
[fitobject,gof] = fit(xxx_data',yyy_data','smooth');
XXX = min(xxx_data):(max(xxx_data)-min(xxx_data))/20:max(xxx_data);
YYY = fitobject(XXX);
YYY = YYY';
HH2 = plot(XXX,YYY,'LineWidth',My_LineWidth_1,'Color',My_Colors_4_1(2,:)); % mean

% America
load('My_percentiles_Corr_Coefficient_ab_c1_America.mat')
xx_data = My_Age_Female;
yy_data = My_5th_Coefficient_b_Female;
[fitobject,gof] = fit(xx_data',yy_data','smooth');
XX = min(xx_data):(max(xx_data)-min(xx_data))/20:max(xx_data);
YY = fitobject(XX);
YY = YY';

x_data = My_Age_Female;
y_data = My_95th_Coefficient_b_Female;
[fitobject,gof] = fit(x_data',y_data','smooth');
X = min(x_data):(max(x_data)-min(x_data))/20:max(x_data);
Y = fitobject(X);
Y = Y';

XX_Fill_1 = [XX,X(end:-1:1)]; % 5th ~ 95th
YY_Fill_1 = [YY,Y(end:-1:1)];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,My_Colors_4_1(3,:));
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);

%plot(xx_data,yy_data,'o','Color',My_Colors_4_1(1,:));
%plot(x_data,y_data,'s','Color',My_Colors_4_1(1,:));

xxx_data = My_Age_Female;
yyy_data = My_mean_Coefficient_b_Female;
%plot(xxx_data,yyy_data,'*','Color',My_Colors_4_1(1,:));
[fitobject,gof] = fit(xxx_data',yyy_data','smooth');
XXX = min(xxx_data):(max(xxx_data)-min(xxx_data))/20:max(xxx_data);
YYY = fitobject(XXX);
YYY = YYY';
HH3 = plot(XXX,YYY,'LineWidth',My_LineWidth_1,'Color',My_Colors_4_1(3,:)); % mean

% Asian
load('My_percentiles_Corr_Coefficient_ab_c1_Asian.mat')
xx_data = My_Age_Female;
yy_data = My_5th_Coefficient_b_Female;
[fitobject,gof] = fit(xx_data',yy_data','smooth');
XX = min(xx_data):(max(xx_data)-min(xx_data))/20:max(xx_data);
YY = fitobject(XX);
YY = YY';

x_data = My_Age_Female;
y_data = My_95th_Coefficient_b_Female;
[fitobject,gof] = fit(x_data',y_data','smooth');
X = min(x_data):(max(x_data)-min(x_data))/20:max(x_data);
Y = fitobject(X);
Y = Y';

XX_Fill_1 = [XX,X(end:-1:1)]; % 5th ~ 95th
YY_Fill_1 = [YY,Y(end:-1:1)];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,My_Colors_4_1(4,:));
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);

%plot(xx_data,yy_data,'o','Color',My_Colors_4_1(1,:));
%plot(x_data,y_data,'s','Color',My_Colors_4_1(1,:));

xxx_data = My_Age_Female;
yyy_data = My_mean_Coefficient_b_Female;
%plot(xxx_data,yyy_data,'*','Color',My_Colors_4_1(1,:));
[fitobject,gof] = fit(xxx_data',yyy_data','smooth');
XXX = min(xxx_data):(max(xxx_data)-min(xxx_data))/20:max(xxx_data);
YYY = fitobject(XXX);
YYY = YYY';
HH4 = plot(XXX,YYY,'LineWidth',My_LineWidth_1,'Color',My_Colors_4_1(4,:)); % mean

Legend = legend([HH1 HH2 HH3 HH4],...
    'All',...
    'Europe',...
    'America',...
    'Asian');
set(Legend,'Box','off','location','NorthEast')

subplot(2,2,2)
hold on;
title('Male')
%xlabel('Age (yr)');
%ylabel('Coefficient a')
xlim([0 91]);
ylim([0 20]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

set(gca,'XTick',[0 11 20 30 40 50 60 70 80 90]);


% All
load('My_percentiles_Corr_Coefficient_ab_c1_All.mat')
xx_data = My_Age_Male;
yy_data = My_5th_Coefficient_a_Male;
[fitobject,gof] = fit(xx_data',yy_data','smooth');
XX = min(xx_data):(max(xx_data)-min(xx_data))/20:max(xx_data);
YY = fitobject(XX);
YY = YY';

x_data = My_Age_Male;
y_data = My_95th_Coefficient_a_Male;
[fitobject,gof] = fit(x_data',y_data','smooth');
X = min(x_data):(max(x_data)-min(x_data))/20:max(x_data);
Y = fitobject(X);
Y = Y';

XX_Fill_1 = [XX,X(end:-1:1)]; % 5th ~ 95th
YY_Fill_1 = [YY,Y(end:-1:1)];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,My_Colors_4_1(1,:));
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);

%plot(xx_data,yy_data,'o','Color',My_Colors_4_1(1,:));
%plot(x_data,y_data,'s','Color',My_Colors_4_1(1,:));

xxx_data = My_Age_Male;
yyy_data = My_mean_Coefficient_a_Male;
%plot(xxx_data,yyy_data,'*','Color',My_Colors_4_1(1,:));
[fitobject,gof] = fit(xxx_data',yyy_data','smooth');
XXX = min(xxx_data):(max(xxx_data)-min(xxx_data))/20:max(xxx_data);
YYY = fitobject(XXX);
YYY = YYY';
HH1 = plot(XXX,YYY,'LineWidth',My_LineWidth_1,'Color',My_Colors_4_1(1,:)); % mean

% Europe
load('My_percentiles_Corr_Coefficient_ab_c1_Europe.mat')
xx_data = My_Age_Male;
yy_data = My_5th_Coefficient_a_Male;
[fitobject,gof] = fit(xx_data',yy_data','smooth');
XX = min(xx_data):(max(xx_data)-min(xx_data))/20:max(xx_data);
YY = fitobject(XX);
YY = YY';

x_data = My_Age_Male;
y_data = My_95th_Coefficient_a_Male;
[fitobject,gof] = fit(x_data',y_data','smooth');
X = min(x_data):(max(x_data)-min(x_data))/20:max(x_data);
Y = fitobject(X);
Y = Y';

XX_Fill_1 = [XX,X(end:-1:1)]; % 5th ~ 95th
YY_Fill_1 = [YY,Y(end:-1:1)];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,My_Colors_4_1(2,:));
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);

%plot(xx_data,yy_data,'o','Color',My_Colors_4_1(1,:));
%plot(x_data,y_data,'s','Color',My_Colors_4_1(1,:));

xxx_data = My_Age_Male;
yyy_data = My_mean_Coefficient_a_Male;
%plot(xxx_data,yyy_data,'*','Color',My_Colors_4_1(1,:));
[fitobject,gof] = fit(xxx_data',yyy_data','smooth');
XXX = min(xxx_data):(max(xxx_data)-min(xxx_data))/20:max(xxx_data);
YYY = fitobject(XXX);
YYY = YYY';
HH2 = plot(XXX,YYY,'LineWidth',My_LineWidth_1,'Color',My_Colors_4_1(2,:)); % mean

% America
load('My_percentiles_Corr_Coefficient_ab_c1_America.mat')
xx_data = My_Age_Male;
yy_data = My_5th_Coefficient_a_Male;
[fitobject,gof] = fit(xx_data',yy_data','smooth');
XX = min(xx_data):(max(xx_data)-min(xx_data))/20:max(xx_data);
YY = fitobject(XX);
YY = YY';

x_data = My_Age_Male;
y_data = My_95th_Coefficient_a_Male;
[fitobject,gof] = fit(x_data',y_data','smooth');
X = min(x_data):(max(x_data)-min(x_data))/20:max(x_data);
Y = fitobject(X);
Y = Y';

XX_Fill_1 = [XX,X(end:-1:1)]; % 5th ~ 95th
YY_Fill_1 = [YY,Y(end:-1:1)];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,My_Colors_4_1(3,:));
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);

%plot(xx_data,yy_data,'o','Color',My_Colors_4_1(1,:));
%plot(x_data,y_data,'s','Color',My_Colors_4_1(1,:));

xxx_data = My_Age_Male;
yyy_data = My_mean_Coefficient_a_Male;
%plot(xxx_data,yyy_data,'*','Color',My_Colors_4_1(1,:));
[fitobject,gof] = fit(xxx_data',yyy_data','smooth');
XXX = min(xxx_data):(max(xxx_data)-min(xxx_data))/20:max(xxx_data);
YYY = fitobject(XXX);
YYY = YYY';
HH3 = plot(XXX,YYY,'LineWidth',My_LineWidth_1,'Color',My_Colors_4_1(3,:)); % mean

% Asian
load('My_percentiles_Corr_Coefficient_ab_c1_Asian.mat')
xx_data = My_Age_Male;
yy_data = My_5th_Coefficient_a_Male;
[fitobject,gof] = fit(xx_data',yy_data','smooth');
XX = min(xx_data):(max(xx_data)-min(xx_data))/20:max(xx_data);
YY = fitobject(XX);
YY = YY';

x_data = My_Age_Male;
y_data = My_95th_Coefficient_a_Male;
[fitobject,gof] = fit(x_data',y_data','smooth');
X = min(x_data):(max(x_data)-min(x_data))/20:max(x_data);
Y = fitobject(X);
Y = Y';

XX_Fill_1 = [XX,X(end:-1:1)]; % 5th ~ 95th
YY_Fill_1 = [YY,Y(end:-1:1)];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,My_Colors_4_1(4,:));
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);

%plot(xx_data,yy_data,'o','Color',My_Colors_4_1(1,:));
%plot(x_data,y_data,'s','Color',My_Colors_4_1(1,:));

xxx_data = My_Age_Male;
yyy_data = My_mean_Coefficient_a_Male;
%plot(xxx_data,yyy_data,'*','Color',My_Colors_4_1(1,:));
[fitobject,gof] = fit(xxx_data',yyy_data','smooth');
XXX = min(xxx_data):(max(xxx_data)-min(xxx_data))/20:max(xxx_data);
YYY = fitobject(XXX);
YYY = YYY';
HH4 = plot(XXX,YYY,'LineWidth',My_LineWidth_1,'Color',My_Colors_4_1(4,:)); % mean

Legend = legend([HH1 HH2 HH3 HH4],...
    'All',...
    'Europe',...
    'America',...
    'Asian');
set(Legend,'Box','off','location','NorthWest')

subplot(2,2,4)
hold on;
%title('Male')
xlabel('Age (yr)');
%ylabel('Coefficient b')
xlim([0 91]);
ylim([0.4 1]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

set(gca,'XTick',[0 11 20 30 40 50 60 70 80 90]);

% All
load('My_percentiles_Corr_Coefficient_ab_c1_All.mat')
xx_data = My_Age_Male;
yy_data = My_5th_Coefficient_b_Male;
[fitobject,gof] = fit(xx_data',yy_data','smooth');
XX = min(xx_data):(max(xx_data)-min(xx_data))/20:max(xx_data);
YY = fitobject(XX);
YY = YY';

x_data = My_Age_Male;
y_data = My_95th_Coefficient_b_Male;
[fitobject,gof] = fit(x_data',y_data','smooth');
X = min(x_data):(max(x_data)-min(x_data))/20:max(x_data);
Y = fitobject(X);
Y = Y';

XX_Fill_1 = [XX,X(end:-1:1)]; % 5th ~ 95th
YY_Fill_1 = [YY,Y(end:-1:1)];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,My_Colors_4_1(1,:));
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);

%plot(xx_data,yy_data,'o','Color',My_Colors_4_1(1,:));
%plot(x_data,y_data,'s','Color',My_Colors_4_1(1,:));

xxx_data = My_Age_Male;
yyy_data = My_mean_Coefficient_b_Male;
%plot(xxx_data,yyy_data,'*','Color',My_Colors_4_1(1,:));
[fitobject,gof] = fit(xxx_data',yyy_data','smooth');
XXX = min(xxx_data):(max(xxx_data)-min(xxx_data))/20:max(xxx_data);
YYY = fitobject(XXX);
YYY = YYY';
HH1 = plot(XXX,YYY,'LineWidth',My_LineWidth_1,'Color',My_Colors_4_1(1,:)); % mean

% Europe
load('My_percentiles_Corr_Coefficient_ab_c1_Europe.mat')
xx_data = My_Age_Male;
yy_data = My_5th_Coefficient_b_Male;
[fitobject,gof] = fit(xx_data',yy_data','smooth');
XX = min(xx_data):(max(xx_data)-min(xx_data))/20:max(xx_data);
YY = fitobject(XX);
YY = YY';

x_data = My_Age_Male;
y_data = My_95th_Coefficient_b_Male;
[fitobject,gof] = fit(x_data',y_data','smooth');
X = min(x_data):(max(x_data)-min(x_data))/20:max(x_data);
Y = fitobject(X);
Y = Y';

XX_Fill_1 = [XX,X(end:-1:1)]; % 5th ~ 95th
YY_Fill_1 = [YY,Y(end:-1:1)];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,My_Colors_4_1(2,:));
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);

%plot(xx_data,yy_data,'o','Color',My_Colors_4_1(1,:));
%plot(x_data,y_data,'s','Color',My_Colors_4_1(1,:));

xxx_data = My_Age_Male;
yyy_data = My_mean_Coefficient_b_Male;
%plot(xxx_data,yyy_data,'*','Color',My_Colors_4_1(1,:));
[fitobject,gof] = fit(xxx_data',yyy_data','smooth');
XXX = min(xxx_data):(max(xxx_data)-min(xxx_data))/20:max(xxx_data);
YYY = fitobject(XXX);
YYY = YYY';
HH2 = plot(XXX,YYY,'LineWidth',My_LineWidth_1,'Color',My_Colors_4_1(2,:)); % mean

% America
load('My_percentiles_Corr_Coefficient_ab_c1_America.mat')
xx_data = My_Age_Male;
yy_data = My_5th_Coefficient_b_Male;
[fitobject,gof] = fit(xx_data',yy_data','smooth');
XX = min(xx_data):(max(xx_data)-min(xx_data))/20:max(xx_data);
YY = fitobject(XX);
YY = YY';

x_data = My_Age_Male;
y_data = My_95th_Coefficient_b_Male;
[fitobject,gof] = fit(x_data',y_data','smooth');
X = min(x_data):(max(x_data)-min(x_data))/20:max(x_data);
Y = fitobject(X);
Y = Y';

XX_Fill_1 = [XX,X(end:-1:1)]; % 5th ~ 95th
YY_Fill_1 = [YY,Y(end:-1:1)];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,My_Colors_4_1(3,:));
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);

%plot(xx_data,yy_data,'o','Color',My_Colors_4_1(1,:));
%plot(x_data,y_data,'s','Color',My_Colors_4_1(1,:));

xxx_data = My_Age_Male;
yyy_data = My_mean_Coefficient_b_Male;
%plot(xxx_data,yyy_data,'*','Color',My_Colors_4_1(1,:));
[fitobject,gof] = fit(xxx_data',yyy_data','smooth');
XXX = min(xxx_data):(max(xxx_data)-min(xxx_data))/20:max(xxx_data);
YYY = fitobject(XXX);
YYY = YYY';
HH3 = plot(XXX,YYY,'LineWidth',My_LineWidth_1,'Color',My_Colors_4_1(3,:)); % mean

% Asian
load('My_percentiles_Corr_Coefficient_ab_c1_Asian.mat')
xx_data = My_Age_Male;
yy_data = My_5th_Coefficient_b_Male;
[fitobject,gof] = fit(xx_data',yy_data','smooth');
XX = min(xx_data):(max(xx_data)-min(xx_data))/20:max(xx_data);
YY = fitobject(XX);
YY = YY';

x_data = My_Age_Male;
y_data = My_95th_Coefficient_b_Male;
[fitobject,gof] = fit(x_data',y_data','smooth');
X = min(x_data):(max(x_data)-min(x_data))/20:max(x_data);
Y = fitobject(X);
Y = Y';

XX_Fill_1 = [XX,X(end:-1:1)]; % 5th ~ 95th
YY_Fill_1 = [YY,Y(end:-1:1)];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,My_Colors_4_1(4,:));
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);

%plot(xx_data,yy_data,'o','Color',My_Colors_4_1(1,:));
%plot(x_data,y_data,'s','Color',My_Colors_4_1(1,:));

xxx_data = My_Age_Male;
yyy_data = My_mean_Coefficient_b_Male;
%plot(xxx_data,yyy_data,'*','Color',My_Colors_4_1(1,:));
[fitobject,gof] = fit(xxx_data',yyy_data','smooth');
XXX = min(xxx_data):(max(xxx_data)-min(xxx_data))/20:max(xxx_data);
YYY = fitobject(XXX);
YYY = YYY';
HH4 = plot(XXX,YYY,'LineWidth',My_LineWidth_1,'Color',My_Colors_4_1(4,:)); % mean

Legend = legend([HH1 HH2 HH3 HH4],...
    'All',...
    'Europe',...
    'America',...
    'Asian');
set(Legend,'Box','off','location','NorthEast')
