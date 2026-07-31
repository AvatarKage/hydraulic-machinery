execute run function hydraulic_machinery:machines/dispenser/check_item

execute \
    as @e[type=item,tag=is_from_dispenser] \
    at @s \
    if block ~ ~ ~ #hydraulic_machinery:replaceable \
    run function hydraulic_machinery:machines/dispenser/set_storage
