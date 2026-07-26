execute \
    if score #global hydraulic_machinery.is_fuel_required matches 1 \
    as @s[scores={hydraulic_machinery.fuel_type=0}] \
    run function hydraulic_machinery:management/refuel/dye_press

execute \
    as @s[scores={hydraulic_machinery.fuel_type=1}] \
    run function hydraulic_machinery:machines/dye_press/result/wool/white_wool

execute \
    as @s[scores={hydraulic_machinery.fuel_type=2}] \
    run function hydraulic_machinery:machines/dye_press/result/wool/light_gray_wool

execute \
    as @s[scores={hydraulic_machinery.fuel_type=3}] \
    run function hydraulic_machinery:machines/dye_press/result/wool/gray_wool

execute \
    as @s[scores={hydraulic_machinery.fuel_type=4}] \
    run function hydraulic_machinery:machines/dye_press/result/wool/black_wool

execute \
    as @s[scores={hydraulic_machinery.fuel_type=5}] \
    run function hydraulic_machinery:machines/dye_press/result/wool/brown_wool

execute \
    as @s[scores={hydraulic_machinery.fuel_type=6}] \
    run function hydraulic_machinery:machines/dye_press/result/wool/red_wool

execute \
    as @s[scores={hydraulic_machinery.fuel_type=7}] \
    run function hydraulic_machinery:machines/dye_press/result/wool/orange_wool

execute \
    as @s[scores={hydraulic_machinery.fuel_type=8}] \
    run function hydraulic_machinery:machines/dye_press/result/wool/yellow_wool

execute \
    as @s[scores={hydraulic_machinery.fuel_type=9}] \
    run function hydraulic_machinery:machines/dye_press/result/wool/lime_wool

execute \
    as @s[scores={hydraulic_machinery.fuel_type=10}] \
    run function hydraulic_machinery:machines/dye_press/result/wool/green_wool

execute \
    as @s[scores={hydraulic_machinery.fuel_type=11}] \
    run function hydraulic_machinery:machines/dye_press/result/wool/cyan_wool

execute \
    as @s[scores={hydraulic_machinery.fuel_type=12}] \
    run function hydraulic_machinery:machines/dye_press/result/wool/light_blue_wool

execute \
    as @s[scores={hydraulic_machinery.fuel_type=13}] \
    run function hydraulic_machinery:machines/dye_press/result/wool/blue_wool

execute \
    as @s[scores={hydraulic_machinery.fuel_type=14}] \
    run function hydraulic_machinery:machines/dye_press/result/wool/purple_wool

execute \
    as @s[scores={hydraulic_machinery.fuel_type=15}] \
    run function hydraulic_machinery:machines/dye_press/result/wool/magenta_wool

execute \
    as @s[scores={hydraulic_machinery.fuel_type=16}] \
    run function hydraulic_machinery:machines/dye_press/result/wool/pink_wool
