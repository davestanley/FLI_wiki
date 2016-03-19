

function s = load_data(mypath,myfile);

%     %% Load csv data
% 
% 
% 
% 
%     mypath = './data';
%     myfile = 'wiki_nuclear.csv';
% 
%     fullpath = fullfile(mypath,myfile);
% 
% 
%     out = csvread (fullpath);
% 
% 
% 
% 
%     sz = size(out);
%     N2 = floor(sz(1)/2);
%     out2 = zeros(N2,sz(2)*2);
% 
%     for i = 1:N2
%         out2(i,:) = [out(i*2-1,:) out(i*2,:)];
%     end
% 
% 
%     %% Load csv text
% 
%     mypath = './data';
%     myfile = 'wiki_nuclear_titles.csv';
% 
%     fullpath = fullfile(mypath,myfile);
% 
% 
%     fid = fopen(fullpath,'r');
%     A = fscanf(fid, '%s')
% 


    %% Load xls

    % run_setdefaultfig
    set(0, 'DefaultFigureColor', 'White', ...
        'DefaultTextFontSize', 10, ...
        'DefaultAxesFontSize', 10);


%     mypath = './data';
%     myfile = 'wiki_nuclear.xls';
    % myfile = 'wiki_ai.xls';

    fullpath = fullfile(mypath,myfile);



    [var,txt,raw] = xlsread(fullpath);
    
    s.var = var;
    s.txt = txt;
    s.raw = raw;

end