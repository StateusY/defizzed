execute store result score $chance cnk.dummy run random value 1..100

# blink both
execute if score $chance cnk.dummy matches 1..6 run data modify entity @s item.components."minecraft:custom_model_data".flags[0] set value true
execute if score $chance cnk.dummy matches 1..6 run return run data modify entity @s item.components."minecraft:custom_model_data".flags[1] set value true

# blink one
execute if score $chance cnk.dummy matches 7..8 run return run data modify entity @s item.components."minecraft:custom_model_data".flags[0] set value true
execute if score $chance cnk.dummy matches 9..10 run return run data modify entity @s item.components."minecraft:custom_model_data".flags[1] set value true