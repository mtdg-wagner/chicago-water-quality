library(leaflet)

m <- leaflet() %>% setView(lng = -87.5300, lat = 41.8400, zoom = 11)

icons <- awesomeIcons(
  icon = 'ion-waterdrop',
  iconColor = 'black',
  library = 'ion',
  markerColor = "red"
)

m %>% addTiles() %>% 
  addAwesomeMarkers(-87.6061, 41.8948, popup = "Water for the masses!",
             label = "Jardine Water Purification Plant", icon = icons) %>%
  addAwesomeMarkers(-87.5425, 41.7583, popup = "Was that a solid?",
             label = "Sawyer Water Purification Plant", icon = icons)