#PROGRAM SUHU BANDUNG

# KAMUS
# T: array[0..29] of int

# ALGORITMA

import random

# Isi array
T = [0 for i in range(0, 30)]
for i in range(0, 30):
    T[i] = random.randint(14*4, 35*4)/4

print(T)

min = T[0]
for i in range(1, 30):
    if T[i] < min:
        min = T[i]

print("Suhu minimum adalah:", min)


for i in range(0, 30):
    if T[i] >= 30:
        print("Pada tanggal", i+1, "suhu adalah:", T[i])

idx = 0
ketemu = False
while idx < 30 and not ketemu:
    if T[idx] < 15:
        print("Tanggal pertama kali suhu di bawah 15 derajat C:", idx+1)
        ketemu = True
    idx += 1

if not ketemu:
    print("Suhu tidak pernah di bawah 15 derajat celcius")

