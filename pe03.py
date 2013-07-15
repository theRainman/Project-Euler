# The prime factors of 13195 are 5, 7, 13 and 29.
# 
# What is the largest prime factor of the number 600851475143 ?

def isPrime(n):
	#between 2 and n/2
	a = 2
	while a <= n/2:
		if n%a == 0:
			return False
		a += 1
	return True

#finds next prime
def findNextPrime(n):
	a = n+1
	state = True
	while state:
		if isPrime(a):
			state = False
			return a
		else:
			a += 1


num = 600851475143
currentPrime = 2

primes = []
#primes.append(2)

while num > 1:
	if num%currentPrime == 0:
		primes.append(currentPrime)
		num = num/currentPrime
	else:
		currentPrime = findNextPrime(currentPrime)

print primes

#method to get next prime
#use mod to break it down
