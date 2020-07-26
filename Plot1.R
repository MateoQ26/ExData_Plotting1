#
setwd("D:/Users/Usuario/Desktop/Data Science/4to. Exploratory Data Analysis/L - W1/Proyecto W1")
#
#
# Unzip the .zip file:
# 
unzip(zipfile = "./data_household_power_consumption.zip", 
      exdir = "./household_power_consumption")
#
#
# Reading file:
#
data_1 <- read.table('./household_power_consumption/household_power_consumption.txt',
                     skip=1,
                     sep=";")
#
#
names(data_1)
#
# Change the names:
#
#
names(data_1) <- c('Date',
                   'Time',
                   'Global_active_power',
                   'Global_reactive_power',
                   'Voltage',
                   'Global_intensity',
                   'Sub_metering_1',
                   'Sub_metering_2',
                   'Sub_metering_3')
#
#
# Subsetting the dataset:
# We will only be using data from the dates 2007-02-01 and 2007-02-02.
#
#
subdata <- subset(data_1, 
                  data_1$Date=="1/2/2007" | data_1$Date =="2/2/2007")
#
#
# Convert to numeric class
#
subdata$Global_active_power <- 
        as.numeric(as.character(subdata$Global_active_power))
#
#
# Plot 1:
#
#
png('Plot1.png', width=480, height=480, units = "px")
#
hist(subdata$Global_active_power, 
     col='red', 
     main='Global Active Power', 
     xlab='Global Active Power (kilowatts)')
#
dev.off()