clear
clc
%% BAGIAN A
% MASUKAN
a = 0;
b = 1;
eps = abs(10^-6);
f =@(x) x - exp(-x);

% KELUARAN
disp(" " )
disp("A")
akar = metodeBagiDua(f,a,b,eps);
fprintf("f(akar) = %s\n",f(akar))


%% BAGIAN B
% MASUKAN
a = 0;
b = 2;
eps = abs(10^-6);
f =@(x) x^6 - x- 1;

% KELUARAN
disp(" " )
disp("B")
akar = metodeBagiDua(f,a,b,eps);
fprintf("f(akar) = %s\n",f(akar))

%% BAGIAN C
% MASUKAN
a = 0.1;
b = 0.25;
eps = abs(10^-6);
f =@(x) 5 - x^-1;

% KELUARAN
disp(" " )
disp("C")
akar = metodeBagiDua(f,a,b,eps);
fprintf("f(akar) = %s\n",f(akar))

%% BAGIAN D
% MASUKAN
a = 0;
b = pi;
eps = abs(10^-6);
f =@(x) x^2 - sin(x);

% KELUARAN
disp(" " )
disp("D")
akar = metodeBagiDua(f,a,b,eps);
fprintf("f(akar) = %s\n",f(akar))