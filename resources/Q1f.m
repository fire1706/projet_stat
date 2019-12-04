%% Script pour la question 1 f)
% realisation des scatterplot
% on va d'abord cree les deux table homme femme
Pop = population(readtable('data.csv'), 24);

Homme = zeros(2,2);
Femme = zeros(2,2);

i = 1;
h = 1;
f = 1;
while(i<500)
    if(Pop.Sex(i) == 0)
        Homme(h,1) = Pop.Age(i);
        Homme(h,2) = Pop.Charges(i);
        h = h+1;
    elseif(Pop.Sex(i) == 1)
        Femme(f,1) = Pop.Age(i);
        Femme(f,2) = Pop.Charges(i);
        f = f+1;
    end
    i = i+1;
end

figure;
scatter(Homme(:,1),Homme(:,2))
title('Corr?lation ?ge/frais (hommes)');
xlabel('Age (ann?es)');
ylabel('Frais ($)');
figure;
scatter(Femme(:,1),Femme(:,2))
title('Corr?lation ?ge/frais (femmes)');
xlabel('Age (ann?es)');
ylabel('Frais ($)');


            