

function ax = plot_boxplot(dat,opts)



legarr = dat.legarr;
legfull = dat.legfull;
data=dat.data;
date=dat.date;


sz = size(data);
boxdata = data(:);
boxdatanames = repmat(legarr,sz(1),1);
boxdatanames = boxdatanames(:);

medians = median(data);
maxval = max(medians)*2;


boxplot(boxdata,boxdatanames,'DataLim',[-Inf,maxval],'ExtremeMode','compress');
set(gca,'XTickLabelRotation',90);
ylabel('kViews/day');


if opts.do_basic
    clf;
    bar(median(data));
    set(gca,'XTickLabel',legarr);
    set(gca,'XTickLabelRotation',90);
    ylabel('kViews/day');
end


end