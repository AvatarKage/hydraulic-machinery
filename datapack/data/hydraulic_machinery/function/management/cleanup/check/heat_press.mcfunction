execute \
    as @e[type=minecraft:armor_stand,tag=hydraulic_machinery_heat_marker] \
    at @s \
    unless block ~ ~1 ~ minecraft:sticky_piston[facing=down] \
    unless block ~ ~1 ~ minecraft:piston_head[facing=down] \
    unless block ~ ~1 ~ minecraft:moving_piston[facing=down] \
    run function hydraulic_machinery:management/cleanup/heat_press

execute \
    as @e[type=minecraft:armor_stand,tag=hydraulic_machinery_heat_marker] \
    at @s \
    unless block ~ ~ ~ minecraft:piston_head[facing=down] \
    unless block ~ ~ ~ minecraft:moving_piston[facing=down] \
    unless block ~ ~ ~ minecraft:magma_block \
    if block ~ ~ ~ #hydraulic_machinery:replaceable \
    unless block ~ ~-1 ~ minecraft:magma_block \
    run function hydraulic_machinery:management/cleanup/heat_press
