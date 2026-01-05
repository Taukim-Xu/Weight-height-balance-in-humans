%% Source codes for Figure 2(b)
% Linear correlation coefficient between Weight and Weight*Height for males by continent
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
%% All
FF = figure;
subplot(1,2,1)
hold on;
xlabel('Age (yr)');
ylabel('Correlation coefficients')
xlim([0 91]);
ylim([0.93 1]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

set(gca,'XTick',[0 10 20 30 40 50 60 70 80 90]);
yyy = 0.9:0.01:1;
xxx = 10+yyy*0;
plot(xxx,yyy,'-.','linewidth',1,'color','k')

xxx = 0:1:90;
yyy = 0.97+xxx*0;
plot(xxx,yyy,'-.','linewidth',1,'color','k')

% All
load('My_percentiles_Corr_c1_All.mat')
xx_data = My_Age_Male;
yy_data = My_5th_Male;
[fitobject,gof] = fit(xx_data',yy_data','smooth');
XX = min(xx_data):(max(xx_data)-min(xx_data))/20:max(xx_data);
YY = fitobject(XX);
YY = YY';

x_data = My_Age_Male;
y_data = My_95th_Male;
[fitobject,gof] = fit(x_data',y_data','smooth');
X = min(x_data):(max(x_data)-min(x_data))/20:max(x_data);
Y = fitobject(X);
Y = Y';

XX_Fill_1 = [XX,X(end:-1:1)]; % 5th ~ 95th
YY_Fill_1 = [YY,Y(end:-1:1)];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,My_Colors_4_1(1,:));
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);

xxx_data = My_Age_Male;
yyy_data = My_mean_Male;
HH1 = plot(xxx_data,yyy_data,'LineWidth',My_LineWidth,'Color',My_Colors_4_1(1,:)); % mean

% Europe
load('My_percentiles_Corr_c1_Europe.mat')
xx_data = My_Age_Male;
yy_data = My_5th_Male;
[fitobject,gof] = fit(xx_data',yy_data','smooth');
XX = min(xx_data):(max(xx_data)-min(xx_data))/20:max(xx_data);
YY = fitobject(XX);
YY = YY';

x_data = My_Age_Male;
y_data = My_95th_Male;
[fitobject,gof] = fit(x_data',y_data','smooth');
X = min(x_data):(max(x_data)-min(x_data))/20:max(x_data);
Y = fitobject(X);
Y = Y';

XX_Fill_1 = [XX,X(end:-1:1)]; % 5th ~ 95th
YY_Fill_1 = [YY,Y(end:-1:1)];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,My_Colors_4_1(2,:));
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);

xxx_data = My_Age_Male;
yyy_data = My_mean_Male;
HH2 = plot(xxx_data,yyy_data,'LineWidth',My_LineWidth,'Color',My_Colors_4_1(2,:)); % mean

% America
load('My_percentiles_Corr_c1_America.mat')
xx_data = My_Age_Male;
yy_data = My_5th_Male;
[fitobject,gof] = fit(xx_data',yy_data','smooth');
XX = min(xx_data):(max(xx_data)-min(xx_data))/20:max(xx_data);
YY = fitobject(XX);
YY = YY';

x_data = My_Age_Male;
y_data = My_95th_Male;
[fitobject,gof] = fit(x_data',y_data','smooth');
X = min(x_data):(max(x_data)-min(x_data))/20:max(x_data);
Y = fitobject(X);
Y = Y';

XX_Fill_1 = [XX,X(end:-1:1)]; % 5th ~ 95th
YY_Fill_1 = [YY,Y(end:-1:1)];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,My_Colors_4_1(3,:));
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);

xxx_data = My_Age_Male;
yyy_data = My_mean_Male;
HH3 = plot(xxx_data,yyy_data,'LineWidth',My_LineWidth,'Color',My_Colors_4_1(3,:)); % mean

% Asian
load('My_percentiles_Corr_c1_Asian.mat')
xx_data = My_Age_Male;
yy_data = My_5th_Male;
[fitobject,gof] = fit(xx_data',yy_data','smooth');
XX = min(xx_data):(max(xx_data)-min(xx_data))/20:max(xx_data);
YY = fitobject(XX);
YY = YY';

x_data = My_Age_Male;
y_data = My_95th_Male;
[fitobject,gof] = fit(x_data',y_data','smooth');
X = min(x_data):(max(x_data)-min(x_data))/20:max(x_data);
Y = fitobject(X);
Y = Y';

