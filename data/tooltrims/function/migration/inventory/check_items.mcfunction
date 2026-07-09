execute if predicate tooltrims:migration/has_toolsmithing_table run function tooltrims:migration/inventory/toolsmithing_tables

execute if items entity @s player.cursor *[minecraft:custom_data~{ "tool_trim_smithing_template": true }] run item modify entity @s player.cursor tooltrims:migrate/template
execute if items entity @s weapon.offhand *[minecraft:custom_data~{ "tool_trim_smithing_template": true }] run item modify entity @s weapon.offhand tooltrims:migrate/template
execute if items entity @s container.* *[minecraft:custom_data~{ "tool_trim_smithing_template": true }] run function tooltrims:migration/inventory/templates

execute if items entity @s player.cursor *[minecraft:custom_data~{ "trimmed_tool": true }] run item modify entity @s player.cursor tooltrims:migrate/trimmed_tool
execute if items entity @s weapon.offhand *[minecraft:custom_data~{ "trimmed_tool": true }] run item modify entity @s weapon.offhand tooltrims:migrate/trimmed_tool
execute if items entity @s container.* *[minecraft:custom_data~{ "trimmed_tool": true }] run function tooltrims:migration/inventory/trimmed_tools