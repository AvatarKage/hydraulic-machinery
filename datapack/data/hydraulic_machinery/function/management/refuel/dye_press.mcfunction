scoreboard players set @s hydraulic_machinery.fuel_type 0

execute \
    if data block ~ ~2 ~ Items[{id:"minecraft:white_dye"}] \
    run scoreboard players set @s hydraulic_machinery.fuel_type 1

execute \
    if data block ~ ~2 ~ Items[{id:"minecraft:light_gray_dye"}] \
    run scoreboard players set @s hydraulic_machinery.fuel_type 2

execute \
    if data block ~ ~2 ~ Items[{id:"minecraft:gray_dye"}] \
    run scoreboard players set @s hydraulic_machinery.fuel_type 3

execute \
    if data block ~ ~2 ~ Items[{id:"minecraft:black_dye"}] \
    run scoreboard players set @s hydraulic_machinery.fuel_type 4

execute \
    if data block ~ ~2 ~ Items[{id:"minecraft:brown_dye"}] \
    run scoreboard players set @s hydraulic_machinery.fuel_type 5

execute \
    if data block ~ ~2 ~ Items[{id:"minecraft:red_dye"}] \
    run scoreboard players set @s hydraulic_machinery.fuel_type 6

execute \
    if data block ~ ~2 ~ Items[{id:"minecraft:orange_dye"}] \
    run scoreboard players set @s hydraulic_machinery.fuel_type 7

execute \
    if data block ~ ~2 ~ Items[{id:"minecraft:yellow_dye"}] \
    run scoreboard players set @s hydraulic_machinery.fuel_type 8

execute \
    if data block ~ ~2 ~ Items[{id:"minecraft:lime_dye"}] \
    run scoreboard players set @s hydraulic_machinery.fuel_type 9

execute \
    if data block ~ ~2 ~ Items[{id:"minecraft:green_dye"}] \
    run scoreboard players set @s hydraulic_machinery.fuel_type 10

execute \
    if data block ~ ~2 ~ Items[{id:"minecraft:cyan_dye"}] \
    run scoreboard players set @s hydraulic_machinery.fuel_type 11

execute \
    if data block ~ ~2 ~ Items[{id:"minecraft:light_blue_dye"}] \
    run scoreboard players set @s hydraulic_machinery.fuel_type 12

execute \
    if data block ~ ~2 ~ Items[{id:"minecraft:blue_dye"}] \
    run scoreboard players set @s hydraulic_machinery.fuel_type 13

execute \
    if data block ~ ~2 ~ Items[{id:"minecraft:purple_dye"}] \
    run scoreboard players set @s hydraulic_machinery.fuel_type 14

execute \
    if data block ~ ~2 ~ Items[{id:"minecraft:magenta_dye"}] \
    run scoreboard players set @s hydraulic_machinery.fuel_type 15

execute \
    if data block ~ ~2 ~ Items[{id:"minecraft:pink_dye"}] \
    run scoreboard players set @s hydraulic_machinery.fuel_type 16

execute \
    if score @s hydraulic_machinery.fuel_type matches 0 \
    unless data entity @s CustomName \
    run tellraw @p ["",{color:"#e77b57",text:"[Hydraulic Machinery] "},"Dye press out of fuel!"]

execute \
    if score @s hydraulic_machinery.fuel_type matches 0 \
    if data entity @s CustomName \
    run tellraw @p ["",{"color":"#e77b57","text":"[Hydraulic Machinery] "},{"selector":"@s"}," out of fuel!"]

execute \
    if score @s hydraulic_machinery.fuel_type matches 0 \
    run setblock ~ ~-1 ~ minecraft:white_wool

execute \
    if score @s hydraulic_machinery.fuel_type matches 0 \
    run return 0

execute \
    as @s[tag=!hydraulic_machinery_found_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 1 \
    if data block ~ ~2 ~ Items[{Slot:0b,id:"minecraft:white_dye"}] \
    run tag @s add hydraulic_machinery_found_fuel_item

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item,tag=!hydraulic_machinery_removed_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 1 \
    if data block ~ ~2 ~ Items[{Slot:0b,id:"minecraft:white_dye"}] \
    run item modify block ~ ~2 ~ container.0 hydraulic_machinery:remove_one

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item] \
    run tag @s add hydraulic_machinery_removed_fuel_item

execute \
    as @s[tag=!hydraulic_machinery_found_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 1 \
    if data block ~ ~2 ~ Items[{Slot:1b,id:"minecraft:white_dye"}] \
    run tag @s add hydraulic_machinery_found_fuel_item

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item,tag=!hydraulic_machinery_removed_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 1 \
    if data block ~ ~2 ~ Items[{Slot:1b,id:"minecraft:white_dye"}] \
    run item modify block ~ ~2 ~ container.1 hydraulic_machinery:remove_one

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item] \
    run tag @s add hydraulic_machinery_removed_fuel_item

execute \
    as @s[tag=!hydraulic_machinery_found_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 1 \
    if data block ~ ~2 ~ Items[{Slot:2b,id:"minecraft:white_dye"}] \
    run tag @s add hydraulic_machinery_found_fuel_item

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item,tag=!hydraulic_machinery_removed_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 1 \
    if data block ~ ~2 ~ Items[{Slot:2b,id:"minecraft:white_dye"}] \
    run item modify block ~ ~2 ~ container.2 hydraulic_machinery:remove_one

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item] \
    run tag @s add hydraulic_machinery_removed_fuel_item

execute \
    as @s[tag=!hydraulic_machinery_found_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 1 \
    if data block ~ ~2 ~ Items[{Slot:3b,id:"minecraft:white_dye"}] \
    run tag @s add hydraulic_machinery_found_fuel_item

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item,tag=!hydraulic_machinery_removed_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 1 \
    if data block ~ ~2 ~ Items[{Slot:3b,id:"minecraft:white_dye"}] \
    run item modify block ~ ~2 ~ container.3 hydraulic_machinery:remove_one

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item] \
    run tag @s add hydraulic_machinery_removed_fuel_item

execute \
    as @s[tag=!hydraulic_machinery_found_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 1 \
    if data block ~ ~2 ~ Items[{Slot:4b,id:"minecraft:white_dye"}] \
    run tag @s add hydraulic_machinery_found_fuel_item

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item,tag=!hydraulic_machinery_removed_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 1 \
    if data block ~ ~2 ~ Items[{Slot:4b,id:"minecraft:white_dye"}] \
    run item modify block ~ ~2 ~ container.4 hydraulic_machinery:remove_one

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item] \
    run tag @s add hydraulic_machinery_removed_fuel_item

