clear
clc
close all
% Oscylator harmoniczny
Vc = 1;
Lc = 1;
A = 1;
B = 1;
n = 10;
M = 1;
V = @(X, K, M) 1/2 * M * sqrt(K / M)^2 * X.^2;
alfa = 2 * M * Vc * Lc^2 / (6.582119569 * 10^-16)^2;
rs_matrix = rs_H(A, B, n, V, Vc, Lc, alfa);
eps = MD_algorithm(rs_matrix, 0.00001, 1, -A, A, n)
psi = rec_forw(diag(rs_matrix), eps, n)
