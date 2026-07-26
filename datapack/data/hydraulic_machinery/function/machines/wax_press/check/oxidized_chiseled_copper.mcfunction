execute \
    as @e[ \
        type=armor_stand, \
        tag=hydraulic_machinery_wax_marker, \
        tag=!hydraulic_machinery_active \
    ] \
    at @s \
    if block ~ ~1 ~ minecraft:sticky_piston[extended=true] \
    if block ~ ~-2 ~ minecraft:oxidized_chiseled_copper \
    run function hydraulic_machinery:machines/wax_press/result/waxed_oxidized_chiseled_copper