execute \
    as @s[tag=!hydraulic_machinery_found_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 2 \
    if data block ~ ~2 ~ Items[{Slot:0b,id:"minecraft:light_gray_dye"}] \
    run tag @s add hydraulic_machinery_found_fuel_item

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item,tag=!hydraulic_machinery_removed_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 2 \
    if data block ~ ~2 ~ Items[{Slot:0b,id:"minecraft:light_gray_dye"}] \
    run item modify block ~ ~2 ~ container.0 hydraulic_machinery:remove_one

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item] \
    run tag @s add hydraulic_machinery_removed_fuel_item

execute \
    as @s[tag=!hydraulic_machinery_found_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 2 \
    if data block ~ ~2 ~ Items[{Slot:1b,id:"minecraft:light_gray_dye"}] \
    run tag @s add hydraulic_machinery_found_fuel_item

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item,tag=!hydraulic_machinery_removed_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 2 \
    if data block ~ ~2 ~ Items[{Slot:1b,id:"minecraft:light_gray_dye"}] \
    run item modify block ~ ~2 ~ container.1 hydraulic_machinery:remove_one

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item] \
    run tag @s add hydraulic_machinery_removed_fuel_item

execute \
    as @s[tag=!hydraulic_machinery_found_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 2 \
    if data block ~ ~2 ~ Items[{Slot:2b,id:"minecraft:light_gray_dye"}] \
    run tag @s add hydraulic_machinery_found_fuel_item

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item,tag=!hydraulic_machinery_removed_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 2 \
    if data block ~ ~2 ~ Items[{Slot:2b,id:"minecraft:light_gray_dye"}] \
    run item modify block ~ ~2 ~ container.2 hydraulic_machinery:remove_one

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item] \
    run tag @s add hydraulic_machinery_removed_fuel_item

execute \
    as @s[tag=!hydraulic_machinery_found_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 2 \
    if data block ~ ~2 ~ Items[{Slot:3b,id:"minecraft:light_gray_dye"}] \
    run tag @s add hydraulic_machinery_found_fuel_item

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item,tag=!hydraulic_machinery_removed_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 2 \
    if data block ~ ~2 ~ Items[{Slot:3b,id:"minecraft:light_gray_dye"}] \
    run item modify block ~ ~2 ~ container.3 hydraulic_machinery:remove_one

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item] \
    run tag @s add hydraulic_machinery_removed_fuel_item

execute \
    as @s[tag=!hydraulic_machinery_found_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 2 \
    if data block ~ ~2 ~ Items[{Slot:4b,id:"minecraft:light_gray_dye"}] \
    run tag @s add hydraulic_machinery_found_fuel_item

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item,tag=!hydraulic_machinery_removed_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 2 \
    if data block ~ ~2 ~ Items[{Slot:4b,id:"minecraft:light_gray_dye"}] \
    run item modify block ~ ~2 ~ container.4 hydraulic_machinery:remove_one

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item] \
    run tag @s add hydraulic_machinery_removed_fuel_item

execute \
    as @s[tag=!hydraulic_machinery_found_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 3 \
    if data block ~ ~2 ~ Items[{Slot:0b,id:"minecraft:gray_dye"}] \
    run tag @s add hydraulic_machinery_found_fuel_item

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item,tag=!hydraulic_machinery_removed_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 3 \
    if data block ~ ~2 ~ Items[{Slot:0b,id:"minecraft:gray_dye"}] \
    run item modify block ~ ~2 ~ container.0 hydraulic_machinery:remove_one

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item] \
    run tag @s add hydraulic_machinery_removed_fuel_item

execute \
    as @s[tag=!hydraulic_machinery_found_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 3 \
    if data block ~ ~2 ~ Items[{Slot:1b,id:"minecraft:gray_dye"}] \
    run tag @s add hydraulic_machinery_found_fuel_item

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item,tag=!hydraulic_machinery_removed_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 3 \
    if data block ~ ~2 ~ Items[{Slot:1b,id:"minecraft:gray_dye"}] \
    run item modify block ~ ~2 ~ container.1 hydraulic_machinery:remove_one

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item] \
    run tag @s add hydraulic_machinery_removed_fuel_item

execute \
    as @s[tag=!hydraulic_machinery_found_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 3 \
    if data block ~ ~2 ~ Items[{Slot:2b,id:"minecraft:gray_dye"}] \
    run tag @s add hydraulic_machinery_found_fuel_item

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item,tag=!hydraulic_machinery_removed_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 3 \
    if data block ~ ~2 ~ Items[{Slot:2b,id:"minecraft:gray_dye"}] \
    run item modify block ~ ~2 ~ container.2 hydraulic_machinery:remove_one

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item] \
    run tag @s add hydraulic_machinery_removed_fuel_item

execute \
    as @s[tag=!hydraulic_machinery_found_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 3 \
    if data block ~ ~2 ~ Items[{Slot:3b,id:"minecraft:gray_dye"}] \
    run tag @s add hydraulic_machinery_found_fuel_item

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item,tag=!hydraulic_machinery_removed_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 3 \
    if data block ~ ~2 ~ Items[{Slot:3b,id:"minecraft:gray_dye"}] \
    run item modify block ~ ~2 ~ container.3 hydraulic_machinery:remove_one

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item] \
    run tag @s add hydraulic_machinery_removed_fuel_item

execute \
    as @s[tag=!hydraulic_machinery_found_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 3 \
    if data block ~ ~2 ~ Items[{Slot:4b,id:"minecraft:gray_dye"}] \
    run tag @s add hydraulic_machinery_found_fuel_item

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item,tag=!hydraulic_machinery_removed_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 3 \
    if data block ~ ~2 ~ Items[{Slot:4b,id:"minecraft:gray_dye"}] \
    run item modify block ~ ~2 ~ container.4 hydraulic_machinery:remove_one

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item] \
    run tag @s add hydraulic_machinery_removed_fuel_item

execute \
    as @s[tag=!hydraulic_machinery_found_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 4 \
    if data block ~ ~2 ~ Items[{Slot:0b,id:"minecraft:black_dye"}] \
    run tag @s add hydraulic_machinery_found_fuel_item

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item,tag=!hydraulic_machinery_removed_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 4 \
    if data block ~ ~2 ~ Items[{Slot:0b,id:"minecraft:black_dye"}] \
    run item modify block ~ ~2 ~ container.0 hydraulic_machinery:remove_one

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item] \
    run tag @s add hydraulic_machinery_removed_fuel_item

