map_shape_bg <- function(data, label){
  leaflet(data) %>% addTiles()%>%
    addPolygons(color = "darkblue", label = ~label, weight = 1, opacity = 0.5)
}
map_points_bg <- function(data){
  leaflet(data) %>% addTiles()%>%
    addMarkers(lng = data$LONGITUDE, lat = data$LATITUDE)
}
