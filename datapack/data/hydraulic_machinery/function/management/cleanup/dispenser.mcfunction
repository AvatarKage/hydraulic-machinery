execute \
    as @e[type=minecraft:armor_stand,tag=hydraulic_machinery_dispenser_marker] \
    at @s \
    unless block ~ ~ ~ minecraft:dispenser \
    run kill @s
