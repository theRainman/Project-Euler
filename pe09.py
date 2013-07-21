#A Pythagorean triplet is a set of three natural numbers, a  b  c, for which,

#a2 + b2 = c2
#For example, 32 + 42 = 9 + 16 = 25 = 52.
#c = 415

#There exists exactly one Pythagorean triplet for which a + b + c = 1000.
#Find the product abc.
#200
#375
#425.0
#31875000.0


import math

def findC(a,b):
	c = math.sqrt((a**2)+(b**2))
	if (a+b+c) == 1000:

		return c
	else:
		return 0

a = 0
b = 0
c = 0
x = 0
y = 0
z = 0

while a < 500:
	a += 1
	b = 1
	while b < 500:
		c = findC(a,b)
		if c != 0:
			x = a
			y = b
			z = c
			print a
			print b
			print c
		b += 1		
		
print x*y*z		