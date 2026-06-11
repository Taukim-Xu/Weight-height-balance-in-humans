%% Source codes for Table S5
% We calculate the coefficients a and b for
% 04-SHARE
%%
% Including:
% 11_Austria - 奥地利 - 中欧
% 12_Germany - 德国 - 中欧
% 13_Sweden - 瑞典 - 北欧
% 14_Netherlands - 荷兰 - 西欧
% 15_Spain - 西班牙 - 南欧
% 16_Italy - 意大利 - 南欧
% 17_France - 法国 - 西欧
% 18_Denmark - 丹麦 - 北欧
% 19_Greece - 希腊 - 南欧
% 20_Switzerland - 瑞士 - 中欧
% 23_Belgium - 比利时 - 西欧
% 25_Israel - 以色列 - 亚洲
% 28_Czech - 捷克 - 中欧
% 29_Poland - 波兰 - 中欧
% 31_Luxembourg - 卢森堡 - 西欧
% 32_Hungary - 匈牙利 - 中欧
% 33_Portugal - 葡萄牙 - 南欧
% 34_Slovenia - 斯洛文尼亚 - 南欧
% 35_Estonia - 爱沙尼亚 - 东欧
% 47_Croatia - 克罗地亚 - 南欧
% 48_Lithuania - 立陶宛 - 东欧
% 51_Bulgaria - 保加利亚 - 南欧
% 53_Cyprus - 塞浦路斯 - 南欧
% 55_Finland - 芬兰 - 西欧
% 57_Latvia - 拉脱维亚 - 东欧
% 59_Malta - 马耳他 - 南欧
% 61_Romania - 罗马尼亚 - 南欧
% 63_Slovakia - 斯洛伐克 - 中欧
%
%% Load the data 
load('.\All coefficients\04-SHARE\Coefficients_a_and_b_c1_SHARE.mat')
%%
c = 1;
%%
Save_data = [];
%% 11_Austria
% For Female
% Age: 50:70
Age = 50:70;
Coefficient_a = Coefficient_a_Female_1_11_Austria(1:21);
Coefficient_b = Coefficient_b_Female_1_11_Austria(1:21);
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];
% Age: 71:91
Age = 71:91;
Coefficient_a = [Coefficient_a_Female_1_11_Austria(22:end) 0];
Coefficient_b = [Coefficient_b_Female_1_11_Austria(22:end) 0];
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

% For Male
% Age: 50:70
Age = 50:70;
Coefficient_a = Coefficient_a_Male_1_11_Austria(1:21);
Coefficient_b = Coefficient_b_Male_1_11_Austria(1:21);
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];
% Age: 71:91
Age = 71:91;
Coefficient_a = [Coefficient_a_Male_1_11_Austria(22:end) 0];
Coefficient_b = [Coefficient_b_Male_1_11_Austria(22:end) 0];
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

%% 12_Germany
% For Female
% Age: 50:70
Age = 50:70;
Coefficient_a = Coefficient_a_Female_1_12_Germany(1:21);
Coefficient_b = Coefficient_b_Female_1_12_Germany(1:21);
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];
% Age: 71:91
Age = 71:91;
Coefficient_a = [Coefficient_a_Female_1_12_Germany(22:end) 0];
Coefficient_b = [Coefficient_b_Female_1_12_Germany(22:end) 0];
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

% For Male
% Age: 50:70
Age = 50:70;
Coefficient_a = Coefficient_a_Male_1_12_Germany(1:21);
Coefficient_b = Coefficient_b_Male_1_12_Germany(1:21);
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];
% Age: 71:91
Age = 71:91;
Coefficient_a = [Coefficient_a_Male_1_12_Germany(22:end) 0];
Coefficient_b = [Coefficient_b_Male_1_12_Germany(22:end) 0];
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

%% 13_Sweden
% For Female
% Age: 50:70
Age = 50:70;
Coefficient_a = Coefficient_a_Female_1_13_Sweden(1:21);
Coefficient_b = Coefficient_b_Female_1_13_Sweden(1:21);
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];
% Age: 71:91
Age = 71:91;
Coefficient_a = [Coefficient_a_Female_1_13_Sweden(22:end) 0];
Coefficient_b = [Coefficient_b_Female_1_13_Sweden(22:end) 0];
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

