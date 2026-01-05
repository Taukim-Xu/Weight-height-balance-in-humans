%% Source codes for Figure 6(b)
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
% Europe
load('dWr_Wp_Europe_ALL_2.mat')
% America
load('dWr_Wp_America_ALL_0.mat')
load('dWr_Wp_America_ALL_1.mat')
load('dWr_Wp_America_ALL_2.mat')
% Asia
load('dWr_Wp_Asia_ALL_0.mat')
load('dWr_Wp_Asia_ALL_1.mat')
load('dWr_Wp_Asia_ALL_2.mat')
%% We show the results
%% 
FF = figure;
% For Europe_ALL
subplot(3,2,1); % For Female
hold on;
title('Female')
%xlabel('Wr-Wp (Kg)');
ylabel('Normalized count')
xlim([-100 100]);
ylim([0 1.2]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)
%set(gca,'XTick',[0.85 0.9 0.935 1 1.066 1.1 1.15],'XTicklabel',{'0.85','0.9','0.935','1','1.066','1.1','1.15'});

% Age >= 50
Temp = dWr_Wp_Europe_ALL_Female_2;
dWr_Wp_Europe_ALL_Female_2 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100 % -100 <= Wr-Wp <= 100
        dWr_Wp_Europe_ALL_Female_2 = [dWr_Wp_Europe_ALL_Female_2 Temp(i)];
    end
end
nbins = 80;
figure;
HH_Female = histogram(dWr_Wp_Europe_ALL_Female_2,nbins);

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
My_P = prctile(dWr_Wp_Europe_ALL_Female_2,My_Percentile);
[M N] = size(HH_Female.BinEdges);
x_data = [];
y_data = HH_Female.Values;
for i = 1:N-1
    x_data = [x_data (xx(i)+xx(i+1))/2];
end
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = min(xx):0.001:max(xx);
YY = fitobject(XX);
H3 = plot(XX,YY/max(YY),'LineWidth',My_LineWidth,'Color',My_Colors_4_1(3,:));

% 5th and 95th
Prctile_Female = prctile(dWr_Wp_Europe_ALL_Female_2,My_Percentile);
XX = [Prctile_Female(1) Prctile_Female(1)]; 
YY = [0 1.2]; 
HH1 = plot(XX,YY,':','LineWidth',My_LineWidth-0.5,'Color',My_Colors_4_1(3,:)); % 5th
XX = [Prctile_Female(3) Prctile_Female(3)]; 
YY = [0 1.2]; 
HH2 = plot(XX,YY,'--','LineWidth',My_LineWidth-0.5,'Color',My_Colors_4_1(3,:)); % 95th

% Legend
H5 = plot([-1 -2],[-1 -2],':','LineWidth',My_LineWidth-0.5,'Color',[0 0 0]); % 5th
H6 = plot([-1 -2],[-1 -2],'--','LineWidth',My_LineWidth-0.5,'Color',[0 0 0]); % 95th
Legend = legend([H3 H5 H6],'Age >= 50','5th','95th','Location','northwest');
set(Legend,'Box','off','FontSize',12,'FontName',My_FontName)

% For Europe_ALL
subplot(3,2,2); % For Male
hold on;
title('Male')
%xlabel('Wr-Wp (Kg)');
%ylabel('Normalized count')
xlim([-100 100]);
ylim([0 1.2]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)
%set(gca,'XTick',[0.85 0.9 0.935 1 1.066 1.1 1.15],'XTicklabel',{'0.85','0.9','0.935','1','1.066','1.1','1.15'});

% Age >= 50
Temp = dWr_Wp_Europe_ALL_Male_2;
dWr_Wp_Europe_ALL_Male_2 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100 % -100 <= Wr-Wp <= 100
        dWr_Wp_Europe_ALL_Male_2 = [dWr_Wp_Europe_ALL_Male_2 Temp(i)];
    end
