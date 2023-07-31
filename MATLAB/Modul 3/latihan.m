clear;clc
% 
% X1 = [0;0.6;1.2]
% Y1 = cos(X1)
% k1 = 2
% p1=lagrange_func(X1,Y1,k1)
% 
% X2 = [0;0.4;0.8;1.2]
% Y2 = cos(X2)
% k2 = 3
% p2=lagrange_func(X2,Y2,k2)

X3 = [0;1;2;3;4]
Y3 = [1;0.5403023;-0.4161468;-0.9899925;-0.6536436]
k3 = 4;
p0 = 1.5
[d,c,a,p] = newton_coef(X3,Y3,k3,p0)

% p0 = 3.5;
% k = 3; % orde polinom newtom yang diinginkan k<length(x)
% [d,c,a,p] = newton_coef(X,Y,k,p0)
% % [p]=lagrange_coef(x,y,k)
% 
% pp=lagrange_func(X,Y,k)