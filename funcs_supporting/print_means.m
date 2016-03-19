

function ax = print_means(dat,opts)


legarr = dat.legarr;
legfull = dat.legfull;
data=dat.data;
date=dat.date;


sz = size(data);

m = mean(data) * 1e3; % convert back from kviews to views/day

for i = 1:sz(2)
    fprintf(['Mean views/day of ' legfull{i} ' is ' num2str(m(i)) '.\n']);
end


end