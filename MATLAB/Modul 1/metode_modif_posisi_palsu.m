clear
clc
% MASUKAN
a = 0;
b = 2;
f = @(x) x*sin(x) - 1;
fa = f(a);
fb = f(b);
eps = abs(10^-6);

% ALGORITMA 
if fa*fb > 0
    disp("PROSES GAGAL")
    akar = "tidak ditemukan";
else
    i = 0;
    clama = 2*b - a ;
    kiri = 0;
    kanan = 0;
    akar = 0;
    while akar == 0 
        c = b - fb*(b-a) / (fb-fa);
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
                kanan = 0;
                kiri = kiri + 1;
                if kiri > 2
                    fa = fa/2;
                end
            else
                a = c;
                fa = fc;
                kiri = 0;
                kanan = kanan + 1;
                if kanan > 2
                    fb = fb / 2;
                end
            end
        end
        if abs(c - clama) < eps
            akar = c;
        end
        clama = c;
        i = i + 1;
    end
end
akar


