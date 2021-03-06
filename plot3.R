d11<- read.table("~/household_power_consumption.txt", h=1, sep=";",na.strings="?")


d21<-d11[d11$Date=="1/2/2007"|d11$Date=="2/2/2007",]

d21$Global_active_power<-as.numeric(as.character(d2$Global_active_power))
d21$Date<-as.Date(d21$Date,format="%d/%m/%Y")
d21$Day<-weekdays(d21$Date)
d21$dt<-as.POSIXct(paste(d21$Date, d21$Time))


png(filename="plot3.png")
plot(d21$dt,d21$Sub_metering_1,type="n",ylab="Energy sub metering",xlab="")
lines(d21$dt,d21$Sub_metering_1)
lines(d21$dt,d21$Sub_metering_2,col="red")
lines(d21$dt,d21$Sub_metering_3,col="blue")
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1,col=c("black","red","blue"))
dev.off()
