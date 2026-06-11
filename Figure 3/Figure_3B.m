%% Source codes for Figure 3(B)
% Use Boxplot to statistically compare the distribution of the upper height limit
% Female: Age > 20
% Male: Age > 25
%
%% Parameter information for drawing
My_mark_type = '.';
My_LineWidth = 2;
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
%% Load the data
% 04-SHARE
load('All coefficients\04-SHARE\Coefficients_a_and_b_c1_SHARE.mat')
Age_All_Female = [Age_14_Netherlands Age_17_France Age_23_Belgium Age_31_Luxembourg ...
    Age_55_Finland Age_15_Spain Age_16_Italy Age_19_Greece Age_33_Portugal ...
    Age_34_Slovenia Age_47_Croatia Age_51_Bulgaria Age_53_Cyprus Age_59_Malta ...
    Age_61_Romania Age_13_Sweden Age_18_Denmark Age_35_Estonia Age_48_Lithuania ...
    Age_57_Latvia Age_11_Austria Age_12_Germany Age_20_Switzerland Age_28_Czech ...
    Age_29_Poland Age_32_Hungary Age_63_Slovakia Age_25_Israel];

Age_All_Male = [Age_14_Netherlands Age_17_France Age_23_Belgium Age_31_Luxembourg ...
    Age_55_Finland Age_15_Spain Age_16_Italy Age_19_Greece Age_33_Portugal ...
    Age_34_Slovenia Age_47_Croatia Age_51_Bulgaria Age_53_Cyprus Age_59_Malta ...
    Age_61_Romania Age_13_Sweden Age_18_Denmark Age_35_Estonia Age_48_Lithuania ...
    Age_57_Latvia Age_11_Austria Age_12_Germany Age_20_Switzerland Age_28_Czech ...
    Age_29_Poland Age_32_Hungary Age_63_Slovakia Age_25_Israel];

Coefficient_b_All_Female = [Coefficient_b_Female_1_14_Netherlands Coefficient_b_Female_1_17_France ...
    Coefficient_b_Female_1_23_Belgium Coefficient_b_Female_1_31_Luxembourg Coefficient_b_Female_1_55_Finland ...
    Coefficient_b_Female_1_15_Spain Coefficient_b_Female_1_16_Italy Coefficient_b_Female_1_19_Greece ...
    Coefficient_b_Female_1_33_Portugal Coefficient_b_Female_1_34_Slovenia Coefficient_b_Female_1_47_Croatia ...
    Coefficient_b_Female_1_51_Bulgaria Coefficient_b_Female_1_53_Cyprus Coefficient_b_Female_1_59_Malta ...
    Coefficient_b_Female_1_61_Romania Coefficient_b_Female_1_13_Sweden Coefficient_b_Female_1_18_Denmark ...
    Coefficient_b_Female_1_35_Estonia Coefficient_b_Female_1_48_Lithuania Coefficient_b_Female_1_57_Latvia ...
    Coefficient_b_Female_1_11_Austria Coefficient_b_Female_1_12_Germany Coefficient_b_Female_1_20_Switzerland ...
    Coefficient_b_Female_1_20_Switzerland Coefficient_b_Female_1_29_Poland Coefficient_b_Female_1_32_Hungary ...
    Coefficient_b_Female_1_63_Slovakia Coefficient_b_Female_1_25_Israel];

