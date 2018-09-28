setwd("C:/Coursera/Exploratory data analysis")
data <- read.table("./household_power_consumption.txt", header = TRUE ,stringsAsFactors = FALSE,  sep = ";", dec = ".")

subdata <- subset(data, data$Date== "1/2/2007"| data$Date=="2/2/2007")
subdatatime <- strptime(subdata$Time, format = "%H:%M:%S" )
subdatadate <- as.Date(subdata$Date, format = "%d/%m/%Y")

hist(as.numeric(subdata$Global_active_power),xlab ="Global Active Power(kilowatts)",  ylab= "Frequency",col="red", main = "Global Active Power")

png(filename = "plot1.png", width = 480 , height = 480)
dev.off()
