scoreboard objectives add hydraulic_machinery.is_stonecutter_machine_enabled dummy
scoreboard objectives add hydraulic_machinery.is_dispenser_machine_enabled dummy
scoreboard objectives add hydraulic_machinery.is_hologram_machine_enabled dummy

scoreboard objectives add hydraulic_machinery.is_hydraulic_press_enabled dummy
scoreboard objectives add hydraulic_machinery.is_heat_press_enabled dummy
scoreboard objectives add hydraulic_machinery.is_wet_press_enabled dummy
scoreboard objectives add hydraulic_machinery.is_dye_press_enabled dummy
scoreboard objectives add hydraulic_machinery.is_wax_press_enabled dummy
scoreboard objectives add hydraulic_machinery.is_sculk_press_enabled dummy
scoreboard objectives add hydraulic_machinery.is_freeze_press_enabled dummy
scoreboard objectives add hydraulic_machinery.is_bone_press_enabled dummy
scoreboard objectives add hydraulic_machinery.is_mushroom_press_enabled dummy
scoreboard objectives add hydraulic_machinery.is_wheat_press_enabled dummy
scoreboard objectives add hydraulic_machinery.is_combustion_press_enabled dummy

scoreboard objectives add hydraulic_machinery.seen_welcome_message dummy
scoreboard objectives add hydraulic_machinery.is_debug dummy
scoreboard objectives add hydraulic_machinery.is_anvil_required dummy
scoreboard objectives add hydraulic_machinery.is_fuel_required dummy
scoreboard objectives add hydraulic_machinery.can_stonecutter_break_all_blocks dummy
scoreboard objectives add hydraulic_machinery.can_stonecutter_damage_entities dummy
scoreboard objectives add hydraulic_machinery.are_special_recipes_enabled dummy

scoreboard objectives add hydraulic_machinery.raycast dummy
scoreboard objectives add hydraulic_machinery.success_roll dummy
scoreboard objectives add hydraulic_machinery.fuel_level dummy
scoreboard objectives add hydraulic_machinery.fuel_type dummy

execute \
    unless score #global hydraulic_machinery.is_stonecutter_machine_enabled matches ..2147483647 \
    run scoreboard players set #global hydraulic_machinery.is_stonecutter_machine_enabled 1

execute \
    unless score #global hydraulic_machinery.is_dispenser_machine_enabled matches ..2147483647 \
    run scoreboard players set #global hydraulic_machinery.is_dispenser_machine_enabled 1

execute \
    unless score #global hydraulic_machinery.is_hologram_machine_enabled matches ..2147483647 \
    run scoreboard players set #global hydraulic_machinery.is_hologram_machine_enabled 1

execute \
    unless score #global hydraulic_machinery.is_hydraulic_press_enabled matches ..2147483647 \
    run scoreboard players set #global hydraulic_machinery.is_hydraulic_press_enabled 1

execute \
    unless score #global hydraulic_machinery.is_heat_press_enabled matches ..2147483647 \
    run scoreboard players set #global hydraulic_machinery.is_heat_press_enabled 1

execute \
    unless score #global hydraulic_machinery.is_wet_press_enabled matches ..2147483647 \
    run scoreboard players set #global hydraulic_machinery.is_wet_press_enabled 1

execute \
    unless score #global hydraulic_machinery.is_dye_press_enabled matches ..2147483647 \
    run scoreboard players set #global hydraulic_machinery.is_dye_press_enabled 1

execute \
    unless score #global hydraulic_machinery.is_wax_press_enabled matches ..2147483647 \
    run scoreboard players set #global hydraulic_machinery.is_wax_press_enabled 1

execute \
    unless score #global hydraulic_machinery.is_sculk_press_enabled matches ..2147483647 \
    run scoreboard players set #global hydraulic_machinery.is_sculk_press_enabled 1

