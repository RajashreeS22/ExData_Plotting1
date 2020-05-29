
View(mydata)
x<-as.POSIXct(paste(mydata$V1, mydata$V2), format="%Y-%m-%d %H:%M:%S")
mydata$V3=as.integer(mydata$V3)
png(file="plot2.png",width=480, height=480)
plot(x,mydata$V3,type = "l",ylab = "Global Active Power(kilowatts)",lty = 1)
lines(x,mydata$V3,lty = 1, lwd = 1)
dev.off()