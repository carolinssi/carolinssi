import random
T = [0 for i in range(0,21)]
for i in range(0,21):
   T[i]=random.randint(10,101)
  #T[i] = int(input())
   print(i,T[i])

X = int(input("Masukkan nilai X sebagai bilangan pengali:"))
i=0
Q = [0 for i in range(0,21)]
for i in range(0,21):
      Q[i] = X*T[i]
      print(i,Q[i])
               
               
