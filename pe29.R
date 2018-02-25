


#99 numbers, each to 99 different powers
#99^2 #9801
primes<-c(2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97)
length(primes) #25
length(seq(4,100,3))	#50
max(which(primes*2<=100)	#in this case 4^47 can be respresented by 2^(2*47)
#the above tells us that 15 numbers

100/2	#50-1 numbers in 4 can be represented by 2
floor(100/3)	#33-1 numbers represented by 9 can be represented by 3
100/4		#25-1 numbers rep by 8 can be represented by 2

class(as.integer(2**4))

is.integer(2)
class((27**(1/2)))

multiples<-0
not.primes<-c(1:100)
not.primes[c(1,primes)]<-0
not.primes<-not.primes[which(not.primes!=0)]
for(i in not.primes){
	for(j in 2:50){
		if((floor(i**(1/j))==(i**(1/j)))==1){	#if the number can be expressed as a power of a lower number (ie 4 represented as 2**2
			multiples<-multiples+(floor(100/j)-1)
			print(j)
		}
	}
	print(i)
	print(multiples)
}
9801-multiples

for(i in primes) 