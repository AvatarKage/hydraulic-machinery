advancement revoke @s only hydraulic_machinery:magma_block

scoreboard players set @s hydraulic_machinery.raycast 0

execute \
    if score #global hydraulic_machinery.is_heat_press_enabled matches 1 \
    anchored eyes positioned ^ ^ ^0.5 \
    run function hydraulic_machinery:management/raycast/magma_block
