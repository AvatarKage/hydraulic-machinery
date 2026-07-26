execute \
    as @e[type=armor_stand,tag=hydraulic_machinery_marker] \
    at @s \
    if block ~ ~1 ~ minecraft:sticky_piston[facing=down] \
    if block ~1 ~1 ~ #all_signs \
    run function hydraulic_machinery:management/name/assign/110

execute \
    as @e[type=armor_stand,tag=hydraulic_machinery_marker] \
    at @s \
    if block ~ ~1 ~ minecraft:sticky_piston[facing=down] \
    if block ~-1 ~1 ~ #all_signs \
    run function hydraulic_machinery:management/name/assign/-110

execute \
    as @e[type=armor_stand,tag=hydraulic_machinery_marker] \
    at @s \
    if block ~ ~1 ~ minecraft:sticky_piston[facing=down] \
    if block ~ ~1 ~1 #all_signs \
    run function hydraulic_machinery:management/name/assign/011

execute \
    as @e[type=armor_stand,tag=hydraulic_machinery_marker] \
    at @s \
    if block ~ ~1 ~ minecraft:sticky_piston[facing=down] \
    if block ~ ~1 ~-1 #all_signs \
    run function hydraulic_machinery:management/name/assign/01-1

execute \
    as @e[type=armor_stand,tag=hydraulic_machinery_marker] \
    at @s \
    if block ~ ~1 ~ minecraft:sticky_piston[facing=down] \
    if block ~ ~2 ~ #all_signs \
    run function hydraulic_machinery:management/name/assign/020
