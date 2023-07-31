a = 0
h = 0.1
b = 1.5

x = a
y = 1

print ('x /t y')
print(x, '/t',y)

while x <b:
   y = y + (x+y) *h
   x = x +h
   print (x,'/t',y)
