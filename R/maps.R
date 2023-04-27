map_shape_bg <- function(data){
  leaflet(data) %>% addTiles()%>%
    addPolygons(color = "green", label = "title")
}
map_points_bg <- function(data){
  leaflet(data) %>% addTiles()%>%
    addMarkers(lng = data$LONGITUDE, lat = data$LATITUDE)
}
