execute if score @s cnk.item_count matches 4 as @e[type=interaction,tag=defizzed.fizz_rack_interaction,distance=..1,limit=2] if entity @s[tag=defizzed.fizz_rack_4] at @s run function defizzed:fizz_rack/item/remove
execute if score @s cnk.item_count matches 3 as @e[type=interaction,tag=defizzed.fizz_rack_interaction,distance=..1,limit=2] if entity @s[tag=defizzed.fizz_rack_3] at @s run function defizzed:fizz_rack/item/remove
execute if score @s cnk.item_count matches 2 as @e[type=interaction,tag=defizzed.fizz_rack_interaction,distance=..1,limit=2] if entity @s[tag=defizzed.fizz_rack_2] at @s run function defizzed:fizz_rack/item/remove
execute if score @s cnk.item_count matches 1 as @e[type=interaction,tag=defizzed.fizz_rack_interaction,distance=..1,limit=2] if entity @s[tag=defizzed.fizz_rack_1] at @s run function defizzed:fizz_rack/item/remove

scoreboard players remove @s cnk.item_count 1