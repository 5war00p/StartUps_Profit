function X = featureNormalization(X)
    % FEATURENORMALIZATION Summary of this function goes here
    % Normalizes all features in X and return same X
    % Detailed explanation goes here
    
    for i = 1:size(X,2)
        mue = mean(X(:,i));
        sigma = std(X(:,i));        
        X(:,i) = (X(:,i) - mue) / sigma;
    end
end
