execute \
    if score #global hydraulic_machinery.are_special_recipes_enabled matches 1 \
    as @e[ \
        type=armor_stand, \
        tag=hydraulic_machinery_hydraulic_marker, \
        tag=hydraulic_machinery_tier_diamond, \
        tag=!hydraulic_machinery_active \
    ] \
    at @s \
    if block ~ ~1 ~ minecraft:sticky_piston[extended=true] \
    if block ~ ~-2 ~ minecraft:obsidian \
    unless entity @e[\
        type=item_frame,limit=1,sort=nearest,dx=-1,dy=2,dz=-1,distance=..3, \
        nbt={Item:{id:"minecraft:obsidian"}}\
    ] \
    unless entity @e[\
        type=glow_item_frame,limit=1,sort=nearest,dx=-1,dy=2,dz=-1,distance=..3, \
        nbt={Item:{id:"minecraft:obsidian"}}\
    ] \
    run function hydraulic_machinery:machines/hydraulic_press/result/crying_obsidian

execute \
    if score #global hydraulic_machinery.are_special_recipes_enabled matches 1 \
    as @e[ \
        type=armor_stand, \
        tag=hydraulic_machinery_hydraulic_marker, \
        tag=hydraulic_machinery_tier_netherite, \
        tag=!hydraulic_machinery_active \
    ] \
    at @s \
    if block ~ ~1 ~ minecraft:sticky_piston[extended=true] \
    if block ~ ~-2 ~ minecraft:obsidian \
    unless entity @e[\
        type=item_frame,limit=1,sort=nearest,dx=-1,dy=2,dz=-1,distance=..3, \
        nbt={Item:{id:"minecraft:obsidian"}}\
    ] \
    unless entity @e[\
        type=glow_item_frame,limit=1,sort=nearest,dx=-1,dy=2,dz=-1,distance=..3, \
        nbt={Item:{id:"minecraft:obsidian"}}\
    ] \
    run function hydraulic_machinery:machines/hydraulic_press/result/crying_obsidian
