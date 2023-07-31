clear
clc

syms x y
p = x^3 - x*y^2 + 1;
d = x + y;
[r,q] = polynomialReduce(p,d)

a = [24, -50, 35, -10, 1]
b = [-1,1 ]
[s d] = deconv(a,b)