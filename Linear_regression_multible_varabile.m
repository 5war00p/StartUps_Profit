[X,y]=loadData();
[X,mean,std]=Normalize(X);
[y,mean,std]=Normalize(y);
theta=zeros(size(X,2)+1,1);
num_iter=3000;
alpha=0.01;
lambda=0;
%[J,grad]=costFunction(X,y,theta,lambda,num_iter);
[theta,j_history] =gradient(X,y,theta,alpha,num_iter,lambda);
%options=optimset('MaxIter',50,'GradObj','on');
%[theta,cost] =fminunc(@(t) costFunction(X,y,theta,lambda),theta,options);
plot(1:num_iter,j_history);
m=length(y);
X1=[ones(m,1) X];
compare=[X1*theta-y];
disp(j_history(end-1:end,:));

