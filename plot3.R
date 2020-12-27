data <- read.table("~/Documents/Coursera/Exploratory data analysis/ExData_Plotting1/household_power_consumption.txt", sep=";",header = TRUE)

data_plot <- subset(data,Date %in% c("1/2/2007","2/2/2007"))
data_plot$datetime <- strptime(paste(data_plot$Date,data_plot$Time,sep = " "),format = "%d/%m/%Y %H:%M:%S")

png(filename = "plot3.png")
with(data_plot,plot(datetime,as.numeric(Sub_metering_1),type="n",xlab = "",ylab = "Energy sub metering"))
lines(data_plot$datetime,as.numeric(data_plot$Sub_metering_1))
lines(data_plot$datetime,as.numeric(data_plot$Sub_metering_2),col="red")
lines(data_plot$datetime,as.numeric(data_plot$Sub_metering_3),col="blue")
legend("topright",lwd=1,col = c("black","red","blue"),legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

dev.off()