% For Male
% Age: 50:70
Age = 50:70;
Coefficient_a = Coefficient_a_Male_1_13_Sweden(1:21);
Coefficient_b = Coefficient_b_Male_1_13_Sweden(1:21);
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];
% Age: 71:91
Age = 71:91;
Coefficient_a = [Coefficient_a_Male_1_13_Sweden(22:end) 0];
Coefficient_b = [Coefficient_b_Male_1_13_Sweden(22:end) 0];
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

%% 14_Netherlands
% For Female
% Age: 50:70
Age = 50:70;
Coefficient_a = Coefficient_a_Female_1_14_Netherlands(1:21);
Coefficient_b = Coefficient_b_Female_1_14_Netherlands(1:21);
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];
% Age: 71:91
Age = 71:91;
Coefficient_a = [Coefficient_a_Female_1_14_Netherlands(22:end) 0];
Coefficient_b = [Coefficient_b_Female_1_14_Netherlands(22:end) 0];
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

% For Male
% Age: 50:70
Age = 50:70;
Coefficient_a = Coefficient_a_Male_1_14_Netherlands(1:21);
Coefficient_b = Coefficient_b_Male_1_14_Netherlands(1:21);
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];
% Age: 71:91
Age = 71:91;
Coefficient_a = [Coefficient_a_Male_1_14_Netherlands(22:end) 0];
Coefficient_b = [Coefficient_b_Male_1_14_Netherlands(22:end) 0];
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

%% 15_Spain
% For Female
% Age: 50:70
Age = 50:70;
Coefficient_a = Coefficient_a_Female_1_15_Spain(1:21);
Coefficient_b = Coefficient_b_Female_1_15_Spain(1:21);
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];
% Age: 71:91
Age = 71:91;
Coefficient_a = [Coefficient_a_Female_1_15_Spain(22:end) 0];
Coefficient_b = [Coefficient_b_Female_1_15_Spain(22:end) 0];
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

% For Male
% Age: 50:70
Age = 50:70;
Coefficient_a = Coefficient_a_Male_1_15_Spain(1:21);
Coefficient_b = Coefficient_b_Male_1_15_Spain(1:21);
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];
% Age: 71:91
Age = 71:91;
Coefficient_a = [Coefficient_a_Male_1_15_Spain(22:end) 0];
Coefficient_b = [Coefficient_b_Male_1_15_Spain(22:end) 0];
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

%% 16_Italy
% For Female
% Age: 50:70
Age = 50:70;
Coefficient_a = Coefficient_a_Female_1_16_Italy(1:21);
Coefficient_b = Coefficient_b_Female_1_16_Italy(1:21);
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];
% Age: 71:91
Age = 71:91;
Coefficient_a = [Coefficient_a_Female_1_16_Italy(22:end) 0];
Coefficient_b = [Coefficient_b_Female_1_16_Italy(22:end) 0];
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

% For Male
% Age: 50:70
Age = 50:70;
Coefficient_a = Coefficient_a_Male_1_16_Italy(1:21);
Coefficient_b = Coefficient_b_Male_1_16_Italy(1:21);
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];
% Age: 71:91
Age = 71:91;
Coefficient_a = [Coefficient_a_Male_1_16_Italy(22:end) 0];
Coefficient_b = [Coefficient_b_Male_1_16_Italy(22:end) 0];
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

%% 17_France
% For Female
% Age: 50:70
Age = 50:70;
Coefficient_a = Coefficient_a_Female_1_17_France(1:21);
Coefficient_b = Coefficient_b_Female_1_17_France(1:21);
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];
% Age: 71:91
Age = 71:91;
Coefficient_a = [Coefficient_a_Female_1_17_France(22:end) 0];
Coefficient_b = [Coefficient_b_Female_1_17_France(22:end) 0];
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

% For Male
% Age: 50:70
Age = 50:70;
Coefficient_a = Coefficient_a_Male_1_17_France(1:21);
Coefficient_b = Coefficient_b_Male_1_17_France(1:21);
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];
% Age: 71:91
Age = 71:91;
Coefficient_a = [Coefficient_a_Male_1_17_France(22:end) 0];
Coefficient_b = [Coefficient_b_Male_1_17_France(22:end) 0];
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

%% 18_Denmark
% For Female
% Age: 50:70
Age = 50:70;
Coefficient_a = Coefficient_a_Female_1_18_Denmark(1:21);
Coefficient_b = Coefficient_b_Female_1_18_Denmark(1:21);
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];
% Age: 71:91
Age = 71:91;
Coefficient_a = [Coefficient_a_Female_1_18_Denmark(22:end) 0];
Coefficient_b = [Coefficient_b_Female_1_18_Denmark(22:end) 0];
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

