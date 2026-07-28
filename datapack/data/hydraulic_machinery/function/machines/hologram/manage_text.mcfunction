function hydraulic_machinery:machines/hologram/set_data

execute \
    positioned ~ ~-1 ~ \
    if block ~ ~ ~ #hydraulic_machinery:glass_blocks \
    if block ~ ~-1 ~ minecraft:amethyst_block \
    positioned ~ ~2 ~ \
    unless entity @e[tag=hydraulic_machinery_hologram_label,distance=..1] \
    run summon minecraft:text_display ~ ~ ~ { \
        Tags:[\
            "hydraulic_machinery_hologram_label", \
            "hydraulic_machinery_hologram_label_level_1", \
        ], \
        billboard:"center", \
        background:0, \
        shadow:1b \
    }

execute \
    positioned ~ ~-1 ~ \
    if block ~ ~ ~ #hydraulic_machinery:glass_blocks \
    if block ~ ~-1 ~ minecraft:amethyst_block \
    positioned ~ ~2 ~ \
    as @e[tag=hydraulic_machinery_hologram_label,distance=..1] \
    run data modify entity @s text set from storage hydraulic:data page

execute \
    positioned ~ ~-2 ~ \
    if block ~ ~ ~ #hydraulic_machinery:glass_blocks \
    if block ~ ~-1 ~ minecraft:amethyst_block \
    positioned ~ ~4 ~ \
    unless entity @e[tag=hydraulic_machinery_hologram_label,distance=..1] \
    run summon minecraft:text_display ~ ~ ~ { \
        Tags:[\
            "hydraulic_machinery_hologram_label", \
            "hydraulic_machinery_hologram_label_level_2", \
        ], \
        billboard:"center", \
        background:0, \
        shadow:1b \
    }

execute \
    positioned ~ ~-2 ~ \
    if block ~ ~ ~ #hydraulic_machinery:glass_blocks \
    if block ~ ~-1 ~ minecraft:amethyst_block \
    positioned ~ ~4 ~ \
    as @e[tag=hydraulic_machinery_hologram_label,distance=..1] \
    run data modify entity @s text set from storage hydraulic:data page

execute \
    positioned ~ ~-3 ~ \
    if block ~ ~ ~ #hydraulic_machinery:glass_blocks \
    if block ~ ~-1 ~ minecraft:amethyst_block \
    positioned ~ ~6 ~ \
    unless entity @e[tag=hydraulic_machinery_hologram_label,distance=..1] \
    run summon minecraft:text_display ~ ~ ~ { \
        Tags:[\
            "hydraulic_machinery_hologram_label", \
            "hydraulic_machinery_hologram_label_level_3", \
        ], \
        billboard:"center", \
        background:0, \
        shadow:1b \
    }

execute \
    positioned ~ ~-3 ~ \
    if block ~ ~ ~ #hydraulic_machinery:glass_blocks \
    if block ~ ~-1 ~ minecraft:amethyst_block \
    positioned ~ ~6 ~ \
    as @e[tag=hydraulic_machinery_hologram_label,distance=..1] \
    run data modify entity @s text set from storage hydraulic:data page

execute \
    positioned ~ ~-4 ~ \
    if block ~ ~ ~ #hydraulic_machinery:glass_blocks \
    if block ~ ~-1 ~ minecraft:amethyst_block \
    positioned ~ ~8 ~ \
    unless entity @e[tag=hydraulic_machinery_hologram_label,distance=..1] \
    run summon minecraft:text_display ~ ~ ~ { \
        Tags:[\
            "hydraulic_machinery_hologram_label", \
            "hydraulic_machinery_hologram_label_level_4", \
        ], \
        billboard:"center", \
        background:0, \
        shadow:1b \
    }

execute \
    positioned ~ ~-4 ~ \
    if block ~ ~ ~ #hydraulic_machinery:glass_blocks \
    if block ~ ~-1 ~ minecraft:amethyst_block \
    positioned ~ ~8 ~ \
    as @e[tag=hydraulic_machinery_hologram_label,distance=..1] \
    run data modify entity @s text set from storage hydraulic:data page
