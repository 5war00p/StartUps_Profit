function X = featureNormalization(X)
    % FEATURENORMALIZATION Summary of this function goes here
    % Normalizes all features in X and return same X
    % Detailed explanation goes here
    
 mu=mean(X);
 Std=std(X);
 X=rdivide(minus(X,mu),Std);
end