execute \
    as @s[tag=!hydraulic_machinery_found_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 4 \
    if data block ~ ~2 ~ Items[{Slot:1b,id:"minecraft:black_dye"}] \
    run tag @s add hydraulic_machinery_found_fuel_item

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item,tag=!hydraulic_machinery_removed_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 4 \
    if data block ~ ~2 ~ Items[{Slot:1b,id:"minecraft:black_dye"}] \
    run item modify block ~ ~2 ~ container.1 hydraulic_machinery:remove_one

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item] \
    run tag @s add hydraulic_machinery_removed_fuel_item

execute \
    as @s[tag=!hydraulic_machinery_found_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 4 \
    if data block ~ ~2 ~ Items[{Slot:2b,id:"minecraft:black_dye"}] \
    run tag @s add hydraulic_machinery_found_fuel_item

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item,tag=!hydraulic_machinery_removed_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 4 \
    if data block ~ ~2 ~ Items[{Slot:2b,id:"minecraft:black_dye"}] \
    run item modify block ~ ~2 ~ container.2 hydraulic_machinery:remove_one

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item] \
    run tag @s add hydraulic_machinery_removed_fuel_item

execute \
    as @s[tag=!hydraulic_machinery_found_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 4 \
    if data block ~ ~2 ~ Items[{Slot:3b,id:"minecraft:black_dye"}] \
    run tag @s add hydraulic_machinery_found_fuel_item

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item,tag=!hydraulic_machinery_removed_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 4 \
    if data block ~ ~2 ~ Items[{Slot:3b,id:"minecraft:black_dye"}] \
    run item modify block ~ ~2 ~ container.3 hydraulic_machinery:remove_one

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item] \
    run tag @s add hydraulic_machinery_removed_fuel_item

execute \
    as @s[tag=!hydraulic_machinery_found_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 4 \
    if data block ~ ~2 ~ Items[{Slot:4b,id:"minecraft:black_dye"}] \
    run tag @s add hydraulic_machinery_found_fuel_item

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item,tag=!hydraulic_machinery_removed_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 4 \
    if data block ~ ~2 ~ Items[{Slot:4b,id:"minecraft:black_dye"}] \
    run item modify block ~ ~2 ~ container.4 hydraulic_machinery:remove_one

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item] \
    run tag @s add hydraulic_machinery_removed_fuel_item

execute \
    as @s[tag=!hydraulic_machinery_found_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 5 \
    if data block ~ ~2 ~ Items[{Slot:0b,id:"minecraft:brown_dye"}] \
    run tag @s add hydraulic_machinery_found_fuel_item

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item,tag=!hydraulic_machinery_removed_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 5 \
    if data block ~ ~2 ~ Items[{Slot:0b,id:"minecraft:brown_dye"}] \
    run item modify block ~ ~2 ~ container.0 hydraulic_machinery:remove_one

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item] \
    run tag @s add hydraulic_machinery_removed_fuel_item

execute \
    as @s[tag=!hydraulic_machinery_found_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 5 \
    if data block ~ ~2 ~ Items[{Slot:1b,id:"minecraft:brown_dye"}] \
    run tag @s add hydraulic_machinery_found_fuel_item

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item,tag=!hydraulic_machinery_removed_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 5 \
    if data block ~ ~2 ~ Items[{Slot:1b,id:"minecraft:brown_dye"}] \
    run item modify block ~ ~2 ~ container.1 hydraulic_machinery:remove_one

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item] \
    run tag @s add hydraulic_machinery_removed_fuel_item

execute \
    as @s[tag=!hydraulic_machinery_found_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 5 \
    if data block ~ ~2 ~ Items[{Slot:2b,id:"minecraft:brown_dye"}] \
    run tag @s add hydraulic_machinery_found_fuel_item

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item,tag=!hydraulic_machinery_removed_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 5 \
    if data block ~ ~2 ~ Items[{Slot:2b,id:"minecraft:brown_dye"}] \
    run item modify block ~ ~2 ~ container.2 hydraulic_machinery:remove_one

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item] \
    run tag @s add hydraulic_machinery_removed_fuel_item

execute \
    as @s[tag=!hydraulic_machinery_found_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 5 \
    if data block ~ ~2 ~ Items[{Slot:3b,id:"minecraft:brown_dye"}] \
    run tag @s add hydraulic_machinery_found_fuel_item

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item,tag=!hydraulic_machinery_removed_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 5 \
    if data block ~ ~2 ~ Items[{Slot:3b,id:"minecraft:brown_dye"}] \
    run item modify block ~ ~2 ~ container.3 hydraulic_machinery:remove_one

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item] \
    run tag @s add hydraulic_machinery_removed_fuel_item

execute \
    as @s[tag=!hydraulic_machinery_found_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 5 \
    if data block ~ ~2 ~ Items[{Slot:4b,id:"minecraft:brown_dye"}] \
    run tag @s add hydraulic_machinery_found_fuel_item

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item,tag=!hydraulic_machinery_removed_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 5 \
    if data block ~ ~2 ~ Items[{Slot:4b,id:"minecraft:brown_dye"}] \
    run item modify block ~ ~2 ~ container.4 hydraulic_machinery:remove_one

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item] \
    run tag @s add hydraulic_machinery_removed_fuel_item

execute \
    as @s[tag=!hydraulic_machinery_found_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 6 \
    if data block ~ ~2 ~ Items[{Slot:0b,id:"minecraft:red_dye"}] \
    run tag @s add hydraulic_machinery_found_fuel_item

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item,tag=!hydraulic_machinery_removed_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 6 \
    if data block ~ ~2 ~ Items[{Slot:0b,id:"minecraft:red_dye"}] \
    run item modify block ~ ~2 ~ container.0 hydraulic_machinery:remove_one

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item] \
    run tag @s add hydraulic_machinery_removed_fuel_item

execute \
    as @s[tag=!hydraulic_machinery_found_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 6 \
    if data block ~ ~2 ~ Items[{Slot:1b,id:"minecraft:red_dye"}] \
    run tag @s add hydraulic_machinery_found_fuel_item

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item,tag=!hydraulic_machinery_removed_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 6 \
    if data block ~ ~2 ~ Items[{Slot:1b,id:"minecraft:red_dye"}] \
    run item modify block ~ ~2 ~ container.1 hydraulic_machinery:remove_one

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item] \
    run tag @s add hydraulic_machinery_removed_fuel_item

execute \
    as @s[tag=!hydraulic_machinery_found_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 6 \
    if data block ~ ~2 ~ Items[{Slot:2b,id:"minecraft:red_dye"}] \
    run tag @s add hydraulic_machinery_found_fuel_item

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item,tag=!hydraulic_machinery_removed_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 6 \
    if data block ~ ~2 ~ Items[{Slot:2b,id:"minecraft:red_dye"}] \
    run item modify block ~ ~2 ~ container.2 hydraulic_machinery:remove_one

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item] \
    run tag @s add hydraulic_machinery_removed_fuel_item

