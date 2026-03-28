%% Source codes for Extended_Data_Fig_2_a
% Linear correlation coefficient between Weight and Weight*Height for all 
% the European countries

% 01 - Western_Europe
% 55_Finland
% 31_Luxembourg
% 23_Belgium
% 17_France
% 14_Netherlands

% 02 - Central Europe
% 11_Austria
% 12_Germany
% 20_Switzerland
% 28_Czech
% 29_Poland
% 32_Hungary
% 63_Slovakia

% 03 - Eastern Europe
% 57_Latvia
% 48_Lithuania
% 35_Estonia

% 04 - Southern Europe
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

% 05 - Northern Europe
% 13_Sweden
% 18_Denmark
%
%% Colors
load('My_Colors.mat')
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
%% Loading the correlation coefficients
load('./01-Europe/Correlation_coefficient_c1_Western_Europe.mat')
load('./01-Europe/Correlation_coefficient_c1_Southern_Europe.mat')
load('./01-Europe/Correlation_coefficient_c1_Northern_Europe.mat')
load('./01-Europe/Correlation_coefficient_c1_Eastern_Europe.mat')
load('./01-Europe/Correlation_coefficient_c1_Eastern_Central_Europe.mat')
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

% 01 - Western_Europe
% 14_Netherlands
x_data = Age_14_Netherlands;
y_data = Corr_14_Netherlands_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_10(1,:));
% 17_France
x_data = Age_17_France;
y_data = Corr_17_France_Female;
H2 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_10(1,:));
% 23_Belgium
x_data = Age_23_Belgium;
y_data = Corr_23_Belgium_Female;
H3 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_10(1,:));
% 31_Luxembourg
x_data = Age_31_Luxembourg;
y_data = Corr_31_Luxembourg_Female;
H4 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_10(1,:));
% 55_Finland
x_data = Age_55_Finland;
y_data = Corr_55_Finland_Female;
H5 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_10(1,:));

% 02 - Central Europe
% 11_Austria
x_data = Age_11_Austria;
y_data = Corr_11_Austria_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_10(2,:));
% 12_Germany
x_data = Age_12_Germany;
y_data = Corr_12_Germany_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_10(2,:));
% 20_Switzerland
x_data = Age_20_Switzerland;
y_data = Corr_20_Switzerland_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_10(2,:));
% 28_Czech
x_data = Age_28_Czech;
y_data = Corr_28_Czech_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_10(2,:));
% 29_Poland
x_data = Age_29_Poland;
y_data = Corr_29_Poland_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_10(2,:));
% 32_Hungary
x_data = Age_32_Hungary;
y_data = Corr_32_Hungary_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_10(2,:));
% 63_Slovakia
x_data = Age_63_Slovakia;
y_data = Corr_63_Slovakia_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_10(2,:));

% 03 - Eastern Europe
% 57_Latvia
x_data = Age_57_Latvia;
y_data = Corr_57_Latvia_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_10(3,:));
% 48_Lithuania
x_data = Age_48_Lithuania;
y_data = Corr_48_Lithuania_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_10(3,:));
% 35_Estonia
x_data = Age_35_Estonia;
y_data = Corr_35_Estonia_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_10(3,:));

% 04 - Southern Europe
% 61_Romania
x_data = Age_61_Romania;
y_data = Corr_61_Romania_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_10(4,:));
% 59_Malta
x_data = Age_59_Malta;
y_data = Corr_59_Malta_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_10(4,:));
% 53_Cyprus
x_data = Age_53_Cyprus;
y_data = Corr_53_Cyprus_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_10(4,:));
% 51_Bulgaria
x_data = Age_51_Bulgaria;
y_data = Corr_51_Bulgaria_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_10(4,:));
% 47_Croatia
x_data = Age_47_Croatia;
y_data = Corr_47_Croatia_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_10(4,:));
% 34_Slovenia
x_data = Age_34_Slovenia;
y_data = Corr_34_Slovenia_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_10(4,:));
% 33_Portugal
x_data = Age_33_Portugal;
y_data = Corr_33_Portugal_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_10(4,:));
% 19_Greece
x_data = Age_19_Greece;
y_data = Corr_19_Greece_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_10(4,:));
% 16_Italy
x_data = Age_16_Italy;
y_data = Corr_16_Italy_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_10(4,:));
% 15_Spain
x_data = Age_15_Spain;
y_data = Corr_15_Spain_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_10(4,:));

