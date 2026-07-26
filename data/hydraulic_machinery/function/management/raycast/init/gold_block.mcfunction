advancement revoke @s only hydraulic_machinery:gold_block

scoreboard players set @s hydraulic_machinery.raycast 0

execute \
    if score #global hydraulic_machinery.is_hydraulic_press_enabled matches 1 \
    anchored eyes positioned ^ ^ ^0.5 \
    run function hydraulic_machinery:management/raycast/gold_block
