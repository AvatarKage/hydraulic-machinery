tag @s add hydraulic_machinery_active

execute \
    if score #global hydraulic_machinery.is_anvil_required matches 1 \
    run function hydraulic_machinery:management/anvil

execute \
    if score #global hydraulic_machinery.is_anvil_required matches 1 \
    as @s[tag=!hydraulic_machinery_has_anvil] \
    run return 0

execute \
    if score #global hydraulic_machinery.is_fuel_required matches 1 \
    as @s[scores={hydraulic_machinery.fuel_level=..0}] \
    run function hydraulic_machinery:management/refuel/hydraulic_press

execute \
    if score #global hydraulic_machinery.is_fuel_required matches 1 \
    as @s[scores={hydraulic_machinery.fuel_level=..0}] \
    run return 0

execute \
    if score #global hydraulic_machinery.is_fuel_required matches 1 \
    run scoreboard players remove @s hydraulic_machinery.fuel_level 1

setblock ~ ~-2 ~ minecraft:resin_block

playsound block.resin.break block @a[distance=..12] \
    ~ ~-2 ~ 1 0.5

particle minecraft:block{block_state:"minecraft:resin_block"} \
    ~ ~-2 ~ 0.45 0.45 0.45 0.05 50
