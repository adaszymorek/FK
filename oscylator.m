clear
clc
close all
% Oscylator harmoniczny
Vc = 1;
Lc = 1;
A = 1;
B = 10;
n = 10;
M = 1;

V = @(X, K, M) 1/2 * M * sqrt(K / M)^2 * X.^2;

rs_matrix = rs_H(A, B, n, V, Vc, Lc, M)

eps = MD_algorithm(rs_matrix, 0.00001, 1, -A, A, n)

psi = rec_forw(diag(rs_matrix), eps, n)
