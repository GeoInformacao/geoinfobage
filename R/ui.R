source("app.R")

ui <- fluidRow(
fluidRow(id = "cabecalho",
         column(4),
         column(3,
                tags$h1("Prefeitura municipal de Bagé")
                ),
         column(1,
                tags$div(id='img')
         )
),
  navbarPage(title = tags$div(
    "Setor de geomensura e cartografia",
    tags$img(src = "https://github.com/EduardoMoreaes/geoinfobage/blob/main/logogeoinformacao.png?raw=true",
              width = 20),
    ),
             
    tabPanel("dados",
      #### page1 #####
  dashboardPage(
    skin = "blue",
    title="GeoInfoBagé",
    dashboardHeader(
      tags$li(
        class="dropdown",
        tags$style(
          HTML(
            ".main-header{
                text-align: left;
                height: 0;
            }
            .main-header .logo{
                text-align: left;
                height: 0;
            }
            .skin-blue .main-header .navbar {
                background-color: transparent;
                height: 0;
            }
            .container-fluid{
                background-color: #white;
                color: white;
            }
            .navbar-default {
                background-color: white;
                border-color: black;
            }
            .navbar {
                position: relative;
                min-height: 50px;
                margin-bottom: 0;
                border: 1px solid transparent;
                border-top-color: transparent;
                border-top-width: 1px;
                border-right-color: transparent;
                border-right-width: 1px;
                border-bottom-color: black;
                border-bottom-width: 1px;
                border-left-color: transparent;
                border-left-width: 1px;
            }
            .content {
                min-height: 250px;
                background-color: white;
                padding: 0px;
                padding-right: 0px;
                padding-left: 0px;
                margin-right: auto;
                margin-left: 0px;
                padding-left: 0px;
                padding-right: 0px;
            }
            .content-wrapper {
                min-height: auto !important; 
                background-color: white;
            }
            #cabecalho{
                background-color: #3c8dbc;
                height: 7em;
                text-align: center;
                color: white;
                justify: justify;
            }
            #img{
                background-image: url(https://github.com/EduardoMoreaes/geoinfobage/blob/main/logobage.png?raw=true);
                background-size: contain;
                background-repeat: no-repeat;
                background-position: center;
                height: 6em;
                width: 6em;
            }
            #img-setor{
                background-image: url(https://github.com/EduardoMoreaes/geoinfobage/blob/main/logogeoinformacao.png?raw=true);
                background-size: contain;
                background-repeat: no-repeat;
                background-position: center;
                height: 2em;
                width: 2em;
            }
            #tabelas{
                background-color: white;
                border-radius: 15px;
                font-size: 15px;
                margin-top: 10px;
            }
            #tabelas:hover{
                background-color: blue;
                color: white;
            }
            h3{
                margin-top: 10px;
            }
            "
          )
        )
      )
        
    ),
    
    dashboardSidebar(disable = T),
    
    dashboardBody(
      fluidRow(
            column(12,
                   leafletOutput("meu_mapa", height = 815),
                   absolutePanel(
                     top = "10%", right = "83%",
                     width = 300, height = 100,
                     backgroundColor = "transparent",
                     box(width = NULL, status = "warning",
   uiOutput("routeSelect"),
   selectInput("maps", "Ver",
               choices = c(
                 #"ANAC - Aeródromos" = 1,
                 "... - Loteamentos" = 2,
                 "... - Banhado" = 3,
                 "IBGE - Biomas" = 4,
                 "IBGE - Setor Censitário" = 5, 
                 #"PMB* - Imóveis Listados Pelo Iphan" = 6,  
                 #"MMA  - Unidade de Conservação" = 7,
                 "ANA  - Barragens no Município" = 8,
                 "PMB* - Distritos de Bagé" = 9,
                 "ANA  - Extensão da Massa de Drenagem" = 10,
                 "ANA  - Alongamento de Drenagem" = 11,
                 "FEPAM - Sensibilidade Ambiental" = 12,
                 "IBGE - Geologia" = 13,
                 #"IBGE - Geomorfologia" = 14,
                 #"ANA - Unidade Hidroestratificada" = 15,
                 "ANA - Hidrogeologia" = 16,
                 "ANA - Hidrografia" = 17,
                 #"CNES, DataSUS  - Estabelecimento de Saúde" = 18,
                 "IBGE - Região Imediata" = 19,
                 #"IBGE - Informações Sobre o Município de Bagé" = 20,
                 "IBGE - Região Intermediária" = 21,
                 "... - Uso da Terra" = 22,
                 #"... - Reserva Legal" = 23,
                 "... - Curva de Nível" = 24,
                 "PMB* - Macroáreas Urbanas" = 25,
                 "ANA - Corpos de Água" = 26,
                 "IBGE - Mesoregião" = 27,
                 "IBGE - Microrregião" = 28,
                 "... - Produção de Leite" = 29,
                 #"IBGE - Sede do Município" = 30,
                 #"CPRM - Paleontologia" = 31,
                 "PMB* - Parque Gaúcho" = 32,
                 "... - Rodovias Pavimentadas" = 33,
                 "IBGE - Pedologia" = 34,
                 #"PMB* - Prédios Públicos" = 35,
                 #"... - Imóveis Rurais Públicos" = 36,
                 "DIVÃ - Linhas Ferroviárias" = 37,
                 "CARRO - Lotes Rurais" = 38,
                 "... - Estradas Rurais" = 39,
                 "IBGE - Vegetação" = 40,
                 #"PMB* - Bancos de Areia" = 41,
                 "... - Exploração do Solo" = 42,
                 "... - Tipos de Solo" = 43,
                 "ANATEL - Linhas de Transmissão" = 44,
                 #"... - Nascentes" = 45,
                 "DIVÃ - Rodovias Não Pavimentadas" = 46,
                 "IBGE - Pegada Urbana" = 47,
                 "... - Usar Cobertura do Solo" = 48,
                 "IBGE - Município de Bagé" = 49
               ),
               selected = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10,
      11, 12, 13, 14, 15, 16, 17, 18, 19, 20,
      21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 
      31, 32, 33, 34, 35, 36, 37, 38, 39, 40,
      41, 42, 43, 44, 45, 46, 47, 48, 49)
   ),
   downloadButton("download", label="Baixar mapa")
                     )
                   )
            )
        
               
        
      )
    )
  )            
),
      #### page2 ####
    tabPanel("tabela",
        includeHTML("https://raw.githubusercontent.com/EduardoMoreaes/geoinfobage/d5f3068eb8dfa4a247506d2a7d6bf8b8b03ff4ab/R/tabelas.html")
    )
  )
)



