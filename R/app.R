pacotes <- list("devtools", "geobage", "shiny", "leaflet")

for(i in seq_along(pacotes)){
    pacote <- pacotes[[i]]
    if (pacote %in% installed.packages()) {
          print(paste("Pacote instalado...", pacote))
          print(paste("Carregando...", pacote))
          library(pacote,  character.only = TRUE)
    } else {
          print(paste("Instalando", pacote, "..."))
          install.packages(pacote)
    }
}


runApp()