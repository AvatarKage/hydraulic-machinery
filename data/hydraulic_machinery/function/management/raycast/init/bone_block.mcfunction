advancement revoke @s only hydraulic_machinery:bone_block

scoreboard players set @s hydraulic_machinery.raycast 0

execute \
    if score #global hydraulic_machinery.is_bone_press_enabled matches 1 \
    anchored eyes positioned ^ ^ ^0.5 \
    run function hydraulic_machinery:management/raycast/bone_block
