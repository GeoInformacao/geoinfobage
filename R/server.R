source("./app.R")
source("./maps.R")

server <- function(input, output, session){
  
  observeEvent(input$maps,{
    switch(input$maps,
           #"1" = {output$meu_mapa <- renderLeaflet(
            #                                        map_poin
             #                                       )},
            #ts_bg(read_aerodromes_bg(), data)map)
           "2" = {
              map <- map_shape_bg(data <- read_allotments_bg(), data$nom)

              output$meu_mapa <- renderLeaflet(map)
              output$download <- downloadHandler(
                 filename = function() {
                   paste("mapa-", Sys.Date(), ".html", sep="")
                 },
                 content = function(file) {
                   saveWidget(map, file, selfcontained = TRUE)
                 }
                )
             },
           "3" = {
                                                    map <- map_shape_bg(data <- read_bathed_bg(), data$NOM_TEMA)
            output$meu_mapa <- renderLeaflet(map)
            output$download <- downloadHandler(
                 filename = function() {
                   paste("mapa-", Sys.Date(), ".html", sep="")
                 },
                 content = function(file) {
                   saveWidget(map, file, selfcontained = TRUE)
                 }
                )
                                                    },
           "4" = {
                                                    map <- map_shape_bg(data <- read_biome_pampa_bg(), data$name_biome)
            output$meu_mapa <- renderLeaflet(map)
            output$download <- downloadHandler(
                 filename = function() {
                   paste("mapa-", Sys.Date(), ".html", sep="")
                 },
                 content = function(file) {
                   saveWidget(map, file, selfcontained = TRUE)
                 }
                )
                                                    },
           "5" = {
                                                    map <- map_shape_bg(data <- read_census_tract_bg(), data$zone)
            output$meu_mapa <- renderLeaflet(map)
            output$download <- downloadHandler(
                 filename = function() {
                   paste("mapa-", Sys.Date(), ".html", sep="")
                 },
                 content = function(file) {
                   saveWidget(map, file, selfcontained = TRUE)
                 }
                )
                                                    },
           #"6" = {
            #                                        map <- map_shape_bg(data <- read_compreb_bg(), data)
            #output$meu_mapa <- renderLeaflet(map)
            #output$download <- downloadHandler(
             #    filename = function() {
              #     paste("mapa-", Sys.Date(), ".html", sep="")
               #  },
                # content = function(file) {
                 #  saveWidget(map, file, selfcontained = TRUE)
                 #}
                #)
             #                                       },
           "8" = {
                                                    map <- map_shape_bg(data <- read_dam_bg(), data$nome)
            output$meu_mapa <- renderLeaflet(map)
            output$download <- downloadHandler(
                 filename = function() {
                   paste("mapa-", Sys.Date(), ".html", sep="")
                 },
                 content = function(file) {
                   saveWidget(map, file, selfcontained = TRUE)
                 }
                )
                                                    },
           "9" = {
                                                    map <- map_shape_bg(data <- read_districts_bg(), data$Name)
            output$meu_mapa <- renderLeaflet(map)
            output$download <- downloadHandler(
                 filename = function() {
                   paste("mapa-", Sys.Date(), ".html", sep="")
                 },
                 content = function(file) {
                   saveWidget(map, file, selfcontained = TRUE)
                 }
                )
                                                    },
           "10" = {
                                                    map <- map_shape_bg(data <- read_drainage_mass_stretch_bg(), data$tipotrecho)
            output$meu_mapa <- renderLeaflet(map)
            output$download <- downloadHandler(
                 filename = function() {
                   paste("mapa-", Sys.Date(), ".html", sep="")
                 },
                 content = function(file) {
                   saveWidget(map, file, selfcontained = TRUE)
                 }
                )
                                                    },
           "11" = {
                                                    map <- map_shape_bg(data <- read_drainage_stretch_bg(), data$coincideco)
            output$meu_mapa <- renderLeaflet(map)
            output$download <- downloadHandler(
                 filename = function() {
                   paste("mapa-", Sys.Date(), ".html", sep="")
                 },
                 content = function(file) {
                   saveWidget(map, file, selfcontained = TRUE)
                 }
                )
                                                    },
           "12" = {
                                                    map <- map_shape_bg(data <- read_environmental_sensitivity_bg(), data$sensi_amb)
            output$meu_mapa <- renderLeaflet(map)
            output$download <- downloadHandler(
                 filename = function() {
                   paste("mapa-", Sys.Date(), ".html", sep="")
                 },
                 content = function(file) {
                   saveWidget(map, file, selfcontained = TRUE)
                 }
                )
                                                    },
           "13" = {
                                                    map <- map_shape_bg(data <- read_geology_bg(), data$legenda)
            output$meu_mapa <- renderLeaflet(map)
            output$download <- downloadHandler(
                 filename = function() {
                   paste("mapa-", Sys.Date(), ".html", sep="")
                 },
                 content = function(file) {
                   saveWidget(map, file, selfcontained = TRUE)
                 }
                )
                                                    },
           "16" = {
                                                    map <- map_shape_bg(data <- read_hydrogeology_bg(), data$SGL_UE_SUB)
            output$meu_mapa <- renderLeaflet(map)
            output$download <- downloadHandler(
                 filename = function() {
                   paste("mapa-", Sys.Date(), ".html", sep="")
                 },
                 content = function(file) {
                   saveWidget(map, file, selfcontained = TRUE)
                 }
                )
                                                    },
           "17" = {
                                                    map <- map_shape_bg(data <- read_hydrography_bg(), data$NOM_TEMA)
            output$meu_mapa <- renderLeaflet(map)
            output$download <- downloadHandler(
                 filename = function() {
                   paste("mapa-", Sys.Date(), ".html", sep="")
                 },
                 content = function(file) {
                   saveWidget(map, file, selfcontained = TRUE)
                 }
                )
                                                    },
           #"18" = {
            #                                        map <- map_shape_bg(data <- read_health_facilities_bg(), data)
            #output$meu_mapa <- renderLeaflet(map)
            #output$download <- downloadHandler(
             #    filename = function() {
              #     paste("mapa-", Sys.Date(), ".html", sep="")
               #  },
                # content = function(file) {
                 #  saveWidget(map, file, selfcontained = TRUE)
                 #}
                #)
             #                                       },
           "19" = {
                                                    map <- map_shape_bg(data <- read_immediate_region_bg(), data$name_immediate)
            output$meu_mapa <- renderLeaflet(map)
            output$download <- downloadHandler(
                 filename = function() {
                   paste("mapa-", Sys.Date(), ".html", sep="")
                 },
                 content = function(file) {
                   saveWidget(map, file, selfcontained = TRUE)
                 }
                )
                                                    },
           "21" = {
                                                    map <- map_shape_bg(data <- read_intermediate_region_bg(), data$name_intermediate)
            output$meu_mapa <- renderLeaflet(map)
            output$download <- downloadHandler(
                 filename = function() {
                   paste("mapa-", Sys.Date(), ".html", sep="")
                 },
                 content = function(file) {
                   saveWidget(map, file, selfcontained = TRUE)
                 }
                )
                                                    },
           "22" = {
                                                    map <- map_shape_bg(data <- read_land_use_bg(), data$USO_02_D)
            output$meu_mapa <- renderLeaflet(map)
            output$download <- downloadHandler(
                 filename = function() {
                   paste("mapa-", Sys.Date(), ".html", sep="")
                 },
                 content = function(file) {
                   saveWidget(map, file, selfcontained = TRUE)
                 }
                )
                                                    },
           "24" = {
                                                    map <- map_shape_bg(data <- read_level_curve_bg(), data$Altitude)
            output$meu_mapa <- renderLeaflet(map)
            output$download <- downloadHandler(
                 filename = function() {
                   paste("mapa-", Sys.Date(), ".html", sep="")
                 },
                 content = function(file) {
                   saveWidget(map, file, selfcontained = TRUE)
                 }
                )
                                                    },
           "25" = {
                                                    map <- map_shape_bg(data <- read_macro_urban_areas_bg(), data$SUBDISTRIT)
            output$meu_mapa <- renderLeaflet(map)
            output$download <- downloadHandler(
                 filename = function() {
                   paste("mapa-", Sys.Date(), ".html", sep="")
                 },
                 content = function(file) {
                   saveWidget(map, file, selfcontained = TRUE)
                 }
                )
                                                    },
           "26" = {
                                                    map <- map_shape_bg(data <- read_mass_water_bg(), data$tipomassad)
            output$meu_mapa <- renderLeaflet(map)
            output$download <- downloadHandler(
                 filename = function() {
                   paste("mapa-", Sys.Date(), ".html", sep="")
                 },
                 content = function(file) {
                   saveWidget(map, file, selfcontained = TRUE)
                 }
                )
                                                    },
           "27" = {
                                                    map <- map_shape_bg(data <- read_meso_region_bg(), data$name_meso)
            output$meu_mapa <- renderLeaflet(map)
            output$download <- downloadHandler(
                 filename = function() {
                   paste("mapa-", Sys.Date(), ".html", sep="")
                 },
                 content = function(file) {
                   saveWidget(map, file, selfcontained = TRUE)
                 }
                )
                                                    },
           "28" = {
                                                    map <- map_shape_bg(data <- read_micro_region_bg(), data$name_micro)
            output$meu_mapa <- renderLeaflet(map)
            output$download <- downloadHandler(
                 filename = function() {
                   paste("mapa-", Sys.Date(), ".html", sep="")
                 },
                 content = function(file) {
                   saveWidget(map, file, selfcontained = TRUE)
                 }
                )
                                                    },
           "29" = {
                                                    map <- map_shape_bg(data <- read_milk_production_bg(), data$Projetos_d)
            output$meu_mapa <- renderLeaflet(map)
            output$download <- downloadHandler(
                 filename = function() {
                   paste("mapa-", Sys.Date(), ".html", sep="")
                 },
                 content = function(file) {
                   saveWidget(map, file, selfcontained = TRUE)
                 }
                )
                                                    },
           #"30" = {
            #                                        map <- map_shape_bg(data <- read_municipal_seat_bg(), data)
            #output$meu_mapa <- renderLeaflet(map)
            #output$download <- downloadHandler(
             #    filename = function() {
              #     paste("mapa-", Sys.Date(), ".html", sep="")
               #  },
                # content = function(file) {
                 #  saveWidget(map, file, selfcontained = TRUE)
                 #}
                #)
             #                                       },
           #"31" = {
            #                                        map <- map_shape_bg(data <- read_paleontology_bg(), data)
            #output$meu_mapa <- renderLeaflet(map)
            #output$download <- downloadHandler(
             #    filename = function() {
              #     paste("mapa-", Sys.Date(), ".html", sep="")
               #  },
                # content = function(file) {
                 #  saveWidget(map, file, selfcontained = TRUE)
                 #}
                #)
             #                                       },
           "32" = {
                                                    map <- map_shape_bg(data <- read_park_gaucho_bg(), data$OBS)
            output$meu_mapa <- renderLeaflet(map)
            output$download <- downloadHandler(
                 filename = function() {
                   paste("mapa-", Sys.Date(), ".html", sep="")
                 },
                 content = function(file) {
                   saveWidget(map, file, selfcontained = TRUE)
                 }
                )
                                                    },
           "33" = {
                                                    map <- map_shape_bg(data <- read_paved_highways_bg(), data$br)
            output$meu_mapa <- renderLeaflet(map)
            output$download <- downloadHandler(
                 filename = function() {
                   paste("mapa-", Sys.Date(), ".html", sep="")
                 },
                 content = function(file) {
                   saveWidget(map, file, selfcontained = TRUE)
                 }
                )
                                                    },
           "34" = {
                                                    map <- map_shape_bg(data <- read_pedology_bg(), data$legenda)
            output$meu_mapa <- renderLeaflet(map)
            output$download <- downloadHandler(
                 filename = function() {
                   paste("mapa-", Sys.Date(), ".html", sep="")
                 },
                 content = function(file) {
                   saveWidget(map, file, selfcontained = TRUE)
                 }
                )
                                                    },
           #"35" = {
            #                                        map <- map_shape_bg(data <- read_public_buildings_bg(), data)
            #output$meu_mapa <- renderLeaflet(map)
            #output$download <- downloadHandler(
             #    filename = function() {
              #     paste("mapa-", Sys.Date(), ".html", sep="")
               #  },
                # content = function(file) {
                 #  saveWidget(map, file, selfcontained = TRUE)
                 #}
                #)
             #                                       },
           "37" = {
                                                    map <- map_shape_bg(data <- read_railways_bg(), data$F_CODE_DES)
            output$meu_mapa <- renderLeaflet(map)
            output$download <- downloadHandler(
                 filename = function() {
                   paste("mapa-", Sys.Date(), ".html", sep="")
                 },
                 content = function(file) {
                   saveWidget(map, file, selfcontained = TRUE)
                 }
                )
                                                    },
           "38" = {
                                                    map <- map_shape_bg(data <- read_rural_lots_bg(), data$condicao_i)
            output$meu_mapa <- renderLeaflet(map)
            output$download <- downloadHandler(
                 filename = function() {
                   paste("mapa-", Sys.Date(), ".html", sep="")
                 },
                 content = function(file) {
                   saveWidget(map, file, selfcontained = TRUE)
                 }
                )
                                                    },
           "39" = {
                                                    map <- map_shape_bg(data <- read_rural_roads_bg(), data$tipotrecho)
            output$meu_mapa <- renderLeaflet(map)
            output$download <- downloadHandler(
                 filename = function() {
                   paste("mapa-", Sys.Date(), ".html", sep="")
                 },
                 content = function(file) {
                   saveWidget(map, file, selfcontained = TRUE)
                 }
                )
                                                    },
           "40" = {
                                                    map <- map_shape_bg(data <- read_vegetation_bg(), data$legenda_2)
            output$meu_mapa <- renderLeaflet(map)
            output$download <- downloadHandler(
                 filename = function() {
                   paste("mapa-", Sys.Date(), ".html", sep="")
                 },
                 content = function(file) {
                   saveWidget(map, file, selfcontained = TRUE)
                 }
                )
                                                    },
           #"41" = {
            #                                        map <- map_shape_bg(data <- read_sand_banks_bg(), data)
            #output$meu_mapa <- renderLeaflet(map)
            #output$download <- downloadHandler(
             #    filename = function() {
              #     paste("mapa-", Sys.Date(), ".html", sep="")
               #  },
                # content = function(file) {
                 #  saveWidget(map, file, selfcontained = TRUE)
                 #}
                #)
             #                                       },
           "42" = {
                                                    map <- map_shape_bg(data <- read_soil_exploration_bg(), data$SUBS)
            output$meu_mapa <- renderLeaflet(map)
            output$download <- downloadHandler(
                 filename = function() {
                   paste("mapa-", Sys.Date(), ".html", sep="")
                 },
                 content = function(file) {
                   saveWidget(map, file, selfcontained = TRUE)
                 }
                )
                                                    },
           "43" = {
                                                    map <- map_shape_bg(data <- read_soil_types_bg(), data$DESC_)
            output$meu_mapa <- renderLeaflet(map)
            output$download <- downloadHandler(
                 filename = function() {
                   paste("mapa-", Sys.Date(), ".html", sep="")
                 },
                 content = function(file) {
                   saveWidget(map, file, selfcontained = TRUE)
                 }
                )
                                                    },
           "44" = {
                                                    map <- map_shape_bg(data <- read_transmission_lines_bg(), data$Tensão)
            output$meu_mapa <- renderLeaflet(map)
            output$download <- downloadHandler(
                 filename = function() {
                   paste("mapa-", Sys.Date(), ".html", sep="")
                 },
                 content = function(file) {
                   saveWidget(map, file, selfcontained = TRUE)
                 }
                )
                                                    },
           #"45" = {
            #                                        map <- map_shape_bg(data <- read_springs_bg(), data)
            #output$meu_mapa <- renderLeaflet(map)
            #output$download <- downloadHandler(
             #    filename = function() {
              #     paste("mapa-", Sys.Date(), ".html", sep="")
               #  },
                # content = function(file) {
                 #  saveWidget(map, file, selfcontained = TRUE)
                 #}
                #)
             #                                       },
           "46" = {
                                                    map <- map_shape_bg(data <- read_unpaved_highways_bg(), data$RTT_DESCRI)
            output$meu_mapa <- renderLeaflet(map)
            output$download <- downloadHandler(
                 filename = function() {
                   paste("mapa-", Sys.Date(), ".html", sep="")
                 },
                 content = function(file) {
                   saveWidget(map, file, selfcontained = TRUE)
                 }
                )
                                                    },
           "47" = {
                                                    map <- map_shape_bg(data <- read_urban_area_bg(), data$density)
            output$meu_mapa <- renderLeaflet(map)
            output$download <- downloadHandler(
                 filename = function() {
                   paste("mapa-", Sys.Date(), ".html", sep="")
                 },
                 content = function(file) {
                   saveWidget(map, file, selfcontained = TRUE)
                 }
                )
                                                    },
           "48" = {
                                                    map <- map_shape_bg(data <- read_use_ground_cover_bg(), data$NM_2016)
            output$meu_mapa <- renderLeaflet(map)
            output$download <- downloadHandler(
                 filename = function() {
                   paste("mapa-", Sys.Date(), ".html", sep="")
                 },
                 content = function(file) {
                   saveWidget(map, file, selfcontained = TRUE)
                 }
                )
                                                    },
            
            #### Descomente quando estiverem funcionando as funções externas ####
           #"7"= {output$meu_mapa <- renderLeaflet(
            #                                       map_#shape_bg(read_conservation_unit_bg(), data)
             #                                       )},
           #"14" = {
            #                                        map <- map_shape_bg(data <- read_geomorphology_bg(), data)
            #output$meu_mapa <- renderLeaflet(map)
            #output$download <- downloadHandler(
             #    filename = function() {
              #     paste("mapa-", Sys.Date(), ".html", sep="")
               #  },
                # content = function(file) {
                 #  saveWidget(map, file, selfcontained = TRUE)
                 #}
                #)
             #                                       },
           #"15" = {
            #                                        map <- map_shape_bg(data <- read_hydro_stratified_unit_bg(), data)
            #output$meu_mapa <- renderLeaflet(map)
            #output$download <- downloadHandler(
             #    filename = function() {
              #     paste("mapa-", Sys.Date(), ".html", sep="")
               #  },
                # content = function(file) {
                 #  saveWidget(map, file, selfcontained = TRUE)
                 #}
                #)
             #                                       },
           #"20" = {
            #                                        map <- map_shape_bg(data <- read_information_about_the_municipality_of_bage_bg(), data)
            #output$meu_mapa <- renderLeaflet(map)
            #output$download <- downloadHandler(
             #    filename = function() {
              #     paste("mapa-", Sys.Date(), ".html", sep="")
               #  },
                # content = function(file) {
                 #  saveWidget(map, file, selfcontained = TRUE)
                 #}
                #)
             #                                       },
           #"23" = {
            #                                        map <- map_shape_bg(data <- read_legal_reserve_bg(), data)
            #output$meu_mapa <- renderLeaflet(map)
            #output$download <- downloadHandler(
             #    filename = function() {
              #     paste("mapa-", Sys.Date(), ".html", sep="")
               #  },
                # content = function(file) {
                 #  saveWidget(map, file, selfcontained = TRUE)
                 #}
                #)
             #                                       },
           #"36" = {
            #                                        map <- map_shape_bg(data <- read_public_rural_properties_bg(), data)
            #output$meu_mapa <- renderLeaflet(map)
            #output$download <- downloadHandler(
             #    filename = function() {
              #     paste("mapa-", Sys.Date(), ".html", sep="")
               #  },
                # content = function(file) {
                 #  saveWidget(map, file, selfcontained = TRUE)
                 #}
                #)
             #                                       },
           
           {
             
             map <- map_shape_bg(data <- read_shape_bg(), data$name_muni)
             
             output$meu_mapa <- renderLeaflet(map)
             
             output$download <- downloadHandler(
               filename = function() {
                 paste("mapa-", Sys.Date(), ".html", sep="")
               },
               content = function(file) {
                 saveWidget(map, "mapa.hmtl", selfcontained = FALSE)
                 webshot("mapa.html", file="mapa.png", cliprect = "viewport")
               }
             )
           }
    )
  })
 
}