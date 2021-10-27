####PLOT 4

#source 

source("edaweek1.R")


# plot 4

###plot4

#export as png 

png(filename= "plot4.png",width = 480, height = 480, units = "px",res = 75)

par(mfrow = c(2,2))

#plot4.1 
plot(data$datetime,data$Global_active_power,type = "l",ylab = "Global Active Power(kilowatts)",xlab = "")

#plot 4.2 
plot(data$datetime,data$Voltage, xlab = "datetime",ylab = "Voltage", type = "l")

#plot 4.3 
plot(data$datetime,data$Sub_metering_1,type = "l",col = "black",ylab = "Energy sub metering", xlab = "")
lines(data$datetime,data$Sub_metering_2,type = "l",col = "red")
lines(data$datetime,data$Sub_metering_3,type = "l", col = "blue")
legend("topright",legend = c("Sub metering 1","Sub metering 2","Sub metering 3"),col = c("black","red","blue"),lty = 1)

#plot 4.4 
plot(data$datetime,data$Global_reactive_power,xlab = "datetime",ylab = "Global_reactive_power", type = "l")

dev.off()