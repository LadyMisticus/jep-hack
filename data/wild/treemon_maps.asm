MACRO treemon_map
	map_id \1
	db \2 ; treemon set
ENDM

TreeMonMaps:
	treemon_map ROUTE_26,                  TREEMON_SET_KANTO
	treemon_map ROUTE_27,                  TREEMON_SET_KANTO
	treemon_map ROUTE_28,                  TREEMON_SET_CITY
	treemon_map ROUTE_29,                  TREEMON_SET_ROUTE
	treemon_map ROUTE_30,                  TREEMON_SET_ROUTE
	treemon_map ROUTE_31,                  TREEMON_SET_ROUTE
	treemon_map ROUTE_32,                  TREEMON_SET_KANTO
	treemon_map ROUTE_33,                  TREEMON_SET_TOWN
	treemon_map ROUTE_34,                  TREEMON_SET_ROUTE
	treemon_map ROUTE_35,                  TREEMON_SET_ROUTE
	treemon_map ROUTE_36,                  TREEMON_SET_ROUTE
	treemon_map ROUTE_37,                  TREEMON_SET_ROUTE
	treemon_map ROUTE_38,                  TREEMON_SET_ROUTE
	treemon_map ROUTE_39,                  TREEMON_SET_ROUTE
	treemon_map ROUTE_40,                  TREEMON_SET_CITY
	treemon_map ROUTE_41,                  TREEMON_SET_CITY
	treemon_map ROUTE_42,                  TREEMON_SET_TOWN
	treemon_map ROUTE_43,                  TREEMON_SET_LAKE
	treemon_map ROUTE_44,                  TREEMON_SET_CANYON
	treemon_map ROUTE_45,                  TREEMON_SET_CANYON
	treemon_map ROUTE_46,                  TREEMON_SET_CANYON
	treemon_map NEW_BARK_TOWN,             TREEMON_SET_CITY
	treemon_map CHERRYGROVE_CITY,          TREEMON_SET_CITY
	treemon_map VIOLET_CITY,               TREEMON_SET_CITY
	treemon_map AZALEA_TOWN,               TREEMON_SET_TOWN
	treemon_map CIANWOOD_CITY,             TREEMON_SET_CITY
	treemon_map GOLDENROD_CITY,            TREEMON_SET_CITY
	treemon_map OLIVINE_CITY,              TREEMON_SET_CITY
	treemon_map ECRUTEAK_CITY,             TREEMON_SET_CITY
	treemon_map MAHOGANY_TOWN,             TREEMON_SET_CITY
	treemon_map LAKE_OF_RAGE,              TREEMON_SET_LAKE
	treemon_map BLACKTHORN_CITY,           TREEMON_SET_CITY
	treemon_map SILVER_CAVE_OUTSIDE,       TREEMON_SET_CITY
	treemon_map ILEX_FOREST,               TREEMON_SET_FOREST
	db -1

RockMonMaps:
	treemon_map CIANWOOD_CITY,                  TREEMON_SET_ROCK_BEACH
	treemon_map ROUTE_40,                       TREEMON_SET_ROCK_BEACH
	treemon_map DARK_CAVE_VIOLET_ENTRANCE,      TREEMON_SET_ROCK_DARK_CAVE
	treemon_map SLOWPOKE_WELL_B1F,              TREEMON_SET_ROCK_WELL
	treemon_map ICE_PATH_1F,			        TREEMON_SET_ROCK_ICE
	treemon_map ICE_PATH_B1F,			        TREEMON_SET_ROCK_ICE
	treemon_map ICE_PATH_B2F_MAHOGANY_SIDE,     TREEMON_SET_ROCK_ICE
	treemon_map ICE_PATH_B2F_BLACKTHORN_SIDE,   TREEMON_SET_ROCK_ICE
	treemon_map ICE_PATH_B3F,			        TREEMON_SET_ROCK_ICE
	treemon_map MOUNT_MOON_SQUARE,			    TREEMON_SET_ROCK_SQUARE
	treemon_map BURNED_TOWER_1F,		        TREEMON_SET_ROCK_TOWER
	treemon_map CLIFF_CAVE,						TREEMON_SET_ROCK_DARK_CAVE
	db -1
