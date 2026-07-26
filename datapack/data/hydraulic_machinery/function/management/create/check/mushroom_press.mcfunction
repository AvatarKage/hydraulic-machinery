execute \
    as @e[type=minecraft:armor_stand,tag=hydraulic_machinery_mushroom_marker,tag=!hydraulic_machinery_created] \
    at @s \
    if block ~ ~1 ~ minecraft:sticky_piston[facing=down] \
    if block ~ ~ ~ #hydraulic_machinery:mushrooms \
    run function hydraulic_machinery:management/create/mushroom_press
