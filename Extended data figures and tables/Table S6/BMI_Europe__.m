%% Source codes for BMI_Europe__.mat
% 针对所有欧洲国家数据，计算BMI(Weight/Height^2)
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
%% Calculate the distribution of BMI
BMI_Female_Europe__ = [];
BMI_Male_Europe__ = [];
% Load and segment the data by age and gender
%% Europe
Female_data = [];
Male_data = [];
% 11_Austria
Female_data_temp = xlsread('./Raw_data/Data_Europe/11_Austria.xlsx','Female'); % No.	Age	Height(cm)	Weight(Kg)
Male_data_temp = xlsread('./Raw_data/Data_Europe/11_Austria.xlsx','Male'); % No. Age	Height(cm)	Weight(Kg)
Female_data = [Female_data;Female_data_temp];
Male_data = [Male_data;Male_data_temp];
% 12_Germany
Female_data_temp = xlsread('./Raw_data/Data_Europe/12_Germany.xlsx','Female'); % No.	Age	Height(cm)	Weight(Kg)
Male_data_temp = xlsread('./Raw_data/Data_Europe/12_Germany.xlsx','Male'); % No. Age	Height(cm)	Weight(Kg)
Female_data = [Female_data;Female_data_temp];
Male_data = [Male_data;Male_data_temp];
% 13_Sweden
Female_data_temp = xlsread('./Raw_data/Data_Europe/13_Sweden.xlsx','Female'); % No.	Age	Height(cm)	Weight(Kg)
Male_data_temp = xlsread('./Raw_data/Data_Europe/13_Sweden.xlsx','Male'); % No. Age	Height(cm)	Weight(Kg)
Female_data = [Female_data;Female_data_temp];
Male_data = [Male_data;Male_data_temp];
% 14_Netherlands
Female_data_temp = xlsread('./Raw_data/Data_Europe/14_Netherlands.xlsx','Female'); % No.	Age	Height(cm)	Weight(Kg)
Male_data_temp = xlsread('./Raw_data/Data_Europe/14_Netherlands.xlsx','Male'); % No. Age	Height(cm)	Weight(Kg)
Female_data = [Female_data;Female_data_temp];
Male_data = [Male_data;Male_data_temp];
% 15_Spain
Female_data_temp = xlsread('./Raw_data/Data_Europe/15_Spain.xlsx','Female'); % No.	Age	Height(cm)	Weight(Kg)
Male_data_temp = xlsread('./Raw_data/Data_Europe/15_Spain.xlsx','Male'); % No. Age	Height(cm)	Weight(Kg)
Female_data = [Female_data;Female_data_temp];
Male_data = [Male_data;Male_data_temp];
% 16_Italy
Female_data_temp = xlsread('./Raw_data/Data_Europe/16_Italy.xlsx','Female'); % No.	Age	Height(cm)	Weight(Kg)
Male_data_temp = xlsread('./Raw_data/Data_Europe/16_Italy.xlsx','Male'); % No. Age	Height(cm)	Weight(Kg)
Female_data = [Female_data;Female_data_temp];
Male_data = [Male_data;Male_data_temp];
% 17_France
Female_data_temp = xlsread('./Raw_data/Data_Europe/17_France.xlsx','Female'); % No.	Age	Height(cm)	Weight(Kg)
Male_data_temp = xlsread('./Raw_data/Data_Europe/17_France.xlsx','Male'); % No. Age	Height(cm)	Weight(Kg)
Female_data = [Female_data;Female_data_temp];
Male_data = [Male_data;Male_data_temp];
% 18_Denmark
Female_data_temp = xlsread('./Raw_data/Data_Europe/18_Denmark.xlsx','Female'); % No.	Age	Height(cm)	Weight(Kg)
Male_data_temp = xlsread('./Raw_data/Data_Europe/18_Denmark.xlsx','Male'); % No. Age	Height(cm)	Weight(Kg)
Female_data = [Female_data;Female_data_temp];
Male_data = [Male_data;Male_data_temp];
% 19_Greece
Female_data_temp = xlsread('./Raw_data/Data_Europe/19_Greece.xlsx','Female'); % No.	Age	Height(cm)	Weight(Kg)
Male_data_temp = xlsread('./Raw_data/Data_Europe/19_Greece.xlsx','Male'); % No. Age	Height(cm)	Weight(Kg)
Female_data = [Female_data;Female_data_temp];
Male_data = [Male_data;Male_data_temp];
% 20_Switzerland
Female_data_temp = xlsread('./Raw_data/Data_Europe/20_Switzerland.xlsx','Female'); % No.	Age	Height(cm)	Weight(Kg)
Male_data_temp = xlsread('./Raw_data/Data_Europe/20_Switzerland.xlsx','Male'); % No. Age	Height(cm)	Weight(Kg)
Female_data = [Female_data;Female_data_temp];
Male_data = [Male_data;Male_data_temp];
% 23_Belgium
Female_data_temp = xlsread('./Raw_data/Data_Europe/23_Belgium.xlsx','Female'); % No.	Age	Height(cm)	Weight(Kg)
Male_data_temp = xlsread('./Raw_data/Data_Europe/23_Belgium.xlsx','Male'); % No. Age	Height(cm)	Weight(Kg)
Female_data = [Female_data;Female_data_temp];
Male_data = [Male_data;Male_data_temp];

