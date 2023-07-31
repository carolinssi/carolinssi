 function integral = glegendre(f,a,b,n)
 %% KAMUS
% f = fungsi yang diintegralkan
% a,b = batas bawah, batas atas iterasi
% dengan jumlah n titik yang akan dipakai 

    %% ALGORITMA GAUSS-LEGENDRE
    if (n < 2 | n > 5)
        fprintf('berikan bilangan asli n dengan 2<=n <= 5');
    else
        a0 = 0.5*(b+a);
        a1 = 0.5*(b-a);
        if (n == 2)
           c(1) = 1.0;
           c(2) = c(1);
           x_table(1) = -0.577350269;
           x_table(2) = -x_table(1);
        elseif (n == 3)
           c(1) = 0.5555555559;
           c(2) = 0.8888888888;
           c(3) = c(1);
           x_table(1) = -0.7745966692;
           x_table(2) = 0.0;
           x_table(3) = -x_table(1);
        elseif (n == 4)
           c(1) = 0.347854845;
           c(2) = 0.652145155;
           c(3) = c(2);
           c(4) = c(1);
           x_table(1) = -0.861136312;
           x_table(2) = -0.339981044;
           x_table(3) = -x_table(2);
           x_table(4) = -x_table(1);
        elseif (n == 5)
           c(1) = 0.236926885;
           c(2) = 0.478628670;
           c(3) = 0.568888889;
           c(4) = c(2);
           c(5) = c(1);
           x_table(1) = -0.906179846;
           x_table(2) = -0.538469310;
           x_table(3) = 0.0;
           x_table(4) = -x_table(2);
           x_table(5) = -x_table(1);
        end
        integral = 0.0;
        for i = 1:1:n
             x(i) = a0 + a1*x_table(i)
             F(i) = f(x(i))
             integral = integral + c(i)*F(i)
        end
        integral = integral*a1
     end
 end

 
