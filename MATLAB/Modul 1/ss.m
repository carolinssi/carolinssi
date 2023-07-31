clear
clc

%% BAGIAN A
% akan dicari akar dari f(x) = 1/(x - 1)
% dengan [a,b] = [0,3] akurasi 10^-6

% MASUKAN
eps = 10^-6;
a6 = 0;
b6 = 3;
fa6 = modul_1.f6(a6);
fb6 = modul_1.f6(b6);

% ALGORITMA 
disp(" ")
disp("Bagian b")
if fa6*fb6 > 0
    disp("PROSES GAGAL")
    akar6 = "tidak ditemukan";
else
    clama6 = 2*b6 - a6
    akar6 = 100;
    while akar6 == 100 
        fprintf('a6 = %d',a6)
        fprintf('\nb6 = %d',b6)
        fprintf('\nfa6 = %d',fa6)
        fprintf('\nfb6 = %d',fb6)
        c6 = b6 - (fb6*((b6-a6) / (fb6-fa6)))
        fc6 = modul_1.f6(c6)
        if abs(fc6) < 10^-10
            akar6 = c6
        else
            if fa6*fc6 < 0
                b6 = c6
                fb6 = fc6
            else
                a6 = c6
                fa6 = fc6
            end
        end
        if (abs(c6 - clama6)/c6) <= eps
            akar6 = c6
        end
        clama6 = c6    
    end
end
fprintf("akar = %s\n",akar6)