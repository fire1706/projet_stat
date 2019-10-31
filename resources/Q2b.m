%% Cr?ation d'un vecteur de 500 ?chatillon de 50 personnes sous la forme 500-by-50
function multi_sample = Q2b(x)% x repr?sente les charges de la population
    multi_sample = zeros(500,50);
    i = 1;
    while(i<=500)
        sample = iid_sample(x,50);
        multi_sample(i,:) = sample;
        i = i+1;
    end
end
