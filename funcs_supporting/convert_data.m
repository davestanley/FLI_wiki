

function dat = convert_data(s,opts)

var=s.var;
txt=s.txt;
raw=s.raw;

offset2 = opts.offset2;
maxleg = opts.maxleg;

mydatenum = var(:,1);
date = datestr(mydatenum+offset2,'yy-mmm-dd');

legfull = txt(2:end);



data = var(:,2:end);
data = data/1e3;


data(isnan(data)) = 0;


% Sort data
medians = median(data);
[s, I] = sort(medians);

data=data(:,I);
legfull = legfull(I);

% Truncate legend if too long
for i = 1:length(legfull); if length(legfull{i}) > maxleg; legarr{i} = strcat(legfull{i}(1:maxleg-3),'..'); else legarr{i} = legfull{i}; end; end



% clear var txt raw
dat.data = data;
dat.date = date;
dat.legfull = legfull;
dat.legarr = legarr;


end