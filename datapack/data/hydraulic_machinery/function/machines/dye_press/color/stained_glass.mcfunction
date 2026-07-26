execute \
    if score #global hydraulic_machinery.is_fuel_required matches 1 \
    as @s[scores={hydraulic_machinery.fuel_type=0}] \
    run function hydraulic_machinery:management/refuel/dye_press

execute \
    as @s[scores={hydraulic_machinery.fuel_type=1}] \
    run function hydraulic_machinery:machines/dye_press/result/stained_glass/white_stained_glass

execute \
    as @s[scores={hydraulic_machinery.fuel_type=2}] \
    run function hydraulic_machinery:machines/dye_press/result/stained_glass/light_gray_stained_glass

execute \
    as @s[scores={hydraulic_machinery.fuel_type=3}] \
    run function hydraulic_machinery:machines/dye_press/result/stained_glass/gray_stained_glass

execute \
    as @s[scores={hydraulic_machinery.fuel_type=4}] \
    run function hydraulic_machinery:machines/dye_press/result/stained_glass/black_stained_glass

execute \
    as @s[scores={hydraulic_machinery.fuel_type=5}] \
    run function hydraulic_machinery:machines/dye_press/result/stained_glass/brown_stained_glass

execute \
    as @s[scores={hydraulic_machinery.fuel_type=6}] \
    run function hydraulic_machinery:machines/dye_press/result/stained_glass/red_stained_glass

execute \
    as @s[scores={hydraulic_machinery.fuel_type=7}] \
    run function hydraulic_machinery:machines/dye_press/result/stained_glass/orange_stained_glass

execute \
    as @s[scores={hydraulic_machinery.fuel_type=8}] \
    run function hydraulic_machinery:machines/dye_press/result/stained_glass/yellow_stained_glass

execute \
    as @s[scores={hydraulic_machinery.fuel_type=9}] \
    run function hydraulic_machinery:machines/dye_press/result/stained_glass/lime_stained_glass

execute \
    as @s[scores={hydraulic_machinery.fuel_type=10}] \
    run function hydraulic_machinery:machines/dye_press/result/stained_glass/green_stained_glass

execute \
    as @s[scores={hydraulic_machinery.fuel_type=11}] \
    run function hydraulic_machinery:machines/dye_press/result/stained_glass/cyan_stained_glass

execute \
    as @s[scores={hydraulic_machinery.fuel_type=12}] \
    run function hydraulic_machinery:machines/dye_press/result/stained_glass/light_blue_stained_glass

execute \
    as @s[scores={hydraulic_machinery.fuel_type=13}] \
    run function hydraulic_machinery:machines/dye_press/result/stained_glass/blue_stained_glass

execute \
    as @s[scores={hydraulic_machinery.fuel_type=14}] \
    run function hydraulic_machinery:machines/dye_press/result/stained_glass/purple_stained_glass

execute \
    as @s[scores={hydraulic_machinery.fuel_type=15}] \
    run function hydraulic_machinery:machines/dye_press/result/stained_glass/magenta_stained_glass

execute \
    as @s[scores={hydraulic_machinery.fuel_type=16}] \
    run function hydraulic_machinery:machines/dye_press/result/stained_glass/pink_stained_glass
