setwd("E:/S/Coursera/DS-JHU/4Eploratory Data Analysis/project 1")

# DOWNLOADING THE DATA FILE
f1 <- file("household_power_consumption.txt")

# READING THE DATA FILE
f1hist <- read.table(text=grep("^[1,2]/2/2007",readLines(f1),value=TRUE),col.names=c("Date", "Time", "Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3"),header=TRUE,sep=";")

# PLOT1
plot1 <- hist(f1hist$Global_active_power,col="red",main=paste("Global Active Power"),xlab = "Global Active Power(kilowatts)")

