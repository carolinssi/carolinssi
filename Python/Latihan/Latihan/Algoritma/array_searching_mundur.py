#PROGRAM SEARCHING MUNDUR ARRAY
# mencari indeks terbesar kemunculan suatu unsur

# KAMUS
# T: array[0..N-1] of int
# X: int
# idx: int
# ketemu: bool

# ALGORITMA

import random

N = int(input("Masukkan ukuran array T: "))

# Isi array
T = [0 for i in range(0, N)]
for i in range(0, N):
#    T[i] = int(input("Masukkan data ke-" + str(i) + ": "))
    T[i] = random.randint(-100, 100)

print(T)

X = int(input("Masukkan unsur X: "))

idx = N-1
ketemu = False
while idx >= 0 and not ketemu:
    if T[idx] == X:
        print("Kemunculan pertama X ada di indeks", idx)
        ketemu = True
    idx -= 1

if not ketemu:
    print("X tidak ditemukan di T")

