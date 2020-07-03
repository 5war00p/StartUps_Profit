function [theta,j_history] = gradient(X,y,theta,alpha,num_iterations)
    j_history=ones(num_iterations,1);
    m=length(y);
    X=[ones(m,1),X];
    for i=1:num_iterations
        theta=theta-((alpha/m)*(((X*theta)-y)'*X))';
        j_history(i)=costfunction(X,y,theta);
    end 
end
