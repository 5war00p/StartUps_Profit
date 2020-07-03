function [X_norm,mu,sigma] = featureNormalization(X)
    % FEATURENORMALIZATION Summary of this function goes here
    % Normalizes all features in X and return same X
    % Detailed explanation goes here
    
 mu = mean(X);
 sigma = std(X);
 X_norm = rdivide(minus(X,mu),sigma);
 
end