% For Male
% Age: 50:70
Age = 50:70;
Coefficient_a = Coefficient_a_Male_1_18_Denmark(1:21);
Coefficient_b = Coefficient_b_Male_1_18_Denmark(1:21);
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];
% Age: 71:91
Age = 71:91;
Coefficient_a = [Coefficient_a_Male_1_18_Denmark(22:end) 0];
Coefficient_b = [Coefficient_b_Male_1_18_Denmark(22:end) 0];
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

%% 19_Greece
% For Female
% Age: 50:70
Age = 50:70;
Coefficient_a = Coefficient_a_Female_1_19_Greece(1:21);
Coefficient_b = Coefficient_b_Female_1_19_Greece(1:21);
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];
% Age: 71:91
Age = 71:91;
Coefficient_a = [Coefficient_a_Female_1_19_Greece(22:end) 0];
Coefficient_b = [Coefficient_b_Female_1_19_Greece(22:end) 0];
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

% For Male
% Age: 50:70
Age = 50:70;
Coefficient_a = Coefficient_a_Male_1_19_Greece(1:21);
Coefficient_b = Coefficient_b_Male_1_19_Greece(1:21);
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];
% Age: 71:91
Age = 71:91;
Coefficient_a = [Coefficient_a_Male_1_19_Greece(22:end) 0];
Coefficient_b = [Coefficient_b_Male_1_19_Greece(22:end) 0];
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

%% 20_Switzerland
% For Female
% Age: 50:70
Age = 50:70;
Coefficient_a = Coefficient_a_Female_1_20_Switzerland(1:21);
Coefficient_b = Coefficient_b_Female_1_20_Switzerland(1:21);
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];
% Age: 71:91
Age = 71:91;
Coefficient_a = [Coefficient_a_Female_1_20_Switzerland(22:end) 0];
Coefficient_b = [Coefficient_b_Female_1_20_Switzerland(22:end) 0];
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

% For Male
% Age: 50:70
Age = 50:70;
Coefficient_a = Coefficient_a_Male_1_20_Switzerland(1:21);
Coefficient_b = Coefficient_b_Male_1_20_Switzerland(1:21);
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];
% Age: 71:91
Age = 71:91;
Coefficient_a = [Coefficient_a_Male_1_20_Switzerland(22:end) 0];
Coefficient_b = [Coefficient_b_Male_1_20_Switzerland(22:end) 0];
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

%% 23_Belgium
% For Female
% Age: 50:70
Age = 50:70;
Coefficient_a = Coefficient_a_Female_1_23_Belgium(1:21);
Coefficient_b = Coefficient_b_Female_1_23_Belgium(1:21);
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];
% Age: 71:91
Age = 71:91;
Coefficient_a = [Coefficient_a_Female_1_23_Belgium(22:end) 0];
Coefficient_b = [Coefficient_b_Female_1_23_Belgium(22:end) 0];
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

% For Male
% Age: 50:70
Age = 50:70;
Coefficient_a = Coefficient_a_Male_1_23_Belgium(1:21);
Coefficient_b = Coefficient_b_Male_1_23_Belgium(1:21);
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];
% Age: 71:91
Age = 71:91;
Coefficient_a = [Coefficient_a_Male_1_23_Belgium(22:end) 0];
Coefficient_b = [Coefficient_b_Male_1_23_Belgium(22:end) 0];
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

%% 25_Israel
% For Female
% Age: 50:70
Age = 50:70;
Coefficient_a = Coefficient_a_Female_1_25_Israel(1:21);
Coefficient_b = Coefficient_b_Female_1_25_Israel(1:21);
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];
% Age: 71:91
Age = 71:91;
Coefficient_a = [Coefficient_a_Female_1_25_Israel(22:end) 0];
Coefficient_b = [Coefficient_b_Female_1_25_Israel(22:end) 0];
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

% For Male
% Age: 50:70
Age = 50:70;
Coefficient_a = Coefficient_a_Male_1_25_Israel(1:21);
Coefficient_b = Coefficient_b_Male_1_25_Israel(1:21);
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];
% Age: 71:91
Age = 71:91;
Coefficient_a = [Coefficient_a_Male_1_25_Israel(22:end) 0];
Coefficient_b = [Coefficient_b_Male_1_25_Israel(22:end) 0];
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

