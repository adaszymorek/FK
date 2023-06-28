function psi = rec_forw(d, eps, n)
% algorytm do wyznaczania wektorow wlasnych 
% d - wartosci diagonali
% eps - wyznaczone metoda martina-deana wartosci wlasne
% n - wielkosc macierzy

    psi = zeros(1, n);
    psi(1) = 1;
    psi(2) = -(d(1) - eps)/-1;

    for i = 3:n
        psi(i) = -(-psi(i-2) + (d(i-1) - eps)*psi(i-1))/-1;
    end
    
    psi = psi / norm(psi);
end