XX_Fill_1 = [XX,X(end:-1:1)]; % 5th ~ 95th
YY_Fill_1 = [YY,Y(end:-1:1)];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,My_Colors_4_1(4,:));
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);

xxx_data = My_Age_Male;
yyy_data = My_mean_Male;
HH4 = plot(xxx_data,yyy_data,'LineWidth',My_LineWidth,'Color',My_Colors_4_1(4,:)); % mean

Legend = legend([HH1 HH2 HH3 HH4],...
    'All',...
    'Europe',...
    'America',...
    'Asia');
set(Legend,'Box','off','location','SouthWest')

%%
subplot(1,2,2)
hold on;
xlim([0.2 8.8]);
ylim([0.93 1]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)
ax = gca;
ax.YAxis.Visible = 'off';
Band_Width = 0.6; % Length
set(gca,'XTick',[1.5 3.5 5.5 7.5],'XTicklabel',{'All','Europe','America','Asia'});

xxx = 0:0.1:9;
yyy = 0.97+xxx*0;
plot(xxx,yyy,'-.','linewidth',1,'color','k')
% Loading the correlation coefficients
% 01-Europe
load('./01-Europe/Correlation_coefficient_c1_Western_Europe.mat')
load('./01-Europe/Correlation_coefficient_c1_Southern_Europe.mat')
load('./01-Europe/Correlation_coefficient_c1_Northern_Europe.mat')
load('./01-Europe/Correlation_coefficient_c1_Eastern_Europe.mat')
load('./01-Europe/Correlation_coefficient_c1_Eastern_Central_Europe.mat')
% 02-America
load('./02-America/Correlation_coefficient_c1_NHANES_ALL.mat')
% 03-Asian
load('./03-Asian/Correlation_coefficient_c1_Asia.mat')
%% We merge them.
Corr_All_Male = [Corr_14_Netherlands_Male Corr_17_France_Male Corr_23_Belgium_Male ...
    Corr_31_Luxembourg_Male Corr_55_Finland_Male Corr_15_Spain_Male Corr_16_Italy_Male ...
    Corr_19_Greece_Male Corr_33_Portugal_Male Corr_34_Slovenia_Male Corr_47_Croatia_Male ...
    Corr_51_Bulgaria_Male Corr_53_Cyprus_Male Corr_59_Malta_Male Corr_61_Romania_Male ...
    Corr_13_Sweden_Male Corr_18_Denmark_Male Corr_35_Estonia_Male Corr_48_Lithuania_Male ...
    Corr_57_Latvia_Male Corr_11_Austria_Male Corr_12_Germany_Male Corr_20_Switzerland_Male ...
    Corr_28_Czech_Male Corr_29_Poland_Male Corr_32_Hungary_Male Corr_63_Slovakia_Male ...
    Corr_63_Source_data_Slovakia_Male Corr_NHANES_1999_2000_Male Corr_NHANES_2001_2002_Male ...
    Corr_NHANES_2003_2004_Male Corr_NHANES_2005_2006_Male Corr_NHANES_2007_2008_Male ...
    Corr_NHANES_2009_2010_Male Corr_NHANES_2011_2012_Male Corr_NHANES_2013_2014_Male ...
    Corr_NHANES_2015_2016_Male Corr_NHANES_2017_2018_Male Corr_NHANES_2017_March_2020_Male ...
    Corr_NHANES_August_2021_August_2023_Male Corr_25_Israel_Male Corr_BCCPDS_7_21_China_Male ...
    Corr_Chongqing_6_21_China_Male Corr_Japanese_1_8_Male Corr_Jilin_China_Male Corr_KSPF_Korea_Male];

Corr_Europe_Male = [Corr_14_Netherlands_Male Corr_17_France_Male Corr_23_Belgium_Male ...
    Corr_31_Luxembourg_Male Corr_55_Finland_Male Corr_15_Spain_Male Corr_16_Italy_Male ...
    Corr_19_Greece_Male Corr_33_Portugal_Male Corr_34_Slovenia_Male Corr_47_Croatia_Male ...
    Corr_51_Bulgaria_Male Corr_53_Cyprus_Male Corr_59_Malta_Male Corr_61_Romania_Male ...
    Corr_13_Sweden_Male Corr_18_Denmark_Male Corr_35_Estonia_Male Corr_48_Lithuania_Male ...
    Corr_57_Latvia_Male Corr_11_Austria_Male Corr_12_Germany_Male Corr_20_Switzerland_Male ...
    Corr_28_Czech_Male Corr_29_Poland_Male Corr_32_Hungary_Male Corr_63_Slovakia_Male ...
    Corr_63_Source_data_Slovakia_Male];

