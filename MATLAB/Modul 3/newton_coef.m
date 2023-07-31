function [d,c,a,p]= newton_coef(X,Y,k,p0)
% fungsi untuk menghitung  polinom interpolasi newton
% fungsi menerima masukan
% arraY X = [X0, X1, .., Xn]
% arraY Y = [Y0, Y1, ... , Yn] dimana Yi = f(Xi),
% serta bilangan bulat k dengan 
% k = orde polinom interpolasi newton 
n = length(X);
syms x 

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
    k = k+1;
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
        c(i)
        p = c(i)*(x^(length(c)-i)) +p
    end
    p = matlabFunction(p);
    a = polyval(c,p0);
    x = linspace(X(1),X(n),100);
    y = polyval(c,x);
    plot(x,y,'r')
    hold on
    plot(X,Y,'o')
    hold off
end

%         a = polyval(p,p0);
%         X = linspace(x(1),x(n),100);
%         Y = polyval(p,X);
%         figure(2)
%         plot(X,Y,'r')
%         hold on
%         plot(x,y,'o')
%         hold off   

% 
%     %% Bagian II
%     % perhitungan polinom interpolasi newton 
%     % untuk orde-k Yang diinginkan 
%     k = k+1;
%     c = d(k,k);
%     for kk = k-1 : -1: 1
%         c = conv(c,polY(X(kk)));
%         m = length(c);
%         c(m) = c(m) + d(kk,kk);
%     end
%     a = polYval(c,p0);
%     X = linspace(X(1),X(n),100);
%     Y = polYval(c,X);
%     plot(X,Y,'r')
%     hold on
%     plot(X,Y,'o')
% end

