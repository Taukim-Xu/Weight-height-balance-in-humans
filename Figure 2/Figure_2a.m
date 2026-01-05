%% Source codes for Figure 2(a)
% Linear correlation coefficient between Weight and Weight*Height for females by continent
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
xx_data = My_Age_Female;
yy_data = My_5th_Female;
[fitobject,gof] = fit(xx_data',yy_data','smooth');
XX = min(xx_data):(max(xx_data)-min(xx_data))/20:max(xx_data);
YY = fitobject(XX);
YY = YY';

x_data = My_Age_Female;
y_data = My_95th_Female;
[fitobject,gof] = fit(x_data',y_data','smooth');
X = min(x_data):(max(x_data)-min(x_data))/20:max(x_data);
Y = fitobject(X);
Y = Y';

XX_Fill_1 = [XX,X(end:-1:1)]; % 5th ~ 95th
YY_Fill_1 = [YY,Y(end:-1:1)];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,My_Colors_4_1(1,:));
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);

xxx_data = My_Age_Female;
yyy_data = My_mean_Female;
HH1 = plot(xxx_data,yyy_data,'LineWidth',My_LineWidth,'Color',My_Colors_4_1(1,:)); % mean

% Europe
load('My_percentiles_Corr_c1_Europe.mat')
xx_data = My_Age_Female;
yy_data = My_5th_Female;
[fitobject,gof] = fit(xx_data',yy_data','smooth');
XX = min(xx_data):(max(xx_data)-min(xx_data))/20:max(xx_data);
YY = fitobject(XX);
YY = YY';

x_data = My_Age_Female;
y_data = My_95th_Female;
[fitobject,gof] = fit(x_data',y_data','smooth');
X = min(x_data):(max(x_data)-min(x_data))/20:max(x_data);
Y = fitobject(X);
Y = Y';

XX_Fill_1 = [XX,X(end:-1:1)]; % 5th ~ 95th
YY_Fill_1 = [YY,Y(end:-1:1)];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,My_Colors_4_1(2,:));
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);

xxx_data = My_Age_Female;
yyy_data = My_mean_Female;
HH2 = plot(xxx_data,yyy_data,'LineWidth',My_LineWidth,'Color',My_Colors_4_1(2,:)); % mean

% America
load('My_percentiles_Corr_c1_America.mat')
xx_data = My_Age_Female;
yy_data = My_5th_Female;
[fitobject,gof] = fit(xx_data',yy_data','smooth');
XX = min(xx_data):(max(xx_data)-min(xx_data))/20:max(xx_data);
YY = fitobject(XX);
YY = YY';

x_data = My_Age_Female;
y_data = My_95th_Female;
[fitobject,gof] = fit(x_data',y_data','smooth');
X = min(x_data):(max(x_data)-min(x_data))/20:max(x_data);
Y = fitobject(X);
Y = Y';

XX_Fill_1 = [XX,X(end:-1:1)]; % 5th ~ 95th
YY_Fill_1 = [YY,Y(end:-1:1)];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,My_Colors_4_1(3,:));
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);

xxx_data = My_Age_Female;
yyy_data = My_mean_Female;
HH3 = plot(xxx_data,yyy_data,'LineWidth',My_LineWidth,'Color',My_Colors_4_1(3,:)); % mean

% Asian
load('My_percentiles_Corr_c1_Asian.mat')
xx_data = My_Age_Female;
yy_data = My_5th_Female;
[fitobject,gof] = fit(xx_data',yy_data','smooth');
XX = min(xx_data):(max(xx_data)-min(xx_data))/20:max(xx_data);
YY = fitobject(XX);
YY = YY';

x_data = My_Age_Female;
y_data = My_95th_Female;
[fitobject,gof] = fit(x_data',y_data','smooth');
X = min(x_data):(max(x_data)-min(x_data))/20:max(x_data);
Y = fitobject(X);
Y = Y';

