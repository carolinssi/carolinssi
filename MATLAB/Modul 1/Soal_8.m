clear
clc
% PROGRAM 
% PENENTUAN AKAR PERSAMAAN TAK LINEAR
% f(x) = x^4 - x - 1
% METODE NEWTON - RAPHSON UNTUK POLINOM

%% INPUT

f =@(x) x^4 - x - 1 ;
n = input("Masukkan derajat polinom: ");
a = [ ];
for i = 1:n + 1
    fprintf("Masukkan koefisien x^%d",n +1 - i)
    a(i) = input("= " );
end
b = zeros(1,n + 1);
c = zeros(1,n + 1);
z = 1;                              % tebakan awal -1 dan 1
eps = 10^-6;                     % batas galat
maks = 30;                        % batas maksimum iterasi

%% ALGORITMA 
disp("METODE NEWTON - RAPHSON UNTUK POLINOM")
iter = 1;
akar = 1000;
while akar == 1000
    b(n+1) = a(n+1);
    c(n+1) = b(n+1);
    while n > 1
        i = n ;
        b(i) = a(i) + b(i+1)*z;
        c(i) = b(i) + c(i+1)*z;
        n = n - 1;
    end
    b(1) = a(1) + b(2)*z ; 
    if abs(c(2)) < 10^-12
        disp("PROSES GAGAL")
    end
    zbaru = z - b(1)/c(2);
    delta = abs(zbaru - z) / abs(zbaru);
    if delta <eps 
        akar = zbaru ; 
    end
    z = zbaru ;
    iter = iter + 1 ; 
    if iter > maks
        disp("Proses belum konvergen")
    end
end
fprintf("akar = %d\n",akar)
fprintf("nilainya = %d\n",f(akar))