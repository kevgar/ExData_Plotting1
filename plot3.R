# setwd("~/Dropbox/Coursera/ExploratoryAnalysis/Project1")
setwd("/Users/kgardner1/GitHub/ExData_Plotting1")

plot3 <- function() {
        png(file="plot3.png", width=480, height=480)
        plot(DT2$dateTime, DT2$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
        lines(DT2$dateTime, DT2$Sub_metering_2,col="red")
        lines(DT2$dateTime, DT2$Sub_metering_3,col="blue")
        legend("topright", 
                col=c("black","red","blue"),
                c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
                lty=c(1,1), lwd=c(1,1))
        dev.off()
}
plot3()
