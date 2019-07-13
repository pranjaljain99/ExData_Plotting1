> setwd("C:/Users/jpran/Downloads/Data Science Specializtion JHU")
> housedata <-read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings = "?")
> twodaydata <-rbind(housedata[housedata$Date=="1/2/2007",],housedata[housedata$Date=="2/2/2007",])
> datetime <- strptime(paste(twodaydata$Date, twodaydata$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

> c<-twodaydata$Global_active_power
> d<-as.numeric(as.character(c))
> p<-as.numeric(as.character(twodaydata$Voltage))
> q<-as.numeric(as.character(twodaydata$Global_reactive_power))

> par(mfrow=c(2,2))

> plot(datetime, d, type="l", xlab="", ylab="Global Active Power (kilowatts)")

> plot(datetime, p, type="l", xlab="datetime", ylab="Voltage")

> plot(datetime, twodaydata$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering",col="green",ylim=c(0,40))
> par(new=TRUE)
> plot(datetime, twodaydata$Sub_metering_2, type="l", xlab="", ylab="",col="red",ylim=c(0,40))
> par(new=TRUE)
> plot(datetime, twodaydata$Sub_metering_3, type="l", xlab="", ylab="",col="blue",ylim=c(0,40))
> legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1,col=c("green","red","blue"),cex=0.5)

> plot(datetime, q, type="l", xlab="datetime", ylab="Global_reactive_power")

> png(file="C:/Users/jpran/Downloads/Data Science Specializtion JHU/plot4.png",width=480, height=480)
