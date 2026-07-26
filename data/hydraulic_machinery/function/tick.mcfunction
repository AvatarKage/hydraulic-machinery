function hydraulic_machinery:management/debug
function hydraulic_machinery:management/cleanup
function hydraulic_machinery:management/name

execute \
    if score #global hydraulic_machinery.is_stonecutter_machine_enabled matches 1 \
    run function hydraulic_machinery:machines/stonecutter

execute \
    if score #global hydraulic_machinery.is_dispenser_machine_enabled matches 1 \
    run function hydraulic_machinery:machines/dispenser

execute \
    if score #global hydraulic_machinery.is_hydraulic_press_enabled matches 1 \
    run function hydraulic_machinery:machines/hydraulic_press

execute \
    if score #global hydraulic_machinery.is_heat_press_enabled matches 1 \
    run function hydraulic_machinery:machines/heat_press

execute \
    if score #global hydraulic_machinery.is_wet_press_enabled matches 1 \
    run function hydraulic_machinery:machines/wet_press

execute \
    if score #global hydraulic_machinery.is_dye_press_enabled matches 1 \
    run function hydraulic_machinery:machines/dye_press

execute \
    if score #global hydraulic_machinery.is_wax_press_enabled matches 1 \
    run function hydraulic_machinery:machines/wax_press

execute \
    if score #global hydraulic_machinery.is_sculk_press_enabled matches 1 \
    run function hydraulic_machinery:machines/sculk_press

execute \
    if score #global hydraulic_machinery.is_freeze_press_enabled matches 1 \
    run function hydraulic_machinery:machines/freeze_press

execute \
    if score #global hydraulic_machinery.is_mushroom_press_enabled matches 1 \
    run function hydraulic_machinery:machines/mushroom_press

execute \
    if score #global hydraulic_machinery.is_wheat_press_enabled matches 1 \
    run function hydraulic_machinery:machines/wheat_press

execute \
    as @e[type=armor_stand,tag=!hydraulic_machinery_active] \
    at @s \
    if block ~ ~1 ~ minecraft:sticky_piston[facing=down,extended=true] \
    run tag @s add hydraulic_machinery_active

execute \
    as @e[type=armor_stand,tag=hydraulic_machinery_active] \
    at @s \
    if block ~ ~1 ~ minecraft:sticky_piston[facing=down,extended=false] \
    run tag @s remove hydraulic_machinery_active

# DEVELOPER ONLY
#execute \
#    unless entity @e[type=minecraft:text_display,tag=test_label,limit=1] \
#    run summon minecraft:text_display 0 -59 0 { \
#    Tags:["test_label"], \
#    text:[ \
#        {"text":"[Hydraulic Machinery]","color":"gray"}, \
#        {"text":"\n"}, \
#        {"text":"Hydraulic Press","color":"yellow","bold":true} \
#    ], \
#   billboard:"center", \
#   background:0, \
#   shadow:1b \
#}

#execute \
#    as @e[type=minecraft:text_display,tag=test_label] \
#    run tp @s 0 -59 0
