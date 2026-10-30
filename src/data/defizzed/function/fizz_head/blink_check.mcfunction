# blink
scoreboard players set $chance cnk.dummy 0
execute if predicate {type:"minecraft:entity_properties",entity:"this",predicate:{periodic_tick:5}} run function defizzed:fizz_head/blink
execute if predicate {type:"minecraft:entity_properties",entity:"this",predicate:{periodic_tick:10}} run data modify entity @s item.components."minecraft:custom_model_data".flags[1] set value false
execute if predicate {type:"minecraft:entity_properties",entity:"this",predicate:{periodic_tick:10}} run return run data modify entity @s item.components."minecraft:custom_model_data".flags[2] set value false

# blink sound
execute if score $chance cnk.dummy matches 1..10 run playsound minecraft:block.honey_block.break neutral @a ~ ~ ~ 0.4 2