function [p_n] = polinom_newton(X,Y)
syms x;
% Masukan : Array X dan Y, berisikan titik ordinat dan absis yang dilewati
% oleh suatu fungsi f
% X = [x_0, x_1, ..., x_n]; Y=[y_0, y_1, ..., y_n]=[f(x_0), .., f(x_n)]

% Keluaran : Fungsi polinomial pol, dihasilkan dari interpolasi polinom
% dengan metode Beda Terbagi Newton

N = length(X); % N : banyak absis
% Perhitungan distore pada Tabel ; Kolom pertama berisikan Y
for(i=1:N)
    Tabel(i,1) = Y(i);
end
% Pengisian Tabel
for(j=2:N)
    for(i=j:N)
        Tabel(i,j) = (Tabel(i,j-1) - Tabel(i-1, j-1)) / (X(i) - X(i-j+1));
    end
end
% Ambil koefisien a_0, a_1,.., a_n. Simpan di array koef
koef = diag(Tabel);                                                                                                                                                                                                                           
% Bangun fungsi pol. Inisiasi P1 dan variabel sum
sum = (x-X(1));
p_n = koef(1) + koef(2)*sum; %p_n saat ini ada di orde 1 (p_1)
for(i=3:N)
    sum = sum*(x - X(i-1));
    p_n = p_n + koef(i)*sum;
end
p_n = matlabFunction(p_n);
end
