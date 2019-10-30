function proportion = Q1c(x)
%% Fonction calculant la proportion de personne ayant des frais normaux
%% On d?fini d'abord l'interval
[a,b] = normal_interval(x);
%% On recherche maintenant la proportion
i = 1;
cpt = 0;
while(i <500)
    if(x(i,1)<b && x(i,1)>a)
        cpt =cpt+1;
    end
    i = i+1;
end
proportion = cpt/500;

end