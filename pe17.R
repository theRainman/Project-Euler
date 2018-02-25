#need to write out the number of digits of all numbers between 1 and 1000
#one hundred and twenty-five for example (we count the and and ignore the hypens and white spaces)

#answer: 21124
#this one took a while to finish
#I was able to write the basic functions in under 30 minutes
#but I forgot to account for many of the special cases, and
#and an error in my code ignored the number 100

ones<-function(n){
	if(n==1||n==2||n==6){
		return(3)
	}else if(n==4||n==5||n==9){
		return(4)
	}else if(n==0){
		return(0)
	}else{
		return(5)
	}
}


tens<-function(n){
	x<-floor(n/10)
	val<-0
	if(x==1){
		return(oths(n))
	}else if(x==7){
		val<-7
	}else if(x==4||x==5||x==6){
		val<-5
	}else if(x!=1){
		val<-6
	}
	val<-val+ones(n%%10)
	return(val)
}


oths<-function(n){
	if(n==10){
		return(3)
	}else if(n==11||n==12){
		return(6)
	}else if(n==15||n==16){
		return(7)
	}else if(n==17){
		return(9)
	}else{
		return(8)
	}
}

word<-function(n){
	val<-0
	track<-0
	if(n==1000){
		return(11)	#one thousand is 11 letters long
	}else if((n/100)>=1){	#if the number has hundreds place
		val<-ones(floor(n/100))+7	# 7 digits in hundred
		track<-1		#if the number has a value of 100, will add the count of and (3 characters)
	}
	if(n%%100>=10){	#deals with all values between zero and 1 hundred
		val<-val+tens(n%%100)+3*track
	}else if(n%%10>0){
		val<-val+ones(n%%10)+3*track
	}
	return(val)
}


count<-0
for(i in 1:1000){
	count<-count+word(i)
}
count

test[,5]

word(342)
word(115)
word(1000)

nine hundred and ninety nine