end
figure;
nbins = 80;
HH_Male = histogram(dWr_Wp_Europe_ALL_Male_2,nbins);

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
My_P = prctile(dWr_Wp_Europe_ALL_Male_2,My_Percentile);
[M N] = size(HH_Male.BinEdges);
x_data = [];
y_data = HH_Male.Values;
for i = 1:N-1
    x_data = [x_data (xx(i)+xx(i+1))/2];
end
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = min(xx):0.001:max(xx);
YY = fitobject(XX);
H3 = plot(XX,YY/max(YY),'LineWidth',My_LineWidth,'Color',My_Colors_4_1(3,:));

% 5th and 95th
Prctile_Male = prctile(dWr_Wp_Europe_ALL_Male_2,My_Percentile);
XX = [Prctile_Male(1) Prctile_Male(1)]; 
YY = [0 1.2]; 
HH1 = plot(XX,YY,':','LineWidth',My_LineWidth-0.5,'Color',My_Colors_4_1(3,:)); % 5th
XX = [Prctile_Male(3) Prctile_Male(3)]; 
YY = [0 1.2]; 
HH2 = plot(XX,YY,'--','LineWidth',My_LineWidth-0.5,'Color',My_Colors_4_1(3,:)); % 95th

% Legend
H5 = plot([-1 -2],[-1 -2],':','LineWidth',My_LineWidth-0.5,'Color',[0 0 0]); % 5th
H6 = plot([-1 -2],[-1 -2],'--','LineWidth',My_LineWidth-0.5,'Color',[0 0 0]); % 95th
Legend = legend([H3 H5 H6],'Age >= 50','5th','95th','Location','northwest');
set(Legend,'Box','off','FontSize',12,'FontName',My_FontName)

% For America_ALL
subplot(3,2,3); % For Female
hold on;
%title('Female')
%xlabel('Wr-Wp (Kg)');
ylabel('Normalized count')
xlim([-100 100]);
ylim([0 1.2]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)
%set(gca,'XTick',[0.85 0.9 0.935 1 1.066 1.1 1.15],'XTicklabel',{'0.85','0.9','0.935','1','1.066','1.1','1.15'});

% Age < 25
Temp = dWr_Wp_America_ALL_Female_0;
dWr_Wp_America_ALL_Female_0 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100 % -100 <= Wr-Wp <= 100
        dWr_Wp_America_ALL_Female_0 = [dWr_Wp_America_ALL_Female_0 Temp(i)];
    end
end
nbins = 100;
figure;
HH_Female = histogram(dWr_Wp_America_ALL_Female_0,nbins);

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
My_P = prctile(dWr_Wp_America_ALL_Female_0,My_Percentile);
[M N] = size(HH_Female.BinEdges);
x_data = [];
y_data = HH_Female.Values;
for i = 1:N-1
    x_data = [x_data (xx(i)+xx(i+1))/2];
end
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = min(xx):0.001:max(xx);
YY = fitobject(XX);
H1 = plot(XX,YY/max(YY),'LineWidth',My_LineWidth,'Color',My_Colors_4_1(1,:));

% 5th and 95th
Prctile_Female = prctile(dWr_Wp_America_ALL_Female_0,My_Percentile);
XX = [Prctile_Female(1) Prctile_Female(1)]; 
YY = [0 1.2]; 
HH1 = plot(XX,YY,':','LineWidth',My_LineWidth-0.5,'Color',My_Colors_4_1(1,:)); % 5th
XX = [Prctile_Female(3) Prctile_Female(3)]; 
YY = [0 1.2]; 
HH2 = plot(XX,YY,'--','LineWidth',My_LineWidth-0.5,'Color',My_Colors_4_1(1,:)); % 95th

% 25 <= Age <50
Temp = dWr_Wp_America_ALL_Female_1;
dWr_Wp_America_ALL_Female_1 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100 % -100 <= Wr-Wp <= 100
        dWr_Wp_America_ALL_Female_1 = [dWr_Wp_America_ALL_Female_1 Temp(i)];
    end
end
nbins = 50;
figure;
HH_Female = histogram(dWr_Wp_America_ALL_Female_1,nbins);

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
My_P = prctile(dWr_Wp_America_ALL_Female_1,My_Percentile);
[M N] = size(HH_Female.BinEdges);
x_data = [];
y_data = HH_Female.Values;
for i = 1:N-1
    x_data = [x_data (xx(i)+xx(i+1))/2];
