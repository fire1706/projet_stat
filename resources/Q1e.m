%% Script pour la question 1.e)
populas = population(readtable('data.csv'),24);

cdfplot(populas.Charges) % plot pour les fr?quance cumul?e ( mis directment dans matlab

propor = proportion(populas.Charges,25000)