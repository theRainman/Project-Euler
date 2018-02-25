#how many combinations of n choose k exist, st its greater than 1million
#for 1<=n<=100 and k<=n
#only need to account from 1 to n/2, since n choose k equals n choose (n-k)
#and how many times does (n choose k) >1000000 #not necessilarily distinct
#solution: 4075


count<-0
for(n in 23:100){
	max.value.checked<-floor(n/2)
	for(k in 0:max.value.checked){
		if(choose(n,k)>1000000){
			count<-count+(n+1-2*k)
			print(k)
			break
		}
	}
}
count
for(i in 1:50){
	print(choose(i,floor(i/2)))
}
#23 is the first value of n where n choose k exceeds 1million
choose(23,c(0:23))
4/24 are above 1 mil
23+1

