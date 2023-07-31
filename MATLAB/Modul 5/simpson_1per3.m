function [integral,X,S] = simpson_1per3(f,a,b,n)
% f fungsi f(x)
% a batas bawah
% b batas atas 
% n tingkat keakuratan
    integral = f(a) +f(b);
    h = (b-a)/(n);
    sum4 = 0.0;
    X = zeros(1,1);
    S = zeros(1,1);
    for i = 1:2:n-1
        x = a + i*h;
        sum4 = sum4 + f(x);
        X(i+1) = x;
        S(i+1) = sum4;
    end
    sum2 = 0.0;
    for i = 2:2:n-2
        x = a + i*h;
        sum2 = sum2 + f(x);
        X(i+1) = x;
        S(i+1) = sum2;
    end
    integral = (h/3) * (integral + 4*sum4 + 2*sum2);
end