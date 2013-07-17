#largest palindrome made from the product of two 3-digit number
#find how to do it for 1-digit numbers
#9009 = 91*99
#i can find out if a number is a palindrome
#now i need to find out the largest palindrome thats a product of two 3-digit numbers
#answer should be 913,993 906609


#takes a number and converts to an array
def numToArray(x):
	data = []
	a = x/100000
	data.append(a)
	x -= a*100000
	b = x/10000
	data.append(b)
	x -= b*10000
	c = x/1000
	data.append(c)
	x -= c*1000
	d = x/100
	data.append(d)
	x -= d*100
	e = x/10
	data.append(e)
	x -= e*10
	data.append(x)
	return data

#takes an array and returns true if its a palindrome
def isPalindrome(a = []):
	if a[0] == 0 and a[1] == a[5] and a[2] == a[4]:
		return True
	elif a[0] == a[5] and a[1] == a[4] and a[2] == a[3]:
		return True
	else:
		return False
		

palindrome = 10001
x = 101
y = 101
val1 = x
val2 = y

while x < 1000:
	while y < 1000:
		if isPalindrome(numToArray(x*y)) and palindrome < (x*y):
			palindrome = x*y
			val1 = x
			val2 = y
		y += 1
	y = 101
	x += 1

print val1
print val2
print palindrome


#print data
#print data[1]


#between 100*100 and 999*999
#10000 and 1000000
#10k and 1000k
#example 9009
#9009%1000 = 9


