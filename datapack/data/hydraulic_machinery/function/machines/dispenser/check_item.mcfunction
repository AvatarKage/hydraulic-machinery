execute \
    as @e[type=item,tag=!dispenser_checked] \
    at @s \
    if block ~-1 ~ ~ minecraft:dispenser[facing=east] \
    if block ~ ~ ~ #replaceable \
    run tag @s add is_from_dispenser

execute \
    as @e[type=item,tag=!dispenser_checked] \
    at @s \
    if block ~1 ~ ~ minecraft:dispenser[facing=west] \
    if block ~ ~ ~ #replaceable \
    run tag @s add is_from_dispenser

execute \
    as @e[type=item,tag=!dispenser_checked] \
    at @s \
    if block ~ ~ ~1 minecraft:dispenser[facing=north] \
    if block ~ ~ ~ #replaceable \
    run tag @s add is_from_dispenser

execute \
    as @e[type=item,tag=!dispenser_checked] \
    at @s \
    if block ~ ~ ~-1 minecraft:dispenser[facing=south] \
    if block ~ ~ ~ #replaceable \
    run tag @s add is_from_dispenser

execute \
    as @e[type=item,tag=!dispenser_checked] \
    at @s \
    if block ~ ~-1 ~ minecraft:dispenser[facing=up] \
    if block ~ ~ ~ #replaceable \
    run tag @s add is_from_dispenser

execute \
    as @e[type=item,tag=!dispenser_checked] \
    at @s \
    if block ~ ~1 ~ minecraft:dispenser[facing=down] \
    if block ~ ~ ~ #replaceable \
    run tag @s add is_from_dispenser

tag @e[type=item] add dispenser_checked
