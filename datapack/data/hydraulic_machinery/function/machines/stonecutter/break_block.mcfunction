function hydraulic_machinery:machines/stonecutter/check_power

execute \
    as @s[tag=!hydraulic_machinery_stonecutter_powered] \
    run setblock ~ ~1 ~ air destroy

execute \
    as @s[tag=!hydraulic_machinery_stonecutter_powered] \
    run tp @e[type=item,distance=..1] ~ ~-1 ~

execute \
    as @s[tag=!hydraulic_machinery_stonecutter_powered] \
    run tp @e[type=experience_orb,distance=..1] ~ ~-1 ~

execute \
    as @s[tag=hydraulic_machinery_stonecutter_powered] \
    run loot spawn ~ ~-1 ~ mine ~ ~1 ~ minecraft:diamond_pickaxe[enchantments={silk_touch:1}]

execute \
    as @s[tag=hydraulic_machinery_stonecutter_powered] \
    run setblock ~ ~1 ~ air
