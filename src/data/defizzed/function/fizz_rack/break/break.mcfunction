execute as @e[type=interaction,tag=defizzed.fizz_rack_interaction,distance=..1,limit=2] if entity @s[type=minecraft:item_display,tag=defizzed.fizz_rack_item] if data entity @s item.components run function defizzed:fizz_rack/item/item_macro_components with entity @s item
execute as @e[type=interaction,tag=defizzed.fizz_rack_interaction,distance=..1,limit=2] if entity @s[type=minecraft:item_display,tag=defizzed.fizz_rack_item] unless data entity @s item.components run function defizzed:fizz_rack/item/item_macro with entity @s item
execute as @e[type=interaction,tag=defizzed.fizz_rack_interaction,distance=..1,limit=2] run kill @s
kill @s

playsound block.bamboo_wood.break block @a ~ ~ ~ 1 2
particle minecraft:item{item:{id:"minecraft:spruce_planks"}} ~ ~-0.25 ~ 0.3 0.1 0.3 0.1 20

loot spawn ~ ~ ~ loot defizzed:fizz_rack