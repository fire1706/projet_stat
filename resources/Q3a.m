function [meanBMI,Biais,Variance] = Q3a(X)
%%Cette fonction sort 100 echantillon iid de 50 personnes de X et en
%%calcule mx pourchacun ainsi qu ele biais et la variance
% X is 500-by-1 and it is all the BMI value
% meanBMI is 100-by-1
% Biais is 1-by-1
% Variance is 1-by-1
meanG = mean(X)
Bmisample = zeros(100,50);
i =1;
while(i<=100)
    Bmisample(i,:) = iid_sample(X,50);
    meanBMI(i,1) = mean(Bmisample(i,:));
    i = i+1;
end

Biais =  mean(meanBMI - meanG);
Variance = var(meanBMI,1);
V = mean((meanBMI-meanG).^2) - (Biais)^2; % formule pour etre sur voir si on la garde ou si on garde l'autre



end


