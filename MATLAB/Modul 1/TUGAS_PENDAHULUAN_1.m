%%
% NIM/NAMA      : 10119050/Carolina Sinaga
% TANGGAL        : Selasa,7 September 2021
% DESKRIPSI        : PROGRAM KONSTRUKSI MATRIKS A BERUKURAN 50 x 50 
%                         BERDASARKAN KEINGINAN PAK AHMAD

%% KAMUS
% n = integer
% A = matriks of integer
% i, j = integer (indeks)

%% ALGORITMA
% deklarasi matriks
n = 40 ;  % jumlah baris/kolom matriks 
A = zeros (n,n); % A merupakan matriks berukuran n x n dengan semua entri merupakan bilangan nol

% Membentuk Matriks A berdasarkan keinginan Pak Ahmad
for i = 1 : n                   % pengulangan dimulai dari baris ke- 1 hingga ke-n
    for j = 1:n                 % pengulangan dimulai dari kolom ke- 1 hingga ke-n
        if i <= n-2            % pembatasan nilai i harus i<= n - 2
            if j <= n-2        % pembatasan nilai j harus j<= n - 2
                A(i,i) = 1;                         % i dan j dibatasi harus lebih kecil sama dengan  n-2 agar, ukuran matriks A tetap n x n
                A(i,i+1) = 2;                     % karena sintax ini berpotensi mengubah
                A(i,i+2) = 3;                     % ukuran matriks A menjadi (n+2) x (n+2)
                A(i+1,i) = A(i,i+1);                
                A(i+2,i) = A(i,i+2);     
            end
        end
        % kondisi ketika i > n-2 dan j > n-2
        A(i,i) = 1;                 
        A(n-1,n) = 2;
        A(n,n-1) = 2;
    end
end

%% KELUARAN 
fprintf("Matriks yang diinginkan Pak Ahmad: \n")
disp(A)         % mencetak matriks A
