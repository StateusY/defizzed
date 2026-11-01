execute if score @s cnk.item_count matches 1.. run return fail

# raise arms
data modify entity @s item.components."minecraft:custom_model_data".flags[0] set value true

scoreboard players operation $global cnk.item_count = @s cnk.item_count
execute summon minecraft:item_display at @s run function defizzed:fizz_plush/item/place
scoreboard players operation @s cnk.item_count = $global cnk.item_count