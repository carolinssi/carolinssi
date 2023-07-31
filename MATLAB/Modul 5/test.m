clear;clc
format long



%% ROMBERG
% f = @(x) exp(x)
% a = 0; b = 4;
% eps = 10^-20;
% maks_iter = 2;
% integral = romberg(f,a,b,eps,maks_iter);

% %% LGWT
% N = 3;
% integral = romberg(f,a,b,eps,maks_iter)
% [x,c]=lgwt(6,1,2)
% f =  x.*log(x);
% value = sum(c.*f)

% %% GAUSS- LEGREGE
% integral = 3.135506183362450;
% f = @(x) (4.*x - x.^2).^0.5;
% a = 0;
% b = 2;
% n = 3;
% integral2 = glegendre(f,a,b,n);
% x1 = abs(integral - pi)
% x2 = abs(integral2 - pi)
% % 
% f = @(x) exp(x);
% a = -1;
% b = 1;
% n = 2;
% integral = glegendre(f,a,b,n)
% 
% %% RIEMAN 
% integral = riemann_kanan(f,a,b,n)
% integral = riemann_kiri(f,a,b,n)


% %% SIMPSON
% f = @(x) exp(x);
% a = 0;
% b = 1;
% n = 4;
% [integral,X,S] = simpson_1per3(f,a,b,n);

% %% SIMPSON KOMPOSIT
% f = @(x) exp(x);
% a = 0;
% b = 1;
% M = 4; % jumlah subinterval
% [s,X,S]=simpson_komposit(f,a,b,M);

%% Trapesium Rekursif
n = 4;
a = 0;
b = 1;
f = @(x) 1/((1+x^4)^0.5);
M = 4;
T=trapesium_rekursif(f,a,b,n)
s=trapesium_komposit(f,a,b,M)

































% format long
% syms x;
% %masukkan fungsi f(x) yang akan diintegralkan 
% %misalkan : 
% %f = @(x) exp(x)
% f = @(x) exp(x)
% eps = input('Masukkan batas galat : ');
% maks_iter = input('Masukkan batas maksimum iterasi : ');
% R = zeros( maks_iter + 1, maks_iter + 1 );
% a = input('Masukkan a (batas integrasi bawah) : ');
% b = input('Masukkan b (batas integrasi atas): ');
% h = b - a;
% R(1,1) = (f(a)+f(b))/2*h;
% 
% for i = 1:maks_iter
%     h = h/2;
%     R( i + 1, 1 ) = 0.5*(f(a) + 2*sum( f( (a + h):h:(b - h) ) ) + f(b))*h;
% 
%     for j = 1:i
%         R(i + 1, j + 1) = (4^j*R(i + 1, j) - R(i, j))/(4^j - 1);
%     end
% 
%     if abs( R(i + 1, i + 1) - R(i, i) ) < eps
%        break;
%     elseif i == maks_iter + 1
%        error( 'Romberg integration tidak konvergen' );
%     end
% end
% 
% R( i + 1, i + 1 )
% %hasil aproksimasi dengan metode romberg