Coefficient_b_All_Male = [Coefficient_b_Male_1_14_Netherlands Coefficient_b_Male_1_17_France ...
    Coefficient_b_Male_1_23_Belgium Coefficient_b_Male_1_31_Luxembourg Coefficient_b_Male_1_55_Finland ...
    Coefficient_b_Male_1_15_Spain Coefficient_b_Male_1_16_Italy Coefficient_b_Male_1_19_Greece ...
    Coefficient_b_Male_1_33_Portugal Coefficient_b_Male_1_34_Slovenia Coefficient_b_Male_1_47_Croatia ...
    Coefficient_b_Male_1_51_Bulgaria Coefficient_b_Male_1_53_Cyprus Coefficient_b_Male_1_59_Malta ...
    Coefficient_b_Male_1_61_Romania Coefficient_b_Male_1_13_Sweden Coefficient_b_Male_1_18_Denmark ...
    Coefficient_b_Male_1_35_Estonia Coefficient_b_Male_1_48_Lithuania Coefficient_b_Male_1_57_Latvia ...
    Coefficient_b_Male_1_11_Austria Coefficient_b_Male_1_12_Germany Coefficient_b_Male_1_20_Switzerland ...
    Coefficient_b_Male_1_20_Switzerland Coefficient_b_Male_1_29_Poland Coefficient_b_Male_1_32_Hungary ...
    Coefficient_b_Male_1_63_Slovakia Coefficient_b_Male_1_25_Israel];

% 01-NHANES
load('All coefficients\01-NHANES\Coefficient_a_and_b_c1_NHANES_ALL.mat')
Age_All_Female = [Age_All_Female Age_NHANES_ALL];
Age_All_Male = [Age_All_Male Age_NHANES_ALL];
Coefficient_b_All_Female = [Coefficient_b_All_Female Coefficient_b_Female_1_NHANES_ALL];
Coefficient_b_All_Male = [Coefficient_b_All_Male Coefficient_b_Male_1_NHANES_ALL];

% 02-ENSAUNT
load('All coefficients\02-ENSAUNT\Coefficients_a_and_b_c1_ENSAUT_ALL.mat')
Age_All_Female = [Age_All_Female Age_ENSANUT_ALL];
Age_All_Male = [Age_All_Male Age_ENSANUT_ALL];
Coefficient_b_All_Female = [Coefficient_b_All_Female Coefficient_b_Female_1_ENSANUT_ALL];
Coefficient_b_All_Male = [Coefficient_b_All_Male Coefficient_b_Male_1_ENSANUT_ALL];

% 03-KNHANES
load('All coefficients\03-KNHANES\Coefficients_a_and_b_c1_KNHANES.mat')
Age_All_Female = [Age_All_Female Age_KNHANES_ALL];
Age_All_Male = [Age_All_Male Age_KNHANES_ALL];
Coefficient_b_All_Female = [Coefficient_b_All_Female Coefficient_b_Female_1_KNHANES_ALL];
Coefficient_b_All_Male = [Coefficient_b_All_Male Coefficient_b_Male_1_KNHANES_ALL];

% 05-KSPF
load('All coefficients\05-KSPF\Coefficients_a_and_b_c1_KSPF.mat')
Age_All_Female = [Age_All_Female Age_KSPF_Korea];
Age_All_Male = [Age_All_Male Age_KSPF_Korea];
Coefficient_b_All_Female = [Coefficient_b_All_Female Coefficient_b_Female_1_KSPF_Korea];
Coefficient_b_All_Male = [Coefficient_b_All_Male Coefficient_b_Male_1_KSPF_Korea];

% 06-ELSH-Brasil
load('All coefficients\06-ELSH-Brasil\Coefficients_a_and_b_c1_ELSA_Brasil.mat')
Age_All_Female = [Age_All_Female Age_ELSA_Brasil];
Age_All_Male = [Age_All_Male Age_ELSA_Brasil];
Coefficient_b_All_Female = [Coefficient_b_All_Female Coefficient_b_Female_1_ELSA_Brasil];
Coefficient_b_All_Male = [Coefficient_b_All_Male Coefficient_b_Male_1_ELSA_Brasil];

% 07-China
load('All coefficients\07-China\Coefficients_a_and_b_c1_China.mat')
Age_All_Female = [Age_All_Female Age_Jilin_China];
Age_All_Male = [Age_All_Male Age_Jilin_China];
Coefficient_b_All_Female = [Coefficient_b_All_Female Coefficient_b_Female_1_Jilin_China];
Coefficient_b_All_Male = [Coefficient_b_All_Male Coefficient_b_Male_1_Jilin_China];

