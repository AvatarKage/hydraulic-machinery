execute \
    as @e[ \
        type=armor_stand, \
        tag=hydraulic_machinery_sculk_marker, \
        tag=!hydraulic_machinery_active \
    ] \
    at @s \
    if block ~ ~1 ~ minecraft:sticky_piston[extended=true] \
    if block ~ ~-2 ~ #minecraft:sculk_replaceable \
    run function hydraulic_machinery:machines/sculk_press/result/sculk
