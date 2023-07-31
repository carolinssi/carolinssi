import numpy as np
import matplotlib.pyplot as plt

def fungsi(x,y):
    output = -2 * np.power(x,3) + 12 * np.power(x,2) - 20 * x + 8.5
    return output

dx = 0.5
bawah = 0
atas = 4
n = (int)((atas-bawah) / dx) + 1

x = np.linspace(0,4,num=n)
y = np.array([1.0, 3.21875, 3.0, 2.21875, 2.0, 2.71875, 4.0, 4.71875, 3.0])

print(x)

#-------------------------------------------
#Euler
ye = np.zeros(n)
ye[0] = 1
for i in range (n-1):
    ye[i+1] = ye[i] + dx * fungsi(x[i], ye[i])

print(ye)
#-------------------------------------------

#-------------------------------------------
#Heun
yh = np.zeros(n)
yh[0] = 1
for i in range(n-1):
    k1 = fungsi(x[i], yh[i])
    k2 = fungsi(x[i]+dx, yh[i]+dx * k1)
    yh[i+1] = yh[i] + dx * (k1 + k2) / 2;

print(yh)
#-------------------------------------------
#-------------------------------------------
#Runge Kutta
#-------------------------------------------
yrk = np.zeros(n)
yrk[0] = 1
for i in range (n-1):
    k1 = fungsi(x[i], yrk[i])
    k2 = fungsi(x[i] + 0.5 * dx, y[i] + 0.5 * dx * k1)
    k3 = fungsi(x[i] + 0.5 * dx, y[i] + 0.5 * dx * k2)
    k4 = fungsi(x[i] + dx, y[i] + dx * k3)
    yrk[i+1] = yrk[i] + ((k1 + 2 * k2 + 2 * k3 + k4) * dx)/6

print(yrk)
#-------------------------------------------

fig, ax = plt.subplots()
ax.plot(x,y,"k", label = "analitik")
ax.plot(x,ye,"r", label = "Euler")
ax.plot(x,yh,"b", label = "Heun")
ax.plot(x,yrk,"g--", label = "Runge Kutta")
legend = ax.legend()
plt.show()