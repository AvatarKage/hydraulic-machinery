execute \
    if score #global hydraulic_machinery.is_debug matches 1 \
    as @e[type=minecraft:armor_stand,tag=hydraulic_machinery_marker] \
    at @s \
    unless entity @e[type=minecraft:text_display,tag=hydraulic_machinery_debug_label,distance=..3] \
    run summon minecraft:text_display ~ ~-1.3 ~ { \
        Tags:["hydraulic_machinery_debug_label"], \
        text:{"text":"Loading...","color":"gray","bold":false}, \
        billboard:"center", \
        background:0, \
        shadow:1b \
    }

execute \
    if score #global hydraulic_machinery.is_debug matches 1 \
    as @e[type=minecraft:armor_stand,tag=hydraulic_machinery_marker,tag=!hydraulic_machinery_stonecutter_marker] \
    at @s \
    run scoreboard players operation \
    @e[type=minecraft:text_display,tag=hydraulic_machinery_debug_label,distance=..3,limit=1,sort=nearest] \
    hydraulic_machinery.fuel_level = @s hydraulic_machinery.fuel_level

execute \
    if score #global hydraulic_machinery.is_debug matches 1 \
    as @e[type=minecraft:text_display,tag=hydraulic_machinery_debug_label] \
    run data modify entity @s text set value [ \
        {"text":"[Hydraulic Machinery]","color":"#e77b57","bold":true}, \
        {"text":"\n"}, \
        {"text":"Name: ","color":"gray","bold":false}, \
        {"entity":"@e[type=minecraft:armor_stand,tag=hydraulic_machinery_marker,limit=1,sort=nearest]","nbt":"CustomName","interpret":true,"color":"gray","bold":false}, \
        {"text":"\n"}, \
        {"text":"Fuel: ","color":"red","bold":false}, \
        {"score":{"name":"@s","objective":"hydraulic_machinery.fuel_level"},"color":"red","bold":false} \
    ]

execute \
    if score #global hydraulic_machinery.is_debug matches 1 \
    as @e[type=minecraft:text_display,tag=hydraulic_machinery_debug_label] \
    at @s \
    unless entity @e[\
        type=minecraft:armor_stand,\
        tag=hydraulic_machinery_marker,\
        tag=!hydraulic_machinery_stonecutter_marker, \
        tag=!hydraulic_machinery_hologram_marker, \
        distance=..3 \
    ] \
    run kill @s

execute \
    if score #global hydraulic_machinery.is_debug matches 0 \
    run kill @e[tag=hydraulic_machinery_debug_label]

execute \
    if score #global hydraulic_machinery.is_debug matches 1 \
    as @e[type=minecraft:armor_stand,tag=hydraulic_machinery_marker] \
    run data merge entity @s {Invisible:0b,CustomNameVisible:0b}

execute \
    if score #global hydraulic_machinery.is_debug matches 0 \
    as @e[type=minecraft:armor_stand,tag=hydraulic_machinery_marker] \
    run data merge entity @s {Invisible:1b,CustomNameVisible:0b}
