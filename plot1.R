####PLOT 1 

#soure 

source("edaweek1.R")


# plot 1
###plot1
plot1 <- hist(data$Global_active_power,breaks = 12, col = "red", xlab ="Global Active Power (kilowatts)", main = "Global Active Power")

#export as png 

png(filename= "plot1.png",width = 480, height = 480, units = "px")
hist(data$Global_active_power,breaks = 12, col = "red", xlab ="Global Active Power (kilowatts)", main = "Global Active Power")
dev.off()

