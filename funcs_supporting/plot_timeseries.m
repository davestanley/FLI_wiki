

function ax = plot_timeseries(dat,opts)

legfull = dat.legfull;
data=dat.data;
date=dat.date;

normalize_on = opts.normalize_on;




if normalize_on;
    data = zscore(data); 
    plot(data);
else
    bar(data);
end

ax = gca;
% set(gca,'
% set(gca,'XTickLabel',date);
%ax.ticklabel

sz=size(data);
skip=14;
ind = 1:skip:sz(1);
ax.XTick = [ind];
ax.XTickLabel = date(ind,:);
ax.XTickLabelRotation=90;


legend(legfull{:});

ylabel('kViews/day');



end