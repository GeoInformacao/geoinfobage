bage  <-  read_shape_bg()

shape_bage <-  ggplot() +  geom_sf(data=bg,  color= "black", size=.15) + labs(title="Municipio de Bagé", caption='Fonte: IBGE', size=8)+
  scale_fill_distiller(palette = "Greens", limits=c(0.5, 0.8), name="Code_muni") + theme_minimal()

aerodromes
allotments
bathed
biome
census_tract
iphan_listed_properties
conservation_unit
dams_in_the_municipality
districts_of_bage
drainage_mass_stretch
drainage_stretch
environmental_sensitivity
geology
geomorphology
hydro-stratified_unit
hydrogeology
hydrography
health_facilitie
immediate_region
information_about_the_municipality_of_bage
intermediate_region
land_use
legal_reserve
level_curve
macro_urban_areas
bodies_of_water
meso_region
micro_region
milk_production
municipality_seat
paleontology
park_gaucho
paved_highways
pedology
public_buildings
public_rural_properties
rail_lines
rural_lots
rural_roads
sand_banks
soil_exploration
soil_types
transmission_lines
springs
unpaved_highways
urban_footprint
use_ground_cover
vegetation