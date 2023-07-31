# PROGRAM BANYAK LULUS
# .safkeaflkjaeflk

# KAMUS
# INDEKS: array[0..4] of char
# T_INDEKS: array[0..49] of char
# N_lulus: int  untuk menyimpan banyak mahasiswa yang lulus

# ALGORITMA

import random

INDEKS = ['A', 'B', 'C', 'D', 'E']

T_INDEKS = [' ' for i in range(0, 50)]
for i in range(0, 50):
#    T_INDEKS[i] = input("Masukkan indeks mahasiswa ke-" + str(i) + ": ")
    #k = random.randint(0, 4)
    T_INDEKS[i] = INDEKS[random.randint(0, 4)]

    
N_lulus = 0 # inisialisasi banyak mahasiswa yg lulus
for i in range(0, 50):
    if T_INDEKS[i] == 'A' or T_INDEKS[i] == 'B' or T_INDEKS[i] == 'C':
        N_lulus += 1   # sama saja dengan N_lulus = N_lulus + 1

print("Banyak mahasiswa lulus adalah", N_lulus)
