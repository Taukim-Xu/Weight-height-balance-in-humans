%% In this code, we calculate the coefficients of a and b in 1=a/Weight+b*Height^c, 
% when c = 1 for all datasets when exponent c = 1;
% 
% Including:
% Japanese_1_8 - 日本
%
%%
c = 1;
%% Colors
load('My_Colors.mat')
%% Parameter information for drawing
My_mark_type = '.';
My_LineWidth = 1.5;
My_FontName = 'Times New Roman';
My_fontSize = 12;
My_Alpha = 1; % transparency of the filled area
My_MarkerSize = 7;
Edgealpha = 0;
Alpha = 1;
My_Percentile = [5 10 25 50 75 90 95]; % quantile distribution
%% Japanese_1_8
% Loading the data
Female_data = xlsread('Japanese_1_8.xlsx','Female');
Male_data = xlsread('Japanese_1_8.xlsx','Male');
% Grouping by age
Female_data_1 = [];
Female_data_2 = [];
Female_data_3 = [];
Female_data_4 = [];
Female_data_5 = [];
Female_data_6 = [];
Female_data_7 = [];
Female_data_8 = [];

Male_data_1 = [];
Male_data_2 = [];
Male_data_3 = [];
Male_data_4 = [];
Male_data_5 = [];
Male_data_6 = [];
Male_data_7 = [];
Male_data_8 = [];

