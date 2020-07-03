function [J,grad] =costFunction(X,y,theta,lambda);
    m=size(y);
    X=[ones(m,1) X];
    h=X*theta;
    J= (1/(2*m))*(sum((h-y).^2));
    grad=(1/m)*((h-y)'*X)';
end
