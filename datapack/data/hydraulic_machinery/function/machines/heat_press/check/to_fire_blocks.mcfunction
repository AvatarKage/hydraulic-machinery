execute \
    as @e[ \
        type=armor_stand, \
        tag=hydraulic_machinery_heat_marker, \
        tag=!hydraulic_machinery_active \
    ] \
    at @s \
    if block ~ ~1 ~ minecraft:sticky_piston[extended=true] \
    if block ~ ~-2 ~ #hydraulic_machinery:to_fire_blocks \
    run function hydraulic_machinery:machines/heat_press/result/fire
