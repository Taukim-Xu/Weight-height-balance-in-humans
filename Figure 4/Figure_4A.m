%% Source codes for Figure 4(A)
% Comparison of the distribution curves for the sWHI and BMI among individuals from different continents.
%
%% Parameter information for drawing
My_mark_type = '.';
My_LineWidth = 1.5;
My_LineWidth_1 = 1;
My_FontName = 'Times New Roman';
My_fontSize = 12;
My_Alpha = 0.2; % transparency of the filled area
My_MarkerSize = 2;
Edgealpha = 0;
Alpha = 0.2;
My_Percentile = [5 50 95]; % quantile distribution
Band_Width = 1;
%% Colors
load('My_Colors.mat')
%% We show the results
FF = figure;
%% sWHI
% Loading the sWHIs
load('sWHI_01_NHANES__.mat')
load('sWHI_02_ENSAUNT__.mat')
load('sWHI_03_KNHANES__.mat')
load('sWHI_04_SHARE__.mat')
load('sWHI_05_KSPF__.mat')
load('sWHI_06_ELSH_Brasil__.mat')
load('sWHI_07_China__.mat')
load('sWHI_08_Japan__.mat')
load('sWHI_09_Bangladesh__.mat')
%% 
subplot(2,3,1); % For Female
hold on;
title('Female')
%xlabel('sWHI');
ylabel('Normalized count')
xlim([0.85 1.15]);
ylim([0 1.2]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

set(gca,'XTick',[0.85 0.9 0.95 1 1.05 1.1 1.15],'XTicklabel',{'0.85','0.9','0.95','1','1.05','1.1','1.15'});

% 01-NHANES
nbins = 100;
figure;
HH_Female = histogram(sWHI_Female_01_NHANES_All__,nbins);

figure(FF)
xx = HH_Female.BinEdges;
yy = HH_Female.Values/max(HH_Female.Values);
[M N] = size(HH_Female.BinEdges);
for i = 1:N-1
    X_Fill = [xx(i) xx(i+1) xx(i+1) xx(i)];
    Y_Fill = [0 0 yy(i) yy(i)];
    H = fill(X_Fill,Y_Fill,My_Colors_9(1,:));
    set(H,'edgealpha',0.1,'facealpha',My_Alpha);
end
My_P = prctile(sWHI_Female_01_NHANES_All__,My_Percentile);
[M N] = size(HH_Female.BinEdges);
x_data = [];
y_data = HH_Female.Values;
for i = 1:N-1
    x_data = [x_data (xx(i)+xx(i+1))/2];
end
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = min(xx):0.001:max(xx);
YY = fitobject(XX);
%YY = YY/(max(yy));
H1 = plot(XX,YY/max(YY),'LineWidth',My_LineWidth,'Color',My_Colors_9(1,:));

% 5th and 95th
Prctile_Female = prctile(sWHI_Female_01_NHANES_All__,My_Percentile);
XX = [Prctile_Female(1) Prctile_Female(1)]; 
YY = [0 1.2]; 
HH1 = plot(XX,YY,':','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(1,:)); % 5th
XX = [Prctile_Female(3) Prctile_Female(3)]; 
YY = [0 1.2]; 
HH2 = plot(XX,YY,'--','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(1,:)); % 95th

% 02-ENSAUNT
nbins = 200;
figure;
HH_Female = histogram(sWHI_Female_02_ENSAUNT_All__,nbins);

figure(FF)
xx = HH_Female.BinEdges;
yy = HH_Female.Values/max(HH_Female.Values);
[M N] = size(HH_Female.BinEdges);
for i = 1:N-1
    X_Fill = [xx(i) xx(i+1) xx(i+1) xx(i)];
    Y_Fill = [0 0 yy(i) yy(i)];
    H = fill(X_Fill,Y_Fill,My_Colors_9(2,:));
    set(H,'edgealpha',0.1,'facealpha',My_Alpha);
end
My_P = prctile(sWHI_Female_02_ENSAUNT_All__,My_Percentile);
[M N] = size(HH_Female.BinEdges);
x_data = [];
y_data = HH_Female.Values;
for i = 1:N-1
    x_data = [x_data (xx(i)+xx(i+1))/2];
end
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = min(xx):0.001:max(xx);
YY = fitobject(XX);
%YY = YY/(max(yy));
H2 = plot(XX,YY/max(YY),'LineWidth',My_LineWidth,'Color',My_Colors_9(2,:));

% 5th and 95th
Prctile_Female = prctile(sWHI_Female_02_ENSAUNT_All__,My_Percentile);
XX = [Prctile_Female(1) Prctile_Female(1)]; 
YY = [0 1.2]; 
HH1 = plot(XX,YY,':','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(2,:)); % 5th
XX = [Prctile_Female(3) Prctile_Female(3)]; 
YY = [0 1.2]; 
HH2 = plot(XX,YY,'--','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(2,:)); % 95th

% 03-KNHANES
nbins = 200;
figure;
HH_Female = histogram(sWHI_Female_03_KNHANES_All__,nbins);

figure(FF)
xx = HH_Female.BinEdges;
yy = HH_Female.Values/max(HH_Female.Values);
[M N] = size(HH_Female.BinEdges);
for i = 1:N-1
    X_Fill = [xx(i) xx(i+1) xx(i+1) xx(i)];
    Y_Fill = [0 0 yy(i) yy(i)];
    H = fill(X_Fill,Y_Fill,My_Colors_9(3,:));
    set(H,'edgealpha',0.1,'facealpha',My_Alpha);
end
My_P = prctile(sWHI_Female_03_KNHANES_All__,My_Percentile);
[M N] = size(HH_Female.BinEdges);
x_data = [];
y_data = HH_Female.Values;
for i = 1:N-1
    x_data = [x_data (xx(i)+xx(i+1))/2];
end
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = min(xx):0.001:max(xx);
YY = fitobject(XX);
%YY = YY/(max(yy));
H3 = plot(XX,YY/max(YY),'LineWidth',My_LineWidth,'Color',My_Colors_9(3,:));

% 5th and 95th
Prctile_Female = prctile(sWHI_Female_03_KNHANES_All__,My_Percentile);
XX = [Prctile_Female(1) Prctile_Female(1)]; 
YY = [0 1.2]; 
HH1 = plot(XX,YY,':','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(3,:)); % 5th
XX = [Prctile_Female(3) Prctile_Female(3)]; 
YY = [0 1.2]; 
HH2 = plot(XX,YY,'--','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(3,:)); % 95th

subplot(2,3,4); % For Female
hold on;
%title('Female')
xlabel('sWHI');
ylabel('Normalized count')
xlim([0.85 1.15]);
ylim([0 1.2]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

set(gca,'XTick',[0.85 0.9 0.95 1 1.05 1.1 1.15],'XTicklabel',{'0.85','0.9','0.95','1','1.05','1.1','1.15'});

% 04-SHARE
nbins = 70;
figure;
HH_Female = histogram(sWHI_Female_04_SHARE_All__,nbins);

figure(FF)
xx = HH_Female.BinEdges;
yy = HH_Female.Values/max(HH_Female.Values);
[M N] = size(HH_Female.BinEdges);
for i = 1:N-1
    X_Fill = [xx(i) xx(i+1) xx(i+1) xx(i)];
    Y_Fill = [0 0 yy(i) yy(i)];
    H = fill(X_Fill,Y_Fill,My_Colors_9(4,:));
    set(H,'edgealpha',0.1,'facealpha',My_Alpha);
end
My_P = prctile(sWHI_Female_04_SHARE_All__,My_Percentile);
[M N] = size(HH_Female.BinEdges);
x_data = [];
y_data = HH_Female.Values;
for i = 1:N-1
    x_data = [x_data (xx(i)+xx(i+1))/2];
end
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = min(xx):0.001:max(xx);
YY = fitobject(XX);
%YY = YY/(max(yy));
H4 = plot(XX,YY/max(YY),'LineWidth',My_LineWidth,'Color',My_Colors_9(4,:));

% 5th and 95th
Prctile_Female = prctile(sWHI_Female_04_SHARE_All__,My_Percentile);
XX = [Prctile_Female(1) Prctile_Female(1)]; 
YY = [0 1.2]; 
HH1 = plot(XX,YY,':','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(4,:)); % 5th
XX = [Prctile_Female(3) Prctile_Female(3)]; 
YY = [0 1.2]; 
HH2 = plot(XX,YY,'--','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(4,:)); % 95th

% 05-KSPF
nbins = 100;
figure;
HH_Female = histogram(sWHI_Female_05_KSPF_All__,nbins);

figure(FF)
xx = HH_Female.BinEdges;
yy = HH_Female.Values/max(HH_Female.Values);
[M N] = size(HH_Female.BinEdges);
for i = 1:N-1
    X_Fill = [xx(i) xx(i+1) xx(i+1) xx(i)];
    Y_Fill = [0 0 yy(i) yy(i)];
    H = fill(X_Fill,Y_Fill,My_Colors_9(5,:));
    set(H,'edgealpha',0.1,'facealpha',My_Alpha);
end
My_P = prctile(sWHI_Female_05_KSPF_All__,My_Percentile);
[M N] = size(HH_Female.BinEdges);
x_data = [];
y_data = HH_Female.Values;
for i = 1:N-1
    x_data = [x_data (xx(i)+xx(i+1))/2];
end
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = min(xx):0.001:max(xx);
YY = fitobject(XX);
%YY = YY/(max(yy));
H5 = plot(XX,YY/max(YY),'LineWidth',My_LineWidth,'Color',My_Colors_9(5,:));

% 5th and 95th
Prctile_Female = prctile(sWHI_Female_05_KSPF_All__,My_Percentile);
XX = [Prctile_Female(1) Prctile_Female(1)]; 
YY = [0 1.2]; 
HH1 = plot(XX,YY,':','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(5,:)); % 5th
XX = [Prctile_Female(3) Prctile_Female(3)]; 
YY = [0 1.2]; 
HH2 = plot(XX,YY,'--','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(5,:)); % 95th

% 06-ELSH-Brasil
nbins = 30;
figure;
HH_Female = histogram(sWHI_Female_06_ELSH_Brasil_All__,nbins);

figure(FF)
xx = HH_Female.BinEdges;
yy = HH_Female.Values/max(HH_Female.Values);
[M N] = size(HH_Female.BinEdges);
for i = 1:N-1
    X_Fill = [xx(i) xx(i+1) xx(i+1) xx(i)];
    Y_Fill = [0 0 yy(i) yy(i)];
    H = fill(X_Fill,Y_Fill,My_Colors_9(6,:));
    set(H,'edgealpha',0.1,'facealpha',My_Alpha);
end
My_P = prctile(sWHI_Female_06_ELSH_Brasil_All__,My_Percentile);
[M N] = size(HH_Female.BinEdges);
x_data = [];
y_data = HH_Female.Values;
for i = 1:N-1
    x_data = [x_data (xx(i)+xx(i+1))/2];
end
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = min(xx):0.001:max(xx);
YY = fitobject(XX);
%YY = YY/(max(yy));
H6 = plot(XX,YY/max(YY),'LineWidth',My_LineWidth,'Color',My_Colors_9(6,:));

% 5th and 95th
Prctile_Female = prctile(sWHI_Female_06_ELSH_Brasil_All__,My_Percentile);
XX = [Prctile_Female(1) Prctile_Female(1)]; 
YY = [0 1.2]; 
HH1 = plot(XX,YY,':','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(6,:)); % 5th
XX = [Prctile_Female(3) Prctile_Female(3)]; 
YY = [0 1.2]; 
HH2 = plot(XX,YY,'--','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(6,:)); % 95th

% 07-China
nbins = 40;
figure;
HH_Female = histogram(sWHI_Female_07_China_All__,nbins);

figure(FF)
xx = HH_Female.BinEdges;
yy = HH_Female.Values/max(HH_Female.Values);
[M N] = size(HH_Female.BinEdges);
for i = 1:N-1
    X_Fill = [xx(i) xx(i+1) xx(i+1) xx(i)];
    Y_Fill = [0 0 yy(i) yy(i)];
    H = fill(X_Fill,Y_Fill,My_Colors_9(7,:));
    set(H,'edgealpha',0.1,'facealpha',My_Alpha);
end
My_P = prctile(sWHI_Female_07_China_All__,My_Percentile);
[M N] = size(HH_Female.BinEdges);
x_data = [];
y_data = HH_Female.Values;
for i = 1:N-1
    x_data = [x_data (xx(i)+xx(i+1))/2];
end
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = min(xx):0.001:max(xx);
YY = fitobject(XX);
%YY = YY/(max(yy));
H7 = plot(XX,YY/max(YY),'LineWidth',My_LineWidth,'Color',My_Colors_9(7,:));

% 5th and 95th
Prctile_Female = prctile(sWHI_Female_07_China_All__,My_Percentile);
XX = [Prctile_Female(1) Prctile_Female(1)]; 
YY = [0 1.2]; 
HH1 = plot(XX,YY,':','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(7,:)); % 5th
XX = [Prctile_Female(3) Prctile_Female(3)]; 
YY = [0 1.2]; 
HH2 = plot(XX,YY,'--','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(7,:)); % 95th

% 08-Japan
nbins = 20;
figure;
HH_Female = histogram(sWHI_Female_08_Japan_All__,nbins);

figure(FF)
xx = HH_Female.BinEdges;
yy = HH_Female.Values/max(HH_Female.Values);
[M N] = size(HH_Female.BinEdges);
for i = 1:N-1
    X_Fill = [xx(i) xx(i+1) xx(i+1) xx(i)];
    Y_Fill = [0 0 yy(i) yy(i)];
    H = fill(X_Fill,Y_Fill,My_Colors_9(8,:));
    set(H,'edgealpha',0.1,'facealpha',My_Alpha);
end
My_P = prctile(sWHI_Female_08_Japan_All__,My_Percentile);
[M N] = size(HH_Female.BinEdges);
x_data = [];
y_data = HH_Female.Values;
for i = 1:N-1
    x_data = [x_data (xx(i)+xx(i+1))/2];
end
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = min(xx):0.001:max(xx);
YY = fitobject(XX);
%YY = YY/(max(yy));
H8 = plot(XX,YY/max(YY),'LineWidth',My_LineWidth,'Color',My_Colors_9(8,:));

% 5th and 95th
Prctile_Female = prctile(sWHI_Female_08_Japan_All__,My_Percentile);
XX = [Prctile_Female(1) Prctile_Female(1)]; 
YY = [0 1.2]; 
HH1 = plot(XX,YY,':','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(8,:)); % 5th
XX = [Prctile_Female(3) Prctile_Female(3)]; 
YY = [0 1.2]; 
HH2 = plot(XX,YY,'--','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(8,:)); % 95th

% 09-Bangladesh
nbins = 50;
figure;
HH_Female = histogram(sWHI_Female_09_Bangladesh_All__,nbins);

figure(FF)
xx = HH_Female.BinEdges;
yy = HH_Female.Values/max(HH_Female.Values);
[M N] = size(HH_Female.BinEdges);
for i = 1:N-1
    X_Fill = [xx(i) xx(i+1) xx(i+1) xx(i)];
    Y_Fill = [0 0 yy(i) yy(i)];
    H = fill(X_Fill,Y_Fill,My_Colors_9(9,:));
    set(H,'edgealpha',0.1,'facealpha',My_Alpha);
end
My_P = prctile(sWHI_Female_09_Bangladesh_All__,My_Percentile);
[M N] = size(HH_Female.BinEdges);
x_data = [];
y_data = HH_Female.Values;
for i = 1:N-1
    x_data = [x_data (xx(i)+xx(i+1))/2];
end
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = min(xx):0.001:max(xx);
YY = fitobject(XX);
%YY = YY/(max(yy));
H9 = plot(XX,YY/max(YY),'LineWidth',My_LineWidth,'Color',My_Colors_9(9,:));

% 5th and 95th
Prctile_Female = prctile(sWHI_Female_09_Bangladesh_All__,My_Percentile);
XX = [Prctile_Female(1) Prctile_Female(1)]; 
YY = [0 1.2]; 
HH1 = plot(XX,YY,':','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(9,:)); % 5th
XX = [Prctile_Female(3) Prctile_Female(3)]; 
YY = [0 1.2]; 
HH2 = plot(XX,YY,'--','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(9,:)); % 95th

%% 
subplot(2,3,2); % For Male
hold on;
title('Male')
%xlabel('sWHI');
%ylabel('Normalized count')
xlim([0.85 1.15]);
ylim([0 1.2]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

set(gca,'XTick',[0.85 0.9 0.95 1 1.05 1.1 1.15],'XTicklabel',{'0.85','0.9','0.95','1','1.05','1.1','1.15'});

% 01-NHANES
nbins = 100;
figure;
HH_Male = histogram(sWHI_Male_01_NHANES_All__,nbins);

figure(FF)
xx = HH_Male.BinEdges;
yy = HH_Male.Values/max(HH_Male.Values);
[M N] = size(HH_Male.BinEdges);
for i = 1:N-1
    X_Fill = [xx(i) xx(i+1) xx(i+1) xx(i)];
    Y_Fill = [0 0 yy(i) yy(i)];
    H = fill(X_Fill,Y_Fill,My_Colors_9(1,:));
    set(H,'edgealpha',0.1,'facealpha',My_Alpha);
end
My_P = prctile(sWHI_Male_01_NHANES_All__,My_Percentile);
[M N] = size(HH_Male.BinEdges);
x_data = [];
y_data = HH_Male.Values;
for i = 1:N-1
    x_data = [x_data (xx(i)+xx(i+1))/2];
end
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = min(xx):0.001:max(xx);
YY = fitobject(XX);
%YY = YY/(max(yy));
H1 = plot(XX,YY/max(YY),'LineWidth',My_LineWidth,'Color',My_Colors_9(1,:));

% 5th and 95th
Prctile_Male = prctile(sWHI_Male_01_NHANES_All__,My_Percentile);
XX = [Prctile_Male(1) Prctile_Male(1)]; 
YY = [0 1.2]; 
HH1 = plot(XX,YY,':','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(1,:)); % 5th
XX = [Prctile_Male(3) Prctile_Male(3)]; 
YY = [0 1.2]; 
HH2 = plot(XX,YY,'--','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(1,:)); % 95th

% 02-ENSAUNT
nbins = 100;
figure;
HH_Male = histogram(sWHI_Male_02_ENSAUNT_All__,nbins);

figure(FF)
xx = HH_Male.BinEdges;
yy = HH_Male.Values/max(HH_Male.Values);
[M N] = size(HH_Male.BinEdges);
for i = 1:N-1
    X_Fill = [xx(i) xx(i+1) xx(i+1) xx(i)];
    Y_Fill = [0 0 yy(i) yy(i)];
    H = fill(X_Fill,Y_Fill,My_Colors_9(2,:));
    set(H,'edgealpha',0.1,'facealpha',My_Alpha);
end
My_P = prctile(sWHI_Male_02_ENSAUNT_All__,My_Percentile);
[M N] = size(HH_Male.BinEdges);
x_data = [];
y_data = HH_Male.Values;
for i = 1:N-1
    x_data = [x_data (xx(i)+xx(i+1))/2];
end
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = min(xx):0.001:max(xx);
YY = fitobject(XX);
%YY = YY/(max(yy));
H2 = plot(XX,YY/max(YY),'LineWidth',My_LineWidth,'Color',My_Colors_9(2,:));

% 5th and 95th
Prctile_Male = prctile(sWHI_Male_02_ENSAUNT_All__,My_Percentile);
XX = [Prctile_Male(1) Prctile_Male(1)]; 
YY = [0 1.2]; 
HH1 = plot(XX,YY,':','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(2,:)); % 5th
XX = [Prctile_Male(3) Prctile_Male(3)]; 
YY = [0 1.2]; 
HH2 = plot(XX,YY,'--','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(2,:)); % 95th

% 03-KNHANES
nbins = 100;
figure;
HH_Male = histogram(sWHI_Male_03_KNHANES_All__,nbins);

figure(FF)
xx = HH_Male.BinEdges;
yy = HH_Male.Values/max(HH_Male.Values);
[M N] = size(HH_Male.BinEdges);
for i = 1:N-1
    X_Fill = [xx(i) xx(i+1) xx(i+1) xx(i)];
    Y_Fill = [0 0 yy(i) yy(i)];
    H = fill(X_Fill,Y_Fill,My_Colors_9(3,:));
    set(H,'edgealpha',0.1,'facealpha',My_Alpha);
end
My_P = prctile(sWHI_Male_03_KNHANES_All__,My_Percentile);
[M N] = size(HH_Male.BinEdges);
x_data = [];
y_data = HH_Male.Values;
for i = 1:N-1
    x_data = [x_data (xx(i)+xx(i+1))/2];
end
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = min(xx):0.001:max(xx);
YY = fitobject(XX);
%YY = YY/(max(yy));
H3 = plot(XX,YY/max(YY),'LineWidth',My_LineWidth,'Color',My_Colors_9(3,:));

% 5th and 95th
Prctile_Male = prctile(sWHI_Male_03_KNHANES_All__,My_Percentile);
XX = [Prctile_Male(1) Prctile_Male(1)]; 
YY = [0 1.2]; 
HH1 = plot(XX,YY,':','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(3,:)); % 5th
XX = [Prctile_Male(3) Prctile_Male(3)]; 
YY = [0 1.2]; 
HH2 = plot(XX,YY,'--','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(3,:)); % 95th

subplot(2,3,5); % For Male
hold on;
%title('Male')
xlabel('sWHI');
%ylabel('Normalized count')
xlim([0.85 1.15]);
ylim([0 1.2]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

set(gca,'XTick',[0.85 0.9 0.95 1 1.05 1.1 1.15],'XTicklabel',{'0.85','0.9','0.95','1','1.05','1.1','1.15'});

% 04-SHARE
nbins = 70;
figure;
HH_Male = histogram(sWHI_Male_04_SHARE_All__,nbins);

figure(FF)
xx = HH_Male.BinEdges;
yy = HH_Male.Values/max(HH_Male.Values);
[M N] = size(HH_Male.BinEdges);
for i = 1:N-1
    X_Fill = [xx(i) xx(i+1) xx(i+1) xx(i)];
    Y_Fill = [0 0 yy(i) yy(i)];
    H = fill(X_Fill,Y_Fill,My_Colors_9(4,:));
    set(H,'edgealpha',0.1,'facealpha',My_Alpha);
end
My_P = prctile(sWHI_Male_04_SHARE_All__,My_Percentile);
[M N] = size(HH_Male.BinEdges);
x_data = [];
y_data = HH_Male.Values;
for i = 1:N-1
    x_data = [x_data (xx(i)+xx(i+1))/2];
end
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = min(xx):0.001:max(xx);
YY = fitobject(XX);
%YY = YY/(max(yy));
H4 = plot(XX,YY/max(YY),'LineWidth',My_LineWidth,'Color',My_Colors_9(4,:));

% 5th and 95th
Prctile_Male = prctile(sWHI_Male_04_SHARE_All__,My_Percentile);
XX = [Prctile_Male(1) Prctile_Male(1)]; 
YY = [0 1.2]; 
HH1 = plot(XX,YY,':','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(4,:)); % 5th
XX = [Prctile_Male(3) Prctile_Male(3)]; 
YY = [0 1.2]; 
HH2 = plot(XX,YY,'--','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(4,:)); % 95th

% 05-KSPF
nbins = 100;
figure;
HH_Male = histogram(sWHI_Male_05_KSPF_All__,nbins);

figure(FF)
xx = HH_Male.BinEdges;
yy = HH_Male.Values/max(HH_Male.Values);
[M N] = size(HH_Male.BinEdges);
for i = 1:N-1
    X_Fill = [xx(i) xx(i+1) xx(i+1) xx(i)];
    Y_Fill = [0 0 yy(i) yy(i)];
    H = fill(X_Fill,Y_Fill,My_Colors_9(5,:));
    set(H,'edgealpha',0.1,'facealpha',My_Alpha);
end
My_P = prctile(sWHI_Male_05_KSPF_All__,My_Percentile);
[M N] = size(HH_Male.BinEdges);
x_data = [];
y_data = HH_Male.Values;
for i = 1:N-1
    x_data = [x_data (xx(i)+xx(i+1))/2];
end
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = min(xx):0.001:max(xx);
YY = fitobject(XX);
%YY = YY/(max(yy));
H5 = plot(XX,YY/max(YY),'LineWidth',My_LineWidth,'Color',My_Colors_9(5,:));

% 5th and 95th
Prctile_Male = prctile(sWHI_Male_05_KSPF_All__,My_Percentile);
XX = [Prctile_Male(1) Prctile_Male(1)]; 
YY = [0 1.2]; 
HH1 = plot(XX,YY,':','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(5,:)); % 5th
XX = [Prctile_Male(3) Prctile_Male(3)]; 
YY = [0 1.2]; 
HH2 = plot(XX,YY,'--','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(5,:)); % 95th

% 06-ELSH-Brasil
nbins = 30;
figure;
HH_Male = histogram(sWHI_Male_06_ELSH_Brasil_All__,nbins);

figure(FF)
xx = HH_Male.BinEdges;
yy = HH_Male.Values/max(HH_Male.Values);
[M N] = size(HH_Male.BinEdges);
for i = 1:N-1
    X_Fill = [xx(i) xx(i+1) xx(i+1) xx(i)];
    Y_Fill = [0 0 yy(i) yy(i)];
    H = fill(X_Fill,Y_Fill,My_Colors_9(6,:));
    set(H,'edgealpha',0.1,'facealpha',My_Alpha);
end
My_P = prctile(sWHI_Male_06_ELSH_Brasil_All__,My_Percentile);
[M N] = size(HH_Male.BinEdges);
x_data = [];
y_data = HH_Male.Values;
for i = 1:N-1
    x_data = [x_data (xx(i)+xx(i+1))/2];
end
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = min(xx):0.001:max(xx);
YY = fitobject(XX);
%YY = YY/(max(yy));
H6 = plot(XX,YY/max(YY),'LineWidth',My_LineWidth,'Color',My_Colors_9(6,:));

% 5th and 95th
Prctile_Male = prctile(sWHI_Male_06_ELSH_Brasil_All__,My_Percentile);
XX = [Prctile_Male(1) Prctile_Male(1)]; 
YY = [0 1.2]; 
HH1 = plot(XX,YY,':','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(6,:)); % 5th
XX = [Prctile_Male(3) Prctile_Male(3)]; 
YY = [0 1.2]; 
HH2 = plot(XX,YY,'--','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(6,:)); % 95th

% 07-China
nbins = 40;
figure;
HH_Male = histogram(sWHI_Male_07_China_All__,nbins);

figure(FF)
xx = HH_Male.BinEdges;
yy = HH_Male.Values/max(HH_Male.Values);
[M N] = size(HH_Male.BinEdges);
for i = 1:N-1
    X_Fill = [xx(i) xx(i+1) xx(i+1) xx(i)];
    Y_Fill = [0 0 yy(i) yy(i)];
    H = fill(X_Fill,Y_Fill,My_Colors_9(7,:));
    set(H,'edgealpha',0.1,'facealpha',My_Alpha);
end
My_P = prctile(sWHI_Male_07_China_All__,My_Percentile);
[M N] = size(HH_Male.BinEdges);
x_data = [];
y_data = HH_Male.Values;
for i = 1:N-1
    x_data = [x_data (xx(i)+xx(i+1))/2];
end
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = min(xx):0.001:max(xx);
YY = fitobject(XX);
%YY = YY/(max(yy));
H7 = plot(XX,YY/max(YY),'LineWidth',My_LineWidth,'Color',My_Colors_9(7,:));

% 5th and 95th
Prctile_Male = prctile(sWHI_Male_07_China_All__,My_Percentile);
XX = [Prctile_Male(1) Prctile_Male(1)]; 
YY = [0 1.2]; 
HH1 = plot(XX,YY,':','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(7,:)); % 5th
XX = [Prctile_Male(3) Prctile_Male(3)]; 
YY = [0 1.2]; 
HH2 = plot(XX,YY,'--','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(7,:)); % 95th

% 08-Japan
nbins = 16;
figure;
HH_Male = histogram(sWHI_Male_08_Japan_All__,nbins);

figure(FF)
xx = HH_Male.BinEdges;
yy = HH_Male.Values/max(HH_Male.Values);
[M N] = size(HH_Male.BinEdges);
for i = 1:N-1
    X_Fill = [xx(i) xx(i+1) xx(i+1) xx(i)];
    Y_Fill = [0 0 yy(i) yy(i)];
    H = fill(X_Fill,Y_Fill,My_Colors_9(8,:));
    set(H,'edgealpha',0.1,'facealpha',My_Alpha);
end
My_P = prctile(sWHI_Male_08_Japan_All__,My_Percentile);
[M N] = size(HH_Male.BinEdges);
x_data = [];
y_data = HH_Male.Values;
for i = 1:N-1
    x_data = [x_data (xx(i)+xx(i+1))/2];
end
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = min(xx):0.001:max(xx);
YY = fitobject(XX);
%YY = YY/(max(yy));
H8 = plot(XX,YY/max(YY),'LineWidth',My_LineWidth,'Color',My_Colors_9(8,:));

% 5th and 95th
Prctile_Male = prctile(sWHI_Male_08_Japan_All__,My_Percentile);
XX = [Prctile_Male(1) Prctile_Male(1)]; 
YY = [0 1.2]; 
HH1 = plot(XX,YY,':','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(8,:)); % 5th
XX = [Prctile_Male(3) Prctile_Male(3)]; 
YY = [0 1.2]; 
HH2 = plot(XX,YY,'--','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(8,:)); % 95th

%% Legend
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

H5th = plot([-1 -2],[-1 -2],':','LineWidth',My_LineWidth-0.5,'Color',[0 0 0]); % 5th
H95th = plot([-1 -2],[-1 -2],'--','LineWidth',My_LineWidth-0.5,'Color',[0 0 0]); % 95th

ax = gca;
ax.YAxis.Visible = 'off';
ax.XAxis.Visible = 'off';
Legend = legend([HH1 HH2 HH3 HH4 HH5 HH6 HH7 HH8 HH9 H5th H95th],...
    '01-NHANES, the USA',...
    '02-ENSAUNT, Mexico',...
    '03-KNHANES, Republic of Korea',...
    '04-SHARE, 27 European countries and Israel',...
    '05-KSPF, Republic of Korea',...
    '06-ELSH, Brasil',...
    '07-China',...
    '08-Japan',...
    '09-Bangladesh',...
    '5th',...
    '95th');
set(Legend,'Box','off','location','Southeast')

