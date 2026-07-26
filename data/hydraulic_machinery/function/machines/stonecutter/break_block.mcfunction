function hydraulic_machinery:machines/stonecutter/check_power

execute \
    if score #global hydraulic_machinery.can_stonecutter_break_all_blocks matches 0 \
    as @s[tag=!hydraulic_machinery_stonecutter_powered] \
    if block ~ ~1 ~ #hydraulic_machinery:relevant \
    run setblock ~ ~1 ~ air destroy

execute \
    if score #global hydraulic_machinery.can_stonecutter_break_all_blocks matches 0 \
    as @s[tag=hydraulic_machinery_stonecutter_powered] \
    if block ~ ~1 ~ #hydraulic_machinery:relevant \
    run loot spawn ~ ~-1 ~ mine ~ ~1 ~ minecraft:diamond_pickaxe[enchantments={silk_touch:1}]

execute \
    if score #global hydraulic_machinery.can_stonecutter_break_all_blocks matches 1 \
    as @s[tag=!hydraulic_machinery_stonecutter_powered] \
    unless block ~ ~1 ~ #hydraulic_machinery:unbreakable \
    run setblock ~ ~1 ~ air destroy

execute \
    if score #global hydraulic_machinery.can_stonecutter_break_all_blocks matches 1 \
    as @s[tag=hydraulic_machinery_stonecutter_powered] \
    unless block ~ ~1 ~ #hydraulic_machinery:unbreakable \
    run loot spawn ~ ~-1 ~ mine ~ ~1 ~ minecraft:diamond_pickaxe[enchantments={silk_touch:1}]

execute \
    as @s[tag=hydraulic_machinery_stonecutter_powered] \
    run setblock ~ ~1 ~ air

execute \
    as @s[tag=!hydraulic_machinery_stonecutter_powered] \
    run tp @e[type=item,distance=..1] ~ ~-1 ~

execute \
    as @s[tag=!hydraulic_machinery_stonecutter_powered] \
    run tp @e[type=experience_orb,distance=..1] ~ ~-1 ~
