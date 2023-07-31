clear
clc
% PROGRAM 
% PENENTUAN AKAR PERSAMAAN TAK LINEAR
% akan dicari akar dari f(x) = 4*x - cos(x)
% dengan [a,b] = [-2,2] akurasi 10^-6


%% INPUT
f =@(x) 4*x - cos(x);           % fungsi f(x)
df = @(x) 4 + sin(x)   ;        % turunan dari f(x)
x = -2;                              % tebakan awal
a = 0;
b = 5;
eps = 10^-6;                     % batas galat
maks = 20;                        % batas maksimum iterasi

%% KELUARAN 
disp(" " )
disp("METODE BAGI DUA")
akar = metodeBagiDua(f,a,b,eps);
fprintf("f(akar) = %d\n",f(akar))
disp(" " )
disp("METODE NEWTON RAPHSON")
akar = metodeNewtonRaphson(f,df,x,eps,maks);
fprintf("f(akar) = %d\n",f(akar))

% % untuk metode bagi dua
% a = 0;
% b = 5;
% fa = f(a);
% fb = f(b);
% 
% %% METODE Newton-Raphson
% % ALGORITMA 
% fprintf("\n \t\t\t METODE Newton-Raphson")
% i = 1;
% d = df(x);
% akar = 1000;
% while akar == 1000
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
% fprintf("\n \t\t\t\t LOOPING Ke-%d\n",i)
% disp("DITEMUKAN")
% fprintf("akar = %d\n",akar)
% fprintf("nilainya = %s\n\n",f(akar))
% 
% 
% 
% %% METODE BAGI DUA
% % ALGORITMA 
% disp("")
% fprintf("\t\t\t         METODE BAGI DUA")
% if fa*fb > 0
%    fprintf('karena fa*fb= %d',fa*fb)
%     disp("PROSES GAGAL")
%     akar = "tidak ditemukan";
% else
%     akar = 0;
%     i= 1;
%     while akar == 0 
% %         fprintf('a= %d',a)
% %         fprintf('\nb= %d',b)
% %         fprintf('\nfa= %d',fa)
% %         fprintf('\nfb= %d',fb)
%         c = (a+b)/2;
%         fc = f(c);
%         if abs(fc) < 10^-10
% %             fprintf('\nkarena |fc|= %d<10^-10', abs(fc))
%             akar = c;
%         else
%             if fa*fc < 0
%                 b = c;
%                 fb = fc;
%             else
%                 a = c;
%                 fa = fc;
%             end
%         end
%         if (b-a) < eps
% %              fprintf('\nkarena b-a = %d <%d', b-a,eps)
%             akar = c;
%         end
%         i = i+1;
%     end
% end
% fprintf('\n\t\t\t\tLOOPING ke- %d',i)
% fprintf("\nakar = %s",akar)
% fprintf("\nnilainya = %s\n\n",f(akar))