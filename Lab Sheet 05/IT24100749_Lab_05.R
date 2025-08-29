setwd("C:\\Users\\USER\\Desktop\\IT24100749_Lab_05")

Delivery_Times <- read.table("Exercise - Lab 05.txt",header=TRUE,sep=",")

histogram <- hist(Delivery_Times$Delivery_Time_.minutes.,main="Histogram for Delivery Times"
                  ,breaks=seq(20,70,length=10),right=FALSE)


breaks <- round(histogram$breaks)
freq <- histogram$counts
mids <- histogram$mid
classes <- c()
for(i in 1:length(breaks)-1){
  classes[i] <- paste0("[",breaks[i],",",breaks[i+1],")")
}

cbind(Classes = classes, Frequency = freq)
lines(mids,freq)
plot(mids, freq, type = 'b', main = "Cumulative Frequency Polygon (Ogive) of Delivery Times",
     xlab="Delivery Time (minutes)",ylab="Cumulative Frequency", ylim=c(0,max(freq)))