Corr_America_Male = [Corr_NHANES_1999_2000_Male Corr_NHANES_2001_2002_Male ...
    Corr_NHANES_2003_2004_Male Corr_NHANES_2005_2006_Male Corr_NHANES_2007_2008_Male ...
    Corr_NHANES_2009_2010_Male Corr_NHANES_2011_2012_Male Corr_NHANES_2013_2014_Male ...
    Corr_NHANES_2015_2016_Male Corr_NHANES_2017_2018_Male Corr_NHANES_2017_March_2020_Male ...
    Corr_NHANES_August_2021_August_2023_Male];

Corr_Asian_Male = [Corr_25_Israel_Male Corr_BCCPDS_7_21_China_Male ...
    Corr_Chongqing_6_21_China_Male Corr_Japanese_1_8_Male Corr_Jilin_China_Male Corr_KSPF_Korea_Male];

% Data outside the 5th and 95th
Corr_All_Male_Outside_5th = [];
Corr_All_Male_Inside = [];
Corr_All_Male_Outside_95th = [];

Corr_Europe_Male_Outside_5th = [];
Corr_Europe_Male_Inside = [];
Corr_Europe_Male_Outside_95th = [];

Corr_America_Male_Outside_5th = [];
Corr_America_Male_Inside = [];
Corr_America_Male_Outside_95th = [];

Corr_Asian_Male_Outside_5th = [];
Corr_Asian_Male_Inside = [];
Corr_Asian_Male_Outside_95th = [];

My_p = [5 10 25 50 75 90 95]; % percentiles
Corr_All_Male_Percentiles = prctile(Corr_All_Male,My_p);
Corr_Europe_Male_Percentiles = prctile(Corr_Europe_Male,My_p);
Corr_America_Male_Percentiles = prctile(Corr_America_Male,My_p);
Corr_Asian_Male_Percentiles = prctile(Corr_Asian_Male,My_p);

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
[M N] = size(Corr_Europe_Male);
for i = 1:N
    if Corr_Europe_Male(i) < Corr_Europe_Male_Percentiles(1)
        Corr_Europe_Male_Outside_5th = [Corr_Europe_Male_Outside_5th Corr_Europe_Male(i)];
    end
    if Corr_Europe_Male(i) >= Corr_Europe_Male_Percentiles(1) && Corr_Europe_Male(i) <= Corr_Europe_Male_Percentiles(7)
        Corr_Europe_Male_Inside = [Corr_Europe_Male_Inside Corr_Europe_Male(i)];
    end
    if Corr_Europe_Male(i) > Corr_Europe_Male_Percentiles(7)
        Corr_Europe_Male_Outside_95th = [Corr_Europe_Male_Outside_95th Corr_Europe_Male(i)];
    end
end
[M N] = size(Corr_America_Male);
for i = 1:N
    if Corr_America_Male(i) < Corr_America_Male_Percentiles(1)
        Corr_America_Male_Outside_5th = [Corr_America_Male_Outside_5th Corr_America_Male(i)];
    end
    if Corr_America_Male(i) >= Corr_America_Male_Percentiles(1) && Corr_America_Male(i) <= Corr_America_Male_Percentiles(7)
        Corr_America_Male_Inside = [Corr_America_Male_Inside Corr_America_Male(i)];
    end
    if Corr_America_Male(i) > Corr_America_Male_Percentiles(7)
        Corr_America_Male_Outside_95th = [Corr_America_Male_Outside_95th Corr_America_Male(i)];
    end
end
[M N] = size(Corr_Asian_Male);
for i = 1:N
    if Corr_Asian_Male(i) < Corr_Asian_Male_Percentiles(1)
        Corr_Asian_Male_Outside_5th = [Corr_Asian_Male_Outside_5th Corr_Asian_Male(i)];
    end
    if Corr_Asian_Male(i) >= Corr_Asian_Male_Percentiles(1) && Corr_Asian_Male(i) <= Corr_Asian_Male_Percentiles(7)
        Corr_Asian_Male_Inside = [Corr_Asian_Male_Inside Corr_Asian_Male(i)];
    end
    if Corr_Asian_Male(i) > Corr_Asian_Male_Percentiles(7)
        Corr_Asian_Male_Outside_95th = [Corr_Asian_Male_Outside_95th Corr_Asian_Male(i)];
    end
