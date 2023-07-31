clear
clc
% PROGRAM 
% PENENTUAN AKAR PERSAMAAN TAK LINEAR
% METODE Newton-Raphson

% akan dicari akar dari f(x) = 4*x - cos(x)
% dengan [a,b] = [-2,2] akurasi 10^-6

%% INPUT
% f =@(x) 4*x - cos(x);           % fungsi f(x) 
% df = @(x) 4 + sin(x)   ;        % turunan dari f(x)
% x = -2;                              % tebakan awal
f =@(x) x^3 - 3*x + 2;           % fungsi f(x) 
df = @(x) 3*x^2 - 3   ;        % turunan dari f(x)
x = 1.2;                              % tebakan awal
eps = 10^-6;                     % batas galat
maks = 20;                        % batas maksimum iterasi

%% KELUARAN 
i = 0;
akar = 1000;
while akar == 1000
    fprintf('\n\t\t\t\t\tLOOPING ke- %d\n',i)
    d = df(x);
    x
    disp("f(x)")
    f(x)
    disp("df(x)")
    df(x)
    if abs(d) < 10^-12
        disp("PROSES GAGAL")
    end             % M = multiplitas M dari r akar fungsi f
    xbaru = x - f(x)/d;  % xbaru = x - M*f(x)/d; untuk modifikasinya 
    delta = abs(xbaru - x) / abs(xbaru);
    if delta < eps
        akar = xbaru;
    end
    x = xbaru; 
    i = i + 1;
    if i > maks
        disp("proses belum konvergen")
    end
end
fprintf("konvergen pada iterasi ke %d\n", i-1)
akar

