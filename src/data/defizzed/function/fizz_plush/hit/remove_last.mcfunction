execute if score @s cnk.item_count matches 1 on passengers if entity @s[tag=defizzed.fizz_plush_1] at @s run function defizzed:fizz_plush/item/remove

# lower arms
execute if score @s cnk.item_count matches 1 run data modify entity @s item.components."minecraft:custom_model_data".flags[0] set value false

scoreboard players remove @s cnk.item_count 1