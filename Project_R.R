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

# show total numbers each 10 days on googlemap