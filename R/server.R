source("./app.R")
source("./maps.R")

server <- function(input, output, session){
  
  observeEvent(input$maps,{
    switch(input$maps,
           #"1" = {output$meu_mapa <- renderLeaflet(
            #                                        map_points_bg(read_aerodromes_bg(), data)
             #                                       )},
           "2" = {output$meu_mapa <- renderLeaflet(
                                                    map_shape_bg(data <- read_allotments_bg(), data$nome)
                                                    )},
           "3" = {output$meu_mapa <- renderLeaflet(
                                                    map_shape_bg(data <- read_bathed_bg(), data$NOM_TEMA)
                                                    )},
           "4" = {output$meu_mapa <- renderLeaflet(
                                                    map_shape_bg(data <- read_biome_pampa_bg(), data$name_biome)
                                                    )},
           "5" = {output$meu_mapa <- renderLeaflet(
                                                    map_shape_bg(data <- read_census_tract_bg(), data$zone)
                                                    )},
           #"6" = {output$meu_mapa <- renderLeaflet(
            #                                        map_shape_bg(data <- read_compreb_bg(), data)
             #                                       )},
           "8" = {output$meu_mapa <- renderLeaflet(
                                                    map_shape_bg(data <- read_dam_bg(), data$nome)
                                                    )},
           "9" = {output$meu_mapa <- renderLeaflet(
                                                    map_shape_bg(data <- read_districts_bg(), data$Name)
                                                    )},
           "10" = {output$meu_mapa <- renderLeaflet(
                                                    map_shape_bg(data <- read_drainage_mass_stretch_bg(), data$tipotrecho)
                                                    )},
           "11" = {output$meu_mapa <- renderLeaflet(
                                                    map_shape_bg(data <- read_drainage_stretch_bg(), data$coincideco)
                                                    )},
           "12" = {output$meu_mapa <- renderLeaflet(
                                                    map_shape_bg(data <- read_environmental_sensitivity_bg(), data$sensi_amb)
                                                    )},
           "13" = {output$meu_mapa <- renderLeaflet(
                                                    map_shape_bg(data <- read_geology_bg(), data$legenda)
                                                    )},
           "16" = {output$meu_mapa <- renderLeaflet(
                                                    map_shape_bg(data <- read_hydrogeology_bg(), data$SGL_UE_SUB)
                                                    )},
           "17" = {output$meu_mapa <- renderLeaflet(
                                                    map_shape_bg(data <- read_hydrography_bg(), data$NOM_TEMA)
                                                    )},
           #"18" = {output$meu_mapa <- renderLeaflet(
            #                                        map_shape_bg(data <- read_health_facilities_bg(), data)
             #                                       )},
           "19" = {output$meu_mapa <- renderLeaflet(
                                                    map_shape_bg(data <- read_immediate_region_bg(), data$name_immediate)
                                                    )},
           "21" = {output$meu_mapa <- renderLeaflet(
                                                    map_shape_bg(data <- read_intermediate_region_bg(), data$name_intermediate)
                                                    )},
           "22" = {output$meu_mapa <- renderLeaflet(
                                                    map_shape_bg(data <- read_land_use_bg(), data$USO_02_D)
                                                    )},
           "24" = {output$meu_mapa <- renderLeaflet(
                                                    map_shape_bg(data <- read_level_curve_bg(), data$Altitude)
                                                    )},
           "25" = {output$meu_mapa <- renderLeaflet(
                                                    map_shape_bg(data <- read_macro_urban_areas_bg(), data$SUBDISTRIT)
                                                    )},
           "26" = {output$meu_mapa <- renderLeaflet(
                                                    map_shape_bg(data <- read_mass_water_bg(), data$tipomassad)
                                                    )},
           "27" = {output$meu_mapa <- renderLeaflet(
                                                    map_shape_bg(data <- read_meso_region_bg(), data$name_meso)
                                                    )},
           "28" = {output$meu_mapa <- renderLeaflet(
                                                    map_shape_bg(data <- read_micro_region_bg(), data$name_micro)
                                                    )},
           "29" = {output$meu_mapa <- renderLeaflet(
                                                    map_shape_bg(data <- read_milk_production_bg(), data$Projetos_d)
                                                    )},
           #"30" = {output$meu_mapa <- renderLeaflet(
            #                                        map_shape_bg(data <- read_municipal_seat_bg(), data)
             #                                       )},
           #"31" = {output$meu_mapa <- renderLeaflet(
            #                                        map_shape_bg(data <- read_paleontology_bg(), data)
             #                                       )},
           "32" = {output$meu_mapa <- renderLeaflet(
                                                    map_shape_bg(data <- read_park_gaucho_bg(), data$OBS)
                                                    )},
           "33" = {output$meu_mapa <- renderLeaflet(
                                                    map_shape_bg(data <- read_paved_highways_bg(), data$br)
                                                    )},
           "34" = {output$meu_mapa <- renderLeaflet(
                                                    map_shape_bg(data <- read_pedology_bg(), data$legenda)
                                                    )},
           #"35" = {output$meu_mapa <- renderLeaflet(
            #                                        map_shape_bg(data <- read_public_buildings_bg(), data)
             #                                       )},
           "37" = {output$meu_mapa <- renderLeaflet(
                                                    map_shape_bg(data <- read_railways_bg(), data$F_CODE_DES)
                                                    )},
           "38" = {output$meu_mapa <- renderLeaflet(
                                                    map_shape_bg(data <- read_rural_lots_bg(), data$condicao_i)
                                                    )},
           "39" = {output$meu_mapa <- renderLeaflet(
                                                    map_shape_bg(data <- read_rural_roads_bg(), data$tipotrecho)
                                                    )},
           "40" = {output$meu_mapa <- renderLeaflet(
                                                    map_shape_bg(data <- read_vegetation_bg(), data$legenda_2)
                                                    )},
           #"41" = {output$meu_mapa <- renderLeaflet(
            #                                        map_shape_bg(data <- read_sand_banks_bg(), data)
             #                                       )},
           "42" = {output$meu_mapa <- renderLeaflet(
                                                    map_shape_bg(data <- read_soil_exploration_bg(), data$SUBS)
                                                    )},
           "43" = {output$meu_mapa <- renderLeaflet(
                                                    map_shape_bg(data <- read_soil_types_bg(), data$DESC_)
                                                    )},
           "44" = {output$meu_mapa <- renderLeaflet(
                                                    map_shape_bg(data <- read_transmission_lines_bg(), data$Tensão)
                                                    )},
           #"45" = {output$meu_mapa <- renderLeaflet(
            #                                        map_shape_bg(data <- read_springs_bg(), data)
             #                                       )},
           "46" = {output$meu_mapa <- renderLeaflet(
                                                    map_shape_bg(data <- read_unpaved_highways_bg(), data$RTT_DESCRI)
                                                    )},
           "47" = {output$meu_mapa <- renderLeaflet(
                                                    map_shape_bg(data <- read_urban_area_bg(), data$density)
                                                    )},
           "48" = {output$meu_mapa <- renderLeaflet(
                                                    map_shape_bg(data <- read_use_ground_cover_bg(), data$NM_2016)
                                                    )},
            
            #### Descomente quando estiverem funcionando as funções externas ####
           #"7"= {output$meu_mapa <- renderLeaflet(
            #                                       map_#shape_bg(read_conservation_unit_bg(), data)
             #                                       )},
           #"14" = {output$meu_mapa <- renderLeaflet(
            #                                        map_shape_bg(data <- read_geomorphology_bg(), data)
             #                                       )},
           #"15" = {output$meu_mapa <- renderLeaflet(
            #                                        map_shape_bg(data <- read_hydro_stratified_unit_bg(), data)
             #                                       )},
           #"20" = {output$meu_mapa <- renderLeaflet(
            #                                        map_shape_bg(data <- read_information_about_the_municipality_of_bage_bg(), data)
             #                                       )},
           #"23" = {output$meu_mapa <- renderLeaflet(
            #                                        map_shape_bg(data <- read_legal_reserve_bg(), data)
             #                                       )},
           #"36" = {output$meu_mapa <- renderLeaflet(
            #                                        map_shape_bg(data <- read_public_rural_properties_bg(), data)
             #                                       )},
           
           {output$meu_mapa <- renderLeaflet(
                                                    map_shape_bg(data <- read_shape_bg(), data$name_muni)
                                                    )}
    )
          
    
  })
}