end
%% All
XX_Fill = [1-Band_Width/2 1+Band_Width/2 1+Band_Width/2 1-Band_Width/2];
YY_Fill = [Corr_All_Male_Percentiles(3) Corr_All_Male_Percentiles(3) Corr_All_Male_Percentiles(4) Corr_All_Male_Percentiles(4)]; % 25至50
H1 = fill(XX_Fill,YY_Fill,My_Colors_4_1(1,:),'linewidth',My_LineWidth_1);
set(H1,'edgealpha',1,'facealpha',Alpha);
YY_Fill = [Corr_All_Male_Percentiles(4) Corr_All_Male_Percentiles(4) Corr_All_Male_Percentiles(5) Corr_All_Male_Percentiles(5)]; % 50至75
H1 = fill(XX_Fill,YY_Fill,My_Colors_4_1(1,:));
set(H1,'edgealpha',1,'facealpha',Alpha,'linewidth',My_LineWidth_1);
XX_Line = 1+[-Band_Width/3 Band_Width/3];
YY_Line = [Corr_All_Male_Percentiles(1) Corr_All_Male_Percentiles(1)]; % %5 percentile
LL = line(XX_Line,YY_Line,'linewidth',My_LineWidth_1,'Color',[0 0 0]);
YY_Line = [Corr_All_Male_Percentiles(7) Corr_All_Male_Percentiles(7)]; % %95 percentile
LL = line(XX_Line,YY_Line,'linewidth',My_LineWidth_1,'Color',[0 0 0]);
XX_Line = [1 1];
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
XX_Text = 1.5;
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
XX_Text = 1.5;
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
YY = fitobject(XX)/max(fitobject(XX))*0.8+1;
H1 = plot(YY,XX,'LineWidth',My_LineWidth-0.5,'Color',My_Colors_4_1(1,:));

%% Europe
XX_Fill = [3-Band_Width/2 3+Band_Width/2 3+Band_Width/2 3-Band_Width/2];
YY_Fill = [Corr_Europe_Male_Percentiles(3) Corr_Europe_Male_Percentiles(3) Corr_Europe_Male_Percentiles(4) Corr_Europe_Male_Percentiles(4)]; % 25至50
H1 = fill(XX_Fill,YY_Fill,My_Colors_4_1(2,:),'linewidth',My_LineWidth_1);
set(H1,'edgealpha',1,'facealpha',Alpha);
YY_Fill = [Corr_Europe_Male_Percentiles(4) Corr_Europe_Male_Percentiles(4) Corr_Europe_Male_Percentiles(5) Corr_Europe_Male_Percentiles(5)]; % 50至75
H1 = fill(XX_Fill,YY_Fill,My_Colors_4_1(2,:));
set(H1,'edgealpha',1,'facealpha',Alpha,'linewidth',My_LineWidth_1);
XX_Line = 3+[-Band_Width/3 Band_Width/3];
YY_Line = [Corr_Europe_Male_Percentiles(1) Corr_Europe_Male_Percentiles(1)]; % %5 percentile
LL = line(XX_Line,YY_Line,'linewidth',My_LineWidth_1,'Color',[0 0 0]);
YY_Line = [Corr_Europe_Male_Percentiles(7) Corr_Europe_Male_Percentiles(7)]; % %95 percentile
LL = line(XX_Line,YY_Line,'linewidth',My_LineWidth_1,'Color',[0 0 0]);
XX_Line = [3 3];
YY_Line = [Corr_Europe_Male_Percentiles(1) Corr_Europe_Male_Percentiles(3)];
LL = line(XX_Line,YY_Line,'LineStyle','--','linewidth',My_LineWidth_1,'Color',[0 0 0]);
YY_Line = [Corr_Europe_Male_Percentiles(5) Corr_Europe_Male_Percentiles(7)];
LL = line(XX_Line,YY_Line,'LineStyle','--','linewidth',My_LineWidth_1,'Color',[0 0 0]);

% r<0.97
[M N] = size(Corr_Europe_Male); % Europe
N_Europe_Male = N;
My_N_Europe_Male = 0;
for i = 1:N
    if Corr_Europe_Male(i) < 0.97
        My_N_Europe_Male = My_N_Europe_Male + 1;
    end