execute \
    as @s[tag=!hydraulic_machinery_found_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 6 \
    if data block ~ ~2 ~ Items[{Slot:3b,id:"minecraft:red_dye"}] \
    run tag @s add hydraulic_machinery_found_fuel_item

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item,tag=!hydraulic_machinery_removed_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 6 \
    if data block ~ ~2 ~ Items[{Slot:3b,id:"minecraft:red_dye"}] \
    run item modify block ~ ~2 ~ container.3 hydraulic_machinery:remove_one

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item] \
    run tag @s add hydraulic_machinery_removed_fuel_item

execute \
    as @s[tag=!hydraulic_machinery_found_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 6 \
    if data block ~ ~2 ~ Items[{Slot:4b,id:"minecraft:red_dye"}] \
    run tag @s add hydraulic_machinery_found_fuel_item

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item,tag=!hydraulic_machinery_removed_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 6 \
    if data block ~ ~2 ~ Items[{Slot:4b,id:"minecraft:red_dye"}] \
    run item modify block ~ ~2 ~ container.4 hydraulic_machinery:remove_one

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item] \
    run tag @s add hydraulic_machinery_removed_fuel_item

execute \
    as @s[tag=!hydraulic_machinery_found_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 7 \
    if data block ~ ~2 ~ Items[{Slot:0b,id:"minecraft:orange_dye"}] \
    run tag @s add hydraulic_machinery_found_fuel_item

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item,tag=!hydraulic_machinery_removed_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 7 \
    if data block ~ ~2 ~ Items[{Slot:0b,id:"minecraft:orange_dye"}] \
    run item modify block ~ ~2 ~ container.0 hydraulic_machinery:remove_one

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item] \
    run tag @s add hydraulic_machinery_removed_fuel_item

execute \
    as @s[tag=!hydraulic_machinery_found_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 7 \
    if data block ~ ~2 ~ Items[{Slot:1b,id:"minecraft:orange_dye"}] \
    run tag @s add hydraulic_machinery_found_fuel_item

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item,tag=!hydraulic_machinery_removed_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 7 \
    if data block ~ ~2 ~ Items[{Slot:1b,id:"minecraft:orange_dye"}] \
    run item modify block ~ ~2 ~ container.1 hydraulic_machinery:remove_one

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item] \
    run tag @s add hydraulic_machinery_removed_fuel_item

execute \
    as @s[tag=!hydraulic_machinery_found_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 7 \
    if data block ~ ~2 ~ Items[{Slot:2b,id:"minecraft:orange_dye"}] \
    run tag @s add hydraulic_machinery_found_fuel_item

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item,tag=!hydraulic_machinery_removed_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 7 \
    if data block ~ ~2 ~ Items[{Slot:2b,id:"minecraft:orange_dye"}] \
    run item modify block ~ ~2 ~ container.2 hydraulic_machinery:remove_one

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item] \
    run tag @s add hydraulic_machinery_removed_fuel_item

execute \
    as @s[tag=!hydraulic_machinery_found_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 7 \
    if data block ~ ~2 ~ Items[{Slot:3b,id:"minecraft:orange_dye"}] \
    run tag @s add hydraulic_machinery_found_fuel_item

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item,tag=!hydraulic_machinery_removed_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 7 \
    if data block ~ ~2 ~ Items[{Slot:3b,id:"minecraft:orange_dye"}] \
    run item modify block ~ ~2 ~ container.3 hydraulic_machinery:remove_one

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item] \
    run tag @s add hydraulic_machinery_removed_fuel_item

execute \
    as @s[tag=!hydraulic_machinery_found_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 7 \
    if data block ~ ~2 ~ Items[{Slot:4b,id:"minecraft:orange_dye"}] \
    run tag @s add hydraulic_machinery_found_fuel_item

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item,tag=!hydraulic_machinery_removed_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 7 \
    if data block ~ ~2 ~ Items[{Slot:4b,id:"minecraft:orange_dye"}] \
    run item modify block ~ ~2 ~ container.4 hydraulic_machinery:remove_one

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item] \
    run tag @s add hydraulic_machinery_removed_fuel_item

execute \
    as @s[tag=!hydraulic_machinery_found_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 8 \
    if data block ~ ~2 ~ Items[{Slot:0b,id:"minecraft:yellow_dye"}] \
    run tag @s add hydraulic_machinery_found_fuel_item

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item,tag=!hydraulic_machinery_removed_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 8 \
    if data block ~ ~2 ~ Items[{Slot:0b,id:"minecraft:yellow_dye"}] \
    run item modify block ~ ~2 ~ container.0 hydraulic_machinery:remove_one

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item] \
    run tag @s add hydraulic_machinery_removed_fuel_item

execute \
    as @s[tag=!hydraulic_machinery_found_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 8 \
    if data block ~ ~2 ~ Items[{Slot:1b,id:"minecraft:yellow_dye"}] \
    run tag @s add hydraulic_machinery_found_fuel_item

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item,tag=!hydraulic_machinery_removed_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 8 \
    if data block ~ ~2 ~ Items[{Slot:1b,id:"minecraft:yellow_dye"}] \
    run item modify block ~ ~2 ~ container.1 hydraulic_machinery:remove_one

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item] \
    run tag @s add hydraulic_machinery_removed_fuel_item

execute \
    as @s[tag=!hydraulic_machinery_found_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 8 \
    if data block ~ ~2 ~ Items[{Slot:2b,id:"minecraft:yellow_dye"}] \
    run tag @s add hydraulic_machinery_found_fuel_item

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item,tag=!hydraulic_machinery_removed_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 8 \
    if data block ~ ~2 ~ Items[{Slot:2b,id:"minecraft:yellow_dye"}] \
    run item modify block ~ ~2 ~ container.2 hydraulic_machinery:remove_one

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item] \
    run tag @s add hydraulic_machinery_removed_fuel_item

execute \
    as @s[tag=!hydraulic_machinery_found_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 8 \
    if data block ~ ~2 ~ Items[{Slot:3b,id:"minecraft:yellow_dye"}] \
    run tag @s add hydraulic_machinery_found_fuel_item

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item,tag=!hydraulic_machinery_removed_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 8 \
    if data block ~ ~2 ~ Items[{Slot:3b,id:"minecraft:yellow_dye"}] \
    run item modify block ~ ~2 ~ container.3 hydraulic_machinery:remove_one

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item] \
    run tag @s add hydraulic_machinery_removed_fuel_item