% 28_Czech
Female_data_temp = xlsread('./Raw_data/Data_Europe/28_Czech.xlsx','Female'); % No.	Age	Height(cm)	Weight(Kg)
Male_data_temp = xlsread('./Raw_data/Data_Europe/28_Czech.xlsx','Male'); % No. Age	Height(cm)	Weight(Kg)
Female_data = [Female_data;Female_data_temp];
Male_data = [Male_data;Male_data_temp];
% 29_Poland
Female_data_temp = xlsread('./Raw_data/Data_Europe/29_Poland.xlsx','Female'); % No.	Age	Height(cm)	Weight(Kg)
Male_data_temp = xlsread('./Raw_data/Data_Europe/29_Poland.xlsx','Male'); % No. Age	Height(cm)	Weight(Kg)
Female_data = [Female_data;Female_data_temp];
Male_data = [Male_data;Male_data_temp];
% 31_Luxembourg
Female_data_temp = xlsread('./Raw_data/Data_Europe/31_Luxembourg.xlsx','Female'); % No.	Age	Height(cm)	Weight(Kg)
Male_data_temp = xlsread('./Raw_data/Data_Europe/31_Luxembourg.xlsx','Male'); % No. Age	Height(cm)	Weight(Kg)
Female_data = [Female_data;Female_data_temp];
Male_data = [Male_data;Male_data_temp];
% 32_Hungary
Female_data_temp = xlsread('./Raw_data/Data_Europe/32_Hungary.xlsx','Female'); % No.	Age	Height(cm)	Weight(Kg)
Male_data_temp = xlsread('./Raw_data/Data_Europe/32_Hungary.xlsx','Male'); % No. Age	Height(cm)	Weight(Kg)
Female_data = [Female_data;Female_data_temp];
Male_data = [Male_data;Male_data_temp];
% 33_Portugal
Female_data_temp = xlsread('./Raw_data/Data_Europe/33_Portugal.xlsx','Female'); % No.	Age	Height(cm)	Weight(Kg)
Male_data_temp = xlsread('./Raw_data/Data_Europe/33_Portugal.xlsx','Male'); % No. Age	Height(cm)	Weight(Kg)
Female_data = [Female_data;Female_data_temp];
Male_data = [Male_data;Male_data_temp];
% 34_Slovenia
Female_data_temp = xlsread('./Raw_data/Data_Europe/34_Slovenia.xlsx','Female'); % No.	Age	Height(cm)	Weight(Kg)
Male_data_temp = xlsread('./Raw_data/Data_Europe/34_Slovenia.xlsx','Male'); % No. Age	Height(cm)	Weight(Kg)
Female_data = [Female_data;Female_data_temp];
Male_data = [Male_data;Male_data_temp];
% 35_Estonia
Female_data_temp = xlsread('./Raw_data/Data_Europe/35_Estonia.xlsx','Female'); % No.	Age	Height(cm)	Weight(Kg)
Male_data_temp = xlsread('./Raw_data/Data_Europe/35_Estonia.xlsx','Male'); % No. Age	Height(cm)	Weight(Kg)
Female_data = [Female_data;Female_data_temp];
Male_data = [Male_data;Male_data_temp];
% 47_Croatia
Female_data_temp = xlsread('./Raw_data/Data_Europe/47_Croatia.xlsx','Female'); % No.	Age	Height(cm)	Weight(Kg)
Male_data_temp = xlsread('./Raw_data/Data_Europe/47_Croatia.xlsx','Male'); % No. Age	Height(cm)	Weight(Kg)
Female_data = [Female_data;Female_data_temp];
Male_data = [Male_data;Male_data_temp];
% 48_Lithuania
Female_data_temp = xlsread('./Raw_data/Data_Europe/48_Lithuania.xlsx','Female'); % No.	Age	Height(cm)	Weight(Kg)
Male_data_temp = xlsread('./Raw_data/Data_Europe/48_Lithuania.xlsx','Male'); % No. Age	Height(cm)	Weight(Kg)
Female_data = [Female_data;Female_data_temp];
Male_data = [Male_data;Male_data_temp];
% 51_Bulgaria
Female_data_temp = xlsread('./Raw_data/Data_Europe/51_Bulgaria.xlsx','Female'); % No.	Age	Height(cm)	Weight(Kg)
Male_data_temp = xlsread('./Raw_data/Data_Europe/51_Bulgaria.xlsx','Male'); % No. Age	Height(cm)	Weight(Kg)
Female_data = [Female_data;Female_data_temp];
Male_data = [Male_data;Male_data_temp];
% 53_Cyprus
Female_data_temp = xlsread('./Raw_data/Data_Europe/53_Cyprus.xlsx','Female'); % No.	Age	Height(cm)	Weight(Kg)
Male_data_temp = xlsread('./Raw_data/Data_Europe/53_Cyprus.xlsx','Male'); % No. Age	Height(cm)	Weight(Kg)
Female_data = [Female_data;Female_data_temp];
Male_data = [Male_data;Male_data_temp];
% 55_Finland
Female_data_temp = xlsread('./Raw_data/Data_Europe/55_Finland.xlsx','Female'); % No.	Age	Height(cm)	Weight(Kg)
Male_data_temp = xlsread('./Raw_data/Data_Europe/55_Finland.xlsx','Male'); % No. Age	Height(cm)	Weight(Kg)
Female_data = [Female_data;Female_data_temp];
Male_data = [Male_data;Male_data_temp];
% 57_Latvia
Female_data_temp = xlsread('./Raw_data/Data_Europe/57_Latvia.xlsx','Female'); % No.	Age	Height(cm)	Weight(Kg)
Male_data_temp = xlsread('./Raw_data/Data_Europe/57_Latvia.xlsx','Male'); % No. Age	Height(cm)	Weight(Kg)
Female_data = [Female_data;Female_data_temp];
Male_data = [Male_data;Male_data_temp];
% 59_Malta
Female_data_temp = xlsread('./Raw_data/Data_Europe/59_Malta.xlsx','Female'); % No.	Age	Height(cm)	Weight(Kg)
Male_data_temp = xlsread('./Raw_data/Data_Europe/59_Malta.xlsx','Male'); % No. Age	Height(cm)	Weight(Kg)
Female_data = [Female_data;Female_data_temp];
Male_data = [Male_data;Male_data_temp];
% 61_Romania
Female_data_temp = xlsread('./Raw_data/Data_Europe/61_Romania.xlsx','Female'); % No.	Age	Height(cm)	Weight(Kg)
Male_data_temp = xlsread('./Raw_data/Data_Europe/61_Romania.xlsx','Male'); % No. Age	Height(cm)	Weight(Kg)
Female_data = [Female_data;Female_data_temp];
Male_data = [Male_data;Male_data_temp];
% 63_Slovakia
Female_data_temp = xlsread('./Raw_data/Data_Europe/63_Slovakia.xlsx','Female'); % No.	Age	Height(cm)	Weight(Kg)
Male_data_temp = xlsread('./Raw_data/Data_Europe/63_Slovakia.xlsx','Male'); % No. Age	Height(cm)	Weight(Kg)
Female_data = [Female_data;Female_data_temp];
Male_data = [Male_data;Male_data_temp];

