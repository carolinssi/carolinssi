clear
clc

%% BAGIAN 1
% fprintf('\t\t\t\t\t  NOMOR 1\n')
% a = 0.1;
% b = 1;
% eps = abs(10^-6);
% f =@(x) exp(2*x^2 - 2) + log10(x);
% akar = metodeBagiDua(f,a,b,eps);


%% BAGIAN 2
%% (a)
% MASUKAN
a = 0.1;
b = 1;
eps = abs(10^-6);
f =@(x) exp(2*x^2 - 2) + log10(x);
fa = f(a);
fb = f(b);

% ALGORITMA 
disp(" ")
fprintf('\n\t\t\t\t\tNOMOR 2(a)')
% perhitungan secara manual hampiran fungsi 
% f(x) = exp(2*x^2 − 2) + log10(x) menggunakan metode Bagi Dua
% sampai iterasi ke- 5

if fa*fb > 0
   fprintf('karena fa*fb= %d',fa*fb)
    disp("PROSES GAGAL")
    akar = "tidak ditemukan";
else
    akar = 0;
    i= 1;
    while akar == 0 & i <= 5
        fprintf('\nITERASI ke- %d\n',i)
%         fprintf('a= %d',a)
%         fprintf('\nb= %d',b)
%         fprintf('\nfa= %d',fa)
%         fprintf('\nfb= %d',fb)
        c = (a+b)/2;
        fc = f(c);
        if fa*fc < 0 
            b = c;
            fb = fc;
        else
            a = c;
            fa = fc;
        end
%         if abs(fc) < 10^-10
%             fprintf('\nkarena |fc|= %d<10^-10', abs(fc))
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
%              fprintf('\nkarena b-a = %d <%d', b-a,eps)
%             akar = c;
%         end
        i = i+1;
        fprintf("\t\takar = %s",c)
%         fprintf("\nf(c) = %s",fc)
%         fprintf("\nakar = %s",akar)
%         fprintf("\nnilainya = %s\n",f(akar))
    end
end

%% (b)
% MASUKAN
fprintf('\n\n\t\t\t\t\t  NOMOR 2(b)\n')
a = 0.1;
b = 1;
eps = abs(10^-6);
f =@(x) exp(2*x^2 - 2) + log10(x);

% KELUARAN 
akar = metodeBagiDua(f,a,b,eps);





