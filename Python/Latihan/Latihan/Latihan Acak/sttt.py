BA = [0 for i in range (0,20)]
BA[0]=0
for i in range(1,20):
    BA[i]=BA[i-1]+5


jumlah = 0
for i in range(0,20):
    jumlah=jumlah+BA[i]
print (jumlah)
