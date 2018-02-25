# -*- coding: utf-8 -*-
"""
Created on Mon Oct 30 06:33:01 2017

@author: chris
"""

#sum of all primes below 2 million

#goal would be to count all the primes below 2 million, add them to an array
#then sum the entire array
#


#this whole series of code is highly inefficent for this problem
#it tries to brute force for up to 2 million
#need to implement Sieve of Eratosthenes
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
i = 1000001

while i <= 2000000:
    num += 2
    if isPrime(num, primes):
        primes.append(num)
    i += 1


print(primes.pop())