%% 28_Czech
% For Female
% Age: 50:70
Age = 50:70;
Coefficient_a = Coefficient_a_Female_1_28_Czech(1:21);
Coefficient_b = Coefficient_b_Female_1_28_Czech(1:21);
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];
% Age: 71:91
Age = 71:91;
Coefficient_a = [Coefficient_a_Female_1_28_Czech(22:end) 0];
Coefficient_b = [Coefficient_b_Female_1_28_Czech(22:end) 0];
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

% For Male
% Age: 50:70
Age = 50:70;
Coefficient_a = Coefficient_a_Male_1_28_Czech(1:21);
Coefficient_b = Coefficient_b_Male_1_28_Czech(1:21);
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];
% Age: 71:91
Age = 71:91;
Coefficient_a = [Coefficient_a_Male_1_28_Czech(22:end) 0];
Coefficient_b = [Coefficient_b_Male_1_28_Czech(22:end) 0];
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

%% 29_Poland
% For Female
% Age: 50:70
Age = 50:70;
Coefficient_a = Coefficient_a_Female_1_29_Poland(1:21);
Coefficient_b = Coefficient_b_Female_1_29_Poland(1:21);
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];
% Age: 71:91
Age = 71:91;
Coefficient_a = [Coefficient_a_Female_1_29_Poland(22:end) 0];
Coefficient_b = [Coefficient_b_Female_1_29_Poland(22:end) 0];
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

% For Male
% Age: 50:70
Age = 50:70;
Coefficient_a = Coefficient_a_Male_1_29_Poland(1:21);
Coefficient_b = Coefficient_b_Male_1_29_Poland(1:21);
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];
% Age: 71:91
Age = 71:91;
Coefficient_a = [Coefficient_a_Male_1_29_Poland(22:end) 0];
Coefficient_b = [Coefficient_b_Male_1_29_Poland(22:end) 0];
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

%% 31_Luxembourg
% For Female
% Age: 50:70
Age = 50:70;
Coefficient_a = [0 0 Coefficient_a_Female_1_31_Luxembourg(1:19)];
Coefficient_b = [0 0 Coefficient_b_Female_1_31_Luxembourg(1:19)];
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];
% Age: 71:91
Age = 71:91;
Coefficient_a = [Coefficient_a_Female_1_31_Luxembourg(20:end) 0 0 0 0 0 0];
Coefficient_b = [Coefficient_b_Female_1_31_Luxembourg(20:end) 0 0 0 0 0 0];
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

% For Male
% Age: 50:70
Age = 50:70;
Coefficient_a = [0 0 Coefficient_a_Male_1_31_Luxembourg(1:19)];
Coefficient_b = [0 0 Coefficient_b_Male_1_31_Luxembourg(1:19)];
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];
% Age: 71:91
Age = 71:91;
Coefficient_a = [Coefficient_a_Male_1_31_Luxembourg(20:end) 0 0 0 0 0 0];
Coefficient_b = [Coefficient_b_Male_1_31_Luxembourg(20:end) 0 0 0 0 0 0];
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

%% 32_Hungary
% For Female
% Age: 50:70
Age = 50:70;
Coefficient_a = [0 Coefficient_a_Female_1_32_Hungary(1:20)];
Coefficient_b = [0 Coefficient_b_Female_1_32_Hungary(1:20)];
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];
% Age: 71:91
Age = 71:91;
Coefficient_a = [Coefficient_a_Female_1_32_Hungary(21:end) 0 0 0 0 0 0];
Coefficient_b = [Coefficient_b_Female_1_32_Hungary(21:end) 0 0 0 0 0 0];
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

% For Male
% Age: 50:70
Age = 50:70;
Coefficient_a = [0 Coefficient_a_Male_1_32_Hungary(1:20)];
Coefficient_b = [0 Coefficient_b_Male_1_32_Hungary(1:20)];
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];
% Age: 71:91
Age = 71:91;
Coefficient_a = [Coefficient_a_Male_1_32_Hungary(21:end) 0 0 0 0 0 0];
Coefficient_b = [Coefficient_b_Male_1_32_Hungary(21:end) 0 0 0 0 0 0];
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

