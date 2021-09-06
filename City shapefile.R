
browseURL('https://twitter.com/ejvankesteren/status/1427557918497464336')
library(devtools)
install_github("r-spatial/sf")

library(tidyverse)
library(sf)

getwd()

st_read("wegvakken.shp") %>% 
  filter(wpsnaamnen == "UTRECHT") %>% 
  geom_sf(colour = "white") + 
  theme_void() + 
  theme(plot.background = element_rect(fill = "#343434", colour = NA))