execute \
    as @s[tag=!hydraulic_machinery_found_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 8 \
    if data block ~ ~2 ~ Items[{Slot:4b,id:"minecraft:yellow_dye"}] \
    run tag @s add hydraulic_machinery_found_fuel_item

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item,tag=!hydraulic_machinery_removed_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 8 \
    if data block ~ ~2 ~ Items[{Slot:4b,id:"minecraft:yellow_dye"}] \
    run item modify block ~ ~2 ~ container.4 hydraulic_machinery:remove_one

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item] \
    run tag @s add hydraulic_machinery_removed_fuel_item

execute \
    as @s[tag=!hydraulic_machinery_found_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 9 \
    if data block ~ ~2 ~ Items[{Slot:0b,id:"minecraft:lime_dye"}] \
    run tag @s add hydraulic_machinery_found_fuel_item

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item,tag=!hydraulic_machinery_removed_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 9 \
    if data block ~ ~2 ~ Items[{Slot:0b,id:"minecraft:lime_dye"}] \
    run item modify block ~ ~2 ~ container.0 hydraulic_machinery:remove_one

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item] \
    run tag @s add hydraulic_machinery_removed_fuel_item

execute \
    as @s[tag=!hydraulic_machinery_found_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 9 \
    if data block ~ ~2 ~ Items[{Slot:1b,id:"minecraft:lime_dye"}] \
    run tag @s add hydraulic_machinery_found_fuel_item

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item,tag=!hydraulic_machinery_removed_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 9 \
    if data block ~ ~2 ~ Items[{Slot:1b,id:"minecraft:lime_dye"}] \
    run item modify block ~ ~2 ~ container.1 hydraulic_machinery:remove_one

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item] \
    run tag @s add hydraulic_machinery_removed_fuel_item

execute \
    as @s[tag=!hydraulic_machinery_found_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 9 \
    if data block ~ ~2 ~ Items[{Slot:2b,id:"minecraft:lime_dye"}] \
    run tag @s add hydraulic_machinery_found_fuel_item

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item,tag=!hydraulic_machinery_removed_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 9 \
    if data block ~ ~2 ~ Items[{Slot:2b,id:"minecraft:lime_dye"}] \
    run item modify block ~ ~2 ~ container.2 hydraulic_machinery:remove_one

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item] \
    run tag @s add hydraulic_machinery_removed_fuel_item

execute \
    as @s[tag=!hydraulic_machinery_found_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 9 \
    if data block ~ ~2 ~ Items[{Slot:3b,id:"minecraft:lime_dye"}] \
    run tag @s add hydraulic_machinery_found_fuel_item

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item,tag=!hydraulic_machinery_removed_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 9 \
    if data block ~ ~2 ~ Items[{Slot:3b,id:"minecraft:lime_dye"}] \
    run item modify block ~ ~2 ~ container.3 hydraulic_machinery:remove_one

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item] \
    run tag @s add hydraulic_machinery_removed_fuel_item

execute \
    as @s[tag=!hydraulic_machinery_found_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 9 \
    if data block ~ ~2 ~ Items[{Slot:4b,id:"minecraft:lime_dye"}] \
    run tag @s add hydraulic_machinery_found_fuel_item

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item,tag=!hydraulic_machinery_removed_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 9 \
    if data block ~ ~2 ~ Items[{Slot:4b,id:"minecraft:lime_dye"}] \
    run item modify block ~ ~2 ~ container.4 hydraulic_machinery:remove_one

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item] \
    run tag @s add hydraulic_machinery_removed_fuel_item

execute \
    as @s[tag=!hydraulic_machinery_found_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 10 \
    if data block ~ ~2 ~ Items[{Slot:0b,id:"minecraft:green_dye"}] \
    run tag @s add hydraulic_machinery_found_fuel_item

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item,tag=!hydraulic_machinery_removed_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 10 \
    if data block ~ ~2 ~ Items[{Slot:0b,id:"minecraft:green_dye"}] \
    run item modify block ~ ~2 ~ container.0 hydraulic_machinery:remove_one

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item] \
    run tag @s add hydraulic_machinery_removed_fuel_item

execute \
    as @s[tag=!hydraulic_machinery_found_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 10 \
    if data block ~ ~2 ~ Items[{Slot:1b,id:"minecraft:green_dye"}] \
    run tag @s add hydraulic_machinery_found_fuel_item

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item,tag=!hydraulic_machinery_removed_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 10 \
    if data block ~ ~2 ~ Items[{Slot:1b,id:"minecraft:green_dye"}] \
    run item modify block ~ ~2 ~ container.1 hydraulic_machinery:remove_one

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item] \
    run tag @s add hydraulic_machinery_removed_fuel_item

execute \
    as @s[tag=!hydraulic_machinery_found_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 10 \
    if data block ~ ~2 ~ Items[{Slot:2b,id:"minecraft:green_dye"}] \
    run tag @s add hydraulic_machinery_found_fuel_item

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item,tag=!hydraulic_machinery_removed_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 10 \
    if data block ~ ~2 ~ Items[{Slot:2b,id:"minecraft:green_dye"}] \
    run item modify block ~ ~2 ~ container.2 hydraulic_machinery:remove_one

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item] \
    run tag @s add hydraulic_machinery_removed_fuel_item

execute \
    as @s[tag=!hydraulic_machinery_found_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 10 \
    if data block ~ ~2 ~ Items[{Slot:3b,id:"minecraft:green_dye"}] \
    run tag @s add hydraulic_machinery_found_fuel_item

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item,tag=!hydraulic_machinery_removed_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 10 \
    if data block ~ ~2 ~ Items[{Slot:3b,id:"minecraft:green_dye"}] \
    run item modify block ~ ~2 ~ container.3 hydraulic_machinery:remove_one

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item] \
    run tag @s add hydraulic_machinery_removed_fuel_item

execute \
    as @s[tag=!hydraulic_machinery_found_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 10 \
    if data block ~ ~2 ~ Items[{Slot:4b,id:"minecraft:green_dye"}] \
    run tag @s add hydraulic_machinery_found_fuel_item

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item,tag=!hydraulic_machinery_removed_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 10 \
    if data block ~ ~2 ~ Items[{Slot:4b,id:"minecraft:green_dye"}] \
    run item modify block ~ ~2 ~ container.4 hydraulic_machinery:remove_one

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item] \
    run tag @s add hydraulic_machinery_removed_fuel_item

execute \
    as @s[tag=!hydraulic_machinery_found_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 11 \
    if data block ~ ~2 ~ Items[{Slot:0b,id:"minecraft:cyan_dye"}] \
    run tag @s add hydraulic_machinery_found_fuel_item

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item,tag=!hydraulic_machinery_removed_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 11 \
    if data block ~ ~2 ~ Items[{Slot:0b,id:"minecraft:cyan_dye"}] \
    run item modify block ~ ~2 ~ container.0 hydraulic_machinery:remove_one

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item] \
    run tag @s add hydraulic_machinery_removed_fuel_item

