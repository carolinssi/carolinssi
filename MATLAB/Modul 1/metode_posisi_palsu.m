clear
clc
% PROGRAM 
% PENENTUAN AKAR PERSAMAAN TAK LINEAR
% MENGGUNANAKAN METODE POSISI PALSU

% akan dicari akar dari f(x) = 1/(x^2 + 1)
% dengan [a,b] = [0,] akurasi 10^-6

% MASUKAN
a = 0;
b = 2;
f = @(x) x*sin(x) - 1;
fa = f(a);
fb = f(b);
eps = abs(10^-6);

% ALGORITMA 
disp(" ")
disp("Bagian a")
if fa*fb > 0
    disp("PROSES GAGAL")
    akar = "tidak ditemukan";
else
    clama = 2*b - a ;
    akar = 0;
    i = 0;
    while akar == 0 
        c = b - fb*(b-a) / (fb-fa);;
        fc = f(c);
        fprintf('\n\t\t\t\t\tLOOPING ke- %d\n',i)
        a
        b
        c
        fa
        fb
        fc
        if abs(fc) < 10^-10
            akar = c;
        else
            if fa*fc < 0
                b = c;
                fb = fc;
            else
                a = c;
                fa = fc;
            end
        end
        if abs(c - clama) < eps
            akar = c;
        end
        clama = c;
        i = i+1;
    end
end
akar