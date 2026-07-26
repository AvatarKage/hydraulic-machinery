execute \
    if block ~ ~ ~ minecraft:wet_sponge \
    align xyz positioned ~0.5 ~0.5 ~0.5 \
    unless entity @e[ \
        type=minecraft:armor_stand, \
        tag=hydraulic_machinery_wet_marker, \
        distance=..0.5 \
    ] \
    run summon minecraft:armor_stand ~ ~ ~ \
        {Invulnerable:1b,NoGravity:1b,Invisible:1b,Marker:1b, \
        Tags:[ \
            "hydraulic_machinery_marker", \
            "hydraulic_machinery_wet_marker" \
        ]}
        
execute \
    if block ~ ~ ~ minecraft:wet_sponge \
    run function hydraulic_machinery:management/create/check/wet_press

execute if block ~ ~ ~ minecraft:wet_sponge run return 0

scoreboard players add @s hydraulic_machinery.raycast 1

execute \
    if score @s hydraulic_machinery.raycast matches ..31 positioned ^ ^ ^0.25 \
    run function hydraulic_machinery:management/raycast/wet_sponge
