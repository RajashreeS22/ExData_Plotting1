library(lubridate)
library(dplyr)
household_power_consumption <- read.table("C:/RDemo/Coursera-EDA/exdata_data_household_power_consumption/household_power_consumption.txt", header=FALSE, sep=";")
View(household_power_consumption)
head(household_power_consumption)

household_power_consumption$V1<- as.Date.character (household_power_consumption$V1,format = "%d/%m/%Y")
class(household_power_consumption$V1)
mydata<- subset(household_power_consumption,household_power_consumption$V1>="2007-02-01" & household_power_consumption$V1<="2007-02-02")
View(mydata)

write.csv(mydata,"mydata.csv",row.names = FALSE)
mydata$V3<-as.integer(mydata$V3)
class(mydata$V3)
png(file="plot1.png",width=480, height=480)
hist(mydata$V3,main = "Global Active Power",xlab = "Global Active Power(kilowatts)", border="black",col="red") 
dev.off()