XX_Fill_1 = [XX,X(end:-1:1)]; % 5th ~ 95th
YY_Fill_1 = [YY,Y(end:-1:1)];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,My_Colors_4_1(4,:));
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);

xxx_data = My_Age_Female;
yyy_data = My_mean_Female;
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
Corr_All_Female = [Corr_14_Netherlands_Female Corr_17_France_Female Corr_23_Belgium_Female ...
    Corr_31_Luxembourg_Female Corr_55_Finland_Female Corr_15_Spain_Female Corr_16_Italy_Female ...
    Corr_19_Greece_Female Corr_33_Portugal_Female Corr_34_Slovenia_Female Corr_47_Croatia_Female ...
    Corr_51_Bulgaria_Female Corr_53_Cyprus_Female Corr_59_Malta_Female Corr_61_Romania_Female ...
    Corr_13_Sweden_Female Corr_18_Denmark_Female Corr_35_Estonia_Female Corr_48_Lithuania_Female ...
    Corr_57_Latvia_Female Corr_11_Austria_Female Corr_12_Germany_Female Corr_20_Switzerland_Female ...
    Corr_28_Czech_Female Corr_29_Poland_Female Corr_32_Hungary_Female Corr_63_Slovakia_Female ...
    Corr_63_Source_data_Slovakia_Female Corr_NHANES_1999_2000_Female Corr_NHANES_2001_2002_Female ...
    Corr_NHANES_2003_2004_Female Corr_NHANES_2005_2006_Female Corr_NHANES_2007_2008_Female ...
    Corr_NHANES_2009_2010_Female Corr_NHANES_2011_2012_Female Corr_NHANES_2013_2014_Female ...
    Corr_NHANES_2015_2016_Female Corr_NHANES_2017_2018_Female Corr_NHANES_2017_March_2020_Female ...
    Corr_NHANES_August_2021_August_2023_Female Corr_25_Israel_Female Corr_BCCPDS_7_21_China_Female ...
    Corr_Chongqing_6_21_China_Female Corr_Japanese_1_8_Female Corr_Jilin_China_Female Corr_KSPF_Korea_Female ...
    Corr_Bangladesh_2011_14_Female];

Corr_Europe_Female = [Corr_14_Netherlands_Female Corr_17_France_Female Corr_23_Belgium_Female ...
    Corr_31_Luxembourg_Female Corr_55_Finland_Female Corr_15_Spain_Female Corr_16_Italy_Female ...
    Corr_19_Greece_Female Corr_33_Portugal_Female Corr_34_Slovenia_Female Corr_47_Croatia_Female ...
    Corr_51_Bulgaria_Female Corr_53_Cyprus_Female Corr_59_Malta_Female Corr_61_Romania_Female ...
    Corr_13_Sweden_Female Corr_18_Denmark_Female Corr_35_Estonia_Female Corr_48_Lithuania_Female ...
    Corr_57_Latvia_Female Corr_11_Austria_Female Corr_12_Germany_Female Corr_20_Switzerland_Female ...
    Corr_28_Czech_Female Corr_29_Poland_Female Corr_32_Hungary_Female Corr_63_Slovakia_Female ...
    Corr_63_Source_data_Slovakia_Female];

Corr_America_Female = [Corr_NHANES_1999_2000_Female Corr_NHANES_2001_2002_Female ...
    Corr_NHANES_2003_2004_Female Corr_NHANES_2005_2006_Female Corr_NHANES_2007_2008_Female ...
    Corr_NHANES_2009_2010_Female Corr_NHANES_2011_2012_Female Corr_NHANES_2013_2014_Female ...
    Corr_NHANES_2015_2016_Female Corr_NHANES_2017_2018_Female Corr_NHANES_2017_March_2020_Female ...
    Corr_NHANES_August_2021_August_2023_Female];

Corr_Asian_Female = [Corr_25_Israel_Female Corr_BCCPDS_7_21_China_Female ...
    Corr_Chongqing_6_21_China_Female Corr_Japanese_1_8_Female Corr_Jilin_China_Female Corr_KSPF_Korea_Female ...
    Corr_Bangladesh_2011_14_Female];

