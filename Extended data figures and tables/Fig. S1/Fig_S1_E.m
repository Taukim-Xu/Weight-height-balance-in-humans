%% Source codes for Extended_Data_Fig_2_e
% Linear correlation coefficient between Weight and Weight*Height for all 
% the European countries
% (E) - Southern Europe
% 61_Romania
% 59_Malta
% 53_Cyprus
% 51_Bulgaria
% 47_Croatia
% 34_Slovenia
% 33_Portugal
% 19_Greece
% 16_Italy
% 15_Spain
%
%% Colors
load('My_Colors.mat')
%% Loading the correlation coefficients
load('./01-Europe/Correlation_coefficient_c1_Southern_Europe.mat')
%% Parameter information for drawing
My_mark_type = '.';
My_LineWidth = 1;
My_LineWidth_1 = 1.5;
My_FontName = 'Times New Roman';
My_fontSize = 12;
My_Alpha = 1; % transparency of the filled area
My_MarkerSize = 4;
Edgealpha = 0;
Alpha = 1;
My_Percentile = [5 50 95]; % quantile distribution
%% We show the results
figure;
% For Female
subplot(1,3,1);
hold on;
title('Female')
xlabel('Age (yr)');
ylabel('Correlation coefficients')
xlim([49 91]);
ylim([0.90 1]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

% 15_Spain
x_data = Age_15_Spain;
y_data = Corr_15_Spain_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_10(1,:));
% 16_Italy
x_data = Age_16_Italy;
y_data = Corr_16_Italy_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_10(2,:));
% 19_Greece
x_data = Age_19_Greece;
y_data = Corr_19_Greece_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_10(3,:));
% 33_Portugal
x_data = Age_33_Portugal;
y_data = Corr_33_Portugal_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_10(4,:));
% 34_Slovenia
x_data = Age_34_Slovenia;
y_data = Corr_34_Slovenia_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_10(5,:));
% 47_Croatia
x_data = Age_47_Croatia;
y_data = Corr_47_Croatia_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_10(6,:));
% 51_Bulgaria
x_data = Age_51_Bulgaria;
y_data = Corr_51_Bulgaria_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_10(7,:));
% 53_Cyprus
x_data = Age_53_Cyprus;
y_data = Corr_53_Cyprus_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_10(8,:));
% 59_Malta
x_data = Age_59_Malta;
y_data = Corr_59_Malta_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_10(9,:));
% 61_Romania
x_data = Age_61_Romania;
y_data = Corr_61_Romania_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_10(10,:));

% For Male
subplot(1,3,2);
hold on;
title('Male')
xlabel('Age (yr)');
%ylabel('Correlation coefficients')
xlim([49 91]);
ylim([0.90 1]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

% 15_Spain
x_data = Age_15_Spain;
y_data = Corr_15_Spain_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_10(1,:));
% 16_Italy
x_data = Age_16_Italy;
y_data = Corr_16_Italy_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_10(2,:));
% 19_Greece
x_data = Age_19_Greece;
y_data = Corr_19_Greece_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_10(3,:));
% 33_Portugal
x_data = Age_33_Portugal;
y_data = Corr_33_Portugal_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_10(4,:));
% 34_Slovenia
x_data = Age_34_Slovenia;
y_data = Corr_34_Slovenia_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_10(5,:));
% 47_Croatia
x_data = Age_47_Croatia;
y_data = Corr_47_Croatia_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_10(6,:));
% 51_Bulgaria
x_data = Age_51_Bulgaria;
y_data = Corr_51_Bulgaria_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_10(7,:));
% 53_Cyprus
x_data = Age_53_Cyprus;
y_data = Corr_53_Cyprus_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_10(8,:));
% 59_Malta
x_data = Age_59_Malta;
y_data = Corr_59_Malta_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_10(9,:));
% 61_Romania
x_data = Age_61_Romania;
y_data = Corr_61_Romania_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_10(10,:));

%% Legend
subplot(1,3,3)
hold on
xlim([0 1]);
ylim([0 1]);
ax = gca;
ax.YAxis.Visible = 'off';
ax.XAxis.Visible = 'off';

H1 = plot([-2 -2],[-2 -1],'-','LineWidth',My_LineWidth,'Color',My_Colors_10(1,:));
H2 = plot([-2 -2],[-2 -1],'-','LineWidth',My_LineWidth,'Color',My_Colors_10(2,:));
H3 = plot([-2 -2],[-2 -1],'-','LineWidth',My_LineWidth,'Color',My_Colors_10(3,:));
H4 = plot([-2 -2],[-2 -1],'-','LineWidth',My_LineWidth,'Color',My_Colors_10(4,:));
H5 = plot([-2 -2],[-2 -1],'-','LineWidth',My_LineWidth,'Color',My_Colors_10(5,:));
H6 = plot([-2 -2],[-2 -1],'-','LineWidth',My_LineWidth,'Color',My_Colors_10(6,:));
H7 = plot([-2 -2],[-2 -1],'-','LineWidth',My_LineWidth,'Color',My_Colors_10(7,:));
H8 = plot([-2 -2],[-2 -1],'-','LineWidth',My_LineWidth,'Color',My_Colors_10(8,:));
H9 = plot([-2 -2],[-2 -1],'-','LineWidth',My_LineWidth,'Color',My_Colors_10(9,:));
H10 = plot([-2 -2],[-2 -1],'-','LineWidth',My_LineWidth,'Color',My_Colors_10(10,:));
Legend = legend([H1 H2 H3 H4 H5 H6 H7 H8 H9 H10],...
    '15-Spain',...
    '16-Italy',...
    '19-Greece',...
    '33-Portugal',...
    '34-Slovenia',...
    '47-Croatia',...
    '51-Bulgaria',...
    '53-Cyprus',...
    '59-Malta',...
    '61-Romania',...
    'Location','southwest');
set(Legend,'Box','off','FontSize',9)
