

function ax = plot_timeseries_pca(dat,opts)

%%

    legarr = dat.legarr;
    legfull = dat.legfull;
    data=dat.data;
    date=dat.date;

    colourarr = 'bgrymckbgrymckbgrymckbgrymckbgrymckbgrymckbgrymck';

    data = zscore(data);
    sz = size(data);
    N=sz(2);            % Number of principal components

    Ncols = ceil(sqrt(N));
    Nrows = ceil(N/Ncols);


    [coef, score, latent] = princomp(data);


    figure; 
    hsp = subplot_grid(Nrows,Ncols);

    for i = 1:N

        [ordered,I] = sort(coef(:,i),1,'descend');
        hsp.set_gca(i);
        plot(score(:,i),'k','LineWidth',N-i+1);


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

        reorder_data = data(:,I);
        hold on; plott_matrix3D(reorder_data,'active_dim',3,'do_shift',-1);
        legcurr = {'pca score', legarr{I}};
    %     if i == 1; 
            hsp.legend(repmat({'k'},1,length(legcurr)),legcurr);
    %     end

    end

end