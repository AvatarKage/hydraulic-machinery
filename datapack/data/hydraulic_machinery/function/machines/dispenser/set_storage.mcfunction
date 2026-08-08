data modify storage hydraulic_machinery:dispenser_item_id \
    block set from entity @s Item.id

function hydraulic_machinery:machines/dispenser/set_block \
    with storage hydraulic_machinery:dispenser_item_id
