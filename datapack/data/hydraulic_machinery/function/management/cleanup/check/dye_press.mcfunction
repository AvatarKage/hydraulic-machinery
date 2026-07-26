execute \
    as @e[type=minecraft:armor_stand,tag=hydraulic_machinery_dye_marker] \
    at @s \
    unless block ~ ~1 ~ minecraft:sticky_piston[facing=down] \
    unless block ~ ~1 ~ minecraft:piston_head[facing=down] \
    unless block ~ ~1 ~ minecraft:moving_piston[facing=down] \
    run function hydraulic_machinery:management/cleanup/dye_press

execute \
    as @e[type=minecraft:armor_stand,tag=hydraulic_machinery_dye_marker] \
    at @s \
    unless block ~ ~ ~ minecraft:piston_head[facing=down] \
    unless block ~ ~ ~ minecraft:moving_piston[facing=down] \
    unless block ~ ~ ~ #minecraft:wool \
    if block ~ ~ ~ #hydraulic_machinery:replaceable \
    unless block ~ ~-1 ~ #minecraft:wool \
    run function hydraulic_machinery:management/cleanup/dye_press
