execute store result score $amount tooltrims.variable run clear @s rabbit_spawn_egg[minecraft:custom_model_data={floats: [314001.0]}]
execute store result storage tooltrims:variables amount0 int 2 run scoreboard players get $amount tooltrims.variable
execute store result storage tooltrims:variables amount1 int 4 run scoreboard players get $amount tooltrims.variable

function tooltrims:migration/inventory/toolsmithing_tables_macro with storage tooltrims:variables