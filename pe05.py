#2520 evenly divisible by all numbers 1 thru 10
#what is the smallest possible positive number evenly divisible by all numbers 1 thru 20

#what do we know
#must have ones digit as 0 because of 5s and 2s
#find numbers that 19 and 20 both divide into
#232792560

def notDiv(x):
    i = 11

    while i <=20:
        if x%i == 0:
            i += 1
        else:
            return True
    if i == 21:
        return False
    
        

num = 20

while notDiv(num):
    num += 20

print num
