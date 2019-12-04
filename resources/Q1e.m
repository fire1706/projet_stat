%% Script pour la question 1.e)
%populas = population(readtable('data.csv'),24);
initiation;

cdfplot(Charges) % plot pour les frequance cumulee ( mis directment dans matlab) 

propor = proportion(Charges,25000)
porpo2 = proportion(Charges,16885)

pro = propor-porpo2

