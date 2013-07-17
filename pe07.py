#what is the 10001st prime number
#2,3,5,7,11,13
#104761

primes = []
primes.append(2)
primes.append(3)

def isPrime(x,y):
    i = 0
    #print len(y)
    while i < len(y):
        if x%y[i] == 0:
            return False
        i += 1
    return True

num = 3
i = 3

while i <= 10001:
    num += 2
    if isPrime(num, primes):
        primes.append(num)
    	i += 1


print num
