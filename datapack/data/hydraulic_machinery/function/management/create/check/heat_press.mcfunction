execute \
    as @e[type=minecraft:armor_stand,tag=hydraulic_machinery_heat_marker,tag=!hydraulic_machinery_created] \
    at @s \
    if block ~ ~1 ~ minecraft:sticky_piston[facing=down] \
    if block ~ ~ ~ minecraft:magma_block \
    run function hydraulic_machinery:management/create/heat_press
