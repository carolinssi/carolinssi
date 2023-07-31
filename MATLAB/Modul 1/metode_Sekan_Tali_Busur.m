clear
clc
% PROGRAM 
% PENENTUAN AKAR PERSAMAAN TAK LINEAR
% METODE TALI BUSUR

% akan dicari akar dari f(x) = 2 - exp(x)
% dengan [x0,x1] = [0,1] akurasi 10^-6

%% INPUT
% f =@(x) 2 - exp(x);            % fungsi f(x)
f =@(x) x^3 - 3*x + 2;           % fungsi f(x) 
x0 = -2.6;                              % tebakan awal
x1 = -2.4;                               % tebakan awal 
eps = 10^-6;                     % batas galat
maks = 20;                        % batas maksimum iterasi

% ALGORITMA 
fprintf("\t\t\t       METODE TALI BUSUR")
i = 1;
f0 = f(x0);
f1 = f(x1);
akar = 1000;
while akar == 1000

    x2 = x1 - f1*(x1-x0)/(f1-f0);
    f2 = f(x2);
    delta = abs(x2 - x1)/abs(x2);
    fprintf('\n\t\t\t\t\tLOOPING ke- %d\n',i)
    disp("x")
    x0
    disp("f(x)")
    f(x0)
    if delta < eps
        akar = x2;
    end
    x0 = x1;
    f0 = f1;
    x1= x2;
    f1 = f2;
    i = i + 1;
    if i > maks
        disp("proses belum konvergen")
    end
end
fprintf("\n \t\t\t\t LOOPING Ke-%d\n",i)
fprintf("akar = %d\n",akar)
fprintf("nilainya = %s\n\n",f(akar))