Age_All_Female = [Age_All_Female Age_Chongqing_6_21_China];
Age_All_Male = [Age_All_Male Age_Chongqing_6_21_China];
Coefficient_b_All_Female = [Coefficient_b_All_Female Coefficient_b_Female_1_Chongqing_6_21_China];
Coefficient_b_All_Male = [Coefficient_b_All_Male Coefficient_b_Male_1_Chongqing_6_21_China];

Age_All_Female = [Age_All_Female Age_CHARLS_China];
Age_All_Male = [Age_All_Male Age_CHARLS_China];
Coefficient_b_All_Female = [Coefficient_b_All_Female Coefficient_b_Female_1_CHARLS_China];
Coefficient_b_All_Male = [Coefficient_b_All_Male Coefficient_b_Male_1_CHARLS_China];

Age_All_Female = [Age_All_Female Age_BCCPDS_7_21_China];
Age_All_Male = [Age_All_Male Age_BCCPDS_7_21_China];
Coefficient_b_All_Female = [Coefficient_b_All_Female Coefficient_b_Female_1_BCCPDS_7_21_China];
Coefficient_b_All_Male = [Coefficient_b_All_Male Coefficient_b_Male_1_BCCPDS_7_21_China];

% 08-Japan
load('All coefficients\08-Japan\Coefficients_a_and_b_c1_Japan.mat')
Age_All_Female = [Age_All_Female Age_Japanese_1_8];
Age_All_Male = [Age_All_Male Age_Japanese_1_8];
Coefficient_b_All_Female = [Coefficient_b_All_Female Coefficient_b_Female_1_Japanese_1_8];
Coefficient_b_All_Male = [Coefficient_b_All_Male Coefficient_b_Male_1_Japanese_1_8];

% 09-Bangladesh
load('All coefficients\09-Bangladesh\Coefficients_a_and_b_c1_Bangladesh.mat')
Age_All_Female = [Age_All_Female Age_Bangladesh_2011_14];
Coefficient_b_All_Female = [Coefficient_b_All_Female Coefficient_b_Female_1_Bangladesh_2011_14];


%%

% For Female
UPP_lim_Ht_Female = [];
% Total_ALL
[M N] = size(Age_All_Female);
for i = 1:N
    if Age_All_Female(i) > 20
        UPP_lim_Ht_Female = [UPP_lim_Ht_Female 1/Coefficient_b_All_Female(i)];
    end
end

% For Male
UPP_lim_Ht_Male = [];
% Total_ALL
[M N] = size(Age_All_Male);
for i = 1:N
    if Age_All_Male(i) > 20
        UPP_lim_Ht_Male = [UPP_lim_Ht_Male 1/Coefficient_b_All_Male(i)];
    end
end

%% We show the results
FF = figure;
hold on;
%title('Female')
%xlabel('Age (yr)');
ylabel('Upper limit for height (m)');
xlim([0.2 4.4]);
ylim([1 2.3]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)
Band_Width = 0.6; % Length
set(gca,'YTick',[1 1.2 1.4 1.6 1.776 1.975 2.2],'XTicklabel',{'1','1.2','1.4','1.6','1.776','1.975','2.2'});
set(gca,'XTick',[1.5 3.5],'XTicklabel',{'Female','Male'});

xxx = 0:0.1:9;
yyy = 1.776+xxx*0;
plot(xxx,yyy,'-.','linewidth',1,'color','k')

xxx = 0:0.1:9;
yyy = 1.975+xxx*0;
plot(xxx,yyy,'-.','linewidth',1,'color','k')

UPP_lim_Ht_Female_Outside_5th = [];
UPP_lim_Ht_Female_Outside_95th = [];
UPP_lim_Ht_Male_Outside_5th = [];
UPP_lim_Ht_Male_Outside_95th = [];

