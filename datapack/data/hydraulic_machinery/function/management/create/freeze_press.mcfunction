tag @s add hydraulic_machinery_created

scoreboard players set @s hydraulic_machinery.fuel_level 0
scoreboard players set @s hydraulic_machinery.fuel_type 0

execute \
    as @s \
    unless data entity @s CustomName \
    run tellraw @p ["",{color:"#e77b57",text:"[Hydraulic Machinery] "},"Freeze press created!"]

execute \
    as @s \
    if data entity @s CustomName \
    run tellraw @p ["",{"color":"#e77b57","text":"[Hydraulic Machinery] "},{"selector":"@s"}," created!"]
