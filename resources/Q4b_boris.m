%Initialisation
rng('shuffle');
pop = population(readtable('data.csv'),24);
pop = pop(pop.Age >= 50, :);
pop_smoker = pop(pop.Smoker == 1, :);
pop_healthy = pop(pop.Smoker == 0, :);

avg_charges = mean(pop.Charges);
avg_charges_smoker = mean(pop_smoker.Charges);
avg_charges_healthy = mean(pop_healthy.Charges);

var_charges = var(pop.Charges);
var_charges_smoker = var(pop_smoker.Charges);
var_charges_healthy = var(pop_healthy.Charges);

X = avg_charges_smoker - avg_charges_healthy;
nb_tests_ok = 0;
n_tests = 100;

%Ecart type = std de TOUS les fumeurs
sigma = sqrt((var_charges_smoker + var_charges_healthy) / 50 );

deltas = zeros(1);
%On echantillonne une population de fumeurs et de non fumeurs. On compare
%les moyennes.
for i = 1:n_tests
   

    %h = healthy, s = smoker
    sample_h = iid_sample(pop_healthy.Charges, 50);
    sample_s = iid_sample(pop_smoker.Charges, 50);

    
    %Test d'hypothèse. NB : l'intervalle centré de proba 95% est à 1.96sigma
    delta_mu = mean(sample_s) - mean(sample_h);
    deltas(i) = abs(X - delta_mu);
    if abs(X - delta_mu) <= 1.96*sigma
        nb_tests_ok = nb_tests_ok + 1;
    end

    
end

disp(nb_tests_ok / n_tests);