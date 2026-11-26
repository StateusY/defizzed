execute as @e[type=interaction,tag=defizzed.fizz_rack_interaction,distance=..1,limit=2] if entity @s[type=minecraft:item_display,tag=defizzed.fizz_rack_item] as @e[type=interaction,tag=defizzed.fizz_rack,distance=..1,limit=2] run return run function defizzed:fizz_rack/hit/remove_last

scoreboard players add @s cnk.hit_count 1
playsound minecraft:block.bamboo_wood.hit block @a ~ ~ ~ 1 2
particle minecraft:item{item:{id:"minecraft:spruce_planks"}} ~ ~-0.25 ~ 0.3 0.1 0.3 0.1 5