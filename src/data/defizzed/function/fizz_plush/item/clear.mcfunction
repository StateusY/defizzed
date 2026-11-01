# drop all items
execute on passengers if entity @s[type=minecraft:item_display,tag=defizzed.fizz_plush_item] run function defizzed:fizz_plush/item/remove
scoreboard players set @s cnk.item_count 0