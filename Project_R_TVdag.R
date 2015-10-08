# use final commandline file
# create geolocation point for each line

# count number of points every 10 days
# create map for every 10 days

# install the mapping libraries 
install.packages(c("ggmap"))
# Load the mapping libraries
library(ggmap)
# load  map centered on postcode
qmap('1019,NL', zoom =17)

dataFile = "tvdag.txt"
# Read the tab-separated data from file:
data = read.csv(dataFile, stringsAsFactors=FALSE, sep = '\t')
#  add names to the columns for easier reference 
names(data) <- c("totalen", "postalcode")
data$postalcode 

# Get the geographic coordinates of the locations in the data set:(MAX 2500 per day)
coords <- geocode(data$postalcode[1:90], source="google")
write.csv(coords, file = "coordinatentvdag.csv")
# Add the longitude and latitude coordinates as columns to the data set:
data$lon <- coords$lon
data$lat <- coords$lat
data2<- data[1:90,]
data2$lon <- coords$lon
data2$lat <- coords$lat

SelfieMap = qmap('Nederland', zoom=7)
SelfieMap + geom_point(data = data2, aes(x = lon, y = lat, size = 5), color = "red", alpha=1)

