%% Source codes for Figure 3(B)
% Use Boxplot to statistically compare the distribution of the upper height limit
% Female: Age > 20
% Male: Age > 25
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
%% Load the data
load('Figure_3A.mat')
%%

% For Female
UPP_lim_Ht_Female = [];
% Total_ALL
[M N] = size(Age_Total_ALL);
for i = 1:N
    if Age_Total_ALL(i) > 20
        UPP_lim_Ht_Female = [UPP_lim_Ht_Female UPP_lim_Ht_Total_ALL_Female(i)];
    end
end
% America_ALL
[M N] = size(Age_America_ALL);
for i = 1:N
    if Age_America_ALL(i) > 20
        UPP_lim_Ht_Female = [UPP_lim_Ht_Female UPP_lim_Ht_America_ALL_Female(i)];
    end
end
% Asia_ALL
[M N] = size(Age_America_ALL);
for i = 1:N
    if Age_America_ALL(i) > 20
        UPP_lim_Ht_Female = [UPP_lim_Ht_Female UPP_lim_Ht_America_ALL_Female(i)];
    end
end
% Europe_ALL
[M N] = size(Age_Europe_ALL);
for i = 1:N
    if Age_Europe_ALL(i) > 20
        UPP_lim_Ht_Female = [UPP_lim_Ht_Female UPP_lim_Ht_Europe_ALL_Female(i)];
    end
end

% For Male
UPP_lim_Ht_Male = [];
% Total_ALL
[M N] = size(Age_Total_ALL);
for i = 1:N
    if Age_Total_ALL(i) > 25
        UPP_lim_Ht_Male = [UPP_lim_Ht_Male UPP_lim_Ht_Total_ALL_Male(i)];
    end
end
% America_ALL
[M N] = size(Age_America_ALL);
for i = 1:N
    if Age_America_ALL(i) > 25
        UPP_lim_Ht_Male = [UPP_lim_Ht_Male UPP_lim_Ht_America_ALL_Male(i)];
    end
end
% Asia_ALL
[M N] = size(Age_America_ALL);
for i = 1:N
    if Age_America_ALL(i) > 25
        UPP_lim_Ht_Male = [UPP_lim_Ht_Male UPP_lim_Ht_America_ALL_Male(i)];
    end
end
% Europe_ALL
[M N] = size(Age_Europe_ALL);
for i = 1:N
    if Age_Europe_ALL(i) > 25
        UPP_lim_Ht_Male = [UPP_lim_Ht_Male UPP_lim_Ht_Europe_ALL_Male(i)];
    end
end

%% We show the results
FF = figure;
hold on;
%title('Female')
%xlabel('Age (yr)');
ylabel('Upper limit for height (m)');
xlim([0.2 4.4]);
ylim([1 2.2]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)
Band_Width = 0.6; % Length
set(gca,'YTick',[1 1.2 1.4 1.6 1.805 1.983 2.2],'XTicklabel',{'1','1.2','1.4','1.6','1.805','1.983','2.2'});
set(gca,'XTick',[1.5 3.5],'XTicklabel',{'Female','Male'});

xxx = 0:0.1:9;
yyy = 1.805+xxx*0;
plot(xxx,yyy,'-.','linewidth',1,'color','k')

xxx = 0:0.1:9;
yyy = 1.983+xxx*0;
plot(xxx,yyy,'-.','linewidth',1,'color','k')

UPP_lim_Ht_Female_Outside_5th = [];
UPP_lim_Ht_Female_Outside_95th = [];
UPP_lim_Ht_Male_Outside_5th = [];
UPP_lim_Ht_Male_Outside_95th = [];

My_p = [5 10 25 50 75 90 95]; % percentiles
UPP_lim_Ht_Female_Percentiles = prctile(UPP_lim_Ht_Female,My_p);
UPP_lim_Ht_Male_Percentiles = prctile(UPP_lim_Ht_Male,My_p);

% Female
[M N] = size(UPP_lim_Ht_Female);
for i = 1: N
    if UPP_lim_Ht_Female(i) < UPP_lim_Ht_Female_Percentiles(1)
        UPP_lim_Ht_Female_Outside_5th = [UPP_lim_Ht_Female_Outside_5th UPP_lim_Ht_Female(i)];
    end
    if UPP_lim_Ht_Female(i) > UPP_lim_Ht_Female_Percentiles(7)
        UPP_lim_Ht_Female_Outside_95th = [UPP_lim_Ht_Female_Outside_95th UPP_lim_Ht_Female(i)];
    end
end

% Male
[M N] = size(UPP_lim_Ht_Male);
for i = 1: N
    if UPP_lim_Ht_Male(i) < UPP_lim_Ht_Male_Percentiles(1)
        UPP_lim_Ht_Male_Outside_5th = [UPP_lim_Ht_Male_Outside_5th UPP_lim_Ht_Male(i)];
    end
    if UPP_lim_Ht_Male(i) > UPP_lim_Ht_Male_Percentiles(7)
        UPP_lim_Ht_Male_Outside_95th = [UPP_lim_Ht_Male_Outside_95th UPP_lim_Ht_Male(i)];
    end
end

