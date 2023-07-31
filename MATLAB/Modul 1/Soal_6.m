clear
clc
% Program
% akan dicari akar dari f(x) = 2 - exp(x)
% dengan [x0,x1] = [0,1] akurasi 10^-6

%% INPUT TALI BUSUR
f =@(x) 2 - exp(x);            % fungsi f(x)
x0 = 0;                              % tebakan awal
x1 = 1;                               % tebakan awal 
eps = 10^-6;                     % batas galat
maks = 20;                        % batas maksimum iterasi

%% INPUT Newton-Raphson
f =@(x) 2 - exp(x);            % fungsi f(x)
df = @(x) -exp(x) ;        % turunan dari f(x)
x = 0;                              % tebakan awal
eps = 10^-6;                     % batas galat
maks = 20;                        % batas maksimum iterasi

%% KELUARAN 
disp(" " )
disp("METODE TALI BUSUR")
akar = metodeTaliBusur(f,x0,x1,eps,maks);
fprintf("f(akar) = %d\n",f(akar))
disp(" " )
disp("METODE NEWTON RAPHSON")
akar = metodeNewtonRaphson(f,df,x,eps,maks);
fprintf("f(akar) = %d\n",f(akar))


%%
% %% METODE TALI BUSUR
% % ALGORITMA 
% fprintf("\t\t\t       METODE TALI BUSUR")
% i = 1;
% f0 = f(x0);
% f1 = f(x1);
% akar = 1000;
% while akar == 1000
%     x2 = x1 - f1*(x1-x0)/(f1-f0);
%     f2 = f(x2);
%     delta = abs(x2 - x1)/abs(x2);
%     if delta < eps
%         akar = x2;
%     end
%     x0 = x1;
%     f0 = f1;
%     x1= x2;
%     f1 = f2;
%     i = i + 1;
%     if i > maks
%         disp("proses belum konvergen")
%     end
% end
% fprintf("\n \t\t\t\t LOOPING Ke-%d\n",i-1)
% disp("DITEMUKAN")
% fprintf("akar = %d\n",akar)
% fprintf("nilainya = %s\n\n",f(akar))

% %% METODE Newton-Raphson
% % ALGORITMA 
% fprintf(" \t\t\t METODE Newton-Raphson")
% i = 1;
% akar = 1000;
% while akar == 1000
%     d = df(x);
%     if abs(d) < 10^-12
%         disp("PROSES GAGAL")
%     end
%     xbaru = x - f(x)/d;
%     delta = abs(xbaru - x) / abs(xbaru);
%     if delta < eps
%         akar = xbaru;
%     end
%     x = xbaru; 
%     i = i + 1;
%     if i > maks
%         disp("proses belum konvergen")
%     end
% end
% fprintf("\n \t\t\t\t LOOPING Ke-%d\n",i-1)
% disp("DITEMUKAN")
% fprintf("akar = %d\n",akar)
% fprintf("nilainya = %s\n",f(akar))