execute \
    unless score #global hydraulic_machinery.is_freeze_press_enabled matches ..2147483647 \
    run scoreboard players set #global hydraulic_machinery.is_freeze_press_enabled 1

execute \
    unless score #global hydraulic_machinery.is_bone_press_enabled matches ..2147483647 \
    run scoreboard players set #global hydraulic_machinery.is_bone_press_enabled 1

execute \
    unless score #global hydraulic_machinery.is_mushroom_press_enabled matches ..2147483647 \
    run scoreboard players set #global hydraulic_machinery.is_mushroom_press_enabled 1

execute \
    unless score #global hydraulic_machinery.is_wheat_press_enabled matches ..2147483647 \
    run scoreboard players set #global hydraulic_machinery.is_wheat_press_enabled 1

execute \
    unless score #global hydraulic_machinery.is_combustion_press_enabled matches ..2147483647 \
    run scoreboard players set #global hydraulic_machinery.is_combustion_press_enabled 1

execute \
    unless score #global hydraulic_machinery.is_debug matches ..2147483647 \
    run scoreboard players set #global hydraulic_machinery.is_debug 0

execute \
    unless score #global hydraulic_machinery.is_anvil_required matches ..2147483647 \
    run scoreboard players set #global hydraulic_machinery.is_anvil_required 1

execute \
    unless score #global hydraulic_machinery.is_fuel_required matches ..2147483647 \
    run scoreboard players set #global hydraulic_machinery.is_fuel_required 1

execute \
    unless score #global hydraulic_machinery.can_stonecutter_break_all_blocks matches ..2147483647 \
    run scoreboard players set #global hydraulic_machinery.can_stonecutter_break_all_blocks 1

execute \
    unless score #global hydraulic_machinery.can_stonecutter_damage_entities matches ..2147483647 \
    run scoreboard players set #global hydraulic_machinery.can_stonecutter_damage_entities 1

execute \
    unless score #global hydraulic_machinery.are_special_recipes_enabled matches ..2147483647 \
    run scoreboard players set #global hydraulic_machinery.are_special_recipes_enabled 1

execute \
    unless score #global hydraulic_machinery.seen_welcome_message matches 1 \
    run tellraw @p [ \
        "", \
        { \
            color:"#e77b57", \
            text:"[Hydraulic Machinery] " \
        }, \
        { \
            text:"Thanks for installing!\n\n" \
        }, \
        { \
            text:"You can configure the datapack using config functions, but it is recommended to leave the default configs enabled for the best experience.\n\n" \
        }, \
        { \
            color:"#e77b57", \
            text:"/function hydraulic_machinery:config/<enable|disable>/<feature>" \
        } \
    ]

execute \
    unless score #global hydraulic_machinery.seen_welcome_message matches 1 \
    as 815fe4a2-e0be-44cb-a25a-53240c69e448 \
    run tellraw @s [ \
         "", \
        { \
            color:"#e77b57", \
            text:"[Hydraulic Machinery] " \
        }, \
        { \
            text:"Hello " \
        }, \
        { \
            selector:"@s" \
        }, \
        { \
            text:"!\n\n" \
        }, \
        { \
            color:"green", \
            text:"Click to enable the Interlink SMP preset!", \
            bold:true, \
            click_event:{ \
                action:"run_command", \
                command:"/function hydraulic_machinery:config/presets/interlink" \
            }, \
            hover_event:{ \
                action:"show_text", \
                value:"Disables:\n- Anvil and fuel requirements\n- Special recipes\n- Stonecutter breaking all blocks\n- Some machines" \
            } \
        }, \
        { \
            text:"!\n\n" \
        }, \
        { \
            color:"gray", \
            italic:true, \
            text:"This message is only visible to you!" \
        } \
    ]

execute \
    unless score #global hydraulic_machinery.seen_welcome_message matches ..2147483647 \
    run scoreboard players set #global hydraulic_machinery.seen_welcome_message 1
