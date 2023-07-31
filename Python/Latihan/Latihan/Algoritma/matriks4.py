# Program Transpose Matriks;
# Isi matriks dan menulis ke layar 

# KAMUS 
#   M : matriks of integer
#   NBrs, NKol : int (ukuran brs & kol) 
#   i, j : int (indeks)
#   M_T : matriks of integer 

# ALGORITMA

import random

# deklarasi matriks
NBrs = 3; NKol = 5;    
M = [[0 for j in range(NKol)] for i in range(NBrs)]

# Mengisi matriks ukuran NBrsxNKol 
for j in range (NKol):
    for i in range (NBrs):
        M[i][j] = random.randint(-20,20)

# inisialisasi matriks transpose dengan nilai default
M_T = [[0 for j in range(NBrs)] for i in range(NKol)]

# isi matriks transpose berdasarkan rumus M_T[i][j] = M[j][i]
for j in range (NKol):
    for i in range (NBrs):
        M_T[j][i] = M[i][j]
        
print("Matriks M")
# Menuliskan isi matriks ke layar 
for i in range (NBrs):
    # Cetak baris ke-i
    for j in range (NKol):
        print(str(M[i][j]) + " ", end='')
    # Baris ke-i selesai dicetak
    print()  # ganti baris

print("Matriks M transpose")
# Menuliskan isi matriks ke layar 
for i in range(NKol):
    # Cetak baris ke-i
    for j in range (NBrs):
        print(str(M_T[i][j]) + " ", end='')
    # Baris ke-i selesai dicetak
    print()  # ganti baris