% Data outside the 5th and 95th
Corr_All_Female_Outside_5th = [];
Corr_All_Female_Inside = [];
Corr_All_Female_Outside_95th = [];

Corr_Europe_Female_Outside_5th = [];
Corr_Europe_Female_Inside = [];
Corr_Europe_Female_Outside_95th = [];

Corr_America_Female_Outside_5th = [];
Corr_America_Female_Inside = [];
Corr_America_Female_Outside_95th = [];

Corr_Asian_Female_Outside_5th = [];
Corr_Asian_Female_Inside = [];
Corr_Asian_Female_Outside_95th = [];

My_p = [5 10 25 50 75 90 95]; % percentiles
Corr_All_Female_Percentiles = prctile(Corr_All_Female,My_p);
Corr_Europe_Female_Percentiles = prctile(Corr_Europe_Female,My_p);
Corr_America_Female_Percentiles = prctile(Corr_America_Female,My_p);
Corr_Asian_Female_Percentiles = prctile(Corr_Asian_Female,My_p);

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
[M N] = size(Corr_Europe_Female);
for i = 1:N
    if Corr_Europe_Female(i) < Corr_Europe_Female_Percentiles(1)
        Corr_Europe_Female_Outside_5th = [Corr_Europe_Female_Outside_5th Corr_Europe_Female(i)];
    end
    if Corr_Europe_Female(i) >= Corr_Europe_Female_Percentiles(1) && Corr_Europe_Female(i) <= Corr_Europe_Female_Percentiles(7)
        Corr_Europe_Female_Inside = [Corr_Europe_Female_Inside Corr_Europe_Female(i)];
    end
    if Corr_Europe_Female(i) > Corr_Europe_Female_Percentiles(7)
        Corr_Europe_Female_Outside_95th = [Corr_Europe_Female_Outside_95th Corr_Europe_Female(i)];
    end
end
[M N] = size(Corr_America_Female);
for i = 1:N
    if Corr_America_Female(i) < Corr_America_Female_Percentiles(1)
        Corr_America_Female_Outside_5th = [Corr_America_Female_Outside_5th Corr_America_Female(i)];
    end
    if Corr_America_Female(i) >= Corr_America_Female_Percentiles(1) && Corr_America_Female(i) <= Corr_America_Female_Percentiles(7)
        Corr_America_Female_Inside = [Corr_America_Female_Inside Corr_America_Female(i)];
    end
    if Corr_America_Female(i) > Corr_America_Female_Percentiles(7)
        Corr_America_Female_Outside_95th = [Corr_America_Female_Outside_95th Corr_America_Female(i)];
    end
end
[M N] = size(Corr_Asian_Female);
for i = 1:N
    if Corr_Asian_Female(i) < Corr_Asian_Female_Percentiles(1)
        Corr_Asian_Female_Outside_5th = [Corr_Asian_Female_Outside_5th Corr_Asian_Female(i)];
    end
    if Corr_Asian_Female(i) >= Corr_Asian_Female_Percentiles(1) && Corr_Asian_Female(i) <= Corr_Asian_Female_Percentiles(7)
        Corr_Asian_Female_Inside = [Corr_Asian_Female_Inside Corr_Asian_Female(i)];
    end
    if Corr_Asian_Female(i) > Corr_Asian_Female_Percentiles(7)
        Corr_Asian_Female_Outside_95th = [Corr_Asian_Female_Outside_95th Corr_Asian_Female(i)];
    end
