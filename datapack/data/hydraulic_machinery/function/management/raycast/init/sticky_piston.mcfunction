advancement revoke @s only hydraulic_machinery:sticky_piston

scoreboard players set @s hydraulic_machinery.raycast 0

execute \
    anchored eyes positioned ^ ^ ^0.5 \
    run function hydraulic_machinery:management/raycast/sticky_piston
