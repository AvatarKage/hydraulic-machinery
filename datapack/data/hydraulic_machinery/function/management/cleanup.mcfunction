execute \
    if score #global hydraulic_machinery.is_stonecutter_machine_enabled matches 1 \
    run function hydraulic_machinery:management/cleanup/stonecutter

function hydraulic_machinery:management/cleanup/hologram

execute \
    if score #global hydraulic_machinery.is_hydraulic_press_enabled matches 1 \
    run function hydraulic_machinery:management/cleanup/check/hydraulic_press

execute \
    if score #global hydraulic_machinery.is_heat_press_enabled matches 1 \
    run function hydraulic_machinery:management/cleanup/check/heat_press

execute \
    if score #global hydraulic_machinery.is_wet_press_enabled matches 1 \
    run function hydraulic_machinery:management/cleanup/check/wet_press

execute \
    if score #global hydraulic_machinery.is_dye_press_enabled matches 1 \
    run function hydraulic_machinery:management/cleanup/check/dye_press

execute \
    if score #global hydraulic_machinery.is_wax_press_enabled matches 1 \
    run function hydraulic_machinery:management/cleanup/check/wax_press

execute \
    if score #global hydraulic_machinery.is_sculk_press_enabled matches 1 \
    run function hydraulic_machinery:management/cleanup/check/sculk_press

execute \
    if score #global hydraulic_machinery.is_freeze_press_enabled matches 1 \
    run function hydraulic_machinery:management/cleanup/check/freeze_press

execute \
    if score #global hydraulic_machinery.is_bone_press_enabled matches 1 \
    run function hydraulic_machinery:management/cleanup/check/bone_press

execute \
    if score #global hydraulic_machinery.is_mushroom_press_enabled matches 1 \
    run function hydraulic_machinery:management/cleanup/check/mushroom_press

execute \
    if score #global hydraulic_machinery.is_wheat_press_enabled matches 1 \
    run function hydraulic_machinery:management/cleanup/check/wheat_press
