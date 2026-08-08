advancement revoke @s only hydraulic_machinery:dispenser

scoreboard players set @s hydraulic_machinery.raycast 0

execute \
    if score #global hydraulic_machinery.is_dispenser_machine_enabled matches 1 \
    anchored eyes positioned ^ ^ ^0.5 \
    run function hydraulic_machinery:management/raycast/dispenser
