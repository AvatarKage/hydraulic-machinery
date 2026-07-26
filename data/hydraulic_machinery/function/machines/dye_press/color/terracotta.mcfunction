execute \
    if score #global hydraulic_machinery.is_fuel_required matches 1 \
    as @s[scores={hydraulic_machinery.fuel_type=0}] \
    run function hydraulic_machinery:management/refuel/dye_press

execute \
    as @s[scores={hydraulic_machinery.fuel_type=1}] \
    run function hydraulic_machinery:machines/dye_press/result/terracotta/white_terracotta

execute \
    as @s[scores={hydraulic_machinery.fuel_type=2}] \
    run function hydraulic_machinery:machines/dye_press/result/terracotta/light_gray_terracotta

execute \
    as @s[scores={hydraulic_machinery.fuel_type=3}] \
    run function hydraulic_machinery:machines/dye_press/result/terracotta/gray_terracotta

execute \
    as @s[scores={hydraulic_machinery.fuel_type=4}] \
    run function hydraulic_machinery:machines/dye_press/result/terracotta/black_terracotta

execute \
    as @s[scores={hydraulic_machinery.fuel_type=5}] \
    run function hydraulic_machinery:machines/dye_press/result/terracotta/brown_terracotta

execute \
    as @s[scores={hydraulic_machinery.fuel_type=6}] \
    run function hydraulic_machinery:machines/dye_press/result/terracotta/red_terracotta

execute \
    as @s[scores={hydraulic_machinery.fuel_type=7}] \
    run function hydraulic_machinery:machines/dye_press/result/terracotta/orange_terracotta

execute \
    as @s[scores={hydraulic_machinery.fuel_type=8}] \
    run function hydraulic_machinery:machines/dye_press/result/terracotta/yellow_terracotta

execute \
    as @s[scores={hydraulic_machinery.fuel_type=9}] \
    run function hydraulic_machinery:machines/dye_press/result/terracotta/lime_terracotta

execute \
    as @s[scores={hydraulic_machinery.fuel_type=10}] \
    run function hydraulic_machinery:machines/dye_press/result/terracotta/green_terracotta

execute \
    as @s[scores={hydraulic_machinery.fuel_type=11}] \
    run function hydraulic_machinery:machines/dye_press/result/terracotta/cyan_terracotta

execute \
    as @s[scores={hydraulic_machinery.fuel_type=12}] \
    run function hydraulic_machinery:machines/dye_press/result/terracotta/light_blue_terracotta

execute \
    as @s[scores={hydraulic_machinery.fuel_type=13}] \
    run function hydraulic_machinery:machines/dye_press/result/terracotta/blue_terracotta

execute \
    as @s[scores={hydraulic_machinery.fuel_type=14}] \
    run function hydraulic_machinery:machines/dye_press/result/terracotta/purple_terracotta

execute \
    as @s[scores={hydraulic_machinery.fuel_type=15}] \
    run function hydraulic_machinery:machines/dye_press/result/terracotta/magenta_terracotta

execute \
    as @s[scores={hydraulic_machinery.fuel_type=16}] \
    run function hydraulic_machinery:machines/dye_press/result/terracotta/pink_terracotta