My_p = [5 10 25 50 75 90 95]; % percentiles
UPP_lim_Ht_Female_Percentiles = prctile(UPP_lim_Ht_Female,My_p);
UPP_lim_Ht_Male_Percentiles = prctile(UPP_lim_Ht_Male,My_p);

% Female
[M N] = size(UPP_lim_Ht_Female);
for i = 1: N
    if UPP_lim_Ht_Female(i) < UPP_lim_Ht_Female_Percentiles(1)
        UPP_lim_Ht_Female_Outside_5th = [UPP_lim_Ht_Female_Outside_5th UPP_lim_Ht_Female(i)];
    end
    if UPP_lim_Ht_Female(i) > UPP_lim_Ht_Female_Percentiles(7)
        UPP_lim_Ht_Female_Outside_95th = [UPP_lim_Ht_Female_Outside_95th UPP_lim_Ht_Female(i)];
    end
end

% Male
[M N] = size(UPP_lim_Ht_Male);
for i = 1: N
    if UPP_lim_Ht_Male(i) < UPP_lim_Ht_Male_Percentiles(1)
        UPP_lim_Ht_Male_Outside_5th = [UPP_lim_Ht_Male_Outside_5th UPP_lim_Ht_Male(i)];
    end
    if UPP_lim_Ht_Male(i) > UPP_lim_Ht_Male_Percentiles(7)
        UPP_lim_Ht_Male_Outside_95th = [UPP_lim_Ht_Male_Outside_95th UPP_lim_Ht_Male(i)];
    end
end

%% Female
XX_Fill = [1-Band_Width/2 1+Band_Width/2 1+Band_Width/2 1-Band_Width/2];
YY_Fill = [UPP_lim_Ht_Female_Percentiles(3) UPP_lim_Ht_Female_Percentiles(3) UPP_lim_Ht_Female_Percentiles(4) UPP_lim_Ht_Female_Percentiles(4)]; % 25至50
H1 = fill(XX_Fill,YY_Fill,My_Colors_9(1,:),'linewidth',My_LineWidth_1);
set(H1,'edgealpha',1,'facealpha',Alpha);
YY_Fill = [UPP_lim_Ht_Female_Percentiles(4) UPP_lim_Ht_Female_Percentiles(4) UPP_lim_Ht_Female_Percentiles(5) UPP_lim_Ht_Female_Percentiles(5)]; % 50至75
H1 = fill(XX_Fill,YY_Fill,My_Colors_9(1,:));
set(H1,'edgealpha',1,'facealpha',Alpha,'linewidth',My_LineWidth_1);
XX_Line = 1+[-Band_Width/3 Band_Width/3];
YY_Line = [UPP_lim_Ht_Female_Percentiles(1) UPP_lim_Ht_Female_Percentiles(1)]; % %5 percentile
LL = line(XX_Line,YY_Line,'linewidth',My_LineWidth_1,'Color',[0 0 0]);
YY_Line = [UPP_lim_Ht_Female_Percentiles(7) UPP_lim_Ht_Female_Percentiles(7)]; % %95 percentile
LL = line(XX_Line,YY_Line,'linewidth',My_LineWidth_1,'Color',[0 0 0]);
XX_Line = [1 1];
YY_Line = [UPP_lim_Ht_Female_Percentiles(1) UPP_lim_Ht_Female_Percentiles(3)];
LL = line(XX_Line,YY_Line,'LineStyle','--','linewidth',My_LineWidth_1,'Color',[0 0 0]);
YY_Line = [UPP_lim_Ht_Female_Percentiles(5) UPP_lim_Ht_Female_Percentiles(7)];
LL = line(XX_Line,YY_Line,'LineStyle','--','linewidth',My_LineWidth_1,'Color',[0 0 0]);


% text
My_text = 'Age > 20';
XX_Text = 1.25;
YY_Text = 1.93;
Text = text(XX_Text,YY_Text,My_text,'FontSize',12,'FontName',My_FontName,'HorizontalAlignment','center');
%}

