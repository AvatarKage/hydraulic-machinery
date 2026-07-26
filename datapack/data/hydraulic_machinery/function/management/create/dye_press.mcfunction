tag @s add hydraulic_machinery_created

scoreboard players set @s hydraulic_machinery.fuel_level 0
scoreboard players set @s hydraulic_machinery.fuel_type 0

execute \
    if block ~ ~ ~ minecraft:white_wool \
    run scoreboard players set @s hydraulic_machinery.fuel_type 1

execute \
    if block ~ ~ ~ minecraft:light_gray_wool \
    run scoreboard players set @s hydraulic_machinery.fuel_type 2

execute \
    if block ~ ~ ~ minecraft:gray_wool \
    run scoreboard players set @s hydraulic_machinery.fuel_type 3

execute \
    if block ~ ~ ~ minecraft:black_wool \
    run scoreboard players set @s hydraulic_machinery.fuel_type 4

execute \
    if block ~ ~ ~ minecraft:brown_wool \
    run scoreboard players set @s hydraulic_machinery.fuel_type 5

execute \
    if block ~ ~ ~ minecraft:red_wool \
    run scoreboard players set @s hydraulic_machinery.fuel_type 6

execute \
    if block ~ ~ ~ minecraft:orange_wool \
    run scoreboard players set @s hydraulic_machinery.fuel_type 7

execute \
    if block ~ ~ ~ minecraft:yellow_wool \
    run scoreboard players set @s hydraulic_machinery.fuel_type 8

execute \
    if block ~ ~ ~ minecraft:lime_wool \
    run scoreboard players set @s hydraulic_machinery.fuel_type 9

execute \
    if block ~ ~ ~ minecraft:green_wool \
    run scoreboard players set @s hydraulic_machinery.fuel_type 10

execute \
    if block ~ ~ ~ minecraft:cyan_wool \
    run scoreboard players set @s hydraulic_machinery.fuel_type 11

execute \
    if block ~ ~ ~ minecraft:light_blue_wool \
    run scoreboard players set @s hydraulic_machinery.fuel_type 12

execute \
    if block ~ ~ ~ minecraft:blue_wool \
    run scoreboard players set @s hydraulic_machinery.fuel_type 13

execute \
    if block ~ ~ ~ minecraft:purple_wool \
    run scoreboard players set @s hydraulic_machinery.fuel_type 14

execute \
    if block ~ ~ ~ minecraft:magenta_wool \
    run scoreboard players set @s hydraulic_machinery.fuel_type 15

execute \
    if block ~ ~ ~ minecraft:pink_wool \
    run scoreboard players set @s hydraulic_machinery.fuel_type 16

execute \
    as @s \
    unless data entity @s CustomName \
    run tellraw @p ["",{color:"#e77b57",text:"[Hydraulic Machinery] "},"Dye press created!"]

execute \
    as @s \
    if data entity @s CustomName \
    run tellraw @p ["",{"color":"#e77b57","text":"[Hydraulic Machinery] "},{"selector":"@s"}," created!"]
