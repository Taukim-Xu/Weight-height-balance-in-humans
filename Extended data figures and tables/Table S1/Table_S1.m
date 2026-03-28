%% Source codes for Table S1
% Linear correlation coefficient between Weight and Weight*Height by continent and sex
% Figure 1(B): Box plot
%
%% Loading the correlation coefficients
% 01-Europe
load('./01-Europe/Correlation_coefficient_c1_Western_Europe.mat')
load('./01-Europe/Correlation_coefficient_c1_Southern_Europe.mat')
load('./01-Europe/Correlation_coefficient_c1_Northern_Europe.mat')
load('./01-Europe/Correlation_coefficient_c1_Eastern_Europe.mat')
load('./01-Europe/Correlation_coefficient_c1_Eastern_Central_Europe.mat')
% 02-America
load('./02-America/Correlation_coefficient_c1_NHANES_ALL.mat')
% 03-Asian
load('./03-Asian/Correlation_coefficient_c1_Asia.mat')
%% We merge them.
Corr_All_Female = [Corr_14_Netherlands_Female Corr_17_France_Female Corr_23_Belgium_Female ...
    Corr_31_Luxembourg_Female Corr_55_Finland_Female Corr_15_Spain_Female Corr_16_Italy_Female ...
    Corr_19_Greece_Female Corr_33_Portugal_Female Corr_34_Slovenia_Female Corr_47_Croatia_Female ...
    Corr_51_Bulgaria_Female Corr_53_Cyprus_Female Corr_59_Malta_Female Corr_61_Romania_Female ...
    Corr_13_Sweden_Female Corr_18_Denmark_Female Corr_35_Estonia_Female Corr_48_Lithuania_Female ...
    Corr_57_Latvia_Female Corr_11_Austria_Female Corr_12_Germany_Female Corr_20_Switzerland_Female ...
    Corr_28_Czech_Female Corr_29_Poland_Female Corr_32_Hungary_Female Corr_63_Slovakia_Female ...
    Corr_63_Source_data_Slovakia_Female Corr_NHANES_1999_2000_Female Corr_NHANES_2001_2002_Female ...
    Corr_NHANES_2003_2004_Female Corr_NHANES_2005_2006_Female Corr_NHANES_2007_2008_Female ...
    Corr_NHANES_2009_2010_Female Corr_NHANES_2011_2012_Female Corr_NHANES_2013_2014_Female ...
    Corr_NHANES_2015_2016_Female Corr_NHANES_2017_2018_Female Corr_NHANES_2017_March_2020_Female ...
    Corr_NHANES_August_2021_August_2023_Female Corr_25_Israel_Female Corr_BCCPDS_7_21_China_Female ...
    Corr_Chongqing_6_21_China_Female Corr_Japanese_1_8_Female Corr_Jilin_China_Female Corr_KSPF_Korea_Female ...
    Corr_Bangladesh_2011_14_Female];

Corr_All_Male = [Corr_14_Netherlands_Male Corr_17_France_Male Corr_23_Belgium_Male ...
    Corr_31_Luxembourg_Male Corr_55_Finland_Male Corr_15_Spain_Male Corr_16_Italy_Male ...
    Corr_19_Greece_Male Corr_33_Portugal_Male Corr_34_Slovenia_Male Corr_47_Croatia_Male ...
    Corr_51_Bulgaria_Male Corr_53_Cyprus_Male Corr_59_Malta_Male Corr_61_Romania_Male ...
    Corr_13_Sweden_Male Corr_18_Denmark_Male Corr_35_Estonia_Male Corr_48_Lithuania_Male ...
    Corr_57_Latvia_Male Corr_11_Austria_Male Corr_12_Germany_Male Corr_20_Switzerland_Male ...
    Corr_28_Czech_Male Corr_29_Poland_Male Corr_32_Hungary_Male Corr_63_Slovakia_Male ...
    Corr_63_Source_data_Slovakia_Male Corr_NHANES_1999_2000_Male Corr_NHANES_2001_2002_Male ...
    Corr_NHANES_2003_2004_Male Corr_NHANES_2005_2006_Male Corr_NHANES_2007_2008_Male ...
    Corr_NHANES_2009_2010_Male Corr_NHANES_2011_2012_Male Corr_NHANES_2013_2014_Male ...
    Corr_NHANES_2015_2016_Male Corr_NHANES_2017_2018_Male Corr_NHANES_2017_March_2020_Male ...
    Corr_NHANES_August_2021_August_2023_Male Corr_25_Israel_Male Corr_BCCPDS_7_21_China_Male ...
    Corr_Chongqing_6_21_China_Male Corr_Japanese_1_8_Male Corr_Jilin_China_Male Corr_KSPF_Korea_Male];

