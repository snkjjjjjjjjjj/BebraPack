# scoreboards
scoreboard objectives add tooltrims.variable dummy
scoreboard players add $load_count tooltrims.variable 1

# scoreboards triggered when a custom smithing template is used
scoreboard objectives add tooltrims.used_linear minecraft.used:minecraft.tadpole_spawn_egg
scoreboard objectives add tooltrims.used_tracks minecraft.used:minecraft.silverfish_spawn_egg
scoreboard objectives add tooltrims.used_charge minecraft.used:minecraft.cod_spawn_egg
scoreboard objectives add tooltrims.used_frost minecraft.used:minecraft.snow_golem_spawn_egg

# detect whether an old version of Tool Trims was previously installed
execute unless score $load_count tooltrims.variable matches 2.. run function tooltrims:migration/load_check

# detect Tool Trims assets
execute unless score $assets_detector tooltrims.variable matches -1 at @r run function tooltrims:detect_assets