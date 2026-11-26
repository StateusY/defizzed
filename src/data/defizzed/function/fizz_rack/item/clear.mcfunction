swing @p[tag=defizzed.interact_fizz_rack,distance=..20] mainhand
execute as @e[type=interaction,tag=defizzed.fizz_rack_interaction,distance=..1,limit=2] if entity @s[type=minecraft:item_display,tag=defizzed.fizz_rack_item] run function defizzed:fizz_rack/item/remove
scoreboard players set @s cnk.item_count 0