% For Female
[M N] = size(Female_data); % No.	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Female_data(i,2) == 1
        Female_data_1 = [Female_data_1; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 2
        Female_data_2 = [Female_data_2; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 3
        Female_data_3 = [Female_data_3; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 4
        Female_data_4 = [Female_data_4; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 5
        Female_data_5 = [Female_data_5; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 6
        Female_data_6 = [Female_data_6; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 7
        Female_data_7 = [Female_data_7; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 8
        Female_data_8 = [Female_data_8; Female_data(i,3) Female_data(i,4)];
    end
end

% For Male
[M N] = size(Male_data); % No.	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Male_data(i,2) == 1
        Male_data_1 = [Male_data_1; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 2
        Male_data_2 = [Male_data_2; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 3
        Male_data_3 = [Male_data_3; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 4
        Male_data_4 = [Male_data_4; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 5
        Male_data_5 = [Male_data_5; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 6
        Male_data_6 = [Male_data_6; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 7
        Male_data_7 = [Male_data_7; Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 8
        Male_data_8 = [Male_data_8; Male_data(i,3) Male_data(i,4)];
    end
end

% We calculate the coefficients of a and b in 1=a/Weight+b*Height for this
% dataset
Age_Japanese_1_8 = 1:8;
Coefficient_a_Female_1_Japanese_1_8 = [];
Coefficient_b_Female_1_Japanese_1_8 = [];
Coefficient_a_Male_1_Japanese_1_8 = [];
Coefficient_b_Male_1_Japanese_1_8 = [];

% For Female
% Age 1
X_data = (Female_data_1(:,1)/100).^c; % Height (m)
Y_data = Female_data_1(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_Japanese_1_8 = [Coefficient_a_Female_1_Japanese_1_8 PP(2)];
Coefficient_b_Female_1_Japanese_1_8 = [Coefficient_b_Female_1_Japanese_1_8 PP(1)];
% Age 2
X_data = (Female_data_2(:,1)/100).^c; % Height (m)
Y_data = Female_data_2(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_Japanese_1_8 = [Coefficient_a_Female_1_Japanese_1_8 PP(2)];
Coefficient_b_Female_1_Japanese_1_8 = [Coefficient_b_Female_1_Japanese_1_8 PP(1)];
% Age 3
X_data = (Female_data_3(:,1)/100).^c; % Height (m)
Y_data = Female_data_3(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_Japanese_1_8 = [Coefficient_a_Female_1_Japanese_1_8 PP(2)];
Coefficient_b_Female_1_Japanese_1_8 = [Coefficient_b_Female_1_Japanese_1_8 PP(1)];
% Age 4
X_data = (Female_data_4(:,1)/100).^c; % Height (m)
Y_data = Female_data_4(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_Japanese_1_8 = [Coefficient_a_Female_1_Japanese_1_8 PP(2)];
Coefficient_b_Female_1_Japanese_1_8 = [Coefficient_b_Female_1_Japanese_1_8 PP(1)];
% Age 5
X_data = (Female_data_5(:,1)/100).^c; % Height (m)
Y_data = Female_data_5(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_Japanese_1_8 = [Coefficient_a_Female_1_Japanese_1_8 PP(2)];
Coefficient_b_Female_1_Japanese_1_8 = [Coefficient_b_Female_1_Japanese_1_8 PP(1)];
% Age 6
X_data = (Female_data_6(:,1)/100).^c; % Height (m)
Y_data = Female_data_6(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_Japanese_1_8 = [Coefficient_a_Female_1_Japanese_1_8 PP(2)];
Coefficient_b_Female_1_Japanese_1_8 = [Coefficient_b_Female_1_Japanese_1_8 PP(1)];
% Age 7
X_data = (Female_data_7(:,1)/100).^c; % Height (m)
Y_data = Female_data_7(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_Japanese_1_8 = [Coefficient_a_Female_1_Japanese_1_8 PP(2)];
Coefficient_b_Female_1_Japanese_1_8 = [Coefficient_b_Female_1_Japanese_1_8 PP(1)];
% Age 8
X_data = (Female_data_8(:,1)/100).^c; % Height (m)
Y_data = Female_data_8(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_Japanese_1_8 = [Coefficient_a_Female_1_Japanese_1_8 PP(2)];
Coefficient_b_Female_1_Japanese_1_8 = [Coefficient_b_Female_1_Japanese_1_8 PP(1)];

% For Male
% Age 1
X_data = (Male_data_1(:,1)/100).^c; % Height (m)
Y_data = Male_data_1(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_Japanese_1_8 = [Coefficient_a_Male_1_Japanese_1_8 PP(2)];
Coefficient_b_Male_1_Japanese_1_8 = [Coefficient_b_Male_1_Japanese_1_8 PP(1)];
% Age 2
X_data = (Male_data_2(:,1)/100).^c; % Height (m)
Y_data = Male_data_2(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_Japanese_1_8 = [Coefficient_a_Male_1_Japanese_1_8 PP(2)];
Coefficient_b_Male_1_Japanese_1_8 = [Coefficient_b_Male_1_Japanese_1_8 PP(1)];
% Age 3
X_data = (Male_data_3(:,1)/100).^c; % Height (m)
Y_data = Male_data_3(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_Japanese_1_8 = [Coefficient_a_Male_1_Japanese_1_8 PP(2)];
Coefficient_b_Male_1_Japanese_1_8 = [Coefficient_b_Male_1_Japanese_1_8 PP(1)];
% Age 4
X_data = (Male_data_4(:,1)/100).^c; % Height (m)
Y_data = Male_data_4(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_Japanese_1_8 = [Coefficient_a_Male_1_Japanese_1_8 PP(2)];
Coefficient_b_Male_1_Japanese_1_8 = [Coefficient_b_Male_1_Japanese_1_8 PP(1)];
% Age 5
X_data = (Male_data_5(:,1)/100).^c; % Height (m)
Y_data = Male_data_5(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_Japanese_1_8 = [Coefficient_a_Male_1_Japanese_1_8 PP(2)];
Coefficient_b_Male_1_Japanese_1_8 = [Coefficient_b_Male_1_Japanese_1_8 PP(1)];
% Age 6
X_data = (Male_data_6(:,1)/100).^c; % Height (m)
Y_data = Male_data_6(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_Japanese_1_8 = [Coefficient_a_Male_1_Japanese_1_8 PP(2)];
Coefficient_b_Male_1_Japanese_1_8 = [Coefficient_b_Male_1_Japanese_1_8 PP(1)];
% Age 7
X_data = (Male_data_7(:,1)/100).^c; % Height (m)
Y_data = Male_data_7(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_Japanese_1_8 = [Coefficient_a_Male_1_Japanese_1_8 PP(2)];
Coefficient_b_Male_1_Japanese_1_8 = [Coefficient_b_Male_1_Japanese_1_8 PP(1)];
% Age 8
X_data = (Male_data_8(:,1)/100).^c; % Height (m)
Y_data = Male_data_8(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_1_Japanese_1_8 = [Coefficient_a_Male_1_Japanese_1_8 PP(2)];
Coefficient_b_Male_1_Japanese_1_8 = [Coefficient_b_Male_1_Japanese_1_8 PP(1)];

%% We show the results
figure;
% For Female
subplot(2,2,1); % Coefficient a for female
hold on;
title('Female')
xlabel('Age (yr)');
ylabel('Coefficient a')
xlim([0 91]);
ylim([0 30]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

% Japanese_1_8
x_data = Age_Japanese_1_8;
y_data = Coefficient_a_Female_1_Japanese_1_8;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(2,:),'MarkerFaceColor','w');

subplot(2,2,3); % Coefficient b for female
hold on;
%title('Female')
xlabel('Age (yr)');
ylabel('Coefficient b')
xlim([0 91]);
ylim([0 1]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

% Japanese_1_8
x_data = Age_Japanese_1_8;
y_data = Coefficient_b_Female_1_Japanese_1_8;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(2,:),'MarkerFaceColor','w');

% For Male
subplot(2,2,2); % Coefficient a for Male
hold on;
title('Male')
xlabel('Age (yr)');
%ylabel('Coefficient a')
xlim([0 91]);
ylim([0 30]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

% Japanese_1_8
x_data = Age_Japanese_1_8;
y_data = Coefficient_a_Male_1_Japanese_1_8;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(2,:),'MarkerFaceColor','w');

subplot(2,2,4); % Coefficient b for Male
hold on;
%title('Male')
xlabel('Age (yr)');
%ylabel('Coefficient b')
xlim([0 91]);
ylim([0 1]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

% Japanese_1_8
x_data = Age_Japanese_1_8;
y_data = Coefficient_b_Male_1_Japanese_1_8;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(2,:),'MarkerFaceColor','w');

%
%%
% We save the correlation analysis results
save('Coefficients_a_and_b_c1_Japan.mat',...
    'Age_Japanese_1_8','Coefficient_a_Female_1_Japanese_1_8','Coefficient_b_Female_1_Japanese_1_8',...
    'Coefficient_a_Male_1_Japanese_1_8','Coefficient_b_Male_1_Japanese_1_8');
