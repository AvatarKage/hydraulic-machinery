execute \
    as @e[type=armor_stand,tag=hydraulic_machinery_stonecutter_marker] \
    at @s \
    if block ~ ~ ~ minecraft:stonecutter \
    run function hydraulic_machinery:machines/stonecutter/check_power

execute \
    if score #global hydraulic_machinery.can_stonecutter_break_all_blocks matches 1 \
    as @e[type=armor_stand,tag=hydraulic_machinery_stonecutter_marker] \
    at @s \
    if block ~ ~ ~ minecraft:stonecutter \
    unless block ~ ~1 ~ #hydraulic_machinery:replaceable \
    unless block ~ ~1 ~ minecraft:moving_piston \
    unless block ~ ~1 ~ #hydraulic_machinery:unbreakable \
    run function hydraulic_machinery:machines/stonecutter/break_block

execute \
    if score #global hydraulic_machinery.can_stonecutter_break_all_blocks matches 0 \
    as @e[type=armor_stand,tag=hydraulic_machinery_stonecutter_marker] \
    at @s \
    if block ~ ~ ~ minecraft:stonecutter \
    unless block ~ ~1 ~ #hydraulic_machinery:replaceable \
    unless block ~ ~1 ~ minecraft:moving_piston \
    if block ~ ~1 ~ #hydraulic_machinery:relevant \
    run function hydraulic_machinery:machines/stonecutter/break_block

execute \
    if score #global hydraulic_machinery.can_stonecutter_damage_entities matches 1 \
    as @e[type=armor_stand,tag=hydraulic_machinery_stonecutter_marker,tag=!hydraulic_machinery_stonecutter_powered] \
    at @s \
    if block ~ ~ ~ minecraft:stonecutter \
    run function hydraulic_machinery:machines/stonecutter/damage_entity