execute \
    as @s[tag=!hydraulic_machinery_found_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 11 \
    if data block ~ ~2 ~ Items[{Slot:1b,id:"minecraft:cyan_dye"}] \
    run tag @s add hydraulic_machinery_found_fuel_item

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item,tag=!hydraulic_machinery_removed_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 11 \
    if data block ~ ~2 ~ Items[{Slot:1b,id:"minecraft:cyan_dye"}] \
    run item modify block ~ ~2 ~ container.1 hydraulic_machinery:remove_one

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item] \
    run tag @s add hydraulic_machinery_removed_fuel_item

execute \
    as @s[tag=!hydraulic_machinery_found_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 11 \
    if data block ~ ~2 ~ Items[{Slot:2b,id:"minecraft:cyan_dye"}] \
    run tag @s add hydraulic_machinery_found_fuel_item

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item,tag=!hydraulic_machinery_removed_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 11 \
    if data block ~ ~2 ~ Items[{Slot:2b,id:"minecraft:cyan_dye"}] \
    run item modify block ~ ~2 ~ container.2 hydraulic_machinery:remove_one

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item] \
    run tag @s add hydraulic_machinery_removed_fuel_item

execute \
    as @s[tag=!hydraulic_machinery_found_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 11 \
    if data block ~ ~2 ~ Items[{Slot:3b,id:"minecraft:cyan_dye"}] \
    run tag @s add hydraulic_machinery_found_fuel_item

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item,tag=!hydraulic_machinery_removed_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 11 \
    if data block ~ ~2 ~ Items[{Slot:3b,id:"minecraft:cyan_dye"}] \
    run item modify block ~ ~2 ~ container.3 hydraulic_machinery:remove_one

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item] \
    run tag @s add hydraulic_machinery_removed_fuel_item

execute \
    as @s[tag=!hydraulic_machinery_found_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 11 \
    if data block ~ ~2 ~ Items[{Slot:4b,id:"minecraft:cyan_dye"}] \
    run tag @s add hydraulic_machinery_found_fuel_item

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item,tag=!hydraulic_machinery_removed_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 11 \
    if data block ~ ~2 ~ Items[{Slot:4b,id:"minecraft:cyan_dye"}] \
    run item modify block ~ ~2 ~ container.4 hydraulic_machinery:remove_one

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item] \
    run tag @s add hydraulic_machinery_removed_fuel_item

execute \
    as @s[tag=!hydraulic_machinery_found_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 12 \
    if data block ~ ~2 ~ Items[{Slot:0b,id:"minecraft:light_blue_dye"}] \
    run tag @s add hydraulic_machinery_found_fuel_item

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item,tag=!hydraulic_machinery_removed_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 12 \
    if data block ~ ~2 ~ Items[{Slot:0b,id:"minecraft:light_blue_dye"}] \
    run item modify block ~ ~2 ~ container.0 hydraulic_machinery:remove_one

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item] \
    run tag @s add hydraulic_machinery_removed_fuel_item

execute \
    as @s[tag=!hydraulic_machinery_found_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 12 \
    if data block ~ ~2 ~ Items[{Slot:1b,id:"minecraft:light_blue_dye"}] \
    run tag @s add hydraulic_machinery_found_fuel_item

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item,tag=!hydraulic_machinery_removed_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 12 \
    if data block ~ ~2 ~ Items[{Slot:1b,id:"minecraft:light_blue_dye"}] \
    run item modify block ~ ~2 ~ container.1 hydraulic_machinery:remove_one

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item] \
    run tag @s add hydraulic_machinery_removed_fuel_item

execute \
    as @s[tag=!hydraulic_machinery_found_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 12 \
    if data block ~ ~2 ~ Items[{Slot:2b,id:"minecraft:light_blue_dye"}] \
    run tag @s add hydraulic_machinery_found_fuel_item

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item,tag=!hydraulic_machinery_removed_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 12 \
    if data block ~ ~2 ~ Items[{Slot:2b,id:"minecraft:light_blue_dye"}] \
    run item modify block ~ ~2 ~ container.2 hydraulic_machinery:remove_one

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item] \
    run tag @s add hydraulic_machinery_removed_fuel_item

execute \
    as @s[tag=!hydraulic_machinery_found_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 12 \
    if data block ~ ~2 ~ Items[{Slot:3b,id:"minecraft:light_blue_dye"}] \
    run tag @s add hydraulic_machinery_found_fuel_item

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item,tag=!hydraulic_machinery_removed_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 12 \
    if data block ~ ~2 ~ Items[{Slot:3b,id:"minecraft:light_blue_dye"}] \
    run item modify block ~ ~2 ~ container.3 hydraulic_machinery:remove_one

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item] \
    run tag @s add hydraulic_machinery_removed_fuel_item

execute \
    as @s[tag=!hydraulic_machinery_found_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 12 \
    if data block ~ ~2 ~ Items[{Slot:4b,id:"minecraft:light_blue_dye"}] \
    run tag @s add hydraulic_machinery_found_fuel_item

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item,tag=!hydraulic_machinery_removed_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 12 \
    if data block ~ ~2 ~ Items[{Slot:4b,id:"minecraft:light_blue_dye"}] \
    run item modify block ~ ~2 ~ container.4 hydraulic_machinery:remove_one

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item] \
    run tag @s add hydraulic_machinery_removed_fuel_item

execute \
    as @s[tag=!hydraulic_machinery_found_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 13 \
    if data block ~ ~2 ~ Items[{Slot:0b,id:"minecraft:blue_dye"}] \
    run tag @s add hydraulic_machinery_found_fuel_item

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item,tag=!hydraulic_machinery_removed_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 13 \
    if data block ~ ~2 ~ Items[{Slot:0b,id:"minecraft:blue_dye"}] \
    run item modify block ~ ~2 ~ container.0 hydraulic_machinery:remove_one

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item] \
    run tag @s add hydraulic_machinery_removed_fuel_item

execute \
    as @s[tag=!hydraulic_machinery_found_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 13 \
    if data block ~ ~2 ~ Items[{Slot:1b,id:"minecraft:blue_dye"}] \
    run tag @s add hydraulic_machinery_found_fuel_item

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item,tag=!hydraulic_machinery_removed_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 13 \
    if data block ~ ~2 ~ Items[{Slot:1b,id:"minecraft:blue_dye"}] \
    run item modify block ~ ~2 ~ container.1 hydraulic_machinery:remove_one

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item] \
    run tag @s add hydraulic_machinery_removed_fuel_item

