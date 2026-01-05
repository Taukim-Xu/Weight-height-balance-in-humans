%% Source codes for Figure 5(b)
% Comparison of the distribution curves for sWHI and BMI across different age groups.
%
tic;
%%
c = 1;
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
%% Load the sWHIs
load('sWHI_All__0.mat')
% sWHI_Female_All__25 sWHI_Male_All__25 --> Age < 25
% sWHI_Female_All__25_50 sWHI_Male_All__25_50 --> 25<= Age < 50
% sWHI_Female_All__50 sWHI_Male_All__50 --> Age >= 50
load('BMI_All__0.mat')
% BMI_Female_All__25 BMI_Male_All__25 --> Age < 25
% BMI_Female_All__25_50 BMI_Male_All__25_50 --> 25<= Age < 50
% BMI_Female_All__50 BMI_Male_All__50 --> Age >= 50
%% We show the results
FF = figure;
%% (2,2,1) 和 (2,2,2)对比Age < 25, 25<= Age < 50 和  Age >= 50 三个组数据的sWHI
subplot(2,2,1); % For Female
hold on;
title('Female')
xlabel('sWHI');
ylabel('Normalized count')
xlim([0.85 1.15]);
ylim([0 1.2]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

yy = 0:0.01:1.5;
xx = 1+yy*0;
plot(xx,yy,'-.','LineWidth',My_LineWidth,'Color',My_Colors_4_1(1,:));

% Age < 25
nbins = 200;
figure;
HH_Female = histogram(sWHI_Female_All__25,nbins);
figure;
nbins = 150;
HH_Male = histogram(sWHI_Male_All__25,nbins);

figure(FF)
xx = HH_Female.BinEdges;
yy = HH_Female.Values/max(HH_Female.Values);
[M N] = size(HH_Female.BinEdges);
for i = 1:N-1
    X_Fill = [xx(i) xx(i+1) xx(i+1) xx(i)];
    Y_Fill = [0 0 yy(i) yy(i)];
    H = fill(X_Fill,Y_Fill,My_Colors_4_1(1,:));
    set(H,'edgealpha',0.1,'facealpha',My_Alpha);
end
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
H1 = plot(XX,YY/max(YY),'LineWidth',My_LineWidth,'Color',My_Colors_4_1(1,:));

% 5th and 95th
Prctile_Female = prctile(sWHI_Female_All__25,My_Percentile);
XX = [Prctile_Female(1) Prctile_Female(1)]; 
YY = [0 1.2]; 
HH1 = plot(XX,YY,':','LineWidth',My_LineWidth-0.5,'Color',My_Colors_4_1(1,:)); % 5th
XX = [Prctile_Female(3) Prctile_Female(3)]; 
YY = [0 1.2]; 
HH2 = plot(XX,YY,'--','LineWidth',My_LineWidth-0.5,'Color',My_Colors_4_1(1,:)); % 95th

% 25<= Age < 50
nbins = 80;
figure;
HH_Female = histogram(sWHI_Female_All__25_50,nbins);
figure;
nbins = 150;
HH_Male = histogram(sWHI_Male_All__25_50,nbins);

figure(FF)
xx = HH_Female.BinEdges;
yy = HH_Female.Values/max(HH_Female.Values);
[M N] = size(HH_Female.BinEdges);
for i = 1:N-1
    X_Fill = [xx(i) xx(i+1) xx(i+1) xx(i)];
    Y_Fill = [0 0 yy(i) yy(i)];
    H = fill(X_Fill,Y_Fill,My_Colors_4_1(2,:));
    set(H,'edgealpha',0.1,'facealpha',My_Alpha);
end
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
H2 = plot(XX,YY/max(YY),'LineWidth',My_LineWidth,'Color',My_Colors_4_1(2,:));

% 5th and 95th
Prctile_Female = prctile(sWHI_Female_All__25_50,My_Percentile);
XX = [Prctile_Female(1) Prctile_Female(1)]; 
YY = [0 1.2]; 
HH1 = plot(XX,YY,':','LineWidth',My_LineWidth-0.5,'Color',My_Colors_4_1(2,:)); % 5th
XX = [Prctile_Female(3) Prctile_Female(3)]; 
YY = [0 1.2]; 
HH2 = plot(XX,YY,'--','LineWidth',My_LineWidth-0.5,'Color',My_Colors_4_1(2,:)); % 95th

% Age >= 50
nbins = 200;
figure;
HH_Female = histogram(sWHI_Female_All__50,nbins);
figure;
nbins = 150;
HH_Male = histogram(sWHI_Male_All__50,nbins);

figure(FF)
xx = HH_Female.BinEdges;
yy = HH_Female.Values/max(HH_Female.Values);
[M N] = size(HH_Female.BinEdges);
for i = 1:N-1
    X_Fill = [xx(i) xx(i+1) xx(i+1) xx(i)];
    Y_Fill = [0 0 yy(i) yy(i)];
    H = fill(X_Fill,Y_Fill,My_Colors_4_1(3,:));
    set(H,'edgealpha',0.1,'facealpha',My_Alpha);
end
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
H3 = plot(XX,YY/max(YY),'LineWidth',My_LineWidth,'Color',My_Colors_4_1(3,:));

% 5th and 95th
Prctile_Female = prctile(sWHI_Female_All__50,My_Percentile);
XX = [Prctile_Female(1) Prctile_Female(1)]; 
YY = [0 1.2]; 
HH1 = plot(XX,YY,':','LineWidth',My_LineWidth-0.5,'Color',My_Colors_4_1(3,:)); % 5th
XX = [Prctile_Female(3) Prctile_Female(3)]; 
YY = [0 1.2]; 
HH2 = plot(XX,YY,'--','LineWidth',My_LineWidth-0.5,'Color',My_Colors_4_1(3,:)); % 95th

% Legend
H4 = plot([-1 -2],[-1 -2],':','LineWidth',My_LineWidth-0.5,'Color',[0 0 0]); % 5th
H5 = plot([-1 -2],[-1 -2],'--','LineWidth',My_LineWidth-0.5,'Color',[0 0 0]); % 95th
Legend = legend([H1 H2 H3 H4 H5],'Age < 25', '25<= Age < 50', 'Age >= 50','5th','95th','Location','northwest');
set(Legend,'Box','off','FontSize',12,'FontName',My_FontName)

subplot(2,2,2); % For Male
hold on;
title('Male')
xlabel('sWHI');
%ylabel('Normalized count')
xlim([0.85 1.15]);
ylim([0 1.2]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

yy = 0:0.01:1.5;
xx = 1+yy*0;
plot(xx,yy,'-.','LineWidth',My_LineWidth,'Color',My_Colors_4_1(1,:));

% Age < 25
nbins = 200;
figure;
HH_Male = histogram(sWHI_Male_All__25,nbins);
figure;
nbins = 150;
HH_Male = histogram(sWHI_Male_All__25,nbins);

figure(FF)
xx = HH_Male.BinEdges;
yy = HH_Male.Values/max(HH_Male.Values);
[M N] = size(HH_Male.BinEdges);
for i = 1:N-1
    X_Fill = [xx(i) xx(i+1) xx(i+1) xx(i)];
    Y_Fill = [0 0 yy(i) yy(i)];
    H = fill(X_Fill,Y_Fill,My_Colors_4_1(1,:));
    set(H,'edgealpha',0.1,'facealpha',My_Alpha);
end
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
H1 = plot(XX,YY/max(YY),'LineWidth',My_LineWidth,'Color',My_Colors_4_1(1,:));

% 5th and 95th
Prctile_Male = prctile(sWHI_Male_All__25,My_Percentile);
XX = [Prctile_Male(1) Prctile_Male(1)]; 
YY = [0 1.2]; 
HH1 = plot(XX,YY,':','LineWidth',My_LineWidth-0.5,'Color',My_Colors_4_1(1,:)); % 5th
XX = [Prctile_Male(3) Prctile_Male(3)]; 
YY = [0 1.2]; 
HH2 = plot(XX,YY,'--','LineWidth',My_LineWidth-0.5,'Color',My_Colors_4_1(1,:)); % 95th

% 25<= Age < 50
nbins = 80;
figure;
HH_Male = histogram(sWHI_Male_All__25_50,nbins);
figure;
nbins = 150;
HH_Male = histogram(sWHI_Male_All__25_50,nbins);

figure(FF)
xx = HH_Male.BinEdges;
yy = HH_Male.Values/max(HH_Male.Values);
[M N] = size(HH_Male.BinEdges);
for i = 1:N-1
    X_Fill = [xx(i) xx(i+1) xx(i+1) xx(i)];
    Y_Fill = [0 0 yy(i) yy(i)];
    H = fill(X_Fill,Y_Fill,My_Colors_4_1(2,:));
    set(H,'edgealpha',0.1,'facealpha',My_Alpha);
end
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
H2 = plot(XX,YY/max(YY),'LineWidth',My_LineWidth,'Color',My_Colors_4_1(2,:));

% 5th and 95th
Prctile_Male = prctile(sWHI_Male_All__25_50,My_Percentile);
XX = [Prctile_Male(1) Prctile_Male(1)]; 
YY = [0 1.2]; 
HH1 = plot(XX,YY,':','LineWidth',My_LineWidth-0.5,'Color',My_Colors_4_1(2,:)); % 5th
XX = [Prctile_Male(3) Prctile_Male(3)]; 
YY = [0 1.2]; 
HH2 = plot(XX,YY,'--','LineWidth',My_LineWidth-0.5,'Color',My_Colors_4_1(2,:)); % 95th

% Age >= 50
nbins = 200;
figure;
HH_Male = histogram(sWHI_Male_All__50,nbins);
figure;
nbins = 150;
HH_Male = histogram(sWHI_Male_All__50,nbins);

figure(FF)
xx = HH_Male.BinEdges;
yy = HH_Male.Values/max(HH_Male.Values);
[M N] = size(HH_Male.BinEdges);
for i = 1:N-1
    X_Fill = [xx(i) xx(i+1) xx(i+1) xx(i)];
    Y_Fill = [0 0 yy(i) yy(i)];
    H = fill(X_Fill,Y_Fill,My_Colors_4_1(3,:));
    set(H,'edgealpha',0.1,'facealpha',My_Alpha);
end
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
H3 = plot(XX,YY/max(YY),'LineWidth',My_LineWidth,'Color',My_Colors_4_1(3,:));

% 5th and 95th
Prctile_Male = prctile(sWHI_Male_All__50,My_Percentile);
XX = [Prctile_Male(1) Prctile_Male(1)]; 
YY = [0 1.2]; 
HH1 = plot(XX,YY,':','LineWidth',My_LineWidth-0.5,'Color',My_Colors_4_1(3,:)); % 5th
XX = [Prctile_Male(3) Prctile_Male(3)]; 
YY = [0 1.2]; 
HH2 = plot(XX,YY,'--','LineWidth',My_LineWidth-0.5,'Color',My_Colors_4_1(3,:)); % 95th

% Legend
H4 = plot([-1 -2],[-1 -2],':','LineWidth',My_LineWidth-0.5,'Color',[0 0 0]); % 5th
H5 = plot([-1 -2],[-1 -2],'--','LineWidth',My_LineWidth-0.5,'Color',[0 0 0]); % 95th
Legend = legend([H1 H2 H3 H4 H5],'Age < 25', '25<= Age < 50', 'Age >= 50','5th','95th','Location','northwest');
set(Legend,'Box','off','FontSize',12,'FontName',My_FontName)

%% (2,2,1) 和 (2,2,2)对比Age < 25, 25<= Age < 50 和  Age >= 50 三个组数据的BMI
subplot(2,2,3); % For Female
hold on;
%title('Female')
xlabel('BMI');
ylabel('Normalized count')
xlim([10 60]);
ylim([0 1.2]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

yy = 0:0.01:1.5;
xx = 1+yy*0;
plot(xx,yy,'-.','LineWidth',My_LineWidth,'Color',My_Colors_4_1(1,:));

% Age < 25
nbins = 200;
figure;
HH_Female = histogram(BMI_Female_All__25,nbins);
figure;
nbins = 150;
HH_Male = histogram(BMI_Male_All__25,nbins);

figure(FF)
xx = HH_Female.BinEdges;
yy = HH_Female.Values/max(HH_Female.Values);
[M N] = size(HH_Female.BinEdges);
for i = 1:N-1
    X_Fill = [xx(i) xx(i+1) xx(i+1) xx(i)];
    Y_Fill = [0 0 yy(i) yy(i)];
    H = fill(X_Fill,Y_Fill,My_Colors_4_1(1,:));
    set(H,'edgealpha',0.1,'facealpha',My_Alpha);
end
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
H1 = plot(XX,YY/max(YY),'LineWidth',My_LineWidth,'Color',My_Colors_4_1(1,:));

% 25<= Age < 50
nbins = 80;
figure;
HH_Female = histogram(BMI_Female_All__25_50,nbins);
figure;
nbins = 150;
HH_Male = histogram(BMI_Male_All__25_50,nbins);

figure(FF)
xx = HH_Female.BinEdges;
yy = HH_Female.Values/max(HH_Female.Values);
[M N] = size(HH_Female.BinEdges);
for i = 1:N-1
    X_Fill = [xx(i) xx(i+1) xx(i+1) xx(i)];
    Y_Fill = [0 0 yy(i) yy(i)];
    H = fill(X_Fill,Y_Fill,My_Colors_4_1(2,:));
    set(H,'edgealpha',0.1,'facealpha',My_Alpha);
end
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
H2 = plot(XX,YY/max(YY),'LineWidth',My_LineWidth,'Color',My_Colors_4_1(2,:));

% Age >= 50
nbins = 80;
figure;
HH_Female = histogram(BMI_Female_All__50,nbins);
figure;
nbins = 80;
HH_Male = histogram(BMI_Male_All__50,nbins);

figure(FF)
xx = HH_Female.BinEdges;
yy = HH_Female.Values/max(HH_Female.Values);
[M N] = size(HH_Female.BinEdges);
for i = 1:N-1
    X_Fill = [xx(i) xx(i+1) xx(i+1) xx(i)];
    Y_Fill = [0 0 yy(i) yy(i)];
    H = fill(X_Fill,Y_Fill,My_Colors_4_1(3,:));
    set(H,'edgealpha',0.1,'facealpha',My_Alpha);
end
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
H3 = plot(XX,YY/max(YY),'LineWidth',My_LineWidth,'Color',My_Colors_4_1(3,:));

% Legend
Legend = legend([H1 H2 H3],'Age < 25', '25<= Age < 50', 'Age >= 50','Location','northeast');
set(Legend,'Box','off','FontSize',12,'FontName',My_FontName)

subplot(2,2,4); % For Male
hold on;
%title('Male')
xlabel('BMI');
%ylabel('Normalized count')
xlim([10 60]);
ylim([0 1.2]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

yy = 0:0.01:1.5;
xx = 1+yy*0;
plot(xx,yy,'-.','LineWidth',My_LineWidth,'Color',My_Colors_4_1(1,:));

% Age < 25
nbins = 200;
figure;
HH_Male = histogram(BMI_Male_All__25,nbins);
figure;
nbins = 150;
HH_Male = histogram(BMI_Male_All__25,nbins);

figure(FF)
xx = HH_Male.BinEdges;
yy = HH_Male.Values/max(HH_Male.Values);
[M N] = size(HH_Male.BinEdges);
for i = 1:N-1
    X_Fill = [xx(i) xx(i+1) xx(i+1) xx(i)];
    Y_Fill = [0 0 yy(i) yy(i)];
    H = fill(X_Fill,Y_Fill,My_Colors_4_1(1,:));
    set(H,'edgealpha',0.1,'facealpha',My_Alpha);
end
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
H1 = plot(XX,YY/max(YY),'LineWidth',My_LineWidth,'Color',My_Colors_4_1(1,:));

% 25<= Age < 50
nbins = 80;
figure;
HH_Male = histogram(BMI_Male_All__25_50,nbins);
figure;
nbins = 150;
HH_Male = histogram(BMI_Male_All__25_50,nbins);

figure(FF)
xx = HH_Male.BinEdges;
yy = HH_Male.Values/max(HH_Male.Values);
[M N] = size(HH_Male.BinEdges);
for i = 1:N-1
    X_Fill = [xx(i) xx(i+1) xx(i+1) xx(i)];
    Y_Fill = [0 0 yy(i) yy(i)];
    H = fill(X_Fill,Y_Fill,My_Colors_4_1(2,:));
    set(H,'edgealpha',0.1,'facealpha',My_Alpha);
end
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
H2 = plot(XX,YY/max(YY),'LineWidth',My_LineWidth,'Color',My_Colors_4_1(2,:));

% Age >= 50
nbins = 80;
figure;
HH_Male = histogram(BMI_Male_All__50,nbins);
figure;
nbins = 80;
HH_Male = histogram(BMI_Male_All__50,nbins);

figure(FF)
xx = HH_Male.BinEdges;
yy = HH_Male.Values/max(HH_Male.Values);
[M N] = size(HH_Male.BinEdges);
for i = 1:N-1
    X_Fill = [xx(i) xx(i+1) xx(i+1) xx(i)];
    Y_Fill = [0 0 yy(i) yy(i)];
    H = fill(X_Fill,Y_Fill,My_Colors_4_1(3,:));
    set(H,'edgealpha',0.1,'facealpha',My_Alpha);
end
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
H3 = plot(XX,YY/max(YY),'LineWidth',My_LineWidth,'Color',My_Colors_4_1(3,:));

% Legend
Legend = legend([H1 H2 H3],'Age < 25', '25<= Age < 50', 'Age >= 50','Location','northeast');
set(Legend,'Box','off','FontSize',12,'FontName',My_FontName)
