> setwd("C:/Users/jpran/Downloads/Data Science Specializtion JHU")

> housedata <-read.table("household_power_consumption.txt", header=TRUE, sep=";")

> twodaydata <-rbind(housedata[housedata$Date=="1/2/2007",],housedata[housedata$Date=="2/2/2007",])

> datetime <- strptime(paste(twodaydata$Date, twodaydata$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

> c<-twodaydata$Global_active_power

> d<-as.numeric(as.character(c))

> plot(datetime, d, type="l", xlab="", ylab="Global Active Power (kilowatts)")

> png(file="C:/Users/jpran/Downloads/Data Science Specializtion JHU/plot2.png",width=480, height=480)
 
> dev.off()
