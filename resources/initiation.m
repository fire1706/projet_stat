%% ce fichier ne sert qu'a initie toute les variables utiles lors de l'appelle des autres fonction
populas = population(readtable('data.csv'),24);
LastName = populas.LastName
Age = populas.Age
Sex = populas.Sex
BMI = populas.BMI
Children = populas.Children
Smoker = populas.Smoker
Charges = populas.Charges
