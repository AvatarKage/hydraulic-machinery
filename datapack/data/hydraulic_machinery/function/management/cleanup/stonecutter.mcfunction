execute \
    as @e[type=minecraft:armor_stand,tag=hydraulic_machinery_stonecutter_marker] \
    at @s \
    unless block ~ ~ ~ minecraft:stonecutter \
    run kill @s
