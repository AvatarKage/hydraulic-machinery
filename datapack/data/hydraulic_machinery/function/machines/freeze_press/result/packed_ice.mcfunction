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
    run function hydraulic_machinery:management/refuel/freeze_press

execute \
    if score #global hydraulic_machinery.is_fuel_required matches 1 \
    as @s[scores={hydraulic_machinery.fuel_level=..0}] \
    run return 0

execute \
    if score #global hydraulic_machinery.is_fuel_required matches 1 \
    run scoreboard players remove @s hydraulic_machinery.fuel_level 1

execute store result score @s hydraulic_machinery.success_roll run random value 1..100

execute \
    if score @s hydraulic_machinery.success_roll matches ..24 \
    run tag @s add hydraulic_machinery_success

execute \
    if entity @s[tag=hydraulic_machinery_success] \
    run setblock ~ ~-2 ~ minecraft:packed_ice

execute \
    if entity @s[tag=hydraulic_machinery_success] \
    run playsound entity.player.hurt_freeze block @a[distance=..12] \
        ~ ~-2 ~ 1 0.5

execute \
    if entity @s[tag=hydraulic_machinery_success] \
    run particle minecraft:snowflake \
        ~ ~-2 ~ 0.45 0.45 0.45 0.05 50

tag @s remove hydraulic_machinery_success
