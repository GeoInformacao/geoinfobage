pacotes <- list("devtools", "geobage", "shiny","shinydashboard", "dplyr", "ggplot")

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
    }
    else {
          print(paste("Instalando", pacote, "..."))
          install.packages(pacote)
    }
}