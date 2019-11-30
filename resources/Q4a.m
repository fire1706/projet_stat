function [cptHypo,multisample] = Q4ab(Charges,Smoker,Age)
%% Cette fonction a pour but d'effectuer le test d'hypothese sur les frais hospitalier des fumeur et des non-fumeur
% Charges vecteur des charges
% Smoker vecteur indiquant si le patient est fumeur ou pas
% Age vecteur indiquant l'age du patient 
alpha = 0.05 ;% en pourcent
multisample = zeros(100,50);
echantillon = [Charges,Smoker,Age];
i=1;
x = 1:1:500;
while(i<=100)
    sample = iid_sample(x,50);
    multisample(i,:) = sample;
    i = i+1;
end
%% calcule des frais hospitalier moyen des fumeur et non fumeur 
i=1;
cptHypo = 0;
while(i<=100)
    sumSmoker = 0;
    sumnonSmoker = 0;
    cptSmoker = 0;
    cptnonSmoker = 0;
    j =1;
    while(j<=50)
        if(echantillon(multisample(i,j),2) == 1)
            sumSmoker = sumSmoker + echantillon(multisample(i,j),1);
            cptSmoker = cptSmoker + 1;
        elseif(echantillon(multisample(i,j),2) == 0)
            sumnonSmoker = sumnonSmoker + echantillon(multisample(i,j),1);
            cptnonSmoker = cptnonSmoker + 1;
        end
        j = j+1;
    end
    moySmoker = sumSmoker/cptSmoker;
    moynonSmoker = sumnonSmoker/cptnonSmoker;
    if(moySmoker > moynonSmoker)
        cptHypo = cptHypo + 1;
    end
    i = i+1;
end

    



end