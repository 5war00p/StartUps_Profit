[X,y]=loadData();
[X,mue,sigma]=featureNormalization(X);
theta=zeros(size(X,2)+1,1);
lambda=0;
[J,grad]=costFunction(X,y,theta,lambda);
options=optimset('MaxIter',50,'GradObj','on');
[theta,cost] =fminunc(@(t) costFunction(X,y,theta,lambda),theta,options);
