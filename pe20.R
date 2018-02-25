#sum of the digits of 100!
#I know R has a factorial function, but I wrote my own to see if
#I remembered how to write recursive functions


fact<-function(n){
	if(n==1){
		return(1)
	}else{
		return(n*fact(n-1))
	}
}

x<-fact(100)
check<-1
a<-0
b<-0
sum<-0
pwr<-140
while(pwr>0){
	check<-1
	b<-floor(x/10**pwr)
	print(x)
	x<-(x-b*(10**pwr))
	print(x)
	while(check==1){
		a<-b%%10
		sum<-sum+a
		b<-(b-a)/10
		if(b==0) check<-0	#if every 
	}
	pwr<-pwr-10
}
sum

x<-fact(100)

x<-fact(100)

x<-123456789123
check<-1
a<-0
b<-0
sum<-0
pwr<-5
check<-1
b<-floor(x/10**pwr)
print(x)
x-b*(10**pwr)
print(b)


