%% Source codes for Fig. S4
% Linear correlation coefficient between Weight and Weight*Height for all 
% the SHARE experiments
%
%% Colors
load('My_Colors.mat')
%% Loading the correlation coefficients
load('./All coefficients/04-SHARE/Correlation_coefficient_c1_SHARE.mat')
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
xlim([0 91]);
ylim([0.90 1]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

% 11_Austria
x_data = Age_11_Austria;
y_data = Corr_11_Austria_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(1,:));
% 12_Germany
x_data = Age_12_Germany;
y_data = Corr_12_Germany_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(2,:));
% 13_Sweden
x_data = Age_13_Sweden;
y_data = Corr_13_Sweden_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(3,:));
% 14_Netherlands
x_data = Age_14_Netherlands;
y_data = Corr_14_Netherlands_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(4,:));
% 15_Spain
x_data = Age_15_Spain;
y_data = Corr_15_Spain_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(5,:));
% 16_Italy
x_data = Age_16_Italy;
y_data = Corr_16_Italy_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(6,:));
% 17_France
x_data = Age_17_France;
y_data = Corr_17_France_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(7,:));
% 18_Denmark
x_data = Age_18_Denmark;
y_data = Corr_18_Denmark_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(8,:));
% 19_Greece
x_data = Age_19_Greece;
y_data = Corr_19_Greece_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(9,:));
% 20_Switzerland
x_data = Age_20_Switzerland;
y_data = Corr_20_Switzerland_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(10,:));
% 23_Belgium
x_data = Age_23_Belgium;
y_data = Corr_23_Belgium_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(11,:));
% 25_Israel
x_data = Age_25_Israel;
y_data = Corr_25_Israel_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(12,:));
% 28_Czech
x_data = Age_28_Czech;
y_data = Corr_28_Czech_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(13,:));
% 29_Poland
x_data = Age_29_Poland;
y_data = Corr_29_Poland_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(14,:));
% 31_Luxembourg
x_data = Age_31_Luxembourg;
y_data = Corr_31_Luxembourg_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(15,:));
% 32_Hungary
x_data = Age_32_Hungary;
y_data = Corr_32_Hungary_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(16,:));
% 33_Portugal
x_data = Age_33_Portugal;
y_data = Corr_33_Portugal_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(17,:));
% 34_Slovenia
x_data = Age_34_Slovenia;
y_data = Corr_34_Slovenia_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(18,:));
% 35_Estonia
x_data = Age_35_Estonia;
y_data = Corr_35_Estonia_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(19,:));
% 47_Croatia
x_data = Age_47_Croatia;
y_data = Corr_47_Croatia_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(20,:));
% 48_Lithuania
x_data = Age_48_Lithuania;
y_data = Corr_48_Lithuania_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(21,:));
% 51_Bulgaria
x_data = Age_51_Bulgaria;
y_data = Corr_51_Bulgaria_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(22,:));
% 53_Cyprus
x_data = Age_53_Cyprus;
y_data = Corr_53_Cyprus_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(23,:));
% 55_Finland
x_data = Age_55_Finland;
y_data = Corr_55_Finland_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(24,:));
% 57_Latvia
x_data = Age_57_Latvia;
y_data = Corr_57_Latvia_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(25,:));
% 59_Malta
x_data = Age_59_Malta;
y_data = Corr_59_Malta_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(26,:));
% 61_Romania
x_data = Age_61_Romania;
y_data = Corr_61_Romania_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(27,:));
% 63_Slovakia
x_data = Age_63_Slovakia;
y_data = Corr_63_Slovakia_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(28,:));











% For Male
subplot(1,3,2);
hold on;
title('Male')
xlabel('Age (yr)');
%ylabel('Correlation coefficients')
xlim([0 91]);
ylim([0.90 1]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

% 11_Austria
x_data = Age_11_Austria;
y_data = Corr_11_Austria_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(1,:));
% 12_Germany
x_data = Age_12_Germany;
y_data = Corr_12_Germany_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(2,:));
% 13_Sweden
x_data = Age_13_Sweden;
y_data = Corr_13_Sweden_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(3,:));
% 14_Netherlands
x_data = Age_14_Netherlands;
y_data = Corr_14_Netherlands_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(4,:));
% 15_Spain
x_data = Age_15_Spain;
y_data = Corr_15_Spain_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(5,:));
% 16_Italy
x_data = Age_16_Italy;
y_data = Corr_16_Italy_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(6,:));
% 17_France
x_data = Age_17_France;
y_data = Corr_17_France_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(7,:));
% 18_Denmark
x_data = Age_18_Denmark;
y_data = Corr_18_Denmark_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(8,:));
% 19_Greece
x_data = Age_19_Greece;
y_data = Corr_19_Greece_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(9,:));
% 20_Switzerland
x_data = Age_20_Switzerland;
y_data = Corr_20_Switzerland_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(10,:));
% 23_Belgium
x_data = Age_23_Belgium;
y_data = Corr_23_Belgium_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(11,:));
% 25_Israel
x_data = Age_25_Israel;
y_data = Corr_25_Israel_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(12,:));
% 28_Czech
x_data = Age_28_Czech;
y_data = Corr_28_Czech_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(13,:));
% 29_Poland
x_data = Age_29_Poland;
y_data = Corr_29_Poland_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(14,:));
% 31_Luxembourg
x_data = Age_31_Luxembourg;
y_data = Corr_31_Luxembourg_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(15,:));
% 32_Hungary
x_data = Age_32_Hungary;
y_data = Corr_32_Hungary_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(16,:));
% 33_Portugal
x_data = Age_33_Portugal;
y_data = Corr_33_Portugal_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(17,:));
% 34_Slovenia
x_data = Age_34_Slovenia;
y_data = Corr_34_Slovenia_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(18,:));
% 35_Estonia
x_data = Age_35_Estonia;
y_data = Corr_35_Estonia_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(19,:));
% 47_Croatia
x_data = Age_47_Croatia;
y_data = Corr_47_Croatia_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(20,:));
% 48_Lithuania
x_data = Age_48_Lithuania;
y_data = Corr_48_Lithuania_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(21,:));
% 51_Bulgaria
x_data = Age_51_Bulgaria;
y_data = Corr_51_Bulgaria_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(22,:));
% 53_Cyprus
x_data = Age_53_Cyprus;
y_data = Corr_53_Cyprus_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(23,:));
% 55_Finland
x_data = Age_55_Finland;
y_data = Corr_55_Finland_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(24,:));
% 57_Latvia
x_data = Age_57_Latvia;
y_data = Corr_57_Latvia_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(25,:));
% 59_Malta
x_data = Age_59_Malta;
y_data = Corr_59_Malta_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(26,:));
% 61_Romania
x_data = Age_61_Romania;
y_data = Corr_61_Romania_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(27,:));
% 63_Slovakia
x_data = Age_63_Slovakia;
y_data = Corr_63_Slovakia_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(28,:));

