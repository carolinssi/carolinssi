function integral = trapesium(f,a,b,n)
% f fungsi f(x)
% a batas bawah
% b batas atas 
% n jumlah partisi
    h = (b-a)/(n-1);
    x = linspace(a,b,n);
    integral = (h/2) * (f(1) + 2*sum(f(2:n-1)) + f(n));
end