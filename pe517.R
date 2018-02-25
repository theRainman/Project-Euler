

#Need to compute the primes between two values


g<-function(a,x){
	if(x>=a){
		return(g(a,x-1)+g(a,x-a))
	}else{
		return(1)
	}
}