%% 33_Portugal
% For Female
% Age: 50:70
Age = 50:70;
Coefficient_a = [0 Coefficient_a_Female_1_33_Portugal(1:20)];
Coefficient_b = [0 Coefficient_b_Female_1_33_Portugal(1:20)];
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];
% Age: 71:91
Age = 71:91;
Coefficient_a = [Coefficient_a_Female_1_33_Portugal(21:end) 0 0 0 0];
Coefficient_b = [Coefficient_b_Female_1_33_Portugal(21:end) 0 0 0 0];
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

% For Male
% Age: 50:70
Age = 50:70;
Coefficient_a = [0 Coefficient_a_Male_1_33_Portugal(1:20)];
Coefficient_b = [0 Coefficient_b_Male_1_33_Portugal(1:20)];
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];
% Age: 71:91
Age = 71:91;
Coefficient_a = [Coefficient_a_Male_1_33_Portugal(21:end) 0 0 0 0];
Coefficient_b = [Coefficient_b_Male_1_33_Portugal(21:end) 0 0 0 0];
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

%% 34_Slovenia
% For Female
% Age: 50:70
Age = 50:70;
Coefficient_a = Coefficient_a_Female_1_34_Slovenia(1:21);
Coefficient_b = Coefficient_b_Female_1_34_Slovenia(1:21);
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];
% Age: 71:91
Age = 71:91;
Coefficient_a = [Coefficient_a_Female_1_34_Slovenia(22:end) 0];
Coefficient_b = [Coefficient_b_Female_1_34_Slovenia(22:end) 0];
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

% For Male
% Age: 50:70
Age = 50:70;
Coefficient_a = Coefficient_a_Male_1_34_Slovenia(1:21);
Coefficient_b = Coefficient_b_Male_1_34_Slovenia(1:21);
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];
% Age: 71:91
Age = 71:91;
Coefficient_a = [Coefficient_a_Male_1_34_Slovenia(22:end) 0];
Coefficient_b = [Coefficient_b_Male_1_34_Slovenia(22:end) 0];
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

%% 35_Estonia
% For Female
% Age: 50:70
Age = 50:70;
Coefficient_a = Coefficient_a_Female_1_35_Estonia(1:21);
Coefficient_b = Coefficient_b_Female_1_35_Estonia(1:21);
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];
% Age: 71:91
Age = 71:91;
Coefficient_a = [Coefficient_a_Female_1_35_Estonia(22:end) 0];
Coefficient_b = [Coefficient_b_Female_1_35_Estonia(22:end) 0];
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

% For Male
% Age: 50:70
Age = 50:70;
Coefficient_a = Coefficient_a_Male_1_35_Estonia(1:21);
Coefficient_b = Coefficient_b_Male_1_35_Estonia(1:21);
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];
% Age: 71:91
Age = 71:91;
Coefficient_a = [Coefficient_a_Male_1_35_Estonia(22:end) 0];
Coefficient_b = [Coefficient_b_Male_1_35_Estonia(22:end) 0];
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

%% 47_Croatia
% For Female
% Age: 50:70
Age = 50:70;
Coefficient_a = [0 Coefficient_a_Female_1_47_Croatia(1:20)];
Coefficient_b = [0 Coefficient_b_Female_1_47_Croatia(1:20)];
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];
% Age: 71:91
Age = 71:91;
Coefficient_a = [Coefficient_a_Female_1_47_Croatia(21:end) 0 0];
Coefficient_b = [Coefficient_b_Female_1_47_Croatia(21:end) 0 0];
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

% For Male
% Age: 50:70
Age = 50:70;
Coefficient_a = [0 Coefficient_a_Male_1_47_Croatia(1:20)];
Coefficient_b = [0 Coefficient_b_Male_1_47_Croatia(1:20)];
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];
% Age: 71:91
Age = 71:91;
Coefficient_a = [Coefficient_a_Male_1_47_Croatia(21:end) 0 0];
Coefficient_b = [Coefficient_b_Male_1_47_Croatia(21:end) 0 0];
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

%% 48_Lithuania
% For Female
% Age: 50:70
Age = 50:70;
Coefficient_a = [0 Coefficient_a_Female_1_48_Lithuania(1:20)];
Coefficient_b = [0 Coefficient_b_Female_1_48_Lithuania(1:20)];
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];
% Age: 71:91
Age = 71:91;
Coefficient_a = [Coefficient_a_Female_1_48_Lithuania(21:end) 0 0 0 0];
Coefficient_b = [Coefficient_b_Female_1_48_Lithuania(21:end) 0 0 0 0];
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

