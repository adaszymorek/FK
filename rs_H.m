function rs_matrix = rs_H(A, B, n, V, Vc, Lc, M)
% umacierzowienie rownania schrodingera
% A, B - polozenie nieskonczonych barier potencjalu
% n - wielkosc macierzy
% V - funkcja potencjalu V(x)
% Vc - charakterystyczna energia
% Lc - parametr normowania (o wymiarze długości)
% M - masa cząstki
hk = 1.05457 * 10^(-34); % stała Plancka kreślona [J * s]

a = A / Lc;
b = B / Lc;
s = (b - a) / (n + 1);
alfa = (2 * M * Vc * Lc^2) / hk^2;

x = zeros(1, n);
rs_matrix = zeros(n, n);

for i = 1:n
    x(i) = a + i * s; % wyliczenie bezwymiarowych wspolrzednych siatki
end
v = V(x, 1, 1) ./ Vc;
vk = s^2 * alfa .* v;

for i = 1:n
    for j = 1:n
        if i == j
            rs_matrix(i, j) = 2 + vk(i);
        elseif i == (j-1) || j == (i-1) || i == (j+1) || j == (i+1)
            rs_matrix(i, j) = -1;
        else
            rs_matrix(i, j) = 0;
        end
    end
end