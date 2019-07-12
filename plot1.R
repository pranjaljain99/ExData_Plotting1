> setwd("C:/Users/jpran/Downloads/Data Science Specializtion JHU")

> housedata <-read.table("household_power_consumption.txt", header=TRUE, sep=";")

> twodaydata <-rbind(housedata[housedata$Date=="1/2/2007",],housedata[housedata$Date=="2/2/2007",])

> twodaydata$Date <- as.Date(twodaydata$Date,"%d/%m/%Y")

> hist(as.numeric(twodaydata$Global_active_power), col="Red", main="Global Active Power", xlab="Global Active power (kilowatts)", ylab="Frequency")

> png(file="C:/Users/jpran/Downloads/Data Science Specializtion JHU/plott.png",width=480, height=480)
 
> dev.off()