Corr_Europe_Female = [Corr_14_Netherlands_Female Corr_17_France_Female Corr_23_Belgium_Female ...
    Corr_31_Luxembourg_Female Corr_55_Finland_Female Corr_15_Spain_Female Corr_16_Italy_Female ...
    Corr_19_Greece_Female Corr_33_Portugal_Female Corr_34_Slovenia_Female Corr_47_Croatia_Female ...
    Corr_51_Bulgaria_Female Corr_53_Cyprus_Female Corr_59_Malta_Female Corr_61_Romania_Female ...
    Corr_13_Sweden_Female Corr_18_Denmark_Female Corr_35_Estonia_Female Corr_48_Lithuania_Female ...
    Corr_57_Latvia_Female Corr_11_Austria_Female Corr_12_Germany_Female Corr_20_Switzerland_Female ...
    Corr_28_Czech_Female Corr_29_Poland_Female Corr_32_Hungary_Female Corr_63_Slovakia_Female ...
    Corr_63_Source_data_Slovakia_Female];

Corr_Europe_Male = [Corr_14_Netherlands_Male Corr_17_France_Male Corr_23_Belgium_Male ...
    Corr_31_Luxembourg_Male Corr_55_Finland_Male Corr_15_Spain_Male Corr_16_Italy_Male ...
    Corr_19_Greece_Male Corr_33_Portugal_Male Corr_34_Slovenia_Male Corr_47_Croatia_Male ...
    Corr_51_Bulgaria_Male Corr_53_Cyprus_Male Corr_59_Malta_Male Corr_61_Romania_Male ...
    Corr_13_Sweden_Male Corr_18_Denmark_Male Corr_35_Estonia_Male Corr_48_Lithuania_Male ...
    Corr_57_Latvia_Male Corr_11_Austria_Male Corr_12_Germany_Male Corr_20_Switzerland_Male ...
    Corr_28_Czech_Male Corr_29_Poland_Male Corr_32_Hungary_Male Corr_63_Slovakia_Male ...
    Corr_63_Source_data_Slovakia_Male];

Corr_America_Female = [Corr_NHANES_1999_2000_Female Corr_NHANES_2001_2002_Female ...
    Corr_NHANES_2003_2004_Female Corr_NHANES_2005_2006_Female Corr_NHANES_2007_2008_Female ...
    Corr_NHANES_2009_2010_Female Corr_NHANES_2011_2012_Female Corr_NHANES_2013_2014_Female ...
    Corr_NHANES_2015_2016_Female Corr_NHANES_2017_2018_Female Corr_NHANES_2017_March_2020_Female ...
    Corr_NHANES_August_2021_August_2023_Female];

Corr_America_Male = [Corr_NHANES_1999_2000_Male Corr_NHANES_2001_2002_Male ...
    Corr_NHANES_2003_2004_Male Corr_NHANES_2005_2006_Male Corr_NHANES_2007_2008_Male ...
    Corr_NHANES_2009_2010_Male Corr_NHANES_2011_2012_Male Corr_NHANES_2013_2014_Male ...
    Corr_NHANES_2015_2016_Male Corr_NHANES_2017_2018_Male Corr_NHANES_2017_March_2020_Male ...
    Corr_NHANES_August_2021_August_2023_Male];

Corr_Asian_Female = [Corr_25_Israel_Female Corr_BCCPDS_7_21_China_Female ...
    Corr_Chongqing_6_21_China_Female Corr_Japanese_1_8_Female Corr_Jilin_China_Female Corr_KSPF_Korea_Female ...
    Corr_Bangladesh_2011_14_Female];

Corr_Asian_Male = [Corr_25_Israel_Male Corr_BCCPDS_7_21_China_Male ...
    Corr_Chongqing_6_21_China_Male Corr_Japanese_1_8_Male Corr_Jilin_China_Male Corr_KSPF_Korea_Male];

My_p = [5 10 25 50 75 90 95]; % percentiles
Corr_All_Female_Percentiles = prctile(Corr_All_Female,My_p);
Corr_Europe_Female_Percentiles = prctile(Corr_Europe_Female,My_p);
Corr_America_Female_Percentiles = prctile(Corr_America_Female,My_p);
Corr_Asian_Female_Percentiles = prctile(Corr_Asian_Female,My_p);

Corr_All_Male_Percentiles = prctile(Corr_All_Male,My_p);
Corr_Europe_Male_Percentiles = prctile(Corr_Europe_Male,My_p);
Corr_America_Male_Percentiles = prctile(Corr_America_Male,My_p);
Corr_Asian_Male_Percentiles = prctile(Corr_Asian_Male,My_p);

