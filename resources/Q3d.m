%% Cette fonction a pour but de calculer pour des echantillons le pourcentage de ceux-ci qui contienne dans leur intervalle de gauss ou de student la moyenne 
% des charges de la population 
% X is 500-BY-1 et represente le vecteur des Charges de la population
% prcstut et prcgauss represente le pourcentage d'echantillon qui contienne
% la moyenne dans leur intervalle de stutdent ou de gauss

function [prcstut,prcgauss] = Q3d(X)

meanG = mean(X)

Bmisample = zeros(100,20);
Lowstut = zeros(100,1);
Lowgauss = zeros(100,1);
upstut = zeros(100,1);
upgauss = zeros(100,1);
i =1;
while(i<=100)
    Bmisample(i,:) = iid_sample(X,20);
    [Lowstut(i,1),upstut(i,1)] = student_interval(Bmisample(i,:),0.95);
    [Lowgauss(i,1),upgauss(i,1)] = gauss_interval(Bmisample(i,:),6.1169,0.95);
    i = i+1;
end

cptstut = 0;
cptgauss =0;
i = 1;

while(i<=100)
    if( meanG<upstut(i,1) && meanG>Lowstut(i,1) )
        cptstut = cptstut+1;
    end
    if( meanG<upgauss(i,1) && meanG>Lowgauss(i,1) )
        cptgauss = cptgauss+1;
    end
    i = i+1;
end

prcstut = cptstut/100;
prcgauss = cptgauss/100;



end