end
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = min(xx):0.001:max(xx);
YY = fitobject(XX);
H2 = plot(XX,YY/max(YY),'LineWidth',My_LineWidth,'Color',My_Colors_4_1(2,:));

% 5th and 95th
Prctile_Female = prctile(dWr_Wp_America_ALL_Female_1,My_Percentile);
XX = [Prctile_Female(1) Prctile_Female(1)]; 
YY = [0 1.2]; 
HH1 = plot(XX,YY,':','LineWidth',My_LineWidth-0.5,'Color',My_Colors_4_1(2,:)); % 5th
XX = [Prctile_Female(3) Prctile_Female(3)]; 
YY = [0 1.2]; 
HH2 = plot(XX,YY,'--','LineWidth',My_LineWidth-0.5,'Color',My_Colors_4_1(2,:)); % 95th

% Age >= 50
Temp = dWr_Wp_America_ALL_Female_2;
dWr_Wp_America_ALL_Female_2 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100 % -100 <= Wr-Wp <= 100
        dWr_Wp_America_ALL_Female_2 = [dWr_Wp_America_ALL_Female_2 Temp(i)];
    end
end
nbins = 50;
figure;
HH_Female = histogram(dWr_Wp_America_ALL_Female_2,nbins);

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
My_P = prctile(dWr_Wp_America_ALL_Female_2,My_Percentile);
[M N] = size(HH_Female.BinEdges);
x_data = [];
y_data = HH_Female.Values;
for i = 1:N-1
    x_data = [x_data (xx(i)+xx(i+1))/2];
end
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = min(xx):0.001:max(xx);
YY = fitobject(XX);
H3 = plot(XX,YY/max(YY),'LineWidth',My_LineWidth,'Color',My_Colors_4_1(3,:));

% 5th and 95th
Prctile_Female = prctile(dWr_Wp_America_ALL_Female_2,My_Percentile);
XX = [Prctile_Female(1) Prctile_Female(1)]; 
YY = [0 1.2]; 
HH1 = plot(XX,YY,':','LineWidth',My_LineWidth-0.5,'Color',My_Colors_4_1(3,:)); % 5th
XX = [Prctile_Female(3) Prctile_Female(3)]; 
YY = [0 1.2]; 
HH2 = plot(XX,YY,'--','LineWidth',My_LineWidth-0.5,'Color',My_Colors_4_1(3,:)); % 95th

% Legend
H5 = plot([-1 -2],[-1 -2],':','LineWidth',My_LineWidth-0.5,'Color',[0 0 0]); % 5th
H6 = plot([-1 -2],[-1 -2],'--','LineWidth',My_LineWidth-0.5,'Color',[0 0 0]); % 95th
Legend = legend([H1 H2 H3 H5 H6],'Age < 25','25 <= Age < 50','Age >= 50','5th','95th','Location','northwest');
set(Legend,'Box','off','FontSize',12,'FontName',My_FontName)

% For America_ALL
subplot(3,2,4); % For Male
hold on;
%title('Male')
%xlabel('Wr-Wp (Kg)');
%ylabel('Normalized count')
xlim([-100 100]);
ylim([0 1.2]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)
%set(gca,'XTick',[0.85 0.9 0.935 1 1.066 1.1 1.15],'XTicklabel',{'0.85','0.9','0.935','1','1.066','1.1','1.15'});

% Age < 25
Temp = dWr_Wp_America_ALL_Male_0;
dWr_Wp_America_ALL_Male_0 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100 % -100 <= Wr-Wp <= 100
        dWr_Wp_America_ALL_Male_0 = [dWr_Wp_America_ALL_Male_0 Temp(i)];
    end
end
figure;
nbins = 100;
HH_Male = histogram(dWr_Wp_America_ALL_Male_0,nbins);

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
My_P = prctile(dWr_Wp_America_ALL_Male_0,My_Percentile);
[M N] = size(HH_Male.BinEdges);
x_data = [];
y_data = HH_Male.Values;
for i = 1:N-1
    x_data = [x_data (xx(i)+xx(i+1))/2];
