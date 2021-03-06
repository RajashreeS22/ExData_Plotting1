x<-as.POSIXct(paste(mydata$V1, mydata$V2), format="%Y-%m-%d %H:%M:%S")
png(file="plot3.png",width=480, height=480)
plot(x,mydata$V6,type = "l",ylab = "Energy Meter Redading",lty = 1)
lines(x,mydata$V6,lty = 1, lwd = 1,col="black")
lines(x,mydata$V7,lty = 1, lwd = 1,col="red")
lines(x,mydata$V8,lty = 1, lwd = 1,col="blue")
legend("topright", legend=c("sub_metering_1", "sub_metering_2","sub_metering_3"),col=c("black","red", "blue"),lty=c(1,1,1))
dev.off()