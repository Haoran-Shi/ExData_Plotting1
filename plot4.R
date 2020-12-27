data <- read.table("~/Documents/Coursera/Exploratory data analysis/ExData_Plotting1/household_power_consumption.txt", sep=";",header = TRUE)

data_plot <- subset(data,Date %in% c("1/2/2007","2/2/2007"))
data_plot$datetime <- strptime(paste(data_plot$Date,data_plot$Time,sep = " "),format = "%d/%m/%Y %H:%M:%S")

png(filename = "plot4.png")

par(mfrow = c(2,2))
with(data_plot,{
  plot(datetime,as.numeric(Global_active_power),type="l",xlab = "",ylab = "Global Active Power")
  plot(datetime,as.numeric(Voltage),type = "l",ylab = "Voltage")
  plot(datetime,as.numeric(Sub_metering_1),type="n",xlab = "",ylab = "Energy sub metering")
  lines(datetime,as.numeric(Sub_metering_1))
  lines(datetime,as.numeric(Sub_metering_2),col="red")
  lines(datetime,as.numeric(Sub_metering_3),col="blue")
  legend("topright",lwd=1,col = c("black","red","blue"),legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),bty = "n")
  plot(datetime,as.numeric(Global_reactive_power),type="l",ylab = "Global_reactive_power")
})
dev.off()