execute \
    if score #global hydraulic_machinery.is_hydraulic_press_enabled matches 1 \
    if block ~ ~ ~ minecraft:sticky_piston \
    if block ~ ~-1 ~ #hydraulic_machinery:tier_blocks \
    align xyz positioned ~0.5 ~-0.5 ~0.5 \
    unless entity @e[type=minecraft:armor_stand,tag=hydraulic_machinery_hydraulic_marker,distance=..0.5] \
    run summon minecraft:armor_stand ~ ~ ~ \
        {Invulnerable:1b,NoGravity:1b,Invisible:1b,Marker:1b, \
        Tags:["hydraulic_machinery_marker","hydraulic_machinery_hydraulic_marker"]}
        
execute \
    if score #global hydraulic_machinery.is_hydraulic_press_enabled matches 1 \
    if block ~ ~ ~ minecraft:sticky_piston \
    if block ~ ~-1 ~ #hydraulic_machinery:tier_blocks \
    run function hydraulic_machinery:management/create/check/hydraulic_press

execute \
    if score #global hydraulic_machinery.is_heat_press_enabled matches 1 \
    if block ~ ~ ~ minecraft:sticky_piston \
    if block ~ ~-1 ~ minecraft:magma_block \
    align xyz positioned ~0.5 ~-0.5 ~0.5 \
    unless entity @e[type=minecraft:armor_stand,tag=hydraulic_machinery_heat_marker,distance=..0.5] \
    run summon minecraft:armor_stand ~ ~ ~ \
        {Invulnerable:1b,NoGravity:1b,Invisible:1b,Marker:1b, \
        Tags:["hydraulic_machinery_marker","hydraulic_machinery_heat_marker"]}

execute \
    if score #global hydraulic_machinery.is_heat_press_enabled matches 1 \
    if block ~ ~ ~ minecraft:sticky_piston \
    if block ~ ~-1 ~ minecraft:magma_block \
    run function hydraulic_machinery:management/create/check/heat_press

execute \
    if score #global hydraulic_machinery.is_wet_press_enabled matches 1 \
    if block ~ ~ ~ minecraft:sticky_piston \
    if block ~ ~-1 ~ minecraft:wet_sponge \
    align xyz positioned ~0.5 ~-0.5 ~0.5 \
    unless entity @e[type=minecraft:armor_stand,tag=hydraulic_machinery_wet_marker,distance=..0.5] \
    run summon minecraft:armor_stand ~ ~ ~ \
        {Invulnerable:1b,NoGravity:1b,Invisible:1b,Marker:1b, \
        Tags:["hydraulic_machinery_marker","hydraulic_machinery_wet_marker"]}

execute \
    if score #global hydraulic_machinery.is_wet_press_enabled matches 1 \
    if block ~ ~ ~ minecraft:sticky_piston \
    if block ~ ~-1 ~ minecraft:wet_sponge \
    run function hydraulic_machinery:management/create/check/wet_press

execute \
    if score #global hydraulic_machinery.is_dye_press_enabled matches 1 \
    if block ~ ~ ~ minecraft:sticky_piston \
    if block ~ ~-1 ~ #minecraft:wool \
    align xyz positioned ~0.5 ~-0.5 ~0.5 \
    unless entity @e[type=minecraft:armor_stand,tag=hydraulic_machinery_dye_marker,distance=..0.5] \
    run summon minecraft:armor_stand ~ ~ ~ \
        {Invulnerable:1b,NoGravity:1b,Invisible:1b,Marker:1b, \
        Tags:["hydraulic_machinery_marker","hydraulic_machinery_dye_marker"]}

execute \
    if score #global hydraulic_machinery.is_dye_press_enabled matches 1 \
    if block ~ ~ ~ minecraft:sticky_piston \
    if block ~ ~-1 ~ #minecraft:wool \
    run function hydraulic_machinery:management/create/check/dye_press

execute \
    if score #global hydraulic_machinery.is_wax_press_enabled matches 1 \
    if block ~ ~ ~ minecraft:sticky_piston \
    if block ~ ~-1 ~ minecraft:honeycomb_block \
    align xyz positioned ~0.5 ~-0.5 ~0.5 \
    unless entity @e[type=minecraft:armor_stand,tag=hydraulic_machinery_wax_marker,distance=..0.5] \
    run summon minecraft:armor_stand ~ ~ ~ \
        {Invulnerable:1b,NoGravity:1b,Invisible:1b,Marker:1b, \
        Tags:["hydraulic_machinery_marker","hydraulic_machinery_wax_marker"]}

execute \
    if score #global hydraulic_machinery.is_wax_press_enabled matches 1 \
    if block ~ ~ ~ minecraft:sticky_piston \
    if block ~ ~-1 ~ minecraft:honeycomb_block \
    run function hydraulic_machinery:management/create/check/wax_press

