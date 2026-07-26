execute \
    as @e[type=minecraft:armor_stand,tag=hydraulic_machinery_wax_marker,tag=!hydraulic_machinery_created] \
    at @s \
    if block ~ ~1 ~ minecraft:sticky_piston[facing=down] \
    if block ~ ~ ~ minecraft:honeycomb_block \
    run function hydraulic_machinery:management/create/wax_press
