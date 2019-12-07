
%Initialisation
rng('shuffle');
pop = population(readtable('data.csv'),24);
pop_smoker = pop(pop.Smoker == 1, :);
pop_healthy = pop(pop.Smoker == 0, :);

avg_charges = mean(pop.Charges);
avg_charges_smoker = mean(pop_smoker.Charges)
avg_charges_healthy = mean(pop_healthy.Charges)

var_charges = var(pop.Charges);
var_charges_smoker = var(pop_smoker.Charges);
var_charges_healthy = var(pop_healthy.Charges);

X = avg_charges_smoker - avg_charges_healthy
nb_tests_ok = 0;
n_tests = 100;

 %Ecart type = std de TOUS les fumeurs
    sigma1 = sqrt(var_charges_smoker/50);
    sigma2 = sqrt(var_charges_healthy/50);
    sigma = (sigma1-sigma2)
    
    x1 = X-1.96*sigma1
    x2 = X+1.96*sigma1

%On echantillonne une population de fumeurs et de non fumeurs. On compare
%les moyennes.
for i = 1:n_tests
   

    %h = healthy, s = smoker
    sample_h = iid_sample(pop_healthy.Charges, 50);
    sample_s = iid_sample(pop_healthy.Charges, 50);

   

    %Test d'hypoth?se. NB : l'intervalle centr? de proba 95% est ? 1.96sigma
%     target_mu = mean(sample_h) + X;
%     mx = mean(sample_s);
%     
    m = mean(sample_s)-mean(sample_h);
    
%     if abs(mx - target_mu) <= 1.96*sigma
%         nb_tests_ok = nb_tests_ok + 1;
%     end

    if( m>x1 && m<x2)
        nb_tests_ok = nb_tests_ok +1;
    end
    

    
end

disp(nb_tests_ok / n_tests);