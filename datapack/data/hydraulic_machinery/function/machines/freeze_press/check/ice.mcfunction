execute \
    as @e[ \
        type=armor_stand, \
        tag=hydraulic_machinery_freeze_marker, \
        tag=!hydraulic_machinery_active \
    ] \
    at @s \
    if block ~ ~1 ~ minecraft:sticky_piston[extended=true] \
    if block ~ ~-2 ~ minecraft:ice \
    run function hydraulic_machinery:machines/freeze_press/result/packed_ice
