execute \
    as @e[type=item,tag=!dispenser_checked] \
    at @s \
    if block ~-1 ~ ~ minecraft:dispenser[facing=east] \
    run tag @s add is_from_dispenser

execute \
    as @e[type=item,tag=!dispenser_checked] \
    at @s \
    if block ~1 ~ ~ minecraft:dispenser[facing=west] \
    run tag @s add is_from_dispenser

execute \
    as @e[type=item,tag=!dispenser_checked] \
    at @s \
    if block ~ ~ ~1 minecraft:dispenser[facing=north] \
    run tag @s add is_from_dispenser

execute \
    as @e[type=item,tag=!dispenser_checked] \
    at @s \
    if block ~ ~ ~-1 minecraft:dispenser[facing=south] \
    run tag @s add is_from_dispenser

execute \
    as @e[type=item,tag=!dispenser_checked] \
    at @s \
    if block ~ ~-1 ~ minecraft:dispenser[facing=up] \
    run tag @s add is_from_dispenser

execute \
    as @e[type=item,tag=!dispenser_checked] \
    at @s \
    if block ~ ~1 ~ minecraft:dispenser[facing=down] \
    run tag @s add is_from_dispenser

tag @e[type=item] add dispenser_checked
