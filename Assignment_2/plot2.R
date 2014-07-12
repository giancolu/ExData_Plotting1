setwd("~/Scrivania/exploratory data/Assignment_2")
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")
NEI1 <- NEI[NEI$fips == "24510",]
pm25sumbal <- aggregate(Emissions ~ year, data = NEI1, sum)
png(filename = "plot2.png")
barplot(pm25sumbal$Emissions, names.arg = pm25sumbal$year, ylab = "Total PM 2.5 in Baltimore City, MD (tons)", xlab = "Year")
dev.off()
