#find difference between 1^2+2^2+...+100^2 and (1+2+..+100)^2


def sumOfSquares(x):
    i = 1
    sum = 0
    while i <= x:
		sum += i**2
		i += 1
    return sum

def squareOfSums(x):
    sum = x*(x+1)/2
    sum = sum**2
    return sum

val = 100
print sumOfSquares(val)
print squareOfSums(val)
print (squareOfSums(val) - sumOfSquares(val))
    
