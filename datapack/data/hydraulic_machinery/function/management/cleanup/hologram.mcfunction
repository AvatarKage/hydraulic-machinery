execute \
    as @e[type=minecraft:text_display,tag=hydraulic_machinery_hologram_label_level_1] \
    at @s \
    unless block ~ ~-1 ~ minecraft:lectern \
    run kill @s

execute \
    as @e[type=minecraft:text_display,tag=hydraulic_machinery_hologram_label_level_2] \
    at @s \
    unless block ~ ~-2 ~ minecraft:lectern \
    run kill @s

execute \
    as @e[type=minecraft:text_display,tag=hydraulic_machinery_hologram_label_level_3] \
    at @s \
    unless block ~ ~-3 ~ minecraft:lectern \
    run kill @s

execute \
    as @e[type=minecraft:text_display,tag=hydraulic_machinery_hologram_label_level_4] \
    at @s \
    unless block ~ ~-4 ~ minecraft:lectern \
    run kill @s

execute \
    as @e[type=minecraft:text_display,tag=hydraulic_machinery_hologram_label_level_1] \
    at @s \
    if block ~ ~-1 ~ minecraft:lectern[has_book=false] \
    run kill @s

execute \
    as @e[type=minecraft:text_display,tag=hydraulic_machinery_hologram_label_level_2] \
    at @s \
    if block ~ ~-2 ~ minecraft:lectern[has_book=false] \
    run kill @s

execute \
    as @e[type=minecraft:text_display,tag=hydraulic_machinery_hologram_label_level_3] \
    at @s \
    if block ~ ~-3 ~ minecraft:lectern[has_book=false] \
    run kill @s

execute \
    as @e[type=minecraft:text_display,tag=hydraulic_machinery_hologram_label_level_4] \
    at @s \
    if block ~ ~-4 ~ minecraft:lectern[has_book=false] \
    run kill @s

execute \
    as @e[type=minecraft:text_display,tag=hydraulic_machinery_hologram_label] \
    at @s \
    unless predicate hydraulic_machinery:destroy_hologram \
    run kill @s
