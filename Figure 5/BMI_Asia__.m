%% Source codes for BMI_Asia__.mat
% 针对所有亚洲国家数据，计算BMI(Weight/Height^2)
% 
%
tic;
%%
c = 1;
%%
Cut_off_Age = 25;
%% Parameter information for drawing
My_mark_type = '.';
My_LineWidth = 1.5;
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
%% Load and segment the data by age and gender
Female_data = [];
Male_data = [];
%% Asia
Female_data_temp = xlsread('./Raw_data/Data_Asia/Asia_ALL.xlsx','Female'); % No.	Age	Height(cm)	Weight(Kg)
Male_data_temp = xlsread('./Raw_data/Data_Asia/Asia_ALL.xlsx','Male'); % No.	Age	Height(cm)	Weight(Kg)
Female_data = [Female_data;Female_data_temp(:,2:4)]; % Age Height(cm) Weight(Kg)
Male_data = [Male_data;Male_data_temp(:,2:4)]; % Age Height(cm) Weight(Kg)
%% Calculate the distribution of BMI
BMI_Female_Asia__ = [];
BMI_Male_Asia__ = [];

% For Female
[M N] = size(Female_data); % Age Height(cm) Weight(Kg)
for i = 1:M
    BMI_Female_Asia__ = [BMI_Female_Asia__ Female_data(i,3)/(Female_data(i,2)/100)^2];
end

% For Male
[M N] = size(Male_data); % Age Height(cm) Weight(Kg)
for i = 1:M
    BMI_Male_Asia__ = [BMI_Male_Asia__ Male_data(i,3)/(Male_data(i,2)/100)^2];
end
toc;
%% We show the results
nbins = 130;
figure;
HH_Female = histogram(BMI_Female_Asia__,nbins);
figure;
nbins = 130;
HH_Male = histogram(BMI_Male_Asia__,nbins);
FF = figure;
% For Female
subplot(1,2,1);
hold on;
title('Female')
xlabel('BMI');
ylabel('Count')
xlim([10 50]);
%ylim([-5 25]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

xx = HH_Female.BinEdges;
yy = HH_Female.Values;

[M N] = size(HH_Female.BinEdges);
for i = 1:N-1
    X_Fill = [xx(i) xx(i+1) xx(i+1) xx(i)];
    Y_Fill = [0 0 yy(i) yy(i)];
    H = fill(X_Fill,Y_Fill,My_Colors_4_1(1,:));
    set(H,'edgealpha',1,'facealpha',My_Alpha);
end
x_data = [];
y_data = HH_Female.Values;
for i = 1:N-1
    x_data = [x_data (xx(i)+xx(i+1))/2];
end
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = min(xx):0.01:max(xx);
YY = fitobject(XX);
H1 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',My_Colors_4_1(1,:));

% text - 
My_Percentile = [5 10 25 50 75 90 95]; % quantile distribution
My_P = prctile(BMI_Female_Asia__,My_Percentile);
Text = ['95th=' num2str(My_P(7)) newline() ...
    '90th=' num2str(My_P(6)) newline() ...
    '75th=' num2str(My_P(5)) newline() ...
    '50th=' num2str(My_P(4)) newline() ...
    '25th=' num2str(My_P(3)) newline() ...
    '10th=' num2str(My_P(2)) newline() ...
    '5th=' num2str(My_P(1)) newline()];
Text = text(45,0.8*max(yy),Text,'FontSize',12,'FontName',My_FontName,'HorizontalAlignment','right');

% For Male
subplot(1,2,2);
hold on;
title('Male')
xlabel('BMI');
ylabel('Count')
xlim([10 50]);
%ylim([-5 25]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

xx = HH_Male.BinEdges;
yy = HH_Male.Values;

[M N] = size(HH_Male.BinEdges);
for i = 1:N-1
    X_Fill = [xx(i) xx(i+1) xx(i+1) xx(i)];
    Y_Fill = [0 0 yy(i) yy(i)];
    H = fill(X_Fill,Y_Fill,My_Colors_4_1(2,:));
    set(H,'edgealpha',1,'facealpha',My_Alpha);
end
x_data = [];
y_data = HH_Male.Values;
for i = 1:N-1
    x_data = [x_data (xx(i)+xx(i+1))/2];
end
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = min(xx):0.01:max(xx);
YY = fitobject(XX);
H1 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',My_Colors_4_1(2,:));

% text - 
My_Percentile = [5 10 25 50 75 90 95]; % quantile distribution
My_P = prctile(BMI_Male_Asia__,My_Percentile);
Text = ['95th=' num2str(My_P(7)) newline() ...
    '90th=' num2str(My_P(6)) newline() ...
    '75th=' num2str(My_P(5)) newline() ...
    '50th=' num2str(My_P(4)) newline() ...
    '25th=' num2str(My_P(3)) newline() ...
    '10th=' num2str(My_P(2)) newline() ...
    '5th=' num2str(My_P(1)) newline()];
Text = text(45,0.8*max(yy),Text,'FontSize',12,'FontName',My_FontName,'HorizontalAlignment','right');


%% We save the data
save BMI_Asia__.mat BMI_Female_Asia__ BMI_Male_Asia__
