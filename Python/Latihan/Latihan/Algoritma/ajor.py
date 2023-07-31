#NIM/NAMA       : 16019167/CAROLINA SINAGA
#TANGGAL        : SELASA,12 NOVEMBER 2019
#DESKRIPSI      : Program yang mampu  mengolah data .csv dan memberikan output yang diinginkan

import pandas as pd
df3 = pd.read_csv("D:/fmipa-fghij.csv")
print("Banyaknya data:",len(df3))
print()
print("10 data pertama:")
print(df3[:10])
print()
print("Data ke 50 sampai 60")
print(df3[50:61])
print()
print(df3["fakultas"].value_counts())

c=df3["nilai_fis"].corr(df3["nilai_kim"])
print(c)
if c==1:
    print("Perfect Positive Correlation")
elif c<1 and c>=0.8:
    print("High Positive Correlation")
elif c<0.8 and c>=0.5:
    print("Low Positive Correlation")
elif c==-1:
    print("Perfect Negative Correlation")
elif c<1 and c>=0.8:
    print("High Negative Correlation")
elif c<0.8 and c>=0.5:
    print("Low Negative Correlation")

