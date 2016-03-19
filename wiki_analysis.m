


%% Full script


addpath(genpath('funcs_supporting'));

mypath = './data';
myfile = 'wiki_nuclear.xls';
myfile = 'wiki_ai.xls';
s = load_data(mypath,myfile);




%% Convert date & other variables; sort

ops.offset2 = datenum('01-01-1900','dd-mm-yyyy')-2;  % -2 is a random correction...
ops.maxleg = 30;

dat = convert_data(s,ops);

data=dat.data;
date=dat.date;
legfull=dat.legfull;
legarr=dat.legarr;



%% Analysis -- basic timeseries

opts.normalize_on = 0;
figure; plot_timeseries(dat,opts);


%% Analysis -- basic medians boxplot


opts2.do_basic = 0;
figure; plot_boxplot(dat,opts2);

%% Analysis -- print mean views/day


clc
print_means(dat);


%% Analysis -- basic means bargraph