end
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = min(xx):0.001:max(xx);
YY = fitobject(XX);
H1 = plot(XX,YY/max(YY),'LineWidth',My_LineWidth,'Color',My_Colors_4_1(1,:));

% 5th and 95th
Prctile_Male = prctile(dWr_Wp_America_ALL_Male_0,My_Percentile);
XX = [Prctile_Male(1) Prctile_Male(1)]; 
YY = [0 1.2]; 
HH1 = plot(XX,YY,':','LineWidth',My_LineWidth-0.5,'Color',My_Colors_4_1(1,:)); % 5th
XX = [Prctile_Male(3) Prctile_Male(3)]; 
YY = [0 1.2]; 
HH2 = plot(XX,YY,'--','LineWidth',My_LineWidth-0.5,'Color',My_Colors_4_1(1,:)); % 95th

% 25 <= Age <50
Temp = dWr_Wp_America_ALL_Male_1;
dWr_Wp_America_ALL_Male_1 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100 % -100 <= Wr-Wp <= 100
        dWr_Wp_America_ALL_Male_1 = [dWr_Wp_America_ALL_Male_1 Temp(i)];
    end
end
figure;
nbins = 50;
HH_Male = histogram(dWr_Wp_America_ALL_Male_1,nbins);

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
My_P = prctile(dWr_Wp_America_ALL_Male_1,My_Percentile);
[M N] = size(HH_Male.BinEdges);
x_data = [];
y_data = HH_Male.Values;
for i = 1:N-1
    x_data = [x_data (xx(i)+xx(i+1))/2];
end
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = min(xx):0.001:max(xx);
YY = fitobject(XX);
H2 = plot(XX,YY/max(YY),'LineWidth',My_LineWidth,'Color',My_Colors_4_1(2,:));

% 5th and 95th
Prctile_Male = prctile(dWr_Wp_America_ALL_Male_1,My_Percentile);
XX = [Prctile_Male(1) Prctile_Male(1)]; 
YY = [0 1.2]; 
HH1 = plot(XX,YY,':','LineWidth',My_LineWidth-0.5,'Color',My_Colors_4_1(2,:)); % 5th
XX = [Prctile_Male(3) Prctile_Male(3)]; 
YY = [0 1.2]; 
HH2 = plot(XX,YY,'--','LineWidth',My_LineWidth-0.5,'Color',My_Colors_4_1(2,:)); % 95th

% Age >= 50
Temp = dWr_Wp_America_ALL_Male_2;
dWr_Wp_America_ALL_Male_2 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100 % -100 <= Wr-Wp <= 100
        dWr_Wp_America_ALL_Male_2 = [dWr_Wp_America_ALL_Male_2 Temp(i)];
    end
end
figure;
nbins = 50;
HH_Male = histogram(dWr_Wp_America_ALL_Male_2,nbins);

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
My_P = prctile(dWr_Wp_America_ALL_Male_2,My_Percentile);
[M N] = size(HH_Male.BinEdges);
x_data = [];
y_data = HH_Male.Values;
for i = 1:N-1
    x_data = [x_data (xx(i)+xx(i+1))/2];
end
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = min(xx):0.001:max(xx);
YY = fitobject(XX);
H3 = plot(XX,YY/max(YY),'LineWidth',My_LineWidth,'Color',My_Colors_4_1(3,:));

% 5th and 95th
Prctile_Male = prctile(dWr_Wp_America_ALL_Male_2,My_Percentile);
XX = [Prctile_Male(1) Prctile_Male(1)]; 
YY = [0 1.2]; 
HH1 = plot(XX,YY,':','LineWidth',My_LineWidth-0.5,'Color',My_Colors_4_1(3,:)); % 5th
XX = [Prctile_Male(3) Prctile_Male(3)]; 
YY = [0 1.2]; 
HH2 = plot(XX,YY,'--','LineWidth',My_LineWidth-0.5,'Color',My_Colors_4_1(3,:)); % 95th