execute \
    as @s[tag=!hydraulic_machinery_found_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 13 \
    if data block ~ ~2 ~ Items[{Slot:2b,id:"minecraft:blue_dye"}] \
    run tag @s add hydraulic_machinery_found_fuel_item

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item,tag=!hydraulic_machinery_removed_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 13 \
    if data block ~ ~2 ~ Items[{Slot:2b,id:"minecraft:blue_dye"}] \
    run item modify block ~ ~2 ~ container.2 hydraulic_machinery:remove_one

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item] \
    run tag @s add hydraulic_machinery_removed_fuel_item

execute \
    as @s[tag=!hydraulic_machinery_found_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 13 \
    if data block ~ ~2 ~ Items[{Slot:3b,id:"minecraft:blue_dye"}] \
    run tag @s add hydraulic_machinery_found_fuel_item

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item,tag=!hydraulic_machinery_removed_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 13 \
    if data block ~ ~2 ~ Items[{Slot:3b,id:"minecraft:blue_dye"}] \
    run item modify block ~ ~2 ~ container.3 hydraulic_machinery:remove_one

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item] \
    run tag @s add hydraulic_machinery_removed_fuel_item

execute \
    as @s[tag=!hydraulic_machinery_found_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 13 \
    if data block ~ ~2 ~ Items[{Slot:4b,id:"minecraft:blue_dye"}] \
    run tag @s add hydraulic_machinery_found_fuel_item

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item,tag=!hydraulic_machinery_removed_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 13 \
    if data block ~ ~2 ~ Items[{Slot:4b,id:"minecraft:blue_dye"}] \
    run item modify block ~ ~2 ~ container.4 hydraulic_machinery:remove_one

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item] \
    run tag @s add hydraulic_machinery_removed_fuel_item

execute \
    as @s[tag=!hydraulic_machinery_found_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 14 \
    if data block ~ ~2 ~ Items[{Slot:0b,id:"minecraft:purple_dye"}] \
    run tag @s add hydraulic_machinery_found_fuel_item

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item,tag=!hydraulic_machinery_removed_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 14 \
    if data block ~ ~2 ~ Items[{Slot:0b,id:"minecraft:purple_dye"}] \
    run item modify block ~ ~2 ~ container.0 hydraulic_machinery:remove_one

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item] \
    run tag @s add hydraulic_machinery_removed_fuel_item

execute \
    as @s[tag=!hydraulic_machinery_found_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 14 \
    if data block ~ ~2 ~ Items[{Slot:1b,id:"minecraft:purple_dye"}] \
    run tag @s add hydraulic_machinery_found_fuel_item

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item,tag=!hydraulic_machinery_removed_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 14 \
    if data block ~ ~2 ~ Items[{Slot:1b,id:"minecraft:purple_dye"}] \
    run item modify block ~ ~2 ~ container.1 hydraulic_machinery:remove_one

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item] \
    run tag @s add hydraulic_machinery_removed_fuel_item

execute \
    as @s[tag=!hydraulic_machinery_found_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 14 \
    if data block ~ ~2 ~ Items[{Slot:2b,id:"minecraft:purple_dye"}] \
    run tag @s add hydraulic_machinery_found_fuel_item

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item,tag=!hydraulic_machinery_removed_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 14 \
    if data block ~ ~2 ~ Items[{Slot:2b,id:"minecraft:purple_dye"}] \
    run item modify block ~ ~2 ~ container.2 hydraulic_machinery:remove_one

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item] \
    run tag @s add hydraulic_machinery_removed_fuel_item

execute \
    as @s[tag=!hydraulic_machinery_found_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 14 \
    if data block ~ ~2 ~ Items[{Slot:3b,id:"minecraft:purple_dye"}] \
    run tag @s add hydraulic_machinery_found_fuel_item

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item,tag=!hydraulic_machinery_removed_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 14 \
    if data block ~ ~2 ~ Items[{Slot:3b,id:"minecraft:purple_dye"}] \
    run item modify block ~ ~2 ~ container.3 hydraulic_machinery:remove_one

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item] \
    run tag @s add hydraulic_machinery_removed_fuel_item

execute \
    as @s[tag=!hydraulic_machinery_found_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 14 \
    if data block ~ ~2 ~ Items[{Slot:4b,id:"minecraft:purple_dye"}] \
    run tag @s add hydraulic_machinery_found_fuel_item

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item,tag=!hydraulic_machinery_removed_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 14 \
    if data block ~ ~2 ~ Items[{Slot:4b,id:"minecraft:purple_dye"}] \
    run item modify block ~ ~2 ~ container.4 hydraulic_machinery:remove_one

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item] \
    run tag @s add hydraulic_machinery_removed_fuel_item


execute \
    as @s[tag=!hydraulic_machinery_found_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 15 \
    if data block ~ ~2 ~ Items[{Slot:0b,id:"minecraft:magenta_dye"}] \
    run tag @s add hydraulic_machinery_found_fuel_item

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item,tag=!hydraulic_machinery_removed_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 15 \
    if data block ~ ~2 ~ Items[{Slot:0b,id:"minecraft:magenta_dye"}] \
    run item modify block ~ ~2 ~ container.0 hydraulic_machinery:remove_one

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item] \
    run tag @s add hydraulic_machinery_removed_fuel_item

execute \
    as @s[tag=!hydraulic_machinery_found_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 15 \
    if data block ~ ~2 ~ Items[{Slot:1b,id:"minecraft:magenta_dye"}] \
    run tag @s add hydraulic_machinery_found_fuel_item

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item,tag=!hydraulic_machinery_removed_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 15 \
    if data block ~ ~2 ~ Items[{Slot:1b,id:"minecraft:magenta_dye"}] \
    run item modify block ~ ~2 ~ container.1 hydraulic_machinery:remove_one

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item] \
    run tag @s add hydraulic_machinery_removed_fuel_item

execute \
    as @s[tag=!hydraulic_machinery_found_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 15 \
    if data block ~ ~2 ~ Items[{Slot:2b,id:"minecraft:magenta_dye"}] \
    run tag @s add hydraulic_machinery_found_fuel_item

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item,tag=!hydraulic_machinery_removed_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 15 \
    if data block ~ ~2 ~ Items[{Slot:2b,id:"minecraft:magenta_dye"}] \
    run item modify block ~ ~2 ~ container.2 hydraulic_machinery:remove_one

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item] \
    run tag @s add hydraulic_machinery_removed_fuel_item

