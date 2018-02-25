#Given a 5x5 spiral as below
#find the sum of the diag for a 1001x1001
#21 22 23 24 25
#20  7  8  9 10
#19  6  1  2 11
#18  5  4  3 12
#17 16 15 14 13
#
#The base (or the value in the lower right for a given matrix) grows at a certain rate
#increment increases by 2 for each added spiral
#we cound nxn to be the (n-1)/2 iteration, so the 101x101 would be the 50th iteration
#
#Answer: 669171001


base<-function(n){
	if(n>1){
		return(base(n-1)+(2+8*(n-1)))
	}else{
		return(3)
	}
}

diag<-function(n){
	return(base(n)*4+(2*n)*6)
}

sum<-1	#we ignore the center in the functions, and add it manually
for(i in 1:500){	#500 correspons to 1001x1001 spiral (1001-1)/2
	sum<-sum+diag(i)
}
sum

