%% Source codes for America_ALL
Save_data_Female = [];
Save_data_Male = [];
%% NHANES 1999-2000
Female_data = xlsread('NHANES 1999-2000.xlsx','Female');
Male_data = xlsread('NHANES 1999-2000.xlsx','Male');
Save_data_Female = [Save_data_Female;Female_data(:,3:5)];
Save_data_Male = [Save_data_Male;Male_data(:,3:5)];
%% NHANES 2001-2002
Female_data = xlsread('NHANES 2001-2002.xlsx','Female');
Male_data = xlsread('NHANES 2001-2002.xlsx','Male');
Save_data_Female = [Save_data_Female;Female_data(:,3:5)];
Save_data_Male = [Save_data_Male;Male_data(:,3:5)];
%% NHANES 2003-2004
Female_data = xlsread('NHANES 2003-2004.xlsx','Female');
Male_data = xlsread('NHANES 2003-2004.xlsx','Male');
Save_data_Female = [Save_data_Female;Female_data(:,3:5)];
Save_data_Male = [Save_data_Male;Male_data(:,3:5)];
%% NHANES 2005-2006
Female_data = xlsread('NHANES 2005-2006.xlsx','Female');
Male_data = xlsread('NHANES 2005-2006.xlsx','Male');
Save_data_Female = [Save_data_Female;Female_data(:,3:5)];
Save_data_Male = [Save_data_Male;Male_data(:,3:5)];
%% NHANES 2007-2008
Female_data = xlsread('NHANES 2007-2008.xlsx','Female');
Male_data = xlsread('NHANES 2007-2008.xlsx','Male');
Save_data_Female = [Save_data_Female;Female_data(:,3:5)];
Save_data_Male = [Save_data_Male;Male_data(:,3:5)];
%% NHANES 2009-2010
Female_data = xlsread('NHANES 2009-2010.xlsx','Female');
Male_data = xlsread('NHANES 2009-2010.xlsx','Male');
Save_data_Female = [Save_data_Female;Female_data(:,3:5)];
Save_data_Male = [Save_data_Male;Male_data(:,3:5)];
%% NHANES 2011-2012
Female_data = xlsread('NHANES 2011-2012.xlsx','Female');
Male_data = xlsread('NHANES 2011-2012.xlsx','Male');
Save_data_Female = [Save_data_Female;Female_data(:,3:5)];
Save_data_Male = [Save_data_Male;Male_data(:,3:5)];
%% NHANES 2013-2014
Female_data = xlsread('NHANES 2013-2014.xlsx','Female');
Male_data = xlsread('NHANES 2013-2014.xlsx','Male');
Save_data_Female = [Save_data_Female;Female_data(:,3:5)];
Save_data_Male = [Save_data_Male;Male_data(:,3:5)];
%% NHANES 2015-2016
Female_data = xlsread('NHANES 2015-2016.xlsx','Female');
Male_data = xlsread('NHANES 2015-2016.xlsx','Male');
Save_data_Female = [Save_data_Female;Female_data(:,3:5)];
Save_data_Male = [Save_data_Male;Male_data(:,3:5)];
%% NHANES 2017-2018
Female_data = xlsread('NHANES 2017-2018.xlsx','Female');
Male_data = xlsread('NHANES 2017-2018.xlsx','Male');
Save_data_Female = [Save_data_Female;Female_data(:,3:5)];
Save_data_Male = [Save_data_Male;Male_data(:,3:5)];
%% NHANES 2017-March 2020
Female_data = xlsread('NHANES 2017-March 2020.xlsx','Female');
Male_data = xlsread('NHANES 2017-March 2020.xlsx','Male');
Save_data_Female = [Save_data_Female;Female_data(:,3:5)];
Save_data_Male = [Save_data_Male;Male_data(:,3:5)];
%% NHANES August 2021-August 2023
Female_data = xlsread('NHANES August 2021-August 2023.xlsx','Female');
Male_data = xlsread('NHANES August 2021-August 2023.xlsx','Male');
Save_data_Female = [Save_data_Female;Female_data(:,3:5)];
Save_data_Male = [Save_data_Male;Male_data(:,3:5)];
%% 
Save_data = [Save_data_Female;Save_data_Male];
xlswrite('America_ALL.xlsx',Save_data_Female,'Female','C2');
xlswrite('America_ALL.xlsx',Save_data_Male,'Male','C2');
xlswrite('America_ALL.xlsx',Save_data,'ALL','C2');

