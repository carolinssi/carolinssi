function [s,X,S]=simpson_komposit(f,a,b,M)
%Input - f is the integrand input as a string ’f’
% - a and b are upper and lower limits of integration
% - M is the number of subintervals
%Output - s is the simpson rule sum
    h=(b-a)/(2*M);
    s1=0;
    s2=0;
    X = zeros(1,1);
    S = zeros(1,1)
    for k=1:M
        x=a+h*(2*k-1);
        X(k+1) = x;
        s1=s1+feval(f,x);
        S(k+1) = s1;
    end
    for k=1:(M-1)
        x=a+h+2*k;
        X(k+1) = x;
        s2=s2+feval(f,x);
        S(k+1) = s2;
    end
    s=h*(feval(f,a)+feval(f,b)+ 4*s1+2*s2)/3;
end