execute \
    if score #global hydraulic_machinery.is_fuel_required matches 1 \
    as @s[scores={hydraulic_machinery.fuel_type=0}] \
    run function hydraulic_machinery:management/refuel/dye_press

execute \
    as @s[scores={hydraulic_machinery.fuel_type=1}] \
    run function hydraulic_machinery:machines/dye_press/result/concrete/white_concrete

execute \
    as @s[scores={hydraulic_machinery.fuel_type=2}] \
    run function hydraulic_machinery:machines/dye_press/result/concrete/light_gray_concrete

execute \
    as @s[scores={hydraulic_machinery.fuel_type=3}] \
    run function hydraulic_machinery:machines/dye_press/result/concrete/gray_concrete

execute \
    as @s[scores={hydraulic_machinery.fuel_type=4}] \
    run function hydraulic_machinery:machines/dye_press/result/concrete/black_concrete

execute \
    as @s[scores={hydraulic_machinery.fuel_type=5}] \
    run function hydraulic_machinery:machines/dye_press/result/concrete/brown_concrete

execute \
    as @s[scores={hydraulic_machinery.fuel_type=6}] \
    run function hydraulic_machinery:machines/dye_press/result/concrete/red_concrete

execute \
    as @s[scores={hydraulic_machinery.fuel_type=7}] \
    run function hydraulic_machinery:machines/dye_press/result/concrete/orange_concrete

execute \
    as @s[scores={hydraulic_machinery.fuel_type=8}] \
    run function hydraulic_machinery:machines/dye_press/result/concrete/yellow_concrete

execute \
    as @s[scores={hydraulic_machinery.fuel_type=9}] \
    run function hydraulic_machinery:machines/dye_press/result/concrete/lime_concrete

execute \
    as @s[scores={hydraulic_machinery.fuel_type=10}] \
    run function hydraulic_machinery:machines/dye_press/result/concrete/green_concrete

execute \
    as @s[scores={hydraulic_machinery.fuel_type=11}] \
    run function hydraulic_machinery:machines/dye_press/result/concrete/cyan_concrete

execute \
    as @s[scores={hydraulic_machinery.fuel_type=12}] \
    run function hydraulic_machinery:machines/dye_press/result/concrete/light_blue_concrete

execute \
    as @s[scores={hydraulic_machinery.fuel_type=13}] \
    run function hydraulic_machinery:machines/dye_press/result/concrete/blue_concrete

execute \
    as @s[scores={hydraulic_machinery.fuel_type=14}] \
    run function hydraulic_machinery:machines/dye_press/result/concrete/purple_concrete

execute \
    as @s[scores={hydraulic_machinery.fuel_type=15}] \
    run function hydraulic_machinery:machines/dye_press/result/concrete/magenta_concrete

execute \
    as @s[scores={hydraulic_machinery.fuel_type=16}] \
    run function hydraulic_machinery:machines/dye_press/result/concrete/pink_concrete
