# Program IsiMatriks;
# Isi matriks dan menulis ke layar 

# KAMUS 
#   M : matriks of integer
#   NBrs, NKol : int (ukuran brs & kol) 
#   i, j : int (indeks)

# ALGORITMA

import random

# deklarasi matriks
NBrs = 3; NKol = 5;    
M = [[0 for j in range(NKol)] for i in range(NBrs)]

# Mengisi matriks ukuran NBrsxNKol 
for j in range (NKol):
    for i in range (NBrs):
        M[i][j] = random.randint(-20,20)

# Menuliskan isi matriks ke layar 
for i in range (NBrs):
    # Cetak baris ke-i
    for j in range (NKol):
        print(str(M[i][j]) + " ", end='')
    # Baris ke-i selesai dicetak
    print()  # ganti baris

