setwd("E:/S/Coursera/DS-JHU/4Eploratory Data Analysis/project 1")

# READING THE DATA FILE
f2hist <- read.csv("household_power_consumption.txt",header=TRUE,sep=";")
f2hist$Date <- as.Date(f2hist$Date,format="%d/%m/%Y")
data <- subset(f2hist,subset=(Date>="2007-02-01")&(Date<="2007-02-02"))

datetime <- paste(as.Date(data$Date), data$Time)
data$Datetime <- as.POSIXct(datetime)

par(mfrow=c(2,2),mar=c(4,4,2,1),oma=c(0,0,2,0))

# PLOT3
with({plot(data$Global_active_power,data$Datetime,type="l",ylab="Global Active Power",xlab="")
  plot(data$Voltage,data$Datetime,type="l",ylab="Voltage",xlab="datetime")
  plot(data$Sub_metering_1,data$Datetime,type="l",ylab="Energy Sub Metering",xlab="")
  lines(data$Sub_metering_2,data$Datetime,col='red')
  lines(data$Sub_metering_3,data$Datetime,col='blue')
  legend("topright", col = c("black", "red", "blue"), lty = 1, lwd = 2, 
         legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
  plot(data$Global_reactive_power,data$Datetime,type="l",ylab="Global_reactive_power",xlab="datetime")
  })


