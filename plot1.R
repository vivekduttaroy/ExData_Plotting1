d11<- read.table("~/household_power_consumption.txt", h=1, sep=";",na.strings="?")


d21<-d11[d11$Date=="1/2/2007"|d11$Date=="2/2/2007",]
d21$Global_active_power<-as.numeric(as.character(d2$Global_active_power))
png("plot1.png")
hist(d21$Global_active_power,col="red",xlab="Global Active Power",main="Global Active Power")
dev.off()
getwd()