%% For Female
Save_data_Female = [];
% ALL
My_Percentile = [5 50 95];
My_Mean = mean(Corr_All_Female); % Mean
My_Std = std(Corr_All_Female); % std.
My_Min = min(Corr_All_Female); % min
Temp = prctile(Corr_All_Female,My_Percentile);
My_5th = Temp(1); % 5th
My_50th = Temp(2); % 50th
My_95th = Temp(3); % 95th
My_Max = max(Corr_All_Female); % max
[M N] = size(Corr_All_Female);
My_N = N; % ALL
My_r_0_97 = 0; % r<0.97
My_r_0_95 = 0; % r<0.95
% r<0.97
[M N] = size(Corr_All_Female);
for i = 1:N
    if Corr_All_Female(i) < 0.97
        My_r_0_97 = My_r_0_97 + 1;
    end
end
% r<0.95
[M N] = size(Corr_All_Female);
for i = 1:N
    if Corr_All_Female(i) < 0.95
        My_r_0_95 = My_r_0_95 + 1;
    end
end
Save_data_Female = [Save_data_Female;My_Mean My_Std My_Min My_5th My_50th My_95th My_Max My_N My_r_0_97 My_r_0_95];

% Europe
My_Percentile = [5 50 95];
My_Mean = mean(Corr_Europe_Female); % Mean
My_Std = std(Corr_Europe_Female); % std.
My_Min = min(Corr_Europe_Female); % min
Temp = prctile(Corr_Europe_Female,My_Percentile);
My_5th = Temp(1); % 5th
My_50th = Temp(2); % 50th
My_95th = Temp(3); % 95th
My_Max = max(Corr_Europe_Female); % max
[M N] = size(Corr_Europe_Female);
My_N = N; % Europe
My_r_0_97 = 0; % r<0.97
My_r_0_95 = 0; % r<0.95
% r<0.97
[M N] = size(Corr_Europe_Female);
for i = 1:N
    if Corr_Europe_Female(i) < 0.97
        My_r_0_97 = My_r_0_97 + 1;
    end
end
% r<0.95
[M N] = size(Corr_Europe_Female);
for i = 1:N
    if Corr_Europe_Female(i) < 0.95
        My_r_0_95 = My_r_0_95 + 1;
    end
end
Save_data_Female = [Save_data_Female;My_Mean My_Std My_Min My_5th My_50th My_95th My_Max My_N My_r_0_97 My_r_0_95];

% America
My_Percentile = [5 50 95];
My_Mean = mean(Corr_America_Female); % Mean
My_Std = std(Corr_America_Female); % std.
My_Min = min(Corr_America_Female); % min
Temp = prctile(Corr_America_Female,My_Percentile);
My_5th = Temp(1); % 5th
My_50th = Temp(2); % 50th
My_95th = Temp(3); % 95th
My_Max = max(Corr_America_Female); % max
[M N] = size(Corr_America_Female);
My_N = N; % America
My_r_0_97 = 0; % r<0.97
My_r_0_95 = 0; % r<0.95
% r<0.97
[M N] = size(Corr_America_Female);
for i = 1:N
    if Corr_America_Female(i) < 0.97
        My_r_0_97 = My_r_0_97 + 1;
    end
end
% r<0.95
[M N] = size(Corr_America_Female);
for i = 1:N
    if Corr_America_Female(i) < 0.95
        My_r_0_95 = My_r_0_95 + 1;
    end
end
Save_data_Female = [Save_data_Female;My_Mean My_Std My_Min My_5th My_50th My_95th My_Max My_N My_r_0_97 My_r_0_95];

% Asia
My_Percentile = [5 50 95];
My_Mean = mean(Corr_Asian_Female); % Mean
My_Std = std(Corr_Asian_Female); % std.
My_Min = min(Corr_Asian_Female); % min
Temp = prctile(Corr_Asian_Female,My_Percentile);
My_5th = Temp(1); % 5th
My_50th = Temp(2); % 50th
My_95th = Temp(3); % 95th
My_Max = max(Corr_Asian_Female); % max
[M N] = size(Corr_Asian_Female);
My_N = N; % Asia
My_r_0_97 = 0; % r<0.97
My_r_0_95 = 0; % r<0.95
% r<0.97
[M N] = size(Corr_Asian_Female);
for i = 1:N
    if Corr_Asian_Female(i) < 0.97
        My_r_0_97 = My_r_0_97 + 1;
    end
end
% r<0.95
[M N] = size(Corr_Asian_Female);
for i = 1:N
    if Corr_Asian_Female(i) < 0.95
        My_r_0_95 = My_r_0_95 + 1;
    end
end
Save_data_Female = [Save_data_Female;My_Mean My_Std My_Min My_5th My_50th My_95th My_Max My_N My_r_0_97 My_r_0_95];

