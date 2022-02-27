##PROJECT 1 EXPLORATORY DATA ANALYSIS

##plot 1


#Setting working directory
setwd("D:/Rstudio-coursera/Exploratory Data Analysis projects/ExData_Plotting1")

#Reading data
power <- read.table("household_power_consumption.txt",skip=1,sep=";")

#Naming data
names(power) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")

#subsetting data 
subpower <- subset(power, power$Date == "1/2/2007" | power$Date == "2/2/2007")

png("plot1.png", width=480, height=480)

#plotting using hist() function
hist(as.numeric(as.character(subpower$Global_active_power)), col = "red", main = "Global Active Power", xlab = "Global Active Power(kilowatts)")

dev.off()


