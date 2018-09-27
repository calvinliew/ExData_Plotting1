setwd("C:/Coursera/Exploratory data analysis")
data <- read.table("./household_power_consumption.txt", header = TRUE ,stringsAsFactors = FALSE,  sep = ";", dec = ".")

subdata <- subset(data, data$Date== "1/2/2007"| data$Date=="2/2/2007")
datetime <- strptime(paste(subdata$Date,subdata$Time, sep= " "), format = "%d/%m/%Y %H:%M:%S")

Globalactivepower <- as.numeric(subdata$Global_active_power)                 
plot(datetime,Globalactivepower, type= "l", xlab= "", ylab= "Global Active Power(kilowatts)")


