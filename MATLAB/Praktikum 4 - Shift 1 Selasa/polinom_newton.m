function [p_n] = polinom_newton(X,Y)
syms x;
% Tuliskan jawaban di bawah garis.
% -------------------------------
n = length(X);
    %% Bagian I
    % perhitungan untuk melengkapi 
    % tabel beda terbagi Newton
    d = zeros(n,n);
    d(:,1) = Y;
    for j = 2:n
        for i = j:n
            d(i,j) = (d(i,j-1) - d(i-1,j-1)) / (X(i)-X(i-j+1));
        end
    end
    %% Bagian II
    % perhitungan koefisien polinom interpolasi newton 
    % untuk orde-k Yang diinginkan 
    k = n;
    c = d(k,k);
    for kk = k-1 : -1: 1
        c = conv(c,poly(X(kk)));
        m = length(c);
        c(m) = c(m) + d(kk,kk);
    end
    %% Bagian III
    % membentuk polinom interpolasi newton
    p = 0;
    for i = 1:length(c)
        p = c(i)*(x^(length(c)-i)) +p;
    end
    p_n = matlabFunction(p);
end