% For Male
% Age: 50:70
Age = 50:70;
Coefficient_a = [0 Coefficient_a_Male_1_48_Lithuania(1:20)];
Coefficient_b = [0 Coefficient_b_Male_1_48_Lithuania(1:20)];
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];
% Age: 71:91
Age = 71:91;
Coefficient_a = [Coefficient_a_Male_1_48_Lithuania(21:end) 0 0 0 0];
Coefficient_b = [Coefficient_b_Male_1_48_Lithuania(21:end) 0 0 0 0];
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

%% 51_Bulgaria
% For Female
% Age: 50:70
Age = 50:70;
Coefficient_a = [0 Coefficient_a_Female_1_51_Bulgaria(1:20)];
Coefficient_b = [0 Coefficient_b_Female_1_51_Bulgaria(1:20)];
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];
% Age: 71:91
Age = 71:91;
Coefficient_a = [Coefficient_a_Female_1_51_Bulgaria(21:end) 0 0 0 0 0 0];
Coefficient_b = [Coefficient_b_Female_1_51_Bulgaria(21:end) 0 0 0 0 0 0];
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

% For Male
% Age: 50:70
Age = 50:70;
Coefficient_a = [0 Coefficient_a_Male_1_51_Bulgaria(1:20)];
Coefficient_b = [0 Coefficient_b_Male_1_51_Bulgaria(1:20)];
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];
% Age: 71:91
Age = 71:91;
Coefficient_a = [Coefficient_a_Male_1_51_Bulgaria(21:end) 0 0 0 0 0 0];
Coefficient_b = [Coefficient_b_Male_1_51_Bulgaria(21:end) 0 0 0 0 0 0];
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

%% 53_Cyprus
% For Female
% Age: 50:70
Age = 50:70;
Coefficient_a = [0 0 0 0 0 0 Coefficient_a_Female_1_53_Cyprus(1:15)];
Coefficient_b = [0 0 0 0 0 0 Coefficient_b_Female_1_53_Cyprus(1:15)];
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];
% Age: 71:91
Age = 71:91;
Coefficient_a = [Coefficient_a_Female_1_53_Cyprus(16:end) 0 0 0 0 0 0 0];
Coefficient_b = [Coefficient_b_Female_1_53_Cyprus(16:end) 0 0 0 0 0 0 0];
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

% For Male
% Age: 50:70
Age = 50:70;
Coefficient_a = [0 0 0 0 0 0 Coefficient_a_Male_1_53_Cyprus(1:15)];
Coefficient_b = [0 0 0 0 0 0 Coefficient_b_Male_1_53_Cyprus(1:15)];
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];
% Age: 71:91
Age = 71:91;
Coefficient_a = [Coefficient_a_Male_1_53_Cyprus(16:end) 0 0 0 0 0 0 0];
Coefficient_b = [Coefficient_b_Male_1_53_Cyprus(16:end) 0 0 0 0 0 0 0];
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

%% 55_Finland
% For Female
% Age: 50:70
Age = 50:70;
Coefficient_a = [0 Coefficient_a_Female_1_55_Finland(1:20)];
Coefficient_b = [0 Coefficient_b_Female_1_55_Finland(1:20)];
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];
% Age: 71:91
Age = 71:91;
Coefficient_a = [Coefficient_a_Female_1_55_Finland(21:end) 0 0 0 0 0 0];
Coefficient_b = [Coefficient_b_Female_1_55_Finland(21:end) 0 0 0 0 0 0];
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

% For Male
% Age: 50:70
Age = 50:70;
Coefficient_a = [0 Coefficient_a_Male_1_55_Finland(1:20)];
Coefficient_b = [0 Coefficient_b_Male_1_55_Finland(1:20)];
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];
% Age: 71:91
Age = 71:91;
Coefficient_a = [Coefficient_a_Male_1_55_Finland(21:end) 0 0 0 0 0 0];
Coefficient_b = [Coefficient_b_Male_1_55_Finland(21:end) 0 0 0 0 0 0];
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

%% 57_Latvia
% For Female
% Age: 50:70
Age = 50:70;
Coefficient_a = [0 Coefficient_a_Female_1_57_Latvia(1:20)];
Coefficient_b = [0 Coefficient_b_Female_1_57_Latvia(1:20)];
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];
% Age: 71:91
Age = 71:91;
Coefficient_a = [Coefficient_a_Female_1_57_Latvia(21:end) 0 0 0 0 0];
Coefficient_b = [Coefficient_b_Female_1_57_Latvia(21:end) 0 0 0 0 0];
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

