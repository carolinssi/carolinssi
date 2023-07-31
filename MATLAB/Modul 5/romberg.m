function integral = romberg(f,a,b,eps,maks_iter)
%% KAMUS
% f = fungsi yang diintegralkan
% a,b = batas bawah, batas atas iterasi
% eps = batas galat
% maks_iterasi = batas maksimum iterasi

%% Algoritma Metode Romberg
    format long
    syms x;
    R = zeros( maks_iter + 1, maks_iter + 1 );
    h = b - a
    R(1,1) = (h/2)/(f(a)+f(b));

    for i = 1:maks_iter
        h = h/2;
        R(i+1,1 ) = 0.5*(f(a) + 2*sum( f( (a + h):h:(b - h) ) ) + f(b))*h

        for j = 1:i
            R(i+1,j+1) = (4^j*R(i + 1, j) - R(i, j))/(4^j - 1)
        end

        if abs( R(i + 1, i + 1) - R(i, i) ) < eps
           break;
        elseif i == maks_iter + 1
           error( 'Romberg integration belum konvergen' );
        end
    end
    integral = R( i + 1, i + 1 );
end
