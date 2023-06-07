pacotes <- list("devtools", "geobage", "shiny","shinydashboard", "dplyr",
                "ggplot2", "leaflet", "webshot", "htmlwidgets", "openssl")

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
      print(paste("Carregando...", pacote))
      library(geobage)
    }
    else if( pacote == "webshot"){
      print(paste("Instalando", pacote, "..."))
      install.packages("webshot")
      print(paste("Carregando...", pacote))
      library(webshot)
    }
    else if(pacote == "openssl"){
      print(paste("Instalando", pacote, "..."))
      install.packages("httr", type = "source")
      print(paste("Carregando...", pacote))
      library(openssl)
    }
    else {
          print(paste("Instalando", pacote, "..."))
          install.packages(pacote, dependencies = TRUE)
          print(paste("Carregando...", pacote))
          library(pacote, character.only = TRUE)
    }
}
library(openssl)