% Legend
H5 = plot([-1 -2],[-1 -2],':','LineWidth',My_LineWidth-0.5,'Color',[0 0 0]); % 5th
H6 = plot([-1 -2],[-1 -2],'--','LineWidth',My_LineWidth-0.5,'Color',[0 0 0]); % 95th
Legend = legend([H1 H2 H3 H5 H6],'Age < 25','25 <= Age < 50','Age >= 50','5th','95th','Location','northwest');
set(Legend,'Box','off','FontSize',12,'FontName',My_FontName)

% For Asia_ALL
subplot(3,2,5); % For Female
hold on;
%title('Female')
xlabel('Wr-Wp (Kg)');
ylabel('Normalized count')
xlim([-100 100]);
ylim([0 1.2]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)
%set(gca,'XTick',[0.85 0.9 0.935 1 1.066 1.1 1.15],'XTicklabel',{'0.85','0.9','0.935','1','1.066','1.1','1.15'});

% Age < 25
Temp = dWr_Wp_Asia_ALL_Female_0;
dWr_Wp_Asia_ALL_Female_0 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100 % -100 <= Wr-Wp <= 100
        dWr_Wp_Asia_ALL_Female_0 = [dWr_Wp_Asia_ALL_Female_0 Temp(i)];
    end
end
nbins = 100;
figure;
HH_Female = histogram(dWr_Wp_Asia_ALL_Female_0,nbins);

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
My_P = prctile(dWr_Wp_Asia_ALL_Female_0,My_Percentile);
[M N] = size(HH_Female.BinEdges);
x_data = [];
y_data = HH_Female.Values;
for i = 1:N-1
    x_data = [x_data (xx(i)+xx(i+1))/2];
end
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = min(xx):0.001:max(xx);
YY = fitobject(XX);
H1 = plot(XX,YY/max(YY),'LineWidth',My_LineWidth,'Color',My_Colors_4_1(1,:));

% 5th and 95th
Prctile_Female = prctile(dWr_Wp_Asia_ALL_Female_0,My_Percentile);
XX = [Prctile_Female(1) Prctile_Female(1)]; 
YY = [0 1.2]; 
HH1 = plot(XX,YY,':','LineWidth',My_LineWidth-0.5,'Color',My_Colors_4_1(1,:)); % 5th
XX = [Prctile_Female(3) Prctile_Female(3)]; 
YY = [0 1.2]; 
HH2 = plot(XX,YY,'--','LineWidth',My_LineWidth-0.5,'Color',My_Colors_4_1(1,:)); % 95th

% 25 <= Age <50
Temp = dWr_Wp_Asia_ALL_Female_1;
dWr_Wp_Asia_ALL_Female_1 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100 % -100 <= Wr-Wp <= 100
        dWr_Wp_Asia_ALL_Female_1 = [dWr_Wp_Asia_ALL_Female_1 Temp(i)];
    end
end
nbins = 70;
figure;
HH_Female = histogram(dWr_Wp_Asia_ALL_Female_1,nbins);

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
My_P = prctile(dWr_Wp_Asia_ALL_Female_1,My_Percentile);
[M N] = size(HH_Female.BinEdges);
x_data = [];
y_data = HH_Female.Values;
for i = 1:N-1
    x_data = [x_data (xx(i)+xx(i+1))/2];
end
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = min(xx):0.001:max(xx);
YY = fitobject(XX);
H2 = plot(XX,YY/max(YY),'LineWidth',My_LineWidth,'Color',My_Colors_4_1(2,:));

% 5th and 95th
Prctile_Female = prctile(dWr_Wp_Asia_ALL_Female_1,My_Percentile);
XX = [Prctile_Female(1) Prctile_Female(1)]; 
YY = [0 1.2]; 
HH1 = plot(XX,YY,':','LineWidth',My_LineWidth-0.5,'Color',My_Colors_4_1(2,:)); % 5th
XX = [Prctile_Female(3) Prctile_Female(3)]; 
YY = [0 1.2]; 
HH2 = plot(XX,YY,'--','LineWidth',My_LineWidth-0.5,'Color',My_Colors_4_1(2,:)); % 95th

