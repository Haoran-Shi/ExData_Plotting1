data <- read.table("~/Documents/Coursera/Exploratory data analysis/ExData_Plotting1/household_power_consumption.txt", sep=";",header = TRUE)

data_plot <- subset(data,Date %in% c("1/2/2007","2/2/2007"))
with(data_plot,hist(as.numeric(Global_active_power),main = "Global Active Power",xlab = "Global Active Power(kilowatts)",col = "red"))
dev.copy(device = png,file = "plot1.png",width = 480, height = 480, units = "px")
dev.off()