%% Legend
subplot(1,3,3)
hold on
xlim([0 1]);
ylim([0 1]);
ax = gca;
ax.YAxis.Visible = 'off';
ax.XAxis.Visible = 'off';

H1 = plot([-2 -2],[-2 -1],'-','LineWidth',My_LineWidth,'Color',My_Colors_28(1,:));
H2 = plot([-2 -2],[-2 -1],'-','LineWidth',My_LineWidth,'Color',My_Colors_28(2,:));
H3 = plot([-2 -2],[-2 -1],'-','LineWidth',My_LineWidth,'Color',My_Colors_28(3,:));
H4 = plot([-2 -2],[-2 -1],'-','LineWidth',My_LineWidth,'Color',My_Colors_28(4,:));
H5 = plot([-2 -2],[-2 -1],'-','LineWidth',My_LineWidth,'Color',My_Colors_28(5,:));
H6 = plot([-2 -2],[-2 -1],'-','LineWidth',My_LineWidth,'Color',My_Colors_28(6,:));
H7 = plot([-2 -2],[-2 -1],'-','LineWidth',My_LineWidth,'Color',My_Colors_28(7,:));
H8 = plot([-2 -2],[-2 -1],'-','LineWidth',My_LineWidth,'Color',My_Colors_28(8,:));
H9 = plot([-2 -2],[-2 -1],'-','LineWidth',My_LineWidth,'Color',My_Colors_28(9,:));
H10 = plot([-2 -2],[-2 -1],'-','LineWidth',My_LineWidth,'Color',My_Colors_28(10,:));
H11 = plot([-2 -2],[-2 -1],'-','LineWidth',My_LineWidth,'Color',My_Colors_28(11,:));
H12 = plot([-2 -2],[-2 -1],'-','LineWidth',My_LineWidth,'Color',My_Colors_28(12,:));
H13 = plot([-2 -2],[-2 -1],'-','LineWidth',My_LineWidth,'Color',My_Colors_28(13,:));
H14 = plot([-2 -2],[-2 -1],'-','LineWidth',My_LineWidth,'Color',My_Colors_28(14,:));
H15 = plot([-2 -2],[-2 -1],'-','LineWidth',My_LineWidth,'Color',My_Colors_28(15,:));
H16 = plot([-2 -2],[-2 -1],'-','LineWidth',My_LineWidth,'Color',My_Colors_28(16,:));
H17 = plot([-2 -2],[-2 -1],'-','LineWidth',My_LineWidth,'Color',My_Colors_28(17,:));
H18 = plot([-2 -2],[-2 -1],'-','LineWidth',My_LineWidth,'Color',My_Colors_28(18,:));
H19 = plot([-2 -2],[-2 -1],'-','LineWidth',My_LineWidth,'Color',My_Colors_28(19,:));
H20 = plot([-2 -2],[-2 -1],'-','LineWidth',My_LineWidth,'Color',My_Colors_28(20,:));
H21 = plot([-2 -2],[-2 -1],'-','LineWidth',My_LineWidth,'Color',My_Colors_28(21,:));
H22 = plot([-2 -2],[-2 -1],'-','LineWidth',My_LineWidth,'Color',My_Colors_28(22,:));
Legend = legend([H1 H2 H3 H4 H5 H6 H7 H8 H9 H10 H11 H12 H13 ...
    H14 H15 H16 H17 H18 H18 H20 H21 H22],...
    '11-Austria',...
    '12-Germany',...
    '13-Sweden',...
    '14-Netherlands',...
    '15-Spain',...
    '16-Italy',...
    '17-France',...
    '18-Denmark',...
    '19-Greece',...
    '20-Switzerland',...
    '23-Belgium',...
    '25-Israel',...
    '28-Czech',...
    '29-Poland',...
    '31-Luxembourg',...
    '32-Hungary',...
    '33-Portugal',...
    '34-Slovenia',...
    '35-Estonia',...
    '47-Croatia',...
    '48-Lithuania',...
    '51-Bulgaria',...
    '53-Cyprus',...
    '55-Finland',...
    '57-Latvia',...
    '59-Malta',...
    '61-Romania',...
    '63-Slovakia',...
    'Location','southwest');
set(Legend,'Box','off','FontSize',9)
