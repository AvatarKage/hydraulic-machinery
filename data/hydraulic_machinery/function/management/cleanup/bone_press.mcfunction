execute \
    as @s[tag=hydraulic_machinery_created] \
    unless data entity @s CustomName \
    run tellraw @p ["",{color:"#e77b57",text:"[Hydraulic Machinery] "},"Bone press broke!"]

execute \
    as @s[tag=hydraulic_machinery_created] \
    if data entity @s CustomName \
    run tellraw @p ["",{"color":"#e77b57","text":"[Hydraulic Machinery] "},{"selector":"@s"}," broke!"]
    
kill @s
