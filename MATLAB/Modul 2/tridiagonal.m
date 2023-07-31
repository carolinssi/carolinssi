clear 
clc
a = [3,4,0,0;4,5,2,0;0,2,5,3;0,0,3,5];
b = [20,28,18,18]';
x = tridiagmatrix(a,b)
 