%% For Male
Save_data_Male = [];
% ALL
My_Percentile = [5 50 95];
My_Mean = mean(Corr_All_Male); % Mean
My_Std = std(Corr_All_Male); % std.
My_Min = min(Corr_All_Male); % min
Temp = prctile(Corr_All_Male,My_Percentile);
My_5th = Temp(1); % 5th
My_50th = Temp(2); % 50th
My_95th = Temp(3); % 95th
My_Max = max(Corr_All_Male); % max
[M N] = size(Corr_All_Male);
My_N = N; % ALL
My_r_0_97 = 0; % r<0.97
My_r_0_95 = 0; % r<0.95
% r<0.97
[M N] = size(Corr_All_Male);
for i = 1:N
    if Corr_All_Male(i) < 0.97
        My_r_0_97 = My_r_0_97 + 1;
    end
end
% r<0.95
[M N] = size(Corr_All_Male);
for i = 1:N
    if Corr_All_Male(i) < 0.95
        My_r_0_95 = My_r_0_95 + 1;
    end
end
Save_data_Male = [Save_data_Male;My_Mean My_Std My_Min My_5th My_50th My_95th My_Max My_N My_r_0_97 My_r_0_95];

% Europe
My_Percentile = [5 50 95];
My_Mean = mean(Corr_Europe_Male); % Mean
My_Std = std(Corr_Europe_Male); % std.
My_Min = min(Corr_Europe_Male); % min
Temp = prctile(Corr_Europe_Male,My_Percentile);
My_5th = Temp(1); % 5th
My_50th = Temp(2); % 50th
My_95th = Temp(3); % 95th
My_Max = max(Corr_Europe_Male); % max
[M N] = size(Corr_Europe_Male);
My_N = N; % Europe
My_r_0_97 = 0; % r<0.97
My_r_0_95 = 0; % r<0.95
% r<0.97
[M N] = size(Corr_Europe_Male);
for i = 1:N
    if Corr_Europe_Male(i) < 0.97
        My_r_0_97 = My_r_0_97 + 1;
    end
end
% r<0.95
[M N] = size(Corr_Europe_Male);
for i = 1:N
    if Corr_Europe_Male(i) < 0.95
        My_r_0_95 = My_r_0_95 + 1;
    end
end
Save_data_Male = [Save_data_Male;My_Mean My_Std My_Min My_5th My_50th My_95th My_Max My_N My_r_0_97 My_r_0_95];

% America
My_Percentile = [5 50 95];
My_Mean = mean(Corr_America_Male); % Mean
My_Std = std(Corr_America_Male); % std.
My_Min = min(Corr_America_Male); % min
Temp = prctile(Corr_America_Male,My_Percentile);
My_5th = Temp(1); % 5th
My_50th = Temp(2); % 50th
My_95th = Temp(3); % 95th
My_Max = max(Corr_America_Male); % max
[M N] = size(Corr_America_Male);
My_N = N; % America
My_r_0_97 = 0; % r<0.97
My_r_0_95 = 0; % r<0.95
% r<0.97
[M N] = size(Corr_America_Male);
for i = 1:N
    if Corr_America_Male(i) < 0.97
        My_r_0_97 = My_r_0_97 + 1;
    end
end
% r<0.95
[M N] = size(Corr_America_Male);
for i = 1:N
    if Corr_America_Male(i) < 0.95
        My_r_0_95 = My_r_0_95 + 1;
    end
end
Save_data_Male = [Save_data_Male;My_Mean My_Std My_Min My_5th My_50th My_95th My_Max My_N My_r_0_97 My_r_0_95];

% Asia
My_Percentile = [5 50 95];
My_Mean = mean(Corr_Asian_Male); % Mean
My_Std = std(Corr_Asian_Male); % std.
My_Min = min(Corr_Asian_Male); % min
Temp = prctile(Corr_Asian_Male,My_Percentile);
My_5th = Temp(1); % 5th
My_50th = Temp(2); % 50th
My_95th = Temp(3); % 95th
My_Max = max(Corr_Asian_Male); % max
[M N] = size(Corr_Asian_Male);
My_N = N; % Asia
My_r_0_97 = 0; % r<0.97
My_r_0_95 = 0; % r<0.95
% r<0.97
[M N] = size(Corr_Asian_Male);
for i = 1:N
    if Corr_Asian_Male(i) < 0.97
        My_r_0_97 = My_r_0_97 + 1;
    end
end
% r<0.95
[M N] = size(Corr_Asian_Male);
for i = 1:N
    if Corr_Asian_Male(i) < 0.95
        My_r_0_95 = My_r_0_95 + 1;
    end
end
Save_data_Male = [Save_data_Male;My_Mean My_Std My_Min My_5th My_50th My_95th My_Max My_N My_r_0_97 My_r_0_95];

%% 
xlswrite('Table S1.xlsx',Save_data_Female,'Sheet1','C3');
xlswrite('Table S1.xlsx',Save_data_Male,'Sheet1','C7');

