function eps = MD_algorithm(T, e, j, z1, z2, n)
% algorytm martina-deana do obliczania wartosci wlasnych
% T - macierz wejsciowa
% e - wymagana dokladnosc
% j - numer kroku
% z1, z2 - przedzial poczatkowy
% n - wielkosc macierzy
    while (z2 - z1) > e
    z = (z1 + z2) / 2;
    if dean(diag(T), n, z) == j-1
        z1 = z;
    else 
        z2 = z;
    end
    end
    eps = z;
end