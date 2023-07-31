clear
clc
format longG
% PROGRAM 
% PENENTUAN AKAR PERSAMAAN TAK LINEAR

% METODE BAGI DUA
% akan dicari akar dari f(x) = x - e^(-x)
% dengan [a,b] = [0,1] akurasi 10^-6

%% MASUKAN
% Inisiasi fungsi f(x)
a = 0;
b = 2;
f = @(x) x*sin(x) - 1;
fa = f(a);
fb = f(b);
eps = abs(10^-6);

%% ALGORITMA
if fa*fb > 0
    fprintf('karena fa*fb= %d',fa*fb)
    disp("PROSES GAGAL")
end

akar = 0;
i= 1;
while akar == 0 
    c = (a+b)/2;
    fc = f(c);
    fprintf('\n\t\t\t\t\tLOOPING ke- %d\n',i-1)
    fprintf('a= %d',a)
    fprintf('\nb= %d',b)
    fprintf('\nc= %d',c)
    disp("fa")
    fa
    disp("fb")
    fb
    disp("fc")
    fc
    if abs(fc) < 10^-10
        fprintf(' karena |fc|= %d<10^-10', abs(fc))
        akar = c
    else
        if fa*fc < 0
            b = c;
            fb = fc;
        else
            a = c;
            fa = fc;
        end
    end
    if (b-a) < eps
         fprintf('karena b-a1 = %d <%d', b-a,eps)
         disp(" " )
        akar = c
    end
    i = i+1;
end