%
Female_data_50 = [];
Female_data_51 = [];
Female_data_52 = [];
Female_data_53 = [];
Female_data_54 = [];
Female_data_55 = [];
Female_data_56 = [];
Female_data_57 = [];
Female_data_58 = [];
Female_data_59 = [];
Female_data_60 = [];
Female_data_61 = [];
Female_data_62 = [];
Female_data_63 = [];
Female_data_64 = [];
Female_data_65 = [];
Female_data_66 = [];
Female_data_67 = [];
Female_data_68 = [];
Female_data_69 = [];
Female_data_70 = [];
Female_data_71 = [];
Female_data_72 = [];
Female_data_73 = [];
Female_data_74 = [];
Female_data_75 = [];
Female_data_76 = [];
Female_data_77 = [];
Female_data_78 = [];
Female_data_79 = [];
Female_data_80 = [];
Female_data_81 = [];
Female_data_82 = [];
Female_data_83 = [];
Female_data_84 = [];
Female_data_85 = [];
Female_data_86 = [];
Female_data_87 = [];
Female_data_88 = [];
Female_data_89 = [];
Female_data_90 = [];

Male_data_50 = [];
Male_data_51 = [];
Male_data_52 = [];
Male_data_53 = [];
Male_data_54 = [];
Male_data_55 = [];
Male_data_56 = [];
Male_data_57 = [];
Male_data_58 = [];
Male_data_59 = [];
Male_data_60 = [];
Male_data_61 = [];
Male_data_62 = [];
Male_data_63 = [];
Male_data_64 = [];
Male_data_65 = [];
Male_data_66 = [];
Male_data_67 = [];
Male_data_68 = [];
Male_data_69 = [];
Male_data_70 = [];
Male_data_71 = [];
Male_data_72 = [];
Male_data_73 = [];
Male_data_74 = [];
Male_data_75 = [];
Male_data_76 = [];
Male_data_77 = [];
Male_data_78 = [];
Male_data_79 = [];
Male_data_80 = [];
Male_data_81 = [];
Male_data_82 = [];
Male_data_83 = [];
Male_data_84 = [];
Male_data_85 = [];
Male_data_86 = [];
Male_data_87 = [];
Male_data_88 = [];
Male_data_89 = [];
Male_data_90 = [];

