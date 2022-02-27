##PROJECT 1 EXPLORATORY DATA ANALYSIS

##plot2

#Setting working directory
setwd("D:/Rstudio-coursera/Exploratory Data Analysis projects/ExData_Plotting1")

#Reading data
power <- read.table("household_power_consumption.txt",skip=1,sep=";")

#Naming data
names(power) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")

#subsetting data 
subpower <- subset(power, power$Date == "1/2/2007" | power$Date == "2/2/2007")

subpower$Date <- as.Date(subpower$Date, format = "%d/%m/%Y")

subpower$Time <- strptime(subpower$Time, format = "%H:%M:%S")

subpower[1 : 1440, "Time"] <- format(subpower[1 : 1440, "Time"], "2007-02-01 %H:%M:%S")

subpower[1441 : 2880, "Time"] <- format(subpower[1441 : 2880, "Time"], "2007-02-02 %H:%M:%S")

png("plot2.png", width=480, height=480)


#plotting using hist() function
plot(subpower$Time, as.numeric(as.character(subpower$Global_active_power)), type = "l", xlab = "", ylab = "Global Active Power(Kilowatts)")


dev.off()


