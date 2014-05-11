# This source file is second  of the four source files to plot as per the project instructions

# set the working directory 

setwd("c:/work/expdata/exdata-data-household_power_consumption")


# read the subset data for the two days , This file was created by reading the subset data and 
# writing back as a csv file in the first assingment 

mysubsetData <- read.csv("subsetdata_household_power_consumption.csv")


#create a new data column of data and time 

mysubsetData$DateTime <- strptime(paste(mysubsetData$Date, mysubsetData$Time), format="%d/%m/%Y %H:%M:%S")


#Initialize the .png file for writing the plot to file 

png(file="plot2.png", width=480, height=480)
plot(mysubsetData$DateTime, mysubsetData$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")

dev.off()




