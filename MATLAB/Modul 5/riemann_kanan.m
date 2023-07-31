function integral = riemann_kanan(f,a,b,n)
% f fungsi f(x)
% a batas bawah
% b batas atas 
% n jumlah partisi
    h = (b-a)/(n-1);
    x = linspace(a,b,n);
    integral = h*sum(f(2:n));
end