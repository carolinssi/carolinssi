clear
clc


% A = [1,1,0;1,3,0;1,1,2];
% B = [3;7;5]
% U = chol(A);
% C = U'*U
% D = U'\B
% X = U\D

A = [4,10,8;10,26,26;8,26,61]
% B = [3;7;5]
U = chol(A)
L = U'
% C = U'*U
% D = U'\B
% X = U\D