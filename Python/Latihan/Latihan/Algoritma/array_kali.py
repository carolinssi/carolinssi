#PROGRAM KALI ARRAY
# ......

# KAMUS
# T: array[0..19] of int
# X: int

# ALGORITMA

import random

# Isi array
T = [0 for i in range(0, 20)]
for i in range(0, 20):
#    T[i] = int(input("Masukkan data ke-" + str(i) + ": "))
    T[i] = random.randint(-100, 100)

print("Nilai array T sebelum dikalikan X")
for i in range(0, 20):
    print(i, T[i])

X = int(input("Masukkan nilai X: "))
for i in range(0, 20):
    T[i] = X*T[i]


print("Nilai array T sesudah dikalikan X")
for i in range(0, 20):
    print(i, T[i])
