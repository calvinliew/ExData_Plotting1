setwd("C:/Coursera/Exploratory data analysis")
data <- read.table("./household_power_consumption.txt", header = TRUE ,stringsAsFactors = FALSE,  sep = ";", dec = ".")

subdata <- subset(data, data$Date== "1/2/2007"| data$Date=="2/2/2007")
datetime <- strptime(paste(subdata$Date,subdata$Time, sep= " "), format = "%d/%m/%Y %H:%M:%S")

submetering1 <- as.numeric(subdata$Sub_metering_1)
submetering2 <- as.numeric(subdata$Sub_metering_2)
submetering3 <- as.numeric(subdata$Sub_metering_3)

plot(datetime, submetering1, type="l", xlab= "", ylab= "Energy sub metering")
lines(datetime, submetering2, type="l", col="red")
lines(datetime, submetering3, type = "l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black","red","blue"), lty=1,lwd=1)

png(filename = "plot3.png", width = 480, height = 480)
dev.off()