% For Female
[M N] = size(Female_data); % Height (cm) Weight (Kg)
for i = 1:M
    if Female_data(i,2) == 50
        Female_data_50 = [Female_data_50;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 51
        Female_data_51 = [Female_data_51;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 52
        Female_data_52 = [Female_data_52;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 53
        Female_data_53 = [Female_data_53;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 54
        Female_data_54 = [Female_data_54;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 55
        Female_data_55 = [Female_data_55;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 56
        Female_data_56 = [Female_data_56;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 57
        Female_data_57 = [Female_data_57;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 58
        Female_data_58 = [Female_data_58;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 59
        Female_data_59 = [Female_data_59;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 60
        Female_data_60 = [Female_data_60;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 61
        Female_data_61 = [Female_data_61;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 62
        Female_data_62 = [Female_data_62;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 63
        Female_data_63 = [Female_data_63;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 64
        Female_data_64 = [Female_data_64;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 65
        Female_data_65 = [Female_data_65;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 66
        Female_data_66 = [Female_data_66;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 67
        Female_data_67 = [Female_data_67;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 68
        Female_data_68 = [Female_data_68;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 69
        Female_data_69 = [Female_data_69;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 70
        Female_data_70 = [Female_data_70;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 71
        Female_data_71 = [Female_data_71;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 72
        Female_data_72 = [Female_data_72;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 73
        Female_data_73 = [Female_data_73;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 74
        Female_data_74 = [Female_data_74;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 75
        Female_data_75 = [Female_data_75;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 76
        Female_data_76 = [Female_data_76;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 77
        Female_data_77 = [Female_data_77;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 78
        Female_data_78 = [Female_data_78;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 79
        Female_data_79 = [Female_data_79;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 80
        Female_data_80 = [Female_data_80;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 81
        Female_data_81 = [Female_data_81;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 82
        Female_data_82 = [Female_data_82;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 83
        Female_data_83 = [Female_data_83;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 84
        Female_data_84 = [Female_data_84;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 85
        Female_data_85 = [Female_data_85;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 86
        Female_data_86 = [Female_data_86;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 87
        Female_data_87 = [Female_data_87;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 88
        Female_data_88 = [Female_data_88;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 89
        Female_data_89 = [Female_data_89;Female_data(i,3) Female_data(i,4)];
    end
    if Female_data(i,2) == 90
        Female_data_90 = [Female_data_90;Female_data(i,3) Female_data(i,4)];
    end
end
% For Male
[M N] = size(Male_data); % Height (cm) Weight (Kg)
for i = 1:M
    if Male_data(i,2) == 50
        Male_data_50 = [Male_data_50;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 51
        Male_data_51 = [Male_data_51;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 52
        Male_data_52 = [Male_data_52;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 53
        Male_data_53 = [Male_data_53;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 54
        Male_data_54 = [Male_data_54;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 55
        Male_data_55 = [Male_data_55;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 56
        Male_data_56 = [Male_data_56;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 57
        Male_data_57 = [Male_data_57;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 58
        Male_data_58 = [Male_data_58;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 59
        Male_data_59 = [Male_data_59;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 60
        Male_data_60 = [Male_data_60;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 61
        Male_data_61 = [Male_data_61;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 62
        Male_data_62 = [Male_data_62;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 63
        Male_data_63 = [Male_data_63;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 64
        Male_data_64 = [Male_data_64;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 65
        Male_data_65 = [Male_data_65;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 66
        Male_data_66 = [Male_data_66;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 67
        Male_data_67 = [Male_data_67;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 68
        Male_data_68 = [Male_data_68;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 69
        Male_data_69 = [Male_data_69;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 70
        Male_data_70 = [Male_data_70;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 71
        Male_data_71 = [Male_data_71;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 72
        Male_data_72 = [Male_data_72;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 73
        Male_data_73 = [Male_data_73;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 74
        Male_data_74 = [Male_data_74;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 75
        Male_data_75 = [Male_data_75;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 76
        Male_data_76 = [Male_data_76;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 77
        Male_data_77 = [Male_data_77;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 78
        Male_data_78 = [Male_data_78;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 79
        Male_data_79 = [Male_data_79;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 80
        Male_data_80 = [Male_data_80;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 81
        Male_data_81 = [Male_data_81;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 82
        Male_data_82 = [Male_data_82;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 83
        Male_data_83 = [Male_data_83;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 84
        Male_data_84 = [Male_data_84;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 85
        Male_data_85 = [Male_data_85;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 86
        Male_data_86 = [Male_data_86;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 87
        Male_data_87 = [Male_data_87;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 88
        Male_data_88 = [Male_data_88;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 89
        Male_data_89 = [Male_data_89;Male_data(i,3) Male_data(i,4)];
    end
    if Male_data(i,2) == 90
        Male_data_90 = [Male_data_90;Male_data(i,3) Male_data(i,4)];
    end
end
% we Calculate the BMI distribution
% For Female
Age = 50;
X_Temp = Female_data_50(:,1)/100; % Height (m)
Y_Temp = Female_data_50(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_Europe__ = [BMI_Female_Europe__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 51;
X_Temp = Female_data_51(:,1)/100; % Height (m)
Y_Temp = Female_data_51(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_Europe__ = [BMI_Female_Europe__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 52;
X_Temp = Female_data_52(:,1)/100; % Height (m)
Y_Temp = Female_data_52(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_Europe__ = [BMI_Female_Europe__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 53;
X_Temp = Female_data_53(:,1)/100; % Height (m)
Y_Temp = Female_data_53(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_Europe__ = [BMI_Female_Europe__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 54;
X_Temp = Female_data_54(:,1)/100; % Height (m)
Y_Temp = Female_data_54(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_Europe__ = [BMI_Female_Europe__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 55;
X_Temp = Female_data_55(:,1)/100; % Height (m)
Y_Temp = Female_data_55(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_Europe__ = [BMI_Female_Europe__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 56;
X_Temp = Female_data_56(:,1)/100; % Height (m)
Y_Temp = Female_data_56(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_Europe__ = [BMI_Female_Europe__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 57;
X_Temp = Female_data_57(:,1)/100; % Height (m)
Y_Temp = Female_data_57(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_Europe__ = [BMI_Female_Europe__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 58;
X_Temp = Female_data_58(:,1)/100; % Height (m)
Y_Temp = Female_data_58(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_Europe__ = [BMI_Female_Europe__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 59;
X_Temp = Female_data_59(:,1)/100; % Height (m)
Y_Temp = Female_data_59(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_Europe__ = [BMI_Female_Europe__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 60;
X_Temp = Female_data_60(:,1)/100; % Height (m)
Y_Temp = Female_data_60(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_Europe__ = [BMI_Female_Europe__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 61;
X_Temp = Female_data_61(:,1)/100; % Height (m)
Y_Temp = Female_data_61(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_Europe__ = [BMI_Female_Europe__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 62;
X_Temp = Female_data_62(:,1)/100; % Height (m)
Y_Temp = Female_data_62(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_Europe__ = [BMI_Female_Europe__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 63;
X_Temp = Female_data_63(:,1)/100; % Height (m)
Y_Temp = Female_data_63(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_Europe__ = [BMI_Female_Europe__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 64;
X_Temp = Female_data_64(:,1)/100; % Height (m)
Y_Temp = Female_data_64(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_Europe__ = [BMI_Female_Europe__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 65;
X_Temp = Female_data_65(:,1)/100; % Height (m)
Y_Temp = Female_data_65(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_Europe__ = [BMI_Female_Europe__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 66;
X_Temp = Female_data_66(:,1)/100; % Height (m)
Y_Temp = Female_data_66(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_Europe__ = [BMI_Female_Europe__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 67;
X_Temp = Female_data_67(:,1)/100; % Height (m)
Y_Temp = Female_data_67(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_Europe__ = [BMI_Female_Europe__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 68;
X_Temp = Female_data_68(:,1)/100; % Height (m)
Y_Temp = Female_data_68(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_Europe__ = [BMI_Female_Europe__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 69;
X_Temp = Female_data_69(:,1)/100; % Height (m)
Y_Temp = Female_data_69(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_Europe__ = [BMI_Female_Europe__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 70;
X_Temp = Female_data_70(:,1)/100; % Height (m)
Y_Temp = Female_data_70(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_Europe__ = [BMI_Female_Europe__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 71;
X_Temp = Female_data_71(:,1)/100; % Height (m)
Y_Temp = Female_data_71(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_Europe__ = [BMI_Female_Europe__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 72;
X_Temp = Female_data_72(:,1)/100; % Height (m)
Y_Temp = Female_data_72(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_Europe__ = [BMI_Female_Europe__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 73;
X_Temp = Female_data_73(:,1)/100; % Height (m)
Y_Temp = Female_data_73(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_Europe__ = [BMI_Female_Europe__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 74;
X_Temp = Female_data_74(:,1)/100; % Height (m)
Y_Temp = Female_data_74(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_Europe__ = [BMI_Female_Europe__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 75;
X_Temp = Female_data_75(:,1)/100; % Height (m)
Y_Temp = Female_data_75(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_Europe__ = [BMI_Female_Europe__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 76;
X_Temp = Female_data_76(:,1)/100; % Height (m)
Y_Temp = Female_data_76(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_Europe__ = [BMI_Female_Europe__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 77;
X_Temp = Female_data_77(:,1)/100; % Height (m)
Y_Temp = Female_data_77(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_Europe__ = [BMI_Female_Europe__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 78;
X_Temp = Female_data_78(:,1)/100; % Height (m)
Y_Temp = Female_data_78(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_Europe__ = [BMI_Female_Europe__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 79;
X_Temp = Female_data_79(:,1)/100; % Height (m)
Y_Temp = Female_data_79(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_Europe__ = [BMI_Female_Europe__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 80;
X_Temp = Female_data_80(:,1)/100; % Height (m)
Y_Temp = Female_data_80(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_Europe__ = [BMI_Female_Europe__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 81;
X_Temp = Female_data_81(:,1)/100; % Height (m)
Y_Temp = Female_data_81(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_Europe__ = [BMI_Female_Europe__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 82;
X_Temp = Female_data_82(:,1)/100; % Height (m)
Y_Temp = Female_data_82(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_Europe__ = [BMI_Female_Europe__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 83;
X_Temp = Female_data_83(:,1)/100; % Height (m)
Y_Temp = Female_data_83(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_Europe__ = [BMI_Female_Europe__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 84;
X_Temp = Female_data_84(:,1)/100; % Height (m)
Y_Temp = Female_data_84(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_Europe__ = [BMI_Female_Europe__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 85;
X_Temp = Female_data_85(:,1)/100; % Height (m)
Y_Temp = Female_data_85(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_Europe__ = [BMI_Female_Europe__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 86;
X_Temp = Female_data_86(:,1)/100; % Height (m)
Y_Temp = Female_data_86(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_Europe__ = [BMI_Female_Europe__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 87;
X_Temp = Female_data_87(:,1)/100; % Height (m)
Y_Temp = Female_data_87(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_Europe__ = [BMI_Female_Europe__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 88;
X_Temp = Female_data_88(:,1)/100; % Height (m)
Y_Temp = Female_data_88(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_Europe__ = [BMI_Female_Europe__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 89;
X_Temp = Female_data_89(:,1)/100; % Height (m)
Y_Temp = Female_data_89(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_Europe__ = [BMI_Female_Europe__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 90;
X_Temp = Female_data_90(:,1)/100; % Height (m)
Y_Temp = Female_data_90(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Female_Europe__ = [BMI_Female_Europe__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end

% For Male
Age = 50;
X_Temp = Male_data_50(:,1)/100; % Height (m)
Y_Temp = Male_data_50(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_Europe__ = [BMI_Male_Europe__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 51;
X_Temp = Male_data_51(:,1)/100; % Height (m)
Y_Temp = Male_data_51(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_Europe__ = [BMI_Male_Europe__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 52;
X_Temp = Male_data_52(:,1)/100; % Height (m)
Y_Temp = Male_data_52(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_Europe__ = [BMI_Male_Europe__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 53;
X_Temp = Male_data_53(:,1)/100; % Height (m)
Y_Temp = Male_data_53(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_Europe__ = [BMI_Male_Europe__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 54;
X_Temp = Male_data_54(:,1)/100; % Height (m)
Y_Temp = Male_data_54(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_Europe__ = [BMI_Male_Europe__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 55;
X_Temp = Male_data_55(:,1)/100; % Height (m)
Y_Temp = Male_data_55(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_Europe__ = [BMI_Male_Europe__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 56;
X_Temp = Male_data_56(:,1)/100; % Height (m)
Y_Temp = Male_data_56(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_Europe__ = [BMI_Male_Europe__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 57;
X_Temp = Male_data_57(:,1)/100; % Height (m)
Y_Temp = Male_data_57(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_Europe__ = [BMI_Male_Europe__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 58;
X_Temp = Male_data_58(:,1)/100; % Height (m)
Y_Temp = Male_data_58(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_Europe__ = [BMI_Male_Europe__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 59;
X_Temp = Male_data_59(:,1)/100; % Height (m)
Y_Temp = Male_data_59(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_Europe__ = [BMI_Male_Europe__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 60;
X_Temp = Male_data_60(:,1)/100; % Height (m)
Y_Temp = Male_data_60(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_Europe__ = [BMI_Male_Europe__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 61;
X_Temp = Male_data_61(:,1)/100; % Height (m)
Y_Temp = Male_data_61(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_Europe__ = [BMI_Male_Europe__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 62;
X_Temp = Male_data_62(:,1)/100; % Height (m)
Y_Temp = Male_data_62(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_Europe__ = [BMI_Male_Europe__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 63;
X_Temp = Male_data_63(:,1)/100; % Height (m)
Y_Temp = Male_data_63(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_Europe__ = [BMI_Male_Europe__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 64;
X_Temp = Male_data_64(:,1)/100; % Height (m)
Y_Temp = Male_data_64(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_Europe__ = [BMI_Male_Europe__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 65;
X_Temp = Male_data_65(:,1)/100; % Height (m)
Y_Temp = Male_data_65(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_Europe__ = [BMI_Male_Europe__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 66;
X_Temp = Male_data_66(:,1)/100; % Height (m)
Y_Temp = Male_data_66(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_Europe__ = [BMI_Male_Europe__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 67;
X_Temp = Male_data_67(:,1)/100; % Height (m)
Y_Temp = Male_data_67(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_Europe__ = [BMI_Male_Europe__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 68;
X_Temp = Male_data_68(:,1)/100; % Height (m)
Y_Temp = Male_data_68(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_Europe__ = [BMI_Male_Europe__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 69;
X_Temp = Male_data_69(:,1)/100; % Height (m)
Y_Temp = Male_data_69(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_Europe__ = [BMI_Male_Europe__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 70;
X_Temp = Male_data_70(:,1)/100; % Height (m)
Y_Temp = Male_data_70(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_Europe__ = [BMI_Male_Europe__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 71;
X_Temp = Male_data_71(:,1)/100; % Height (m)
Y_Temp = Male_data_71(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_Europe__ = [BMI_Male_Europe__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 72;
X_Temp = Male_data_72(:,1)/100; % Height (m)
Y_Temp = Male_data_72(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_Europe__ = [BMI_Male_Europe__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 73;
X_Temp = Male_data_73(:,1)/100; % Height (m)
Y_Temp = Male_data_73(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_Europe__ = [BMI_Male_Europe__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 74;
X_Temp = Male_data_74(:,1)/100; % Height (m)
Y_Temp = Male_data_74(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_Europe__ = [BMI_Male_Europe__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 75;
X_Temp = Male_data_75(:,1)/100; % Height (m)
Y_Temp = Male_data_75(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_Europe__ = [BMI_Male_Europe__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 76;
X_Temp = Male_data_76(:,1)/100; % Height (m)
Y_Temp = Male_data_76(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_Europe__ = [BMI_Male_Europe__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 77;
X_Temp = Male_data_77(:,1)/100; % Height (m)
Y_Temp = Male_data_77(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_Europe__ = [BMI_Male_Europe__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 78;
X_Temp = Male_data_78(:,1)/100; % Height (m)
Y_Temp = Male_data_78(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_Europe__ = [BMI_Male_Europe__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 79;
X_Temp = Male_data_79(:,1)/100; % Height (m)
Y_Temp = Male_data_79(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_Europe__ = [BMI_Male_Europe__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 80;
X_Temp = Male_data_80(:,1)/100; % Height (m)
Y_Temp = Male_data_80(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_Europe__ = [BMI_Male_Europe__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 81;
X_Temp = Male_data_81(:,1)/100; % Height (m)
Y_Temp = Male_data_81(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_Europe__ = [BMI_Male_Europe__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 82;
X_Temp = Male_data_82(:,1)/100; % Height (m)
Y_Temp = Male_data_82(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_Europe__ = [BMI_Male_Europe__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 83;
X_Temp = Male_data_83(:,1)/100; % Height (m)
Y_Temp = Male_data_83(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_Europe__ = [BMI_Male_Europe__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 84;
X_Temp = Male_data_84(:,1)/100; % Height (m)
Y_Temp = Male_data_84(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_Europe__ = [BMI_Male_Europe__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 85;
X_Temp = Male_data_85(:,1)/100; % Height (m)
Y_Temp = Male_data_85(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_Europe__ = [BMI_Male_Europe__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 86;
X_Temp = Male_data_86(:,1)/100; % Height (m)
Y_Temp = Male_data_86(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_Europe__ = [BMI_Male_Europe__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 87;
X_Temp = Male_data_87(:,1)/100; % Height (m)
Y_Temp = Male_data_87(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_Europe__ = [BMI_Male_Europe__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 88;
X_Temp = Male_data_88(:,1)/100; % Height (m)
Y_Temp = Male_data_88(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_Europe__ = [BMI_Male_Europe__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 89;
X_Temp = Male_data_89(:,1)/100; % Height (m)
Y_Temp = Male_data_89(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_Europe__ = [BMI_Male_Europe__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end
Age = 90;
X_Temp = Male_data_90(:,1)/100; % Height (m)
Y_Temp = Male_data_90(:,2); % Weight (Kg)
[M N] = size(X_Temp);
for i = 1:M
    BMI_Male_Europe__ = [BMI_Male_Europe__ Y_Temp(i)/X_Temp(i)^2]; % Weight/Height^2
end

%% We show the results
nbins = 120;
figure;
HH_Female = histogram(BMI_Female_Europe__,nbins);
figure;
nbins = 170;
HH_Male = histogram(BMI_Male_Europe__,nbins);
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
My_P = prctile(BMI_Female_Europe__,My_Percentile);
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
My_P = prctile(BMI_Male_Europe__,My_Percentile);
Text = ['95th=' num2str(My_P(7)) newline() ...
    '90th=' num2str(My_P(6)) newline() ...
    '75th=' num2str(My_P(5)) newline() ...
    '50th=' num2str(My_P(4)) newline() ...
    '25th=' num2str(My_P(3)) newline() ...
    '10th=' num2str(My_P(2)) newline() ...
    '5th=' num2str(My_P(1)) newline()];
Text = text(45,0.8*max(yy),Text,'FontSize',12,'FontName',My_FontName,'HorizontalAlignment','right');

%
toc;

%% We save the data
save BMI_Europe__.mat BMI_Female_Europe__ BMI_Male_Europe__
