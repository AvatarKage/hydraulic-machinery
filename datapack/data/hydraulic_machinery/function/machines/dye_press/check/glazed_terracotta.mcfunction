execute \
    as @e[ \
        type=armor_stand, \
        tag=hydraulic_machinery_dye_marker, \
        tag=!hydraulic_machinery_active \
    ] \
    at @s \
    if block ~ ~1 ~ minecraft:sticky_piston[extended=true] \
    if block ~ ~-2 ~ #minecraft:glazed_terracotta \
    run function hydraulic_machinery:machines/dye_press/color/glazed_terracotta
