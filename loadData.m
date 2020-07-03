dat=importdata('profit.txt',',',1);
RDSpend = str2double(dat.textdata(2:end,1));
AdminSpend=str2double(dat.textdata(2:end,2));
MarketingSpend=str2double(dat.textdata(2:end,3));
SpendStateStrings = dat.textdata(2:end,4);

SpendState = zeros(size(SpendStateStrings));
SpendState(find(cellstr(SpendStateStrings) == "California")) = 1;
SpendState(find(cellstr(SpendStateStrings) == "Florida")) = 2;
SpendState(find(cellstr(SpendStateStrings) == "New York")) = 3;

Profit = dat.data();

X = [RDSpend AdminSpend MarketingSpend SpendState];
y = Profit;