%% Female
XX_Fill = [1-Band_Width/2 1+Band_Width/2 1+Band_Width/2 1-Band_Width/2];
YY_Fill = [UPP_lim_Ht_Female_Percentiles(3) UPP_lim_Ht_Female_Percentiles(3) UPP_lim_Ht_Female_Percentiles(4) UPP_lim_Ht_Female_Percentiles(4)]; % 25至50
H1 = fill(XX_Fill,YY_Fill,My_Colors_4_1(1,:),'linewidth',My_LineWidth_1);
set(H1,'edgealpha',1,'facealpha',Alpha);
YY_Fill = [UPP_lim_Ht_Female_Percentiles(4) UPP_lim_Ht_Female_Percentiles(4) UPP_lim_Ht_Female_Percentiles(5) UPP_lim_Ht_Female_Percentiles(5)]; % 50至75
H1 = fill(XX_Fill,YY_Fill,My_Colors_4_1(1,:));
set(H1,'edgealpha',1,'facealpha',Alpha,'linewidth',My_LineWidth_1);
XX_Line = 1+[-Band_Width/3 Band_Width/3];
YY_Line = [UPP_lim_Ht_Female_Percentiles(1) UPP_lim_Ht_Female_Percentiles(1)]; % %5 percentile
LL = line(XX_Line,YY_Line,'linewidth',My_LineWidth_1,'Color',[0 0 0]);
YY_Line = [UPP_lim_Ht_Female_Percentiles(7) UPP_lim_Ht_Female_Percentiles(7)]; % %95 percentile
LL = line(XX_Line,YY_Line,'linewidth',My_LineWidth_1,'Color',[0 0 0]);
XX_Line = [1 1];
YY_Line = [UPP_lim_Ht_Female_Percentiles(1) UPP_lim_Ht_Female_Percentiles(3)];
LL = line(XX_Line,YY_Line,'LineStyle','--','linewidth',My_LineWidth_1,'Color',[0 0 0]);
YY_Line = [UPP_lim_Ht_Female_Percentiles(5) UPP_lim_Ht_Female_Percentiles(7)];
LL = line(XX_Line,YY_Line,'LineStyle','--','linewidth',My_LineWidth_1,'Color',[0 0 0]);


% text
My_text = 'Age > 20';
XX_Text = 1.25;
YY_Text = 1.9;
Text = text(XX_Text,YY_Text,My_text,'FontSize',12,'FontName',My_FontName,'HorizontalAlignment','center');
%}

% distribution curve
nbins = 12;
figure;
HH_Female = histogram(UPP_lim_Ht_Female,nbins);
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
XX = UPP_lim_Ht_Female_Percentiles(1):0.0005:UPP_lim_Ht_Female_Percentiles(7);
YY = fitobject(XX)/max(fitobject(XX))*0.8+1;
H1 = plot(YY,XX,'LineWidth',My_LineWidth-0.5,'Color',My_Colors_4_1(1,:));

%% Male
XX_Fill = [3-Band_Width/2 3+Band_Width/2 3+Band_Width/2 3-Band_Width/2];
YY_Fill = [UPP_lim_Ht_Male_Percentiles(3) UPP_lim_Ht_Male_Percentiles(3) UPP_lim_Ht_Male_Percentiles(4) UPP_lim_Ht_Male_Percentiles(4)]; % 25至50
H1 = fill(XX_Fill,YY_Fill,My_Colors_4_1(2,:),'linewidth',My_LineWidth_1);
set(H1,'edgealpha',1,'facealpha',Alpha);
YY_Fill = [UPP_lim_Ht_Male_Percentiles(4) UPP_lim_Ht_Male_Percentiles(4) UPP_lim_Ht_Male_Percentiles(5) UPP_lim_Ht_Male_Percentiles(5)]; % 50至75
H1 = fill(XX_Fill,YY_Fill,My_Colors_4_1(2,:));
set(H1,'edgealpha',1,'facealpha',Alpha,'linewidth',My_LineWidth_1);
XX_Line = 3+[-Band_Width/3 Band_Width/3];
YY_Line = [UPP_lim_Ht_Male_Percentiles(1) UPP_lim_Ht_Male_Percentiles(1)]; % %5 percentile
LL = line(XX_Line,YY_Line,'linewidth',My_LineWidth_1,'Color',[0 0 0]);
YY_Line = [UPP_lim_Ht_Male_Percentiles(7) UPP_lim_Ht_Male_Percentiles(7)]; % %95 percentile
LL = line(XX_Line,YY_Line,'linewidth',My_LineWidth_1,'Color',[0 0 0]);
XX_Line = [3 3];
YY_Line = [UPP_lim_Ht_Male_Percentiles(1) UPP_lim_Ht_Male_Percentiles(3)];
LL = line(XX_Line,YY_Line,'LineStyle','--','linewidth',My_LineWidth_1,'Color',[0 0 0]);
YY_Line = [UPP_lim_Ht_Male_Percentiles(5) UPP_lim_Ht_Male_Percentiles(7)];
LL = line(XX_Line,YY_Line,'LineStyle','--','linewidth',My_LineWidth_1,'Color',[0 0 0]);


% text
My_text = 'Age > 25';
XX_Text = 3.25;
YY_Text = 2.1;
Text = text(XX_Text,YY_Text,My_text,'FontSize',12,'FontName',My_FontName,'HorizontalAlignment','center');

% distribution curve
nbins = 12;
figure;
HH_Male = histogram(UPP_lim_Ht_Male,nbins);
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
XX = UPP_lim_Ht_Male_Percentiles(1):0.0005:UPP_lim_Ht_Male_Percentiles(7);
YY = fitobject(XX)/max(fitobject(XX))*0.8+3;
H1 = plot(YY,XX,'LineWidth',My_LineWidth-0.5,'Color',My_Colors_4_1(2,:));
