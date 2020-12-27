data <- read.table("~/Documents/Coursera/Exploratory data analysis/ExData_Plotting1/household_power_consumption.txt", sep=";",header = TRUE)

data_plot <- subset(data,Date %in% c("1/2/2007","2/2/2007"))
data_plot$datetime <- strptime(paste(data_plot$Date,data_plot$Time,sep = " "),format = "%d/%m/%Y %H:%M:%S")

with(data_plot,plot(datetime,as.numeric(Global_active_power),type="l",xlab = "",ylab = "Global Active Power(kilowatts)"))

dev.copy(device = png,file = "plot2.png",width = 480, height = 480, units = "px")
dev.off()