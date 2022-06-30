function rs_matrix = rs_H(A, B, n, V, Vc, Lc, alfa)
% umacierzowienie rownania schrodingera
% A, B - polozenie nieskonczonych barier potencjalu
% n - wielkosc macierzy
% V - wzor na potencjal
% Vc - charakterystyczna energia
% Lc - parametr o wymiarze dlugosci
% alfa - bezwymiarowy parametr skali
a = A / Lc;
b = B / Lc;
s = (b - a) / (n + 1);

X = linspace(-500, 500, 1000);
x = zeros(1, n);
rs_matrix = zeros(n, n);

for i = 1:n
    x(i) = a + i * s;
end
v = Vc .* V(x, 1, 1);
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