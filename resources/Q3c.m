function [meanBMI,medianBMI,meanBiais,medianBiais,meanVariance,medianVariance] = Q3c(X)
%%Cette fonction sort 100 echantillon iid de 100 personnes de X et en
%%calcule mx pourchacun ainsi qu ele biais et la variance
% X is 500-by-1 and it is all the BMI value
% ...BMI is 100-by-1
% ...Biais is 1-by-1
% ...Variance is 1-by-1

%%
%Q3
meanG = mean(X)
medianG = median(X)
Bmisample = zeros(100,100);
i =1;
while(i<=100)
    Bmisample(i,:) = iid_sample(X,100);
    meanBMI(i,1) = mean(Bmisample(i,:));
    medianBMI(i,1) = median(Bmisample(i,:));
    i = i+1;
end

%% partie A
meanBiais =  mean(meanBMI - meanG);
meanVariance = var(meanBMI,1);
V = mean((meanBMI-meanG).^2) - (meanBiais)^2; % formule pour etre sur voir si on la garde ou si on garde l'autre


%% parie B
medianBiais = mean(medianBMI - medianG);
medianVariance = var(medianBMI,1);

end
