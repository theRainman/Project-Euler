#n->n/2 (if n is even)
#n->3n+1 (if n is odd)
#This sequence is thought to always end in 1
#Which starting number (under 1 million) produces the longest chain

#create function that does the chain
#add a count to that function
#answer: 837799
#this code takes a long time to run on slower machines


chain<-function(n){
	count<-0
	while(n!=1){
		if(n%%2==0){
			n<-n/2
		}else{
			n<-3*n+1
		}
		count<-count+1
	}
	return(count)
}

count<-1
val<-1
for(i in 1:1000000){
	t<-chain(i)
	if(t>count){
		count<-t
		val<-i
	}
}


for(j in 1:50) print(chain(j))