execute \
    if score #global hydraulic_machinery.is_sculk_press_enabled matches 1 \
    if block ~ ~ ~ minecraft:sticky_piston \
    if block ~ ~-1 ~ minecraft:sculk \
    align xyz positioned ~0.5 ~-0.5 ~0.5 \
    unless entity @e[type=minecraft:armor_stand,tag=hydraulic_machinery_sculk_marker,distance=..0.5] \
    run summon minecraft:armor_stand ~ ~ ~ \
        {Invulnerable:1b,NoGravity:1b,Invisible:1b,Marker:1b, \
        Tags:["hydraulic_machinery_marker","hydraulic_machinery_sculk_marker"]}

execute \
    if score #global hydraulic_machinery.is_sculk_press_enabled matches 1 \
    if block ~ ~ ~ minecraft:sticky_piston \
    if block ~ ~-1 ~ minecraft:sculk \
    run function hydraulic_machinery:management/create/check/sculk_press

execute \
    if score #global hydraulic_machinery.is_freeze_press_enabled matches 1 \
    if block ~ ~ ~ minecraft:sticky_piston \
    if block ~ ~-1 ~ #minecraft:ice \
    align xyz positioned ~0.5 ~-0.5 ~0.5 \
    unless entity @e[type=minecraft:armor_stand,tag=hydraulic_machinery_freeze_marker,distance=..0.5] \
    run summon minecraft:armor_stand ~ ~ ~ \
        {Invulnerable:1b,NoGravity:1b,Invisible:1b,Marker:1b, \
        Tags:["hydraulic_machinery_marker","hydraulic_machinery_freeze_marker"]}

execute \
    if score #global hydraulic_machinery.is_freeze_press_enabled matches 1 \
    if block ~ ~ ~ minecraft:sticky_piston \
    if block ~ ~-1 ~ #minecraft:ice \
    run function hydraulic_machinery:management/create/check/freeze_press

execute \
    if score #global hydraulic_machinery.is_bone_press_enabled matches 1 \
    if block ~ ~ ~ minecraft:sticky_piston \
    if block ~ ~-1 ~ minecraft:bone_block \
    align xyz positioned ~0.5 ~-0.5 ~0.5 \
    unless entity @e[type=minecraft:armor_stand,tag=hydraulic_machinery_bone_marker,distance=..0.5] \
    run summon minecraft:armor_stand ~ ~ ~ \
        {Invulnerable:1b,NoGravity:1b,Invisible:1b,Marker:1b, \
        Tags:["hydraulic_machinery_marker","hydraulic_machinery_bone_marker"]}

execute \
    if score #global hydraulic_machinery.is_bone_press_enabled matches 1 \
    if block ~ ~ ~ minecraft:sticky_piston \
    if block ~ ~-1 ~ minecraft:bone_block \
    run function hydraulic_machinery:management/create/check/bone_press

execute \
    if score #global hydraulic_machinery.is_mushroom_press_enabled matches 1 \
    if block ~ ~ ~ minecraft:sticky_piston \
    if block ~ ~-1 ~ #hydraulic_machinery:mushrooms \
    align xyz positioned ~0.5 ~-0.5 ~0.5 \
    unless entity @e[type=minecraft:armor_stand,tag=hydraulic_machinery_mushroom_marker,distance=..0.5] \
    run summon minecraft:armor_stand ~ ~ ~ \
        {Invulnerable:1b,NoGravity:1b,Invisible:1b,Marker:1b, \
        Tags:["hydraulic_machinery_marker","hydraulic_machinery_mushroom_marker"]}

execute \
    if score #global hydraulic_machinery.is_mushroom_press_enabled matches 1 \
    if block ~ ~ ~ minecraft:sticky_piston \
    if block ~ ~-1 ~ #hydraulic_machinery:mushrooms \
    run function hydraulic_machinery:management/create/check/mushroom_press

execute \
    if score #global hydraulic_machinery.is_wheat_press_enabled matches 1 \
    if block ~ ~ ~ minecraft:sticky_piston \
    if block ~ ~-1 ~ minecraft:hay_block \
    align xyz positioned ~0.5 ~-0.5 ~0.5 \
    unless entity @e[type=minecraft:armor_stand,tag=hydraulic_machinery_wheat_marker,distance=..0.5] \
    run summon minecraft:armor_stand ~ ~ ~ \
        {Invulnerable:1b,NoGravity:1b,Invisible:1b,Marker:1b, \
        Tags:["hydraulic_machinery_marker","hydraulic_machinery_wheat_marker"]}

execute \
    if score #global hydraulic_machinery.is_wheat_press_enabled matches 1 \
    if block ~ ~ ~ minecraft:sticky_piston \
    if block ~ ~-1 ~ minecraft:hay_block \
    run function hydraulic_machinery:management/create/check/wheat_press

execute if block ~ ~ ~ minecraft:sticky_piston run return 0

scoreboard players add @s hydraulic_machinery.raycast 1

execute \
    if score @s hydraulic_machinery.raycast matches ..31 positioned ^ ^ ^0.25 \
    run function hydraulic_machinery:management/raycast/sticky_piston
