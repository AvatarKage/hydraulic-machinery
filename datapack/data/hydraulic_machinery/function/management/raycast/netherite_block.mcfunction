execute \
    if block ~ ~ ~ minecraft:netherite_block \
    align xyz positioned ~0.5 ~0.5 ~0.5 \
    unless entity @e[ \
        type=minecraft:armor_stand, \
        tag=hydraulic_machinery_hydraulic_marker, \
        tag=hydraulic_machinery_tier_netherite, \
        distance=..0.5 \
    ] \
    run summon minecraft:armor_stand ~ ~ ~ \
        {Invulnerable:1b,NoGravity:1b,Invisible:1b,Marker:1b, \
        Tags:[ \
            "hydraulic_machinery_marker", \
            "hydraulic_machinery_hydraulic_marker", \
            "hydraulic_machinery_tier_netherite" \
        ]}
        
execute \
    if block ~ ~ ~ minecraft:netherite_block \
    run function hydraulic_machinery:management/create/check/hydraulic_press

execute if block ~ ~ ~ minecraft:netherite_block run return 0

scoreboard players add @s hydraulic_machinery.raycast 1

execute \
    if score @s hydraulic_machinery.raycast matches ..31 positioned ^ ^ ^0.25 \
    run function hydraulic_machinery:management/raycast/netherite_block
