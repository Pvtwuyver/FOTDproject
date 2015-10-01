# use final commandline file
# create geolocation point for each line

# count number of points every 10 days
# create map for every 10 days

# install the mapping libraries 
install.packages(c("ggmap"))
# Load the mapping libraries
library(ggmap)
# load  map centered on Netherlands
qmap('Nederland', zoom =8)

dataFile = "cleandata2.txt"
# Read the tab-separated data from file:
data = read.csv(dataFile, stringsAsFactors=FALSE, sep = '\t')
#  add names to the columns for easier reference 
names(data) <- c("date", "postalcode")
data$postalcode

# Get the geographic coordinates of the locations in the data set:(MAX 2500 per day)
coords <- geocode(data$postalcode, source="google")

# Add the longitude and latitude coordinates as columns to the data set:
data$lon <- coords$lon
data$lat <- coords$lat

