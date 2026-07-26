execute \
    if score #global hydraulic_machinery.is_fuel_required matches 1 \
    as @s[scores={hydraulic_machinery.fuel_type=0}] \
    run function hydraulic_machinery:management/refuel/dye_press

execute \
    as @s[scores={hydraulic_machinery.fuel_type=1}] \
    run function hydraulic_machinery:machines/dye_press/result/concrete_powder/white_concrete_powder

execute \
    as @s[scores={hydraulic_machinery.fuel_type=2}] \
    run function hydraulic_machinery:machines/dye_press/result/concrete_powder/light_gray_concrete_powder

execute \
    as @s[scores={hydraulic_machinery.fuel_type=3}] \
    run function hydraulic_machinery:machines/dye_press/result/concrete_powder/gray_concrete_powder

execute \
    as @s[scores={hydraulic_machinery.fuel_type=4}] \
    run function hydraulic_machinery:machines/dye_press/result/concrete_powder/black_concrete_powder

execute \
    as @s[scores={hydraulic_machinery.fuel_type=5}] \
    run function hydraulic_machinery:machines/dye_press/result/concrete_powder/brown_concrete_powder

execute \
    as @s[scores={hydraulic_machinery.fuel_type=6}] \
    run function hydraulic_machinery:machines/dye_press/result/concrete_powder/red_concrete_powder

execute \
    as @s[scores={hydraulic_machinery.fuel_type=7}] \
    run function hydraulic_machinery:machines/dye_press/result/concrete_powder/orange_concrete_powder

execute \
    as @s[scores={hydraulic_machinery.fuel_type=8}] \
    run function hydraulic_machinery:machines/dye_press/result/concrete_powder/yellow_concrete_powder

execute \
    as @s[scores={hydraulic_machinery.fuel_type=9}] \
    run function hydraulic_machinery:machines/dye_press/result/concrete_powder/lime_concrete_powder

execute \
    as @s[scores={hydraulic_machinery.fuel_type=10}] \
    run function hydraulic_machinery:machines/dye_press/result/concrete_powder/green_concrete_powder

execute \
    as @s[scores={hydraulic_machinery.fuel_type=11}] \
    run function hydraulic_machinery:machines/dye_press/result/concrete_powder/cyan_concrete_powder

execute \
    as @s[scores={hydraulic_machinery.fuel_type=12}] \
    run function hydraulic_machinery:machines/dye_press/result/concrete_powder/light_blue_concrete_powder

execute \
    as @s[scores={hydraulic_machinery.fuel_type=13}] \
    run function hydraulic_machinery:machines/dye_press/result/concrete_powder/blue_concrete_powder

execute \
    as @s[scores={hydraulic_machinery.fuel_type=14}] \
    run function hydraulic_machinery:machines/dye_press/result/concrete_powder/purple_concrete_powder

execute \
    as @s[scores={hydraulic_machinery.fuel_type=15}] \
    run function hydraulic_machinery:machines/dye_press/result/concrete_powder/magenta_concrete_powder

execute \
    as @s[scores={hydraulic_machinery.fuel_type=16}] \
    run function hydraulic_machinery:machines/dye_press/result/concrete_powder/pink_concrete_powder