end
%% All
XX_Fill = [1-Band_Width/2 1+Band_Width/2 1+Band_Width/2 1-Band_Width/2];
YY_Fill = [Corr_All_Female_Percentiles(3) Corr_All_Female_Percentiles(3) Corr_All_Female_Percentiles(4) Corr_All_Female_Percentiles(4)]; % 25至50
H1 = fill(XX_Fill,YY_Fill,My_Colors_4_1(1,:),'linewidth',My_LineWidth_1);
set(H1,'edgealpha',1,'facealpha',Alpha);
YY_Fill = [Corr_All_Female_Percentiles(4) Corr_All_Female_Percentiles(4) Corr_All_Female_Percentiles(5) Corr_All_Female_Percentiles(5)]; % 50至75
H1 = fill(XX_Fill,YY_Fill,My_Colors_4_1(1,:));
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
H1 = plot(YY,XX,'LineWidth',My_LineWidth-0.5,'Color',My_Colors_4_1(1,:));

%% Europe
XX_Fill = [3-Band_Width/2 3+Band_Width/2 3+Band_Width/2 3-Band_Width/2];
YY_Fill = [Corr_Europe_Female_Percentiles(3) Corr_Europe_Female_Percentiles(3) Corr_Europe_Female_Percentiles(4) Corr_Europe_Female_Percentiles(4)]; % 25至50
H1 = fill(XX_Fill,YY_Fill,My_Colors_4_1(2,:),'linewidth',My_LineWidth_1);
set(H1,'edgealpha',1,'facealpha',Alpha);
YY_Fill = [Corr_Europe_Female_Percentiles(4) Corr_Europe_Female_Percentiles(4) Corr_Europe_Female_Percentiles(5) Corr_Europe_Female_Percentiles(5)]; % 50至75
H1 = fill(XX_Fill,YY_Fill,My_Colors_4_1(2,:));
set(H1,'edgealpha',1,'facealpha',Alpha,'linewidth',My_LineWidth_1);
XX_Line = 3+[-Band_Width/3 Band_Width/3];
YY_Line = [Corr_Europe_Female_Percentiles(1) Corr_Europe_Female_Percentiles(1)]; % %5 percentile
LL = line(XX_Line,YY_Line,'linewidth',My_LineWidth_1,'Color',[0 0 0]);
YY_Line = [Corr_Europe_Female_Percentiles(7) Corr_Europe_Female_Percentiles(7)]; % %95 percentile
LL = line(XX_Line,YY_Line,'linewidth',My_LineWidth_1,'Color',[0 0 0]);
XX_Line = [3 3];
YY_Line = [Corr_Europe_Female_Percentiles(1) Corr_Europe_Female_Percentiles(3)];
LL = line(XX_Line,YY_Line,'LineStyle','--','linewidth',My_LineWidth_1,'Color',[0 0 0]);
YY_Line = [Corr_Europe_Female_Percentiles(5) Corr_Europe_Female_Percentiles(7)];
LL = line(XX_Line,YY_Line,'LineStyle','--','linewidth',My_LineWidth_1,'Color',[0 0 0]);

% r<0.97
[M N] = size(Corr_Europe_Female); % Europe
N_Europe_Female = N;
My_N_Europe_Female = 0;
for i = 1:N
    if Corr_Europe_Female(i) < 0.97
        My_N_Europe_Female = My_N_Europe_Female + 1;
    end
end
% text
My_text = ['r < 0.97' newline() '(' num2str(round((My_N_Europe_Female/N_Europe_Female)*100,1)) '%)'];
XX_Text = 3.5;
YY_Text = 0.952;
Text = text(XX_Text,YY_Text,My_text,'FontSize',12,'FontName',My_FontName,'HorizontalAlignment','center');

% r<0.95
[M N] = size(Corr_Europe_Female); % Europe
N_Europe_Female = N;
My_N_Europe_Female = 0;
for i = 1:N
    if Corr_Europe_Female(i) < 0.95
        My_N_Europe_Female = My_N_Europe_Female + 1;
    end
end
% text
My_text = ['r < 0.95' newline() '(' num2str(round((My_N_Europe_Female/N_Europe_Female)*100,1)) '%)'];
XX_Text = 3.5;
YY_Text = 0.945;
Text = text(XX_Text,YY_Text,My_text,'FontSize',12,'FontName',My_FontName,'HorizontalAlignment','center');

