function [theta,j_history] =gradient(X,y,theta,alpha,num_iter,lambda)
    
    m=length(y);
    j_history=ones(num_iter,1);
    for i=1:num_iter
        [cost,grad]=costFunction(X,y,theta,lambda);
        theta=theta-((alpha/m)*(grad));
        j_history(i)=cost;
        
    end
    
    
    
end
