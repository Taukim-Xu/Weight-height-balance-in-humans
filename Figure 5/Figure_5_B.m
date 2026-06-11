%% Source codes for Figure 5(b)
% Comparison of weight residual distributions across continents and age groups.
% Wr-Wp: The actual weight minus the weight predicted by the model
%
tic;
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
%% Load the data
load('dWr_Wp_01_NHANES_0.mat')
load('dWr_Wp_02_ENSAUNT_0.mat')
load('dWr_Wp_03_KNHANES_0.mat')
load('dWr_Wp_04_SHARE_0.mat')
load('dWr_Wp_05_KSPF_0.mat')
load('dWr_Wp_06_ELSH_Brasil_0.mat')
load('dWr_Wp_07_China_0.mat')
load('dWr_Wp_08_Japan_0.mat')
load('dWr_Wp_09_Bangladesh_0.mat')

%% We show the results
%% 
FF = figure;
%% For Female
subplot(3,3,1); % For Female
hold on;
title('Female, Age < 25')
%xlabel('Wr-Wp (Kg)');
ylabel('Normalized count')
xlim([-100 100]);
ylim([0 1.2]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)
%set(gca,'XTick',[0.85 0.9 0.935 1 1.066 1.1 1.15],'XTicklabel',{'0.85','0.9','0.935','1','1.066','1.1','1.15'});

yyy = -1:0.1:2;
xxx = 0+0*yyy;
plot(xxx,yyy,'LineWidth',0.5,'Color',[0 0 0]);

% Age < 25
% 01_NHANES
Temp = dWr_Wp_01_NHANES_Female__25;
dWr_Wp_01_NHANES_Female__25 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100 % -100 <= Wr-Wp <= 100
        dWr_Wp_01_NHANES_Female__25 = [dWr_Wp_01_NHANES_Female__25 Temp(i)];
    end
end
nbins = 80;
figure;
HH_Female = histogram(dWr_Wp_01_NHANES_Female__25,nbins);

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
My_P = prctile(dWr_Wp_01_NHANES_Female__25,My_Percentile);
[M N] = size(HH_Female.BinEdges);
x_data = [];
y_data = HH_Female.Values;
for i = 1:N-1
    x_data = [x_data (xx(i)+xx(i+1))/2];
end
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = min(xx):0.001:max(xx);
YY = fitobject(XX);
H1 = plot(XX,YY/max(YY),'LineWidth',My_LineWidth,'Color',My_Colors_9(1,:));

