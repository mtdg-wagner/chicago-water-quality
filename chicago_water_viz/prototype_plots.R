library(leaflet)

m <- leaflet() %>% setView(lng = -87.5300, lat = 41.8400, zoom = 11)

m %>% addTiles() %>% 
  addMarkers(-87.6061, 41.8948, popup = "Water for the masses!",
             label = "Jardine Water Purification Plant") %>%
  addMarkers(-87.5425, 41.7583, popup = "Was that a solid?",
             label = "Sawyer Water Purification Plant")