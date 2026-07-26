data modify storage hydraulic_machinery:debug_name name set value []

data modify storage hydraulic_machinery:debug_name name append from block ~ ~1 ~-1 front_text.messages[0]
data modify storage hydraulic_machinery:debug_name name append from block ~ ~1 ~-1 front_text.messages[1]
data modify storage hydraulic_machinery:debug_name name append from block ~ ~1 ~-1 front_text.messages[2]
data modify storage hydraulic_machinery:debug_name name append from block ~ ~1 ~-1 front_text.messages[3]

data modify entity @s CustomName set from storage hydraulic_machinery:debug_name name