% distribution curve
nbins = 12;
figure;
HH_Female = histogram(UPP_lim_Ht_Female,nbins);
figure(FF);
xx = HH_Female.BinEdges;
yy = HH_Female.Values;
x_data = [];
y_data = HH_Female.Values;
[M N] = size(HH_Female.BinEdges);
for i = 1:N-1
    x_data = [x_data (xx(i)+xx(i+1))/2];
end
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = UPP_lim_Ht_Female_Percentiles(1):0.0005:UPP_lim_Ht_Female_Percentiles(7);
YY = fitobject(XX)/max(fitobject(XX))*0.8+1;
H1 = plot(YY,XX,'LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(1,:));

%% Male
XX_Fill = [3-Band_Width/2 3+Band_Width/2 3+Band_Width/2 3-Band_Width/2];
YY_Fill = [UPP_lim_Ht_Male_Percentiles(3) UPP_lim_Ht_Male_Percentiles(3) UPP_lim_Ht_Male_Percentiles(4) UPP_lim_Ht_Male_Percentiles(4)]; % 25至50
H1 = fill(XX_Fill,YY_Fill,My_Colors_9(2,:),'linewidth',My_LineWidth_1);
set(H1,'edgealpha',1,'facealpha',Alpha);
YY_Fill = [UPP_lim_Ht_Male_Percentiles(4) UPP_lim_Ht_Male_Percentiles(4) UPP_lim_Ht_Male_Percentiles(5) UPP_lim_Ht_Male_Percentiles(5)]; % 50至75
H1 = fill(XX_Fill,YY_Fill,My_Colors_9(2,:));
set(H1,'edgealpha',1,'facealpha',Alpha,'linewidth',My_LineWidth_1);
XX_Line = 3+[-Band_Width/3 Band_Width/3];
YY_Line = [UPP_lim_Ht_Male_Percentiles(1) UPP_lim_Ht_Male_Percentiles(1)]; % %5 percentile
LL = line(XX_Line,YY_Line,'linewidth',My_LineWidth_1,'Color',[0 0 0]);
YY_Line = [UPP_lim_Ht_Male_Percentiles(7) UPP_lim_Ht_Male_Percentiles(7)]; % %95 percentile
LL = line(XX_Line,YY_Line,'linewidth',My_LineWidth_1,'Color',[0 0 0]);
XX_Line = [3 3];
YY_Line = [UPP_lim_Ht_Male_Percentiles(1) UPP_lim_Ht_Male_Percentiles(3)];
LL = line(XX_Line,YY_Line,'LineStyle','--','linewidth',My_LineWidth_1,'Color',[0 0 0]);
YY_Line = [UPP_lim_Ht_Male_Percentiles(5) UPP_lim_Ht_Male_Percentiles(7)];
LL = line(XX_Line,YY_Line,'LineStyle','--','linewidth',My_LineWidth_1,'Color',[0 0 0]);


% text
My_text = 'Age > 25';
XX_Text = 3.25;
YY_Text = 2.18;
Text = text(XX_Text,YY_Text,My_text,'FontSize',12,'FontName',My_FontName,'HorizontalAlignment','center');

% distribution curve
nbins = 12;
figure;
HH_Male = histogram(UPP_lim_Ht_Male,nbins);
figure(FF);
xx = HH_Male.BinEdges;
yy = HH_Male.Values;
x_data = [];
y_data = HH_Male.Values;
[M N] = size(HH_Male.BinEdges);
for i = 1:N-1
    x_data = [x_data (xx(i)+xx(i+1))/2];
end
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = UPP_lim_Ht_Male_Percentiles(1):0.0005:UPP_lim_Ht_Male_Percentiles(7);
YY = fitobject(XX)/max(fitobject(XX))*0.8+3;
H1 = plot(YY,XX,'LineWidth',My_LineWidth-0.5,'Color',My_Colors_9(2,:));
