#given a 20x20 grid, find the greatest product of four adjacent numbers
#up,down,left,right,diagionaly

#Answer: 70600674
setwd('C:\\Users\\chris\\Desktop\\Job\\project euler')
data <- read.table("pe11_data.txt")


left<-function(d,i,j){
	return(d[i,j]*d[i,j+1]*d[i,j+2]*d[i,j+3])

}
down<-function(d,i,j){
	return(d[i,j]*d[i+1,j]*d[i+2,j]*d[i+3,j])
}
diagltr<-function(d,i,j){
	return(d[i,j]*d[i+1,j+1]*d[i+2,j+2]*d[i+3,j+3])
}

diagrtl<-function(d,i,j){ #diagional from right to left
	return(d[i,j]*d[i+1,j-1]*d[i+2,j-2]*d[i+3,j-3])
}

i<-1
j<-1
max_val<-0
for(i in 1:20){
	for(j in 1:20){
		if(j<=17) max_val<-max(max_val,left(data,i,j))
		if(i<=17) max_val<-max(max_val,down(data,i,j))
		if(i<=17 && j<=17) max_val<-max(max_val,diagltr(data,i,j))
		if(i<=17 && j>=4) max_val<-max(max_val,diagrtl(data,i,j))
	}
}
print(max_val)












