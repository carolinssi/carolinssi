function [F] = paromberg(alpha,beta,b,c,T)
% Ketik jawaban anda dibawah garis
% --------------------------------
g = @(alpha,beta,b,c,z) (1-b/c)*((alpha/beta)/(1+(z-b)/beta)^(1+alpha));
f = @(z) g(alpha,beta,b,c,z);
% f(x) sebagai fungsi peluang untuk x>= b
if T<b
    F = T/c;
else
    % Algoritma metode romberg
    epsilon = 10^(-6);
    a = b;
    R(1,1) = ((T-a)/2)*(f(a)+f(T));
    j = 1;
    galat = epsilon+1;
    while galat>epsilon
        n = 2^j;
        h = (T-a)/n;
        s = 0;
        x = a;
        for i = 1:n/2
            x = a+(2*i-1)*h;
            s = s+f(x);
        end
        R(j+1,1) = (R(j,1)/2)+h*s;
        for k=1:j
            R(j+1,k+1) = (4^k*R(j+1,k)-R(j,k))/(4^k-1);
        end
        galat = abs((R(j+1,j+1)-R(j,j))/R(j+1,j+1));
        if galat <= epsilon
            F = b/c+R(j+1,j+1);
            % Mengembalikan hasil integrasi ditambah integral atas fungsi
            % peluang dari 0 hingga b
        end
        j = j+1;
    end
end
end
