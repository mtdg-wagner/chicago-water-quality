library(leaflet)
library(plotly)
library(tidyverse)
library(lubridate)

m <- leaflet() %>% setView(lng = -87.5300, lat = 41.8400, zoom = 11)

data_example <- tribble(
  ~Date, ~Chemical, ~Amount,
  "2017-06-01", "Lead", 20,
  "2017-07-01", "Lead", 33,
  "2017-08-01", "Lead", 41,
  "2017-06-01", "Solid", 25,
  "2017-07-01", "Solid", 32,
  "2017-08-01", "Solid", 47
  
) %>% mutate(Date = ymd(Date))

data_example %>% ggplot(aes(Date, Amount)) + geom_line(aes(color = Chemical))

chem_over_t + geom_line(data = data_example,
                        aes(x = Date, y = Amount, fill = Chemical))
  

icons <- awesomeIcons(
  icon = 'ion-waterdrop',
  iconColor = 'black',
  library = 'ion',
  markerColor = "red"
)

m %>% addProviderTiles(providers$CartoDB.Positron) %>% 
  addAwesomeMarkers(-87.6061, 41.8948, popup = "Water for the masses!",
             label = "Jardine Water Purification Plant", icon = icons) %>%
  addAwesomeMarkers(-87.5425, 41.7583, popup = "Was that a solid?",
             label = "Sawyer Water Purification Plant", icon = icons)