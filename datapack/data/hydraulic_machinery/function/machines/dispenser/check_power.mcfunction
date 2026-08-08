tag @s remove hydraulic_machinery_dispenser_powered

execute \
    if block ~ ~-1 ~ minecraft:redstone_block \
    run tag @s add hydraulic_machinery_dispenser_powered

execute \
    if block ~ ~1 ~ minecraft:redstone_block \
    run tag @s add hydraulic_machinery_dispenser_powered

execute \
    if block ~-1 ~ ~ minecraft:redstone_block \
    run tag @s add hydraulic_machinery_dispenser_powered

execute \
    if block ~1 ~ ~ minecraft:redstone_block \
    run tag @s add hydraulic_machinery_dispenser_powered

execute \
    if block ~ ~ ~-1 minecraft:redstone_block \
    run tag @s add hydraulic_machinery_dispenser_powered

execute \
    if block ~ ~ ~1 minecraft:redstone_block \
    run tag @s add hydraulic_machinery_dispenser_powered

execute \
    positioned ~ ~-1 ~ \
    if predicate hydraulic_machinery:is_redstone_wire_powered \
    run tag @s add hydraulic_machinery_dispenser_powered

execute \
    positioned ~ ~1 ~ \
    if predicate hydraulic_machinery:is_redstone_wire_powered \
    run tag @s add hydraulic_machinery_dispenser_powered

execute \
    positioned ~-1 ~ ~ \
    if predicate hydraulic_machinery:is_redstone_wire_powered \
    run tag @s add hydraulic_machinery_dispenser_powered

execute \
    positioned ~1 ~ ~ \
    if predicate hydraulic_machinery:is_redstone_wire_powered \
    run tag @s add hydraulic_machinery_dispenser_powered

execute \
    positioned ~ ~ ~-1 \
    if predicate hydraulic_machinery:is_redstone_wire_powered \
    run tag @s add hydraulic_machinery_dispenser_powered

execute \
    positioned ~ ~ ~1 \
    if predicate hydraulic_machinery:is_redstone_wire_powered \
    run tag @s add hydraulic_machinery_dispenser_powered

execute \
    if block ~ ~-1 ~ minecraft:lever[powered=true] \
    run tag @s add hydraulic_machinery_dispenser_powered

execute \
    if block ~ ~1 ~ minecraft:lever[powered=true] \
    run tag @s add hydraulic_machinery_dispenser_powered

execute \
    if block ~-1 ~ ~ minecraft:lever[powered=true] \
    run tag @s add hydraulic_machinery_dispenser_powered

execute \
    if block ~1 ~ ~ minecraft:lever[powered=true] \
    run tag @s add hydraulic_machinery_dispenser_powered

execute \
    if block ~ ~ ~-1 minecraft:lever[powered=true] \
    run tag @s add hydraulic_machinery_dispenser_powered

execute \
    if block ~ ~ ~1 minecraft:lever[powered=true] \
    run tag @s add hydraulic_machinery_dispenser_powered

execute \
    if block ~ ~-1 ~ minecraft:redstone_torch[lit=true] \
    run tag @s add hydraulic_machinery_dispenser_powered

execute \
    if block ~ ~1 ~ minecraft:redstone_torch[lit=true] \
    run tag @s add hydraulic_machinery_dispenser_powered

execute \
    if block ~-1 ~ ~ minecraft:redstone_torch[lit=true] \
    run tag @s add hydraulic_machinery_dispenser_powered

execute \
    if block ~1 ~ ~ minecraft:redstone_torch[lit=true] \
    run tag @s add hydraulic_machinery_dispenser_powered

execute \
    if block ~ ~ ~-1 minecraft:redstone_torch[lit=true] \
    run tag @s add hydraulic_machinery_dispenser_powered

execute \
    if block ~ ~ ~1 minecraft:redstone_torch[lit=true] \
    run tag @s add hydraulic_machinery_dispenser_powered

execute \
    if block ~ ~-1 ~ minecraft:repeater[powered=true] \
    run tag @s add hydraulic_machinery_dispenser_powered

execute \
    if block ~ ~1 ~ minecraft:repeater[powered=true] \
    run tag @s add hydraulic_machinery_dispenser_powered

execute \
    if block ~-1 ~ ~ minecraft:repeater[powered=true] \
    run tag @s add hydraulic_machinery_dispenser_powered

execute \
    if block ~1 ~ ~ minecraft:repeater[powered=true] \
    run tag @s add hydraulic_machinery_dispenser_powered

execute \
    if block ~ ~ ~-1 minecraft:repeater[powered=true] \
    run tag @s add hydraulic_machinery_dispenser_powered

execute \
    if block ~ ~ ~1 minecraft:repeater[powered=true] \
    run tag @s add hydraulic_machinery_dispenser_powered

execute \
    if block ~ ~-1 ~ #minecraft:buttons[powered=true] \
    run tag @s add hydraulic_machinery_dispenser_powered

execute \
    if block ~ ~1 ~ #minecraft:buttons[powered=true] \
    run tag @s add hydraulic_machinery_dispenser_powered

execute \
    if block ~-1 ~ ~ #minecraft:buttons[powered=true] \
    run tag @s add hydraulic_machinery_dispenser_powered

execute \
    if block ~1 ~ ~ #minecraft:buttons[powered=true] \
    run tag @s add hydraulic_machinery_dispenser_powered

execute \
    if block ~ ~ ~-1 #minecraft:buttons[powered=true] \
    run tag @s add hydraulic_machinery_dispenser_powered

execute \
    if block ~ ~ ~1 #minecraft:buttons[powered=true] \
    run tag @s add hydraulic_machinery_dispenser_powered

execute \
    if block ~ ~-1 ~ #minecraft:pressure_plates[powered=true] \
    run tag @s add hydraulic_machinery_dispenser_powered

execute \
    if block ~ ~1 ~ #minecraft:pressure_plates[powered=true] \
    run tag @s add hydraulic_machinery_dispenser_powered

execute \
    if block ~-1 ~ ~ #minecraft:pressure_plates[powered=true] \
    run tag @s add hydraulic_machinery_dispenser_powered

execute \
    if block ~1 ~ ~ #minecraft:pressure_plates[powered=true] \
    run tag @s add hydraulic_machinery_dispenser_powered

execute \
    if block ~ ~ ~-1 #minecraft:pressure_plates[powered=true] \
    run tag @s add hydraulic_machinery_dispenser_powered

execute \
    if block ~ ~ ~1 #minecraft:pressure_plates[powered=true] \
    run tag @s add hydraulic_machinery_dispenser_powered
