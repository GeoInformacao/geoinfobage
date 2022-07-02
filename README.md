# **geoinfobage**

**Project Status: In development** :warning:

# **Description**
geoinfobage is a WEB APP application using the `R` language, `HTML`, `CSS` and `Javascript` through the `Shiny` and `Leaflet` packages allowing users to easily access spatial data sets in the city of Bagé/RS. The application includes a wide variety of geospatial data as simple features. They were obtained from several sources for the acquisition of the original files in shapefile, later converted into GeoJSON, other geospatial data were generated by the GeoInformation sector.

# **Available Datasets:**

|           Function                |            Geographies available           |     Source    |
|:---------------------------------:|:------------------------------------------:|:-------------:|
|     read_aerodromes_bg            |                  Aerodromes                |      ANAC     |
|     read_allotments_bg            |                  Allotments                |      ....     |
|        read_bathed_bg             |                    Bathed                  |      ....     |
|      read_biome_pampa_bg          |                    Biome                   |      IBGE     |
|     read_census_tract_bg          |       Census Tract (setor censitário)      |      IBGE     |
|        read_compreb_bg            |           Iphan Listed Properties          |      PMB*     |    
|  read_conservation_unit_bg        |              Conservation Unit             |      MMA      |
|        read_dam_bg                |          Dams in the Municipality          |      ANA      |
|    read_districts_bg              |              Districts of Bage             |      PMB*     |
|read_drainage_mass_stretch_bg      |            Drainage Mass Stretch           |      ANA      |
|   read_drainage_stretch_bg        |               Drainage Stretch             |      ANA      |
| read_environmental_sensitivity_bg |           Environmental Sensitivity        |      FEPAM    |
|      read_geology_bg              |                   Geology                  |      IBGE     |
|   read_geomorphology_bg           |                Geomorphology               |      IBGE     |
| read_hydro_stratified_unit_bg     |            Hydro-Stratified Unit           |      ANA      |
|    read_hydrogeology_bg           |                Hydrogeology                |      ANA      |
|     read_hydrography_bg           |                Hydrography                 |      ANA      |
|  read_health_facilities_bg        |              Health Facilitie              | CNES, DataSUS |
|   read_immediate_region_bg        |              Immediate Region              |      IBGE     |
|         read_info_bg              | Information About the Municipality of Bagé |      IBGE     |
| read_intermediate_region_bg       |             Intermediate Region            |      IBGE     |
|      read_land_use_bg             |                  Land Use                  |      ....     |
|    read_legal_reserve_bg          |               Legal Reserve                |      ....     |
|     read_level_curve_bg           |                Level Curve                 |      ....     |
|  read_macro_urban_areas_bg        |              Macro Urban Areas             |      PMB*     | 
|      read_mass_water_bg           |               Bodies of Water              |      ANA      |
|     read_meso_region_bg           |                 Meso Region                |      IBGE     |
|     read_micro_region_bg          |                Micro Region                |      IBGE     |
|   read_milk_production_bg         |               Milk Production              |      ....     |
|    read_municipal_seat_bg         |              Municipality Seat             |      IBGE     |
|     read_paleontology_bg          |                Paleontology                |      CPRM     |
|      read_park_gaucho_bg          |                Park Gaucho                 |      PMB*     |
|     read_paved_highways_bg        |              Paved Highways                |      ....     |
|       read_pedology_bg            |                  Pedology                  |      IBGE     |
|  read_public_buildings_bg         |              Public Buildings              |      PMB*     |
|  read_public_rural_properties_bg  |          Public Rural Properties           |      ....     |
|       read_railways_bg            |                 Rail Lines                 |      DIVA     |
|      read_rural_lots_bg           |                 Rural Lots                 |      CAR      |
|     read_rural_roads_bg           |                Rural Roads                 |      ....     |
|        read_shape_bg              |            Municipality of Bagé            |      IBGE     |
|     read_sand_banks_bg            |                 Sand Banks                 |      PMB*     |
|   read_soil_exploration_bg        |              Soil Exploration              |      ....     |
|     read_soil_types_bg            |                  Soil Types                |      ....     |
| read_transmission_lines_bg        |             Transmission Lines             |     ANATEL    |
|       read_springs_bg             |                   Springs                  |      ....     |
|  read_unpaved_highways_bg         |              Unpaved Highways              |      DIVA     |
|      read_urban_area_bg           |               Urban Footprint              |      IBGE     |
|   read_use_ground_cover_bg        |              Use Ground Cover              |      ....     |
|     read_vegetation_bg            |                 Vegetation                 |      IBGE     |


# **Contributing To geoinfobage**
If you want to contribute to geoinfobage and add new functions or datasets, please check this [guide](https://github.com/GeoInformacao/geoinfobage/blob/main/CONTRIBUTING.md) to propose your contribution.

# **Developers And Collaborators**

<table>
  <tr>
    <td align="center"><a href="https://github.com/Prof-Rodrigo-Silva"><img style="border-radius: 50%;" src="https://avatars.githubusercontent.com/u/33011697?v=4" width="100px;" alt=""/><br /><sub><b>Rodrigo R Silva</b></sub></a><br /><a href="https://github.com/Prof-Rodrigo-Silva" title="Desenvolvedor">👨‍🚀</a></td>
    <td align="center"><a href="https://github.com/GeoDataBase"><img style="border-radius: 50%;" src="https://avatars.githubusercontent.com/u/67596225?v=4" width="100px;" alt=""/><br /><sub><b>Cassio P A Antoria</b></sub></a><br /><a href="https://github.com/GeoDataBase" title="Desenvolvedor">👨‍🚀</a></td>
    <td align="center"><a href="https://github.com/luisamarques"><img style="border-radius: 50%;" src="https://avatars.githubusercontent.com/u/37715209?v=4" width="100px;" alt=""/><br /><sub><b>Luisa P Marques</b></sub></a><br /><a href="https://github.com/luisamarques" title="Desenvolvedora">👨‍🚀</a></td>

  </tr>
<table>

# **Credits**
<right>

| <img src="https://github.com/Prof-Rodrigo-Silva/geoinfobage/blob/main/logobage.png" width=115> | <img src="https://github.com/GeoInformacao/geoinfobage/blob/main/logobage.png" width=115> |
|----------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------|
|                  [Prefeitura Municipal de Bagé](https://www.bage.rs.gov.br/)                 |                        [GeoInformação](https://sites.google.com/site/ggcbage/)                       |

</right>

The original shapefiles are created by official government institutions. The geoinfobage APP uses the geobr package as a basis for some functions.
The geobr package is developed by a team from the Institute of Applied Economic Research (Ipea) and the geoinfobage APP is developed by a team from the GeoInformation sector of the Municipality of Bagé/RS. If you want to cite this project, you can cite it as:

     Silva,R.R.;Antoria,C.P.A.;Marques,L.P. (2022) geoinfobage: Democratizing access to Geospatial information in the city of Bagé-RS.
     GitHub repository - https://github.com/GeoInformacao/geoinfobage.
     
    
A BibTeX entry for LaTeX users is:

     @Misc {geoinfobage,
     title = {geoinfobage: Democratizing access to Geospatial information in the city of Bag{\'e} - RS},
     author = {Silva,Rodrigo Rosa da. and Antoria,Cassio Pimento Araujo. and Marques,Luisa Pinheiro.},
     note= {APP WEB versão 1.0.0},
     year = {2022},
     url = {https://github.com/GeoInformacao/geoinfobage}
     }

