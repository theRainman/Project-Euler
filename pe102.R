#given a txt file filled with coordinates for triangles
#give the number of triangles that contain the origin (0,0)

tri<-matrix(c(-340,495,-153,-910,835,-947),ncol=2,nrow=3,byrow=TRUE)
(tri[1,2]-tri[2,2])/(tri[1,1]-tri[2,1]) #a to b
(tri[2,2]-tri[3,2])/(tri[2,1]-tri[3,1]) #b to c
(tri[1,2]-tri[3,2])/(tri[1,1]-tri[3,1]) #a to c







