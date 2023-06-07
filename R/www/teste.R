library(shiny)
library(shinydashboard)
library(shinydashboardPlus)
library(leaflet)

ui <- dashboardPagePlus(
  header = dashboardHeaderPlus(
    title = "GeoInfoBagé",
    enable_rightsidebar = FALSE
  ),
  sidebar = dashboardSidebar(disable = TRUE),
  body = dashboardBody(
    useShinydashboardPlus(),  # Inicializa o shinydashboardPlus
    tags$style(
      HTML(
        "
        #meu_mapa {
          height: 600px !important;  # Define a altura desejada para o mapa
        }
        "
      )
    ),
    fluidRow(
      column(
        width = 2,
        box(
          width = NULL,
          status = "warning",
          uiOutput("routeSelect"),
          selectInput(
            "maps", "Ver",
            choices = c(
              #... Restante das opções
            ),
            selected = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10,
                         11, 12, 13, 14, 15, 16, 17, 18, 19, 20,
                         21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
                         31, 32, 33, 34, 35, 36, 37, 38, 39, 40,
                         41, 42, 43, 44, 45, 46, 47, 48, 49)
          ),
          downloadButton("download", label = "Baixar PNG")
        )
      ),
      column(
        width = 10,
        leafletOutput("meu_mapa")
      )
    )
  )
)

server <- function(input, output) {
  # Lógica do servidor
}

shinyApp(ui, server)