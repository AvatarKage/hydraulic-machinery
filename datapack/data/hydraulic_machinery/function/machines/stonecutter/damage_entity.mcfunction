execute \
    as @e[distance=..0.5,type=!#hydraulic_machinery:stonecutter_immune] \ 
    run damage @s 6 minecraft:generic

execute \
    as @e[distance=..0.5,type=!#hydraulic_machinery:stonecutter_immune] \
    if block ~ ~-1.5 ~ #hydraulic_machinery:heat_source_blocks \
    run data merge entity @s {Fire:2}
