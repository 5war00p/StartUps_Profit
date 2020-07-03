dat=importdata('profit1.txt',',',1);
R_Dspend=str2double(dat.textdata(:,1));
Administration=str2double(dat.textdata(:,2));
Marketing=str2double(dat.textdata(:,3));
Spend=str2double(dat.textdata(:,4));
State=str2double(dat.textdata(:,5));
Profit=dat.data();
