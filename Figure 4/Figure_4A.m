%% Source codes for Figure 5(a)
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
%% (2,2,1) 和 (2,2,2) % 将ALL，Europe，American 和Asian的sWHI放在一样图里面对比；
% Loading the sWHIs
load('sWHI_All__.mat')
load('sWHI_Europe__.mat')
load('sWHI_America__.mat')
load('sWHI_Asia__.mat')
%% 
subplot(2,2,1); % For Female
hold on;
title('Female')
xlabel('sWHI');
ylabel('Normalized count')
xlim([0.85 1.15]);
ylim([0 1.2]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

set(gca,'XTick',[0.85 0.9 0.95 1 1.05 1.1 1.15],'XTicklabel',{'0.85','0.9','0.95','1','1.05','1.1','1.15'});

%{
yy = 0:0.01:1.5;
xx = 1+yy*0;
plot(xx,yy,'-.','LineWidth',My_LineWidth,'Color',My_Colors_4_1(1,:));
%}

% For All
nbins = 200;
figure;
HH_Female = histogram(sWHI_Female_All__,nbins);
figure;
nbins = 150;
HH_Male = histogram(sWHI_Male_All__,nbins);

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
My_P = prctile(sWHI_Female_All__,My_Percentile);
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
Prctile_Female = prctile(sWHI_Female_All__,My_Percentile);
XX = [Prctile_Female(1) Prctile_Female(1)]; 
YY = [0 1.2]; 
HH1 = plot(XX,YY,':','LineWidth',My_LineWidth-0.5,'Color',My_Colors_4_1(1,:)); % 5th
XX = [Prctile_Female(3) Prctile_Female(3)]; 
YY = [0 1.2]; 
HH2 = plot(XX,YY,'--','LineWidth',My_LineWidth-0.5,'Color',My_Colors_4_1(1,:)); % 95th

% For Europe
nbins = 180;
figure;
HH_Female = histogram(sWHI_Female_Europe__,nbins);
figure;
nbins = 140;
HH_Male = histogram(sWHI_Male_Europe__,nbins);

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
My_P = prctile(sWHI_Female_Europe__,My_Percentile);
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
Prctile_Female = prctile(sWHI_Female_Europe__,My_Percentile);
XX = [Prctile_Female(1) Prctile_Female(1)]; 
YY = [0 1.2]; 
HH1 = plot(XX,YY,':','LineWidth',My_LineWidth-0.5,'Color',My_Colors_4_1(2,:)); % 5th
XX = [Prctile_Female(3) Prctile_Female(3)]; 
YY = [0 1.2]; 
HH2 = plot(XX,YY,'--','LineWidth',My_LineWidth-0.5,'Color',My_Colors_4_1(2,:)); % 95th

% For America
nbins = 60;
figure;
HH_Female = histogram(sWHI_Female_America__,nbins);
figure;
nbins = 50;
HH_Male = histogram(sWHI_Male_America__,nbins);

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
My_P = prctile(sWHI_Female_America__,My_Percentile);
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
Prctile_Female = prctile(sWHI_Female_America__,My_Percentile);
XX = [Prctile_Female(1) Prctile_Female(1)]; 
YY = [0 1.2]; 
HH1 = plot(XX,YY,':','LineWidth',My_LineWidth-0.5,'Color',My_Colors_4_1(3,:)); % 5th
XX = [Prctile_Female(3) Prctile_Female(3)]; 
YY = [0 1.2]; 
HH2 = plot(XX,YY,'--','LineWidth',My_LineWidth-0.5,'Color',My_Colors_4_1(3,:)); % 95th

% For Asia
nbins = 180;
figure;
HH_Female = histogram(sWHI_Female_Asia__,nbins);
figure;
nbins = 140;
HH_Male = histogram(sWHI_Male_Asia__,nbins);

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
My_P = prctile(sWHI_Female_Asia__,My_Percentile);
[M N] = size(HH_Female.BinEdges);
x_data = [];
y_data = HH_Female.Values;
for i = 1:N-1
    x_data = [x_data (xx(i)+xx(i+1))/2];
end
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = min(xx):0.01:max(xx);
YY = fitobject(XX);
%YY = YY/(max(yy));
H4 = plot(XX,YY/max(YY),'LineWidth',My_LineWidth,'Color',My_Colors_4_1(4,:));

% 5th and 95th
Prctile_Female = prctile(sWHI_Female_Asia__,My_Percentile);
XX = [Prctile_Female(1) Prctile_Female(1)]; 
YY = [0 1.2]; 
HH1 = plot(XX,YY,':','LineWidth',My_LineWidth-0.5,'Color',My_Colors_4_1(4,:)); % 5th
XX = [Prctile_Female(3) Prctile_Female(3)]; 
YY = [0 1.2]; 
HH2 = plot(XX,YY,'--','LineWidth',My_LineWidth-0.5,'Color',My_Colors_4_1(4,:)); % 95th

% Legend
H5 = plot([-1 -2],[-1 -2],':','LineWidth',My_LineWidth-0.5,'Color',[0 0 0]); % 5th
H6 = plot([-1 -2],[-1 -2],'--','LineWidth',My_LineWidth-0.5,'Color',[0 0 0]); % 95th
Legend = legend([H1 H2 H3 H4 H5 H6],'All', 'Europe', 'America', 'Asian','5th','95th','Location','northwest');
set(Legend,'Box','off','FontSize',12,'FontName',My_FontName)

%%
subplot(2,2,2); % For Male
hold on;
title('Male')
xlabel('sWHI');
%ylabel('Normalized count')
xlim([0.85 1.15]);
ylim([0 1.2]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

set(gca,'XTick',[0.85 0.9 0.95 1 1.05 1.1 1.15],'XTicklabel',{'0.85','0.9','0.95','1','1.05','1.1','1.15'});

%{
yy = 0:0.01:1.5;
xx = 1+yy*0;
plot(xx,yy,'-.','LineWidth',My_LineWidth,'Color',My_Colors_4_1(1,:));
%}

% For All
nbins = 200;
figure;
HH_Male = histogram(sWHI_Male_All__,nbins);
figure;
nbins = 150;
HH_Male = histogram(sWHI_Male_All__,nbins);

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
My_P = prctile(sWHI_Male_All__,My_Percentile);
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
Prctile_Male = prctile(sWHI_Male_All__,My_Percentile);
XX = [Prctile_Male(1) Prctile_Male(1)]; 
YY = [0 1.2]; 
HH1 = plot(XX,YY,':','LineWidth',My_LineWidth-0.5,'Color',My_Colors_4_1(1,:)); % 5th
XX = [Prctile_Male(3) Prctile_Male(3)]; 
YY = [0 1.2]; 
HH2 = plot(XX,YY,'--','LineWidth',My_LineWidth-0.5,'Color',My_Colors_4_1(1,:)); % 95th

% For Europe
nbins = 180;
figure;
HH_Male = histogram(sWHI_Male_Europe__,nbins);
figure;
nbins = 140;
HH_Male = histogram(sWHI_Male_Europe__,nbins);

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
My_P = prctile(sWHI_Male_Europe__,My_Percentile);
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
Prctile_Male = prctile(sWHI_Male_Europe__,My_Percentile);
XX = [Prctile_Male(1) Prctile_Male(1)]; 
YY = [0 1.2]; 
HH1 = plot(XX,YY,':','LineWidth',My_LineWidth-0.5,'Color',My_Colors_4_1(2,:)); % 5th
XX = [Prctile_Male(3) Prctile_Male(3)]; 
YY = [0 1.2]; 
HH2 = plot(XX,YY,'--','LineWidth',My_LineWidth-0.5,'Color',My_Colors_4_1(2,:)); % 95th

% For America
nbins = 60;
figure;
HH_Male = histogram(sWHI_Male_America__,nbins);
figure;
nbins = 50;
HH_Male = histogram(sWHI_Male_America__,nbins);

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
My_P = prctile(sWHI_Male_America__,My_Percentile);
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
Prctile_Male = prctile(sWHI_Male_America__,My_Percentile);
XX = [Prctile_Male(1) Prctile_Male(1)]; 
YY = [0 1.2]; 
HH1 = plot(XX,YY,':','LineWidth',My_LineWidth-0.5,'Color',My_Colors_4_1(3,:)); % 5th
XX = [Prctile_Male(3) Prctile_Male(3)]; 
YY = [0 1.2]; 
HH2 = plot(XX,YY,'--','LineWidth',My_LineWidth-0.5,'Color',My_Colors_4_1(3,:)); % 95th

% For Asia
nbins = 180;
figure;
HH_Male = histogram(sWHI_Male_Asia__,nbins);
figure;
nbins = 140;
HH_Male = histogram(sWHI_Male_Asia__,nbins);

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
My_P = prctile(sWHI_Male_Asia__,My_Percentile);
[M N] = size(HH_Male.BinEdges);
x_data = [];
y_data = HH_Male.Values;
for i = 1:N-1
    x_data = [x_data (xx(i)+xx(i+1))/2];
end
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = min(xx):0.01:max(xx);
YY = fitobject(XX);
%YY = YY/(max(yy));
H4 = plot(XX,YY/max(YY),'LineWidth',My_LineWidth,'Color',My_Colors_4_1(4,:));

% 5th and 95th
Prctile_Male = prctile(sWHI_Male_Asia__,My_Percentile);
XX = [Prctile_Male(1) Prctile_Male(1)]; 
YY = [0 1.2]; 
HH1 = plot(XX,YY,':','LineWidth',My_LineWidth-0.5,'Color',My_Colors_4_1(4,:)); % 5th
XX = [Prctile_Male(3) Prctile_Male(3)]; 
YY = [0 1.2]; 
HH2 = plot(XX,YY,'--','LineWidth',My_LineWidth-0.5,'Color',My_Colors_4_1(4,:)); % 95th

% Legend
H5 = plot([-1 -2],[-1 -2],':','LineWidth',My_LineWidth-0.5,'Color',[0 0 0]); % 5th
H6 = plot([-1 -2],[-1 -2],'--','LineWidth',My_LineWidth-0.5,'Color',[0 0 0]); % 95th
Legend = legend([H1 H2 H3 H4 H5 H6],'All', 'Europe', 'America', 'Asian','5th','95th','Location','northwest');
set(Legend,'Box','off','FontSize',12,'FontName',My_FontName)

%% (2,2,3) 和 (2,2,4) % 将ALL，Europe，American 和Asian的BMI放在一样图里面对比；
% Loading the BMIs
load('BMI_All__.mat')
load('BMI_Europe__.mat')
load('BMI_America__.mat')
load('BMI_Asia__.mat')
%% 
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

% For All
nbins = 200;
figure;
HH_Female = histogram(BMI_Female_All__,nbins);
figure;
nbins = 200;
HH_Male = histogram(BMI_Male_All__,nbins);

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
My_P = prctile(BMI_Female_All__,My_Percentile);
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

% For Europe
nbins = 100;
figure;
HH_Female = histogram(BMI_Female_Europe__,nbins);
figure;
nbins = 100;
HH_Male = histogram(BMI_Male_Europe__,nbins);

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
My_P = prctile(BMI_Female_Europe__,My_Percentile);
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

% For America
nbins = 80;
figure;
HH_Female = histogram(BMI_Female_America__,nbins);
figure;
nbins = 80;
HH_Male = histogram(BMI_Male_America__,nbins);

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
My_P = prctile(BMI_Female_America__,My_Percentile);
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

% For Asia
nbins = 180;
figure;
HH_Female = histogram(BMI_Female_Asia__,nbins);
figure;
nbins = 180;
HH_Male = histogram(BMI_Male_Asia__,nbins);

figure(FF)
xx = HH_Female.BinEdges;
yy = HH_Female.Values/max(HH_Female.Values);
[M N] = size(HH_Female.BinEdges);
for i = 1:N-1
    X_Fill = [xx(i) xx(i+1) xx(i+1) xx(i)];
    Y_Fill = [0 0 yy(i) yy(i)];
    H = fill(X_Fill,Y_Fill,My_Colors_4_1(4,:));
    set(H,'edgealpha',0.1,'facealpha',My_Alpha);
end
My_P = prctile(BMI_Female_Asia__,My_Percentile);
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
H4 = plot(XX,YY/max(YY),'LineWidth',My_LineWidth,'Color',My_Colors_4_1(4,:));

% Legend
Legend = legend([H1 H2 H3 H4],'All', 'Europe', 'America', 'Asian','Location','northeast');
set(Legend,'Box','off','FontSize',12,'FontName',My_FontName)

%%
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

% For All
nbins = 200;
figure;
HH_Male = histogram(BMI_Male_All__,nbins);
figure;
nbins = 200;
HH_Male = histogram(BMI_Male_All__,nbins);

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
My_P = prctile(BMI_Male_All__,My_Percentile);
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

% For Europe
nbins = 100;
figure;
HH_Male = histogram(BMI_Male_Europe__,nbins);
figure;
nbins = 100;
HH_Male = histogram(BMI_Male_Europe__,nbins);

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
My_P = prctile(BMI_Male_Europe__,My_Percentile);
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

% For America
nbins = 80;
figure;
HH_Male = histogram(BMI_Male_America__,nbins);
figure;
nbins = 80;
HH_Male = histogram(BMI_Male_America__,nbins);

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
My_P = prctile(BMI_Male_America__,My_Percentile);
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

% For Asia
nbins = 180;
figure;
HH_Male = histogram(BMI_Male_Asia__,nbins);
figure;
nbins = 180;
HH_Male = histogram(BMI_Male_Asia__,nbins);

figure(FF)
xx = HH_Male.BinEdges;
yy = HH_Male.Values/max(HH_Male.Values);
[M N] = size(HH_Male.BinEdges);
for i = 1:N-1
    X_Fill = [xx(i) xx(i+1) xx(i+1) xx(i)];
    Y_Fill = [0 0 yy(i) yy(i)];
    H = fill(X_Fill,Y_Fill,My_Colors_4_1(4,:));
    set(H,'edgealpha',0.1,'facealpha',My_Alpha);
end
My_P = prctile(BMI_Male_Asia__,My_Percentile);
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
H4 = plot(XX,YY/max(YY),'LineWidth',My_LineWidth,'Color',My_Colors_4_1(4,:));

% Legend
Legend = legend([H1 H2 H3 H4],'All', 'Europe', 'America', 'Asian','Location','northeast');
set(Legend,'Box','off','FontSize',12,'FontName',My_FontName)

My_Mean_2th_Female = mean([prctile(sWHI_Female_All__,2) prctile(sWHI_Female_Europe__,2) ...
    prctile(sWHI_Female_America__,2) prctile(sWHI_Female_Asia__,2)])
My_Mean_98th_Female = mean([prctile(sWHI_Female_All__,98) prctile(sWHI_Female_Europe__,98) ...
    prctile(sWHI_Female_America__,98) prctile(sWHI_Female_Asia__,98)])

My_Mean_2th_Male = mean([prctile(sWHI_Male_All__,2) prctile(sWHI_Male_Europe__,2) ...
    prctile(sWHI_Male_America__,2) prctile(sWHI_Male_Asia__,2)])
My_Mean_98th_Male = mean([prctile(sWHI_Male_All__,98) prctile(sWHI_Male_Europe__,98) ...
    prctile(sWHI_Male_America__,98) prctile(sWHI_Male_Asia__,98)])

My_Mean_2th = mean([prctile(sWHI_Female_All__,2) prctile(sWHI_Female_Europe__,2) ...
    prctile(sWHI_Female_America__,2) prctile(sWHI_Female_Asia__,2) ...
    prctile(sWHI_Male_All__,2) prctile(sWHI_Male_Europe__,2) ...
    prctile(sWHI_Male_America__,2) prctile(sWHI_Male_Asia__,2)])

My_Mean_98th = mean([prctile(sWHI_Female_All__,98) prctile(sWHI_Female_Europe__,98) ...
    prctile(sWHI_Female_America__,98) prctile(sWHI_Female_Asia__,98) ...
    prctile(sWHI_Male_All__,98) prctile(sWHI_Male_Europe__,98) ...
    prctile(sWHI_Male_America__,98) prctile(sWHI_Male_Asia__,98)])
