map_shape_bg <- function(data, label){
  leaflet(data) %>% addTiles()%>%
    addPolygons(color = "darkblue", label = ~label, weight = 1, opacity = 0.5) %>%
    addPolygons(data = read_shape_bg(), weight = 2, opacity = 1, color = 'green', fill = FALSE)
}
map_points_bg <- function(data){
  leaflet(data) %>% addTiles()%>%
    addMarkers(lng = data$LONGITUDE, lat = data$LATITUDE)
}
