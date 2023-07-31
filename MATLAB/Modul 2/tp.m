clear
clc
% 
% n = input('Masukkan ukuran matriks: ');
% a = zeros(n,n);
% for i = 1: n
%     for j = 1 : n
%         fprintf('Masukkan koefisien baris ke- %d dan kolom ke- %d%n',i,j )
%         a(i,j) = input(' yaitu = ');
%     end
% end
% 
% a_inv = modif_gauss_jordan(n,a)




A = [4,-5,-2.5,-0.5 ; -2,2,-3,1 ; -2,-4.5,2.5,-5 ; 4.5,1,-3.5,3];
n = length(A);
a_inv = modif_gauss_jordan(n,A)