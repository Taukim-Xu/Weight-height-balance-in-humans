%% 将KSPF, Korea.xlsx中，年龄在48岁以后，女性身高小于1.3米，男性身高小于1.4米，因为它们太偏离大部分人群的平均值
Female_data = xlsread('KSPF, Korea.xlsx','Female-01'); % No.	Age	Height(cm)	Weight(Kg)
Male_data = xlsread('KSPF, Korea.xlsx','Male-01'); % No. Age	Height(cm)	Weight(Kg)

% Female
Temp_Female = [];
[M N] = size(Female_data);
for i = 1:M
    if Female_data(i,2) < 48
       Temp_Female = [Temp_Female;Female_data(i,:)];
    else if Female_data(i,3) >= 130 % 身高大于130cm
            Temp_Female = [Temp_Female;Female_data(i,:)];
    end
    end
end

% Male
Temp_Male = [];
[M N] = size(Male_data);
for i = 1:M
    if Male_data(i,2) < 48
       Temp_Male = [Temp_Male;Male_data(i,:)];
    else if Male_data(i,3) >= 140 % 身高大于140cm
            Temp_Male = [Temp_Male;Male_data(i,:)];
    end
    end
end

%%
xlswrite('KSPF, Korea.xlsx',Temp_Female,'Female','A2');
xlswrite('KSPF, Korea.xlsx',Temp_Male,'Male','A2');
