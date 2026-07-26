execute \
    as @e[type=minecraft:armor_stand,tag=hydraulic_machinery_hydraulic_marker,tag=!hydraulic_machinery_created] \
    at @s \
    if block ~ ~1 ~ minecraft:sticky_piston[facing=down] \
    if block ~ ~ ~ #hydraulic_machinery:tier_blocks \
    run function hydraulic_machinery:management/create/hydraulic_press
