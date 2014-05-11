# This project is the first of the four source files to plot as per the project instructions
# This program reads the requried data and writes it to .csv file for further work

# set the working directory 

setwd("c:/work/expdata/exdata-data-household_power_consumption")

# The source of this selective reading was obtained from the discussion forums of the class Exploring Data
# Selectively read the required data for the two dates 

mySql <- "SELECT * from file WHERE Date = '1/2/2007' OR Date = '2/2/2007'"
myFile <- "household_power_consumption.txt"
myData <- read.csv2.sql(myFile,mySql)

# write the selected date to a .csv file for use of rest of the project assingment plots

write.csv(myData, file="subsetdata_household_power_consumption.csv")

#Initialize the .png file for writing the plot to file 

png(file="plot1.png", width=480, height=480)
hist(myData$Global_active_power, col="Red", main="Global Active Power", xlab = "Global Active Power (Kilowatts)")
dev.off()




