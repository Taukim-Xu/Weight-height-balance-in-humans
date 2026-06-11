%% In this code, we calculate the coefficients of a and b in 1=a/Weight+b*Height^c, 
% when c = 1 for all Asia datasets when exponent c = 1;
% 
% Including:
% Bangladesh_2011_14 - 孟加拉国
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
%% Bangladesh_2011_14
% Loading the data
Female_data = xlsread('Bangladesh_2011_14.xlsx','Female');
% Grouping by age
Female_data_10 = [];
Female_data_11 = [];
Female_data_12 = [];
Female_data_13 = [];
Female_data_14 = [];
Female_data_15 = [];
Female_data_16 = [];
Female_data_17 = [];
Female_data_18 = [];
Female_data_19 = [];

% For Female
[M N] = size(Female_data); % No.	Age	Height(cm)	Weight(Kg)
for i = 1:M
    if Female_data(i,2) == 10
        Female_data_10 = [Female_data_10; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 11
        Female_data_11 = [Female_data_11; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 12
        Female_data_12 = [Female_data_12; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 13
        Female_data_13 = [Female_data_13; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 14
        Female_data_14 = [Female_data_14; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 15
        Female_data_15 = [Female_data_15; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 16
        Female_data_16 = [Female_data_16; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 17
        Female_data_17 = [Female_data_17; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 18
        Female_data_18 = [Female_data_18; Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 19
        Female_data_19 = [Female_data_19; Female_data(i,3) Female_data(i,4)];
    end
end

% We calculate the coefficients of a and b in 1=a/Weight+b*Height for this
% dataset
Age_Bangladesh_2011_14 = 10:19;
Coefficient_a_Female_1_Bangladesh_2011_14 = [];
Coefficient_b_Female_1_Bangladesh_2011_14 = [];

% For Female
% Age 10
X_data = (Female_data_10(:,1)/100).^c; % Height (m)
Y_data = Female_data_10(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_Bangladesh_2011_14 = [Coefficient_a_Female_1_Bangladesh_2011_14 PP(2)];
Coefficient_b_Female_1_Bangladesh_2011_14 = [Coefficient_b_Female_1_Bangladesh_2011_14 PP(1)];
% Age 11
X_data = (Female_data_11(:,1)/100).^c; % Height (m)
Y_data = Female_data_11(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_Bangladesh_2011_14 = [Coefficient_a_Female_1_Bangladesh_2011_14 PP(2)];
Coefficient_b_Female_1_Bangladesh_2011_14 = [Coefficient_b_Female_1_Bangladesh_2011_14 PP(1)];
% Age 12
X_data = (Female_data_12(:,1)/100).^c; % Height (m)
Y_data = Female_data_12(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_Bangladesh_2011_14 = [Coefficient_a_Female_1_Bangladesh_2011_14 PP(2)];
Coefficient_b_Female_1_Bangladesh_2011_14 = [Coefficient_b_Female_1_Bangladesh_2011_14 PP(1)];
% Age 13
X_data = (Female_data_13(:,1)/100).^c; % Height (m)
Y_data = Female_data_13(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_Bangladesh_2011_14 = [Coefficient_a_Female_1_Bangladesh_2011_14 PP(2)];
Coefficient_b_Female_1_Bangladesh_2011_14 = [Coefficient_b_Female_1_Bangladesh_2011_14 PP(1)];
% Age 14
X_data = (Female_data_14(:,1)/100).^c; % Height (m)
Y_data = Female_data_14(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_Bangladesh_2011_14 = [Coefficient_a_Female_1_Bangladesh_2011_14 PP(2)];
Coefficient_b_Female_1_Bangladesh_2011_14 = [Coefficient_b_Female_1_Bangladesh_2011_14 PP(1)];
% Age 15
X_data = (Female_data_15(:,1)/100).^c; % Height (m)
Y_data = Female_data_15(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_Bangladesh_2011_14 = [Coefficient_a_Female_1_Bangladesh_2011_14 PP(2)];
Coefficient_b_Female_1_Bangladesh_2011_14 = [Coefficient_b_Female_1_Bangladesh_2011_14 PP(1)];
% Age 16
X_data = (Female_data_16(:,1)/100).^c; % Height (m)
Y_data = Female_data_16(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_Bangladesh_2011_14 = [Coefficient_a_Female_1_Bangladesh_2011_14 PP(2)];
Coefficient_b_Female_1_Bangladesh_2011_14 = [Coefficient_b_Female_1_Bangladesh_2011_14 PP(1)];
% Age 17
X_data = (Female_data_17(:,1)/100).^c; % Height (m)
Y_data = Female_data_17(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_Bangladesh_2011_14 = [Coefficient_a_Female_1_Bangladesh_2011_14 PP(2)];
Coefficient_b_Female_1_Bangladesh_2011_14 = [Coefficient_b_Female_1_Bangladesh_2011_14 PP(1)];
% Age 18
X_data = (Female_data_18(:,1)/100).^c; % Height (m)
Y_data = Female_data_18(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_Bangladesh_2011_14 = [Coefficient_a_Female_1_Bangladesh_2011_14 PP(2)];
Coefficient_b_Female_1_Bangladesh_2011_14 = [Coefficient_b_Female_1_Bangladesh_2011_14 PP(1)];
% Age 19
X_data = (Female_data_19(:,1)/100).^c; % Height (m)
Y_data = Female_data_19(:,2); % Weight
Z_data= X_data.*Y_data; % Height^c*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_1_Bangladesh_2011_14 = [Coefficient_a_Female_1_Bangladesh_2011_14 PP(2)];
Coefficient_b_Female_1_Bangladesh_2011_14 = [Coefficient_b_Female_1_Bangladesh_2011_14 PP(1)];

%% We show the results
figure;
% For Female
subplot(2,1,1); % Coefficient a for female
hold on;
title('Female')
xlabel('Age (yr)');
ylabel('Coefficient a')
xlim([0 91]);
ylim([0 30]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

% Bangladesh_2011_14
x_data = Age_Bangladesh_2011_14;
y_data = Coefficient_a_Female_1_Bangladesh_2011_14;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(7,:),'MarkerFaceColor','w');

subplot(2,1,2); % Coefficient b for female
hold on;
%title('Female')
xlabel('Age (yr)');
ylabel('Coefficient b')
xlim([0 91]);
ylim([0 1]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

% Bangladesh_2011_14
x_data = Age_Bangladesh_2011_14;
y_data = Coefficient_b_Female_1_Bangladesh_2011_14;
HH1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',My_Colors_28(7,:),'MarkerFaceColor','w');

%
%%
% We save the correlation analysis results
save('Coefficients_a_and_b_c1_Bangladesh.mat',...
    'Age_Bangladesh_2011_14','Coefficient_a_Female_1_Bangladesh_2011_14','Coefficient_b_Female_1_Bangladesh_2011_14');