% 5th and 95th
Prctile_Female = prctile(dWr_Wp_01_NHANES_Female__25,My_Percentile);
XX = [Prctile_Female(1) Prctile_Female(1)]; 
YY = [0 1.2]; 
HH1 = plot(XX,YY,':','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(1,:)); % 5th
XX = [Prctile_Female(3) Prctile_Female(3)]; 
YY = [0 1.2]; 
HH2 = plot(XX,YY,'--','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(1,:)); % 95th

% 02_ENSAUNT
Temp = dWr_Wp_02_ENSAUNT_Female__25;
dWr_Wp_02_ENSAUNT_Female__25 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100 % -100 <= Wr-Wp <= 100
        dWr_Wp_02_ENSAUNT_Female__25 = [dWr_Wp_02_ENSAUNT_Female__25 Temp(i)];
    end
end
nbins = 80;
figure;
HH_Female = histogram(dWr_Wp_02_ENSAUNT_Female__25,nbins);

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
My_P = prctile(dWr_Wp_02_ENSAUNT_Female__25,My_Percentile);
[M N] = size(HH_Female.BinEdges);
x_data = [];
y_data = HH_Female.Values;
for i = 1:N-1
    x_data = [x_data (xx(i)+xx(i+1))/2];
end
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = min(xx):0.001:max(xx);
YY = fitobject(XX);
H2 = plot(XX,YY/max(YY),'LineWidth',My_LineWidth,'Color',My_Colors_9(2,:));

% 5th and 95th
Prctile_Female = prctile(dWr_Wp_02_ENSAUNT_Female__25,My_Percentile);
XX = [Prctile_Female(1) Prctile_Female(1)]; 
YY = [0 1.2]; 
HH1 = plot(XX,YY,':','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(2,:)); % 5th
XX = [Prctile_Female(3) Prctile_Female(3)]; 
YY = [0 1.2]; 
HH2 = plot(XX,YY,'--','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(2,:)); % 95th

% 03_KNHANES
Temp = dWr_Wp_03_KNHANES_Female__25;
dWr_Wp_03_KNHANES_Female__25 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100 % -100 <= Wr-Wp <= 100
        dWr_Wp_03_KNHANES_Female__25 = [dWr_Wp_03_KNHANES_Female__25 Temp(i)];
    end
end
nbins = 80;
figure;
HH_Female = histogram(dWr_Wp_03_KNHANES_Female__25,nbins);

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
My_P = prctile(dWr_Wp_03_KNHANES_Female__25,My_Percentile);
[M N] = size(HH_Female.BinEdges);
x_data = [];
y_data = HH_Female.Values;
for i = 1:N-1
    x_data = [x_data (xx(i)+xx(i+1))/2];
end
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = min(xx):0.001:max(xx);
YY = fitobject(XX);
H3 = plot(XX,YY/max(YY),'LineWidth',My_LineWidth,'Color',My_Colors_9(3,:));

% 5th and 95th
Prctile_Female = prctile(dWr_Wp_03_KNHANES_Female__25,My_Percentile);
XX = [Prctile_Female(1) Prctile_Female(1)]; 
YY = [0 1.2]; 
HH1 = plot(XX,YY,':','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(3,:)); % 5th
XX = [Prctile_Female(3) Prctile_Female(3)]; 
YY = [0 1.2]; 
HH2 = plot(XX,YY,'--','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(3,:)); % 95th

% 04_SHARE

% 05_KSPF
Temp = dWr_Wp_05_KSPF_Female__25;
dWr_Wp_05_KSPF_Female__25 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100 % -100 <= Wr-Wp <= 100
        dWr_Wp_05_KSPF_Female__25 = [dWr_Wp_05_KSPF_Female__25 Temp(i)];
    end
end
nbins = 80;
figure;
HH_Female = histogram(dWr_Wp_05_KSPF_Female__25,nbins);

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
My_P = prctile(dWr_Wp_05_KSPF_Female__25,My_Percentile);
[M N] = size(HH_Female.BinEdges);
x_data = [];
y_data = HH_Female.Values;
for i = 1:N-1
    x_data = [x_data (xx(i)+xx(i+1))/2];
end
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = min(xx):0.001:max(xx);
YY = fitobject(XX);
H5 = plot(XX,YY/max(YY),'LineWidth',My_LineWidth,'Color',My_Colors_9(5,:));

% 5th and 95th
Prctile_Female = prctile(dWr_Wp_05_KSPF_Female__25,My_Percentile);
XX = [Prctile_Female(1) Prctile_Female(1)]; 
YY = [0 1.2]; 
HH1 = plot(XX,YY,':','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(5,:)); % 5th
XX = [Prctile_Female(3) Prctile_Female(3)]; 
YY = [0 1.2]; 
HH2 = plot(XX,YY,'--','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(5,:)); % 95th

% 06_ELSH_Brasil

% 07_China
Temp = dWr_Wp_07_China_Female__25;
dWr_Wp_07_China_Female__25 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100 % -100 <= Wr-Wp <= 100
        dWr_Wp_07_China_Female__25 = [dWr_Wp_07_China_Female__25 Temp(i)];
    end
end
nbins = 80;
figure;
HH_Female = histogram(dWr_Wp_07_China_Female__25,nbins);

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
My_P = prctile(dWr_Wp_07_China_Female__25,My_Percentile);
[M N] = size(HH_Female.BinEdges);
x_data = [];
y_data = HH_Female.Values;
for i = 1:N-1
    x_data = [x_data (xx(i)+xx(i+1))/2];
end
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = min(xx):0.001:max(xx);
YY = fitobject(XX);
H7 = plot(XX,YY/max(YY),'LineWidth',My_LineWidth,'Color',My_Colors_9(7,:));

% 5th and 95th
Prctile_Female = prctile(dWr_Wp_07_China_Female__25,My_Percentile);
XX = [Prctile_Female(1) Prctile_Female(1)]; 
YY = [0 1.2]; 
HH1 = plot(XX,YY,':','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(7,:)); % 5th
XX = [Prctile_Female(3) Prctile_Female(3)]; 
YY = [0 1.2]; 
HH2 = plot(XX,YY,'--','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(7,:)); % 95th

% 08_Japan
Temp = dWr_Wp_08_Japan_Female__25;
dWr_Wp_08_Japan_Female__25 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100 % -100 <= Wr-Wp <= 100
        dWr_Wp_08_Japan_Female__25 = [dWr_Wp_08_Japan_Female__25 Temp(i)];
    end
end
nbins = 80;
figure;
HH_Female = histogram(dWr_Wp_08_Japan_Female__25,nbins);

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
My_P = prctile(dWr_Wp_08_Japan_Female__25,My_Percentile);
[M N] = size(HH_Female.BinEdges);
x_data = [];
y_data = HH_Female.Values;
for i = 1:N-1
    x_data = [x_data (xx(i)+xx(i+1))/2];
end
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = min(xx):0.001:max(xx);
YY = fitobject(XX);
H8 = plot(XX,YY/max(YY),'LineWidth',My_LineWidth,'Color',My_Colors_9(8,:));

% 5th and 95th
Prctile_Female = prctile(dWr_Wp_08_Japan_Female__25,My_Percentile);
XX = [Prctile_Female(1) Prctile_Female(1)]; 
YY = [0 1.2]; 
HH1 = plot(XX,YY,':','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(8,:)); % 5th
XX = [Prctile_Female(3) Prctile_Female(3)]; 
YY = [0 1.2]; 
HH2 = plot(XX,YY,'--','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(8,:)); % 95th

% 09_Bangladesh
Temp = dWr_Wp_09_Bangladesh_Female__25;
dWr_Wp_09_Bangladesh_Female__25 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100 % -100 <= Wr-Wp <= 100
        dWr_Wp_09_Bangladesh_Female__25 = [dWr_Wp_09_Bangladesh_Female__25 Temp(i)];
    end
end
nbins = 80;
figure;
HH_Female = histogram(dWr_Wp_09_Bangladesh_Female__25,nbins);

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
My_P = prctile(dWr_Wp_09_Bangladesh_Female__25,My_Percentile);
[M N] = size(HH_Female.BinEdges);
x_data = [];
y_data = HH_Female.Values;
for i = 1:N-1
    x_data = [x_data (xx(i)+xx(i+1))/2];
end
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = min(xx):0.001:max(xx);
YY = fitobject(XX);
H9 = plot(XX,YY/max(YY),'LineWidth',My_LineWidth,'Color',My_Colors_9(9,:));

% 5th and 95th
Prctile_Female = prctile(dWr_Wp_09_Bangladesh_Female__25,My_Percentile);
XX = [Prctile_Female(1) Prctile_Female(1)]; 
YY = [0 1.2]; 
HH1 = plot(XX,YY,':','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(9,:)); % 5th
XX = [Prctile_Female(3) Prctile_Female(3)]; 
YY = [0 1.2]; 
HH2 = plot(XX,YY,'--','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(9,:)); % 95th

subplot(3,3,4); % For Female
hold on;
title('25 <= Age <50')
%xlabel('Wr-Wp (Kg)');
ylabel('Normalized count')
xlim([-100 100]);
ylim([0 1.2]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)
%set(gca,'XTick',[0.85 0.9 0.935 1 1.066 1.1 1.15],'XTicklabel',{'0.85','0.9','0.935','1','1.066','1.1','1.15'});

yyy = -1:0.1:2;
xxx = 0+0*yyy;
plot(xxx,yyy,'LineWidth',0.5,'Color',[0 0 0]);

% 25 <= Age <50
% 01_NHANES
Temp = dWr_Wp_01_NHANES_Female__25_50;
dWr_Wp_01_NHANES_Female__25_50 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100 % -100 <= Wr-Wp <= 100
        dWr_Wp_01_NHANES_Female__25_50 = [dWr_Wp_01_NHANES_Female__25_50 Temp(i)];
    end
end
nbins = 80;
figure;
HH_Female = histogram(dWr_Wp_01_NHANES_Female__25_50,nbins);

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
My_P = prctile(dWr_Wp_01_NHANES_Female__25_50,My_Percentile);
[M N] = size(HH_Female.BinEdges);
x_data = [];
y_data = HH_Female.Values;
for i = 1:N-1
    x_data = [x_data (xx(i)+xx(i+1))/2];
end
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = min(xx):0.001:max(xx);
YY = fitobject(XX);
H1 = plot(XX,YY/max(YY),'LineWidth',My_LineWidth,'Color',My_Colors_9(1,:));

% 5th and 95th
Prctile_Female = prctile(dWr_Wp_01_NHANES_Female__25_50,My_Percentile);
XX = [Prctile_Female(1) Prctile_Female(1)]; 
YY = [0 1.2]; 
HH1 = plot(XX,YY,':','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(1,:)); % 5th
XX = [Prctile_Female(3) Prctile_Female(3)]; 
YY = [0 1.2]; 
HH2 = plot(XX,YY,'--','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(1,:)); % 95th

% 02_ENSAUNT
Temp = dWr_Wp_02_ENSAUNT_Female__25_50;
dWr_Wp_02_ENSAUNT_Female__25_50 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100 % -100 <= Wr-Wp <= 100
        dWr_Wp_02_ENSAUNT_Female__25_50 = [dWr_Wp_02_ENSAUNT_Female__25_50 Temp(i)];
    end
end
nbins = 80;
figure;
HH_Female = histogram(dWr_Wp_02_ENSAUNT_Female__25_50,nbins);

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
My_P = prctile(dWr_Wp_02_ENSAUNT_Female__25_50,My_Percentile);
[M N] = size(HH_Female.BinEdges);
x_data = [];
y_data = HH_Female.Values;
for i = 1:N-1
    x_data = [x_data (xx(i)+xx(i+1))/2];
end
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = min(xx):0.001:max(xx);
YY = fitobject(XX);
H2 = plot(XX,YY/max(YY),'LineWidth',My_LineWidth,'Color',My_Colors_9(2,:));

% 5th and 95th
Prctile_Female = prctile(dWr_Wp_02_ENSAUNT_Female__25_50,My_Percentile);
XX = [Prctile_Female(1) Prctile_Female(1)]; 
YY = [0 1.2]; 
HH1 = plot(XX,YY,':','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(2,:)); % 5th
XX = [Prctile_Female(3) Prctile_Female(3)]; 
YY = [0 1.2]; 
HH2 = plot(XX,YY,'--','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(2,:)); % 95th

% 03_KNHANES
Temp = dWr_Wp_03_KNHANES_Female__25_50;
dWr_Wp_03_KNHANES_Female__25_50 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100 % -100 <= Wr-Wp <= 100
        dWr_Wp_03_KNHANES_Female__25_50 = [dWr_Wp_03_KNHANES_Female__25_50 Temp(i)];
    end
end
nbins = 80;
figure;
HH_Female = histogram(dWr_Wp_03_KNHANES_Female__25_50,nbins);

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
My_P = prctile(dWr_Wp_03_KNHANES_Female__25_50,My_Percentile);
[M N] = size(HH_Female.BinEdges);
x_data = [];
y_data = HH_Female.Values;
for i = 1:N-1
    x_data = [x_data (xx(i)+xx(i+1))/2];
end
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = min(xx):0.001:max(xx);
YY = fitobject(XX);
H3 = plot(XX,YY/max(YY),'LineWidth',My_LineWidth,'Color',My_Colors_9(3,:));

% 5th and 95th
Prctile_Female = prctile(dWr_Wp_03_KNHANES_Female__25_50,My_Percentile);
XX = [Prctile_Female(1) Prctile_Female(1)]; 
YY = [0 1.2]; 
HH1 = plot(XX,YY,':','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(3,:)); % 5th
XX = [Prctile_Female(3) Prctile_Female(3)]; 
YY = [0 1.2]; 
HH2 = plot(XX,YY,'--','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(3,:)); % 95th

% 04_SHARE


% 05_KSPF
Temp = dWr_Wp_05_KSPF_Female__25_50;
dWr_Wp_05_KSPF_Female__25_50 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100 % -100 <= Wr-Wp <= 100
        dWr_Wp_05_KSPF_Female__25_50 = [dWr_Wp_05_KSPF_Female__25_50 Temp(i)];
    end
end
nbins = 80;
figure;
HH_Female = histogram(dWr_Wp_05_KSPF_Female__25_50,nbins);

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
My_P = prctile(dWr_Wp_05_KSPF_Female__25_50,My_Percentile);
[M N] = size(HH_Female.BinEdges);
x_data = [];
y_data = HH_Female.Values;
for i = 1:N-1
    x_data = [x_data (xx(i)+xx(i+1))/2];
end
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = min(xx):0.001:max(xx);
YY = fitobject(XX);
H5 = plot(XX,YY/max(YY),'LineWidth',My_LineWidth,'Color',My_Colors_9(5,:));

% 5th and 95th
Prctile_Female = prctile(dWr_Wp_05_KSPF_Female__25_50,My_Percentile);
XX = [Prctile_Female(1) Prctile_Female(1)]; 
YY = [0 1.2]; 
HH1 = plot(XX,YY,':','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(5,:)); % 5th
XX = [Prctile_Female(3) Prctile_Female(3)]; 
YY = [0 1.2]; 
HH2 = plot(XX,YY,'--','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(5,:)); % 95th

% 06_ELSH_Brasil
Temp = dWr_Wp_06_ELSH_Brasil_Female__25_50;
dWr_Wp_06_ELSH_Brasil_Female__25_50 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100 % -100 <= Wr-Wp <= 100
        dWr_Wp_06_ELSH_Brasil_Female__25_50 = [dWr_Wp_06_ELSH_Brasil_Female__25_50 Temp(i)];
    end
end
nbins = 40;
figure;
HH_Female = histogram(dWr_Wp_06_ELSH_Brasil_Female__25_50,nbins);

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
My_P = prctile(dWr_Wp_06_ELSH_Brasil_Female__25_50,My_Percentile);
[M N] = size(HH_Female.BinEdges);
x_data = [];
y_data = HH_Female.Values;
for i = 1:N-1
    x_data = [x_data (xx(i)+xx(i+1))/2];
end
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = min(xx):0.001:max(xx);
YY = fitobject(XX);
H6 = plot(XX,YY/max(YY),'LineWidth',My_LineWidth,'Color',My_Colors_9(6,:));

% 5th and 95th
Prctile_Female = prctile(dWr_Wp_06_ELSH_Brasil_Female__25_50,My_Percentile);
XX = [Prctile_Female(1) Prctile_Female(1)]; 
YY = [0 1.2]; 
HH1 = plot(XX,YY,':','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(6,:)); % 5th
XX = [Prctile_Female(3) Prctile_Female(3)]; 
YY = [0 1.2]; 
HH2 = plot(XX,YY,'--','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(6,:)); % 95th

% 07_China
Temp = dWr_Wp_07_China_Female__25_50;
dWr_Wp_07_China_Female__25_50 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100 % -100 <= Wr-Wp <= 100
        dWr_Wp_07_China_Female__25_50 = [dWr_Wp_07_China_Female__25_50 Temp(i)];
    end
end
nbins = 80;
figure;
HH_Female = histogram(dWr_Wp_07_China_Female__25_50,nbins);

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
My_P = prctile(dWr_Wp_07_China_Female__25_50,My_Percentile);
[M N] = size(HH_Female.BinEdges);
x_data = [];
y_data = HH_Female.Values;
for i = 1:N-1
    x_data = [x_data (xx(i)+xx(i+1))/2];
end
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = min(xx):0.001:max(xx);
YY = fitobject(XX);
H7 = plot(XX,YY/max(YY),'LineWidth',My_LineWidth,'Color',My_Colors_9(7,:));

% 5th and 95th
Prctile_Female = prctile(dWr_Wp_07_China_Female__25_50,My_Percentile);
XX = [Prctile_Female(1) Prctile_Female(1)]; 
YY = [0 1.2]; 
HH1 = plot(XX,YY,':','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(7,:)); % 5th
XX = [Prctile_Female(3) Prctile_Female(3)]; 
YY = [0 1.2]; 
HH2 = plot(XX,YY,'--','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(7,:)); % 95th

% 08_Japan


% 09_Bangladesh


subplot(3,3,7); % For Female
hold on;
title('Age > 50')
xlabel('Wr-Wp (Kg)');
ylabel('Normalized count')
xlim([-100 100]);
ylim([0 1.2]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)
%set(gca,'XTick',[0.85 0.9 0.935 1 1.066 1.1 1.15],'XTicklabel',{'0.85','0.9','0.935','1','1.066','1.1','1.15'});

yyy = -1:0.1:2;
xxx = 0+0*yyy;
plot(xxx,yyy,'LineWidth',0.5,'Color',[0 0 0]);

% Age > 50
% 01_NHANES
Temp = dWr_Wp_01_NHANES_Female__50;
dWr_Wp_01_NHANES_Female__50 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100 % -100 <= Wr-Wp <= 100
        dWr_Wp_01_NHANES_Female__50 = [dWr_Wp_01_NHANES_Female__50 Temp(i)];
    end
end
nbins = 80;
figure;
HH_Female = histogram(dWr_Wp_01_NHANES_Female__50,nbins);

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
My_P = prctile(dWr_Wp_01_NHANES_Female__50,My_Percentile);
[M N] = size(HH_Female.BinEdges);
x_data = [];
y_data = HH_Female.Values;
for i = 1:N-1
    x_data = [x_data (xx(i)+xx(i+1))/2];
end
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = min(xx):0.001:max(xx);
YY = fitobject(XX);
H1 = plot(XX,YY/max(YY),'LineWidth',My_LineWidth,'Color',My_Colors_9(1,:));

% 5th and 95th
Prctile_Female = prctile(dWr_Wp_01_NHANES_Female__50,My_Percentile);
XX = [Prctile_Female(1) Prctile_Female(1)]; 
YY = [0 1.2]; 
HH1 = plot(XX,YY,':','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(1,:)); % 5th
XX = [Prctile_Female(3) Prctile_Female(3)]; 
YY = [0 1.2]; 
HH2 = plot(XX,YY,'--','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(1,:)); % 95th

% 02_ENSAUNT
Temp = dWr_Wp_02_ENSAUNT_Female__50;
dWr_Wp_02_ENSAUNT_Female__50 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100 % -100 <= Wr-Wp <= 100
        dWr_Wp_02_ENSAUNT_Female__50 = [dWr_Wp_02_ENSAUNT_Female__50 Temp(i)];
    end
end
nbins = 80;
figure;
HH_Female = histogram(dWr_Wp_02_ENSAUNT_Female__50,nbins);

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
My_P = prctile(dWr_Wp_02_ENSAUNT_Female__50,My_Percentile);
[M N] = size(HH_Female.BinEdges);
x_data = [];
y_data = HH_Female.Values;
for i = 1:N-1
    x_data = [x_data (xx(i)+xx(i+1))/2];
end
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = min(xx):0.001:max(xx);
YY = fitobject(XX);
H2 = plot(XX,YY/max(YY),'LineWidth',My_LineWidth,'Color',My_Colors_9(2,:));

% 5th and 95th
Prctile_Female = prctile(dWr_Wp_02_ENSAUNT_Female__50,My_Percentile);
XX = [Prctile_Female(1) Prctile_Female(1)]; 
YY = [0 1.2]; 
HH1 = plot(XX,YY,':','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(2,:)); % 5th
XX = [Prctile_Female(3) Prctile_Female(3)]; 
YY = [0 1.2]; 
HH2 = plot(XX,YY,'--','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(2,:)); % 95th

% 03_KNHANES
Temp = dWr_Wp_03_KNHANES_Female__50;
dWr_Wp_03_KNHANES_Female__50 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100 % -100 <= Wr-Wp <= 100
        dWr_Wp_03_KNHANES_Female__50 = [dWr_Wp_03_KNHANES_Female__50 Temp(i)];
    end
end
nbins = 80;
figure;
HH_Female = histogram(dWr_Wp_03_KNHANES_Female__50,nbins);

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
My_P = prctile(dWr_Wp_03_KNHANES_Female__50,My_Percentile);
[M N] = size(HH_Female.BinEdges);
x_data = [];
y_data = HH_Female.Values;
for i = 1:N-1
    x_data = [x_data (xx(i)+xx(i+1))/2];
end
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = min(xx):0.001:max(xx);
YY = fitobject(XX);
H3 = plot(XX,YY/max(YY),'LineWidth',My_LineWidth,'Color',My_Colors_9(3,:));

% 5th and 95th
Prctile_Female = prctile(dWr_Wp_03_KNHANES_Female__50,My_Percentile);
XX = [Prctile_Female(1) Prctile_Female(1)]; 
YY = [0 1.2]; 
HH1 = plot(XX,YY,':','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(3,:)); % 5th
XX = [Prctile_Female(3) Prctile_Female(3)]; 
YY = [0 1.2]; 
HH2 = plot(XX,YY,'--','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(3,:)); % 95th

% 04_SHARE
Temp = dWr_Wp_04_SHARE_Female__50;
dWr_Wp_04_SHARE_Female__50 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100 % -100 <= Wr-Wp <= 100
        dWr_Wp_04_SHARE_Female__50 = [dWr_Wp_04_SHARE_Female__50 Temp(i)];
    end
end
nbins = 80;
figure;
HH_Female = histogram(dWr_Wp_04_SHARE_Female__50,nbins);

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
My_P = prctile(dWr_Wp_04_SHARE_Female__50,My_Percentile);
[M N] = size(HH_Female.BinEdges);
x_data = [];
y_data = HH_Female.Values;
for i = 1:N-1
    x_data = [x_data (xx(i)+xx(i+1))/2];
end
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = min(xx):0.001:max(xx);
YY = fitobject(XX);
H4 = plot(XX,YY/max(YY),'LineWidth',My_LineWidth,'Color',My_Colors_9(4,:));

% 5th and 95th
Prctile_Female = prctile(dWr_Wp_04_SHARE_Female__50,My_Percentile);
XX = [Prctile_Female(1) Prctile_Female(1)]; 
YY = [0 1.2]; 
HH1 = plot(XX,YY,':','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(4,:)); % 5th
XX = [Prctile_Female(3) Prctile_Female(3)]; 
YY = [0 1.2]; 
HH2 = plot(XX,YY,'--','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(4,:)); % 95th

% 05_KSPF
Temp = dWr_Wp_05_KSPF_Female__50;
dWr_Wp_05_KSPF_Female__50 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100 % -100 <= Wr-Wp <= 100
        dWr_Wp_05_KSPF_Female__50 = [dWr_Wp_05_KSPF_Female__50 Temp(i)];
    end
end
nbins = 80;
figure;
HH_Female = histogram(dWr_Wp_05_KSPF_Female__50,nbins);

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
My_P = prctile(dWr_Wp_05_KSPF_Female__50,My_Percentile);
[M N] = size(HH_Female.BinEdges);
x_data = [];
y_data = HH_Female.Values;
for i = 1:N-1
    x_data = [x_data (xx(i)+xx(i+1))/2];
end
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = min(xx):0.001:max(xx);
YY = fitobject(XX);
H5 = plot(XX,YY/max(YY),'LineWidth',My_LineWidth,'Color',My_Colors_9(5,:));

% 5th and 95th
Prctile_Female = prctile(dWr_Wp_05_KSPF_Female__50,My_Percentile);
XX = [Prctile_Female(1) Prctile_Female(1)]; 
YY = [0 1.2]; 
HH1 = plot(XX,YY,':','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(5,:)); % 5th
XX = [Prctile_Female(3) Prctile_Female(3)]; 
YY = [0 1.2]; 
HH2 = plot(XX,YY,'--','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(5,:)); % 95th

% 06_ELSH_Brasil
Temp = dWr_Wp_06_ELSH_Brasil_Female__50;
dWr_Wp_06_ELSH_Brasil_Female__50 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100 % -100 <= Wr-Wp <= 100
        dWr_Wp_06_ELSH_Brasil_Female__50 = [dWr_Wp_06_ELSH_Brasil_Female__50 Temp(i)];
    end
end
nbins = 40;
figure;
HH_Female = histogram(dWr_Wp_06_ELSH_Brasil_Female__50,nbins);

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
My_P = prctile(dWr_Wp_06_ELSH_Brasil_Female__50,My_Percentile);
[M N] = size(HH_Female.BinEdges);
x_data = [];
y_data = HH_Female.Values;
for i = 1:N-1
    x_data = [x_data (xx(i)+xx(i+1))/2];
end
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = min(xx):0.001:max(xx);
YY = fitobject(XX);
H6 = plot(XX,YY/max(YY),'LineWidth',My_LineWidth,'Color',My_Colors_9(6,:));

% 5th and 95th
Prctile_Female = prctile(dWr_Wp_06_ELSH_Brasil_Female__50,My_Percentile);
XX = [Prctile_Female(1) Prctile_Female(1)]; 
YY = [0 1.2]; 
HH1 = plot(XX,YY,':','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(6,:)); % 5th
XX = [Prctile_Female(3) Prctile_Female(3)]; 
YY = [0 1.2]; 
HH2 = plot(XX,YY,'--','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(6,:)); % 95th

% 07_China
Temp = dWr_Wp_07_China_Female__50;
dWr_Wp_07_China_Female__50 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100 % -100 <= Wr-Wp <= 100
        dWr_Wp_07_China_Female__50 = [dWr_Wp_07_China_Female__50 Temp(i)];
    end
end
nbins = 80;
figure;
HH_Female = histogram(dWr_Wp_07_China_Female__50,nbins);

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
My_P = prctile(dWr_Wp_07_China_Female__50,My_Percentile);
[M N] = size(HH_Female.BinEdges);
x_data = [];
y_data = HH_Female.Values;
for i = 1:N-1
    x_data = [x_data (xx(i)+xx(i+1))/2];
end
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = min(xx):0.001:max(xx);
YY = fitobject(XX);
H7 = plot(XX,YY/max(YY),'LineWidth',My_LineWidth,'Color',My_Colors_9(7,:));

% 5th and 95th
Prctile_Female = prctile(dWr_Wp_07_China_Female__50,My_Percentile);
XX = [Prctile_Female(1) Prctile_Female(1)]; 
YY = [0 1.2]; 
HH1 = plot(XX,YY,':','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(7,:)); % 5th
XX = [Prctile_Female(3) Prctile_Female(3)]; 
YY = [0 1.2]; 
HH2 = plot(XX,YY,'--','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(7,:)); % 95th

% 08_Japan


% 09_Bangladesh


%% For Male
subplot(3,3,2); % For Male
hold on;
title('Male, Age < 25')
%xlabel('Wr-Wp (Kg)');
%ylabel('Normalized count')
xlim([-100 100]);
ylim([0 1.2]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)
%set(gca,'XTick',[0.85 0.9 0.935 1 1.066 1.1 1.15],'XTicklabel',{'0.85','0.9','0.935','1','1.066','1.1','1.15'});

yyy = -1:0.1:2;
xxx = 0+0*yyy;
plot(xxx,yyy,'LineWidth',0.5,'Color',[0 0 0]);

% Age < 25
% 01_NHANES
Temp = dWr_Wp_01_NHANES_Male__25;
dWr_Wp_01_NHANES_Male__25 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100 % -100 <= Wr-Wp <= 100
        dWr_Wp_01_NHANES_Male__25 = [dWr_Wp_01_NHANES_Male__25 Temp(i)];
    end
end
nbins = 80;
figure;
HH_Male = histogram(dWr_Wp_01_NHANES_Male__25,nbins);

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
My_P = prctile(dWr_Wp_01_NHANES_Male__25,My_Percentile);
[M N] = size(HH_Male.BinEdges);
x_data = [];
y_data = HH_Male.Values;
for i = 1:N-1
    x_data = [x_data (xx(i)+xx(i+1))/2];
end
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = min(xx):0.001:max(xx);
YY = fitobject(XX);
H1 = plot(XX,YY/max(YY),'LineWidth',My_LineWidth,'Color',My_Colors_9(1,:));

% 5th and 95th
Prctile_Male = prctile(dWr_Wp_01_NHANES_Male__25,My_Percentile);
XX = [Prctile_Male(1) Prctile_Male(1)]; 
YY = [0 1.2]; 
HH1 = plot(XX,YY,':','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(1,:)); % 5th
XX = [Prctile_Male(3) Prctile_Male(3)]; 
YY = [0 1.2]; 
HH2 = plot(XX,YY,'--','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(1,:)); % 95th

% 02_ENSAUNT
Temp = dWr_Wp_02_ENSAUNT_Male__25;
dWr_Wp_02_ENSAUNT_Male__25 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100 % -100 <= Wr-Wp <= 100
        dWr_Wp_02_ENSAUNT_Male__25 = [dWr_Wp_02_ENSAUNT_Male__25 Temp(i)];
    end
end
nbins = 80;
figure;
HH_Male = histogram(dWr_Wp_02_ENSAUNT_Male__25,nbins);

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
My_P = prctile(dWr_Wp_02_ENSAUNT_Male__25,My_Percentile);
[M N] = size(HH_Male.BinEdges);
x_data = [];
y_data = HH_Male.Values;
for i = 1:N-1
    x_data = [x_data (xx(i)+xx(i+1))/2];
end
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = min(xx):0.001:max(xx);
YY = fitobject(XX);
H2 = plot(XX,YY/max(YY),'LineWidth',My_LineWidth,'Color',My_Colors_9(2,:));

% 5th and 95th
Prctile_Male = prctile(dWr_Wp_02_ENSAUNT_Male__25,My_Percentile);
XX = [Prctile_Male(1) Prctile_Male(1)]; 
YY = [0 1.2]; 
HH1 = plot(XX,YY,':','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(2,:)); % 5th
XX = [Prctile_Male(3) Prctile_Male(3)]; 
YY = [0 1.2]; 
HH2 = plot(XX,YY,'--','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(2,:)); % 95th

% 03_KNHANES
Temp = dWr_Wp_03_KNHANES_Male__25;
dWr_Wp_03_KNHANES_Male__25 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100 % -100 <= Wr-Wp <= 100
        dWr_Wp_03_KNHANES_Male__25 = [dWr_Wp_03_KNHANES_Male__25 Temp(i)];
    end
end
nbins = 80;
figure;
HH_Male = histogram(dWr_Wp_03_KNHANES_Male__25,nbins);

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
My_P = prctile(dWr_Wp_03_KNHANES_Male__25,My_Percentile);
[M N] = size(HH_Male.BinEdges);
x_data = [];
y_data = HH_Male.Values;
for i = 1:N-1
    x_data = [x_data (xx(i)+xx(i+1))/2];
end
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = min(xx):0.001:max(xx);
YY = fitobject(XX);
H3 = plot(XX,YY/max(YY),'LineWidth',My_LineWidth,'Color',My_Colors_9(3,:));

% 5th and 95th
Prctile_Male = prctile(dWr_Wp_03_KNHANES_Male__25,My_Percentile);
XX = [Prctile_Male(1) Prctile_Male(1)]; 
YY = [0 1.2]; 
HH1 = plot(XX,YY,':','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(3,:)); % 5th
XX = [Prctile_Male(3) Prctile_Male(3)]; 
YY = [0 1.2]; 
HH2 = plot(XX,YY,'--','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(3,:)); % 95th

% 04_SHARE

% 05_KSPF
Temp = dWr_Wp_05_KSPF_Male__25;
dWr_Wp_05_KSPF_Male__25 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100 % -100 <= Wr-Wp <= 100
        dWr_Wp_05_KSPF_Male__25 = [dWr_Wp_05_KSPF_Male__25 Temp(i)];
    end
end
nbins = 80;
figure;
HH_Male = histogram(dWr_Wp_05_KSPF_Male__25,nbins);

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
My_P = prctile(dWr_Wp_05_KSPF_Male__25,My_Percentile);
[M N] = size(HH_Male.BinEdges);
x_data = [];
y_data = HH_Male.Values;
for i = 1:N-1
    x_data = [x_data (xx(i)+xx(i+1))/2];
end
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = min(xx):0.001:max(xx);
YY = fitobject(XX);
H5 = plot(XX,YY/max(YY),'LineWidth',My_LineWidth,'Color',My_Colors_9(5,:));

% 5th and 95th
Prctile_Male = prctile(dWr_Wp_05_KSPF_Male__25,My_Percentile);
XX = [Prctile_Male(1) Prctile_Male(1)]; 
YY = [0 1.2]; 
HH1 = plot(XX,YY,':','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(5,:)); % 5th
XX = [Prctile_Male(3) Prctile_Male(3)]; 
YY = [0 1.2]; 
HH2 = plot(XX,YY,'--','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(5,:)); % 95th

% 06_ELSH_Brasil

% 07_China
Temp = dWr_Wp_07_China_Male__25;
dWr_Wp_07_China_Male__25 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100 % -100 <= Wr-Wp <= 100
        dWr_Wp_07_China_Male__25 = [dWr_Wp_07_China_Male__25 Temp(i)];
    end
end
nbins = 80;
figure;
HH_Male = histogram(dWr_Wp_07_China_Male__25,nbins);

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
My_P = prctile(dWr_Wp_07_China_Male__25,My_Percentile);
[M N] = size(HH_Male.BinEdges);
x_data = [];
y_data = HH_Male.Values;
for i = 1:N-1
    x_data = [x_data (xx(i)+xx(i+1))/2];
end
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = min(xx):0.001:max(xx);
YY = fitobject(XX);
H7 = plot(XX,YY/max(YY),'LineWidth',My_LineWidth,'Color',My_Colors_9(7,:));

% 5th and 95th
Prctile_Male = prctile(dWr_Wp_07_China_Male__25,My_Percentile);
XX = [Prctile_Male(1) Prctile_Male(1)]; 
YY = [0 1.2]; 
HH1 = plot(XX,YY,':','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(7,:)); % 5th
XX = [Prctile_Male(3) Prctile_Male(3)]; 
YY = [0 1.2]; 
HH2 = plot(XX,YY,'--','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(7,:)); % 95th

% 08_Japan
Temp = dWr_Wp_08_Japan_Male__25;
dWr_Wp_08_Japan_Male__25 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100 % -100 <= Wr-Wp <= 100
        dWr_Wp_08_Japan_Male__25 = [dWr_Wp_08_Japan_Male__25 Temp(i)];
    end
end
nbins = 80;
figure;
HH_Male = histogram(dWr_Wp_08_Japan_Male__25,nbins);

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
My_P = prctile(dWr_Wp_08_Japan_Male__25,My_Percentile);
[M N] = size(HH_Male.BinEdges);
x_data = [];
y_data = HH_Male.Values;
for i = 1:N-1
    x_data = [x_data (xx(i)+xx(i+1))/2];
end
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = min(xx):0.001:max(xx);
YY = fitobject(XX);
H8 = plot(XX,YY/max(YY),'LineWidth',My_LineWidth,'Color',My_Colors_9(8,:));

% 5th and 95th
Prctile_Male = prctile(dWr_Wp_08_Japan_Male__25,My_Percentile);
XX = [Prctile_Male(1) Prctile_Male(1)]; 
YY = [0 1.2]; 
HH1 = plot(XX,YY,':','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(8,:)); % 5th
XX = [Prctile_Male(3) Prctile_Male(3)]; 
YY = [0 1.2]; 
HH2 = plot(XX,YY,'--','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(8,:)); % 95th

% 09_Bangladesh


subplot(3,3,5); % For Male
hold on;
title('Male, 25 <= Age <50')
%xlabel('Wr-Wp (Kg)');
%ylabel('Normalized count')
xlim([-100 100]);
ylim([0 1.2]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)
%set(gca,'XTick',[0.85 0.9 0.935 1 1.066 1.1 1.15],'XTicklabel',{'0.85','0.9','0.935','1','1.066','1.1','1.15'});

yyy = -1:0.1:2;
xxx = 0+0*yyy;
plot(xxx,yyy,'LineWidth',0.5,'Color',[0 0 0]);

% 25 <= Age <50
% 01_NHANES
Temp = dWr_Wp_01_NHANES_Male__25_50;
dWr_Wp_01_NHANES_Male__25_50 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100 % -100 <= Wr-Wp <= 100
        dWr_Wp_01_NHANES_Male__25_50 = [dWr_Wp_01_NHANES_Male__25_50 Temp(i)];
    end
end
nbins = 80;
figure;
HH_Male = histogram(dWr_Wp_01_NHANES_Male__25_50,nbins);

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
My_P = prctile(dWr_Wp_01_NHANES_Male__25_50,My_Percentile);
[M N] = size(HH_Male.BinEdges);
x_data = [];
y_data = HH_Male.Values;
for i = 1:N-1
    x_data = [x_data (xx(i)+xx(i+1))/2];
end
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = min(xx):0.001:max(xx);
YY = fitobject(XX);
H1 = plot(XX,YY/max(YY),'LineWidth',My_LineWidth,'Color',My_Colors_9(1,:));

% 5th and 95th
Prctile_Male = prctile(dWr_Wp_01_NHANES_Male__25_50,My_Percentile);
XX = [Prctile_Male(1) Prctile_Male(1)]; 
YY = [0 1.2]; 
HH1 = plot(XX,YY,':','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(1,:)); % 5th
XX = [Prctile_Male(3) Prctile_Male(3)]; 
YY = [0 1.2]; 
HH2 = plot(XX,YY,'--','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(1,:)); % 95th

% 02_ENSAUNT
Temp = dWr_Wp_02_ENSAUNT_Male__25_50;
dWr_Wp_02_ENSAUNT_Male__25_50 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100 % -100 <= Wr-Wp <= 100
        dWr_Wp_02_ENSAUNT_Male__25_50 = [dWr_Wp_02_ENSAUNT_Male__25_50 Temp(i)];
    end
end
nbins = 80;
figure;
HH_Male = histogram(dWr_Wp_02_ENSAUNT_Male__25_50,nbins);

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
My_P = prctile(dWr_Wp_02_ENSAUNT_Male__25_50,My_Percentile);
[M N] = size(HH_Male.BinEdges);
x_data = [];
y_data = HH_Male.Values;
for i = 1:N-1
    x_data = [x_data (xx(i)+xx(i+1))/2];
end
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = min(xx):0.001:max(xx);
YY = fitobject(XX);
H2 = plot(XX,YY/max(YY),'LineWidth',My_LineWidth,'Color',My_Colors_9(2,:));

% 5th and 95th
Prctile_Male = prctile(dWr_Wp_02_ENSAUNT_Male__25_50,My_Percentile);
XX = [Prctile_Male(1) Prctile_Male(1)]; 
YY = [0 1.2]; 
HH1 = plot(XX,YY,':','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(2,:)); % 5th
XX = [Prctile_Male(3) Prctile_Male(3)]; 
YY = [0 1.2]; 
HH2 = plot(XX,YY,'--','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(2,:)); % 95th

% 03_KNHANES
Temp = dWr_Wp_03_KNHANES_Male__25_50;
dWr_Wp_03_KNHANES_Male__25_50 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100 % -100 <= Wr-Wp <= 100
        dWr_Wp_03_KNHANES_Male__25_50 = [dWr_Wp_03_KNHANES_Male__25_50 Temp(i)];
    end
end
nbins = 80;
figure;
HH_Male = histogram(dWr_Wp_03_KNHANES_Male__25_50,nbins);

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
My_P = prctile(dWr_Wp_03_KNHANES_Male__25_50,My_Percentile);
[M N] = size(HH_Male.BinEdges);
x_data = [];
y_data = HH_Male.Values;
for i = 1:N-1
    x_data = [x_data (xx(i)+xx(i+1))/2];
end
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = min(xx):0.001:max(xx);
YY = fitobject(XX);
H3 = plot(XX,YY/max(YY),'LineWidth',My_LineWidth,'Color',My_Colors_9(3,:));

% 5th and 95th
Prctile_Male = prctile(dWr_Wp_03_KNHANES_Male__25_50,My_Percentile);
XX = [Prctile_Male(1) Prctile_Male(1)]; 
YY = [0 1.2]; 
HH1 = plot(XX,YY,':','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(3,:)); % 5th
XX = [Prctile_Male(3) Prctile_Male(3)]; 
YY = [0 1.2]; 
HH2 = plot(XX,YY,'--','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(3,:)); % 95th

% 04_SHARE


% 05_KSPF
Temp = dWr_Wp_05_KSPF_Male__25_50;
dWr_Wp_05_KSPF_Male__25_50 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100 % -100 <= Wr-Wp <= 100
        dWr_Wp_05_KSPF_Male__25_50 = [dWr_Wp_05_KSPF_Male__25_50 Temp(i)];
    end
end
nbins = 80;
figure;
HH_Male = histogram(dWr_Wp_05_KSPF_Male__25_50,nbins);

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
My_P = prctile(dWr_Wp_05_KSPF_Male__25_50,My_Percentile);
[M N] = size(HH_Male.BinEdges);
x_data = [];
y_data = HH_Male.Values;
for i = 1:N-1
    x_data = [x_data (xx(i)+xx(i+1))/2];
end
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = min(xx):0.001:max(xx);
YY = fitobject(XX);
H5 = plot(XX,YY/max(YY),'LineWidth',My_LineWidth,'Color',My_Colors_9(5,:));

% 5th and 95th
Prctile_Male = prctile(dWr_Wp_05_KSPF_Male__25_50,My_Percentile);
XX = [Prctile_Male(1) Prctile_Male(1)]; 
YY = [0 1.2]; 
HH1 = plot(XX,YY,':','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(5,:)); % 5th
XX = [Prctile_Male(3) Prctile_Male(3)]; 
YY = [0 1.2]; 
HH2 = plot(XX,YY,'--','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(5,:)); % 95th

% 06_ELSH_Brasil
Temp = dWr_Wp_06_ELSH_Brasil_Male__25_50;
dWr_Wp_06_ELSH_Brasil_Male__25_50 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100 % -100 <= Wr-Wp <= 100
        dWr_Wp_06_ELSH_Brasil_Male__25_50 = [dWr_Wp_06_ELSH_Brasil_Male__25_50 Temp(i)];
    end
end
nbins = 40;
figure;
HH_Male = histogram(dWr_Wp_06_ELSH_Brasil_Male__25_50,nbins);

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
My_P = prctile(dWr_Wp_06_ELSH_Brasil_Male__25_50,My_Percentile);
[M N] = size(HH_Male.BinEdges);
x_data = [];
y_data = HH_Male.Values;
for i = 1:N-1
    x_data = [x_data (xx(i)+xx(i+1))/2];
end
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = min(xx):0.001:max(xx);
YY = fitobject(XX);
H6 = plot(XX,YY/max(YY),'LineWidth',My_LineWidth,'Color',My_Colors_9(6,:));

% 5th and 95th
Prctile_Male = prctile(dWr_Wp_06_ELSH_Brasil_Male__25_50,My_Percentile);
XX = [Prctile_Male(1) Prctile_Male(1)]; 
YY = [0 1.2]; 
HH1 = plot(XX,YY,':','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(6,:)); % 5th
XX = [Prctile_Male(3) Prctile_Male(3)]; 
YY = [0 1.2]; 
HH2 = plot(XX,YY,'--','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(6,:)); % 95th

% 07_China
Temp = dWr_Wp_07_China_Male__25_50;
dWr_Wp_07_China_Male__25_50 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100 % -100 <= Wr-Wp <= 100
        dWr_Wp_07_China_Male__25_50 = [dWr_Wp_07_China_Male__25_50 Temp(i)];
    end
end
nbins = 80;
figure;
HH_Male = histogram(dWr_Wp_07_China_Male__25_50,nbins);

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
My_P = prctile(dWr_Wp_07_China_Male__25_50,My_Percentile);
[M N] = size(HH_Male.BinEdges);
x_data = [];
y_data = HH_Male.Values;
for i = 1:N-1
    x_data = [x_data (xx(i)+xx(i+1))/2];
end
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = min(xx):0.001:max(xx);
YY = fitobject(XX);
H7 = plot(XX,YY/max(YY),'LineWidth',My_LineWidth,'Color',My_Colors_9(7,:));

% 5th and 95th
Prctile_Male = prctile(dWr_Wp_07_China_Male__25_50,My_Percentile);
XX = [Prctile_Male(1) Prctile_Male(1)]; 
YY = [0 1.2]; 
HH1 = plot(XX,YY,':','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(7,:)); % 5th
XX = [Prctile_Male(3) Prctile_Male(3)]; 
YY = [0 1.2]; 
HH2 = plot(XX,YY,'--','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(7,:)); % 95th

% 08_Japan


% 09_Bangladesh


subplot(3,3,8); % For Male
hold on;
title('Age > 50')
xlabel('Wr-Wp (Kg)');
%ylabel('Normalized count')
xlim([-100 100]);
ylim([0 1.2]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)
%set(gca,'XTick',[0.85 0.9 0.935 1 1.066 1.1 1.15],'XTicklabel',{'0.85','0.9','0.935','1','1.066','1.1','1.15'});

yyy = -1:0.1:2;
xxx = 0+0*yyy;
plot(xxx,yyy,'LineWidth',0.5,'Color',[0 0 0]);

% Age > 50
% 01_NHANES
Temp = dWr_Wp_01_NHANES_Male__50;
dWr_Wp_01_NHANES_Male__50 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100 % -100 <= Wr-Wp <= 100
        dWr_Wp_01_NHANES_Male__50 = [dWr_Wp_01_NHANES_Male__50 Temp(i)];
    end
end
nbins = 80;
figure;
HH_Male = histogram(dWr_Wp_01_NHANES_Male__50,nbins);

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
My_P = prctile(dWr_Wp_01_NHANES_Male__50,My_Percentile);
[M N] = size(HH_Male.BinEdges);
x_data = [];
y_data = HH_Male.Values;
for i = 1:N-1
    x_data = [x_data (xx(i)+xx(i+1))/2];
end
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = min(xx):0.001:max(xx);
YY = fitobject(XX);
H1 = plot(XX,YY/max(YY),'LineWidth',My_LineWidth,'Color',My_Colors_9(1,:));

% 5th and 95th
Prctile_Male = prctile(dWr_Wp_01_NHANES_Male__50,My_Percentile);
XX = [Prctile_Male(1) Prctile_Male(1)]; 
YY = [0 1.2]; 
HH1 = plot(XX,YY,':','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(1,:)); % 5th
XX = [Prctile_Male(3) Prctile_Male(3)]; 
YY = [0 1.2]; 
HH2 = plot(XX,YY,'--','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(1,:)); % 95th

% 02_ENSAUNT
Temp = dWr_Wp_02_ENSAUNT_Male__50;
dWr_Wp_02_ENSAUNT_Male__50 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100 % -100 <= Wr-Wp <= 100
        dWr_Wp_02_ENSAUNT_Male__50 = [dWr_Wp_02_ENSAUNT_Male__50 Temp(i)];
    end
end
nbins = 80;
figure;
HH_Male = histogram(dWr_Wp_02_ENSAUNT_Male__50,nbins);

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
My_P = prctile(dWr_Wp_02_ENSAUNT_Male__50,My_Percentile);
[M N] = size(HH_Male.BinEdges);
x_data = [];
y_data = HH_Male.Values;
for i = 1:N-1
    x_data = [x_data (xx(i)+xx(i+1))/2];
end
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = min(xx):0.001:max(xx);
YY = fitobject(XX);
H2 = plot(XX,YY/max(YY),'LineWidth',My_LineWidth,'Color',My_Colors_9(2,:));

% 5th and 95th
Prctile_Male = prctile(dWr_Wp_02_ENSAUNT_Male__50,My_Percentile);
XX = [Prctile_Male(1) Prctile_Male(1)]; 
YY = [0 1.2]; 
HH1 = plot(XX,YY,':','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(2,:)); % 5th
XX = [Prctile_Male(3) Prctile_Male(3)]; 
YY = [0 1.2]; 
HH2 = plot(XX,YY,'--','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(2,:)); % 95th

% 03_KNHANES
Temp = dWr_Wp_03_KNHANES_Male__50;
dWr_Wp_03_KNHANES_Male__50 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100 % -100 <= Wr-Wp <= 100
        dWr_Wp_03_KNHANES_Male__50 = [dWr_Wp_03_KNHANES_Male__50 Temp(i)];
    end
end
nbins = 80;
figure;
HH_Male = histogram(dWr_Wp_03_KNHANES_Male__50,nbins);

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
My_P = prctile(dWr_Wp_03_KNHANES_Male__50,My_Percentile);
[M N] = size(HH_Male.BinEdges);
x_data = [];
y_data = HH_Male.Values;
for i = 1:N-1
    x_data = [x_data (xx(i)+xx(i+1))/2];
end
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = min(xx):0.001:max(xx);
YY = fitobject(XX);
H3 = plot(XX,YY/max(YY),'LineWidth',My_LineWidth,'Color',My_Colors_9(3,:));

% 5th and 95th
Prctile_Male = prctile(dWr_Wp_03_KNHANES_Male__50,My_Percentile);
XX = [Prctile_Male(1) Prctile_Male(1)]; 
YY = [0 1.2]; 
HH1 = plot(XX,YY,':','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(3,:)); % 5th
XX = [Prctile_Male(3) Prctile_Male(3)]; 
YY = [0 1.2]; 
HH2 = plot(XX,YY,'--','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(3,:)); % 95th

% 04_SHARE
Temp = dWr_Wp_04_SHARE_Male__50;
dWr_Wp_04_SHARE_Male__50 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100 % -100 <= Wr-Wp <= 100
        dWr_Wp_04_SHARE_Male__50 = [dWr_Wp_04_SHARE_Male__50 Temp(i)];
    end
end
nbins = 80;
figure;
HH_Male = histogram(dWr_Wp_04_SHARE_Male__50,nbins);

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
My_P = prctile(dWr_Wp_04_SHARE_Male__50,My_Percentile);
[M N] = size(HH_Male.BinEdges);
x_data = [];
y_data = HH_Male.Values;
for i = 1:N-1
    x_data = [x_data (xx(i)+xx(i+1))/2];
end
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = min(xx):0.001:max(xx);
YY = fitobject(XX);
H4 = plot(XX,YY/max(YY),'LineWidth',My_LineWidth,'Color',My_Colors_9(4,:));

% 5th and 95th
Prctile_Male = prctile(dWr_Wp_04_SHARE_Male__50,My_Percentile);
XX = [Prctile_Male(1) Prctile_Male(1)]; 
YY = [0 1.2]; 
HH1 = plot(XX,YY,':','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(4,:)); % 5th
XX = [Prctile_Male(3) Prctile_Male(3)]; 
YY = [0 1.2]; 
HH2 = plot(XX,YY,'--','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(4,:)); % 95th

% 05_KSPF
Temp = dWr_Wp_05_KSPF_Male__50;
dWr_Wp_05_KSPF_Male__50 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100 % -100 <= Wr-Wp <= 100
        dWr_Wp_05_KSPF_Male__50 = [dWr_Wp_05_KSPF_Male__50 Temp(i)];
    end
end
nbins = 80;
figure;
HH_Male = histogram(dWr_Wp_05_KSPF_Male__50,nbins);

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
My_P = prctile(dWr_Wp_05_KSPF_Male__50,My_Percentile);
[M N] = size(HH_Male.BinEdges);
x_data = [];
y_data = HH_Male.Values;
for i = 1:N-1
    x_data = [x_data (xx(i)+xx(i+1))/2];
end
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = min(xx):0.001:max(xx);
YY = fitobject(XX);
H5 = plot(XX,YY/max(YY),'LineWidth',My_LineWidth,'Color',My_Colors_9(5,:));

% 5th and 95th
Prctile_Male = prctile(dWr_Wp_05_KSPF_Male__50,My_Percentile);
XX = [Prctile_Male(1) Prctile_Male(1)]; 
YY = [0 1.2]; 
HH1 = plot(XX,YY,':','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(5,:)); % 5th
XX = [Prctile_Male(3) Prctile_Male(3)]; 
YY = [0 1.2]; 
HH2 = plot(XX,YY,'--','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(5,:)); % 95th

% 06_ELSH_Brasil
Temp = dWr_Wp_06_ELSH_Brasil_Male__50;
dWr_Wp_06_ELSH_Brasil_Male__50 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100 % -100 <= Wr-Wp <= 100
        dWr_Wp_06_ELSH_Brasil_Male__50 = [dWr_Wp_06_ELSH_Brasil_Male__50 Temp(i)];
    end
end
nbins = 40;
figure;
HH_Male = histogram(dWr_Wp_06_ELSH_Brasil_Male__50,nbins);

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
My_P = prctile(dWr_Wp_06_ELSH_Brasil_Male__50,My_Percentile);
[M N] = size(HH_Male.BinEdges);
x_data = [];
y_data = HH_Male.Values;
for i = 1:N-1
    x_data = [x_data (xx(i)+xx(i+1))/2];
end
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = min(xx):0.001:max(xx);
YY = fitobject(XX);
H6 = plot(XX,YY/max(YY),'LineWidth',My_LineWidth,'Color',My_Colors_9(6,:));

% 5th and 95th
Prctile_Male = prctile(dWr_Wp_06_ELSH_Brasil_Male__50,My_Percentile);
XX = [Prctile_Male(1) Prctile_Male(1)]; 
YY = [0 1.2]; 
HH1 = plot(XX,YY,':','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(6,:)); % 5th
XX = [Prctile_Male(3) Prctile_Male(3)]; 
YY = [0 1.2]; 
HH2 = plot(XX,YY,'--','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(6,:)); % 95th

% 07_China
Temp = dWr_Wp_07_China_Male__50;
dWr_Wp_07_China_Male__50 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100 % -100 <= Wr-Wp <= 100
        dWr_Wp_07_China_Male__50 = [dWr_Wp_07_China_Male__50 Temp(i)];
    end
end
nbins = 80;
figure;
HH_Male = histogram(dWr_Wp_07_China_Male__50,nbins);

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
My_P = prctile(dWr_Wp_07_China_Male__50,My_Percentile);
[M N] = size(HH_Male.BinEdges);
x_data = [];
y_data = HH_Male.Values;
for i = 1:N-1
    x_data = [x_data (xx(i)+xx(i+1))/2];
end
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = min(xx):0.001:max(xx);
YY = fitobject(XX);
H7 = plot(XX,YY/max(YY),'LineWidth',My_LineWidth,'Color',My_Colors_9(7,:));

% 5th and 95th
Prctile_Male = prctile(dWr_Wp_07_China_Male__50,My_Percentile);
XX = [Prctile_Male(1) Prctile_Male(1)]; 
YY = [0 1.2]; 
HH1 = plot(XX,YY,':','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(7,:)); % 5th
XX = [Prctile_Male(3) Prctile_Male(3)]; 
YY = [0 1.2]; 
HH2 = plot(XX,YY,'--','LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(7,:)); % 95th

% 08_Japan


% 09_Bangladesh


%% Legend
subplot(3,3,9)
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

toc;