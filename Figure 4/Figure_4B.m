%% Source codes for Figure 4(B)
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
%% BMI
% Loading the BMIs
load('BMI_01_NHANES__.mat')
load('BMI_02_ENSAUNT__.mat')
load('BMI_03_KNHANES__.mat')
load('BMI_04_SHARE__.mat')
load('BMI_05_KSPF__.mat')
load('BMI_06_ELSH_Brasil__.mat')
load('BMI_07_China__.mat')
load('BMI_08_Japan__.mat')
load('BMI_09_Bangladesh__.mat')
%% 
subplot(2,3,1); % For Female
hold on;
title('Female')
%xlabel('BMI');
ylabel('Normalized count')
xlim([10 60]);
ylim([0 1.2]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

yy = 0:0.01:1.5;
xx = 1+yy*0;
plot(xx,yy,'-.','LineWidth',My_LineWidth,'Color',My_Colors_9(1,:));

% 01_NHANES
figure;
nbins = 100;
HH_Female = histogram(BMI_Female_01_NHANES__,nbins);

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
My_P = prctile(BMI_Female_01_NHANES__,My_Percentile);
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

% 02_ENSAUNT
figure;
nbins = 100;
HH_Female = histogram(BMI_Female_02_ENSAUNT__,nbins);

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
My_P = prctile(BMI_Female_02_ENSAUNT__,My_Percentile);
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

% 03_KNHANES
figure;
nbins = 100;
HH_Female = histogram(BMI_Female_03_KNHANES__,nbins);

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
My_P = prctile(BMI_Female_03_KNHANES__,My_Percentile);
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

subplot(2,3,4); % For Female
hold on;
%title('Female')
xlabel('BMI');
ylabel('Normalized count')
xlim([10 60]);
ylim([0 1.2]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

% 04_SHARE
figure;
nbins = 100;
HH_Female = histogram(BMI_Female_04_SHARE__,nbins);

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
My_P = prctile(BMI_Female_04_SHARE__,My_Percentile);
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

% 05_KSPF
figure;
nbins = 100;
HH_Female = histogram(BMI_Female_05_KSPF__,nbins);

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
My_P = prctile(BMI_Female_05_KSPF__,My_Percentile);
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

% 06_ELSH_Brasil
figure;
nbins = 40;
HH_Female = histogram(BMI_Female_06_ELSH_Brasil__,nbins);

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
My_P = prctile(BMI_Female_06_ELSH_Brasil__,My_Percentile);
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

% 07_China
figure;
nbins = 50;
HH_Female = histogram(BMI_Female_07_China__,nbins);

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
My_P = prctile(BMI_Female_07_China__,My_Percentile);
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

% 08_Japan
figure;
nbins = 20;
HH_Female = histogram(BMI_Female_08_Japan__,nbins);

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
My_P = prctile(BMI_Female_08_Japan__,My_Percentile);
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

% 09_Bangladesh
figure;
nbins = 80;
HH_Female = histogram(BMI_Female_09_Bangladesh__,nbins);

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
My_P = prctile(BMI_Female_09_Bangladesh__,My_Percentile);
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

%% 
subplot(2,3,2); % For Male
hold on;
title('Male')
%xlabel('BMI');
%ylabel('Normalized count')
xlim([10 60]);
ylim([0 1.2]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

yy = 0:0.01:1.5;
xx = 1+yy*0;
plot(xx,yy,'-.','LineWidth',My_LineWidth,'Color',My_Colors_9(1,:));

% 01_NHANES
figure;
nbins = 100;
HH_Male = histogram(BMI_Male_01_NHANES__,nbins);

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
My_P = prctile(BMI_Male_01_NHANES__,My_Percentile);
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

% 02_ENSAUNT
figure;
nbins = 100;
HH_Male = histogram(BMI_Male_02_ENSAUNT__,nbins);

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
My_P = prctile(BMI_Male_02_ENSAUNT__,My_Percentile);
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

% 03_KNHANES
figure;
nbins = 100;
HH_Male = histogram(BMI_Male_03_KNHANES__,nbins);

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
My_P = prctile(BMI_Male_03_KNHANES__,My_Percentile);
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

subplot(2,3,5); % For Male
hold on;
%title('Male')
xlabel('BMI');
%ylabel('Normalized count')
xlim([10 60]);
ylim([0 1.2]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

% 04_SHARE
figure;
nbins = 100;
HH_Male = histogram(BMI_Male_04_SHARE__,nbins);

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
My_P = prctile(BMI_Male_04_SHARE__,My_Percentile);
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

% 05_KSPF
figure;
nbins = 100;
HH_Male = histogram(BMI_Male_05_KSPF__,nbins);

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
My_P = prctile(BMI_Male_05_KSPF__,My_Percentile);
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

% 06_ELSH_Brasil
figure;
nbins = 60;
HH_Male = histogram(BMI_Male_06_ELSH_Brasil__,nbins);

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
My_P = prctile(BMI_Male_06_ELSH_Brasil__,My_Percentile);
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

% 07_China
figure;
nbins = 70;
HH_Male = histogram(BMI_Male_07_China__,nbins);

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
My_P = prctile(BMI_Male_07_China__,My_Percentile);
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

% 08_Japan
figure;
nbins = 20;
HH_Male = histogram(BMI_Male_08_Japan__,nbins);

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
My_P = prctile(BMI_Male_08_Japan__,My_Percentile);
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

