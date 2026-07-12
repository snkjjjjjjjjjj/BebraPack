# migrate items in the inventory
execute if predicate tooltrims:migration/has_item_to_migrate run function tooltrims:migration/inventory/check_items

# remove near toolsmithing tables
execute as @e[type=minecraft:armor_stand, tag=310_toolsmithing_table, distance=..7] at @s run function tooltrims:migration/destroy_toolsmithing_table