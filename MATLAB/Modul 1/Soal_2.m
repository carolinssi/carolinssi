clear
clc

%% BAGIAN A
% MASUKAN
a = 0;
b = 5;
eps = abs(10^-6);
f =@(x) 1/(x^2 + 1);

% KELUARAN
disp("A")
disp("Metode Bagi Dua")
akar = metodeBagiDua(f,a,b,eps);
disp(" " )
disp("Metode Posisi Palsu")
akar = metodePosisiPalsu(f,a,b,eps);

%% BAGIAN B
% MASUKAN
a = 0;
b = 3;
eps = abs(10^-6);
f =@(x) 1/(x - 1);

% KELUARAN
disp(" " )
disp("B")
disp("Metode Bagi Dua")
akar = metodeBagiDua(f,a,b,eps);
fprintf("f(akar) = %d\n",f(akar))
disp("Metode Posisi Palsu")
akar = metodePosisiPalsu(f,a,b,eps);
fprintf("f(akar) = %d\n",f(akar))
