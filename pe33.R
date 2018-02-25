#floor(i/j)==(i/j) && was on the right track, but
#it wasn't one of the criteria I needed

#There are exactly four non-trivial examples of this type of fraction, less than one in value, and containing two digits in the numerator and denominator.
#If the product of these four fractions is given in its lowest common terms, find the value of the denominator.

index<-c(10:99)
index<-index[which(index%%10!=0)]
index<-index[which(index%%11!=0)]
m<-matrix(0,ncol=4,nrow=3)
count<-1
for(i in index){
	for(j in index){
		if(j/i<1){	#floor(i/j)==(i/j) && was the error
			val<-contain.same.digit(i,j)
			val2<-contain.same.digit(j,i)
			if((val!=0 && (i/j==val || j/i==val2))){
				print(val)
				m[1,count]<-i
				m[2,count]<-j
				m[3,count]<-1/val
				count<-count+1
			}
		}
	}
}
m
apply(m,1,prod)
(.01 is the result for the product of the 4 fractions)
#16,64
#19,95
#49,98
#26,65 (this is the one that won't show

contain.same.digit<-function(i,j){
	if(j%%10==(floor(i/10)%%10)){
		return((i%%10)/(floor(j/10)%%10))
	}else if(i%%10==(floor(j/10)%%10)){
		return((floor(i/10)%%10)/(j%%10))
	}else{
		return(0)
	}
}
65/26
contain.same.digit(26,65)
contain.same.digit(49,98)
contain.same.digit(19,95)
contain.same.digit(16,64)

