N = int(input("Masukkan total hambatan:"))
sum=0
for i in range(1,N+1):
    R = int(input("Masukkan nilai hambatan ke-"+str(i)+":"))
    if R>0:
        sum = sum + R
        print("Nilai hambatan total yang disusun seri",sum)
    else:
        print("Hambatan total tak dapat dihitung")
