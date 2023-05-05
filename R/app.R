pacotes <- list("devtools", "geobage", "shiny","shinydashboard", "dplyr",
                "ggplot2", "leaflet", "webshot", "htmlwidgets")

for(i in seq_along(pacotes)){
    pacote <- pacotes[[i]]
    if (pacote %in% installed.packages()) {
          print(paste("Pacote instalado...", pacote))
          print(paste("Carregando...", pacote))
          library(pacote,  character.only = TRUE)
    }
    else if(pacote == "geobage"){
      print(paste("Instalando", pacote, "..."))
      devtools::install_github("GeoInformacao/geobage")
      library(geobage)
    }
    else if( pacote == "webshot"){
      print(paste("Instalando", pacote, "..."))
      install.packages("webshot")
      webshot::install_phantomjs()
      library(webshot)
    }
    else {
          print(paste("Instalando", pacote, "..."))
          install.packages(pacote, dependencies = F)
          library(pacote, character.only = T)
    }
}

