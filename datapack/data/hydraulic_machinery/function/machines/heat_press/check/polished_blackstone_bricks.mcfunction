execute \
    as @e[ \
        type=armor_stand, \
        tag=hydraulic_machinery_heat_marker, \
        tag=!hydraulic_machinery_active \
    ] \
    at @s \
    if block ~ ~1 ~ minecraft:sticky_piston[extended=true] \
    if block ~ ~-2 ~ minecraft:polished_blackstone_bricks \
    unless entity @e[\
        type=item_frame,limit=1,sort=nearest,dx=-1,dy=2,dz=-1,distance=..3, \
        nbt={Item:{id:"minecraft:polished_blackstone_bricks"}}\
    ] \
    unless entity @e[\
        type=glow_item_frame,limit=1,sort=nearest,dx=-1,dy=2,dz=-1,distance=..3, \
        nbt={Item:{id:"minecraft:polished_blackstone_bricks"}}\
    ] \
    run function hydraulic_machinery:machines/heat_press/result/cracked_polished_blackstone_bricks