end
% text
My_text = ['r < 0.97' newline() '(' num2str(round((My_N_Europe_Male/N_Europe_Male)*100,1)) '%)'];
XX_Text = 3.5;
YY_Text = 0.952;
Text = text(XX_Text,YY_Text,My_text,'FontSize',12,'FontName',My_FontName,'HorizontalAlignment','center');

% r<0.95
[M N] = size(Corr_Europe_Male); % Europe
N_Europe_Male = N;
My_N_Europe_Male = 0;
for i = 1:N
    if Corr_Europe_Male(i) < 0.95
        My_N_Europe_Male = My_N_Europe_Male + 1;
    end
end
% text
My_text = ['r < 0.95' newline() '(' num2str(round((My_N_Europe_Male/N_Europe_Male)*100,1)) '%)'];
XX_Text = 3.5;
YY_Text = 0.945;
Text = text(XX_Text,YY_Text,My_text,'FontSize',12,'FontName',My_FontName,'HorizontalAlignment','center');

% distribution curve
nbins = 50;
figure;
HH_Male = histogram(Corr_Europe_Male,nbins);
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
XX = Corr_Europe_Male_Percentiles(1):0.0005:Corr_Europe_Male_Percentiles(7);
YY = fitobject(XX)/max(fitobject(XX))*0.8+3;
H1 = plot(YY,XX,'LineWidth',My_LineWidth-0.5,'Color',My_Colors_4_1(2,:));

%% America
XX_Fill = [5-Band_Width/2 5+Band_Width/2 5+Band_Width/2 5-Band_Width/2];
YY_Fill = [Corr_America_Male_Percentiles(3) Corr_America_Male_Percentiles(3) Corr_America_Male_Percentiles(4) Corr_America_Male_Percentiles(4)]; % 25至50
H1 = fill(XX_Fill,YY_Fill,My_Colors_4_1(3,:),'linewidth',My_LineWidth_1);
set(H1,'edgealpha',1,'facealpha',Alpha);
YY_Fill = [Corr_America_Male_Percentiles(4) Corr_America_Male_Percentiles(4) Corr_America_Male_Percentiles(5) Corr_America_Male_Percentiles(5)]; % 50至75
H1 = fill(XX_Fill,YY_Fill,My_Colors_4_1(3,:));
set(H1,'edgealpha',1,'facealpha',Alpha,'linewidth',My_LineWidth_1);
XX_Line = 5+[-Band_Width/3 Band_Width/3];
YY_Line = [Corr_America_Male_Percentiles(1) Corr_America_Male_Percentiles(1)]; % %5 percentile
LL = line(XX_Line,YY_Line,'linewidth',My_LineWidth_1,'Color',[0 0 0]);
YY_Line = [Corr_America_Male_Percentiles(7) Corr_America_Male_Percentiles(7)]; % %95 percentile
LL = line(XX_Line,YY_Line,'linewidth',My_LineWidth_1,'Color',[0 0 0]);
XX_Line = [5 5];
YY_Line = [Corr_America_Male_Percentiles(1) Corr_America_Male_Percentiles(3)];
LL = line(XX_Line,YY_Line,'LineStyle','--','linewidth',My_LineWidth_1,'Color',[0 0 0]);
YY_Line = [Corr_America_Male_Percentiles(5) Corr_America_Male_Percentiles(7)];
LL = line(XX_Line,YY_Line,'LineStyle','--','linewidth',My_LineWidth_1,'Color',[0 0 0]);

% r<0.97
[M N] = size(Corr_America_Male); % America
N_America_Male = N;
My_N_America_Male = 0;
for i = 1:N
    if Corr_America_Male(i) < 0.97
        My_N_America_Male = My_N_America_Male + 1;
    end
end
% text
My_text = ['r < 0.97' newline() '(' num2str(round((My_N_America_Male/N_America_Male)*100,1)) '%)'];
XX_Text = 5.5;
YY_Text = 0.952;
Text = text(XX_Text,YY_Text,My_text,'FontSize',12,'FontName',My_FontName,'HorizontalAlignment','center');

% r<0.95
[M N] = size(Corr_America_Male); % America
N_America_Male = N;
My_N_America_Male = 0;
for i = 1:N
    if Corr_America_Male(i) < 0.95
        My_N_America_Male = My_N_America_Male + 1;
    end
end
% text
My_text = ['r < 0.95' newline() '(' num2str(round((My_N_America_Male/N_America_Male)*100,1)) '%)'];
XX_Text = 5.5;
YY_Text = 0.945;
Text = text(XX_Text,YY_Text,My_text,'FontSize',12,'FontName',My_FontName,'HorizontalAlignment','center');

