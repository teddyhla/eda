#################TASKS#
################


# task1 valid github url containing repository
# task2 need to contain commit to the repo
# task3 are there plot files
# task4 are the plot files correct
# task5 correct Rcodes for each plot files
# note for each plot need to save it to a PNG file, with width and height - 480pixels
#name in plot 1.pmg 

# size of df = 2,075,259 rows and 9 columns would require 142 MB 

######LOAD libraries and data####
library(tidyverse)
library(ggplot2)

df <- read.table("household_power_consumption.txt",sep = ";",header = TRUE,na.strings = "?")

#####Basic cleaning####
#ensure date and time in correct format
df$Date <- as.Date(df$Date,"%d/%m/%Y")
df$datetime <- paste(df$Date,df$Time)
df$datetime <- strptime(df$datetime,"%Y-%m-%d %H:%M:%S")

## we are only interested in data between 2007-02-01 and 2007-02-02
#data <- subset(df, Date )
data <- df[df$Date >= "2007-02-01" & df$Date <= "2007-02-02",]
rm(df)
##we remove the large datasets
