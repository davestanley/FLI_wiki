

function ax = plot_timeseries_pca(dat,opts)

%%
legfull = dat.legfull;
data=dat.data;
date=dat.date;




sz = size(data);

[coef, score, latent] = princomp(data);


for i = 1:sz(2)
    
end

%%
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