% distribution curve
nbins = 25;
figure;
HH_Male = histogram(Corr_America_Male,nbins);
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
XX = Corr_America_Male_Percentiles(1):0.0005:Corr_America_Male_Percentiles(7);
YY = fitobject(XX)/max(fitobject(XX))*0.8+5;
H1 = plot(YY,XX,'LineWidth',My_LineWidth-0.5,'Color',My_Colors_4_1(3,:));

%% Asian
XX_Fill = [7-Band_Width/2 7+Band_Width/2 7+Band_Width/2 7-Band_Width/2];
YY_Fill = [Corr_Asian_Male_Percentiles(3) Corr_Asian_Male_Percentiles(3) Corr_Asian_Male_Percentiles(4) Corr_Asian_Male_Percentiles(4)]; % 25至50
H1 = fill(XX_Fill,YY_Fill,My_Colors_4_1(4,:),'linewidth',My_LineWidth_1);
set(H1,'edgealpha',1,'facealpha',Alpha);
YY_Fill = [Corr_Asian_Male_Percentiles(4) Corr_Asian_Male_Percentiles(4) Corr_Asian_Male_Percentiles(5) Corr_Asian_Male_Percentiles(5)]; % 50至75
H1 = fill(XX_Fill,YY_Fill,My_Colors_4_1(4,:));
set(H1,'edgealpha',1,'facealpha',Alpha,'linewidth',My_LineWidth_1);
XX_Line = 7+[-Band_Width/3 Band_Width/3];
YY_Line = [Corr_Asian_Male_Percentiles(1) Corr_Asian_Male_Percentiles(1)]; % %5 percentile
LL = line(XX_Line,YY_Line,'linewidth',My_LineWidth_1,'Color',[0 0 0]);
YY_Line = [Corr_Asian_Male_Percentiles(7) Corr_Asian_Male_Percentiles(7)]; % %95 percentile
LL = line(XX_Line,YY_Line,'linewidth',My_LineWidth_1,'Color',[0 0 0]);
XX_Line = [7 7];
YY_Line = [Corr_Asian_Male_Percentiles(1) Corr_Asian_Male_Percentiles(3)];
LL = line(XX_Line,YY_Line,'LineStyle','--','linewidth',My_LineWidth_1,'Color',[0 0 0]);
YY_Line = [Corr_Asian_Male_Percentiles(5) Corr_Asian_Male_Percentiles(7)];
LL = line(XX_Line,YY_Line,'LineStyle','--','linewidth',My_LineWidth_1,'Color',[0 0 0]);

% r<0.97
[M N] = size(Corr_Asian_Male); % Asian
N_Asian_Male = N;
My_N_Asian_Male = 0;
for i = 1:N
    if Corr_Asian_Male(i) < 0.97
        My_N_Asian_Male = My_N_Asian_Male + 1;
    end
end
% text
My_text = ['r < 0.97' newline() '(' num2str(round((My_N_Asian_Male/N_Asian_Male)*100,1)) '%)'];
XX_Text = 7.5;
YY_Text = 0.952;
Text = text(XX_Text,YY_Text,My_text,'FontSize',12,'FontName',My_FontName,'HorizontalAlignment','center');

% r<0.95
[M N] = size(Corr_Asian_Male); % Asian
N_Asian_Male = N;
My_N_Asian_Male = 0;
for i = 1:N
    if Corr_Asian_Male(i) < 0.95
        My_N_Asian_Male = My_N_Asian_Male + 1;
    end
end
% text
My_text = ['r < 0.95' newline() '(' num2str(round((My_N_Asian_Male/N_Asian_Male)*100,1)) '%)'];
XX_Text = 7.5;
YY_Text = 0.945;
Text = text(XX_Text,YY_Text,My_text,'FontSize',12,'FontName',My_FontName,'HorizontalAlignment','center');

% distribution curve
nbins = 25;
figure;
HH_Male = histogram(Corr_Asian_Male,nbins);
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
XX = Corr_Asian_Male_Percentiles(1):0.0005:Corr_Asian_Male_Percentiles(7);
YY = fitobject(XX)/max(fitobject(XX))*0.8+7;
H1 = plot(YY,XX,'LineWidth',My_LineWidth-0.5,'Color',My_Colors_4_1(4,:));

