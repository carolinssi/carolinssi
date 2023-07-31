clear
clc
% 

format short
%% ELIMINASI GAUSS
% a = [2,5,-4,-5;-2,1,-7,5;8,4,16,-4;1,1.5,3,4.5];
% b = [-2,3,24,16]';
% C = [a,b];                
% akar = eliminasi_gauss(a,b)
% disp("------------------------------------------------------------------------------------------------")

% % GAUSS PENUMPUAN PARSIAL
% C = [1,2,1,4,13;2,0,4,3,28;4,2,2,1,20;-3,1,3,2,6];
% akar = gauss_penumpuan_parsial(C)
% disp("------------------------------------------------------------------------------------------------")

%% GAUSS - JORDAN
% X = [4,-5,-2.5,-0.5;-2,2,-3,1;-2,-4.5,2.5,-5;4.5,1,-3.5,3];
% n = length(X);
% X_inv = modif_gauss_jordan(n,X)


%% JACOBI
% a = [8,3,-2,1,2;4,12,4,3,-7;2,-2,9,3,10;1,2,4,8,-5]; % [b]x = [c], a = [b c] 
% x = [2;2;6;3];  % tebakan awal  
% akar = jacobi (a,x)


%% GAUSS - SEIDEL
% a = [8,3,-2,1,2;4,12,4,3,-7;2,-2,9,3,10;1,2,4,8,-5]; % [b]x = [c], a = [b c] 
% x = [2;2;6;3];  % tebakan awal  
% akar = gauss_seidel(a,x)

%% CROUT
A = [1,1,0;1,3,0;1,1,2];
B = [3;7;5]
[X,L,U] = doolitle(A,B);
a = [L B]
y = penyulihan_maju(a)
aa = [U y' ]
x = penyulihan_mundur(aa)

