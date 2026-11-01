# FROM defizzed:fizz_plush/hit/on_display

execute on passengers if entity @s[type=minecraft:item_display,tag=defizzed.fizz_plush_item] if data entity @s item.components run function defizzed:fizz_plush/item/item_macro_components with entity @s item
execute on passengers if entity @s[type=minecraft:item_display,tag=defizzed.fizz_plush_item] unless data entity @s item.components run function defizzed:fizz_plush/item/item_macro with entity @s item
execute on passengers run kill @s
kill @s

playsound defizzed:item.plush.squeak block @a ~ ~ ~ 1 1
particle minecraft:item{item:{id:"minecraft:poisonous_potato",components:{"minecraft:item_model":"defizzed:fizz_plush_block"}}} ~ ~-0.25 ~ 0.3 0.1 0.3 0.1 20

loot spawn ~ ~ ~ loot defizzed:fizz_plush