####PLOT 3

#source 

source("edaweek1.R")


# plot 3

###plot3

#export as png 

png(filename= "plot3.png",width = 480, height = 480, units = "px")

plot(data$datetime,data$Sub_metering_1,type = "l",col = "black",ylab = "Energy sub metering", xlab = "")
lines(data$datetime,data$Sub_metering_2,type = "l",col = "red")
lines(data$datetime,data$Sub_metering_3,type = "l", col = "blue")
legend("topright",legend = c("Sub metering 1","Sub metering 2","Sub metering 3"),col = c("black","red","blue"),lty = 1)

dev.off()