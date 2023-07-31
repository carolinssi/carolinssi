clear
clc

% meotda dekomposisi LU
A = [1,1,2 ; 2,4,-3 ; 3,6,-5]
B = [9;1;0]

disp("doolitle")
x = doolitle(A,B);
disp("crout")
X = crout(A,B);


disp("cholensky")
%
A = [ 6 15 55;15 55 225;55 225 979]
B = [ sum(A(1,:)); sum(A(2,:)); sum(A(3,:))]
%
U = chol(A);
C = U'*U
D = U'\B
X = U\D