A = int(input("Masukkan Nilai A:"))
B = int(input("Masukkan Nilai B:"))
C = int(input("Masukkan Nilai C:"))

if C>A:
    if A>B:
        print(C,A,B)
    else:
        print(C,B,A)

elif B>A:
    if A>C:
        print(B,A,C)
    else:
        (B,C,A)
else:#A>B :
    if B>C:
        print(A,B,C)
    else:
         print(A,C,B)
