source("./app.R")
source("./maps.R")

server <- function(input, output, session){
  
  observeEvent(input$maps,{
    switch(input$maps,
           
           "2" = {output$meu_mapa <- renderLeaflet(map_shape_bg(read_allotments_bg()))},
           "3" = {output$meu_mapa <- renderLeaflet(map_shape_bg(read_bathed_bg()))},
           "4" = {output$meu_mapa <- renderLeaflet(map_shape_bg(read_biome_pampa_bg()))},
           "5" = {output$meu_mapa <- renderLeaflet(map_shape_bg(read_census_tract_bg()))},
           #"6" = {output$meu_mapa <- renderLeaflet(map_shape_bg(read_compreb_bg()))},
           "8" = {output$meu_mapa <- renderLeaflet(map_shape_bg(read_dam_bg()))},
           "9" = {output$meu_mapa <- renderLeaflet(map_shape_bg(read_districts_bg()))},
           "10" = {output$meu_mapa <- renderLeaflet(map_shape_bg(read_drainage_mass_stretch_bg()))},
           "11" = {output$meu_mapa <- renderLeaflet(map_shape_bg(read_drainage_stretch_bg()))},
           "12" = {output$meu_mapa <- renderLeaflet(map_shape_bg(read_environmental_sensitivity_bg()))},
           "13" = {output$meu_mapa <- renderLeaflet(map_shape_bg(read_geology_bg()))},
           "16" = {output$meu_mapa <- renderLeaflet(map_shape_bg(read_hydrogeology_bg()))},
           "17" = {output$meu_mapa <- renderLeaflet(map_shape_bg(read_hydrography_bg()))},
           #"18" = {output$meu_mapa <- renderLeaflet(map_shape_bg(read_health_facilities_bg()))},
           "19" = {output$meu_mapa <- renderLeaflet(map_shape_bg(read_immediate_region_bg()))},
           "21" = {output$meu_mapa <- renderLeaflet(map_shape_bg(read_intermediate_region_bg()))},
           "22" = {output$meu_mapa <- renderLeaflet(map_shape_bg(read_land_use_bg()))},
           "24" = {output$meu_mapa <- renderLeaflet(map_shape_bg(read_level_curve_bg()))},
           "25" = {output$meu_mapa <- renderLeaflet(map_shape_bg(read_macro_urban_areas_bg()))},
           "26" = {output$meu_mapa <- renderLeaflet(map_shape_bg(read_mass_water_bg()))},
           "27" = {output$meu_mapa <- renderLeaflet(map_shape_bg(read_meso_region_bg()))},
           "28" = {output$meu_mapa <- renderLeaflet(map_shape_bg(read_micro_region_bg()))},
           "29" = {output$meu_mapa <- renderLeaflet(map_shape_bg(read_milk_production_bg()))},
           #"30" = {output$meu_mapa <- renderLeaflet(map_shape_bg(read_municipal_seat_bg()))},
           #"31" = {output$meu_mapa <- renderLeaflet(map_shape_bg(read_paleontology_bg()))},
           "32" = {output$meu_mapa <- renderLeaflet(map_shape_bg(read_park_gaucho_bg()))},
           "33" = {output$meu_mapa <- renderLeaflet(map_shape_bg(read_paved_highways_bg()))},
           "34" = {output$meu_mapa <- renderLeaflet(map_shape_bg(read_pedology_bg()))},
           #"35" = {output$meu_mapa <- renderLeaflet(map_shape_bg(read_public_buildings_bg()))},
           "37" = {output$meu_mapa <- renderLeaflet(map_shape_bg(read_railways_bg()))},
           "38" = {output$meu_mapa <- renderLeaflet(map_shape_bg(read_rural_lots_bg()))},
           "39" = {output$meu_mapa <- renderLeaflet(map_shape_bg(read_rural_roads_bg()))},
           "40" = {output$meu_mapa <- renderLeaflet(map_shape_bg(read_vegetation_bg()))},
           #"41" = {output$meu_mapa <- renderLeaflet(map_shape_bg(read_sand_banks_bg()))},
           "42" = {output$meu_mapa <- renderLeaflet(map_shape_bg(read_soil_exploration_bg()))},
           "43" = {output$meu_mapa <- renderLeaflet(map_shape_bg(read_soil_types_bg()))},
           "44" = {output$meu_mapa <- renderLeaflet(map_shape_bg(read_transmission_lines_bg()))},
           #"45" = {output$meu_mapa <- renderLeaflet(map_shape_bg(read_springs_bg()))},
           "46" = {output$meu_mapa <- renderLeaflet(map_shape_bg(read_unpaved_highways_bg()))},
           "47" = {output$meu_mapa <- renderLeaflet(map_shape_bg(read_urban_area_bg()))},
           "48" = {output$meu_mapa <- renderLeaflet(map_shape_bg(read_use_ground_cover_bg()))},
            
            #### Descomente quando estiverem funcionando as funções externas ####
           #"1" = {output$meu_mapa <- renderLeaflet(map_points_bg(read_aerodromes_bg()))},
           #"7" = {output$meu_mapa <- renderLeaflet(map_shape_bg(read_conservation_unit_bg()))},
           #"14" = {output$meu_mapa <- renderLeaflet(map_shape_bg(read_geomorphology_bg()))},
           #"15" = {output$meu_mapa <- renderLeaflet(map_shape_bg(read_hydro_stratified_unit_bg()))},
           #"20" = {output$meu_mapa <- renderLeaflet(map_shape_bg(read_information_about_the_municipality_of_bage_bg()))},
           #"23" = {output$meu_mapa <- renderLeaflet(map_shape_bg(read_legal_reserve_bg()))},
           #"36" = {output$meu_mapa <- renderLeaflet(map_shape_bg(read_public_rural_properties_bg()))},
           
           {output$meu_mapa <- renderLeaflet(map_shape_bg(read_shape_bg()))}
    )
          
    
  })
}