execute \
    as @s[tag=!hydraulic_machinery_found_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 15 \
    if data block ~ ~2 ~ Items[{Slot:3b,id:"minecraft:magenta_dye"}] \
    run tag @s add hydraulic_machinery_found_fuel_item

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item,tag=!hydraulic_machinery_removed_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 15 \
    if data block ~ ~2 ~ Items[{Slot:3b,id:"minecraft:magenta_dye"}] \
    run item modify block ~ ~2 ~ container.3 hydraulic_machinery:remove_one

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item] \
    run tag @s add hydraulic_machinery_removed_fuel_item

execute \
    as @s[tag=!hydraulic_machinery_found_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 15 \
    if data block ~ ~2 ~ Items[{Slot:4b,id:"minecraft:magenta_dye"}] \
    run tag @s add hydraulic_machinery_found_fuel_item

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item,tag=!hydraulic_machinery_removed_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 15 \
    if data block ~ ~2 ~ Items[{Slot:4b,id:"minecraft:magenta_dye"}] \
    run item modify block ~ ~2 ~ container.4 hydraulic_machinery:remove_one

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item] \
    run tag @s add hydraulic_machinery_removed_fuel_item

execute \
    as @s[tag=!hydraulic_machinery_found_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 16 \
    if data block ~ ~2 ~ Items[{Slot:0b,id:"minecraft:pink_dye"}] \
    run tag @s add hydraulic_machinery_found_fuel_item

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item,tag=!hydraulic_machinery_removed_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 16 \
    if data block ~ ~2 ~ Items[{Slot:0b,id:"minecraft:pink_dye"}] \
    run item modify block ~ ~2 ~ container.0 hydraulic_machinery:remove_one

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item] \
    run tag @s add hydraulic_machinery_removed_fuel_item

execute \
    as @s[tag=!hydraulic_machinery_found_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 16 \
    if data block ~ ~2 ~ Items[{Slot:1b,id:"minecraft:pink_dye"}] \
    run tag @s add hydraulic_machinery_found_fuel_item

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item,tag=!hydraulic_machinery_removed_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 16 \
    if data block ~ ~2 ~ Items[{Slot:1b,id:"minecraft:pink_dye"}] \
    run item modify block ~ ~2 ~ container.1 hydraulic_machinery:remove_one

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item] \
    run tag @s add hydraulic_machinery_removed_fuel_item

execute \
    as @s[tag=!hydraulic_machinery_found_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 16 \
    if data block ~ ~2 ~ Items[{Slot:2b,id:"minecraft:pink_dye"}] \
    run tag @s add hydraulic_machinery_found_fuel_item

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item,tag=!hydraulic_machinery_removed_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 16 \
    if data block ~ ~2 ~ Items[{Slot:2b,id:"minecraft:pink_dye"}] \
    run item modify block ~ ~2 ~ container.2 hydraulic_machinery:remove_one

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item] \
    run tag @s add hydraulic_machinery_removed_fuel_item

execute \
    as @s[tag=!hydraulic_machinery_found_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 16 \
    if data block ~ ~2 ~ Items[{Slot:3b,id:"minecraft:pink_dye"}] \
    run tag @s add hydraulic_machinery_found_fuel_item

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item,tag=!hydraulic_machinery_removed_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 16 \
    if data block ~ ~2 ~ Items[{Slot:3b,id:"minecraft:pink_dye"}] \
    run item modify block ~ ~2 ~ container.3 hydraulic_machinery:remove_one

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item] \
    run tag @s add hydraulic_machinery_removed_fuel_item

execute \
    as @s[tag=!hydraulic_machinery_found_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 16 \
    if data block ~ ~2 ~ Items[{Slot:4b,id:"minecraft:pink_dye"}] \
    run tag @s add hydraulic_machinery_found_fuel_item

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item,tag=!hydraulic_machinery_removed_fuel_item] \
    if score @s hydraulic_machinery.fuel_type matches 16 \
    if data block ~ ~2 ~ Items[{Slot:4b,id:"minecraft:pink_dye"}] \
    run item modify block ~ ~2 ~ container.4 hydraulic_machinery:remove_one

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item] \
    run tag @s add hydraulic_machinery_removed_fuel_item

execute \
    as @s[tag=hydraulic_machinery_found_fuel_item] \
    run scoreboard players set @s hydraulic_machinery.fuel_level 16

execute \
    if score @s hydraulic_machinery.fuel_type matches 1 \
    run setblock ~ ~-1 ~ minecraft:white_wool

execute \
    if score @s hydraulic_machinery.fuel_type matches 2 \
    run setblock ~ ~-1 ~ minecraft:light_gray_wool

execute \
    if score @s hydraulic_machinery.fuel_type matches 3 \
    run setblock ~ ~-1 ~ minecraft:gray_wool

execute \
    if score @s hydraulic_machinery.fuel_type matches 4 \
    run setblock ~ ~-1 ~ minecraft:black_wool

execute \
    if score @s hydraulic_machinery.fuel_type matches 5 \
    run setblock ~ ~-1 ~ minecraft:brown_wool

execute \
    if score @s hydraulic_machinery.fuel_type matches 6 \
    run setblock ~ ~-1 ~ minecraft:red_wool

execute \
    if score @s hydraulic_machinery.fuel_type matches 7 \
    run setblock ~ ~-1 ~ minecraft:orange_wool

execute \
    if score @s hydraulic_machinery.fuel_type matches 8 \
    run setblock ~ ~-1 ~ minecraft:yellow_wool

execute \
    if score @s hydraulic_machinery.fuel_type matches 9 \
    run setblock ~ ~-1 ~ minecraft:lime_wool

execute \
    if score @s hydraulic_machinery.fuel_type matches 10 \
    run setblock ~ ~-1 ~ minecraft:green_wool

execute \
    if score @s hydraulic_machinery.fuel_type matches 11 \
    run setblock ~ ~-1 ~ minecraft:cyan_wool

execute \
    if score @s hydraulic_machinery.fuel_type matches 12 \
    run setblock ~ ~-1 ~ minecraft:light_blue_wool

execute \
    if score @s hydraulic_machinery.fuel_type matches 13 \
    run setblock ~ ~-1 ~ minecraft:blue_wool

execute \
    if score @s hydraulic_machinery.fuel_type matches 14 \
    run setblock ~ ~-1 ~ minecraft:purple_wool

execute \
    if score @s hydraulic_machinery.fuel_type matches 15 \
    run setblock ~ ~-1 ~ minecraft:magenta_wool

execute \
    if score @s hydraulic_machinery.fuel_type matches 16 \
    run setblock ~ ~-1 ~ minecraft:pink_wool

tag @s remove hydraulic_machinery_found_fuel_item
tag @s remove hydraulic_machinery_removed_fuel_item
