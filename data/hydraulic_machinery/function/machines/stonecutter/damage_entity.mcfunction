execute \
    if score #global hydraulic_machinery.can_stonecutter_damage_entities matches 1 \
    as @e \
    at @s \
    unless entity @s[type=#hydraulic_machinery:stonecutter_immune] \
    if block ~ ~-0.5 ~ minecraft:stonecutter \
    run damage @s 6 minecraft:generic

execute \
    if score #global hydraulic_machinery.can_stonecutter_damage_entities matches 1 \
    as @e \
    at @s \
    unless entity @s[type=#hydraulic_machinery:stonecutter_immune] \
    if block ~ ~-0.5 ~ minecraft:stonecutter \
    if block ~ ~-1.5 ~ #hydraulic_machinery:heat_source_blocks \
    run data merge entity @s {Fire:2}
