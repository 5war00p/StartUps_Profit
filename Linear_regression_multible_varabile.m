dat=importdata('profit.txt',',',1);
RDSpend = str2double(dat.textdata(2:end,1));
AdminiSpend=str2double(dat.textdata(2:end,2));
MarketingSpend=str2double(dat.textdata(2:end,3));
SpendState = dat.textdata(2:end,4);
Profit = dat.data();
