####PLOT 2

#source 

source("edaweek1.R")


# plot 2

###plot2
plot2 <- plot(data$datetime,data$Global_active_power,type = "l",ylab = "Global Active Power(kilowatts)",xlab = "")
#export as png 

png(filename= "plot2.png",width = 480, height = 480, units = "px")
plot(data$datetime,data$Global_active_power,type = "l",ylab = "Global Active Power(kilowatts)",xlab = "")
dev.off()