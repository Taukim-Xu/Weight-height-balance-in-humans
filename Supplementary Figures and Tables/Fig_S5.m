%% Source codes for Table S5
% We calculate the coefficients a and b for
% 03-KNHANES
%
%% Colors
load('My_Colors.mat')
%% Loading the correlation coefficients
load('./All coefficients/05-KSPF/Correlation_coefficient_c1_KSPF.mat')
load('./All coefficients/06-ELSH-Brasil/Correlation_coefficient_c_1_ELSA_Brasil.mat')
load('./All coefficients/07-China/Correlation_coefficient_c1_China.mat')
load('./All coefficients/08-Japan/Correlation_coefficient_c1_Japan.mat')
load('./All coefficients/09-Bangladesh/Correlation_coefficient_c1_Bangladesh.mat')
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

% KSPF_Korea
x_data = Age_KSPF_Korea;
y_data = Corr_KSPF_Korea_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(1,:));
% ELSA_Brasil
x_data = Age_1_ELSA_Brasil;
y_data = Corr_1_ELSA_Brasil_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(2,:));
% CHARLS
x_data = Age_1_CHARLS;
y_data = Corr_1_CHARLS_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(3,:));
% BCCPDS_7_21_China
x_data = Age_BCCPDS_7_21_China;
y_data = Corr_BCCPDS_7_21_China_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(4,:));
% Chongqing_6_21_China
x_data = Age_Chongqing_6_21_China;
y_data = Corr_Chongqing_6_21_China_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(5,:));
% Jilin_China
x_data = Age_Jilin_China;
y_data = Corr_Jilin_China_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(6,:));
% Japanese_1_8
x_data = Age_Japanese_1_8;
y_data = Corr_Japanese_1_8_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(7,:));
% Bangladesh_2011_14
x_data = Age_Bangladesh_2011_14;
y_data = Corr_Bangladesh_2011_14_Female;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(8,:));

% For Male
subplot(1,3,2);
hold on;
title('Male')
xlabel('Age (yr)');
%ylabel('Correlation coefficients')
xlim([0 91]);
ylim([0.90 1]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

% KSPF_Korea
x_data = Age_KSPF_Korea;
y_data = Corr_KSPF_Korea_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(1,:));
% ELSA_Brasil
x_data = Age_1_ELSA_Brasil;
y_data = Corr_1_ELSA_Brasil_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(2,:));
% CHARLS
x_data = Age_1_CHARLS;
y_data = Corr_1_CHARLS_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(3,:));
% BCCPDS_7_21_China
x_data = Age_BCCPDS_7_21_China;
y_data = Corr_BCCPDS_7_21_China_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(4,:));
% Chongqing_6_21_China
x_data = Age_Chongqing_6_21_China;
y_data = Corr_Chongqing_6_21_China_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(5,:));
% Jilin_China
x_data = Age_Jilin_China;
y_data = Corr_Jilin_China_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(6,:));
% Japanese_1_8
x_data = Age_Japanese_1_8;
y_data = Corr_Japanese_1_8_Male;
H1 = plot(x_data,y_data,'-','LineWidth',My_LineWidth,'Color',My_Colors_28(7,:));

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

Legend = legend([H1 H2 H3 H4 H5 H6 H7 H8],...
    '05-KSPF',...
    '06-ELSH-Brasil',...
    '07-China, CHARLS',...
    '07-China, BCCPDS',...
    '07-China, Chongqing',...
    '07-China, Jilin',...
    '08-Japan',...
    '09-Bangladesh',...
    'Location','southwest');
set(Legend,'Box','off','FontSize',9)