% For Male
% Age: 50:70
Age = 50:70;
Coefficient_a = [0 Coefficient_a_Male_1_57_Latvia(1:20)];
Coefficient_b = [0 Coefficient_b_Male_1_57_Latvia(1:20)];
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];
% Age: 71:91
Age = 71:91;
Coefficient_a = [Coefficient_a_Male_1_57_Latvia(21:end) 0 0 0 0 0];
Coefficient_b = [Coefficient_b_Male_1_57_Latvia(21:end) 0 0 0 0 0];
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

%% 59_Malta
% For Female
% Age: 50:70
Age = 50:70;
Coefficient_a = [0 0 0 0 0 0 Coefficient_a_Female_1_59_Malta(1:15)];
Coefficient_b = [0 0 0 0 0 0 Coefficient_b_Female_1_59_Malta(1:15)];
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];
% Age: 71:91
Age = 71:91;
Coefficient_a = [Coefficient_a_Female_1_59_Malta(16:end) 0 0 0 0 0 0 0 0 0 0 0 0];
Coefficient_b = [Coefficient_b_Female_1_59_Malta(16:end) 0 0 0 0 0 0 0 0 0 0 0 0];
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

% For Male
% Age: 50:70
Age = 50:70;
Coefficient_a = [0 0 0 0 0 0 Coefficient_a_Male_1_59_Malta(1:15)];
Coefficient_b = [0 0 0 0 0 0 Coefficient_b_Male_1_59_Malta(1:15)];
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];
% Age: 71:91
Age = 71:91;
Coefficient_a = [Coefficient_a_Male_1_59_Malta(16:end) 0 0 0 0 0 0 0 0 0 0 0 0];
Coefficient_b = [Coefficient_b_Male_1_59_Malta(16:end) 0 0 0 0 0 0 0 0 0 0 0 0];
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

%% 61_Romania
% For Female
% Age: 50:70
Age = 50:70;
Coefficient_a = [0 Coefficient_a_Female_1_61_Romania(1:20)];
Coefficient_b = [0 Coefficient_b_Female_1_61_Romania(1:20)];
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];
% Age: 71:91
Age = 71:91;
Coefficient_a = [Coefficient_a_Female_1_61_Romania(21:end) 0 0 0 0 0 0];
Coefficient_b = [Coefficient_b_Female_1_61_Romania(21:end) 0 0 0 0 0 0];
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

% For Male
% Age: 50:70
Age = 50:70;
Coefficient_a = [0 Coefficient_a_Male_1_61_Romania(1:20)];
Coefficient_b = [0 Coefficient_b_Male_1_61_Romania(1:20)];
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];
% Age: 71:91
Age = 71:91;
Coefficient_a = [Coefficient_a_Male_1_61_Romania(21:end) 0 0 0 0 0 0];
Coefficient_b = [Coefficient_b_Male_1_61_Romania(21:end) 0 0 0 0 0 0];
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

%% 63_Slovakia
% For Female
% Age: 50:70
Age = 50:70;
Coefficient_a = [0 Coefficient_a_Female_1_63_Slovakia(1:20)];
Coefficient_b = [0 Coefficient_b_Female_1_63_Slovakia(1:20)];
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];
% Age: 71:91
Age = 71:91;
Coefficient_a = [Coefficient_a_Female_1_63_Slovakia(21:end) 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
Coefficient_b = [Coefficient_b_Female_1_63_Slovakia(21:end) 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

% For Male
% Age: 50:70
Age = 50:70;
Coefficient_a = [0 Coefficient_a_Male_1_63_Slovakia(1:20)];
Coefficient_b = [0 Coefficient_b_Male_1_63_Slovakia(1:20)];
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];
% Age: 71:91
Age = 71:91;
Coefficient_a = [Coefficient_a_Male_1_63_Slovakia(21:end) 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
Coefficient_b = [Coefficient_b_Male_1_63_Slovakia(21:end) 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
Save_data = [Save_data;Age;Coefficient_a;Coefficient_b];

%% We save the data
Save_data = round(Save_data,6);
xlswrite('Table S5.xlsx',Save_data,'Sheet1','D2');