% distribution curve
nbins = 50;
figure;
HH_Female = histogram(Corr_Europe_Female,nbins);
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
XX = Corr_Europe_Female_Percentiles(1):0.0005:Corr_Europe_Female_Percentiles(7);
YY = fitobject(XX)/max(fitobject(XX))*0.8+3;
H1 = plot(YY,XX,'LineWidth',My_LineWidth-0.5,'Color',My_Colors_4_1(2,:));

%% America
XX_Fill = [5-Band_Width/2 5+Band_Width/2 5+Band_Width/2 5-Band_Width/2];
YY_Fill = [Corr_America_Female_Percentiles(3) Corr_America_Female_Percentiles(3) Corr_America_Female_Percentiles(4) Corr_America_Female_Percentiles(4)]; % 25至50
H1 = fill(XX_Fill,YY_Fill,My_Colors_4_1(3,:),'linewidth',My_LineWidth_1);
set(H1,'edgealpha',1,'facealpha',Alpha);
YY_Fill = [Corr_America_Female_Percentiles(4) Corr_America_Female_Percentiles(4) Corr_America_Female_Percentiles(5) Corr_America_Female_Percentiles(5)]; % 50至75
H1 = fill(XX_Fill,YY_Fill,My_Colors_4_1(3,:));
set(H1,'edgealpha',1,'facealpha',Alpha,'linewidth',My_LineWidth_1);
XX_Line = 5+[-Band_Width/3 Band_Width/3];
YY_Line = [Corr_America_Female_Percentiles(1) Corr_America_Female_Percentiles(1)]; % %5 percentile
LL = line(XX_Line,YY_Line,'linewidth',My_LineWidth_1,'Color',[0 0 0]);
YY_Line = [Corr_America_Female_Percentiles(7) Corr_America_Female_Percentiles(7)]; % %95 percentile
LL = line(XX_Line,YY_Line,'linewidth',My_LineWidth_1,'Color',[0 0 0]);
XX_Line = [5 5];
YY_Line = [Corr_America_Female_Percentiles(1) Corr_America_Female_Percentiles(3)];
LL = line(XX_Line,YY_Line,'LineStyle','--','linewidth',My_LineWidth_1,'Color',[0 0 0]);
YY_Line = [Corr_America_Female_Percentiles(5) Corr_America_Female_Percentiles(7)];
LL = line(XX_Line,YY_Line,'LineStyle','--','linewidth',My_LineWidth_1,'Color',[0 0 0]);

% r<0.97
[M N] = size(Corr_America_Female); % America
N_America_Female = N;
My_N_America_Female = 0;
for i = 1:N
    if Corr_America_Female(i) < 0.97
        My_N_America_Female = My_N_America_Female + 1;
    end
end
% text
My_text = ['r < 0.97' newline() '(' num2str(round((My_N_America_Female/N_America_Female)*100,1)) '%)'];
XX_Text = 5.5;
YY_Text = 0.952;
Text = text(XX_Text,YY_Text,My_text,'FontSize',12,'FontName',My_FontName,'HorizontalAlignment','center');

% r<0.95
[M N] = size(Corr_America_Female); % America
N_America_Female = N;
My_N_America_Female = 0;
for i = 1:N
    if Corr_America_Female(i) < 0.95
        My_N_America_Female = My_N_America_Female + 1;
    end
end
% text
My_text = ['r < 0.95' newline() '(' num2str(round((My_N_America_Female/N_America_Female)*100,1)) '%)'];
XX_Text = 5.5;
YY_Text = 0.945;
Text = text(XX_Text,YY_Text,My_text,'FontSize',12,'FontName',My_FontName,'HorizontalAlignment','center');

% distribution curve
nbins = 25;
figure;
HH_Female = histogram(Corr_America_Female,nbins);
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
XX = Corr_America_Female_Percentiles(1):0.0005:Corr_America_Female_Percentiles(7);
YY = fitobject(XX)/max(fitobject(XX))*0.8+5;
H1 = plot(YY,XX,'LineWidth',My_LineWidth-0.5,'Color',My_Colors_4_1(3,:));

