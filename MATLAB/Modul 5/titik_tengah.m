function integral = titik_tengah(f,a,b,n)
% f fungsi f(x)
% a batas bawah
% b batas atas 
% n jumlah partisi
    h = (b-a)/(n-1);
    x = linspace(a,b,n);
    integral = h*sum(f((x(1:n-1) + x(2:n)) / 2));
end