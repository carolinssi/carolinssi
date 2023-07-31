clear
clc
% PROGRAM 
% PENENTUAN AKAR PERSAMAAN TAK LINEAR

% akan dicari akar dari f(x) =exp(-4*x) - 0.1
% dengan [a,b] = [0,] akurasi 10^-6

%% INPUT
f =@(x) x^12 - 2;
a = 0;
b = 2;
eps = 10^-6;

%% KELUARAN 
disp(" " )
disp("METODE BAGI DUA")
akar = metodeBagiDua(f,a,b,eps);
fprintf("f(akar) = %s\n",f(akar))
disp(" " )
disp("Metode Posisi Palsu")
akar = metodePosisiPalsu(f,a,b,eps);
fprintf("f(akar) = %s\n",f(akar))
disp(" " )
disp("Metode Modifikasi Posisi Palsu")
akar = metodeModifikasiPosisiPalsu(f,a,b,eps);
fprintf("f(akar) = %s\n",f(akar))