% Age >= 50
Temp = dWr_Wp_Asia_ALL_Female_2;
My_P = prctile(Temp,[0.2 99.8]);
dWr_Wp_Asia_ALL_Female_2 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100 % -100 <= Wr-Wp <= 100
        dWr_Wp_Asia_ALL_Female_2 = [dWr_Wp_Asia_ALL_Female_2 Temp(i)];
    end
end
nbins = 80;
figure;
HH_Female = histogram(dWr_Wp_Asia_ALL_Female_2,nbins);

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
My_P = prctile(dWr_Wp_Asia_ALL_Female_2,My_Percentile);
[M N] = size(HH_Female.BinEdges);
x_data = [];
y_data = HH_Female.Values;
for i = 1:N-1
    x_data = [x_data (xx(i)+xx(i+1))/2];
end
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = min(xx):0.001:max(xx);
YY = fitobject(XX);
H3 = plot(XX,YY/max(YY),'LineWidth',My_LineWidth,'Color',My_Colors_4_1(3,:));

% 5th and 95th
Prctile_Female = prctile(dWr_Wp_Asia_ALL_Female_2,My_Percentile);
XX = [Prctile_Female(1) Prctile_Female(1)]; 
YY = [0 1.2]; 
HH1 = plot(XX,YY,':','LineWidth',My_LineWidth-0.5,'Color',My_Colors_4_1(3,:)); % 5th
XX = [Prctile_Female(3) Prctile_Female(3)]; 
YY = [0 1.2]; 
HH2 = plot(XX,YY,'--','LineWidth',My_LineWidth-0.5,'Color',My_Colors_4_1(3,:)); % 95th

% Legend
H5 = plot([-1 -2],[-1 -2],':','LineWidth',My_LineWidth-0.5,'Color',[0 0 0]); % 5th
H6 = plot([-1 -2],[-1 -2],'--','LineWidth',My_LineWidth-0.5,'Color',[0 0 0]); % 95th
Legend = legend([H1 H2 H3 H5 H6],'Age < 25','25 <= Age < 50','Age >= 50','5th','95th','Location','northwest');
set(Legend,'Box','off','FontSize',12,'FontName',My_FontName)

% For Asia_ALL
subplot(3,2,6); % For Male
hold on;
%title('Male')
xlabel('Wr-Wp (Kg)');
%ylabel('Normalized count')
xlim([-100 100]);
ylim([0 1.2]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)
%set(gca,'XTick',[0.85 0.9 0.935 1 1.066 1.1 1.15],'XTicklabel',{'0.85','0.9','0.935','1','1.066','1.1','1.15'});

% Age < 25
Temp = dWr_Wp_Asia_ALL_Male_0;
dWr_Wp_Asia_ALL_Male_0 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100 % -100 <= Wr-Wp <= 100
        dWr_Wp_Asia_ALL_Male_0 = [dWr_Wp_Asia_ALL_Male_0 Temp(i)];
    end
end
figure;
nbins = 100;
HH_Male = histogram(dWr_Wp_Asia_ALL_Male_0,nbins);

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
My_P = prctile(dWr_Wp_Asia_ALL_Male_0,My_Percentile);
[M N] = size(HH_Male.BinEdges);
x_data = [];
y_data = HH_Male.Values;
for i = 1:N-1
    x_data = [x_data (xx(i)+xx(i+1))/2];
end
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = min(xx):0.001:max(xx);
YY = fitobject(XX);
H1 = plot(XX,YY/max(YY),'LineWidth',My_LineWidth,'Color',My_Colors_4_1(1,:));

% 5th and 95th
Prctile_Male = prctile(dWr_Wp_Asia_ALL_Male_0,My_Percentile);
XX = [Prctile_Male(1) Prctile_Male(1)]; 
YY = [0 1.2]; 
HH1 = plot(XX,YY,':','LineWidth',My_LineWidth-0.5,'Color',My_Colors_4_1(1,:)); % 5th
XX = [Prctile_Male(3) Prctile_Male(3)]; 
YY = [0 1.2]; 
HH2 = plot(XX,YY,'--','LineWidth',My_LineWidth-0.5,'Color',My_Colors_4_1(1,:)); % 95th

