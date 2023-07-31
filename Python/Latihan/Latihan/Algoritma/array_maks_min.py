#PROGRAM MAKS MIN ARRAY
# mencari unsur terbesar dan terkecil dalam array

# KAMUS
# N: int
# T: array[0..N-1] of int
# maks: int
# min: int

# ALGORITMA

import random

N = int(input("Masukkan ukuran array T: "))

# Isi array
T = [0 for i in range(0, N)]
for i in range(0, N):
#    T[i] = int(input("Masukkan data ke-" + str(i) + ": "))
    T[i] = random.randint(-100, 100)

maks = T[0]
min = T[0]
for i in range(1, N):
    if T[i] > maks:
        maks = T[i]
    if T[i] < min:
        min = T[i]

print("Unsur terbesar di array T adalah:", maks)
print("Unsur terkecil di array T adalah:", min)
