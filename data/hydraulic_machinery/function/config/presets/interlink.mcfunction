function hydraulic_machinery:config/disable/anvil_requirement
function hydraulic_machinery:config/disable/fuel_requirement
function hydraulic_machinery:config/disable/special_recipes

function hydraulic_machinery:config/enable/stonecutter_machine
function hydraulic_machinery:config/disable/stonecutter_break_all_blocks
function hydraulic_machinery:config/enable/stonecutter_damage_entities
function hydraulic_machinery:config/enable/dispenser_machine
function hydraulic_machinery:config/enable/hologram_machine

function hydraulic_machinery:config/enable/hydraulic_press
function hydraulic_machinery:config/enable/heat_press
function hydraulic_machinery:config/enable/wet_press
function hydraulic_machinery:config/enable/dye_press
function hydraulic_machinery:config/disable/wax_press
function hydraulic_machinery:config/disable/sculk_press
function hydraulic_machinery:config/enable/freeze_press
function hydraulic_machinery:config/disable/bone_press
function hydraulic_machinery:config/disable/mushroom_press
function hydraulic_machinery:config/enable/wheat_press
function hydraulic_machinery:config/disable/combustion_press

tellraw @s [\
    {"color":"#e77b57","text":"[Hydraulic Machinery] "}, \
    {"text":"Interlink preset configured!","bold":true}\
]