% 25 <= Age <50
Temp = dWr_Wp_Asia_ALL_Male_1;
dWr_Wp_Asia_ALL_Male_1 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100 % -100 <= Wr-Wp <= 100
        dWr_Wp_Asia_ALL_Male_1 = [dWr_Wp_Asia_ALL_Male_1 Temp(i)];
    end
end
figure;
nbins = 70;
HH_Male = histogram(dWr_Wp_Asia_ALL_Male_1,nbins);

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
My_P = prctile(dWr_Wp_Asia_ALL_Male_1,My_Percentile);
[M N] = size(HH_Male.BinEdges);
x_data = [];
y_data = HH_Male.Values;
for i = 1:N-1
    x_data = [x_data (xx(i)+xx(i+1))/2];
end
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = min(xx):0.001:max(xx);
YY = fitobject(XX);
H2 = plot(XX,YY/max(YY),'LineWidth',My_LineWidth,'Color',My_Colors_4_1(2,:));

% 5th and 95th
Prctile_Male = prctile(dWr_Wp_Asia_ALL_Male_1,My_Percentile);
XX = [Prctile_Male(1) Prctile_Male(1)]; 
YY = [0 1.2]; 
HH1 = plot(XX,YY,':','LineWidth',My_LineWidth-0.5,'Color',My_Colors_4_1(2,:)); % 5th
XX = [Prctile_Male(3) Prctile_Male(3)]; 
YY = [0 1.2]; 
HH2 = plot(XX,YY,'--','LineWidth',My_LineWidth-0.5,'Color',My_Colors_4_1(2,:)); % 95th

% Age >= 50
Temp = dWr_Wp_Asia_ALL_Male_2;
dWr_Wp_Asia_ALL_Male_2 = [];
[M N] = size(Temp);
for i = 1:N
    if Temp(i) >= -100 && Temp(i) <= 100 % -100 <= Wr-Wp <= 100
        dWr_Wp_Asia_ALL_Male_2 = [dWr_Wp_Asia_ALL_Male_2 Temp(i)];
    end
end
figure;
nbins = 70;
HH_Male = histogram(dWr_Wp_Asia_ALL_Male_2,nbins);

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
My_P = prctile(dWr_Wp_Asia_ALL_Male_2,My_Percentile);
[M N] = size(HH_Male.BinEdges);
x_data = [];
y_data = HH_Male.Values;
for i = 1:N-1
    x_data = [x_data (xx(i)+xx(i+1))/2];
end
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = min(xx):0.001:max(xx);
YY = fitobject(XX);
H3 = plot(XX,YY/max(YY),'LineWidth',My_LineWidth,'Color',My_Colors_4_1(3,:));

% 5th and 95th
Prctile_Male = prctile(dWr_Wp_Asia_ALL_Male_2,My_Percentile);
XX = [Prctile_Male(1) Prctile_Male(1)]; 
YY = [0 1.2]; 
HH1 = plot(XX,YY,':','LineWidth',My_LineWidth-0.5,'Color',My_Colors_4_1(3,:)); % 5th
XX = [Prctile_Male(3) Prctile_Male(3)]; 
YY = [0 1.2]; 
HH2 = plot(XX,YY,'--','LineWidth',My_LineWidth-0.5,'Color',My_Colors_4_1(3,:)); % 95th

% Legend
H5 = plot([-1 -2],[-1 -2],':','LineWidth',My_LineWidth-0.5,'Color',[0 0 0]); % 5th
H6 = plot([-1 -2],[-1 -2],'--','LineWidth',My_LineWidth-0.5,'Color',[0 0 0]); % 95th
Legend = legend([H1 H2 H3 H5 H6],'Age < 25','25 <= Age < 50','Age >= 50','5th','95th','Location','northwest');
set(Legend,'Box','off','FontSize',12,'FontName',My_FontName)

toc;
