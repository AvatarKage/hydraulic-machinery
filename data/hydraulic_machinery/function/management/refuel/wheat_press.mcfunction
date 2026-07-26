scoreboard players set @s hydraulic_machinery.fuel_type 0

execute \
    if data block ~ ~2 ~ Items[{id:"minecraft:wheat"}] \
    run scoreboard players set @s hydraulic_machinery.fuel_type 1

execute \
    if score @s hydraulic_machinery.fuel_type matches 0 \
    unless data entity @s CustomName \
    run tellraw @p ["",{color:"#e77b57",text:"[Hydraulic Machinery] "},"Wheat press out of fuel!"]

execute \
    if score @s hydraulic_machinery.fuel_type matches 0 \
    if data entity @s CustomName \
    run tellraw @p ["",{"color":"#e77b57","text":"[Hydraulic Machinery] "},{"selector":"@s"}," out of fuel!"]

execute \
    if score @s hydraulic_machinery.fuel_type matches 0 \
    run return 0
    
execute \
    as @s[tag=!hydraulic_machinery_found_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 1 \
    if data block ~ ~2 ~ Items[{Slot:0b,id:"minecraft:wheat"}] \
    run tag @s add hydraulic_machinery_found_fuel_item

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item,tag=!hydraulic_machinery_removed_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 1 \
    if data block ~ ~2 ~ Items[{Slot:0b,id:"minecraft:wheat"}] \
    run item modify block ~ ~2 ~ container.0 hydraulic_machinery:remove_one

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item] \
    run tag @s add hydraulic_machinery_removed_fuel_item

execute \
    as @s[tag=!hydraulic_machinery_found_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 1 \
    if data block ~ ~2 ~ Items[{Slot:1b,id:"minecraft:wheat"}] \
    run tag @s add hydraulic_machinery_found_fuel_item

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item,tag=!hydraulic_machinery_removed_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 1 \
    if data block ~ ~2 ~ Items[{Slot:1b,id:"minecraft:wheat"}] \
    run item modify block ~ ~2 ~ container.1 hydraulic_machinery:remove_one

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item] \
    run tag @s add hydraulic_machinery_removed_fuel_item

execute \
    as @s[tag=!hydraulic_machinery_found_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 1 \
    if data block ~ ~2 ~ Items[{Slot:2b,id:"minecraft:wheat"}] \
    run tag @s add hydraulic_machinery_found_fuel_item

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item,tag=!hydraulic_machinery_removed_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 1 \
    if data block ~ ~2 ~ Items[{Slot:2b,id:"minecraft:wheat"}] \
    run item modify block ~ ~2 ~ container.2 hydraulic_machinery:remove_one

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item] \
    run tag @s add hydraulic_machinery_removed_fuel_item

execute \
    as @s[tag=!hydraulic_machinery_found_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 1 \
    if data block ~ ~2 ~ Items[{Slot:3b,id:"minecraft:wheat"}] \
    run tag @s add hydraulic_machinery_found_fuel_item

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item,tag=!hydraulic_machinery_removed_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 1 \
    if data block ~ ~2 ~ Items[{Slot:3b,id:"minecraft:wheat"}] \
    run item modify block ~ ~2 ~ container.3 hydraulic_machinery:remove_one

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item] \
    run tag @s add hydraulic_machinery_removed_fuel_item

execute \
    as @s[tag=!hydraulic_machinery_found_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 1 \
    if data block ~ ~2 ~ Items[{Slot:4b,id:"minecraft:wheat"}] \
    run tag @s add hydraulic_machinery_found_fuel_item

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item,tag=!hydraulic_machinery_removed_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 1 \
    if data block ~ ~2 ~ Items[{Slot:4b,id:"minecraft:wheat"}] \
    run item modify block ~ ~2 ~ container.4 hydraulic_machinery:remove_one

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item] \
    run tag @s add hydraulic_machinery_removed_fuel_item

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 1 \
    run scoreboard players set @s hydraulic_machinery.fuel_level 18

tag @s remove hydraulic_machinery_found_fuel_item
tag @s remove hydraulic_machinery_removed_fuel_item