%% Asian
XX_Fill = [7-Band_Width/2 7+Band_Width/2 7+Band_Width/2 7-Band_Width/2];
YY_Fill = [Corr_Asian_Female_Percentiles(3) Corr_Asian_Female_Percentiles(3) Corr_Asian_Female_Percentiles(4) Corr_Asian_Female_Percentiles(4)]; % 25至50
H1 = fill(XX_Fill,YY_Fill,My_Colors_4_1(4,:),'linewidth',My_LineWidth_1);
set(H1,'edgealpha',1,'facealpha',Alpha);
YY_Fill = [Corr_Asian_Female_Percentiles(4) Corr_Asian_Female_Percentiles(4) Corr_Asian_Female_Percentiles(5) Corr_Asian_Female_Percentiles(5)]; % 50至75
H1 = fill(XX_Fill,YY_Fill,My_Colors_4_1(4,:));
set(H1,'edgealpha',1,'facealpha',Alpha,'linewidth',My_LineWidth_1);
XX_Line = 7+[-Band_Width/3 Band_Width/3];
YY_Line = [Corr_Asian_Female_Percentiles(1) Corr_Asian_Female_Percentiles(1)]; % %5 percentile
LL = line(XX_Line,YY_Line,'linewidth',My_LineWidth_1,'Color',[0 0 0]);
YY_Line = [Corr_Asian_Female_Percentiles(7) Corr_Asian_Female_Percentiles(7)]; % %95 percentile
LL = line(XX_Line,YY_Line,'linewidth',My_LineWidth_1,'Color',[0 0 0]);
XX_Line = [7 7];
YY_Line = [Corr_Asian_Female_Percentiles(1) Corr_Asian_Female_Percentiles(3)];
LL = line(XX_Line,YY_Line,'LineStyle','--','linewidth',My_LineWidth_1,'Color',[0 0 0]);
YY_Line = [Corr_Asian_Female_Percentiles(5) Corr_Asian_Female_Percentiles(7)];
LL = line(XX_Line,YY_Line,'LineStyle','--','linewidth',My_LineWidth_1,'Color',[0 0 0]);

% r<0.97
[M N] = size(Corr_Asian_Female); % Asian
N_Asian_Female = N;
My_N_Asian_Female = 0;
for i = 1:N
    if Corr_Asian_Female(i) < 0.97
        My_N_Asian_Female = My_N_Asian_Female + 1;
    end
end
% text
My_text = ['r < 0.97' newline() '(' num2str(round((My_N_Asian_Female/N_Asian_Female)*100,1)) '%)'];
XX_Text = 7.5;
YY_Text = 0.952;
Text = text(XX_Text,YY_Text,My_text,'FontSize',12,'FontName',My_FontName,'HorizontalAlignment','center');

% r<0.95
[M N] = size(Corr_Asian_Female); % Asian
N_Asian_Female = N;
My_N_Asian_Female = 0;
for i = 1:N
    if Corr_Asian_Female(i) < 0.95
        My_N_Asian_Female = My_N_Asian_Female + 1;
    end
end
% text
My_text = ['r < 0.95' newline() '(' num2str(round((My_N_Asian_Female/N_Asian_Female)*100,1)) '%)'];
XX_Text = 7.5;
YY_Text = 0.945;
Text = text(XX_Text,YY_Text,My_text,'FontSize',12,'FontName',My_FontName,'HorizontalAlignment','center');

% distribution curve
nbins = 25;
figure;
HH_Female = histogram(Corr_Asian_Female,nbins);
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
XX = Corr_Asian_Female_Percentiles(1):0.0005:Corr_Asian_Female_Percentiles(7);
YY = fitobject(XX)/max(fitobject(XX))*0.8+7;
H1 = plot(YY,XX,'LineWidth',My_LineWidth-0.5,'Color',My_Colors_4_1(4,:));

