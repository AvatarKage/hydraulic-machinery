execute \
    as @e[type=armor_stand,tag=hydraulic_machinery_marker] \
    at @s \
    if block ~ ~1 ~ minecraft:sticky_piston[facing=down] \
    unless block ~1 ~1 ~ #all_signs \
    unless block ~-1 ~1 ~ #all_signs \
    unless block ~ ~1 ~1 #all_signs \
    unless block ~ ~1 ~-1 #all_signs \
    unless block ~ ~2 ~ #all_signs \
    run data remove entity @s CustomName
