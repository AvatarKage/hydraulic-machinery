function hydraulic_machinery:machines/dispenser/check_item

execute \
    as @e[type=armor_stand,tag=hydraulic_machinery_dispenser_marker] \
    at @s \
    run function hydraulic_machinery:machines/dispenser/check_power

execute \
    as @e[type=item,tag=is_from_dispenser] \
    at @s \
    if entity @e[ \
        type=armor_stand, \
        tag=hydraulic_machinery_dispenser_marker, \
        tag=hydraulic_machinery_dispenser_powered, \
        distance=..1 \
    ] \
    if block ~ ~ ~ #hydraulic_machinery:replaceable \
    run function hydraulic_machinery:machines/dispenser/set_storage
