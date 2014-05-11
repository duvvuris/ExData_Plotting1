# This is the source file for the thrid plot in the project

# set the working directory 

setwd("c:/work/expdata/exdata-data-household_power_consumption")


# read the subset data for the two days , This file was created by reading the subset data and 
# writing back as a csv file in the first assingment 

mysubsetData <- read.csv("subsetdata_household_power_consumption.csv")


#create a new data column of data and time 

mysubsetData$DateTime <- strptime(paste(mysubsetData$Date, mysubsetData$Time), format="%d/%m/%Y %H:%M:%S")


#Initialize the .png file for writing the plot to file 

png(file="plot3.png", width=480, height=480)

plot(mysubsetData$DateTime, mysubsetData$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(mysubsetData$DateTime, mysubsetData$Sub_metering_2, col ="Red")
lines(mysubsetData$DateTime, mysubsetData$Sub_metering_3, col ="Blue")
legend("topright", lty= 1, col = c("black","red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

dev.off()

