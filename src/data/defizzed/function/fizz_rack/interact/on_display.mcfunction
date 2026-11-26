
execute if entity @p[tag=defizzed.interact_fizz_rack,predicate=cnk:sneaking] as @e[type=interaction,tag=defizzed.fizz_rack_interaction,distance=..1,limit=2] if entity @s[type=minecraft:item_display,tag=defizzed.fizz_rack_item] as @n[type=item_display,tag=defizzed.fizz_rack] run return run function defizzed:fizz_rack/item/clear

execute if items entity @p[tag=defizzed.interact_fizz_rack,distance=..20] weapon.mainhand * run return run function defizzed:fizz_rack/item/main