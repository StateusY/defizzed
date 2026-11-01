# FROM defizzed:fizz_plush/hit/on_display

execute on passengers if entity @s[type=minecraft:item_display,tag=defizzed.fizz_plush_item] if data entity @s item.components run function defizzed:fizz_plush/item/item_macro_components with entity @s item
execute on passengers if entity @s[type=minecraft:item_display,tag=defizzed.fizz_plush_item] unless data entity @s item.components run function defizzed:fizz_plush/item/item_macro with entity @s item
execute on passengers run kill @s
kill @s

playsound defizzed:item.plush.squeak block @a ~ ~ ~ 1 1
particle minecraft:item{item:{id:"minecraft:poisonous_potato",components:{"minecraft:item_model":"defizzed:fizz_plush"}}} ~ ~-0.25 ~ 0.3 0.1 0.3 0.1 20

# often, the item is inside a block hitbox, this ensures that it is spawned slightly out of it towards the player
summon item_display ~ ~ ~ {UUID:[I;-681154397,645809957,-1484653974,-923729236]}
tp d76668a3-267e-4725-a781-fa6ac8f102ac ~ ~ ~
execute at d76668a3-267e-4725-a781-fa6ac8f102ac facing entity @p[tag=defizzed.hit_fizz_plush] feet run tp d76668a3-267e-4725-a781-fa6ac8f102ac ^ ^0.05 ^0.1
execute at d76668a3-267e-4725-a781-fa6ac8f102ac run loot spawn ~ ~-0.1 ~ loot defizzed:fizz_plush