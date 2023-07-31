clear
clc

% C = [1 2 -1; 2 1 -2; -3 1 1]
% b= [3 3 -6]'

% %% eliminasi gauss
% C = [2,5,-4,-5 ; -2,1,-7,5 ; 8,4,16,-4 ; 1, 1.5, 3, 4.5];
% b = [-2,3, 24, 16]';
% A = [C b];                                                 
% n= size(A,1);                                                                               
% x1 = eliminasi_gauss(A,b)

% %% gauss penumpuan parsial
% % C = [1,2,1,4 ; 2,0,4,3 ; 4,2,2,1 ; -3,1,3,2];
% % b = [13,28,20,6]';
% % a = [C b];                                                  
% % n= size(a,1); 
% % x3 = gauss_penumpuan_parsial(a,n)
% 
% %% gauss tridiagonal
% % C = [4,6,0,0,0 ; 2,-3,1,0,0 ; 0,9,-4,-1,0 ; 0,0,5,-1,-2 ; 0,0,0,-4,4];
% % b = [14,3,0,5,4]';
% % A = [C b];                                                  
% % n= size(A,1); 
% % x4 = gauss_tridiagonal(A,b)
% % x5 = gauss_penumpuan_parsial(A,n)
% 
% %% jacobi
% C = [8,3,-2,1 ; 4,12,4,3 ; 2,-2,9,3 ; 1,2,4,8];
% B = [2,-7,10,-5]';
% a = [C B];       
% x = [2;2;6;3]; % tebakan awal 
% % % 
% n= size(a,1);
% eps = 10^-6;
% maksiter =30;
% b = a(:,n+1);
% x7 = jacobi(a,n)
% 
% %% gauss seidel
% x8 = gauss_seidel(a,n)
% 
% 