% 05 - Northern Europe
% 13_Sweden
x_data = Age_13_Sweden;
y_data = Corr_13_Sweden_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_10(5,:));
% 18_Denmark
x_data = Age_18_Denmark;
y_data = Corr_18_Denmark_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_10(5,:));

% For Male
subplot(1,3,2);
hold on;
title('Male')
xlabel('Age (yr)');
%ylabel('Correlation coefficients')
xlim([49 91]);
ylim([0.90 1]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

% 01 - Western_Europe
% 14_Netherlands
x_data = Age_14_Netherlands;
y_data = Corr_14_Netherlands_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_10(1,:));
% 17_France
x_data = Age_17_France;
y_data = Corr_17_France_Male;
H2 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_10(1,:));
% 23_Belgium
x_data = Age_23_Belgium;
y_data = Corr_23_Belgium_Male;
H3 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_10(1,:));
% 31_Luxembourg
x_data = Age_31_Luxembourg;
y_data = Corr_31_Luxembourg_Male;
H4 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_10(1,:));
% 55_Finland
x_data = Age_55_Finland;
y_data = Corr_55_Finland_Male;
H5 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_10(1,:));

% 02 - Central Europe
% 11_Austria
x_data = Age_11_Austria;
y_data = Corr_11_Austria_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_10(2,:));
% 12_Germany
x_data = Age_12_Germany;
y_data = Corr_12_Germany_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_10(2,:));
% 20_Switzerland
x_data = Age_20_Switzerland;
y_data = Corr_20_Switzerland_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_10(2,:));
% 28_Czech
x_data = Age_28_Czech;
y_data = Corr_28_Czech_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_10(2,:));
% 29_Poland
x_data = Age_29_Poland;
y_data = Corr_29_Poland_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_10(2,:));
% 32_Hungary
x_data = Age_32_Hungary;
y_data = Corr_32_Hungary_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_10(2,:));
% 63_Slovakia
x_data = Age_63_Slovakia;
y_data = Corr_63_Slovakia_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_10(2,:));

% 03 - Eastern Europe
% 57_Latvia
x_data = Age_57_Latvia;
y_data = Corr_57_Latvia_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_10(3,:));
% 48_Lithuania
x_data = Age_48_Lithuania;
y_data = Corr_48_Lithuania_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_10(3,:));
% 35_Estonia
x_data = Age_35_Estonia;
y_data = Corr_35_Estonia_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_10(3,:));

% 04 - Southern Europe
% 61_Romania
x_data = Age_61_Romania;
y_data = Corr_61_Romania_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_10(4,:));
% 59_Malta
x_data = Age_59_Malta;
y_data = Corr_59_Malta_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_10(4,:));
% 53_Cyprus
x_data = Age_53_Cyprus;
y_data = Corr_53_Cyprus_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_10(4,:));
% 51_Bulgaria
x_data = Age_51_Bulgaria;
y_data = Corr_51_Bulgaria_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_10(4,:));
% 47_Croatia
x_data = Age_47_Croatia;
y_data = Corr_47_Croatia_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_10(4,:));
% 34_Slovenia
x_data = Age_34_Slovenia;
y_data = Corr_34_Slovenia_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_10(4,:));
% 33_Portugal
x_data = Age_33_Portugal;
y_data = Corr_33_Portugal_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_10(4,:));
% 19_Greece
x_data = Age_19_Greece;
y_data = Corr_19_Greece_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_10(4,:));
% 16_Italy
x_data = Age_16_Italy;
y_data = Corr_16_Italy_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_10(4,:));
% 15_Spain
x_data = Age_15_Spain;
y_data = Corr_15_Spain_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_10(4,:));

% 05 - Northern Europe
% 13_Sweden
x_data = Age_13_Sweden;
y_data = Corr_13_Sweden_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_10(5,:));
% 18_Denmark
x_data = Age_18_Denmark;
y_data = Corr_18_Denmark_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_10(5,:));

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
Legend = legend([H1 H2 H3 H4 H5],...
    'Western Europe',...
    'Central Europe',...
    'Eastern Europe',...
    'Southern Europe',...
    'Northern Europe',...
    'Location','southwest');
set(Legend,'Box','off','FontSize',9)
