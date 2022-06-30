clear
clc
close all
% Potencjał Konwenta dwujamowy
Vc = 1;
D = 1;
n = 10;
M = 1;
V = @(X, D, c) (c* cosh(D.*X) - 1).^2;
alfa = 2 * M * Vc / (6.582119569 * 10^-16 * D)^2;
rs_matrix = rs_H(0, 1, n, V, Vc, 1/D, alfa);
eps = MD_algorithm(rs_matrix, 0.00001, 1, 0, D, n)
psi = rec_forw(diag(rs_matrix), eps, n)