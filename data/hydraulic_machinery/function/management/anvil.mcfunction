execute \
    if block ~ ~-3 ~ anvil \
    run tag @s add hydraulic_machinery_has_anvil

execute \
    unless block ~ ~-3 ~ anvil \
    run tag @s remove hydraulic_machinery_has_anvil

execute \
    as @s[tag=!hydraulic_machinery_has_anvil] \
    unless data entity @s CustomName \
    run tellraw @p ["",{color:"#e77b57",text:"[Hydraulic Machinery] "},"An anvil is required to use this press!"]

execute \
    as @s[tag=!hydraulic_machinery_has_anvil] \
    if data entity @s CustomName \
    run tellraw @p ["",{"color":"#e77b57","text":"[Hydraulic Machinery] "},"An anvil is required to use, ",{"selector":"@s"},"!"]
