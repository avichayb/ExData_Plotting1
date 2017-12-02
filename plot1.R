require(sqldf)
tbl<-read.csv.sql("household_power_consumption.txt","select * from file where Date ='1/2/2007' or Date ='2/2/2007'",sep=";")

#plot 1
png(filename="Plot1.png", width=480,height = 480, bg="white")
par(mar=c(5,6,4,1)+.1)
hist(tbl$Global_active_power,xlab="Global Active Power (killowatts)",col="red")
dev.off()