# setwd("~/Dropbox/Coursera/ExploratoryAnalysis/Project1")
setwd("/Users/kgardner1/GitHub/ExData_Plotting1")
plot1 <- function(){
        png(file="plot1.png", width=480, height=480)
        hist(DT2$Global_active_power, main="Global Active Power",col="red", xlab="Global Active Power (kilowatts)", ylab="Frequency")
        dev.off()
}
plot1()
