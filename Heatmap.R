install.packages("ggplot2")

library(ggmap)
qmap(location = "nederland")
# load the data
Selfiestickmap <- read.csv("coordinaten.csv", sep = ",")

# Download the base map
nederland <- get_map(location = "Nederland", zoom = 7)
# Draw the heat map
ggmap(nederland, extent = "device") + geom_density2d(data = Selfiestickmap, aes(x = lon, y = lat), size = 0.3) + 
  stat_density2d(data = Selfiestickmap, 
                 aes(x = lon, y = lat, fill = ..level.., alpha = ..level..), size = 0.01, 
                 bins = 16, geom = "polygon") + scale_fill_gradient(low = "green", high = "red") + 
  scale_alpha(range = c(0.1, 0.5), guide = FALSE)
